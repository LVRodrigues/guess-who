--==============================================================================
-- Cria os usuários para o banco de dados.
-- Esse script deve ser executado com usuário DBA.
-- É incorporado ao Docker, em substituição do arquivo 001-users.sql.
--==============================================================================

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
