 !Ejemplo de uso de StackPointer(r14) en Assembler
 !Obs: Las Macros siempre se declaran antes de su uso

 .begin
 
 ! macro que Implementa pop en la pila de ejecucion
 .macro pop regSalida
 ld %r14, regSalida
 addcc %r14 , 4, %r14
 .endmacro

 ! macro que Implementa push en la pila de ejecucion
 .macro push regEntrada
 addcc %r14, -4, %r14
 st regEntrada, %r14
 .endmacro
 
 .org 2048
 r .equ 10 		! marco como constante el número 10
 s .equ 100		! marco como constante el numero 100
 addcc %r0, r, %r1 ! inserto en registro r1, la constante s
 addcc %r0, s, %r2 ! inserto en registro r2, la constante r
 push %r1
 push %r2
 pop %r7
 pop %r8
 addcc %r7, %r8, %r9
 .end
 
