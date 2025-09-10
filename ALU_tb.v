module ALU_tb;
reg [4:0]a,b;
reg clk;
reg [1:0]op;
wire [4:0]f;

ALU uut (.a(a), .b(b), .f(f), .clk(clk), .op(op));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
op = 2'b00;
a = 4'd22;
b = 4'd12;
#10;
$display("f = %d", f);
#10;
op = 2'b01;
a = 4'd18;
b = 4'd15;
#10;
$display("f = %d", f);
#10;
op = 2'b10;
a = 4'd12;
b = 4'd14;
#10;
$display("f = %d", f);
#10;
op = 2'b11;
a = 4'd12;
b = 4'd20;
#10;
$display("f = %d", f);
#10;
$finish;
end

endmodule
