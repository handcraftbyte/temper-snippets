---
title: "Mini LLM"
description: "Demonstrate the core mechanism behind LLMs by predicting the next token, appending it, and repeating."
topic: "machine-learning"
parameters:
  - name: "prompt"
    type: "string"
    default: "hel"
    description: "Starting text (try 'hel' or 'the c')"
exampleOutputs:
  - input: { "prompt": "hel" }
    output: |
      Generating from "hel":
        "hel" → "l" (90%)
        "ell" → "o" (90%)
        "llo" → " " (60%)
        "lo " → "w" (50%)
        ...
      Result: "hello world"
---

```python
# LLM is a next-token predictor. That's the whole trick.
# It looks at text, predicts what comes next, appends it, and repeats.

# These patterns simulate what a model "learned" from training.
# Real LLM learned from trillions of words - same idea, bigger scale.
learned = {
    'hel': {'l': 0.9},
    'ell': {'o': 0.9},
    'llo': {' ': 0.6, '!': 0.3},
    'lo ': {'w': 0.5, 't': 0.3},
    'o w': {'o': 0.8},
    ' wo': {'r': 0.9},
    'wor': {'l': 0.7},
    'orl': {'d': 0.9},
    'the': {' ': 0.9},
    'he ': {'c': 0.4},
    'e c': {'a': 0.8},
    ' ca': {'t': 0.7},
    'cat': {' ': 0.6, 's': 0.3},
    'at ': {'s': 0.5},
    't s': {'a': 0.6},
    ' sa': {'t': 0.7},
}

text = prompt.lower()
steps = [f'Generating from "{text}":']

# Generate up to 12 more characters
for _ in range(12):
    if len(text) >= 20:
        break
    context = text[-3:]
    probs = learned.get(context)

    if not probs:
        break  # Unknown pattern

    # Pick highest probability (greedy decoding)
    next_char, prob = max(probs.items(), key=lambda x: x[1])
    steps.append(f'  "{context}" → "{next_char}" ({int(prob*100)}%)')
    text += next_char

steps.append(f'Result: "{text}"')
return '\n'.join(steps)
```

## This Is How LLM Works

When you type "hello" to ChatGPT or Claude, here's what actually happens:

### The Core Loop

1. **Look at context**: Model sees "hello"
2. **Predict next token**: Based on training, " " (space) is most likely
3. **Append it**: Now we have "hello "
4. **Repeat**: Predict again → "world" is likely after "hello "

That's it. The entire conversation is generated one token at a time.

### Why This Matters

When LLM writes a 500-word essay, it's not "thinking" about the whole essay. It's just predicting the next word, over and over, 500+ times. The apparent intelligence emerges from patterns learned during training.

### The "Learning" Part

This demo uses hardcoded patterns. Real LLMs learn patterns from massive datasets:
- After "hel" → "l" appeared millions of times → high probability
- After "hello " → "world", "there", "!" all common → model learns distribution

**The architecture (attention, transformers) is just a sophisticated way to learn these patterns from data.**
