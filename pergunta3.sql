-- Query que responde a pergunta 3 - Em relação aos últimos 15 dias, qual foi a variação na quantidade de blocos contendo tokens em um dia?
SELECT CONTRATO,
       BLOCO,
       DATE(tmestamp) AS tmestamp,
       cast(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE)as date)
FROM `aerial-matrix-340319.smart_cto_eth.main` 
WHERE DATE(tmestamp) > CURRENT_DATE -15
AND  ANOMESIA = cast(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE)as date);

 -- Depois para ver a variação com mais facilidade faria a seguinte query
SELECT CONTRATO,
        BLOCO,
        DATE(tmestamp) AS tmestamp,
        cast(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE)as date)
FROM `aerial-matrix-340319.smart_cto_eth.main` 
WHERE tmestamp = 'alguma data'
AND  ANOMESIA = cast(FORMAT_DATE("%Y-%m-%d", CURRENT_DATE)as date);