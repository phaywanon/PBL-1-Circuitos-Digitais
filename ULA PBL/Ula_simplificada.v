module Ula_simplificada(
    input A0,A1,A2,A3,
    input B0,B1,B2,B3,
    input Cin, // carry in
    input E0, E1, E2,// seleção de operação no MUX (3 bits)
    output R0, R1, R2, R3, R4, R5, R6, R7,
    output a0, a1, b0, b1, c0, c1, d0, d1, e0, e1, f0, f1, g0, g1,
	 output led1, led2
);

    wire S_soma0,S_soma1,S_soma2,S_soma3,C_soma;
    wire D_sub0,D_sub1,D_sub2,D_sub3,B_sub;
    wire AND0,AND1,AND2,AND3;
    wire OR0,OR1,OR2,OR3;
    wire XOR0,XOR1,XOR2,XOR3;
    wire P_p0, P_p1, P_p2, P_p3, P_p4, P_p5, P_p6, P_p7;
    wire Q_q0, Q_q1, Q_q2, Q_q3;
	 
    somador_4bits soma(
    .A0(A0),.A1(A1),.A2(A2),.A3(A3),
    .B0(B0),.B1(B1),.B2(B2),.B3(B3),
    .Cin(Cin),
    .Cout(C_soma),
    .S0(S_soma0),.S1(S_soma1),.S2(S_soma2),.S3(S_soma3)
    );
   
    subtrator_4bits sub(
    .A0(A0),.A1(A1),.A2(A2),.A3(A3),
    .B0(B0),.B1(B1),.B2(B2),.B3(B3),
    .Bin(Cin),
    .Bout(B_sub),
    .Dif0(D_sub0),.Dif1(D_sub1),.Dif2(D_sub2),.Dif3(D_sub3)
    );
     
     multiplicador_4bits mult(
     .A0(A0),.A1(A1),.A2(A2),.A3(A3),
     .B0(B0),.B1(B1),.B2(B2),.B3(B3),
     .P0(P_p0), .P1(P_p1), .P2(P_p2), .P3(P_p3), .P4(P_p4), .P5(P_p5), .P6(P_p6), .P7(P_p7)
     );
      
     AND_4bits porta_and(
     .A0(A0),.A1(A1),.A2(A2),.A3(A3),
     .B0(B0),.B1(B1),.B2(B2),.B3(B3),
     .S0(AND0),.S1(AND1),.S2(AND2),.S3(AND3)
     );

     OR_4bits porta_or(
     .A0(A0),.A1(A1),.A2(A2),.A3(A3),
     .B0(B0),.B1(B1),.B2(B2),.B3(B3),
     .S0(OR0),.S1(OR1),.S2(OR2),.S3(OR3)
     );

     XOR_4bits porta_xor(
     .A0(A0),.A1(A1),.A2(A2),.A3(A3),
     .B0(B0),.B1(B1),.B2(B2),.B3(B3),
     .S0(XOR0),.S1(XOR1),.S2(XOR2),.S3(XOR3)
     );
      
      divisor div(
     .A0(A0),.A1(A1),.A2(A2),.A3(A3),
     .B0(B0),.B1(B1),.B2(B2),.B3(B3),
     .Q0(Q_q0), .Q1(Q_q1), .Q2(Q_q2), .Q3(Q_q3)
      );
      
	 multiplexador_8bits mux_principal(
	 .S0(S_soma0), .S1(S_soma1), .S2(S_soma2), .S3(S_soma3), .Cout(C_soma),
	 .Dif0(D_sub0), .Dif1(D_sub1), .Dif2(D_sub2), .Dif3(D_sub3), .Bout(B_sub),
	 .P0(P_p0), .P1(P_p1), .P2(P_p2), .P3(P_p3), .P4(P_p4), .P5(P_p5), .P6(P_p6), .P7(P_p7),
	 .Q0(Q_q0), .Q1(Q_q1), .Q2(Q_q2), .Q3(Q_q3),
	 .And0(AND0), .And1(AND1), .And2(AND2) , .And3(AND3),
	 .Or0(OR0), .Or1(OR1), .Or2(OR2), .Or3(OR3),
	 .Xor0(XOR0),.Xor1(XOR1),.Xor2(XOR2),.Xor3(XOR3),
	 .E0(E0), .E1(E1), .E2(E2),
	 .R0(R0), .R1(R1),.R2(R2),.R3(R3),.R4(R4),.R5(R5),.R6(R6),.R7(R7)
);

    decodificador_display display(
     .R0(R7), .R1(R6), .R2(R5), .R3(R4),
     .R4(R3), .R5(R2), .R6(R1), .R7(R0),
     .a0(a0), .a1(a1), .b0(b0), .b1(b1),
     .c0(c0), .c1(c1), .d0(d0), .d1(d1),
     .e0(e0), .e1(e1), .f0(f0), .f1(f1),
     .g0(g0), .g1(g1)
);

	flagzero fz(
	 .S_soma0(S_soma0), .S_soma1(S_soma1), .S_soma2(S_soma2), .S_soma3(S_soma3),
	 .D_sub0(D_sub0), .D_sub1(D_sub1), .D_sub2(D_sub2), .D_sub3(D_sub3),
	 .AND0(AND0), .AND1(AND1), .AND2(AND2), .AND3(AND3),
	 .OR0(OR0), .OR1(OR1), .OR2(OR2), .OR3(OR3),
	 .XOR0(XOR0), .XOR1(XOR1), .XOR2(XOR2), .XOR3(XOR3),
	 .Q_q0(Q_q0), .Q_q1(Q_q1), .Q_q2(Q_q2), .Q_q3(Q_q3),
	 .P_p0(P_p0), .P_p1(P_p1), .P_p2(P_p2), .P_p3(P_p3), .P_p4(P_p4), .P_p5(P_p05), .P_p6(P_p6), .P_p7(P_p7),
	 .E0(E0), .E1(E1), .E2(E2),
	 .ZEROFLAG(ZEROflag)
);

	flagERRO fe(
	 .E0(E0), .E1(E1), .E2(E2),
	 .B0(B0), .B1(B1), .B2(B2), .B3(B3),
	 .Q0(Q0), .Q1(Q1), .Q2(Q2), .Q3(Q3),
	 .Q_q0(Q_q0), .Q_q1(Q_q1), .Q_q2(Q_q2), .Q_q3(Q_q3),
	 .flagerro(ERRflag)
);	
	flagoverflow ovf(
		.S_soma4(C_soma),
		.D_sub_neg(B_sub), 
		.P_p4(P_p4), .P_p5(P_p5), .P_p6(P_p6), .P_p7(P_p7), 
		.E0(E0), .E1(E1), .E2(E2),
		.OVFflag(OVflag)
);
	muxflag mf(
	 .ZEROflag(ZEROflag), .ERRflag(ERRflag), .OVflag(OVflag),
	 .led1(led1), .led2(led2)
);

endmodule
