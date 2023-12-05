# overview of docker compose

- Compose is a tool which helps for defining and running multi-container with applications
- With Compose, you use a YAML file to configure your containers
- Then, with a single command, you create and start all the containers from your configuration

# using Compose is basically a three-step process

- Define your app’s environment with a Dockerfile so it can be reproduced anywhere
- Define the container configurations in `docker-compose.yml`
- Run `docker-compose up` to build complete stack
