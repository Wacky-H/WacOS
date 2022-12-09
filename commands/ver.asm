command_ver:

    call os_command_init

    mov bx, .WACOS_VERSION
    call os_print_string

    call os_command_finish

.WACOS_VERSION: db "WacOS Version 1.4 (indev)",0