# Vault + Consul on Docker

Ussage:

    docker-compose up
    export VAULT_ADDR="http://127.0.0.1:8200"
    vault init -key-shares=5 -key-threshold=2 > vault-keys.txt
    vault unseal first_key
    vault unseal second_key
    vault auth (use Initial Root Token)
    vault write secrets/foo value=bar
    vautl read secrets/foo
