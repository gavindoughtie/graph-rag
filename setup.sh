#!/bin/sh

# This is the setup for homebrew on OSX.
# it assumes you have a relatively new Python on your system someplace.
# Whaddya want for free?

# install poetry
brew install poetry

brew install docker

# install langchain, etc.
poetry install
source $(poetry env info --path)/bin/activate

echo 'Copy ".env.example" to ".env" and update the variables as documented in that file.'

# run neo4j
# You could run
# neo4j-admin server start
# if you've got neo4j installed locally
# but you'll need to make sure you're running the APOC extensions
# far easier is to run the docker image via run_neo4j_docker.sh
