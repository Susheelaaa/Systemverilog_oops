//------------------It is function static(not static function) 
class transaction;
  static int s_id;
  int id;
  
  function static int incr_id(); // Non-static function
    int status; // Behaves as a static variable.
    status = s_id++;
    id++; // non-static member is accessible
    return status;
  endfunction
  
endclass

module class_example;
  transaction tr[5];
  int local_status;

  initial begin
    foreach (tr[i]) begin 
      tr[i] = new();
      local_status = tr[i].incr_id();
      $display("Value of s_id = %0h, id = %0h, local_status = %0h", tr[i].s_id, tr[i].id,  local_status);
    end
  end
endmodule