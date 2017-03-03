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
  if null month_list orelse null date_list (*base case - empty lists*)
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
(*xs is a string list and n is an element index*)

fun get_nth (xs : string list, n : int) =
  if n =1
  then hd xs
  else get_nth(tl xs, n-1)
(*7*)
fun date_to_string (date : int*int*int) =
  let
      val months = ["January","February","March","April","May","June","July","August","September","October","November","December"]
  in
      get_nth(months, #2 date) ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date) 
  end

(*8*)
fun number_before_reaching_sum (sum : int, ints : int list) =
  (*let fun sum_list (xs : int list) =
	if null xs then 0 else hd (xs) + sum_list(tl xs)
  in
      if sum_list ints < sum
      then 0
      else 1+ number_before_reaching_sum(sum, tl (ints))
  end*)
  if hd ints >= sum
  then 0
  else 1 + number_before_reaching_sum(sum - hd ints , tl ints)

(*9*)
fun what_month (day : int) =
  1 + number_before_reaching_sum(day, [31,28,31,30,31,30,31,31,30,31,30,31])     
  

(*10*)
fun month_range (day1 : int, day2 : int) =
  if day1 > day2 then []
  else what_month day1 :: month_range(day1 + 1, day2) 
      

(*11*) (*This is messed up - redo from scratch*)
fun oldest (dates : (int*int*int) list) =
  if null dates then NONE
  else
      let
	  fun oldest (dates : (int*int*int) list) =
	    if null tl dates then hd dates
	    else let val tl_ans = oldest (tl dates)
		 in
		     if hd dates > tl_ans
		     then hd dates
		     else tl_ans
		 end
      in
	 SOME(oldest dates) 
      end
(*12*)
fun number_in_months_challenge () =
  false;

fun dates_in_month_challenge () =
  false;

(*13*)
fun reasonable_date () =
  false;




