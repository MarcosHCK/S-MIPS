addi r1 r0 32
addi r2 r0 1
addi r3 r0 0
addi r4 r0 20
addi r5 r0 10
addi r8 r0 2

ciclo:
add r7 r2 r0
addi r9 r0 0
imprime:
divu r2 r5
mfhi r6
push r6
addi r9 r9 1
mflo r2
bne r2 r0 imprime
imprime2:
pop r6
addi r6 r6 48
tty r6
addi r9 r9 -1
bne r9 r0 imprime2
tty r1
add r2 r7 r0
mulu r2 r8
mflo r2
addi r3 r3 1
bne r3 r4 ciclo

halt

# Deberia escribir todas las potencias de 2 del 0 al 19
#prints 1 2 4 8 16 32 64 128 256 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288
