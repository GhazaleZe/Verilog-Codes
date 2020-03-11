module shift_reg(in1,clk,load,right);

inout [7:0] in1;
input clk ,load ,right;

always@(negedge clk)
	if (load)
		in1=8'b0;
	else
		if(right)
			in1 <= {1'b0,in1[6:0]};
		if (!right)
			in1 <= {in1[7:1],1'b0};
endmodule
