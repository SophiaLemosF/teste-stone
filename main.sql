--Tabela principal com todas as colunas que preciso na query, para as consultas.
SELECT  A.name      AS NOME_CONTRATO,
        A.address   AS CONTRATO,
        B.number    AS BLOCO,
        B.timestamp AS tmestamp,
        B.gas_used  AS TAXA,
        CAST(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE) AS date )   as ANOMESIA
FROM `bigquery-public-data.crypto_ethereum.tokens` AS A
LEFT JOIN `bigquery-public-data.crypto_ethereum.blocks` AS B
ON A.block_hash=B.hash