---
title: "Generate UUID v1"
description: "Generate a time-based UUID v1 using timestamp and random node ID"
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "6ba7b810-9dad-11d1-80b4-00c04fd430c8"
---

```javascript
const t = Date.now() * 10000 + 0x01b21dd213814000;
return [
  (t & 0xffffffff).toString(16).padStart(8, '0'),
  ((t / 0x100000000) & 0xffff).toString(16).padStart(4, '0'),
  (((t / 0x1000000000000) & 0x0fff) | 0x1000).toString(16).padStart(4, '0'),
  ((Math.random() * 0x3fff | 0x8000)).toString(16),
  Array.from(crypto.getRandomValues(new Uint8Array(6)), b => b.toString(16).padStart(2, '0')).join('')
].join('-');
```

## What is UUID v1?

UUID v1 combines a **timestamp** with a **node identifier** (traditionally MAC address). The timestamp is based on 100-nanosecond intervals since October 15, 1582 (Gregorian calendar reform).

```
6ba7b810-9dad-11d1-80b4-00c04fd430c8
├──────────────────┤    ├──────────┤
     timestamp           node ID
```

## Structure

| Component | Bits | Purpose |
|-----------|------|---------|
| time_low | 32 | Low bits of timestamp |
| time_mid | 16 | Middle bits of timestamp |
| time_hi_and_version | 16 | High bits + version (1) |
| clock_seq | 14 | Prevents duplicates if clock moves backward |
| node | 48 | Machine identifier |

## Privacy Concern

Traditional UUID v1 uses the machine's **MAC address** as the node ID. This can:
- **Leak device identity** — same device always produces same node bytes
- **Enable tracking** — correlate UUIDs across systems
- **Reveal network info** — MAC addresses identify hardware vendors

Modern implementations (like this one) use **random node IDs** instead.

## When to Use UUID v1

| Use Case | Why |
|----------|-----|
| **Distributed logging** | Extract creation time from ID |
| **Event sourcing** | Natural time ordering (sort of) |
| **Legacy system compatibility** | Some systems expect v1 |

## When NOT to Use UUID v1

| Scenario | Better Alternative |
|----------|-------------------|
| **Database primary keys** | Use v7 (better sort order) |
| **Need true sortability** | Use v7 (v1 timestamp bits aren't in sort order) |
| **Security-sensitive contexts** | Use v4 (fully random) |

## v1 vs v7: The Sorting Problem

UUID v1 puts the **low bits of timestamp first**, making lexicographic sorting inconsistent:

```
v1: 6ba7b810-9dad-11d1-...  (timestamp bits scattered)
v7: 018e5c4d-a8b0-7123-...  (timestamp bits at start)
```

**UUID v7 was designed to fix this** — use v7 for new projects needing time-based IDs.
