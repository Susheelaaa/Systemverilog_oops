
//---------------------null------------------------
class transaction;
  bit [31:0] data;
  int id;
endclass

module class_example;
  transaction tr1, tr2;
  initial begin
    tr1 = new();
    tr1.data = 5;
    tr1.id = 1;
    $display("Object pkt1.data = %0h, id = %0h", tr1.data, tr1.id);
    
   if(tr2 != null)
     begin 
    tr2.data = 10;//null pointer dereference (or null object access) error 
    tr2.id = 2;
    $display("Object pkt2.data = %0h, id = %0h", tr2.data, tr2.id);
     end
    else
        $display("tr2 object is not created");
  end
endmodule