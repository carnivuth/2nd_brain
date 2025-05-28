---
id: navidrome
tags: []
aliases:
previous: pages/technologies/terraform.md
---

# navidrome

 Here i will store some tips and tricks about [navidrome](https://www.navidrome.org/), a subsonic compatible musing streaming services that i use every day

## Creating smart playlists

Smart playlists are ways of grouping tracks together based on metadata values, they are defined inside `json` files with the `.nsp` extension

>file `last_played.nsp`
```json
{
  "name": "Recently Played",
  "comment": "Recently played tracks",
  "all": [
    {"inTheLast": {"lastPlayed": 30}}
  ],
  "sort": "lastPlayed",
  "order": "desc",
  "limit": 100
}
```

this json files are composed by a sequence of statements in the form

```json
    {"operator": {"field": "value"}}
```

The tracks with metadata that matches the statement are included inside the smart playlist, here a complete list of [fields and operators](https://www.navidrome.org/docs/usage/smartplaylists/#additional-resources)
[<](pages/technologies/terraform.md)
