---
title: "Count Syllables"
description: "Estimate the number of syllables in a word"
topic: "strings"
parameters:
  - name: "word"
    type: "string"
    default: "beautiful"
    description: "Word to count syllables in"
exampleOutputs:
  - input: { "word": "beautiful" }
    output: "3"
---

```bash
w=$(echo "$word" | tr '[:upper:]' '[:lower:]' | sed -E 's/([^laeiouy]es|ed|[^laeiouy]e)$//')
count=$(echo "$w" | grep -oE '[aeiouy]{1,2}' | wc -l)
echo $((count > 0 ? count : 1))
```
