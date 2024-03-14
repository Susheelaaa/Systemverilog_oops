
class seq_item;

  rand bit [3:0] array_s[5];
  rand bit [3:0] array_d[];
  rand bit [7:0] array_a[scale_e];

  rand bit [2:0] val1, val2, val3, val4;
  
  scale_e scale;
  
  constraint array_s_c { unique {array_s}; }
  
  constraint array_d_c { unique {array_d};
                         array_d.size==5;
                       }

  constraint value_a_c { unique {array_a}; 
                         array_a.size == scale.num;
                       }
  
  constraint val_c {unique {val1, val2, val3, val4}; }
  
endclass

module constraint_example;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(3) begin
      item.randomize();
      $display("---------------------------------------");
      $display("val1 = %0d, val2 = %0d, val3 = %0d, val4 = %0d", item.val1, item.val2, item.val3, item.val4);
      $display("---------------------------------------");

      foreach(item.array_s[i]) $display("array_s[%0d] = %0d", i, item.array_s[i]);
      $display("---------------------------------------");
      foreach(item.array_d[i]) $display("array_d[%0d] = %0d", i, item.array_d[i]);
      $display("---------------------------------------");
      foreach(item.array_a[i]) $display("array_a[%s] = %0d", i.name(), item.array_a[i]);
     
    end
  end
endmodule