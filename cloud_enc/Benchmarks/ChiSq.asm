econst t0, 0
econst t1, 0
econst t2, 0
econst t3, 0
econst t4, 0
econst t5, 0
econst t6, 0
econst t6, 0
econst t6, 0
econst t6, 0
secread t7
move t0, t7
secread t7
move t1, t7
secread t7
move t2, t7
econst t7, 4
emult v1, t0, t2
move t8, v1
emult v1, t7, t8
move t7, v1
emult v1, t1, t1
move t8, v1
esub v1, t7, t8
move t7, v1
move t3, t7
econst t7, 2
emult v1, t7, t0
move t0, v1
eadd v1, t0, t1
move t0, v1
move t4, t0
econst t0, 2
emult v1, t0, t2
move t0, v1
eadd v1, t0, t1
move t0, v1
move t5, t0
emult v1, t3, t3
move t0, v1
move t6, t0
econst t0, 2
emult v1, t4, t4
move t1, v1
emult v1, t0, t1
move t0, v1
move t6, t0
emult v1, t4, t5
move t0, v1
move t6, t0
econst t0, 2
emult v1, t5, t5
move t1, v1
emult v1, t0, t1
move t0, v1
move t6, t0
answer t6

