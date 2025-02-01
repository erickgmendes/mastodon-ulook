#!/bin/bash

# Subir containers em segundo plano
docker compose -f .devcontainer/compose.yaml up -d

# Rodar o setup no container 'app'
docker compose -f .devcontainer/compose.yaml exec app bin/setup

# Rodar o dev no container 'app'
docker compose -f .devcontainer/compose.yaml exec app bin/dev
