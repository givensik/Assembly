;21011739 김준식
.model small
.stack
.data ; 데이터 영역
msg db 5 dup('*'), '$' ; dup함수안에 들어있는 값을 dup앞에 있는 숫자만큼 복사
.code ; 코드 영역
main proc
mov ax,@data           ; @data를 ax에 저장
mov ds,ax              ; ds레지스터에 ax의 값 저장
mov ah,09h             ; ah에 09H를 넣어서 출력
mov dx,offset msg      ; dx에 전역변수인 msg의 주소를 저장
int 21h                
mov ah,4Ch             ; 프로그램 종료
int 21h
end main
end