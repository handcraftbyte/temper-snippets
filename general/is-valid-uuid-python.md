---
title: "Validate UUID"
description: "Check if a string is a valid UUID (v1-v7)."
topic: "validation"
parameters:
  - name: "uuid"
    type: "string"
    default: "550e8400-e29b-41d4-a716-446655440000"
    description: "The UUID to validate"
exampleOutputs:
  - input: { "uuid": "550e8400-e29b-41d4-a716-446655440000" }
    output: "True"
  - input: { "uuid": "not-a-uuid" }
    output: "False"
---

```python
import re
return bool(re.match(r'^[0-9a-f]{8}-[0-9a-f]{4}-[1-7][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$', uuid, re.I))
```
