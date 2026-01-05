# CI/CD Pipeline for a Simple Python Application

## Overview
This repository demonstrates a simple CI/CD pipeline built using **GitHub Actions**.  
The pipeline automatically validates and builds a Python application whenever code is pushed to the repository.

This project is created as part of **Assignment 1: CI/CD Pipeline for a Simple Application**.

---

## Project Structure
app.py # Application code
test_app.py # Unit tests
requirements.txt # Dependencies
.env.example # Environment variable example
Makefile # One-command local execution
.github/workflows/ci.yml # CI pipeline configuration


---

## CI/CD Pipeline Explanation

### Trigger
- The pipeline runs automatically on **every push to the `main` branch**.

### Pipeline Stages
1. **Checkout Code** – Fetches the latest code
2. **Set Up Python** – Configures Python runtime
3. **Install Dependencies** – Installs packages from `requirements.txt`
4. **Run Linting** – Uses `flake8`; pipeline fails on lint errors
5. **Run Tests** – Uses `pytest`; pipeline fails on test failures
6. **Build Step** – Compiles Python files to validate syntax

---

## Failure Handling
- The pipeline stops immediately if **linting or tests fail**.
- This ensures only clean and correct code passes CI.

---

## Environment Variables
- Configuration is handled using environment variables (no hard-coded secrets).
- Example:


APP_NAME=MyCIApp


---
## How to Run the Pipeline

The CI pipeline runs automatically whenever code is pushed to the repository.

### Trigger the CI Pipeline
```bash
git add .
git commit -m "Commit message"
git push origin main

---
Run Locally (Optional)

The entire project can be run locally using a single command:

make all


This command:

Sets up a virtual environment

Installs dependencies

Runs linting and tests

Executes the build step

Runs the application
