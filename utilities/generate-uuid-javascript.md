---
title: "Generate UUID v4"
description: "Generate a random UUID v4 (Universally Unique Identifier) using the Web Crypto API."
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "550e8400-e29b-41d4-a716-446655440000"
---

```javascript
crypto.randomUUID();
```

## What is UUID v4?

UUID v4 is **purely random** — 122 bits of randomness with 6 bits reserved for version and variant markers. This gives roughly 5.3 × 10³⁶ possible values.

```
f47ac10b-58cc-4372-a567-0e02b2c3d479
          ↑    ↑
          4    8-b (version and variant bits)
```

## When to Use UUID v4

| Use Case | Why v4 Works |
|----------|--------------|
| **Database primary keys** | Simple, no coordination needed |
| **Session IDs** | Unpredictable, secure |
| **API request IDs** | Easy to generate anywhere |
| **Temporary identifiers** | No meaning, just uniqueness |

## When NOT to Use UUID v4

| Scenario | Better Alternative |
|----------|-------------------|
| **Need sortable IDs** | Use UUID v7 (timestamp-based) |
| **Database index performance matters** | Use UUID v7 (sequential) |
| **Need deterministic IDs** | Use UUID v3/v5 (name-based) |
| **Debugging with timestamps** | Use UUID v1 or v7 |

## UUID v4 vs Auto-Increment IDs

| UUID v4 | Auto-Increment |
|---------|----------------|
| Generate anywhere (client, server, offline) | Requires database roundtrip |
| No information leakage | Reveals record count |
| Harder to guess | Predictable (id+1) |
| Larger storage (16 bytes vs 4-8) | Smaller, faster indexes |
| Random = poor index locality | Sequential = good locality |

## Collision Probability

With 122 random bits, you'd need to generate **1 billion UUIDs per second for 86 years** to have a 50% chance of one collision. In practice, collisions are not a concern.
