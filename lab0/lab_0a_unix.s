#----------------------------------------------------------------
# Program lab_0a.s - Asemblery Laboratorium IS II rok
#----------------------------------------------------------------
#
#  To compile: as -o lab_0a.o lab_0a.s
#  To link:    ld -o lab_0a lab_0a.o
#  To run:     ./lab_0a
#
#----------------------------------------------------------------

#od kropki - dyrektywy (dla kompilatora)
#asembler - kompilator, język
#deklaracja - rezerwacja miejsca (brak typowania)

	.data
	
dummy:				# some data, dummy - adres miejsca pamięci w którym będzie byte
	.byte	0x00		# rezerwacja bajtu o wartości 0

	.text			# start kodu programu (dane za nami)
	.global _start		# entry point, '_start' - symbol
	
_start:				# etyikieta tożsama z adresem
	JMP	_start
