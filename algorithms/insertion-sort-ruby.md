---
title: "Insertion Sort"
description: "Sort an array using the insertion sort algorithm by building a sorted portion one element at a time."
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
(1...a.length).each do |i|
  key = a[i]
  j = i - 1
  while j >= 0 && a[j] > key
    a[j + 1] = a[j]
    j -= 1
  end
  a[j + 1] = key
end
a
```
