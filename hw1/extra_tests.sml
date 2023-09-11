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
