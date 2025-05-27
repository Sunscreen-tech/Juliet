econst t0, 0
move t1, 0
__L1_MAIN__:
cmpl v1, t1, 32
move t2, v1
beq t2, zero, __L2_MAIN__
secread t2
ecmpl v1, t0, t2
move t3, v1
emux t3, t3, t2, t0
move t0, t3
add v1, t1, 1
move t1, v1
j __L1_MAIN__
__L2_MAIN__:
answer t0

