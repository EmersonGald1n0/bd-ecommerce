-- adcionando registros na tabela cliente --

INSERT INTO cliente values(null,'tiago batista',33,'12345678920','12345678x','1989-08-01','cruzeirocabuloso','tiagoabtista@gmail.com','masculino');
INSERT INTO cliente values(null,'thiago soares',22,'12345678910','12345679x','2000-04-29','amoaraia','thisoares@gmail.com','masculino');
INSERT INTO cliente values(null,'gabriel piovesani possidonio',26,'44735001177','32145679x','1996-04-04','verdaof123','gabspiov@gmail.com','masculino');
INSERT INTO cliente values(null,'emerson galdino',26,'32145678910','12345119x','1996-03-03','sampag','emersongaldin@gmail.com','masculino');
INSERT INTO cliente values(null,'marcelo lopes da silva',30,'99999678910','18349999x','1992-03-13','scarmpr4','tchelo21@gmail.com','masculino');
INSERT INTO cliente values(null,'renata ingrid da silva',55,'22547679919','42345111x','1967-11-01','tricoevida123','reingrid123@hotmail.com','feminino');
INSERT INTO cliente values(null,'virgulina ferreira da silva',77,'77745678910','77345679x','1946-01-22','lampiaobh123','vifesilva@uol.com','feminino');
INSERT INTO cliente values(null,'ana maria passos',20,'78946677910','75645679x','2002-04-30','familiapassos234','mariapaana@uol.com','feminino');
INSERT INTO cliente values(null,'tereza martins marconi',80,'47736987855','89355679x','1943-01-01','henriqe123','henriqueneto@gmail.com','feminino');
INSERT INTO cliente values(null,'theo silva sauro',44,'44348798910','85348679x','1979-02-22','camisa31a','theotheotheo@yahoo.com','masculino');
INSERT INTO cliente values(null,'maria paula costa',18,'11111678910','222345689','2005-04-29','justinbieber','mpaulagatinha@gmail.com','feminino');
INSERT INTO cliente values(null,'weverton da silva',27,'44345888910','923456799','1996-01-01','wesilva34','wevtsilva@gmail.com','masculino');
INSERT INTO cliente values(null,'noberto da silva sauro',78,'42345479766','245666579','1945-10-2','a1b2c3d4','noberto@outlook.com','masculino');
INSERT INTO cliente values(null,'aline santiago de morais',20,'65345676531','12445999x','2002-04-30','123pato','aline@mail.com','feminino');

-- adicionando registros na tabela telefone cliente --

INSERT INTO telefone_cliente VALUES(null,'+55','11','984848383','celular','ativo', 1);
INSERT INTO telefone_cliente VALUES(null,'+55','11','33242424','fixo','ativo', 1);
INSERT INTO telefone_cliente VALUES(null,'+55','16','33222222','fixo','ativo', 2);
INSERT INTO telefone_cliente VALUES(null,'+55','18','997458822','celular','ativo', 3);
INSERT INTO telefone_cliente VALUES(null,'+55','11','33214054','fixo','ativo', 3);
INSERT INTO telefone_cliente VALUES(null,'+55','16','33458875','fixo','ativo', 4);
INSERT INTO telefone_cliente VALUES(null,'+55','15','948484831','celular','ativo', 5);
INSERT INTO telefone_cliente VALUES(null,'+55','71','997447070','celular','ativo', 6);
INSERT INTO telefone_cliente VALUES(null,'+55','71','33248488','fixo','ativo', 6);
INSERT INTO telefone_cliente VALUES(null,'+55','18','999747430','celular','ativo', 7);
INSERT INTO telefone_cliente VALUES(null,'+55','71','44248424','fixo','ativo', 8);
INSERT INTO telefone_cliente VALUES(null,'+55','44','33224580','fixo','ativo', 9);
INSERT INTO telefone_cliente VALUES(null,'+55','71','994877888','celular','ativo', 10);
INSERT INTO telefone_cliente VALUES(null,'+55','11','33447588','fixo','ativo', 11);
INSERT INTO telefone_cliente VALUES(null,'+55','10','997457788','celular','inativo', 12);
INSERT INTO telefone_cliente VALUES(null,'+55','11','981454583','celular','ativo', 12);
INSERT INTO telefone_cliente VALUES(null,'+55','11','33242424','fixo','ativo', 13);
INSERT INTO telefone_cliente VALUES(null,'+55','16','33221221','fixo','ativo', 13);
INSERT INTO telefone_cliente VALUES(null,'+55','18','989818389','celular','ativo', 14);
INSERT INTO telefone_cliente VALUES(null,'+55','19','34942929','fixo','ativo', 14);

-- adcionando registros na tabela endereco cliente --

INSERT INTO endereco_cliente VALUES(null,'12345678','rua cruzeiro', 'minas', 'sao paulo', 'sao paulo', 'sp', 'casa azul', 123, 'do lado da drogasil', 1);
INSERT INTO endereco_cliente VALUES(null,'05339000','av corifeu de azevedo marques', 'butantã', 'sao paulo', 'sao paulo', 'sp', 'RDmatriz', 4004, 'meu trabalho', 1);
INSERT INTO endereco_cliente VALUES(null,'44745678','rua das neves', 'jardins', 'marilia', 'sao paulo', 'sp', 'ao lado da padaria', 44, 'padaria sao joao', 2);
INSERT INTO endereco_cliente VALUES(null,'77339044','av rui barbosa', 'centro', 'assis', 'sao paulo', 'sp', '', 407, 'sorveteria', 3);
INSERT INTO endereco_cliente VALUES(null,'12345678','rua castelammari', 'capao redondo', 'sao paulo', 'sao paulo', 'sp', 'portao branco', 423, 'igreja matriz', 4);
INSERT INTO endereco_cliente VALUES(null,'95979009','rua primeira', 'jd europa', 'niteroi', 'rio de janeiro', 'rj', 'fundos', 4,'casa grande',5);
INSERT INTO endereco_cliente VALUES(null,'55345658','rua fluminense', 'primavera', 'arapiraca', 'alagoas', 'al', 'banco azul', 45, 'beco do paulo', 6);
INSERT INTO endereco_cliente VALUES(null,'05339000','rua atletico mineiro', 'centro', 'uberlandia', 'minas gerais', 'mg', 'frente', 1070, 'bar do alemao', 7);
INSERT INTO endereco_cliente VALUES(null,'44775678','rua videira', 'jd operario', 'londrina', 'parana', 'pr', 'bar do otavio', 44, 'casa branca', 8);
INSERT INTO endereco_cliente VALUES(null,'75339077','av azevedo marques', 'bei do maro', 'rolandia', 'parana', 'pr', 'ap 322', 04, '5 predios', 8);
INSERT INTO endereco_cliente VALUES(null,'05534010','rua apucarana', 'chapadinha', 'manaus', 'amazonas', 'am', 'casa2', 224, 'posto saude', 9);
INSERT INTO endereco_cliente VALUES(null,'04321090','av hebe camargo', 'ponte', 'floresta', 'pernambuco', 'pe', 'ap 78b', 4004, 'batalhão pm', 10);
INSERT INTO endereco_cliente VALUES(null,'19000180','rua descalvado', 'são francisco', 'oiapoque', 'amapa', 'ap', 'casaazul', 123, 'do lado do ancoradouro', 11);
INSERT INTO endereco_cliente VALUES(null,'18790060','rua dos pequizeiros', 'hortolandia', 'itumbiara', 'goias', 'go', 'do lado dos correios', 202, 'meu trabalho', 12);
INSERT INTO endereco_cliente VALUES(null,'12455789','travessa quintino', 'cidade alta', 'picos', 'piaui', 'pi', 'casa 8', 8, 'padaria grão de ouro', 13);
INSERT INTO endereco_cliente VALUES(null,'09248990','rua trze de maio', 'isolina gomes', 'chui', 'rio grande do sul', 'rs', 'hotel internacional', 98, 'casa mãe', 14);

-- adicionando registros na tabela produto --

INSERT INTO produto VALUES(null,'37372', 'Engov', 150, 7.34, 'Dor e Febre');
INSERT INTO produto VALUES(null,'90023', 'Dipirona 500mg 10cp Medley', 230, 10.25, 'Dor e Febre');
INSERT INTO produto VALUES(null,'90024', 'Dipirona 500mg 10cp EMS', 200, 8.30, 'Dor e Febre');
INSERT INTO produto VALUES(null,'12384', 'Advil Extra Alivio Ibuprofeno 400mg 3cp', 130, 7.40, 'Dor e Febre');
INSERT INTO produto VALUES(null,'23912', 'Anador 1g 4cp', 60, 10.25, 'Dor e Febre');
INSERT INTO produto VALUES(null,'57813', 'Naproxeno Sódico 550mg 10cp Neo Química', 28, 15.90, 'Dor e Febre');
INSERT INTO produto VALUES(null,'98513', 'Loção Hidratante Umiditá Gestante 200ml', 4, 109.99, 'Dermocosméticos');
INSERT INTO produto VALUES(null,'09431', 'Loção Hidratante Cetaphil Corpo e Rosto 473ml', 6, 99.90, 'Dermocosméticos');
INSERT INTO produto VALUES(null,'78389', 'Pantene Liso Extremo Shampoo 350ml', 15, 10.25, 'Higiene Pessoal');
INSERT INTO produto VALUES(null,'90031', 'Máscara Ht Patne C Hta & Rt c 550ml', 12, 36.90, 'Higiene Pessoal');
INSERT INTO produto VALUES(null,'90032', 'Escova de Dente Curaprox Ultra Soft 5460 - 3un', 8, 99.90, 'Higiene Bucal');
INSERT INTO produto VALUES(null,'32384', 'Escova de Dente Curaprox 5460 Ultra Soft Cor Variada - 1 unidade', 12, 36.90, 'Higiene Bucal');
INSERT INTO produto VALUES(null,'94232', 'Pasta de Dente Sensodyne Rápido Alívio com 90g', 15, 17.99, 'Higiene Bucal');
INSERT INTO produto VALUES(null,'23213', 'Pasta de Dente Sensodyne Original com 90g', 14, 16.99, 'Higiene Bucal');
INSERT INTO produto VALUES(null,'04213', 'Loção Hidratante Darrow Nutriol Med 390g', 3, 36.90, 'Dermocosméticos');
INSERT INTO produto VALUES(null,'42902', 'Loção Hidratante Cetaphil Pro Ureia 10% 300ml', 4, 36.90, 'Dermocosméticos');
INSERT INTO produto VALUES(null,'49239', 'Sabonete Líquido Facial Profuse Puriance Pele Mista a Oleosa 300ml', 12, 36.90, 'Dermocosméticos');
INSERT INTO produto VALUES(null,'49912', 'Kit Actine Protetor Solar FPS 60 Color 40g + Gel de Limpeza 40g', 13, 69.99, 'Dermocosméticos');
INSERT INTO produto VALUES(null,'49993', 'Ivermectina 4cp Bom farma', 0, 15.99, 'Generico');



-- REGISTRANDO UM PRODUTO NOVO ----------


INSERT INTO produto VALUES(null,'78953', 'ivermectina 42cp Medquimica', 5, 1.99, 'Generico');


-- adicionando registros na tabela forma de pagamento --

INSERT INTO forma_pagamento VALUES(null, 'credito', 'vista',1,1);
INSERT INTO forma_pagamento VALUES(null, 'debito', 'vista',2,2);
INSERT INTO forma_pagamento VALUES(null, 'boleto', 'prazo',3,3);
INSERT INTO forma_pagamento VALUES(null, 'boleto', 'prazo',4,4);
INSERT INTO forma_pagamento VALUES(null, 'credito', 'prazo',5,5);
INSERT INTO forma_pagamento VALUES(null, 'credito', 'vista',6,6);
INSERT INTO forma_pagamento VALUES(null, 'debito', 'vista',7,7);
INSERT INTO forma_pagamento VALUES(null, 'credito', 'prazo',8,8);
INSERT INTO forma_pagamento VALUES(null, 'debito', 'vista',9,9);
INSERT INTO forma_pagamento VALUES(null, 'boleto', 'prazo',10,10);
INSERT INTO forma_pagamento VALUES(null, 'boleto', 'prazo',11,11);
INSERT INTO forma_pagamento VALUES(null, 'credito', 'prazo',12,12);
INSERT INTO forma_pagamento VALUES(null, 'debito', 'vista',13,13);
INSERT INTO forma_pagamento VALUES(null, 'credito', 'prazo',14,14);


-- adicionando registros na tabela pedido --

INSERT INTO pedido VALUES(null,'1','2023-01-20','3.15','7.00','casa',1,1);
INSERT INTO pedido VALUES(null,'2','2023-01-22','40.10','7.00','trabalho',2,2);
INSERT INTO pedido VALUES(null,'3','2023-01-17','150.44','7.00','casa',3,3);
INSERT INTO pedido VALUES(null,'4','2023-02-01','173.15','7.00','casa',4,4);
INSERT INTO pedido VALUES(null,'5','2023-02-01','743.15','0','casa',5,5);
INSERT INTO pedido VALUES(null,'6','2023-02-02','200.29','0','casa',6,6);
INSERT INTO pedido VALUES(null,'7','2023-02-02','453.95','0','casa',7,7);
INSERT INTO pedido VALUES(null,'8','2023-02-03','33.55','7.00','casa',8,8);
INSERT INTO pedido VALUES(null,'9','2023-02-03','10.25','7.00','namorado',9,9);
INSERT INTO pedido VALUES(null,'10','2023-02-03','943.15','0','casa',10,10);
INSERT INTO pedido VALUES(null,'11','2023-02-05','75.55','7.00','casa',11,11);
INSERT INTO pedido VALUES(null,'12','2023-02-06','222.95','0','amigo',12,12);
INSERT INTO pedido VALUES(null,'13','2023-02-07','77.75','7.00','namorada',13,13);
INSERT INTO pedido VALUES(null,'14','2023-02-08','1253.95','0','casa',14,14);