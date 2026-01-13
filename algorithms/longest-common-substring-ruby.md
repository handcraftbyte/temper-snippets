---
title: "Longest Common Substring"
description: "Find the longest common substring between two strings"
topic: "strings"
parameters:
  - name: "a"
    type: "string"
    default: "abcdxyz"
    description: "First string"
  - name: "b"
    type: "string"
    default: "xyzabcd"
    description: "Second string"
exampleOutputs:
  - input: { "a": "abcdxyz", "b": "xyzabcd" }
    output: "abcd"
---

```ruby
longest = ''
(0...a.length).each do |i|
  (i+1..a.length).each do |j|
    current = a[i...j]
    longest = current if b.include?(current) && current.length > longest.length
  end
end
return longest
```
