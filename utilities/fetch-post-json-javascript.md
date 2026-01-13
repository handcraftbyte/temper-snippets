---
title: "POST JSON Data"
description: "Send JSON payload to an API endpoint"
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"json": {"name": "Alice", "age": 30, "active": true}}'
---

```javascript
const payload = {
  name: 'Alice',
  age: 30,
  active: true
};

const response = await fetch('https://httpbin.org/post', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify(payload)
});
await response.json();
```
