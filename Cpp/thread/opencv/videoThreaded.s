	.file	"videoThreaded.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.text
	.type	_ZL18__gthread_active_pv, @function
_ZL18__gthread_active_pv:
.LFB1383:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_ZZL18__gthread_active_pvE20__gthread_active_ptr(%rip), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1383:
	.size	_ZL18__gthread_active_pv, .-_ZL18__gthread_active_pv
	.type	_ZL15__gthread_equalmm, @function
_ZL15__gthread_equalmm:
.LFB1387:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL21__gthrw_pthread_equalmm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1387:
	.size	_ZL15__gthread_equalmm, .-_ZL15__gthread_equalmm
	.type	_ZL20__gthread_mutex_lockP15pthread_mutex_t, @function
_ZL20__gthread_mutex_lockP15pthread_mutex_t:
.LFB1397:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L6
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t
	jmp	.L7
.L6:
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1397:
	.size	_ZL20__gthread_mutex_lockP15pthread_mutex_t, .-_ZL20__gthread_mutex_lockP15pthread_mutex_t
	.type	_ZL22__gthread_mutex_unlockP15pthread_mutex_t, @function
_ZL22__gthread_mutex_unlockP15pthread_mutex_t:
.LFB1400:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L9
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t
	jmp	.L10
.L9:
	movl	$0, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1400:
	.size	_ZL22__gthread_mutex_unlockP15pthread_mutex_t, .-_ZL22__gthread_mutex_unlockP15pthread_mutex_t
	.section	.text._ZN2cv6StringC2EPKc,"axG",@progbits,_ZN2cv6StringC5EPKc,comdat
	.align 2
	.weak	_ZN2cv6StringC2EPKc
	.type	_ZN2cv6StringC2EPKc, @function
_ZN2cv6StringC2EPKc:
.LFB6259:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	cmpq	$0, -32(%rbp)
	je	.L14
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv6String8allocateEm
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	jmp	.L11
.L14:
	nop
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6259:
	.size	_ZN2cv6StringC2EPKc, .-_ZN2cv6StringC2EPKc
	.weak	_ZN2cv6StringC1EPKc
	.set	_ZN2cv6StringC1EPKc,_ZN2cv6StringC2EPKc
	.section	.text._ZN2cv6StringD2Ev,"axG",@progbits,_ZN2cv6StringD5Ev,comdat
	.align 2
	.weak	_ZN2cv6StringD2Ev
	.type	_ZN2cv6StringD2Ev, @function
_ZN2cv6StringD2Ev:
.LFB6272:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA6272
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv6String10deallocateEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6272:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN2cv6StringD2Ev,"aG",@progbits,_ZN2cv6StringD5Ev,comdat
.LLSDA6272:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6272-.LLSDACSB6272
.LLSDACSB6272:
.LLSDACSE6272:
	.section	.text._ZN2cv6StringD2Ev,"axG",@progbits,_ZN2cv6StringD5Ev,comdat
	.size	_ZN2cv6StringD2Ev, .-_ZN2cv6StringD2Ev
	.weak	_ZN2cv6StringD1Ev
	.set	_ZN2cv6StringD1Ev,_ZN2cv6StringD2Ev
	.section	.text._ZN2cv6detail8PtrOwner6incRefEv,"axG",@progbits,_ZN2cv6detail8PtrOwner6incRefEv,comdat
	.align 2
	.weak	_ZN2cv6detail8PtrOwner6incRefEv
	.type	_ZN2cv6detail8PtrOwner6incRefEv, @function
_ZN2cv6detail8PtrOwner6incRefEv:
.LFB6338:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	lock addl	$1, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6338:
	.size	_ZN2cv6detail8PtrOwner6incRefEv, .-_ZN2cv6detail8PtrOwner6incRefEv
	.section	.text._ZN2cv6detail8PtrOwner6decRefEv,"axG",@progbits,_ZN2cv6detail8PtrOwner6decRefEv,comdat
	.align 2
	.weak	_ZN2cv6detail8PtrOwner6decRefEv
	.type	_ZN2cv6detail8PtrOwner6decRefEv, @function
_ZN2cv6detail8PtrOwner6decRefEv:
.LFB6339:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	$-1, %edx
	lock xaddl	%edx, (%rax)
	cmpl	$1, %edx
	sete	%al
	testb	%al, %al
	je	.L19
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L19:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6339:
	.size	_ZN2cv6detail8PtrOwner6decRefEv, .-_ZN2cv6detail8PtrOwner6decRefEv
	.section	.text._ZN2cv11_InputArray4initEiPKv,"axG",@progbits,_ZN2cv11_InputArray4initEiPKv,comdat
	.align 2
	.weak	_ZN2cv11_InputArray4initEiPKv
	.type	_ZN2cv11_InputArray4initEiPKv, @function
_ZN2cv11_InputArray4initEiPKv:
.LFB6779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6779:
	.size	_ZN2cv11_InputArray4initEiPKv, .-_ZN2cv11_InputArray4initEiPKv
	.section	.text._ZN2cv11_InputArrayC2Ev,"axG",@progbits,_ZN2cv11_InputArrayC5Ev,comdat
	.align 2
	.weak	_ZN2cv11_InputArrayC2Ev
	.type	_ZN2cv11_InputArrayC2Ev, @function
_ZN2cv11_InputArrayC2Ev:
.LFB6785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN2cv5Size_IiEC1Ev
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN2cv11_InputArray4initEiPKv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6785:
	.size	_ZN2cv11_InputArrayC2Ev, .-_ZN2cv11_InputArrayC2Ev
	.weak	_ZN2cv11_InputArrayC1Ev
	.set	_ZN2cv11_InputArrayC1Ev,_ZN2cv11_InputArrayC2Ev
	.section	.text._ZN2cv11_InputArrayC2ERKNS_3MatE,"axG",@progbits,_ZN2cv11_InputArrayC5ERKNS_3MatE,comdat
	.align 2
	.weak	_ZN2cv11_InputArrayC2ERKNS_3MatE
	.type	_ZN2cv11_InputArrayC2ERKNS_3MatE, @function
_ZN2cv11_InputArrayC2ERKNS_3MatE:
.LFB6791:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN2cv5Size_IiEC1Ev
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$16842752, %esi
	movq	%rax, %rdi
	call	_ZN2cv11_InputArray4initEiPKv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6791:
	.size	_ZN2cv11_InputArrayC2ERKNS_3MatE, .-_ZN2cv11_InputArrayC2ERKNS_3MatE
	.weak	_ZN2cv11_InputArrayC1ERKNS_3MatE
	.set	_ZN2cv11_InputArrayC1ERKNS_3MatE,_ZN2cv11_InputArrayC2ERKNS_3MatE
	.section	.text._ZN2cv11_InputArrayD2Ev,"axG",@progbits,_ZN2cv11_InputArrayD5Ev,comdat
	.align 2
	.weak	_ZN2cv11_InputArrayD2Ev
	.type	_ZN2cv11_InputArrayD2Ev, @function
_ZN2cv11_InputArrayD2Ev:
.LFB6830:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6830:
	.size	_ZN2cv11_InputArrayD2Ev, .-_ZN2cv11_InputArrayD2Ev
	.weak	_ZN2cv11_InputArrayD1Ev
	.set	_ZN2cv11_InputArrayD1Ev,_ZN2cv11_InputArrayD2Ev
	.section	.text._ZN2cv12_OutputArrayC2ERNS_3MatE,"axG",@progbits,_ZN2cv12_OutputArrayC5ERNS_3MatE,comdat
	.align 2
	.weak	_ZN2cv12_OutputArrayC2ERNS_3MatE
	.type	_ZN2cv12_OutputArrayC2ERNS_3MatE, @function
_ZN2cv12_OutputArrayC2ERNS_3MatE:
.LFB6847:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayC2Ev
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	$33619968, %esi
	movq	%rax, %rdi
	call	_ZN2cv11_InputArray4initEiPKv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6847:
	.size	_ZN2cv12_OutputArrayC2ERNS_3MatE, .-_ZN2cv12_OutputArrayC2ERNS_3MatE
	.weak	_ZN2cv12_OutputArrayC1ERNS_3MatE
	.set	_ZN2cv12_OutputArrayC1ERNS_3MatE,_ZN2cv12_OutputArrayC2ERNS_3MatE
	.section	.text._ZN2cv12_OutputArrayD2Ev,"axG",@progbits,_ZN2cv12_OutputArrayD5Ev,comdat
	.align 2
	.weak	_ZN2cv12_OutputArrayD2Ev
	.type	_ZN2cv12_OutputArrayD2Ev, @function
_ZN2cv12_OutputArrayD2Ev:
.LFB6908:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6908:
	.size	_ZN2cv12_OutputArrayD2Ev, .-_ZN2cv12_OutputArrayD2Ev
	.weak	_ZN2cv12_OutputArrayD1Ev
	.set	_ZN2cv12_OutputArrayD1Ev,_ZN2cv12_OutputArrayD2Ev
	.section	.text._ZN2cv3MatC2Ev,"axG",@progbits,_ZN2cv3MatC5Ev,comdat
	.align 2
	.weak	_ZN2cv3MatC2Ev
	.type	_ZN2cv3MatC2Ev, @function
_ZN2cv3MatC2Ev:
.LFB6976:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1124007936, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv7MatSizeC1EPi
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	_ZN2cv7MatStepC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6976:
	.size	_ZN2cv3MatC2Ev, .-_ZN2cv3MatC2Ev
	.weak	_ZN2cv3MatC1Ev
	.set	_ZN2cv3MatC1Ev,_ZN2cv3MatC2Ev
	.section	.text._ZN2cv3MatD2Ev,"axG",@progbits,_ZN2cv3MatD5Ev,comdat
	.align 2
	.weak	_ZN2cv3MatD2Ev
	.type	_ZN2cv3MatD2Ev, @function
_ZN2cv3MatD2Ev:
.LFB7012:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7012
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3Mat7releaseEv
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$80, %rdx
	cmpq	%rdx, %rax
	je	.L29
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cv8fastFreeEPv
.L29:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7012:
	.section	.gcc_except_table._ZN2cv3MatD2Ev,"aG",@progbits,_ZN2cv3MatD5Ev,comdat
.LLSDA7012:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7012-.LLSDACSB7012
.LLSDACSB7012:
.LLSDACSE7012:
	.section	.text._ZN2cv3MatD2Ev,"axG",@progbits,_ZN2cv3MatD5Ev,comdat
	.size	_ZN2cv3MatD2Ev, .-_ZN2cv3MatD2Ev
	.weak	_ZN2cv3MatD1Ev
	.set	_ZN2cv3MatD1Ev,_ZN2cv3MatD2Ev
	.section	.text._ZN2cv3MataSERKS0_,"axG",@progbits,_ZN2cv3MataSERKS0_,comdat
	.align 2
	.weak	_ZN2cv3MataSERKS0_
	.type	_ZN2cv3MataSERKS0_, @function
_ZN2cv3MataSERKS0_:
.LFB7014:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L31
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	addq	$20, %rax
	lock addl	$1, (%rax)
.L32:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3Mat7releaseEv
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$2, %eax
	jg	.L33
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$2, %eax
	jg	.L33
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-24(%rbp), %rax
	addq	$72, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN2cv7MatStepixEi
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	addq	$72, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNK2cv7MatStepixEi
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	addq	$72, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN2cv7MatStepixEi
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	addq	$72, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK2cv7MatStepixEi
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	jmp	.L34
.L33:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv3Mat8copySizeERKS0_
.L34:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
.L31:
	movq	-24(%rbp), %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7014:
	.size	_ZN2cv3MataSERKS0_, .-_ZN2cv3MataSERKS0_
	.section	.text._ZN2cv3Mat7releaseEv,"axG",@progbits,_ZN2cv3Mat7releaseEv,comdat
	.align 2
	.weak	_ZN2cv3Mat7releaseEv
	.type	_ZN2cv3Mat7releaseEv, @function
_ZN2cv3Mat7releaseEv:
.LFB7026:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	addq	$20, %rax
	movl	$-1, %edx
	lock xaddl	%edx, (%rax)
	cmpl	$1, %edx
	jne	.L37
	movl	$1, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	testb	%al, %al
	je	.L39
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3Mat10deallocateEv
.L39:
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	$0, -4(%rbp)
.L41:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-4(%rbp), %eax
	jle	.L42
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -4(%rbp)
	jmp	.L41
.L42:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7026:
	.size	_ZN2cv3Mat7releaseEv, .-_ZN2cv3Mat7releaseEv
	.section	.text._ZN2cv7MatSizeC2EPi,"axG",@progbits,_ZN2cv7MatSizeC5EPi,comdat
	.align 2
	.weak	_ZN2cv7MatSizeC2EPi
	.type	_ZN2cv7MatSizeC2EPi, @function
_ZN2cv7MatSizeC2EPi:
.LFB7083:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7083:
	.size	_ZN2cv7MatSizeC2EPi, .-_ZN2cv7MatSizeC2EPi
	.weak	_ZN2cv7MatSizeC1EPi
	.set	_ZN2cv7MatSizeC1EPi,_ZN2cv7MatSizeC2EPi
	.section	.text._ZN2cv7MatStepC2Ev,"axG",@progbits,_ZN2cv7MatStepC5Ev,comdat
	.align 2
	.weak	_ZN2cv7MatStepC2Ev
	.type	_ZN2cv7MatStepC2Ev, @function
_ZN2cv7MatStepC2Ev:
.LFB7092:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	$0, (%rax)
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7092:
	.size	_ZN2cv7MatStepC2Ev, .-_ZN2cv7MatStepC2Ev
	.weak	_ZN2cv7MatStepC1Ev
	.set	_ZN2cv7MatStepC1Ev,_ZN2cv7MatStepC2Ev
	.section	.text._ZNK2cv7MatStepixEi,"axG",@progbits,_ZNK2cv7MatStepixEi,comdat
	.align 2
	.weak	_ZNK2cv7MatStepixEi
	.type	_ZNK2cv7MatStepixEi, @function
_ZNK2cv7MatStepixEi:
.LFB7097:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7097:
	.size	_ZNK2cv7MatStepixEi, .-_ZNK2cv7MatStepixEi
	.section	.text._ZN2cv7MatStepixEi,"axG",@progbits,_ZN2cv7MatStepixEi,comdat
	.align 2
	.weak	_ZN2cv7MatStepixEi
	.type	_ZN2cv7MatStepixEi, @function
_ZN2cv7MatStepixEi:
.LFB7098:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7098:
	.size	_ZN2cv7MatStepixEi, .-_ZN2cv7MatStepixEi
	.section	.rodata
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.section	.text._ZNSt6thread2idC2Ev,"axG",@progbits,_ZNSt6thread2idC5Ev,comdat
	.align 2
	.weak	_ZNSt6thread2idC2Ev
	.type	_ZNSt6thread2idC2Ev, @function
_ZNSt6thread2idC2Ev:
.LFB10347:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10347:
	.size	_ZNSt6thread2idC2Ev, .-_ZNSt6thread2idC2Ev
	.weak	_ZNSt6thread2idC1Ev
	.set	_ZNSt6thread2idC1Ev,_ZNSt6thread2idC2Ev
	.section	.text._ZSteqNSt6thread2idES0_,"axG",@progbits,_ZSteqNSt6thread2idES0_,comdat
	.weak	_ZSteqNSt6thread2idES0_
	.type	_ZSteqNSt6thread2idES0_, @function
_ZSteqNSt6thread2idES0_:
.LFB10352:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL15__gthread_equalmm
	testl	%eax, %eax
	setne	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10352:
	.size	_ZSteqNSt6thread2idES0_, .-_ZSteqNSt6thread2idES0_
	.section	.text._ZNSt6threadD2Ev,"axG",@progbits,_ZNSt6threadD5Ev,comdat
	.align 2
	.weak	_ZNSt6threadD2Ev
	.type	_ZNSt6threadD2Ev, @function
_ZNSt6threadD2Ev:
.LFB10361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6thread8joinableEv
	testb	%al, %al
	je	.L54
	call	_ZSt9terminatev
.L54:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10361:
	.size	_ZNSt6threadD2Ev, .-_ZNSt6threadD2Ev
	.weak	_ZNSt6threadD1Ev
	.set	_ZNSt6threadD1Ev,_ZNSt6threadD2Ev
	.section	.text._ZNKSt6thread8joinableEv,"axG",@progbits,_ZNKSt6thread8joinableEv,comdat
	.align 2
	.weak	_ZNKSt6thread8joinableEv
	.type	_ZNKSt6thread8joinableEv, @function
_ZNKSt6thread8joinableEv:
.LFB10365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread2idC1Ev
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	(%rax), %rdi
	call	_ZSteqNSt6thread2idES0_
	xorl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10365:
	.size	_ZNKSt6thread8joinableEv, .-_ZNKSt6thread8joinableEv
	.section	.text._ZNSt5mutex4lockEv,"axG",@progbits,_ZNSt5mutex4lockEv,comdat
	.align 2
	.weak	_ZNSt5mutex4lockEv
	.type	_ZNSt5mutex4lockEv, @function
_ZNSt5mutex4lockEv:
.LFB10390:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL20__gthread_mutex_lockP15pthread_mutex_t
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L59
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	_ZSt20__throw_system_errori
.L59:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10390:
	.size	_ZNSt5mutex4lockEv, .-_ZNSt5mutex4lockEv
	.section	.text._ZNSt5mutex6unlockEv,"axG",@progbits,_ZNSt5mutex6unlockEv,comdat
	.align 2
	.weak	_ZNSt5mutex6unlockEv
	.type	_ZNSt5mutex6unlockEv, @function
_ZNSt5mutex6unlockEv:
.LFB10392:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZL22__gthread_mutex_unlockP15pthread_mutex_t
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10392:
	.size	_ZNSt5mutex6unlockEv, .-_ZNSt5mutex6unlockEv
	.section	.rodata
	.type	_ZStL10defer_lock, @object
	.size	_ZStL10defer_lock, 1
_ZStL10defer_lock:
	.zero	1
	.type	_ZStL11try_to_lock, @object
	.size	_ZStL11try_to_lock, 1
_ZStL11try_to_lock:
	.zero	1
	.type	_ZStL10adopt_lock, @object
	.size	_ZStL10adopt_lock, 1
_ZStL10adopt_lock:
	.zero	1
	.local	_ZL8contador
	.comm	_ZL8contador,4,4
	.globl	bloqueoLectura
	.bss
	.align 32
	.type	bloqueoLectura, @object
	.size	bloqueoLectura, 40
bloqueoLectura:
	.zero	40
	.globl	bloqueoEscritura
	.align 32
	.type	bloqueoEscritura, @object
	.size	bloqueoEscritura, 40
bloqueoEscritura:
	.zero	40
	.data
	.type	_ZL15seguirMostrando, @object
	.size	_ZL15seguirMostrando, 1
_ZL15seguirMostrando:
	.byte	1
	.globl	cap
	.bss
	.align 32
	.type	cap, @object
	.size	cap, 40
cap:
	.zero	40
	.data
	.align 2
	.type	_ZL9MAX_FRAME, @object
	.size	_ZL9MAX_FRAME, 2
_ZL9MAX_FRAME:
	.value	10000
	.section	.text._ZN2cv12VideoCaptureaSERKS0_,"axG",@progbits,_ZN2cv12VideoCaptureaSERKS0_,comdat
	.align 2
	.weak	_ZN2cv12VideoCaptureaSERKS0_
	.type	_ZN2cv12VideoCaptureaSERKS0_, @function
_ZN2cv12VideoCaptureaSERKS0_:
.LFB10451:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv3PtrI9CvCaptureEaSERKS2_
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv3PtrINS_13IVideoCaptureEEaSERKS2_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10451:
	.size	_ZN2cv12VideoCaptureaSERKS0_, .-_ZN2cv12VideoCaptureaSERKS0_
	.section	.text._ZNSt6threadC2Ev,"axG",@progbits,_ZNSt6threadC5Ev,comdat
	.align 2
	.weak	_ZNSt6threadC2Ev
	.type	_ZNSt6threadC2Ev, @function
_ZNSt6threadC2Ev:
.LFB10453:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6thread2idC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10453:
	.size	_ZNSt6threadC2Ev, .-_ZNSt6threadC2Ev
	.weak	_ZNSt6threadC1Ev
	.set	_ZNSt6threadC1Ev,_ZNSt6threadC2Ev
	.section	.text._ZN2cv12VideoCaptureC2ERKS0_,"axG",@progbits,_ZN2cv12VideoCaptureC5ERKS0_,comdat
	.align 2
	.weak	_ZN2cv12VideoCaptureC2ERKS0_
	.type	_ZN2cv12VideoCaptureC2ERKS0_, @function
_ZN2cv12VideoCaptureC2ERKS0_:
.LFB10456:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$_ZTVN2cv12VideoCaptureE+16, %edx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv3PtrI9CvCaptureEC1ERKS2_
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv3PtrINS_13IVideoCaptureEEC1ERKS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10456:
	.size	_ZN2cv12VideoCaptureC2ERKS0_, .-_ZN2cv12VideoCaptureC2ERKS0_
	.weak	_ZN2cv12VideoCaptureC1ERKS0_
	.set	_ZN2cv12VideoCaptureC1ERKS0_,_ZN2cv12VideoCaptureC2ERKS0_
	.section	.rodata
.LC1:
	.string	"Tiempo transcurrido: "
.LC2:
	.string	"FPS reales: "
.LC3:
	.string	"Clocks per second "
	.text
	.globl	main
	.type	main, @function
main:
.LFB10450:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA10450
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$240, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -244(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rsp, %rax
	movq	%rax, %r14
	movw	$2, -34(%rbp)
	call	clock
	movq	%rax, -48(%rbp)
	cmpl	$1, -244(%rbp)
	jle	.L66
	movq	-256(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN2cv6StringC1EPKc
.LEHE0:
	leaq	-192(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZN2cv12VideoCaptureC1ERKNS_6StringE
.LEHE1:
	leaq	-240(%rbp), %rax
	movq	%rax, %rsi
	movl	$cap, %edi
.LEHB2:
	call	_ZN2cv12VideoCaptureaSERKS0_
.LEHE2:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv12VideoCaptureD1Ev
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv6StringD1Ev
	jmp	.L67
.L66:
	leaq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZN2cv12VideoCaptureC1Ei
.LEHE3:
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	$cap, %edi
.LEHB4:
	call	_ZN2cv12VideoCaptureaSERKS0_
.LEHE4:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv12VideoCaptureD1Ev
.L67:
	movswq	-34(%rbp), %rax
	leaq	-1(%rax), %rbx
	movq	%rbx, -56(%rbp)
	movq	%rbx, %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	%rbx, %rax
	addq	$1, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	%rbx, %rax
	addq	$1, %rax
	salq	$3, %rax
	leaq	7(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rbx, %r12
	movq	%rax, %r13
.L69:
	cmpq	$-1, %r12
	je	.L68
	movq	%r13, %rdi
	call	_ZNSt6threadC1Ev
	addq	$8, %r13
	subq	$1, %r12
	jmp	.L69
.L68:
	movl	$cap, %edi
.LEHB5:
	call	_ZNK2cv12VideoCapture8isOpenedEv
.LEHE5:
	xorl	$1, %eax
	testb	%al, %al
	je	.L70
	movl	$-1, %r12d
	jmp	.L71
.L70:
	leaq	-128(%rbp), %rax
	movl	$cap, %esi
	movq	%rax, %rdi
	call	_ZN2cv12VideoCaptureC1ERKS0_
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
.LEHB6:
	call	_Z12mostrarFrameN2cv12VideoCaptureE
.LEHE6:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv12VideoCaptureD1Ev
.LEHB7:
	call	_ZN2cv17destroyAllWindowsEv
	call	clock
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	subq	-48(%rbp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	movl	_ZL8contador(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L72
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L73
.L72:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L73:
	divss	-76(%rbp), %xmm0
	movss	%xmm0, -272(%rbp)
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movl	-76(%rbp), %eax
	movl	%eax, -248(%rbp)
	movss	-248(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEf
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movss	-272(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEf
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1000000, %esi
	movq	%rax, %rdi
	call	_ZNSolsEl
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.LEHE7:
	movl	$0, %r12d
.L71:
	movq	-64(%rbp), %rax
	movq	%rbx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
.L75:
	movq	-64(%rbp), %rax
	cmpq	%rax, %rbx
	je	.L74
	subq	$8, %rbx
	movq	%rbx, %rdi
	call	_ZNSt6threadD1Ev
	jmp	.L75
.L74:
	movq	%r14, %rsp
	movl	%r12d, %eax
	jmp	.L89
.L85:
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv12VideoCaptureD1Ev
	jmp	.L78
.L84:
	movq	%rax, %rbx
.L78:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv6StringD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB8:
	call	_Unwind_Resume
.L86:
	movq	%rax, %rbx
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv12VideoCaptureD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.L88:
	movq	%rax, %r12
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv12VideoCaptureD1Ev
	jmp	.L81
.L87:
	movq	%rax, %r12
.L81:
	movq	-64(%rbp), %rax
	movq	%rbx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
.L83:
	movq	-64(%rbp), %rax
	cmpq	%rax, %rbx
	je	.L82
	subq	$8, %rbx
	movq	%rbx, %rdi
	call	_ZNSt6threadD1Ev
	jmp	.L83
.L82:
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE8:
.L89:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10450:
	.section	.gcc_except_table,"a",@progbits
.LLSDA10450:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10450-.LLSDACSB10450
.LLSDACSB10450:
	.uleb128 .LEHB0-.LFB10450
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB10450
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L84-.LFB10450
	.uleb128 0
	.uleb128 .LEHB2-.LFB10450
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L85-.LFB10450
	.uleb128 0
	.uleb128 .LEHB3-.LFB10450
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB10450
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L86-.LFB10450
	.uleb128 0
	.uleb128 .LEHB5-.LFB10450
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L87-.LFB10450
	.uleb128 0
	.uleb128 .LEHB6-.LFB10450
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L88-.LFB10450
	.uleb128 0
	.uleb128 .LEHB7-.LFB10450
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L87-.LFB10450
	.uleb128 0
	.uleb128 .LEHB8-.LFB10450
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE10450:
	.text
	.size	main, .-main
	.section	.rodata
.LC5:
	.string	"Hilo "
.LC6:
	.string	" lee imagen"
.LC7:
	.string	" imprime imagen"
.LC8:
	.string	"Frame"
.LC9:
	.string	"Frame: "
.LC10:
	.string	"\t\t"
.LC11:
	.string	"FPS -> "
.LC12:
	.string	"Sale hilo "
	.text
	.globl	_Z12mostrarFrameN2cv12VideoCaptureERKi
	.type	_Z12mostrarFrameN2cv12VideoCaptureERKi, @function
_Z12mostrarFrameN2cv12VideoCaptureERKi:
.LFB10458:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA10458
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3MatC1Ev
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3MatC1Ev
.L97:
	movzbl	_ZL15seguirMostrando(%rip), %eax
	testb	%al, %al
	je	.L91
	leaq	-128(%rbp), %rax
	pxor	%xmm0, %xmm0
	movq	%rax, %rdi
.LEHB9:
	call	_ZN2cv7Scalar_IdEC1Ed
	leaq	-128(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv3MataSERKNS_7Scalar_IdEE
	leaq	-96(%rbp), %rax
	pxor	%xmm0, %xmm0
	movq	%rax, %rdi
	call	_ZN2cv7Scalar_IdEC1Ed
	leaq	-96(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv3MataSERKNS_7Scalar_IdEE
	movl	$bloqueoLectura, %edi
	call	_ZNSt5mutex4lockEv
	movq	-336(%rbp), %rax
	movl	(%rax), %ebx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$_ZN2cv12VideoCapturersERNS_3MatE, %ecx
	leaq	-224(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	$bloqueoLectura, %edi
	call	_ZNSt5mutex6unlockEv
	movq	-208(%rbp), %rax
	testq	%rax, %rax
	jne	.L92
	movb	$0, _ZL15seguirMostrando(%rip)
	jmp	.L91
.L92:
	movl	$bloqueoEscritura, %edi
	call	_ZNSt5mutex4lockEv
	movq	-336(%rbp), %rax
	movl	(%rax), %ebx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.LEHE9:
	leaq	-224(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayC1ERKNS_3MatE
	leaq	-32(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
.LEHB10:
	call	_ZN2cv6StringC1EPKc
.LEHE10:
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZN2cv6imshowERKNS_6StringERKNS_11_InputArrayE
.LEHE11:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv6StringD1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD1Ev
	movl	$5, %esi
	movl	$cap, %edi
.LEHB12:
	call	_ZNK2cv12VideoCapture3getEi
	movsd	%xmm0, -344(%rbp)
	movl	_ZL8contador(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZL8contador(%rip)
	movl	_ZL8contador(%rip), %ebx
	movl	$.LC9, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEj
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-344(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$bloqueoEscritura, %edi
	call	_ZNSt5mutex6unlockEv
	movl	$1, %edi
	call	_ZN2cv7waitKeyEi
	testl	%eax, %eax
	jns	.L93
	movzwl	_ZL9MAX_FRAME(%rip), %eax
	movswl	%ax, %edx
	movl	_ZL8contador(%rip), %eax
	cmpl	%eax, %edx
	jnb	.L94
.L93:
	movl	$1, %eax
	jmp	.L95
.L94:
	movl	$0, %eax
.L95:
	testb	%al, %al
	je	.L97
	movb	$0, _ZL15seguirMostrando(%rip)
	jmp	.L97
.L91:
	movq	-336(%rbp), %rax
	movl	(%rax), %ebx
	movl	$.LC12, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.LEHE12:
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3MatD1Ev
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3MatD1Ev
	jmp	.L104
.L103:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv6StringD1Ev
	jmp	.L99
.L102:
	movq	%rax, %rbx
.L99:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD1Ev
	jmp	.L100
.L101:
	movq	%rax, %rbx
.L100:
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3MatD1Ev
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3MatD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB13:
	call	_Unwind_Resume
.LEHE13:
.L104:
	addq	$344, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10458:
	.section	.gcc_except_table
.LLSDA10458:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10458-.LLSDACSB10458
.LLSDACSB10458:
	.uleb128 .LEHB9-.LFB10458
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L101-.LFB10458
	.uleb128 0
	.uleb128 .LEHB10-.LFB10458
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L102-.LFB10458
	.uleb128 0
	.uleb128 .LEHB11-.LFB10458
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L103-.LFB10458
	.uleb128 0
	.uleb128 .LEHB12-.LFB10458
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L101-.LFB10458
	.uleb128 0
	.uleb128 .LEHB13-.LFB10458
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE10458:
	.text
	.size	_Z12mostrarFrameN2cv12VideoCaptureERKi, .-_Z12mostrarFrameN2cv12VideoCaptureERKi
	.section	.rodata
.LC15:
	.string	"Imagen"
.LC16:
	.string	"Original"
	.text
	.globl	_Z12mostrarFrameN2cv12VideoCaptureE
	.type	_Z12mostrarFrameN2cv12VideoCaptureE, @function
_Z12mostrarFrameN2cv12VideoCaptureE:
.LFB10459:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA10459
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$520, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -520(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3MatC1Ev
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3MatC1Ev
.L111:
	movl	$_ZN2cv12VideoCapturersERNS_3MatE, %ecx
	leaq	-416(%rbp), %rdx
	movq	-520(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	*%rcx
	leaq	-416(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv3MataSERKS0_
.LEHE14:
	leaq	-416(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv12_OutputArrayC1ERNS_3MatE
	leaq	-416(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayC1ERKNS_3MatE
	leaq	-320(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	$0, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
.LEHB15:
	call	_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEii
.LEHE15:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD1Ev
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv12_OutputArrayD1Ev
	leaq	-256(%rbp), %rax
	movl	$7, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	_ZN2cv5Size_IiEC1Eii
	leaq	-416(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv12_OutputArrayC1ERNS_3MatE
	leaq	-416(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayC1ERKNS_3MatE
	movsd	.LC13(%rip), %xmm0
	movabsq	$4609434218613702656, %rdi
	leaq	-256(%rbp), %rdx
	leaq	-240(%rbp), %rsi
	leaq	-208(%rbp), %rax
	movl	$4, %ecx
	movapd	%xmm0, %xmm1
	movq	%rdi, -528(%rbp)
	movsd	-528(%rbp), %xmm0
	movq	%rax, %rdi
.LEHB16:
	call	_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi
.LEHE16:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv12_OutputArrayD1Ev
	leaq	-416(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv12_OutputArrayC1ERNS_3MatE
	leaq	-416(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayC1ERKNS_3MatE
	movsd	.LC14(%rip), %xmm0
	leaq	-176(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$3, %edx
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	movq	%rax, %rdi
.LEHB17:
	call	_ZN2cv5CannyERKNS_11_InputArrayERKNS_12_OutputArrayEddib
.LEHE17:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD1Ev
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv12_OutputArrayD1Ev
	leaq	-416(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayC1ERKNS_3MatE
	leaq	-80(%rbp), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
.LEHB18:
	call	_ZN2cv6StringC1EPKc
.LEHE18:
	leaq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB19:
	call	_ZN2cv6imshowERKNS_6StringERKNS_11_InputArrayE
.LEHE19:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv6StringD1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD1Ev
	leaq	-512(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayC1ERKNS_3MatE
	leaq	-32(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
.LEHB20:
	call	_ZN2cv6StringC1EPKc
.LEHE20:
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB21:
	call	_ZN2cv6imshowERKNS_6StringERKNS_11_InputArrayE
.LEHE21:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv6StringD1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD1Ev
	movq	-520(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
.LEHB22:
	call	_ZNK2cv12VideoCapture3getEi
	movsd	%xmm0, -528(%rbp)
	movl	_ZL8contador(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZL8contador(%rip)
	movl	_ZL8contador(%rip), %ebx
	movl	$.LC9, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEj
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-528(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$1, %edi
	call	_ZN2cv7waitKeyEi
.LEHE22:
	testl	%eax, %eax
	jns	.L106
	movzwl	_ZL9MAX_FRAME(%rip), %eax
	movswl	%ax, %edx
	movl	_ZL8contador(%rip), %eax
	cmpl	%eax, %edx
	jnb	.L107
.L106:
	movl	$1, %eax
	jmp	.L108
.L107:
	movl	$0, %eax
.L108:
	testb	%al, %al
	jne	.L130
	jmp	.L111
.L130:
	nop
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3MatD1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3MatD1Ev
	jmp	.L129
.L121:
	movq	%rax, %rbx
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD1Ev
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv12_OutputArrayD1Ev
	jmp	.L113
.L122:
	movq	%rax, %rbx
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv12_OutputArrayD1Ev
	jmp	.L113
.L123:
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD1Ev
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv12_OutputArrayD1Ev
	jmp	.L113
.L125:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv6StringD1Ev
	jmp	.L117
.L124:
	movq	%rax, %rbx
.L117:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD1Ev
	jmp	.L113
.L127:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv6StringD1Ev
	jmp	.L119
.L126:
	movq	%rax, %rbx
.L119:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv11_InputArrayD1Ev
	jmp	.L113
.L120:
	movq	%rax, %rbx
.L113:
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3MatD1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3MatD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB23:
	call	_Unwind_Resume
.LEHE23:
.L129:
	addq	$520, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10459:
	.section	.gcc_except_table
.LLSDA10459:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10459-.LLSDACSB10459
.LLSDACSB10459:
	.uleb128 .LEHB14-.LFB10459
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L120-.LFB10459
	.uleb128 0
	.uleb128 .LEHB15-.LFB10459
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L121-.LFB10459
	.uleb128 0
	.uleb128 .LEHB16-.LFB10459
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L122-.LFB10459
	.uleb128 0
	.uleb128 .LEHB17-.LFB10459
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L123-.LFB10459
	.uleb128 0
	.uleb128 .LEHB18-.LFB10459
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L124-.LFB10459
	.uleb128 0
	.uleb128 .LEHB19-.LFB10459
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L125-.LFB10459
	.uleb128 0
	.uleb128 .LEHB20-.LFB10459
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L126-.LFB10459
	.uleb128 0
	.uleb128 .LEHB21-.LFB10459
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L127-.LFB10459
	.uleb128 0
	.uleb128 .LEHB22-.LFB10459
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L120-.LFB10459
	.uleb128 0
	.uleb128 .LEHB23-.LFB10459
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE10459:
	.text
	.size	_Z12mostrarFrameN2cv12VideoCaptureE, .-_Z12mostrarFrameN2cv12VideoCaptureE
	.section	.rodata
.LC17:
	.string	"Number of cpus: "
.LC18:
	.string	"Number of threads: "
.LC19:
	.string	"MMX: "
.LC20:
	.string	"SSE: "
.LC21:
	.string	"SSE 2: "
.LC22:
	.string	"SSE 3: "
.LC23:
	.string	"SSE 4.1: "
.LC24:
	.string	"SSE 4.2: "
.LC25:
	.string	"POPCOUNT: "
.LC26:
	.string	"AVX: "
.LC27:
	.string	"AVX2: "
	.text
	.globl	_Z7getInfov
	.type	_Z7getInfov, @function
_Z7getInfov:
.LFB10460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	call	_ZN2cv13getNumThreadsEv
	movl	%eax, %ebx
	call	_ZN2cv15getNumberOfCPUsEv
	movl	%eax, %r12d
	movl	$.LC17, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%r12d, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$11, %edi
	call	_ZN2cv20checkHardwareSupportEi
	movzbl	%al, %ebx
	movl	$10, %edi
	call	_ZN2cv20checkHardwareSupportEi
	movzbl	%al, %r12d
	movl	$8, %edi
	call	_ZN2cv20checkHardwareSupportEi
	movzbl	%al, %r13d
	movl	$7, %edi
	call	_ZN2cv20checkHardwareSupportEi
	movzbl	%al, %r14d
	movl	$6, %edi
	call	_ZN2cv20checkHardwareSupportEi
	movzbl	%al, %r15d
	movl	$4, %edi
	call	_ZN2cv20checkHardwareSupportEi
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movl	$3, %edi
	call	_ZN2cv20checkHardwareSupportEi
	movzbl	%al, %edx
	movl	%edx, -56(%rbp)
	movl	$2, %edi
	call	_ZN2cv20checkHardwareSupportEi
	movzbl	%al, %ecx
	movl	%ecx, -60(%rbp)
	movl	$1, %edi
	call	_ZN2cv20checkHardwareSupportEi
	movzbl	%al, %edi
	movl	%edi, -64(%rbp)
	movl	$.LC19, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-64(%rbp), %esi
	movq	%rax, %rdi
	call	_ZNSolsEb
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	call	_ZNSolsEb
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-56(%rbp), %esi
	movq	%rax, %rdi
	call	_ZNSolsEb
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC22, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-52(%rbp), %esi
	movq	%rax, %rdi
	call	_ZNSolsEb
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC23, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%r15d, %esi
	movq	%rax, %rdi
	call	_ZNSolsEb
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%r14d, %esi
	movq	%rax, %rdi
	call	_ZNSolsEb
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%r13d, %esi
	movq	%rax, %rdi
	call	_ZNSolsEb
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%r12d, %esi
	movq	%rax, %rdi
	call	_ZNSolsEb
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEb
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10460:
	.size	_Z7getInfov, .-_Z7getInfov
	.section	.text._ZN2cv5Size_IiEC2Ev,"axG",@progbits,_ZN2cv5Size_IiEC5Ev,comdat
	.align 2
	.weak	_ZN2cv5Size_IiEC2Ev
	.type	_ZN2cv5Size_IiEC2Ev, @function
_ZN2cv5Size_IiEC2Ev:
.LFB10641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10641:
	.size	_ZN2cv5Size_IiEC2Ev, .-_ZN2cv5Size_IiEC2Ev
	.weak	_ZN2cv5Size_IiEC1Ev
	.set	_ZN2cv5Size_IiEC1Ev,_ZN2cv5Size_IiEC2Ev
	.section	.text._ZN2cv5Size_IiEC2Eii,"axG",@progbits,_ZN2cv5Size_IiEC5Eii,comdat
	.align 2
	.weak	_ZN2cv5Size_IiEC2Eii
	.type	_ZN2cv5Size_IiEC2Eii, @function
_ZN2cv5Size_IiEC2Eii:
.LFB10644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10644:
	.size	_ZN2cv5Size_IiEC2Eii, .-_ZN2cv5Size_IiEC2Eii
	.weak	_ZN2cv5Size_IiEC1Eii
	.set	_ZN2cv5Size_IiEC1Eii,_ZN2cv5Size_IiEC2Eii
	.section	.text._ZN2cv7Scalar_IdEC2Ed,"axG",@progbits,_ZN2cv7Scalar_IdEC5Ed,comdat
	.align 2
	.weak	_ZN2cv7Scalar_IdEC2Ed
	.type	_ZN2cv7Scalar_IdEC2Ed, @function
_ZN2cv7Scalar_IdEC2Ed:
.LFB10663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3VecIdLi4EEC2Ev
	movq	-8(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10663:
	.size	_ZN2cv7Scalar_IdEC2Ed, .-_ZN2cv7Scalar_IdEC2Ed
	.weak	_ZN2cv7Scalar_IdEC1Ed
	.set	_ZN2cv7Scalar_IdEC1Ed,_ZN2cv7Scalar_IdEC2Ed
	.section	.text._ZN2cv3PtrI9CvCaptureEaSERKS2_,"axG",@progbits,_ZN2cv3PtrI9CvCaptureEaSERKS2_,comdat
	.align 2
	.weak	_ZN2cv3PtrI9CvCaptureEaSERKS2_
	.type	_ZN2cv3PtrI9CvCaptureEaSERKS2_, @function
_ZN2cv3PtrI9CvCaptureEaSERKS2_:
.LFB10782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv3PtrI9CvCaptureEC1ERKS2_
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv3PtrI9CvCaptureE4swapERS2_
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3PtrI9CvCaptureED1Ev
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10782:
	.size	_ZN2cv3PtrI9CvCaptureEaSERKS2_, .-_ZN2cv3PtrI9CvCaptureEaSERKS2_
	.section	.text._ZN2cv3PtrINS_13IVideoCaptureEEaSERKS2_,"axG",@progbits,_ZN2cv3PtrINS_13IVideoCaptureEEaSERKS2_,comdat
	.align 2
	.weak	_ZN2cv3PtrINS_13IVideoCaptureEEaSERKS2_
	.type	_ZN2cv3PtrINS_13IVideoCaptureEEaSERKS2_, @function
_ZN2cv3PtrINS_13IVideoCaptureEEaSERKS2_:
.LFB10783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv3PtrINS_13IVideoCaptureEEC1ERKS2_
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cv3PtrINS_13IVideoCaptureEE4swapERS2_
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3PtrINS_13IVideoCaptureEED1Ev
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10783:
	.size	_ZN2cv3PtrINS_13IVideoCaptureEEaSERKS2_, .-_ZN2cv3PtrINS_13IVideoCaptureEEaSERKS2_
	.section	.text._ZN2cv3PtrI9CvCaptureEC2ERKS2_,"axG",@progbits,_ZN2cv3PtrI9CvCaptureEC5ERKS2_,comdat
	.align 2
	.weak	_ZN2cv3PtrI9CvCaptureEC2ERKS2_
	.type	_ZN2cv3PtrI9CvCaptureEC2ERKS2_, @function
_ZN2cv3PtrI9CvCaptureEC2ERKS2_:
.LFB10785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L141
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cv6detail8PtrOwner6incRefEv
.L141:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10785:
	.size	_ZN2cv3PtrI9CvCaptureEC2ERKS2_, .-_ZN2cv3PtrI9CvCaptureEC2ERKS2_
	.weak	_ZN2cv3PtrI9CvCaptureEC1ERKS2_
	.set	_ZN2cv3PtrI9CvCaptureEC1ERKS2_,_ZN2cv3PtrI9CvCaptureEC2ERKS2_
	.section	.text._ZN2cv3PtrI9CvCaptureED2Ev,"axG",@progbits,_ZN2cv3PtrI9CvCaptureED5Ev,comdat
	.align 2
	.weak	_ZN2cv3PtrI9CvCaptureED2Ev
	.type	_ZN2cv3PtrI9CvCaptureED2Ev, @function
_ZN2cv3PtrI9CvCaptureED2Ev:
.LFB10788:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA10788
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3PtrI9CvCaptureE7releaseEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10788:
	.section	.gcc_except_table
.LLSDA10788:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10788-.LLSDACSB10788
.LLSDACSB10788:
.LLSDACSE10788:
	.section	.text._ZN2cv3PtrI9CvCaptureED2Ev,"axG",@progbits,_ZN2cv3PtrI9CvCaptureED5Ev,comdat
	.size	_ZN2cv3PtrI9CvCaptureED2Ev, .-_ZN2cv3PtrI9CvCaptureED2Ev
	.weak	_ZN2cv3PtrI9CvCaptureED1Ev
	.set	_ZN2cv3PtrI9CvCaptureED1Ev,_ZN2cv3PtrI9CvCaptureED2Ev
	.section	.text._ZN2cv3PtrINS_13IVideoCaptureEEC2ERKS2_,"axG",@progbits,_ZN2cv3PtrINS_13IVideoCaptureEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN2cv3PtrINS_13IVideoCaptureEEC2ERKS2_
	.type	_ZN2cv3PtrINS_13IVideoCaptureEEC2ERKS2_, @function
_ZN2cv3PtrINS_13IVideoCaptureEEC2ERKS2_:
.LFB10791:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L145
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cv6detail8PtrOwner6incRefEv
.L145:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10791:
	.size	_ZN2cv3PtrINS_13IVideoCaptureEEC2ERKS2_, .-_ZN2cv3PtrINS_13IVideoCaptureEEC2ERKS2_
	.weak	_ZN2cv3PtrINS_13IVideoCaptureEEC1ERKS2_
	.set	_ZN2cv3PtrINS_13IVideoCaptureEEC1ERKS2_,_ZN2cv3PtrINS_13IVideoCaptureEEC2ERKS2_
	.section	.text._ZN2cv3PtrINS_13IVideoCaptureEED2Ev,"axG",@progbits,_ZN2cv3PtrINS_13IVideoCaptureEED5Ev,comdat
	.align 2
	.weak	_ZN2cv3PtrINS_13IVideoCaptureEED2Ev
	.type	_ZN2cv3PtrINS_13IVideoCaptureEED2Ev, @function
_ZN2cv3PtrINS_13IVideoCaptureEED2Ev:
.LFB10794:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA10794
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv3PtrINS_13IVideoCaptureEE7releaseEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10794:
	.section	.gcc_except_table
.LLSDA10794:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10794-.LLSDACSB10794
.LLSDACSB10794:
.LLSDACSE10794:
	.section	.text._ZN2cv3PtrINS_13IVideoCaptureEED2Ev,"axG",@progbits,_ZN2cv3PtrINS_13IVideoCaptureEED5Ev,comdat
	.size	_ZN2cv3PtrINS_13IVideoCaptureEED2Ev, .-_ZN2cv3PtrINS_13IVideoCaptureEED2Ev
	.weak	_ZN2cv3PtrINS_13IVideoCaptureEED1Ev
	.set	_ZN2cv3PtrINS_13IVideoCaptureEED1Ev,_ZN2cv3PtrINS_13IVideoCaptureEED2Ev
	.section	.text._ZN2cv3VecIdLi4EEC2Ev,"axG",@progbits,_ZN2cv3VecIdLi4EEC5Ev,comdat
	.align 2
	.weak	_ZN2cv3VecIdLi4EEC2Ev
	.type	_ZN2cv3VecIdLi4EEC2Ev, @function
_ZN2cv3VecIdLi4EEC2Ev:
.LFB10948:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cv4MatxIdLi4ELi1EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10948:
	.size	_ZN2cv3VecIdLi4EEC2Ev, .-_ZN2cv3VecIdLi4EEC2Ev
	.weak	_ZN2cv3VecIdLi4EEC1Ev
	.set	_ZN2cv3VecIdLi4EEC1Ev,_ZN2cv3VecIdLi4EEC2Ev
	.section	.text._ZN2cv3PtrI9CvCaptureE4swapERS2_,"axG",@progbits,_ZN2cv3PtrI9CvCaptureE4swapERS2_,comdat
	.align 2
	.weak	_ZN2cv3PtrI9CvCaptureE4swapERS2_
	.type	_ZN2cv3PtrI9CvCaptureE4swapERS2_, @function
_ZN2cv3PtrI9CvCaptureE4swapERS2_:
.LFB11072:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIPN2cv6detail8PtrOwnerEEvRT_S5_
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIP9CvCaptureEvRT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11072:
	.size	_ZN2cv3PtrI9CvCaptureE4swapERS2_, .-_ZN2cv3PtrI9CvCaptureE4swapERS2_
	.section	.text._ZN2cv3PtrINS_13IVideoCaptureEE4swapERS2_,"axG",@progbits,_ZN2cv3PtrINS_13IVideoCaptureEE4swapERS2_,comdat
	.align 2
	.weak	_ZN2cv3PtrINS_13IVideoCaptureEE4swapERS2_
	.type	_ZN2cv3PtrINS_13IVideoCaptureEE4swapERS2_, @function
_ZN2cv3PtrINS_13IVideoCaptureEE4swapERS2_:
.LFB11073:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIPN2cv6detail8PtrOwnerEEvRT_S5_
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIPN2cv13IVideoCaptureEEvRT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11073:
	.size	_ZN2cv3PtrINS_13IVideoCaptureEE4swapERS2_, .-_ZN2cv3PtrINS_13IVideoCaptureEE4swapERS2_
	.section	.text._ZN2cv3PtrI9CvCaptureE7releaseEv,"axG",@progbits,_ZN2cv3PtrI9CvCaptureE7releaseEv,comdat
	.align 2
	.weak	_ZN2cv3PtrI9CvCaptureE7releaseEv
	.type	_ZN2cv3PtrI9CvCaptureE7releaseEv, @function
_ZN2cv3PtrI9CvCaptureE7releaseEv:
.LFB11074:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L151
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cv6detail8PtrOwner6decRefEv
.L151:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11074:
	.size	_ZN2cv3PtrI9CvCaptureE7releaseEv, .-_ZN2cv3PtrI9CvCaptureE7releaseEv
	.section	.text._ZN2cv3PtrINS_13IVideoCaptureEE7releaseEv,"axG",@progbits,_ZN2cv3PtrINS_13IVideoCaptureEE7releaseEv,comdat
	.align 2
	.weak	_ZN2cv3PtrINS_13IVideoCaptureEE7releaseEv
	.type	_ZN2cv3PtrINS_13IVideoCaptureEE7releaseEv, @function
_ZN2cv3PtrINS_13IVideoCaptureEE7releaseEv:
.LFB11075:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L153
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cv6detail8PtrOwner6decRefEv
.L153:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11075:
	.size	_ZN2cv3PtrINS_13IVideoCaptureEE7releaseEv, .-_ZN2cv3PtrINS_13IVideoCaptureEE7releaseEv
	.section	.text._ZN2cv4MatxIdLi4ELi1EEC2Ev,"axG",@progbits,_ZN2cv4MatxIdLi4ELi1EEC5Ev,comdat
	.align 2
	.weak	_ZN2cv4MatxIdLi4ELi1EEC2Ev
	.type	_ZN2cv4MatxIdLi4ELi1EEC2Ev, @function
_ZN2cv4MatxIdLi4ELi1EEC2Ev:
.LFB11136:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
.L156:
	cmpl	$3, -4(%rbp)
	jg	.L157
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	addl	$1, -4(%rbp)
	jmp	.L156
.L157:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11136:
	.size	_ZN2cv4MatxIdLi4ELi1EEC2Ev, .-_ZN2cv4MatxIdLi4ELi1EEC2Ev
	.weak	_ZN2cv4MatxIdLi4ELi1EEC1Ev
	.set	_ZN2cv4MatxIdLi4ELi1EEC1Ev,_ZN2cv4MatxIdLi4ELi1EEC2Ev
	.section	.text._ZSt4moveIRPN2cv6detail8PtrOwnerEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRPN2cv6detail8PtrOwnerEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.weak	_ZSt4moveIRPN2cv6detail8PtrOwnerEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRPN2cv6detail8PtrOwnerEEONSt16remove_referenceIT_E4typeEOS6_, @function
_ZSt4moveIRPN2cv6detail8PtrOwnerEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB11206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11206:
	.size	_ZSt4moveIRPN2cv6detail8PtrOwnerEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRPN2cv6detail8PtrOwnerEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZSt4swapIPN2cv6detail8PtrOwnerEEvRT_S5_,"axG",@progbits,_ZSt4swapIPN2cv6detail8PtrOwnerEEvRT_S5_,comdat
	.weak	_ZSt4swapIPN2cv6detail8PtrOwnerEEvRT_S5_
	.type	_ZSt4swapIPN2cv6detail8PtrOwnerEEvRT_S5_, @function
_ZSt4swapIPN2cv6detail8PtrOwnerEEvRT_S5_:
.LFB11205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN2cv6detail8PtrOwnerEEONSt16remove_referenceIT_E4typeEOS6_
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN2cv6detail8PtrOwnerEEONSt16remove_referenceIT_E4typeEOS6_
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN2cv6detail8PtrOwnerEEONSt16remove_referenceIT_E4typeEOS6_
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11205:
	.size	_ZSt4swapIPN2cv6detail8PtrOwnerEEvRT_S5_, .-_ZSt4swapIPN2cv6detail8PtrOwnerEEvRT_S5_
	.section	.text._ZSt4moveIRP9CvCaptureEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRP9CvCaptureEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRP9CvCaptureEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRP9CvCaptureEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRP9CvCaptureEONSt16remove_referenceIT_E4typeEOS4_:
.LFB11208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11208:
	.size	_ZSt4moveIRP9CvCaptureEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRP9CvCaptureEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZSt4swapIP9CvCaptureEvRT_S3_,"axG",@progbits,_ZSt4swapIP9CvCaptureEvRT_S3_,comdat
	.weak	_ZSt4swapIP9CvCaptureEvRT_S3_
	.type	_ZSt4swapIP9CvCaptureEvRT_S3_, @function
_ZSt4swapIP9CvCaptureEvRT_S3_:
.LFB11207:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP9CvCaptureEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP9CvCaptureEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP9CvCaptureEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11207:
	.size	_ZSt4swapIP9CvCaptureEvRT_S3_, .-_ZSt4swapIP9CvCaptureEvRT_S3_
	.section	.text._ZSt4moveIRPN2cv13IVideoCaptureEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRPN2cv13IVideoCaptureEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRPN2cv13IVideoCaptureEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRPN2cv13IVideoCaptureEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRPN2cv13IVideoCaptureEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB11210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11210:
	.size	_ZSt4moveIRPN2cv13IVideoCaptureEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRPN2cv13IVideoCaptureEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZSt4swapIPN2cv13IVideoCaptureEEvRT_S4_,"axG",@progbits,_ZSt4swapIPN2cv13IVideoCaptureEEvRT_S4_,comdat
	.weak	_ZSt4swapIPN2cv13IVideoCaptureEEvRT_S4_
	.type	_ZSt4swapIPN2cv13IVideoCaptureEEvRT_S4_, @function
_ZSt4swapIPN2cv13IVideoCaptureEEvRT_S4_:
.LFB11209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN2cv13IVideoCaptureEEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN2cv13IVideoCaptureEEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN2cv13IVideoCaptureEEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11209:
	.size	_ZSt4swapIPN2cv13IVideoCaptureEEvRT_S4_, .-_ZSt4swapIPN2cv13IVideoCaptureEEvRT_S4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB11442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L169
	cmpl	$65535, -8(%rbp)
	jne	.L169
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	movl	$cap, %edi
	call	_ZN2cv12VideoCaptureC1Ev
	movl	$__dso_handle, %edx
	movl	$cap, %esi
	movl	$_ZN2cv12VideoCaptureD1Ev, %edi
	call	__cxa_atexit
.L169:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11442:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_bloqueoLectura, @function
_GLOBAL__sub_I_bloqueoLectura:
.LFB11450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11450:
	.size	_GLOBAL__sub_I_bloqueoLectura, .-_GLOBAL__sub_I_bloqueoLectura
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_bloqueoLectura
	.section	.rodata
	.align 8
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 8
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.quad	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.align 4
.LC0:
	.long	1232348160
	.align 8
.LC13:
	.long	0
	.long	1073217536
	.align 8
.LC14:
	.long	0
	.long	1077805056
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 5.3.1 20151207 (Red Hat 5.3.1-2)"
	.section	.note.GNU-stack,"",@progbits
