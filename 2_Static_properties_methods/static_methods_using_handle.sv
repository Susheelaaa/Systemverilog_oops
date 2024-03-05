//------------static methods(using class handle)-------------
class transaction;
  static int s_id;
  int id;
  
  static function void incr_s_id(); // Static function
    //int sid;
    s_id++;
  // id++; // illegal access
  endfunction
  
  function void incr_id(); // Non-static function
   s_id++;
   id++;
  endfunction
  
endclass

module class_example;
  transaction tr[5], tr_new;
  initial begin
    foreach (tr[i]) begin 
      tr[i] = new();
      tr[i].incr_s_id();//static method
      $display("incr_s_id: Value of s_id = %0d, id = %0d", tr[i].s_id, tr[i].id);
    end
    
    tr[0].s_id = 0; 
    foreach (tr[i]) begin 
      tr[i].incr_id();//non static method
      $display("incr_id: Value of s_id = %0d, id = %0d", tr[i].s_id, tr[i].id);
    end
  end
endmodule