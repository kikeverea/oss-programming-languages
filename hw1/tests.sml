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

val jan_start = 1
val feb_start = 32
val mar_start = 60
val apr_start = 91
val may_start = 121
val jun_start = 152
val jul_start = 182
val aug_start = 213
val sep_start = 244
val oct_start = 274
val nov_start = 305
val dec_start = 335

val string_list = ["hi", "there", "how", "are", "you"]

fun generate_days_of_year () =
    let
	fun generate_days (day : int) =
	    if day > 365
	    then []
	    else (day)::generate_days(day + 1)
    in
	generate_days(1)
    end

fun get_last(l : 'a list) =
    if
	null(tl(l))
    then
	hd(l)
    else
	get_last(tl(l))
	

val days_of_year = generate_days_of_year()

    
(***** is_older *****)

val year_older_rest_is_not = is_older((2, 2, 2), (3, 1, 1)) = true

val year_not_older_rest_is = is_older((3,1,1), (2,2,2)) = false

val year_older_month_older_day_is_not = is_older((2,2,2), (3, 3, 1)) = true

val year_not_older_month_not_older_day_is = is_older((3,3,1), (2,2,2)) = false

val all_digits_are_older = is_older((2,2,2), (3,3,3)) = true

val no_digits_are_older = is_older((3,3,3), (2,2,2)) = false

val same_year_month_older_day_not_older = is_older((2,2,2), (2,3,1)) = true

val same_year_month_not_older_day_older = is_older((2,3,1), (2,2,2)) = false

val same_year_rest_older = is_older((2,2,2), (2,3,3)) = true

val same_year_rest_not_older = is_older((2,3,3), (2,2,2)) = false

val same_year_and_month_day_older = is_older((2,2,2), (2,2,3)) = true

val same_year_and_month_day_not_older = is_older((2,2,2), (2,2,1)) = false

(***** number_in_month *****)

val empty_list_returns_0 = number_in_month([(1, 1, 1)], 2) = 0
		     
val month_not_in_dates_list_returns_0 = number_in_month(dates_list, 3) = 0

val month_once_in_dates_list_returns_1 = number_in_month(dates_list, 9) = 1

val month_n_times_in_dates_list_returns_n = number_in_month(dates_list, 6) = 4

val month_in_head_of_dates_list_returns_n = number_in_month(dates_list, 5) = 2

val month_in_tail_of_dates_list_returns_n = number_in_month(dates_list, 4) = 1

(***** number_in_months *****)

val empty_lists_returns_0 = number_in_months([], []) = 0
										 
val empty_month_list_returns_0 = number_in_months(dates_list, []) = 0

val empty_dates_list_returns_0 = number_in_months([], [1, 2, 3]) = 0

val no_months_in_list_returns_0 = number_in_months(dates_list, [1, 3]) = 0

val m_months_n_times_in_dates_returns_sum_of_n_of_m = number_in_months(dates_list, [5, 6, 4, 11]) = 8

(***** dates_in_month *****)

val empty_date_list_resturns_empty_list = dates_in_month([], 5) = []

val no_dates_with_month_returns_empty_list = dates_in_month(dates_list, 3) = []

val n_dates_have_month_return_list_of_such_dates = dates_in_month(dates_list, 6) = [(2023, 6, 7),
										    (2023, 6, 8),
										    (1988, 6, 22),
										    (2002, 6, 15)]

(***** dates_in_months *****)

val empty_lists_returns_empty_list = dates_in_months([], []) = []

val empty_month_list_returns_empty_list = dates_in_months(dates_list, []) = []

val empty_dates_list_returns_empty_list = dates_in_months([], [1, 2, 3]) = []

(**** get_nth ****)

val empty_list_returns_empty_list = get_nth([], 5) = ""

val n_equals_one_returns_head = get_nth (string_list, 1) = "hi"

val for_any_n_value_return_n_position = get_nth (string_list, 3) = "how"

val n_equals_length_of_list_returns_last_string = get_nth (string_list, 5) = "you"

(**** date_to_string ****)

val converts_date_to_string = date_to_string((2023, 9, 8)) = "September 8, 2023"

(**** number_before_reaching_sum ****)

val number_is_head_return_0 = number_before_reaching_sum(1, [25, 1, 2]) = 0

val number_is_second_return_1 = number_before_reaching_sum(5, [2, 3, 4, 5]) = 1

val number_is_last_return_list_length_less_1 = number_before_reaching_sum(16, [2, 5, 6, 3]) = 3

(**** what_month ****)

val jan_edges_return_1 = what_month(1) = 1 andalso what_month(feb_start - 1) = 1

val feb_edges_return_2 = what_month(feb_start) = 2 andalso what_month(mar_start - 1) = 2

val mar_edges_return_3 = what_month(mar_start) = 3 andalso what_month(apr_start - 1) = 3

val apr_edges_return_4 = what_month(apr_start) = 4 andalso what_month(may_start - 1) = 4

val may_edges_return_5 = what_month(may_start) = 5 andalso what_month(jun_start - 1) = 5

val jun_edges_return_6 = what_month(jun_start) = 6 andalso what_month(jul_start - 1) = 6

val jul_edges_return_7 = what_month(jul_start) = 7 andalso what_month(aug_start - 1) = 7

val aug_edges_return_8 = what_month(aug_start) = 8 andalso what_month(sep_start - 1) = 8

val sep_edges_return_9 = what_month(sep_start) = 9 andalso what_month(oct_start - 1) = 9

val oct_edges_return_10 = what_month(oct_start) = 10 andalso what_month(nov_start - 1) = 10

val nov_edges_return_11 = what_month(nov_start) = 11 andalso what_month(dec_start - 1) = 11

val dec_edges_return_12 = what_month(dec_start) = 12 andalso what_month(365) =12

(**** month_range ****)

val day1_greater_than_day2_returns_empty = month_range(2, 1) = []

val range_in_one_month_return_list_with_that_month = month_range(1, 6) = [1, 1, 1, 1, 1, 1]

val range_in_several_months_returns_list_with_months = month_range(31, 34) = [1, 2, 2, 2]

(**** oldest ****)

val empty_list_return_NONE = not(isSome(oldest([])))

val one_value_list_returns_that_value = oldest([(1,1,1)]) = SOME (1,1,1)

val oldest_is_head_return_head = oldest([(1,2,3), (3,2,1), (4,4,4)]) = SOME (1,2,3)

val oldest_is_any_return_older = oldest([(4,4,4), (1,2,3), (5,5,5)]) = SOME (1,2,3)

val oldest_is_last_return_last = oldest([(5,5,5), (3,2,1), (1,2,3)]) = SOME (1,2,3)

(**** number_in_months_challenge ****)

val num_in_months = number_in_months(dates_list, [5, 6, 4, 11])

val num_in_months_wo_duplicated = number_in_months_challenge(dates_list, [5, 6, 4, 11, 6, 11, 4, 5, 5, 5, 6, 4])

val challenge_1_test = num_in_months = num_in_months_wo_duplicated

(**** dates_in_months_challenge ****)

val in_months = dates_in_months(dates_list, [5, 6, 4, 11])

val in_months_wo_duplicated = dates_in_months_challenge(dates_list, [5, 6, 4, 11, 6, 11, 4, 5, 5, 5, 6, 4, 11])

val challenge_2_test = in_months = in_months_wo_duplicated

									    
