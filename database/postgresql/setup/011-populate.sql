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
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', '8744DC77-E84E-40C2-91F1-587FE8286065', 'A quem Deus ordenou primeiramente a circuncisão?', 'Gênesis 17:10'),
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', '7D198EBD-FBED-424C-B727-81BB0FD1A2E4', 'Quem foi chamado primeiro de “o hebreu" e foi antepassado da nação dos judeus?', 'Gênesis 14:13, 12:2'),
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', 'B2115B7A-2294-4DAE-9132-448E3CD22164', 'Quem pleiteou com Deus para não destruir Sodoma se lá houvessem 10 pessoas justas?', 'Gênesis 18:32'),
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', '4EF08F87-3323-4C4B-BD03-03CF4E04B343', 'Quem hospedou 3 anjos em sua tenda e recebeu a promessa que sua mulher lhe daria um filho?', 'Gênesis 18:1-11'),
    ('EE578622-F92B-4C25-BDBF-43253410CCAF', 'EC3619A8-6D8E-4D8D-847C-49F31DED4053', 'Quem depois da morte de sua esposa casou-se com Quetura?', 'Gênesis 25:1');

--------------------------------------------------------------------------------
-- Acabe
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('A86CE532-3FE3-4007-821D-433ABA849117', 'Acabe');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('A86CE532-3FE3-4007-821D-433ABA849117', '20F028A1-EAE6-4D66-818B-32A05DCA6F1B', 'Que rei casou com Jezabel; uma mulher iníqua e idólatra?', '1 Reis 16:31'),
    ('A86CE532-3FE3-4007-821D-433ABA849117', '2205C24A-0960-4131-A57B-6A0F5511B325', 'Que rei foi reprovado por Elias pela sua idolatria?', '1 Reis 18:18'),
    ('A86CE532-3FE3-4007-821D-433ABA849117', '72966C7F-EC43-42AD-A2B3-DD3E09093ADA', 'Qual dos reis de Israel construiu uma casa de marfim?', '1 Reis 22:39'),
    ('A86CE532-3FE3-4007-821D-433ABA849117', 'AA881DE0-3A1F-4815-96E6-7A7AB3B0A5EC', 'Durante o reinado de quem Obadias, que era mordomo, alimentou cem profetas em cavernas com pão e água?', '1 Reis, 18:3,4'),
    ('A86CE532-3FE3-4007-821D-433ABA849117', 'F0324724-1795-4195-A01F-F399A9D75256', 'Que rei de Israel derrotou Ben-Hadade, rei da Síria?', '1 Reis 20:26-30'),
    ('A86CE532-3FE3-4007-821D-433ABA849117', '9697F08D-F9C7-4FAB-B6B4-C3FD2D7CAE52', 'Quem tomou o vinhedo de Nabote?', '1 Reis 21:18');

--------------------------------------------------------------------------------
-- Adão
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('8230CD8B-5D7E-4593-9E45-F45D0DCC9E10', 'Adão');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('8230CD8B-5D7E-4593-9E45-F45D0DCC9E10', '7D45EAAE-7EB2-4A26-8E01-58EFC56E909E', 'Quem o apóstolo Paulo disseque é a semelhança daquele que havia de vir?', 'Romando 5:14'),
    ('8230CD8B-5D7E-4593-9E45-F45D0DCC9E10', '15AEE6C1-2A8F-4CDC-B137-C9BE9B8A5555', 'Quem foi o primeiro a se vestir de peles de animais?', 'Gênesis 3:21'),
    ('8230CD8B-5D7E-4593-9E45-F45D0DCC9E10', '1B9DB66D-9BD5-4DC9-97A1-0084C5ED5B5F', 'Quem não foi enganado, mas vendo sua esposa ser enganada aderiu ao pecado dela?', '1 Timóteo 2:14'),
    ('8230CD8B-5D7E-4593-9E45-F45D0DCC9E10', '52F7A823-DCCE-4CBD-B83B-9E6F12EF012C', 'Quem foi o pai do primeiro homicida?', 'Gênesis 4:1,8'),
    ('8230CD8B-5D7E-4593-9E45-F45D0DCC9E10', '757D4048-F76D-4C24-BD71-1CD3BC7A86E7', 'Quem disse: "Portanto o homem deixará seu pai e sua mãe e tem de apegar-se à sua esposa e eles tem de tornar-se uma só carne?', 'Gênesis 2:24'),
    ('8230CD8B-5D7E-4593-9E45-F45D0DCC9E10', '7AEBEFE1-1435-4847-BEAE-608BF69116A6', 'Quem formou o primeiro vocabulário de uma língua humana?', 'Gênesis 2:19');

--------------------------------------------------------------------------------
-- Agar
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('D256D52D-F27F-4E08-8684-53DDAAB5769C', 'Agar');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('D256D52D-F27F-4E08-8684-53DDAAB5769C', 'F8E0121B-741A-4525-A09A-4B4801B9A989', 'Quem foi a mãe de Ismael?', 'Gênesis 16:15'),
    ('D256D52D-F27F-4E08-8684-53DDAAB5769C', 'D7D83DA5-9D83-4E5B-8B5B-B2616E079739', 'Quem Abraão mandou embora com pão e uma garrafa de água?', 'Gênesis 21:16'),
    ('D256D52D-F27F-4E08-8684-53DDAAB5769C', '90AE2516-5093-4959-AF4C-6C35C302F543', 'Quem foi admoestada e consolada por um anjo numa fonte no deserto?', 'Gênesis 16:7'),
    ('D256D52D-F27F-4E08-8684-53DDAAB5769C', '796CC20C-9BD6-443E-8F27-EDD7655B1B3C', 'A quem Paulo chama de drama simbólico, ou  um pacto dado no Sinai?', 'Gálatas 4:24'),
    ('D256D52D-F27F-4E08-8684-53DDAAB5769C', 'CA498765-8341-48FC-BFC9-709F45432F31', 'Qual mulher egípcia que foi visitada pelo anjo de Deus no deserto de Berseba?', 'Gênesis 21:17');

--------------------------------------------------------------------------------
-- Ananias
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('E281AD89-CB19-4AB0-A20B-77947AB6F504', 'Ananias');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('E281AD89-CB19-4AB0-A20B-77947AB6F504', 'C1476083-75E3-433B-AAC7-B85FDA2B3060', 'Quem procurou enganar os apóstolos com respeito ao preço que vendeu uma propriedade?', 'Atos 5:2'),
    ('E281AD89-CB19-4AB0-A20B-77947AB6F504', 'F4CA734F-928B-4051-9770-0FF536285BF0', 'A quem Pedro disse: “Por que te afoitou Satanás a trapacear o espírito santo"?', 'Atos 5:3'),
    ('E281AD89-CB19-4AB0-A20B-77947AB6F504', '266228D9-7031-4E00-B3AD-1F831FD40A2E', 'Quem caiu e morreu à frente de Pedro por mentir ao espírito santo?', 'Atos 5:5'),
    ('E281AD89-CB19-4AB0-A20B-77947AB6F504', '4156BE6F-8719-40F5-8EAC-951B68DE0A03', 'À esposa de quem Pedro disse: "Por que vocês dois concordaram em pôr à prova o espírito de Jeová?"', 'Atos 5:9'),
    ('E281AD89-CB19-4AB0-A20B-77947AB6F504', 'BCBD21F8-ED63-4240-8A67-F832074A721A', 'Quem junto com sua esposa Safira, vendeu uma propriedade nos dias dos apóstolos?', 'Atos 5:1'),
    ('E281AD89-CB19-4AB0-A20B-77947AB6F504', '04A302D9-EA99-4A84-8DFD-8CD9ACE9D128', 'Por causa da morte repentina de quem veio um grande temor sobre os apóstolos e discípulos?', 'Atos 5:3-5');

--------------------------------------------------------------------------------
-- Assuero
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('4AE15177-25B1-49B9-8904-4D0C599B3855', 'Assuero');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('4AE15177-25B1-49B9-8904-4D0C599B3855', 'FF28608E-A1E0-4CEE-B403-04FD4BC93D0B', 'Quem expediu um decreto para a sujeição de todas as mulheres de seu império?', 'Ester 1:19-22'),
    ('4AE15177-25B1-49B9-8904-4D0C599B3855', '158A358F-8D3F-433A-9CE3-92969BDD6692', 'Que rei usou Mordecai como seu segundo na corte?', 'Ester 10:3'),
    ('4AE15177-25B1-49B9-8904-4D0C599B3855', 'A95003E9-5E85-4A0D-AE0A-989EC63E82F3', 'Quem ordenou que todos os judeus no império persa deveriam ser mortos?', 'Ester 3:13'),
    ('4AE15177-25B1-49B9-8904-4D0C599B3855', '88705811-A304-4B3A-AA2C-C309B4226AFB', 'Quem mandou enforcar Hamã na forca preparada para Mordecai?', 'Ester 7:9,10'),
    ('4AE15177-25B1-49B9-8904-4D0C599B3855', '8F2010BE-4F4A-48B1-AE1D-0115BCD96227', 'A vida de quem Mordecai salvou por revelar o plano de dois eunucos rebeldes?', 'Ester 2:21-23'),
    ('4AE15177-25B1-49B9-8904-4D0C599B3855', '4312765A-2C16-4851-8E49-E65ABF28261B', 'Com quem se casou a judia Ester?', 'Ester 2:15-17');

--------------------------------------------------------------------------------
-- Atalia
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('E60CCC90-B5E9-42DB-9766-43E7EFDC2DC0', 'Atalia');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('E60CCC90-B5E9-42DB-9766-43E7EFDC2DC0', '6CCE5824-7EF3-445B-8BCA-947F99327969', 'Que mulher matou toda a descendência real menos um e usurpou o trono?', '2 Reis 11:1'),
    ('E60CCC90-B5E9-42DB-9766-43E7EFDC2DC0', 'AED4DE22-904F-4CA3-BB8F-09EFD919A2BE', 'De quem foi escondido o menino rei Josias por seis anos numa câmara?', '2 Reis 11:2'),
    ('E60CCC90-B5E9-42DB-9766-43E7EFDC2DC0', '032C6EA7-6E41-463D-B8BD-F236B2A557A8', 'Que mulher reinou em Judá por seis anos?', '2 Crônicas 22:12'), 
    ('E60CCC90-B5E9-42DB-9766-43E7EFDC2DC0', '1B1F1676-717D-486D-B26A-B120C9DA4B0B', 'Quem ao ver Josias ungido e coroado rei, rasgou suas vestes e gritou “Conspiração, conspiração"?', '2 Reis 11:14'),
    ('E60CCC90-B5E9-42DB-9766-43E7EFDC2DC0', 'BE238B01-EC0D-4934-AF66-B6BBF2D7C593', 'Com referência a quem o sacerdote Jeoiada disse aos centuriões: "Levai-a para fora das fileiras, e quanto a qualquer que for atrás dela deve ser morto à espada"?', '2 Crônicas 23:14');

--------------------------------------------------------------------------------
-- Balaão
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('02C36AAB-9FAB-4FFA-AE08-8E101DE2871E', 'Balaão');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('02C36AAB-9FAB-4FFA-AE08-8E101DE2871E', '4258226A-4A44-495D-99B2-A77D14C39405', 'Que profeta gentio viveu na cidade de Petor entre as montanhas do oriente?', 'Números 22:5'),
    ('02C36AAB-9FAB-4FFA-AE08-8E101DE2871E', 'B3B5E9B4-FC03-4113-8700-4AD5E3B23017', 'Para quem uma jumenta falou palavras de sabedoria?', 'Números 22:28'),
    ('02C36AAB-9FAB-4FFA-AE08-8E101DE2871E', 'A77D2B89-648E-49C3-A142-03114B982B07', 'Para quem o rei Balaque ofereceu uma recompensa se ele amaldiçoasse os filhos de Israel?', 'Números 22:7'),
    ('02C36AAB-9FAB-4FFA-AE08-8E101DE2871E', '56B3797A-18A6-4965-B9CD-391210103D8A', 'Que profeta tornou-se um apóstata pela cobiça?', 'Judas 11'),
    ('02C36AAB-9FAB-4FFA-AE08-8E101DE2871E', 'A909C8D4-A82E-43B0-8708-E7D6F30C96FE', 'Quem foi o filho de Beor que profetizou sobre Israel contrário ao que tinha sido chamado para fazer?', 'Números 24:10'),
    ('02C36AAB-9FAB-4FFA-AE08-8E101DE2871E', '262D4D7F-56D2-4296-A7A3-9A1287FEB438', 'A quem apareceu o anjo de Deus quando viajava numa jumenta?', 'Números 22:31');

--------------------------------------------------------------------------------
-- Barnabé
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('7DCE9754-726A-4656-8162-D33179F29CB5', 'Barnabé');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('7DCE9754-726A-4656-8162-D33179F29CB5', 'EB45763C-5189-4158-B484-A8E40DB36222', 'Que levita de Chipre vendeu um campo e deu o dinheiro aos apóstolos?', 'Atos 4:37'),
    ('7DCE9754-726A-4656-8162-D33179F29CB5', 'A22C1B2D-8632-400F-B760-0158C3F5BF7A', 'Quem levou Paulo aos apóstolos e contou como ele vira o Senhor a caminho de Damasco?', 'Atos 9:27'),
    ('7DCE9754-726A-4656-8162-D33179F29CB5', '3651B9DE-CC99-487E-89A9-3283605862CD', 'Quem o povo de Listra pensava ser Zeus?', 'Atos 14:12'),
    ('7DCE9754-726A-4656-8162-D33179F29CB5', 'F50A578F-D88E-4CB6-8372-478737241807', 'Quem escapou ileso quando Paulo foi apedrejado em Listra?', 'Atos 14:19,20'),
    ('7DCE9754-726A-4656-8162-D33179F29CB5', '1AAE1858-88CF-40B8-A4C9-32407FEB3759', 'A quem Paulo disse: "Acima de tudo, voltemos e visitemos os irmãos em cada uma das cidades em que publicamos a palavra de Jeová"?', 'Atos 15:36'),
    ('7DCE9754-726A-4656-8162-D33179F29CB5', 'DDE48AE7-88DF-4411-A7D8-16F11F709608', 'Quem separou-se de Paulo em Antioquia por causa de Marcos?', 'Atos 15:37');

--------------------------------------------------------------------------------
-- Belsazar
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('DE8C573E-FEC0-4B7E-B918-9280588ADF07', 'Belsazar');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('DE8C573E-FEC0-4B7E-B918-9280588ADF07', 'F16352E9-B336-4ADF-984E-1147A039C0A4', 'Quem foi o último rei de Babilônia?', 'Daniel 5:30'),
    ('DE8C573E-FEC0-4B7E-B918-9280588ADF07', '24E54016-5D17-4F00-B26B-B5E4BED3C10D', 'Quem mandou trazer os vasos de ouro e prata que tinham sido de Jerusalém para uma festa pagã?', 'Daniel 5:2'),
    ('DE8C573E-FEC0-4B7E-B918-9280588ADF07', '13B394ED-FEB1-4DEA-B776-C26E81BD7B56', 'Para que rei apareceu uma mão escrevendo na parede?', 'Daniel 5:5'),
    ('DE8C573E-FEC0-4B7E-B918-9280588ADF07', 'D7B37689-8B78-4DE1-943C-5E1A2614C123', 'A quem foi dito: "Foste pesado na balança e achado deficiente"?', 'Daniel 5:27'),
    ('DE8C573E-FEC0-4B7E-B918-9280588ADF07', '7703C300-53EA-4558-98AD-9788D3D6A19A', 'Qual rei de Babilônia foi morto e sua cidadania tomada pelos medos e persas?', 'Daniel 5:30,31'),
    ('DE8C573E-FEC0-4B7E-B918-9280588ADF07', '15BC41B0-6993-41C7-BA15-A559C69ACC45', 'Quem mandou que vestissem Daniel de púrpura e lhe pusessem um colar de ouro no pescoço e proclamassem-no como terceiro no governo do seu reino?', 'Daniel 5:29');

--------------------------------------------------------------------------------
-- Caifás
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('2516B706-E05B-45D3-ABB5-612746D8DE91', 'Caifás');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('2516B706-E05B-45D3-ABB5-612746D8DE91', '09C52A1E-1D57-4600-BD17-097B310185B5', 'Quem era o sumo-sacerdote nos dias de Jesus aqui na terra?', 'Mateus 26:3'),
    ('2516B706-E05B-45D3-ABB5-612746D8DE91', '1F0954B0-6CA1-41E8-B52E-07AE8E1F1D5C', 'Qual sumo-sacerdote comissionou Paulo para ir a Damasco perseguir os cristãos?', 'Atos 9:1,2'),
    ('2516B706-E05B-45D3-ABB5-612746D8DE91', '14DE22EB-DD03-4A2C-A0F5-F9FF5012909F', 'Quem perguntou solenemente a Cristo: “Pelo Deus vivente, eu te ponho sob juramento para nos dizeres se tu és o Cristo, o Filho de Deus!"', 'Mateus 26:63'),
    ('2516B706-E05B-45D3-ABB5-612746D8DE91', '15746FE5-D769-4E2E-85FC-61E08B2BBA3F', 'À quem Jesus disse: "De agora em diante vocês verão o Filho do Homem sentado à direita de poder e vindo nas nuvens do céu?"', 'Mateus 26:64'),
    ('2516B706-E05B-45D3-ABB5-612746D8DE91', 'AD739F05-F936-47C9-B113-8C82A6FEB2C8', 'Quem disse: "É para vosso bem que um só homem morra pela nação"?', 'João 11:50'),
    ('2516B706-E05B-45D3-ABB5-612746D8DE91', '6D705DAD-25F5-4135-AC7E-3B58B94A297C', 'Quem era genro de Anás?', 'João 18:13');

--------------------------------------------------------------------------------
-- Caim
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', 'Caim');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', '5A0BE851-B81A-4AF0-8696-5A9A521639A9', 'Quem disse” Sou eu guardião do meu irmão”?', 'Gênesis 4:9'),
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', 'F8222596-3543-4120-A4BC-7FA50E66A3CC', 'Quem é mencionado como o primeiro lavrador da terra?', 'Gênesis 4:2'),
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', 'BE173ADD-3F53-49E5-B551-9A67C4890089', 'A quem Deus disse: “Quando lavrares o solo não te dará de volta teu poder"?', 'Gênesis 4:12'),
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', 'C2B21C8B-99B2-4366-B7A5-2E2FF4ABB87B', 'Quem disse: ”Minha punição pelo erro é grande demais para suportar”?', 'Gênesis 4:13'),
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', '615632EC-6733-4F5E-B62D-5944F358341A', 'Quem estabeleceu-se na terra da fuga e edificou uma cidade pela qual chamou pelo nome de seu filho, Enoque?', 'Gênesis 4:16,17'),
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', 'D6FB7D73-BF27-47A4-8B9D-1EBDBEDB408F', 'A quem Jeová deu um sinal de que não lhe golpearia quem o encontrasse?', 'Gênesis 4:15');
