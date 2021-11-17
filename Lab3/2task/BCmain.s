.text
main:
.globl main
  lw a2, power
  la a5, array
  addi sp, sp, -16
  sw ra, 12(sp)
  call subprog
  lw ra, 12(sp)
  addi sp, sp, 16
  ret
.rodata
power:
.word 8
.data
array:
.word 1