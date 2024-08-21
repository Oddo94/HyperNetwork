#Stage5
#Stopping the hyper-adminer container
docker container stop hyper-adminer

#Stopping the hyper-postgres container
docker container stop hyper-postgres

#Deleting the hyper-adminer container
docker container rm hyper-adminer

#Deleting the hyper-postgres container
docker container rm hyper-postgres