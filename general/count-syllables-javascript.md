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

```javascript
const w = word.toLowerCase().replace(/(?:[^laeiouy]es|ed|[^laeiouy]e)$/, '').match(/[aeiouy]{1,2}/g);
return w ? w.length : 1;
```
