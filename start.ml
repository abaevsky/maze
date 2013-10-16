let num = Array.length Sys.argv in
if num > 1 then
let arg = int_of_string Sys.argv.(1) in 
print_int (arg);
print_newline ();
print_int (666);
else
begin
print_int (0);
print_newline ();
print_int (337);
end
