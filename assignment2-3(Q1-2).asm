;21011739 김준식
.model small
.stack
.data
.code
char db 41H; 
main proc
mov ax,@data ; @data에 있는 값을 ax에 저장
mov ds,ax    ; ds에 ax에 있는 값 저장

mov ah, 02h  ; ah에 02h 저장
loop:
    mov dl, char ; dl에 char 변수 저장
    int 21H      ; dl에 있는 문자 출력 
    inc char     ; char에 1을 더해 다음 알파벳 이용
    cmp char, 5AH; char가 'Z' 보다 작거나 같을 때
    jle loop     ; loop 반복
mov ah,4ch ;종료
int 21h
end main
end