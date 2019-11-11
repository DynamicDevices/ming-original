#!/usr/bin/bash

MING_JUPYTER_DEFAULT_PASS=mingstack

# If MING_JUPYTER_PASS is set then hash this password via Jupyter and store it in hashed_password
# otherwise use MING_JUPYTER_DEFAULT_PASS as none has been set by the user

if [[ -n "$MING_JUPYTER_PASS" ]]; then
  hashed_password=$(python3 -c "from notebook.auth import passwd; print(passwd('$MING_JUPYTER_PASS'))")
else
  hashed_password=$(python3 -c "from notebook.auth import passwd; print(passwd('$MING_JUPYTER_DEFAULT_PASS'))")
fi

jupyter lab --ip=0.0.0.0 --NotebookApp.password="$hashed_password"

