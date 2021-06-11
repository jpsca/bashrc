# Recursively delete `.DS_Store` files
alias cleanup_ds_store="find . -type f -name '*.DS_Store' -ls -delete"

# Recursively delete `__pycache__` folders
alias cleanup_pycache="find . -type d -name __pycache__ -exec rm -r {} \+"

# Recursively delete all noise files
alias cleanup="cleanup_ds_store && cleanup_pycache"
