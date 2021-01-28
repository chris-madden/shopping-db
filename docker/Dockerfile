FROM postgres:latest

RUN echo "Building a postgres docker image"

WORKDIR /

# Set Postgres Environment Variables
#ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=shopping

# shopping-db.sql will be copied to root
COPY ./shopping-db.sql .
COPY ./init-db.sh /docker-entrypoint-initdb.d/init-db.sh
