SELECT * FROM disciplina;

-- 1
SELECT nome FROM disciplina WHERE nome LIKE "%Web%";

-- 2
UPDATE disciplina SET disciplina_status = 0 WHERE id = "2";

-- 3
SELECT nome FROM disciplina WHERE nome LIKE "%Web%" AND disciplina_status = "1";

-- 4
UPDATE professor SET professor_status = 0 WHERE id = "3";

-- 5
SELECT professor_status FROM professor  WHERE id = "3";

-- 6
SELECT c.nome, COUNT(d.id) AS qtd_disciplinas_cadastradas FROM curso c INNER JOIN disciplina d ON d.codigo_curso = c.id WHERE curso_status = '1' GROUP BY c.nome;

-- 7
SELECT a.data_aula, d.nome FROM disciplina d LEFT JOIN aula a ON d.id = a.id_disciplina ORDER BY d.nome;