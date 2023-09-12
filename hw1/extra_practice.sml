fun alternate (nums : int list) =
    let
	fun alt (nums : int list, modiff : int) =
	    if null nums
	    then 0
	    else (hd nums) * modiff + (alt (tl nums, modiff * ~1))
    in alt (nums, 1)
    end

fun min_max (nums : int list) =
    if null nums
    then NONE
    else if null(tl nums)
    then SOME (hd nums, hd nums)
    else
	let
	    fun set_min (minmax : (int * int), num : int) =
		if num < (#1 minmax) then (num, #2 minmax) else minmax

	    fun set_max (minmax : (int * int), num : int) =
		if num > (#2 minmax) then (#1  minmax, num) else minmax

	    val minmax = valOf(min_max(tl(nums)))
	in
	    SOME(set_max(set_min(minmax, hd nums), hd nums))
	end

fun cumsum (ints : int list) =
    if null ints
    then [0]
    else
	let
	    fun accumulate (sum : int, ints : int list) =
		if null ints
		then []
		else (sum + (hd ints))::accumulate(sum + (hd ints), tl ints)
	in
	    accumulate(0, ints)
	end

fun greeting (name : string option) =
    let
	val person = if isSome name andalso valOf name <> ""
		     then valOf name
		     else "you"
    in
	"Hello there, " ^ person ^ "!"
    end

fun repeat (lst : int list, times : int list) =
    let
	fun append_n_times(value : int, lst : int list, times : int) =
	    if times = 0
	    then lst
	    else value::append_n_times(value, lst, times - 1)
    in
	if null lst
	then []
	else if null times
	then lst
	else append_n_times(hd lst, repeat(tl lst, tl times), hd times)
    end
	
fun addOpt (num1 : int option, num2 : int option) =
    if (isSome num1) andalso (isSome num2)
    then SOME((valOf num1) + (valOf num2))
    else NONE

fun addAllOpt (nums : int option list) =
    if null nums
    then NONE
    else
	let
	    val to_add = hd nums
	    val sum = addAllOpt(tl nums)
	in
	    if not(isSome sum)
	    then to_add
	    else if not(isSome to_add)
	    then sum
	    else SOME ((valOf sum) + (valOf to_add))
	end
