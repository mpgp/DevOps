FROM postgres AS mpgppostgres

COPY --from=mpgpbackendbuilder mpgpbackendbuilder/artifacts/sql /docker-entrypoint-initdb.d/