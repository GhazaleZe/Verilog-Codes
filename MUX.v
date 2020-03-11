module mux_with_delay(A,B,Y,storb,select);
//total delay 12
input [3:0] A,B;
input select,storb;
output [3:0] Y;
wire [3:0] a1out,a2out;
wire storbout,sout,selectbar;

	storbout = (!select) & (!storb);
	selectbar=  !select;
	#2 sout=  (!select) & (!storb);
	#5 a1out[0]= A[0]& storbout;
	#5 a2out[0] = B[0] & selectbar
	#5 a1out[1]= A[1]& storbout;
	#5 a2out[1] = B[1] & selectbar
	#5 a1out[2]= A[2]& storbout;
	#5 a2out[2] = B[2] & selectbar
	#5 a1out[3]= A[3]& storbout;
	#5 a2out[3] = B[3] & selectbar
	#8 Y[0]=a1out[0] | a2out[0];
	#8 Y[1]=a1out[1] | a2out[1];
	#8 Y[2]=a1out[2] | a2out[2];
	#8 Y[3]=a1out[0] | a2out[3];
endmodule

	
	