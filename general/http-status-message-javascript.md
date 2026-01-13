---
title: HTTP Status Message
description: Get the standard message for any HTTP status code
topic: "http"
tags:
  - http
  - status
  - utility
parameters:
  - name: statusCode
    type: number
    default: 404
    description: HTTP status code
---

```javascript
const HTTP_STATUS = {
  // 1xx Informational
  100: 'Continue', 101: 'Switching Protocols', 102: 'Processing',
  // 2xx Success
  200: 'OK', 201: 'Created', 202: 'Accepted', 204: 'No Content',
  // 3xx Redirection
  301: 'Moved Permanently', 302: 'Found', 304: 'Not Modified', 307: 'Temporary Redirect', 308: 'Permanent Redirect',
  // 4xx Client Error
  400: 'Bad Request', 401: 'Unauthorized', 403: 'Forbidden', 404: 'Not Found',
  405: 'Method Not Allowed', 408: 'Request Timeout', 409: 'Conflict', 410: 'Gone',
  413: 'Payload Too Large', 415: 'Unsupported Media Type', 418: "I'm a Teapot",
  422: 'Unprocessable Entity', 429: 'Too Many Requests',
  // 5xx Server Error
  500: 'Internal Server Error', 501: 'Not Implemented', 502: 'Bad Gateway',
  503: 'Service Unavailable', 504: 'Gateway Timeout'
};

return HTTP_STATUS[statusCode] || 'Unknown Status';
```

## Common Status Codes

| Code | Message | When to Use |
|------|---------|-------------|
| 200 | OK | Successful GET/PUT |
| 201 | Created | Successful POST |
| 204 | No Content | Successful DELETE |
| 400 | Bad Request | Invalid request body |
| 401 | Unauthorized | Missing/invalid auth |
| 403 | Forbidden | Valid auth but no permission |
| 404 | Not Found | Resource doesn't exist |
| 409 | Conflict | Resource state conflict |
| 422 | Unprocessable Entity | Validation failed |
| 429 | Too Many Requests | Rate limited |
| 500 | Internal Server Error | Server bug |
| 503 | Service Unavailable | Maintenance/overload |

## Status Code Categories

```javascript
function getStatusCategory(code) {
  if (code >= 100 && code < 200) return 'informational';
  if (code >= 200 && code < 300) return 'success';
  if (code >= 300 && code < 400) return 'redirection';
  if (code >= 400 && code < 500) return 'client-error';
  if (code >= 500 && code < 600) return 'server-error';
  return 'unknown';
}
```
