#!/usr/bin/env csh

# Restore previous env vars if they were set.
unsetenv CMIP6_CMOR_TABLE_ROOT

if ( $?_CONDA_SET_CMIP6_CMOR_TABLE_ROOT ) then
    setenv CMIP6_CMOR_TABLE_ROOT "$_CONDA_SET_CMIP6_CMOR_TABLE_ROOT"
    unsetenv _CONDA_SET_CMIP6_CMOR_TABLE_ROOT
endif
