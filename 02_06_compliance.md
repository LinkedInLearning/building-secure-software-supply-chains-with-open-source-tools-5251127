# SBOMs as Compliance Artefacts

---

## Why SBOMs Are Required
- U.S. Executive Order 14028 → SBOMs mandatory for federal agencies
- EU Cyber Resilience Act → SBOMs as a baseline for trusted software
- SBOM = beyond security → a compliance artefact

---

## Benefits of SBOMs
- Prove software transparency
- Identify licensing obligations
- Respond quickly to new vulnerabilities
- Provide inventories for audits

---

## Compliance Frameworks
- NIST SSDF → SBOMs in secure release practices
- SLSA → SBOMs for supply chain integrity
- ISO/IEC 27001 → dependency tracking = SBOMs
- SOC 2 → show third-party libraries in your codebase

---

## NTIA Guidelines for “Compliance-Ready” SBOMs
- Component names & versions
- Supplier information
- Dependency relationships
- Unique identifiers (hashes, package URLs)
- Timestamps
- Standard formats: SPDX / CycloneDX

---

## Tools
- Generate: **Syft**
- Analyze vulnerabilities: **Grype**
- Sign & store: **Cosign**, cloud providers
- Ensure traceability & integrity

---

## Wrap-Up
SBOMs make software:
- Safer
- Provable
- Auditable
- Compliant

Next: integrate SBOM generation + vulnerability scanning into **CI/CD pipelines** for compliance-by-default.