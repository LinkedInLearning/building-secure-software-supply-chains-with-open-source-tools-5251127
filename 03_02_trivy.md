# ⚡ Trivy — Scanning Dependencies & Images

[Trivy GitHub Repo](https://github.com/aquasecurity/trivy)
---

## 🛠️ Install Trivy

```bash
curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sudo sh -s -- -b /usr/local/bin
```
(Other installation methods available on the [Trivy GitHub Repo](https://github.com/aquasecurity/trivy))

---

## 🐳 Scan OWASP Juice Shop Docker Image

```bash
trivy image bkimminich/juice-shop
```

✅ Trivy checks the image against multiple vulnerability databases and lists:
- 📦 Affected packages
- ⚠️ Severity levels
- 🛠️ Available fixes

---

## 📂 Scan Local Project Dependencies

```bash
trivy fs .
```

Scans the current folder for vulnerable dependencies, e.g.:
- `package-lock.json`
- `requirements.txt`

---

## 🚀 Wrap-Up

Trivy = early insight into **third-party dependencies** 🔍
- ✅ Scan container images
- ✅ Scan app dependencies
- ✅ Catch risks before they ship
