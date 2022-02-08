-- Query que responde a pergunta 4 - Qual o bloco que gerou contratos (tokens) e utilizou mais taxa (gas)? Informar o nome de todos os tokens contidos neste bloco.
SELECT  BLOCO,
        NOME_CONTRATO,
        CONTRATO,
        MAX(TAXA) AS TAXA,
        cast(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE)as date)
FROM `aerial-matrix-340319.smart_cto_eth.main`
WHERE ANOMESIA = cast(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE)as date)
GROUP BY  BLOCO,
          NOME_CONTRATO,
          CONTRATO;

-- Depois para ver somente os nomes de contratos que este bloco gerou faria a seguinte query
SELECT  BLOCO,
        NOME_CONTRATO,
        CONTRATO,
        TAXA,
        cast(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE)as date)
FROM `aerial-matrix-340319.smart_cto_eth.main`
WHERE BLOCO= ALGUM NÚMERO DE BLOCO
AND ANOMESIA = cast(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE)as date)