---
title: "Longest Increasing Subsequence"
description: "Find length of longest increasing subsequence"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [10, 9, 2, 5, 3, 7, 101, 18]
    description: "Array of numbers"
exampleOutputs:
  - input: { "arr": [10, 9, 2, 5, 3, 7, 101, 18] }
    output: "4"
---

```ruby
dp = Array.new(arr.length, 1)
(1...arr.length).each do |i|
  (0...i).each do |j|
    dp[i] = [dp[i], dp[j] + 1].max if arr[i] > arr[j]
  end
end
return dp.max
```
