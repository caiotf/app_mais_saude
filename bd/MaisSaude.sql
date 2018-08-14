DROP TABLE IF EXISTS "ConvenioLocal";
CREATE TABLE ConvenioLocal(
    CodLocal INTEGER ,
    CodConv INTEGER ,
    PRIMARY KEY (CodLocal, CodConv),
    FOREIGN KEY(CodLocal) REFERENCES Local(CodLocal),
    FOREIGN KEY(CodConv) REFERENCES Convenios(CodConv)
);
INSERT INTO "ConvenioLocal" VALUES(1,1);
INSERT INTO "ConvenioLocal" VALUES(1,3);
INSERT INTO "ConvenioLocal" VALUES(2,1);
INSERT INTO "ConvenioLocal" VALUES(2,3);
INSERT INTO "ConvenioLocal" VALUES(3,3);
INSERT INTO "ConvenioLocal" VALUES(4,1);
INSERT INTO "ConvenioLocal" VALUES(5,1);
INSERT INTO "ConvenioLocal" VALUES(5,3);
INSERT INTO "ConvenioLocal" VALUES(6,1);
INSERT INTO "ConvenioLocal" VALUES(6,2);
INSERT INTO "ConvenioLocal" VALUES(6,3);
INSERT INTO "ConvenioLocal" VALUES(7,1);
INSERT INTO "ConvenioLocal" VALUES(7,3);
INSERT INTO "ConvenioLocal" VALUES(8,1);
INSERT INTO "ConvenioLocal" VALUES(9,3);
INSERT INTO "ConvenioLocal" VALUES(10,1);
INSERT INTO "ConvenioLocal" VALUES(10,2);
INSERT INTO "ConvenioLocal" VALUES(10,3);
INSERT INTO "ConvenioLocal" VALUES(11,1);
INSERT INTO "ConvenioLocal" VALUES(12,1);
INSERT INTO "ConvenioLocal" VALUES(12,3);
INSERT INTO "ConvenioLocal" VALUES(13,2);
INSERT INTO "ConvenioLocal" VALUES(14,2);
INSERT INTO "ConvenioLocal" VALUES(15,1);
INSERT INTO "ConvenioLocal" VALUES(15,2);
INSERT INTO "ConvenioLocal" VALUES(16,1);
INSERT INTO "ConvenioLocal" VALUES(17,1);
INSERT INTO "ConvenioLocal" VALUES(17,3);
INSERT INTO "ConvenioLocal" VALUES(18,3);
INSERT INTO "ConvenioLocal" VALUES(19,1);
INSERT INTO "ConvenioLocal" VALUES(19,3);
INSERT INTO "ConvenioLocal" VALUES(20,3);
INSERT INTO "ConvenioLocal" VALUES(21,3);
INSERT INTO "ConvenioLocal" VALUES(22,3);
INSERT INTO "ConvenioLocal" VALUES(23,1);
INSERT INTO "ConvenioLocal" VALUES(23,2);
INSERT INTO "ConvenioLocal" VALUES(23,3);
INSERT INTO "ConvenioLocal" VALUES(24,1);
INSERT INTO "ConvenioLocal" VALUES(24,3);
INSERT INTO "ConvenioLocal" VALUES(25,1);
INSERT INTO "ConvenioLocal" VALUES(25,3);
INSERT INTO "ConvenioLocal" VALUES(26,1);
INSERT INTO "ConvenioLocal" VALUES(27,1);
INSERT INTO "ConvenioLocal" VALUES(27,3);
INSERT INTO "ConvenioLocal" VALUES(28,1);
INSERT INTO "ConvenioLocal" VALUES(28,3);
INSERT INTO "ConvenioLocal" VALUES(29,1);
INSERT INTO "ConvenioLocal" VALUES(29,3);
INSERT INTO "ConvenioLocal" VALUES(30,1);
INSERT INTO "ConvenioLocal" VALUES(30,2);
INSERT INTO "ConvenioLocal" VALUES(31,1);
INSERT INTO "ConvenioLocal" VALUES(31,2);
INSERT INTO "ConvenioLocal" VALUES(32,1);
INSERT INTO "ConvenioLocal" VALUES(32,3);
INSERT INTO "ConvenioLocal" VALUES(33,1);
INSERT INTO "ConvenioLocal" VALUES(34,3);
INSERT INTO "ConvenioLocal" VALUES(35,2);
INSERT INTO "ConvenioLocal" VALUES(36,2);
INSERT INTO "ConvenioLocal" VALUES(37,2);
INSERT INTO "ConvenioLocal" VALUES(38,2);
INSERT INTO "ConvenioLocal" VALUES(39,1);
INSERT INTO "ConvenioLocal" VALUES(39,2);
INSERT INTO "ConvenioLocal" VALUES(40,1);
INSERT INTO "ConvenioLocal" VALUES(40,2);
INSERT INTO "ConvenioLocal" VALUES(41,1);
INSERT INTO "ConvenioLocal" VALUES(41,2);
INSERT INTO "ConvenioLocal" VALUES(42,2);
INSERT INTO "ConvenioLocal" VALUES(43,1);
INSERT INTO "ConvenioLocal" VALUES(43,2);
INSERT INTO "ConvenioLocal" VALUES(44,1);
INSERT INTO "ConvenioLocal" VALUES(44,2);
INSERT INTO "ConvenioLocal" VALUES(45,3);
INSERT INTO "ConvenioLocal" VALUES(46,1);
INSERT INTO "ConvenioLocal" VALUES(46,3);
INSERT INTO "ConvenioLocal" VALUES(47,1);
INSERT INTO "ConvenioLocal" VALUES(47,2);
INSERT INTO "ConvenioLocal" VALUES(47,3);
INSERT INTO "ConvenioLocal" VALUES(48,1);
INSERT INTO "ConvenioLocal" VALUES(48,2);
INSERT INTO "ConvenioLocal" VALUES(49,1);
INSERT INTO "ConvenioLocal" VALUES(49,2);
DROP TABLE IF EXISTS "Convenios";
CREATE TABLE "Convenios" ("CodConv" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , "Nome" VARCHAR NOT NULL );
INSERT INTO "Convenios" VALUES(1,'CASU');
INSERT INTO "Convenios" VALUES(2,'IPSEMG');
INSERT INTO "Convenios" VALUES(3,'UNIMED');
DROP TABLE IF EXISTS "Especialidades";
CREATE TABLE Especialidades(
    CodEsp INTEGER PRIMARY KEY,
    Nome VARCHAR
);
INSERT INTO "Especialidades" VALUES(1,'Cardiologia');
INSERT INTO "Especialidades" VALUES(2,'Angiologia');
INSERT INTO "Especialidades" VALUES(3,'Dermatologia');
INSERT INTO "Especialidades" VALUES(4,'Pediatria');
INSERT INTO "Especialidades" VALUES(5,'Clínica Geral');
INSERT INTO "Especialidades" VALUES(6,'Otorrinolaringologia');
INSERT INTO "Especialidades" VALUES(7,'Neurologia');
INSERT INTO "Especialidades" VALUES(8,'Ginecologia e Obstetrícia');
INSERT INTO "Especialidades" VALUES(9,'Geriatria');
INSERT INTO "Especialidades" VALUES(10,'Oftalmologia');
INSERT INTO "Especialidades" VALUES(11,'Ortopedia');
INSERT INTO "Especialidades" VALUES(12,'Odontologia');
INSERT INTO "Especialidades" VALUES(13,' ');
DROP TABLE IF EXISTS "Local";
CREATE TABLE Local(
    CodLocal INTEGER PRIMARY KEY,
    Nome VARCHAR,
    Endereco VARCHAR,
    Telefone VARCHAR,
    CodEsp INTERGER,
    CodTipoLoc INTEGER, "Convenios" VARCHAR,
    FOREIGN KEY(CodTipoLoc) REFERENCES TipoLocal(CodTipoLoc),
    FOREIGN KEY(CodEsp) REFERENCES Especialidades(CodEsp)
);
INSERT INTO "Local" VALUES(1,'Dr. Wagner Augusto Morato Cunha','Rua Nações Unidas, 79, Centro, Diamantina','(38) 3531-1234',1,4,'CASU - UNIMED');
INSERT INTO "Local" VALUES(2,'Dr. Fernando Antonio Lopes Magnani','Rua Sother Ramos Couto, 71, Fátima, Diamantina','(38) 3531-3528 | (38) 3531-3644',1,4,'CASU - UNIMED');
INSERT INTO "Local" VALUES(3,'Dr. Leonardus Jacobus Havenith','Rua Jose Aguilar De Paula, 67, Santo Inácio, Diamantina','(38) 3531-8532',1,4,'UNIMED');
INSERT INTO "Local" VALUES(4,'Dr. Renan Santiago Faria','Praça Redelvim Andrade, 564, Centro, Diamantina','(38) 3531-3786',1,4,'CASU');
INSERT INTO "Local" VALUES(5,'Dr. Frederico Pelli Seabra','Rua Arthur Queiroga, 150, Presidente, Diamantina','(38) 3531-2134',2,4,'CASU - UNIMED');
INSERT INTO "Local" VALUES(6,'Dra. Tatiane Vilela Bousada Dias ','Rua Da Caridade, 415 - SALA 4, Centro, Diamantina','(38) 3531-3030',3,4,'CASU - IPSEMG - UNIMED');
INSERT INTO "Local" VALUES(7,'Dr. Marcelo Santos Miranda','Rua Nações Unidas, 79, Centro, Diamantina','(38) 3531-3710',3,4,'CASU - UNIMED');
INSERT INTO "Local" VALUES(8,'Dra. Maria Carolina Durães Freire','Praça Redelvim Andrade, 564, Centro, Diamantina','(38) 3531-1553',3,4,'CASU ');
INSERT INTO "Local" VALUES(9,'Dr. Rodrigo Ferreira Medeiros','Rua Redelvim Andrade, 564, Centro, Diamantina','(38) 3531-1214',4,4,'UNIMED');
INSERT INTO "Local" VALUES(10,'Dr. Ricardo Rodolfo Rocha','Rua Barao Do Rio Branco, 38, Largo Dom Joao, Diamantina','(38) 3531-1443',4,4,'CASU - IPSEMG - UNIMED');
INSERT INTO "Local" VALUES(11,'Dr. Alison Cristine Pinto Guelpeli','Praça Redelvim Andrade, 564, Centro, Diamantina','(38) 3531-1553',4,4,'CASU');
INSERT INTO "Local" VALUES(12,'Dr. Alexandre Xavier','Praça Redelvim Andrade, 564, Centro, Diamantina','(38) 3532-1500',5,4,'CASU - UNIMED');
INSERT INTO "Local" VALUES(13,'Dr. Ewerton Antonio Fernandes','Rua Domingos Jose de Almeida, 41, Bom Jesus, Diamantina','38) 3531-9924',5,4,'IPSEMG');
INSERT INTO "Local" VALUES(14,'Dr. Luiz Geraldo Pimenta de Araujo','Praça Redelvim Andrade, 564, Centro, Diamantina','38)3532-1500',5,4,'IPSEMG');
INSERT INTO "Local" VALUES(15,'Dr. Miguel Pontes Correia Neves','Rua da Caridade, 106, Centro, Diamantina','(38)3531-1431',5,4,'CASU - IPSEMG');
INSERT INTO "Local" VALUES(16,'Dr. Carlos Roberto de Matos','Rua Paula Vieira, 638, Presidente, Diamantina','(38) 3531-2499',5,4,'CASU');
INSERT INTO "Local" VALUES(17,'Dr. Christiano Silva Orlandi','Praça Redelvim Andrade, 564, Centro, Diamantina','(38) 3531-2095',6,4,'CASU - UNIMED');
INSERT INTO "Local" VALUES(18,'Dr. Fabio Henrique Machado Costa','Rua Macau De Baixo, 262, Centro, Diamantina','(38) 3531-6634',6,4,'UNIMED');
INSERT INTO "Local" VALUES(19,'Dr. Marcelo Moreira Sanches Aneas','Rua Nações Unidas, 79, Fátima, Diamantina','(38) 3531-4295',6,4,'CASU - UNIMED');
INSERT INTO "Local" VALUES(20,'Dra. Caroline Goncalves Cartaxo Melo','Rua Macau De Baixo, 262, Centro, Diamantina','(38) 3531-9119',7,4,'UNIMED');
INSERT INTO "Local" VALUES(21,'Dr. Silvio Ramos','Rua Arthur Queiroga, 150, Presidente, Diamantina','(38) 3531-4016',7,4,'UNIMED');
INSERT INTO "Local" VALUES(22,'Dr. Antonio Edvaldo Silva','Rua Da Caridade, 119, Centro, Diamantina','(38) 3531-8504',8,4,'UNIMED');
INSERT INTO "Local" VALUES(23,'Dra. Maria Zilmar de Medeiros Quirino','Praça Redelvim Andrade, 577 - 1 ANDAR, Centro, Diamantina','(38) 3531-1727',8,4,'CASU - IPSEMG - UNIMED');
INSERT INTO "Local" VALUES(24,'Dra. Maria Cristina Motta Silva','Rua Shoter Ramos Couto, 71, Fátima, Diamantina','(38) 3531-3528',8,4,'CASU - UNIMED');
INSERT INTO "Local" VALUES(25,'Dr. Luciano Vial Faria','Praça Redelvim Andrade, 564, Centro, Diamantina','(38) 3531-3786',8,4,'CASU -  UNIMED');
INSERT INTO "Local" VALUES(26,'Dra. Fabiana Souza Máximo Pereira','Rua Arthur Queiroga, 150, Centro, Diamantina','(38) 3531-4112',9,4,'CASU ');
INSERT INTO "Local" VALUES(27,'Dra. Aline Miranda de Almeida','Rua Macau De Baixo, 320, Centro, Diamantina','(38) 3531-3133',10,4,'CASU -  UNIMED');
INSERT INTO "Local" VALUES(28,'Dr. Manoel Bueno Ribeiro','Rua Da Luz, 277, Largo Dom João, Diamantina','(38) 3531-2458',10,4,'CASU - UNIMED');
INSERT INTO "Local" VALUES(29,'Dr. Evanildo Jose da Silva','Rua Arthur Queiroga, 150, Presidente, Diamantina','(38) 3531-8974',10,4,'CASU -  UNIMED');
INSERT INTO "Local" VALUES(30,'Dr. Archimedes Carneiro Fonseca','Rua Nações Unidas, 77, Centro, Diamantina','(38) 3531-4295',11,4,'CASU - IPSEMG');
INSERT INTO "Local" VALUES(31,'Dr. Hugo Leonardo Miranda Coelho','Rua da Caridade, 106, Centro, Diamantina','(38)35321 3103',11,4,'CASU - IPSEMG ');
INSERT INTO "Local" VALUES(32,'Dr. Antonio Ferreira de Freitas Neto','Rua Artur Queiroga, 150, Centro, Diamantina','(38) 3531-2134',11,4,'CASU - UNIMED');
INSERT INTO "Local" VALUES(33,'Dr. Anderson José Santos','Praça Redelvim Andrade, 564, Centro, Diamantina','(38) 3531-1553',11,4,'CASU');
INSERT INTO "Local" VALUES(34,'Dr. Gustavo Carneiro Fonseca','Rua Nações Unidas 77,79, Fátima, Diamantina','(38) 3531-1234',11,4,' UNIMED');
INSERT INTO "Local" VALUES(35,'Dr. Altair Borges Costa','Rua Augusto Nelson, 84 Sl/107, Centro, Diamantina','(38)3531-4086',12,4,'IPSEMG');
INSERT INTO "Local" VALUES(36,'Dra. Cynthia Couto Pimenta Fonseca','Rua Macau do Meio, 158 Sl/05, Centro, Diamantina','(38)3531-3248',12,4,'IPSEMG');
INSERT INTO "Local" VALUES(37,'Dra. Luciana Freire Ferreira','Rua Augusto Nelson, 84 Sl/107, Centro, Diamantina','(38)3531-4086',12,4,'IPSEMG');
INSERT INTO "Local" VALUES(38,'Dra. Maria Luiza Marinho Cruz','Rua Augusto Nelson, 84 Sl/104, Centro, Diamantina','(38)35312318',12,4,'IPSEMG');
INSERT INTO "Local" VALUES(39,'Laboratorio Emilio Avelar Ltda','Rua das Monteiras, 56 a, Largo Dom João','(38)3531-1084',13,3,'CASU - IPSEMG ');
INSERT INTO "Local" VALUES(40,'Laboratorio Oswaldo Cruz Ltda','Rua do Carmo, 138, Centro, Diamantina','(38)3531-2276',13,3,'CASU - IPSEMG - UNIMED');
INSERT INTO "Local" VALUES(41,'Thiago Hugo - Laboratorio de Citopatologia Ltda','Praça Redelvim Andrade, 577, Centro, Diamantina','(38) 3531-2002',13,3,'CASU - IPSEMG');
INSERT INTO "Local" VALUES(42,'Di Tratar Fisioterapia','Rua Arthur Queiroga, 150, Presidente, Diamantina','(38) 3531-2134',13,2,'IPSEMG');
INSERT INTO "Local" VALUES(43,'Diamantimagem Clinica de Imagem Ltda','Rua Paula Vieira, 638, Presidente, Diamantina','(38)35312499',13,2,'CASU - IPSEMG');
INSERT INTO "Local" VALUES(44,'Ideal Medicina Diagnostica','Rua Caridade, 106 a, Centro, Diamantina','(38) 3531-2697',13,2,'CASU - IPSEMG');
INSERT INTO "Local" VALUES(45,'Clínica da Serra','Rua Arthur Queiroga, 150, Centro, Diamantina','(38) 3531-4016',13,2,'UNIMED');
INSERT INTO "Local" VALUES(46,'Clínica Monte Sinai','Rua Sother Ramos Campos, 71, Fátima, Diamantina','(38) 3531-3246',13,2,'CASU - UNIMED');
INSERT INTO "Local" VALUES(47,'Clinica Vale Med','Rua Nações Unidas 77,79, Fátima, Diamantina','(38) 3531-1234',13,2,'CASU - IPSEMG');
INSERT INTO "Local" VALUES(48,'Irmandade de Nossa Senhora da Saude','Praça Redelvim Andrade, 564, Centro, Diamantina','(38)3532-1500',13,1,'CASU - IPSEMG');
INSERT INTO "Local" VALUES(49,'Santa Casa de Caridade de Diamantina','Rua da Caridade, 106, Centro, Diamantina','(38)3532-1300',13,1,'CASU - IPSEMG - UNIMED');
DROP TABLE IF EXISTS "TipoLocal";
CREATE TABLE "TipoLocal" ("CodTipoLoc" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , "Nome" VARCHAR NOT NULL );
INSERT INTO "TipoLocal" VALUES(1,'Hospital');
INSERT INTO "TipoLocal" VALUES(2,'Clínica');
INSERT INTO "TipoLocal" VALUES(3,'Laboratório');
INSERT INTO "TipoLocal" VALUES(4,'Médico');
