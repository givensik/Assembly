;21011739 ���ؽ�
; Add two numbers and store the results into the third variable
TITLE A04ASM1 (EXE)  Move and add operations
.MODEL SMALL
;-----------------------------------------------
.STACK
;-----------------------------------------------
.DATA
FLDD DW 215  ;215�� ������ FLDD�� WORD ũ��� ����
FLDE DW 125  ;125�� ������ FLDE�� WORD ũ��� ����
FLDF DW ?    ;FLDF��� �̸����� WORD ũ��� ���� ����
;-----------------------------------------------
.CODE
MAIN PROC
MOV     AX,@DATA ;Set address of data
MOV     DS,AX ;  segment in DS
MOV    AX,FLDD ;Move 0215 to AX
ADD     AX,FLDE ;Add  0125 to AX
MOV    FLDF,AX ;Store sum in FLDF
MOV   AX,4C00H ;End processing
INT   21H  ; AH�� 4C�� ����Ǿ� �ְ� AL�� 00�� ����Ǿ� �����Ƿ� ���α׷� ��������
MAIN ENDP ;End of procedure
END MAIN ;End of program