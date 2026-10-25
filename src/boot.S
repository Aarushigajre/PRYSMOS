.section .text.boot
.global _start

_start:
    /* Set up the stack pointer to the top of RAM. */
    ldr x0, =_stack_top
    mov sp, x0

    /* Branch to the C kernel entry point. */
    b kernel_main
