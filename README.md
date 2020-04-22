# RAD Container
A starting point for containerized projects using Ubuntu 18.04.

# Getting Started
1. To begin developing your application, you must have the latest version of Docker installed on your system. If you are using an older version of Docker, please uninstall it and use the appropriate installer from the docker website. https://docs.docker.com/engine/installation/
2. If this is your first time running this project, open up your terminal and `cd` to the project directory.
3. Create a working copy of the `make_env` file: `cp make_env.dist make_env`
4. Be sure that you have `make` installed before attempting to run the commands below.

# Environment Variables
You may pass additional environment variables to your container by including them in your `make_env` file.  Follow these steps to add new environment variables.  If you have an existing container that is running, you must rebuild and restart it for changes to `make_env` to take effect.

1.  Add your environment variables to your `make_env` file inside the DOCKER_ENV declaration.  Remember, the last line does not get a trailing slash.
2.  Build (or rebuild) your container using `make build`.
3.  Start (or restart) your container using `make start` or `make shell`.

# Commands for Local Development
The following commands are intended to make working with Docker faster and easier on your local machine.

- `build` Builds your container from the instructions in your Dockerfile.
- `push` Pushes your container image to the Docker Hub repository specified in your make_env file.
- `bash` Logs into a running container via SSH.
- `shell` Starts your container and automatically logs into it via SSH.
- `run`  Runs the container with stdout.
- `start` Runs the container in daemon mode - it will run in the background and you can attach to it at any time.
- `restart` Starts a stopped container.
- `stop` Stops the running container.
- `rm` Removes your container.
- `release` Builds your container image and then pushes it to the Docker Hub repository specified in your make_env file.
- `init` An initialization command intended for seeding an application.  Blank by default.

# File Structure
- `.dockerignore` Files ignored by the docker build process.
- `.gitignore` Files ignored by Git.
- `docker-cloud.yml` A Docker stack file based on the Docker Compose file format.  Only necessary to deploy via Docker Cloud.  https://docs.docker.com/docker-cloud/apps/stack-yaml-reference/
- `Dockerfile` The build instructions for your Docker container.  https://docs.docker.com/engine/reference/builder/
- `make_env.dist` A template for the make_env file.  When starting a new project, make a copy of this file, rename to 'make_env', and fill in your project specific information.  
- `Makefile` Make commands that simplify the use of Docker.  Use the make commands at all times for a consistent development workflow integrated with Docker Hub.
- `Readme.md` Readme file for your project.  Describe the project and any instructions and documentation necessary to hand off to another developer.