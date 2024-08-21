#Stage 3
#Pull image from Docker Hub
docker pull adminer:4.8.1

#Container creation and run command for postgres
docker run -i -d -e POSTGRES_PASSWORD=hyper2023 -e POSTGRES_USER=hyper -e POSTGRES_DB=hyper-db -p 5432:5432 --mount source=hyper-volume,target=/var/lib/postgresql/data --network=hyper-network --name hyper-postgres postgres:15.3

#Container creation and run command for adminer
docker run -i -d --name hyper-adminer --network hyper-network -p 8080:8080 adminer:4.8.1
