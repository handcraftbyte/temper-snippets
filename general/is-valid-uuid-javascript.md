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
    output: "true"
  - input: { "uuid": "not-a-uuid" }
    output: "false"
  - input: { "uuid": "123e4567-e89b-12d3-a456-426614174000" }
    output: "true"
---

```javascript
/^[0-9a-f]{8}-[0-9a-f]{4}-[1-7][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(uuid);
```
