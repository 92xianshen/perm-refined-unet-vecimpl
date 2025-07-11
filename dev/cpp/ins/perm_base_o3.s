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
	subq	$312, %rsp
	.seh_stackalloc	312
	movaps	%xmm6, 176(%rsp)
	.seh_savexmm	%xmm6, 176
	movaps	%xmm7, 192(%rsp)
	.seh_savexmm	%xmm7, 192
	movaps	%xmm8, 208(%rsp)
	.seh_savexmm	%xmm8, 208
	movaps	%xmm9, 224(%rsp)
	.seh_savexmm	%xmm9, 224
	movaps	%xmm10, 240(%rsp)
	.seh_savexmm	%xmm10, 240
	movaps	%xmm11, 256(%rsp)
	.seh_savexmm	%xmm11, 256
	movaps	%xmm12, 272(%rsp)
	.seh_savexmm	%xmm12, 272
	movaps	%xmm13, 288(%rsp)
	.seh_savexmm	%xmm13, 288
	.seh_endprologue
	movl	(%rcx), %r14d
	imull	8(%rcx), %r14d
	movslq	4(%rcx), %rbx
	addl	%r14d, %r14d
	movq	%rcx, 56(%rsp)
	movslq	%r14d, %r14
	movq	%rdx, 160(%rsp)
	movq	%r14, %rsi
	shrq	%rsi
	addq	$10, %rsi
	imulq	%rbx, %rsi
	testq	%rsi, %rsi
	je	.L193
	js	.L303
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
	movq	%rsi, 88(%rsp)
.L4:
	testq	%r14, %r14
	je	.L194
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %r14
	ja	.L304
	leaq	0(,%r14,4), %rsi
	movq	%rsi, %rcx
.LEHB1:
	call	_Znwy
.LEHE1:
	movq	%rsi, %r8
	movl	$255, %edx
	movq	%rax, %rcx
	movq	%rax, 40(%rsp)
	call	memset
.L6:
	movabsq	$2305843009213693950, %rdx
	movq	56(%rsp), %rax
	movslq	8(%rax), %rax
	cmpq	%rdx, %rax
	ja	.L305
	leaq	0(,%rax,4), %rcx
.LEHB2:
	call	_Znay
	movabsq	$2305843009213693950, %rdx
	movq	%rax, %r12
	movq	56(%rsp), %rax
	movslq	8(%rax), %rax
	cmpq	%rdx, %rax
	ja	.L306
	leaq	0(,%rax,4), %rcx
	call	_Znay
	movabsq	$2305843009213693950, %rdx
	movq	%rax, %rdi
	movq	56(%rsp), %rax
	movl	4(%rax), %eax
	movl	%eax, 32(%rsp)
	addl	$2, %eax
	cltq
	cmpq	%rdx, %rax
	ja	.L307
	leaq	0(,%rax,4), %rcx
	call	_Znay
	movabsq	$4611686018427387900, %rdx
	movq	%rax, 104(%rsp)
	movq	56(%rsp), %rax
	movslq	8(%rax), %rax
	cmpq	%rdx, %rax
	ja	.L308
	leaq	(%rax,%rax), %rcx
	call	_Znay
	movabsq	$4611686018427387900, %rdx
	movq	%rax, %rsi
	movq	56(%rsp), %rax
	movslq	4(%rax), %rax
	cmpq	%rdx, %rax
	ja	.L309
	leaq	(%rax,%rax), %rcx
	call	_Znay
	movq	%rax, %rbp
	movq	56(%rsp), %rax
	movl	8(%rax), %eax
	imull	%eax, %eax
	movslq	%eax, %rcx
	addq	%rcx, %rcx
	call	_Znay
	movq	56(%rsp), %r15
	movq	%rax, %r13
	movabsq	$2305843009213693950, %rdx
	movslq	4(%r15), %rax
	cmpq	%rdx, %rax
	ja	.L21
	leaq	0(,%rax,4), %rcx
	call	_Znay
	movl	8(%r15), %r15d
	movq	%rax, 152(%rsp)
	testl	%r15d, %r15d
	jle	.L29
	movslq	%r15d, %rax
	movq	%rdi, 64(%rsp)
	movl	%r15d, %edx
	xorl	%r8d, %r8d
	addq	%rax, %rax
	movq	%rsi, 72(%rsp)
	xorl	%r11d, %r11d
	movq	%r13, %rsi
	leaq	-2(%rax), %rcx
	movq	%rbp, 80(%rsp)
	movq	%rax, %rbp
	leaq	0(%r13,%rax), %r10
	movq	%rbx, 96(%rsp)
	movq	%rcx, %rbx
	movq	%r12, 32(%rsp)
	movq	%r10, %rdi
	.p2align 4,,10
.L30:
	leal	-1(%rdx), %r12d
	movl	%edx, %r9d
	movl	%r11d, %r10d
	cmpl	$6, %r12d
	jbe	.L195
	movl	%edx, %ecx
	movd	%r11d, %xmm0
	movq	%rsi, %rax
	shrl	$3, %ecx
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	salq	$4, %rcx
	addq	%rsi, %rcx
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
	movw	%r10w, 0(%r13,%rcx,2)
	leal	1(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L31
	addl	%r8d, %ecx
	movslq	%ecx, %rcx
	movw	%r10w, 0(%r13,%rcx,2)
	leal	2(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L31
	addl	%r8d, %ecx
	movslq	%ecx, %rcx
	movw	%r10w, 0(%r13,%rcx,2)
	leal	3(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L31
	addl	%r8d, %ecx
	movslq	%ecx, %rcx
	movw	%r10w, 0(%r13,%rcx,2)
	leal	4(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L31
	addl	%r8d, %ecx
	movslq	%ecx, %rcx
	movw	%r10w, 0(%r13,%rcx,2)
	leal	5(%rax), %ecx
	cmpl	%ecx, %edx
	jle	.L31
	addl	%r8d, %ecx
	addl	$6, %eax
	movslq	%ecx, %rcx
	cmpl	%eax, %edx
	movw	%r10w, 0(%r13,%rcx,2)
	jle	.L31
	addl	%r8d, %eax
	cltq
	movw	%r10w, 0(%r13,%rax,2)
.L31:
	cmpl	%r15d, %edx
	jge	.L36
	leal	-1(%r11), %eax
	movl	%edx, %ecx
	negl	%ecx
	cmpl	$6, %eax
	jbe	.L33
	movl	%r11d, %r9d
	movd	%ecx, %xmm0
	movq	%rdi, %rax
	shrl	$3, %r9d
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	salq	$4, %r9
	addq	%rdi, %r9
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
	movw	%cx, 0(%r13,%rax,2)
	leal	1(%r9), %eax
	cmpl	%eax, %r15d
	jle	.L36
	addl	%r8d, %eax
	cltq
	movw	%cx, 0(%r13,%rax,2)
	leal	2(%r9), %eax
	cmpl	%eax, %r15d
	jle	.L36
	addl	%r8d, %eax
	cltq
	movw	%cx, 0(%r13,%rax,2)
	leal	3(%r9), %eax
	cmpl	%eax, %r15d
	jle	.L36
	addl	%r8d, %eax
	cltq
	movw	%cx, 0(%r13,%rax,2)
	leal	4(%r9), %eax
	cmpl	%eax, %r15d
	jle	.L36
	addl	%r8d, %eax
	cltq
	movw	%cx, 0(%r13,%rax,2)
	leal	5(%r9), %eax
	cmpl	%eax, %r15d
	jle	.L36
	addl	%r8d, %eax
	addl	$6, %r9d
	cltq
	cmpl	%r9d, %r15d
	movw	%cx, 0(%r13,%rax,2)
	jle	.L36
	addl	%r8d, %r9d
	movslq	%r9d, %rax
	movw	%cx, 0(%r13,%rax,2)
.L36:
	addl	$1, %r11d
	addl	%r15d, %r8d
	addq	%rbx, %rdi
	addq	%rbp, %rsi
	cmpl	%r15d, %r11d
	movl	%r12d, %edx
	jne	.L30
	movq	32(%rsp), %r12
	movq	64(%rsp), %rdi
	movq	72(%rsp), %rsi
	movq	80(%rsp), %rbp
	movq	96(%rsp), %rbx
.L29:
	movq	56(%rsp), %rax
	pxor	%xmm8, %xmm8
	cvtsi2sd	%r15d, %xmm8
	mulsd	.LC1(%rip), %xmm8
	movl	4(%rax), %r11d
	cvtsd2ss	%xmm8, %xmm8
	testl	%r11d, %r11d
	jle	.L24
	movsd	.LC8(%rip), %xmm0
	cvtss2sd	%xmm8, %xmm8
	cmpl	$1, %r11d
	pxor	%xmm7, %xmm7
	movq	152(%rsp), %rax
	mulsd	%xmm8, %xmm0
	cvtsd2ss	%xmm0, %xmm7
	movss	%xmm7, (%rax)
	je	.L24
	movsd	.LC3(%rip), %xmm7
	movl	$1, %r15d
	pxor	%xmm9, %xmm9
	.p2align 4,,10
.L188:
	leal	1(%r15), %eax
	pxor	%xmm0, %xmm0
	leal	2(%r15), %edx
	imull	%edx, %eax
	cvtsi2sd	%eax, %xmm0
	ucomisd	%xmm0, %xmm9
	sqrtsd	%xmm0, %xmm6
	ja	.L310
.L40:
	movapd	%xmm7, %xmm0
	movq	152(%rsp), %rax
	pxor	%xmm3, %xmm3
	divsd	%xmm6, %xmm0
	mulsd	%xmm8, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, (%rax,%r15,4)
	addq	$1, %r15
	cmpl	%r15d, %r11d
	jg	.L188
.L24:
	movq	56(%rsp), %rax
	movl	(%rax), %edx
	testl	%edx, %edx
	jle	.L311
	movl	8(%rax), %r15d
	leaq	(%rbx,%rbx), %rax
	movl	$0, 112(%rsp)
	movss	.LC6(%rip), %xmm9
	movq	%rax, 120(%rsp)
	addq	%rbp, %rax
	movsd	.LC3(%rip), %xmm7
	movq	%rax, 128(%rsp)
	movq	$-2, %rax
	movss	.LC4(%rip), %xmm6
	movq	$0, 72(%rsp)
	subq	%rsi, %rax
	movq	%rax, 168(%rsp)
	movl	112(%rsp), %eax
	.p2align 4,,10
.L106:
	imull	%r11d, %eax
	testl	%r11d, %r11d
	cltq
	leaq	0(,%rax,4), %rdx
	jle	.L196
	movq	160(%rsp), %rcx
	movslq	%r11d, %rax
	pxor	%xmm2, %xmm2
	movq	%rax, 64(%rsp)
	addq	%rcx, %rdx
	movq	152(%rsp), %rcx
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
	movss	%xmm3, (%r12,%rax,4)
	subq	$1, %rax
	testl	%eax, %eax
	jg	.L43
.L42:
	movss	%xmm2, (%r12)
	pxor	%xmm2, %xmm2
	movaps	%xmm6, %xmm10
	testl	%r15d, %r15d
	cvtsi2ss	%r15d, %xmm2
	divss	%xmm2, %xmm10
	jle	.L197
	leal	-1(%r15), %eax
	movq	%r12, %rdx
	movq	%rdi, %rcx
	movss	.LC5(%rip), %xmm3
	leaq	4(%r12,%rax,4), %r8
	xorl	%r9d, %r9d
	movaps	%xmm9, %xmm1
	jmp	.L45
	.p2align 4,,10
.L312:
	cvttss2si	%xmm5, %eax
.L296:
	cwtl
	pxor	%xmm0, %xmm0
	pxor	%xmm4, %xmm4
	addq	$4, %rdx
	cvtsi2ss	%eax, %xmm0
	movl	%eax, (%rcx)
	addq	$4, %rcx
	cmpq	%rdx, %r8
	cvtsi2ss	%r9d, %xmm4
	mulss	%xmm10, %xmm0
	addss	%xmm4, %xmm0
	cvttss2si	%xmm0, %r9d
	je	.L44
.L45:
	movss	(%rdx), %xmm12
	movaps	%xmm10, %xmm4
	mulss	%xmm12, %xmm4
	movaps	%xmm4, %xmm5
	movaps	%xmm4, %xmm0
	andps	%xmm1, %xmm5
	ucomiss	%xmm5, %xmm3
	jbe	.L46
	cvttss2si	%xmm4, %eax
	pxor	%xmm5, %xmm5
	cvtsi2ss	%eax, %xmm5
	cmpnless	%xmm5, %xmm0
	andps	%xmm6, %xmm0
	addss	%xmm5, %xmm0
	movaps	%xmm1, %xmm5
	andnps	%xmm4, %xmm5
	orps	%xmm5, %xmm0
.L46:
	movaps	%xmm4, %xmm11
	movaps	%xmm0, %xmm5
	movaps	%xmm4, %xmm0
	andps	%xmm1, %xmm11
	ucomiss	%xmm11, %xmm3
	mulss	%xmm2, %xmm5
	jbe	.L47
	cvttss2si	%xmm4, %eax
	pxor	%xmm11, %xmm11
	cvtsi2ss	%eax, %xmm11
	movaps	%xmm11, %xmm13
	cmpnless	%xmm4, %xmm13
	movaps	%xmm13, %xmm0
	movaps	%xmm1, %xmm13
	andps	%xmm6, %xmm0
	subss	%xmm0, %xmm11
	andnps	%xmm4, %xmm13
	movaps	%xmm11, %xmm0
	orps	%xmm13, %xmm0
.L47:
	mulss	%xmm2, %xmm0
	movaps	%xmm12, %xmm11
	movaps	%xmm5, %xmm4
	subss	%xmm12, %xmm4
	subss	%xmm0, %xmm11
	comiss	%xmm4, %xmm11
	ja	.L312
	cvttss2si	%xmm0, %eax
	jmp	.L296
.L197:
	xorl	%r9d, %r9d
	.p2align 4,,10
.L44:
	movslq	%r15d, %rax
	movq	%rax, 32(%rsp)
	leaq	(%rsi,%rax,2), %rax
	cmpq	%rsi, %rax
	je	.L55
	addq	168(%rsp), %rax
	xorl	%edx, %edx
	movq	%rsi, %rcx
	movl	%r9d, 96(%rsp)
	movl	%r11d, 80(%rsp)
	shrq	%rax
	leaq	2(%rax,%rax), %r8
	call	memset
	movl	80(%rsp), %r11d
	movl	96(%rsp), %r9d
.L55:
	testl	%r11d, %r11d
	jle	.L53
	movq	56(%rsp), %r10
	leal	-1(%r11), %r8d
	movq	%rsi, %rdx
	movl	$1, %ecx
	addq	$2, %r8
	.p2align 4,,10
.L57:
	pxor	%xmm0, %xmm0
	cvtsi2ss	-4(%rdi,%rcx,4), %xmm0
	movss	-4(%r12,%rcx,4), %xmm2
	cmpl	%ecx, %r15d
	movq	%rcx, %rax
	subss	%xmm0, %xmm2
	jg	.L56
	jmp	.L61
	.p2align 4,,10
.L314:
	addw	$1, (%rdx)
	addq	$1, %rax
	cmpl	%eax, %r15d
	jle	.L313
.L56:
	pxor	%xmm1, %xmm1
	cvtsi2ss	(%rdi,%rax,4), %xmm1
	movss	(%r12,%rax,4), %xmm0
	subss	%xmm1, %xmm0
	comiss	%xmm2, %xmm0
	ja	.L314
	addw	$1, (%rsi,%rax,2)
	addq	$1, %rax
	cmpl	%eax, %r15d
	jg	.L56
.L313:
	movl	8(%r10), %r15d
.L61:
	addq	$1, %rcx
	addq	$2, %rdx
	cmpq	%rcx, %r8
	jne	.L57
	movslq	%r15d, %rax
	movq	%rax, 32(%rsp)
.L53:
	testl	%r15d, %r15d
	jle	.L62
	leal	-1(%r15), %r10d
	movl	%r9d, %edx
	xorl	%eax, %eax
	movq	%r10, %r8
	jmp	.L67
	.p2align 4,,10
.L63:
	movswl	%cx, %r9d
	cmpl	%r11d, %r9d
	jg	.L65
	movw	%cx, (%rsi,%rax,2)
.L64:
	leaq	1(%rax), %rcx
	cmpq	%rax, %r10
	je	.L66
.L315:
	movq	%rcx, %rax
.L67:
	movl	%edx, %ecx
	addw	(%rsi,%rax,2), %cx
	jns	.L63
	addl	%r15d, (%rdi,%rax,4)
	addl	%r15d, %ecx
	cmpq	%rax, %r10
	movw	%cx, (%rsi,%rax,2)
	leaq	1(%rax), %rcx
	jne	.L315
.L66:
	movq	104(%rsp), %rcx
	movq	64(%rsp), %rax
	leaq	8(%rcx,%rax,4), %rax
	cmpq	%rax, %rcx
	je	.L316
.L191:
	movq	104(%rsp), %rcx
	xorl	%edx, %edx
	movl	%r11d, 64(%rsp)
	subq	%rcx, %rax
	subq	$4, %rax
	shrq	$2, %rax
	leaq	4(,%rax,4), %r8
	call	memset
	movq	104(%rsp), %rcx
	testl	%r15d, %r15d
	movq	32(%rsp), %rax
	leaq	(%rcx,%rax,4), %rcx
	jle	.L68
	movl	64(%rsp), %r11d
	leal	-1(%r15), %r8d
.L189:
	xorl	%eax, %eax
	movq	104(%rsp), %r9
	jmp	.L70
	.p2align 4,,10
.L317:
	movq	%rdx, %rax
.L70:
	pxor	%xmm1, %xmm1
	cvtsi2ss	(%rdi,%rax,4), %xmm1
	movswl	(%rsi,%rax,2), %r10d
	movl	%r11d, %edx
	movss	(%r12,%rax,4), %xmm0
	subss	%xmm1, %xmm0
	subl	%r10d, %edx
	movslq	%edx, %rdx
	leaq	(%r9,%rdx,4), %rdx
	mulss	%xmm10, %xmm0
	movss	(%rdx), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	movl	%r15d, %edx
	subl	%r10d, %edx
	cmpq	%rax, %r8
	movslq	%edx, %rdx
	leaq	(%r9,%rdx,4), %rdx
	movss	(%rdx), %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	leaq	1(%rax), %rdx
	jne	.L317
	movq	104(%rsp), %rax
	pxor	%xmm0, %xmm0
	cvtss2sd	(%rcx), %xmm0
	addsd	%xmm7, %xmm0
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	movq	$0, 64(%rsp)
	cvtss2sd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, (%rax)
	.p2align 4,,10
.L104:
	movl	64(%rsp), %eax
	movl	%eax, 80(%rsp)
	movq	56(%rsp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jle	.L74
	movl	64(%rsp), %r8d
	leal	-1(%rax), %ecx
	xorl	%edx, %edx
	imull	%r15d, %r8d
	jmp	.L75
	.p2align 4,,10
.L318:
	movq	%rax, %rdx
.L75:
	movswl	(%rsi,%rdx,2), %eax
	addl	%r8d, %eax
	cltq
	movzwl	0(%r13,%rax,2), %eax
	addw	(%rdi,%rdx,4), %ax
	cmpq	%rdx, %rcx
	movw	%ax, 0(%rbp,%rdx,2)
	leaq	1(%rdx), %rax
	jne	.L318
.L74:
	movq	72(%rsp), %rax
	addq	%rax, %rax
	cmpq	%rax, %r14
	jbe	.L319
	testq	%rbx, %rbx
	je	.L203
.L325:
	movq	128(%rsp), %r8
	movq	%rbp, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
.L97:
	movswq	(%rcx), %rdx
	addq	$2, %rcx
	addq	%rdx, %rax
	imulq	$1664525, %rax, %rax
	cmpq	%rcx, %r8
	jne	.L97
	movq	48(%rsp), %r10
	xorl	%edx, %edx
	movq	120(%rsp), %r11
	divq	%r14
.L184:
	movq	40(%rsp), %rax
	movq	%rdx, %r8
	leaq	(%rax,%rdx,4), %r9
	movl	(%r9), %ecx
	cmpl	$-1, %ecx
	je	.L320
.L98:
	testq	%rbx, %rbx
	je	.L100
	movslq	%ecx, %rdx
	xorl	%eax, %eax
	movl	%ecx, 32(%rsp)
	imulq	%r11, %rdx
	addq	%r10, %rdx
.L103:
	movzwl	0(%rbp,%rax,2), %ecx
	cmpw	%cx, (%rdx,%rax,2)
	je	.L321
	addq	$1, %r8
	addq	$4, %r9
	xorl	%edx, %edx
	cmpq	%r8, %r14
	je	.L184
	movl	(%r9), %ecx
	cmpl	$-1, %ecx
	jne	.L98
.L320:
	testq	%rbx, %rbx
	je	.L101
	movq	72(%rsp), %rcx
	movq	%rbp, %rdx
	movq	%r9, 32(%rsp)
	movq	120(%rsp), %r8
	imulq	%r8, %rcx
	addq	48(%rsp), %rcx
	call	memcpy
	movq	32(%rsp), %r9
.L101:
	movq	72(%rsp), %rax
	movl	%eax, %ecx
	movl	%eax, (%r9)
	addq	$1, %rax
	movq	%rax, 72(%rsp)
	jmp	.L100
	.p2align 4,,10
.L65:
	subl	%r15d, (%rdi,%rax,4)
	subl	%r15d, %ecx
	movw	%cx, (%rsi,%rax,2)
	jmp	.L64
	.p2align 4,,10
.L321:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L103
	movl	32(%rsp), %ecx
.L100:
	movl	112(%rsp), %edx
	addl	$1, %ecx
	movq	56(%rsp), %r11
	movl	80(%rsp), %r10d
	imull	%edx, %r15d
	movq	24(%r11), %rax
	addl	%r10d, %r15d
	movslq	%r15d, %r15
	movl	%ecx, (%rax,%r15,4)
	movq	64(%rsp), %rcx
	movq	104(%rsp), %rax
	movl	8(%r11), %r15d
	movss	(%rax,%rcx,4), %xmm0
	movl	%edx, %eax
	addq	$1, %rcx
	imull	%r15d, %eax
	movq	32(%r11), %rdx
	movq	%rcx, 64(%rsp)
	addl	%r10d, %eax
	cmpl	%ecx, %r15d
	cltq
	movss	%xmm0, (%rdx,%rax,4)
	jg	.L104
.L187:
	movq	56(%rsp), %rcx
	addl	$1, 112(%rsp)
	movl	112(%rsp), %eax
	cmpl	%eax, (%rcx)
	jle	.L105
	movl	4(%rcx), %r11d
	jmp	.L106
	.p2align 4,,10
.L319:
	leal	10(%r14), %r15d
	movl	%r14d, 140(%rsp)
	leaq	(%r14,%r14), %rax
	movslq	%r15d, %r15
	imulq	%rbx, %r15
	movq	%rax, 96(%rsp)
	testq	%r15, %r15
	je	.L199
	js	.L322
	addq	%r15, %r15
	movq	%r15, %rcx
	call	_Znwy
.LEHE2:
	movq	%r15, %r8
	xorl	%edx, %edx
	movq	%rax, %rcx
	movq	%rax, 32(%rsp)
	call	memset
	addq	32(%rsp), %r15
	movq	%r15, 144(%rsp)
.L76:
	movq	48(%rsp), %rax
	movq	88(%rsp), %r8
	cmpq	%r8, %rax
	je	.L78
	movq	32(%rsp), %rcx
	subq	%rax, %r8
	movq	%rax, %rdx
	call	memmove
.L78:
	leaq	(%r14,%r14), %rcx
	testq	%rcx, %rcx
	je	.L200
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rcx
	ja	.L323
	leaq	0(,%r14,8), %r15
	movq	%r15, %rcx
.LEHB3:
	call	_Znwy
.LEHE3:
	movq	%r15, %r8
	movl	$255, %edx
	movq	%rax, %rcx
	call	memset
	movq	%rax, %r9
.L79:
	movl	140(%rsp), %r15d
	testl	%r15d, %r15d
	jle	.L90
	movq	40(%rsp), %rcx
	leal	-1(%r14), %eax
	leaq	4(%rcx,%rax,4), %r11
	movq	96(%rsp), %rax
	movq	%rcx, %r8
	leaq	-1(%rax), %rcx
	jmp	.L91
	.p2align 4,,10
.L84:
	addq	$4, %r8
	cmpq	%r8, %r11
	je	.L90
.L91:
	movl	(%r8), %r10d
	testl	%r10d, %r10d
	js	.L84
	movslq	%r10d, %rax
	imulq	%rbx, %rax
	testq	%rbx, %rbx
	je	.L201
	movq	32(%rsp), %rdx
	leaq	(%rdx,%rax,2), %r14
	addq	%rbx, %rax
	leaq	(%rdx,%rax,2), %r15
	xorl	%eax, %eax
	.p2align 4,,10
.L86:
	movswq	(%r14), %rdx
	addq	$2, %r14
	addq	%rdx, %rax
	imulq	$1664525, %rax, %rax
	cmpq	%r14, %r15
	jne	.L86
	xorl	%edx, %edx
	divq	96(%rsp)
	jmp	.L88
	.p2align 4,,10
.L324:
	leaq	1(%rdx), %rax
	cmpq	%rcx, %rdx
	movl	$0, %edx
	cmovb	%rax, %rdx
.L88:
	leaq	(%r9,%rdx,4), %rax
	movl	(%rax), %r14d
	testl	%r14d, %r14d
	jns	.L324
	addq	$4, %r8
	movl	%r10d, (%rax)
	cmpq	%r8, %r11
	jne	.L91
.L90:
	cmpq	$0, 40(%rsp)
	je	.L83
	movq	40(%rsp), %rcx
	movq	%r9, 88(%rsp)
	call	_ZdlPv
	movq	88(%rsp), %r9
.L83:
	movq	48(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L92
	movq	%r9, 40(%rsp)
	call	_ZdlPv
	movq	40(%rsp), %r9
.L92:
	movq	56(%rsp), %rax
	testq	%rbx, %rbx
	movq	%r9, 40(%rsp)
	movq	96(%rsp), %r14
	movl	8(%rax), %r15d
	movq	144(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 48(%rsp)
	jne	.L325
.L203:
	xorl	%edx, %edx
	movq	48(%rsp), %r10
	movq	120(%rsp), %r11
	jmp	.L184
	.p2align 4,,10
.L201:
	xorl	%edx, %edx
	jmp	.L88
	.p2align 4,,10
.L200:
	xorl	%r9d, %r9d
	jmp	.L79
	.p2align 4,,10
.L199:
	movq	$0, 32(%rsp)
	movq	$0, 144(%rsp)
	jmp	.L76
.L105:
	movq	%r12, %rcx
	call	_ZdaPv
	movq	%rdi, %rcx
	call	_ZdaPv
	movq	104(%rsp), %rcx
	call	_ZdaPv
	movq	%rsi, %rcx
	call	_ZdaPv
	movq	%rbp, %rcx
	call	_ZdaPv
	movq	%r13, %rcx
	call	_ZdaPv
	movq	152(%rsp), %rcx
	call	_ZdaPv
	movq	56(%rsp), %rax
	movq	72(%rsp), %rsi
	movl	8(%rax), %ecx
	movl	%esi, 12(%rax)
	movabsq	$2305843009213693950, %rax
	imull	%esi, %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	cmpq	%rax, %rcx
	ja	.L107
	salq	$2, %rcx
.L186:
.LEHB4:
	call	_Znay
	movabsq	$4611686018427387900, %rdx
	movq	56(%rsp), %rsi
	movq	%rax, 40(%rsi)
	movslq	8(%rsi), %rax
	cmpq	%rdx, %rax
	ja	.L326
	leaq	(%rax,%rax), %rcx
	call	_Znay
	movabsq	$4611686018427387900, %rdx
	movq	%rax, %rdi
	movq	56(%rsp), %rax
	movslq	8(%rax), %rax
	cmpq	%rdx, %rax
	ja	.L327
	leaq	(%rax,%rax), %rcx
	call	_Znay
	movq	%rax, %rsi
	movq	56(%rsp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L113
	movq	72(%rsp), %rcx
	leaq	(%rbx,%rbx), %rbp
	movq	$0, 104(%rsp)
	leaq	0(%rbp,%rsi), %rdx
	movdqa	.LC7(%rip), %xmm7
	leaq	0(%rbp,%rdi), %r12
	movq	%rdx, 128(%rsp)
	addq	%rcx, %rcx
	movq	%rcx, 80(%rsp)
	movq	56(%rsp), %rcx
	movl	12(%rcx), %ecx
	.p2align 4,,10
.L175:
	movq	104(%rsp), %rdx
	testl	%ecx, %ecx
	movl	%edx, 64(%rsp)
	jle	.L114
	leaq	(%rdx,%rdx), %rax
	movl	$0, 32(%rsp)
	pcmpeqd	%xmm6, %xmm6
	movq	%rax, 120(%rsp)
	movq	$0, 72(%rsp)
	.p2align 4,,10
.L174:
	movq	56(%rsp), %rax
	movq	48(%rsp), %r8
	addq	72(%rsp), %r8
	movl	4(%rax), %edx
	testl	%edx, %edx
	jle	.L121
	leal	-1(%rdx), %eax
	cmpl	$6, %eax
	jbe	.L204
	movl	%edx, %r9d
	xorl	%eax, %eax
	shrl	$3, %r9d
	salq	$4, %r9
	.p2align 4,,10
.L120:
	movdqu	(%r8,%rax), %xmm0
	movdqa	%xmm0, %xmm1
	paddw	%xmm7, %xmm0
	paddw	%xmm6, %xmm1
	movups	%xmm0, (%rsi,%rax)
	movups	%xmm1, (%rdi,%rax)
	addq	$16, %rax
	cmpq	%rax, %r9
	jne	.L120
	movl	%edx, %eax
	andl	$-8, %eax
	cmpl	%eax, %edx
	je	.L121
.L118:
	movslq	%eax, %r10
	movzwl	(%r8,%r10,2), %r9d
	leal	-1(%r9), %r11d
	addl	$1, %r9d
	movw	%r9w, (%rsi,%r10,2)
	leal	1(%rax), %r9d
	cmpl	%edx, %r9d
	movw	%r11w, (%rdi,%r10,2)
	jge	.L121
	movslq	%r9d, %r9
	movzwl	(%r8,%r9,2), %r10d
	leal	-1(%r10), %r11d
	addl	$1, %r10d
	movw	%r11w, (%rdi,%r9,2)
	movw	%r10w, (%rsi,%r9,2)
	leal	2(%rax), %r9d
	cmpl	%r9d, %edx
	jle	.L121
	movslq	%r9d, %r9
	movzwl	(%r8,%r9,2), %r10d
	leal	-1(%r10), %r11d
	addl	$1, %r10d
	movw	%r11w, (%rdi,%r9,2)
	movw	%r10w, (%rsi,%r9,2)
	leal	3(%rax), %r9d
	cmpl	%edx, %r9d
	jge	.L121
	movslq	%r9d, %r9
	movzwl	(%r8,%r9,2), %r10d
	leal	-1(%r10), %r11d
	addl	$1, %r10d
	movw	%r11w, (%rdi,%r9,2)
	movw	%r10w, (%rsi,%r9,2)
	leal	4(%rax), %r9d
	cmpl	%edx, %r9d
	jge	.L121
	movslq	%r9d, %r9
	movzwl	(%r8,%r9,2), %r10d
	leal	-1(%r10), %r11d
	addl	$1, %r10d
	movw	%r11w, (%rdi,%r9,2)
	movw	%r10w, (%rsi,%r9,2)
	leal	5(%rax), %r9d
	cmpl	%r9d, %edx
	jle	.L121
	movslq	%r9d, %r9
	addl	$6, %eax
	movzwl	(%r8,%r9,2), %r10d
	leal	-1(%r10), %r11d
	addl	$1, %r10d
	cmpl	%eax, %edx
	movw	%r11w, (%rdi,%r9,2)
	movw	%r10w, (%rsi,%r9,2)
	jle	.L121
	cltq
	movzwl	(%r8,%rax,2), %r9d
	leal	-1(%r9), %r10d
	addl	$1, %r9d
	movw	%r10w, (%rdi,%rax,2)
	movw	%r9w, (%rsi,%rax,2)
.L121:
	movq	120(%rsp), %rax
	movq	104(%rsp), %r15
	movzwl	(%r8,%rax), %eax
	leal	(%rax,%rdx), %r8d
	subl	%edx, %eax
	cmpq	%r14, 80(%rsp)
	movw	%r8w, (%rdi,%r15,2)
	movw	%ax, (%rsi,%r15,2)
	jnb	.L328
	testq	%rbx, %rbx
	je	.L209
.L337:
	movq	%rdi, %r8
	xorl	%eax, %eax
	.p2align 4,,10
.L143:
	movswq	(%r8), %rdx
	addq	$2, %r8
	addq	%rdx, %rax
	imulq	$1664525, %rax, %rax
	cmpq	%r8, %r12
	jne	.L143
	movq	40(%rsp), %r10
	xorl	%edx, %edx
	movq	48(%rsp), %r11
	divq	%r14
.L182:
	movq	%rdx, %r8
	movl	(%r10,%r8,4), %r9d
	cmpl	$-1, %r9d
	je	.L210
.L330:
	testq	%rbx, %rbx
	je	.L297
	movslq	%r9d, %rdx
	xorl	%eax, %eax
	imulq	%rbp, %rdx
	addq	%r11, %rdx
.L147:
	movzwl	(%rdi,%rax,2), %r15d
	cmpw	%r15w, (%rdx,%rax,2)
	je	.L329
	addq	$1, %r8
	xorl	%edx, %edx
	cmpq	%r8, %r14
	je	.L182
	movl	(%r10,%r8,4), %r9d
	cmpl	$-1, %r9d
	jne	.L330
.L210:
	xorl	%r9d, %r9d
	jmp	.L144
	.p2align 4,,10
.L329:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L147
.L297:
	addl	$1, %r9d
.L144:
	movq	56(%rsp), %rax
	imull	64(%rsp), %ecx
	movq	40(%rax), %r8
	movl	32(%rsp), %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	cmpq	80(%rsp), %r14
	cltq
	movl	%r9d, (%r8,%rax,4)
	jbe	.L331
	testq	%rbx, %rbx
	je	.L215
.L341:
	movq	128(%rsp), %r9
	movq	%rsi, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
.L169:
	movswq	(%rcx), %rdx
	addq	$2, %rcx
	addq	%rdx, %rax
	imulq	$1664525, %rax, %rax
	cmpq	%r9, %rcx
	jne	.L169
	movq	40(%rsp), %r10
	xorl	%edx, %edx
	movq	48(%rsp), %r11
	divq	%r14
.L180:
	movq	%rdx, %rcx
	movl	(%r10,%rcx,4), %r9d
	cmpl	$-1, %r9d
	je	.L216
.L333:
	testq	%rbx, %rbx
	je	.L298
	movslq	%r9d, %rdx
	xorl	%eax, %eax
	imulq	%rbp, %rdx
	addq	%r11, %rdx
.L173:
	movzwl	(%rsi,%rax,2), %r15d
	cmpw	%r15w, (%rdx,%rax,2)
	je	.L332
	addq	$1, %rcx
	xorl	%edx, %edx
	cmpq	%rcx, %r14
	je	.L180
	movl	(%r10,%rcx,4), %r9d
	cmpl	$-1, %r9d
	jne	.L333
.L216:
	xorl	%r9d, %r9d
	jmp	.L170
	.p2align 4,,10
.L332:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L173
.L298:
	addl	$1, %r9d
.L170:
	movq	56(%rsp), %rdx
	movl	32(%rsp), %ecx
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
	movl	%eax, 32(%rsp)
	cmpl	%eax, %ecx
	jg	.L174
	movl	8(%rdx), %eax
.L114:
	addq	$1, 104(%rsp)
	movq	104(%rsp), %rdx
	cmpl	%edx, %eax
	jg	.L175
.L113:
	movq	%rdi, %rcx
	call	_ZdaPv
	movq	%rsi, %rcx
	call	_ZdaPv
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	.L176
	movq	%rax, %rcx
	call	_ZdlPv
.L176:
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.L3
	movaps	176(%rsp), %xmm6
	movq	%rax, %rcx
	movaps	192(%rsp), %xmm7
	movaps	208(%rsp), %xmm8
	movaps	224(%rsp), %xmm9
	movaps	240(%rsp), %xmm10
	movaps	256(%rsp), %xmm11
	movaps	272(%rsp), %xmm12
	movaps	288(%rsp), %xmm13
	addq	$312, %rsp
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
.L328:
	leal	10(%r14), %r13d
	movl	%r14d, 140(%rsp)
	leaq	(%r14,%r14), %rax
	movslq	%r13d, %r13
	imulq	%rbx, %r13
	movq	%rax, 96(%rsp)
	testq	%r13, %r13
	je	.L205
	js	.L334
	addq	%r13, %r13
	movq	%r13, %rcx
	call	_Znwy
.LEHE4:
	movq	%rax, %r15
	movq	%r13, %r8
	xorl	%edx, %edx
	movq	%rax, 112(%rsp)
	movq	%rax, %rcx
	addq	%r15, %r13
	call	memset
	movq	%r13, 144(%rsp)
.L123:
	movq	88(%rsp), %r8
	movq	48(%rsp), %rax
	cmpq	%rax, %r8
	je	.L125
	movq	112(%rsp), %rcx
	subq	%rax, %r8
	movq	%rax, %rdx
	call	memmove
.L125:
	leaq	(%r14,%r14), %rax
	testq	%rax, %rax
	je	.L206
	movabsq	$4611686018427387903, %rcx
	cmpq	%rcx, %rax
	ja	.L335
	leaq	0(,%r14,8), %r13
	movq	%r13, %rcx
.LEHB5:
	call	_Znwy
.LEHE5:
	movq	%r13, %r8
	movl	$255, %edx
	movq	%rax, %rcx
	movq	%rax, %r15
	call	memset
.L126:
	movl	140(%rsp), %eax
	testl	%eax, %eax
	jle	.L137
	movq	40(%rsp), %rcx
	leal	-1(%r14), %eax
	movq	112(%rsp), %r11
	leaq	4(%rcx,%rax,4), %r10
	movq	96(%rsp), %rax
	movq	%rcx, %r8
	leaq	-1(%rax), %rcx
	jmp	.L138
	.p2align 4,,10
.L131:
	addq	$4, %r8
	cmpq	%r8, %r10
	je	.L137
.L138:
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	js	.L131
	movslq	%r9d, %rax
	imulq	%rbx, %rax
	testq	%rbx, %rbx
	je	.L207
	leaq	(%r11,%rax,2), %r13
	addq	%rbx, %rax
	leaq	(%r11,%rax,2), %r14
	xorl	%eax, %eax
	.p2align 4,,10
.L133:
	movswq	0(%r13), %rdx
	addq	$2, %r13
	addq	%rdx, %rax
	imulq	$1664525, %rax, %rax
	cmpq	%r13, %r14
	jne	.L133
	xorl	%edx, %edx
	divq	96(%rsp)
	jmp	.L135
	.p2align 4,,10
.L336:
	leaq	1(%rdx), %rax
	cmpq	%rcx, %rdx
	movl	$0, %edx
	cmovb	%rax, %rdx
.L135:
	leaq	(%r15,%rdx,4), %rax
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.L336
	addq	$4, %r8
	movl	%r9d, (%rax)
	cmpq	%r8, %r10
	jne	.L138
.L137:
	cmpq	$0, 40(%rsp)
	je	.L130
	movq	40(%rsp), %rcx
	call	_ZdlPv
.L130:
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.L139
	movq	%rax, %rcx
	call	_ZdlPv
.L139:
	movq	56(%rsp), %rax
	testq	%rbx, %rbx
	movq	%r15, 40(%rsp)
	movq	96(%rsp), %r14
	movl	12(%rax), %ecx
	movq	144(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 48(%rsp)
	jne	.L337
.L209:
	xorl	%edx, %edx
	movq	40(%rsp), %r10
	movq	48(%rsp), %r11
	jmp	.L182
	.p2align 4,,10
.L331:
	leal	10(%r14), %r13d
	movl	%r14d, 140(%rsp)
	leaq	(%r14,%r14), %rax
	movslq	%r13d, %r13
	imulq	%rbx, %r13
	movq	%rax, 96(%rsp)
	testq	%r13, %r13
	je	.L211
	js	.L338
	addq	%r13, %r13
	movq	%r13, %rcx
.LEHB6:
	call	_Znwy
.LEHE6:
	movq	%rax, %r15
	movq	%r13, %r8
	xorl	%edx, %edx
	movq	%rax, 112(%rsp)
	movq	%rax, %rcx
	addq	%r15, %r13
	call	memset
	movq	%r13, 144(%rsp)
.L149:
	movq	48(%rsp), %rax
	movq	88(%rsp), %r8
	cmpq	%r8, %rax
	je	.L151
	movq	112(%rsp), %rcx
	subq	%rax, %r8
	movq	%rax, %rdx
	call	memmove
.L151:
	leaq	(%r14,%r14), %rax
	testq	%rax, %rax
	je	.L212
	movabsq	$4611686018427387903, %rcx
	cmpq	%rcx, %rax
	ja	.L339
	leaq	0(,%r14,8), %r13
	movq	%r13, %rcx
.LEHB7:
	call	_Znwy
	movq	%r13, %r8
	movl	$255, %edx
	movq	%rax, %rcx
	movq	%rax, %r15
	call	memset
.L152:
	movl	140(%rsp), %eax
	testl	%eax, %eax
	jle	.L163
	movq	40(%rsp), %rcx
	leal	-1(%r14), %eax
	movq	112(%rsp), %r11
	leaq	4(%rcx,%rax,4), %r10
	movq	96(%rsp), %rax
	movq	%rcx, %r8
	leaq	-1(%rax), %rcx
	jmp	.L164
	.p2align 4,,10
.L157:
	addq	$4, %r8
	cmpq	%r8, %r10
	je	.L163
.L164:
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	js	.L157
	movslq	%r9d, %rax
	imulq	%rbx, %rax
	testq	%rbx, %rbx
	je	.L213
	leaq	(%r11,%rax,2), %r13
	addq	%rbx, %rax
	leaq	(%r11,%rax,2), %r14
	xorl	%eax, %eax
	.p2align 4,,10
.L159:
	movswq	0(%r13), %rdx
	addq	$2, %r13
	addq	%rdx, %rax
	imulq	$1664525, %rax, %rax
	cmpq	%r13, %r14
	jne	.L159
	xorl	%edx, %edx
	divq	96(%rsp)
	jmp	.L161
	.p2align 4,,10
.L340:
	leaq	1(%rdx), %rax
	cmpq	%rcx, %rdx
	movl	$0, %edx
	cmovb	%rax, %rdx
.L161:
	leaq	(%r15,%rdx,4), %rax
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	jns	.L340
	addq	$4, %r8
	movl	%r9d, (%rax)
	cmpq	%r8, %r10
	jne	.L164
.L163:
	movq	40(%rsp), %rcx
	call	_ZdlPv
	cmpq	$0, 48(%rsp)
	je	.L156
	movq	48(%rsp), %rcx
	call	_ZdlPv
.L156:
	movq	56(%rsp), %rax
	testq	%rbx, %rbx
	movq	%r15, 40(%rsp)
	movq	96(%rsp), %r14
	movq	40(%rax), %r8
	movq	144(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 48(%rsp)
	jne	.L341
.L215:
	xorl	%edx, %edx
	movq	40(%rsp), %r10
	movq	48(%rsp), %r11
	jmp	.L180
	.p2align 4,,10
.L207:
	xorl	%edx, %edx
	jmp	.L135
	.p2align 4,,10
.L213:
	xorl	%edx, %edx
	jmp	.L161
	.p2align 4,,10
.L206:
	xorl	%r15d, %r15d
	jmp	.L126
	.p2align 4,,10
.L205:
	movq	$0, 112(%rsp)
	movq	$0, 144(%rsp)
	jmp	.L123
	.p2align 4,,10
.L212:
	xorl	%r15d, %r15d
	jmp	.L152
	.p2align 4,,10
.L211:
	movq	$0, 112(%rsp)
	movq	$0, 144(%rsp)
	jmp	.L149
.L204:
	xorl	%eax, %eax
	jmp	.L118
.L62:
	movq	104(%rsp), %rcx
	movq	64(%rsp), %rax
	leaq	8(%rcx,%rax,4), %rax
	cmpq	%rcx, %rax
	jne	.L191
	movq	%rcx, %rax
	movq	32(%rsp), %rcx
	leaq	(%rax,%rcx,4), %rcx
.L68:
	movq	104(%rsp), %rax
	pxor	%xmm0, %xmm0
	cvtss2sd	(%rcx), %xmm0
	addsd	%xmm7, %xmm0
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	cvtss2sd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, (%rax)
	jmp	.L187
.L196:
	movslq	%r11d, %rax
	pxor	%xmm2, %xmm2
	movq	%rax, 64(%rsp)
	jmp	.L42
.L195:
	xorl	%eax, %eax
	jmp	.L26
.L316:
	movq	%rcx, %rax
	movq	32(%rsp), %rcx
	leaq	(%rax,%rcx,4), %rcx
	jmp	.L189
.L3:
	movaps	176(%rsp), %xmm6
	movaps	192(%rsp), %xmm7
	movaps	208(%rsp), %xmm8
	movaps	224(%rsp), %xmm9
	movaps	240(%rsp), %xmm10
	movaps	256(%rsp), %xmm11
	movaps	272(%rsp), %xmm12
	movaps	288(%rsp), %xmm13
	addq	$312, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L194:
	movq	$0, 40(%rsp)
	jmp	.L6
.L193:
	movq	$0, 48(%rsp)
	movq	$0, 88(%rsp)
	jmp	.L4
.L311:
	movq	%r12, %rcx
	call	_ZdaPv
	movq	%rdi, %rcx
	call	_ZdaPv
	movq	104(%rsp), %rcx
	call	_ZdaPv
	movq	%rsi, %rcx
	call	_ZdaPv
	movq	%rbp, %rcx
	call	_ZdaPv
	movq	%r13, %rcx
	call	_ZdaPv
	movq	152(%rsp), %rcx
	call	_ZdaPv
	movq	56(%rsp), %rax
	xorl	%ecx, %ecx
	movq	$0, 72(%rsp)
	movl	$0, 12(%rax)
	jmp	.L186
.L339:
	call	_ZSt17__throw_bad_allocv
.LEHE7:
.L334:
.LEHB8:
	call	_ZSt17__throw_bad_allocv
.LEHE8:
.L304:
.LEHB9:
	call	_ZSt17__throw_bad_allocv
.LEHE9:
	.p2align 4,,10
.L310:
	call	sqrt
	movq	56(%rsp), %rax
	movl	4(%rax), %r11d
	jmp	.L40
.L323:
.LEHB10:
	call	_ZSt17__throw_bad_allocv
.LEHE10:
.L322:
.LEHB11:
	call	_ZSt17__throw_bad_allocv
.LEHE11:
.L335:
.LEHB12:
	call	_ZSt17__throw_bad_allocv
.LEHE12:
.L338:
.LEHB13:
	call	_ZSt17__throw_bad_allocv
.LEHE13:
.L303:
.LEHB14:
	call	_ZSt17__throw_bad_allocv
.L217:
	cmpq	$0, 48(%rsp)
	movq	%rax, %rbx
	je	.L179
.L299:
	movq	48(%rsp), %rcx
	call	_ZdlPv
.L179:
	movq	%rbx, %rcx
	call	_Unwind_Resume
.LEHE14:
.L327:
.LEHB15:
	call	__cxa_throw_bad_array_new_length
.L326:
	call	__cxa_throw_bad_array_new_length
.L107:
	call	__cxa_throw_bad_array_new_length
.L218:
	cmpq	$0, 32(%rsp)
	movq	%rax, %rbx
	je	.L95
	movq	32(%rsp), %rcx
	call	_ZdlPv
.L95:
	cmpq	$0, 40(%rsp)
	je	.L178
.L167:
	movq	40(%rsp), %rcx
	call	_ZdlPv
.L178:
	cmpq	$0, 48(%rsp)
	jne	.L299
	jmp	.L179
.L21:
	call	__cxa_throw_bad_array_new_length
.L309:
	call	__cxa_throw_bad_array_new_length
.L308:
	call	__cxa_throw_bad_array_new_length
.L222:
	movq	%rax, %rbx
	jmp	.L167
.L306:
	call	__cxa_throw_bad_array_new_length
.L221:
	movq	%rax, %rbx
	jmp	.L95
.L305:
	call	__cxa_throw_bad_array_new_length
.L219:
	cmpq	$0, 112(%rsp)
	movq	%rax, %rbx
	je	.L95
	movq	112(%rsp), %rcx
	call	_ZdlPv
	jmp	.L95
.L220:
	cmpq	$0, 112(%rsp)
	movq	%rax, %rbx
	je	.L167
	movq	112(%rsp), %rcx
	call	_ZdlPv
	jmp	.L167
.L307:
	call	__cxa_throw_bad_array_new_length
	nop
.LEHE15:
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
	.uleb128 .L217-.LFB2187
	.uleb128 0
	.uleb128 .LEHB2-.LFB2187
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L221-.LFB2187
	.uleb128 0
	.uleb128 .LEHB3-.LFB2187
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L218-.LFB2187
	.uleb128 0
	.uleb128 .LEHB4-.LFB2187
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L221-.LFB2187
	.uleb128 0
	.uleb128 .LEHB5-.LFB2187
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L219-.LFB2187
	.uleb128 0
	.uleb128 .LEHB6-.LFB2187
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L222-.LFB2187
	.uleb128 0
	.uleb128 .LEHB7-.LFB2187
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L220-.LFB2187
	.uleb128 0
	.uleb128 .LEHB8-.LFB2187
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L221-.LFB2187
	.uleb128 0
	.uleb128 .LEHB9-.LFB2187
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L217-.LFB2187
	.uleb128 0
	.uleb128 .LEHB10-.LFB2187
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L218-.LFB2187
	.uleb128 0
	.uleb128 .LEHB11-.LFB2187
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L221-.LFB2187
	.uleb128 0
	.uleb128 .LEHB12-.LFB2187
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L219-.LFB2187
	.uleb128 0
	.uleb128 .LEHB13-.LFB2187
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L222-.LFB2187
	.uleb128 0
	.uleb128 .LEHB14-.LFB2187
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB2187
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L221-.LFB2187
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
	ja	.L343
	leaq	0(,%rax,4), %rcx
	call	_Znay
	movq	%rax, %rbx
	movl	12(%r15), %eax
	movl	%eax, 32(%rsp)
	addl	$2, %eax
	imull	%r14d, %eax
	cltq
	cmpq	%rdi, %rax
	ja	.L343
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
	je	.L348
	movq	%rdi, %r8
	xorl	%edx, %edx
	movq	%rbx, %rcx
	call	memset
.L348:
	movq	48(%rsp), %rcx
	leaq	(%rcx,%rdi), %rax
	cmpq	%rax, %rcx
	je	.L346
	movq	%rdi, %r8
	xorl	%edx, %edx
	call	memset
.L346:
	movq	120(%rsp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	movl	%eax, 108(%rsp)
	jle	.L353
	movq	120(%rsp), %rdi
	movl	8(%rdi), %eax
	testl	%eax, %eax
	jle	.L353
	testl	%r14d, %r14d
	jle	.L353
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
.L356:
	movq	64(%rsp), %rax
	leaq	(%rax,%r12), %r10
	movslq	%r11d, %rax
	leaq	(%rsi,%rax,4), %rax
	.p2align 4,,10
.L352:
	movl	0(%r13,%r10), %ecx
	movss	(%r15,%r10), %xmm2
	imull	%r14d, %ecx
	cmpl	$2, 40(%rsp)
	jbe	.L406
	movslq	%ecx, %rdx
	movaps	%xmm2, %xmm3
	leaq	(%rbx,%rdx,4), %r8
	xorl	%edx, %edx
	shufps	$0, %xmm3, %xmm3
	.p2align 4,,10
.L358:
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
	jne	.L358
	cmpl	%r14d, %ebp
	movl	%ebp, %edx
	je	.L360
.L354:
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
	jle	.L360
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
	jle	.L360
	addl	%edx, %ecx
	addl	%r11d, %edx
	movslq	%ecx, %rcx
	movslq	%edx, %rdx
	leaq	(%rbx,%rcx,4), %rcx
	mulss	(%rsi,%rdx,4), %xmm2
	addss	(%rcx), %xmm2
	movss	%xmm2, (%rcx)
.L360:
	addq	$4, %r10
	cmpq	%r12, %r10
	jne	.L352
	addl	$1, 32(%rsp)
	addl	%r14d, %r11d
	movl	32(%rsp), %eax
	addq	56(%rsp), %r12
	cmpl	108(%rsp), %eax
	jne	.L356
.L353:
	movq	120(%rsp), %rax
	cmpb	$0, 72(%rsp)
	movl	4(%rax), %edi
	movl	$0, %eax
	cmovne	%edi, %eax
	movl	%edi, 128(%rsp)
	cmpl	%edi, %eax
	movl	%eax, 104(%rsp)
	jg	.L394
	movl	104(%rsp), %r8d
	testl	%r8d, %r8d
	js	.L394
	movslq	%r14d, %rax
	movsd	.LC10(%rip), %xmm3
	salq	$2, %rax
	movapd	.LC9(%rip), %xmm2
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
.L362:
	movl	96(%rsp), %edx
	testl	%edx, %edx
	jle	.L370
	movq	120(%rsp), %rax
	movl	96(%rsp), %r8d
	imull	104(%rsp), %r8d
	testl	%r14d, %r14d
	movq	40(%rax), %r9
	jle	.L370
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
.L372:
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
	je	.L369
	leaq	16(%rbx,%r13,4), %r9
	cmpq	%r9, %rax
	setnb	%r13b
	cmpq	%rdi, %r8
	setnb	%bpl
	xorl	%r9d, %r9d
	orb	%bpl, %r13b
	je	.L369
	movq	72(%rsp), %rbp
	.p2align 4,,10
.L367:
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
	jne	.L367
	movl	64(%rsp), %r15d
	cmpl	%r14d, %r15d
	je	.L374
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
	jle	.L374
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
	jle	.L374
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
.L374:
	movq	32(%rsp), %rcx
	addq	$8, %rsi
	addl	%r14d, %r12d
	addq	%rcx, %rax
	addq	%rcx, %rdx
	addq	%rcx, %rdi
	cmpq	40(%rsp), %rsi
	jne	.L372
.L370:
	movl	104(%rsp), %esi
	cmpb	$0, 136(%rsp)
	leal	1(%rsi), %eax
	leal	-1(%rsi), %edx
	cmovne	%edx, %eax
	cmpl	128(%rsp), %eax
	movl	%eax, 104(%rsp)
	jg	.L361
	movl	104(%rsp), %ecx
	testl	%ecx, %ecx
	js	.L361
	movq	%rbx, %rax
	movq	48(%rsp), %rbx
	movq	%rax, 48(%rsp)
	jmp	.L362
	.p2align 4,,10
.L369:
	xorl	%r9d, %r9d
	movq	112(%rsp), %r11
	jmp	.L375
	.p2align 4,,10
.L407:
	movq	%r10, %r9
.L375:
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
	jne	.L407
	jmp	.L374
.L406:
	xorl	%edx, %edx
	jmp	.L354
.L394:
	movq	48(%rsp), %rax
	movq	%rbx, 48(%rsp)
	movq	%rax, %rbx
.L361:
	movl	108(%rsp), %eax
	movq	144(%rsp), %rsi
	imull	%r14d, %eax
	cltq
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rsi, %rax
	je	.L379
	subq	%rsi, %rax
	movq	%rsi, %rcx
	xorl	%edx, %edx
	subq	$4, %rax
	shrq	$2, %rax
	leaq	4(,%rax,4), %r8
	call	memset
.L379:
	movl	108(%rsp), %eax
	testl	%eax, %eax
	jle	.L382
	movq	120(%rsp), %r11
	movl	8(%r11), %eax
	testl	%eax, %eax
	jle	.L382
	testl	%r14d, %r14d
	jle	.L382
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
.L385:
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
.L381:
	movq	64(%rsp), %rax
	movss	(%rax,%r9), %xmm2
	movq	56(%rsp), %rax
	movl	(%rax,%r9), %r8d
	imull	%r14d, %r8d
	testb	%dil, %dil
	je	.L408
	movslq	%r8d, %rax
	movss	16(%r11), %xmm3
	movaps	%xmm2, %xmm4
	leaq	(%rbx,%rax,4), %rcx
	xorl	%eax, %eax
	shufps	$0, %xmm4, %xmm4
	shufps	$0, %xmm3, %xmm3
	.p2align 4,,10
.L387:
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
	jne	.L387
	cmpl	%r14d, %r13d
	je	.L390
	leal	(%r8,%r13), %eax
	cmpl	%r14d, %r15d
	cltq
	movss	(%rbx,%rax,4), %xmm0
	mulss	%xmm2, %xmm0
	mulss	16(%r11), %xmm0
	addss	0(%rbp), %xmm0
	movss	%xmm0, 0(%rbp)
	jge	.L390
	leal	(%r15,%r8), %eax
	cltq
	movss	(%rbx,%rax,4), %xmm0
	movl	72(%rsp), %eax
	mulss	%xmm2, %xmm0
	mulss	16(%r11), %xmm0
	addss	(%r12), %xmm0
	cmpl	%r14d, %eax
	movss	%xmm0, (%r12)
	jge	.L390
	addl	%eax, %r8d
	movq	80(%rsp), %rax
	movslq	%r8d, %r8
	mulss	(%rbx,%r8,4), %xmm2
	mulss	16(%r11), %xmm2
	addss	(%rax), %xmm2
	movss	%xmm2, (%rax)
.L390:
	addq	$4, %r9
	cmpq	32(%rsp), %r9
	jne	.L381
	addl	$1, 92(%rsp)
	movq	96(%rsp), %rsi
	movl	92(%rsp), %eax
	addq	%rsi, 32(%rsp)
	addl	%r14d, 104(%rsp)
	cmpl	108(%rsp), %eax
	jne	.L385
	movq	168(%rsp), %rbx
.L382:
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
.L408:
	movslq	%r8d, %r8
	movq	%rdx, %rax
	leaq	(%rbx,%r8,4), %rcx
	.p2align 4,,10
.L391:
	movss	(%rcx), %xmm0
	addq	$4, %rax
	addq	$4, %rcx
	mulss	%xmm2, %xmm0
	mulss	16(%r11), %xmm0
	addss	-4(%rax), %xmm0
	movss	%xmm0, -4(%rax)
	cmpq	%rsi, %rax
	jne	.L391
	jmp	.L390
.L343:
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
.LEHB16:
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
.LEHE16:
	movdqa	.LC11(%rip), %xmm0
	movl	$25165824, %ecx
	movl	$0x3f783e10, 16(%rax)
	movq	%rax, %rbx
	movups	%xmm0, (%rax)
.LEHB17:
	call	_Znay
	movl	(%rbx), %ecx
	movq	%rax, 24(%rbx)
	movabsq	$2305843009213693950, %rax
	imull	8(%rbx), %ecx
	movslq	%ecx, %rcx
	cmpq	%rax, %rcx
	ja	.L410
	salq	$2, %rcx
	call	_Znay
.LEHE17:
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	%rax, 32(%rbx)
.LEHB18:
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
.L412:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
	call	_Unwind_Resume
.LEHE18:
.L410:
.LEHB19:
	call	__cxa_throw_bad_array_new_length
	nop
.LEHE19:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2195:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2195-.LLSDACSB2195
.LLSDACSB2195:
	.uleb128 .LEHB16-.LFB2195
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB2195
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L412-.LFB2195
	.uleb128 0
	.uleb128 .LEHB18-.LFB2195
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB2195
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L412-.LFB2195
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
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.align 8
.LC8:
	.long	1719614412
	.long	1072079006
	.align 16
.LC9:
	.long	0
	.long	1071644672
	.long	0
	.long	1071644672
	.align 8
.LC10:
	.long	0
	.long	1071644672
	.align 16
.LC11:
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
