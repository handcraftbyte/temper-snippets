---
title: "Escape HTML"
description: "Escape HTML special characters to prevent XSS attacks"
topic: "strings"
relatedSlugs:
  - "escape-html-javascript"
  - "escape-html-python"
  - "escape-html-php"
  - "escape-html-bash"
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

```ruby
require 'cgi'
return CGI.escapeHTML(str)
```
