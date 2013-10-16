let ways = 
let num = Array.length (Sys.argv) in
	begin
	if num = 2 then
	Array.make_matrix (int_of_string Sys.argv.(1)) (int_of_string Sys.argv.(1)) 0
	else
	Array.make_matrix (int_of_string Sys.argv.(1)) (int_of_string Sys.argv.(2)) 0
	end;;

print_int (Array.length ways);;
print_newline ();;
