;21011739 ���ؽ�
.model small
.stack 64 ; ������ ũ�� 64����Ʈ
.data ; ������ ����
message DB "Hello, World!", 0 ;message��� ������ ���ڿ� "Hello, World!"�� 0(�ι���)�� ����
.code ; �ڵ� ����
main proc far
mov ax, @data ; ax�� ���ļ� �����Ϳ����� ���۵Ǵ� �޸� �ּҸ� DS�� ES �������Ϳ� ����
mov ds, ax
mov es, ax
mov cx, 0     ; cx�� 0 ����
main_loop:
mov ax, offset message ; message��� �̸��� ���ڿ� �����Ͱ� @data���� �� ����Ʈ ������ �Ÿ��� �ִ����� ������.
mov si, ax ; �޸� ������ ���� si �������Ϳ� message�� ���� ��ġ �ְ� (c����� message)
add si, cx ; �� ��ġ���� �� ��° ���������� �������� �߰� (c����� message[cx]�� �ش�)
add cx, 1 ; cx�� ���� 1 ���� cx++
; �� �� ���� �����ϸ� message[cx++];�� �ش�
; �޸𸮿��� ������ ���ڸ� ���
mov ah, 02h  ; ah�� 02h ����
mov dl, [si] ; si�� ��ġ�ϴ� ���ڸ� dl�� ����
int 21h      ; ah�� 02h �̹Ƿ� dl�� ����� �� ���
cmp dl, 0 ; NULL �������� ��
jne main_loop ; NULL ���� �ƴϸ� �ݺ�
mov ah, 4ch   ; ah�� 4ch ����
int 21h       ; ah�� 4ch�� ���� �Ǿ����Ƿ� ����
main endp
end main