library(httr2)

resp <- request("https://api.github.com/users/octocat") |>
  req_perform()

# Check status (throws error if not 2xx)
resp |> resp_check_status()

# Parse JSON body into a list
user <- resp |> resp_body_json()

# Inspect a few fields
user$login
user$name
user$public_repos