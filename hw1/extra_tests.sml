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
val addAllOpt1 = addAllOpt([])
val addAllOpt2 = addAllOpt([NONE, NONE, NONE])
val addAllOpt3 = addAllOpt([SOME 2])
val addAllOpt4 = addAllOpt([SOME 5, SOME 3, SOME 2])
val any1 = any([])
val any2 = any([true, true, true])
val any3 = any([true, false, true])
val any4 = any([false, true, true])
val any5 = any([true, true, false])
val any6 = any([false, false, false])
val all1 = all([])
val all2 = all([true, true, true])
val all3 = all([true, false, true])
val all4 = all([false, true, true])
val all5 = all([true, true, false])
val all6 = all([false, false, false])
val zip1 = zip([], [])
val zip2 = zip([1,2,3], [])
val zip3 = zip([], [1,2,3])
val zip4 = zip([1,2,3], [4,5,6])
val zip5 = zip([1,2,3], [4,5])
val zip6 = zip([1,2], [4, 5, 6])
val recycle1 = zipRecycle([], [])
val recycle2 = zipRecycle([1,2,3], [])
val recycle3 = zipRecycle([], [1,2,3])
val recycle4 = zipRecycle([1,2,3], [4,5,6])
val recycle5 = zipRecycle([1,2,3], [4,5])
val recycle6 = zipRecycle([1,2], [4, 5, 6])
val recycle7 = zipRecycle ([1,2,3], [1, 2, 3, 4, 5, 6, 7])

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
val test29 = addAllOpt1 = NONE
val test30 = addAllOpt2 = NONE
val test31 = addAllOpt3 = SOME 2
val test32 = addAllOpt4 = SOME 10

val test33 = any1 = false
val test34 = any2 = true
val test35 = any3 = true
val test36 = any4 = true
val test37 = any5 = true
val test38 = any6 = false

val test39 = all1 = true
val test40 = all2 = true
val test41 = all3 = false
val test42 = all4 = false
val test43 = all5 = false
val test44 = all6 = false

val test45 = zip1 = []
val test46 = zip2 = []
val test47 = zip3 = []
val test48 = zip4 = [(1,4), (2,5), (3,6)]
val test49 = zip5 = [(1,4), (2,5)]
val test50 = zip6 = [(1,4), (2,5)]

val test51 = recycle1 = []
val test52 = recycle2 = []
val test53 = recycle3 = []
val test54 = recycle4 = [(1,4), (2,5), (3,6)]
val test55 = recycle5 = [(1,4), (2,5), (3,4)]
val test56 = recycle6 = [(1,4), (2,5), (1,6)]
val test57 = recycle7 = [(1,1), (2,2), (3, 3), (1,4), (2,5), (3,6), (1,7)]
