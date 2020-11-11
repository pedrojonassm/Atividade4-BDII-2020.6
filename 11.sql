/*
Crie um usuário chamado empresa_admim para o banco de dados EmpresaDB.
Este usuário deve ter todos os privilégios mas com acesso remoto.
*/

CREATE USER empresa_admim_local WITH ENCRYPTED PASSWORD 'senha';
GRANT ALL PRIVILEGES ON DATABASE EmpresaDB TO empresa_admim_local;