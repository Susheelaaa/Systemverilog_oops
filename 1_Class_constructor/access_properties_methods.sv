//--------------class constructor-accessing property and methods-----------
class transaction;
  bit [31:0] data;//property
  int id;
  
  function new (bit [31:0] m_data);//constructor
    $display("Inside constructor");
    data = m_data;
  endfunction

  task update(bit [31:0] m_data, int m_id);//method
    data = m_data;
    id = m_id;
  endtask

  function print(transaction tr);
    $display("Value of data = %0h and id = %0h", tr.data,tr.id);
  endfunction

endclass

module class_example;
  transaction tr;
  initial begin
    tr = new(10);
    $display("Value of data = %0h", tr.data);
    tr.update(5, 9);
    tr.print(tr);
  end
endmodule