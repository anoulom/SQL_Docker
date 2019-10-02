create database IF NOT EXISTS company;
use company;

CREATE TABLE artiste
(
id_artist INTEGER PRIMARY KEY,
prenom_artiste TEXT,
nom_artiste TEXT
) COMMENT='this is my artist table';
INSERT INTO artiste (id_artist, prenom_artiste, nom_artiste) VALUES (11, 'John', 'Travolta');
INSERT INTO artiste (id_artist, prenom_artiste, nom_artiste) VALUES (27, 'Bruce', 'Willis');
INSERT INTO artiste (id_artist, prenom_artiste, nom_artiste) VALUES (37, 'Quentin', 'Tarantino');
INSERT INTO artiste (id_artist, prenom_artiste, nom_artiste) VALUES (167, 'Robert', 'De Niro');
INSERT INTO artiste (id_artist, prenom_artiste, nom_artiste) VALUES (168, 'Pam', 'Grier');


CREATE TABLE film
(
id_Film INTEGER PRIMARY KEY,
annee_Film INTEGER,
titre_Film TEXT,
idReal_Film INTEGER
) COMMENT='this is my film table';
INSERT INTO film (id_Film, annee_Film, titre_Film,idReal_Film) VALUES (17, 1994, 'Pulp Fiction', 37);
INSERT INTO film (id_Film, annee_Film, titre_Film,idReal_Film) VALUES (57, 1997, 'Jackie Brown', 37);


CREATE TABLE role
(
role_Role TEXT,
idFilm_Role INTEGER,
FOREIGN KEY(idFilm_Role) REFERENCES film(id_Film),
idArtiste_Role INTEGER,
FOREIGN KEY(idArtiste_Role) REFERENCES artiste(id_artist)
) COMMENT='this is my role table';
INSERT INTO role (role_Role, idFilm_Role, idArtiste_Role) VALUES ('Vincent Vega', 17, 11);
INSERT INTO role (role_Role, idFilm_Role, idArtiste_Role) VALUES ('Butch Coolidge', 17, 27);
INSERT INTO role (role_Role, idFilm_Role, idArtiste_Role) VALUES ('Jimmy Dimmick', 17, 37);