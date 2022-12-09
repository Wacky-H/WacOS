command_color:

    call os_command_init

    mov bx, COLORS
    call os_print_string
    
    call os_print_new_line

    mov bx, RUN_THAT
    call os_print_string

    call os_command_finish

command_colorblue:

    call os_command_init

    call os_change_color_blue

    call os_command_finish

command_colorblack:

    call os_command_init

    call os_change_color_black

    call os_command_finish

command_colororange:

    call os_command_init

    call os_change_color_orange

    call os_command_finish

command_colortest:

    call os_command_init

    call os_change_color_test

    call os_command_finish

command_colorgreen:

    call os_command_init

    call os_change_color_green

    call os_command_finish

command_colorpink:

    call os_command_init

    call os_change_color_pink

    call os_command_finish

command_colorred:

    call os_command_init

    call os_change_color_red

    call os_command_finish

COLORS: db "blue, black, orange, green, pink, red",0
RUN_THAT: db "Run 'color (color)' to change the screen to that color",0