FROM postgres:14.4-alpine3.16

ENV POSTGRES_PASSWORD=password
ENV POSTGRES_USER=renan
ENV POSTGRES_DB=olist_db
ENV POSTGRES_PORT=5432
ENV POSTGRES_HOST=db

COPY create_tables.sql /docker-entrypoint-initdb.d/create_tables.sql
