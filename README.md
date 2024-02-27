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

The default port of the doc site is `8080` but you can change this in an environment variable named `SWAGGER_UI_PORT`.  You can specify this either by exporting it in your environment or by adding it to `/.env`.  You should then run the server as detailed above and access it on the specified port or `8080`.


### Configuring for Development

The base config will pull the swagger.json from the deployed spec, however you may want to instead reference the swagger.json in your local flextensions app.  To do this, set the environment variable `SWAGGER_JSON_URL` to point to the endpoint on your local app (eg: `http://localhost:3000/api/v1/swagger`).
**NOTE**: you have to have your local app running for this to work. 

## Contributing

Please be sure to follow the current [OpenAPI specification](https://swagger.io/solutions/getting-started-with-oas/).  All changes to main should go through a standard review cycle and should be merged *AFTER* the functionality has been implemented in the api.  Please use [conventional commits](https://www.conventionalcommits.org/) for all commit messages to maintain readability.  Note, the swagger.json file is versioned in [the main flextensions repo](https://github.com/saasbook/flextensions) so changes should be made there and pushed to production to reflect changes.

### Using Swagger Editor

When you run this app, it will run both the UI and the editor.  The editor will be run on port 8081 by default, but can be changed with the `SWAGGER_EDITOR_PORT` environment variable.
**NOTE**: you have to manually export/copy the spec from the editor and overwrite your existing spec with it to save your changes. 
**NOTE**: you have to run your local app for this to work.

## Deployment

There are two deployment options but the first of which is highly recommended.

### Deploying through git *(RECOMMENDED)*

1. Ensure you have your heroku remote configured.
2. Push master to heroku remote.

### Manual Image Deploy with Docker

1. Log into your local machine with Heroku.
2. Make sure the latest build of the "flextensions/swagger-ui" image is the image you wish to deploy.
3. Run `make deploy` and follow the prompt.
