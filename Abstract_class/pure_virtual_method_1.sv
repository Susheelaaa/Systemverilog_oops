//---------------------pure virtual methods----------------
virtual class base_trans;
  bit [31:0] data;
  int id;
  
pure virtual function void display();
//     $display("Base: Value of data = %0h and id = %0h", data, id);
//   endfunction
  
endclass

class sub_trans extends base_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("sub: Value of data = %0d and id = %0d", data, id);
  endfunction  
  
endclass

module class_example;
  initial begin
    base_trans b_tr;
    sub_trans s_tr;
    s_tr = new();
    
    b_tr=s_tr;
    
    s_tr.data = 5;
    s_tr.id = 1;
    b_tr.display();
  end
endmodule