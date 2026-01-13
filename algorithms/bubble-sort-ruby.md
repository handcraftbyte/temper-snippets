---
title: "Bubble Sort"
description: "Sort array using bubble sort algorithm"
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
  (0...a.length - i - 1).each do |j|
    a[j], a[j + 1] = a[j + 1], a[j] if a[j] > a[j + 1]
  end
end
a
```
