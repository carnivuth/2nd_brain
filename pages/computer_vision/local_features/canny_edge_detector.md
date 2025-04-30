---
id: CANNY_EDGE_DETECTOR
next: "pages/computer_vision/local_features/zero_crossing_edge_detection.md"
previous: "pages/computer_vision/local_features/edges.md"
aliases: []
tags: []
index: 29
---

# Canny edge detector

A first formal definition of the characteristics of a strong edge detection system was given by John F. Canny, according to this definition a strong edge detection algorithm must:

-  correctly extract edges in noisy images.(**Good Detection**)
-  minimize distance between the found edge and the “true” edge. (**Good Localization**)
-  detect one single edge pixel at each “true” edge.(**One Response to One Edge**)

A good implementation of the Canny edge detector is obtained by [Gaussian filtering](pages/computer_vision/image_filtering/gaussian_filter.md) followed by [gradient computation](pages/computer_vision/local_features/edges.md#GRADIENT_APPROXIMATION) and [NMS](pages/computer_vision/local_features/edges.md#non_maxima_supression_(nms)) along the gradient direction

```mermaid
flowchart LR
A[GAUSSIAN FILTERING]
B[GRADIENT COMPUTATION]
C[NMS]
A --> B
B --> C
```

A possible improvement can be done by [exploiting the separability](pages/computer_vision/image_filtering/gaussian_filter.md#exploiting_separability_to_improve_performance) of the 2D Gaussian function

## Nms edge detection improvements

In order to improve the **NMS** process Canny propose a 2 threshold approach $T_h$ $T_l$ where a pixel is considered an edge if it's magnitude it's above $T_h$ or it's above $T_l$ and it's a neighbor of an already edge detected pixel

![](assets/computer_vision/Pasted_image_20240309145141.png)

## Final pipeline

![](assets/computer_vision/Pasted_image_20240309145554.png)

## Implementation

There is an implementation of Canny edge detector in the `opencv2` library follows an example for reference

```python
import numpy as np
import cv2 as cv
from matplotlib import pyplot as plt

# read image
img = cv.imread('image.jpg', cv.IMREAD_GRAYSCALE)
assert img is not None, "file could not be read, check with os.path.exists()"

# compute canny edge detection
edges = cv.Canny(img,100,200)
```

This implementation does not perform [Gaussian smoothing](pages/computer_vision/image_filtering/gaussian_filter.md) before
