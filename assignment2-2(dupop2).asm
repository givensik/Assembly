;21011739 김준식
.model small
.stack
.data
msg db 1 dup('*'),0Ah,0Dh  ; 0Ah= LF(Line Feed), 0Dh = CR(Carriage Return)
db 2 dup('*'),0Ah,0Dh, '$'
.code
main proc
mov ax,@data               ; ax에 @data(데이터 영역)의 값을 넣는다.
mov ds,ax                  ; ds 레지스터에 ax의 값을 넣는다.
mov ah,09h                 ; ah에 09H를 넣어서 문자 출력
mov dx,offset msg          ; offset으로 전역 변수인 msg의 주소를 저장
int 21h                    ; 출력
mov ah,4Ch                 ; 종료
int 21h
end main
end