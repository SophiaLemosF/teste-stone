-- Query que responde a pergunta 1 - Quantos contratos (tokens) estão sendo criados por bloco?
SELECT  CONTRATO,
        BLOCO,
        COUNT(*)  AS QUANTIDADE,
        cast(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE)as date)
FROM `aerial-matrix-340319.smart_cto_eth.main`
WHERE ANOMESIA = cast(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE)as date)
GROUP BY  CONTRATO,
          BLOCO;