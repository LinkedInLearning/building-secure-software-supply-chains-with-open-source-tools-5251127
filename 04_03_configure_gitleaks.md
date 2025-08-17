# ⚙️ Gitleaks — Custom Configuration with `.gitleaks.toml`

---

## 🛠️ Create a Default Config File

If you installed via `apt`, Gitleaks doesn’t include a config file by default. You can fetch one from the repo:

```bash
curl -o .gitleaks.toml https://raw.githubusercontent.com/gitleaks/gitleaks/master/config/gitleaks.toml
```

---

## ✏️ Customize Rules

Open `.gitleaks.toml` and add your own rules. For example, to detect custom secret keys:

```toml
[[rules]]
id = "custom-secret"
description = "Custom Secret Key"
regex = '''MY_SECRET_KEY\s*=\s*["']?[a-zA-Z0-9-_]{16,}["']?'''
tags = ["custom", "key"]
```

---

## 🚫 Reduce Noise (Allowlist Paths)

Ignore test folders or third-party scripts:

```toml
[[allowlist.paths]]
description = "Ignore test and scripts folders"
paths = ["tests/", "scripts/"]
```

---

## ▶️ Run with Custom Config

```bash
gitleaks detect --config .gitleaks.toml --redact
```

🔒 The `--redact` flag hides secret values in output (safer for CI/CD and demos).

---

## 🚀 Wrap-Up
With just a few lines of config, Gitleaks becomes:
- 🎯 More precise for your project
- ✅ Able to ignore safe matches
- 🔑 Tuned to flag **real risks**

Next: scan OWASP Juice Shop and review actual findings ⚡