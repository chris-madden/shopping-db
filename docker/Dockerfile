FROM postgres:latest

WORKDIR /

# Set Postgres Environment Variables
ENV POSTGRES_USER=chris
ENV POSTGRES_PASSWORD=chris
ENV POSTGRES_DB=shopping

COPY ./shopping-db.sql .
COPY ./init-db.sh /docker-entrypoint-initdb.d/init-db.sh