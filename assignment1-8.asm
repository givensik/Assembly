;21011739 ���ؽ�
.model small
.stack
.data
message DB "Hello, World!", 0 ;message��� �̸��� ������ ���ڿ� "Hello, Wolrd!"�� 0�� ����
.code
main proc far
mov ax, @data  ; ax�� @data�� ����
mov ds, ax     ; ������ ���׸�Ʈ �������Ϳ� ax�� �� ����
mov es, ax     ; es �������Ϳ��� ax�� �� ����
mov si, offset message ; message��� �̸��� ���ڿ� �����Ͱ� @data���� �� ����Ʈ ������ �Ÿ��� �ִ����� ������.
dec si ; si�� ���� 1 ���ҽ��� �迭�� -1��°�� �����ϵ��� �ϰ�, main_loop�� �ݺ��� �� �迭�� 0��° ���� ������ �� �ֵ��� ��
main_loop:
inc si ; si�� �����ϴ� �迭�� ���Ҹ� 1 ����
; �޸𸮿��� ������ ���ڸ� ���
mov ah, 02h    ; ah�� 02h�� ����
mov dl, [si]   ; dl�� si�� �����ϴ� �迭�� ���Ҹ� ������
int 21h        ; ���
cmp dl, 0      ; dl�� 0�� ��
jne main_loop  ; �� ��� 0�� �ƴϸ� main_loop�� ���ư�
mov ah, 4ch    ; ����
int 21h
main endp
end main