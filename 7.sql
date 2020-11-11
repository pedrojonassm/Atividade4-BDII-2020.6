/*
Faça uma função para calcular quantas atividades um membro de equipe fez no projeto.
*/
CREATE OR REPLACE FUNCTION total_atividades_membro(codProjeto INTEGER) 
RETURNS integer AS $$
DECLARE
	total_atividades integer;
BEGIN
	select into total_atividades count(*) from funcionario f, atividade_membro am where am.codmembro = f.codigo;
	return total_atividades;
END;
$$ LANGUAGE 'plpgsql';

select total_atividades_membro('1');