---
title: "Merge Sort"
description: "Sort an array using the merge sort algorithm with O(n log n) time complexity."
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
def merge_sort(a)
  return a if a.length <= 1
  mid = a.length / 2
  left, right = merge_sort(a[0...mid]), merge_sort(a[mid..])
  result = []
  until left.empty? || right.empty?
    result << (left[0] <= right[0] ? left.shift : right.shift)
  end
  result + left + right
end
merge_sort(arr)
```
