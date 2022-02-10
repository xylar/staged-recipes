#!/usr/bin/env fish

# Restore previous env vars if they were set.
set -e CMIP6_CMOR_TABLE_ROOT

if set -q _CONDA_SET_CMIP6_CMOR_TABLE_ROOT
    set -gx  CMIP6_CMOR_TABLE_ROOT "$_CONDA_SET_CMIP6_CMOR_TABLE_ROOT"
    set -e _CONDA_SET_CMIP6_CMOR_TABLE_ROOT
end
