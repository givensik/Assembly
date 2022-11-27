;21011739 김준식
.MODEL SMALL
.STACK
.DATA
STRING1 DB "String Copy","$"
STRING2 DB ""
.CODE
MAIN PROC    FAR
MOV AX, @DATA ; 데이터 영역을 AX에 저장
MOV DS, AX ;DS 레지스터에 AX를 저장
MOV ES, AX ;ES 레지스터에도 ES를 저장
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
MOV AH, 09H  ; AH에 09h 저장
LEA DX, STRING2 ; DX에 STRING2의 주소 저장
int 21H             ; Display String 2
.EXIT
MAIN ENDP ;End of procedure
END MAIN ;End of program