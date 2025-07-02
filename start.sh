#!/usr/bin/env bash
set -e

# Usa el puerto que define Railway, o 3000 si no está definido
PORT=${PORT:-3000}

echo "==> Iniciando servidor en el puerto $PORT..."
bundle exec rails s -p $PORT -b 0.0.0.0
