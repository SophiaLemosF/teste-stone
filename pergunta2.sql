-- Query que responde a pergunta 2 - Quantos blocos estão sendo criados em um dia?
SELECT  BLOCO,
        DATE(tmestamp) AS tmestamp,
        COUNT(*)    AS QUANTIDADE,
        cast(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE)as date)
FROM `aerial-matrix-340319.smart_cto_eth.main`
WHERE ANOMESIA = cast(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE)as date)
GROUP BY  BLOCO,
          DATE(tmestamp);