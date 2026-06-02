module XOR_4bits (A0, B0, A1, B1, A2, B2, A3, B3, S0, S1,S2, S3);
	input A0, B0, A1, B1, A2, B2, A3, B3;
	output S0, S1,S2, S3;

	PortaXOR Xor1(
	.A(A0),
	.B(B0),
	.S(S0)
);
	PortaXOR Xor2(
	.A(A1),
	.B(B1),
	.S(S1)
);
	PortaXOR Xor3(
	.A(A2),
	.B(B2),
	.S(S2)
);
	PortaXOR Xor4(
	.A(A3),
	.B(B3),
	.S(S3)
);
endmodule
