---
id: SIFT_DESCRIPTOR
next: "pages/computer_vision/local_features/matching_process.md"
previous: "pages/computer_vision/local_features/canonical_orientation.md"
aliases: []
tags: []
index: 38
---

# Sift descriptor

This descriptor is based on the gradient direction contribution of a neighborhood of the keypoint, SIFT descriptor is computed as follows

```mermaid
flowchart TD
A[select neighborhood of size 16x16]
B[split in regions of size 4x4]
C[compute gradient orientation histogram for each pixel]
A --> B --> C
```

![](assets/computer_vision/Pasted_image_20240314124330.png)

The descriptor is given by all of the histogram of the regions so the dimension space of a SIFT descriptor is $R^{128}$

The gradient are rotated according to the canonical orientation of the gradient and each pixel is weighted by a Gaussian centered at the keypoint

[<](pages/computer_vision/local_features/canonical_orientation.md)[>](pages/computer_vision/local_features/matching_process.md)
