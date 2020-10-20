# Hashicorp Nomad Utilities

A docker container of hashicorp nomad, useful for integration testing in CICD pipelines.

To run a nomad agent execute:
`docker run --rm -p 4646:4646 -it annaliseai/nomad-utils nomad agent -bind=0.0.0.0 -dev`

The nomad UI can accessed via `http://localhost:4646`

### Note:
The docker container does not contain the docker daemon and thus will be unable to run tasks that require the nomad docker driver