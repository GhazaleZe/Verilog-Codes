module shift_reg_top;
integer i,j,k;
reg [7:0] a;
reg L,R,CLK;
	shift_reg shre(a,CLK,L,R);
	initial
begin
	a = 8'b0;
	CLK=1'b0;
	L=1'b0;
	R=1'b0;
	for(k=0 ; k<256 ;k=k+1)
	begin
		#100
		a=a+1;
		CLK=~CLK;
	end
end
endmodule
