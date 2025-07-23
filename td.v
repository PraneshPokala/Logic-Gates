`include "hs.v"


module td;

             reg a,b;
             wire diff,borrow;

         initial begin 
                 a=0;b=0;#10;
                 a=0;b=1;#10;
                 a=1;b=0;#10;
                 a=1;b=1;#10;

         end

         initial $monitor("a=%b,b=%b,diff=%b,borrow=%b",a,b,diff,borrow);
endmodule
