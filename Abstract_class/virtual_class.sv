//==================virtual class==============================
 virtual  class base_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass
 
class sub_trans extends base_trans;
endclass

module class_example;
  initial begin
     sub_trans s_tr;

     s_tr = new();
    
    s_tr.data = 5;
    s_tr.id = 1;
    s_tr.display();
  end
endmodule