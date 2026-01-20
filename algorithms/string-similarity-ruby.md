---
title: "String Similarity"
description: "Calculate the similarity percentage between two strings based on edit distance."
topic: "strings"
parameters:
  - name: "a"
    type: "string"
    default: "hello"
    description: "First string"
  - name: "b"
    type: "string"
    default: "hallo"
    description: "Second string"
exampleOutputs:
  - input: { "a": "hello", "b": "hallo" }
    output: "80"
---

```ruby
m, n = a.length, b.length
dp = Array.new(m + 1) { |i| Array.new(n + 1) { |j| i == 0 ? j : j == 0 ? i : 0 } }
(1..m).each do |i|
  (1..n).each do |j|
    dp[i][j] = a[i-1] == b[j-1] ? dp[i-1][j-1] : 1 + [dp[i-1][j], dp[i][j-1], dp[i-1][j-1]].min
  end
end
return ((1 - dp[m][n].to_f / [m, n].max) * 100).round
```
