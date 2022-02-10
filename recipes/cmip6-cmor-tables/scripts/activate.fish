#!/usr/bin/env fish

# Store existing env vars so we can restore it on deactivation

if set -q CMIP6_CMOR_TABLE_ROOT
  set -gx _CONDA_SET_CMIP6_CMOR_TABLE_ROOT "$CMIP6_CMOR_TABLE_ROOT"
end

if test -d "$CONDA_PREFIX/share/cmip6-cmor-tables"
  set -gx CMIP6_CMOR_TABLE_ROOT "$CONDA_PREFIX/share/cmip6-cmor-tables"
end
