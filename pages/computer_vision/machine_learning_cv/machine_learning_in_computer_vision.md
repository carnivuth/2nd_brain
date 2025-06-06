---
id: MACHINE_LEARNING_IN_COMPUTER_VISION
next: "pages/computer_vision/machine_learning_cv/creating_a_classifier.md"
previous: "pages/computer_vision/object_detection/object_detection_pipeline.md"
aliases: []
tags: []
index: 46
---

# Machine learning in computer vision

There are problems in computer vision scenarios that can not be dealt with classical computer vision approach for example **image classification**:

![](assets/computer_vision/Pasted_image_20240428160259.png)

In order to address this situation machine learning techniques are deployed.

## The problem of image classification

The problem of image classification relies on a classification algorithm that can deal with the huge variety of the input data, it's impossible to handcraft such an algorithm so in order to address this problem machine learning is involved

## Machine learning for image classification

Machine learning techniques deployed relies on a training phase in which the model is learned by a training set of images with provided labels and a test phase where model performance are tested

```mermaid
flowchart LR
subgraph testing
direction TB
C[test set]
D[test learnt model]
C --> D
end
subgraph training
direction TB
A[training set]
B[learn classification model]
A --> B
end
training --> testing

```

The training and testing datasets can be defined as follows

$$
D^{train} = \{(x^i,y^i)|i=1 ... N\}
$$
$$
D^{test} = \{(x^i,y^i)|i=1 ... M\}
$$

Where $x^i$ are the given input feature (*images*) and $y^i$ are the true labels for the corresponding input feature

## Modeling the "learning" concept

In machine learning the training phase can be seen as an optimization problem that aims to optimize an objective function which measures how good the prediction on the training set $D^{train}$ are

$$
\theta^{\ast} =argmin_{\theta \in \Theta}(L(\theta,D^{train}))
$$

Where $L(\theta,D^{train})$ is called **Loss function** and measures how bad the prediction on the training set are so **the lower the better** is common practice to implement the Loss function as the average of the single images

$$
L(\theta,D^{train}) = \frac{1}{N}\sum_{i=0}^{N}{L(\theta,(x^i,y^i))}
$$
## Underfitting and overfitting problem

When varying model complexity training and test error follow this curve

![](assets/computer_vision/Pasted_image_20240430111200.png)

So with complex models the training error increases, this is called overfitting

### Regularization

Regularization aims to reduce the test error without modifying the training error

![](assets/computer_vision/Pasted_image_20240430111545.png)

The basic idea under this concept is that models with lower parameter tend to overfit less.

In order to implement such solution a regularize parameter is introduced to express a preference for smaller parameter values

$$
L(\theta,D^{train}) + \lambda L^{reg}(\theta)
$$

where $\lambda$ is an hyperparameter that determines the contribution of the regulator, popular choices of the regulator can be:

$$
L^{reg} = L_1(\theta) = \vert \theta \vert = \sum_{i} \vert \theta_i \vert
$$
$$
L^{reg} = L_2(\theta) = \Vert \theta \Vert^2 = \sum_{i} \theta_i^2
$$

## Data augmentation

In order to artificially increase the size of datasets operation on the input image are performed without altering the label such as image rotation,crop,cutout

[<](pages/computer_vision/object_detection/object_detection_pipeline.md)[>](pages/computer_vision/machine_learning_cv/creating_a_classifier.md)
