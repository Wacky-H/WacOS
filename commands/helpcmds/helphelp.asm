command_helphelp:

	call os_command_init

    mov bx, .HELP_HELP
    call os_print_string

    call os_command_finish

.HELP_HELP: db "Displays a list of valid commands",0