 .begin
 .org 2048
 
 .macro push regEntrada
 addcc %r14, -4, %r14
 st regEntrada, %r14
 .endmacro
 
 .macro pop regSalida
 ld %r14, regSalida
 addcc %r14, 4, %r14
 .endmacro
 
 ld [x], %r1
 ld [y], %r2
 push %r1
 push %r2
 ld %r15, %r6
 call sumaStack
 ld %r6, %r15
 sumaStack: pop %r8	
 	    pop %r9
 	    add %r9,%r8, %r10
 	    push %r10
 	    jmpl %r15 + 4, %r0
 x: 15
 y: 2
 .end
 