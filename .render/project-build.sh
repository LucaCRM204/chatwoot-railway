#!/usr/bin/env bash
set -ex

echo "==> Instalando dependencias..."
pnpm install

echo "==> Saltando build, usando archivos ya compilados"
# Prepara estructura básica
bundle exec rake db:prepare

echo "==> Configurando base de datos (db:setup)..."
# Este comando crea la base de datos y corre las migraciones + seeds
bundle exec rake db:setup

echo "==> ✅ Deploy completo sin compilar"
