;21011739 ±èÁØ½Ä
.MODEL SMALL
.STACK 
.DATA
Array3 DB 11, 12, 13, 21, 22, 23, 31, 32, 33 
RowSize EQU 3  ; define Symbol RowSIze = 3, it could not correct
.CODE
MOV AX, @DATA   
MOV DS, AX
; how to use 2- dimensional array
MOV BX, OFFSET Array3 ; 
MOV SI, 1*RowSize ; if use SI in index in Array3, it would be mean 2nd row
MOV DI, 2*RowSize ; if use DI in index in Array3, it would be mean 3nd row
MOV AL, [BX+SI+1] ; AL =Array3[1][1] = 22
MOV [BX+DI+2], AL ; Array3[2][2] = AL = 22 
MOV AX, 4C00H
INT 21H
END