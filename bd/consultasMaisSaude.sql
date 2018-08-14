-- SCRIPT DE CONSULTAS DO APP

-- Consulta por Especialidade:

--CARDIO
select  nome, endereco, telefone, convenios from local  where codesp = 1 and codtipoloc = 4;

--DERMATO
select  nome, endereco, telefone, convenios from local  where codesp = 3 and codtipoloc = 4;

--ANGIOLO
select  nome, endereco, telefone, convenios from local where codesp = 2 and codtipoloc = 4;

-- OTORRINO
select  nome, endereco, telefone, convenios from local where codesp = 6 and codtipoloc = 4;

--NEURO
select  nome, endereco, telefone, convenios from local where codesp = 7 and codtipoloc = 4;

--ODONTO
select  nome, endereco, telefone, convenios from local  where codesp = 12 and codtipoloc = 4;

--GINECO E OBSTETRÍCIA
select  nome, endereco, telefone, convenios from local  where codesp = 8 and codtipoloc = 4;

--ORTOPEDI
select  nome, endereco, telefone, convenios from local where codesp = 11 and codtipoloc = 4;

-- OFTALMO
select  nome, endereco, telefone, convenios from local where codesp = 10 and codtipoloc = 4;

--GERIATRA
select  nome, endereco, telefone, convenios from local where codesp = 9 and codtipoloc = 4;

--CLÍNICO GERAL
select  nome, endereco, telefone, convenios from local where codesp = 5 and codtipoloc = 4;

--PEDIATRA
select  nome, endereco, telefone, convenios from local  where codesp = 4 and codtipoloc = 4;



-- Consulta por Local

-- Hospital
select  nome, endereco, telefone, convenios from local where codtipoloc = 1;

-- Clínica
select  nome, endereco, telefone, convenios from local where codtipoloc = 2;

--Laboratório
select  nome, endereco, telefone, convenios from local where codtipoloc = 3;





--Consulta por Convênio
--CASU
select l.nome, l.endereco, l.telefone, esp.nome  from local l join  conveniolocal lc on l.codlocal = lc.codlocal
join especialidades esp on esp.codesp = l.codesp where lc.codconv = 1;

--IPSEMG
select l.nome, l.endereco, l.telefone, esp.nome  from local l join  conveniolocal lc on l.codlocal = lc.codlocal
join especialidades esp on esp.codesp = l.codesp where lc.codconv = 2;


--UNIMED

select l.nome, l.endereco, l.telefone, esp.nome  from local l join  conveniolocal lc on l.codlocal = lc.codlocal
join especialidades esp on esp.codesp = l.codesp where lc.codconv = 3;



