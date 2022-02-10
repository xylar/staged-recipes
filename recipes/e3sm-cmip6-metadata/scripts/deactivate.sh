#!/bin/sh

# Restore previous env vars if they were set.
unset E3SM_CMIP6_METADATA

if [ -n "$_CONDA_SET_E3SM_CMIP6_METADATA" ]; then
    export E3SM_CMIP6_METADATA=$_CONDA_SET_E3SM_CMIP6_METADATA
    unset _CONDA_SET_E3SM_CMIP6_METADATA
fi
