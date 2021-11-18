# Don't change this part
# The only file you should change is the  16_bit/print_string.s file
.code16                 #generate 16-bit code
.text                   #executable code location
.globl _start;
_start:                 #code entry point
    pushw %bp
    movw %sp,%bp
    movb $0x0e,%ah
    movw $y_char,%bx
    movb (%bx), %al

    int $0x10

    jmp hang


y_char:
    .ascii "Y"

# Don't change anything below this
hang:
    jmp hang

. = _start + 510        #mov to 510th byte from 0 pos

#The magic number which tells BIOS that this is indeed OS code not junk
.2byte 0xaa55
