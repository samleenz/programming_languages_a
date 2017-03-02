(*Samuel Lee - Programming languages A homework assignment 1*)

(*Date has type int*int*int where the values are  year - month - day*)

(*1*)
(*Eval to True if dat_1 occurs before dat_2*)
fun is_older (dat_1 : int*int*int, dat_2 : int*int*int) =
  #1 dat_1 < #1 dat_2
  orelse (#1 dat_1 = #1 dat_2 andalso  #2 dat_1 < #2 dat_2)
  orelse (#1 dat_1 = #1 dat_2 andalso  #2 dat_1 = #2 dat_2 andalso #3 dat_1 < #3 dat_2)

(*2*)

fun number_in_month (date_list : (int*int*int) list, month : int) =
  if null date_list (* add 0 if date_list is empty - base case*)
  then 0
  else
      if #2 (hd date_list) = month
      then 1 + number_in_month(tl date_list, month)
      else number_in_month(tl date_list, month)

(*3*)

fun number_in_months (date_list : (int*int*int) list, month_list : int list) =
  if null month_list
  then 0
  else
      if #2 (hd date_list) = hd month_list
      then 1 + number_in_months(tl date_list, month_list)
      else number_in_months(tl date_list, tl month_list);

(*4*)
fun dates_in_month () =
  false;

(*5*)
fun dates_in_months ()=
  false;

(*6*)
fun get_nth (xs : string list, n : int) =
  if hd xs = n
  then hd xs
  else get_nth(tl xs, n)

(*7*)
fun date_to_string () =
  false;

(*8*)
fun number_before_reaching_sum () =
  false;

(*9*)
fun what_month () =
  false;

(*10*)
fun month_range () =
  false;

(*11*)
fun oldest () =
  false;

(*12*)
fun number_in_months_challenge () =
  false;

fun dates_in_month_challenge () =
  false;

(*13*)
fun reasonable_date () =
  false;




