---
title: "Validate Slug"
description: "Check if a string is a valid URL slug"
topic: "validation"
parameters:
  - name: "slug"
    type: "string"
    default: "my-blog-post-123"
    description: "Slug to validate"
exampleOutputs:
  - input: { "slug": "my-blog-post-123" }
    output: "true"
  - input: { "slug": "Hello World" }
    output: "false"
  - input: { "slug": "valid_slug" }
    output: "false"
---

```javascript
/^[a-z0-9]+(?:-[a-z0-9]+)*$/.test(slug);
```
