command_helpexit:

	call os_command_init

    mov bx, .HELP_EXIT
    call os_print_string

    call os_command_finish

.HELP_EXIT: db "Shuts down the computer",0