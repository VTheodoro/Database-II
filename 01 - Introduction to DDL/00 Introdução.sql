CREATE DATABASE Theodoro;

CREATE TABLE tipo(
codigo INTEGER NOT NULL PRIMARY KEY,
Nome VARCHAR(30) NOT NULL);

ALTER TABLE Tipo ADD OBS VARCHAR(30) NOT NULL;

ALTER TABLE TIPO DROP OBS;

DROP TABLE TIPO;

DROP DATABASE THEODORO;