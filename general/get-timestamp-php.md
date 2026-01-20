---
title: "Get Current Timestamp"
description: "Get the current Unix timestamp in milliseconds."
topic: "dates"
parameters: []
exampleOutputs:
  - input: {}
    output: "1704067200000"
---

```php
(int)(microtime(true) * 1000);
```
