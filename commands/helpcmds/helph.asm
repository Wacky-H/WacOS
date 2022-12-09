command_helph:

	call os_command_init

    mov bx, .HELP_H
    call os_print_string

    call os_command_finish

.HELP_H: db "Displays a letter H",0