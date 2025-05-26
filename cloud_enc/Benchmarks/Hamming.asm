econst t0, 0
econst t1, 0
econst t2, 0
econst t3, 0
econst t4, 0
econst t5, 0
econst t6, 0
move t2, t6
secread t6
move t0, t6
secread t6
move t1, t6
exor v1, t0, t1
move t0, v1
move t3, t0
move t0, 0
__L1_MAIN__:
move t1, 32
cmpl v1, t0, t1
move t1, v1
beq t1, zero, __L2_MAIN__
eslr v1, t3, t0
move t1, v1
move t4, t1
econst t1, 1
eand v1, t4, t1
move t1, v1
move t5, t1
eadd v1, t2, t5
move t1, v1
move t2, t1
add v1, t0, 1
move t0, v1
j __L1_MAIN__
__L2_MAIN__:
answer t2

