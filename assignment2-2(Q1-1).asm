;21011739 ���ؽ�
.model small
.stack
.data

.code
main proc
mov ax,@data ; @data�� �ִ� ���� ax�� ����
mov ds,ax    ; ds�� ax�� �ִ� �� ����

mov ah, 02h ; ah�� 02h ����
mov dl, 41h ; dl�� A(42H) ���� 
int 21h ; ���� ���

mov dl, 42h ; dl�� B(42H) ���� 
int 21h ; ���� ���

mov dl, 43h ; dl�� C(43H) ���� 
int 21h ; ���� ���

mov dl, 44h ; dl�� D(44H) ���� 
int 21h ; ���� ���

mov dl, 45h ; dl�� E(45H) ���� 
int 21h ; ���� ���

mov dl, 46h ; dl�� F(46H) ���� 
int 21h ; ���� ���

mov dl, 47h ; dl�� G(47H) ���� 
int 21h ; ���� ���

mov dl, 48h ; dl�� H(48H) ���� 
int 21h ; ���� ���

mov dl, 49h ; dl�� I(49H) ���� 
int 21h ; ���� ���

mov dl, 4Ah ; dl�� J(4AH) ���� 
int 21h ; ���� ���

mov dl, 4Bh ; dl�� K(4BH) ���� 
int 21h ; ���� ���

mov dl, 4Ch ; dl�� L(4CH) ���� 
int 21h ; ���� ���

mov dl, 4Dh ; dl�� M(4DH) ���� 
int 21h ; ���� ���

mov dl, 4Eh ; dl�� N(4EH) ���� 
int 21h ; ���� ���
            
mov dl, 4Fh ; dl�� O(4FH) ���� 
int 21h ; ���� ��� 
            
mov dl, 50h ; dl�� P(50H) ���� 
int 21h ; ���� ���

mov dl, 51h ; dl�� Q(51H) ���� 
int 21h ; ���� ���

mov dl, 52h ; dl�� R(52H) ���� 
int 21h ; ���� ���

mov dl, 53h ; dl�� S(53H) ���� 
int 21h ; ���� ���

mov dl, 54h ; dl�� T(54H) ���� 
int 21h ; ���� ���

mov dl, 55h ; dl�� U(55H) ���� 
int 21h ; ���� ���

mov dl, 56h ; dl�� V(56H) ���� 
int 21h ; ���� ���

mov dl, 57h ; dl�� W(57H) ���� 
int 21h ; ���� ���

mov dl, 58h ; dl�� X(58H) ���� 
int 21h ; ���� ���

mov dl, 59h ; dl�� Y(59H) ���� 
int 21h ; ���� ���

mov dl, 5Ah ; dl�� Z(5AH) ���� 
int 21h ; ���� ���

mov ah,4ch ;����
int 21h
end main
end