---
title: "Parse ENV File"
description: "Parse .env file format (KEY=value) into an object. Handles comments, quoted values, and empty lines."
topic: "strings"
tags:
  - env
  - dotenv
  - config
  - environment
  - parsing
parameters:
  - name: "content"
    type: "string"
    default: "DB_HOST=localhost\nDB_PORT=5432\nAPI_KEY=secret123"
    description: "ENV file content."
exampleOutputs:
  - input: { "content": "FOO=bar\nBAZ=qux" }
    output: '{"FOO":"bar","BAZ":"qux"}'
  - input: { "content": "KEY=\"quoted value\"" }
    output: '{"KEY":"quoted value"}'
---

```javascript
const result = {};
content.split('\n').forEach(line => {
  line = line.trim();
  if (!line || line.startsWith('#')) return;
  const idx = line.indexOf('=');
  if (idx === -1) return;
  const key = line.slice(0, idx).trim();
  let value = line.slice(idx + 1).trim();
  // Remove surrounding quotes
  if ((value.startsWith('"') && value.endsWith('"')) ||
      (value.startsWith("'") && value.endsWith("'"))) {
    value = value.slice(1, -1);
  }
  result[key] = value;
});
return result;
```

## .env File Format

```bash
# Database configuration
DB_HOST=localhost
DB_PORT=5432
DB_NAME=myapp

# API keys (use quotes for special characters)
API_KEY="sk_live_abc123"
SECRET='contains spaces and $pecial chars'

# Empty value
EMPTY_VAR=
```

## What This Parser Handles

| Feature | Example | Result |
|---------|---------|--------|
| Basic assignment | `FOO=bar` | `{FOO: "bar"}` |
| Comments | `# comment` | Ignored |
| Empty lines | (blank) | Ignored |
| Double quotes | `KEY="value"` | `{KEY: "value"}` |
| Single quotes | `KEY='value'` | `{KEY: "value"}` |
| Empty values | `KEY=` | `{KEY: ""}` |
| Spaces around `=` | `KEY = value` | `{KEY: "value"}` |

## What This Doesn't Handle

For full dotenv compatibility, you'd also need:

```bash
# Multiline values (requires special handling)
PRIVATE_KEY="-----BEGIN RSA-----
...
-----END RSA-----"

# Variable expansion
BASE_URL=https://api.example.com
FULL_URL=${BASE_URL}/v1

# Export prefix (shell syntax)
export FOO=bar
```

## Security Best Practices

### Never commit .env files

```gitignore
# .gitignore
.env
.env.local
.env.*.local
```

### Use .env.example for documentation

```bash
# .env.example (commit this)
DB_HOST=
DB_PORT=5432
API_KEY=your_key_here
```

### Validate required variables

```javascript
const required = ['DB_HOST', 'API_KEY'];
for (const key of required) {
  if (!env[key]) throw new Error(`Missing ${key}`);
}
```

## Production Libraries

For robust .env handling:

- **dotenv** — Node.js standard, loads into `process.env`
- **dotenv-expand** — Adds variable expansion support
- **envalid** — Validation and type coercion

This snippet is great for understanding the format or quick parsing in browsers/scripts where libraries aren't available.
