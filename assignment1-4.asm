;21011739 ���ؽ�
.MODEL SMALL ;SMALL �𵨷� ���α׷���
.STACK
.DATA
.CODE ;�ڵ� ���� ����
MAIN  PROC
MOV  DL,  'A' ; DL�� 'A' ����
MOV  AH,  2   ; AH�� 2 ����
INT  21H      ; AH�� 2�̹Ƿ� ���� DL�� �ִ� �ƽ�Ű ���ڿ� �ش��ϴ� �� ���
MOV  AH,  4CH ; AH�� 4CH ����
INT  21H      ; AH�� 4C�̹Ƿ� ����
MAIN  ENDP
END