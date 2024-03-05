class scope;

int a;
function display(int a);
  $display("display:Value is A=%0d",a);
endfunction
  
extern function void print(); 

endclass
  
//extern method definition
function void scope :: print();
  $display("extern print: A = %0d", a);
endfunction
  
//package
package pkg;
 int c=30;
endpackage
  
module tb;
int c=10;
 initial begin
   
    scope p;
    p = new();
   
    p.a = c;   
    p.display(p.a);
    p.print;
   
    p.a = pkg::c;
    $display("package: a=%0d pkg::c=%0d",p.a,pkg::c);

 end
endmodule