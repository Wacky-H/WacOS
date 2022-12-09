command_helpprompt:

	call os_command_init

    mov bx, .HELP_PROMPT
    call os_print_string

    call os_command_finish

.HELP_PROMPT: db "Changes the prompt (default > )",0