# Hands-On Lab: Scan OWASP Juice Shop for Vulnerable Dependencies

---

## Objective

In this lab, you will scan the **OWASP Juice Shop** project for vulnerable dependencies using **Trivy**.  
You’ll practice both **filesystem scanning** (SCA) and **container image scanning**.

---

## Steps

### 1. Launch Codespaces

Open the repository in **GitHub Codespaces**. Trivy is already installed for you.

---

### 2. Clone the OWASP Juice Shop

```bash
git clone https://github.com/juice-shop/juice-shop.git --depth 1
cd juice-shop
```

---

### 3. Generate `package-lock.json`

Trivy needs a lockfile to detect dependencies properly.

```bash
npm install --package-lock-only
```

This creates `package-lock.json` without building the entire app.

---

### 4. Run Filesystem Scan (Dependencies Only)

```bash
trivy fs . --scanners vuln --vuln-type library
```

This will list vulnerable dependencies from `package-lock.json`.

---

### 5. Run Container Image Scan

Scan the official Juice Shop image:

```bash
trivy image bkimminich/juice-shop
```

This checks:
- OS-level vulnerabilities (Ubuntu base image)
- Application-level vulnerabilities (bundled libs)

---

### 6. Export Results as JSON

```bash
trivy image --format json --output results.json bkimminich/juice-shop
```

Useful for:
- Reports
- CI/CD integration
- Compliance checks

---

## Bonus Challenge: Gate on Critical Vulnerabilities (Optional)

If you want the scan to **fail the build** when severe issues are found, try these:

**Filesystem (dependencies only):**
```bash
trivy fs . \
  --scanners vuln \
  --vuln-type library \
  --severity CRITICAL \
  --exit-code 1
```
This exits with code **1** if any **CRITICAL** dependency vulnerabilities are detected.

**Container image:**
```bash
trivy image bkimminich/juice-shop \
  --severity CRITICAL \
  --exit-code 1
```
Tip: In CI, you can start with `--exit-code 0` for visibility, then switch to `1` once your backlog is under control.

---

## Wrap-Up

By completing this lab, you:
- Learned how to scan application dependencies with Trivy FS
- Analyzed a container image with Trivy Image
- Exported machine-readable reports for future use

Together, these scans provide full coverage: dependencies in your code and vulnerabilities inside your containers.
