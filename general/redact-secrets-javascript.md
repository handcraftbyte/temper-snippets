---
title: "Redact Secrets"
description: "Mask sensitive data like API keys, tokens, and passwords in text. Essential for logging and error messages to prevent credential exposure."
topic: "strings"
tags:
  - security
  - logging
  - secrets
  - api-keys
  - privacy
parameters:
  - name: "text"
    type: "string"
    default: "API_KEY=sk_live_abc123xyz789 and password=secret123"
    description: "Text containing secrets"
  - name: "visibleChars"
    type: "number"
    default: 4
    description: "Characters to keep visible at end"
exampleOutputs:
  - input: { "text": "token=abc123456789", "visibleChars": 4 }
    output: "token=***...6789"
  - input: { "text": "key: sk_test_12345", "visibleChars": 4 }
    output: "key: ***...2345"
---

```javascript
return text.replace(
  /(?:api[_-]?key|secret|token|password|auth|bearer)\s*[=:]\s*['"]?(\S+?)['"]?(?=\s|$)/gi,
  (match, secret) => {
    const visible = secret.slice(-visibleChars);
    return match.replace(secret, '***...' + visible);
  }
);
```

## Why Redact Secrets?

Secrets accidentally logged can lead to:

- **Data breaches** — attackers search logs for credentials
- **Compliance violations** — PCI-DSS, HIPAA, GDPR require secret protection
- **Lateral movement** — one leaked key can compromise multiple systems

## Common Secret Patterns

This snippet catches common patterns:

| Pattern | Example |
|---------|---------|
| `api_key=...` | `api_key=sk_live_abc123` |
| `API-KEY: ...` | `API-KEY: xyz789` |
| `password=...` | `password=secret123` |
| `token: ...` | `token: eyJhbG...` |
| `auth=...` | `auth=bearer_token` |
| `secret=...` | `secret=my_secret` |

## Extending the Pattern

Add more patterns for your specific needs:

```javascript
// Add AWS, Stripe, GitHub patterns
/(?:api[_-]?key|secret|token|password|auth|bearer|aws[_-]?access|stripe[_-]?key|gh[op]_)/gi
```

## Best Practices

### Keep some characters visible

Showing the last 4 characters helps with debugging:
- `sk_live_***...x789` — You can identify which key was used
- `************` — No way to tell keys apart

### Redact before logging, not after

```javascript
// GOOD: Redact first
logger.info(redactSecrets(requestBody));

// BAD: Secret already in log buffer
logger.info(requestBody);
redactFromLogs(); // Too late!
```

### Consider structured logging

Instead of string replacement, use structured logging with known secret fields:

```javascript
const sanitized = {
  ...request,
  headers: {
    ...request.headers,
    authorization: '[REDACTED]'
  }
};
```

## What This Doesn't Catch

- Base64-encoded secrets without keywords
- Secrets in URLs: `https://user:pass@host`
- Custom header names: `X-Custom-Auth: secret`
- Secrets in JSON without labeled keys
