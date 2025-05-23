---
id: CANONICAL_ORIENTATION
next: "pages/computer_vision/local_features/sift_descriptor.md"
previous: "pages/computer_vision/local_features/dog_detector.md"
aliases: []
tags: []
index: 37
---

# Canonical orientation

In order to obtain a reference frame for computing the descriptor of a keypoint a local reference frame is needed, one solution is to chose the direction in which most of the gradient is found

![](assets/computer_vision/Pasted_image_20240314123223.png)

## [DOG](pages/computer_vision/local_features/dog_detector.md) canonical orientation

Given a keypoint the orientation $\theta$ and magnitude $m$ is given by

$$
m(x,y) =  \sqrt{(L(x+1,y)- L(x-1,y))^2 + (L(x,y+1)- L(x,y-1))^2}
$$
$$
\theta(x,y) = \tan^{-1}{\frac{L(x,y+1)- L(x,y-1))}{L(x+1,y)- L(x-1,y))}}
$$

Then an **orientation histogram** is computed with a bin size of $10^{\degree}$ with the contributions of each pixel of the belonging to a neighborhood of the keypoint.

The contribution of a single point is obtained  by the **gradient magnitude weighted by a Gaussian** with $\sigma =1.5\sigma_S$  to account for the scale of the keypoint

then the highest peak of the histogram is considered for the canonical orientation with the 2 neighbors

![](assets/computer_vision/Pasted_image_20240314122805.png)

[<](pages/computer_vision/local_features/dog_detector.md)[>](pages/computer_vision/local_features/sift_descriptor.md)
