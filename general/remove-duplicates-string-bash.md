---
title: "Remove Duplicate Characters"
description: "Remove duplicate characters from a string, keeping first occurrence"
topic: "strings"
parameters:
  - name: "s"
    type: "string"
    default: "programming"
    description: "The string to remove duplicates from"
exampleOutputs:
  - input: { "s": "programming" }
    output: "progamin"
  - input: { "s": "hello" }
    output: "helo"
---

```bash
echo "$s" | awk '{while(match($0,/./)){c=substr($0,RSTART,1);if(!a[c]++)printf c;$0=substr($0,RSTART+1)}}'
```
