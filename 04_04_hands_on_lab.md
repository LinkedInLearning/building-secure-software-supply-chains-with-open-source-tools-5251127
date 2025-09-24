# Hands-On Lab: Detect Hardcoded Secrets in OWASP Juice Shop Codebase

---

## Objective

In this lab, you will use **Gitleaks** to scan the **OWASP Juice Shop** project for hardcoded secrets.  
You’ll learn how to:
- Run basic scans
- Ignore Git history when needed
- Export results for reporting
- Optionally enforce strict checks to fail on findings

---

## Steps

### 1. Launch Codespaces
Open the repository in **GitHub Codespaces**. Gitleaks is already available in this environment.

---

### 2. Clone the OWASP Juice Shop
```bash
git clone https://github.com/juice-shop/juice-shop.git --depth 1
cd juice-shop
```

---

### 3. Run a Full Scan (Code + Git History)
```bash
gitleaks detect --source .
```
This scans both the **working tree** and the **commit history** for secrets.

---

### 4. Run a Scan Without Git History
If you only want to check the files in the current folder:
```bash
gitleaks detect --no-git --source .
```

---

### 5. Export Results
For CI/CD or reporting:
```bash
gitleaks detect --source . -f json -r gitleaks-report.json
```

With redaction (hides values in logs):
```bash
gitleaks detect --source . --redact
```

---

### 6. (Optional) Enforce Strict Policy
Fail the build when secrets are found:
```bash
gitleaks detect --source . --exit-code 1
```
This simulates how Gitleaks would block insecure code from merging.

---

## Wrap-Up
By completing this lab, you:
- Scanned Juice Shop for **hardcoded secrets**
- Practiced using **different modes** of Gitleaks (with/without history)
- Exported results for reporting
- Learned how to **enforce strict gates** in CI/CD

This exercise shows how easy it is to catch sensitive data before it leaks — and why automated secret scanning should be part of every pipeline.