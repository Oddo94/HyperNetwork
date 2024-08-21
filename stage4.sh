#Stage 4
#Container start command
docker container start <container_id>

#USERS table creation command
CREATE TABLE users (
id INTEGER,
user_name VARCHAR(99)
);

#Data insertion command
INSERT INTO users(id, user_name) VALUES(99, 'hyper-user');