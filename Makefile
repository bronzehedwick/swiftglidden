default: build

help: ## Prints help for targets with comments.
	@grep -E '^[a-zA-Z._-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Runs `hugo`.
	@HUGO_ENV=production hugo && find public/ -type f -name "\.*" -print0 | xargs -0 rm

clean: ## Remove build directory.
	@if [ -d public ]; then rm -rf public; fi && mkdir public

sync: ## Push the site to the server.
	@rsync -a -e ssh --delete --omit-dir-times --no-perms --progress public/ waitstaff_deploy:/usr/local/www/swiftglidden.com

push: ## Push committed changes.
	@git push origin master

web: push clean build sync ## Combines the build and sync tasks.

serve: ## Start local development server.
	@hugo serve --buildDrafts > hugo.log 2>&1 &

stop: ## Stop local development server.
	@pgrep hugo | xargs kill

restart: stop serve ## Stop the start local development server.
