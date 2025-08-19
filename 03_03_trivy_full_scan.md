# Trivy — Full Scans (Filesystem & Images)

---

## Why Full Scans?
Applications run inside images and containers built from OS layers and utilities.
- Filesystem: source code, configs, lock files
- Container images: base layers (Debian, Alpine, Ubuntu)
- Full container build: OS libraries, runtime packages

---

## Filesystem Scan
Run in your project folder:

```bash
trivy fs .
```

Scans source code, manifests, and lock files. Outputs vulnerabilities, severity, and fixes.

---

## Container Image Scan
Example with OWASP Juice Shop:

```bash
trivy image bkimminich/juice-shop
```

Inspects image layers including OS packages. Reports CVEs and available patches.

---

## JSON Output for Reports
Generate machine-readable results:

```bash
trivy image --format json --output results.json bkimminich/juice-shop
```

Useful for:
- CI/CD integration
- Compliance reporting
- Storing vulnerability baselines

---

## Wrap-Up
Trivy goes beyond dependencies:
- Scans **filesystems**
- Scans **images and base layers**
- Produces **actionable reports** for pipelines and compliance

Next: automate scans in CI/CD to block risky deployments.