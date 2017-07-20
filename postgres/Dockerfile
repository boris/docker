FROM postgres:9.6

COPY files/*.conf /etc/postgresql/

EXPOSE 5432
CMD ["/docker-entrypoint.sh", "postgres", "-c", "config_file=/etc/postgresql/postgresql.conf", "-c", "hba_file=/etc/postgresql/pg_hba.conf"]
