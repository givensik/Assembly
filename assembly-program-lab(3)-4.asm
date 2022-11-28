;21011739 ±èÁØ½Ä
.MODEL SMALL
.STACK 
.DATA
Array3 DB 11, 12, 13, 21, 22, 23, 31, 32, 33 
RowSize EQU 3
.CODE
MOV AX, @DATA
MOV DS, AX
MOV AH, 01H 
INT 21H     ; int 01h : input character in ASCII Code
SUB AL, 30H ; as ascii '1' == 0x31
MOV CH, AL ; CH = AL(input - 0x30)
MOV AH, 01H ; AH = 01H
INT 21H     ; input again
SUB AL, 30H
MOV CL, AL ; CL = AL(input - 0x30)
MOV AL, 10000B ; 10000B = 10H
MUL CH ; As CH is 8bit, multiply AL with CH, and save result in AX
XOR AH, AH ; By using XOR operate, make AH 0000
OR AL, CL ; By using OR operate, AL + CL
MOV AX, 4C00H ; program exit
INT 21H
END