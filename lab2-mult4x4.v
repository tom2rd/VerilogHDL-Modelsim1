module mult4x4(a,b,product); 

input[3:0] a;
input[3:0] b; 
output[7:0] product; 

reg[3:0] a_reg; 
reg[3:0] b_reg; 
reg[7:0] product_reg; 
 
always @(posedge a or negedge a) 
 begin
 a_reg <= a;
 b_reg <= b;
 product_reg <= $signed(a_reg) * $signed(b_reg);
 end 
assign product = product_reg;
endmodule 
