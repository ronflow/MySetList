#!/usr/bin/env bash

# Exit on error
set -o errexit

echo "==> Updating apt cache & installing system packages"
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
  imagemagick ghostscript fonts-dejavu-core

bundle install
bin/rails assets:precompile
bin/rails assets:clean

# If you have a paid instance type, we recommend moving
# database migrations like this one from the build command
# to the pre-deploy command:
bin/rails db:migrate
bin/rails db:seed
