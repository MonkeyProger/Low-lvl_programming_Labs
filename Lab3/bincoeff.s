.text
start:
.globl start
  la a6, array   #a6 <адрес 0 эл массива> 
  addi a6, a6, 4 #a6 = a6 + 4 <адрес 1 эл>      
  lw a5, power   # a5 = n <показатель>
  li a4, 1       # a4 = a <текущий коэфф>
  li a3, 1       # a3 = t <счётчик цикла>
loop:
  addi t0, a5, 1
  sub t0, t0, a3
  mul t0, t0, a4
  div a4, t0, a3
  sw a4, 0(a6)
  addi a6, a6 , 4
  addi a3, a3, 1
  bgt a3, a5, finish
  jal zero, loop
finish:
  li a0, 10
  ecall
.rodata
power:
.word 8
.data
array:
.word 1