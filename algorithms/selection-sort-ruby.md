---
title: "Selection Sort"
description: "Sort an array using the selection sort algorithm by repeatedly finding the minimum element."
topic: "sorting"
parameters:
  - name: "arr"
    type: "array"
    default: [64, 34, 25, 12, 22, 11, 90]
    description: "Array to sort"
exampleOutputs:
  - input: { "arr": [64, 34, 25, 12, 22, 11, 90] }
    output: "[11,12,22,25,34,64,90]"
---

```ruby
a = arr.dup
(0...a.length).each do |i|
  min_idx = i
  ((i + 1)...a.length).each do |j|
    min_idx = j if a[j] < a[min_idx]
  end
  a[i], a[min_idx] = a[min_idx], a[i]
end
a
```
