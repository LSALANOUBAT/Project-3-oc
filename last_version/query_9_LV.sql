(
    SELECT commune.nom_commune,
        dpt.code_dpt,
        AVG(vente.valeur) AS moyenne_valeur
    FROM vente
        INNER JOIN bien ON bien.id_vente = vente.id_vente
        INNER JOIN commune ON commune.id_commune = bien.id_commune
        INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
    WHERE dpt.code_dpt = 6
    GROUP BY commune.nom_commune
    ORDER BY moyenne_valeur DESC
    LIMIT 3
)
UNION
(
    SELECT commune.nom_commune,
        dpt.code_dpt,
        AVG(vente.valeur) AS moyenne_valeur
    FROM vente
        INNER JOIN bien ON bien.id_vente = vente.id_vente
        INNER JOIN commune ON commune.id_commune = bien.id_commune
        INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
    WHERE dpt.code_dpt = 13
    GROUP BY commune.nom_commune
    ORDER BY moyenne_valeur DESC
    LIMIT 3
)
UNION
(
    SELECT commune.nom_commune,
        dpt.code_dpt,
        AVG(vente.valeur) AS moyenne_valeur
    FROM vente
        INNER JOIN bien ON bien.id_vente = vente.id_vente
        INNER JOIN commune ON commune.id_commune = bien.id_commune
        INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
    WHERE dpt.code_dpt = 33
    GROUP BY commune.nom_commune
    ORDER BY moyenne_valeur DESC
    LIMIT 3
)
UNION
(
    SELECT commune.nom_commune,
        dpt.code_dpt,
        AVG(vente.valeur) AS moyenne_valeur
    FROM vente
        INNER JOIN bien ON bien.id_vente = vente.id_vente
        INNER JOIN commune ON commune.id_commune = bien.id_commune
        INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
    WHERE dpt.code_dpt = 59
    GROUP BY commune.nom_commune
    ORDER BY moyenne_valeur DESC
    LIMIT 3
)
UNION
(
    SELECT commune.nom_commune,
        dpt.code_dpt,
        AVG(vente.valeur) AS moyenne_valeur
    FROM vente
        INNER JOIN bien ON bien.id_vente = vente.id_vente
        INNER JOIN commune ON commune.id_commune = bien.id_commune
        INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
    WHERE dpt.code_dpt = 69
    GROUP BY commune.nom_commune
    ORDER BY moyenne_valeur DESC
    LIMIT 3
);