;21011739 ���ؽ�
.MODEL SMALL
.STACK
.DATA 
     SUM  DW  ?   ;SUM�̶�� ���������� WORD ������ ������ �����Ѵ�.
.CODE
MAIN   PROC
MOV     CX, 1   ; CX�� 1 ����
MOV     AX, 0   ; AX�� 0 ����
LOOP1:  ADD     AX, CX   ; LOOP1 : AX�� CX�� �� ���ϱ�
INC     CX               ; CX�� 1 ���ϱ�
CMP     CX, 100          ; CX�� 100 ��
JBE     LOOP1 ; CX <= 100 �� ��, LOOP1���� �̵�
MOV     SUM, AX  ; AX�� ����� ���� SUM�� ����
MOV     AH, 4CH  ; AH�� 4C�� ����
INT     21H      ; AH�� 4C�� ����Ǿ������Ƿ� ����

MAIN  ENDP
END