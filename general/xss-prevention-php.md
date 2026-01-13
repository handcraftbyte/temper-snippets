---
title: "XSS Attack Prevention"
description: "Escape HTML entities to prevent Cross-Site Scripting attacks"
topic: "security"
parameters:
  - name: "userInput"
    type: "string"
    default: "<script>alert('XSS')</script>"
    description: "Untrusted user input (try a malicious payload)"
exampleOutputs:
  - input: { "userInput": "<script>alert('XSS')</script>" }
    output: "&lt;script&gt;alert('XSS')&lt;/script&gt;"
  - input: { "userInput": "<img src=x onerror=alert('XSS')>" }
    output: "&lt;img src=x onerror=alert('XSS')&gt;"
---

```php
// Escape HTML entities to prevent XSS
$safeOutput = htmlspecialchars($userInput, ENT_QUOTES | ENT_HTML5, 'UTF-8');
return $safeOutput;
```

## What is XSS?

Cross-Site Scripting (XSS) occurs when untrusted data is included in a web page without proper escaping. An attacker can inject malicious scripts that execute in other users' browsers.

```php
// DANGEROUS: Directly echoing user input
"<div>Welcome, $userInput!</div>";
// If $userInput is "<script>alert('XSS')</script>", the script executes!
```

## Why htmlspecialchars() Works

The function converts dangerous characters to HTML entities:

| Character | Escaped | Why |
|-----------|---------|-----|
| `<` | `&lt;` | Prevents opening tags |
| `>` | `&gt;` | Prevents closing tags |
| `"` | `&quot;` | Prevents breaking out of attributes |
| `'` | `&#039;` | Prevents breaking out of attributes (with ENT_QUOTES) |
| `&` | `&amp;` | Prevents entity injection |

## The Flags Matter

```php
// GOOD: Escape both single and double quotes, use HTML5 entities
htmlspecialchars($input, ENT_QUOTES | ENT_HTML5, 'UTF-8');

// BAD: Default only escapes double quotes
htmlspecialchars($input);  // Single quotes can still break attributes!
```

## Create a Helper Function

```php
function e($str) {
    return htmlspecialchars($str, ENT_QUOTES | ENT_HTML5, 'UTF-8');
}

// Usage
"<div>Welcome, " . e($userInput) . "!</div>";
```

## The Rule

**Always use `htmlspecialchars()` with `ENT_QUOTES` when outputting untrusted data in HTML.**
