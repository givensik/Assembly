;21011739 ���ؽ�
.model small
.stack
.data ; ������ ����
msg db 5 dup('*'), '$' ; dup�Լ��ȿ� ����ִ� ���� dup�տ� �ִ� ���ڸ�ŭ ����
.code ; �ڵ� ����
main proc
mov ax,@data           ; @data�� ax�� ����
mov ds,ax              ; ds�������Ϳ� ax�� �� ����
mov ah,09h             ; ah�� 09H�� �־ ���
mov dx,offset msg      ; dx�� ���������� msg�� �ּҸ� ����
int 21h                
mov ah,4Ch             ; ���α׷� ����
int 21h
end main
end