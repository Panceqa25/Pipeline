.data
buffer: .word 0  # Reserva espaço para uma palavra (4 bytes)

.text
.globl main

main:
	la t0, buffer       	# Carrega o endereço da etiqueta 'buffer' em t0
	addi t1, zero, 16	# t1 = 16 
	add t4, t1, t1 		# t4 = 32
	
	addi t2, zero, 50 	# t2 = 50
	addi t3, zero, -5 	# t3 = -5
	add t5, t2, t2 		# t5 = 100
	
	sw t4, 0(t0)        	# Armazena o valor de t4 (32) na memória no endereço contido em t0
	
	beq t1, t4, exit	# branch if (t1 == t4) -> FALSO
	add t6, t3, t3  	# t6 = -10
	
	lw a1, 0(t0)        	# Carrega o valor da memória no endereço contido em t0 para a1
		
exit:
