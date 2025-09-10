module ALU(a,b,f,clk,op);
input [3:0]a,b;
input [1:0]op;
input clk;
output [7:0]f;
reg [3:0]f;
reg [3:0]fcomb;
parameter ADD = 2'b00, SUB = 2'b01, MUL = 2'b10, DIV = 2'b11;

always @ (a or b or op) begin
case (op)
    ADD: fcomb = a + b;
    SUB: fcomb = a - b;
    MUL: fcomb = a * b;
    DIV: fcomb = a / b;
    default: fcomb = 4'bx;
endcase
end

always @ (posedge clk) begin
  f <= fcomb;
end
endmodule
