#----------------------------------------------------------------
# Funkcja do programu lab_7m - Asemblery Laboratorium IS II rok
#----------------------------------------------------------------

	.text
	.type mina, @function
	.globl mina	

mina:	mov %rdi, %rax
	cmp %rsi, %rax
	jbe next
	mov %rsi, %rax
next:
	cmp %rdx, %rax
	jbe return
	mov %rdx, %rax

return:	ret

