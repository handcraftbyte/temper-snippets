---
title: "Two Sum"
description: "Find indices of two numbers in an array that add up to a target value using a hash map for O(n) time complexity."
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [2, 7, 11, 15]
    description: "Array of numbers"
  - name: "target"
    type: "number"
    default: 9
    description: "Target sum"
exampleOutputs:
  - input: { "arr": [2, 7, 11, 15], "target": 9 }
    output: "[0, 1]"
---

```ruby
seen = {}
result = nil
arr.each_with_index do |num, i|
  complement = target - num
  if seen.key?(complement)
    result = [seen[complement], i]
    break
  end
  seen[num] = i
end
return result
```
