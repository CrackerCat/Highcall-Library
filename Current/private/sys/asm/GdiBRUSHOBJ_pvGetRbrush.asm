; Hc/NtGdiBRUSHOBJ_pvGetRbrush
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiBRUSHOBJ_pvGetRbrush:DWORD

.DATA
.CODE

HcGdiBRUSHOBJ_pvGetRbrush PROC
	mov r10, rcx
	mov eax, sciGdiBRUSHOBJ_pvGetRbrush
	syscall
	ret
HcGdiBRUSHOBJ_pvGetRbrush ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiBRUSHOBJ_pvGetRbrush:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiBRUSHOBJ_pvGetRbrush PROC
	mov eax, sciGdiBRUSHOBJ_pvGetRbrush
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
HcGdiBRUSHOBJ_pvGetRbrush ENDP

ENDIF

END