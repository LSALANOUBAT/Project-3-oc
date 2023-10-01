SELECT commune.id_commune,
    commune.nom_commune,
    COUNT(vente.id_vente) AS nb_vente_1er_trismestre
FROM vente
    INNER JOIN bien ON bien.id_bien = vente.id_bien
    INNER JOIN commune ON bien.id_commune = commune.id_commune
WHERE vente.date_mu < '2020-04-01'
GROUP BY commune.id_commune
HAVING nb_vente_1er_trismestre >= 50
ORDER BY nb_vente_1er_trismestre DESC;