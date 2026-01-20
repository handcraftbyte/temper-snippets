---
title: "Quicksort"
description: "Sort an array using the quicksort algorithm with average O(n log n) time complexity."
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
def quicksort(a)
  return a if a.length <= 1
  pivot = a[0]
  quicksort(a[1..].select { |x| x <= pivot }) + [pivot] + quicksort(a[1..].select { |x| x > pivot })
end
quicksort(arr)
```
