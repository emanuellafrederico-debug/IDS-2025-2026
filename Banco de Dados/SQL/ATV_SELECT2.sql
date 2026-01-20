SELECT * FROM departamento;
SELECT * FROM funcionario;

SELECT DISTINCT * FROM funcionario ORDER BY cargo DESC;

SELECT * FROM departamento ORDER BY sigla_depto DESC;

SELECT nome_depto, qtd_funcionarios_depto FROM departamento WHERE qtd_funcionarios_depto > 2;

SELECT nome_funcionario, salario FROM funcionario WHERE salario >= "4000";

SELECT sigla_depto, ROUND(AVG(salario), 2) AS media_salarial FROM funcionario GROUP BY sigla_depto;

SELECT nome_funcionario FROM funcionario WHERE nome_funcionario LIKE "%Gomes%";

SELECT nome_funcionario, SUM(salario*12) AS salario_anual FROM funcionario GROUP BY nome_funcionario;

SELECT MAX(salario) AS maior_salario FROM funcionario;

SELECT salario AS maior_salario FROM funcionario ORDER BY salario DESC LIMIT 2;

SELECT cargo, nome_funcionario, data_admissao FROM funcionario WHERE (cargo, data_admissao) IN (SELECT cargo, MIN(data_admissao) FROM funcionario GROUP BY cargo);

SELECT nome_depto FROM departamento WHERE sigla_depto IN (SELECT sigla_depto FROM funcionario WHERE salario > "5000");

SELECT nome_depto FROM departamento WHERE sigla_depto IN (SELECT sigla_depto FROM funcionario WHERE salario > (SELECT AVG(salario) FROM funcionario));

-- SELECT sigla_depto, nome_funcionario FROM funcionario WHERE nome_funcionario LIKE "%Costa%" ORDER BY nome_funcionario;
SELECT nome_depto FROM departamento WHERE sigla_depto IN (SELECT sigla_depto FROM funcionario WHERE nome_funcionario LIKE "%Costa%");

-- SELECT sigla_depto, nome_funcionario, salario FROM funcionario WHERE salario > ALL(SELECT AVG(salario) FROM funcionario GROUP BY sigla_depto);
SELECT nome_depto FROM departamento WHERE sigla_depto IN (SELECT sigla_depto FROM funcionario WHERE salario > (SELECT AVG(salario) FROM sigla_depto));