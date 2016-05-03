
.386
.model flat, stdcall
.stack 4096
STD_OUTPUT_HANDLE EQU - 11
GetStdHandle PROTO, nStdHandle: DWORD
WriteConsoleA PROTO, handle : DWORD, lpBuffer : PTR BYTE, nNumberOfBytesToWrite : DWORD, lpNumberOfBytesWritten : PTR DWORD, lpReserved : DWORD
ExitProcess proto, dwExitCode : dword

.data
consoleOutHandle dd ?
bytesWritten dd ?
message db "Hello World", 13, 10
lmessage dd 13

.code
main proc
; mov	eax, 5
; add	eax, 6

	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov consoleOutHandle, eax
	mov edx, offset message
	pushad
	mov eax, lmessage
	INVOKE WriteConsoleA, consoleOutHandle, edx, eax, offset bytesWritten, 0
	popad
	INVOKE ExitProcess, 0

 
main endp
end main