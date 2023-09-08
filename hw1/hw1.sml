fun is_older(date1 : (int*int*int), date2 : (int*int*int)) =
    (#1 date2) > (#1 date1) orelse
    (#2 date2) > ( #2 date1) orelse
    (#1 date2) = (#1 date1) andalso (#2 date2) = (#2 date1) andalso (#3 date2) > (#3 date1)

fun number_in_month (date_list : (int * int * int) list, in_month : int) =
    if
	null(date_list)
    then
	0
    else
	let
	    val add_to_count = if (#2 (hd date_list)) = in_month then 1 else 0
	in
	   add_to_count + number_in_month(tl(date_list), in_month) 
	end

fun number_in_months (date_list : (int * int * int) list, month_list : int list) =
    if
	null(month_list)
    then
	0
    else
	number_in_month(date_list, hd(month_list)) + number_in_months(date_list, tl(month_list))

fun dates_in_month (date_list : (int * int * int) list, of_month: int) =
    if
	null(date_list)
    then
	date_list
    else
	let
	    val current_date = hd(date_list)
	    val dates = dates_in_month(tl(date_list), of_month)
	in
	    if
		(#2 current_date) = of_month
	    then
		current_date::dates
	    else
		dates
	end
