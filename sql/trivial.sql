create database trivial;
use trivial;

CREATE TABLE Preguntas (
id int auto_increment primary key,
pregunta varchar (1000),
respuesta varchar (1000),
tema varchar (200),
ayuda int
);
