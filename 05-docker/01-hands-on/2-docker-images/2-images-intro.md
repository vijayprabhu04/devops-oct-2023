# Docker images
- A docker image is a read-only template that contains a set of instructions for creating a container that can run on the docker platform
- It provides a convenient way to package up applications and preconfigured server environments

# Anatomy of Docker image
- A docker image is made up of a collection of files that bundle together all the essentials, such as
  * installations
  * application
  * code and dependencies required to configure a fully operational container environment

# You can create a Docker image in one of two ways:
  * Interactive Method:
    - By creating a container from an existing docker image
    - manually changing that container environment through a series of live steps and saving the resulting state as a new image
  * Dockerfile Method:
    - By constructing a plain-text file, known as a `dockerfile`, which provides the specifications for creating a docker image
