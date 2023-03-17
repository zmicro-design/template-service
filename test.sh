#!/bin/bash

source ./ask

log::info "PACKAGE_NAME: $PACKAGE_NAME"
log::info "PACKAGE_VERSION: $PACKAGE_VERSION"
log::info "PACKAGE_ORGANIZATION_NAME: $PACKAGE_ORGANIZATION_NAME"

os::gztemplate \
  --source $PWD/template \
  --target $PWD/tmp/new \
  --exclude .github/workflows
