---
title: "Encode Base64"
description: "Encode a string to Base64 format for safe transmission in URLs and APIs"
topic: "encoding"
parameters:
  - name: "input"
    type: "string"
    default: "Hello World!"
    description: "The string to encode to Base64"
exampleOutputs:
  - input: { "input": "Hello World!" }
    output: "SGVsbG8gV29ybGQh"
---

```php
base64_encode($input);
```
