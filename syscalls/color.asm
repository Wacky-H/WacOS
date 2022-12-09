os_change_color_blue:

    mov ah, 0Bh
    xor bh, bh
    mov bl, 17
    int 10h

    ret

os_change_color_black:

    mov ah, 0Bh
    xor bh, bh
    mov bl, 16
    int 10h

    ret

os_change_color_orange:

    mov ah, 0Bh
    xor bh, bh
    mov bl, 12
    int 10h

    ret

os_change_color_test:

    mov ah, 0Bh
    xor bh, bh
    mov bl, 4
    int 10h

    ret

os_change_color_green:

    mov ah, 0Bh
    xor bh, bh
    mov bl, 8
    int 10h

    ret

os_change_color_pink:

    mov ah, 0Bh
    xor bh, bh
    mov bl, 5
    int 10h

    ret

os_change_color_red:

    mov ah, 0Bh
    xor bh, bh
    mov bl, 4
    int 10h

    ret