---
title: "Merge Intervals"
description: "Merge overlapping intervals into consolidated ranges. A classic algorithm problem used in scheduling, genomics, and calendar applications."
topic: "arrays"
tags:
  - intervals
  - algorithm
  - scheduling
  - leetcode
  - sorting
parameters:
  - name: "intervals"
    type: "array"
    default: [[1, 3], [2, 6], [8, 10], [15, 18]]
    description: "Array of [start, end] intervals"
exampleOutputs:
  - input: { "intervals": [[1, 3], [2, 6], [8, 10], [15, 18]] }
    output: "[[1,6],[8,10],[15,18]]"
  - input: { "intervals": [[1, 4], [4, 5]] }
    output: "[[1,5]]"
---

```javascript
const arr = [...intervals].sort((a, b) => a[0] - b[0]);
const merged = [arr[0]];
for (let i = 1; i < arr.length; i++) {
  const last = merged[merged.length - 1];
  if (arr[i][0] <= last[1]) {
    last[1] = Math.max(last[1], arr[i][1]);
  } else {
    merged.push(arr[i]);
  }
}
return merged;
```

## How It Works

### Step 1: Sort by start time

```
Input:  [[8,10], [1,3], [2,6], [15,18]]
Sorted: [[1,3], [2,6], [8,10], [15,18]]
```

### Step 2: Merge overlapping intervals

```
[1,3] + [2,6] → [1,6]  (overlap: 2 ≤ 3)
[1,6] + [8,10] → keep separate (no overlap: 8 > 6)
[8,10] + [15,18] → keep separate (no overlap: 15 > 10)

Result: [[1,6], [8,10], [15,18]]
```

## Visual Example

```
Input intervals:
1---3
  2------6
            8--10
                   15---18

Merged:
1--------6
            8--10
                   15---18
```

## Time Complexity

| Operation | Complexity |
|-----------|------------|
| Sorting | O(n log n) |
| Merging | O(n) |
| **Total** | **O(n log n)** |

## Real-World Applications

- **Calendar apps** — Merge overlapping meetings to find free time
- **IP ranges** — Consolidate firewall rules
- **Genomics** — Merge overlapping DNA sequence alignments
- **Resource allocation** — Combine overlapping booking periods
- **Video editing** — Merge overlapping selection ranges

## Edge Cases

```javascript
// Adjacent intervals (touching at edges)
[[1,2], [2,3]]  →  [[1,3]]  // Merged (2 ≤ 2)

// Nested intervals
[[1,10], [2,5]]  →  [[1,10]]  // Inner absorbed

// Single interval
[[1,5]]  →  [[1,5]]  // Unchanged

// Empty input
[]  →  []  // Handle in production code
```

## Related Problems

- **Insert Interval** — Insert and merge into sorted intervals
- **Meeting Rooms** — Check if person can attend all meetings
- **Interval Intersection** — Find overlapping parts of two lists
