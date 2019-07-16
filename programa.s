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
  # carga num0 a num5 en los registros 9 a 14
  lw $t1, 0($zero) # lw $r9, 0($r0)
  lw $t2, 4($zero) # lw $r10, 4($r0)
  lw $t3, 8($zero) # lw $r11, 8($r0)
  lw $t4, 12($zero) # lw $r12, 12($r0)
  lw $t5, 16($zero) # lw $r13, 16($r0)
  lw $t6, 20($zero) # lw $r14, 20($r0)
  # copia num0 a num5 sobre num6 a num11
  sw $t1, 24($zero) # sw $r9, 24($r0)
  sw $t2, 28($zero) # sw $r10, 28($r0)
  sw $t3, 32($zero) # sw $r11, 32($r0)
  sw $t4, 36($zero) # sw $r12, 36($r0)
  sw $t5, 40($zero) # sw $r13, 40($r0)
  sw $t6, 44($zero) # sw $r14, 44($r0)
  # carga num6 a num11 en los registros 9 a 14, deberia ser lo mismo
  lw $t1, 24($zero) # lw $r9, 24($r0)
  lw $t2, 28($zero) # lw $r10, 28($r0)
  lw $t3, 32($zero) # lw $r11, 32($r0)
  lw $t4, 36($zero) # lw $r12, 36($r0)
  lw $t5, 40($zero) # lw $r13, 40($r0)
  lw $t6, 44($zero) # lw $r14, 44($r0)
  # realiza operaciones
  add $t7, $t1, $t2 # add $r15, $r9, $r10 => r15=r9+r10
  add $s0, $t3, $t4 # add $r16, $r11, $r12 => r16=r11+r12
  sub $s1, $t5, $t1 # sub $r17, $r13, $r9 => r17=r13-r9
  sub $s2, $t6, $t2 # sub $r18, $r14, $r10 => r18=r14-r10
  and $s3, $t1, $t2 # and $r19, $r9, $r10 => r19=r9 and r10
  and $s4, $t7, $t2 # and $r20, $r15, $r10 => r20=r15 and r10
  or $s5, $t1, $t2 # or $r21, $r9, $r10 => r21=r9 or r10
  or $s6, $s0, $t2 # or $r22, $r16, $r10 => r22=r16 or r10
  slt $s7, $t1, $t2 # slt $r23, $r9, $r10 => r23=1 si r9 < r10 else 0
  slt $t8, $s0, $t2 # slt $r24, $r16, $r10 => r24=1 si r16 < r10 else 0
  # carga datos inmediatos en la parte alta de registros
  j inmediatos
  nop
  nop
  nop
  add $t7, $t7, $t2 # add $r15, $r15, $r10 => r15=r15+r10
  add $s0, $s0, $t2 # add $r16, $r16, $r10 => r16=r16+r10
  
 inmediatos:
  lui $t1, 1 # lui $r9, 1 => queda a 65536
  lui $t2, 2 # lui $r10, 2 => queda a 131072
  addi $t3, $t3, 6 # 4h + 6h = Ah
  ori $t4, $t4, 112 # 8 OR 70 = 78h 
  andi $t7, $t7, 2  # 3h AND 2h = 2h

    

