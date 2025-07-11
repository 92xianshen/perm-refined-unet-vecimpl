	.file	"main.cpp"
	.text
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
.lcomm _ZStL8__ioinit,1,1
	.section	.text$_ZN9HashTable4growEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9HashTable4growEv
	.def	_ZN9HashTable4growEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HashTable4growEv
_ZN9HashTable4growEv:
.LFB2130:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp
	.seh_stackalloc	128
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, -20(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	(%rax,%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, 16(%rax)
	leaq	-30(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIsEC1Ev
	movl	-20(%rbp), %eax
	addl	$10, %eax
	cltq
	movq	32(%rbp), %rdx
	movq	(%rdx), %rdx
	imulq	%rax, %rdx
	leaq	-30(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt6vectorIsSaIsEEC1EyRKS0_
.LEHE0:
	leaq	-30(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIsED1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIsSaIsEE5beginEv
	movq	%rax, %rsi
	movq	32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIsSaIsEE3endEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIsSaIsEE5beginEv
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
.LEHB1:
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_
.LEHE1:
	leaq	-29(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIiEC1Ev
	movl	$-1, -28(%rbp)
	movq	32(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-29(%rbp), %r8
	leaq	-28(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB2:
	call	_ZNSt6vectorIiSaIiEEC1EyRKiRKS0_
.LEHE2:
	leaq	-29(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIiED1Ev
	movq	32(%rbp), %rax
	leaq	48(%rax), %rcx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt6vectorIiSaIiEE4swapERS1_
	movq	32(%rbp), %rax
	leaq	24(%rax), %rcx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt6vectorIsSaIsEE4swapERS1_
	movl	$0, -4(%rbp)
.L8:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L2
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	notl	%eax
	shrl	$31, %eax
	testb	%al, %al
	je	.L3
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	32(%rbp), %rcx
	call	_ZNK9HashTable6getKeyEi
	movq	%rax, %rdx
	movq	32(%rbp), %rcx
	call	_ZN9HashTable4hashEPKs
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rdx, %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -16(%rbp)
.L7:
	movq	32(%rbp), %rax
	addq	$48, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	notl	%eax
	shrl	$31, %eax
	testb	%al, %al
	je	.L4
	movq	32(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L5
	movq	-16(%rbp), %rax
	addq	$1, %rax
	jmp	.L6
.L5:
	movl	$0, %eax
.L6:
	movq	%rax, -16(%rbp)
	jmp	.L7
.L4:
	movq	32(%rbp), %rax
	addq	$48, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
.L3:
	addl	$1, -4(%rbp)
	jmp	.L8
.L2:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIsSaIsEED1Ev
	jmp	.L15
.L12:
	movq	%rax, %rbx
	leaq	-30(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIsED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB3:
	call	_Unwind_Resume
.L14:
	movq	%rax, %rbx
	leaq	-29(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIiED1Ev
	jmp	.L11
.L13:
	movq	%rax, %rbx
.L11:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIsSaIsEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
	nop
.LEHE3:
.L15:
	subq	$-128, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2130:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2130-.LLSDACSB2130
.LLSDACSB2130:
	.uleb128 .LEHB0-.LFB2130
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L12-.LFB2130
	.uleb128 0
	.uleb128 .LEHB1-.LFB2130
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L13-.LFB2130
	.uleb128 0
	.uleb128 .LEHB2-.LFB2130
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L14-.LFB2130
	.uleb128 0
	.uleb128 .LEHB3-.LFB2130
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2130:
	.section	.text$_ZN9HashTable4growEv,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN9HashTable4hashEPKs,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9HashTable4hashEPKs
	.def	_ZN9HashTable4hashEPKs;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HashTable4hashEPKs
_ZN9HashTable4hashEPKs:
.LFB2131:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
.L18:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L17
	movq	-16(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movswq	%ax, %rax
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	imulq	$1664525, %rax, %rax
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9HashTableC1Eii,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9HashTableC1Eii
	.def	_ZN9HashTableC1Eii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HashTableC1Eii
_ZN9HashTableC1Eii:
.LFB2134:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movl	%edx, -40(%rbp)
	movl	%r8d, -32(%rbp)
	movl	-40(%rbp), %eax
	cltq
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	cltq
	movq	-48(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-48(%rbp), %rax
	leaq	24(%rax), %rbx
	leaq	-86(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIsEC1Ev
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	shrq	%rax
	leaq	10(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	imulq	%rdx, %rax
	leaq	-86(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB4:
	call	_ZNSt6vectorIsSaIsEEC1EyRKS0_
.LEHE4:
	leaq	-86(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIsED1Ev
	movq	-48(%rbp), %rax
	leaq	48(%rax), %rbx
	leaq	-85(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIiEC1Ev
	movl	$-1, -84(%rbp)
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	-85(%rbp), %rcx
	leaq	-84(%rbp), %rdx
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB5:
	call	_ZNSt6vectorIiSaIiEEC1EyRKiRKS0_
.LEHE5:
	leaq	-85(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIiED1Ev
	jmp	.L25
.L23:
	movq	%rax, %rbx
	leaq	-86(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIsED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB6:
	call	_Unwind_Resume
.L24:
	movq	%rax, %rbx
	leaq	-85(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIiED1Ev
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIsSaIsEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
	nop
.LEHE6:
.L25:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2134:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2134-.LLSDACSB2134
.LLSDACSB2134:
	.uleb128 .LEHB4-.LFB2134
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L23-.LFB2134
	.uleb128 0
	.uleb128 .LEHB5-.LFB2134
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L24-.LFB2134
	.uleb128 0
	.uleb128 .LEHB6-.LFB2134
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2134:
	.section	.text$_ZN9HashTableC1Eii,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNK9HashTable4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9HashTable4sizeEv
	.def	_ZNK9HashTable4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9HashTable4sizeEv
_ZNK9HashTable4sizeEv:
.LFB2135:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9HashTable4findEPKsb,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9HashTable4findEPKsb
	.def	_ZN9HashTable4findEPKsb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HashTable4findEPKsb
_ZN9HashTable4findEPKsb:
.LFB2137:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	%r8d, %eax
	movb	%al, 0(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	(%rax,%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L29
	movq	-16(%rbp), %rcx
	call	_ZN9HashTable4growEv
.L29:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	call	_ZN9HashTable4hashEPKs
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rdx, %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -56(%rbp)
.L40:
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)
	cmpl	$-1, -84(%rbp)
	jne	.L30
	cmpb	$0, 0(%rbp)
	je	.L31
	movq	$0, -64(%rbp)
.L33:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L32
	movq	-64(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	imulq	%rdx, %rax
	movq	-64(%rbp), %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIsSaIsEEixEy
	movq	%rax, %rdx
	movzwl	(%rbx), %eax
	movw	%ax, (%rdx)
	addq	$1, -64(%rbp)
	jmp	.L33
.L32:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rbx
	leaq	1(%rbx), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEEixEy
	movl	%ebx, %edx
	movl	%edx, (%rax)
	movl	(%rax), %eax
	jmp	.L34
.L31:
	movl	$-1, %eax
	jmp	.L34
.L30:
	movb	$1, -65(%rbp)
	movq	$0, -80(%rbp)
.L37:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -80(%rbp)
	jnb	.L35
	movzbl	-65(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L35
	movl	-84(%rbp), %eax
	cltq
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	imulq	%rdx, %rax
	movq	-80(%rbp), %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIsSaIsEEixEy
	movzwl	(%rax), %edx
	movq	-80(%rbp), %rax
	leaq	(%rax,%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	setne	%al
	testb	%al, %al
	je	.L36
	movb	$0, -65(%rbp)
.L36:
	addq	$1, -80(%rbp)
	jmp	.L37
.L35:
	cmpb	$0, -65(%rbp)
	je	.L38
	movl	-84(%rbp), %eax
	jmp	.L34
.L38:
	addq	$1, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L40
	movq	$0, -56(%rbp)
	jmp	.L40
.L34:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9HashTable6getKeyEi,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9HashTable6getKeyEi
	.def	_ZNK9HashTable6getKeyEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9HashTable6getKeyEi
_ZNK9HashTable6getKeyEi:
.LFB2138:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	24(%rbp), %eax
	cltq
	movq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	imulq	%rdx, %rax
	movq	16(%rbp), %rdx
	leaq	24(%rdx), %rcx
	movq	%rax, %rdx
	call	_ZNKSt6vectorIsSaIsEEixEy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN13PermutohedralC1Eii,"x"
	.linkonce discard
	.align 2
	.globl	_ZN13PermutohedralC1Eii
	.def	_ZN13PermutohedralC1Eii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13PermutohedralC1Eii
_ZN13PermutohedralC1Eii:
.LFB2141:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movq	16(%rbp), %rax
	movl	$0, (%rax)
	movq	16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	16(%rbp), %rax
	movl	$0, 12(%rax)
	movq	16(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, 16(%rax)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	movl	32(%rbp), %edx
	movl	%edx, 4(%rax)
	movl	32(%rbp), %eax
	leal	1(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	negl	%eax
	cvtsi2ss	%eax, %xmm0
	movaps	%xmm0, %xmm1
	movss	.LC1(%rip), %xmm0
	call	powf
	movaps	%xmm0, %xmm1
	movss	.LC2(%rip), %xmm0
	addss	%xmm0, %xmm1
	movss	.LC2(%rip), %xmm0
	divss	%xmm1, %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, 16(%rax)
	movq	16(%rbp), %rax
	movl	(%rax), %edx
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	imull	%edx, %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L44
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	16(%rbp), %rax
	movl	(%rax), %edx
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	imull	%edx, %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L46
	jmp	.L48
.L44:
	call	__cxa_throw_bad_array_new_length
.L48:
	salq	$2, %rax
	jmp	.L49
.L46:
	call	__cxa_throw_bad_array_new_length
.L49:
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 32(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9HashTableD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9HashTableD1Ev
	.def	_ZN9HashTableD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9HashTableD1Ev
_ZN9HashTableD1Ev:
.LFB2145:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIiSaIiEED1Ev
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIsSaIsEED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN13Permutohedral4initEPKf,"x"
	.linkonce discard
	.align 2
	.globl	_ZN13Permutohedral4initEPKf
	.def	_ZN13Permutohedral4initEPKf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13Permutohedral4initEPKf
_ZN13Permutohedral4initEPKf:
.LFB2142:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$344, %rsp
	.seh_stackalloc	344
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 240(%rbp)
	movq	%rdx, 248(%rbp)
	movq	240(%rbp), %rax
	movl	(%rax), %edx
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movq	240(%rbp), %rax
	movl	4(%rax), %edx
	leaq	-96(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
.LEHB7:
	call	_ZN9HashTableC1Eii
.LEHE7:
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L52
	salq	$2, %rax
	movq	%rax, %rcx
.LEHB8:
	call	_Znay
	jmp	.L115
.L52:
	call	__cxa_throw_bad_array_new_length
.L115:
	movq	%rax, 128(%rbp)
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L54
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	jmp	.L116
.L54:
	call	__cxa_throw_bad_array_new_length
.L116:
	movq	%rax, 120(%rbp)
	movq	240(%rbp), %rax
	movl	4(%rax), %eax
	addl	$2, %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L56
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	jmp	.L117
.L56:
	call	__cxa_throw_bad_array_new_length
.L117:
	movq	%rax, 112(%rbp)
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movabsq	$4611686018427387900, %rdx
	cmpq	%rdx, %rax
	ja	.L58
	addq	%rax, %rax
	movq	%rax, %rcx
	call	_Znay
	jmp	.L118
.L58:
	call	__cxa_throw_bad_array_new_length
.L118:
	movq	%rax, 104(%rbp)
	movq	240(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	movabsq	$4611686018427387900, %rdx
	cmpq	%rdx, %rax
	ja	.L60
	addq	%rax, %rax
	movq	%rax, %rcx
	call	_Znay
	jmp	.L119
.L60:
	call	__cxa_throw_bad_array_new_length
.L119:
	movq	%rax, 96(%rbp)
	movq	240(%rbp), %rax
	movl	8(%rax), %edx
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	imull	%edx, %eax
	cltq
	movabsq	$4611686018427387900, %rdx
	cmpq	%rdx, %rax
	ja	.L62
	addq	%rax, %rax
	movq	%rax, %rcx
	call	_Znay
	jmp	.L120
.L62:
	call	__cxa_throw_bad_array_new_length
.L120:
	movq	%rax, 88(%rbp)
	movq	240(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L64
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	jmp	.L121
.L64:
	call	__cxa_throw_bad_array_new_length
.L121:
	movq	%rax, 80(%rbp)
	movl	$0, 204(%rbp)
.L71:
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, 204(%rbp)
	jge	.L66
	movl	$0, 200(%rbp)
.L68:
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	subl	204(%rbp), %eax
	cmpl	%eax, 200(%rbp)
	jge	.L67
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	imull	204(%rbp), %eax
	movl	200(%rbp), %edx
	addl	%edx, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	88(%rbp), %rax
	addq	%rdx, %rax
	movl	204(%rbp), %edx
	movw	%dx, (%rax)
	addl	$1, 200(%rbp)
	jmp	.L68
.L67:
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	subl	204(%rbp), %eax
	movl	%eax, 196(%rbp)
.L70:
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, 196(%rbp)
	jge	.L69
	movl	204(%rbp), %eax
	movl	%eax, %edx
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	imull	204(%rbp), %eax
	movl	196(%rbp), %ecx
	addl	%ecx, %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	88(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	addl	$1, 196(%rbp)
	jmp	.L70
.L69:
	addl	$1, 204(%rbp)
	jmp	.L71
.L66:
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, 76(%rbp)
	movl	$0, 192(%rbp)
.L73:
	movq	240(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, 192(%rbp)
	jge	.L72
	movl	192(%rbp), %eax
	leal	2(%rax), %edx
	movl	192(%rbp), %eax
	addl	$1, %eax
	imull	%edx, %eax
	cvtsi2sd	%eax, %xmm0
	call	sqrt
	movapd	%xmm0, %xmm1
	movsd	.LC4(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	cvtss2sd	76(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movl	192(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	80(%rbp), %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, 192(%rbp)
	jmp	.L73
.L72:
	movl	$0, 188(%rbp)
.L91:
	movq	240(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, 188(%rbp)
	jge	.L74
	movq	240(%rbp), %rax
	movl	4(%rax), %eax
	imull	188(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 64(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, 184(%rbp)
	movq	240(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, 180(%rbp)
.L76:
	cmpl	$0, 180(%rbp)
	jle	.L75
	movl	180(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	64(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	180(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	80(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 60(%rbp)
	cvtsi2ss	180(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	60(%rbp), %xmm1
	movl	180(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	128(%rbp), %rax
	addq	%rdx, %rax
	movss	184(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	movss	184(%rbp), %xmm0
	addss	60(%rbp), %xmm0
	movss	%xmm0, 184(%rbp)
	subl	$1, 180(%rbp)
	jmp	.L76
.L75:
	movq	128(%rbp), %rax
	movss	184(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	movss	.LC2(%rip), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 56(%rbp)
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 52(%rbp)
	movl	$0, 176(%rbp)
	movl	$0, 172(%rbp)
.L78:
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, 172(%rbp)
	jge	.L77
	movl	172(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	128(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	56(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, 48(%rbp)
	movl	48(%rbp), %eax
	movd	%eax, %xmm0
	call	ceilf
	movaps	%xmm0, %xmm1
	movss	52(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 44(%rbp)
	movl	48(%rbp), %eax
	movd	%eax, %xmm0
	call	floorf
	movaps	%xmm0, %xmm1
	movss	52(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 40(%rbp)
	movl	172(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	128(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	44(%rbp), %xmm0
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	172(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	128(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	subss	40(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	movw	%ax, 38(%rbp)
	movss	44(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movswl	%ax, %edx
	movswl	38(%rbp), %eax
	imull	%eax, %edx
	movss	40(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	cwtl
	movswl	38(%rbp), %ecx
	movl	$1, %r8d
	subl	%ecx, %r8d
	movl	%r8d, %ecx
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, 32(%rbp)
	movl	172(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	120(%rbp), %rax
	addq	%rdx, %rax
	movl	32(%rbp), %edx
	movl	%edx, (%rax)
	cvtsi2ss	176(%rbp), %xmm1
	cvtsi2ss	32(%rbp), %xmm0
	mulss	56(%rbp), %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 176(%rbp)
	addl	$1, 172(%rbp)
	jmp	.L78
.L77:
	movl	$0, -24(%rbp)
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	104(%rbp), %rax
	addq	%rax, %rdx
	leaq	-24(%rbp), %rcx
	movq	104(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt4fillIPsiEvT_S1_RKT0_
	movl	$0, 168(%rbp)
.L82:
	movq	240(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, 168(%rbp)
	jge	.L79
	movl	168(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	128(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	168(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 24(%rbp)
	movl	168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, 164(%rbp)
.L81:
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, 164(%rbp)
	jge	.L80
	movl	168(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	128(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	168(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	movl	164(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	128(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	164(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm2
	subss	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %eax
	movw	%ax, 22(%rbp)
	movl	168(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	104(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movzwl	22(%rbp), %eax
	addl	%eax, %edx
	movl	168(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	104(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	movl	164(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	104(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movzwl	22(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	1(%rax), %edx
	movl	164(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	104(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	addl	$1, 164(%rbp)
	jmp	.L81
.L80:
	addl	$1, 168(%rbp)
	jmp	.L82
.L79:
	movl	$0, 160(%rbp)
.L84:
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, 160(%rbp)
	jge	.L83
	movl	160(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	104(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movl	176(%rbp), %eax
	addl	%eax, %edx
	movl	160(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	104(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	movl	160(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	104(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	shrw	$15, %ax
	movzbl	%al, %eax
	movw	%ax, 20(%rbp)
	movl	160(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	104(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cwtl
	movq	240(%rbp), %rdx
	movl	4(%rdx), %edx
	cmpl	%edx, %eax
	setg	%al
	movzbl	%al, %eax
	movw	%ax, 18(%rbp)
	movl	160(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	104(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	%eax, %ecx
	movzwl	20(%rbp), %edx
	movzwl	18(%rbp), %eax
	subl	%eax, %edx
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	imull	%edx, %eax
	leal	(%rcx,%rax), %edx
	movl	160(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	104(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	movl	160(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	240(%rbp), %rax
	movl	8(%rax), %edx
	movswl	20(%rbp), %eax
	imull	%eax, %edx
	movq	240(%rbp), %rax
	movl	8(%rax), %r8d
	movswl	18(%rbp), %eax
	imull	%r8d, %eax
	subl	%eax, %edx
	movl	160(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %r8
	movq	120(%rbp), %rax
	addq	%r8, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, 160(%rbp)
	jmp	.L84
.L83:
	movl	$0, -20(%rbp)
	movq	240(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,4), %rdx
	movq	112(%rbp), %rax
	addq	%rax, %rdx
	leaq	-20(%rbp), %rcx
	movq	112(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt4fillIPfiEvT_S1_RKT0_
	movl	$0, 156(%rbp)
.L86:
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, 156(%rbp)
	jge	.L85
	movl	156(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	128(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	156(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cvtsi2ss	%eax, %xmm1
	subss	%xmm1, %xmm0
	movss	56(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, 12(%rbp)
	movq	240(%rbp), %rax
	movl	4(%rax), %edx
	movl	156(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	104(%rbp), %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cwtl
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	112(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	240(%rbp), %rax
	movl	4(%rax), %edx
	movl	156(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	104(%rbp), %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cwtl
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	112(%rbp), %rax
	addq	%rdx, %rax
	addss	12(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	240(%rbp), %rax
	movl	8(%rax), %edx
	movl	156(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	104(%rbp), %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cwtl
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	112(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	240(%rbp), %rax
	movl	8(%rax), %edx
	movl	156(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	104(%rbp), %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cwtl
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	112(%rbp), %rax
	addq	%rdx, %rax
	subss	12(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, 156(%rbp)
	jmp	.L86
.L85:
	movq	112(%rbp), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	112(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	112(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	$0, 152(%rbp)
.L90:
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, 152(%rbp)
	jge	.L87
	movl	$0, 148(%rbp)
.L89:
	movq	240(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, 148(%rbp)
	jge	.L88
	movl	148(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %r8d
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	imull	152(%rbp), %eax
	movl	%eax, %edx
	movl	148(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	104(%rbp), %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cwtl
	addl	%edx, %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	88(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	leal	(%r8,%rax), %edx
	movl	148(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	96(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	addl	$1, 148(%rbp)
	jmp	.L89
.L88:
	movq	96(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZN9HashTable4findEPKsb
	movl	%eax, %r8d
	movq	240(%rbp), %rax
	movq	24(%rax), %rdx
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	imull	188(%rbp), %eax
	movl	152(%rbp), %ecx
	addl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	leal	1(%r8), %edx
	movl	%edx, (%rax)
	movl	152(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	112(%rbp), %rax
	addq	%rax, %rdx
	movq	240(%rbp), %rax
	movq	32(%rax), %rcx
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	imull	188(%rbp), %eax
	movl	152(%rbp), %r8d
	addl	%r8d, %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	addl	$1, 152(%rbp)
	jmp	.L90
.L87:
	addl	$1, 188(%rbp)
	jmp	.L91
.L74:
	cmpq	$0, 128(%rbp)
	je	.L92
	movq	128(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L92:
	cmpq	$0, 120(%rbp)
	je	.L93
	movq	120(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L93:
	cmpq	$0, 112(%rbp)
	je	.L94
	movq	112(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L94:
	cmpq	$0, 104(%rbp)
	je	.L95
	movq	104(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L95:
	cmpq	$0, 96(%rbp)
	je	.L96
	movq	96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L96:
	cmpq	$0, 88(%rbp)
	je	.L97
	movq	88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L97:
	cmpq	$0, 80(%rbp)
	je	.L98
	movq	80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L98:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9HashTable4sizeEv
	movl	%eax, %edx
	movq	240(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	240(%rbp), %rax
	movl	8(%rax), %edx
	movq	240(%rbp), %rax
	movl	12(%rax), %eax
	imull	%edx, %eax
	addl	%eax, %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L99
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	jmp	.L122
.L99:
	call	__cxa_throw_bad_array_new_length
.L122:
	movq	%rax, %rdx
	movq	240(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movabsq	$4611686018427387900, %rdx
	cmpq	%rdx, %rax
	ja	.L101
	addq	%rax, %rax
	movq	%rax, %rcx
	call	_Znay
	jmp	.L123
.L101:
	call	__cxa_throw_bad_array_new_length
.L123:
	movq	%rax, 0(%rbp)
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movabsq	$4611686018427387900, %rdx
	cmpq	%rdx, %rax
	ja	.L103
	addq	%rax, %rax
	movq	%rax, %rcx
	call	_Znay
	jmp	.L124
.L103:
	call	__cxa_throw_bad_array_new_length
.L124:
	movq	%rax, -8(%rbp)
	movl	$0, 144(%rbp)
.L110:
	movq	240(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, 144(%rbp)
	jge	.L105
	movl	$0, 140(%rbp)
.L109:
	movq	240(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, 140(%rbp)
	jge	.L106
	movl	140(%rbp), %edx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK9HashTable6getKeyEi
	movq	%rax, -16(%rbp)
	movl	$0, 136(%rbp)
.L108:
	movq	240(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, 136(%rbp)
	jge	.L107
	movl	136(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	leal	-1(%rax), %edx
	movl	136(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	0(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	movl	136(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	leal	1(%rax), %edx
	movl	136(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	addl	$1, 136(%rbp)
	jmp	.L108
.L107:
	movl	144(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movq	240(%rbp), %rax
	movl	4(%rax), %eax
	addl	%eax, %edx
	movl	144(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	0(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	movl	144(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	movq	240(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movl	144(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movw	%dx, (%rax)
	movq	0(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_ZN9HashTable4findEPKsb
	movl	%eax, %r8d
	movq	240(%rbp), %rax
	movq	40(%rax), %rdx
	movq	240(%rbp), %rax
	movl	12(%rax), %eax
	imull	144(%rbp), %eax
	movl	140(%rbp), %ecx
	addl	%ecx, %eax
	addl	%eax, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	leal	1(%r8), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_ZN9HashTable4findEPKsb
.LEHE8:
	movl	%eax, %r8d
	movq	240(%rbp), %rax
	movq	40(%rax), %rdx
	movq	240(%rbp), %rax
	movl	12(%rax), %eax
	imull	144(%rbp), %eax
	movl	140(%rbp), %ecx
	addl	%ecx, %eax
	addl	%eax, %eax
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leal	1(%r8), %edx
	movl	%edx, (%rax)
	addl	$1, 140(%rbp)
	jmp	.L109
.L106:
	addl	$1, 144(%rbp)
	jmp	.L110
.L105:
	cmpq	$0, 0(%rbp)
	je	.L111
	movq	0(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L111:
	cmpq	$0, -8(%rbp)
	je	.L112
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L112:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9HashTableD1Ev
	jmp	.L125
.L114:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9HashTableD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB9:
	call	_Unwind_Resume
	nop
.LEHE9:
.L125:
	addq	$344, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2142:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2142-.LLSDACSB2142
.LLSDACSB2142:
	.uleb128 .LEHB7-.LFB2142
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB2142
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L114-.LFB2142
	.uleb128 0
	.uleb128 .LEHB9-.LFB2142
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE2142:
	.section	.text$_ZN13Permutohedral4initEPKf,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN13Permutohedral7computeEPKfibPf,"x"
	.linkonce discard
	.align 2
	.globl	_ZN13Permutohedral7computeEPKfibPf
	.def	_ZN13Permutohedral7computeEPKfibPf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13Permutohedral7computeEPKfibPf
_ZN13Permutohedral7computeEPKfibPf:
.LFB2146:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$144, %rsp
	.seh_stackalloc	144
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	%r9d, %eax
	movb	%al, 40(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	addl	$2, %eax
	imull	32(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L127
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	addl	$2, %eax
	imull	32(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L129
	jmp	.L155
.L127:
	call	__cxa_throw_bad_array_new_length
.L155:
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -16(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -100(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	addl	$2, %eax
	imull	32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	leaq	-100(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt4fillIPffEvT_S1_RKT0_
	pxor	%xmm0, %xmm0
	movss	%xmm0, -96(%rbp)
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	addl	$2, %eax
	imull	32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt4fillIPffEvT_S1_RKT0_
	movl	$0, -20(%rbp)
	jmp	.L136
.L129:
	call	__cxa_throw_bad_array_new_length
.L136:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L131
	movl	$0, -24(%rbp)
.L135:
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jge	.L132
	movq	16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	imull	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	imull	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -60(%rbp)
	movl	$0, -28(%rbp)
.L134:
	movl	-28(%rbp), %eax
	cmpl	32(%rbp), %eax
	jge	.L133
	movl	-56(%rbp), %eax
	imull	32(%rbp), %eax
	movl	-28(%rbp), %edx
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-20(%rbp), %eax
	imull	32(%rbp), %eax
	movl	-28(%rbp), %edx
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	mulss	-60(%rbp), %xmm0
	movl	-56(%rbp), %eax
	imull	32(%rbp), %eax
	movl	-28(%rbp), %edx
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -28(%rbp)
	jmp	.L134
.L133:
	addl	$1, -24(%rbp)
	jmp	.L135
.L132:
	addl	$1, -20(%rbp)
	jmp	.L136
.L131:
	cmpb	$0, 40(%rbp)
	je	.L137
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	jmp	.L138
.L137:
	movl	$0, %eax
.L138:
	movl	%eax, -32(%rbp)
.L146:
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jg	.L139
	cmpl	$0, -32(%rbp)
	js	.L139
	movl	$0, -36(%rbp)
.L143:
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jge	.L140
	movq	16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	imull	-32(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	%ecx, %eax
	addl	%eax, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	16(%rbp), %rax
	movl	12(%rax), %eax
	imull	-32(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	%ecx, %eax
	addl	%eax, %eax
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	$0, -40(%rbp)
.L142:
	movl	-40(%rbp), %eax
	cmpl	32(%rbp), %eax
	jge	.L141
	movl	-36(%rbp), %eax
	addl	$1, %eax
	imull	32(%rbp), %eax
	movl	-40(%rbp), %edx
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movl	-64(%rbp), %eax
	imull	32(%rbp), %eax
	movl	-40(%rbp), %edx
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm2
	movl	-68(%rbp), %eax
	imull	32(%rbp), %eax
	movl	-40(%rbp), %edx
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	addss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm2
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movl	-36(%rbp), %eax
	addl	$1, %eax
	imull	32(%rbp), %eax
	movl	-40(%rbp), %edx
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -40(%rbp)
	jmp	.L142
.L141:
	addl	$1, -36(%rbp)
	jmp	.L143
.L140:
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpb	$0, 40(%rbp)
	je	.L144
	subl	$1, -32(%rbp)
	jmp	.L146
.L144:
	addl	$1, -32(%rbp)
	jmp	.L146
.L139:
	movl	$0, -92(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	imull	32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	48(%rbp), %rax
	addq	%rax, %rdx
	leaq	-92(%rbp), %rcx
	movq	48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt4fillIPfiEvT_S1_RKT0_
	movl	$0, -44(%rbp)
.L152:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jge	.L147
	movl	$0, -48(%rbp)
.L151:
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jge	.L148
	movq	16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	imull	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	addl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)
	movq	16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	16(%rbp), %rax
	movl	8(%rax), %eax
	imull	-44(%rbp), %eax
	movl	-48(%rbp), %ecx
	addl	%ecx, %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -88(%rbp)
	movl	$0, -52(%rbp)
.L150:
	movl	-52(%rbp), %eax
	cmpl	32(%rbp), %eax
	jge	.L149
	movl	-44(%rbp), %eax
	imull	32(%rbp), %eax
	movl	-52(%rbp), %edx
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	48(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-84(%rbp), %eax
	imull	32(%rbp), %eax
	movl	-52(%rbp), %edx
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-88(%rbp), %xmm2
	movq	16(%rbp), %rax
	movss	16(%rax), %xmm0
	mulss	%xmm2, %xmm0
	movl	-44(%rbp), %eax
	imull	32(%rbp), %eax
	movl	-52(%rbp), %edx
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	48(%rbp), %rax
	addq	%rdx, %rax
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -52(%rbp)
	jmp	.L150
.L149:
	addl	$1, -48(%rbp)
	jmp	.L151
.L148:
	addl	$1, -44(%rbp)
	jmp	.L152
.L147:
	cmpq	$0, -8(%rbp)
	je	.L153
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L153:
	cmpq	$0, -16(%rbp)
	je	.L156
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L156:
	nop
	addq	$144, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2150:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	call	__main
	movl	$1048576, -4(%rbp)
	movl	$5, -8(%rbp)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L158
	salq	$2, %rax
	movq	%rax, %rcx
.LEHB10:
	call	_Znay
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L160
	jmp	.L167
.L158:
	call	__cxa_throw_bad_array_new_length
.L167:
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -24(%rbp)
	movl	$3, -28(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L162
	jmp	.L168
.L160:
	call	__cxa_throw_bad_array_new_length
.L168:
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -40(%rbp)
	movl	$48, %ecx
	call	_Znwy
.LEHE10:
	movq	%rax, %rbx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %r8d
	movl	%eax, %edx
	movq	%rbx, %rcx
.LEHB11:
	call	_ZN13PermutohedralC1Eii
.LEHE11:
	jmp	.L169
.L162:
.LEHB12:
	call	__cxa_throw_bad_array_new_length
.L169:
	movq	%rbx, -48(%rbp)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN13Permutohedral4initEPKf
	movl	-28(%rbp), %r8d
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 32(%rsp)
	movl	$0, %r9d
	movq	%rax, %rcx
	call	_ZN13Permutohedral7computeEPKfibPf
	movl	$0, %eax
	jmp	.L170
.L166:
	movq	%rax, %rsi
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	movq	%rsi, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
.LEHE12:
.L170:
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2150-.LLSDACSB2150
.LLSDACSB2150:
	.uleb128 .LEHB10-.LFB2150
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB2150
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L166-.LFB2150
	.uleb128 0
	.uleb128 .LEHB12-.LFB2150
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE2150:
	.text
	.seh_endproc
	.section	.text$_ZNSaIsEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIsEC1Ev
	.def	_ZNSaIsEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIsEC1Ev
_ZNSaIsEC1Ev:
.LFB2389:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIsEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIsED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIsED2Ev
	.def	_ZNSaIsED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIsED2Ev
_ZNSaIsED2Ev:
.LFB2391:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIsED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIsED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIsED1Ev
	.def	_ZNSaIsED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIsED1Ev
_ZNSaIsED1Ev:
.LFB2392:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIsED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIsSaIsEEC1EyRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIsSaIsEEC1EyRKS0_
	.def	_ZNSt6vectorIsSaIsEEC1EyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIsSaIsEEC1EyRKS0_
_ZNSt6vectorIsSaIsEEC1EyRKS0_:
.LFB2395:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB13:
	call	_ZNSt12_Vector_baseIsSaIsEEC2EyRKS0_
.LEHE13:
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB14:
	call	_ZNSt6vectorIsSaIsEE21_M_default_initializeEy
.LEHE14:
	jmp	.L177
.L176:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIsSaIsEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB15:
	call	_Unwind_Resume
	nop
.LEHE15:
.L177:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2395:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2395-.LLSDACSB2395
.LLSDACSB2395:
	.uleb128 .LEHB13-.LFB2395
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB2395
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L176-.LFB2395
	.uleb128 0
	.uleb128 .LEHB15-.LFB2395
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE2395:
	.section	.text$_ZNSt6vectorIsSaIsEEC1EyRKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIsSaIsEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIsSaIsEED1Ev
	.def	_ZNSt6vectorIsSaIsEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIsSaIsEED1Ev
_ZNSt6vectorIsSaIsEED1Ev:
.LFB2398:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPssEvT_S1_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIsSaIsEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2398:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2398-.LLSDACSB2398
.LLSDACSB2398:
.LLSDACSE2398:
	.section	.text$_ZNSt6vectorIsSaIsEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIsSaIsEE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIsSaIsEE5beginEv
	.def	_ZNSt6vectorIsSaIsEE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIsSaIsEE5beginEv
_ZNSt6vectorIsSaIsEE5beginEv:
.LFB2399:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIsSaIsEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIsSaIsEE3endEv
	.def	_ZNSt6vectorIsSaIsEE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIsSaIsEE3endEv
_ZNSt6vectorIsSaIsEE3endEv:
.LFB2400:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_,"x"
	.linkonce discard
	.globl	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_
	.def	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET0_T_S8_S7_:
.LFB2401:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEET_S7_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEET_S7_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET1_T0_S8_S7_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIiEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIiEC1Ev
	.def	_ZNSaIiEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIiEC1Ev
_ZNSaIiEC1Ev:
.LFB2404:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIiED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIiED2Ev
	.def	_ZNSaIiED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIiED2Ev
_ZNSaIiED2Ev:
.LFB2406:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIiED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIiED1Ev
	.def	_ZNSaIiED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIiED1Ev
_ZNSaIiED1Ev:
.LFB2407:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEEC1EyRKiRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEEC1EyRKiRKS0_
	.def	_ZNSt6vectorIiSaIiEEC1EyRKiRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEEC1EyRKiRKS0_
_ZNSt6vectorIiSaIiEEC1EyRKiRKS0_:
.LFB2410:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB16:
	call	_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_
.LEHE16:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB17:
	call	_ZNSt6vectorIiSaIiEE18_M_fill_initializeEyRKi
.LEHE17:
	jmp	.L191
.L190:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB18:
	call	_Unwind_Resume
	nop
.LEHE18:
.L191:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2410:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2410-.LLSDACSB2410
.LLSDACSB2410:
	.uleb128 .LEHB16-.LFB2410
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB2410
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L190-.LFB2410
	.uleb128 0
	.uleb128 .LEHB18-.LFB2410
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE2410:
	.section	.text$_ZNSt6vectorIiSaIiEEC1EyRKiRKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEED1Ev
	.def	_ZNSt6vectorIiSaIiEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEED1Ev
_ZNSt6vectorIiSaIiEED1Ev:
.LFB2413:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2413:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2413-.LLSDACSB2413
.LLSDACSB2413:
.LLSDACSE2413:
	.section	.text$_ZNSt6vectorIiSaIiEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE4swapERS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEE4swapERS1_
	.def	_ZNSt6vectorIiSaIiEE4swapERS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE4swapERS1_
_ZNSt6vectorIiSaIiEE4swapERS1_:
.LFB2414:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE10_S_on_swapERS1_S3_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2414:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2414-.LLSDACSB2414
.LLSDACSB2414:
.LLSDACSE2414:
	.section	.text$_ZNSt6vectorIiSaIiEE4swapERS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIsSaIsEE4swapERS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIsSaIsEE4swapERS1_
	.def	_ZNSt6vectorIsSaIsEE4swapERS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIsSaIsEE4swapERS1_
_ZNSt6vectorIsSaIsEE4swapERS1_:
.LFB2415:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIsSaIsEE12_Vector_impl12_M_swap_dataERS2_
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx14__alloc_traitsISaIsEsE10_S_on_swapERS1_S3_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2415:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2415-.LLSDACSB2415
.LLSDACSB2415:
.LLSDACSE2415:
	.section	.text$_ZNSt6vectorIsSaIsEE4swapERS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEEixEy
	.def	_ZNSt6vectorIiSaIiEEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEEixEy
_ZNSt6vectorIiSaIiEEixEy:
.LFB2416:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$2, %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIsSaIsEEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIsSaIsEEixEy
	.def	_ZNSt6vectorIsSaIsEEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIsSaIsEEixEy
_ZNSt6vectorIsSaIsEEixEy:
.LFB2420:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIsSaIsEEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIsSaIsEEixEy
	.def	_ZNKSt6vectorIsSaIsEEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIsSaIsEEixEy
_ZNKSt6vectorIsSaIsEEixEy:
.LFB2421:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4fillIPsiEvT_S1_RKT0_,"x"
	.linkonce discard
	.globl	_ZSt4fillIPsiEvT_S1_RKT0_
	.def	_ZSt4fillIPsiEvT_S1_RKT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4fillIPsiEvT_S1_RKT0_
_ZSt4fillIPsiEvT_S1_RKT0_:
.LFB2422:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPsET_S1_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__niter_baseIPsET_S1_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt8__fill_aIPsiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4fillIPfiEvT_S1_RKT0_,"x"
	.linkonce discard
	.globl	_ZSt4fillIPfiEvT_S1_RKT0_
	.def	_ZSt4fillIPfiEvT_S1_RKT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4fillIPfiEvT_S1_RKT0_
_ZSt4fillIPfiEvT_S1_RKT0_:
.LFB2423:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPfET_S1_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__niter_baseIPfET_S1_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt8__fill_aIPfiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4fillIPffEvT_S1_RKT0_,"x"
	.linkonce discard
	.globl	_ZSt4fillIPffEvT_S1_RKT0_
	.def	_ZSt4fillIPffEvT_S1_RKT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4fillIPffEvT_S1_RKT0_
_ZSt4fillIPffEvT_S1_RKT0_:
.LFB2424:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPfET_S1_
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZSt12__niter_baseIPfET_S1_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %r8
	movq	%rbx, %rdx
	call	_ZSt8__fill_aIPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIsEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIsEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIsEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIsEC2Ev
_ZN9__gnu_cxx13new_allocatorIsEC2Ev:
.LFB2534:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIsED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIsED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIsED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIsED2Ev
_ZN9__gnu_cxx13new_allocatorIsED2Ev:
.LFB2537:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIsSaIsEE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIsSaIsEE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIsSaIsEE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIsSaIsEE12_Vector_implD1Ev
_ZNSt12_Vector_baseIsSaIsEE12_Vector_implD1Ev:
.LFB2542:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIsED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIsSaIsEEC2EyRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIsSaIsEEC2EyRKS0_
	.def	_ZNSt12_Vector_baseIsSaIsEEC2EyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIsSaIsEEC2EyRKS0_
_ZNSt12_Vector_baseIsSaIsEEC2EyRKS0_:
.LFB2543:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1ERKS0_
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB19:
	call	_ZNSt12_Vector_baseIsSaIsEE17_M_create_storageEy
.LEHE19:
	jmp	.L210
.L209:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIsSaIsEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB20:
	call	_Unwind_Resume
	nop
.LEHE20:
.L210:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2543:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2543-.LLSDACSB2543
.LLSDACSB2543:
	.uleb128 .LEHB19-.LFB2543
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L209-.LFB2543
	.uleb128 0
	.uleb128 .LEHB20-.LFB2543
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE2543:
	.section	.text$_ZNSt12_Vector_baseIsSaIsEEC2EyRKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIsSaIsEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIsSaIsEED2Ev
	.def	_ZNSt12_Vector_baseIsSaIsEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIsSaIsEED2Ev
_ZNSt12_Vector_baseIsSaIsEED2Ev:
.LFB2546:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	%rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsy
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIsSaIsEE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2546:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2546-.LLSDACSB2546
.LLSDACSB2546:
.LLSDACSE2546:
	.section	.text$_ZNSt12_Vector_baseIsSaIsEED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIsSaIsEE21_M_default_initializeEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIsSaIsEE21_M_default_initializeEy
	.def	_ZNSt6vectorIsSaIsEE21_M_default_initializeEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIsSaIsEE21_M_default_initializeEy
_ZNSt6vectorIsSaIsEE21_M_default_initializeEy:
.LFB2548:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt27__uninitialized_default_n_aIPsysET_S1_T0_RSaIT1_E
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv:
.LFB2549:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPssEvT_S1_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPssEvT_S1_RSaIT0_E
	.def	_ZSt8_DestroyIPssEvT_S1_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPssEvT_S1_RSaIT0_E
_ZSt8_DestroyIPssEvT_S1_RSaIT0_E:
.LFB2550:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIPsEvT_S1_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_
	.def	_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_
_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_:
.LFB2553:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEET_S7_,"x"
	.linkonce discard
	.globl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEET_S7_
	.def	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEET_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEET_S7_
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEEET_S7_:
.LFB2554:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET1_T0_S8_S7_,"x"
	.linkonce discard
	.globl	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET1_T0_S8_S7_
	.def	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET1_T0_S8_S7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET1_T0_S8_S7_
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEES6_ET1_T0_S8_S7_:
.LFB2555:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPsSt6vectorIsSaIsEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	movq	%rax, %rsi
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt12__niter_baseIPsSt6vectorIsSaIsEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	movq	%rax, %rbx
	movq	32(%rbp), %rcx
	call	_ZSt12__niter_baseIPsSt6vectorIsSaIsEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt13__copy_move_aILb0EPsS0_ET1_T0_S2_S1_
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIiEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIiEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIiEC2Ev
_ZN9__gnu_cxx13new_allocatorIiEC2Ev:
.LFB2557:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIiED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.def	_ZN9__gnu_cxx13new_allocatorIiED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIiED2Ev
_ZN9__gnu_cxx13new_allocatorIiED2Ev:
.LFB2560:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev:
.LFB2565:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIiED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_
	.def	_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_
_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_:
.LFB2566:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB21:
	call	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEy
.LEHE21:
	jmp	.L227
.L226:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB22:
	call	_Unwind_Resume
	nop
.LEHE22:
.L227:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2566:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2566-.LLSDACSB2566
.LLSDACSB2566:
	.uleb128 .LEHB21-.LFB2566
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L226-.LFB2566
	.uleb128 0
	.uleb128 .LEHB22-.LFB2566
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE2566:
	.section	.text$_ZNSt12_Vector_baseIiSaIiEEC2EyRKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.def	_ZNSt12_Vector_baseIiSaIiEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEED2Ev
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB2569:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2569:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2569-.LLSDACSB2569
.LLSDACSB2569:
.LLSDACSE2569:
	.section	.text$_ZNSt12_Vector_baseIiSaIiEED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIiSaIiEE18_M_fill_initializeEyRKi,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIiSaIiEE18_M_fill_initializeEyRKi
	.def	_ZNSt6vectorIiSaIiEE18_M_fill_initializeEyRKi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIiSaIiEE18_M_fill_initializeEyRKi
_ZNSt6vectorIiSaIiEE18_M_fill_initializeEyRKi:
.LFB2571:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %r8
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt24__uninitialized_fill_n_aIPiyiiET_S1_T0_RKT1_RSaIT2_E
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB2572:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.def	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E:
.LFB2573:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIPiEvT_S1_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_
	.def	_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_
_ZNSt12_Vector_baseIiSaIiEE12_Vector_impl12_M_swap_dataERS2_:
.LFB2574:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4swapIPiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	movq	24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZSt4swapIPiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	movq	24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZSt4swapIPiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaIiEiE10_S_on_swapERS1_S3_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE10_S_on_swapERS1_S3_
	.def	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE10_S_on_swapERS1_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx14__alloc_traitsISaIiEiE10_S_on_swapERS1_S3_
_ZN9__gnu_cxx14__alloc_traitsISaIiEiE10_S_on_swapERS1_S3_:
.LFB2575:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt15__alloc_on_swapISaIiEEvRT_S2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIsSaIsEE12_Vector_impl12_M_swap_dataERS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIsSaIsEE12_Vector_impl12_M_swap_dataERS2_
	.def	_ZNSt12_Vector_baseIsSaIsEE12_Vector_impl12_M_swap_dataERS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIsSaIsEE12_Vector_impl12_M_swap_dataERS2_
_ZNSt12_Vector_baseIsSaIsEE12_Vector_impl12_M_swap_dataERS2_:
.LFB2576:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4swapIPsENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	movq	24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZSt4swapIPsENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	movq	24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rcx
	call	_ZSt4swapIPsENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaIsEsE10_S_on_swapERS1_S3_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx14__alloc_traitsISaIsEsE10_S_on_swapERS1_S3_
	.def	_ZN9__gnu_cxx14__alloc_traitsISaIsEsE10_S_on_swapERS1_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx14__alloc_traitsISaIsEsE10_S_on_swapERS1_S3_
_ZN9__gnu_cxx14__alloc_traitsISaIsEsE10_S_on_swapERS1_S3_:
.LFB2577:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt15__alloc_on_swapISaIsEEvRT_S2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPsET_S1_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPsET_S1_
	.def	_ZSt12__niter_baseIPsET_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPsET_S1_
_ZSt12__niter_baseIPsET_S1_:
.LFB2583:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8__fill_aIPsiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"x"
	.linkonce discard
	.globl	_ZSt8__fill_aIPsiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.def	_ZSt8__fill_aIPsiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8__fill_aIPsiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
_ZSt8__fill_aIPsiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB2584:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L241:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L242
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movw	%dx, (%rax)
	addq	$2, 16(%rbp)
	jmp	.L241
.L242:
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPfET_S1_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPfET_S1_
	.def	_ZSt12__niter_baseIPfET_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPfET_S1_
_ZSt12__niter_baseIPfET_S1_:
.LFB2585:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8__fill_aIPfiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"x"
	.linkonce discard
	.globl	_ZSt8__fill_aIPfiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.def	_ZSt8__fill_aIPfiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8__fill_aIPfiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
_ZSt8__fill_aIPfiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB2586:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L247:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L248
	cvtsi2ss	-4(%rbp), %xmm0
	movq	16(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$4, 16(%rbp)
	jmp	.L247
.L248:
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8__fill_aIPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"x"
	.linkonce discard
	.globl	_ZSt8__fill_aIPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.def	_ZSt8__fill_aIPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8__fill_aIPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
_ZSt8__fill_aIPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB2587:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -4(%rbp)
.L251:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L252
	movq	16(%rbp), %rax
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
	addq	$4, 16(%rbp)
	jmp	.L251
.L252:
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1ERKS0_
	.def	_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1ERKS0_
_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1ERKS0_:
.LFB2624:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaIsEC2ERKS_
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIsSaIsEE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIsSaIsEE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseIsSaIsEE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIsSaIsEE17_M_create_storageEy
_ZNSt12_Vector_baseIsSaIsEE17_M_create_storageEy:
.LFB2625:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEy
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsy
	.def	_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsy
_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsy:
.LFB2626:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L257
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psy
.L257:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt27__uninitialized_default_n_aIPsysET_S1_T0_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt27__uninitialized_default_n_aIPsysET_S1_T0_RSaIT1_E
	.def	_ZSt27__uninitialized_default_n_aIPsysET_S1_T0_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt27__uninitialized_default_n_aIPsysET_S1_T0_RSaIT1_E
_ZSt27__uninitialized_default_n_aIPsysET_S1_T0_RSaIT1_E:
.LFB2627:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt25__uninitialized_default_nIPsyET_S1_T0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPsEvT_S1_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPsEvT_S1_
	.def	_ZSt8_DestroyIPsEvT_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPsEvT_S1_
_ZSt8_DestroyIPsEvT_S1_:
.LFB2628:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPsEEvT_S3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPsSt6vectorIsSaIsEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPsSt6vectorIsSaIsEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.def	_ZSt12__niter_baseIPsSt6vectorIsSaIsEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPsSt6vectorIsSaIsEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
_ZSt12__niter_baseIPsSt6vectorIsSaIsEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE:
.LFB2629:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv
	movq	(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt13__copy_move_aILb0EPsS0_ET1_T0_S2_S1_,"x"
	.linkonce discard
	.globl	_ZSt13__copy_move_aILb0EPsS0_ET1_T0_S2_S1_
	.def	_ZSt13__copy_move_aILb0EPsS0_ET1_T0_S2_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt13__copy_move_aILb0EPsS0_ET1_T0_S2_S1_
_ZSt13__copy_move_aILb0EPsS0_ET1_T0_S2_S1_:
.LFB2630:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	.def	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_:
.LFB2633:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaIiEC2ERKS_
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEy
_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEy:
.LFB2634:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy
	.def	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPiy:
.LFB2635:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L269
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Piy
.L269:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt24__uninitialized_fill_n_aIPiyiiET_S1_T0_RKT1_RSaIT2_E,"x"
	.linkonce discard
	.globl	_ZSt24__uninitialized_fill_n_aIPiyiiET_S1_T0_RKT1_RSaIT2_E
	.def	_ZSt24__uninitialized_fill_n_aIPiyiiET_S1_T0_RKT1_RSaIT2_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt24__uninitialized_fill_n_aIPiyiiET_S1_T0_RKT1_RSaIT2_E
_ZSt24__uninitialized_fill_n_aIPiyiiET_S1_T0_RKT1_RSaIT2_E:
.LFB2636:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt20uninitialized_fill_nIPiyiET_S1_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPiEvT_S1_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPiEvT_S1_
	.def	_ZSt8_DestroyIPiEvT_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPiEvT_S1_
_ZSt8_DestroyIPiEvT_S1_:
.LFB2637:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_
	.def	_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_
_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_:
.LFB2639:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4swapIPiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_,"x"
	.linkonce discard
	.globl	_ZSt4swapIPiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	.def	_ZSt4swapIPiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4swapIPiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
_ZSt4swapIPiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_:
.LFB2638:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt15__alloc_on_swapISaIiEEvRT_S2_,"x"
	.linkonce discard
	.globl	_ZSt15__alloc_on_swapISaIiEEvRT_S2_
	.def	_ZSt15__alloc_on_swapISaIiEEvRT_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt15__alloc_on_swapISaIiEEvRT_S2_
_ZSt15__alloc_on_swapISaIiEEvRT_S2_:
.LFB2640:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18__do_alloc_on_swapISaIiEEvRT_S2_St17integral_constantIbLb0EE
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4moveIRPsEONSt16remove_referenceIT_E4typeEOS3_,"x"
	.linkonce discard
	.globl	_ZSt4moveIRPsEONSt16remove_referenceIT_E4typeEOS3_
	.def	_ZSt4moveIRPsEONSt16remove_referenceIT_E4typeEOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIRPsEONSt16remove_referenceIT_E4typeEOS3_
_ZSt4moveIRPsEONSt16remove_referenceIT_E4typeEOS3_:
.LFB2642:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4swapIPsENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_,"x"
	.linkonce discard
	.globl	_ZSt4swapIPsENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
	.def	_ZSt4swapIPsENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4swapIPsENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_
_ZSt4swapIPsENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SF_:
.LFB2641:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt4moveIRPsEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRPsEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIRPsEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt15__alloc_on_swapISaIsEEvRT_S2_,"x"
	.linkonce discard
	.globl	_ZSt15__alloc_on_swapISaIsEEvRT_S2_
	.def	_ZSt15__alloc_on_swapISaIsEEvRT_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt15__alloc_on_swapISaIsEEvRT_S2_
_ZSt15__alloc_on_swapISaIsEEvRT_S2_:
.LFB2643:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt18__do_alloc_on_swapISaIsEEvRT_S2_St17integral_constantIbLb0EE
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIsEC2ERKS_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIsEC2ERKS_
	.def	_ZNSaIsEC2ERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIsEC2ERKS_
_ZNSaIsEC2ERKS_:
.LFB2680:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIsEC2ERKS1_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEy
_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEy:
.LFB2682:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L283
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIsEE8allocateERS0_y
	jmp	.L285
.L283:
	movl	$0, %eax
.L285:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psy,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psy
	.def	_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psy
_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psy:
.LFB2683:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt25__uninitialized_default_nIPsyET_S1_T0_,"x"
	.linkonce discard
	.globl	_ZSt25__uninitialized_default_nIPsyET_S1_T0_
	.def	_ZSt25__uninitialized_default_nIPsyET_S1_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt25__uninitialized_default_nIPsyET_S1_T0_
_ZSt25__uninitialized_default_nIPsyET_S1_T0_:
.LFB2684:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	$1, -1(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPsyEET_S3_T0_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPsEEvT_S3_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPsEEvT_S3_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPsEEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPsEEvT_S3_
_ZNSt12_Destroy_auxILb1EE9__destroyIPsEEvT_S3_:
.LFB2685:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv
	.def	_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv
_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv:
.LFB2686:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_,"x"
	.linkonce discard
	.globl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_
	.def	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_:
.LFB2687:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	subq	16(%rbp), %rax
	sarq	%rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L293
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rdx, %r8
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	memmove
.L293:
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSaIiEC2ERKS_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSaIiEC2ERKS_
	.def	_ZNSaIiEC2ERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSaIiEC2ERKS_
_ZNSaIiEC2ERKS_:
.LFB2689:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEy:
.LFB2691:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L297
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIiEE8allocateERS0_y
	jmp	.L299
.L297:
	movl	$0, %eax
.L299:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Piy,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Piy
	.def	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Piy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Piy
_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Piy:
.LFB2692:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPiy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt20uninitialized_fill_nIPiyiET_S1_T0_RKT1_,"x"
	.linkonce discard
	.globl	_ZSt20uninitialized_fill_nIPiyiET_S1_T0_RKT1_
	.def	_ZSt20uninitialized_fill_nIPiyiET_S1_T0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt20uninitialized_fill_nIPiyiET_S1_T0_RKT1_
_ZSt20uninitialized_fill_nIPiyiET_S1_T0_RKT1_:
.LFB2693:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movb	$1, -1(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPiyiEET_S3_T0_RKT1_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_:
.LFB2694:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18__do_alloc_on_swapISaIiEEvRT_S2_St17integral_constantIbLb0EE,"x"
	.linkonce discard
	.globl	_ZSt18__do_alloc_on_swapISaIiEEvRT_S2_St17integral_constantIbLb0EE
	.def	_ZSt18__do_alloc_on_swapISaIiEEvRT_S2_St17integral_constantIbLb0EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18__do_alloc_on_swapISaIiEEvRT_S2_St17integral_constantIbLb0EE
_ZSt18__do_alloc_on_swapISaIiEEvRT_S2_St17integral_constantIbLb0EE:
.LFB2695:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	%r8b, 32(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18__do_alloc_on_swapISaIsEEvRT_S2_St17integral_constantIbLb0EE,"x"
	.linkonce discard
	.globl	_ZSt18__do_alloc_on_swapISaIsEEvRT_S2_St17integral_constantIbLb0EE
	.def	_ZSt18__do_alloc_on_swapISaIsEEvRT_S2_St17integral_constantIbLb0EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18__do_alloc_on_swapISaIsEEvRT_S2_St17integral_constantIbLb0EE
_ZSt18__do_alloc_on_swapISaIsEEvRT_S2_St17integral_constantIbLb0EE:
.LFB2696:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	%r8b, 32(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIsEC2ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIsEC2ERKS1_
	.def	_ZN9__gnu_cxx13new_allocatorIsEC2ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIsEC2ERKS1_
_ZN9__gnu_cxx13new_allocatorIsEC2ERKS1_:
.LFB2727:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIsEE8allocateERS0_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIsEE8allocateERS0_y
	.def	_ZNSt16allocator_traitsISaIsEE8allocateERS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIsEE8allocateERS0_y
_ZNSt16allocator_traitsISaIsEE8allocateERS0_y:
.LFB2729:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIsE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsy,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsy
	.def	_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsy
_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsy:
.LFB2730:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPsyEET_S3_T0_,"x"
	.linkonce discard
	.globl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPsyEET_S3_T0_
	.def	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPsyEET_S3_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPsyEET_S3_T0_
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPsyEET_S3_T0_:
.LFB2731:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movw	$0, -2(%rbp)
	leaq	-2(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt6fill_nIPsysET_S1_T0_RKT1_
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.def	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_:
.LFB2733:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIiEE8allocateERS0_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIiEE8allocateERS0_y
	.def	_ZNSt16allocator_traitsISaIiEE8allocateERS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIiEE8allocateERS0_y
_ZNSt16allocator_traitsISaIiEE8allocateERS0_y:
.LFB2735:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIiE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPiy,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPiy
	.def	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPiy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPiy
_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPiy:
.LFB2736:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPv
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPiyiEET_S3_T0_RKT1_,"x"
	.linkonce discard
	.globl	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPiyiEET_S3_T0_RKT1_
	.def	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPiyiEET_S3_T0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPiyiEET_S3_T0_RKT1_
_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPiyiEET_S3_T0_RKT1_:
.LFB2737:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt6fill_nIPiyiET_S1_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIsE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIsE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorIsE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIsE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorIsE8allocateEyPKv:
.LFB2765:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorIsE8max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L319
	call	_ZSt17__throw_bad_allocv
.L319:
	movq	24(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, %rcx
	call	_Znwy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt6fill_nIPsysET_S1_T0_RKT1_,"x"
	.linkonce discard
	.globl	_ZSt6fill_nIPsysET_S1_T0_RKT1_
	.def	_ZSt6fill_nIPsysET_S1_T0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt6fill_nIPsysET_S1_T0_RKT1_
_ZSt6fill_nIPsysET_S1_T0_RKT1_:
.LFB2766:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt12__niter_baseIPsET_S1_
	movq	%rax, %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	_ZSt10__fill_n_aIPsysEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIiE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIiE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorIiE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIiE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorIiE8allocateEyPKv:
.LFB2767:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L324
	call	_ZSt17__throw_bad_allocv
.L324:
	movq	24(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znwy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt6fill_nIPiyiET_S1_T0_RKT1_,"x"
	.linkonce discard
	.globl	_ZSt6fill_nIPiyiET_S1_T0_RKT1_
	.def	_ZSt6fill_nIPiyiET_S1_T0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt6fill_nIPiyiET_S1_T0_RKT1_
_ZSt6fill_nIPiyiET_S1_T0_RKT1_:
.LFB2768:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	_ZSt10__fill_n_aIPiyiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIsE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorIsE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorIsE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorIsE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorIsE8max_sizeEv:
.LFB2779:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$9223372036854775807, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10__fill_n_aIPsysEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_,"x"
	.linkonce discard
	.globl	_ZSt10__fill_n_aIPsysEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
	.def	_ZSt10__fill_n_aIPsysEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10__fill_n_aIPsysEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
_ZSt10__fill_n_aIPsysEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_:
.LFB2780:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	movzwl	(%rax), %eax
	movw	%ax, -10(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L332:
	cmpq	$0, -8(%rbp)
	je	.L331
	movq	16(%rbp), %rax
	movzwl	-10(%rbp), %edx
	movw	%dx, (%rax)
	subq	$1, -8(%rbp)
	addq	$2, 16(%rbp)
	jmp	.L332
.L331:
	movq	16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv:
.LFB2781:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$4611686018427387903, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__niter_baseIPiET_S1_,"x"
	.linkonce discard
	.globl	_ZSt12__niter_baseIPiET_S1_
	.def	_ZSt12__niter_baseIPiET_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__niter_baseIPiET_S1_
_ZSt12__niter_baseIPiET_S1_:
.LFB2782:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10__fill_n_aIPiyiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_,"x"
	.linkonce discard
	.globl	_ZSt10__fill_n_aIPiyiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
	.def	_ZSt10__fill_n_aIPiyiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10__fill_n_aIPiyiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
_ZSt10__fill_n_aIPiyiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_:
.LFB2783:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L340:
	cmpq	$0, -8(%rbp)
	je	.L339
	movq	16(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	subq	$1, -8(%rbp)
	addq	$4, 16(%rbp)
	jmp	.L340
.L339:
	movq	16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2787:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB2786:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L345
	cmpl	$65535, 24(%rbp)
	jne	.L345
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
.L345:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB2788:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section .rdata,"dr"
	.align 4
.LC1:
	.long	1073741824
	.align 4
.LC2:
	.long	1065353216
	.align 8
.LC3:
	.long	1879845950
	.long	1072308413
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.ident	"GCC: (x86_64-posix-seh, Built by strawberryperl.com project) 8.3.0"
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	powf;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	ceilf;	.scl	2;	.type	32;	.endef
	.def	floorf;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
