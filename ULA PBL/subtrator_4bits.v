module subtrator_4bits(A0, B0, A1, B1, A2, B2, A3, B3, Bin, Bout, Dif0, Dif1, Dif2, Dif3);
	input A0, B0, A1, B1, A2, B2, A3, B3, Bin;
	output Bout, Dif0, Dif1, Dif2, Dif3;
	wire bout0_bin1, bout1_bin2, bout2_bin3;
	
	subtrator_1bit subtrator1(
	.A(A0),
	.B(B0),
	.Bin(Bin),
	.Dif(Dif0),
	.Bout(bout0_bin1)
);
	subtrator_1bit subtrator2(
	.A(A1),
	.B(B1),
	.Bin(bout0_bin1),
	.Dif(Dif1),
	.Bout(bout1_bin2)
);
	subtrator_1bit subtrator3(
	.A(A2),
	.B(B2),
	.Bin(bout1_bin2),
	.Dif(Dif2),
	.Bout(bout2_bin3)
);
	subtrator_1bit subtrator4(
	.A(A3),
	.B(B3),
	.Bin(bout2_bin3),
	.Dif(Dif3),
	.Bout(Bout)
);
endmodule


