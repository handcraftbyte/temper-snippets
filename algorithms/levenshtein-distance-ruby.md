---
title: "Levenshtein Distance"
description: "Calculate the Levenshtein edit distance between two strings using dynamic programming."
topic: "strings"
parameters:
  - name: "a"
    type: "string"
    default: "kitten"
    description: "First string"
  - name: "b"
    type: "string"
    default: "sitting"
    description: "Second string"
exampleOutputs:
  - input: { "a": "kitten", "b": "sitting" }
    output: "3"
---

```ruby
m, n = a.length, b.length
dp = Array.new(m + 1) { Array.new(n + 1, 0) }
(0..m).each { |i| dp[i][0] = i }
(0..n).each { |j| dp[0][j] = j }
(1..m).each do |i|
  (1..n).each do |j|
    dp[i][j] = a[i-1] == b[j-1] ? dp[i-1][j-1] : 1 + [dp[i-1][j], dp[i][j-1], dp[i-1][j-1]].min
  end
end
return dp[m][n]
```
