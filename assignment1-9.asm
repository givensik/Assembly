;21011739 김준식
.model small
.stack
.data
message DB "Hello, World! $"  ; message라는 이름의 변수에 "Hello, World! $" 저장
.code
main proc far
mov ax, @data          ; @data의 값을 ax에 저장하여, DS,ES에 각각 저장
mov ds, ax
mov es, ax
main_loop:
mov ah, 09h            ; ah에 09h 저장
mov dx, offset message ; 문자열의 위치를 주면 알아서 문자열 출력
int 21h                ; ah에 09h가 저장 되어있으므로 dx에 저장된 문자열 출력
mov ah, 4ch            ; 종료 ax
int 21h
main endp
end main