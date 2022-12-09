; Define a macro for playing a sound
%macro playSound 1
    mov al, %1  ; Set the value to be written to the speaker port
    mov dx, 0x61  ; Set the port address
    out dx, al  ; Write the value to the port
%endmacro

; Define a macro for stopping a sound
%macro stopSound 0
    mov al, 0x00  ; Set the value to zero (to turn off the sound)
    mov dx, 0x61  ; Set the port address
    out dx, al  ; Write the value to the port
%endmacro

command_sound:

    call os_command_init

    playSound 0xE0
    stopSound

    pusha

    call os_print_new_line
    jmp get_input

    popa
    
    ret