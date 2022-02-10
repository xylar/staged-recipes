#!/bin/sh

# Store existing env vars so we can restore it on deactivation

if [ -n "${E3SM_CMIP6_METADATA:-}" ]; then
    export _CONDA_SET_E3SM_CMIP6_METADATA=$E3SM_CMIP6_METADATA
fi

if [ -d "${CONDA_PREFIX}/share/e3sm-cmip6-metadata" ]; then
  export "E3SM_CMIP6_METADATA=${CONDA_PREFIX}/share/e3sm-cmip6-metadata"
fi
