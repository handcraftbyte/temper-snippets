---
title: "Generate UUID v6"
description: "Generate a reordered time-based UUID v6 with improved sortability for databases."
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "1ed9dad8-6ba7-6b10-80b4-00c04fd430c8"
---

```javascript
const t = BigInt(Date.now()) * 10000n + 0x01b21dd213814000n;
const r = crypto.getRandomValues(new Uint8Array(8));
return [
  ((t >> 28n) & 0xffffffffn).toString(16).padStart(8, '0'),
  ((t >> 12n) & 0xffffn).toString(16).padStart(4, '0'),
  ((t & 0xfffn) | 0x6000n).toString(16).padStart(4, '0'),
  ((r[0] << 8 | r[1]) & 0x3fff | 0x8000).toString(16),
  Array.from(r.slice(2), b => b.toString(16).padStart(2, '0')).join('')
].join('-');
```

## What is UUID v6?

UUID v6 is a **reordered UUID v1** — it uses the same Gregorian timestamp but rearranges the bits so that **lexicographic sorting equals chronological sorting**.

```
v1: 6ba7b810-9dad-11d1-...  (low-mid-high time order)
v6: 1d19dad6-ba7b-6810-...  (high-mid-low time order) ← sortable!
```

## v6 vs v1: The Sorting Fix

UUID v1 puts timestamp bits in an awkward order for historical reasons:

| Version | Byte Order | Sortable? |
|---------|------------|-----------|
| v1 | time_low, time_mid, time_hi | No |
| v6 | time_hi, time_mid, time_low | **Yes** |

This makes v6 suitable for database indexes where v1 was not.

## When to Use UUID v6

| Use Case | Why |
|----------|-----|
| **Migrating from v1** | Drop-in replacement with better sorting |
| **Need v1 compatibility** | Same timestamp format, tools can extract time |
| **High-precision timestamps** | 100-nanosecond resolution |

## When to Use v7 Instead

For **new projects**, prefer UUID v7:

| | UUID v6 | UUID v7 |
|-|---------|---------|
| **Timestamp** | Gregorian (1582 epoch) | Unix (1970 epoch) |
| **Precision** | 100 nanoseconds | Milliseconds |
| **Simplicity** | Complex bit layout | Simple, intuitive |
| **Ecosystem** | Limited | Growing support |

v6 exists mainly as a **migration path from v1**. If you're starting fresh, use v7.
