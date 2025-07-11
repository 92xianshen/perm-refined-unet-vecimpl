	.file	"main.cpp"
	.text
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2831:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.section	.text$_ZN13Permutohedral4initEPKf,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN13Permutohedral4initEPKf
	.def	_ZN13Permutohedral4initEPKf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13Permutohedral4initEPKf
_ZN13Permutohedral4initEPKf:
.LFB2187:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$360, %rsp
	.seh_stackalloc	360
	movaps	%xmm6, 192(%rsp)
	.seh_savexmm	%xmm6, 192
	movaps	%xmm7, 208(%rsp)
	.seh_savexmm	%xmm7, 208
	movaps	%xmm8, 224(%rsp)
	.seh_savexmm	%xmm8, 224
	movaps	%xmm9, 240(%rsp)
	.seh_savexmm	%xmm9, 240
	movaps	%xmm10, 256(%rsp)
	.seh_savexmm	%xmm10, 256
	movaps	%xmm11, 272(%rsp)
	.seh_savexmm	%xmm11, 272
	movaps	%xmm12, 288(%rsp)
	.seh_savexmm	%xmm12, 288
	movaps	%xmm13, 304(%rsp)
	.seh_savexmm	%xmm13, 304
	movaps	%xmm14, 320(%rsp)
	.seh_savexmm	%xmm14, 320
	movaps	%xmm15, 336(%rsp)
	.seh_savexmm	%xmm15, 336
	.seh_endprologue
	movl	(%rcx), %r14d
	imull	8(%rcx), %r14d
	movslq	4(%rcx), %rbx
	addl	%r14d, %r14d
	movq	%rcx, 56(%rsp)
	movslq	%r14d, %r14
	movq	%rdx, 184(%rsp)
	movq	%r14, %rsi
	shrq	%rsi
	addq	$10, %rsi
	imulq	%rbx, %rsi
	testq	%rsi, %rsi
	je	.L187
	js	.L292
	addq	%rsi, %rsi
	movq	%rsi, %rcx
.LEHB0:
	call	_Znwy
.LEHE0:
	movq	%rsi, %r8
	xorl	%edx, %edx
	movq	%rax, %rdi
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
	call	memset
	addq	%rdi, %rsi
	movq	%rsi, 96(%rsp)
.L4:
	testq	%r14, %r14
	je	.L188
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %r14
	ja	.L293
	leaq	0(,%r14,4), %rsi
	movq	%rsi, %rcx
.LEHB1:
	call	_Znwy
.LEHE1:
	movq	%rsi, %r8
	movl	$255, %edx
	movq	%rax, %rcx
	movq	%rax, %r12
	call	memset
.L6:
	movabsq	$2305843009213693950, %rdx
	movq	56(%rsp), %rax
	movslq	8(%rax), %rax
	cmpq	%rdx, %rax
	ja	.L294
	leaq	0(,%rax,4), %rcx
.LEHB2:
	call	_Znay
	movabsq	$2305843009213693950, %rdx
	movq	%rax, %r15
	movq	56(%rsp), %rax
	movslq	8(%rax), %rax
	cmpq	%rdx, %rax
	ja	.L295
	leaq	0(,%rax,4), %rcx
	call	_Znay
	movabsq	$2305843009213693950, %rdx
	movq	%rax, %rdi
	movq	56(%rsp), %rax
	movl	4(%rax), %eax
	movl	%eax, 40(%rsp)
	addl	$2, %eax
	cltq
	cmpq	%rdx, %rax
	ja	.L296
	leaq	0(,%rax,4), %rcx
	call	_Znay
	movabsq	$4611686018427387900, %rdx
	movq	%rax, 104(%rsp)
	movq	56(%rsp), %rax
	movslq	8(%rax), %rax
	cmpq	%rdx, %rax
	ja	.L297
	leaq	(%rax,%rax), %rcx
	call	_Znay
	movabsq	$4611686018427387900, %rdx
	movq	%rax, %rsi
	movq	56(%rsp), %rax
	movslq	4(%rax), %rax
	cmpq	%rdx, %rax
	ja	.L298
	leaq	(%rax,%rax), %rcx
	call	_Znay
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %rax
	movl	8(%rax), %eax
	imull	%eax, %eax
	movslq	%eax, %rcx
	addq	%rcx, %rcx
	call	_Znay
	movq	56(%rsp), %rbp
	movq	%rax, 136(%rsp)
	movabsq	$2305843009213693950, %rdx
	movslq	4(%rbp), %rax
	cmpq	%rdx, %rax
	ja	.L21
	leaq	0(,%rax,4), %rcx
	call	_Znay
	movl	8(%rbp), %ebp
	movq	%rax, 168(%rsp)
	testl	%ebp, %ebp
	jle	.L29
	movq	136(%rsp), %r10
	movslq	%ebp, %rax
	movl	%ebp, %edx
	xorl	%r8d, %r8d
	leaq	(%rax,%rax), %r9
	movq	%r12, 40(%rsp)
	xorl	%r11d, %r11d
	leaq	-2(%r9), %rax
	movq	%rsi, 88(%rsp)
	movq	%r9, %rsi
	movq	%rax, %rcx
	movq	%rbx, 112(%rsp)
	movq	%r10, %rax
	movq	%r10, %r13
	movq	%r15, 64(%rsp)
	movq	%rcx, %rbx
	addq	%r9, %rax
	movq	%rdi, 80(%rsp)
	movq	%rax, %r12
	.p2align 4,,10
.L30:
	leal	-1(%rdx), %r15d
	movl	%edx, %r9d
	movl	%r11d, %edi
	cmpl	$6, %r15d
	jbe	.L189
	movl	%edx, %ecx
	movd	%r11d, %xmm0
	movq	%r13, %rax
	shrl	$3, %ecx
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	salq	$4, %rcx
	addq	%r13, %rcx
	.p2align 4,,10
.L27:
	movups	%xmm0, (%rax)
	addq	$16, %rax
	cmpq	%rax, %rcx
	jne	.L27
	movl	%edx, %eax
	andl	$-8, %eax
	cmpl	%eax, %edx
	je	.L31
.L26:
	leal	(%r8,%rax), %ecx
	movslq	%ecx, %rcx
	movw	%di, (%r10,%rcx,2)
	leal	1(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L31
	addl	%r8d, %ecx
	movslq	%ecx, %rcx
	movw	%di, (%r10,%rcx,2)
	leal	2(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L31
	addl	%r8d, %ecx
	movslq	%ecx, %rcx
	movw	%di, (%r10,%rcx,2)
	leal	3(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L31
	addl	%r8d, %ecx
	movslq	%ecx, %rcx
	movw	%di, (%r10,%rcx,2)
	leal	4(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L31
	addl	%r8d, %ecx
	movslq	%ecx, %rcx
	movw	%di, (%r10,%rcx,2)
	leal	5(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L31
	addl	%r8d, %ecx
	addl	$6, %eax
	movslq	%ecx, %rcx
	cmpl	%eax, %edx
	movw	%di, (%r10,%rcx,2)
	jle	.L31
	addl	%r8d, %eax
	cltq
	movw	%di, (%r10,%rax,2)
.L31:
	cmpl	%ebp, %edx
	jge	.L36
	leal	-1(%r11), %eax
	movl	%edx, %ecx
	negl	%ecx
	cmpl	$6, %eax
	jbe	.L33
	movl	%r11d, %r9d
	movd	%ecx, %xmm0
	movq	%r12, %rax
	shrl	$3, %r9d
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	salq	$4, %r9
	addq	%r12, %r9
	.p2align 4,,10
.L35:
	movups	%xmm0, (%rax)
	addq	$16, %rax
	cmpq	%rax, %r9
	jne	.L35
	movl	%r11d, %eax
	andl	$-8, %eax
	leal	(%rdx,%rax), %r9d
	cmpl	%eax, %r11d
	je	.L36
.L33:
	leal	(%r8,%r9), %eax
	cltq
	movw	%cx, (%r10,%rax,2)
	leal	1(%r9), %eax
	cmpl	%eax, %ebp
	jle	.L36
	addl	%r8d, %eax
	cltq
	movw	%cx, (%r10,%rax,2)
	leal	2(%r9), %eax
	cmpl	%eax, %ebp
	jle	.L36
	addl	%r8d, %eax
	cltq
	movw	%cx, (%r10,%rax,2)
	leal	3(%r9), %eax
	cmpl	%eax, %ebp
	jle	.L36
	addl	%r8d, %eax
	cltq
	movw	%cx, (%r10,%rax,2)
	leal	4(%r9), %eax
	cmpl	%eax, %ebp
	jle	.L36
	addl	%r8d, %eax
	cltq
	movw	%cx, (%r10,%rax,2)
	leal	5(%r9), %eax
	cmpl	%eax, %ebp
	jle	.L36
	addl	%r8d, %eax
	addl	$6, %r9d
	cltq
	cmpl	%r9d, %ebp
	movw	%cx, (%r10,%rax,2)
	jle	.L36
	addl	%r8d, %r9d
	movslq	%r9d, %rax
	movw	%cx, (%r10,%rax,2)
.L36:
	addl	$1, %r11d
	addl	%ebp, %r8d
	addq	%rbx, %r12
	addq	%rsi, %r13
	cmpl	%ebp, %r11d
	movl	%r15d, %edx
	jne	.L30
	movq	40(%rsp), %r12
	movq	64(%rsp), %r15
	movq	80(%rsp), %rdi
	movq	88(%rsp), %rsi
	movq	112(%rsp), %rbx
.L29:
	movq	56(%rsp), %rax
	pxor	%xmm7, %xmm7
	cvtsi2sd	%ebp, %xmm7
	mulsd	.LC1(%rip), %xmm7
	movl	4(%rax), %ebp
	cvtsd2ss	%xmm7, %xmm7
	testl	%ebp, %ebp
	jle	.L24
	movsd	.LC9(%rip), %xmm0
	cvtss2sd	%xmm7, %xmm7
	cmpl	$1, %ebp
	pxor	%xmm3, %xmm3
	movq	168(%rsp), %rax
	mulsd	%xmm7, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, (%rax)
	je	.L24
	movsd	.LC3(%rip), %xmm9
	movl	$1, %r13d
	pxor	%xmm8, %xmm8
	.p2align 4,,10
.L184:
	leal	1(%r13), %eax
	pxor	%xmm0, %xmm0
	leal	2(%r13), %edx
	imull	%edx, %eax
	cvtsi2sd	%eax, %xmm0
	ucomisd	%xmm0, %xmm8
	sqrtsd	%xmm0, %xmm6
	ja	.L299
.L40:
	movapd	%xmm9, %xmm0
	movq	168(%rsp), %rax
	pxor	%xmm3, %xmm3
	divsd	%xmm6, %xmm0
	mulsd	%xmm7, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, (%rax,%r13,4)
	addq	$1, %r13
	cmpl	%r13d, %ebp
	jg	.L184
.L24:
	movq	56(%rsp), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jle	.L300
	movq	72(%rsp), %rcx
	movl	$0, 112(%rsp)
	movl	8(%rax), %r13d
	leaq	(%rbx,%rbx), %rax
	movq	$0, 80(%rsp)
	movsd	.LC3(%rip), %xmm7
	movq	%rax, 120(%rsp)
	movss	.LC4(%rip), %xmm9
	movsd	%xmm7, 176(%rsp)
	addq	%rax, %rcx
	movl	112(%rsp), %eax
	movss	.LC5(%rip), %xmm7
	movq	%rcx, 144(%rsp)
	movdqa	.LC7(%rip), %xmm8
	.p2align 4,,10
.L101:
	imull	%ebp, %eax
	testl	%ebp, %ebp
	cltq
	leaq	0(,%rax,4), %rdx
	jle	.L190
	movq	184(%rsp), %rcx
	movslq	%ebp, %rax
	pxor	%xmm2, %xmm2
	movq	%rax, 160(%rsp)
	addq	%rcx, %rdx
	movq	168(%rsp), %rcx
	.p2align 4,,10
.L43:
	movss	-4(%rdx,%rax,4), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movaps	%xmm2, %xmm3
	mulss	-4(%rcx,%rax,4), %xmm0
	mulss	%xmm0, %xmm1
	addss	%xmm0, %xmm2
	subss	%xmm1, %xmm3
	movss	%xmm3, (%r15,%rax,4)
	subq	$1, %rax
	testl	%eax, %eax
	jg	.L43
.L42:
	pxor	%xmm3, %xmm3
	cvtsi2ss	%r13d, %xmm3
	movaps	%xmm9, %xmm6
	testl	%r13d, %r13d
	movss	%xmm2, (%r15)
	divss	%xmm3, %xmm6
	jle	.L191
	leal	-1(%r13), %eax
	movss	.LC6(%rip), %xmm2
	movq	%r15, %rcx
	movq	%rdi, %r8
	leaq	4(%r15,%rax,4), %r10
	xorl	%r11d, %r11d
	.p2align 4,,10
.L47:
	movss	(%rcx), %xmm4
	movaps	%xmm4, %xmm5
	mulss	%xmm6, %xmm5
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm0
	andps	%xmm2, %xmm1
	ucomiss	%xmm1, %xmm7
	jbe	.L45
	cvttss2si	%xmm5, %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	cmpnless	%xmm1, %xmm0
	andps	%xmm9, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	andnps	%xmm5, %xmm1
	orps	%xmm1, %xmm0
.L45:
	mulss	%xmm3, %xmm0
	movaps	%xmm5, %xmm10
	movaps	%xmm5, %xmm1
	andps	%xmm2, %xmm10
	ucomiss	%xmm10, %xmm7
	jbe	.L46
	cvttss2si	%xmm5, %eax
	pxor	%xmm10, %xmm10
	movaps	%xmm2, %xmm12
	andnps	%xmm5, %xmm12
	cvtsi2ss	%eax, %xmm10
	movaps	%xmm10, %xmm14
	cmpnless	%xmm5, %xmm14
	movaps	%xmm14, %xmm1
	andps	%xmm9, %xmm1
	subss	%xmm1, %xmm10
	movaps	%xmm10, %xmm1
	orps	%xmm12, %xmm1
.L46:
	mulss	%xmm3, %xmm1
	movaps	%xmm0, %xmm5
	xorl	%r9d, %r9d
	subss	%xmm4, %xmm5
	movl	$1, %edx
	subss	%xmm1, %xmm4
	cvttss2si	%xmm1, %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%r11d, %xmm1
	comiss	%xmm5, %xmm4
	cwtl
	seta	%r9b
	addq	$4, %rcx
	addq	$4, %r8
	subl	%r9d, %edx
	imull	%edx, %eax
	cvttss2si	%xmm0, %edx
	pxor	%xmm0, %xmm0
	movswl	%dx, %edx
	imull	%r9d, %edx
	addl	%edx, %eax
	cvtsi2ss	%eax, %xmm0
	movl	%eax, -4(%r8)
	cmpq	%rcx, %r10
	mulss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %r11d
	jne	.L47
.L44:
	movslq	%r13d, %rax
	movq	%rax, 152(%rsp)
	leaq	(%rsi,%rax,2), %rax
	cmpq	%rsi, %rax
	je	.L51
	subq	%rsi, %rax
	xorl	%edx, %edx
	movq	%rsi, %rcx
	movl	%r11d, 40(%rsp)
	subq	$2, %rax
	shrq	%rax
	leaq	2(%rax,%rax), %r8
	call	memset
	movl	40(%rsp), %r11d
.L51:
	testl	%ebp, %ebp
	jle	.L49
	leal	-1(%rbp), %r10d
	movq	%rsi, %r8
	movl	$1, %r9d
	addq	$2, %r10
	.p2align 4,,10
.L55:
	pxor	%xmm0, %xmm0
	cvtsi2ss	-4(%rdi,%r9,4), %xmm0
	movss	-4(%r15,%r9,4), %xmm2
	cmpl	%r9d, %r13d
	movq	%r9, %rax
	subss	%xmm0, %xmm2
	jle	.L56
	.p2align 4,,10
.L54:
	pxor	%xmm1, %xmm1
	cvtsi2ss	(%rdi,%rax,4), %xmm1
	movss	(%r15,%rax,4), %xmm0
	xorl	%ecx, %ecx
	subss	%xmm1, %xmm0
	comiss	%xmm2, %xmm0
	seta	%cl
	addw	%cx, (%r8)
	movzwl	(%rsi,%rax,2), %edx
	addl	$1, %edx
	subl	%ecx, %edx
	movw	%dx, (%rsi,%rax,2)
	addq	$1, %rax
	cmpl	%eax, %r13d
	jg	.L54
.L56:
	addq	$1, %r9
	addq	$2, %r8
	cmpq	%r9, %r10
	jne	.L55
.L49:
	testl	%r13d, %r13d
	jle	.L301
	leal	-1(%r13), %eax
	movw	%r11w, 64(%rsp)
	cmpl	$6, %eax
	movw	%r13w, 88(%rsp)
	movl	%eax, 128(%rsp)
	jbe	.L193
	movd	%ebp, %xmm5
	movd	%r13d, %xmm0
	movl	%r13d, %ecx
	movss	%xmm6, 40(%rsp)
	pshufd	$0, %xmm5, %xmm14
	punpcklwd	%xmm0, %xmm0
	shrl	$3, %ecx
	movq	%rdi, %rax
	pshufd	$0, %xmm0, %xmm5
	movdqa	%xmm5, %xmm2
	movd	%r13d, %xmm5
	salq	$5, %rcx
	pshufd	$0, %xmm5, %xmm10
	movdqa	%xmm10, %xmm11
	movd	%r11d, %xmm3
	movq	%rsi, %rdx
	addq	%rdi, %rcx
	psrlq	$32, %xmm11
	movdqa	%xmm2, %xmm6
	punpcklwd	%xmm3, %xmm3
	pxor	%xmm12, %xmm12
	pshufd	$0, %xmm3, %xmm3
	.p2align 4,,10
.L59:
	movdqu	(%rdx), %xmm4
	movdqa	%xmm12, %xmm1
	addq	$32, %rax
	addq	$16, %rdx
	paddw	%xmm3, %xmm4
	pcmpgtw	%xmm4, %xmm1
	movdqa	%xmm4, %xmm0
	movdqa	%xmm4, %xmm2
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm2
	pcmpgtd	%xmm14, %xmm0
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm14, %xmm1
	movdqa	%xmm4, %xmm2
	psrlw	$15, %xmm2
	pand	%xmm8, %xmm0
	movdqa	%xmm0, %xmm5
	movdqa	%xmm0, %xmm13
	pand	%xmm8, %xmm1
	punpcklwd	%xmm1, %xmm5
	movdqa	%xmm5, %xmm15
	punpckhwd	%xmm1, %xmm13
	punpckhwd	%xmm13, %xmm15
	punpcklwd	%xmm13, %xmm5
	punpcklwd	%xmm15, %xmm5
	movdqa	%xmm2, %xmm15
	psubw	%xmm5, %xmm15
	movdqa	%xmm1, %xmm13
	movdqa	%xmm15, %xmm5
	pmuludq	%xmm10, %xmm13
	pmullw	%xmm6, %xmm5
	pshufd	$8, %xmm13, %xmm13
	paddw	%xmm5, %xmm4
	movups	%xmm4, -16(%rdx)
	movdqa	%xmm2, %xmm4
	punpcklwd	%xmm12, %xmm2
	punpckhwd	%xmm12, %xmm4
	movdqa	%xmm4, %xmm5
	psrlq	$32, %xmm4
	pmuludq	%xmm10, %xmm5
	pmuludq	%xmm11, %xmm4
	pshufd	$8, %xmm5, %xmm5
	pshufd	$8, %xmm4, %xmm4
	punpckldq	%xmm4, %xmm5
	movdqa	%xmm1, %xmm4
	psrlq	$32, %xmm4
	pmuludq	%xmm11, %xmm4
	pshufd	$8, %xmm4, %xmm4
	punpckldq	%xmm4, %xmm13
	movdqa	%xmm2, %xmm4
	psrlq	$32, %xmm2
	pmuludq	%xmm10, %xmm4
	psubd	%xmm13, %xmm5
	pmuludq	%xmm11, %xmm2
	movdqa	%xmm5, %xmm1
	movdqu	-16(%rax), %xmm5
	pshufd	$8, %xmm4, %xmm4
	paddd	%xmm5, %xmm1
	pshufd	$8, %xmm2, %xmm2
	punpckldq	%xmm2, %xmm4
	movdqa	%xmm4, %xmm2
	movdqa	%xmm0, %xmm4
	psrlq	$32, %xmm0
	movups	%xmm1, -16(%rax)
	pmuludq	%xmm10, %xmm4
	pmuludq	%xmm11, %xmm0
	pshufd	$8, %xmm4, %xmm4
	pshufd	$8, %xmm0, %xmm0
	punpckldq	%xmm0, %xmm4
	psubd	%xmm4, %xmm2
	movdqa	%xmm2, %xmm0
	movdqu	-32(%rax), %xmm2
	paddd	%xmm2, %xmm0
	movups	%xmm0, -32(%rax)
	cmpq	%rax, %rcx
	jne	.L59
	movl	%r13d, %eax
	movss	40(%rsp), %xmm6
	andl	$-8, %eax
	cmpl	%eax, %r13d
	movl	%eax, 40(%rsp)
	je	.L62
.L57:
	movslq	40(%rsp), %rcx
	xorl	%r8d, %r8d
	movzwl	64(%rsp), %edx
	leaq	(%rsi,%rcx,2), %r10
	addw	(%r10), %dx
	movswl	%dx, %r9d
	movl	%edx, %r11d
	shrw	$15, %r11w
	cmpl	%r9d, %ebp
	setl	%r8b
	movl	%r11d, %eax
	xorl	%r11d, %r11d
	subl	%r8d, %eax
	imulw	88(%rsp), %ax
	addl	%edx, %eax
	testw	%dx, %dx
	movl	%r11d, %edx
	movw	%ax, (%r10)
	movl	%r11d, %r10d
	cmovs	%r13d, %r10d
	cmpl	%r9d, %ebp
	cmovl	%r13d, %edx
	movl	%r10d, %eax
	subl	%edx, %eax
	addl	%eax, (%rdi,%rcx,4)
	movl	40(%rsp), %eax
	leal	1(%rax), %edx
	cmpl	%r13d, %edx
	jge	.L62
	movslq	%edx, %rdx
	movzwl	64(%rsp), %ecx
	leaq	(%rsi,%rdx,2), %r10
	addw	(%r10), %cx
	movl	%ecx, %r8d
	movswl	%cx, %r9d
	shrw	$15, %r8w
	movl	%r8d, %eax
	xorl	%r8d, %r8d
	cmpl	%r9d, %ebp
	setl	%r8b
	subl	%r8d, %eax
	imulw	88(%rsp), %ax
	addl	%ecx, %eax
	testw	%cx, %cx
	movw	%ax, (%r10)
	movl	%r11d, %r10d
	cmovs	%r13d, %r10d
	cmpl	%r9d, %ebp
	movl	%r10d, %eax
	movl	%r11d, %r10d
	cmovl	%r13d, %r10d
	subl	%r10d, %eax
	addl	%eax, (%rdi,%rdx,4)
	movl	40(%rsp), %eax
	leal	2(%rax), %edx
	cmpl	%r13d, %edx
	jge	.L62
	movslq	%edx, %rdx
	movzwl	64(%rsp), %ecx
	xorl	%r8d, %r8d
	leaq	(%rsi,%rdx,2), %r10
	addw	(%r10), %cx
	movswl	%cx, %r9d
	movl	%ecx, %eax
	shrw	$15, %ax
	cmpl	%ebp, %r9d
	setg	%r8b
	subl	%r8d, %eax
	imulw	88(%rsp), %ax
	addl	%ecx, %eax
	testw	%cx, %cx
	movw	%ax, (%r10)
	movl	%r11d, %r10d
	cmovs	%r13d, %r10d
	cmpl	%ebp, %r9d
	movl	%r10d, %eax
	movl	%r11d, %r10d
	cmovg	%r13d, %r10d
	subl	%r10d, %eax
	addl	%eax, (%rdi,%rdx,4)
	movl	40(%rsp), %eax
	leal	3(%rax), %edx
	cmpl	%r13d, %edx
	jge	.L62
	movslq	%edx, %rdx
	movzwl	64(%rsp), %ecx
	xorl	%r8d, %r8d
	leaq	(%rsi,%rdx,2), %r10
	addw	(%r10), %cx
	movswl	%cx, %r9d
	movl	%ecx, %eax
	shrw	$15, %ax
	cmpl	%ebp, %r9d
	setg	%r8b
	subl	%r8d, %eax
	imulw	88(%rsp), %ax
	addl	%ecx, %eax
	testw	%cx, %cx
	movw	%ax, (%r10)
	movl	%r11d, %r10d
	cmovs	%r13d, %r10d
	cmpl	%ebp, %r9d
	movl	%r10d, %eax
	movl	%r11d, %r10d
	cmovg	%r13d, %r10d
	subl	%r10d, %eax
	addl	%eax, (%rdi,%rdx,4)
	movl	40(%rsp), %eax
	leal	4(%rax), %edx
	cmpl	%r13d, %edx
	jge	.L62
	movslq	%edx, %rdx
	movzwl	64(%rsp), %ecx
	xorl	%r8d, %r8d
	leaq	(%rsi,%rdx,2), %r10
	addw	(%r10), %cx
	movswl	%cx, %r9d
	movl	%ecx, %eax
	shrw	$15, %ax
	cmpl	%ebp, %r9d
	setg	%r8b
	subl	%r8d, %eax
	imulw	88(%rsp), %ax
	addl	%ecx, %eax
	testw	%cx, %cx
	movw	%ax, (%r10)
	movl	%r11d, %r10d
	cmovs	%r13d, %r10d
	cmpl	%ebp, %r9d
	movl	%r10d, %eax
	movl	%r11d, %r10d
	cmovg	%r13d, %r10d
	subl	%r10d, %eax
	addl	%eax, (%rdi,%rdx,4)
	movl	40(%rsp), %eax
	leal	5(%rax), %edx
	cmpl	%r13d, %edx
	jge	.L62
	movslq	%edx, %rdx
	movzwl	64(%rsp), %ecx
	xorl	%r8d, %r8d
	leaq	(%rsi,%rdx,2), %r10
	addw	(%r10), %cx
	movswl	%cx, %r9d
	movl	%ecx, %eax
	shrw	$15, %ax
	cmpl	%ebp, %r9d
	setg	%r8b
	subl	%r8d, %eax
	imulw	88(%rsp), %ax
	addl	%ecx, %eax
	testw	%cx, %cx
	movw	%ax, (%r10)
	movl	%r11d, %r10d
	cmovs	%r13d, %r10d
	cmpl	%ebp, %r9d
	movl	%r10d, %eax
	movl	%r11d, %r10d
	cmovg	%r13d, %r10d
	subl	%r10d, %eax
	addl	%eax, (%rdi,%rdx,4)
	movl	40(%rsp), %eax
	addl	$6, %eax
	cmpl	%r13d, %eax
	jge	.L62
	cltq
	movzwl	64(%rsp), %ecx
	xorl	%r8d, %r8d
	leaq	(%rsi,%rax,2), %r10
	addw	(%r10), %cx
	movswl	%cx, %r9d
	movl	%ecx, %edx
	shrw	$15, %dx
	cmpl	%ebp, %r9d
	setg	%r8b
	subl	%r8d, %edx
	imulw	88(%rsp), %dx
	addl	%ecx, %edx
	testw	%cx, %cx
	movw	%dx, (%r10)
	movl	%r11d, %edx
	cmovs	%r13d, %edx
	cmpl	%ebp, %r9d
	cmovg	%r13d, %r11d
	subl	%r11d, %edx
	addl	%edx, (%rdi,%rax,4)
.L62:
	movq	104(%rsp), %rcx
	movq	160(%rsp), %rax
	leaq	8(%rcx,%rax,4), %rax
	cmpq	%rcx, %rax
	je	.L302
.L61:
	movq	104(%rsp), %rcx
	xorl	%edx, %edx
	subq	%rcx, %rax
	subq	$4, %rax
	shrq	$2, %rax
	leaq	4(,%rax,4), %r8
	call	memset
	movq	104(%rsp), %rcx
	testl	%r13d, %r13d
	movq	152(%rsp), %rax
	leaq	(%rcx,%rax,4), %rcx
	jle	.L63
	leal	-1(%r13), %eax
	movl	%eax, 128(%rsp)
.L185:
	movl	128(%rsp), %r8d
	xorl	%eax, %eax
	movq	104(%rsp), %r9
	jmp	.L65
	.p2align 4,,10
.L303:
	movq	%rdx, %rax
.L65:
	pxor	%xmm1, %xmm1
	cvtsi2ss	(%rdi,%rax,4), %xmm1
	movswl	(%rsi,%rax,2), %r10d
	movl	%ebp, %edx
	movss	(%r15,%rax,4), %xmm0
	subss	%xmm1, %xmm0
	subl	%r10d, %edx
	movslq	%edx, %rdx
	leaq	(%r9,%rdx,4), %rdx
	mulss	%xmm6, %xmm0
	movss	(%rdx), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	movl	%r13d, %edx
	subl	%r10d, %edx
	cmpq	%rax, %r8
	movslq	%edx, %rdx
	leaq	(%r9,%rdx,4), %rdx
	movss	(%rdx), %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	leaq	1(%rax), %rdx
	jne	.L303
	movq	104(%rsp), %rax
	pxor	%xmm0, %xmm0
	cvtss2sd	(%rcx), %xmm0
	pxor	%xmm1, %xmm1
	addsd	176(%rsp), %xmm0
	pxor	%xmm3, %xmm3
	movq	$0, 64(%rsp)
	cvtss2sd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, (%rax)
	.p2align 4,,10
.L183:
	movl	64(%rsp), %eax
	testl	%ebp, %ebp
	movl	%eax, 88(%rsp)
	jle	.L69
	leal	-1(%rbp), %r8d
	movl	%eax, %ecx
	xorl	%edx, %edx
	movq	72(%rsp), %r9
	imull	%r13d, %ecx
	movq	136(%rsp), %r10
	jmp	.L70
	.p2align 4,,10
.L304:
	movq	%rax, %rdx
.L70:
	movswl	(%rsi,%rdx,2), %eax
	addl	%ecx, %eax
	cltq
	movzwl	(%r10,%rax,2), %eax
	addw	(%rdi,%rdx,4), %ax
	cmpq	%rdx, %r8
	movw	%ax, (%r9,%rdx,2)
	leaq	1(%rdx), %rax
	jne	.L304
.L69:
	movq	80(%rsp), %rax
	addq	%rax, %rax
	cmpq	%r14, %rax
	jnb	.L305
	testq	%rbx, %rbx
	je	.L198
.L311:
	movq	72(%rsp), %rcx
	xorl	%eax, %eax
	movq	144(%rsp), %r8
	.p2align 4,,10
.L92:
	movswq	(%rcx), %rdx
	addq	$2, %rcx
	addq	%rdx, %rax
	imulq	$1664525, %rax, %rax
	cmpq	%rcx, %r8
	jne	.L92
	movq	72(%rsp), %r9
	xorl	%edx, %edx
	movq	48(%rsp), %r10
	divq	%r14
	movq	120(%rsp), %r11
.L179:
	leaq	(%r12,%rdx,4), %rbp
	movq	%rdx, %r8
	movl	0(%rbp), %ecx
	cmpl	$-1, %ecx
	je	.L306
.L93:
	testq	%rbx, %rbx
	je	.L95
	movslq	%ecx, %rdx
	xorl	%eax, %eax
	movl	%ecx, 40(%rsp)
	imulq	%r11, %rdx
	addq	%r10, %rdx
.L98:
	movzwl	(%r9,%rax,2), %ecx
	cmpw	%cx, (%rdx,%rax,2)
	je	.L307
	addq	$1, %r8
	addq	$4, %rbp
	xorl	%edx, %edx
	cmpq	%r14, %r8
	je	.L179
	movl	0(%rbp), %ecx
	cmpl	$-1, %ecx
	jne	.L93
.L306:
	testq	%rbx, %rbx
	je	.L96
	movq	80(%rsp), %rcx
	movq	120(%rsp), %r8
	movq	72(%rsp), %rdx
	imulq	%r8, %rcx
	addq	48(%rsp), %rcx
	call	memcpy
.L96:
	movq	80(%rsp), %rax
	movl	%eax, %ecx
	movl	%eax, 0(%rbp)
	addq	$1, %rax
	movq	%rax, 80(%rsp)
	jmp	.L95
	.p2align 4,,10
.L307:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L98
	movl	40(%rsp), %ecx
.L95:
	movl	112(%rsp), %edx
	addl	$1, %ecx
	movq	56(%rsp), %r11
	movl	88(%rsp), %r10d
	imull	%edx, %r13d
	movq	24(%r11), %rax
	addl	%r10d, %r13d
	movslq	%r13d, %r13
	movl	%ecx, (%rax,%r13,4)
	movq	64(%rsp), %rcx
	movq	104(%rsp), %rax
	movl	8(%r11), %r13d
	movss	(%rax,%rcx,4), %xmm0
	movl	%edx, %eax
	addq	$1, %rcx
	imull	%r13d, %eax
	movq	32(%r11), %rdx
	movq	%rcx, 64(%rsp)
	addl	%r10d, %eax
	cmpl	%ecx, %r13d
	cltq
	movss	%xmm0, (%rdx,%rax,4)
	jle	.L182
	movl	4(%r11), %ebp
	jmp	.L183
	.p2align 4,,10
.L305:
	leal	10(%r14), %r13d
	movl	%r14d, 152(%rsp)
	leaq	(%r14,%r14), %rax
	movslq	%r13d, %r13
	imulq	%rbx, %r13
	movq	%rax, 40(%rsp)
	testq	%r13, %r13
	je	.L194
	js	.L308
	addq	%r13, %r13
	movq	%r13, %rcx
	call	_Znwy
.LEHE2:
	movq	%rax, %rbp
	movq	%r13, %r8
	xorl	%edx, %edx
	movq	%rax, 128(%rsp)
	movq	%rax, %rcx
	addq	%rbp, %r13
	call	memset
	movq	%r13, 160(%rsp)
.L71:
	movq	48(%rsp), %rax
	movq	96(%rsp), %r8
	cmpq	%r8, %rax
	je	.L73
	movq	128(%rsp), %rcx
	subq	%rax, %r8
	movq	%rax, %rdx
	call	memmove
.L73:
	leaq	(%r14,%r14), %rcx
	testq	%rcx, %rcx
	je	.L195
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rcx
	ja	.L309
	leaq	0(,%r14,8), %r13
	movq	%r13, %rcx
.LEHB3:
	call	_Znwy
.LEHE3:
	movq	%r13, %r8
	movl	$255, %edx
	movq	%rax, %rcx
	movq	%rax, %rbp
	call	memset
.L74:
	movl	152(%rsp), %eax
	testl	%eax, %eax
	jle	.L85
	leal	-1(%r14), %eax
	movq	%r12, %r8
	movq	128(%rsp), %r11
	leaq	4(%r12,%rax,4), %r10
	movq	40(%rsp), %rax
	leaq	-1(%rax), %rcx
	jmp	.L86
	.p2align 4,,10
.L79:
	addq	$4, %r8
	cmpq	%r8, %r10
	je	.L85
.L86:
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	js	.L79
	movslq	%r9d, %rax
	imulq	%rbx, %rax
	testq	%rbx, %rbx
	je	.L196
	leaq	(%r11,%rax,2), %r13
	addq	%rbx, %rax
	leaq	(%r11,%rax,2), %r14
	xorl	%eax, %eax
	.p2align 4,,10
.L81:
	movswq	0(%r13), %rdx
	addq	$2, %r13
	addq	%rdx, %rax
	imulq	$1664525, %rax, %rax
	cmpq	%r13, %r14
	jne	.L81
	xorl	%edx, %edx
	divq	40(%rsp)
	jmp	.L83
	.p2align 4,,10
.L310:
	leaq	1(%rdx), %rax
	cmpq	%rcx, %rdx
	movl	$0, %edx
	cmovb	%rax, %rdx
.L83:
	leaq	0(%rbp,%rdx,4), %rax
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.L310
	addq	$4, %r8
	movl	%r9d, (%rax)
	cmpq	%r8, %r10
	jne	.L86
.L85:
	testq	%r12, %r12
	je	.L78
	movq	%r12, %rcx
	call	_ZdlPv
.L78:
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.L87
	movq	%rax, %rcx
	call	_ZdlPv
.L87:
	movq	56(%rsp), %rax
	testq	%rbx, %rbx
	movq	%rbp, %r12
	movq	40(%rsp), %r14
	movl	8(%rax), %r13d
	movq	160(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 48(%rsp)
	jne	.L311
.L198:
	xorl	%edx, %edx
	movq	72(%rsp), %r9
	movq	48(%rsp), %r10
	movq	120(%rsp), %r11
	jmp	.L179
.L301:
	movq	104(%rsp), %rcx
	movq	160(%rsp), %rax
	leaq	8(%rcx,%rax,4), %rax
	cmpq	%rcx, %rax
	jne	.L61
	movq	%rcx, %rax
	movq	152(%rsp), %rcx
	leaq	(%rax,%rcx,4), %rcx
.L63:
	movq	104(%rsp), %rax
	pxor	%xmm0, %xmm0
	cvtss2sd	(%rcx), %xmm0
	pxor	%xmm1, %xmm1
	addsd	176(%rsp), %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, (%rax)
	.p2align 4,,10
.L182:
	movq	56(%rsp), %rcx
	addl	$1, 112(%rsp)
	movl	112(%rsp), %eax
	cmpl	%eax, (%rcx)
	jle	.L100
	movl	4(%rcx), %ebp
	jmp	.L101
	.p2align 4,,10
.L196:
	xorl	%edx, %edx
	jmp	.L83
	.p2align 4,,10
.L195:
	xorl	%ebp, %ebp
	jmp	.L74
	.p2align 4,,10
.L194:
	movq	$0, 128(%rsp)
	movq	$0, 160(%rsp)
	jmp	.L71
.L100:
	movq	%r15, %rcx
	call	_ZdaPv
	movq	%rdi, %rcx
	call	_ZdaPv
	movq	104(%rsp), %rcx
	call	_ZdaPv
	movq	%rsi, %rcx
	call	_ZdaPv
	movq	72(%rsp), %rcx
	call	_ZdaPv
	movq	136(%rsp), %rcx
	call	_ZdaPv
	movq	168(%rsp), %rcx
	call	_ZdaPv
	movq	56(%rsp), %rax
	movq	80(%rsp), %rdi
	movl	8(%rax), %ecx
	movl	%edi, 12(%rax)
	movabsq	$2305843009213693950, %rax
	imull	%edi, %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	cmpq	%rax, %rcx
	ja	.L102
	salq	$2, %rcx
.L181:
.LEHB4:
	call	_Znay
	movabsq	$4611686018427387900, %rdx
	movq	56(%rsp), %rdi
	movq	%rax, 40(%rdi)
	movslq	8(%rdi), %rax
	cmpq	%rdx, %rax
	ja	.L312
	leaq	(%rax,%rax), %rcx
	call	_Znay
	movabsq	$4611686018427387900, %rdx
	movq	%rax, %rdi
	movq	56(%rsp), %rax
	movslq	8(%rax), %rax
	cmpq	%rdx, %rax
	ja	.L313
	leaq	(%rax,%rax), %rcx
	call	_Znay
.LEHE4:
	movq	%rax, %rsi
	movq	56(%rsp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L108
	movq	80(%rsp), %rcx
	leaq	(%rbx,%rbx), %rbp
	movq	$0, 112(%rsp)
	leaq	(%rsi,%rbp), %rdx
	movdqa	.LC8(%rip), %xmm7
	leaq	0(%rbp,%rdi), %r13
	movq	%rdx, 128(%rsp)
	addq	%rcx, %rcx
	movq	%rcx, 80(%rsp)
	movq	56(%rsp), %rcx
	movl	12(%rcx), %ecx
	.p2align 4,,10
.L170:
	movq	112(%rsp), %rdx
	testl	%ecx, %ecx
	movl	%edx, 64(%rsp)
	jle	.L109
	leaq	(%rdx,%rdx), %rax
	movl	$0, 40(%rsp)
	pcmpeqd	%xmm6, %xmm6
	movq	%rax, 120(%rsp)
	movq	$0, 72(%rsp)
	.p2align 4,,10
.L169:
	movq	56(%rsp), %rax
	movq	48(%rsp), %r8
	addq	72(%rsp), %r8
	movl	4(%rax), %edx
	testl	%edx, %edx
	jle	.L116
	leal	-1(%rdx), %eax
	cmpl	$6, %eax
	jbe	.L199
	movl	%edx, %r9d
	xorl	%eax, %eax
	shrl	$3, %r9d
	salq	$4, %r9
	.p2align 4,,10
.L115:
	movdqu	(%r8,%rax), %xmm0
	movdqa	%xmm0, %xmm1
	paddw	%xmm7, %xmm0
	paddw	%xmm6, %xmm1
	movups	%xmm0, (%rsi,%rax)
	movups	%xmm1, (%rdi,%rax)
	addq	$16, %rax
	cmpq	%rax, %r9
	jne	.L115
	movl	%edx, %eax
	andl	$-8, %eax
	cmpl	%edx, %eax
	je	.L116
.L113:
	movslq	%eax, %r10
	movzwl	(%r8,%r10,2), %r9d
	leal	-1(%r9), %r11d
	addl	$1, %r9d
	movw	%r9w, (%rsi,%r10,2)
	leal	1(%rax), %r9d
	cmpl	%edx, %r9d
	movw	%r11w, (%rdi,%r10,2)
	jge	.L116
	movslq	%r9d, %r9
	movzwl	(%r8,%r9,2), %r10d
	leal	-1(%r10), %r11d
	addl	$1, %r10d
	movw	%r11w, (%rdi,%r9,2)
	movw	%r10w, (%rsi,%r9,2)
	leal	2(%rax), %r9d
	cmpl	%edx, %r9d
	jge	.L116
	movslq	%r9d, %r9
	movzwl	(%r8,%r9,2), %r10d
	leal	-1(%r10), %r11d
	addl	$1, %r10d
	movw	%r11w, (%rdi,%r9,2)
	movw	%r10w, (%rsi,%r9,2)
	leal	3(%rax), %r9d
	cmpl	%edx, %r9d
	jge	.L116
	movslq	%r9d, %r9
	movzwl	(%r8,%r9,2), %r10d
	leal	-1(%r10), %r11d
	addl	$1, %r10d
	movw	%r11w, (%rdi,%r9,2)
	movw	%r10w, (%rsi,%r9,2)
	leal	4(%rax), %r9d
	cmpl	%edx, %r9d
	jge	.L116
	movslq	%r9d, %r9
	movzwl	(%r8,%r9,2), %r10d
	leal	-1(%r10), %r11d
	addl	$1, %r10d
	movw	%r11w, (%rdi,%r9,2)
	movw	%r10w, (%rsi,%r9,2)
	leal	5(%rax), %r9d
	cmpl	%r9d, %edx
	jle	.L116
	movslq	%r9d, %r9
	addl	$6, %eax
	movzwl	(%r8,%r9,2), %r10d
	leal	-1(%r10), %r11d
	addl	$1, %r10d
	cmpl	%eax, %edx
	movw	%r11w, (%rdi,%r9,2)
	movw	%r10w, (%rsi,%r9,2)
	jle	.L116
	cltq
	movzwl	(%r8,%rax,2), %r9d
	leal	-1(%r9), %r10d
	addl	$1, %r9d
	movw	%r10w, (%rdi,%rax,2)
	movw	%r9w, (%rsi,%rax,2)
.L116:
	movq	120(%rsp), %rax
	movq	112(%rsp), %r15
	movzwl	(%r8,%rax), %eax
	leal	(%rax,%rdx), %r8d
	subl	%edx, %eax
	cmpq	%r14, 80(%rsp)
	movw	%r8w, (%rdi,%r15,2)
	movw	%ax, (%rsi,%r15,2)
	jnb	.L314
	testq	%rbx, %rbx
	je	.L204
.L327:
	movq	%rdi, %r8
	xorl	%eax, %eax
	.p2align 4,,10
.L138:
	movswq	(%r8), %rdx
	addq	$2, %r8
	addq	%rdx, %rax
	imulq	$1664525, %rax, %rax
	cmpq	%r8, %r13
	jne	.L138
	movq	48(%rsp), %r10
	xorl	%edx, %edx
	divq	%r14
.L177:
	movq	%rdx, %r8
	movl	(%r12,%r8,4), %r9d
	cmpl	$-1, %r9d
	je	.L205
.L316:
	testq	%rbx, %rbx
	je	.L286
	movslq	%r9d, %rdx
	xorl	%eax, %eax
	imulq	%rbp, %rdx
	addq	%r10, %rdx
.L142:
	movzwl	(%rdi,%rax,2), %r11d
	cmpw	%r11w, (%rdx,%rax,2)
	je	.L315
	addq	$1, %r8
	xorl	%edx, %edx
	cmpq	%r14, %r8
	je	.L177
	movl	(%r12,%r8,4), %r9d
	cmpl	$-1, %r9d
	jne	.L316
.L205:
	xorl	%r9d, %r9d
	jmp	.L139
	.p2align 4,,10
.L315:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L142
.L286:
	addl	$1, %r9d
.L139:
	movq	56(%rsp), %rax
	imull	64(%rsp), %ecx
	movq	40(%rax), %r8
	movl	40(%rsp), %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	cmpq	%r14, 80(%rsp)
	cltq
	movl	%r9d, (%r8,%rax,4)
	jnb	.L317
	testq	%rbx, %rbx
	je	.L210
.L323:
	movq	128(%rsp), %r9
	movq	%rsi, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
.L164:
	movswq	(%rcx), %rdx
	addq	$2, %rcx
	addq	%rdx, %rax
	imulq	$1664525, %rax, %rax
	cmpq	%r9, %rcx
	jne	.L164
	movq	48(%rsp), %r10
	xorl	%edx, %edx
	divq	%r14
.L175:
	movq	%rdx, %rcx
	movl	(%r12,%rcx,4), %r9d
	cmpl	$-1, %r9d
	je	.L211
.L319:
	testq	%rbx, %rbx
	je	.L287
	movslq	%r9d, %rdx
	xorl	%eax, %eax
	imulq	%rbp, %rdx
	addq	%r10, %rdx
.L168:
	movzwl	(%rsi,%rax,2), %r15d
	cmpw	%r15w, (%rdx,%rax,2)
	je	.L318
	addq	$1, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %r14
	je	.L175
	movl	(%r12,%rcx,4), %r9d
	cmpl	$-1, %r9d
	jne	.L319
.L211:
	xorl	%r9d, %r9d
	jmp	.L165
	.p2align 4,,10
.L318:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L168
.L287:
	addl	$1, %r9d
.L165:
	movq	56(%rsp), %rdx
	movl	40(%rsp), %ecx
	movl	64(%rsp), %eax
	addq	%rbp, 72(%rsp)
	imull	12(%rdx), %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	cltq
	movl	%r9d, 4(%r8,%rax,4)
	movl	%ecx, %eax
	movl	12(%rdx), %ecx
	addl	$1, %eax
	movl	%eax, 40(%rsp)
	cmpl	%eax, %ecx
	jg	.L169
	movl	8(%rdx), %eax
.L109:
	addq	$1, 112(%rsp)
	movq	112(%rsp), %rdx
	cmpl	%edx, %eax
	jg	.L170
.L108:
	movq	%rdi, %rcx
	call	_ZdaPv
	movq	%rsi, %rcx
	call	_ZdaPv
	testq	%r12, %r12
	je	.L171
	movq	%r12, %rcx
	call	_ZdlPv
.L171:
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.L3
	movaps	192(%rsp), %xmm6
	movq	%rax, %rcx
	movaps	208(%rsp), %xmm7
	movaps	224(%rsp), %xmm8
	movaps	240(%rsp), %xmm9
	movaps	256(%rsp), %xmm10
	movaps	272(%rsp), %xmm11
	movaps	288(%rsp), %xmm12
	movaps	304(%rsp), %xmm13
	movaps	320(%rsp), %xmm14
	movaps	336(%rsp), %xmm15
	addq	$360, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	_ZdlPv
	.p2align 4,,10
.L317:
	leal	10(%r14), %r15d
	movl	%r14d, 136(%rsp)
	leaq	(%r14,%r14), %rax
	movslq	%r15d, %r15
	imulq	%rbx, %r15
	movq	%rax, 104(%rsp)
	testq	%r15, %r15
	je	.L206
	js	.L320
	addq	%r15, %r15
	movq	%r15, %rcx
.LEHB5:
	call	_Znwy
.LEHE5:
	movq	%r15, %r8
	xorl	%edx, %edx
	movq	%rax, %rcx
	movq	%rax, 88(%rsp)
	call	memset
	addq	88(%rsp), %r15
	movq	%r15, 144(%rsp)
.L144:
	movq	48(%rsp), %rax
	movq	96(%rsp), %r8
	cmpq	%r8, %rax
	je	.L146
	movq	88(%rsp), %rcx
	subq	%rax, %r8
	movq	%rax, %rdx
	call	memmove
.L146:
	leaq	(%r14,%r14), %rax
	testq	%rax, %rax
	je	.L207
	movabsq	$4611686018427387903, %rcx
	cmpq	%rcx, %rax
	ja	.L321
	leaq	0(,%r14,8), %r15
	movq	%r15, %rcx
.LEHB6:
	call	_Znwy
.LEHE6:
	movq	%r15, %r8
	movl	$255, %edx
	movq	%rax, %rcx
	call	memset
	movq	%rax, %r9
.L147:
	movl	136(%rsp), %r15d
	testl	%r15d, %r15d
	jle	.L158
	leal	-1(%r14), %eax
	movq	%r12, %r8
	leaq	4(%r12,%rax,4), %r11
	movq	104(%rsp), %rax
	leaq	-1(%rax), %rcx
	jmp	.L159
	.p2align 4,,10
.L152:
	addq	$4, %r8
	cmpq	%r8, %r11
	je	.L158
.L159:
	movl	(%r8), %r10d
	testl	%r10d, %r10d
	js	.L152
	movslq	%r10d, %rax
	imulq	%rbx, %rax
	testq	%rbx, %rbx
	je	.L208
	movq	88(%rsp), %rdx
	leaq	(%rdx,%rax,2), %r14
	addq	%rbx, %rax
	leaq	(%rdx,%rax,2), %r15
	xorl	%eax, %eax
	.p2align 4,,10
.L154:
	movswq	(%r14), %rdx
	addq	$2, %r14
	addq	%rdx, %rax
	imulq	$1664525, %rax, %rax
	cmpq	%r14, %r15
	jne	.L154
	xorl	%edx, %edx
	divq	104(%rsp)
	jmp	.L156
	.p2align 4,,10
.L322:
	leaq	1(%rdx), %rax
	cmpq	%rcx, %rdx
	movl	$0, %edx
	cmovb	%rax, %rdx
.L156:
	leaq	(%r9,%rdx,4), %rax
	movl	(%rax), %r14d
	testl	%r14d, %r14d
	jns	.L322
	addq	$4, %r8
	movl	%r10d, (%rax)
	cmpq	%r8, %r11
	jne	.L159
.L158:
	movq	%r12, %rcx
	movq	%r9, 96(%rsp)
	call	_ZdlPv
	cmpq	$0, 48(%rsp)
	movq	96(%rsp), %r9
	je	.L151
	movq	48(%rsp), %rcx
	movq	%r9, 96(%rsp)
	call	_ZdlPv
	movq	96(%rsp), %r9
.L151:
	movq	56(%rsp), %rax
	testq	%rbx, %rbx
	movq	%r9, %r12
	movq	104(%rsp), %r14
	movq	40(%rax), %r8
	movq	144(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 48(%rsp)
	jne	.L323
.L210:
	xorl	%edx, %edx
	movq	48(%rsp), %r10
	jmp	.L175
	.p2align 4,,10
.L314:
	leal	10(%r14), %r15d
	movl	%r14d, 136(%rsp)
	leaq	(%r14,%r14), %rax
	movslq	%r15d, %r15
	imulq	%rbx, %r15
	movq	%rax, 104(%rsp)
	testq	%r15, %r15
	je	.L200
	js	.L324
	addq	%r15, %r15
	movq	%r15, %rcx
.LEHB7:
	call	_Znwy
.LEHE7:
	movq	%r15, %r8
	xorl	%edx, %edx
	movq	%rax, %rcx
	movq	%rax, 88(%rsp)
	call	memset
	addq	88(%rsp), %r15
	movq	%r15, 144(%rsp)
.L118:
	movq	48(%rsp), %rax
	movq	96(%rsp), %r8
	cmpq	%r8, %rax
	je	.L120
	movq	88(%rsp), %rcx
	subq	%rax, %r8
	movq	%rax, %rdx
	call	memmove
.L120:
	leaq	(%r14,%r14), %rax
	testq	%rax, %rax
	je	.L201
	movabsq	$4611686018427387903, %rcx
	cmpq	%rcx, %rax
	ja	.L325
	leaq	0(,%r14,8), %r15
	movq	%r15, %rcx
.LEHB8:
	call	_Znwy
	movq	%r15, %r8
	movl	$255, %edx
	movq	%rax, %rcx
	call	memset
	movq	%rax, %r9
.L121:
	movl	136(%rsp), %r15d
	testl	%r15d, %r15d
	jle	.L132
	leal	-1(%r14), %eax
	movq	%r12, %r8
	leaq	4(%r12,%rax,4), %r11
	movq	104(%rsp), %rax
	leaq	-1(%rax), %rcx
	jmp	.L133
	.p2align 4,,10
.L126:
	addq	$4, %r8
	cmpq	%r8, %r11
	je	.L132
.L133:
	movl	(%r8), %r10d
	testl	%r10d, %r10d
	js	.L126
	movslq	%r10d, %rax
	imulq	%rbx, %rax
	testq	%rbx, %rbx
	je	.L202
	movq	88(%rsp), %rdx
	leaq	(%rdx,%rax,2), %r14
	addq	%rbx, %rax
	leaq	(%rdx,%rax,2), %r15
	xorl	%eax, %eax
	.p2align 4,,10
.L128:
	movswq	(%r14), %rdx
	addq	$2, %r14
	addq	%rdx, %rax
	imulq	$1664525, %rax, %rax
	cmpq	%r14, %r15
	jne	.L128
	xorl	%edx, %edx
	divq	104(%rsp)
	jmp	.L130
	.p2align 4,,10
.L326:
	leaq	1(%rdx), %rax
	cmpq	%rcx, %rdx
	movl	$0, %edx
	cmovb	%rax, %rdx
.L130:
	leaq	(%r9,%rdx,4), %rax
	movl	(%rax), %r14d
	testl	%r14d, %r14d
	jns	.L326
	addq	$4, %r8
	movl	%r10d, (%rax)
	cmpq	%r8, %r11
	jne	.L133
.L132:
	testq	%r12, %r12
	je	.L125
	movq	%r12, %rcx
	movq	%r9, 96(%rsp)
	call	_ZdlPv
	movq	96(%rsp), %r9
.L125:
	movq	48(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L134
	movq	%r9, 48(%rsp)
	call	_ZdlPv
	movq	48(%rsp), %r9
.L134:
	movq	56(%rsp), %rax
	testq	%rbx, %rbx
	movq	%r9, %r12
	movq	104(%rsp), %r14
	movl	12(%rax), %ecx
	movq	144(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 48(%rsp)
	jne	.L327
.L204:
	xorl	%edx, %edx
	movq	48(%rsp), %r10
	jmp	.L177
	.p2align 4,,10
.L202:
	xorl	%edx, %edx
	jmp	.L130
	.p2align 4,,10
.L208:
	xorl	%edx, %edx
	jmp	.L156
	.p2align 4,,10
.L201:
	xorl	%r9d, %r9d
	jmp	.L121
	.p2align 4,,10
.L207:
	xorl	%r9d, %r9d
	jmp	.L147
	.p2align 4,,10
.L200:
	movq	$0, 88(%rsp)
	movq	$0, 144(%rsp)
	jmp	.L118
	.p2align 4,,10
.L206:
	movq	$0, 88(%rsp)
	movq	$0, 144(%rsp)
	jmp	.L144
.L199:
	xorl	%eax, %eax
	jmp	.L113
.L191:
	xorl	%r11d, %r11d
	jmp	.L44
.L190:
	movslq	%ebp, %rax
	pxor	%xmm2, %xmm2
	movq	%rax, 160(%rsp)
	jmp	.L42
.L189:
	xorl	%eax, %eax
	jmp	.L26
.L302:
	movq	%rcx, %rax
	movq	152(%rsp), %rcx
	leaq	(%rax,%rcx,4), %rcx
	jmp	.L185
.L193:
	movl	$0, 40(%rsp)
	jmp	.L57
.L3:
	movaps	192(%rsp), %xmm6
	movaps	208(%rsp), %xmm7
	movaps	224(%rsp), %xmm8
	movaps	240(%rsp), %xmm9
	movaps	256(%rsp), %xmm10
	movaps	272(%rsp), %xmm11
	movaps	288(%rsp), %xmm12
	movaps	304(%rsp), %xmm13
	movaps	320(%rsp), %xmm14
	movaps	336(%rsp), %xmm15
	addq	$360, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L188:
	xorl	%r12d, %r12d
	jmp	.L6
.L187:
	movq	$0, 48(%rsp)
	movq	$0, 96(%rsp)
	jmp	.L4
.L300:
	movq	%r15, %rcx
	call	_ZdaPv
	movq	%rdi, %rcx
	call	_ZdaPv
	movq	104(%rsp), %rcx
	call	_ZdaPv
	movq	%rsi, %rcx
	call	_ZdaPv
	movq	72(%rsp), %rcx
	call	_ZdaPv
	movq	136(%rsp), %rcx
	call	_ZdaPv
	movq	168(%rsp), %rcx
	call	_ZdaPv
	movq	56(%rsp), %rax
	xorl	%ecx, %ecx
	movq	$0, 80(%rsp)
	movl	$0, 12(%rax)
	jmp	.L181
.L325:
	call	_ZSt17__throw_bad_allocv
.LEHE8:
.L320:
.LEHB9:
	call	_ZSt17__throw_bad_allocv
.LEHE9:
.L293:
.LEHB10:
	call	_ZSt17__throw_bad_allocv
.LEHE10:
	.p2align 4,,10
.L299:
	call	sqrt
	movq	56(%rsp), %rax
	movl	4(%rax), %ebp
	jmp	.L40
.L309:
.LEHB11:
	call	_ZSt17__throw_bad_allocv
.LEHE11:
.L308:
.LEHB12:
	call	_ZSt17__throw_bad_allocv
.LEHE12:
.L321:
.LEHB13:
	call	_ZSt17__throw_bad_allocv
.LEHE13:
.L324:
.LEHB14:
	call	_ZSt17__throw_bad_allocv
.LEHE14:
.L292:
.LEHB15:
	call	_ZSt17__throw_bad_allocv
.L212:
	cmpq	$0, 48(%rsp)
	movq	%rax, %rbx
	je	.L174
.L288:
	movq	48(%rsp), %rcx
	call	_ZdlPv
.L174:
	movq	%rbx, %rcx
	call	_Unwind_Resume
.LEHE15:
.L313:
.LEHB16:
	call	__cxa_throw_bad_array_new_length
.L312:
	call	__cxa_throw_bad_array_new_length
.L102:
	call	__cxa_throw_bad_array_new_length
.L213:
	cmpq	$0, 128(%rsp)
	movq	%rax, %rbx
	je	.L90
	movq	128(%rsp), %rcx
	call	_ZdlPv
.L90:
	testq	%r12, %r12
	je	.L173
.L162:
	movq	%r12, %rcx
	call	_ZdlPv
.L173:
	cmpq	$0, 48(%rsp)
	jne	.L288
	jmp	.L174
.L21:
	call	__cxa_throw_bad_array_new_length
.L298:
	call	__cxa_throw_bad_array_new_length
.L297:
	call	__cxa_throw_bad_array_new_length
.L215:
	cmpq	$0, 88(%rsp)
	movq	%rax, %rbx
	je	.L162
	movq	88(%rsp), %rcx
	call	_ZdlPv
	jmp	.L162
.L295:
	call	__cxa_throw_bad_array_new_length
.L216:
	movq	%rax, %rbx
	jmp	.L90
.L294:
	call	__cxa_throw_bad_array_new_length
.L217:
	movq	%rax, %rbx
	jmp	.L162
.L214:
	cmpq	$0, 88(%rsp)
	movq	%rax, %rbx
	je	.L90
	movq	88(%rsp), %rcx
	call	_ZdlPv
	jmp	.L90
.L296:
	call	__cxa_throw_bad_array_new_length
	nop
.LEHE16:
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2187:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2187-.LLSDACSB2187
.LLSDACSB2187:
	.uleb128 .LEHB0-.LFB2187
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2187
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L212-.LFB2187
	.uleb128 0
	.uleb128 .LEHB2-.LFB2187
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L216-.LFB2187
	.uleb128 0
	.uleb128 .LEHB3-.LFB2187
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L213-.LFB2187
	.uleb128 0
	.uleb128 .LEHB4-.LFB2187
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L216-.LFB2187
	.uleb128 0
	.uleb128 .LEHB5-.LFB2187
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L217-.LFB2187
	.uleb128 0
	.uleb128 .LEHB6-.LFB2187
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L215-.LFB2187
	.uleb128 0
	.uleb128 .LEHB7-.LFB2187
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L216-.LFB2187
	.uleb128 0
	.uleb128 .LEHB8-.LFB2187
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L214-.LFB2187
	.uleb128 0
	.uleb128 .LEHB9-.LFB2187
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L217-.LFB2187
	.uleb128 0
	.uleb128 .LEHB10-.LFB2187
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L212-.LFB2187
	.uleb128 0
	.uleb128 .LEHB11-.LFB2187
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L213-.LFB2187
	.uleb128 0
	.uleb128 .LEHB12-.LFB2187
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L216-.LFB2187
	.uleb128 0
	.uleb128 .LEHB13-.LFB2187
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L215-.LFB2187
	.uleb128 0
	.uleb128 .LEHB14-.LFB2187
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L216-.LFB2187
	.uleb128 0
	.uleb128 .LEHB15-.LFB2187
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB2187
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L216-.LFB2187
	.uleb128 0
.LLSDACSE2187:
	.section	.text$_ZN13Permutohedral4initEPKf,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZN13Permutohedral7computeEPKfibPf,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZN13Permutohedral7computeEPKfibPf
	.def	_ZN13Permutohedral7computeEPKfibPf;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13Permutohedral7computeEPKfibPf
_ZN13Permutohedral7computeEPKfibPf:
.LFB2191:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$232, %rsp
	.seh_stackalloc	232
	movaps	%xmm6, 176(%rsp)
	.seh_savexmm	%xmm6, 176
	movaps	%xmm7, 192(%rsp)
	.seh_savexmm	%xmm7, 192
	movaps	%xmm8, 208(%rsp)
	.seh_savexmm	%xmm8, 208
	.seh_endprologue
	movabsq	$2305843009213693950, %rdi
	movq	336(%rsp), %rax
	movq	%rcx, %r15
	movq	%rcx, 120(%rsp)
	movq	%rdx, %rsi
	movl	%r8d, %r14d
	movq	%rax, 144(%rsp)
	movl	12(%rcx), %eax
	movl	%r9d, 72(%rsp)
	movb	%r9b, 136(%rsp)
	movl	%eax, 32(%rsp)
	addl	$2, %eax
	imull	%r8d, %eax
	cltq
	cmpq	%rdi, %rax
	ja	.L329
	leaq	0(,%rax,4), %rcx
	call	_Znay
	movq	%rax, %rbx
	movl	12(%r15), %eax
	movl	%eax, 32(%rsp)
	addl	$2, %eax
	imull	%r14d, %eax
	cltq
	cmpq	%rdi, %rax
	ja	.L329
	leaq	0(,%rax,4), %rcx
	call	_Znay
	movq	%rax, 48(%rsp)
	movq	120(%rsp), %rax
	movl	12(%rax), %eax
	leal	2(%rax), %edi
	movl	%eax, 96(%rsp)
	imull	%r14d, %edi
	movslq	%edi, %rdi
	salq	$2, %rdi
	leaq	(%rbx,%rdi), %rax
	cmpq	%rax, %rbx
	je	.L334
	movq	%rdi, %r8
	xorl	%edx, %edx
	movq	%rbx, %rcx
	call	memset
.L334:
	movq	48(%rsp), %rcx
	leaq	(%rcx,%rdi), %rax
	cmpq	%rax, %rcx
	je	.L332
	movq	%rdi, %r8
	xorl	%edx, %edx
	call	memset
.L332:
	movq	120(%rsp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	movl	%eax, 108(%rsp)
	jle	.L339
	movq	120(%rsp), %rdi
	movl	8(%rdi), %eax
	testl	%eax, %eax
	jle	.L339
	testl	%r14d, %r14d
	jle	.L339
	movslq	%eax, %rdx
	subl	$1, %eax
	movl	%r14d, %r9d
	movq	24(%rdi), %r13
	addq	$1, %rax
	movq	32(%rdi), %r15
	shrl	$2, %r9d
	movl	%r14d, %ebp
	leaq	0(,%rax,4), %r12
	negq	%rax
	salq	$4, %r9
	movl	$0, 32(%rsp)
	leaq	0(,%rdx,4), %rcx
	salq	$2, %rax
	andl	$-4, %ebp
	leal	-1(%r14), %edi
	movq	%rcx, 56(%rsp)
	xorl	%r11d, %r11d
	movl	%edi, 40(%rsp)
	movq	%rax, 64(%rsp)
	.p2align 4,,10
.L342:
	movq	64(%rsp), %rax
	leaq	(%rax,%r12), %r10
	movslq	%r11d, %rax
	leaq	(%rsi,%rax,4), %rax
	.p2align 4,,10
.L338:
	movl	0(%r13,%r10), %ecx
	movss	(%r15,%r10), %xmm2
	imull	%r14d, %ecx
	cmpl	$2, 40(%rsp)
	jbe	.L392
	movslq	%ecx, %rdx
	movaps	%xmm2, %xmm3
	leaq	(%rbx,%rdx,4), %r8
	xorl	%edx, %edx
	shufps	$0, %xmm3, %xmm3
	.p2align 4,,10
.L344:
	pxor	%xmm0, %xmm0
	movlps	(%rax,%rdx), %xmm0
	pxor	%xmm1, %xmm1
	movlps	(%r8,%rdx), %xmm1
	movhps	8(%rax,%rdx), %xmm0
	movhps	8(%r8,%rdx), %xmm1
	mulps	%xmm3, %xmm0
	addps	%xmm1, %xmm0
	movlps	%xmm0, (%r8,%rdx)
	movhps	%xmm0, 8(%r8,%rdx)
	addq	$16, %rdx
	cmpq	%r9, %rdx
	jne	.L344
	cmpl	%r14d, %ebp
	movl	%ebp, %edx
	je	.L346
.L340:
	leal	(%rcx,%rdx), %r8d
	movslq	%r8d, %r8
	leaq	(%rbx,%r8,4), %rdi
	leal	(%r11,%rdx), %r8d
	movslq	%r8d, %r8
	movss	(%rsi,%r8,4), %xmm0
	leal	1(%rdx), %r8d
	cmpl	%r8d, %r14d
	mulss	%xmm2, %xmm0
	addss	(%rdi), %xmm0
	movss	%xmm0, (%rdi)
	jle	.L346
	leal	(%rcx,%r8), %edi
	addl	%r11d, %r8d
	addl	$2, %edx
	movslq	%r8d, %r8
	movslq	%edi, %rdi
	cmpl	%edx, %r14d
	movss	(%rsi,%r8,4), %xmm0
	leaq	(%rbx,%rdi,4), %rdi
	mulss	%xmm2, %xmm0
	addss	(%rdi), %xmm0
	movss	%xmm0, (%rdi)
	jle	.L346
	addl	%edx, %ecx
	addl	%r11d, %edx
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	leaq	(%rbx,%rcx,4), %rcx
	mulss	(%rsi,%rdx,4), %xmm2
	addss	(%rcx), %xmm2
	movss	%xmm2, (%rcx)
.L346:
	addq	$4, %r10
	cmpq	%r12, %r10
	jne	.L338
	addl	$1, 32(%rsp)
	addl	%r14d, %r11d
	movl	32(%rsp), %eax
	addq	56(%rsp), %r12
	cmpl	108(%rsp), %eax
	jne	.L342
.L339:
	movq	120(%rsp), %rax
	cmpb	$0, 72(%rsp)
	movl	4(%rax), %edi
	movl	$0, %eax
	cmovne	%edi, %eax
	movl	%edi, 128(%rsp)
	cmpl	%edi, %eax
	movl	%eax, 104(%rsp)
	jg	.L380
	movl	104(%rsp), %r8d
	testl	%r8d, %r8d
	js	.L380
	movslq	%r14d, %rax
	movsd	.LC11(%rip), %xmm3
	salq	$2, %rax
	movapd	.LC10(%rip), %xmm2
	movq	%rax, 32(%rsp)
	addq	$16, %rax
	movapd	%xmm3, %xmm4
	movq	%rax, 152(%rsp)
	movl	%r14d, %eax
	shrl	$2, %eax
	salq	$4, %rax
	movq	%rax, 72(%rsp)
	movl	%r14d, %eax
	andl	$-4, %eax
	leal	1(%rax), %esi
	movl	%eax, 64(%rsp)
	addl	$2, %eax
	movl	%eax, 92(%rsp)
	movl	96(%rsp), %eax
	movl	%esi, 80(%rsp)
	subl	$1, %eax
	movl	%eax, 160(%rsp)
	leal	-1(%r14), %eax
	movl	%eax, 56(%rsp)
	movq	%rax, 112(%rsp)
	.p2align 4,,10
.L348:
	movl	96(%rsp), %edx
	testl	%edx, %edx
	jle	.L356
	movq	120(%rsp), %rax
	movl	96(%rsp), %r8d
	imull	104(%rsp), %r8d
	testl	%r14d, %r14d
	movq	40(%rax), %r9
	jle	.L356
	movq	48(%rsp), %rdi
	leal	(%r8,%r8), %eax
	movslq	%r8d, %r8
	movl	%r14d, %r12d
	movq	32(%rsp), %rcx
	cltq
	leaq	(%r9,%rax,4), %rsi
	movq	%rdi, %rax
	addq	152(%rsp), %rdi
	addq	%rcx, %rax
	leaq	(%rbx,%rcx), %rdx
	movl	160(%rsp), %ecx
	addq	%r8, %rcx
	leaq	8(%r9,%rcx,8), %rcx
	movq	%rcx, 40(%rsp)
	.p2align 4,,10
.L358:
	movl	(%rsi), %r10d
	movl	4(%rsi), %r11d
	imull	%r14d, %r10d
	imull	%r14d, %r11d
	movslq	%r10d, %r9
	leaq	(%rbx,%r9,4), %rcx
	movslq	%r11d, %r13
	leaq	16(%rbx,%r9,4), %r9
	leaq	(%rbx,%r13,4), %r8
	cmpq	%r9, %rax
	setnb	%bpl
	cmpq	%rdi, %rcx
	setnb	%r9b
	orl	%r9d, %ebp
	leaq	16(%rdx), %r9
	cmpq	%r9, %rax
	setnb	%r15b
	cmpq	%rdi, %rdx
	setnb	%r9b
	orl	%r15d, %r9d
	cmpl	$2, 56(%rsp)
	seta	%r15b
	andl	%r15d, %r9d
	testb	%r9b, %bpl
	je	.L355
	leaq	16(%rbx,%r13,4), %r9
	cmpq	%r9, %rax
	setnb	%r13b
	cmpq	%rdi, %r8
	setnb	%bpl
	xorl	%r9d, %r9d
	orb	%bpl, %r13b
	je	.L355
	movq	72(%rsp), %rbp
	.p2align 4,,10
.L353:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movlps	(%r8,%r9), %xmm0
	pxor	%xmm5, %xmm5
	movlps	(%rcx,%r9), %xmm1
	movhps	8(%r8,%r9), %xmm0
	movlps	(%rdx,%r9), %xmm5
	movhps	8(%rcx,%r9), %xmm1
	movhps	8(%rdx,%r9), %xmm5
	addps	%xmm0, %xmm1
	movhlps	%xmm5, %xmm7
	cvtps2pd	%xmm5, %xmm8
	cvtps2pd	%xmm7, %xmm5
	movhlps	%xmm1, %xmm6
	cvtps2pd	%xmm1, %xmm0
	cvtps2pd	%xmm6, %xmm1
	mulpd	%xmm2, %xmm0
	mulpd	%xmm2, %xmm1
	addpd	%xmm8, %xmm0
	addpd	%xmm5, %xmm1
	cvtpd2ps	%xmm0, %xmm0
	cvtpd2ps	%xmm1, %xmm1
	movlhps	%xmm1, %xmm0
	movlps	%xmm0, (%rax,%r9)
	movhps	%xmm0, 8(%rax,%r9)
	addq	$16, %r9
	cmpq	%rbp, %r9
	jne	.L353
	movl	64(%rsp), %r15d
	cmpl	%r14d, %r15d
	je	.L360
	leal	(%r10,%r15), %r9d
	movq	48(%rsp), %rbp
	pxor	%xmm1, %xmm1
	pxor	%xmm5, %xmm5
	leal	(%r11,%r15), %r8d
	movslq	%r9d, %r9
	movss	(%rbx,%r9,4), %xmm0
	leal	(%r12,%r15), %ecx
	movslq	%r8d, %r8
	addss	(%rbx,%r8,4), %xmm0
	movslq	%ecx, %rcx
	movl	80(%rsp), %r15d
	cvtss2sd	(%rbx,%rcx,4), %xmm1
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm4, %xmm0
	cmpl	%r15d, %r14d
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, 0(%rbp,%rcx,4)
	jle	.L360
	leal	(%r10,%r15), %r9d
	pxor	%xmm1, %xmm1
	pxor	%xmm5, %xmm5
	leal	(%r11,%r15), %r8d
	movslq	%r9d, %r9
	movss	(%rbx,%r9,4), %xmm0
	leal	(%r12,%r15), %ecx
	movslq	%r8d, %r8
	addss	(%rbx,%r8,4), %xmm0
	movslq	%ecx, %rcx
	movl	92(%rsp), %r15d
	cvtss2sd	(%rbx,%rcx,4), %xmm1
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm4, %xmm0
	cmpl	%r15d, %r14d
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, 0(%rbp,%rcx,4)
	jle	.L360
	addl	%r15d, %r11d
	addl	%r15d, %r10d
	pxor	%xmm1, %xmm1
	pxor	%xmm5, %xmm5
	leal	(%r12,%r15), %ecx
	movslq	%r11d, %r11
	movslq	%r10d, %r10
	movss	(%rbx,%r11,4), %xmm0
	movslq	%ecx, %rcx
	addss	(%rbx,%r10,4), %xmm0
	cvtss2sd	(%rbx,%rcx,4), %xmm1
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, 0(%rbp,%rcx,4)
.L360:
	movq	32(%rsp), %rcx
	addq	$8, %rsi
	addl	%r14d, %r12d
	addq	%rcx, %rax
	addq	%rcx, %rdx
	addq	%rcx, %rdi
	cmpq	40(%rsp), %rsi
	jne	.L358
.L356:
	movl	104(%rsp), %esi
	cmpb	$0, 136(%rsp)
	leal	1(%rsi), %eax
	leal	-1(%rsi), %edx
	cmovne	%edx, %eax
	cmpl	128(%rsp), %eax
	movl	%eax, 104(%rsp)
	jg	.L347
	movl	104(%rsp), %ecx
	testl	%ecx, %ecx
	js	.L347
	movq	%rbx, %rax
	movq	48(%rsp), %rbx
	movq	%rax, 48(%rsp)
	jmp	.L348
	.p2align 4,,10
.L355:
	xorl	%r9d, %r9d
	movq	112(%rsp), %r11
	jmp	.L361
	.p2align 4,,10
.L393:
	movq	%r10, %r9
.L361:
	pxor	%xmm1, %xmm1
	pxor	%xmm5, %xmm5
	leaq	1(%r9), %r10
	cmpq	%r11, %r9
	movss	(%r8,%r9,4), %xmm0
	cvtss2sd	(%rdx,%r9,4), %xmm1
	addss	(%rcx,%r9,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, (%rax,%r9,4)
	jne	.L393
	jmp	.L360
.L392:
	xorl	%edx, %edx
	jmp	.L340
.L380:
	movq	48(%rsp), %rax
	movq	%rbx, 48(%rsp)
	movq	%rax, %rbx
.L347:
	movl	108(%rsp), %eax
	movq	144(%rsp), %rsi
	imull	%r14d, %eax
	cltq
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rsi, %rax
	je	.L365
	subq	%rsi, %rax
	movq	%rsi, %rcx
	xorl	%edx, %edx
	subq	$4, %rax
	shrq	$2, %rax
	leaq	4(,%rax,4), %r8
	call	memset
.L365:
	movl	108(%rsp), %eax
	testl	%eax, %eax
	jle	.L368
	movq	120(%rsp), %r11
	movl	8(%r11), %eax
	testl	%eax, %eax
	jle	.L368
	testl	%r14d, %r14d
	jle	.L368
	movslq	%eax, %rdx
	movl	%r14d, %r13d
	subl	$1, %eax
	movq	%rbx, 168(%rsp)
	andl	$-4, %r13d
	addq	$1, %rax
	movq	48(%rsp), %rbx
	movl	%r14d, %r10d
	leal	1(%r13), %r15d
	shrl	$2, %r10d
	movl	$0, 104(%rsp)
	leaq	0(,%rdx,4), %rdi
	salq	$4, %r10
	movl	$0, 92(%rsp)
	movq	%rdi, 96(%rsp)
	movq	24(%r11), %rdi
	leaq	0(,%rax,4), %rsi
	negq	%rax
	movq	%rsi, 32(%rsp)
	movq	32(%r11), %rsi
	salq	$2, %rax
	movq	%rax, 112(%rsp)
	movq	%rdi, 56(%rsp)
	leal	2(%r13), %edi
	movl	%edi, 72(%rsp)
	movslq	%r14d, %rdi
	movq	%rdi, 160(%rsp)
	leaq	16(%r11), %rdi
	movq	%rdi, 136(%rsp)
	leaq	20(%r11), %rdi
	movq	%rdi, 152(%rsp)
	movq	144(%rsp), %rdi
	movq	%rsi, 64(%rsp)
	leal	-1(%r14), %esi
	movl	%esi, %eax
	movl	%esi, 40(%rsp)
	movq	%rax, 120(%rsp)
	addq	$4, %rdi
	movq	%rdi, 128(%rsp)
	.p2align 4,,10
.L371:
	movslq	104(%rsp), %rax
	movq	160(%rsp), %rdi
	movq	144(%rsp), %rsi
	movq	112(%rsp), %r9
	addq	32(%rsp), %r9
	leaq	(%rdi,%rax), %rcx
	leaq	(%rsi,%rcx,4), %rcx
	cmpq	%rcx, 136(%rsp)
	leaq	(%rsi,%rax,4), %rdx
	setnb	%cl
	cmpq	152(%rsp), %rdx
	setnb	%dil
	orl	%ecx, %edi
	cmpl	$2, 40(%rsp)
	seta	%cl
	andl	%ecx, %edi
	leal	0(%r13,%rax), %ecx
	movslq	%ecx, %rcx
	leaq	(%rsi,%rcx,4), %rbp
	leal	(%r15,%rax), %ecx
	movslq	%ecx, %rcx
	leaq	(%rsi,%rcx,4), %r12
	movl	72(%rsp), %ecx
	addl	%eax, %ecx
	addq	120(%rsp), %rax
	movslq	%ecx, %rcx
	leaq	(%rsi,%rcx,4), %rsi
	movq	%rsi, 80(%rsp)
	movq	128(%rsp), %rsi
	leaq	(%rsi,%rax,4), %rsi
	.p2align 4,,10
.L367:
	movq	64(%rsp), %rax
	movss	(%rax,%r9), %xmm2
	movq	56(%rsp), %rax
	movl	(%rax,%r9), %r8d
	imull	%r14d, %r8d
	testb	%dil, %dil
	je	.L394
	movslq	%r8d, %rax
	movss	16(%r11), %xmm3
	movaps	%xmm2, %xmm4
	leaq	(%rbx,%rax,4), %rcx
	xorl	%eax, %eax
	shufps	$0, %xmm4, %xmm4
	shufps	$0, %xmm3, %xmm3
	.p2align 4,,10
.L373:
	pxor	%xmm0, %xmm0
	movlps	(%rcx,%rax), %xmm0
	pxor	%xmm1, %xmm1
	movlps	(%rdx,%rax), %xmm1
	movhps	8(%rcx,%rax), %xmm0
	movhps	8(%rdx,%rax), %xmm1
	mulps	%xmm4, %xmm0
	mulps	%xmm3, %xmm0
	addps	%xmm1, %xmm0
	movlps	%xmm0, (%rdx,%rax)
	movhps	%xmm0, 8(%rdx,%rax)
	addq	$16, %rax
	cmpq	%r10, %rax
	jne	.L373
	cmpl	%r14d, %r13d
	je	.L376
	leal	(%r8,%r13), %eax
	cmpl	%r14d, %r15d
	cltq
	movss	(%rbx,%rax,4), %xmm0
	mulss	%xmm2, %xmm0
	mulss	16(%r11), %xmm0
	addss	0(%rbp), %xmm0
	movss	%xmm0, 0(%rbp)
	jge	.L376
	leal	(%r15,%r8), %eax
	cltq
	movss	(%rbx,%rax,4), %xmm0
	movl	72(%rsp), %eax
	mulss	%xmm2, %xmm0
	mulss	16(%r11), %xmm0
	addss	(%r12), %xmm0
	cmpl	%r14d, %eax
	movss	%xmm0, (%r12)
	jge	.L376
	addl	%eax, %r8d
	movq	80(%rsp), %rax
	movslq	%r8d, %r8
	mulss	(%rbx,%r8,4), %xmm2
	mulss	16(%r11), %xmm2
	addss	(%rax), %xmm2
	movss	%xmm2, (%rax)
.L376:
	addq	$4, %r9
	cmpq	32(%rsp), %r9
	jne	.L367
	addl	$1, 92(%rsp)
	movq	96(%rsp), %rsi
	movl	92(%rsp), %eax
	addq	%rsi, 32(%rsp)
	addl	%r14d, 104(%rsp)
	cmpl	108(%rsp), %eax
	jne	.L371
	movq	168(%rsp), %rbx
.L368:
	movq	48(%rsp), %rcx
	call	_ZdaPv
	nop
	movaps	176(%rsp), %xmm6
	movq	%rbx, %rcx
	movaps	192(%rsp), %xmm7
	movaps	208(%rsp), %xmm8
	addq	$232, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	_ZdaPv
	.p2align 4,,10
.L394:
	movslq	%r8d, %r8
	movq	%rdx, %rax
	leaq	(%rbx,%r8,4), %rcx
	.p2align 4,,10
.L377:
	movss	(%rcx), %xmm0
	addq	$4, %rax
	addq	$4, %rcx
	mulss	%xmm2, %xmm0
	mulss	16(%r11), %xmm0
	addss	-4(%rax), %xmm0
	movss	%xmm0, -4(%rax)
	cmpq	%rsi, %rax
	jne	.L377
	jmp	.L376
.L329:
	call	__cxa_throw_bad_array_new_length
	nop
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2195:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	call	__main
	movl	$20971520, %ecx
.LEHB17:
	call	_Znay
	movl	$12582912, %ecx
	movq	%rax, %rbp
	call	_Znay
	movl	$12582912, %ecx
	movq	%rax, %rsi
	call	_Znay
	movl	$48, %ecx
	movq	%rax, %rdi
	call	_Znwy
.LEHE17:
	movdqa	.LC12(%rip), %xmm0
	movl	$25165824, %ecx
	movl	$0x3f783e10, 16(%rax)
	movq	%rax, %rbx
	movups	%xmm0, (%rax)
.LEHB18:
	call	_Znay
	movl	(%rbx), %ecx
	movq	%rax, 24(%rbx)
	movabsq	$2305843009213693950, %rax
	imull	8(%rbx), %ecx
	movslq	%ecx, %rcx
	cmpq	%rax, %rcx
	ja	.L396
	salq	$2, %rcx
	call	_Znay
.LEHE18:
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	%rax, 32(%rbx)
.LEHB19:
	call	_ZN13Permutohedral4initEPKf
	movq	%rdi, 32(%rsp)
	xorl	%r9d, %r9d
	movq	%rsi, %rdx
	movl	$3, %r8d
	movq	%rbx, %rcx
	call	_ZN13Permutohedral7computeEPKfibPf
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L398:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
	call	_Unwind_Resume
.LEHE19:
.L396:
.LEHB20:
	call	__cxa_throw_bad_array_new_length
	nop
.LEHE20:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2195:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2195-.LLSDACSB2195
.LLSDACSB2195:
	.uleb128 .LEHB17-.LFB2195
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB2195
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L398-.LFB2195
	.uleb128 0
	.uleb128 .LEHB19-.LFB2195
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB2195
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L398-.LFB2195
	.uleb128 0
.LLSDACSE2195:
	.section	.text.startup,"x"
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB2832:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	1879845950
	.long	1072308413
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 4
.LC4:
	.long	1065353216
	.align 4
.LC5:
	.long	1258291200
	.align 16
.LC6:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 16
.LC7:
	.long	1
	.long	1
	.long	1
	.long	1
	.align 16
.LC8:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.align 8
.LC9:
	.long	1719614412
	.long	1072079006
	.align 16
.LC10:
	.long	0
	.long	1071644672
	.long	0
	.long	1071644672
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.align 16
.LC12:
	.long	1048576
	.long	5
	.long	6
	.long	0
	.ident	"GCC: (x86_64-posix-seh, Built by strawberryperl.com project) 8.3.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
