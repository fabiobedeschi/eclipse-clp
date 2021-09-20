# ECLIPSe CLP

This project is meant to be a fast turnkey configuration to run a dockerized ECLIPSe Constraint Logic Programming environment on any machine.

## Get started

1. `make build` to build the docker image and install ECLIPSe CLP
2. `make run` to run the docker container
3. `make eclipse` to spawn an `eclipse` interactive shell

### Notes

- `make bash` to use the same image with a `bash` shell
- `make build.nocache` to (re)build the image without cached layers
- `make cleanup` to remove older built images from your system
- `make stop` to stop and remove the container
