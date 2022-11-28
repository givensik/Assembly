;21011739 ±èÁØ½Ä
.MODEL SMALL
.STACK 32
.DATA
Array1 DB 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
Array2 DB 10 DUP(0)
.CODE
MOV AX, @DATA
MOV DS, AX
; Based addressing mode = BX(16byte)
MOV BX, OFFSET Array1 ; by using OFFSET, save Array1's address in BX
MOV AL, [BX+4] ; save Array1[4] in AL(4), BX+4 == Array's address + 4
; Indexed addressing mode = DI(8byte)
MOV DI, OFFSET Array2 ; save Array2's address in DI 
MOV [DI+6], AL ; Array2[6] = 4
MOV SI, 3 ; SI = 3
MOV Array2[SI], AL ; Array2[3] = 4 
MOV AX, 4C00H
INT 21H
END