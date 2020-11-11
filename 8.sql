/*
Faça uma função para calcular a porcentagem de atividades que um membro de equipe fez no projeto.
*/

CREATE OR REPLACE FUNCTION public.quantas_atividades_projeto(cod_proj integer)
    RETURNS integer
    LANGUAGE 'plpgsql'    
AS $BODY$
DECLARE
	total INTEGER;
BEGIN
	select into total count(*) as total_atividades from projeto proj, atividade_projeto atv where atv.codprojeto = proj.codigo and proj.codigo = cod_proj;
	return total;
END;
$BODY$;

select total_atividades_membro(proj.codigo)/quantas_atividades_projeto(proj.codigo) as porcentagem from projeto proj;

