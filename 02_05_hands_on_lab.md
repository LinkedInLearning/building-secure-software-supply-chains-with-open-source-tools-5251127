# Hands-On Lab: Generate and Analyze an SBOM for OWASP Juice Shop

---

## Objective

In this lab, you will generate a **Software Bill of Materials (SBOM)** for the OWASP Juice Shop project using **Syft**, and then analyze it for vulnerabilities with **Grype**.

This hands-on exercise will help you practice identifying and analyzing dependencies in a real-world application.

---

## Steps

### 1. Launch Codespaces

Open the repository in **GitHub Codespaces**. All required tools (Syft and Grype) are already installed for you.

---

### 2. Generate an SBOM with Syft

Run the following command to create an SBOM in CycloneDX JSON format:

```bash
syft bkimminich/juice-shop:latest -o cyclonedx-json > sbom.json
```

Verify the file exists:

```bash
ls sbom.json
```

---

### 3. Explore the SBOM

Format the SBOM for readability:

```bash
jq . sbom.json | less
```

Look for:

* The list of libraries included
* Direct vs transitive dependencies
* Metadata about the Juice Shop image

---

### 4. Analyze the SBOM with Grype

Run a vulnerability scan against the SBOM:

```bash
grype sbom:sbom.json
```

Export results as JSON:

```bash
grype sbom:sbom.json -o json > grype-results.json
```

---

### 5. Review Results

* Check vulnerabilities reported in the terminal
* Download and inspect the `grype-results.json` artifact for detailed analysis

---

## Wrap-Up

By completing this lab, you:

* Generated an SBOM with Syft
* Analyzed it with Grype for vulnerabilities
* Exported and reviewed results in JSON format

This workflow gives you visibility into software dependencies and their risks, and prepares you for integrating SBOM analysis into automated pipelines.
