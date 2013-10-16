(*
let show prm =  
	let printst k =
		print_char (' ');
		print_int (k) in
	let printhi d =
		Array.iter printst d;
		print_newline () in
	Array.iter printhi prm;;
*)	
	
(*	
let show prm = 
	Array.iter (fun k -> Array.iter 
		(fun k2 -> print_char (' ');
			print_int k2)
	 k; print_newline()) prm;;	
	 
*)
	
	

let show filed vw hw =	
	for i = 0 to (Array.length filed) -1 do
			for j = 0 to (Array.length filed.(i)) -1 do
				if vw.(i).(j) then print_char ('|') else print_char (' ');
				print_int (filed.(i).(j));
				done;
			print_newline ();
			Array.iter (fun k -> print_char (' '); 
				if k then print_char ('-') else print_char (' ')) hw.(i);
			print_newline ();
	done;;
			
			

let ways = 
let num = Array.length (Sys.argv) in
	begin
	if num = 2 then
	Array.make_matrix (int_of_string Sys.argv.(1)) (int_of_string Sys.argv.(1)) 0
	else
	Array.make_matrix (int_of_string Sys.argv.(1)) (int_of_string Sys.argv.(2)) 0;
	end;;
	
let vwall = Array.make_matrix (Array.length ways) (Array.length ways.(0)) false;;

let hwall = Array.make_matrix (Array.length ways) ((Array.length ways.(0)) - 1) false;;


	
(*	
let door = [| 0; 0|] and outcome = outpoint in	
	
let rec track filed door outcome =
		match { filed.(door.(0)).(door.(1)), filed.(outcome.(0)).(outcome.(1))} with
		{ 2, _} || { _, 1} 
*)	
	
	
ways.(0).(0) <- 5;;
ways.(3).(2) <- 8;;
print_int (ways.(0).(0));;
print_char ('X');
print_newline ();;
show ways vwall hwall;;
print_newline ();;
