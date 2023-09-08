val dates_list = [(2023, 5, 6),
		  (2023, 6, 7),
		  (2023, 9, 10),
		  (2023, 5, 28),
		  (2023, 11, 6),
		  (2023, 6, 8),
		  (2022, 7, 6),
		  (1988, 6, 22),
		  (2002, 6, 15),
		  (1999, 4, 30)]

(***** is_older *****)

val date_2023_9_7_isOlderThan_2023_9_6 = is_older((2023,9,6), (2023,9,7))

val date_2023_9_1_isOlderThan_2023_8_31 = is_older((2023,8,31), (2023,9,1))

val date_2023_9_6_isNotOlderThan_2023_9_7 = not(is_older((2023,9,7), (2023,9,6)))

val date_2023_8_31_isNotOlderThan_2023_9_1 = not(is_older((2023,9,1), (2023,8,31)))

(***** number_in_month *****)

val empty_list_returns_0 = number_in_month([(1, 1, 1)], 2) = 0
		     
val month_not_in_dates_list_returns_0 = number_in_month(dates_list, 3) = 0

val month_once_in_dates_list_returns_1 = number_in_month(dates_list, 9) = 1

val month_n_times_in_dates_list_returns_n = number_in_month(dates_list, 6) = 4

val month_in_head_of_dates_list_returns_n = number_in_month(dates_list, 5) = 2

val month_in_tail_of_dates_list_returns_n = number_in_month(dates_list, 4) = 1

(***** number_in_months *****)

val empty_lists_returns_0 = number_in_months([], []) = 0
										 
val empty_month_list_returns_0 = number_in_months(dates_list, [1, 3]) = 0

val empty_dates_list_returns_0 = number_in_months([], [1, 2, 3]) = 0

val no_months_in_list_returns_0 = number_in_months(dates_list, []) = 0

val m_months_n_times_in_dates_returns_sum_of_n_of_m = number_in_months(dates_list, [5, 6, 4, 11]) = 8

(***** dates_in_month *****)

val empty_date_list_resturns_empty_list = dates_in_month([], 5) = []

val no_dates_with_month_returns_empty_list = dates_in_month(dates_list, 3) = []

val n_dates_have_month_return_list_of_such_dates = dates_in_month(dates_list, 6) = [(2023, 6, 7),
										    (2023, 6, 8),
										    (1988, 6, 22),
										    (2002, 6, 15)]
