;21011739 ���ؽ�
.model small
.stack
.data
msg db 1 dup('*'),0Ah,0Dh  ; 0Ah= LF(Line Feed), 0Dh = CR(Carriage Return)
db 2 dup('*'),0Ah,0Dh, '$'
.code
main proc
mov ax,@data               ; ax�� @data(������ ����)�� ���� �ִ´�.
mov ds,ax                  ; ds �������Ϳ� ax�� ���� �ִ´�.
mov ah,09h                 ; ah�� 09H�� �־ ���� ���
mov dx,offset msg          ; offset���� ���� ������ msg�� �ּҸ� ����
int 21h                    ; ���
mov ah,4Ch                 ; ����
int 21h
end main
end