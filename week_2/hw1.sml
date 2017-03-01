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
  val count  = 0
  if null date_list (* add 0 if date_list is empty - base case*)
  then 
  else if #2 (hd date_list) = month


(*3*)				  
fun number_in_months (date_list : (int*int*int) list, month_list : int list)



