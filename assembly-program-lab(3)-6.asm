;21011739 ±èÁØ½Ä
.MODEL SMALL
.STACK 
.DATA
.CODE
MOV AX, @DATA
MOV DS, AX
CALL READC ; call READC
MOV BL, AL ; save first input in BL
CALL READC ; call READC
XOR AH, AH ; clear AH
MOV CL, 4  ; save 4 in CL
SHL BL, CL ; Shift left in BL  
OR BL, AL ; AL = BL + AL

DAA ; make AL's format BCD, and Pack decimal
; Number in AL register. See next how to display it as decimal number.
MOV AX, 4C00H
INT 21H
READC PROC NEAR
MOV AH, 01H
INT 21H
SUB AL, 30H
RET
READC ENDP
END