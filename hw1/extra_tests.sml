val alternate1 = alternate([1,2,3,4])
val alternate2 = alternate([1,2,3,4,5])
val min_max_e = min_max([])
val min_max1 = min_max([1,2,3,4,5])
val min_max2 = min_max([5,4,3,2,1])
val min_max3 = min_max([3,5,2,1,4])
val min_max4 = min_max([1])
val min_max5 = min_max([5,5,5])
val cumsum1 = cumsum []
val cumsum2 = cumsum [3]
val cumsum3 = cumsum [1,4,20]
val greeting1 = greeting(NONE)
val greeting2 = greeting(SOME "")
val greeting3 = greeting(SOME "Kike")
val repeat1 = repeat([], [])
val repeat2 = repeat([], [1,2,3])
val repeat3 = repeat([1, 2, 3], [])
val repeat4 = repeat([1, 2, 3], [0, 0, 0])
val repeat5 = repeat([1, 2, 3], [3])
val repeat6 = repeat([1, 2, 3], [3, 2, 1])
val repeat7 = repeat([1, 2, 3], [3, 0, 1])
val repeat8 = repeat([1,2,3], [4,0,3])
val addOpt1 = addOpt(NONE, NONE)
val addOpt2 = addOpt(NONE, SOME 1)
val addOpt3 = addOpt(SOME 1, NONE)
val addOpt4 = addOpt(SOME 5, SOME 3)
val addOpt5 = addOpt(SOME ~1, SOME 4)
val addOpt6 = addOpt(SOME 0, SOME 0)

val test1 = alternate1 = ~2
val test2 = alternate2 = 3

val test3 = min_max_e = NONE
val test4 = min_max1 = SOME (1,5)
val test5 = min_max2 = SOME (1,5)
val test6 = min_max3 = SOME (1,5)
val test7 = min_max4 = SOME (1,1)
val test8 = min_max5 = SOME (5,5)

val test9 = cumsum1 = [0]
val test10 = cumsum2 = [3]
val test11 = cumsum3 = [1, 5, 25]

val test12 = greeting1 = "Hello there, you!"
val test13 = greeting2 = "Hello there, you!"
val test14 = greeting3 = "Hello there, Kike!"

val test15 = repeat1 = []
val test16 = repeat2 = []
val test17 = repeat3 = [1,2,3]
val test18 = repeat4 = []
val test19 = repeat5 = [1,1,1,2,3]
val test20 = repeat6 = [1,1,1,2,2,3]
val test21 = repeat7 = [1,1,1,3]
val test22 = repeat8 = [1,1,1,1,3,3,3]

val test23 = addOpt1 = NONE
val test24 = addOpt2 = NONE
val test25 = addOpt3 = NONE
val test26 = addOpt4 = SOME 8
val test27 = addOpt5 = SOME 3
val test28 = addOpt6 = SOME 0
