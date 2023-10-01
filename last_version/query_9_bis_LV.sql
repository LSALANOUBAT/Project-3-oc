SELECT commune.nom_commune,
    AVG(vente.valeur) AS moyenne_valeur_fonciere
FROM vente
    INNER JOIN bien ON bien.id_vente = vente.id_vente
    INNER JOIN commune ON commune.id_commune = bien.id_commune
    INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
WHERE dpt.code_dpt = 6
    OR dpt.code_dpt = 13
    OR dpt.code_dpt = 33
    OR dpt.code_dpt = 59
    OR dpt.code_dpt = 69
GROUP BY commune.nom_commune
ORDER BY moyenne_valeur_fonciere DESC
LIMIT 3;