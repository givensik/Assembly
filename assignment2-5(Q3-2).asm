; 21011724 ���ؽ�
.model small 
.stack ; ���� ����
.data ; ������ ����
kim db "KIM",0ah, "JUN",0ah, "SIK",0ah,"$" ;LINE FEED�� �̿��Ͽ� �� �ٸ�ŭ�� ������ ä���� �����ٷ� �ű��.
.code ; �ڵ� ����

main proc 
    mov ax,@data            ; ������ ������ �ּҸ� ax�� ����
    mov ds,ax               ; ds �������Ϳ� ax�� ����� �� ���� 
    
    mov ah, 09H             ; ah�� 09h ����
    mov dl, offset kim      ; ������ ������ �ִ� ���� Kim�� offset �ּҸ� ������ dl�� �ִ´�.
    int 21H                 ; ���ڿ� ���
    mov ah, 4CH
    int 21H

end main
end