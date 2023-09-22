module ifdef_tb;

reg [3:0] i;
reg [1:0] sel;

wire y;

ifdef DUT(y,i,sel);

initial begin 

$monitor (y,i,sel);

i[3] = 1;i[2] = 0;i[1] = 1;i[0] = 0;

sel=2'b00; #100;
sel=2'b01; #100;
sel=2'b10; #100;
sel=2'b11; #100;
sel=2'b00; #100;

end 

endmodule
