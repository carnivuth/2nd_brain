---
id: ZERO_CROSSING_EDGE_DETECTION
next: "pages/computer_vision/local_features/moravec_corner_detector.md"
previous: "pages/computer_vision/local_features/canny_edge_detector.md"
aliases: []
tags: []
index: 30
---

# Zero crossing edge detection

Edge detection can also be done by detecting the zero crossing point of the second derivative

![](assets/computer_vision/Pasted_image_20240309153449.png)

The second derivative can be computed by the Hessian matrix as $n^THm$ with

$$
n = \frac{\nabla I(x,y)}{\Vert \nabla I(x,y) \Vert}, \space \space and \space \space
H = \begin{bmatrix}
\frac{\delta^2 I(x,y)}{\delta x^2} & \frac{\delta^2 I(x,y)}{\delta x \delta y} \\
\frac{\delta^2 I(x,y)}{\delta y \delta x} & \frac{\delta^2 I(x,y)}{\delta y^2 } \\
\end{bmatrix}
$$
This implementation is too computational expensive so another solution is to use the Laplacian

$$
\nabla^2I(x,y) = \frac{\delta^2 I(x,y)}{\delta x^2} + \frac{\delta^2 I(x,y)}{\delta y^2} = I_{xx} + I_{yy}
$$

This solution needs to filter out the noise, this is done through convolution with Gaussian function

$$\overset{\sim}I(x,y) = I(x,y)\ast G(x,y)$$

[<](pages/computer_vision/local_features/canny_edge_detector.md)[>](pages/computer_vision/local_features/moravec_corner_detector.md)
