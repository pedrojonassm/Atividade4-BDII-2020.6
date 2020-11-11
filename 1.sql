DROP FUNCTION IF EXISTS idade_func cascade;

CREATE FUNCTION idade_func(INTEGER) RETURNS INTEGER
	AS $$
DECLARE
	idade INTEGER;
BEGIN
	SELECT INTO idade EXTRACT(years FROM AGE(f.datanasc)) FROM funcionario f WHERE f.codigo = $1;
	return idade;
END;
$$ LANGUAGE plpgsql;

SELECT idade_func(1);