---
title: "Check if Palindrome"
description: "Check if a string is a palindrome (reads the same forwards and backwards)"
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

```bash
clean=$(echo "$s" | tr '[:upper:]' '[:lower:]' | tr -cd 'a-z0-9')
reversed=$(echo "$clean" | rev)
[[ "$clean" == "$reversed" ]] && echo "true" || echo "false"
```
