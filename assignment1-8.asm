;21011739 김준식
.model small
.stack
.data
message DB "Hello, World!", 0 ;message라는 이름의 변수에 문자열 "Hello, Wolrd!"와 0을 삽입
.code
main proc far
mov ax, @data  ; ax에 @data를 저장
mov ds, ax     ; 데이터 세그먼트 레지스터에 ax의 값 저장
mov es, ax     ; es 레지스터에도 ax의 값 저장
mov si, offset message ; message라는 이름의 문자열 데이터가 @data에서 몇 바이트 떨어진 거리에 있는지를 가져옮.
dec si ; si의 값을 1 감소시켜 배열의 -1번째를 참조하도록 하고, main_loop를 반복할 때 배열의 0번째 부터 시작할 수 있도록 함
main_loop:
inc si ; si가 참조하는 배열의 원소를 1 증가
; 메모리에서 가져온 문자를 출력
mov ah, 02h    ; ah에 02h를 저장
mov dl, [si]   ; dl에 si가 참조하는 배열의 원소를 가져옴
int 21h        ; 출력
cmp dl, 0      ; dl과 0을 비교
jne main_loop  ; 비교 결과 0이 아니면 main_loop로 돌아감
mov ah, 4ch    ; 종료
int 21h
main endp
end main