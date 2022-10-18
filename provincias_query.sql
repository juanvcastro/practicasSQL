/* Queremos saber de qué provincias tenemos clientes, sin repetir el nombre de la provincia: las consultas que permitan responder las siguientes preguntas: */

/* 1. ¿Qué provincias no tenemos clientes? */

/* Sin Join */
SELECT nombre FROM provincias WHERE NOT codigo IN(SELECT codigoProvincia FROM clientes);

/* Con Join */
SELECT p.nombre FROM provincias AS p
  LEFT JOIN clientes AS c
  ON c.codigoProvincia=p.codigo
  WHERE c.codigoProvincia IS null;


/* 2. ¿Qué provincias tienen clientes? Pero sin repetir el nombre de la provincia.*/

/* Sin Join */
SELECT nombre FROM provincias WHERE codigo IN(SELECT codigoProvincia FROM clientes);

/* Con Join */
SELECT DISTINCT(p.nombre) FROM provincias AS p
  LEFT JOIN clientes AS c
  ON c.codigoProvincia=p.codigo
  WHERE c.codigoProvincia IS NOT null;