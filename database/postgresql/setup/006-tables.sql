--==============================================================================
-- Tabelas
--==============================================================================

CREATE TABLE versions (
    version id,
    name    description,
    major   INTEGER NOT NULL DEFAULT 0,
    minor   INTEGER NOT NULL DEFAULT 0,
    build   INTEGER NOT NULL DEFAULT 0,
    date    datetime
);

COMMENT ON TABLE versions           IS 'Registro de atualizações do aplicativo.';
COMMENT ON COLUMN versions.version  IS 'Identificador único do registro de versões.';
COMMENT ON COLUMN versions.name     IS 'Nome do módulo atualizado.';
COMMENT ON COLUMN versions.major    IS 'Maior número de identificação da versão.';
COMMENT ON COLUMN versions.minor    IS 'Menor número de identificação da versão.';
COMMENT ON COLUMN versions.build    IS 'Construção de identificação da versão.';
COMMENT ON COLUMN versions.date     IS 'Momento de registro da versão.';

ALTER TABLE versions ADD 
    CONSTRAINT pk_versions
    PRIMARY KEY (version);

COMMENT ON INDEX pk_versions IS 'Chave primária do registro de versões.';

CREATE UNIQUE INDEX uq_versions ON versions (name, major, minor, build);

COMMENT ON INDEX uq_versions IS 'Índice único para registar uma versão, composta pelo nome e identificadores.';

CREATE TABLE cards (
    card    id,
    name    description,
    image   image
);