command_helphey:

	call os_command_init

    mov bx, .HELP_HEY
    call os_print_string

    call os_command_finish

.HELP_HEY: db "Hey!",0