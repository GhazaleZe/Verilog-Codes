module top_module;
integer i,j,k,f;
reg [3:0] a,b;
reg SE,ST;
wire [3:0] o;

initial
begin
	a = 4'b0;
	b = 4'b0;
	SE= 1'b0;
	ST = 1'b0;
	for(k=0 ; k<2 ;k=k+1)
	begin
		for (i = 0; i < 16; i=i+1)
		begin
			for (j = 0; j < 16; j=j+1)
			begin
				#100;
				b = b + 1;
				
			end
			a = a + 1;
		end
		SE=SE+1;
	end
end
endmodule