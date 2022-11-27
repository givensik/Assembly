;21011739 김준식
.MODEL SMALL
.STACK
.DATA 
     SUM  DW  ?   ;SUM이라는 변수명으로 WORD 단위의 변수를 선언한다.
.CODE
MAIN   PROC
MOV     CX, 1   ; CX에 1 저장
MOV     AX, 0   ; AX에 0 저장
LOOP1:  ADD     AX, CX   ; LOOP1 : AX에 CX의 값 더하기
INC     CX               ; CX에 1 더하기
CMP     CX, 100          ; CX와 100 비교
JBE     LOOP1 ; CX <= 100 일 때, LOOP1으로 이동
MOV     SUM, AX  ; AX에 저장된 값을 SUM에 저장
MOV     AH, 4CH  ; AH에 4C를 저장
INT     21H      ; AH에 4C가 저장되어있으므로 종료

MAIN  ENDP
END