;21011739 ���ؽ�
.model small
.stack
.data
.code
char db 41H; 
main proc
mov ax,@data ; @data�� �ִ� ���� ax�� ����
mov ds,ax    ; ds�� ax�� �ִ� �� ����

mov ah, 02h  ; ah�� 02h ����
loop:
    mov dl, char ; dl�� char ���� ����
    int 21H      ; dl�� �ִ� ���� ��� 
    inc char     ; char�� 1�� ���� ���� ���ĺ� �̿�
    cmp char, 5AH; char�� 'Z' ���� �۰ų� ���� ��
    jle loop     ; loop �ݺ�
mov ah,4ch ;����
int 21h
end main
end