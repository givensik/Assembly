;21011739 ���ؽ�
.model small
.stack
.data
message DB "Hello, World! $"  ; message��� �̸��� ������ "Hello, World! $" ����
.code
main proc far
mov ax, @data          ; @data�� ���� ax�� �����Ͽ�, DS,ES�� ���� ����
mov ds, ax
mov es, ax
main_loop:
mov ah, 09h            ; ah�� 09h ����
mov dx, offset message ; ���ڿ��� ��ġ�� �ָ� �˾Ƽ� ���ڿ� ���
int 21h                ; ah�� 09h�� ���� �Ǿ������Ƿ� dx�� ����� ���ڿ� ���
mov ah, 4ch            ; ���� ax
int 21h
main endp
end main