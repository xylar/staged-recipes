#!/usr/bin/env csh

# Store existing env vars so we can restore it on deactivation

if ( $?E3SM_CMIP6_METADATA ) then
  setenv _CONDA_SET_E3SM_CMIP6_METADATA "$E3SM_CMIP6_METADATA"
endif

if ( -d "${CONDA_PREFIX}/share/e3sm-cmip6-metadata" ) then
  setenv E3SM_CMIP6_METADATA "${CONDA_PREFIX}/share/e3sm-cmip6-metadata"
endif
