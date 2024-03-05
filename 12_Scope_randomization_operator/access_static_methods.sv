class transaction;
  bit [31:0] data;
  static int id;
  
  static function stat_display(int id);
    $display("Value of id = %0h", id);
  endfunction
  
  function auto_display(int id);
    $display("Value of id = %0h", id);
  endfunction
endclass

module class_example;
  initial begin
    transaction::id = 5;
    transaction::stat_display(transaction::id);
    
//     transaction::data = 2; // illegal
//     transaction::auto_display(transaction::id); // illegal
 end
endmodule