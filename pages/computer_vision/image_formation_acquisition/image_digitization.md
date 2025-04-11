---
id: IMAGE_DIGITIZATION
aliases: []
tags: []
index: 3
---

# Image digitization

The image plane is realized through a linear plane of photo-sensor which translate light in voltage quantities suitable for computer processing

## Sampling

The image information is sampled both horizontally and vertically in order to obtain a 2D $M\times N$ array  of values suitable for processing


$$
I(x,y) \Rightarrow \begin{bmatrix}
I(0,0) & I(0,1) & .... & I(0,M-1)\\
... & ... & ... & ... \\
I(N-1,0) & I(N-1,1) & .... & I(N-1,M-1)\\
\end{bmatrix}
$$

## Quantization

In this phase the values of a single cell are quantize in $l=2^{m}$ different levels called **gray levels** , where $m$ is the number of bits used to represent the image, with this the space occupancy of one image is the following

$$
B = M\times N\times m
$$

## Image quality

in order to increase the quality of the representation more bits need to be used, ether increasing $M$ or $N$ (*the matrix dimensions*) or increasing $m$ (*the quality of representation of the single point*)

[PREVIOUS](pages/image_formation_acquisition/camera_parameters.md) [NEXT](computer_vision/image_formation_acquisition/sensors.md)
