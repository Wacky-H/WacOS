command_helpclear:

	call os_command_init

    mov bx, .HELP_CLEAR
    call os_print_string

    call os_command_finish

.HELP_CLEAR: db "Clears text on the screen",0