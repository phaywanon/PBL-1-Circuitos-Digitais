module multiplicador_4bits(A0, A1, A2, A3, B0, B1, B2, B3, P0, P1, P2, P3, P4, P5, P6, P7);
    input A0, A1, A2, A3;
    input B0, B1, B2, B3;
    output P0, P1, P2, P3, P4, P5, P6, P7;

    wire p00, p01, p02, p03;
    wire p10, p11, p12, p13;
    wire p20, p21, p22, p23;
    wire p30, p31, p32, p33;

    
    and AND00(p00, A0, B0);
    and AND01(p01, A0, B1);
    and AND02(p02, A0, B2);
    and AND03(p03, A0, B3);

    and AND10(p10, A1, B0);
    and AND11(p11, A1, B1);
    and AND12(p12, A1, B2);
    and AND13(p13, A1, B3);

    and AND20(p20, A2, B0);
    and AND21(p21, A2, B1);
    and AND22(p22, A2, B2);
    and AND23(p23, A2, B3);

    and AND30(p30, A3, B0);
    and AND31(p31, A3, B1);
    and AND32(p32, A3, B2);
    and AND33(p33, A3, B3);


    or redu0(P0, 1'b0, p00);

    wire c1;
    somador_1bit S1 (p01, p10, 1'b0, P1, c1);

    wire s2a, c2a, c2b;
    somador_1bit S2a (p02, p11, c1, s2a, c2a);
    somador_1bit S2b (s2a, p20, 0, P2, c2b);
    wire c2;
   or (c2, c2a, c2b);
    wire s3a, c3a, s3b, c3b, c3c;
    somador_1bit S3a (p03, p12, c2, s3a, c3a);
    somador_1bit S3b (s3a, p21, 0, s3b, c3b);
    somador_1bit S3c (s3b, p30, 0, P3, c3c);
    wire c3;
    or (c3, c3a, c3b, c3c);

    
    wire s4a, c4a, s4b, c4b;
    somador_1bit S4a (p13, p22, c3, s4a, c4a);
    somador_1bit S4b (s4a, p31, 0, P4, c4b);
    wire c4;
    or (c4, c4a,  c4b);

    
    wire s5a, c5a;
    somador_1bit S5a (p23, p32, c4, P5, c5a);

    
    wire c6;
    somador_1bit S6a (p33, c5a, 0, P6, c6);

    
    or redu1(P7, 1'b0, c6);
     

endmodule