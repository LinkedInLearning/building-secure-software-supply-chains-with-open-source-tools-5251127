# Fixing Vulnerable Dependencies in OWASP Juice Shop

---

## Objective
Learn how to identify and fix vulnerable dependencies in a real-world project using **Trivy** and **npm overrides**.

---

## Steps

### 1. Clone the Juice Shop repository
```bash
git clone https://github.com/juice-shop/juice-shop.git --depth 1
cd juice-shop
```

---

### 2. Generate a lock file  
Trivy scans `package-lock.json` to detect vulnerabilities.  

- **Fast option (no full install)**  
```bash
npm install --package-lock-only
```

- **Full install (to run Juice Shop locally)**  
```bash
npm install
```

---

### 3. Run a baseline vulnerability scan
```bash
trivy fs . --scanners vuln
```
This will list all detected vulnerabilities across dependencies.

---

### 4. Confirm `crypto-js` vulnerability
```bash
trivy fs . --scanners vuln | grep "crypto-js"
```
This filters the results to quickly confirm if `crypto-js` is flagged.

---

### 5. Apply a fix using npm overrides
Instead of editing `package.json` manually, use the modern **npm overrides** feature:
```bash
npm pkg set overrides."crypto-js"="4.2.0"
```
This pins `crypto-js` to a patched version.

---

### 6. Reinstall dependencies & update lockfile
```bash
npm install
npm install --package-lock-only
```
This refreshes `node_modules` and updates `package-lock.json` with the secure version.

---

### 7. Re-run the scan
```bash
trivy fs . --scanners vuln | grep "crypto-js" || echo "crypto-js vulnerability fixed!"
```
You should now see no vulnerability for `crypto-js`.

---

### 8. Export all critical vulnerabilities (optional)
Encourage learners to fix additional issues:
```bash
# JSON report for automation
trivy fs . --scanners vuln --severity CRITICAL \
  --format json --output trivy-critical.json

# Human-readable table
trivy fs . --scanners vuln --severity CRITICAL \
  --format table --output trivy-critical.txt
```

---

## ✅ Wrap-Up
- You learned how to identify a vulnerable dependency with Trivy.  
- You applied a **precise override fix** for `crypto-js`.  
- You re-scanned to confirm the vulnerability was resolved.  
- You exported critical findings for further exercises.  

By automating this process, you empower teams to not only patch faster but also maintain security as part of the development cycle.  

Next, we’ll shift from dependencies to container hardening — making sure our runtime environment is just as secure as our application code.
