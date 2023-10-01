SELECT reg.nom_reg,
    bien.adresse_bien,
    commune.nom_commune,
    vente.valeur,
    bien.surface_carrez AS surface
FROM vente
    INNER JOIN bien ON bien.id_bien = vente.id_bien
    INNER JOIN commune ON bien.id_commune = commune.id_commune
    INNER JOIN dpt ON dpt.code_dpt = commune.code_dpt
    INNER JOIN reg ON reg.id_reg = dpt.id_reg
WHERE bien.code_type_local = 2
ORDER BY vente.valeur DESC
LIMIT 10;