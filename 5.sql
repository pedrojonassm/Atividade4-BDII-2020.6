CREATE OR REPLACE FUNCTION proj_atrasado(codProjeto INTEGER) 
RETURNS INTERVAL AS $$
DECLARE
	fim DATE;
	hoje timestamp;
	diasAtraso INTERVAL;
BEGIN
	select into hoje NOW(); 
	select into fim datafim from projeto where codigo = codProjeto;
	diasAtraso = fim - hoje;
	return diasAtraso;
END;
$$ LANGUAGE 'plpgsql';

SELECT proj_atrasado('1');