//--------------------scope randomization--------------------------

module scope;
integer Var;
  
initial
begin
for ( int i = 0;i<6 ;i++)
if( randomize(Var))
$display(" Randomization sucsessfull : Var = %0d ",Var);
else
  
$display("Randomization failed");
$finish;
end
endmodule