//---------------array of objects(fixed & dynamic)----------
class transaction;
  bit [31:0] data;
  int id;
endclass

module class_example;
  
  transaction tr_f[5];//fixed size array of objects
  transaction tr_d[];//dynamic size array of objects
  
  initial begin
    
    tr_d=new[5];//allocate size for dynamic array
    
    foreach(tr_f[i]) begin
      tr_f[i] = new();
      tr_f[i].data = i*i;
      tr_f[i].id = i+1;
    end
    
    foreach(tr_d[i]) begin
      tr_d[i] = new();
      tr_d[i].data = i*i;
      tr_d[i].id = i+1;
    end
    
    foreach(tr_f[i])
      $display("tr_f[%0d].data = %0d, tr_f[%0d].id = %0d",i, tr_f[i].data, i, tr_f[i].id);
    
    $display("------------------------------------------------------------");
    
    foreach(tr_d[i]) 
      $display("tr[%0d].data = %0d, tr[%0d].id = %0d",i, tr_d[i].data, i, tr_d[i].id);

  end
endmodule
//---------------------------array of objects(associative)---------

// typedef enum {idle, setup, access} state;
// class transaction;
//   bit [31:0] data;
//   int id;
// endclass

// module class_example;
//   transaction tr[state];
//   initial begin
//     tr[idle]   = new();
//     tr[setup]  = new();
//     tr[access] = new();
  
//     foreach(tr[i]) begin 
//       tr[i].data = i**3;
//       tr[i].id = i+1;
//     end
    
//     foreach(tr[i]) $display("tr[%0s].data = %0d, tr[%0s].id = %0d",i.name, tr[i].data, i.name, tr[i].id);
//   end
// endmodule