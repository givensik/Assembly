;21011739 김준식
;option casemap: none ; 대/소문자를 구분하지 않음
.model small
.stack 1024 ; 스택의 크기: 1024 byte
.data
.code
main PROC
MOV AH, 99
MOV AL, 99
CMP AH, AL ; AH ? AL 연산
JZ JMP_EQUALS ; ZF Flag=1이 되면 JMP_EQUALS 위치로 점프
JNZ JMP_NEQUALS ; ZF Flag= 0이 되면 JMP_NEQUALS 위치로 점프
JMP_EQUALS: ; AH와 AL이 같을 때
MOV AH, 02h
MOV DL, 3Dh ; '='
INT 21h
INT 21h     ; '==' 출력
JMP JMP_EXIT
JMP_NEQUALS:; AH와 AL이 같지 않을 때
MOV AH, 02h
MOV DL, 21h ;  '!'
INT 21h
MOV DL, 3Dh ; '='
INT 21h     ; '!=' 출력
JMP JMP_EXIT
JMP_EXIT:
MOV AH, 4Ch
INT 21h
main ENDP
end main