--Query para criação das tabelas e partições por data com expiração de 20 dias
CREATE SCHEMA IF NOT EXISTS smart_cto_eth
OPTIONS(
  location="us",
  default_table_expiration_days=20,
  description="Schema que contem as tabelas do desafio proposto"
  );

CREATE TABLE IF NOT EXISTS smart_cto_eth.main
(
 NOME_CONTRATO STRING OPTIONS(description=""),
 CONTRATO STRING OPTIONS (description=""),
 BLOCO INTEGER OPTIONS (description=""),
 tmestamp TIMESTAMP OPTIONS (description=""),
 TAXA INTEGER OPTIONS (description=""),
 ANOMESIA DATE OPTIONS (description="")
)
PARTITION BY ANOMESIA
 OPTIONS(
   expiration_timestamp=TIMESTAMP "2022-03-01 00:00:00 UTC",
   description="Tabela vai expirar em menos de 1 mes"
 );

 --1
 CREATE TABLE IF NOT EXISTS smart_cto_eth.ex1
(
 CONTRATO STRING OPTIONS (description=""),
 BLOCO INTEGER OPTIONS (description=""),
 QUANTIDADE INTEGER OPTIONS (description=""),
 ANOMESIA DATE OPTIONS (description="")
)
PARTITION BY ANOMESIA
 OPTIONS(
   expiration_timestamp=TIMESTAMP "2022-03-01 00:00:00 UTC",
   description="Tabela vai expirar em menos de 1 mes"
 );

 --1
 CREATE TABLE IF NOT EXISTS smart_cto_eth.ex1
(
 CONTRATO STRING OPTIONS (description=""),
 BLOCO INTEGER OPTIONS (description=""),
 QUANTIDADE INTEGER OPTIONS (description=""),
 ANOMESIA DATE OPTIONS (description="")
)
PARTITION BY ANOMESIA
 OPTIONS(
   expiration_timestamp=TIMESTAMP "2022-03-01 00:00:00 UTC",
   description="Tabela vai expirar em menos de 1 mes"
 );

 --2
 CREATE TABLE IF NOT EXISTS smart_cto_eth.ex2
(
 BLOCO INTEGER OPTIONS (description=""),
 tmestamp TIMESTAMP OPTIONS (description=""),
    QUANTIDADE INTEGER OPTIONS (description=""),
 ANOMESIA DATE OPTIONS (description="")
)
PARTITION BY ANOMESIA
 OPTIONS(
   expiration_timestamp=TIMESTAMP "2022-03-01 00:00:00 UTC",
   description="Tabela vai expirar em menos de 1 mes"
 );
--3
 CREATE TABLE IF NOT EXISTS smart_cto_eth.ex3
(
 CONTRATO STRING OPTIONS (description=""),
 BLOCO INTEGER OPTIONS (description=""),
 tmestamp TIMESTAMP OPTIONS (description=""),
 ANOMESIA DATE OPTIONS (description="")
)
PARTITION BY ANOMESIA
 OPTIONS(
   expiration_timestamp=TIMESTAMP "2022-03-01 00:00:00 UTC",
   description="Tabela vai expirar em menos de 1 mes"
 );
 --4
  CREATE TABLE IF NOT EXISTS smart_cto_eth.ex4
(
NOME_CONTRATO STRING OPTIONS(description=""),
 CONTRATO STRING OPTIONS (description=""),
 BLOCO INTEGER OPTIONS (description=""),
 TAXA INTEGER OPTIONS (description=""),
 ANOMESIA DATE OPTIONS (description="")
)
PARTITION BY ANOMESIA
 OPTIONS(
   expiration_timestamp=TIMESTAMP "2022-03-01 00:00:00 UTC",
   description="Tabela vai expirar em menos de 1 mes"
 );