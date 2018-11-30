DROP DATABASE IF EXISTS mapas

CREATE DATABASE mapas -- CHARACTER SET utf8;

use mapas;

DROP TABLE IF EXISTS mapas;
DROP TABLE IF EXISTS lamina;
DROP TABLE IF EXISTS calles;
DROP TABLE IF EXISTS laminas_calles;


CREATE TABLE mapas(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    descripcion VARCHAR(250) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    fecha DATE NOT NULL,
    imagen VARCHAR(250) NOT NULL
);

CREATE TABLE laminas(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    imagen VARCHAR(250) NOT NULL,
    posicion_x SMALLINT NOT NULL,
    posicion_y SMALLINT NOT NULL,
    punto1_top SMALLINT NOT NULL,
    punto2_top SMALLINT NOT NULL,
    punto3_top SMALLINT NOT NULL,
    punto1_left SMALLINT NOT NULL,
    punto2_left SMALLINT NOT NULL,
    punto3_left SMALLINT NOT NULL,    

        id_mapa INT UNSIGNED
);

CREATE TABLE calles(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    tipo_via VARCHAR(25) NOT NULL,
    anyo_inicio SMALLINT NOT NULL,
    anyo_fin SMALLINT NOT NULL
    punto_top SMALLINT NOT NULL,
    punto_left SMALLINT NOT NULL
);

CREATE TABLE laminas_calles(
    id_lamina INT UNSIGNED,
    id_calle INT UNSIGNED
);