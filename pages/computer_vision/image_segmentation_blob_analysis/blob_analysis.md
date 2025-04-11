---
id: BLOB_ANALYSIS
aliases: []
tags: []
index: 26
---

# Blob analysis

The objective of this step is to compute **features**, feature are properties of the image's blobs

## Area

The area feature is defined as the sum of the points within that blob

$$
A = \sum_{p\in R}1
$$

## Barycentre

The barycentre is defined as the center of mass of the region

$$
B= \begin{bmatrix}i_b \\ j_b\end{bmatrix} : i_b= \frac{1}{A}\sum_{p \in R}i, \space j_b= \frac{1}{A}\sum_{p \in R}j
$$
## Orientation

Orientation is defined as the **angle $\theta$ between the horizontal axis and the major axis of the blob**, defined as the axis of least moment of inertia (the axis perpendicular to the major axis is called minor axis)

![](computer_vision/Pasted_image_20240303183222.png)

## Oriented bounding box (minimum enclosing rectangle)

The **MER** can be computed from the major and minor axis by finding the 4 points laying at the maximum distance from the barycenter and sliding the axis towards them

![](computer_vision/Pasted_image_20240303183704.png)
## Length and width


Length is the extent of the object along the major axis and width the extent on the minor axis
$$
L = d_{V_{1}V_{2}} =d_{V_{3}V_{4}}  = \sqrt{(i_{V_{1}} - i_{V_{2}})^2 +(j_{V_{1}} - j_{V_{2}})^2 }
$$
$$
W = d_{V_{1}V_{3}} =d_{V_{2}V_{4}}  = \sqrt{(i_{V_{1}} - i_{V_{3}})^2 +(j_{V_{1}} - j_{V_{3}})^2 }
$$
## Rectangularity

$$
R =\frac{A}{LW}
$$

## Ellipticity

$$
R =\frac{A}{A_{LW}} \space with \space A_{LW} = \frac{\pi}{4}LW
$$

[PREVIOUS](computer_vision/image_segmentation_blob_analysis/components_labeling.md) [NEXT](computer_vision/local_features/finding_correspondences.md)
