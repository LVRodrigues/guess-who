--==============================================================================
-- Cria os usuários para o banco de dados.
-- Esse script deve ser executado com usuário DBA.
-- Não é incorporado ao Docker.
--==============================================================================

CREATE USER "guess-admim" WITH
	NOCREATEDB
	CREATEROLE
	ENCRYPTED PASSWORD 'guess-pass';
COMMENT ON ROLE "guess-admin"
	IS 'Usuário administrador do Banco de Dados para o aplicativo Guess Who?';

CREATE USER "guess-user" WITH
	NOCREATEDB
	NOCREATEROLE
	ENCRYPTED PASSWORD 'guess-pass';
COMMENT ON ROLE "guess-user"
	IS 'Usuário de operação do Banco de Dados para o aplicativo Guess Who?';

--==============================================================================
-- Regras de acesso
--==============================================================================
CREATE ROLE "guess-access";
COMMENT ON ROLE "guess-access" IS 'Regras para os usuários de operação utilizarem o aplicativo Guess Who?.';
