---
id: DATA TYPES
aliases: []
tags: []
---

# Data types

|  | Data types | Description | Examples | Descriptive statistics allowed | Domain |
| ---- | ---- | ---- | ---- | ---- | ---- |
| Categorical | nominal | set of labels, the available information allows to distinguish a label from another. **Operators: =, !=** | zip code, fiscal code | mode,entropy,contingency,correlation | Discrete |
|  | ordinal | **Operators: <,<<,>,>>** | non numerical quality evaluations | media percentiles rank correlations | Discrete |
| Numerical | interval | possible to add or subtract data +,- | calendar dates, temperatures in C° and F° | average standard deviations | Continous |
|  | ratio | Have a univocal definition of 0 allowing all mathematical operations | temperatures in K° | geometric mean harmonic mean percentage variation | Continous |


## Interval data

- used in statistical research
- examples:
	- Temperature
	- Scores
	- Time
	- IQ test

### Interval vs ratio
Interval does not preserve relative values upon scale change

## Allowed transformations

| data type | transformation                                                     |
| --------- | ------------------------------------------------------------------ |
| nominal   | any one-to-one correspondence                                      |
| ordinal   | Any order preserving transformation (any monotonic function)       |
| interval  | linear functions                                                   |
| ratio     | any mathematical function, standardization,variation in percentage |

- this transformation does not change the meaning of the attribute, they are used to standardize data format.

## Asymmetric attributes

- attributes where only presence is relevant (non null value)
	- example exams
In particular, binary asymmetric attributes are relevant in the **discovery of association rules**

## General characteristics of data sets
### Dimensionality
 - the difference between having a small or a large (hundreds, thousands, . . . ) of attribute is also qualitative
### Sparsity
- when there are many zeros or nulls
### Beware the nulls in disguise
- a widespread bad habit is to store zero or some special value when a piece information is not available
### Resolution
- has a great influence on the results
- the analysis of too detailed data can be affected by noise
- the analysis of too general data can hide interesting patterns

The data is organized in records
- Tables
- Transactions
- Data matrix
- Sparse data matrix
## Data quality

- data from source layer are often dirty and full of outliers due to noise (*example web crawler activity mixed with human activity on websites*)
	- there can be missing values due to data not being collected
	- there can be duplicated values

### Detect outliers with descriptive statistics

#### Iqr = interquartile range

```
IQR = Q3 - Q1`
lower-boundary = Q1 - IQR * 1.5
upper-boundary = Q3 + IQR * 1.5

with Q1 first quartile Q3 third quartile
```

the outliers are values outside the boundaries

### Handling missing values

| strategy                                              | comment                                   |
| ----------------------------------------------------- | ----------------------------------------- |
| ignoring the values that are missing                  | extreme, not a generic good idea          |
| insert all possible values weighted with probabilities | used in probabilistic learning, expensive |
| estimate the missing values| default choise|

### Duplicated data

- major issue when dealing with data merging from different sources

