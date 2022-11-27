;21011739 김준식
.model small
.stack 64 ; 스택의 크기 64바이트
.data ; 데이터 영역
message DB "Hello, World!", 0 ;message라는 변수에 문자열 "Hello, World!"와 0(널문자)를 삽입
.code ; 코드 영역
main proc far
mov ax, @data ; ax를 거쳐서 데이터영역이 시작되는 메모리 주소를 DS와 ES 레지스터에 저장
mov ds, ax
mov es, ax
mov cx, 0     ; cx에 0 저장
main_loop:
mov ax, offset message ; message라는 이름의 문자열 데이터가 @data에서 몇 바이트 떨어진 거리에 있는지를 가져옮.
mov si, ax ; 메모리 참조를 위한 si 레지스터에 message의 시작 위치 넣고 (c언어의 message)
add si, cx ; 그 위치에서 몇 번째 문자인지를 덧셈으로 추가 (c언어의 message[cx]에 해당)
add cx, 1 ; cx의 값을 1 증가 cx++
; 위 세 줄을 정리하면 message[cx++];에 해당
; 메모리에서 가져온 문자를 출력
mov ah, 02h  ; ah에 02h 저장
mov dl, [si] ; si에 위치하는 문자를 dl에 저장
int 21h      ; ah가 02h 이므로 dl에 저장된 값 출력
cmp dl, 0 ; NULL 문자인지 비교
jne main_loop ; NULL 문자 아니면 반복
mov ah, 4ch   ; ah에 4ch 저장
int 21h       ; ah에 4ch가 저장 되었으므로 종료
main endp
end main