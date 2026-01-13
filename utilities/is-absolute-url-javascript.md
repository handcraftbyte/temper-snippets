---
title: "Is Absolute URL"
description: "Check if a URL is absolute (has protocol)"
topic: "http"
parameters:
  - name: "url"
    type: "string"
    default: "https://example.com/path"
    description: "URL to check"
exampleOutputs:
  - input: { "url": "https://example.com/path" }
    output: "true"
  - input: { "url": "/path/to/page" }
    output: "false"
---

```javascript
/^[a-z][a-z0-9+.-]*:\/\//i.test(url);
```
