---
id: DECISION TREE PRUNING
aliases: []
tags: []
index: 5
---

# Decision tree pruning

In order to avoid over fitting  pruning can be done

## C4.5 strategy

based on the error, it prunes the leaves if the maximum error of the root of a subtree is lower than the weighted sum of the errors of the leaves

$$eroot <= ei$$

where:

$$
ei = \sum_{leaf}{e}
$$

## Before pruning

![](assets/datamining/Pasted_image_20231230175754.png)

## After pruning

![](assets/datamining/Pasted_image_20231230175803.png)
[<](pages/computer_vision/object_detection/instance_level_object_detection.md) [>](pages/computer_vision/object_detection/shape_based_matching.md)
