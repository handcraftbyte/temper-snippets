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

```ruby
w = word.downcase.gsub(/(?:[^laeiouy]es|ed|[^laeiouy]e)$/, '')
matches = w.scan(/[aeiouy]{1,2}/)
return matches.empty? ? 1 : matches.length
```
