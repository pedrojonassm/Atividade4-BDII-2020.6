CREATE OR REPLACE FUNCTION idade_media_depto(codDep INTEGER) RETURNS INTEGER 
	AS $$
DECLARE
	media INTEGER;
BEGIN
	SELECT into media AVG(EXTRACT(years FROM AGE(f.datanasc))) FROM funcionario f WHERE f.depto = codDep;
	return media;
END;
$$ LANGUAGE 'plpgsql';

SELECT idade_media_depto(1);
