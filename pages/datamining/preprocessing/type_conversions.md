---
id: TYPE CONVERSIONS
aliases: []
tags: []
index: 2
---

# Type conversions

procedure to convert data types of attributes, there are many purposes such as:

- algorithms that require numeric features
- classification targets for numerical values
- boolean feature for association rules discovery

Transforming in a numerical quantity the features that represent categories.

there are 2 types of encoders
## Nominal to numeric conversion

### One hot encoder


It transforms a feature  with $V$ unique values in $V$ boolean feature each, if an object $X$ as the value $d$ for the feature $V$ than the corresponding new feature $d$ is set to $true$

here a usage example of the [scikit-learn](https://scikit-learn.org/stable/) implementation:

```python
from sklearn.preprocessing import OneHotEncoder
ohe = OneHotEncoder() # creating object
ohe.fit(X) # fit the data
ohe.categories_ # show categories founded
ohe.transform(X) # apply the transformation
```

## Ordinal to numeric conversion
### Ordinal encoder

It transforms a ordinal feature $V$ in a numeric one preserving the order by translate the values into consecutive integers, the user can specify the sequence (lexicographic order is default)

here a usage example of the [scikit-learn](https://scikit-learn.org/stable/) implementation:

```python
from sklearn.preprocessing import OrdinalEncoder
oe = OrdinalEncoder() # creating object
oe.fit(X) # fit the data
oe.categories_ # show categories founded
oe.transform(X) # apply the transformation
```
## Numeric to binary conversion
### Binarizer with threshold

it transform numeric values  to binary ones by using a threshold

## Discretization

transformation that turns continuous domains into discrete ones, there are many algorithms for the purpose, some are domain knowledge based other use thresholds

### Numeric to k values conversion

Number are discretized in a series of values from $0$ to $k-1$

[PREVIOUS](datamining/preprocessing/data_preprocessing.md) [NEXT](datamining/preprocessing/similarity_and_dissimilarity.md)
