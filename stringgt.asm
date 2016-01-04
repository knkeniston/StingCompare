; Kelly Keniston, CS 216, Spring 2015
; Program that compares two strings.
; Prints true if first is greater than second.
; Prints false if first is less than second or if equal.


SECTION	.text
global	stringgt

stringgt:

		push	ebp								; push onto stack
		mov	ebp, esp
		push	esi
		push	edi
		cld 										; clear direction flag
		mov   esi, [ebp+8]					; get string1
		mov   edi, [ebp+12]					; get string2
		mov	edx, 0							; counter

loop:
		mov	al, [esi + edx]				; load char of string1
		mov 	bl, [edi + edx]				; load char of string2
		inc 	edx								; increment counter
		sub 	al, bl							; subtract the chars
		jne 	done								; if theyre not equal
		cmp 	bl, 0								; see if end of string
		jne 	loop								; continue loop	

done: 
		cmp 	al, 0								; see if end of string
		jg 	end								; go to end
		xor 	eax, eax							; return value

end:												
		pop 	edi								; pop off of stack
		pop 	esi
		mov 	esp, ebp							
		pop 	ebp
		ret										; return
