addi r1 r0 65
addi r31 r0 128
push r1
lw r5 0(r31)
tty r5
pop r4
tty r4
halt

#prints AA
