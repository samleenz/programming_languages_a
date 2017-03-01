fun sum_list (xs : int list) =
  if null xs
  then 0
  else hd xs + sum_list(tl xs)

fun list_product (xs : int list)=
  if null xs
  then 1
  else hd xs * list_product(tl xs)

fun append (xs : int list, ys : int list) =
  if null xs
  then ys
  else (hd xs) :: (append((tl xs), ys))
