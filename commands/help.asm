; AtieDOS 2.10 Help Command
; Copyright (c) 2020 AtieSoftware. All rights reserved.
; See LICENSE in the root folder

command_help:

    call os_command_init

    mov bx, .HELP_COMMANDS_A
    call os_print_string

    call os_print_new_line

    mov bx, .HELP_COMMANDS_B
    call os_print_string

    call os_print_new_line

    mov bx, .APPS_COMMANDS
    call os_print_string

    call os_print_new_line

    mov bx, .FUN_COMMANDS
    call os_print_string

    call os_print_new_line

    mov bx, .TYPE_HELPCMD
    call os_print_string

    call os_print_new_line

    mov bx, .TYPE_COLORS
    call os_print_string


    call os_command_finish

.HELP_COMMANDS_A: db "COMMANDS: help, about, ver, chset, clear, echo, help, prompt, restart,",0
.HELP_COMMANDS_B: db "exit",0
.APPS_COMMANDS: db "APPLICATIONS: write",0
.FUN_COMMANDS: db "FUN: h, finger, hey, vibri",0
.TYPE_HELPCMD: db "Run 'help (command)' to see more information on that command",0
.TYPE_COLORS: db "Run 'color' to see a list of colors",0
