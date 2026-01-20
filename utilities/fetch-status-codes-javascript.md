---
title: "Test HTTP Status Codes"
description: "Request specific HTTP status codes to test error handling."
topic: "http"
parameters:
  - name: "statusCode"
    type: "number"
    default: 404
    description: "HTTP status code to request (200, 400, 404, 500, etc.)."
exampleOutputs:
  - input: { "statusCode": 404 }
    output: '{"status": 404, "ok": false}'
  - input: { "statusCode": 200 }
    output: '{"status": 200, "ok": true}'
---

```javascript
const response = await fetch(`https://httpbin.org/status/${statusCode}`);
({ status: response.status, ok: response.ok, statusText: response.statusText });
```

## Common Status Codes

| Code | Meaning |
|------|---------|
| 200 | OK |
| 201 | Created |
| 204 | No Content |
| 400 | Bad Request |
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |
| 429 | Too Many Requests |
| 500 | Internal Server Error |
| 503 | Service Unavailable |
