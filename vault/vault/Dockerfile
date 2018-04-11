FROM vault:0.10.0

COPY config/vault.conf /vault/config/vault.conf
COPY config/wait-for-it.sh /wfi.sh

CMD /wfi.sh -t 20 -h consul -p 8500 -- vault server -config=/vault/config/vault.conf
