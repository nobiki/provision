.DEFAULT_GOAL := help
.PHONY: help

submodule-update: ## all submodule origin/master pull
	git submodule update --init --recursive
	git submodule foreach git pull origin master

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


