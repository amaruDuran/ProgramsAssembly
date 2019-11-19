 	.begin
 	.org 2048	! Comienzo del programa antes se encuentra la memoria del sop 
inicio	.equ 3000 	! Direccion del arreglo a
	ld [length], %r1
	ld [address], %r2
 	andcc	%r3, %r0, %r3
loop: 	andcc	%r1, %r1, %r0
	be	done
 	addcc	%r1, -4, %r1
	addcc	%r1, %r2, %r4
 	ld	%r4, %r5
 	addcc	%r3, %r5, %r3
 	ba	loop

done:	jmpl	%r15 + 4, %r0
length: 	20
address: 	inicio
 	.org	inicio
a: 		25
		-10
		33
		-5
		7
 	.end
	