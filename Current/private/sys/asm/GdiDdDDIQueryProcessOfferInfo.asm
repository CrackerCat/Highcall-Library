; Hc/NtGdiDdDDIQueryProcessOfferInfo
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdDDIQueryProcessOfferInfo:DWORD

.DATA
.CODE

HcGdiDdDDIQueryProcessOfferInfo PROC
	mov r10, rcx
	mov eax, sciGdiDdDDIQueryProcessOfferInfo
	syscall
	ret
HcGdiDdDDIQueryProcessOfferInfo ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdDDIQueryProcessOfferInfo:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdDDIQueryProcessOfferInfo PROC
	mov eax, sciGdiDdDDIQueryProcessOfferInfo
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcGdiDdDDIQueryProcessOfferInfo ENDP

ENDIF

END