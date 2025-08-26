#  Zero Trust Network Access (ZTNA) with Cloud IAM + Policy-as-Code

##  Overview
This project demonstrates a **Zero Trust** approach for cloud resources using identity-based access controls and policy-as-code.  
It enforces **least privilege**, continuous verification, and deny-by-default across AWS and Kubernetes.

##  Tools & Technologies
- AWS IAM (roles, conditions) and short-lived credentials
- Kubernetes RBAC + OPA / Gatekeeper (Policy-as-Code)
- Terraform for infra automation
- HashiCorp Vault for secrets
- GitHub Actions for CI / policy checks

##  Key Features
- Identity-aware access and short-lived credentials
- OPA policies to block insecure infra and K8s configs
- Admission controllers to enforce PodSecurity + network restrictions
- Secrets stored & rotated in Vault
- CI checks that fail PRs with policy violations

##  Results / Impact (example outcomes)
- Replaced long-lived creds with short-lived tokens → improved security posture
- Automated policy enforcement → 50% fewer infra misconfigurations
- Faster audit readiness (SOC2 / ISO) through continuous checks

##  Project Structure
projects/zero-trust-ztna/
├─ terraform/ # infra (IAM roles, networks)
├─ k8s/ # RBAC, admission configs
├─ policies/ # OPA/Gatekeeper Rego rules
├─ vault/ # Vault policies & setup scripts
├─ .github/workflows/ # CI policy checks
└─ README.md


##  Quick demo (what to show a recruiter)
- A sample OPA rule + PR that fails when the rule is broken  
- Short demo: request short-lived token -> access denied for unauthorized role  
- Screenshot of CI failing on policy violation

##  Related Links
[Main Portfolio](../..)
