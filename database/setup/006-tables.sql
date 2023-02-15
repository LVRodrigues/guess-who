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

COMMENT ON TABLE versions           IS 'Registros de atualizações do aplicativo.';
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
    phoneme description,
    image   image
);

COMMENT ON TABLE cards          IS 'Cartões de personagens.';
COMMENT ON COLUMN cards.card    IS 'Identificador único do cartão do personagem.';
COMMENT ON COLUMN cards.name    IS 'Nome do personagem.';
COMMENT ON COLUMN cards.phoneme IS 'Expressão fonética para identificar o nome do personagem.';
COMMENT ON COLUMN cards.image   IS 'Imagem do personagem.';

ALTER TABLE cards ADD
    CONSTRAINT pk_cards
    PRIMARY KEY (card);

COMMENT ON INDEX pk_cards IS 'Chave primária dos cartões de personagens.';

CREATE INDEX ix_cards_name ON cards(name);

COMMENT ON INDEX ix_cards_name IS 'Índice dos nomes dos personagens.';

CREATE INDEX ix_cards_phoneme ON cards(phoneme);

COMMENT ON INDEX ix_cards_phoneme IS 'Índice fonético dos nomes dos personagens.';

CREATE TABLE questions (
    question    id,
    card        id,
    text        TEXT    NOT NULL,
    evidence    TEXT    NOT NULL
);

COMMENT ON TABLE questions              IS 'Pergundas sobre os personagens.';
COMMENT ON COLUMN questions.question    IS 'Identificador único da pergunta sobre o personagem.';
COMMENT ON COLUMN questions.card        IS 'Identificador do cartão do personagem.';
COMMENT ON COLUMN questions.text        IS 'Texto para apresentar a pergunda sobre o personagem.';
COMMENT ON COLUMN questions.evidence    IS 'Texto de evidência para comprovar a resposta sobre o personagem.';

ALTER TABLE questions ADD 
    CONSTRAINT pk_questions
    PRIMARY KEY (question);

COMMENT ON INDEX pk_questions IS 'Chave primária das perguntas sobre os personagens.';

ALTER TABLE questions ADD
    CONSTRAINT fk_questions_card
    FOREIGN KEY (card)
    REFERENCES cards(card);

CREATE INDEX ix_questions_card ON questions(card);

COMMENT ON INDEX ix_questions_card IS 'Índice para agrupar as pergundas sobre os personagens pelos cartões de personagens.';
