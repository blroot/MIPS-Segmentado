# Como se resuelven los saltos incondicionales en Ex y los condicionales en Mem
# se prueba que si tenemos una instrucción beq seguida por una j, beq tiene prioridad y viceversa
# resultado esperado => $t1=$t2=1; $t3=2; $t5=8; resto=0

# Usamos los mismos datos de program.s por simplicidad
.data 
num0: .word 1 # posic 0
num1: .word 2 # posic 4
num2: .word 4 # posic 8 
num3: .word 8 # posic 12 
num4: .word 16 # posic 16 
num5: .word 32 # posic 20
num6: .word 0 # posic 24
num7: .word 0 # posic 28
num8: .word 0 # posic 32
num9: .word 0 # posic 36
num10: .word 0 # posic 40
num11: .word 0 # posic 44
.text

main:
  # carga num0 en los registros 9 y 10
  lw $t1, 0($zero) # lw $r9, 0($r0)
  lw $t2, 0($zero) # lw $r10, 0($r0)
  # solo ejecuta este beq
  beq $t1, $t2, condicional
  # este salto nunca ocurre
  j incondicional
  
condicional:
  lw $t3, 4($zero) # lw $r11, 4($r0)
  
j_seguido_de_beq:
  # solo ejecuta este j
  j incondicional_2
  # este salto nunca ocurre
  beq $t1, $t2, condicional_2

incondicional:
  lw $t4, 8($zero) # lw $r12, 8($r0)
  
condicional_2:
  lw $t6, 4($zero) # lw $r14, 20($r0)

incondicional_2:
  lw $t5, 12($zero) # lw $r13, 12($r0)
  j fin
  
fin:
  nop