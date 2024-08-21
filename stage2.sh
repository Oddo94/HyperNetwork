#Stage 2
#Command for running the container with all the specified requirements
docker run -i -d -e POSTGRES_PASSWORD=hyper2023 -e POSTGRES_USER=hyper -e POSTGRES_DB=hyper-db -p 5432:5432 --mount source=hyper-volume,target=/var/lib/postgresql/data --network=hyper-network --name hyper-postgres postgres:15.3
