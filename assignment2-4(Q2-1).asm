;21011739 김준식
.model small
.stack
.data
msg db 1 dup('*'),0Ah,0Dh   ; msg라는 변수에 '*' 1 개와 새줄 문자 입력
db 2 dup('*'),0Ah,0Dh       ; msg라는 변수에 '*' 2 개와 새줄 문자 입력
db 3 dup('*'),0Ah,0Dh       ; msg라는 변수에 '*' 3 개와 새줄 문자 입력
db 4 dup('*'),0Ah,0Dh       ; msg라는 변수에 '*' 4 개와 새줄 문자 입력
db 5 dup('*'),0Ah,0Dh, "$"  ; msg라는 변수에 '*' 5 개와 새줄 문자 입력
.code
main proc
mov ax,@data                ; 데이터 영역의 주소를 ax에 저장
mov ds,ax                   ; ds 레지스터에 ax에 저장된 값 저장
mov ah,09h                  ; ah에 09H 저장
mov dx,offset msg           ; offset을 이용해 msg의 주소 불러오기
int 21h                     ; 출력
mov ah,4Ch                  ; 종료
int 21h
end main
end