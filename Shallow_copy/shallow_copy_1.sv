//=============================== Shallow copy ==================================

class A;
  int m = 15;
  string n= "sun";
endclass
 
class B;
  int i = 20;
  string j= "moon";
  A a = new;
endclass
 
module shallow;
  B b1, b2;
  initial begin
    b1 = new;
    b2 = new b1;// shallow copy method 
    
    $display("b1.i = %0d | b1.j = %0s | b1.a.m=%0d | b1.a.n=%0s",b1.i,b1.j,b1.a.m,b1.a.n);
    $display("b2.i = %0d | b2.j = %0s | b2.a.m=%0d | b2.a.n=%0s",b2.i,b2.j,b2.a.m,b2.a.n);
    $display("-----------------------------------------------------");

    b1.i = 30;
    b1.j="star";
    b1.a.m = 25;
    b1.a.n="planet";//Assigns planet to variable “n” shared by both b1 & b2
    
    $display("b1.i = %0d | b1.j = %0s | b1.a.m=%0d | b1.a.n=%0s",b1.i,b1.j,b1.a.m,b1.a.n);
    $display("b2.i = %0d | b2.j = %0s | b2.a.m=%0d | b2.a.n=%0s",b2.i,b2.j,b2.a.m,b2.a.n);
    $display("-----------------------------------------------------");

    b2.i = 40;
    b2.j="earth";
    b2.a.m = 35;
    b2.a.n="saturn";
    
    $display("b2.i = %0d | b2.j = %0s | b2.a.m=%0d | b2.a.n=%0s",b2.i,b2.j,b2.a.m,b2.a.n);
    $display("b1.i = %0d | b1.j = %0s | b1.a.m=%0d | b1.a.n=%0s",b1.i,b1.j,b1.a.m,b1.a.n);

end
endmodule
