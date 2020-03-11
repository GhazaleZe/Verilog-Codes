module ALU_5bit(a,b,select,out);
input [0:4] a,b;
input [0:1] select;
inout [0:5] out;
	always@(a,b,select)
		case (select)
			0 : out <=a;
			1: out <= a+b;
			2 : out <= a-b;
			3 : out <= a+1;
		endcase
endmodule
