---
title: "SQL Injection Prevention"
description: "Use parameterized queries to prevent SQL injection attacks"
topic: "security"
parameters:
  - name: "username"
    type: "string"
    default: "admin' OR '1'='1"
    description: "User input (try a malicious payload)"
exampleOutputs:
  - input: { "username": "admin' OR '1'='1" }
    output: "Safe query: SELECT * FROM users WHERE username = ?\nParameters: (\"admin' OR '1'='1\",)\nThe malicious input is treated as literal data, not SQL code."
---

```python
import sqlite3

# SAFE: Parameterized query - user input is never part of SQL syntax
conn = sqlite3.connect(':memory:')
conn.execute('CREATE TABLE users (id INTEGER, username TEXT)')
conn.execute('INSERT INTO users VALUES (1, "admin")')

# The ? placeholder keeps data separate from code
safe_query = "SELECT * FROM users WHERE username = ?"
cursor = conn.execute(safe_query, (username,))
results = cursor.fetchall()

return f"Safe query: {safe_query}\nParameters: {(username,)}\nThe malicious input is treated as literal data, not SQL code."
```

## What is SQL Injection?

SQL injection occurs when user input is concatenated directly into SQL queries:

```python
# DANGEROUS: Never do this!
return unsafe_query = f"SELECT * FROM users WHERE username = '{username}'"
```

If `username` is `admin' OR '1'='1`, the query becomes:

```sql
SELECT * FROM users WHERE username = 'admin' OR '1'='1'
```

This returns ALL users because `'1'='1'` is always true.

## Why Parameterized Queries Work

| Approach | User Input Treated As |
|----------|----------------------|
| String concatenation | Executable SQL code |
| Parameterized query | Literal string data |

With parameterized queries, the database knows the query structure before seeing the data. The `?` placeholder tells the database "a string value goes here" - it can never become SQL syntax.

## Common Attack Payloads

| Payload | Intent |
|---------|--------|
| `' OR '1'='1` | Bypass authentication |
| `'; DROP TABLE users; --` | Delete data |
| `' UNION SELECT password FROM users --` | Extract sensitive data |

All of these are harmless when using parameterized queries - they're just weird-looking strings.

## The Rule

**Never concatenate user input into SQL queries. Always use parameterized queries (prepared statements).**
