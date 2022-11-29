-- Práctica 03

-- Nombres:
-- Ambriz Melendez Bruno
-- Díaz Benitez Michelle
-- Espinosa Otañez Victor

-- 1 Los siguientes detalles de los productos: 
-- Nombre del producto, precio del producto, color del producto y tamaño del producto
select snombreproducto,nprecioproducto,scolorproducto,stamanoproducto
from productos

-- 2 Los siguientes detalles de los productos: 
-- Nombre del producto, precio del producto, color del producto y detalles del producto; cuyo tamaño es Mediano
select snombreproducto,nprecioproducto,scolorproducto,sdetallesproducto
from productos
where stamanoproducto = 'Mediano'

-- 3 El nombre, genero, edad, usuario y contraseña de los Clientes.
select snombre,sgenero,nedad,susuario,scontrasena
from clientes

-- 4 Todos los atributos de los Clientes cuya edad sea diferente de 24 años.
select *
from clientes
where nedad != 24

-- 6 La descripción de los códigos de cada producto.
select sdescripcion
from ccodigosproducto

-- 7 El promedio de precios de los productos cuyo color es Amarillo.
select avg(nprecioproducto)
from productos
where scolorproducto = 'Amarillo'

-- 10 El nombre y edad de los clientes, que tienen entre 20 y 40 años.
select snombre,nedad
from clientes
where nedad between 20 and 40

-- 11 La cantidad de personas que no tienen una edad entre 25 and 40 años.
select count(nidcliente)
from clientes
where nedad < 25 or nedad > 40

-- 12 La cantidad de personas que no tienen 20,25 y 40 años.
select count(nidcliente)
from clientes
where nedad not in (20,25,40)

-- 13 El nombre, apellido paterno, apellido materno y usuario de los Clientes cuyo apellido paterno o materno es Pérez.
select snombre,sapellidopaterno,sapellidomaterno,susuario
from clientes
where sapellidopaterno in ('Pérez','Perez') or sapellidomaterno in ('Pérez','Perez')

-- 14 El identificador, fecha y notas de las órdenes.
select nidorden,dfecha,snotas
from ordenes

-- 15 Los nombres de los clientes, apellido paterno, correo electrónico, genero y número telefónico de los clientes
-- tal que su apellido paterno comienza con S y su apellido materno tiene al menos una a en cualquier posición.
select snombre,sapellidopaterno,scorreoelectronico,sgenero,snumerotelefonico
from clientes
where sapellidopaterno like 'S%' and sapellidomaterno like '%a%'
