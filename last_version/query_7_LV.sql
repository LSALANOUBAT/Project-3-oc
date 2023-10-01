SELECT a.nom_commune,
    a.premier_T,
    a.second_T,
    (a.second_T - a.premier_T) / a.premier_T * 100 AS diff
FROM(
        SELECT commune.nom_commune,
            SUM(
                CASE
                    WHEN vente.date_mu < '2020-04-01' THEN 1
                    ELSE 0
                END
            ) AS premier_T,
            SUM(
                CASE
                    WHEN vente.date_mu > '2020-03-30' THEN 1
                    ELSE 0
                END
            ) AS second_T
        FROM vente
            INNER JOIN bien ON vente.id_bien = bien.id_bien
            INNER JOIN commune ON commune.id_commune = bien.id_commune
        GROUP BY commune.nom_commune
    ) AS a
WHERE (a.second_T - premier_T) / premier_T * 100 > 20;