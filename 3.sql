
CREATE OR REPLACE PROCEDURE idade_acima_media()
AS $$
BEGIN
	select nome from funcionario f where idade_func(f.codigo) > idade_media_depto(f.depto);
END;
$$ LANGUAGE plpgsql;

call idade_acima_media();