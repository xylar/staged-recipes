#!/usr/bin/env fish

# Restore previous env vars if they were set.
set -e E3SM_CMIP6_METADATA

if set -q _CONDA_SET_E3SM_CMIP6_METADATA
    set -gx  E3SM_CMIP6_METADATA "$_CONDA_SET_E3SM_CMIP6_METADATA"
    set -e _CONDA_SET_E3SM_CMIP6_METADATA
end
