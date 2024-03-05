---------------------multilevel inheritance---------------
class parent_class;
  bit [31:0] data_p;
  
  function void disp_p();
    $display("parent_class: Value of data = %0h", data_p);
  endfunction
endclass

class child1_class extends parent_class;
  bit [31:0] data_c1;
  
  function void disp_c1();
    $display("child1_class: Value of data = %0h", data_c1);
  endfunction
endclass

class child2_class extends parent_class;
  bit [31:0] data_c2;
  
  function void disp_c2();
    $display("child2_class: Value of data = %0h", data_c2);
  endfunction
endclass

class child_A_class extends child1_class;
  bit [31:0] data_cA;
  
  function void disp_cA();
    $display("child_A_classs: Value of data = %0h", data_cA);
  endfunction
endclass

class child_B_class extends child_A_class;
  bit [31:0] data_cB;
  
  function void disp_cB();
    $display("child_B_class: Value of data = %0h", data_cB);
  endfunction
endclass

module multilevel_inheritance;
  initial begin
    child_B_class cB;
    cB = new();
    cB.data_p = 2;
    cB.data_c1 = 4;
    cB.data_cA = 6;
    cB.data_cB = 8;
  //  cB.data_c2 = 3;  // Not possible as child_B_class is not child class of child2_class
    
    cB.disp_p();
    cB.disp_c1();
    cB.disp_cA();
    cB.disp_cB();
  end
endmodule
