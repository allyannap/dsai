import requests

url = "https://httpbin.org/post"
payload = {"name": "test"}

resp = requests.post(url, json=payload)
resp.raise_for_status()

print(resp.status_code)
print(resp.json())