# Second Brain

Personal [obsidian](https://obsidian.md/) vault for knowledge management and persistent data storage

![](assets/main.jpg)

## Usage

- install [obsidian](https://obsidian.md/)
- [clone the repository](https://github.com/carnivuth/2nd_brain)
- [add the repo as obsidian vault](https://help.obsidian.md/Files+and+folders/Manage+vaults#Create+vault+from+an+existing+folder)

## Website

The repository is also hosted as a [static website](https://carnivuth.github.io/2nd_brain) for browser usage

## Contents

- [computer graphics course notes](pages/computer_graphics/index.md)
- [computer vision course notes](pages/computer_vision/index.md)
- [datamining course notes](pages/datamining/index.md)
- [artificial intelligence course notes](pages/fondamenti_intelligenza_artificiale/index.md)
- [gip](pages/gip/index.md)
- [linguaggi e modelli computazionali course notes](pages/linguaggi_modelli_computazionali/index.md)
- [mobile systems course notes](pages/mobile_systems/index.md)
- [sicurezza informazione course notes](pages/sicurezza_informazione/index.md)
- [tecnologie basi dati course notes](pages/tecnologie_basi_dati/index.md)

## Advanced usage tips

### Runs code snippets

The repository comes pre-installed with a plugin for snippet execution, the plugin uses system based installed interpreters/compilers that need to be present in `$PATH`, the one used are:

- gcc
- python
- node(*for javascript*)
- scala
- kotlin

### Language and computational models exam

In the repo is present also my [language and computational models exam](pages/linguaggi_modelli_computazionali/esame/ESAME.md) *dated 3/12/2024*, with some example code to verify behavior, the node engine is required

### Datamining example codes

The `labs` folder contains the exercises of the course and my personal exercises, it's meant to be use with a python virtual environment but you can use it with your system-wide pip installation

```bash
# enter inside labs directory
cd pages/datamining/labs

# create virtual env
python -m venv env

# activate virtual env
source env/bin/activate

# install dependencies
pip install -r requirements.txt
```

### Mobile system useful external content

- [Michele colonna's fleshcard](https://github.com/mikyll/Mobile-Systems-M/blob/main/flashcards.md)

## Credits

- [carnivuth](https://github.com/carnivuth)
- [stef-a99](https://github.com/stef-a99)
- [kuri0317](https://github.com/kuri0317)
- [claudiacitera](https://github.com/claudiacitera)
- [Lombax99](https://github.com/Lombax99)

