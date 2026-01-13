---
title: "Validate Cron Expression"
description: "Check if a cron expression has valid format (5 fields)"
topic: "system"
parameters:
  - name: "expr"
    type: "string"
    default: "*/15 * * * *"
    description: "Cron expression to validate"
exampleOutputs:
  - input: { "expr": "0 9 * * 1-5" }
    output: "valid"
  - input: { "expr": "invalid cron" }
    output: "invalid"
---

```bash
# Validate 5-field cron expression
field='([0-9*,/-]+)'
pattern="^${field} ${field} ${field} ${field} ${field}$"
if [[ "$expr" =~ $pattern ]]; then
  echo "valid"
else
  echo "invalid"
fi
```
