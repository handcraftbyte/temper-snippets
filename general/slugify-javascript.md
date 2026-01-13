---
title: "Slugify String"
description: "Convert a string to a URL-friendly slug"
topic: "strings"
relatedSlugs:
  - "slugify-python"
  - "slugify-ruby"
  - "slugify-php"
  - "slugify-bash"
parameters:
  - name: "str"
    type: "string"
    default: "Hello World! This is a Test"
    description: "The string to convert to a slug"
exampleOutputs:
  - input: { "str": "Hello World! This is a Test" }
    output: "hello-world-this-is-a-test"
  - input: { "str": "JavaScript & TypeScript" }
    output: "javascript-typescript"
---

```javascript
str.toLowerCase().trim().replace(/[^\w\s-]/g, '').replace(/[\s_-]+/g, '-').replace(/^-+|-+$/g, '');
```
