.MODEL SMALL 
.STACK 32
.DATA
NUM DB 20, 4, 32, 50, 7, 15, 80, 12, 6, 125 ; declare array in name NUM
.CODE
MOV AX, @DATA  ; save @data's address in AX register
MOV DS, AX     ; save AX's data in DS register
MOV BH, NUM[0] ; save data index 0 of NUM to BH (20)
MOV AL, NUM[3] ; save data index 3 of NUM to AL (50)
MOV BX, 5      ; save 5 to BX(0x0000 0005) BH = 0000
MOV AH, NUM[BX] ; AH = 0x000F
MOV SI, 7       ; SI = 0x0007 
MOV CL, NUM[SI + 2] ; CL = NUM[9] = 125
MOV DL, NUM[BX - 3] ; DL = NUM[2] = 32 
MOV BX, 2           ; BX = 0x0000 0002
MOV AL, NUM[SI + BX] ; AL = NUM[7+2]
MOV AX, 4C00H
INT 21H
END