---
title: "Generate UUID v5"
description: "Generate a name-based UUID v5 using SHA-1 hashing of namespace and name"
topic: "generators"
parameters:
  - name: "namespace"
    type: "string"
    default: "6ba7b810-9dad-11d1-80b4-00c04fd430c8"
    description: "Namespace UUID (use DNS, URL, OID, or X500 namespace)"
  - name: "name"
    type: "string"
    default: "example.com"
    description: "Name to hash within the namespace"
exampleOutputs:
  - input: { "namespace": "6ba7b810-9dad-11d1-80b4-00c04fd430c8", "name": "example.com" }
    output: "cfbff0d1-9375-5685-968c-48ce8b15ae17"
  - input: { "namespace": "6ba7b811-9dad-11d1-80b4-00c04fd430c8", "name": "https://example.com" }
    output: "2ed6657d-e927-568b-95e1-2665a8aea6a2"
---

```javascript
const ns = namespace.replace(/-/g, '').match(/.{2}/g).map(b => parseInt(b, 16));
const data = new Uint8Array([...ns, ...new TextEncoder().encode(name)]);
const hash = Array.from(new Uint8Array(await crypto.subtle.digest('SHA-1', data))).slice(0, 16);
hash[6] = (hash[6] & 0x0f) | 0x50;
hash[8] = (hash[8] & 0x3f) | 0x80;
return hash.map(b => b.toString(16).padStart(2, '0')).join('').replace(/(.{8})(.{4})(.{4})(.{4})(.{12})/, '$1-$2-$3-$4-$5');
```

## What is UUID v5?

UUID v5 is **deterministic** — the same namespace + name always produces the same UUID. It uses **SHA-1** hashing (stronger than v3's MD5).

```
uuid_v5(DNS_NAMESPACE, "example.com") → always "cfbff0d1-9375-5685-968c-48ce8b15ae17"
```

## Standard Namespaces

| Namespace | UUID | Use For |
|-----------|------|---------|
| **DNS** | `6ba7b810-9dad-11d1-80b4-00c04fd430c8` | Domain names |
| **URL** | `6ba7b811-9dad-11d1-80b4-00c04fd430c8` | URLs |
| **OID** | `6ba7b812-9dad-11d1-80b4-00c04fd430c8` | ISO OIDs |
| **X500** | `6ba7b814-9dad-11d1-80b4-00c04fd430c8` | X.500 DNs |

## When to Use UUID v5

| Use Case | Example |
|----------|---------|
| **Idempotent APIs** | `POST /users` with same email returns same user ID |
| **Content-addressable storage** | File ID derived from file path |
| **Deterministic test data** | Same test input = same IDs across runs |
| **Legacy data migration** | Convert old IDs to UUIDs predictably |
| **Distributed systems** | Generate same ID on any node without coordination |

## Real-World Example

```javascript
const DNS = "6ba7b810-9dad-11d1-80b4-00c04fd430c8";

// Same domain always gets same UUID - anywhere, anytime
uuid_v5(DNS, "github.com")    // → "a]c34b28-7b5d-5a4e-..."
uuid_v5(DNS, "github.com")    // → "a9c34b28-7b5d-5a4e-..." (identical!)
uuid_v5(DNS, "gitlab.com")    // → "different-uuid-..."
```

## v5 vs v3

**Always prefer v5** for new projects. v3 uses MD5 which has known weaknesses. While neither is used for cryptographic security, v5's SHA-1 provides better collision resistance.

## Creating Custom Namespaces

For application-specific use cases, create your own namespace:

```javascript
// Generate once, use forever
const MY_APP_NAMESPACE = crypto.randomUUID(); // Store this!

// Now use it for your domain
uuid_v5(MY_APP_NAMESPACE, "user:123");
uuid_v5(MY_APP_NAMESPACE, "order:456");
```
