#!/usr/bin/env csh

# Store existing env vars so we can restore it on deactivation

if ( $?CMIP6_CMOR_TABLE_ROOT ) then
  setenv _CONDA_SET_CMIP6_CMOR_TABLE_ROOT "$CMIP6_CMOR_TABLE_ROOT"
endif

if ( -d "${CONDA_PREFIX}/share/cmip6-cmor-tables" ) then
  setenv CMIP6_CMOR_TABLE_ROOT "${CONDA_PREFIX}/share/cmip6-cmor-tables"
endif
