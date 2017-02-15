# RAD Container
A starting point for containerized projects. (for Rapid Application Development)

# File structure

- `.dockerignore` Files ignored by the docker build process.
- `.gitignore` Files ignored by Git.
- `docker-cloud.yml` A Docker stack file based on the Docker Compose file format.  Only necessary to deploy via Docker Cloud.  https://docs.docker.com/docker-cloud/apps/stack-yaml-reference/
- `Dockerfile` The build instructions for your Docker container.  https://docs.docker.com/engine/reference/builder/
- `make_env.dist` A template for the make_env file.  When starting a new project, make a copy of this file, rename to 'make_env', and fill in your project specific information.  
- `Makefile` Make commands that simplify the use of Docker.  Use the make commands at all times for a consistent development workflow integrated with Docker Hub.
- `Readme.md` Readme file for your project.  Describe the project and any instructions and documentation necessary to hand off to another developer.

# Commands
- `build` Builds your container from the instructions in your Dockerfile.
- `push` Pushes your continer image to the Docker Hub repository specified in your make_env file.
- `shell` Starts your continer and automatically logs into it via SSH.
- `run`  Runs the container with stdout.
- `start` Runs the container in daemon mode - it will run in the background and you can attach to it at any time.
- `stop` Stops the running container.
- `rm` Removes your container.
- `release` Builds your container image and then pushes it to the Docker Hub repository specified in your make_env file.