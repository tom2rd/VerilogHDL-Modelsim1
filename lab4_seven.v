module seven(inp, a,b,c,d,e,f,g);

input[2:0] inp;
output[1:0] a,b,c,d,e,f,g;

wire[2:0] inp;
reg[6:0] outseg;

assign a=outseg[6];
assign b=outseg[5];
assign c=outseg[4];
assign d=outseg[3];
assign e=outseg[2];
assign f=outseg[1];
assign g=outseg[0];

always @(inp) begin
  case (inp)
    3'b000: outseg<= 7'b1111110;
    3'b001: outseg<= 7'b0110000;
    3'b010: outseg<= 7'b1101101;
    3'b011: outseg<= 7'b1111001;
    3'b1??: outseg<= 7'b1001111;
    default: outseg<=7'b1001111;
  endcase
end

endmodule
