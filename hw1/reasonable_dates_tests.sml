val real_jan_edges = reasonable_date(2023, 1, 1) andalso
		     reasonable_date(2023, 1, 31)

val real_feb_edges = reasonable_date(2023, 2, 1) andalso
		     reasonable_date(2023, 2, 28) andalso
		     not(reasonable_date(2023, 2, 29))

val real_mar_edges = reasonable_date(2023, 3, 1) andalso
		     reasonable_date(2023, 3, 31)

val real_apr_edges = reasonable_date(2023, 4, 1) andalso
		     reasonable_date(2023, 4, 30) andalso
		     not(reasonable_date(2023, 4, 31))

val real_may_edges = reasonable_date(2023, 5, 1) andalso
		     reasonable_date(2023, 5, 31)

val real_jun_edges = reasonable_date(2023, 6, 1) andalso
		     reasonable_date(2023, 6, 30) andalso
		     not(reasonable_date(2023, 6, 31))

val real_jul_edges = reasonable_date(2023, 7, 1) andalso
		     reasonable_date(2023, 7, 31)

val real_aug_edges = reasonable_date(2023, 8, 1) andalso
		     reasonable_date(2023, 8, 31)

val real_sep_edges = reasonable_date(2023, 9, 1) andalso
		     reasonable_date(2023, 9, 30) andalso
		     not(reasonable_date(2023, 9, 31))

val real_oct_edges = reasonable_date(2023, 10, 1) andalso
		     reasonable_date(2023, 10, 31)

val real_nov_edges = reasonable_date(2023, 11, 1) andalso
		     reasonable_date(2023, 11, 30) andalso
		     not(reasonable_date(2023, 11, 31))

val real_dec_edges = reasonable_date(2023, 12, 1) andalso
		     reasonable_date(2023, 12, 31)

val leap_years_tst = reasonable_date(2000, 2, 29) andalso
		     reasonable_date(2400, 2, 29) andalso
		     reasonable_date(2020, 2, 29) andalso
		     reasonable_date(2024, 2, 29) andalso
		     reasonable_date(2028, 2, 29) andalso
		     reasonable_date(2032, 2, 29)

val not_leap_years = not(reasonable_date(2001, 2, 29)) andalso
		     not(reasonable_date(1800, 2, 29)) andalso
		     not(reasonable_date(2021, 2, 29)) andalso
		     not(reasonable_date(2019, 2, 29)) andalso
		     not(reasonable_date(2023, 2, 29)) andalso
		     not(reasonable_date(2025, 2, 29))

val year_0_is_false = reasonable_date(0, 1, 1) = false

val month_less_than_1_is_false = reasonable_date(2023, 0, 1) = false

val month_greater_than_12_is_false = reasonable_date(2023, 13, 1) = false

val day_less_than_1_is_false = reasonable_date(2023, 1, 0) = false
									
val day_greater_than_31_is_false = reasonable_date(2023, 1, 32) = false
