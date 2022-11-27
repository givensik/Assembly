;21011739 김준식
; Add two numbers and store the results into the third variable
TITLE A04ASM1 (EXE)  Move and add operations
.MODEL SMALL
;-----------------------------------------------
.STACK
;-----------------------------------------------
.DATA
FLDD DW 215  ;215를 변수명 FLDD에 WORD 크기로 삽입
FLDE DW 125  ;125를 변수명 FLDE에 WORD 크기로 삽입
FLDF DW ?    ;FLDF라는 이름으로 WORD 크기로 변수 선언
;-----------------------------------------------
.CODE
MAIN PROC
MOV     AX,@DATA ;Set address of data
MOV     DS,AX ;  segment in DS
MOV    AX,FLDD ;Move 0215 to AX
ADD     AX,FLDE ;Add  0125 to AX
MOV    FLDF,AX ;Store sum in FLDF
MOV   AX,4C00H ;End processing
INT   21H  ; AH에 4C가 저장되어 있고 AL에 00이 저장되어 있으므로 프로그램 정상종료
MAIN ENDP ;End of procedure
END MAIN ;End of program