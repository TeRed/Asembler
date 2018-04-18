#----------------------------------------------------------------
# Program lab_1.s - Asemblery Laboratorium IS II rok
#----------------------------------------------------------------
#
#  To compile: as -o lab_1.o lab_1.s
#  To link:    ld -o lab_1 lab_1.o
#  To run:     ./lab_1
#
#----------------------------------------------------------------
	### "preprocesor"
	.equ	write_64, 1	# write data to file function (64bit)
	.equ	exit_64, 60	# exit program function (64bit)
	.equ	stdout, 0x01	# handle to stdout

	.data
	
starttxt:			# first message
	.ascii	"Start\n"
endtxt:				# second message
	.ascii	"Finish\n"
arg1:				# first argument
	.byte		1
arg2:				# second argument
	.word		2	### rezerwacja miejsca - 2 bajty
arg3:				# third argument
	.long		3	### rezerwacja miejsca - 4 bajty
result:				# result
	.long		0	

	.equ	startlen, endtxt - starttxt ### wielkość danych; startlen - symbol; adresy dotyczą bajtów
	.equ	endlen, arg1 - endtxt ### analogicznie
 
	.text
	.global _start
	
_start:
	MOV	$write_64,%rax	### ogólna instrukcja przeniesienia MOV
	MOVQ	$stdout,%rdi	### dokładna instrukcja przeniesienia MOV(OPCJA) (OPCJA: B(yte) - 1,W(ord) - 2,L(ong) - 4,Q(???) - 8; liczba przenoszonych bajtów)
	MOV	$starttxt,%rsi	### ilość danych do przekopiowania wskazuje wielkość rejestru (można wszędzie używać MOV w tym przypadku)
	MOVQ	$startlen,%rdx
	SYSCALL			### INTKERNEL poprzednio (32 bity; rejestry od e); SYSCALL (64 bity; rejestry od r; co do zasady tak samo, wpisujemy do rejstrów nr funkcji i arg)

	NOP			### przetwarzanie danych
	
	XOR	%eax,%eax
	MOVB	arg1,%al	### albo mnijsze rejestry tylko należy wyzerować lub opcja 2: MOV i większe dane
	XOR	%ebx,%ebx
	MOVW	arg2,%bx
	MOVL	arg3,%ecx
	ADD	%ebx,%eax	### %eax = %eax + %ebx
	SUB	%ecx,%eax	### %eax = %eax - %ecx
	MOVL	%eax,result

	### RAX-64(EAX-32(AX-16(AH-8, AL-8))) - zawsze jeden rejestr, zmiana AL zmienia RAX
	### debugowanie: gdb, ddd

	NOP

	MOV	$write_64,%rax
	MOVQ	$stdout,%rdi
	MOV	$endtxt,%rsi
	MOVQ	$endlen,%rdx
	SYSCALL

	NOP

theend:
	MOV	$exit_64,%rax
	SYSCALL

