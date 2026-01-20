---
title: "Heap Sort"
description: "Sort an array using the heap sort algorithm with O(n log n) time complexity."
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
def heapify(a, n, i)
  largest, l, r = i, 2 * i + 1, 2 * i + 2
  largest = l if l < n && a[l] > a[largest]
  largest = r if r < n && a[r] > a[largest]
  if largest != i
    a[i], a[largest] = a[largest], a[i]
    heapify(a, n, largest)
  end
end

a = arr.dup
n = a.length
(n / 2 - 1).downto(0) { |i| heapify(a, n, i) }
(n - 1).downto(1) do |i|
  a[0], a[i] = a[i], a[0]
  heapify(a, i, 0)
end
a
```
