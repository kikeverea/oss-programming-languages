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
