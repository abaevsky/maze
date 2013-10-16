let show k = 
	for i = 0 to (Array.length k) -1 do
		let string = k.(i) in
			begin
			for i = 0 to (Array.length string) -1 do
				print_char (' ');
				print_int (string.(i));
				done
			end;
		print_newline();
	done;;
			

let ways = 
let num = Array.length (Sys.argv) in
	begin
	if num = 2 then
	Array.make_matrix (int_of_string Sys.argv.(1)) (int_of_string Sys.argv.(1)) 0
	else
	Array.make_matrix (int_of_string Sys.argv.(1)) (int_of_string Sys.argv.(2)) 0
	end;;
ways.(0).(0) <- 5;;
ways.(3).(2) <- 8;;
print_int (ways.(0).(0));;
print_char ('X');
print_newline ();;
show ways;;
print_newline ();;
