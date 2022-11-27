; 21011724 김준식
.model small 
.stack ; 스택 영역
.data ; 데이터 영역
msg db 0Ah,0Dh,'$' ; msg에 개행문자를 저장해서 그냥 하나의 문자열을 저장
cnt1 dw 0 ; cnt1에 1 넣기 세로 줄 숫자
cnt2 dw 0 ; cnt2에 0 넣기 가로 줄 숫자
.code ; 코드 영역

main proc 
    mov ax,@data ; 데이터 영역의 주소를 ax에 저장
    mov ds,ax ; ds 레지스터에 ax에 저장된 값 저장
loop1:
    mov cnt2, 0 ; cnt2에 0 저장
    mov dl, 2Ah ; dl에 2Ah 저장
    mov cx, cnt1 ; cx에 cnt1 저장
    mov ah, 02h ; ah에 02h 저장
loop2:
    int 21h         ; * 출력
    inc cnt2        ; cnt2 값 1 증가
    cmp cnt2, cx    ; cnt2와 cx 비교
    jle loop2       ; 작거나 같으면 loop2로 돌아가기
mov ah,09h          ; ah에 09h 저장
mov dx,offset msg   ; dx에 msg의 주소 저장(\n\r 출력을 위해서)
int 21h             ; 문자열 출력 (엔터 출력)
mov cx, 04h         ; cx에 05h 저장
inc cnt1            ; cnt1 값 1 증가
cmp cnt1, cx        ; cnt1과 cx 비교
jle loop1           ; 작거나 같으면 main_loop1으로 돌아가기
mov ah,4Ch          ; ah에 4Ch 저장
int 21h             ; 종료
end main            ; 프로시저 종료
end                 ; 프로그램 종료
