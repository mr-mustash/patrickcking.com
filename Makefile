#!make
include .env
export $(shell sed 's/=.*//' .env)
.DEFAULT_GOAL:=help

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

test_env: ## Are we sourceing the .env file correctly?
	env

publish: ## Publish the website to IPFS
	ipd -p infura -p pinata -d cloudflare -O
