module ALU_function_task;
	reg [1:0]select;
	reg [4:0]a,b;
	reg [5:0]out;
	
	initial 
		begin
		a=5'b00101;
		b=5'b00010;
		select=2'b00;
		#100 select=2'b01;
		#100 select=2'b10;
		#100 select=2'b11;
		#100 select=2'b00;
		#100;
		
		end
	
	always @(select)
	begin
	case (select)
		2'b00 :
			out=return_a(a);
		2'b01 :
			out=sum(a,b);
		2'b10 :
			red(out,a,b);
		2'b11 :
			plusone(out,a);
		
	endcase
	end
		function [4:0]return_a;
		input [4:0]in1;
		begin
			return_a=in1;
		end
		endfunction	
		
		function [5:0]sum;
		input [4:0] in2,in3;
			begin
				sum=in2+in3;
			end
		endfunction
		
		task red;
		output [4:0]out1;
		input [4:0]in4,in5;
				begin
					out1=in4-in5;
				end
		endtask
		task plusone;
		output [5:0]outplus;
		input [4:0]inplus;
			begin
				outplus=inplus+1;
			end
		endtask
endmodule
