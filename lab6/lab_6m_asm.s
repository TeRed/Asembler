#----------------------------------------------------------------
# Funkcja do programu lab_6a - Asemblery Laboratorium IS II rok
#----------------------------------------------------------------

	.text
	.type suma, @function
	.globl suma	

suma:	mov %rdi, %rax

	add %rsi, %rax
	add %rdx, %rax
	ret

