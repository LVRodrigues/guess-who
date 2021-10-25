--==============================================================================
-- Incializando o banco de dados.
--==============================================================================

--==============================================================================
-- Versão do Banco de Dados
--============================================================================== 

INSERT INTO versions (version, name, major, minor, build)
VALUES (uuid_nil(), 'Banco de Dados', 1, 0, 0);

--==============================================================================
-- Personagens
--============================================================================== 

--------------------------------------------------------------------------------
-- Arão
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('A34C1757-3CDA-47B4-B3CB-F2AD09469E4C', 'Arão');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('A34C1757-3CDA-47B4-B3CB-F2AD09469E4C', '6C9C00C1-881E-4A7E-9594-9DC82232DFAE', 'O nome de quem significa "Elevado, Iluminado"?', '1 Crônicas 6:3'),
    ('A34C1757-3CDA-47B4-B3CB-F2AD09469E4C', 'F3A9579C-4C93-4DB0-9C48-022CABEDFE6D', 'Quem foi o 1º sumo-sacerdote dos judeus e que foi chamado "O santo do Senhor"?', 'Êxodo 28:1;Salmos 106:16'),
    ('A34C1757-3CDA-47B4-B3CB-F2AD09469E4C', 'FA788285-E0FC-476D-84E5-ECD6DF5C5538', 'Quem foi mandado por Moisés a erguer seu bastão e trazer pragas sobre o Egito?', 'Êxodo 7:19'),
    ('A34C1757-3CDA-47B4-B3CB-F2AD09469E4C', '362DFDD9-74EC-42A6-BB18-65B2A44F0E17', 'Quem fez um bezerro de ouro fundido enquanto Moisés estava no monte Sinai?', 'Êxodo 32:4'),
    ('A34C1757-3CDA-47B4-B3CB-F2AD09469E4C', '979A4B57-A8C9-4607-9756-B7120B807535', 'O bastão de quem floresceu, deu flores e amêndoas?', 'Números 17:8'),
    ('A34C1757-3CDA-47B4-B3CB-F2AD09469E4C', 'EC997E2D-DFD3-4D08-AF93-DA8D551843DE', 'Quem subiu ao Monte Hor junto com seu filho, sendo então substituído por seu filho?', 'Números 20:27-29'),
    ('A34C1757-3CDA-47B4-B3CB-F2AD09469E4C', '0A74AD7E-3A35-4C74-B465-547E55D3A918', 'Quem foi o pai de Nadabe, Abiú, Eleazar e Itamar?', 'Êxodo 28:1');

--------------------------------------------------------------------------------
-- Abel
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('B7E0C17C-A6E4-4C19-ADE1-7072DC783444', 'Abel');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('B7E0C17C-A6E4-4C19-ADE1-7072DC783444', 'FE6F6474-FE96-43B7-A7A5-A511846E033C', 'Quem foi o primeiro pastor?', 'Gênesis 4:2'),
    ('B7E0C17C-A6E4-4C19-ADE1-7072DC783444', '8CD324C0-E851-4BBB-ADF3-B9507A4343C8', 'Quem pela fé ofereceu um melhor sacrifício que seu irmão?', 'Hebreus 11:4'),
    ('B7E0C17C-A6E4-4C19-ADE1-7072DC783444', '42826500-9658-4D62-BCF6-2ECF5954A5E8', 'Quem foi o primeiro da família humana a  morrer?', 'Gênesis 4:8'),
    ('B7E0C17C-A6E4-4C19-ADE1-7072DC783444', 'F1FA5532-96D5-4299-9126-339018876954', 'Quem foi substituído por Sete no livro das gerações de Adão?', 'Gênesis 4:25'),
    ('B7E0C17C-A6E4-4C19-ADE1-7072DC783444', '58710003-62DC-4F7B-BE04-854A0E1C4EE8', 'Quem foi o primeiro a manifestar fé na promessa da Semente oferendo um sacrifício de sangue?', 'Gênesis 4:4'),
    ('B7E0C17C-A6E4-4C19-ADE1-7072DC783444', 'F7C8D47E-C039-4AB4-BDCC-8F3D5308B585', 'O nome de quem significa "Transitório"?', 'Gênesis 4:2'),
    ('B7E0C17C-A6E4-4C19-ADE1-7072DC783444', '3EF2FAC1-9C93-4930-BDDF-C82A5C9455EC', 'Quem é o primeiro da longa lista de fiéis testemunhas de Jeová mencionadas pelo apóstolo Paulo em Hebreus 11?', 'Hebreus 11:4');

--------------------------------------------------------------------------------
-- Abraão
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', 'Abraão');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', '2B65D3CC-8D08-4907-BF89-546232F56FD7', 'Quem as escrituras chamam pelo título: "O amigo de Deus"?', 'Tiago 2:23'),
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', '8957A48F-3944-4FBB-9692-F1F9FD766A96', 'O nome de quem significa: “Pai de uma multidão”?', 'Gênesis 17:5'),
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', '8744DC77-E84E-40C2-91F1-587FE8286065', 'A quem Deus ordenou primeiramente a circuncisão?', 'Gênesis 17:10'),
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', '7D198EBD-FBED-424C-B727-81BB0FD1A2E4', 'Quem foi chamado primeiro de “o hebreu” e foi antepassado da nação dos judeus?', 'Gênesis 14:13, 12:2'),
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', 'B2115B7A-2294-4DAE-9132-448E3CD22164', 'Quem pleiteou com Deus para não destruir Sodoma se lá houvessem 10 pessoas justas?', 'Gênesis 18:32'),
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', '4EF08F87-3323-4C4B-BD03-03CF4E04B343', 'Quem hospedou 3 anjos em sua tenda e recebeu a promessa que sua mulher lhe daria um filho?', 'Gênesis 18:1-11'),
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', 'EC3619A8-6D8E-4D8D-847C-49F31DED4053', 'Quem depois da morte de sua esposa casou-se com Quetura?', 'Gênesis 25:1');

--------------------------------------------------------------------------------
-- Acabe
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('A86CE532-3FE3-4007-821D-433ABA849117', 'Acabe');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('A86CE532-3FE3-4007-821D-433ABA849117', '676CAFF9-AFAA-46EB-B2F6-8C27EAAB6B08', 'O nome de quem significa “Tio”?', '1 Reis 16:29'),
    ('A86CE532-3FE3-4007-821D-433ABA849117', '20F028A1-EAE6-4D66-818B-32A05DCA6F1B', 'Que rei casou com Jezabel; uma mulher iníqua e idólatra?', '1 Reis 16:31'),
    ('A86CE532-3FE3-4007-821D-433ABA849117', '2205C24A-0960-4131-A57B-6A0F5511B325', 'Que rei foi reprovado por Elias pela sua idolatria?', '1 Reis 18:18'),
    ('A86CE532-3FE3-4007-821D-433ABA849117', '72966C7F-EC43-42AD-A2B3-DD3E09093ADA', 'Qual dos reis de Israel construiu uma casa de marfim?', '1 Reis 22:39'),
    ('A86CE532-3FE3-4007-821D-433ABA849117', 'AA881DE0-3A1F-4815-96E6-7A7AB3B0A5EC', 'Durante o reinado de quem Obadias, que era mordomo, alimentou cem profetas em cavernas com pão e água?', '1 Reis, 18:3,4'),
    ('A86CE532-3FE3-4007-821D-433ABA849117', 'F0324724-1795-4195-A01F-F399A9D75256', 'Que rei de Israel derrotou Ben-Hadade, rei da Síria?', '1 Reis 20:26-30'),
    ('A86CE532-3FE3-4007-821D-433ABA849117', '9697F08D-F9C7-4FAB-B6B4-C3FD2D7CAE52', 'Quem tomou o vinhedo de Nabote?', '1 Reis 21:18');