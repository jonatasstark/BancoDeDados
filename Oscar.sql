CREATE DATABASE OscarDB;

USE OscarDB;

CREATE TABLE Diretores (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Sexo VARCHAR(10),
ID_Filme INT,
Tipo_de_Filme VARCHAR(255)
);

SELECT * FROM Diretores;

INSERT INTO Diretores (nome, sexo, ID_Filme, Tipo_de_Filme) 
VALUES ('Jane Campion', 'Feminino', '', 'Drama'),
('Paul Thomas Anderson', 'Masculino', 2, 'Romance/Comédia'),
('Kenneth Branagh', 'Masculino', 3, 'Drama'),
('Siân Heder', 'Feminino', 4, 'Drama'),
('Adam McKay', 'Masculino', 5, 'Comédia'),
('Ryūsuke Hamaguchi', 'Masculino', 6, 'Drama/Romance'),
('Denis Villeneuve', 'Masculino', 7, 'Ficção Científica/Drama'),
('Reinaldo Marcus Green', 'Masculino', 8, 'Drama/Biopic'),
('Guillermo del Toro', 'Masculino', 9, 'Drama/Suspense'),
('Steven Spielberg', 'Masculino', 10, 'Comédia Musical/Romance/Drama'),
('Aaron Sorkin', 'Masculino', 11, 'Biopic/Romance/Drama'),

INSERT INTO Diretores (nome, sexo, ID_Filme, Tipo_de_Filme)
VALUES ('Lin-Manuel Miranda', 'Masculino', 12, 'Musical/Drama/Biopic');

INSERT INTO Diretores (nome, sexo, ID_Filme, Tipo_de_Filme)
VALUES ('Joel Coen', 'Masculino', 13, 'Drama');

INSERT INTO Diretores (nome, sexo, ID_Filme, Tipo_de_Filme)
VALUES ('Michael Showalter', 'Masculino', 14, 'Drama/Biopic');

INSERT INTO Diretores (nome, sexo, ID_Filme, Tipo_de_Filme)
VALUES ('Maggie Gyllenhaal', 'Feminino', 15, 'Drama');

INSERT INTO Diretores (nome, sexo, ID_Filme, Tipo_de_Filme)
VALUES ('Pablo Larraín', 'Masculino', 16, 'Biopic/Drama');

INSERT INTO Diretores (nome, sexo, ID_Filme, Tipo_de_Filme)
VALUES ('Pedro Almodóvar', 'Masculino', 17, 'Drama');

UPDATE Diretores
SET ID_Filme = 1
WHERE ID = 1;

CREATE TABLE Filmes (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
Lancamento DATE
);

SELECT * FROM Filmes;

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('The Power of the Dog', '', '2021/12/01');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Licorice Pizza', 'Romance/Comédia', '2022/02/17');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Belfast', 'Drama', '2022/03/10');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('No Ritmo do Coração', 'Drama', '2021/09/23');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Não Olhe Para Cima', 'Comédia', '2021/12/09');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Drive My Car', 'Drama/Romance', '2022/03/17');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Duna', 'Ficção Científica/Drama', '2021/10/21');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('King Richard: Criando Campeãs', 'Drama/Biopic', '2021/12/02');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('O Beco do Pesadelo', 'Drama/Suspense', '2022/01/27');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Amor, Sublime Amor', 'Comédia Musical/Romance/Drama', '2021/12/09');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Apresentando os Ricardos', 'Biopic/Romance/Drama', '2021/12/21');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Tick, Tick… Boom!', 'Musical/Drama/Biopic', '2021/11/19');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('A Tragédia de MacBeth', 'Drama', '2022/01/14');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Os Olhos de Tammy Faye', 'Drama/Biopic', '2022/04/06');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('A Filha Perdida', 'Drama', '2021/12/31');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Spencer', 'Biopic/Drama', '2022/01/27');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Madres Paralelas', 'Drama', '2021/02/03');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('A Pior Pessoa do Mundo', 'Drama/Comédia', '2022/03/24');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Encanto', 'Animação/Família/Fantasia/Comédia', '2021/11/25');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Luca', 'Animação/Família', '2021/06/18');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Flee', 'Documentário/Animação', '2022/04/21');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('A Família Mitchell e a Revolta das Máquinas', 'Animação/Comédia/Família', '2021/04/30');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Raya e o Último Dragão', 'Animação/Fantasia/Aventura', '2021/03/04');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('A Mão de Deus', 'Drama/Biopic', '2021/12/02');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Lunana', 'Drama', '2019/10/05');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Ascension', 'Documentário', '2021/10/08');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Attica', 'Documentário', '2021/09/09');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Summer of Soul', 'Documentário', '2021/12/30');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Writing with Fire', 'Documentário', '2021/01/30');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Audible', 'Documentário', '2021/04/29');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Lead Me Home', 'Documentário', '2021/10/03');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('The Queen of Basketball', 'Documentário', '2021/06/10');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Three Songs for Ben Azir', 'Documentário', '2021/06/02');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('When We Were Bullies', 'Documentário', '2021/01/28');

INSERT INTO Filmes (nome, Tipo_de_Filme, Lancamento)
VALUES ('Ala Kachuu – Take and Run', 'Curta-Metragem', '2020/08/01'),
('The Dress', 'Curta-Metragem', '2020/06/02'),
('The Long Goodbye', 'Curta-Metragem', '2020/03/01'),
('On My Mind', 'Curta-Metragem', '2021/07/10'),
('Please Hold', 'Curta-Metragem', '2020/09/25'),
('Affairs of the Art', 'Curta-Animação', '2021/01/31'),
('Bestia', 'Curta-Animação', '2021/06/14'),
('Robin Robin', 'Curta-Animação', '2021/11/27'),
('Boxballet', 'Curta-Animação', '2020/03/01'),
('The Windshield Wiper', 'Curta-Animação', '2021/07/13'),
('007 – Sem Tempo para Morrer', 'Ação/Suspense/Espionagem', '2021/09/30'),
('Four Good Days', 'Drama', '2021/04/30'),
('Um Príncipe em Nova York 2', 'Comédia', '2021/05/03'),
('Cruella', 'Comédia/Drama/Família', '2021/05/27'),
('Casa Gucci', 'Biopic/Drama', '2021/11/25'),
('Cyrano', 'Drama/Romance/Comédia Musical', '2022/10/14'),
('Free Guy', 'Comédia/Ação/Aventura', '2021/08/19'),
('Shang-Chi e a Lenda dos Dez Anéis', 'Ação/Fantasia', '2021/09/02'),
('Homem-Aranha: Sem Volta para Casa', 'Ação/Aventura/Fantasia', '2021/12/16');

UPDATE Filmes
SET Tipo_de_Filme = 'Drama'
WHERE ID = 1;

CREATE TABLE Atores (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Sexo VARCHAR(10),
ID_Diretor INT,
ID_Filme INT,
Coadjuvante BOOLEAN
);

SELECT * FROM Atores;

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Javier Bardem', 'Masculino', 11, 11, FALSE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Benedict Cumberbatch', 'Masculino', 1, 1, FALSE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Andrew Garfield', 'Masculino', 12, 12, FALSE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Will Smith', 'Masculino', 8, 8, FALSE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Denzel Washington', 'Masculino', 13, 13, FALSE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Jessica Chastain', 'Feminino', 14, 14, FALSE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Olivia Colman', 'Feminino', 15, 15, FALSE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Kristen Stewart', 'Feminino', 16, 16, FALSE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Penélope Cruz', 'Feminino', 17, 17, FALSE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Nicole Kidman', 'Feminino', 11, 11, FALSE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Ciarán Hinds', 'Masculino', 3, 3, TRUE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Troy Kotsur', 'Masculino', 4, 4, TRUE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Jesse PLemons', 'Masculino', 1, 1, TRUE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('J.K. Simmons', 'Masculino', 11, 11, TRUE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Kodi Smit-McPhee', 'Masculino', 1, 1, TRUE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Jessie Buckley', 'Feminino', 15, 15, TRUE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Ariana Debose', 'Feminino', 10, 10, TRUE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Judi Dench', 'Feminino', 3, 3, TRUE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Kirsten Dunst', 'Feminino', 1, 1, TRUE);

INSERT INTO Atores (nome, sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES ('Aunjanue Ellis', 'Feminino', 8, 8, TRUE);

CREATE TABLE MelhorFilme (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorFilme_Voto_Soma INT
);

SELECT * FROM MelhorFilme;

INSERT INTO MelhorFilme (nome, ID_Filme, ID_MelhorFilme_Voto_Soma)
VALUES ('The Power of the Dog', 1, '');

INSERT INTO MelhorFilme (nome, ID_Filme, ID_MelhorFilme_Voto_Soma)
VALUES ('Licorice Pizza', 2, '');

INSERT INTO MelhorFilme (nome, ID_Filme, ID_MelhorFilme_Voto_Soma)
VALUES ('Belfast', 3, '');

INSERT INTO MelhorFilme (nome, ID_Filme, ID_MelhorFilme_Voto_Soma)
VALUES ('No Ritmo do Coração', 4, '');

INSERT INTO MelhorFilme (nome, ID_Filme, ID_MelhorFilme_Voto_Soma)
VALUES ('Não Olhe Para Cima', 5, '');

INSERT INTO MelhorFilme (nome, ID_Filme, ID_MelhorFilme_Voto_Soma)
VALUES ('Drive My Car', 6, '');

INSERT INTO MelhorFilme (nome, ID_Filme, ID_MelhorFilme_Voto_Soma)
VALUES ('Duna', 7, '');

INSERT INTO MelhorFilme (nome, ID_Filme, ID_MelhorFilme_Voto_Soma)
VALUES ('King Richard: Criando Campeãs', 8, '');

INSERT INTO MelhorFilme (nome, ID_Filme, ID_MelhorFilme_Voto_Soma)
VALUES ('O Beco do Pesadelo', 9, '');

INSERT INTO MelhorFilme (nome, ID_Filme, ID_MelhorFilme_Voto_Soma)
VALUES ('Amor, Sublime Amor', 10, '');


CREATE TABLE MelhorDiretor (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Diretor INT,
ID_MelhorDiretor_Voto_Soma INT
);

SELECT * FROM MelhorDiretor;

INSERT INTO MelhorDiretor (nome, ID_Diretor, ID_MelhorDiretor_Voto_Soma)
VALUES ('Paul Thomas Anderson', 2, '');

INSERT INTO MelhorDiretor (nome, ID_Diretor, ID_MelhorDiretor_Voto_Soma)
VALUES ('Kenneth Branagh', 3, '');

INSERT INTO MelhorDiretor (nome, ID_Diretor, ID_MelhorDiretor_Voto_Soma)
VALUES ('Jane Campion', 1, '');

INSERT INTO MelhorDiretor (nome, ID_Diretor, ID_MelhorDiretor_Voto_Soma)
VALUES ('Steven Spielberg', 10, '');

INSERT INTO MelhorDiretor (nome, ID_Diretor, ID_MelhorDiretor_Voto_Soma)
VALUES ('Ryûsuke Hamaguchi', 6, '');

CREATE TABLE MelhorAtor (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Sexo VARCHAR(10),
ID_Ator INT,
ID_MelhorAtor_Voto_Soma INT
);

SELECT * FROM MelhorAtor;

INSERT INTO MelhorAtor (nome, sexo, ID_Ator, ID_MelhorAtor_Voto_Soma)
VALUES ('Javier Bardem', 'Masculino', 1, '');

INSERT INTO MelhorAtor (nome, sexo, ID_Ator, ID_MelhorAtor_Voto_Soma)
VALUES ('Benedict Cumberbatch', 'Masculino', 2, '');

INSERT INTO MelhorAtor (nome, sexo, ID_Ator, ID_MelhorAtor_Voto_Soma)
VALUES ('Andrew Garfield', 'Masculino', 3, '');

INSERT INTO MelhorAtor (nome, sexo, ID_Ator, ID_MelhorAtor_Voto_Soma)
VALUES ('Will Smith', 'Masculino', 4, '');

INSERT INTO MelhorAtor (nome, sexo, ID_Ator, ID_MelhorAtor_Voto_Soma)
VALUES ('Denzel Washington', 'Masculino', 5, '');

CREATE TABLE MelhorAtriz (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Sexo VARCHAR(10),
ID_Atriz INT,
ID_MelhorAtriz_Voto_Soma INT
);

SELECT * FROM MelhorAtriz;

INSERT INTO MelhorAtriz (nome, sexo, ID_Atriz, ID_MelhorAtriz_Voto_Soma)
VALUES ('Jessica Chastain', 'Feminino', 6, '');

INSERT INTO MelhorAtriz (nome, sexo, ID_Atriz, ID_MelhorAtriz_Voto_Soma)
VALUES ('Olivia Colman', 'Feminino', 7, '');

INSERT INTO MelhorAtriz (nome, sexo, ID_Atriz, ID_MelhorAtriz_Voto_Soma)
VALUES ('Kristen Stewart', 'Feminino', 8, '');

INSERT INTO MelhorAtriz (nome, sexo, ID_Atriz, ID_MelhorAtriz_Voto_Soma)
VALUES ('Penélope Cruz', 'Feminino', 9, '');

INSERT INTO MelhorAtriz (nome, sexo, ID_Atriz, ID_MelhorAtriz_Voto_Soma)
VALUES ('Nicole Kidman', 'Feminino', 10, '');

CREATE TABLE MelhorAtorCoadjuvante (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Ator INT,
ID_MelhorAtorCoadjuvante_Voto_Soma INT
);

SELECT * FROM MelhorAtorCoadjuvante;

INSERT INTO MelhorAtorCoadjuvante (nome, ID_Ator, ID_MelhorAtorCoadjuvante_Voto_Soma)
VALUES ('Ciarán Hinds', 11, '');

INSERT INTO MelhorAtorCoadjuvante (nome, ID_Ator, ID_MelhorAtorCoadjuvante_Voto_Soma)
VALUES ('Troy Kotsur', 12, '');

INSERT INTO MelhorAtorCoadjuvante (nome, ID_Ator, ID_MelhorAtorCoadjuvante_Voto_Soma)
VALUES ('Jesse PLemons', 13, '');

INSERT INTO MelhorAtorCoadjuvante (nome, ID_Ator, ID_MelhorAtorCoadjuvante_Voto_Soma)
VALUES ('J.K. Simmons', 14, '');

INSERT INTO MelhorAtorCoadjuvante (nome, ID_Ator, ID_MelhorAtorCoadjuvante_Voto_Soma)
VALUES ('Kodi Smit-McPhee', 15, '');

CREATE TABLE MelhorAtrizCoadjuvante (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Atriz INT,
ID_MelhorAtrizCoadjuvante_Voto_Soma INT
);

SELECT * FROM MelhorAtrizCoadjuvante;

INSERT INTO MelhorAtrizCoadjuvante (nome, ID_Atriz, ID_MelhorAtrizCoadjuvante_Voto_Soma)
VALUES ('Jessie Buckley', 16, '');

INSERT INTO MelhorAtrizCoadjuvante (nome, ID_Atriz, ID_MelhorAtrizCoadjuvante_Voto_Soma)
VALUES ('Ariana Debose', 17, '');

INSERT INTO MelhorAtrizCoadjuvante (nome, ID_Atriz, ID_MelhorAtrizCoadjuvante_Voto_Soma)
VALUES ('Judi Dench', 18, '');

INSERT INTO MelhorAtrizCoadjuvante (nome, ID_Atriz, ID_MelhorAtrizCoadjuvante_Voto_Soma)
VALUES ('Kirsten Dunst', 19, '');

INSERT INTO MelhorAtrizCoadjuvante (nome, ID_Atriz, ID_MelhorAtrizCoadjuvante_Voto_Soma)
VALUES ('Aunjanue Ellis', 20, '');

CREATE TABLE MelhorRoteiroOriginal (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorRoteiroOriginal_Voto_Soma INT
);

SELECT * FROM MelhorRoteiroOriginal;

INSERT INTO MelhorRoteiroOriginal (nome, ID_Filme, ID_MelhorRoteiroOriginal_Voto_Soma)
VALUES ('Belfast', 3, '');

INSERT INTO MelhorRoteiroOriginal (nome, ID_Filme, ID_MelhorRoteiroOriginal_Voto_Soma)
VALUES ('Não Olhe para Cima', 5, '');

INSERT INTO MelhorRoteiroOriginal (nome, ID_Filme, ID_MelhorRoteiroOriginal_Voto_Soma)
VALUES ('King Richard', 8, '');

INSERT INTO MelhorRoteiroOriginal (nome, ID_Filme, ID_MelhorRoteiroOriginal_Voto_Soma)
VALUES ('Licorice Pizza', 2, '');

INSERT INTO MelhorRoteiroOriginal (nome, ID_Filme, ID_MelhorRoteiroOriginal_Voto_Soma)
VALUES ('A Pior Pessoa do Mundo', 18, '');

CREATE TABLE MelhorRoteiroAdaptado (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorRoteiroAdaptado_Voto_Soma INT
);

SELECT * FROM MelhorRoteiroAdaptado;

INSERT INTO MelhorRoteiroAdaptado (Nome, ID_Filme, ID_MelhorRoteiroAdaptado_Voto_Soma)
VALUES ('No Ritmo do Coração', 4, '');

INSERT INTO MelhorRoteiroAdaptado (Nome, ID_Filme, ID_MelhorRoteiroAdaptado_Voto_Soma)
VALUES ('Drive My Car', 6, '');

INSERT INTO MelhorRoteiroAdaptado (Nome, ID_Filme, ID_MelhorRoteiroAdaptado_Voto_Soma)
VALUES ('Duna', 7, '');

INSERT INTO MelhorRoteiroAdaptado (Nome, ID_Filme, ID_MelhorRoteiroAdaptado_Voto_Soma)
VALUES ('A Filha Perdida', 15, '');

INSERT INTO MelhorRoteiroAdaptado (Nome, ID_Filme, ID_MelhorRoteiroAdaptado_Voto_Soma)
VALUES ('Ataque dos Cães', 1, '');

CREATE TABLE MelhorFilmeAnimacao (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorFilmeAnimacao_Voto_Soma INT
);

SELECT * FROM MelhorFilmeAnimacao;

INSERT INTO MelhorFilmeAnimacao (Nome, Tipo_De_Filme, ID_Filme, ID_MelhorFilmeAnimacao_Voto_Soma)
VALUES('Encanto', 'Animação/Família/Fantasia/Comédia', 19, '');

INSERT INTO MelhorFilmeAnimacao (Nome, Tipo_De_Filme, ID_Filme, ID_MelhorFilmeAnimacao_Voto_Soma)
VALUES('Luca', 'Animação/Família', 20, '');

INSERT INTO MelhorFilmeAnimacao (Nome, Tipo_De_Filme, ID_Filme, ID_MelhorFilmeAnimacao_Voto_Soma)
VALUES('Flee', 'Documentário/Animação', 21, '');

INSERT INTO MelhorFilmeAnimacao (Nome, Tipo_De_Filme, ID_Filme, ID_MelhorFilmeAnimacao_Voto_Soma)
VALUES('A Família Mitchell e a Revolta das Máquinas', 'Animação/Comédia/Família', 22, '');

INSERT INTO MelhorFilmeAnimacao (Nome, Tipo_De_Filme, ID_Filme, ID_MelhorFilmeAnimacao_Voto_Soma)
VALUES('Raya e o Último Dragão', 'Animação/Fantasia/Aventura', 23, '');


CREATE TABLE MelhorFilmeInternacional (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorFilmeInternacional_Voto_Soma INT
);

SELECT * FROM MelhorFilmeInternacional;

INSERT INTO MelhorFilmeInternacional (nome, Tipo_de_Filme, ID_Filme, ID_MelhorFilmeInternacional_Voto_Soma)
VALUES ('Drive My Car', 'Drama/Romance', 6, '');

INSERT INTO MelhorFilmeInternacional (nome, Tipo_de_Filme, ID_Filme, ID_MelhorFilmeInternacional_Voto_Soma)
VALUES ('Flee', 'Documentário/Animação', 21, '');

INSERT INTO MelhorFilmeInternacional (nome, Tipo_de_Filme, ID_Filme, ID_MelhorFilmeInternacional_Voto_Soma)
VALUES ('A Mão de Deus', 'Drama/Biopic', 24, '');

INSERT INTO MelhorFilmeInternacional (nome, Tipo_de_Filme, ID_Filme, ID_MelhorFilmeInternacional_Voto_Soma)
VALUES ('Lunana', 'Drama', 25, '');

INSERT INTO MelhorFilmeInternacional (nome, Tipo_de_Filme, ID_Filme, ID_MelhorFilmeInternacional_Voto_Soma)
VALUES ('A Pior Pessoa do Mundo', 'Drama/Comédia', 18, '');

CREATE TABLE MelhorDocumentarioLonga (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorDocumentarioLonga_Voto_Soma INT
);

SELECT * FROM MelhorDocumentarioLonga;

INSERT INTO MelhorDocumentarioLonga (nome, Tipo_de_Filme, ID_Filme, ID_MelhorDocumentarioLonga_Voto_Soma)
VALUES ('Ascension', 'Documentário', 26, '');

INSERT INTO MelhorDocumentarioLonga (nome, Tipo_de_Filme, ID_Filme, ID_MelhorDocumentarioLonga_Voto_Soma)
VALUES ('Attica', 'Documentário', 27, '');

INSERT INTO MelhorDocumentarioLonga (nome, Tipo_de_Filme, ID_Filme, ID_MelhorDocumentarioLonga_Voto_Soma)
VALUES ('Flee', 'Documentário/Animação', 21, '');

INSERT INTO MelhorDocumentarioLonga (nome, Tipo_de_Filme, ID_Filme, ID_MelhorDocumentarioLonga_Voto_Soma)
VALUES ('Summer of Soul', 'Documentário', 28, '');

INSERT INTO MelhorDocumentarioLonga (nome, Tipo_de_Filme, ID_Filme, ID_MelhorDocumentarioLonga_Voto_Soma)
VALUES ('Writing with Fire', 'Documentário', 29, '');

CREATE TABLE MelhorDocumentarioCurta (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorDocumentarioCurta_Voto_Soma INT
);

SELECT * FROM MelhorDocumentarioCurta;

INSERT INTO MelhorDocumentarioCurta (nome, Tipo_De_Filme, ID_Filme, ID_MelhorDocumentarioCurta_Voto_Soma)
VALUES ('Audible', 'Documentário', 30, '');

INSERT INTO MelhorDocumentarioCurta (nome, Tipo_De_Filme, ID_Filme, ID_MelhorDocumentarioCurta_Voto_Soma)
VALUES ('Lead Me Home', 'Documentário', 31, '');

INSERT INTO MelhorDocumentarioCurta (nome, Tipo_De_Filme, ID_Filme, ID_MelhorDocumentarioCurta_Voto_Soma)
VALUES ('The Queen of Basketball', 'Documentário', 32, '');

INSERT INTO MelhorDocumentarioCurta (nome, Tipo_De_Filme, ID_Filme, ID_MelhorDocumentarioCurta_Voto_Soma)
VALUES ('Three Songs for Ben Azir', 'Documentário', 33, '');

INSERT INTO MelhorDocumentarioCurta (nome, Tipo_De_Filme, ID_Filme, ID_MelhorDocumentarioCurta_Voto_Soma)
VALUES ('When We Were Bullies', 'Documentário', 34, '');

CREATE TABLE MelhorCurtaLiveAction (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorCurtaLiveAction_Voto_Soma INT
);

CREATE TABLE MelhorCurtaAnimacao (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorCurtaAnimacao_Voto_Soma INT
);

CREATE TABLE MelhorTrilhaSonora (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Tipo_de_Filme VARCHAR(255),
ID_Filme INT,
ID_MelhorTrilhaSonora_Voto_Soma INT
);

CREATE TABLE MelhorCancaoOriginal (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorCancaoOriginal_Voto_Soma INT
);

CREATE TABLE MelhorSom (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorSom_Voto_Soma INT
);

CREATE TABLE MelhorDesignProducao (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorDesignProducao_Voto_Soma INT
);

CREATE TABLE MelhorFotografia (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorFotografia_Voto_Soma INT
);

CREATE TABLE MelhorMaquiagemPenteados (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorMaquiagemPenteados_Voto_Soma INT
);

CREATE TABLE MelhorFigurino (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorFigurino_Voto_Soma INT
);

CREATE TABLE MelhorEdicao (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhorEdicao_Voto_Soma INT
);

CREATE TABLE MelhoresEfeitosVisuais (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
ID_Filme INT,
ID_MelhoresEfeitosVisuais_Voto_Soma INT
);

CREATE TABLE CadastroUsuario (
ID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
Idade INT,
Sexo VARCHAR(10),
Data_de_Nascimento DATE,
Senha VARCHAR(255),
Usuario VARCHAR(255)
);

CREATE TABLE Votacao (
ID INT PRIMARY KEY AUTO_INCREMENT,
Cadastro_Usuario INT,
ID_MelhorFilme_Voto INT,
ID_MelhorDiretor_Voto INT,
ID_MelhorAtor_Voto INT,
ID_MelhorAtriz_Voto INT,
ID_MelhorAtorCoadjuvante_Voto INT,
ID_MelhorAtrizCoadjuvante_Voto INT,
ID_MelhorRoteiroOriginal_Voto INT,
ID_MelhorRoteiroAdaptado_Voto INT,
ID_MelhorFilmeAnimacao_Voto INT,
ID_MelhorFilmeInternacional_Voto INT,
ID_MelhorDocumentarioLonga_Voto INT,
ID_MelhorDocumentarioCurta_Voto INT,
ID_MelhorCurtaLiveAction_Voto INT,
ID_MelhorCurtaAnimacao_Voto INT,
ID_MelhorTrilhaSonora_Voto INT,
ID_MelhorCancaoOriginal_Voto INT,
ID_MelhorSom_Voto INT,
ID_MelhorDesignProducao_Voto INT,
ID_MelhorFotografia_Voto INT,
ID_MelhorMaquiagemPenteados_Voto INT,
ID_MelhorFigurino_Voto INT,
ID_MelhorEdicao_Voto INT,
ID_MelhoresEfeitosVisuais_Voto INT
);

-- MelhorCurtaLiveAction
INSERT INTO MelhorCurtaLiveAction (Nome, Tipo_de_Filme, ID_Filme, ID_MelhorCurtaLiveAction_Voto_Soma)
VALUES
('Ala Kachuu – Take and Run', 'Curta-Metragem', 36, NULL),
('The Dress', 'Curta-Metragem', (SELECT ID FROM Filmes WHERE Nome = 'The Dress'), NULL),
('The Long Goodbye', 'Curta-Metragem', (SELECT ID FROM Filmes WHERE Nome = 'The Long Goodbye'), NULL),
('On My Mind', 'Curta-Metragem', (SELECT ID FROM Filmes WHERE Nome = 'On My Mind'), NULL),
('Please Hold', 'Curta-Metragem', (SELECT ID FROM Filmes WHERE Nome = 'Please Hold'), NULL);

-- MelhorCurtaAnimacao
INSERT INTO MelhorCurtaAnimacao (Nome, Tipo_de_Filme, ID_Filme, ID_MelhorCurtaAnimacao_Voto_Soma)
VALUES
('Affairs of the Art', 'Curta-Animação', (SELECT ID FROM Filmes WHERE Nome = 'Affairs of the Art'), NULL),
('Bestia', 'Curta-Animação', (SELECT ID FROM Filmes WHERE Nome = 'Bestia'), NULL),
('Robin Robin', 'Curta-Animação', (SELECT ID FROM Filmes WHERE Nome = 'Robin Robin'), NULL),
('Boxballet', 'Curta-Animação', (SELECT ID FROM Filmes WHERE Nome = 'Boxballet'), NULL),
('The Windshield Wiper', 'Curta-Animação', (SELECT ID FROM Filmes WHERE Nome = 'The Windshield Wiper'), NULL);

-- MelhorTrilhaSonora
INSERT INTO MelhorTrilhaSonora (Nome, Tipo_de_Filme, ID_Filme, ID_MelhorTrilhaSonora_Voto_Soma)
VALUES
('Não Olhe para Cima', 'Comédia', (SELECT ID FROM Filmes WHERE Nome = 'Não Olhe para Cima'), NULL),
('Duna', 'Ficção Científica/Drama', (SELECT ID FROM Filmes WHERE Nome = 'Duna'), NULL),
('Encanto', 'Animação/Família/Fantasia/Comédia', (SELECT ID FROM Filmes WHERE Nome = 'Encanto'), NULL),
('Madres Paralelas', 'Drama', (SELECT ID FROM Filmes WHERE Nome = 'Madres Paralelas'), NULL),
('Ataque dos Cães', 'Drama', (SELECT ID FROM Filmes WHERE Nome = 'Ataque dos Cães'), NULL);

-- MelhorCancaoOriginal
INSERT INTO MelhorCancaoOriginal (Nome, ID_Filme, ID_MelhorCancaoOriginal_Voto_Soma)
VALUES
('Be Alive', (SELECT ID FROM Filmes WHERE Nome = 'King Richard: Criando Campeãs'), NULL),
('Dos Oruguitas', (SELECT ID FROM Filmes WHERE Nome = 'Encanto'), NULL),
('Down To Joy', (SELECT ID FROM Filmes WHERE Nome = 'Belfast'), NULL),
('No Time To Die', (SELECT ID FROM Filmes WHERE Nome = '007 – Sem Tempo para Morrer'), NULL),
('Somehow You Do', (SELECT ID FROM Filmes WHERE Nome = 'Four Good Days'), NULL);

-- MelhorSom
INSERT INTO MelhorSom (Nome, ID_Filme, ID_MelhorSom_Voto_Soma)
VALUES
('Belfast', (SELECT ID FROM Filmes WHERE Nome = 'Belfast'), NULL),
('Duna', (SELECT ID FROM Filmes WHERE Nome = 'Duna'), NULL),
('007 – Sem Tempo para Morrer', (SELECT ID FROM Filmes WHERE Nome = '007 – Sem Tempo para Morrer'), NULL),
('Ataque dos Cães', (SELECT ID FROM Filmes WHERE Nome = 'Ataque dos Cães'), NULL),
('Amor, Sublime Amor', (SELECT ID FROM Filmes WHERE Nome = 'Amor, Sublime Amor'), NULL);

-- MelhorDesignProducao
INSERT INTO MelhorDesignProducao (Nome, ID_Filme, ID_MelhorDesignProducao_Voto_Soma)
VALUES
('Duna', (SELECT ID FROM Filmes WHERE Nome = 'Duna'), NULL),
('Ataque dos Cães', (SELECT ID FROM Filmes WHERE Nome = 'Ataque dos Cães'), NULL),
('O Beco do Pesadelo', (SELECT ID FROM Filmes WHERE Nome = 'O Beco do Pesadelo'), NULL),
('A Tragédia de MacBeth', (SELECT ID FROM Filmes WHERE Nome = 'A Tragédia de MacBeth'), NULL),
('Amor, Sublime Amor', (SELECT ID FROM Filmes WHERE Nome = 'Amor, Sublime Amor'), NULL);

-- MelhorFotografia
INSERT INTO MelhorFotografia (Nome, ID_Filme, ID_MelhorFotografia_Voto_Soma)
VALUES
('Greig Fraser (Duna)', (SELECT ID FROM Filmes WHERE Nome = 'Duna'), NULL),
('Dan Lautsen (O Beco do Pesadelo)', (SELECT ID FROM Filmes WHERE Nome = 'O Beco do Pesadelo'), NULL),
('Ari Wegner (Ataque dos Cães)', (SELECT ID FROM Filmes WHERE Nome = 'Ataque dos Cães'), NULL),
('Bruno Delbonnel (A Tragédia de Macbeth)', (SELECT ID FROM Filmes WHERE Nome = 'A Tragédia de Macbeth'), NULL),
('Janusz Kominski (Amor, Sublime Amor)', (SELECT ID FROM Filmes WHERE Nome = 'Amor, Sublime Amor'), NULL);

-- MelhorMaquiagemPenteados
INSERT INTO MelhorMaquiagemPenteados (Nome, ID_Filme, ID_MelhorMaquiagemPenteados_Voto_Soma)
VALUES
('Um Príncipe em Nova York 2', (SELECT ID FROM Filmes WHERE Nome = 'Um Príncipe em Nova York 2'), NULL),
('Cruella', (SELECT ID FROM Filmes WHERE Nome = 'Cruella'), NULL),
('Duna', (SELECT ID FROM Filmes WHERE Nome = 'Duna'), NULL),
('Os Olhos de Tammy Faye', (SELECT ID FROM Filmes WHERE Nome = 'Os Olhos de Tammy Faye'), NULL),
('Casa Gucci', (SELECT ID FROM Filmes WHERE Nome = 'Casa Gucci'), NULL);

-- MelhorFigurino
INSERT INTO MelhorFigurino (Nome, ID_Filme, ID_MelhorFigurino_Voto_Soma)
VALUES
('Cruella', (SELECT ID FROM Filmes WHERE Nome = 'Cruella'), NULL),
('Cyrano', (SELECT ID FROM Filmes WHERE Nome = 'Cyrano'), NULL),
('Duna', (SELECT ID FROM Filmes WHERE Nome = 'Duna'), NULL),
('O Beco do Pesadelo', (SELECT ID FROM Filmes WHERE Nome = 'O Beco do Pesadelo'), NULL),
('Amor, Sublime Amor', (SELECT ID FROM Filmes WHERE Nome = 'Amor, Sublime Amor'), NULL);

-- MelhorEdicao
INSERT INTO MelhorEdicao (Nome, ID_Filme, ID_MelhorEdicao_Voto_Soma)
VALUES
('Não Olhe para Cima', (SELECT ID FROM Filmes WHERE Nome = 'Não Olhe para Cima'), NULL),
('Duna', (SELECT ID FROM Filmes WHERE Nome = 'Duna'), NULL),
('King Richard: Criando Campeãs', (SELECT ID FROM Filmes WHERE Nome = 'King Richard: Criando Campeãs'), NULL),
('Ataque dos Cães', (SELECT ID FROM Filmes WHERE Nome = 'Ataque dos Cães'), NULL),
('Tick, Tick… Boom!', (SELECT ID FROM Filmes WHERE Nome = 'Tick, Tick… Boom!'), NULL);

-- MelhoresEfeitosVisuais
INSERT INTO MelhoresEfeitosVisuais (Nome, ID_Filme, ID_MelhoresEfeitosVisuais_Voto_Soma)
VALUES
('Duna', (SELECT ID FROM Filmes WHERE Nome = 'Duna'), NULL),
('Free Guy', (SELECT ID FROM Filmes WHERE Nome = 'Free Guy'), NULL),
('007 – Sem Tempo para Morrer', (SELECT ID FROM Filmes WHERE Nome = '007 – Sem Tempo para Morrer'), NULL),
('Shang-Chi e a Lenda dos Dez Anéis', (SELECT ID FROM Filmes WHERE Nome = 'Shang-Chi e a Lenda dos Dez Anéis'), NULL),
('Homem-Aranha: Sem Volta para Casa', (SELECT ID FROM Filmes WHERE Nome = 'Homem-Aranha: Sem Volta para Casa'), NULL);
