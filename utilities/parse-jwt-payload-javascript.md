---
title: "Parse JWT Payload"
description: "Extract and decode the payload from a JWT token without verification. Useful for reading claims like user ID, expiration time, and roles from tokens."
topic: "security"
tags:
  - jwt
  - authentication
  - token
  - base64
  - security
parameters:
  - name: "token"
    type: "string"
    default: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"
    description: "JWT token string"
exampleOutputs:
  - input: { "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiYWxpY2UifQ.xxx" }
    output: '{"user":"alice"}'
---

```javascript
const base64Url = token.split('.')[1];
const base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
const payload = decodeURIComponent(atob(base64).split('').map(c =>
  '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2)
).join(''));
return JSON.parse(payload);
```

## What is a JWT?

A JSON Web Token (JWT) has three parts separated by dots:

```
header.payload.signature
```

| Part | Purpose | Encoded |
|------|---------|---------|
| **Header** | Algorithm & token type | Base64URL |
| **Payload** | Claims (user data, expiry) | Base64URL |
| **Signature** | Verification hash | Base64URL |

This snippet decodes the **payload** (middle part) to read the claims.

## Common JWT Claims

```javascript
{
  "sub": "1234567890",    // Subject (user ID)
  "name": "John Doe",     // Custom claim
  "iat": 1516239022,      // Issued at (Unix timestamp)
  "exp": 1516242622,      // Expiration time
  "aud": "my-app",        // Audience
  "iss": "auth-server"    // Issuer
}
```

## Security Warning

**This does NOT verify the token!** Anyone can create a JWT with any payload. Always verify the signature server-side before trusting the claims.

### When to use this

- Display user info in UI (name, avatar)
- Check if token is expired before making API calls
- Debug authentication issues
- Read non-sensitive metadata

### When NOT to use this

- Authorization decisions (verify signature first!)
- Trusting user identity server-side
- Any security-critical logic
