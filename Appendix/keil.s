26: int tailCall(int i, int j = 0) {
27: if (i == 0) {
28: return j;
29: }
0x08001A18 B110 CBZ       r0,0x08001A20
30: return tailCall(i - 1, i + j); 
0x08001A1A 4401 ADD       r1,r1,r0
0x08001A1C 1E40 SUBS      r0,r0,#1
0x08001A1E E7FB B         tailCall (0x08001A18)
28: return j; 
29: } 
30: return tailCall(i - 1, i + j); 
0x08001A20 4608 MOV       r0,r1
31: } 
32: 
0x08001A22 4770 BX        lr
33: int nonTailCall(int i) { 
34: if (i == 0) { 
35: return 0; 
36: } 
37: 
0x08001A24 B510 PUSH      {r4,lr}
0x08001A26 0004 MOVS      r4,r0
0x08001A28 D004 BEQ       0x08001A34
38: return nonTailCall(i - 1) + i; 
0x08001A2A 1E60 SUBS      r0,r4,#1
0x08001A2C F7FFFFFA BL.W  nonTailCall (0x08001A24)
0x08001A30 4420 ADD       r0,r0,r4
39: } 
40: 
