!Ejemplo de Programa que cuenta las veces que dividí un numero hasta llegar a cero.
!Almacena el resultado en el registro 7. 

 .begin
 .org 2048
 s .equ 10 		! marco como constante el número 10
 addcc %r0, s, %r6 	! inserto en registro r3, la constante 
 for:	andcc %r6, %r6, %r0
 	be done		!Si la división llega a cero, termina.
	srl %r6, 1, %r6
	add %r7, 1, %r7
 	ba for
 done: jmpl %r15 + 4, %r0
 .end
 
