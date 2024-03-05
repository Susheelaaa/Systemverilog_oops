//===================polymorphism==============================
class parent;
  bit [31:0] data;
  int id;
  
  virtual function void display();
     $display("Base: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_A extends parent;
  function void display();
    $display("Child_A: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_B extends parent;
  function void display();
    $display("Child_B: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_C extends parent;
  function void display();
    $display("Child_C: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent P;
    child_A c_A = new();
    child_B c_B = new();
    child_C c_C = new();
    
    c_A.data = 200;
    c_A.id   = 2;
    
    c_B.data = 300;
    c_B.id   = 3;
    
    c_C.data = 400;
    c_C.id   = 4;
     
    P = c_A;
    P.display();
    
    P = c_B;
    P.display();
    
    P = c_C;
    P.display();
    
    P.data = 100;
    P.id   = 1;
    
    
    
  end
endmodule