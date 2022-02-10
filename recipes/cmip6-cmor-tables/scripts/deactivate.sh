#!/bin/sh

# Restore previous env vars if they were set.
unset CMIP6_CMOR_TABLE_ROOT

if [ -n "$_CONDA_SET_CMIP6_CMOR_TABLE_ROOT" ]; then
    export CMIP6_CMOR_TABLE_ROOT=$_CONDA_SET_CMIP6_CMOR_TABLE_ROOT
    unset _CONDA_SET_CMIP6_CMOR_TABLE_ROOT
fi
