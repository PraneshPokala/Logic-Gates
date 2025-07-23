`include "dut.v"

module tb;
        


        reg a,b,c;
        wire sum,carry;
        

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

        initial $monitor("a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);


        fulladder j(a,b,c,sum,carry);


endmodule
