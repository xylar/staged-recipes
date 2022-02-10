#!/bin/sh

# Store existing env vars so we can restore it on deactivation

if [ -n "${CMIP6_CMOR_TABLE_ROOT:-}" ]; then
    export _CONDA_SET_CMIP6_CMOR_TABLE_ROOT=$CMIP6_CMOR_TABLE_ROOT
fi

if [ -d "${CONDA_PREFIX}/share/cmip6-cmor-tables" ]; then
  export "CMIP6_CMOR_TABLE_ROOT=${CONDA_PREFIX}/share/cmip6-cmor-tables"
fi
