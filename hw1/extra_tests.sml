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
val zipOpt1 = zipOpt([], [])
val zipOpt2 = zipOpt([1,2,3], [])
val zipOpt3 = zipOpt([], [1,2,3])
val zipOpt4 = zipOpt([1], [1,2])
val zipOpt5 = zipOpt([1,2], [1])
val zipOpt6 = zipOpt([1,2,3], [4,5,6])
val lookup1 = lookup([], "")
val lookup2 = lookup([("str",1)], "")
val lookup3 = lookup([("str1",1), ("str2",2), ("str3",3)], "str1")
val lookup4 = lookup([("str1",1), ("str2",2), ("str3",3)], "str2")
val lookup5 = lookup([("str1",1), ("str2",2), ("str3",3)], "str3")
val splitup1 = splitup([])
val splitup2 = splitup([1,2,3])
val splitup3 = splitup([~1,~2,~3])
val splitup4 = splitup([1,2,3,~4,~5,~6])
val splitup5 = splitup([~4,~5,~6,1,2,3])
val splitup6 = splitup([1,~5,~4,3,~6,2])
val splitAt1 = splitAt([], 1)
val splitAt2 = splitAt([1,2,3], 0)
val splitAt3 = splitAt([~1,~2,~3], 0)
val splitAt4 = splitAt([1,2,3,~4,~5,~6], 0)
val splitAt5 = splitAt([~4,~5,~6,1,2,3], 0)
val splitAt6 = splitAt([1,~5,~4,3,~6,2], 0)
val isSorted1 = isSorted([])
val isSorted2 = isSorted([1])
val isSorted3 = isSorted([1,2,3])
val isSorted4 = isSorted([1,1,2,2,3,3,3])
val isSorted5 = isSorted([3,2,1])
val isAnySorted1 = isAnySorted([])
val isAnySorted2 = isAnySorted([1])
val isAnySorted3 = isAnySorted([1,2,3])
val isAnySorted4 = isAnySorted([1,1,2,2,3,3])
val isAnySorted5 = isAnySorted([3,2,1])
val isAnySorted6 = isAnySorted([3,3,2,2,1,1])
val isAnySorted7 = isAnySorted([4,1,2,36,5])
val sortedMerge1 = sortedMerge([],[])
val sortedMerge2 = sortedMerge([1,2,3],[])
val sortedMerge3 = sortedMerge([],[1,2,3])
val sortedMerge4 = sortedMerge([1,2,3], [4,5,6])
val sortedMerge5 = sortedMerge([1,2], [4,5,6])
val sortedMerge6 = sortedMerge([1,2,3], [4,6])
val sortedMerge7 = sortedMerge ([1,4,7], [5,8,9])

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

val test58 = zipOpt1 = SOME []
val test59 = zipOpt2 = NONE
val test60 = zipOpt3 = NONE
val test61 = zipOpt4 = NONE
val test62 = zipOpt5 = NONE
val test63 = zipOpt6 = SOME [(1,4), (2,5), (3,6)]

val test64 = lookup1 = NONE
val test65 = lookup2 = NONE
val test66 = lookup3 = SOME 1
val test67 = lookup4 = SOME 2
val test68 = lookup5 = SOME 3

val test69 = splitup1 = ([],[])
val test70 = splitup2 = ([1,2,3],[])
val test71 = splitup3 = ([],[~1,~2,~3])
val test72 = splitup4 = ([1,2,3],[~4,~5,~6])
val test73 = splitup5 = ([1,2,3],[~4,~5,~6])
val test74 = splitup6 = ([1,3,2],[~5,~4,~6])

val test75 = splitAt1 = ([],[])
val test76 = splitAt2 = ([1,2,3],[])
val test77 = splitAt3 = ([],[~1,~2,~3])
val test78 = splitAt4 = ([1,2,3],[~4,~5,~6])
val test79 = splitAt5 = ([1,2,3],[~4,~5,~6])
val test80 = splitAt6 = ([1,3,2],[~5,~4,~6])

val test81 = isSorted1 = true
val test82 = isSorted2 = true
val test83 = isSorted3 = true
val test84 = isSorted4 = true
val test85 = isSorted5 = false

val test86 = isAnySorted1 = true
val test87 = isAnySorted2 = true
val test88 = isAnySorted3 = true
val test89 = isAnySorted4 = true
val test90 = isAnySorted5 = true
val test91 = isAnySorted6 = true
val test92 = isAnySorted7 = false

val test93 = sortedMerge1 = []
val test94 = sortedMerge2 = [1,2,3]
val test95 = sortedMerge3 = [1,2,3]
val test96 = sortedMerge4 = [1,2,3,4,5,6]
val test97 = sortedMerge5 = [1,2,4,5,6]
val test98 = sortedMerge6 = [1,2,3,4,6]
val test99 = sortedMerge7 = [1,4,5,7,8,9]
