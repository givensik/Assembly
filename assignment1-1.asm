;21011739 김준식
.MODEL SMALL ;SMALL 모델로 프로그래밍
.STACK
.DATA ; 데이터 영역 변수를 선언
MESSAGE DB "HELLO EVERYBODY! I AM LEARNING ASSEMBLY LANGUAGE!","$" 
;첫번째 문자열을 MESSAGE라는 변수에 저장, $(변수의 끝을 의미)도 추가
.CODE ;코드 세그먼트
MAIN PROC
MOV AX, @DATA ;@data(데이터 세그먼트)의 값을 AX에 저장
MOV DS,AX ;DS 레지스터에 @data 주소 삽입
MOV AH,09 ;AH에 09H값 저장
LEA DX,MESSAGE ;DX 레지스터에 MESSAGE의 주소를 저장
INT 21H ; AH에 09H가 저장 되어있으므로 문자열을 출력
MOV AX,4C00H ; AX에 4C00H를 넣어서 AH에 4CH값 저장
INT 21H ; AX에 4CH값이 저장되어 있고, AL의 값이 00 이므로 정상적으로 처리 종료 
MAIN ENDP ; END OF PROCEDURE
END MAIN