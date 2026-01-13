---
title: "Send URL-Encoded Form"
description: "Send form data as application/x-www-form-urlencoded"
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"form": {"username": "john", "password": "secret123"}}'
---

```javascript
const params = new URLSearchParams();
params.append('username', 'john');
params.append('password', 'secret123');
params.append('remember', 'true');

const response = await fetch('https://httpbin.org/post', {
  method: 'POST',
  headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
  body: params
});
await response.json();
```

## When to Use

- HTML form submissions
- OAuth token requests
- Legacy APIs expecting form data
- Simple key-value data without files
