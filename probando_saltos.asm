# Como se resuelven los saltos incondicionales en Ex y los condicionales en Mem
# se prueba que si tenemos una instrucci�n beq seguida por una j, beq tiene prioridad

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
  # este debe saltar primero
  beq $t1, $t2, condicional
  # Sin flush del pipeline este nop produce un resultado an�malo
  nop
  # este salto nunca ocurre
  j incondicional
  
condicional:
  lw $t3, 4($zero) # lw $r11, 4($r0)
  j fin

incondicional:
  lw $t4, 8($zero) # lw $r11, 8($r0)
  
fin:
  nop
