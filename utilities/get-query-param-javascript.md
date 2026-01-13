---
title: "Get Query Parameter"
description: "Get a specific query parameter from a URL"
topic: "http"
parameters:
  - name: "url"
    type: "string"
    default: "https://example.com?name=John&age=30"
    description: "URL with query parameters"
  - name: "param"
    type: "string"
    default: "name"
    description: "Parameter name to get"
exampleOutputs:
  - input: { "url": "https://example.com?name=John&age=30", "param": "name" }
    output: "John"
  - input: { "url": "https://example.com?name=John&age=30", "param": "age" }
    output: "30"
---

```javascript
new URL(url).searchParams.get(param);
```
