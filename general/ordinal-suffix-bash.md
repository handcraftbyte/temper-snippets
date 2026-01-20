---
title: "Ordinal Suffix"
description: "Add an ordinal suffix to a number, returning formats like 1st, 2nd, 3rd, 4th."
topic: "math"
parameters:
  - name: "num"
    type: "number"
    default: 23
    description: "The number to add suffix to"
exampleOutputs:
  - input: { "num": 1 }
    output: "1st"
  - input: { "num": 23 }
    output: "23rd"
---

```bash
v=$((num % 100))
if [ $v -ge 11 ] && [ $v -le 13 ]; then echo "${num}th"
elif [ $((num % 10)) -eq 1 ]; then echo "${num}st"
elif [ $((num % 10)) -eq 2 ]; then echo "${num}nd"
elif [ $((num % 10)) -eq 3 ]; then echo "${num}rd"
else echo "${num}th"; fi
```
