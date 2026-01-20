---
title: "Binary Search"
description: "Find the index of an element in a sorted array using binary search with O(log n) time complexity."
topic: "searching"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 3, 5, 7, 9, 11, 13]
    description: "Sorted array"
  - name: "target"
    type: "number"
    default: 7
    description: "Element to find"
exampleOutputs:
  - input: { "arr": [1, 3, 5, 7, 9, 11, 13], "target": 7 }
    output: "3"
---

```ruby
i = arr.bsearch_index { |x| x >= target }
return (i && arr[i] == target) ? i : -1
```
