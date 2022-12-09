command_helpcharset:

	call os_command_init

    mov bx, .HELP_CHARSET
    call os_print_string

    call os_command_finish

.HELP_CHARSET: db "Displays character set",0