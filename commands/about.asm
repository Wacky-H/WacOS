; AtieDOS 2.10 About Command
; Copyright (c) 2020 AtieSoftware.
; See LICENSE in root folder

command_about:

    call os_command_init

    call os_print_new_line

    mov bx, WACOS_A
    call os_print_string

    call os_print_new_line

    mov bx, WACOS_B
    call os_print_string

    call os_print_new_line

    mov bx, WACOS_C
    call os_print_string

    call os_print_new_line

    mov bx, WACOS_D
    call os_print_string

    call os_print_new_line

    mov bx, WACOS_E
    call os_print_string

    call os_print_new_line
    call os_print_new_line
    
    mov bx, .ABOUT_WACOS_HEADER
    call os_print_string

    call os_print_new_line

    mov bx, .WACOS_WACKYH
    call os_print_string

    call os_print_new_line

    mov bx, .WACOS_WEBSITE
    call os_print_string

    call os_print_new_line
    call os_print_new_line


    call os_command_finish

.ABOUT_WACOS_HEADER: db "WacOS Version 1.4 (indev)", 0
.WACOS_WACKYH: db "by WackyH - Wac Software 2022", 0
.WACOS_WEBSITE: db "https://wackyh.neocities.org", 0
.WACOS_A: db " _       __              ____  _____",0
.WACOS_B: db "| |     / /____ _ _____ / __ \/ ___/",0
.WACOS_C: db "| | /| / // __ `// ___// / / /\__ \ ",0
.WACOS_D: db "| |/ |/ // /_/ // /__ / /_/ /___/ / ",0
.WACOS_E: db "|__/|__/ \__,_/ \___/ \____//____/  ",0