--==============================================================================
-- Regras de acesso
--==============================================================================
CREATE ROLE "guess-access";
COMMENT ON ROLE "guess-access" IS 'Regras para os usuários de operação utilizarem o aplicativo Guess Who?.';

--==============================================================================
-- Tabelas
--==============================================================================
GRANT SELECT, INSERT    ON versions     TO "guess-access";
GRANT SELECT            ON cards        TO "guess-access";
GRANT SELECT            ON questions    TO "guess-access";
