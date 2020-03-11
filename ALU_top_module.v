module ALU_top_module;
integer i,j,k;
reg [4:0] in1,in2;
reg [1:0] s;
wire [5:0] O;
	ALU alu1(in1,in2,s,O);
	initial
begin
	a = 5'b0;
	b = 5'b0;
	s= 2'b0;
	for(k=0 ; k<4 ;k=k+1)
	begin
		for (i = 0; i < 32; i=i+1)
		begin
			for (j = 0; j < 32; j=j+1)
			begin
				#100;
				b = b + 1;
				
			end
			a = a + 1;
		end
	end
end
endmodule