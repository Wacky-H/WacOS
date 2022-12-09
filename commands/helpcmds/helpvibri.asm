command_helpvibri:

	call os_command_init

    mov bx, .HELP_VIBRI
    call os_print_string

    call os_command_finish

.HELP_VIBRI: db "Prints ASCII art of Vibri from Vib-Ribbon",0