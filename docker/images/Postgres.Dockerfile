FROM postgres AS mpgppostgres

COPY --from=docker_mpgpbackendbuilder mpgpbackendbuilder/artifacts/sql /docker-entrypoint-initdb.d/