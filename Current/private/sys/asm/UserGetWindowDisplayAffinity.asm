; Hc/NtUserGetWindowDisplayAffinity
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetWindowDisplayAffinity:DWORD

.DATA
.CODE

HcUserGetWindowDisplayAffinity PROC
	mov r10, rcx
	mov eax, sciUserGetWindowDisplayAffinity
	syscall
	ret
HcUserGetWindowDisplayAffinity ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetWindowDisplayAffinity:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetWindowDisplayAffinity PROC
	mov eax, sciUserGetWindowDisplayAffinity
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
HcUserGetWindowDisplayAffinity ENDP

ENDIF

END