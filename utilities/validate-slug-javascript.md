---
title: "Validate Slug"
description: "Check if a string is a valid URL slug"
topic: "validation"
parameters:
  - name: "slug"
    type: "string"
    default: "my-blog-post-2024"
    description: "Slug to validate"
exampleOutputs:
  - input: { "slug": "my-blog-post-2024" }
    output: "true"
  - input: { "slug": "Invalid Slug!" }
    output: "false"
---

```javascript
/^[a-z0-9]+(?:-[a-z0-9]+)*$/.test(slug);
```
