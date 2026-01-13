---
title: "Extract Emails from Text"
description: "Extract all email addresses from a text string"
topic: "strings"
parameters:
  - name: "text"
    type: "string"
    default: "Contact us at support@example.com or sales@company.org"
    description: "Text containing emails"
exampleOutputs:
  - input: { "text": "Contact us at support@example.com or sales@company.org" }
    output: "[\"support@example.com\", \"sales@company.org\"]"
---

```javascript
text.match(/[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}/g) || [];
```
