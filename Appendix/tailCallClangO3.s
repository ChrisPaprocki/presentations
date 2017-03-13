_Z8tailCallii:                          # @_Z8tailCallii
	.cfi_startproc
# BB#0:
                                        # kill: EDI<def> EDI<kill> RDI<def>
	testl	%edi, %edi
	je	.LBB0_2
# BB#1:                                 # %.lr.ph
	leal	-1(%rdi), %eax
	movl	%eax, %ecx
	imull	%ecx, %ecx
	leal	-2(%rdi), %edx
	imulq	%rax, %rdx
	shrq	%rdx
	addl	%edi, %esi
	addl	%ecx, %esi
	subl	%edx, %esi
.LBB0_2:
	movl	%esi, %eax
	retq
.Ltmp0:
	.size	_Z8tailCallii, .Ltmp0-_Z8tailCallii
	.cfi_endproc

	.globl	_Z11nonTailCalli
	.align	16, 0x90
	.type	_Z11nonTailCalli,@function
_Z11nonTailCalli:                       # @_Z11nonTailCalli
	.cfi_startproc
# BB#0:
                                        # kill: EDI<def> EDI<kill> RDI<def>
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.LBB1_2
# BB#1:                                 # %.lr.ph
	leal	-1(%rdi), %eax
	leal	-2(%rdi), %ecx
	imulq	%rax, %rcx
                                        # kill: EAX<def> EAX<kill> RAX<kill>
	imull	%eax, %eax
	shrq	%rcx
	addl	%edi, %eax
	subl	%ecx, %eax
.LBB1_2:
	retq
.Ltmp1:
	.size	_Z11nonTailCalli, .Ltmp1-_Z11nonTailCalli
	.cfi_endproc

