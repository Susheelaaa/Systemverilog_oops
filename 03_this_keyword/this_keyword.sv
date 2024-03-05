//-------------------this keyword------------
class transaction;
  bit [31:0] data;
  int id;
  
  function new (bit [31:0] data, int id);
   this.data = data;
   this.id = id;
  endfunction
endclass

module class_example;
  initial begin
    transaction tr = new(5, 1);
    $display("Value of data = %0h, id = %0h", tr.data, tr.id);
  end
endmodule