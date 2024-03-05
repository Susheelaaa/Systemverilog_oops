//-------------overriding base class--------------------------
class parent_class;
  bit [31:0] data = 100;
  int id = 1;
  
  function void display();
    $display("parent: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data = 200;
  int id = 2;
  
  function void display();
    $display("Child: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

module overriding_base;
  initial begin
    child_class c;
    parent_class p;
    c = new();
    p = new();

    c.display();
    p.display();

  end
    //Then how to access base class members? 
endmodule