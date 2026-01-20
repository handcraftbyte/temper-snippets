---
title: "Generate UUID v3"
description: "Generate a name-based UUID v3 using MD5 hashing of namespace and name."
topic: "generators"
parameters:
  - name: "namespace"
    type: "string"
    default: "6ba7b810-9dad-11d1-80b4-00c04fd430c8"
    description: "Namespace UUID (use DNS, URL, OID, or X500 namespace)."
  - name: "name"
    type: "string"
    default: "example.com"
    description: "Name to hash within the namespace."
exampleOutputs:
  - input: { "namespace": "6ba7b810-9dad-11d1-80b4-00c04fd430c8", "name": "example.com" }
    output: "9073926b-929f-31c2-abc9-fad77ae3e8eb"
  - input: { "namespace": "6ba7b811-9dad-11d1-80b4-00c04fd430c8", "name": "https://example.com" }
    output: "c7e1f5a2-4e0e-3b4c-8c9f-2a1b3d4e5f6a"
---

```javascript
const ns = namespace.replace(/-/g, '').match(/.{2}/g).map(b => parseInt(b, 16));
const data = new Uint8Array([...ns, ...new TextEncoder().encode(name)]);
const hash = Array.from(new Uint8Array(await crypto.subtle.digest('MD5', data)));
hash[6] = (hash[6] & 0x0f) | 0x30;
hash[8] = (hash[8] & 0x3f) | 0x80;
return hash.map(b => b.toString(16).padStart(2, '0')).join('').replace(/(.{8})(.{4})(.{4})(.{4})(.{12})/, '$1-$2-$3-$4-$5');
```

## What is UUID v3?

UUID v3 is **deterministic** — the same namespace + name always produces the same UUID. It works by hashing the namespace UUID concatenated with a name using **MD5**.

```
uuid_v3(namespace, "example.com") → always "9073926b-929f-31c2-abc9-fad77ae3e8eb"
```

## Standard Namespaces

RFC 4122 defines these well-known namespace UUIDs:

| Namespace | UUID | Use For |
|-----------|------|---------|
| **DNS** | `6ba7b810-9dad-11d1-80b4-00c04fd430c8` | Domain names |
| **URL** | `6ba7b811-9dad-11d1-80b4-00c04fd430c8` | URLs |
| **OID** | `6ba7b812-9dad-11d1-80b4-00c04fd430c8` | ISO OIDs |
| **X500** | `6ba7b814-9dad-11d1-80b4-00c04fd430c8` | X.500 DNs |

You can also create your own namespace UUID for application-specific uses.

## When to Use UUID v3/v5

| Use Case | Why |
|----------|-----|
| **Idempotent record creation** | Same input = same ID, prevents duplicates |
| **Content addressing** | ID derived from content itself |
| **URL shorteners** | Deterministic short ID for each URL |
| **Distributed ID generation** | No coordination needed, same result everywhere |
| **Database migrations** | Generate predictable IDs from legacy data |

## v3 vs v5: Which to Choose?

| | UUID v3 | UUID v5 |
|-|---------|---------|
| **Hash algorithm** | MD5 | SHA-1 |
| **Security** | MD5 is cryptographically broken | SHA-1 is stronger (but also deprecated for crypto) |
| **Recommendation** | Legacy compatibility only | **Prefer v5 for new projects** |

Neither should be used for security purposes — they're for deterministic ID generation only.

## Important: Not for Secrets!

Name-based UUIDs are **reversible via brute force** if the input space is small:

```javascript
// DANGEROUS: Attacker can hash all emails to find matches
uuid_v3(DNS_NAMESPACE, "user@example.com")

// SAFER: Add a secret salt (but consider if you really need determinism)
uuid_v3(YOUR_SECRET_NAMESPACE, "user@example.com")
```
