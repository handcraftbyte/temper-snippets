---
title: "Handle Cookies"
description: "Set cookies via response and send them back in subsequent requests."
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"cookies": {"session": "abc123", "user": "john"}}'
---

```javascript
// First request sets cookies
await fetch('https://httpbin.org/cookies/set?session=abc123&user=john', {
  credentials: 'include'
});

// Second request sends cookies back
const response = await fetch('https://httpbin.org/cookies', {
  credentials: 'include'
});
await response.json();
```

## Important

- Use `credentials: 'include'` to send/receive cookies cross-origin
- Use `credentials: 'same-origin'` for same-origin only (default)
- Cookies are automatically managed by the browser
