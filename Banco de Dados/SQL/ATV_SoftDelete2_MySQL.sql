SELECT * FROM disciplina;
SELECT * FROM curso;
SELECT * FROM professor;
SELECT * FROM aula;

-- 1
SELECT nome FROM disciplina WHERE nome LIKE "%Web%";

-- 2
UPDATE disciplina SET disciplina_status = 0 WHERE id = 2;

-- 3
SELECT nome FROM disciplina WHERE nome LIKE "%Web%" AND disciplina_status = "1";

-- 4
UPDATE professor SET professor_status = 0 WHERE id = 3;

-- 5
SELECT professor_status FROM professor  WHERE id = 3;

-- 6
SELECT c.nome, COUNT(d.id) AS qtd_disciplinas_cadastradas FROM curso c INNER JOIN disciplina d ON d.codigo_curso = c.id WHERE curso_status = '1' GROUP BY c.nome;

-- 7
SELECT d.nome, au.data_aula FROM disciplina d LEFT JOIN aula au ON d.id = au.id_disciplina ORDER BY d.nome;

-- 8
-- SELECT au.id, d.nome FROM aula au LEFT JOIN disciplina d ON d.id = au.id_professor ORDER BY au.data_aula;
SELECT au.id, d.nome AS nome_disciplina , p.nome AS nome_professor FROM aula au INNER JOIN disciplina d ON d.id = au.id_disciplina INNER JOIN professor p ON p.id = id_professor ORDER BY data_aula;

-- 9
UPDATE aula au SET au.aula_status = 0 WHERE id = 1 OR id = 5;

-- 10
SELECT au.id, d.nome AS nome_disciplina , p.nome AS nome_professor FROM aula au INNER JOIN disciplina d ON d.id = au.id_disciplina INNER JOIN professor p ON p.id = id_professor WHERE aula_status = 1;

-- 11
SELECT p.nome, COUNT(au.id) AS qtd_aulas_ministradas FROM professor p INNER JOIN aula au ON p.id = au.id_professor WHERE aula_status = "1" GROUP BY p.nome;

-- 12
SELECT d.nome, COUNT(MAX(d.id)) AS aulas_ministradas FROM disciplina d INNER JOIN aula au ON au.id = au.id_disciplina GROUP BY d.nome HAVING qtd_semestre >=1;

-- 13

-- 14
SELECT d.nome, COUNT(MAX(d.id)) AS aulas_ministradas FROM disciplina d INNER JOIN aula au ON au.id = au.id_disciplina GROUP BY d.nome;

-- 15