--==============================================================================
-- Cria o banco de dados e associa aos usuários criados pelo script 001.
-- Esse script deve ser executado com usuário DBA.
-- Não deve ser incorporado ao Docker.
--==============================================================================

CREATE TABLESPACE "guess-who"
  OWNER "guess-admin"
  LOCATION '/var/lib/postgresql/guess-who';
COMMENT ON TABLESPACE "guess-who"
  IS 'Área de Dados para o aplicativo Guess Who?.';

CREATE DATABASE "guess-who"
  WITH OWNER = "guess-admin"
       ENCODING = 'UTF8'
       TABLESPACE = "guess-who"
       CONNECTION LIMIT = -1;
COMMENT ON DATABASE "guess-who"
  IS 'Banco de Dados do aplicativo Guess Who?.';
