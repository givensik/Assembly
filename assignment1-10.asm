;21011739 ���ؽ�
;option casemap: none ; ��/�ҹ��ڸ� �������� ����
.model small
.stack 1024 ; ������ ũ��: 1024 byte
.data
.code
main PROC
MOV AH, 99
MOV AL, 99
CMP AH, AL ; AH ? AL ����
JZ JMP_EQUALS ; ZF Flag=1�� �Ǹ� JMP_EQUALS ��ġ�� ����
JNZ JMP_NEQUALS ; ZF Flag= 0�� �Ǹ� JMP_NEQUALS ��ġ�� ����
JMP_EQUALS: ; AH�� AL�� ���� ��
MOV AH, 02h
MOV DL, 3Dh ; '='
INT 21h
INT 21h     ; '==' ���
JMP JMP_EXIT
JMP_NEQUALS:; AH�� AL�� ���� ���� ��
MOV AH, 02h
MOV DL, 21h ;  '!'
INT 21h
MOV DL, 3Dh ; '='
INT 21h     ; '!=' ���
JMP JMP_EXIT
JMP_EXIT:
MOV AH, 4Ch
INT 21h
main ENDP
end main