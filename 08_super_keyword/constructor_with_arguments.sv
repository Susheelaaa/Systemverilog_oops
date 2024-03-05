//------------Usage of the super keyword in the constructor---------------
//-----------constructor with arguments---------------------
class parent_trans;
  bit [31:0] data;
  
  function new(bit [31:0] data);
    this.data = data;
    $display("Base: Value of data = %0h", data);
  endfunction
  
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  
  function new(bit [31:0] data_p, data_c);
    super.new(data_p);
    this.data = data_c;
    $display("Child: Value of data = %0h", data);
  endfunction

endclass

module class_example;
  initial begin
    child_trans c_tr;
    c_tr = new(5, 7);
  end
endmodule