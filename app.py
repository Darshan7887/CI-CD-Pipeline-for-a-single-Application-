import os

def greet():
    app_name = os.getenv("APP_NAME", "CI-CD-App")
    return f"Hello from {app_name}"

if __name__ == "__main__":
    print(greet())
