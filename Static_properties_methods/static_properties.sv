// //-----------------static properties------------
class transaction;
  static int s_id;
  int id;
  
  function new ();
    s_id++;
    id++;
  endfunction
endclass

module class_example;
  transaction t,tr[5];
  initial begin
    t.s_id=10;//without creating object
    $display(t.s_id);
  //----------------------------------------------------
    foreach (tr[i]) begin 
      tr[i] = new();
      $display("Value of s_id = %0d, id = %0d", tr[i].s_id, tr[i].id);
    end
  end
endmodule
