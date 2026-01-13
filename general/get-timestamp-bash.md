---
title: "Get Current Timestamp"
description: "Get the current Unix timestamp in milliseconds"
topic: "dates"
parameters: []
exampleOutputs:
  - input: {}
    output: "1704067200000"
---

```bash
echo $(($(date +%s) * 1000))
```
