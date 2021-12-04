# 2710-db-project

The final project for INFSCI 2710.
Demo site: https://2710.miguch.com

## Progress after the demo
After the demo, we added a admin role to our front-end with a fixed admin user. This user is added by modifying the database directly.
Username: admin
password: admin123
The admin user is the only user that has the permission to control user, stores and region data. Other users will still be able to see those data lists, but won't be able to make change to the records.

## How to deploy
Prerequisite: Docker, docker-compose
1. create a `.env` file that specify the following environment variables: DB_USER, DB_PASS, DB_ROOT_PASS
2. build the three containers: `docker-compose build`
3. Start the Database first: `docker-compose up db -d`
4. Enter the Database container: `docker exec -it 2710-db-project-db-1 bash`
5. Create a sql file `final.sql`, copy the content of `database/bootstrap.sql` into it.
7. Enter MySQL: `mysql -p`, and use `create database final;` to create the database.
6. Execute the bootstrap SQL file to initiate the database with constraints, indexes, and default users and roles: `mysql -p final <final.sql`
7. Exit the container, use `docker-compose up -d` to deploy the app.
8. The app can be accessed from `localhost:8080`
