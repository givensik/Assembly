; 21011724 김준식
.model small 
.stack ; 스택 영역
.data ; 데이터 영역
kim db "KIM",0ah, "JUN",0ah, "SIK",0ah,"$" ;LINE FEED를 이용하여 한 줄만큼의 공백을 채워서 다음줄로 옮긴다.
.code ; 코드 영역

main proc 
    mov ax,@data            ; 데이터 영역의 주소를 ax에 저장
    mov ds,ax               ; ds 레지스터에 ax에 저장된 값 저장 
    
    mov ah, 09H             ; ah에 09h 저장
    mov dl, offset kim      ; 데이터 영역에 있는 변수 Kim의 offset 주소를 가져와 dl에 넣는다.
    int 21H                 ; 문자열 출력
    mov ah, 4CH
    int 21H

end main
end