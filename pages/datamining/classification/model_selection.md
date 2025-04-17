---
id: MODEL SELECTION
aliases: []
tags: []
---

# Model selection

In order to select the best model for a given problem the follow parameters need to be identified:

- best classification model
- best classification algorithm
- best parameter configuration

## Evaluation

the process for detecting the best classification model, this process is **independent from the algorithm used to create the model**

### Dataset in evaluation

supervised data are usually scarse so the dataset must be split

- train
- evaluation
- test

### Test set error and run time relations

the bond between training dataset and the real data $X$ is subject to probabilistic variability so the  **prevision of the run time error error is the test set error ratio + confidence interval**

#### Confidence interval

the empirical frequency of error $f = \frac{S}{N}$ with $S$ the test error and $N$ the test set dimension is related with the true error frequency through **noise** that is represented with a normal distribution (for $N >= 30$ )

the confidence interval is the probability that the true frequency of success is below the pessimistic frequency

$$
P(z_{\alpha/2} \leq \frac{f-p}{\sqrt{p(1-p)/N}}\leq z_{(1-\alpha)/2}) = 1- \alpha
$$

Boundaries on the curve $z$ depends on the desired confidence level $\alpha$

![](assets/datamining/Pasted_image_20231230173630.png)

[NEXT](pages/datamining/classification/classification.md)
