/*
Liste o nome e o departamento de todos os funcionários que ganham mais do que algum gerente.
*/
CREATE OR REPLACE VIEW gerentes
 AS
select f.nome as nome_gerente, d.codigo as dep_gerente, f.salario as salario_gerente from departamento d, funcionario f
where d.gerente = f.codigo;

select f.nome, d.sigla from funcionario f, departamento d, gerentes ge
where f.salario > ge.salario_gerente and d.codigo = ge.dep_gerente and f.depto = d.codigo;