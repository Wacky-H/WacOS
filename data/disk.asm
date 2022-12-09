; Set the drive number in DL
mov dl, 0 ; 0 = first hard drive

; Set the starting sector in CH, CL, and DH
mov ch, 0 ; Track number (bits 15-8 of LBA)
mov cl, 2 ; Sector number (bits 7-0 of LBA)
mov dh, 0 ; Head number (bits 23-8 of LBA)

; Set the number of sectors to read in AL
mov al, 1 ; Read one sector

; Set the memory address where the data should be stored in DS:BX
mov bx, buffer ; buffer is a memory location where the data will be stored

; Invoke the BIOS disk service to read the sector
mov ah, 02h ; Function 02h is the read sector function
int 13h ; Invoke BIOS interrupt 13h

; Check if the read was successful by checking the value in AH
cmp ah, 00h ; If AH is 0, the read was successful
jne error ; If the read failed, jump to the error routine

buffer: times 512 db 0 ; Define buffer as a memory location with 512 bytes of storage

error:
	call os_change_color_red
	call os_print_new_line

    mov bx, DISK_ERROR_MSG
    call os_print_string

DISK_ERROR_MSG: db "FAILED TO READ DISK", 0