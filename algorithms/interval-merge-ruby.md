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
    output: "[[1,6],[8,10],[15,18]]"
---

```ruby
arr = intervals.sort
merged = [arr[0]]
arr[1..].each do |interval|
  if interval[0] <= merged[-1][1]
    merged[-1][1] = [merged[-1][1], interval[1]].max
  else
    merged << interval
  end
end
return merged
```
