CREATE TABLE emprestimos(
    id SERIAL PRIMARY KEY,
    livro VARCHAR(70) NOT NULL,
    id_aluno INT REFERENCES alunos(id) NOT NULL
);

CREATE TABLE alunos(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

INSERT INTO alunos(nome) VALUES
('Vinicius'),
('Lucas'),
('Gabriel'),
('Jorge'),
('Eduardo'),
('Arthur'),
('Jose'),
('Ana'),
('Joao'),
('Antonio'),
('Franci'),
('Pedro'),
('Carlos'),
('Lucas'),
('Luiz');

INSERT INTO emprestimos (livro, id_aluno) VALUES
    ('Dom Casmurro', 1),
    ('O Cortiço', 2),
    ('Memórias Póstumas de Brás Cubas', 3),
    ('Iracema', 4),
    ('Vidas Secas', 5),
    ('Capitães da Areia', 6),
    ('O Alienista', 7),
    ('A Moreninha', 8),
    ('Senhora', 9),
    ('Macunaíma', 10);

SELECT * FROM alunos;
SELECT * FROM emprestimos;

SELECT alunos.nome, emprestimos.livro FROM alunos INNER JOIN emprestimos ON alunos.id = emprestimos.id_aluno;

SELECT alunos.nome, emprestimos.livro
FROM alunos LEFT JOIN emprestimos ON emprestimos.id_aluno = alunos.id;

SELECT alunos.nome, emprestimos.livro  from alunos LEFT JOIN emprestimos ON emprestimos.id_aluno = alunos.id WHERE emprestimos.id ISNULL;