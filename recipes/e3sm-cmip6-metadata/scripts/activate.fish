#!/usr/bin/env fish

# Store existing env vars so we can restore it on deactivation

if set -q E3SM_CMIP6_METADATA
  set -gx _CONDA_SET_E3SM_CMIP6_METADATA "$E3SM_CMIP6_METADATA"
end

if test -d "$CONDA_PREFIX/share/e3sm-cmip6-metadata"
  set -gx E3SM_CMIP6_METADATA "$CONDA_PREFIX/share/e3sm-cmip6-metadata"
end
