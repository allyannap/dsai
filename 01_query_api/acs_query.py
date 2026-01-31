# Create a script that loads key from `.env` and makes a GET request

# Load requests library
import os
import requests
from dotenv import load_dotenv

# Loading environment variables from .env
load_dotenv()

API_KEY = os.getenv("CENSUS_API_KEY")

# Base Census API URL
url = "https://api.census.gov/data/2024/acs/acs1"

# Query parameters
params = {
    # get: Total Population, Total Population Filipino
    "get": "NAME,B01001_001E,B02015_012E",
    # for California
    "for": "state:06",
    "key": API_KEY
}

response = requests.get(url, params=params)

print("Status code:", response.status_code)  # should be 200

print("Response JSON:")
print(response.json())