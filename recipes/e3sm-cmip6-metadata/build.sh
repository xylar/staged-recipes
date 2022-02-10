#!/usr/bin/env bash

# install the shared data
mkdir -p "${PREFIX}/share/e3sm-cmip6-metadata"
cp -r ./E3SM* "${PREFIX}/share/e3sm-cmip6-metadata/"

ACTIVATE_DIR=${PREFIX}/etc/conda/activate.d
DEACTIVATE_DIR=${PREFIX}/etc/conda/deactivate.d
mkdir -p ${ACTIVATE_DIR}
mkdir -p ${DEACTIVATE_DIR}

for ext in sh csh fish
do
  cp ${RECIPE_DIR}/scripts/activate.$ext ${ACTIVATE_DIR}/e3sm-cmip6-metadata-activate.$ext
  cp ${RECIPE_DIR}/scripts/deactivate.$ext ${DEACTIVATE_DIR}/e3sm-cmip6-metadata-deactivate.$ext
done
