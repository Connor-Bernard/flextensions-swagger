# Flextensions Swagger API Documentation

This is the official documentation repository for the Flextensions API.

## Standing Up the Documentation Site

### Requirements

- [Docker](https://www.docker.com/)
- [Docker compose](https://docs.docker.com/compose/install/)

### Steps

You can stand up the docsite with either of the following commands:

```bash
docker compose up
```

```bash
make docker
```

### Accessing the site

The default port of the doc site is `8080` but you can change this in an environment variable named `API_DOCS_PORT`.  You can specify this either by exporting it in your environment or by adding it to `/.env`.  You should then run the server as detailed above and access it on the specified port or `8080`.

## Contributing

Please be sure to follow the current [OpenAPI specification](https://swagger.io/solutions/getting-started-with-oas/).  All changes to main should go through a standard review cycle and should be merged *AFTER* the functionality has been implemented in the api.  Please use [conventional commits](https://www.conventionalcommits.org/) for all commit messages to maintain readability.

## Deployment

1. Log into your local machine with Heroku.
2. Make sure the latest build of the "flextensions/swagger" image is the image you wish to deploy.
3. Run `make deploy` and follow the prompt.
