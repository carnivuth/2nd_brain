---
id: ASSOCIATION RULES MINING
aliases: []
tags: []
index: 2
---

# Association rules mining

The goal of this procedure it's, given a list of $N$ item-set, finding association rules that have  $conf$ and $sup$ grater than some thresholds

## Brute-force approach

generate all possible combination and compute $conf$ and $sup$, this approach is always possible but is too much computational expensive

## Two step approach

this approach is based on the fact that rules that are generated from the same item-set have the same $sup$

- **[frequent itemset generation](datamining/frequent_itemset_generation.md)** -> in the first step all item-set that have $sup \gt threshold$ are generated (**this step is still computational expensive**)
- **RULE GENERATION** -> in the second step rules with high confidence are generated from the previous generated item-sets

[PREVIOUS](association_rules.md) [NEXT](datamining/rules_generation.md)
