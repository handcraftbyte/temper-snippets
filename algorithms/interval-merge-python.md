---
title: "Merge Intervals"
description: "Merge overlapping intervals into consolidated ranges, a classic algorithm for scheduling and resource allocation."
topic: "arrays"
parameters:
  - name: "intervals"
    type: "array"
    default: [[1, 3], [2, 6], [8, 10], [15, 18]]
    description: "Array of [start, end] intervals"
exampleOutputs:
  - input: { "intervals": [[1, 3], [2, 6], [8, 10], [15, 18]] }
    output: "[[1, 6], [8, 10], [15, 18]]"
---

```python
arr = sorted(intervals)
merged = [arr[0]]
for interval in arr[1:]:
    if interval[0] <= merged[-1][1]:
        merged[-1][1] = max(merged[-1][1], interval[1])
    else:
        merged.append(interval)
merged
```
