;21011739 김준식
.model small ;SMALL 모델로 프로그래밍
.stack 1024 ; SMALL 모델에 스택 세그먼트 1024 바이트 지정
.data
.code   ;코드 영역
main PROC ;
MOV AH, 02h ; AH에 02h 저장
MOV DL, 48h ; 'H' (0x48)
INT 21h     ; AH가 02h인 경우 DL에 해당하는 아스키코드 문자를 출력한다.
MOV DL, 65h ; 'e' (0x65)
INT 21h
MOV DL, 6Ch ; 'l' (0x6C)
INT 21h  
MOV DL, 6Ch
INT 21h
MOV DL, 6Fh ; 'o' (0x6F)
INT 21h
MOV DL, 2Ch ; ',' (0x2C)
INT 21h
MOV DL, 20h ; ' ' (0x20)
INT 21h
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
MOV AH, 4Ch ; AH에 4Ch 저장
INT 21h     ; AH가 4Ch 이므로 종료
main ENDP
END main