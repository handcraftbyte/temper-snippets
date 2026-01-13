---
title: "Generate UUID v7"
description: "Generate a Unix timestamp-based UUID v7 with millisecond precision, ideal for database primary keys"
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "018e5c4d-a8b0-7123-abcd-1234567890ab"
---

```javascript
const t = Date.now().toString(16).padStart(12, '0');
const r = crypto.getRandomValues(new Uint8Array(10));
r[0] = (r[0] & 0x0f) | 0x70;
r[2] = (r[2] & 0x3f) | 0x80;
const h = Array.from(r, b => b.toString(16).padStart(2, '0')).join('');
return `${t.slice(0, 8)}-${t.slice(8)}-${h.slice(0, 4)}-${h.slice(4, 8)}-${h.slice(8)}`;
```

## What is UUID v7?

UUID v7 is the **modern standard** for time-based UUIDs. It combines a **Unix timestamp in milliseconds** with random bits, designed specifically for **database primary keys**.

```
018e5c4d-a8b0-7123-abcd-1234567890ab
├────────────┤ ↑
  48-bit ms    version 7
  timestamp
```

## Why UUID v7 is the Best Choice for Databases

### 1. Naturally Sortable

UUIDs generated later are always lexicographically greater:

```javascript
uuid_v7() // "018e5c4d-0000-7..." (earlier)
uuid_v7() // "018e5c4d-0001-7..." (later - sorts after!)
```

### 2. B-tree Friendly

Random UUIDs (v4) cause **index fragmentation** — new records insert randomly throughout the tree. v7's sequential nature means new records append to the end, dramatically improving:

- Insert performance
- Index size
- Cache efficiency

### 3. Embeds Creation Time

Extract the timestamp without a database query:

```javascript
const uuid = "018e5c4d-a8b0-7123-abcd-1234567890ab";
const timestamp = parseInt(uuid.replace(/-/g, '').slice(0, 12), 16);
new Date(timestamp); // → 2024-03-15T10:30:00.000Z
```

## UUID v7 vs Others

| Version | Best For |
|---------|----------|
| **v4** | Security-sensitive IDs, no time needed |
| **v7** | **Database PKs, event logs, anything needing sort order** |
| **v5** | Deterministic IDs from names |
| **v1/v6** | Legacy compatibility |

## Database Performance Comparison

| Metric | UUID v4 | UUID v7 | Auto-increment |
|--------|---------|---------|----------------|
| Insert speed | Slow (random) | Fast (sequential) | Fastest |
| Index size | Larger | Smaller | Smallest |
| Distributed generation | Yes | Yes | No |
| Information leakage | None | Timestamp | Record count |

## The Recommendation

**For new projects using UUIDs as primary keys, use v7.** It gives you the distributed generation benefits of UUIDs with the database performance closer to auto-increment IDs.
