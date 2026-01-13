---
title: "Decode Base64"
description: "Decode a Base64 encoded string back to its original text representation"
topic: "encoding"
parameters:
  - name: "input"
    type: "string"
    default: "SGVsbG8gV29ybGQh"
    description: "The Base64 encoded string to decode"
exampleOutputs:
  - input: { "input": "SGVsbG8gV29ybGQh" }
    output: "Hello World!"
---

```python
import base64
return base64.b64decode(input).decode()
```
