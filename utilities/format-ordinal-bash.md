---
title: "Format Ordinal"
description: "Convert number to ordinal (1st, 2nd, 3rd, etc.)"
topic: "formatting"
parameters:
  - name: "num"
    type: "number"
    default: 42
    description: "Number to convert"
exampleOutputs:
  - input: { "num": 1 }
    output: "1st"
  - input: { "num": 22 }
    output: "22nd"
  - input: { "num": 42 }
    output: "42nd"
---

```bash
v=$((num % 100))
if [[ $v -ge 11 && $v -le 13 ]]; then
    suffix="th"
else
    case $((v % 10)) in
        1) suffix="st" ;;
        2) suffix="nd" ;;
        3) suffix="rd" ;;
        *) suffix="th" ;;
    esac
fi
echo "${num}${suffix}"
```
