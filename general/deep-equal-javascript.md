---
title: "Deep Equal"
description: "Check if two values are deeply equal by recursively comparing all nested properties. Works with objects, arrays, and primitives."
topic: "objects"
tags:
  - comparison
  - equality
  - testing
  - objects
  - recursion
parameters:
  - name: "a"
    type: "object"
    default: {"x": 1, "y": [2, 3]}
    description: "First value"
  - name: "b"
    type: "object"
    default: {"x": 1, "y": [2, 3]}
    description: "Second value"
exampleOutputs:
  - input: { "a": {"x": 1}, "b": {"x": 1} }
    output: "true"
  - input: { "a": {"x": 1}, "b": {"x": 2} }
    output: "false"
  - input: { "a": [1, 2, 3], "b": [1, 2, 3] }
    output: "true"
---

```javascript
const deepEqual = (x, y) => {
  if (x === y) return true;
  if (typeof x !== typeof y) return false;
  if (typeof x !== 'object' || x === null || y === null) return false;
  const keysX = Object.keys(x), keysY = Object.keys(y);
  if (keysX.length !== keysY.length) return false;
  return keysX.every(k => deepEqual(x[k], y[k]));
};
return deepEqual(a, b);
```

## Why Not Use `===`?

JavaScript's `===` compares **references**, not values:

```javascript
{ a: 1 } === { a: 1 }      // false (different objects)
[1, 2] === [1, 2]          // false (different arrays)

const obj = { a: 1 };
obj === obj                 // true (same reference)
```

Deep equality compares **contents**:

```javascript
deepEqual({ a: 1 }, { a: 1 })  // true (same values)
deepEqual([1, 2], [1, 2])      // true (same elements)
```

## Why Not Use `JSON.stringify()`?

Stringifying works sometimes but has gotchas:

```javascript
// Works
JSON.stringify({a:1}) === JSON.stringify({a:1})  // true

// FAILS: Key order matters
JSON.stringify({a:1, b:2}) === JSON.stringify({b:2, a:1})  // false!

// FAILS: Can't handle undefined, functions, symbols
JSON.stringify({a: undefined})  // "{}"  (undefined stripped)
```

## How The Algorithm Works

1. **Same reference?** → Return true (fast path)
2. **Different types?** → Return false
3. **Primitives?** → Compare with `===`
4. **Objects/Arrays?** → Recursively compare all keys

```javascript
deepEqual({x: {y: 1}}, {x: {y: 1}})
  ↓
deepEqual({y: 1}, {y: 1})
  ↓
deepEqual(1, 1)
  ↓
true
```

## Limitations of This Implementation

| Case | Behavior |
|------|----------|
| **Circular references** | Stack overflow |
| **NaN** | `NaN === NaN` is false in JS |
| **-0 vs +0** | Treated as equal |
| **Dates** | Compared as objects, not timestamps |
| **RegExp** | Compared as objects, not patterns |
| **Maps/Sets** | Not supported |

## Production-Ready Alternatives

For edge cases, use battle-tested libraries:

```javascript
// Lodash
_.isEqual(obj1, obj2)

// Node.js built-in
require('assert').deepStrictEqual(obj1, obj2)

// Jest/Vitest
expect(obj1).toEqual(obj2)
```

## Common Use Cases

- **Unit testing** — Assert expected vs actual objects
- **React** — Check if props changed (shouldComponentUpdate)
- **Caching** — Determine if cached value is still valid
- **Diffing** — Detect changes between states
