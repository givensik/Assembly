;21011739 ���ؽ�
.model small
.stack
.data
msg db 1 dup('*'),0Ah,0Dh   ; msg��� ������ '*' 1 ���� ���� ���� �Է�
db 2 dup('*'),0Ah,0Dh       ; msg��� ������ '*' 2 ���� ���� ���� �Է�
db 3 dup('*'),0Ah,0Dh       ; msg��� ������ '*' 3 ���� ���� ���� �Է�
db 4 dup('*'),0Ah,0Dh       ; msg��� ������ '*' 4 ���� ���� ���� �Է�
db 5 dup('*'),0Ah,0Dh, "$"  ; msg��� ������ '*' 5 ���� ���� ���� �Է�
.code
main proc
mov ax,@data                ; ������ ������ �ּҸ� ax�� ����
mov ds,ax                   ; ds �������Ϳ� ax�� ����� �� ����
mov ah,09h                  ; ah�� 09H ����
mov dx,offset msg           ; offset�� �̿��� msg�� �ּ� �ҷ�����
int 21h                     ; ���
mov ah,4Ch                  ; ����
int 21h
end main
end