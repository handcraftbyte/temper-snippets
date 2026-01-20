---
title: "Validate Email"
description: "Check if a string is a valid email address."
topic: "validation"
relatedSlugs:
  - "is-valid-email-javascript"
  - "is-valid-email-python"
  - "is-valid-email-php"
  - "is-valid-email-bash"
parameters:
  - name: "email"
    type: "string"
    default: "user@example.com"
    description: "The email address to validate"
exampleOutputs:
  - input: { "email": "user@example.com" }
    output: "true"
  - input: { "email": "invalid-email" }
    output: "false"
  - input: { "email": "test@domain.co.uk" }
    output: "true"
---

```ruby
!!(email =~ /^[^\s@]+@[^\s@]+\.[^\s@]+$/)
```
