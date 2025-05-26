econst t0, 0
econst t1, 0
econst t2, 0
move t0, t2
move t2, 0
__L1_MAIN__:
move t3, 8
cmpl v1, t2, t3
move t3, v1
beq t3, zero, __L2_MAIN__
secread t3
move t1, t3
move t4, t0
ecmpl v1, t4, t1
move t4, v1
mux t1, t4, t1, t0
move t0, t1
add v1, t2, 1
move t2, v1
j __L1_MAIN__
__L2_MAIN__:
answer t0

