SELECT * FROM departamento;
SELECT * FROM funcionario;
SELECT * FROM projeto;

-- EX
SELECT nome_funcionario, salario FROM funcionario WHERE salario = (SELECT MAX(salario) FROM funcionario); 

-- 1
SELECT nome_funcionario, sigla_depto FROM funcionario WHERE sigla_depto LIKE (SELECT sigla_depto FROM departamento WHERE nome_depto LIKE "Recursos Humanos");

-- 2
SELECT nome_funcionario, sigla_depto FROM funcionario WHERE sigla_depto IN (SELECT sigla_depto FROM projeto WHERE sigla_depto LIKE "MKT" OR "JUR" OR "COM");

-- 3
SELECT nome_depto, (SELECT SUM(salario) FROM funcionario f WHERE f.sigla_depto = d.sigla_depto) AS soma_total FROM departamento d; 

-- 4
SELECT nome_funcionario, sigla_depto FROM funcionario WHERE sigla_depto = "TI" AND salario >= (SELECT AVG(salario) FROM funcionario);

-- 5
SELECT nome_depto, qtd_funcionarios_depto FROM departamento WHERE EXISTS (SELECT COUNT(qtd_funcionarios_depto) FROM departamento);

-- 6
SELECT nome_funcionario, sigla_depto FROM funcionario WHERE sigla_depto IN (SELECT sigla_depto FROM departamento WHERE qtd_funcionarios_depto > 3 GROUP BY sigla_depto);

-- 7
SELECT nome_funcionario, sigla_depto FROM funcionario WHERE sigla_depto IN (SELECT sigla_depto FROM departamento WHERE qtd_funcionarios_depto > 3 GROUP BY sigla_depto HAVING (AVG(salario)> 4000));

-- 8
SELECT nome_funcionario, sigla_depto FROM funcionario WHERE sigla_depto IN (SELECT sigla_depto FROM funcionario GROUP BY sigla_depto HAVING (SUM(salario)> 20000));

-- 9
-- SELECT nome_funcionario, sigla_depto FROM funcionario WHERE sigla_depto  IN (SELECT sigla_depto FROM funcionario WHERE salario BETWEEN 
SELECT MAX(salario) AND MIN(salario) FROM sigla_depto
