; Hc/NtGdiEngFillPath
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiEngFillPath:DWORD

.DATA
.CODE

HcGdiEngFillPath PROC
	mov r10, rcx
	mov eax, sciGdiEngFillPath
	syscall
	ret
HcGdiEngFillPath ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiEngFillPath:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiEngFillPath PROC
	mov eax, sciGdiEngFillPath
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
HcGdiEngFillPath ENDP

ENDIF

END