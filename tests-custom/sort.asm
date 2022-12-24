addi r1 r0 4
addi r2 r0 1024

addi r3 r0 67
sw r3 0(r2)
addi r3 r0 65
sw r3 4(r2)
addi r3 r0 68
sw r3 8(r2)
addi r3 r0 66
sw r3 12(r2)

addi r8 r0 -1
sort:
add r3 r2 r0
add r4 r1 r8
addi r9 r0 0
next:
lw r5 0(r3)
lw r6 4(r3)
slt r7 r6 r5
bgtz r7 change
j nochange 
change:
sw r5 4(r3)
sw r6 0(r3)
addi r9 r0 1
nochange:
addi r3 r3 4
addi r4 r4 -1
bgtz r4 next
bgtz r9 sort

add r3 r2 r0
add r4 r1 r0
loop1p:
lw r5 0(r3)
tty r5
addi r3 r3 4
addi r4 r4 -1
bgtz r4 loop1p
halt

#prints ABCD
