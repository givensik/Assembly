; 21011724 ���ؽ�
.model small 
.stack ; ���� ����
.data ; ������ ����
msg db 0Ah,0Dh,'$' ; msg�� ���๮�ڸ� �����ؼ� �׳� �ϳ��� ���ڿ��� ����
cnt1 dw 0 ; cnt1�� 1 �ֱ� ���� �� ����
cnt2 dw 0 ; cnt2�� 0 �ֱ� ���� �� ����
.code ; �ڵ� ����

main proc 
    mov ax,@data ; ������ ������ �ּҸ� ax�� ����
    mov ds,ax ; ds �������Ϳ� ax�� ����� �� ����
loop1:
    mov cnt2, 0 ; cnt2�� 0 ����
    mov dl, 2Ah ; dl�� 2Ah ����
    mov cx, cnt1 ; cx�� cnt1 ����
    mov ah, 02h ; ah�� 02h ����
loop2:
    int 21h         ; * ���
    inc cnt2        ; cnt2 �� 1 ����
    cmp cnt2, cx    ; cnt2�� cx ��
    jle loop2       ; �۰ų� ������ loop2�� ���ư���
mov ah,09h          ; ah�� 09h ����
mov dx,offset msg   ; dx�� msg�� �ּ� ����(\n\r ����� ���ؼ�)
int 21h             ; ���ڿ� ��� (���� ���)
mov cx, 04h         ; cx�� 05h ����
inc cnt1            ; cnt1 �� 1 ����
cmp cnt1, cx        ; cnt1�� cx ��
jle loop1           ; �۰ų� ������ main_loop1���� ���ư���
mov ah,4Ch          ; ah�� 4Ch ����
int 21h             ; ����
end main            ; ���ν��� ����
end                 ; ���α׷� ����
