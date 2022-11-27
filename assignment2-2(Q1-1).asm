;21011739 김준식
.model small
.stack
.data

.code
main proc
mov ax,@data ; @data에 있는 값을 ax에 저장
mov ds,ax    ; ds에 ax에 있는 값 저장

mov ah, 02h ; ah에 02h 저장
mov dl, 41h ; dl에 A(42H) 저장 
int 21h ; 문자 출력

mov dl, 42h ; dl에 B(42H) 저장 
int 21h ; 문자 출력

mov dl, 43h ; dl에 C(43H) 저장 
int 21h ; 문자 출력

mov dl, 44h ; dl에 D(44H) 저장 
int 21h ; 문자 출력

mov dl, 45h ; dl에 E(45H) 저장 
int 21h ; 문자 출력

mov dl, 46h ; dl에 F(46H) 저장 
int 21h ; 문자 출력

mov dl, 47h ; dl에 G(47H) 저장 
int 21h ; 문자 출력

mov dl, 48h ; dl에 H(48H) 저장 
int 21h ; 문자 출력

mov dl, 49h ; dl에 I(49H) 저장 
int 21h ; 문자 출력

mov dl, 4Ah ; dl에 J(4AH) 저장 
int 21h ; 문자 출력

mov dl, 4Bh ; dl에 K(4BH) 저장 
int 21h ; 문자 출력

mov dl, 4Ch ; dl에 L(4CH) 저장 
int 21h ; 문자 출력

mov dl, 4Dh ; dl에 M(4DH) 저장 
int 21h ; 문자 출력

mov dl, 4Eh ; dl에 N(4EH) 저장 
int 21h ; 문자 출력
            
mov dl, 4Fh ; dl에 O(4FH) 저장 
int 21h ; 문자 출력 
            
mov dl, 50h ; dl에 P(50H) 저장 
int 21h ; 문자 출력

mov dl, 51h ; dl에 Q(51H) 저장 
int 21h ; 문자 출력

mov dl, 52h ; dl에 R(52H) 저장 
int 21h ; 문자 출력

mov dl, 53h ; dl에 S(53H) 저장 
int 21h ; 문자 출력

mov dl, 54h ; dl에 T(54H) 저장 
int 21h ; 문자 출력

mov dl, 55h ; dl에 U(55H) 저장 
int 21h ; 문자 출력

mov dl, 56h ; dl에 V(56H) 저장 
int 21h ; 문자 출력

mov dl, 57h ; dl에 W(57H) 저장 
int 21h ; 문자 출력

mov dl, 58h ; dl에 X(58H) 저장 
int 21h ; 문자 출력

mov dl, 59h ; dl에 Y(59H) 저장 
int 21h ; 문자 출력

mov dl, 5Ah ; dl에 Z(5AH) 저장 
int 21h ; 문자 출력

mov ah,4ch ;종료
int 21h
end main
end