command_helpver:

	call os_command_init

    mov bx, .HELP_VER
    call os_print_string

    call os_command_finish

.HELP_VER: db "Displays current WacOS version",0