## Security and optimization - Deployment pipeline

Minimal Node-express app with simple "Hello world!"-message, containerized with Docker and CI/CD-pipeline with GitHub Actions. Github Actions automatically builds and pushes image to Docker Hub when code changes are pushed to main branch. Watchtower watches these changes and restarts the running container with updated image.
 
**Containerize with Docker:**
```bash
docker build -t docker-hub-username/express-app .
```
**Start the container and pipeline:**
```bash
docker compose up
```

**Access with browser http://localhost:8080**

## Docker and CI/CD configurations:

To enable the GitHub Actions workflow to push images to Docker Hub, add `DOCKER_USERNAME` and `DOCKER_PASSWORD` (DockerHub-token) in repository actions secrets:
- Repository > Settings > Secrets and variables > Actions > Repository secrets

**Create DockerHub token:**

- DockerHub > Account Settings > Personal access tokens > Generate new token

**Watchtower and container services:**
[docker-compose.yml](https://github.com/JanneKarki/Docker/blob/main/docker-compose.yml)
- Requires `DOCKER_USERNAME=username` defined in `.env`-file.

**Github-actions:**
[main.yml](https://github.com/JanneKarki/Docker/blob/main/.github/workflows/main.yml)

**Docker-image:**
[Dockerfile](https://github.com/JanneKarki/Docker/blob/main/Dockerfile)

### The Node-express app:
[index.js](https://github.com/JanneKarki/Docker/blob/main/index.js)


