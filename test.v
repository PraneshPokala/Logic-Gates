`include "ha.v"

 

module test;
         reg a,b;
         wire sum,carry;



         initial begin 
                 a=0;b=0;#10;
                 a=0;b=1;#10;
                 a=1;b=0;#10;
                 a=1;b=1;#10;
         end

         initial $monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);

         halfadder a2 (a,b,sum,carry);
endmodule
