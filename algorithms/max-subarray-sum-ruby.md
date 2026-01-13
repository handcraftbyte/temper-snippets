---
title: "Maximum Subarray Sum"
description: "Find the maximum sum of a contiguous subarray (Kadane's algorithm)"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [-2, 1, -3, 4, -1, 2, 1, -5, 4]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [-2, 1, -3, 4, -1, 2, 1, -5, 4] }
    output: "6"
---

```ruby
max_sum = current_sum = arr[0]
arr[1..].each do |x|
  current_sum = [x, current_sum + x].max
  max_sum = [max_sum, current_sum].max
end
return max_sum
```
