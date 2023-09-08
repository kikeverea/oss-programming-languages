fun is_older(date1 : (int*int*int), date2 : (int*int*int)) =
    (#1 date2) > (#1 date1) orelse
    (#2 date2) > ( #2 date1) orelse
    (#1 date2) = (#1 date1) andalso (#2 date2) = (#2 date1) andalso (#3 date2) > (#3 date1)

fun number_in_month (date_list : (int * int * int) list, in_month : int) =
    if null(date_list) then 0 else
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

fun dates_in_months (date_list : (int * int * int) list, month_list : int list) =
    if
	null(month_list)
    then
	[]
    else
	dates_in_month(date_list, hd(month_list)) @ dates_in_months(date_list, tl(month_list))

fun get_nth (strings : string list, n : int) =
    if
	null strings
    then
	""
    else
	if n = 1 then hd(strings) else get_nth(tl(strings), n - 1)

fun date_to_string(date : (int * int * int)) =
    let
	 val month_list = [
	    "January", "February", "March",
	    "April", "May", "June",
	    "July", "August", "September",
	    "October", "November", "December"]
	 val month = get_nth(month_list, (#2 date))
    in
	month ^ " " ^ Int.toString((#3 date)) ^ ", " ^ Int.toString((#1 date))
    end

fun number_before_reaching_sum (sum : int, int_list : int list) =
    let
	fun pos_tracker (sum : int, pos : int, int_list : int list) =
	    let
		val sum = sum - hd(int_list)
	    in
		if
		    sum <= 0
		then
		    pos - 1
		else
		    pos_tracker(sum, pos + 1, tl(int_list))
	    end
    in
	pos_tracker(sum, 1, int_list)
    end


fun what_month(day_of_year : int) =
    let
	val days_of_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    in
	1 + number_before_reaching_sum(day_of_year, days_of_months)
fun month_range (day1 : int, day2 : int) =
    if day1 > day2
    then []
    else
	let
	    fun generate_list (from : int, to : int) =
		if to < from then [] else from::generate_list(from + 1, to)
	in generate_list(what_month(day1), what_month(day2))
    end
