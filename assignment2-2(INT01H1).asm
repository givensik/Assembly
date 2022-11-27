;21011739 김준식
.model small
.stack
.data  ; 데이터 영역
msg1 db "Enter the char.: ",'$' ;msg1에 문자열 삽입
msg2 db 0ah,0dh,"The char. you entered is: ",'$'  ;msg2에 문자열 삽입
.code  ; 코드 영역
main proc
mov ax,@data ; ax에 @data 값 넣기
mov ds,ax    ; ds 레지스터에 ax값 넣기
mov ah, 09h  ; ah에 09H를 넣어 문자열 출력
mov dx,offset msg1 ;msg1 출력
int 21h
mov ah, 01h  ; ah가 01H이면 문자 하나 입력을 기다리고, 입력된 문자는 아스키 코드로 변경되어 AL에 저장된다.
int 21h                
mov bl, al   ; bl에 al의 값 저장
mov ah,09h   ; msg2 출력
mov dx,offset msg2
int 21h
mov ah,02h   ; ah에 02H 저장, DL에 있는 아스키 코드 문자를 출력한다. 
mov dl,bl    ; bl에 있는 값을 dl에 저장
int 21h      ; 출력
mov ah,4ch   ; 종료
int 21h
end main
end