command_helpecho:

	call os_command_init

    mov bx, .HELP_ECHO
    call os_print_string

    call os_command_finish

.HELP_ECHO: db "Echos a given input",0