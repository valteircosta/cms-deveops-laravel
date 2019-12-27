#!/usr/bin/env bash
CMD="$(rm  -Rf vendor/ node_modules/ .env .docker/database .docker/app/log/ .docker/nginx/log/ package-lock.json)"
echo $CMD
