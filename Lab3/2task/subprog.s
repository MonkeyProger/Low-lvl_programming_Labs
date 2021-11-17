.text
subprog:
.globl subprog
# a2 = <показатель>
# a5 = <адрес 0 эл>
  addi a6, a5, 4 #a6 = a5 + 4 <адрес 1 эл>
  li a4, 1       # a4 = a <текущий коэфф>
  li a3, 1       # a3 = t <счётчик цикла>
loop:
  addi t0, a2, 1
  sub t0, t0, a3
  mul t0, t0, a4
  div a4, t0, a3
  sw a4, 0(a6)
  addi a6, a6 , 4
  addi a3, a3, 1
  bgt a3, a2, finish
  jal zero, loop
finish:
  ret