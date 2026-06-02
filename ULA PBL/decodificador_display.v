module decodificador_display(
input R0,R1,R2,R3,R4,R5,R6,R7,
output a0,b0,c0,d0,e0,f0,g0,a1,b1,c1,d1,e1,f1,g1
);
  wire [19:0] af0;
  wire [22:0] bf0;
  wire [12:0] cf0;
  wire [28:0] df0;
  wire [12:0] ef0;
  wire [24:0] ff0;
  wire [24:0] gf0;
  wire [4:0] af1;
  wire [4:0] bf1;
  wire [2:0] cf1;
  wire [6:0] df1;
  wire [10:0] ef1;
  wire [6:0] ff1;
  wire [6:0] gf1;
 
  wire nR0, nR1, nR2, nR3, nR4, nR5, nR6, nR7;

  not not0 (nR0, R0);
  not not1 (nR1, R1);
  not not2 (nR2, R2);
  not not3 (nR3, R3);
  not not4 (nR4, R4);
  not not5 (nR5, R5);
  not not6 (nR6, R6);
  not not7 (nR7, R7);

 
  and (af0[0], nR0, nR1, nR2, nR3, nR4, nR5, nR6, R7);
  and (af0[1], nR0, nR1, nR2, nR3, nR4, R5, nR6, nR7);
  and (af0[2], nR0, nR1, nR2, nR3, R4, nR5, R6, R7);
  and (af0[3], nR0, nR1, nR2, nR3, R4, R5, R6, nR7);
  and (af0[4], nR0, nR1, nR2, R3, nR4, R5, nR6, R7);
  and (af0[5], nR0, nR1, nR2, R3, R4, nR5, nR6, nR7);
  and (af0[6], nR0, nR1, nR2, R3, R4, R5, R6, R7);
  and (af0[7], nR0, nR1, R2, nR3, nR4, nR5, R6, nR7);
  and (af0[8], nR0, nR1, R2, nR3, R4, nR5, nR6, R7);
  and (af0[9], nR0, nR1, R2, nR3, R4, R5, nR6, nR7);
  and (af0[10], nR0, nR1, R2, R3, nR4, nR5, R6, R7);
  and (af0[11], nR0, nR1, R2, R3, nR4, R5, R6, nR7);
  and (af0[12], nR0, nR1, R2, R3, R4, R5, nR6, R7);
  and (af0[13], nR0, R1, nR2, nR3, nR4, nR5, nR6, nR7);
  and (af0[14], nR0, R1, nR2, nR3, nR4, R5, R6, R7);
  and (af0[15], nR0, R1, nR2, nR3, R4, nR5, R6, nR7);
  and (af0[16], nR0, R1, nR2, R3, nR4, nR5, nR6, R7);
  and (af0[17], nR0, R1, nR2, R3, nR4, R5, nR6, nR7);
  and (af0[18], nR0, R1, nR2, R3, R4, nR5, R6, R7);
  and (af0[19], nR0, R1, nR2, R3, R4, R5, R6, nR7);
 
 
  and (bf0[0], nR1, nR2, nR3, nR4, R5, nR6, R7);
  and (bf0[1], nR1, nR2, nR3, nR4, R5, R6, nR7);
  and (bf0[2], nR1, nR2, nR3, R4, R5, R6, R7);
  and (bf0[3], nR1, nR2, R3, nR4, nR5, nR6, nR7);
  and (bf0[4], nR1, nR2, R3, R4, nR5, nR6, R7);
  and (bf0[5], nR1, nR2, R3, R4, nR5, R6, nR7);
  and (bf0[6], nR1, R2, nR3, nR4, nR5, R6, R7);
  and (bf0[7], R2, nR3, nR4, R5, nR6, nR7);
  and (bf0[8], R2, nR3, R4, R5, nR6, R7);
  and (bf0[9], R2, nR3, R4, R5, R6, nR7);
  and (bf0[10], R2, R3, nR4, R5, R6, R7);
  and (bf0[11], R2, R3, R4, nR5, nR6, nR7);
  and (bf0[12], R1, nR2, nR3, nR4, nR5, nR6, R7);
  and (bf0[13], R1, nR2, nR3, nR4, nR5, R6, nR7);
  and (bf0[14], R1, nR3, R4, nR5, R6, R7);
  and (bf0[15], R1, nR3, R4, R5, nR6, nR7);
  and (bf0[16], R1, R3, nR4, R5, nR6, R7);
  and (bf0[17], R1, R3, nR4, R5, R6, nR7);
  and (bf0[18], R1, R3, R4, R5, R6, R7);
  and (bf0[19], R1, R2, nR6, nR7);
  and (bf0[20], R1, R2, R5);
  and (bf0[21], R1, R2, R4);
  and (bf0[22], R1, R2, R3);
 
  and (cf0[0], nR1, nR2, nR3, nR4, nR5, R6, nR7);
  and (cf0[1], nR1, nR2, nR3, R4, R5, nR6, nR7);
  and (cf0[2], nR1, nR2, R3, nR4, R5, R6, nR7);
  and (cf0[3], nR1, R2, nR3, nR4, nR5, nR6, nR7);
  and (cf0[4], R2, nR3, R4, nR5, R6, nR7);
  and (cf0[5], R2, R3, nR4, R5, nR6, nR7);
  and (cf0[6], R2, R3, R4, R5, R6, nR7);
  and (cf0[7], R1, nR3, R4, nR5, nR6, nR7);
  and (cf0[8], R1, R3, nR4, nR5, R6, nR7);
  and (cf0[9], R1, R3, R4, R5, nR6, nR7);
  and (cf0[10], R1, R2, R5);
  and (cf0[11], R1, R2, R4);
  and (cf0[12], R1, R2, R3);
 
 
  and (df0[0], nR1, nR2, nR4, nR5, nR6, R7);
  and (df0[1], nR1, nR2, nR3, nR4, R5, nR6, nR7);
  and (df0[2], nR2, nR3, nR4, R5, R6, R7);
  and (df0[3], nR1, nR2, R4, nR5, R6, R7);
  and (df0[4], nR1, nR2, nR3, R4, R5, R6, nR7);
  and (df0[5], nR1, nR2, R3, nR4, nR6, R7);
  and (df0[6], nR1, nR2, R3, R4, nR5, nR6, nR7);
  and (df0[7], nR1, nR2, R3, R4, R6, R7);
  and (df0[8], nR1, R2, nR3, nR4, nR5, R6, nR7);
  and (df0[9], R2, nR3, nR4, R5, nR6, R7);
  and (df0[10], R2, R4, nR5, nR6, R7);
  and (df0[11], R2, nR3, R4, R5, nR6, nR7);
  and (df0[12], R2, nR3, R4, R5, R6, R7);
  and (df0[13], R2, R3, nR4, nR5, R6, R7);
  and (df0[14], R2, R3, nR4, R5, R6, nR7);
  and (df0[15], R2, R3, R4, nR6, R7);
  and (df0[16], R1, nR2, nR3, nR4, nR5, nR6, nR7);
  and (df0[17], R1, nR2, nR3, nR4, R6, R7);
  and (df0[18], R1, nR3, R4, nR5, R6, nR7);
  and (df0[19], R1, nR3, R4, R5, nR6, R7);
  and (df0[20], R1, R3, nR4, R5, nR6, nR7);
  and (df0[21], R1, nR4, R5, R6, R7);
  and (df0[22], R1, R3, R4, R5, R6, nR7);
  and (df0[23], R1, R2, nR6, R7);
  and (df0[24], R1, R2, R5);
  and (df0[25], R1, R2, R4);
  and (df0[26], R1, R2, R3);
  and (df0[27], nR2, R3, nR4, nR5, nR6, R7);
  and (df0[28], nR2, R3, R4, nR5, R6, R7);
   
 
  and (ef0[0], nR0, nR1, nR2, nR3, nR4, R5, nR6);
  and (ef0[1], nR0, nR1, nR2, nR3, R4, R5, R6);
  and (ef0[2], nR0, nR1, nR2, R3, R4, nR5, nR6);
  and (ef0[3], nR0, nR1, R2, nR3, nR4, nR5, R6);
  and (ef0[4], nR0, nR1, R7);
  and (ef0[5], nR0, nR1, R2, nR3, R4, R5, nR6);
  and (ef0[6], nR0, nR1, R2, R3, nR4, R5, R6);
  and (ef0[7], nR0, R1, nR2, nR3, nR4, nR5, nR6);
  and (ef0[8], nR0, nR2, R7);
  and (ef0[9], nR0, R1, nR2, nR3, R4, nR5, R6);
  and (ef0[10], nR0, R1, nR2, R3, nR4, R5, nR6);
  and (ef0[11], nR0, R1, nR2, R3, R4, R5, R6);
  and (ef0[12], nR0, nR3, nR4, nR5, R7);
 
 
  and (ff0[0], nR0, nR1, nR2, nR3, nR4, nR5, R6);
  and (ff0[1], nR0, nR1, nR2, nR3, R4, R5, nR6);
  and (ff0[2], nR0, nR1, nR2, R3, nR4, R5, R6);
  and (ff0[3], nR0, nR1, R2, nR3, nR4, nR5, nR6);
  and (ff0[4], nR0, nR1, R2, nR3, R4, nR5, R6);
  and (ff0[5], nR0, nR1, R2, R3, nR4, nR5, R6, R7);
  and (ff0[6], nR0, nR1, R2, R3, nR4, R5, nR6);
  and (ff0[7], nR0, nR1, R2, R3, R4, R5, R6);
  and (ff0[8], nR0, R1, nR2, nR3, R4, nR5, nR6);
  and (ff0[9], nR0 & R1 & nR2 & R3 & nR4 & nR5 & R6);
  and (ff0[10], nR0, R1, nR2, R3, R4, R5, nR6);
  and (ff0[11], nR0, R2, nR3, nR4, nR5, nR6, R7);
  and (ff0[12], nR0, nR1, nR2, nR3, nR4, nR5, R7);
  and (ff0[13], nR0, nR2, nR3, nR4, R6, R7);
  and (ff0[14], nR0, nR1, nR2, nR3, nR5, R6, R7);
  and (ff0[15], nR0, nR1, nR2, R3, nR4, nR6, R7);
  and (ff0[16], nR0, nR1, nR2, R3, R4, R6, R7);
  and (ff0[17], nR0, nR1, R2, nR3, nR4, nR6, R7);
  and (ff0[18], nR0, nR1, R2, nR3, nR5, nR6, R7);
  and (ff0[19], nR0, nR1, R2, nR3, R4, R6, R7);
  and (ff0[20], nR0, nR1, R2, R3, R4, nR6, R7);
  and (ff0[21], nR0, nR2, nR3, R4, R5, nR6, R7);
  and (ff0[22], nR0, nR2, R3, nR4, nR5, nR6, R7);
  and (ff0[23], nR0, nR2, nR4, R5, R6, R7);
  and (ff0[24], nR0, nR2, R3, R4, nR5, R6, R7);
 
 
 
  and (gf0[0], nR0, nR1, nR2, nR3, nR4, nR5, nR6);
  and (gf0[1], nR0, nR2, nR3, nR4, R5, R6, R7);
  and (gf0[2], nR0, nR1, nR2, nR3, R4, nR5, R6);
  and (gf0[3], nR0, nR1, nR2, R3, nR4, R5, nR6);
  and (gf0[4], nR0, nR1, nR2, R3, R4, R5, R6);
  and (gf0[5], nR0, nR1, R2, nR3, nR4, R5, nR6, R7);
  and (gf0[6], nR0, nR1, R2, nR3, R4, nR5, nR6);
  and (gf0[7], nR0, nR1, R2, nR3, R4, R5, R6, R7);
  and (gf0[8], nR0, nR1, R2, R3, nR4, nR5, R6);
  and (gf0[9], nR0, nR1, R2, R3, R4, R5, nR6);
  and (gf0[10], nR0, R1, nR2, nR3, nR4, R6, R7);
  and (gf0[11], nR0, R1, nR2, nR3, nR4, R5, R6);
  and (gf0[12], nR0, R1, nR2, nR3, R4, R5, nR6, R7);
  and (gf0[13], nR0, R1, nR2, R3, nR4, nR5, nR6);
  and (gf0[14], nR0, R1, nR2, nR4, R5, R6, R7);
  and (gf0[15], nR0, R1, nR2, R3, R4, nR5, R6);
  and (gf0[16], nR0, R1, R2, nR3, nR4, nR5, nR6, R7);
  and (gf0[17], nR0, nR1, nR2, nR4, nR5, nR6, R7);
  and (gf0[18], nR0, nR1, nR2, R4, nR5, R6, R7);
  and (gf0[19], nR0, nR1, R2, R4, nR5, nR6, R7);
  and (gf0[20], nR0, nR1, R2, R3, R4, nR6, R7);
 
 
  and (af1[0], nR0, nR1, nR3, R4, R6);
  and (af1[1], nR0, nR1, nR3, R4, R5);
  and (af1[2], nR0, nR1, nR2, R3, nR4, nR5);
  and (af1[3], nR0, nR1, R2, nR3, R4);
  and (af1[4], nR0, nR1, R3, nR4, nR5, nR6);
 
 
  and (bf1[0], nR0, nR1, R2, R3, R6);
  and (bf1[1], nR0, nR1, R2, R3, R5);
  and (bf1[2], nR0, nR1, R2, R3, R4);
  and (bf1[3], nR0, R1, nR2, nR3, nR4, nR5);
  and (bf1[4], nR0, R1, nR2, nR3, nR4, nR6);
 
 
  and (cf1[0], nR0, nR1, nR2, R3, nR4, R5);
  and (cf1[1], nR0, nR1, nR2, R3, R4, nR5);
  and (cf1[2], nR0, nR1, nR2, R3, R5, nR6);
 
 
  and (df1[0], nR0, nR1, nR2, R3, nR4, nR5);
  and (df1[1], nR0, nR1, R2, nR3, R4);
  and (df1[2], nR0, nR1, R3, nR4, nR5, nR6);
  and (df1[3], nR0, R1, nR2, nR3, R5, R6);
  and (df1[4], nR0, R1, nR2, nR3, R4);
  and (df1[5], nR0, nR1, nR3, R4, R6);
  and (df1[6], nR0, nR1, nR3, R4, R5);
 
 
  and (ef1[0], nR0, nR1, R3, nR4, nR5);
  and (ef1[1], nR0, nR2, R4, R5, R6);
  and (ef1[2], nR0, nR1, R2, nR4);
  and (ef1[3], nR0, nR1, R2, nR5);
  and (ef1[4], nR0, R1, nR2, nR3, R5, R6);
  and (ef1[5], nR0, R1, nR2, nR3, R4);
  and (ef1[6], nR0, R1, nR2, R4, R6);
  and (ef1[7], nR0, R1, nR2, R4, R5);
  and (ef1[8], nR0, R2, nR3, nR4, nR5);
  and (ef1[9], nR0, nR1, nR3, R4, R6);
  and (ef1[10], nR0, nR1, nR3, R4, R5);
 
 
  and (ff1[0], nR0, nR1, nR2, R3);
  and (ff1[1], nR0, nR1, R2, nR3, nR4);
  and (ff1[2], nR0, R1, nR2, nR3, R5, R6);
  and (ff1[3], nR0, R1, nR2, nR3, R4);
  and (ff1[4], nR0, R1, nR2, nR3, R4);
  and (ff1[5], nR0, nR1, nR2, R4, R5);
  and (ff1[6], nR0, nR1, nR2, nR3, R4, nR5, R6, nR7);
 
 
  and (gf1[0], nR1, nR2, nR3);
  and (gf1[1], nR1, nR2, nR4, nR5);
  and (gf1[2], R1, R2, R5);
  and (gf1[3], R1, R2, R3);
  and (gf1[4], nR2, nR3, R5, R6);
  and (gf1[5], R1, nR3, R4);
 
  or (g1, gf1[0], gf1[1], gf1[2], gf1[3], gf1[4], gf1[5], R0);
  or (f1, ff1[0], ff1[1], ff1[2], ff1[3], ff1[4], ff1[5], ff1[6]);
  or (e1, ef1[0], ef1[1], ef1[2], ef1[3], ef1[4], ef1[5], ef1[6], ef1[7], ef1[8], ef1[9], ef1[10]);
  or (d1, df1[0], df1[1], df1[2], df1[3], df1[4], df1[5], df1[6]);
  or (c1, cf1[0], cf1[1], cf1[2]);
  or (b1, bf1[0], bf1[1], bf1[2], bf1[3], bf1[4]);
  or (a1, af1[0], af1[1], af1[2], af1[3], af1[4]);
  or (g0, gf0[0], gf0[1], gf0[2], gf0[3], gf0[4], gf0[5], gf0[6], gf0[7], gf0[8], gf0[9], gf0[10], gf0[11], gf0[12], gf0[13], gf0[14], gf0[15], gf0[16], gf0[17], gf0[18], gf0[19], gf0[20]);
  or (f0, ff0[0], ff0[1], ff0[2], ff0[3], ff0[4], ff0[5], ff0[6], ff0[7], ff0[8], ff0[9], ff0[10], ff0[11], ff0[12], ff0[13], ff0[14], ff0[15], ff0[16], ff0[17], ff0[18], ff0[19], ff0[20], ff0[21], ff0[22], ff0[23], ff0[24]);
  or (e0, ef0[0], ef0[1], ef0[2], ef0[3], ef0[4], ef0[5], ef0[6], ef0[7], ef0[8], ef0[9], ef0[10], ef0[11], ef0[12]);
  or (d0, df0[0], df0[1], df0[2], df0[3], df0[4], df0[5], df0[6], df0[7], df0[8], df0[9], df0[10], df0[11], df0[12], df0[13], df0[14], df0[15], df0[16], df0[17], df0[18], df0[19], df0[20], df0[21], df0[22], df0[23], df0[24], df0[25], df0[26], df0[27], df0[28], R0);
  or (c0, cf0[0], cf0[1], cf0[2], cf0[3], cf0[4], cf0[5], cf0[6], cf0[7], cf0[8], cf0[9], cf0[10], cf0[11], cf0[12], R0);
  or (b0, bf0[0], bf0[1], bf0[2], bf0[3], bf0[4], bf0[5], bf0[6], bf0[7], bf0[8], bf0[9], bf0[10], bf0[11], bf0[12], bf0[13], bf0[14], bf0[15], bf0[16], bf0[17], bf0[18], bf0[19], bf0[20], bf0[21], bf0[22], R0);
  or (a0, af0[0], af0[1], af0[2], af0[3], af0[4], af0[5], af0[6], af0[7], af0[8], af0[9], af0[10], af0[11], af0[12], af0[13], af0[14], af0[15], af0[16], af0[17], af0[18], af0[19]);

endmodule