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