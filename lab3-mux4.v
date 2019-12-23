module mux4( 
input wire sel,
input wire [3:0] a, 
input wire [3:0] b, 
output reg [3:0] y ); 

always @ (*) begin 
 if (sel) begin 
  y = a; 
 end else begin 
  y = b; 
 end 
end 
endmodule
