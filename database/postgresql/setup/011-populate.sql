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
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', '5A0BE851-B81A-4AF0-8696-5A9A521639A9', 'Quem disse" Sou eu guardião do meu irmão"?', 'Gênesis 4:9'),
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', 'F8222596-3543-4120-A4BC-7FA50E66A3CC', 'Quem é mencionado como o primeiro lavrador da terra?', 'Gênesis 4:2'),
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', 'BE173ADD-3F53-49E5-B551-9A67C4890089', 'A quem Deus disse: “Quando lavrares o solo não te dará de volta teu poder"?', 'Gênesis 4:12'),
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', 'C2B21C8B-99B2-4366-B7A5-2E2FF4ABB87B', 'Quem disse: "Minha punição pelo erro é grande demais para suportar"?', 'Gênesis 4:13'),
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', '615632EC-6733-4F5E-B62D-5944F358341A', 'Quem estabeleceu-se na terra da fuga e edificou uma cidade pela qual chamou pelo nome de seu filho, Enoque?', 'Gênesis 4:16,17'),
    ('2DE0BECE-3409-4756-AF95-40C19D931CA6', 'D6FB7D73-BF27-47A4-8B9D-1EBDBEDB408F', 'A quem Jeová deu um sinal de que não lhe golpearia quem o encontrasse?', 'Gênesis 4:15');

--------------------------------------------------------------------------------
-- Calebe
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('2F8340D2-19F1-426B-890A-EE114D953171', 'Calebe');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('2F8340D2-19F1-426B-890A-EE114D953171', '49DE045B-87F8-4BFF-8C55-A47BB918F005', 'Quem da tribo de Judá foi enviado por Moisés como espião à Canaã?', 'Números 13:6'),
    ('2F8340D2-19F1-426B-890A-EE114D953171', '8F50277C-BB96-4D0C-9D5D-698613EF4C1C', 'Quem, mediante Moisés falou ao povo: "Subamos logo, e forçosamente havemos de tomar posse dele, pois, certamente podemos prevalecer sobre ele"?', 'Números 13:30'),
    ('2F8340D2-19F1-426B-890A-EE114D953171', '76A05943-12E0-45C4-B988-4D9B37A151A4', 'Quem de todos que deixaram o Egito, além de Josué, foi permitido entrar na terra de Canaã?', 'Números 14:30'),
    ('2F8340D2-19F1-426B-890A-EE114D953171', '54A32764-3F2D-41D1-8630-7CDE77E2E407', 'Quem disse: "Eis que tenho hoje oitenta e cinco anos de idade. Contudo, sou hoje tão forte como no dia em Moisés me enviou"?', 'Josué 14:30,31'),
    ('2F8340D2-19F1-426B-890A-EE114D953171', 'ABC5E0BD-8D64-4025-AF17-9822DB040BF2', 'A quem Josué deu Hébron em herança conforme juramento de Moisés?', 'Josué 14:13'),
    ('2F8340D2-19F1-426B-890A-EE114D953171', 'C319DC0B-2068-4086-8F10-D7E4A960BFE2', 'A filha de quem pediu as fontes de água como sua herança?', 'Juízes 1:15');

--------------------------------------------------------------------------------
-- Cornélio
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('5CE0C3E1-3BB2-4B88-BE83-5A7C2CF9DCFA', 'Cornélio');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('5CE0C3E1-3BB2-4B88-BE83-5A7C2CF9DCFA', '3C093C4D-0080-4486-AC15-0BFA2E9AED66', 'A quem um anjo disse: "Tuas orações e dádivas de misericórdia têm ascendido como memória perante Deus"?', 'Atos 10:4'),
    ('5CE0C3E1-3BB2-4B88-BE83-5A7C2CF9DCFA', '6E06AA11-E330-4ECF-9ED8-9EF0DDB8B97E', 'Quem mandou seus homens a Jope para buscar Pedro conforme o anjo lhe mandou?', 'Atos 10:5-8'),
    ('5CE0C3E1-3BB2-4B88-BE83-5A7C2CF9DCFA', 'EB38F4E6-7237-4E41-BABF-9DDE112A0FFD', 'Quem foi o primeiro gentio a ser aceito na congregação cristã em 36 EC?', 'Atos 10:45-48'),
    ('5CE0C3E1-3BB2-4B88-BE83-5A7C2CF9DCFA', 'B7D9F9BC-C1D7-43E2-BDDD-16ACE457C3ED', 'A quem Pedro disse: "Agora eu entendo claramente que Deus não é parcial..."?', 'Atos 10:34'),
    ('5CE0C3E1-3BB2-4B88-BE83-5A7C2CF9DCFA', 'FC12CD30-BFBD-4257-B7D4-7509DB17AC78', 'A conversão de quem mostrou que Deus tinha tirado o muro de separação que havia entre judeus e gentios?', 'Atos 10:28'),
    ('5CE0C3E1-3BB2-4B88-BE83-5A7C2CF9DCFA', '80DB941F-A9EF-4C9B-8088-9122F529102B', 'A quem Pedro disse:"Fique de pé! Eu também sou apenas um homem."?', 'Atos 10:26');

--------------------------------------------------------------------------------
-- Daniel
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('47685A25-85FF-42B8-819B-8919944A50B4', 'Daniel');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('47685A25-85FF-42B8-819B-8919944A50B4', 'AC4B64A7-4FC5-4DC8-9572-78CF90388910', 'Que profeta interpretou as palavras escritas na parede durante a festa do rei Belsazar?', 'Daniel 5:13-31'),
    ('47685A25-85FF-42B8-819B-8919944A50B4', '8FFD3021-9147-46D9-8FD7-0D4BFE8E9053', 'Qual profeta da casa de Davi foi lançado numa cova de leões?', 'Daniel 6:16'),
    ('47685A25-85FF-42B8-819B-8919944A50B4', '205974F3-CD03-4F25-8A41-FA9F6344B436', 'Que profeta escreveu sobre as setenta semanas até a vinda do Messias?', 'Daniel 9:24'),
    ('47685A25-85FF-42B8-819B-8919944A50B4', '356467EF-F0A4-4D3F-9248-A5DFD233C18C', 'Que profeta escreveu: "E os que têm discernimento brilharão tão claramente como os céus, e os que levam muitos à justiça como as estrelas..."?', 'Daniel 12:3'),
    ('47685A25-85FF-42B8-819B-8919944A50B4', '55F35AC7-7345-4080-B866-DCE2FC82593B', 'Quem escreveu uma notável profecia sobre a sucessão de quatro grandes potências mundiais?', 'Daniel 7:1-28');

--------------------------------------------------------------------------------
-- Davi
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('FB2AEF3D-B37D-4B8A-9849-CA9EA6DC98CC', 'Davi');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('FB2AEF3D-B37D-4B8A-9849-CA9EA6DC98CC', 'BABC0606-905F-4F73-BC9D-1EE3245BC1DF', 'De quem Deus diz que ele "Um homem que agrade ao seu coração"?', '1 Samuel 13:14'),
    ('FB2AEF3D-B37D-4B8A-9849-CA9EA6DC98CC', 'EE15D278-DE9A-4724-B095-D8774436BAC7', 'Quem escreveu: "Jeová é o meu pastor e nada me faltará"?', 'Salmos 23:1'),
    ('FB2AEF3D-B37D-4B8A-9849-CA9EA6DC98CC', '789ADD0F-9045-47F7-8CB5-BE04596933E2', 'Quem conquistou a cidade de Jerusalém, fez dela a sua capital e estendeu seu domínio desde o Egito até o Eufrates?', '2 Samuel 5:5,8:3'),
    ('FB2AEF3D-B37D-4B8A-9849-CA9EA6DC98CC', '151CE0C4-B53C-4CA5-85C7-107EDB6415E7', 'Quem escreveu: "O insensato disse no seu coração: "Não há Jeová""?', 'Salmos 14:1'),
    ('FB2AEF3D-B37D-4B8A-9849-CA9EA6DC98CC', '59FB80AD-09A6-4092-A0A7-10BCE2BA78A9', 'Quem foi o fundador da família real que continuou até a queda de Israel em 607 AEC?', 'Mateus 1:17'),
    ('FB2AEF3D-B37D-4B8A-9849-CA9EA6DC98CC', 'AE1BA5F1-B4D8-408F-98E6-67A4C176F260', 'Quem escreveu: "Para que as pessoas saibam que tu cujo nome é Jeová, somente tu és o Altíssimo sobre toda a terra"?', 'Salmos 83:18');

--------------------------------------------------------------------------------
-- Débora
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('79EB9CCE-172E-425B-9C78-C4A897184B13', 'Débora');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('79EB9CCE-172E-425B-9C78-C4A897184B13', 'C1DBF23D-74CA-487D-A91A-04FFB7D8B9EB', 'Que mulher foi um dos juízes de Israel?', 'Juízes 4:4'),
    ('79EB9CCE-172E-425B-9C78-C4A897184B13', '8218F3AF-6860-497E-A84F-AF9AFD5425D5', 'Quem assentava-se para julgar embaixo de uma tamargueira?', 'Juízes 4:5'),
    ('79EB9CCE-172E-425B-9C78-C4A897184B13', 'FBCFCF89-6B24-41B4-AAF5-E8D66A78FCEE', 'Que profetiza foi chamada de “A Mãe de Israel"?', 'Juízes 5:7'),
    ('79EB9CCE-172E-425B-9C78-C4A897184B13', '48603C3C-6F33-4043-A25F-785827DFFFEB', 'Que profetiza compôs e cantou uma canção para comemorar uma vitória no monte Tabor?', 'Juízes 4:4-31'),
    ('79EB9CCE-172E-425B-9C78-C4A897184B13', '9A23AE80-6260-4ABF-9C74-F0E03552AD3F', 'A que mulher Baraque disse: “Se fores comigo, então certamente irei, mas se não fores comigo, não irei"?', 'Juízes 4:8'),
    ('79EB9CCE-172E-425B-9C78-C4A897184B13', '7E40F3BD-36F4-454A-884E-AB689A015B02', 'Que mulher mandou chamar Baraque e lembrou-lhe que Jeová entregaria nas mãos os inimigos?', 'Juízes 4:6,7');

--------------------------------------------------------------------------------
-- Eli
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('E8574C4E-41BB-45A4-81EA-F54159EAC465', 'Eli');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('E8574C4E-41BB-45A4-81EA-F54159EAC465', 'A9345CC7-FA2D-4AD3-A404-FA388AEE6D2E', 'Que sumo-sacerdote foi juíz de Israel por 40 anos?', '1 Samuel 4:18'),
    ('E8574C4E-41BB-45A4-81EA-F54159EAC465', '26B7FDEF-9181-4962-BFD5-C173B1D99F23', 'Que sumo-sacerdote foi destacado pela sua piedade, mas, foi negligente com a disciplina de sua família?', '1 Samuel 3:13'),
    ('E8574C4E-41BB-45A4-81EA-F54159EAC465', '9E86C68E-8E8B-4DAA-BB60-0A4ADEB82DE0', 'Que sumo-sacerdote da casa de Itamar teve dois filhos iníquos que foram mortos na batalha?', '1 Samuel 4:11'),
    ('E8574C4E-41BB-45A4-81EA-F54159EAC465', '0C314A9A-EC81-4F82-9FEA-93458C46A89A', 'Quem morreu quando ouviu que a arca do pacto havia sido tomada pelos filisteus?', '1 Samuel 4:18'),
    ('E8574C4E-41BB-45A4-81EA-F54159EAC465', '7F4A0E60-AD0D-4A74-922F-28BAB51BA076', 'Quem era o sumo-sacerdote de Israel quando Samuel foi oferecido para servir à Jeová quando ainda era menino?', '1 Samuel 2:11'),
    ('E8574C4E-41BB-45A4-81EA-F54159EAC465', 'D71B5D8A-5AF9-4A06-BA9C-5D266D5943F4', 'Quem foi o pai de Ofni e Finéias?', '1 Samuel 4:17');

--------------------------------------------------------------------------------
-- Elias
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('F8548B28-6683-4D08-86B5-50AE368B553F', 'Elias');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('F8548B28-6683-4D08-86B5-50AE368B553F', 'D23C4E2F-C474-4982-9408-BF2DB6CC293B', 'Quem teve uma disputa com 450 sacerdotes de Baal no Monte Carmelo para provar quem era Deus, Jeová ou Baal?', '1 Reis 18:19'),
    ('F8548B28-6683-4D08-86B5-50AE368B553F', '356F0C87-67BD-461C-AF80-705152A1757C', 'Quem viajou 40 dias e 40 noites sem comer até o Monte Horebe?', '1 Reis 19:8'),
    ('F8548B28-6683-4D08-86B5-50AE368B553F', 'B0EF3C96-C9E7-4FCF-8CF3-A3E46D0E5BEF', 'Em resposta à oração de quem ficou muito tempo sem chover e depois em resposta a outro pedido, tornou a chover?', 'Tiago 5:17,18'),
    ('F8548B28-6683-4D08-86B5-50AE368B553F', 'BF0C171E-6F30-443D-8E3C-CD88D3E440FB', 'Quem apareceu na visão do monte da Transfiguração de Cristo junto com Outro legislador?', 'Mateus 17:3'),
    ('F8548B28-6683-4D08-86B5-50AE368B553F', 'F2B9B1EA-F31D-425C-A266-8A306D15CCEA', 'Quem lançou sua capa sobre Eliseu para este ser seu sucessor?', '1 Reis 19:19'),
    ('F8548B28-6683-4D08-86B5-50AE368B553F', '93D89189-CAF5-465D-8129-0D2479BEBB13', 'Qual dos profetas ressuscitou o filho da viúva de Sarefá?', '1 Reis 17:17-23');

--------------------------------------------------------------------------------
-- Eliseu
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('4B4E0D7F-5CA0-423E-A016-90932602AF81', 'Eliseu');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('4B4E0D7F-5CA0-423E-A016-90932602AF81', '2B065290-F1D7-4A36-B8E9-D0FBD793F35A', 'Sobre quem caiu o manto de Elias e uma porção dupla de seu espírito?', '2 Reis 2:9-13'),
    ('4B4E0D7F-5CA0-423E-A016-90932602AF81', 'B2E10147-7AF4-48CF-B058-FAFD9FDBA17C', 'Quem foi encontrado lavrando com doze juntas de bois, quando chamado para ser profeta?', '1 Reis 19:19'),
    ('4B4E0D7F-5CA0-423E-A016-90932602AF81', '330691A9-C540-4049-93F5-711CF9FFBCDA', 'Quem mandou Naamã banhar-se no Jordão para ser curado de sua lepra?', '2 Reis 5:10'),
    ('4B4E0D7F-5CA0-423E-A016-90932602AF81', 'B46F00B6-BED3-4F62-A3B5-D4631F5FC012', 'Quem levantou o filho da Sunamita dentre os mortos?', '2 Reis 4:34,35'),
    ('4B4E0D7F-5CA0-423E-A016-90932602AF81', 'D5E4DEEB-C072-4AF9-86CA-C2C193885530', 'Quem jogou sal nas águas de Jericó, tornando-as saudáveis?', '2 Reis 2:21'),
    ('4B4E0D7F-5CA0-423E-A016-90932602AF81', 'DA70B7A2-AA06-4BD4-BC40-F451AAD587E3', 'Quem sucedeu a Elias como o principal dos profetas de Jericó?', '2 Reis 2:5');

--------------------------------------------------------------------------------
-- Enoque
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('1BB5ACA2-BF93-4AFA-B7E5-6795CA4BCF9B', 'Enoque');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('1BB5ACA2-BF93-4AFA-B7E5-6795CA4BCF9B', '3ABCB285-7130-46AC-9F73-07335F5EA6F9', 'Quem foi pai de Metusalém e bisavô de Noé?', 'Gênesis 5:21'),
    ('1BB5ACA2-BF93-4AFA-B7E5-6795CA4BCF9B', 'ABFA7333-2986-4111-BC2A-F868177C5166', 'De quem as Escrituras dizem: "Prosseguiu andando com o verdadeiro Deus trezentos anos"?', 'Gênesis 5:22'),
    ('1BB5ACA2-BF93-4AFA-B7E5-6795CA4BCF9B', '38B77BAF-13D7-4FCF-B793-AD36D171304C', 'Quem proferiu esta profecia; “Eis que Jeová veio com as suas santas miríades"?', 'Judas 14'),
    ('1BB5ACA2-BF93-4AFA-B7E5-6795CA4BCF9B', 'D9023EF5-9E45-4CEF-9017-F123B00A3D77', 'De quem está escrito: "...continuou andando com o verdadeiro Deus. Depois, ele não foi mais visto, porque Deus o tomou."?', 'Gênesis 5:24'),
    ('1BB5ACA2-BF93-4AFA-B7E5-6795CA4BCF9B', '491C2842-6B74-4027-A956-300D8BFBE56D', 'Quem, disse o apóstolo Paulo, foi transferido para não ver a morte"?', 'Hebreus 11:5'),
    ('1BB5ACA2-BF93-4AFA-B7E5-6795CA4BCF9B', '392AD507-9B81-4DE2-A980-FBF156315F89', 'Quem foi o primeiro homem a profetizar o futuro julgamento Divino?', 'Judas 14');

--------------------------------------------------------------------------------
-- Esaú
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('CAE2470C-58B8-4B58-B178-72C53E767882', 'Esaú');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('CAE2470C-58B8-4B58-B178-72C53E767882', '06AB7A42-028C-42E9-B83F-06A258236373', 'Quem vendeu sua primogenitura para comer um cozido de lentilhas?', 'Gênesis 25:33,34'),
    ('CAE2470C-58B8-4B58-B178-72C53E767882', 'A5CD580E-47F0-44B5-9510-E2F8826C797A', 'Quem é o primeiro mencionado como sendo “Homem peludo"?', 'Genêsis 27:11'),
    ('CAE2470C-58B8-4B58-B178-72C53E767882', 'C0AD8FC9-A516-4120-9A16-D521E5190D1B', 'Quem disse: “Tens apenas uma benção, meu pai?  Abençoa-me também a mim, meu pai"?', 'Gênesis 27:38'),
    ('CAE2470C-58B8-4B58-B178-72C53E767882', 'B0AAEDCF-9B4F-4B69-A321-F49F249E020B', 'Devido à ira de quem Jacó fugiu para seu tio Labão?', 'Gênesis 28:5'),
    ('CAE2470C-58B8-4B58-B178-72C53E767882', 'B6A1B932-201F-48E0-AED8-77D57264F6AA', 'Os descendentes de quem foram Edomitas?', 'Gênesis 36:9'),
    ('CAE2470C-58B8-4B58-B178-72C53E767882', '30A2F4FF-07E1-4360-920A-7234C34D286A', 'Quem foi o irmão gêmeo de Jacó?', 'Gênesis 25:26');

--------------------------------------------------------------------------------
-- Esdras
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('5C34CB48-85B9-4E1D-905F-10E87413EA98', 'Esdras');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('5C34CB48-85B9-4E1D-905F-10E87413EA98', '356045E1-52B5-4064-B244-DA60A18A539B', 'Quem era o escriba versado na lei de Deus nos dias de Artaxerxes, rei da Pérsia?', 'Esdras 7:6'),
    ('5C34CB48-85B9-4E1D-905F-10E87413EA98', '54C122C7-5838-4359-A85A-0ADC9D8F1954', 'Quem escreveu o livro de Crônicas?', 'História'),
    ('5C34CB48-85B9-4E1D-905F-10E87413EA98', '973337E5-48FF-48F2-A040-C065795B7A12', 'Quem requereu dos israelitas que largassem suas esposas pagãs?', 'Esdras 10:10,11'),
    ('5C34CB48-85B9-4E1D-905F-10E87413EA98', '9FDC267F-230E-4970-A11F-C8EF0BD89BB8', 'Quem, de um estrado de madeira leu a lei de Moisés para todo o povo que havia voltado de Babilônia?', 'Neemias 8:4,5'),
    ('5C34CB48-85B9-4E1D-905F-10E87413EA98', 'D2407EEB-C7DF-4F1E-BCB9-D3D720128847', 'Quem foi mandado por Artaxerxes para restaurar a adoração dos judeus?', 'Esdras 7:12'),
    ('5C34CB48-85B9-4E1D-905F-10E87413EA98', 'CECBADF3-CD34-40F3-AC5F-9B68A7B2AD68', 'Quem colecionou os livros das Escrituras Hebraicas, após o cativeiro?', 'História');

--------------------------------------------------------------------------------
-- Ester
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('B73E4794-F582-4750-A0F2-0CAD7A8EB5B5', 'Ester');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('B73E4794-F582-4750-A0F2-0CAD7A8EB5B5', '46A32738-ECC4-4B7D-96FA-51DF9E3D3569', 'Quem também se chamava Hadassa?', 'Ester 2:7'),
    ('B73E4794-F582-4750-A0F2-0CAD7A8EB5B5', 'DB108647-5317-4EE8-9DD1-CFA76B6973DD', 'Quem foi escolhida pelo Rei Assuero para ser rainha no lugar de Vasti?', 'Ester 2:17'),
    ('B73E4794-F582-4750-A0F2-0CAD7A8EB5B5', '9B9635F5-89C9-4979-BD7F-6C484E348FC6', 'Quem disse: “Entrarei até o rei, o que não é segundo a lei, e se eu tiver de perecer, perecerei"?', 'Ester 4:16'),
    ('B73E4794-F582-4750-A0F2-0CAD7A8EB5B5', '79EC72D1-A0A3-40BA-BA13-CE0AC5303BB6', 'A quem o Rei Assuero disse: “Até a metade do reinado, a ti seja dado"?', 'Ester 5:3'),
    ('B73E4794-F582-4750-A0F2-0CAD7A8EB5B5', 'B834B3BF-91D0-4C71-A533-C60B06E5433D', 'Que rainha salvou a vida de todos os judeus do império Persa?', 'Ester 7:3'),
    ('B73E4794-F582-4750-A0F2-0CAD7A8EB5B5', '5DF5FA89-758F-4BE5-B155-44354E9A3C25', 'Que rainha da Pérsia instituiu a festa de Purim?', 'Ester 9:32');

--------------------------------------------------------------------------------
-- Estevão
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('3B06C43E-25F8-429F-B1DD-8A85CDDCC7E3', 'Estevão');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('3B06C43E-25F8-429F-B1DD-8A85CDDCC7E3', '089BE225-2575-46CF-8630-270D30D7E265', 'Quem foi o primeiro mártir cristão?', 'Atos 7:59,60'),
    ('3B06C43E-25F8-429F-B1DD-8A85CDDCC7E3', '43CD43CE-082F-4FFB-AA11-64A8303CF0F2', 'Quem repreendeu abertamente o sinédrio pelo assassínio de Jesus?', 'Atos 7:52'),
    ('3B06C43E-25F8-429F-B1DD-8A85CDDCC7E3', '690B498F-AAE4-4073-A3B0-D16C8AD74F69', 'A face de quem resplandeceu como um anjo ao pregar a palavra de Deus?', 'Atos 6:15'),
    ('3B06C43E-25F8-429F-B1DD-8A85CDDCC7E3', '60457895-6222-4338-BA8B-4A4AA132C39D', 'Quem disse “Eis que observo o céu aberto e o Filho do homem em pé à direita de Deus"?', 'Atos 7:56'),
    ('3B06C43E-25F8-429F-B1DD-8A85CDDCC7E3', 'F914092F-347C-4CFA-A556-7B79C89B80CD', 'Qual dos primitivos cristãos foi apedrejado até a morte pelos judeus?', 'Atos 7:59'),
    ('3B06C43E-25F8-429F-B1DD-8A85CDDCC7E3', 'D7D4CCE6-942C-4CF4-B9EB-C11FE96AE434', 'Quem disse como última oração: "Jeová, não lhes impute este pecado"?', 'Atos 7:60');

--------------------------------------------------------------------------------
-- Eva
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('6D601ED2-EB0B-475F-BABB-6C5E72BEEAE8', 'Eva');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('6D601ED2-EB0B-475F-BABB-6C5E72BEEAE8', 'E271EE5C-757F-4859-BC39-97D7D2AD15D0', 'Que mulher recebeu o nome de seu marido?', 'Gênesis 3:20'),
    ('6D601ED2-EB0B-475F-BABB-6C5E72BEEAE8', '3719C62D-2302-43FC-BAFF-210F251154F8', 'Quem foi a primeira pessoa humana a receber uma sentença de punição?', 'Gênesis 3:13'),
    ('6D601ED2-EB0B-475F-BABB-6C5E72BEEAE8', 'D50F1CD3-63BE-4A80-BE23-BCEAF11C629C', 'Quem foi a mãe de Sete, o antepassado da linhagem de patriarca?', 'Gênesis 4:25'),
    ('6D601ED2-EB0B-475F-BABB-6C5E72BEEAE8', 'AD6C1ACA-AC7D-4673-B77E-587CF05A6963', 'A quem o apóstolo Paulo disse que a serpente enganou com sua astúcia?', '2 Coríntios 11:3'),
    ('6D601ED2-EB0B-475F-BABB-6C5E72BEEAE8', 'F4158D50-5D86-473C-92B6-620CD3894A9F', 'Quem foi a primeira pessoa a ser enganada?', 'Gênesis 3:6'),
    ('6D601ED2-EB0B-475F-BABB-6C5E72BEEAE8', 'E4F2941F-2643-4161-88C4-CE484B0E4862', 'A quem a serpente disse a primeira mentira: "Positivamente não morrereis"?', 'Gênesis 3:4');

--------------------------------------------------------------------------------
-- Ezequias
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('281CCBC9-FDFF-40A1-A446-C1B5D3299720', 'Ezequias');
INSERT INTO questions (card, question, text, evidence) VALUES
    ('281CCBC9-FDFF-40A1-A446-C1B5D3299720', '1CF9C80E-D0D9-4884-BCE2-DF480673C95F', 'Quem restaurou Israel da idolatria após o reinado de Acaz?', '2 Reis 18:1-18'),
    ('281CCBC9-FDFF-40A1-A446-C1B5D3299720', 'AF5219BA-1BD1-45C8-B1FF-45E4C70890AA', 'Quem arrancou o ouro das portas e ombreiras do templo de Jeová e deu ao rei da Assíria?', '2 Reis 18:16'),
    ('281CCBC9-FDFF-40A1-A446-C1B5D3299720', '9742C5D7-845C-4AAC-BAE6-0DC8F6A57033', 'A quem Isaias disse: “Dá ordens aos da tua casa porque tu mesmo morrerás e não viverás”?', 'Isaias 38:1'),
    ('281CCBC9-FDFF-40A1-A446-C1B5D3299720', 'CD80C498-CE22-4762-AE96-78A345C74462', 'Que rei teve a sua vida aumentada em quinze anos como resposta a uma oração?', 'Isaias 38:5'),
    ('281CCBC9-FDFF-40A1-A446-C1B5D3299720', '5FBDB2C6-0512-45DF-A704-2CCE70534328', 'Que rei destruiu a serpente de bronze que Moisés fizera no deserto?', '2 Reis 18:4'),
    ('281CCBC9-FDFF-40A1-A446-C1B5D3299720', '5EBFF163-3028-41A7-8654-0FBA228F67F8', 'Para quem a sombra retrocedeu dez degraus na escada?', '2 Reis 20:11');

--------------------------------------------------------------------------------
-- Ezequiel
--------------------------------------------------------------------------------
INSERT INTO cards (card, name) VALUES 
    ('AA4F44FA-79BC-4BEE-BFFB-960887EBDEAD', 'Ezequiel');
INSERT INTO questions (card, question, text, evidence) VALUES