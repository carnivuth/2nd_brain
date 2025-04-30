---
id: jq
aliases: []
tags:
  - snippets
  - jq
  - bash scripting
---

Personal `jq` expression language reference

- create custom output with string interpolation from array of objects

```bash
.[] | "\(.var1) \(.var2)"
```

- count number of elements in array

```bash
.[] | length
```

- loop an array and run command for each element

```bash
jq -c '.[]' input.json | while read i; do
done
```
[<](pages/tecnologie_basi_dati/b+tree.md) [>](pages/tecnologie_basi_dati/indici_hash.md)
