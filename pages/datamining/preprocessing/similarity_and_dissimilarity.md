---
id: SIMILARITY AND DISSIMILARITY
aliases: []
tags: []
index: 3
---

# Similarity and dissimilarity

## Similarity

Numerical measure of how alike two data objects are, higher when objects are more alike ( range of $[0-1]$ )

## Dissimilarity

Numerical measure of how different two data objects are, lower when objects are more alike ( minimum value  $0$ upper bound varies )

| ATTRIBUTE TYPE | DISSIMILARITY | SIMILARITY |
| ---- | ---- | ---- |
| NOMINAL | $0$ if $p=q$ and viceversa | $1$ if $p=q$ and viceversa |
| ORDINAL | $$\frac{\|p-q\|}{V-1}$$ | $$1 - \frac{\|p-q\|}{V-1}$$ |
| INTERVAL | $$\|p-q\|$$ | $$\frac{1}{1+d}$$ |

## Properties of similarity

- $Sim(p, q) = 1 \iff p = q$
- $Sim(p, q) = Sim(q, p)$

## Similarity between vectors

### Simple matching coefficient

the ratio between the number of matches and the number of attributes

$$
\frac{M_{00} + M_{11}}{M_{00}+M_{10}+M_{01}+M_{11}}
$$
### Jaccard coefficient

the ratio between the number of $11$ matches and the number of non $00$ attributes

$$
\frac{M_{11}}{M_{10}+M_{01}+M_{11}}
$$
### Cosine coefficient

the cosine between the vectors

$$
\frac{p*q}{|p|*|q|}
$$
### Extended jaccard coefficient tanimoto

the jaccard coefficient for continuous attributes

$$
\frac{p*q}{|p|^2*|q|^2-p*q}
$$

[PREVIOUS](datamining/preprocessing/type_conversions.md) [NEXT](datamining/preprocessing/distances.md)
