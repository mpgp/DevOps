FROM postgres AS mpgpdb

COPY --from=mpgpbackendbuilder mpgpbackendbuilder/artifacts/sql /docker-entrypoint-initdb.d/