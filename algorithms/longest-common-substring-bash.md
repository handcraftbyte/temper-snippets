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

```bash
longest=""
for ((i=0; i<${#a}; i++)); do
  for ((j=i+1; j<=${#a}; j++)); do
    current="${a:i:j-i}"
    if [[ "$b" == *"$current"* ]] && [ ${#current} -gt ${#longest} ]; then
      longest="$current"
    fi
  done
done
echo "$longest"
```
