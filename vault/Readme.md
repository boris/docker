# Vault + Consul on Docker

Usage:

    docker-compose up
    export VAULT_ADDR="http://127.0.0.1:8200"
    vault init -key-shares=5 -key-threshold=2 > vault-keys.txt
    vault unseal first_key
    vault unseal second_key
    vault auth (use Initial Root Token)

Examples:

    vault write secret/foo value=bar
    vault read secret/foo
    vault write secret/path/to/secret value=secret
    vault read secret/path/to/secret
    vault write secret/path/to/string value="This is a string"


## Files
- `docker-compose.storage.yml` uses a "storage" backend, not recomended for
  production.
- `docker-compose.yml` could be used to deploy a service to swarm.
