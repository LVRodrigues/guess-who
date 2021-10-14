FROM postgres:latest

ENV POSTGRES_PASSWORD 'postgres'
ENV POSTGRES_DB 'guess-who'
ENV POSTGRES_USER 'guess-admin'
ENV POSTGRES_PASSWORD 'guess-pass'

COPY setup/001-users-docker.sql /docker-entrypoint-initdb.d/
COPY setup/003-database-roles.sql /docker-entrypoint-initdb.d/
COPY setup/004-domains.sql /docker-entrypoint-initdb.d/
COPY setup/005-schemas.sql /docker-entrypoint-initdb.d/
COPY setup/006-tables.sql /docker-entrypoint-initdb.d/
COPY setup/007-views.sql /docker-entrypoint-initdb.d/
COPY setup/008-sequences.sql /docker-entrypoint-initdb.d/
COPY setup/009-functions.sql /docker-entrypoint-initdb.d/
COPY setup/010-roles.sql /docker-entrypoint-initdb.d/
COPY setup/011-populate.sql /docker-entrypoint-initdb.d/
COPY setup/999-desenv.sql /docker-entrypoint-initdb.d/
