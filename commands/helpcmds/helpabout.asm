command_helpabout:

    call os_command_init

    mov bx, .HELP_ABOUT
    call os_print_string

    call os_command_finish

.HELP_ABOUT: db "Displays basic information about WacOS.",0