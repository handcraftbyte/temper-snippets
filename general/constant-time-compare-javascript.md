---
title: "Constant Time Compare"
description: "Compare two strings in constant time to prevent timing attacks. Unlike === which returns early on first mismatch, this compares all characters regardless of where differences occur."
topic: "security"
tags:
  - security
  - timing-attack
  - authentication
  - secrets
  - cryptography
parameters:
  - name: "a"
    type: "string"
    default: "secret-token-abc123"
    description: "First string (e.g., user-provided token)"
  - name: "b"
    type: "string"
    default: "secret-token-abc123"
    description: "Second string (e.g., stored secret)"
exampleOutputs:
  - input: { "a": "password123", "b": "password123" }
    output: "true"
  - input: { "a": "password123", "b": "password124" }
    output: "false"
---

```javascript
// Constant-time comparison prevents timing attacks
// XOR each character and accumulate differences
let result = a.length ^ b.length; // Start with length difference
const len = Math.max(a.length, b.length);
for (let i = 0; i < len; i++) {
  const charA = i < a.length ? a.charCodeAt(i) : 0;
  const charB = i < b.length ? b.charCodeAt(i) : 0;
  result |= charA ^ charB;
}
return result === 0;
```

## Why not use `===`?

Regular string comparison (`===`) is vulnerable to **timing attacks**:

```javascript
// UNSAFE: Returns early on first mismatch
"secret123" === "aecret123"  // Fails at index 0 (fast)
"secret123" === "sXcret123"  // Fails at index 1 (slower)
"secret123" === "seXret123"  // Fails at index 2 (even slower)
```

An attacker can measure response times to guess secrets character by character. If comparing "s..." takes longer than "a...", they know the first character is "s".

**Constant-time comparison** always takes the same amount of time regardless of where (or if) strings differ, making timing analysis useless.

### When to use this

- Comparing API keys or tokens
- Validating HMAC signatures
- Password reset token verification
- Any secret comparison in authentication flows
