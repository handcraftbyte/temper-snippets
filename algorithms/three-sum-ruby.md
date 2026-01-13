---
title: "Three Sum"
description: "Find all unique triplets that sum to target"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [-1, 0, 1, 2, -1, -4]
    description: "Array of numbers"
  - name: "target"
    type: "number"
    default: 0
    description: "Target sum"
exampleOutputs:
  - input: { "arr": [-1, 0, 1, 2, -1, -4], "target": 0 }
    output: "[[-1,-1,2],[-1,0,1]]"
---

```ruby
a = arr.sort
result = []
(0...a.length - 2).each do |i|
  next if i > 0 && a[i] == a[i - 1]
  l, r = i + 1, a.length - 1
  while l < r
    s = a[i] + a[l] + a[r]
    if s == target
      result << [a[i], a[l], a[r]]
      l += 1 while l < r && a[l] == a[l + 1]
      r -= 1 while l < r && a[r] == a[r - 1]
      l += 1; r -= 1
    elsif s < target then l += 1
    else r -= 1
    end
  end
end
return result
```
