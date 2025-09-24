# 🔑 Gitleaks — Secret Scanning in Codespaces

---

## 🛠️ Install Gitleaks
```bash
sudo apt update
sudo apt install -y gitleaks
```

## 🔎 Scan Current Directory (Git history + working tree)
```bash
gitleaks detect --source .
```

## 🧪 Scan Only Files (ignore Git history)
```bash
gitleaks detect --no-git --source .
```

---

## 🎛️ Useful Options
```bash
# Redact secrets in output (safer for screenshares/logs)
gitleaks detect --source . --redact

# Output JSON for CI/reporting
gitleaks detect --source . -f json -r gitleaks-report.json

# Fail the build on any finding (exit non‑zero)
gitleaks detect --source . --exit-code 1
```

---

## 🚀 Wrap-Up
Gitleaks = your **first line of defence** against accidental secret exposure.
- ✅ Scan code, history, and uncommitted changes
- ✅ Redact and export results for CI/CD
- ✅ Catch issues **before** they leave your repo
