---
id: OBJECT_DETECTION_PIPELINE
aliases: 
tags: 
index: 45
---

# Object detection pipeline

```mermaid
flowchart LR

subgraph online phase
direction LR
B[DETECTION\n DESCRIPTION\n AND MATCHING]
C[GHT]
D[LS POSE\n ESTIMATION]
B --> C --> D
end

subgraph offline phase
direction RL
A[MODEL GALLERY]
A --> B & C
end
```

[PREVIOUS](pages/object_detection/generalized_hugh_transform.md) [NEXT](computer_vision/machine_learning_cv/machine_learning_in_computer_vision.md)
