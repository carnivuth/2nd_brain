---
id: DOG_DETECTOR
aliases: []
tags: []
index: 36
---
# Dog detector

This detector relies on difference of Gaussian (DOG) in order to find keypoints

$$
DoG(x,y,\sigma) = (G(x,y,k\sigma) - G(x,y,\sigma))\ast I(x,y) = L(x,y,k\sigma) -L(x,y,\sigma)
$$

This approach is more computational efficient of computing [LOG](computer_vision/scale_normalized_log.md), and it's a good approximation of the results

![](computer_vision/Pasted_image_20240314102352.png)

## Dog computing

Computation of dog is done by down-sampling and [gaussian smoothing](computer_vision/gaussian_filter.md) the input image in order to obtain the scale space and then by computing differences between adjacent scale levels

![](computer_vision/Pasted_image_20240314103452.png)

The next scale level is computed by taking half of the columns and rows and computing the same filter (performance optimization)

a point is detected as a feature if it's DoG is an extreme of its 26 neighbors

![](computer_vision/Pasted_image_20240314103712.png)

## Dog improvements with filters

In order to localize keypoints in an accurate way and remove unstable point [filter procedures](computer_vision/image_filters.md) are needed

[PREVIOUS](computer_vision/local_features/scale_normalized_log.md) [NEXT](computer_vision/local_features/canonical_orientation.md)
