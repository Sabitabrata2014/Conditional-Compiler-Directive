`define dataflow

//`define behavioural

module ifdef(y,i,sel);

input [3:0] i;
input [1:0] sel;

`ifdef dataflow

output y;

`endif

`ifdef behavioural

output reg y;

`endif

`ifdef dataflow

assign y = ((~sel[1]&~sel[0]&i[0]) | (~sel[1]&sel[0]&i[1]) | (sel[1]&~sel[0]&i[2]) | (sel[1]&sel[0]&i[3]));

`else

`ifdef behavioural

always@*

begin
case(sel)
0 : y = i[0];
1 : y = i[1];
2 : y = i[2];
3 : y = i[3];
endcase
end

`endif

`endif

endmodule
