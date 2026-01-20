---
title: "Escape HTML"
description: "Escape HTML special characters to prevent XSS attacks and ensure safe rendering."
topic: "strings"
relatedSlugs:
  - "escape-html-javascript"
  - "escape-html-ruby"
  - "escape-html-php"
  - "escape-html-bash"
parameters:
  - name: "str"
    type: "string"
    default: "<script>alert('XSS')</script>"
    description: "The string containing HTML to escape."
exampleOutputs:
  - input: { "str": "<script>alert('XSS')</script>" }
    output: "&lt;script&gt;alert('XSS')&lt;/script&gt;"
  - input: { "str": "<div class=\"test\">" }
    output: "&lt;div class=&quot;test&quot;&gt;"
---

```python
import html
return html.escape(str)
```
