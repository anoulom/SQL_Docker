# Derived from official mysql image (our base image)
# mysql5.7 car mysql8 pas compatible avec mysqlworkbench
FROM mysql:5.7

# Add a database
ENV MYSQL_DATABASE company

# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
# cette ligne COPY copie ou ajoute (ADD) toute notre préparation (script etc.) dans le container
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/
