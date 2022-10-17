/* Listar los nombres de los usuarios */
SELECT nombre FROM Usuarios;

/* Calcular el saldo máximo de los usuarios de sexo “Mujer” */
SELECT MAX(saldo) FROM Usuarios WHERE sexo ="H";

/* Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY */
SELECT nombre, telefono FROM Usuarios WHERE marca IN("NOKIA", "BLACKBERRY", "SONY");

/* Contar los usuarios sin saldo o inactivos */
SELECT COUNT(usuario) FROM Usuarios WHERE saldo <= 0 OR NOT activo;

/* Listar el login de los usuarios con nivel 1, 2 o 3 */
SELECT usuario FROM Usuarios WHERE nivel IN("1," "2", "3");

/* Listar los números de teléfono con saldo menor o igual a 300 */
SELECT telefono FROM Usuarios WHERE saldo <= 300; 

/* Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL */
SELECT SUM(saldo) FROM Usuarios WHERE compania = "NEXTEL"

/* Contar el número de usuarios por compañía telefónica */
SELECT COUNT(usuario) FROM Usuarios GROUP BY compania;

/* Contar el número de usuarios por nivel */
SELECT COUNT(usuario) FROM Usuarios GROUP BY nivel;

/* Listar el login de los usuarios con nivel 2 */
SELECT usuario FROM Usuarios WHERE nivel = 2

/* Mostrar el email de los usuarios que usan gmail */
SELECT email FROM Usuarios WHERE email LIKE "%gmail.com"

/* Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA */
SELECT nombre, telefono FROM Usuarios WHERE marca IN("LG", "SAMSUNG", "MOTOROLA");

/* Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG */
SELECT nombre, telefono FROM Usuarios WHERE marca NOT IN("LG", "SAMSUNG", "MOTOROLA");

/* Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL */
SELECT usuario, telefono FROM Usuarios WHERE compania = "IUSACELL";

/* Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL */
SELECT usuario, telefono FROM Usuarios WHERE compania != "TELCEL";

/* Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA */
SELECT AVG(saldo) FROM Usuarios WHERE marca = "NOKIA";

/* Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL */
SELECT usuario, telefono FROM Usuarios WHERE compania IN("IUSACELL", "AXEL");

/* Mostrar el email de los usuarios que no usan yahoo */
SELECT email FROM Usuarios WHERE email NOT LIKE ("%yahoo.com");

/* Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL */
SELECT usuario, telefono FROM Usuarios WHERE compania NOT IN("TELCEL", "IUSACELL");