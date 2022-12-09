command_helpfinger:

	call os_command_init

    mov bx, .HELP_FINGER_A
    call os_print_string

    call os_print_new_line

    mov bx, .HELP_FINGER_B
    call os_print_string

    call os_print_new_line

    mov bx, .HELP_FINGER_C
    call os_print_string

    call os_command_finish

.HELP_FINGER_A: db "Waltuh", 0
.HELP_FINGER_B: db "Put your Assembly program away Waltuh",0
.HELP_FINGER_C: db "I'm not buildin an operating system with you right now Waltuh",0