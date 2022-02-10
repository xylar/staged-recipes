#!/usr/bin/env bash

# install the shared data
mkdir -p "${PREFIX}/share/cmip6-cmor-tables"
mv ./Tables/* "${PREFIX}/share/cmip6-cmor-tables/"

ACTIVATE_DIR=${PREFIX}/etc/conda/activate.d
DEACTIVATE_DIR=${PREFIX}/etc/conda/deactivate.d
mkdir -p ${ACTIVATE_DIR}
mkdir -p ${DEACTIVATE_DIR}

for ext in sh csh fish
do
  cp ${RECIPE_DIR}/scripts/activate.$ext ${ACTIVATE_DIR}/cmip6-cmor-tables-activate.$ext
  cp ${RECIPE_DIR}/scripts/deactivate.$ext ${DEACTIVATE_DIR}/cmip6-cmor-tables-deactivate.$ext
done
