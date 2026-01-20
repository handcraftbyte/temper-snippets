---
title: "Check if Palindrome"
description: "Check if a string is a palindrome by comparing characters from both ends."
topic: "strings"
parameters:
  - name: "s"
    type: "string"
    default: "A man a plan a canal Panama"
    description: "The string to check"
exampleOutputs:
  - input: { "s": "A man a plan a canal Panama" }
    output: "true"
  - input: { "s": "racecar" }
    output: "true"
  - input: { "s": "hello" }
    output: "false"
---

```ruby
clean = s.downcase.gsub(/[^a-z0-9]/, '')
return clean == clean.reverse
```
