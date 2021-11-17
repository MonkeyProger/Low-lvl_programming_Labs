.text
start:
.globl start
  call main
exit:
  li a0,10
  ecall