---
title: "Get Current Timestamp"
description: "Get the current Unix timestamp in milliseconds."
topic: "dates"
parameters: []
exampleOutputs:
  - input: {}
    output: "1704067200000"
---

```ruby
(Time.now.to_f * 1000).to_i
```
