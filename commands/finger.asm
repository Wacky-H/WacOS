command_finger:

    call os_clear_screen

    call os_command_init

    mov bx, .KID_NAMED_FINGER
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_A
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_B
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_C
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_D
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_E
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_F
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_G
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_H
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_I
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_J
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_K
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_L
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_M
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_N
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_O
    call os_print_string

    call os_print_new_line

    mov bx, .MIKE_P
    call os_print_string

    call os_print_new_line

    call os_command_finish

.KID_NAMED_FINGER: db "Kid named finger:",0
.MIKE_A: db "&&&&&&&&&&&&&&&&&&&&&&&&&&%%%%",0 
.MIKE_B: db "&&&&&&&/((##%%%&&&&&%&&&&&%%%%",0
.MIKE_C: db "&&&&&**/(((#%&&&@@&&&(*&&&%%%%",0
.MIKE_D: db "&&&,*****/###%&@@@@@&%/,&&%%%%",0
.MIKE_E: db "&&&******/(%&&@@@@@&&&&#(&&%%%",0
.MIKE_F: db "&&&*/**/#@&%@%&@@@@@@&@@@@@%%%",0
.MIKE_G: db "&&&%*/%/@@&((#%@@@@@@%&@@@@&&&",0
.MIKE_H: db "&@@@%**%@&&%%%%%@@@&&%@@&@&&&&",0
.MIKE_I: db "@@@@@**#@@@@#&@@@@@@&%%%%@@&&&",0
.MIKE_J: db "@@@@@@**#%&&%%%@@@@@&%#@@@@@&&",0
.MIKE_K: db "@@@@@@@(&###@@%%@@@&@@@@@@@@@&",0
.MIKE_L: db "@@@@@@@@*/##&%#&@@@@@@@@@@@@@@",0
.MIKE_M: db "@@@@@@@@@/(#&@&@@@@@@@@@@@@@@@",0
.MIKE_N: db "@@@@@@@@@@@@@@&@@@@@@@@@@@@@@@",0
.MIKE_O: db "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0
.MIKE_P: db "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0