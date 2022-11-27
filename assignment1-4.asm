;21011739 김준식
.MODEL SMALL ;SMALL 모델로 프로그래밍
.STACK
.DATA
.CODE ;코드 영역 시작
MAIN  PROC
MOV  DL,  'A' ; DL에 'A' 저장
MOV  AH,  2   ; AH에 2 저장
INT  21H      ; AH가 2이므로 현재 DL에 있는 아스키 문자에 해당하는 값 출력
MOV  AH,  4CH ; AH에 4CH 저장
INT  21H      ; AH가 4C이므로 종료
MAIN  ENDP
END