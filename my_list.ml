type 'a my_list =
| Nil
| Cons of 'a * 'a my_list

let rec convert_list_to_my_list lst =
	match lst with
	|[] -> Nil
	|h::t -> Cons(h, (convert_list_to_my_list t))

let string_of_list f lst =
	let rec string_content l = 
		match l with
		|Nil -> ""
		|Cons(h, t) when t = Nil -> (f h)
		|Cons(h, t) -> (f h) ^ ", " ^ (string_content t)
	in "[" ^ (string_content lst) ^ "]" 

let hd lst =
	match lst with
	|Nil -> raise (Failure "The list is empty.")
	|Cons(h ,t) -> Some h

let tl lst =
	match lst with
	|Nil -> raise (Failure "The list is empty.")
	|Cons(h ,t) -> Some t

let length lst =
	let rec aux l n =
		match l with
		|Nil -> n
		|Cons(h, t) -> aux t (n + 1)
	in aux lst 0

let rec map f lst =
	match lst with
	|Nil -> Nil
	|Cons(h, t) -> Cons((f h), (map f t))

let get_value some_value =
	match some_value with
	|Some value -> value
	|_ -> raise (Failure "This expression is not of type 'a option.")
