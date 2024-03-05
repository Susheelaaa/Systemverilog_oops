class parent_class;
  bit [31:0] data;
  
  function void disp_p();
    $display("parent:Value of data = %0h", data);
  endfunction
endclass

class child_class extends parent_class;
  int id;
  
  function void disp_c();
    $display("child:Value of id = %0h", id);
  endfunction
  
endclass

module class_example;
  initial begin
    child_class c;
    c = new();
    c.data = 5; // child class is updating property of its base class
    c.id = 1;
    
    c.disp_p(); // child class is accessing method of its base class
    c.disp_c();
  end
endmodule