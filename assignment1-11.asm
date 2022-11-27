;21011739 김준식
.model small ; small model로 프로그래밍
.stack 1024 ; 스택크기 1024 바이트
.data
.code
main PROC
MOV AH, 99  ; AH에 99 저장
MOV AL, 99   ; AH에 1 저장
CMP AH, AL ; AH ? AL 비교 연산
JG JMP_GREATER ; AH > AL일떄 JMP_GREATER로 이동
JNG JMP_NGREATER ; (= JLE), AH<=AL 일때 JMP_NGREATER로 이동
JMP_GREATER: ; JMP_GREATER 시작
MOV AH, 02h ; AH에 02h 저장
MOV DL, 3Eh ; '>' 출력
INT 21h
JMP JMP_EXIT ; JMP_EXIT로 이동
JMP_NGREATER: ; JMP_NGREATER 시작
MOV AH, 02h ; AH에 02h 저장
MOV DL, 60h ; '<' 출력
INT 21h
MOV DL, 3Dh ; '=' 출력
INT 21h
JMP JMP_EXIT ; 프로그램 종료
JMP_EXIT:
MOV AH, 4Ch   ; 종료
INT 21h
main ENDP
end main