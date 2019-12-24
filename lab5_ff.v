module ff ( input aclr,input clk,input clken,input d,output q); 

 reg q_reg;
 assign q=q_reg; 

always @(posedge clk or negedge aclr) begin
  if (aclr == 1'b0) begin
    q_reg <= 1'b0;
  end else if ( clken ==1'b1 ) begin
    q_reg <= d;
  end
end
endmodule
