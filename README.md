## Security and optimization - Deployment pipeline practice

Minimal Node.js app with simple "Hello world!"-message containerized with Docker and CI/CD pipeline with GitHub Actions. Automatically builds and pushes image to Docker Hub when changes pushed to main branch. Watchtower listens changes and restarts the container with updated image.
 
Containerize with Docker:
```bash
docker build -t docker-hub-username/express-app .
```
Start container and pipeline:
```bash
docker compose up
```

Access with browser http://localhost:8080



To enable the GitHub Actions workflow to push images to Docker Hub, add `DOCKER_USERNAME` and `DOCKER_PASSWORD` (DockerHub-token) in github actions secrets.
**GitHub > Repository > Settings > Secrets and variables > Actions**




