; 21011739 김준식
.model small 
.stack ; 스택 영역
.data ; 데이터 영역
kim db "KIM",0Ah,"JUN",0Ah,"SIK",0Ah,'$' ; 이름 저장 (LF와 함께)
.code ; 코드 영역
main proc ; 프로시저 시작 (main)
    mov ax,@data            ; 데이터 영역의 주소를 ax에 저장
    mov ds,ax               ; ds 레지스터에 ax에 저장된 값 저장
    LEA si, kim             ; kim 문자열의 첫 주소 담기
    mov ah, 02h             ; ah에 09h 저장
    mov dx, [si]            ; dx에 kim의 주소 저장
loop:
    int 21h                 ; 문자열 출력
    inc si                  ; si 1 증가
    mov dx, [si]            ; dx에 name1의 주소 저장
    cmp dx, '$'             ; NULL 문자인지 비교
    jne loop                ; NULL 문자 아니면 반복 

mov ah,4Ch ; ah에 4Ch 저장
int 21h ; 종료
end main ; 프로시저 종료
end ; 프로그램 종료