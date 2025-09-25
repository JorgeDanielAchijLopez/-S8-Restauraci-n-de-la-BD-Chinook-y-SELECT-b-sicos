# -S8-Restauraci-n-de-la-BD-Chinook-y-SELECT-b-sicos
1.	Se creo el contenedor en Docker 
docker run --name postgres-dbs8 -e POSTGRES_PASSWORD=yourpassword -p 5432:5432 -d postgres

2.	Buscamos donde tenemos descargad el Chinnok en el cual vamos a correr esa ruta donde se encuentra el archivo para poderlo recuperar con el siguiente comando 
docker cp "C:\Users\gusta\Downloads\backup.sql" postgres-db:/Chinook.sql

3.	Vamos a entrar al contenedor con el siguiente comando siempre desde la terminal de Docker dentro de nuestro contenedor 
docker exec -it postgres-dbs8 bash

4.	tenemos que crear una base de datos dentro de nuestro contenedor con el siguiente comando 
psql -U postgres -c "Create database chinook;"

5.	vamos a restaurar nuestra base de datos Chinook dentro de nuestro contenedor Docker con el comando: psql -U postgres -d chinook -f /Chinook.sql

6.	Vamos a verificar nuestra tabla con el siguiente comando psql -U postgres -d Chinook si sale todo bien en este último comando nos saldrá todas las tablas 
7.	Luego vamos a nuestro DataGrip y hacemos la conexión entre nuestro contenedor que creamos en el Docker y luego cargamos nuestro Chinook seleccionando
   8.	Una vez que hayamos cargado las tablas nos ponemos a ejecutar los 5 códigos 

1.	SELECT *
FROM media_type;

2.	SELECT playlist_id, name
FROM playlist;

3.	SELECT media_type.name AS tipo, playlist.name AS lista
FROM media_type
CROSS JOIN playlist;


4.	SELECT *
FROM media_type
LIMIT 5;

SELECT *
FROM playlist
LIMIT 3;


5.	SELECT *
FROM media_type;

SELECT *
FROM playlist;

Podemos correr uno por uno para ver sus funciones de cada codigo 
