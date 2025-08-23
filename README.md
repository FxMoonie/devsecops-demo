# DevSecOps Demo
[![CI](https://github.com/FxMoonie/devsecops-demo/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/FxMoonie/devsecops-demo/actions/workflows/ci.yml?query=branch%3Amaster)

Demo repository for demonstrating DevSecOps pipelines with a simple Python Flask app and GitHub Actions.

## Overview

This project is a minimal Flask web application with automated testing and security scanning integrated into a GitHub Actions CI pipeline.  
It is intended for learning and demonstration purposes only.

## Features

- Simple Flask app (Hello, DevSecOps World!)
- Unit testing with pytest
- Dockerfile for containerization
- GitHub Actions workflow that:
  - installs dependencies
  - runs automated tests
  - integrates security tools:
    - Semgrep (SAST)
    - pip-audit & OWASP Dependency-Check (SCA)
    - Trivy (container & filesystem scan)
    - OWASP ZAP Baseline (DAST)

## Getting Started
Run locally

## License
MIT License
