USE sprint2;

CREATE TABLE musica (
idMusica int primary key auto_increment,
titulo varchar (40),
artista varchar (40),
genero varchar (40));

INSERT INTO musica VALUES
	(null, 'Moonwalker', 'Michael', 'Pop'),
    (null, 'Triller', 'Michael', 'Pop'),
    (null, '1997', 'Djonga', 'Rap');

CREATE TABLE album (
idAlbum int primary key auto_increment,
nome varchar (40),
tipo varchar (40),
dtLancamento date) auto_increment= 10;

INSERT INTO album VALUES
	(null, 'World', 'fisico', '1997-12-30'),
    (null, 'Menino que queria ser Deus', 'digital', '2019-06-30');

SELECT * FROM musica;
SELECT * FROM album;

ALTER TABLE musica ADD column fkAlbum int;

ALTER TABLE musica ADD constraint fkAlbum
	foreign key (fkAlbum) references album(idAlbum);

UPDATE musica SET fkAlbum = 10
	WHERE idMusica IN ('1','2');

UPDATE musica SET fkAlbum = 11
	WHERE idMusica = '3';

SELECT * FROM musica JOIN album
	ON fkAlbum = idAlbum;

SELECT musica.titulo, album.nome
FROM album JOIN musica
ON idAlbum = fkAlbum;

SELECT * FROM musica JOIN album ON fkAlbum= IdAlbum
	WHERE tipo= 'fisico';