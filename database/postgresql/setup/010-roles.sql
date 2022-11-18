--==============================================================================
-- Regras de acesso
--==============================================================================
CREATE ROLE "guess-access";
COMMENT ON ROLE "guess-access" IS 'Regras para os usuários de operação utilizarem o aplicativo Guess Who?.';

GRANT "guess-access" TO "guess-user";

--==============================================================================
-- Tabelas
--==============================================================================
GRANT SELECT, INSERT                    ON versions     TO "guess-access";
GRANT SELECT, INSERT, UPDATE, DELETE    ON cards        TO "guess-access";
GRANT SELECT, INSERT, UPDATE, DELETE    ON questions    TO "guess-access";
