#!/bin/sh

# This is the setup for homebrew on OSX.
# it assumes you have a relatively new Python on your system someplace.
# Whaddya want for free?

# brew link --overwrite certifi

# install poetry
brew install poetry

# install Neo4J
brew install neo4j

# install langchain, etc.
# poetry init
# poetry add langchain langchain-community langchain-openai langchain-experimental neo4j python-dotenv
poetry install
# source $(poetry env info --path)/bin/activate

echo 'Copy ".env.example" to ".env" and update the variables as documented in that file.'

