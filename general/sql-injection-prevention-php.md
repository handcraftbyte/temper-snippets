---
title: "SQL Injection Prevention"
description: "Use parameterized queries to prevent SQL injection attacks."
topic: "security"
parameters:
  - name: "username"
    type: "string"
    default: "admin' OR '1'='1"
    description: "User input (try a malicious payload)"
exampleOutputs:
  - input: { "username": "admin' OR '1'='1" }
    output: "Safe query uses: SELECT * FROM users WHERE username = ?\nBound parameter: admin' OR '1'='1\nThe malicious input is treated as literal data, not SQL code."
---

```php
// SAFE: PDO with prepared statements
$pdo = new PDO('sqlite::memory:');
$pdo->exec('CREATE TABLE users (id INTEGER, username TEXT)');
$pdo->exec('INSERT INTO users VALUES (1, "admin")');

// Prepare the query structure first, then bind data separately
$stmt = $pdo->prepare('SELECT * FROM users WHERE username = ?');
$stmt->execute([$username]);
$results = $stmt->fetchAll();

"Safe query uses: SELECT * FROM users WHERE username = ?\n";
"Bound parameter: $username\n";
"The malicious input is treated as literal data, not SQL code.";
```

## What is SQL Injection?

SQL injection occurs when user input is concatenated directly into SQL queries:

```php
// DANGEROUS: Never do this!
$unsafe_query = "SELECT * FROM users WHERE username = '$username'";
```

If `$username` is `admin' OR '1'='1`, the query becomes:

```sql
SELECT * FROM users WHERE username = 'admin' OR '1'='1'
```

This returns ALL users because `'1'='1'` is always true.

## Why Prepared Statements Work

| Approach | User Input Treated As |
|----------|----------------------|
| String concatenation | Executable SQL code |
| Prepared statement | Literal string data |

With prepared statements, PDO sends the query structure and data separately. The database parses `SELECT * FROM users WHERE username = ?` first, then receives `admin' OR '1'='1` as a string value - never as SQL code.

## Named Parameters

You can also use named placeholders for clarity:

```php
$stmt = $pdo->prepare('SELECT * FROM users WHERE username = :username');
$stmt->execute(['username' => $username]);
```

## The Rule

**Never concatenate user input into SQL queries. Always use PDO prepared statements.**
