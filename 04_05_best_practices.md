# Secrets Management Best Practices

---

## Do Not Hardcode Secrets
- Never commit passwords, API tokens, database credentials
- Avoid storing secrets in code, `.env` files, or debug configs

---

## Use Environment Variables
- Separate secrets from code
- Keep production and development isolated
- Inject values at runtime

---

## Use a Secrets Manager
- AWS Secrets Manager
- HashiCorp Vault
- Doppler, 1Password CLI

Features: encryption, access policies, audit logs, rotation

---

## Avoid Shared Secrets
- Do not share one token across the team
- Apply least privilege
- Rotate credentials regularly

---

## CI/CD Pipelines
- Inject secrets at runtime
- Never bake secrets into containers
- Use encrypted secrets in GitHub, GitLab, CircleCI

---

## Monitoring & Rotation
- Alert on suspicious access patterns
- Rotate secrets regularly, even if not exposed
- Automate rotation when possible

---

## Wrap-Up
Secrets management means:
- Prevent hardcoding
- Use managed storage
- Enforce least privilege
- Automate rotation and monitoring

Next: securing CI/CD pipelines, where secrets, code, and infrastructure meet.
