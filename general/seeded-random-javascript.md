---
title: "Seeded Random"
description: "Generate reproducible random numbers using a seed value. Same seed always produces the same sequence, essential for testing and procedural generation."
topic: "math"
tags:
  - random
  - prng
  - testing
  - procedural-generation
  - deterministic
parameters:
  - name: "seed"
    type: "number"
    default: 12345
    description: "Seed value for reproducibility"
  - name: "count"
    type: "number"
    default: 5
    description: "How many random numbers to generate"
exampleOutputs:
  - input: { "seed": 12345, "count": 3 }
    output: "[0.8235, 0.1245, 0.5678]"
  - input: { "seed": 42, "count": 3 }
    output: "[0.3745, 0.9507, 0.7320]"
---

```javascript
// Simple mulberry32 PRNG
let s = seed;
const random = () => {
  s |= 0; s = s + 0x6D2B79F5 | 0;
  let t = Math.imul(s ^ s >>> 15, 1 | s);
  t = t + Math.imul(t ^ t >>> 7, 61 | t) ^ t;
  return ((t ^ t >>> 14) >>> 0) / 4294967296;
};
return Array.from({ length: count }, () => +random().toFixed(4));
```

## Why Use Seeded Random?

`Math.random()` is **non-deterministic** — you get different results every time:

```javascript
Math.random()  // 0.7234... (unpredictable)
Math.random()  // 0.1892... (different every run)
```

A seeded PRNG is **deterministic** — same seed = same sequence:

```javascript
seededRandom(42)  // Always: 0.3745, 0.9507, 0.7320...
seededRandom(42)  // Always: 0.3745, 0.9507, 0.7320...
```

## Use Cases

| Use Case | Why Seeded Random? |
|----------|-------------------|
| **Unit tests** | Reproducible test data that doesn't cause flaky tests |
| **Procedural generation** | Same seed = same game world/level |
| **Simulations** | Replay and debug exact scenarios |
| **A/B testing** | Consistent user bucketing based on user ID |
| **Shuffling** | Reproducible card shuffles, playlist orders |

## How It Works (Mulberry32)

This snippet uses **Mulberry32**, a fast 32-bit PRNG:

1. Takes a 32-bit integer seed
2. Applies bitwise operations to scramble the state
3. Returns a float between 0 and 1
4. Each call advances the internal state

The magic constants (`0x6D2B79F5`, etc.) are carefully chosen to maximize randomness quality.

## Choosing Seeds

```javascript
// Reproducible: Use fixed seeds
const testSeed = 12345;

// User-specific: Hash user ID
const userSeed = hashCode(userId);

// Time-based but reproducible: Use date
const dailySeed = new Date().toDateString().hashCode();
```

## Limitations

- **Not cryptographically secure** — don't use for encryption keys
- **32-bit state** — period of ~2³² before sequence repeats
- **Sequential correlation** — for statistical work, consider Mersenne Twister

For cryptographic randomness, use `crypto.getRandomValues()` instead.
