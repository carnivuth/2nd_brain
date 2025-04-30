---
id: COMPUTER_VISION_INDUSTRIAL_WORKFLOW
next: "pages/computer_vision/image_segmentation_blob_analysis/binarization.md"
previous: "pages/computer_vision/image_filtering/non-local_mean_filter.md"
aliases: []
tags: []
index: 21
---
# Computer vision industrial workflow

Computer vision processes in industrial environment follow this schema

```mermaid
flowchart TD
A[Grab image]
B[ROI]
subgraph segmentation
C[Binarization]
D[Labeling]
end
E[Blob analysis]
A --> B
B --> C
C --> D
D --> E
```
