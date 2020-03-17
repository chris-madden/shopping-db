# shopping-db

### Start Container
docker run -it --name c-postgres -p 5432:5432 --mount source=shopping-data,destination=/var/lib/postgresql/data c-postgres:1.0