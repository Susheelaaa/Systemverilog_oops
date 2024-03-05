//-----------constructor without arguments---------------------
class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  
  function void display();
    $display("Child: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    c_tr.data = 5;
    c_tr.id   = 2;
    
    p_tr = c_tr;
    
    p_tr.data = 10;
    p_tr.id   = 1;
    
    p_tr.display();
    c_tr.display();
  end
endmodule