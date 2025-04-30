---
id: MODEL BASED CLUSTERING
aliases: []
tags: []
index: 5
---

# Model based clustering

The objective is to estimate the parameter of a statistical model

## Expectation maximization

```mermaid
flowchart TD
	A[For each object calculate the probability\n that each object belongs to each distribution];
	B[find the parameter that maximize the expected likelihood];
	A-->B
	B-->|repeat until the parameters \n do not change|A

```
[<](pages/computer_vision/object_detection/instance_level_object_detection.md) [>](pages/computer_vision/object_detection/shape_based_matching.md)
