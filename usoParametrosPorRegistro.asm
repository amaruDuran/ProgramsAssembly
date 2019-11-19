 !Ejemplo de uso de directiva <equ> 

 .begin
 .org 2048
 r .equ 10 		! marco como constante el número 10
 s .equ 100		! marco como constante el numero 100
 addcc %r0, r, %r1 ! inserto en registro r1, la constante s
 addcc %r0, s, %r2 ! inserto en registro r2, la constante r
 call sumaDosNum 
 addcc %r7, %r0, %r8

 !subrutina que carga los parámetros ubicados en r1 y r2
 !luego suma los numeros y los guarda en el registro r7
 sumaDosNum:	addcc %r1, %r2, %r7 
		jmpl %r15 + 4, %r0
 jmpl %r15 + 4, %r0
 .end
 