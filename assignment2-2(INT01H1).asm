;21011739 ���ؽ�
.model small
.stack
.data  ; ������ ����
msg1 db "Enter the char.: ",'$' ;msg1�� ���ڿ� ����
msg2 db 0ah,0dh,"The char. you entered is: ",'$'  ;msg2�� ���ڿ� ����
.code  ; �ڵ� ����
main proc
mov ax,@data ; ax�� @data �� �ֱ�
mov ds,ax    ; ds �������Ϳ� ax�� �ֱ�
mov ah, 09h  ; ah�� 09H�� �־� ���ڿ� ���
mov dx,offset msg1 ;msg1 ���
int 21h
mov ah, 01h  ; ah�� 01H�̸� ���� �ϳ� �Է��� ��ٸ���, �Էµ� ���ڴ� �ƽ�Ű �ڵ�� ����Ǿ� AL�� ����ȴ�.
int 21h                
mov bl, al   ; bl�� al�� �� ����
mov ah,09h   ; msg2 ���
mov dx,offset msg2
int 21h
mov ah,02h   ; ah�� 02H ����, DL�� �ִ� �ƽ�Ű �ڵ� ���ڸ� ����Ѵ�. 
mov dl,bl    ; bl�� �ִ� ���� dl�� ����
int 21h      ; ���
mov ah,4ch   ; ����
int 21h
end main
end