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
