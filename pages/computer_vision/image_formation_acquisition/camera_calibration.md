---
id: CAMERA_CALIBRATION
next: "pages/computer_vision/image_formation_acquisition/zhang_method.md"
previous: "pages/computer_vision/image_formation_acquisition/homography.md"
aliases: []
tags: []
index: 11
---

# Camera calibration

It's necessary to recover the [PPM](pages/computer_vision/image_formation_acquisition/perspective_projection_matrix.md) parameters from the system in order to use the camera model, this process is called camera calibration.

The basic idea behind this process is to **set up a linear system of equation given a set of 3D-2D correspondences** such that the solution is the unknown camera parameters

In order to obtain such correspondences a set of geometrical targets such as chess boards or dot pattern are used

There are 2 principle approaches:

```mermaid
flowchart TD
A[techniques]
B[get a set of 2 images in 2 different planes]
C[get a set of n, at least 3 images \n of one given planar pattern]
D[zhang's method]
A --> B & C
C --> D
```

One of the most used methods it's the [zhang's method](pages/computer_vision/image_formation_acquisition/zhang_method.md)

[<](pages/computer_vision/image_formation_acquisition/homography.md)[>](pages/computer_vision/image_formation_acquisition/zhang_method.md)
