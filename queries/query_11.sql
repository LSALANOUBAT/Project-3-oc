WITH rang_commune AS(
    SELECT ROW_NUMBER() OVER(
            PARTITION BY dpt.code_dpt
            ORDER BY ROUND(AVG(vente.valeur), 2) DESC
        ) rang_dpt,
        dpt.code_dpt,
        commune.nom_commune,
        ROUND(AVG(vente.valeur), 2) AS valeur_moyenne
    FROM vente
        INNER JOIN bien ON bien.id_bien = vente.id_bien
        INNER JOIN commune ON commune.id_commune = bien.id_commune
        INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
    WHERE dpt.code_dpt IN (6, 13, 33, 59, 69)
    GROUP BY dpt.code_dpt,
        commune.nom_commune
)
SELECT rang_dpt,
    code_dpt,
    nom_commune,
    valeur_moyenne
FROM rang_commune
WHERE rang_dpt <= 3;