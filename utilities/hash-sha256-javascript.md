---
title: "Hash SHA-256"
description: "Generate a SHA-256 hash of a string. SHA-256 produces a fixed 64-character hexadecimal output regardless of input size."
topic: "security"
tags:
  - sha256
  - hash
  - cryptography
  - checksum
  - security
parameters:
  - name: "str"
    type: "string"
    default: "Hello World"
    description: "String to hash."
exampleOutputs:
  - input: { "str": "Hello World" }
    output: "a591a6d40bf420404a011733cfb7b190d62c65bf0bcda32b57b277d9ad9f146e"
---

```javascript
const encoder = new TextEncoder();
const data = encoder.encode(str);
const hashBuffer = await crypto.subtle.digest('SHA-256', data);
return Array.from(new Uint8Array(hashBuffer)).map(b => b.toString(16).padStart(2, '0')).join('');
```

## What is SHA-256?

SHA-256 (Secure Hash Algorithm 256-bit) is a cryptographic hash function that:

- Takes any input and produces a **fixed 256-bit (64 hex character)** output
- Is **one-way** — you cannot reverse a hash to get the original input
- Is **deterministic** — same input always produces same output
- Has **avalanche effect** — tiny input change completely changes the hash

```javascript
"hello"  → "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"
"hello!" → "ce06092fb948d9ffac7d1a376e404b26b7575bcc11ee05a4615fef4fec3a308b"
//          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
//          Completely different despite only adding "!"
```

## When to Use Hashing

| Use Case | Example |
|----------|---------|
| **Data integrity** | Verify file downloads haven't been corrupted |
| **Checksums** | Detect duplicate files by comparing hashes |
| **Caching keys** | Generate cache keys from request parameters |
| **Commit IDs** | Git uses SHA for commit identifiers |

## When NOT to Use Plain SHA-256

### For passwords — use bcrypt, scrypt, or Argon2

Plain SHA-256 is too fast! Attackers can try billions of guesses per second. Password hashing algorithms are intentionally slow.

```javascript
// BAD: SHA-256 for passwords
sha256("password123")

// GOOD: Use a password hashing library
bcrypt.hash("password123", saltRounds)
```

### For secrets — add a salt

Without a salt, identical inputs produce identical hashes, making rainbow table attacks possible.

```javascript
// BAD: Predictable hash
sha256(email)

// GOOD: Add random salt
sha256(email + randomSalt)
```

## Hashing vs Encryption

| Hashing | Encryption |
|---------|------------|
| One-way (irreversible) | Two-way (reversible with key) |
| Fixed output size | Output size varies with input |
| For verification | For confidentiality |
| No key needed | Requires encryption key |
