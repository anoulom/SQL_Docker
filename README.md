# SQL_Docker
instantiate SQL database in docker container

follow this tuto

https://morioh.com/p/d8d9e7732952/how-to-create-docker-image-with-mysql-database

# Votre mission
Pull l'image docker de mysql et inititaliser un container à partir de l'image mysql et run le container sur le port 3308 avec un password_root (root). Pourquoi utiliser un password ?
Copier les logs du container dans un fichier logs.txt. Inspecter le container et copier les informations dans un fichier inspect.txt.
À partir du fichier inspect.txt afficher (en utilisant $ grep) les informations IPAddress dans un fichier ip.txt. Que remarquez vous par rapport à l'adresse ip?
Écrire un script create.sql qui initialise la base de données company. Votre base de données sera construite à partir du fichier bdd.xls.
Il faudra mettre la base de données sous la troisième forme normale.
Vérifier que mysql est bien installer sur votre machine et connectez vous à votre container.
Vérifier que la base de données company est bien dans votre container, pareil pour les tables (utiliser la commande describe).
Tester l'initialisation de votre base de données en lançant le container et vérifier que les informations (base, tables et champs) sont bien incrite "en dure" dans votre container.
