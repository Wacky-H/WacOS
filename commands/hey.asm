command_hey:

	call os_command_init

    mov bx, .HEY
    call os_print_string

    call os_command_finish

.HEY: db "Hey!",0