.DEFAULT_GOAL := docker
_SUCCESS := "\033[32m[%s]\033[0m %s\n"
_DANGER := "\033[31m[%s]\033[0m %s\n"

docker:
	@command -v docker > /dev/null 2>&1 || { printf $(_DANGER) "Please install Docker first." >&2; exit 1; }
	@docker compose up || true

deploy:
	@read -p "Are you sure you want to deploy the current image? [Y/n]: " ans && [ $${ans:-n} = Y ]
	@printf $(_SUCCESS) "Beginning production swagger deploy"
	@heroku whoami > /dev/null 2>&1 || { printf $(_DANGER) "Please log in with Heroku first." >&2; exit 1; }
	@heroku container:login
	@docker tag flextensions/swagger registry.heroku.com/esaas-swagger/web
	@docker push registry.heroku.com/esaas-swagger/web
	@heroku container:release web
	@printf $(_SUCCESS) "Successfully deployed the current build."
