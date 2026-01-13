---
title: "Escape HTML"
description: "Escape HTML special characters to prevent XSS attacks"
topic: "strings"
parameters:
  - name: "str"
    type: "string"
    default: "<script>alert('XSS')</script>"
    description: "The string containing HTML to escape"
exampleOutputs:
  - input: { "str": "<script>alert('XSS')</script>" }
    output: "&lt;script&gt;alert('XSS')&lt;/script&gt;"
  - input: { "str": "<div class=\"test\">" }
    output: "&lt;div class=&quot;test&quot;&gt;"
---

```javascript
str.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;').replace(/'/g, '&#039;');
```
