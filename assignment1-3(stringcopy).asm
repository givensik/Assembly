;21011739 ���ؽ�
.MODEL SMALL
.STACK
.DATA
STRING1 DB "String Copy","$"
STRING2 DB ""
.CODE
MAIN PROC    FAR
MOV AX, @DATA ; ������ ������ AX�� ����
MOV DS, AX ;DS �������Ϳ� AX�� ����
MOV ES, AX ;ES �������Ϳ��� ES�� ����
MOV CX, 0CH          ; Initialize to move 0CH characters
LEA SI, STRING1     ; Initialize source index register to offset of string 1     
LEA DI, STRING2     ; Initialize destination index register to offset of string 2
BEGINLOOP:
MOV AL,[SI]          ; Get a current character from string 1 to AL
MOV [DI], AL         ; Move it to the current character in string 2
INC SI               ; Move to the next character in string 1
INC DI               ; Move to the next character in string 2
DEC CX               ; Decrease the count for loop
JNZ BEGINLOOP       ; Continue to loop if count is not 0
MOV AH, 09H  ; AH�� 09h ����
LEA DX, STRING2 ; DX�� STRING2�� �ּ� ����
int 21H             ; Display String 2
.EXIT
MAIN ENDP ;End of procedure
END MAIN ;End of program