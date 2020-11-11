CREATE OR REPLACE FUNCTION atv_atrasada(codAtividade INTEGER) 
RETURNS INTERVAL AS $$
DECLARE
	fim DATE;
	hoje timestamp;
	diasAtraso INTERVAL;
BEGIN
	select into hoje NOW(); 
	select into fim datafim from atividade where codigo = codAtividade;
	diasAtraso = fim - hoje;
	return diasAtraso;
END;
$$ LANGUAGE 'plpgsql';

SELECT atv_atrasada('1');