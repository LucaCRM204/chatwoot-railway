#!/usr/bin/env bash
set -ex

echo "==> Instalando dependencias..."
pnpm install

echo "==> Saltando build, usando archivos ya compilados"
bundle exec rake db:prepare

echo "==> Configurando base de datos (db:setup)..."
bundle exec rake db:setup

echo "==> ✅ Deploy completo sin compilar"
