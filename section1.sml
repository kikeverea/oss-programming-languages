
val x = 34;
(* static environment: x : int *) (* --> the language knows 34 is an int *)
(* dyanmic environment: x --> 34 *)

val y = 17;
(* static environment: x : int, y : int *)
(* dyanmic environment: x --> 34, y --> 17 *)

val z = (x + y) + (y + 2);
(* static environment: x : int, y : int, z: int *)
(* dyanmic environment: x --> 34, y --> 17, z --> 70 *)

val q = z + 1;
(* static environment: x : int, y : int, z: int, q: int *)
(* dyanmic environment: x --> 34, y --> 17, z --> 70, q --> 71 *)

val abs_of_z = if z < 0 then z - 0 else z; 

