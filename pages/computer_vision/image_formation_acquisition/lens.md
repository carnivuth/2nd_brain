---
id: LENS
next: "pages/computer_vision/image_formation_acquisition/lens_distortion.md"
previous: "pages/computer_vision/image_formation_acquisition/sensors.md"
aliases: []
tags: []
index: 5
---

# Lenses

The pinhole camera model it's not suitable for real application cause it needs to high exposure times to take an image. To address this problem lenses are used to focus more light in to a single point

## Lenses effect on a camera

In the pinhole camera model light passes through an infinite small hole which **gather all the light from a point in the 3D world in the same point in the image plane**, giving it an infinite depth of field (DOF).

this is not practical for real image acquisition cause the exposition times become to big, so we use **lenses** in order to acquire more light in a single image point but the DOF is no longer infinite, the pinhole camera model is no longer sufficient

## Thin lens equation

In order to address this situation another mathematical model is used, the thin lens equation

$$
\frac{1}{v} + \frac{1}{u} = \frac{1}{f}
$$


with the following parameters:

- $P$ -> scene point
- $p$ -> corresponding focused image point
- $u$ -> distance from P to the lens
- $v$ -> distance from p to the lens
- $f$ -> focal length (parameter of the lens)
- $C$ -> center of the lens
- $F$ -> focal point (or focus) of the lens

The model describes how light from a single point in the 3D space is deflected from the lens before hitting the plane.

If the image is on focus the image acquisition process obey to the [perspective projection](pages/computer_vision/image_formation_acquisition/perspective_projection.md) model.

### Circle of confusions

Due to this the distance from the image plane $v$ determines at which distance points are in focus

$$
\frac{1}{v} + \frac{1}{u} = \frac{1}{f} \to u =\frac{uf}{u-f}
$$

points before or after the focusing plane will appear in circles called circles of confusion

![](assets/computer_vision/Pasted_image_20240221202723.png)

[<](pages/computer_vision/image_formation_acquisition/sensors.md)[>](pages/computer_vision/image_formation_acquisition/lens_distortion.md)
