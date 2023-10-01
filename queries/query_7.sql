WITH T2 AS (
    SELECT COUNT(id_vente) AS vente_second_trimestre
    FROM vente
    WHERE date_mu > '2020-03-31'
),
T1 AS (
    SELECT COUNT(id_vente) AS vente_premier_trimestre
    FROM vente
    WHERE date_mu < '2020-04-01'
)
SELECT vente_premier_trimestre,
    vente_second_trimestre,
    ROUND(
        (
            (vente_second_trimestre - vente_premier_trimestre) / vente_premier_trimestre
        ) * 100,
        2
    ) AS "Différence en % vente T1 vs T2"
FROM T1
    JOIN T2;