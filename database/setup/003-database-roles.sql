--==============================================================================
-- Permissões de acesso dos usuários ao Banco de Dados, criado pelo script 002.
-- Esse script deve ser executado com usuário DBA.
--==============================================================================

GRANT CONNECT, TEMPORARY ON DATABASE "guess-who" TO "guess-admin";
GRANT ALL ON DATABASE "guess-who" TO "guess-admin";

GRANT CONNECT, TEMPORARY ON DATABASE "guess-who" TO "guess-user";
