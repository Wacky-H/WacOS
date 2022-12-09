command_helprestart:

	call os_command_init

    mov bx, .HELP_RESTART
    call os_print_string

    call os_command_finish

.HELP_RESTART: db "Restarts the computer",0