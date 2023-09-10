fun is_older(date1 : (int*int*int), date2 : (int*int*int)) =
    (#1 date1) < (#1 date2) orelse
    (#1 date1) = (#1 date2) andalso (#2 date1) < ( #2 date2) orelse
    (#2 date2) = (#2 date1) andalso (#3 date1) < (#3 date2)

fun number_in_month (date_list : (int * int * int) list, in_month : int) =
    if null(date_list)
    then 0
    else
	let val add_to_count = if (#2 (hd date_list)) = in_month then 1 else 0
	in add_to_count + number_in_month(tl(date_list), in_month)
	end

fun number_in_months (date_list : (int * int * int) list, month_list : int list) =
    if null(month_list)
    then 0
    else number_in_month(date_list, hd(month_list)) + number_in_months(date_list, tl(month_list))

fun dates_in_month (date_list : (int * int * int) list, of_month: int) =
    if null(date_list)
    then date_list
    else
	let
	    val current_date = hd(date_list)
	    val dates = dates_in_month(tl(date_list), of_month)
	in if (#2 current_date) = of_month
	   then current_date::dates
	   else dates
	end

fun dates_in_months (date_list : (int * int * int) list, month_list : int list) =
    if null(month_list)
    then []
    else dates_in_month(date_list, hd(month_list)) @ dates_in_months(date_list, tl(month_list))

fun get_nth (strings : string list, n : int) =
    if null strings
    then ""
    else if n = 1
    then hd(strings)
    else get_nth(tl(strings), n - 1)

fun date_to_string (date : (int * int * int)) =
    let
	val month_list = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
	val month = get_nth(month_list, (#2 date))
    in
	month ^ " " ^ Int.toString((#3 date)) ^ ", " ^ Int.toString((#1 date))
    end

fun number_before_reaching_sum (sum : int, int_list : int list) =
    let
	fun pos_tracker (sum : int, pos : int, int_list : int list) =
	    let val sum = sum - hd(int_list)
	    in if sum <= 0
	       then pos - 1
	       else pos_tracker(sum, pos + 1, tl(int_list))
	    end
    in pos_tracker(sum, 1, int_list)
    end

fun what_month (day_of_year : int) =
    let val days_of_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    in 1 + number_before_reaching_sum(day_of_year, days_of_months)
    end

fun month_range (day1 : int, day2 : int) =
    if day1 > day2
    then []
    else what_month(day1)::month_range(day1 + 1, day2)

fun oldest (date_list : (int * int * int) list) =
    if null date_list
    then NONE
    else
       let
	   val compare = hd(date_list)
	   val older = oldest(tl(date_list))
       in if isSome older andalso is_older(valOf older, compare)
	  then older
	  else SOME compare
       end

fun remove_duplicates (a_list : int list) =
    let
	fun is_in_list(value : int, in_list : int list) =
	    if null(in_list)
	    then false
	    else if hd(in_list) = value
	    then true
	    else is_in_list(value, tl(in_list))
    in
	if null a_list
	then []
	else
	    let
		val new_list = remove_duplicates(tl(a_list))
		val value = hd(a_list)
	    in
		if is_in_list(value, new_list)
		then new_list
		else value::new_list
	    end
    end
	
fun number_in_months_challenge (dates : (int * int * int) list, months : int list) =
    number_in_months(dates, remove_duplicates(months))

fun dates_in_months_challenge (dates : (int * int * int) list, months : int list) =
    dates_in_months(dates, remove_duplicates(months))

fun reasonable_date (date : (int * int * int)) =
    let
	val days_of_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	val year = #1 date
	val month = #2 date
	val day = #3 date

	fun within_limits (value : int, from : int, to : int) =
	    value >= from andalso value <= to

	fun is_leap_year (year : int) =
	    (year mod 400 = 0) orelse (year mod 4 = 0 andalso year mod 100 <> 0)

	fun get_month_days (days : int list, month : int) =
	    if month = 1
	    then hd(days)
	    else get_month_days(tl(days), month - 1)
    in
	if year > 0
	   andalso within_limits(month, 1, 12)
	   andalso within_limits(day, 1, 31)
	then
	    if month = 2
	    then if is_leap_year(year)
		 then within_limits(day, 1, 29)
		 else within_limits(day, 1, 28)
	    else day <= get_month_days(days_of_months, month)
	else false
    end
