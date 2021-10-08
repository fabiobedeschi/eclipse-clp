# ECLIPSe CLP

This project is meant to be a fast turnkey configuration to run a dockerized ECLIPSe Constraint Logic Programming environment on any machine.

## Get started

0. run `cp docker/.env.dist docker/.env` and setup the newly created file by your needs
1. `make build` to build the docker image
2. `make compose.up` to run the docker container and install ECLIPSeCLP
3. `make eclipse` to spawn an `eclipse` interactive shell

### Notes

- `make bash` to use the same container with a `bash` shell
- `make build.nocache` to (re)build the image without cached layers
- `make cleanup` to remove older built images from your system
- `make compose.stop` to stop the running container
- `make compose.down` to prune the running container. Next restart will require reinstallation of eclipse.
