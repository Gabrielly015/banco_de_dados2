CREATE DATABASE tb_lista1;
USE tb_lista1;

INSERT INTO Livros (titulo, autor, ano_publicacao, disponibilidade, categoria, isbn, editora, paginas, idioma)
VALUES ('As Crônicas de Nárnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Inglês');

INSERT INTO Livros (titulo, autor, ano_publicacao, disponibilidade, categoria, isbn, editora, paginas, idioma)
VALUES 
('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, TRUE, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, TRUE, 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, TRUE, 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');

INSERT INTO Livros (titulo, autor, ano_publicacao, disponibilidade, categoria, isbn, editora, paginas, idioma)
VALUES ('História do Mundo', 'Autor Fictício', 2023, TRUE, 'História', '978-1234567890', 'Editora Fictícia', 350, 'Inglês');

UPDATE Livros
SET disponibilidade = FALSE
WHERE ano_publicacao < 2000;

UPDATE Livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

UPDATE Livros
SET idioma = 'Inglês'
WHERE editora = 'Penguin Books';

UPDATE Livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE isbn = '978-0439708180';

DELETE FROM Livros
WHERE categoria = 'Terror';

DELETE FROM Livros
WHERE idioma = 'Francês' AND ano_publicacao < 1970;


DELETE FROM Livros
WHERE titulo = 'As Crônicas de Nárnia';

DELETE FROM Livros
WHERE editora = 'Penguin Books';

SELECT * FROM Livros
WHERE paginas > 500;

SELECT categoria, COUNT(*) as total_livros
FROM Livros
GROUP BY categoria;

SELECT * FROM Livros
ORDER BY id
LIMIT 5;

SELECT SUM(paginas) as total_paginas, COUNT(*) as total_livros, AVG(paginas) as media_paginas
FROM Livros
WHERE categoria = 'Drama';

SELECT AVG(ano_publicacao) as media_ano_publicacao
FROM Livros
WHERE disponibilidade = TRUE;

SELECT * FROM Livros
ORDER BY ano_publicacao DESC
LIMIT 1;

SELECT * FROM Livros
ORDER BY ano_publicacao ASC
LIMIT 1;

SELECT * FROM Livros
ORDER BY ano_publicacao DESC;

SELECT titulo FROM Livros
WHERE idioma = 'Inglês'
UNION
SELECT titulo FROM Livros
WHERE idioma = 'Português';

SELECT * FROM Livros
WHERE autor = 'George Orwell';
