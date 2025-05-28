#!/bin/bash
#
# GLOBAL VARS
PAGES_FOLDER="pages"

# FLAGS
FLAGS_STRING="v:p:t:"
declare -A FLAGS
FLAGS[v]='VAULT=${OPTARG}'
FLAGS[p]='PROP=${OPTARG}'
FLAGS[t]='TO=${OPTARG}'

# COMMANDS
declare -A COMMANDS

COMMANDS[convert_to]="convert pages to other formats"
COMMANDS[add_footer]="add footer to an obsidian page using index prop"
COMMANDS[prop]="show prop status"
COMMANDS[link]="check if link of a file are broken"

function help(){
  echo "usage: $(basename "$0") COMMAND [$FLAGS_STRING]"
  echo "list of commands:"
  for command in "${!COMMANDS[@]}"; do
    echo "       $command -> ${COMMANDS[$command]}"
  done
}

function pwd_is_obsidian_vault(){
  if [[ ! -d ".obsidian" ]];then echo "$(pwd) is not an obsidian vault run inside one"; return 1; fi
}

function link(){

  pwd_is_obsidian_vault || exit 1

  #if [[ "$NOTE" == '' ]];then echo "note file is required run with -n '[path to file]'"; exit 1; fi

  ## Extract link and test if link is broken
  for page in $(find "$PAGES_FOLDER" -type f -name '*.md'); do
    grep -E "\[.*\]\(.+\)"  "$page" | grep -vP '\!\[' | grep -oP '\]\(\K[^\)]+(?=\))' | while read link; do
      if [[ "$link" =~ "http" ]]; then
        curl "$link" > /dev/null 2>&1 || (echo "page: $page link:$link")
      else
        file="$(echo $link | awk -F'#' '{print $1}' )"
        test -z $file || test -f "$file" || (echo "page: $page link:$link")
      fi
    done
  done
}

function prop(){

  pwd_is_obsidian_vault || exit 1
  if [[ "$PROP" == '' ]];then echo "property is required run with -p 'prop_name'"; exit 1; fi

  grep "$PROP:" $(find $PAGES_FOLDER -type f -name '*.md') 2>/dev/null | awk -F':' '{print $3 " " $1}' | sort -b -g | while read -r prop file; do
    echo "$file $prop"
  done

  grep "$PROP:" $PAGES_FOLDER/*.md $PAGES_FOLDER/**/*.md -L 2>/dev/null | awk -F':' '{print $3 " " $1}' | sort -b -g | while read -r file; do
    echo "$file: undefined $PROP"
  done
}

# based on the props next: and previous in the following format
# previous: full/path/to/file
# next: full/path/to/file
function add_footer(){

  pwd_is_obsidian_vault || exit 1

  for file in $(find $PAGES_FOLDER -type f -name '*.md'); do

      # remove old links
      sed -i '/\[<\]/d' "$file"
      sed -i '/\[>\]/d' "$file"

      # remove trilling lines
      sed -i -e :a -e '/^\n*$/{$d;N;ba' -e '}' "$file"

      # extract index props
      previous="$( grep 'previous:' "$file" |awk -F ' ' '{print $2}'| sed 's/"//g')"
      next="$( grep 'next:' "$file" |awk -F ' ' '{print $2}' | sed 's/"//g')"

        echo "" >> "$file"
        if [[ -f "$previous" ]]; then
          echo -n "[<]($previous)" >> "$file"
        fi
        if [[ -f "$next" ]]; then
          echo -n "[>]($next)" >> "$file"
        fi
        echo "" >> "$file"
  done
}

function convert_to(){

  pwd_is_obsidian_vault || exit 1

  # check for TO variable
  if [[ "$TO" == '' ]];then echo "TO required run with -t 'format'"; exit 1; fi

  DEST_FOLDER="$TO"_converted; if [[ ! -d "$DEST_FOLDER" ]]; then mkdir -p "$DEST_FOLDER"; fi

  if [[ "$TO" == *.lua ]];then TO="$SCRIPTS_LIB_FOLDER/$TO"; fi

  export OBSIDIAN_MANAGE_TO="$TO"
  export OBSIDIAN_MANAGE_DEST_FOLDER="$DEST_FOLDER"
  find "$PAGES_FOLDER" -type f -name '*.md' | parallel --eta 'filename="$(basename "{}" .md)"; echo "converting $filename"; pandoc -f "gfm" -t "$OBSIDIAN_MANAGE_TO" "{}" > "$OBSIDIAN_MANAGE_DEST_FOLDER/$filename"'

}

# MAIN, PARSE PARAMETERS
COMMAND="$1"
shift
if [[ $COMMAND  == '' ]] || [[ $COMMAND  == -* ]]; then echo "first parameter must be a command"; help; exit 1; fi

if [[ ! -z $FLAGS_STRING ]];then
  while getopts $FLAGS_STRING flag; do
    [ "${FLAGS[$flag]}" ] && eval ${FLAGS[$flag]}
  done
fi

if [ "${COMMANDS[$COMMAND]}" ]; then
  "$COMMAND"
else
  echo "$COMMAND not exists"
  help
  exit 1
fi
