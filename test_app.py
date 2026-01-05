from app import greet

def test_greet():
    result = greet()
    assert "Hello from" in result

