---
title: "Get Domain from URL"
description: "Extract the domain name (hostname) from a URL."
topic: "http"
parameters:
  - name: "url"
    type: "string"
    default: "https://www.example.com/path/to/page"
    description: "URL to extract domain from."
exampleOutputs:
  - input: { "url": "https://www.example.com/path/to/page" }
    output: "www.example.com"
  - input: { "url": "https://sub.domain.co.uk/page" }
    output: "sub.domain.co.uk"
---

```javascript
new URL(url).hostname;
```
