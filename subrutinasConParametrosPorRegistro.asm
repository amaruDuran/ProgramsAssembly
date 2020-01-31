 ! Convenciones de llamada a subrutinas
 !Ej: llamada por parametros, utilizando registros
 .begin
 .org2048
 s .equ 20
 p .equ 3
 
 !Recibe por parametros dos numeros almacenados en r1 y r2
 !Post: Almacenó la suma en %r3
 add %r0, s, %r1 !Como usar .equ, SIN utilizar instrucciones de acceso carga de memoria
 add %r0, p, %r2
 ld %r15, %r9 	!Guardamos el r15 para que no ingrese en un loop el llamdo a subrutina
 call sumar_numeros !En este método ya tenes que saber de antemano, que registros actuaran como parámetro
 ld %r9, %r15 
 jmpl %r15 + 4, %r0
 sumar_numeros: addcc %r1, %r2, %r10
 		jmpl %r15 + 4, %r0
 .end
 