;21011739 ���ؽ�
.MODEL SMALL ;SMALL �𵨷� ���α׷���
.STACK
.DATA ; ������ ���� ������ ����
MESSAGE DB "HELLO EVERYBODY! I AM LEARNING ASSEMBLY LANGUAGE!","$" 
;ù��° ���ڿ��� MESSAGE��� ������ ����, $(������ ���� �ǹ�)�� �߰�
.CODE ;�ڵ� ���׸�Ʈ
MAIN PROC
MOV AX, @DATA ;@data(������ ���׸�Ʈ)�� ���� AX�� ����
MOV DS,AX ;DS �������Ϳ� @data �ּ� ����
MOV AH,09 ;AH�� 09H�� ����
LEA DX,MESSAGE ;DX �������Ϳ� MESSAGE�� �ּҸ� ����
INT 21H ; AH�� 09H�� ���� �Ǿ������Ƿ� ���ڿ��� ���
MOV AX,4C00H ; AX�� 4C00H�� �־ AH�� 4CH�� ����
INT 21H ; AX�� 4CH���� ����Ǿ� �ְ�, AL�� ���� 00 �̹Ƿ� ���������� ó�� ���� 
MAIN ENDP ; END OF PROCEDURE
END MAIN