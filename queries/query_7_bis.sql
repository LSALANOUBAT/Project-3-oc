SELECT (
        SELECT COUNT(id_vente)
        FROM vente
        WHERE date_mu > '2020-03-31'
    ) AS second_T,
    (
        SELECT COUNT(id_vente)
        FROM vente
        WHERE date_mu < '2020-04-01'
    ) AS premier_T,
    (
        SELECT ROUND(((second_T - premier_T) / premier_T) * 100, 2)
    ) AS "Différence en % vente T1 vs T2";