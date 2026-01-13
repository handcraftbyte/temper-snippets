---
title: "XSS Attack Prevention"
description: "Escape HTML entities to prevent Cross-Site Scripting attacks"
topic: "security"
parameters:
  - name: "user_input"
    type: "string"
    default: "<script>alert('XSS')</script>"
    description: "Untrusted user input (try a malicious payload)"
exampleOutputs:
  - input: { "user_input": "<script>alert('XSS')</script>" }
    output: "&lt;script&gt;alert(&#x27;XSS&#x27;)&lt;/script&gt;"
  - input: { "user_input": "<img src=x onerror=alert('XSS')>" }
    output: "&lt;img src=x onerror=alert(&#x27;XSS&#x27;)&gt;"
---

```python
import html

# Escape HTML entities to prevent XSS
return html.escape(user_input)
```

## What is XSS?

Cross-Site Scripting (XSS) occurs when untrusted data is included in a web page without proper escaping. An attacker can inject malicious scripts that execute in other users' browsers.

```python
# DANGEROUS: Directly embedding user input in HTML
template = f"<div>Welcome, {user_input}!</div>"
# If user_input is "<script>alert('XSS')</script>", the script executes!
```

## Why Escaping Works

The `html.escape()` function converts dangerous characters to HTML entities:

| Character | Escaped | Why |
|-----------|---------|-----|
| `<` | `&lt;` | Prevents opening tags |
| `>` | `&gt;` | Prevents closing tags |
| `"` | `&quot;` | Prevents breaking out of attributes |
| `'` | `&#x27;` | Prevents breaking out of attributes |
| `&` | `&amp;` | Prevents entity injection |

```python
# SAFE: Escaped output
safe_html = f"<div>Welcome, {html.escape(user_input)}!</div>"
# Renders as text, not executable HTML
```

## Use in Templates

Most Python web frameworks auto-escape by default:

```python
# Jinja2 (Flask) - auto-escapes by default
{{ user_input }}  # Safe!

# To render raw HTML (dangerous!):
return {{ user_input | safe }}  # Only if you trust the input!
```

## The Rule

**Always use `html.escape()` when embedding untrusted data in HTML. Let your template engine auto-escape when possible.**
