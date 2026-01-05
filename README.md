# CI/CD Pipeline for a Simple Python Application

## 📌 Overview
This project demonstrates a basic CI/CD pipeline using **GitHub Actions**.  
The pipeline automatically validates and builds a Python application whenever code is pushed to the repository.

---

## 🧱 Project Structure
app.py # Application code
test_app.py # Unit tests
requirements.txt # Dependencies
.env.example # Environment variable example
.github/workflows/ci.yml # CI pipeline configuration


---

## 🔄 CI/CD Pipeline (GitHub Actions)

### 🔹 Trigger
- Runs automatically on **every push to the `main` branch**

### 🔹 Pipeline Stages
1. **Checkout Code** – Fetches latest repository code  
2. **Set Up Python** – Configures Python runtime  
3. **Install Dependencies** – Installs packages from `requirements.txt`  
4. **Run Linting** – Uses `flake8`; pipeline fails on style errors  
5. **Run Tests** – Uses `pytest`; pipeline fails on test failures  
6. **Build Step** – Compiles Python files to validate syntax  

---

## ❌ Failure Handling
- Pipeline stops immediately if **linting or tests fail**
- Ensures only clean and correct code passes CI

---

## 🔐 Environment Variables
- Uses environment variables instead of hard-coded values  
- Example:
APP_NAME=MyCIApp


---

## ▶️ Run Locally
```bash
pip install -r requirements.txt
export APP_NAME=LocalApp
python app.py
flake8 app.py
pytest

git add .
git commit -m "Commit message"
git push origin main
Pipeline runs automatically via GitHub Actions.
