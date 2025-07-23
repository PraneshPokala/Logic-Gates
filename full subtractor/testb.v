`include "fs.v"

module testb;


         reg a,b,c;
         wire diff,borrow;

         initial begin
                 a=0;b=0;c=0;#1;
                 a=0;b=0;c=1;#1;
                 a=0;b=1;c=0;#1;
                 a=0;b=1;c=1;#1;
                 a=1;b=0;c=0;#1;
                 a=1;b=0;c=1;#1;
                 a=1;b=1;c=0;#1;
                 a=1;b=1;c=1;#1;

         end

         initial $monitor("a=%b,b=%b,c=%b,diff=%b,borrow=%b",a,b,c,diff,borrow);

         fullsubtractor a1(a,b,c,diff,borrow);

endmodule


