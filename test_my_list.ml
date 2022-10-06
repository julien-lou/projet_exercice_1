
let string_of_nat_list = My_list.string_of_list string_of_int in
let string_of_string_list = My_list.string_of_list (fun x -> x) in

let empty = (My_list.convert_list_to_my_list []) in
let one = (My_list.convert_list_to_my_list ["a"]) in 
let lst = (My_list.convert_list_to_my_list [1; 3; 6; 10; 15; 21; 28; 36; 45; 55]) in

let test_hd () = 
  Printf.printf "Tête de %s : %s.\n" (string_of_string_list one) (My_list.get_value (My_list.hd one));
  Printf.printf "Tête de %s : %d.\n\n" (string_of_nat_list lst) (My_list.get_value (My_list.hd lst))

in let test_tl () = 
  Printf.printf "Queue de %s : %s.\n" (string_of_string_list one) (string_of_string_list (My_list.get_value (My_list.tl one)));
  Printf.printf "Queue de %s : %s.\n\n" (string_of_nat_list lst) (string_of_nat_list (My_list.get_value (My_list.tl lst)))

in let test_length () = 
  Printf.printf "Taille de %s : %d.\n" (string_of_string_list one) (My_list.length one);
  Printf.printf "Taille de %s : %d.\n" (string_of_nat_list lst) (My_list.length lst);
  Printf.printf "Taille de %s : %d.\n\n" (string_of_string_list empty) (My_list.length empty)

in let test_map ()= 
  Printf.printf "Map de (x -> xx) sur %s : %s.\n" (string_of_string_list one) (string_of_string_list (My_list.map (fun s -> s ^ s) one));
  Printf.printf "Map de (x -> 2x) sur %s : %s.\n" (string_of_nat_list lst) (string_of_nat_list (My_list.map (fun n -> 2 * n) lst));
  Printf.printf "Map de (x -> 2x) sur %s : %s.\n\n" (string_of_nat_list empty) (string_of_nat_list (My_list.map (fun n -> 2 * n) empty));

in test_hd(); test_tl(); test_length(); test_map()