;21011739 ���ؽ�
.model small ; small model�� ���α׷���
.stack 1024 ; ����ũ�� 1024 ����Ʈ
.data
.code
main PROC
MOV AH, 99  ; AH�� 99 ����
MOV AL, 99   ; AH�� 1 ����
CMP AH, AL ; AH ? AL �� ����
JG JMP_GREATER ; AH > AL�ϋ� JMP_GREATER�� �̵�
JNG JMP_NGREATER ; (= JLE), AH<=AL �϶� JMP_NGREATER�� �̵�
JMP_GREATER: ; JMP_GREATER ����
MOV AH, 02h ; AH�� 02h ����
MOV DL, 3Eh ; '>' ���
INT 21h
JMP JMP_EXIT ; JMP_EXIT�� �̵�
JMP_NGREATER: ; JMP_NGREATER ����
MOV AH, 02h ; AH�� 02h ����
MOV DL, 60h ; '<' ���
INT 21h
MOV DL, 3Dh ; '=' ���
INT 21h
JMP JMP_EXIT ; ���α׷� ����
JMP_EXIT:
MOV AH, 4Ch   ; ����
INT 21h
main ENDP
end main