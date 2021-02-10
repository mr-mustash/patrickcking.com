#!make
include .env
export $(shell sed 's/=.*//' .env)
.DEFAULT_GOAL:=help

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

test_env: ## Are we sourceing the .env file correctly and does it have the right environment variables?
	env | grep 'IPFS_DEPLOY_PINATA__API_KEY' > /dev/null
	env | grep 'IPFS_DEPLOY_PINATA__SECRET_API_KEY' > /dev/null
	env | grep 'IPFS_DEPLOY_CLOUDFLARE__API_EMAIL' > /dev/null
	env | grep 'IPFS_DEPLOY_CLOUDFLARE__API_KEY' > /dev/null
	env | grep 'IPFS_DEPLOY_CLOUDFLARE__ZONE' > /dev/null
	env | grep 'IPFS_DEPLOY_CLOUDFLARE__RECORD' > /dev/null

sign_markdown: ## Sign all markdown files and publish signatures at https://www.patrikcking.com/signatures/mardown/
	./bin/sign_markdown.sh

sign_html: ## Sign all HTML files and publish signatures at https://www.patrikcking.com/signatures/html/
	echo "Building interum files to sign appropriate HTML"
	make -C hugo build_interum
	./bin/sign_html.sh
	rm -rf ./public_temp

local: sign_markdown sign_html ## Build site and run hugo in localhost mode
	git submodule update --init --recursive --remote
	make -C hugo local

public: sign_markdown sign_html ## Refresh `./public` folder
	git submodule update --init --recursive --remote
	rm -rf public
	make -C hugo build

publish: test_env sign_markdown sign_html public  ## Publish the website to IPFS
	ipd -p infura -p pinata -d cloudflare -O
