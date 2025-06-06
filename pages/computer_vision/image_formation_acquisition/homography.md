---
id: HOMOGRAPHY
next: "pages/computer_vision/image_formation_acquisition/camera_calibration.md"
previous: "pages/computer_vision/image_formation_acquisition/perspective_projection_matrix.md"
aliases: []
tags: []
index: 10
---

# Homography

Let's take the case where the camera is imaging a planar scene, in this case it can be said that the $z = 0 \space  \forall \space \overset{\sim}w$, in this scenario the $PPM$ becomes

$$
k\overset{\sim}m= \overset{\sim}P \overset{\sim}w =
\begin{bmatrix}
p_{1,1} &p_{1,2} &p_{1,3} &p_{1,4} \\
p_{2,1} &p_{2,2} &p_{2,3} &p_{2,4} \\
p_{3,1} &p_{3,2} &p_{3,3} &p_{3,4} \\
\end{bmatrix} \times
\begin{bmatrix}
x\\
y\\
0\\
1\\
\end{bmatrix}=
\begin{bmatrix}
p_{1,1} &p_{1,2} &p_{1,4} \\
p_{2,1} &p_{2,2}  &p_{2,4} \\
p_{3,1} &p_{3,2}  &p_{3,4} \\
\end{bmatrix} \times
\begin{bmatrix}
x\\
y\\
1\\
\end{bmatrix}= H\overset{\sim}M
$$

this is exploited in camera callibration with the [zhang's method](pages/computer_vision/image_formation_acquisition/zhang_method.md).

## Properties

cause $\det{H} \neq 0$  two distinct images of a planar scene are related by homography

$$
\overset{\sim}m_{1} =H_{1}\overset{\sim}M \Rightarrow \overset{\sim}m_{1} =H_{1}H_{2}^{-1}\overset{\sim}m_{2}
$$
$$
\overset{\sim}m_{2} =H_{2}\overset{\sim}M \Rightarrow \overset{\sim}m_{2} =H_{2}H_{1}^{-1}\overset{\sim}m_{1}
$$


![](assets/computer_vision/Pasted_image_20240222102217.png)

### Rotation relation

Any two images taken by a camera rotating about the optical center are related by homography

![](assets/computer_vision/Pasted_image_20231021104939.png)

### Intrinsic parameter relation

any two images taken by two different cameras (different $A$ matrix so different intrinsic parameters) in a fixed pose are related by homography

![](assets/computer_vision/Pasted_image_20231021105132.png)

In conclusion we can say that if the camera is imaging a planar scene we can find relations between images that are taken from different angles or with different camera sensors

[<](pages/computer_vision/image_formation_acquisition/perspective_projection_matrix.md)[>](pages/computer_vision/image_formation_acquisition/camera_calibration.md)
