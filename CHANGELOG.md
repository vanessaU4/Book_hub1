##  `CHANGELOG.md` 

All notable changes to this project will be documented in this file.
---

## [1.0.0] - 2025-07-30
###  Release
- Initial fully automated CD pipeline implemented
- Production deployment enabled via GitHub Actions
- Staging and Production live environments deployed on Azure

###  Features
- Integrated CI/CD with GitHub Actions
- Frontend (React) and Backend (Django REST) Dockerized
- Auto deployment on PR merge (staging) and main (production)
- Manual approval step before production release

###  Security
- Added pip-audit for Python dependency scanning
- Added npm audit for frontend vulnerability scan
- Integrated Trivy for Docker container image scanning
- Security scan results auto-logged in pipeline artifacts

###  Monitoring
- Added Azure Monitor logging for container apps
- Created Grafana dashboard for live metrics
- Configured alarm for high CPU utilization

---

## [0.1.0] - 2025-07-23
###  Setup
- Initial project setup with frontend and backend
- Terraform IaC setup for Azure Web App and ACR
- Dockerized backend and frontend
