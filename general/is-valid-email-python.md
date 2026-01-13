---
title: "Validate Email"
description: "Check if a string is a valid email address"
topic: "validation"
relatedSlugs:
  - "is-valid-email-javascript"
  - "is-valid-email-ruby"
  - "is-valid-email-php"
  - "is-valid-email-bash"
parameters:
  - name: "email"
    type: "string"
    default: "user@example.com"
    description: "The email address to validate"
exampleOutputs:
  - input: { "email": "user@example.com" }
    output: "True"
  - input: { "email": "invalid-email" }
    output: "False"
  - input: { "email": "test@domain.co.uk" }
    output: "True"
---

```python
import re
return bool(re.match(r'^[^\s@]+@[^\s@]+\.[^\s@]+$', email))
```
