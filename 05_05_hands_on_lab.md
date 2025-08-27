# Hands-On Lab: Build a Parallelized Secure Pipeline

---

## Objective

In this final lab, you will build a **parallelized secure pipeline** that integrates all the tools we’ve explored:  
- **Trivy** for dependency and image scanning  
- **Gitleaks** for secret detection  
- **Syft** for SBOM generation  
- **Grype** for SBOM analysis  

You’ve seen the full pipeline code in the lessons. Now it’s your turn to **recreate it step by step**, using your notes, course videos, and official documentation as guides.

---

## Steps

### 1. Revisit Course Sections

If you need a refresher, here’s where each tool was covered:  

- **Syft & Grype** → Chapter 2 (SBOM generation & analysis) 
- **Trivy** → Chapter 3 (dependency & image scans)  
- **Gitleaks** → Chapter 4 (secret detection & configuration)  
- **Parallelization in GitHub Actions** → Chapter 5  

Each section already includes working pipeline code — review those videos as needed.

---

### 2. Consult Official Docs

When you get stuck, check the official documentation for up-to-date examples:  

- [Trivy GitHub Repo](https://github.com/aquasecurity/trivy)  
- [Gitleaks GitHub Repo](https://github.com/gitleaks/gitleaks)  
- [Syft GitHub Repo](https://github.com/anchore/syft)  
- [Grype GitHub Repo](https://github.com/anchore/grype)  

---

### 3. Build Your Pipeline

Using what you’ve learned:  

1. Create a **GitHub Actions workflow**  
2. Add jobs for:  
   - Trivy filesystem scan (SCA)  
   - Trivy image scan  
   - Gitleaks scan  
   - Syft SBOM generation + Grype scan  
3. Run jobs **in parallel**, then summarize results  

---

### 4. Challenge Yourself

- Export results in **JSON format** for reporting  
- Add **failure conditions** (e.g., fail on CRITICAL vulnerabilities)  
- Tweak parallelization to optimize speed  

---

## Wrap-Up

By completing this lab, you will have:  
- Rebuilt a **parallelized security pipeline** on your own  
- Strengthened your ability to **look up documentation**  
- Practiced **real-world DevSecOps problem solving**  

This exercise is intentionally less guided — it’s your chance to apply everything you’ve learned.  
Experiment, break things, and most importantly: **build confidence** in securing supply chains through CI/CD.  

---