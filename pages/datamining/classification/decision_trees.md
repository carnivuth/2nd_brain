---
id: DECISION TREES
aliases: []
tags: []
index: 4
---

# Decision trees

Decision trees are tree shaped data structures with node and leaf
that represents operations on the datasets used to classified data

- leaf -> put data in class c (class of the leaf node)

- node -> split dataset and exec leaf node with the dataset subsets

## Splitting dataset methods

### Information theory based method

based on the concept of entropy

$$
H(X)= -\sum{p_{j}\log{2}{p_{j}}}
$$

- higher the entropy -> attribute values with the same probability

- lower the entropy -> attribute values with the same probability

the entropy of a child node is always lower of the entropy of the father node

#### Information gain

the difference between the dataset entropy and the subset entropy obtained from a threshold based split

the objective is to maximize information gain in order to obtain the best split

#### Choosing the right attribute for the split

the attribute with the maximum [IG](#Information%20gain) is chosen

### Build decision tree with binary splits

```python
procedure buildTree(dataset X , node p)

	if all the class values of X are c then
		return node p as a leaf, label of p is c

	if no attribute can give a positive information gain in X then
		say that the majority of elements in X has class c
		return node p as a leaf, label of p is c

find the attribute d and threshold t giving maximum information gain in X
create two internal nodes descendant of p, say pleft and pright
let X left = selection on X with d < t
buildTree(X left , pleft )
let X right = selection on sdata with d >= t
buildTree(X right , pright )
```

### Training set error

Number of discordance between predictions on the training set and the actual values of the attributes

It's a lower bound for the error rate of the predictions

### Test set error

Same calculus of the  [training set error](#training%20set%20error)

the value is more indicative of the expected behavior

### Overfitting

it happens when the hypothesis is fits too well the training data

$$
error_{train}(h) \lt error_{train}(h')
$$
$$
error_{X}(h) \gt error_{X}(h')

$$

possible causes of over-fitting can be the presence of noise on the data or a bad representative training set of the $X$ dataset.

One of the possible solutions to overfitting is [decision tree pruning](pages/datamining/classification/decision_tree_pruning.md)

### Choosing attribute for split with the highest purity

- [INFORMATION THEORY BASED METHOD](#information%20theory%20based%20method)
- [GINI INDEX](#gini%20index)
- [MISCLASSIFICATION ERROR](#misclassification%20error)

### Gini index

based on the probability of wrong classification of a random assignment based on class frequencies

it is the sum of the frequencies of wrong classification

$$
GINI_{p}=1- \sum_{j}{f^{2}_{pj}}
$$

the split is done by minimize the gini index reduction

$$
GINI_{split}=GINI_{p} - \sum_{i=1}^{ds}{\frac{N_{p,i}}{N_{p}}*GINI(p_{i})}
$$

### Misclassification error


it's complement to 1  of the highest label frequency called accuracy
the split is like the one of the [GINI INDEX](#gini%20index)

$$
ME(p) = 1 - max_{j}(f_{pj})
$$
[<](pages/computer_vision/object_detection/instance_level_object_detection.md) [>](pages/computer_vision/object_detection/shape_based_matching.md)
