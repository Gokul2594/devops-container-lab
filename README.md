# devops-container-lab


## Docker cli

- Run `sudo ./docker-cli.sh`
- This should run both the web app and db
- Open `http://localhost:8080/` to view the app

## Docker compose

- Run `sudo ./docker-compose.sh`
- This should run web-app, db, and adminer (UI to access db in UI)
- We can access web app at `http://localhost:8080/`
- We can access adminer db query UI at `http://localhost:8000/`
- The credentials for adminer should be `postgres` for all fields
- Don't forget to select postgres from the select dropdown