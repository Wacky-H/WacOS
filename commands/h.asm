command_h:

    call os_command_init

    mov bx, .H
    call os_print_string

    call os_command_finish

.H: db "H",0