---
title: "String Similarity"
description: "Calculate similarity percentage between two strings"
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

```bash
declare -A dp
m=${#a}; n=${#b}
for ((i=0; i<=m; i++)); do dp[$i,0]=$i; done
for ((j=0; j<=n; j++)); do dp[0,$j]=$j; done
for ((i=1; i<=m; i++)); do
  for ((j=1; j<=n; j++)); do
    [[ "${a:i-1:1}" == "${b:j-1:1}" ]] && cost=0 || cost=1
    del=$((dp[$((i-1)),$j] + 1))
    ins=$((dp[$i,$((j-1))] + 1))
    sub=$((dp[$((i-1)),$((j-1))] + cost))
    min=$del; ((ins < min)) && min=$ins; ((sub < min)) && min=$sub
    dp[$i,$j]=$min
  done
done
max=$m; ((n > max)) && max=$n
echo $(( (max - dp[$m,$n]) * 100 / max ))
```
