;21011739 ���ؽ�
.model small ;SMALL �𵨷� ���α׷���
.stack 1024 ; SMALL �𵨿� ���� ���׸�Ʈ 1024 ����Ʈ ����
.data
.code   ;�ڵ� ����
main PROC ;
MOV AH, 02h ; AH�� 02h ����
MOV DL, 48h ; 'H' (0x48)
INT 21h     ; AH�� 02h�� ��� DL�� �ش��ϴ� �ƽ�Ű�ڵ� ���ڸ� ����Ѵ�.
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
MOV AH, 4Ch ; AH�� 4Ch ����
INT 21h     ; AH�� 4Ch �̹Ƿ� ����
main ENDP
END main