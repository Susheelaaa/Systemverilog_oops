//-------------------------(using scope resolution operator & object handle)-------------------------
class transaction;
  bit [31:0] data;
  static int id;
  
  static function disp(int id);
    $display("Value of id = %0d", id);
  endfunction
  
  function auto_disp(int id);
    $display("Value of id = %0d", id);
  endfunction
endclass

module class_example;
  transaction tr;
  initial begin
    tr.id=6;
    tr.disp(tr.id);
    transaction::id = 5;
    transaction::disp(transaction::id);
    
    //transaction::data = 2; // illegal
    //transaction::auto_disp(transaction::id); // illegal
  end
endmodule