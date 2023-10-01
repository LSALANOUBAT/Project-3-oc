SELECT (
        SELECT COUNT(id_vente)
        FROM vente
        WHERE date_mu < '2020-04-01'
    ) AS premier_T,
    (
        SELECT COUNT(id_vente)
        FROM vente
        WHERE date_mu > '2020-03-30'
    ) AS second_T,
    (
        SELECT ((second_T - premier_t) / premier_T) * 100
    ) AS "Evolution en %";