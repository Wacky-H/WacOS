; AtieDOS 2.10 Kernel
; Copyright (c) 2020 AtieSoftware
; See LICENSE in root folder


; KERNEL STARTS HERE


kernel_main:


    call os_print_new_line              ; calls new line function
	
    mov bx, STARTED_SUCCESS_MSG         ; prints "WacOS indev - Wac Software 2022"
    call os_print_string

    call os_print_new_line
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

    mov bx, WACOS_VER
    call os_print_string

    call os_print_new_line
    call os_print_new_line

    mov bx, ANOTHER_LINE
    call os_print_string

    call os_print_new_line

    mov word[PROMPT], word "> "         ; moves "> " to prompt

get_input:
    
    call os_print_new_line

    mov bx, PROMPT
    call os_print_string

    call null_input_string
    
    ; I am using SI as an index for the DI array of chars.
    ; I'm making this to handle backspaces well.
    ; postdata: this time the array starts at 1 because there's no negative
    ; numbers

    mov si, 1
    xor di, di
    mov di, INPUT

.get_chars:

    call os_keystroke

    cmp ah, [KEY_ENTER]
    je .compare

    cmp ah, [KEY_BACKSPACE]
    je .handle_backspace


    inc si

    mov ah, 0x0e
    int 10h

    stosb

    jmp .get_chars

.compare:

    xor al, al
    stosb

    mov ax, INPUT
    call os_string_to_lowercase

    mov si, ABOUT_STR
    mov di, INPUT
    mov cx, command_about
    call os_string_compare_and_jump

    mov si, VER_STR
    mov di, INPUT
    mov cx, command_ver
    call os_string_compare_and_jump

    mov si, CLEAR_STR
    mov di, INPUT
    mov cx, command_clear
    call os_string_compare_and_jump

    mov si, CHSET_STR
    mov di, INPUT
    mov cx, command_charset
    call os_string_compare_and_jump

    mov si, ECHO_STR
    mov di, INPUT
    mov cx, command_echo
    call os_string_compare_and_jump

    mov si, HELP_STR
    mov di, INPUT
    mov cx, command_help
    call os_string_compare_and_jump

    mov si, PROMPT_STR
    mov di, INPUT
    mov cx, command_prompt
    call os_string_compare_and_jump

    mov si, RESTART_STR
    mov di, INPUT
    mov cx, command_restart
    call os_string_compare_and_jump


    mov si, EXIT_STR
    mov di, INPUT
    mov cx, command_exit
    call os_string_compare_and_jump


    mov si, WRITE_STR
    mov di, INPUT
    mov cx, command_write
    call os_string_compare_and_jump

    mov si, H_STR
    mov di, INPUT
    mov cx, command_h
    call os_string_compare_and_jump

    mov si, FINGER_STR
    mov di, INPUT
    mov cx, command_finger
    call os_string_compare_and_jump

    mov si, HEY_STR
    mov di, INPUT
    mov cx, command_hey
    call os_string_compare_and_jump

    mov si, VIBRI_STR
    mov di, INPUT
    mov cx, command_vibri
    call os_string_compare_and_jump

    mov si, SOUND_STR
    mov di, INPUT
    mov cx, command_sound
    call os_string_compare_and_jump

    ;help commands

    mov si, HELP_ABOUT
    mov di, INPUT
    mov cx, command_helpabout
    call os_string_compare_and_jump

    mov si, HELP_VER
    mov di, INPUT
    mov cx, command_helpver
    call os_string_compare_and_jump

    mov si, HELP_CHARSET
    mov di, INPUT
    mov cx, command_helpcharset
    call os_string_compare_and_jump

    mov si, HELP_CLEAR
    mov di, INPUT
    mov cx, command_helpclear
    call os_string_compare_and_jump

    mov si, HELP_ECHO
    mov di, INPUT
    mov cx, command_helpecho
    call os_string_compare_and_jump

    mov si, HELP_PROMPT
    mov di, INPUT
    mov cx, command_helpprompt
    call os_string_compare_and_jump

    mov si, HELP_RESTART
    mov di, INPUT
    mov cx, command_helprestart
    call os_string_compare_and_jump

    mov si, HELP_EXIT
    mov di, INPUT
    mov cx, command_helpexit
    call os_string_compare_and_jump

    mov si, HELP_WRITE
    mov di, INPUT
    mov cx, command_helpwrite
    call os_string_compare_and_jump

    mov si, HELP_H
    mov di, INPUT
    mov cx, command_helph
    call os_string_compare_and_jump

    mov si, HELP_FINGER
    mov di, INPUT
    mov cx, command_helpfinger
    call os_string_compare_and_jump

    mov si, HELP_HEY
    mov di, INPUT
    mov cx, command_helphey
    call os_string_compare_and_jump

    mov si, HELP_HELP
    mov di, INPUT
    mov cx, command_helphelp
    call os_string_compare_and_jump

    mov si, HELP_VIBRI
    mov di, INPUT
    mov cx, command_helpvibri
    call os_string_compare_and_jump

    ;color commands

    mov si, COLOR_STR
    mov di, INPUT
    mov cx, command_color
    call os_string_compare_and_jump
    
    mov si, COLORBLUE_STR
    mov di, INPUT
    mov cx, command_colorblue
    call os_string_compare_and_jump

    mov si, COLORBLACK_STR
    mov di, INPUT
    mov cx, command_colorblack
    call os_string_compare_and_jump

    mov si, COLORORANGE_STR
    mov di, INPUT
    mov cx, command_colororange
    call os_string_compare_and_jump

    mov si, COLORTEST_STR
    mov di, INPUT
    mov cx, command_colortest
    call os_string_compare_and_jump

    mov si, COLORGREEN_STR
    mov di, INPUT
    mov cx, command_colorgreen
    call os_string_compare_and_jump

    mov si, COLORPINK_STR
    mov di, INPUT
    mov cx, command_colorpink
    call os_string_compare_and_jump

    mov si, COLORRED_STR
    mov di, INPUT
    mov cx, command_colorred
    call os_string_compare_and_jump

    call os_print_new_line

    mov bx, INVALID_CMD_MSG
    call os_print_string

    mov bx, QUOTE
    call os_print_string

    mov bx, di
    call os_print_string

    mov bx, QUOTE
    call os_print_string

    call os_print_new_line

    jmp get_input


.handle_backspace:

    cmp si, 1
    je .handle_backspace_no_backspace

    dec di
    dec si

    call os_get_cursor_position

    mov ah, 0x02
    dec dl
    xor bh, bh
    int 10h

    mov ah, 0x0e
    mov al, ' '
    int 10h


    mov ah, 0x02
    dec dl
    xor bh, bh
    int 10h

    mov ah, 0x02
    inc dl
    xor bh, bh
    int 10h

    jmp .get_chars

.handle_backspace_no_backspace:

    jmp .get_chars

null_input_string:

    xor di, di
    mov di, INPUT
    mov si, 25

.null_input_string_loop:

    cmp si, 0
    je .null_input_string_done
    mov al, 0
    stosb
    dec si
    jmp .null_input_string_loop

.null_input_string_done:
    ret

    STARTED_SUCCESS_MSG: db "----------Welcome to WacOS----------", 0

    WACOS_A: db " _       __              ____  _____",0
    WACOS_B: db "| |     / /____ _ _____ / __ \/ ___/",0
    WACOS_C: db "| | /| / // __ `// ___// / / /\__ \ ",0
    WACOS_D: db "| |/ |/ // /_/ // /__ / /_/ /___/ / ",0
    WACOS_E: db "|__/|__/ \__,_/ \___/ \____//____/  ",0
    WACOS_VER: db "Version 1.4 (indev)",0

    ANOTHER_LINE: db "------------------------------------", 0

    INVALID_CMD_MSG: db "Invalid command: ", 0
    QUOTE: db '"', 0
    PROMPT: times 25 db 0
    INPUT: times 25 db 0

    ABOUT_STR: db "about", 0
    CLEAR_STR: db "clear", 0
    CHSET_STR: db "chset", 0
    ECHO_STR: db "echo", 0
    HELP_STR: db "help", 0
    PROMPT_STR: db "prompt", 0
    RESTART_STR: db "restart", 0
    EXIT_STR: db "exit", 0
    WRITE_STR: db "write", 0
    VER_STR: db "ver", 0
    H_STR: db "h", 0
    FINGER_STR: db "finger", 0
    HEY_STR: db "hey", 0
    VIBRI_STR: db "vibri", 0
    SOUND_STR: db "sound", 0


    ;help commands
    HELP_ABOUT: db "help about", 0
    HELP_VER: db "help ver", 0
    HELP_CHARSET: db "help chset", 0
    HELP_CLEAR: db "help clear", 0
    HELP_ECHO: db "help echo", 0
    HELP_PROMPT: db "help prompt", 0
    HELP_RESTART: db "help restart", 0
    HELP_EXIT: db "help exit", 0
    HELP_WRITE: db "help write", 0
    HELP_H: db "help h", 0
    HELP_FINGER: db "help finger", 0
    HELP_HEY: db "help hey", 0
    HELP_HELP: db "help help", 0
    HELP_VIBRI: db "help vibri", 0

    ;color commands
    COLOR_STR: db "color", 0

    COLORBLUE_STR: db "color blue", 0
    COLORBLACK_STR: db "color black", 0
    COLORORANGE_STR: db "color orange", 0
    COLORTEST_STR: db "color test", 0
    COLORGREEN_STR: db "color green", 0
    COLORPINK_STR: db "color pink", 0
    COLORRED_STR: db "color red", 0



%include "syscalls/_syscalls.asm"
%include "commands/_commands.asm"
%include "commands/helpcmds/_helpcmds.asm"
%include "commands/color/_colorcmds.asm"
%include "data/keys.asm"
%include "data/disk.asm"
