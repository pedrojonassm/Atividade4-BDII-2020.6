-- Faça um procedimento para exibir a equipe de um projeto, exibindo o nome do funcionário, a sigla do departamento.


CREATE OR REPLACE PROCEDURE equipe_proj()
AS $$
BEGIN
	select e.nomeequipe, f.nome, d.sigla from projeto proj, equipe e, departamento d, funcionario f
	where proj.equipe = e.codigo and d.codigo = proj.depto and f.codigo = proj.responsavel;
END;
$$ LANGUAGE plpgsql;

call equipe_proj();