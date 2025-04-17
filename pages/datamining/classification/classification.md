---
id: CLASSIFICATION
aliases: []
tags: []
index: 1
---

# Classification

A procedure which computes an unknown parameter for a given element

## Classification model

An algorithm which, given an individual for which the class is not known, computes the class. The algorithm make use of parameters for tuning, the core of a classification model is the decision function.

### Decision function (the model)

	function that makes a prediction on the class element as

	$$
	M(x,\theta) = y(x)pred
	$$

Where $\theta$ is a **set of values for the parameters** of the decision function

![](assets/datamining/Pasted_image_20231227172912.png)

## Vapnik-chervonenkis dimension

if a [classification model](#classification%20model) is able to shatter all possible problems with N elements it's  Vapnik-Chervonenkis dimension is equal to $N$

## Classification workflow

- use the training dataset for tuning parameters

- use the training set against the classification model obtained at the previous step to calculate the accuracy

![](assets/datamining/Pasted_image_20231227174100.png)

## Classification types

-  **crisp** the classifier assigns to each individual one label
- **probabilistic** the classifier assigns a probability for each of the possible labels

 [NEXT](pages/datamining/classification/training_strategies.md)
