Select c.ConNom as Comunidad, p.ProvNom as Provincia From Comunidades as c
inner join Provincias as p
on p.ComID = c.ComID
order by c.ConNom, p.ProvNom

Select c.ConNom as Comunidad, count(p.ProvNom) as Provincias From Comunidades as c
inner join Provincias as p
on p.ComID = c.ComID
group by c.ConNom
order by c.ConNom

create view prov_y_com as
Select c.ConNom as Comunidad, p.ProvNom as Provincia, p.ProvHab as poblacion From Comunidades as c
inner join Provincias as p
on p.ComID = c.ComID;

Select * from prov_y_com

select comunidad, count(provincia) as Numero_provincias from prov_y_com
group by Comunidad

Select comunidad, sum(poblacion) as Poblacion from prov_y_com
group by Comunidad

Select comunidad, RIGHT('               ' + Format(sum(poblacion), 'N0'),12) AS POBLACION from prov_y_com
group by Comunidad

Select comunidad, Format(sum(poblacion), 'C', 'Pt-pt') AS POBLACION from prov_y_com
group by Comunidad

Select comunidad, Format(sum(poblacion), 'C', 'ES-co') AS POBLACION from prov_y_com
group by Comunidad

Select comunidad, Format(sum(poblacion), 'C', 'ES-vn') AS POBLACION from prov_y_com
group by Comunidad

Select comunidad, Format(sum(poblacion), 'C', 'Jp-jp') AS POBLACION from prov_y_com
group by Comunidad

Select comunidad, Format(sum(poblacion), 'C', 'Cn-cn') AS POBLACION from prov_y_com
group by Comunidad