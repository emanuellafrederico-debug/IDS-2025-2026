SELECT * FROM funcionario;
SELECT * FROM departamento;
SELECT * FROM projeto;


/*
SELECT funcionario.nome_funcionario, departamento.nome_depto FROM funcionario 
LEFT JOIN departamento ON funcionario.sigla_depto = departamento.sigla_depto;

 SELECT funcionario.nome_funcionario, departamento.nome_depto 
FROM funcionario RIGHT JOIN departamento
ON funcionario.sigla_depto = departamento.sigla_depto;

SELECT funcionario.nome_funcionario, departamento.nome_depto
FROM funcionario LEFT JOIN departamento
ON funcionario.sigla_depto = departamento.sigla_depto
UNION
SELECT funcionario.nome_funcionario, departamento.nome_depto
FROM funcionario RIGHT JOIN departamento
ON funcionario.sigla_depto = departamento.sigla_depto; */



/*1)Liste o nome do funcionário e o nome do departamento em que eles
trabalham (inner join).*/

SELECT f.nome_funcionario, d.nome_depto FROM funcionario f JOIN departamento d ON f.sigla_depto = d.sigla_depto;


/*2)Liste o nome do projeto e o nome do departamento que supervisiona
o projeto*/

SELECT p.nome_projeto, d.nome_depto FROM projeto p JOIN departamento d ON p.sigla_depto = d.sigla_depto;


/*3) Liste os nomes dos funcionários e o nome dos projetos em que eles
trabalham apenas para o departamento de Vendas (inner join).*/

SELECT f.nome_funcionario, d.nome_depto FROM funcionario f JOIN departamento d ON f.sigla_depto = d.sigla_depto WHERE d.sigla_depto = "Vendas";


/*4) Liste todos os funcionários e seus projetos, mesmo que eles não
estejam associados a nenhum projeto (left join).*/

SELECT f.nome_funcionario, p.nome_projeto FROM funcionario f LEFT JOIN projeto p ON f.codigo_funcionario = p.codigo_funcionario;


/*5) Liste todos os departamentos e seus funcionários, mesmo que alguns
não tenham funcionários, ordene o nome do departamento de forma
crescente (left join).*/

SELECT d, f.nome_funcionario FROM departamento d LEFT JOIN funcionario f ON d.sigla_depto = f.sigla_depto;


/*6) Liste cada departamento e a quantidade de projetos supervisionados
por ele. obs.: Departamentos sem projetos também devem aparecer
com total igual a 0. (left join).*/

SELECT d.nome_depto, COUNT(p.nome_projeto) FROM departamento d LEFT JOIN projeto p ON d.sigla_depto = p.sigla_depto GROUP BY d.nome_depto;


/*7) Liste todos os departamentos que possuem funcionários e mostre o
salário médio dos seus funcionários (rigth join).*/

SELECT d.nome_depto, ROUND(AVG(f.salario)) AS media_salarial FROM departamento d 
RIGHT JOIN funcionario f ON d.sigla_depto = f.sigla_depto WHERE d.sigla_depto IS NOT NULL GROUP BY d.nome_depto;


/*8) Liste todos os departamentos e a quantidade de funcionários
vinculados a cada um, garantindo que funcionários sem departamento
também apareçam na contagem geral (rigth join).*/

SELECT d.nome_depto, COUNT(f.codigo_funcionario) AS total_funcionarios FROM departamento d RIGHT JOIN funcionario f ON d.sigla_depto = f.sigla_depto GROUP BY d.nome_depto ORDER BY total_funcionarios;


/*9) Liste cada funcionário e a quantidade de outros funcionários que
ganham mais do que ele. Considere apenas funcionários que possuem
pelo menos um colega com salário maior (cross join).*/

SELECT f1.nome_funcionario AS funcionario, f2.nome_funcionario AS funcionario2 FROM funcionario f1
CROSS JOIN funcionario f2 WHERE f1.salario < f2.salario;


/*10) Exiba os funcionários que ganham mais que seus colegas do mesmo
departamento (self join).*/

SELECT f1.nome_funcionario AS funcionario1, f2.nome_funcionario AS funcionario2, f1.sigla_depto AS departamento FROM funcionario AS f1 
JOIN funcionario AS f2 ON f1.sigla_depto = f2.sigla_depto WHERE f1.salario < f2.salario AND f1.sigla_depto = f2.sigla_depto;


/*11) Liste todos os funcionários e o nome dos projetos em que
trabalham, bem como todos os projetos e o nome dos funcionários
associados a eles (full join).*/

SELECT f.nome_funcionario, p.nome_projeto FROM funcionario f LEFT JOIN projeto p ON f.codigo_funcionario = p.codigo_funcionario
UNION
SELECT f.nome_funcionario, p.nome_projeto FROM funcionario f RIGHT JOIN projeto p ON f.codigo_funcionario = p.codigo_funcionario;