#!/usr/bin/env bash
set -ex

echo "==> Instalando dependencias..."
pnpm install

echo "==> Ejecutando migraciones y cargando seeds..."
bundle exec rake db:setup

echo "==> ✅ Deploy completo sin compilar"
