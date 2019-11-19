!Ejemplo de uso de directiva <equ> 

 .begin
 .org 2048
 s .equ 10 		! marco como constante el número 10
 addcc %r0, s, %r3 	! inserto en registro r3, la constante 
 ld %r3, %r3, %r4
 jmpl %r15 + 4, %r0
 .end
 