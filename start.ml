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

print_string ("Create ways \n");;
	
let vwall = Array.make_matrix (Array.length ways) (Array.length ways.(0)) false;;

let hwall = Array.make_matrix (Array.length ways) (Array.length ways.(0)) false;;

print_string ("Create walls \n");;
	
(*	
let door = [| 0; 0|] and outcome = outpoint in	
	
let rec track filed door outcome =
		match { filed.(door.(0)).(door.(1)), filed.(outcome.(0)).(outcome.(1))} with
		{ 2, _} || { _, 1} 
*)	

let numy = Array.length ways.(0) and numx = Array.length ways;;

print_int (numx);;
print_char (' ');;
print_int (numy);;
print_newline ();;

(*
let sumgam filed v1 v2 =
	let way2 = filed  in 
	for i = 0 to (numx - 1) do
		for j = 0 to (numy -1) do 
			way2.(i).(j) <- (
				(if (i > 0)  then (if (v1.(i).(j)) then (filed.(i - 1).(j)) else 32) else 2) +
				(if (i < (numx - 1))  then (if (v1.(i + 1).(j)) then filed.(i + 1).(j) else 64) else 4) +
				(if (j > 0)  then (if (v2.(i).(j-1)) then (filed.(i).(j - 1)) else 128) else 8) +
				(if (j < (numy - 1))  then (if (v2.(i).(j)) then filed.(i).(j + 1) else 256) else 16)
			)
		done
	done;
	way2;;
	*)
	
let sumgam filed v1 v2 =
	let way2 = filed  in 
	for i = 0 to (numx - 1) do
		for j = 0 to (numy -1) do 
			way2.(i).(j) <- (
				(if (i > 0)  then  32 else 2) +
				(if (i < (numx - 1))  then  64 else 4) +
				(if (j > 0)  then 128 else 8) +
				(if (j < (numy - 1))  then  256 else 16)
			)
		done
	done;
	way2;;
	
	
let resetmaze () = 
	Array.fill ways 0  numx (Array.make numy 1);;	

let randwall () =
	for i = 0 to (numx -1) do
	for j = 0 to (numy -1) do vwall.(i).(j) <- Random.bool ();  hwall.(i).(j) <- Random.bool () done
	done;;


	
	
(*
let
	v1 = Array.map (Array.map (fun x ->  Random.bool ())) vwall
and
	v2 = Array.map (Array.map (fun x ->  Random.bool ())) hwall
in
(*
Переменные для тестов вывода стенок
*)

show ways v1 v2;;
*)
for i = 0 to (numx -1) do
	for j = 0 to (numy -1) do ways.(i).(j) <- (i + j * 32) done
	done;;

show ways vwall hwall;;
print_newline ();;

Random.init;;
for i = 0 to (numx -1) do
	for j = 0 to (numy -1) do ways.(i).(j) <- Random.int 2 done
	done;;
	

		
show ways vwall hwall;;
print_newline ();;


resetmaze ();;
(*
letvwall.(4).(2) <- true;; 
	wall = Array.make_matrix numx numy true
in
show (sumgam
*)

(*
randwall ();;*)
(*(sumgam ())*)
Random.init;;
(*
hwall.(1).(2) <- true;; 
hwall.(2).(2) <- true;; 
vwall.(2).(2) <- true;; 
vwall.(2).(3) <- true;; 
*)
show  (sumgam ways vwall hwall) vwall hwall;;
print_newline ();;


