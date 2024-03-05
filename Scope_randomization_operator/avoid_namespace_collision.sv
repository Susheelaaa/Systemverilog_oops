//===================namespace collision========================

package pkg;

typedef enum {true,false} bool_var;

endpackage

module tb; 
  
typedef enum {false,true} bool_var;
bool_var bv;
  
initial begin

  bv=true;  
  $display("bv=%0d",bv);
  
  bv=bool_var'(pkg::true);
  $display("bv=%0d",bv);
  
end
endmodule
