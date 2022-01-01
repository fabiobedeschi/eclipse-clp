# ECLIPSe CLP

This project is meant to be a fast turnkey configuration to run a dockerized ECLIPSe Constraint Logic Programming environment on any machine.

## Get started

0. run `cp docker/.env.dist docker/.env` and setup the newly created file by your needs
1. `make compose.build` to build the docker image
2. `make compose.up` to run the docker container and install ECLIPSeCLP
3. `make eclipse` to spawn an `eclipse` interactive shell

> Points 1,2 and 3 can be achieved just by typing `make` or `make init`

## Usage

Write your code and place into the `src/` folder. Then load it in `eclipse` and execute.

> Any file in `src/` will be ignored by git unless it's name starts with the `example` keyword. This is used to simplify the docker mount of the `src/` dir and at the same time prevent unwanted file additions to the codebase.

### Notes

Additional commands:

- `make doc` if you want to get the documentation available on your host
- `make bash` to use the same container with a `bash` shell
- `make compose.build.nocache` to (re)build the image without cached layers
- `make cleanup` to remove older built images from your system
- `make compose.stop` to stop the running container
- `make compose.down` to prune the running container
