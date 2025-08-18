# ⚡ Automating Dependency Scans in CI/CD with Trivy

---

## 🎯 Objective
Automate vulnerability scans in your CI/CD pipeline using **Trivy** to ensure:
- ✅ Continuous monitoring
- ✅ Early detection of insecure dependencies
- ✅ Security gates in every build & deployment

---

## 🤔 Why Automate?
Manual scans can be skipped.
Automation ensures:
- 🔄 Every **pull request** is scanned
- 📦 Every **container build** is checked
- 🚀 Every **deployment** goes through the same security gate

---

## 🛠️ GitHub Actions Example

Add this job to your workflow:

```yaml
- name: Scan image with Trivy
  uses: aquasecurity/trivy-action@master
  with:
    image-ref: 'your-app-image:latest'
    format: 'table'
    exit-code: '0'
    ignore-unfixed: true
```

✅ Prints scan results, but does **not** fail the pipeline yet (good for visibility).

---

## 🚨 Enforce Policy (Fail on Critical)

```yaml
exit-code: '1'
```

🔒 Pipeline fails if vulnerabilities above your threshold are found — insecure images never get deployed.

---

## 🌍 Other CI/CD Platforms
Trivy integrates with:
- GitLab CI
- Jenkins
- CircleCI
- And more ⚡

You can scan:
- 📦 Container images
- 📂 File systems & project folders

---

## 🚀 Wrap-Up
Automating scans turns security into a **built-in quality gate**.
- ✅ No skipped scans
- ✅ Consistent enforcement
- ✅ Early risk detection

Next: a hands-on lab scanning **OWASP Juice Shop** with full CI/CD integration 🧪
