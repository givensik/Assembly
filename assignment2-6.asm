; 21011739 ���ؽ�
.model small 
.stack ; ���� ����
.data ; ������ ����
kim db "KIM",0Ah,"JUN",0Ah,"SIK",0Ah,'$' ; �̸� ���� (LF�� �Բ�)
.code ; �ڵ� ����
main proc ; ���ν��� ���� (main)
    mov ax,@data            ; ������ ������ �ּҸ� ax�� ����
    mov ds,ax               ; ds �������Ϳ� ax�� ����� �� ����
    LEA si, kim             ; kim ���ڿ��� ù �ּ� ���
    mov ah, 02h             ; ah�� 09h ����
    mov dx, [si]            ; dx�� kim�� �ּ� ����
loop:
    int 21h                 ; ���ڿ� ���
    inc si                  ; si 1 ����
    mov dx, [si]            ; dx�� name1�� �ּ� ����
    cmp dx, '$'             ; NULL �������� ��
    jne loop                ; NULL ���� �ƴϸ� �ݺ� 

mov ah,4Ch ; ah�� 4Ch ����
int 21h ; ����
end main ; ���ν��� ����
end ; ���α׷� ����