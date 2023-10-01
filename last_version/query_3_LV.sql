SELECT vente.valeur / bien.surface_carrez AS "Prix au m²",
    dpt.code_dpt,
    commune.nom_commune
FROM bien
    INNER JOIN vente ON bien.id_vente = vente.id_vente
    INNER JOIN commune ON bien.id_commune = commune.id_commune
    INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
WHERE bien.type_local = "Appartement"
ORDER BY vente.valeur / bien.surface_carrez DESC
LIMIT 10;