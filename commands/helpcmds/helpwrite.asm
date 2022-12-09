command_helpwrite:

	call os_command_init

    mov bx, .HELP_WRITE
    call os_print_string

    call os_command_finish

.HELP_WRITE: db "Opens a simple writing program. DOES NOT SAVE",0