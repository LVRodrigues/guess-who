--==============================================================================
-- Domínios para configurações dos tipos de campos.
--==============================================================================

CREATE DOMAIN id AS uuid NOT NULL;
COMMENT ON DOMAIN id IS 'Chaves primárias.';

CREATE DOMAIN description AS VARCHAR(255);
COMMENT ON DOMAIN description IS 'Descrições sobre os registros.';

CREATE DOMAIN datetime AS time with time zone;
COMMENT ON DOMAIN datetime IS 'Data e Hora com fuso horário.';

CREATE DOMAIN image AS bytea;
COMMENT ON DOMAIN image IS 'Campo para armazenar imagens.';