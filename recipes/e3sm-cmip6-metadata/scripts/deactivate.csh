#!/usr/bin/env csh

# Restore previous env vars if they were set.
unsetenv E3SM_CMIP6_METADATA

if ( $?_CONDA_SET_E3SM_CMIP6_METADATA ) then
    setenv E3SM_CMIP6_METADATA "$_CONDA_SET_E3SM_CMIP6_METADATA"
    unsetenv _CONDA_SET_E3SM_CMIP6_METADATA
endif
