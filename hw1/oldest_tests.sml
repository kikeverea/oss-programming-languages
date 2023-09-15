val one_value = oldest([(1,1,1)]) = SOME (1,1,1)

val two_values = oldest([(1,1,1), (5,5,5)]) = SOME (1,1,1)

val three_values = oldest([(1,1,1), (5,5,5), (4,4,4)]) = SOME (1,1,1)

val three_ordered_values = oldest([(1,1,1), (4,4,4), (5,5,5)]) = SOME (1,1,1)

val one_value_list_returns_that_value = oldest([(1,1,1)]) = SOME (1,1,1)

val oldest_is_head_return_head = oldest([(1,2,3), (3,2,1), (4,4,4)]) = SOME (1,2,3)

val oldest_is_any_return_older = oldest([(4,4,4), (1,2,3), (5,5,5)]) = SOME (1,2,3)

val oldest_is_last_return_last = oldest([(5,5,5), (3,2,1), (1,2,3)]) = SOME (1,2,3)
