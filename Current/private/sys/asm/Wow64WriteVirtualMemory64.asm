; Hc/NtWow64WriteVirtualMemory64
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciWow64WriteVirtualMemory64:DWORD

.DATA
.CODE

HcWow64WriteVirtualMemory64 PROC
	mov r10, rcx
	mov eax, sciWow64WriteVirtualMemory64
	syscall
	ret
HcWow64WriteVirtualMemory64 ENDP

ELSE
; 32bit

EXTERNDEF C sciWow64WriteVirtualMemory64:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcWow64WriteVirtualMemory64 PROC
	mov eax, sciWow64WriteVirtualMemory64
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
HcWow64WriteVirtualMemory64 ENDP

ENDIF

END