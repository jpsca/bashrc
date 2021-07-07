# Recursively delete `.DS_Store` files
alias cleanup_ds_store="find . -type f -name '*.DS_Store' -ls -delete"

# Delete all the python junk
alias cleanup_pyjunk="find . -name '*.pyc' -or -name '*.pyo' -or -name '*~' -or -name '*.egg-info' -or -name 'pip-wheel-metadata' -or -name '__pycache__' | xargs rm -vRf"

# Recursively delete all noise files
alias cleanup="cleanup_ds_store && cleanup_pyjunk"
