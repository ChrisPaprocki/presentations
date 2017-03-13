LHOTB2:
	.p2align 4,,15
	.globl	_Z8tailCallii
	.type	_Z8tailCallii, @function
_Z8tailCallii:
.LFB1048:
	.cfi_startproc
	testl	%edi, %edi
	movl	%esi, %eax
	je	.L2
	leal	-4(%rdi), %edx
	leal	-1(%rdi), %ecx
	movl	%edi, %r8d
	shrl	$2, %edx
	addl	$1, %edx
	cmpl	$8, %ecx
	leal	0(,%rdx,4), %esi
	jbe	.L3
	movl	%edi, -12(%rsp)
	pxor	%xmm2, %xmm2
	movd	-12(%rsp), %xmm4
	xorl	%ecx, %ecx
	movdqa	.LC1(%rip), %xmm0
	pshufd	$0, %xmm4, %xmm1
	paddd	.LC0(%rip), %xmm1
.L4:
	addl	$1, %ecx
	paddd	%xmm1, %xmm2
	paddd	%xmm0, %xmm1
	cmpl	%ecx, %edx
	ja	.L4
	movdqa	%xmm2, %xmm0
	subl	%esi, %edi
	psrldq	$8, %xmm0
	paddd	%xmm0, %xmm2
	pshufd	$85, %xmm2, %xmm1
	movdqa	%xmm2, %xmm3
	movdqa	%xmm1, %xmm0
	pshufd	$255, %xmm2, %xmm1
	punpckhdq	%xmm2, %xmm3
	movd	%xmm1, %edx
	punpckldq	%xmm3, %xmm0
	movd	%edx, %xmm1
	punpcklqdq	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	movd	%xmm0, %edx
	addl	%edx, %eax
	cmpl	%esi, %r8d
	je	.L2
	leal	-1(%rdi), %ecx
.L3:
	addl	%edi, %eax
	testl	%ecx, %ecx
	je	.L2
	movl	%edi, %edx
	addl	%ecx, %eax
	subl	$2, %edx
	je	.L2
	addl	%edx, %eax
	movl	%edi, %edx
	subl	$3, %edx
	je	.L2
	addl	%edx, %eax
	movl	%edi, %edx
	subl	$4, %edx
	je	.L2
	addl	%edx, %eax
	movl	%edi, %edx
	subl	$5, %edx
	je	.L2
	addl	%edx, %eax
	movl	%edi, %edx
	subl	$6, %edx
	je	.L2
	movl	%edi, %esi
	addl	%edx, %eax
	subl	$7, %esi
	je	.L2
	addl	%esi, %eax
	leal	-8(%rax,%rdi), %eax
.L2:
	rep ret
	.cfi_endproc
.LFE1048:
	.size	_Z8tailCallii, .-_Z8tailCallii
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	_Z11nonTailCalli
	.type	_Z11nonTailCalli, @function
_Z11nonTailCalli:
.LFB1049:
	.cfi_startproc
	testl	%edi, %edi
	je	.L39
	leal	-4(%rdi), %eax
	leal	-1(%rdi), %edx
	movl	%edi, %esi
	shrl	$2, %eax
	addl	$1, %eax
	cmpl	$8, %edx
	leal	0(,%rax,4), %ecx
	jbe	.L40
	movl	%edi, -12(%rsp)
	pxor	%xmm2, %xmm2
	movd	-12(%rsp), %xmm4
	xorl	%edx, %edx
	movdqa	.LC1(%rip), %xmm0
	pshufd	$0, %xmm4, %xmm1
	paddd	.LC0(%rip), %xmm1
.L36:
	addl	$1, %edx
	paddd	%xmm1, %xmm2
	paddd	%xmm0, %xmm1
	cmpl	%edx, %eax
	ja	.L36
	movdqa	%xmm2, %xmm0
	subl	%ecx, %edi
	cmpl	%ecx, %esi
	psrldq	$8, %xmm0
	paddd	%xmm0, %xmm2
	pshufd	$85, %xmm2, %xmm1
	movdqa	%xmm2, %xmm3
	movdqa	%xmm1, %xmm0
	pshufd	$255, %xmm2, %xmm1
	punpckhdq	%xmm2, %xmm3
	movd	%xmm1, %eax
	punpckldq	%xmm3, %xmm0
	movd	%eax, %xmm1
	punpcklqdq	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	movd	%xmm0, %eax
	je	.L34
	leal	-1(%rdi), %edx
.L35:
	addl	%edi, %eax
	testl	%edx, %edx
	je	.L34
	addl	%edx, %eax
	movl	%edi, %edx
	subl	$2, %edx
	je	.L34
	addl	%edx, %eax
	movl	%edi, %edx
	subl	$3, %edx
	je	.L34
	addl	%edx, %eax
	movl	%edi, %edx
	subl	$4, %edx
	je	.L34
	addl	%edx, %eax
	movl	%edi, %edx
	subl	$5, %edx
	je	.L34
	addl	%edx, %eax
	movl	%edi, %edx
	subl	$6, %edx
	je	.L34
	addl	%edx, %eax
	movl	%edi, %edx
	subl	$7, %edx
	je	.L34
	addl	%edx, %eax
	leal	-8(%rdi,%rax), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	xorl	%eax, %eax
.L34:
	rep ret
	.p2align 4,,10
	.p2align 3
.L40:
	xorl	%eax, %eax
	jmp	.L35
	.cfi_endproc
.LFE1049:
	.size	_Z11nonTailCalli, .-_Z11nonTailCalli
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
