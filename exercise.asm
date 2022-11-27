;21011739 김준식
.model small ;
.stack 1024
.data
.code
main PROC ;
MOV AH, 02h ;
MOV DL, 48h ; 'H' (0x48)
INT 21h
MOV DL, 65h ; 'e' (0x65)
INT 21h
MOV DL, 6Ch ; 'l' (0x6C)
INT 21h  
MOV DL, 6Ch
INT 21h 
JMP next ; for "HellWorld" 출력
MOV DL, 6Fh ; 'o' (0x6F)
INT 21h
MOV DL, 2Ch ; ',' (0x2C)
INT 21h
MOV DL, 20h ; ' ' (0x20)
INT 21h
next:
MOV DL, 57h ; 'W' (0x57)
INT 21h 
MOV DL, 6Fh ; 'o' (0x6F)
INT 21h
MOV DL, 72h ; 'r' (0x72)
INT 21h
MOV DL, 6Ch ; 'l' (0x6C)
INT 21h
MOV DL, 64h ; 'd' (0x64)
INT 21h
MOV DL, 21h ; '!' (0x21)
INT 21h
MOV AH, 4Ch
INT 21h
main ENDP
END main