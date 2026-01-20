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
---

```bash
[[ "$uuid" =~ ^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-7][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$ ]] && echo "true" || echo "false"
```
