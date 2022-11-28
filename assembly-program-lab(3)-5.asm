;21011739 ±èÁØ½Ä
.MODEL SMALL
.STACK 
.DATA
Array3 DB 11, 12, 13, 21, 22, 23, 31, 32, 33 
RowSize EQU 3
.CODE
MOV AX, @DATA
MOV DS, AX
MOV AH, 01H ; input char in ascii num
INT 21H
SUB AL, 30H
MOV CH, AL  ; CH = AL(first input)
MOV AH, 01H
INT 21H     ; input again
SUB AL, 30H  
MOV CL, AL  ; CL = AL(second input)
MOV AL, 10000B ; AL = 010h
MUL CH ; AX = CH(first input) * AL(010h)
XOR AH, AH ; Clear AH
OR AL, CL ; Result in AL == "${fisrt input}${second input}"

; Considering number is in the CL register:
MOV AL, CL ; Move CL to AL
MOV AH, 000 ; Clear AH
MOV BL, 10000B ; for divide AL by 16(01h)
DIV BL ; divide AL by BL, AL = quotient, AH = remainder 
ADD AL, 30H ; AL + 30H ; make AL in ascci code, and AL is the most significant digit in first input

MOV AL, CL ; AL = CL(first input)
AND AL, 0FH ; by using AND Operation with (00001111), only remain 4bits
ADD AL, 30H ; AL + 30H , make AL in ascci code, then AL is the least significant digit in first input
MOV AX, 4C00H
INT 21H
END                                    