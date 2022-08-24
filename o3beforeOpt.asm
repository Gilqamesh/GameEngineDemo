
./a.out:	file format Mach-O 64-bit x86-64


Disassembly of section __TEXT,__text:

0000000100001660 __ZNSt3__16vectorI3RecNS_9allocatorIS1_EEED1Ev:
100001660: 55                          	pushq	%rbp
100001661: 48 89 e5                    	movq	%rsp, %rbp
100001664: 48 89 f8                    	movq	%rdi, %rax
100001667: 48 8b 3f                    	movq	(%rdi), %rdi
10000166a: 48 85 ff                    	testq	%rdi, %rdi
10000166d: 74 0a                       	je	10 <__ZNSt3__16vectorI3RecNS_9allocatorIS1_EEED1Ev+0x19>
10000166f: 48 89 78 08                 	movq	%rdi, 8(%rax)
100001673: 5d                          	popq	%rbp
100001674: e9 5b 99 00 00              	jmp	39259 <dyld_stub_binder+0x10000afd4>
100001679: 5d                          	popq	%rbp
10000167a: c3                          	retq
10000167b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001680 __ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj:
100001680: 55                          	pushq	%rbp
100001681: 48 89 e5                    	movq	%rsp, %rbp
100001684: 41 57                       	pushq	%r15
100001686: 41 56                       	pushq	%r14
100001688: 41 54                       	pushq	%r12
10000168a: 53                          	pushq	%rbx
10000168b: 49 89 f4                    	movq	%rsi, %r12
10000168e: 48 89 fb                    	movq	%rdi, %rbx
100001691: 4c 8d b7 a0 01 00 00        	leaq	416(%rdi), %r14
100001698: 4c 8d 7f 08                 	leaq	8(%rdi), %r15
10000169c: 48 8b 05 ad a9 00 00        	movq	43437(%rip), %rax
1000016a3: 48 8d 48 18                 	leaq	24(%rax), %rcx
1000016a7: 48 89 0f                    	movq	%rcx, (%rdi)
1000016aa: 48 83 c0 40                 	addq	$64, %rax
1000016ae: 48 89 87 a0 01 00 00        	movq	%rax, 416(%rdi)
1000016b5: 4c 89 f7                    	movq	%r14, %rdi
1000016b8: 4c 89 fe                    	movq	%r15, %rsi
1000016bb: e8 f0 98 00 00              	callq	39152 <dyld_stub_binder+0x10000afb0>
1000016c0: 48 c7 83 28 02 00 00 00 00 00 00    	movq	$0, 552(%rbx)
1000016cb: c7 83 30 02 00 00 ff ff ff ff       	movl	$4294967295, 560(%rbx)
1000016d5: 48 8b 05 9c a9 00 00        	movq	43420(%rip), %rax
1000016dc: 48 8d 48 18                 	leaq	24(%rax), %rcx
1000016e0: 48 89 0b                    	movq	%rcx, (%rbx)
1000016e3: 48 83 c0 40                 	addq	$64, %rax
1000016e7: 48 89 83 a0 01 00 00        	movq	%rax, 416(%rbx)
1000016ee: 4c 89 ff                    	movq	%r15, %rdi
1000016f1: e8 7a 2a 00 00              	callq	10874 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev>
1000016f6: 48 83 bb 80 00 00 00 00     	cmpq	$0, 128(%rbx)
1000016fe: 74 19                       	je	25 <__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj+0x99>
100001700: 48 8b 03                    	movq	(%rbx), %rax
100001703: 48 8b 40 e8                 	movq	-24(%rax), %rax
100001707: 48 8d 3c 03                 	leaq	(%rbx,%rax), %rdi
10000170b: 8b 74 03 20                 	movl	32(%rbx,%rax), %esi
10000170f: 83 ce 04                    	orl	$4, %esi
100001712: e8 9f 98 00 00              	callq	39071 <dyld_stub_binder+0x10000afb6>
100001717: eb 25                       	jmp	37 <__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj+0xbe>
100001719: 48 8d 35 9f a3 00 00        	leaq	41887(%rip), %rsi
100001720: 4c 89 e7                    	movq	%r12, %rdi
100001723: e8 18 99 00 00              	callq	39192 <dyld_stub_binder+0x10000b040>
100001728: 48 89 83 80 00 00 00        	movq	%rax, 128(%rbx)
10000172f: 48 85 c0                    	testq	%rax, %rax
100001732: 74 cc                       	je	-52 <__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj+0x80>
100001734: c7 83 90 01 00 00 10 00 00 00       	movl	$16, 400(%rbx)
10000173e: 5b                          	popq	%rbx
10000173f: 41 5c                       	popq	%r12
100001741: 41 5e                       	popq	%r14
100001743: 41 5f                       	popq	%r15
100001745: 5d                          	popq	%rbp
100001746: c3                          	retq
100001747: 49 89 c4                    	movq	%rax, %r12
10000174a: eb 10                       	jmp	16 <__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj+0xdc>
10000174c: 49 89 c4                    	movq	%rax, %r12
10000174f: eb 1e                       	jmp	30 <__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj+0xef>
100001751: 49 89 c4                    	movq	%rax, %r12
100001754: 4c 89 ff                    	movq	%r15, %rdi
100001757: e8 44 19 00 00              	callq	6468 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev>
10000175c: 48 8b 35 05 a9 00 00        	movq	43269(%rip), %rsi
100001763: 48 83 c6 08                 	addq	$8, %rsi
100001767: 48 89 df                    	movq	%rbx, %rdi
10000176a: e8 ed 97 00 00              	callq	38893 <dyld_stub_binder+0x10000af5c>
10000176f: 4c 89 f7                    	movq	%r14, %rdi
100001772: e8 45 98 00 00              	callq	38981 <dyld_stub_binder+0x10000afbc>
100001777: 4c 89 e7                    	movq	%r12, %rdi
10000177a: e8 a1 97 00 00              	callq	38817 <dyld_stub_binder+0x10000af20>
10000177f: 0f 0b                       	ud2
100001781: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000178b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001790 __ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev:
100001790: 55                          	pushq	%rbp
100001791: 48 89 e5                    	movq	%rsp, %rbp
100001794: 41 56                       	pushq	%r14
100001796: 53                          	pushq	%rbx
100001797: 48 89 fb                    	movq	%rdi, %rbx
10000179a: 48 8b 05 d7 a8 00 00        	movq	43223(%rip), %rax
1000017a1: 48 8d 48 18                 	leaq	24(%rax), %rcx
1000017a5: 48 89 0f                    	movq	%rcx, (%rdi)
1000017a8: 48 83 c0 40                 	addq	$64, %rax
1000017ac: 48 89 87 a0 01 00 00        	movq	%rax, 416(%rdi)
1000017b3: 48 83 c7 08                 	addq	$8, %rdi
1000017b7: e8 e4 18 00 00              	callq	6372 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev>
1000017bc: 48 8b 35 a5 a8 00 00        	movq	43173(%rip), %rsi
1000017c3: 48 83 c6 08                 	addq	$8, %rsi
1000017c7: 4c 8d b3 a0 01 00 00        	leaq	416(%rbx), %r14
1000017ce: 48 89 df                    	movq	%rbx, %rdi
1000017d1: e8 86 97 00 00              	callq	38790 <dyld_stub_binder+0x10000af5c>
1000017d6: 4c 89 f7                    	movq	%r14, %rdi
1000017d9: 5b                          	popq	%rbx
1000017da: 41 5e                       	popq	%r14
1000017dc: 5d                          	popq	%rbp
1000017dd: e9 da 97 00 00              	jmp	38874 <dyld_stub_binder+0x10000afbc>
1000017e2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000017ec: 0f 1f 40 00                 	nopl	(%rax)

00000001000017f0 _main:
1000017f0: 55                          	pushq	%rbp
1000017f1: 48 89 e5                    	movq	%rsp, %rbp
1000017f4: 41 57                       	pushq	%r15
1000017f6: 41 56                       	pushq	%r14
1000017f8: 41 55                       	pushq	%r13
1000017fa: 41 54                       	pushq	%r12
1000017fc: 53                          	pushq	%rbx
1000017fd: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100001804: bf 2a 00 00 00              	movl	$42, %edi
100001809: e8 62 98 00 00              	callq	39010 <dyld_stub_binder+0x10000b070>
10000180e: bb 00 7d 00 00              	movl	$32000, %ebx
100001813: 4c 8d 2d 9e f3 00 00        	leaq	62366(%rip), %r13
10000181a: 49 bf ab aa aa aa aa aa aa aa       	movabsq	$-6148914691236517205, %r15
100001824: eb 12                       	jmp	18 <_main+0x48>
100001826: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001830: ff cb                       	decl	%ebx
100001832: 0f 84 83 02 00 00           	je	643 <_main+0x2cb>
100001838: f3 41 0f 10 4d 00           	movss	(%r13), %xmm1
10000183e: 0f 28 c1                    	movaps	%xmm1, %xmm0
100001841: f3 0f 10 15 b7 9e 00 00     	movss	40631(%rip), %xmm2
100001849: f3 0f 58 c2                 	addss	%xmm2, %xmm0
10000184d: f3 41 0f 58 4d 08           	addss	8(%r13), %xmm1
100001853: f3 0f 10 15 a9 9e 00 00     	movss	40617(%rip), %xmm2
10000185b: f3 0f 58 ca                 	addss	%xmm2, %xmm1
10000185f: e8 fc 13 00 00              	callq	5116 <__Z7getRandff>
100001864: f3 0f 11 45 c0              	movss	%xmm0, -64(%rbp)
100001869: f3 41 0f 10 4d 04           	movss	4(%r13), %xmm1
10000186f: 0f 28 c1                    	movaps	%xmm1, %xmm0
100001872: f3 0f 58 05 86 9e 00 00     	addss	40582(%rip), %xmm0
10000187a: f3 41 0f 58 4d 0c           	addss	12(%r13), %xmm1
100001880: f3 0f 58 0d 7c 9e 00 00     	addss	40572(%rip), %xmm1
100001888: e8 d3 13 00 00              	callq	5075 <__Z7getRandff>
10000188d: f3 0f 11 45 c4              	movss	%xmm0, -60(%rbp)
100001892: f3 0f 10 05 6e 9e 00 00     	movss	40558(%rip), %xmm0
10000189a: f3 0f 10 0d 6a 9e 00 00     	movss	40554(%rip), %xmm1
1000018a2: e8 b9 13 00 00              	callq	5049 <__Z7getRandff>
1000018a7: f3 0f 11 45 c8              	movss	%xmm0, -56(%rbp)
1000018ac: f3 0f 10 05 54 9e 00 00     	movss	40532(%rip), %xmm0
1000018b4: f3 0f 10 0d 50 9e 00 00     	movss	40528(%rip), %xmm1
1000018bc: e8 9f 13 00 00              	callq	5023 <__Z7getRandff>
1000018c1: f3 0f 11 45 cc              	movss	%xmm0, -52(%rbp)
1000018c6: f3 0f 10 05 42 9e 00 00     	movss	40514(%rip), %xmm0
1000018ce: f3 0f 10 0d 3e 9e 00 00     	movss	40510(%rip), %xmm1
1000018d6: e8 85 13 00 00              	callq	4997 <__Z7getRandff>
1000018db: f3 0f 11 45 d0              	movss	%xmm0, -48(%rbp)
1000018e0: f3 0f 10 05 28 9e 00 00     	movss	40488(%rip), %xmm0
1000018e8: f3 0f 10 0d 24 9e 00 00     	movss	40484(%rip), %xmm1
1000018f0: e8 6b 13 00 00              	callq	4971 <__Z7getRandff>
1000018f5: f3 0f 11 45 d4              	movss	%xmm0, -44(%rbp)
1000018fa: 4c 8b 25 d7 f2 00 00        	movq	62167(%rip), %r12
100001901: 48 8b 05 d8 f2 00 00        	movq	62168(%rip), %rax
100001908: 49 39 c4                    	cmpq	%rax, %r12
10000190b: 74 33                       	je	51 <_main+0x150>
10000190d: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100001911: 49 89 44 24 10              	movq	%rax, 16(%r12)
100001916: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000191a: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
10000191e: 49 89 4c 24 08              	movq	%rcx, 8(%r12)
100001923: 49 89 04 24                 	movq	%rax, (%r12)
100001927: 49 83 c4 18                 	addq	$24, %r12
10000192b: 4c 89 25 a6 f2 00 00        	movq	%r12, 62118(%rip)
100001932: e9 fe 00 00 00              	jmp	254 <_main+0x245>
100001937: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100001940: 89 5d b8                    	movl	%ebx, -72(%rbp)
100001943: 4c 8b 35 86 f2 00 00        	movq	62086(%rip), %r14
10000194a: 4d 29 f4                    	subq	%r14, %r12
10000194d: 4c 89 e3                    	movq	%r12, %rbx
100001950: 48 c1 fb 03                 	sarq	$3, %rbx
100001954: 49 0f af df                 	imulq	%r15, %rbx
100001958: 48 8d 4b 01                 	leaq	1(%rbx), %rcx
10000195c: 48 ba aa aa aa aa aa aa aa 0a       	movabsq	$768614336404564650, %rdx
100001966: 48 39 d1                    	cmpq	%rdx, %rcx
100001969: 0f 87 1a 12 00 00           	ja	4634 <_main+0x1399>
10000196f: 4c 29 f0                    	subq	%r14, %rax
100001972: 48 c1 f8 03                 	sarq	$3, %rax
100001976: 49 0f af c7                 	imulq	%r15, %rax
10000197a: 4c 8d 2c 00                 	leaq	(%rax,%rax), %r13
10000197e: 49 39 cd                    	cmpq	%rcx, %r13
100001981: 4c 0f 42 e9                 	cmovbq	%rcx, %r13
100001985: 48 b9 55 55 55 55 55 55 55 05       	movabsq	$384307168202282325, %rcx
10000198f: 48 39 c8                    	cmpq	%rcx, %rax
100001992: 4c 0f 43 ea                 	cmovaeq	%rdx, %r13
100001996: 4d 85 ed                    	testq	%r13, %r13
100001999: 74 1c                       	je	28 <_main+0x1c7>
10000199b: 49 39 d5                    	cmpq	%rdx, %r13
10000199e: 0f 87 f1 11 00 00           	ja	4593 <_main+0x13a5>
1000019a4: 4a 8d 04 ed 00 00 00 00     	leaq	(,%r13,8), %rax
1000019ac: 48 8d 3c 40                 	leaq	(%rax,%rax,2), %rdi
1000019b0: e8 2b 96 00 00              	callq	38443 <dyld_stub_binder+0x10000afe0>
1000019b5: eb 02                       	jmp	2 <_main+0x1c9>
1000019b7: 31 c0                       	xorl	%eax, %eax
1000019b9: 48 8d 0c 5b                 	leaq	(%rbx,%rbx,2), %rcx
1000019bd: 4c 8d 3c c8                 	leaq	(%rax,%rcx,8), %r15
1000019c1: 4b 8d 54 6d 00              	leaq	(%r13,%r13,2), %rdx
1000019c6: 4c 8d 2c d0                 	leaq	(%rax,%rdx,8), %r13
1000019ca: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
1000019ce: 48 89 54 c8 10              	movq	%rdx, 16(%rax,%rcx,8)
1000019d3: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
1000019d7: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
1000019db: 48 89 74 c8 08              	movq	%rsi, 8(%rax,%rcx,8)
1000019e0: 48 89 14 c8                 	movq	%rdx, (%rax,%rcx,8)
1000019e4: 48 8d 5c c8 18              	leaq	24(%rax,%rcx,8), %rbx
1000019e9: 4d 29 e7                    	subq	%r12, %r15
1000019ec: 4d 85 e4                    	testq	%r12, %r12
1000019ef: 7e 0e                       	jle	14 <_main+0x20f>
1000019f1: 4c 89 ff                    	movq	%r15, %rdi
1000019f4: 4c 89 f6                    	movq	%r14, %rsi
1000019f7: 4c 89 e2                    	movq	%r12, %rdx
1000019fa: e8 5f 96 00 00              	callq	38495 <dyld_stub_binder+0x10000b05e>
1000019ff: 4c 89 3d ca f1 00 00        	movq	%r15, 61898(%rip)
100001a06: 48 89 1d cb f1 00 00        	movq	%rbx, 61899(%rip)
100001a0d: 4c 89 2d cc f1 00 00        	movq	%r13, 61900(%rip)
100001a14: 4d 85 f6                    	testq	%r14, %r14
100001a17: 49 bf ab aa aa aa aa aa aa aa       	movabsq	$-6148914691236517205, %r15
100001a21: 4c 8d 2d 90 f1 00 00        	leaq	61840(%rip), %r13
100001a28: 8b 5d b8                    	movl	-72(%rbp), %ebx
100001a2b: 74 08                       	je	8 <_main+0x245>
100001a2d: 4c 89 f7                    	movq	%r14, %rdi
100001a30: e8 9f 95 00 00              	callq	38303 <dyld_stub_binder+0x10000afd4>
100001a35: 8b 05 dd 4b 08 00           	movl	543709(%rip), %eax
100001a3b: ff c0                       	incl	%eax
100001a3d: 89 05 d5 4b 08 00           	movl	%eax, 543701(%rip)
100001a43: 83 f8 31                    	cmpl	$49, %eax
100001a46: 0f 87 e4 fd ff ff           	ja	-540 <_main+0x40>
100001a4c: 41 89 dc                    	movl	%ebx, %r12d
100001a4f: 48 8b 3d da a5 00 00        	movq	42458(%rip), %rdi
100001a56: 48 8d 75 c0                 	leaq	-64(%rbp), %rsi
100001a5a: e8 01 40 00 00              	callq	16385 <__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK3Rec>
100001a5f: 49 89 c6                    	movq	%rax, %r14
100001a62: 48 8b 00                    	movq	(%rax), %rax
100001a65: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100001a69: 4c 01 f6                    	addq	%r14, %rsi
100001a6c: 48 8d 5d 98                 	leaq	-104(%rbp), %rbx
100001a70: 48 89 df                    	movq	%rbx, %rdi
100001a73: e8 c0 94 00 00              	callq	38080 <dyld_stub_binder+0x10000af38>
100001a78: 48 89 df                    	movq	%rbx, %rdi
100001a7b: 48 8b 35 b6 a5 00 00        	movq	42422(%rip), %rsi
100001a82: e8 ab 94 00 00              	callq	38059 <dyld_stub_binder+0x10000af32>
100001a87: 48 8b 08                    	movq	(%rax), %rcx
100001a8a: 48 89 c7                    	movq	%rax, %rdi
100001a8d: be 0a 00 00 00              	movl	$10, %esi
100001a92: ff 51 38                    	callq	*56(%rcx)
100001a95: 89 c3                       	movl	%eax, %ebx
100001a97: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
100001a9b: e8 04 95 00 00              	callq	38148 <dyld_stub_binder+0x10000afa4>
100001aa0: 0f be f3                    	movsbl	%bl, %esi
100001aa3: 4c 89 f7                    	movq	%r14, %rdi
100001aa6: e8 99 94 00 00              	callq	38041 <dyld_stub_binder+0x10000af44>
100001aab: 4c 89 f7                    	movq	%r14, %rdi
100001aae: e8 97 94 00 00              	callq	38039 <dyld_stub_binder+0x10000af4a>
100001ab3: 44 89 e3                    	movl	%r12d, %ebx
100001ab6: e9 75 fd ff ff              	jmp	-651 <_main+0x40>
100001abb: e8 68 95 00 00              	callq	38248 <dyld_stub_binder+0x10000b028>
100001ac0: 49 89 c6                    	movq	%rax, %r14
100001ac3: 48 8b 3d 06 f1 00 00        	movq	61702(%rip), %rdi
100001aca: 48 8b 35 07 f1 00 00        	movq	61703(%rip), %rsi
100001ad1: e8 9a 27 00 00              	callq	10138 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_>
100001ad6: e8 4d 95 00 00              	callq	38221 <dyld_stub_binder+0x10000b028>
100001adb: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100001adf: 48 8b 3d 4a a5 00 00        	movq	42314(%rip), %rdi
100001ae6: 48 8d 35 f5 9c 00 00        	leaq	40181(%rip), %rsi
100001aed: ba 16 00 00 00              	movl	$22, %edx
100001af2: e8 b9 23 00 00              	callq	9145 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001af7: 48 89 c7                    	movq	%rax, %rdi
100001afa: be 00 7d 00 00              	movl	$32000, %esi
100001aff: e8 64 94 00 00              	callq	37988 <dyld_stub_binder+0x10000af68>
100001b04: 48 89 c3                    	movq	%rax, %rbx
100001b07: 48 8b 00                    	movq	(%rax), %rax
100001b0a: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100001b0e: 48 01 de                    	addq	%rbx, %rsi
100001b11: 4c 8d 7d c0                 	leaq	-64(%rbp), %r15
100001b15: 4c 89 ff                    	movq	%r15, %rdi
100001b18: e8 1b 94 00 00              	callq	37915 <dyld_stub_binder+0x10000af38>
100001b1d: 48 8b 35 14 a5 00 00        	movq	42260(%rip), %rsi
100001b24: 4c 89 ff                    	movq	%r15, %rdi
100001b27: e8 06 94 00 00              	callq	37894 <dyld_stub_binder+0x10000af32>
100001b2c: 48 8b 08                    	movq	(%rax), %rcx
100001b2f: 48 89 c7                    	movq	%rax, %rdi
100001b32: be 0a 00 00 00              	movl	$10, %esi
100001b37: ff 51 38                    	callq	*56(%rcx)
100001b3a: 41 89 c7                    	movl	%eax, %r15d
100001b3d: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100001b41: e8 5e 94 00 00              	callq	37982 <dyld_stub_binder+0x10000afa4>
100001b46: 41 0f be f7                 	movsbl	%r15b, %esi
100001b4a: 48 89 df                    	movq	%rbx, %rdi
100001b4d: e8 f2 93 00 00              	callq	37874 <dyld_stub_binder+0x10000af44>
100001b52: 48 89 df                    	movq	%rbx, %rdi
100001b55: e8 f0 93 00 00              	callq	37872 <dyld_stub_binder+0x10000af4a>
100001b5a: 48 8b 3d cf a4 00 00        	movq	42191(%rip), %rdi
100001b61: 48 8d 35 91 9c 00 00        	leaq	40081(%rip), %rsi
100001b68: ba 17 00 00 00              	movl	$23, %edx
100001b6d: e8 3e 23 00 00              	callq	9022 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001b72: be 18 00 00 00              	movl	$24, %esi
100001b77: 48 89 c7                    	movq	%rax, %rdi
100001b7a: e8 f5 93 00 00              	callq	37877 <dyld_stub_binder+0x10000af74>
100001b7f: 48 8d 35 8b 9c 00 00        	leaq	40075(%rip), %rsi
100001b86: ba 1a 00 00 00              	movl	$26, %edx
100001b8b: 48 89 c7                    	movq	%rax, %rdi
100001b8e: e8 1d 23 00 00              	callq	8989 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001b93: f3 0f 10 05 7d 9b 00 00     	movss	39805(%rip), %xmm0
100001b9b: 48 89 c7                    	movq	%rax, %rdi
100001b9e: e8 bf 93 00 00              	callq	37823 <dyld_stub_binder+0x10000af62>
100001ba3: 48 8d 35 82 9c 00 00        	leaq	40066(%rip), %rsi
100001baa: ba 02 00 00 00              	movl	$2, %edx
100001baf: 48 89 c7                    	movq	%rax, %rdi
100001bb2: e8 f9 22 00 00              	callq	8953 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001bb7: 48 89 c3                    	movq	%rax, %rbx
100001bba: 48 8b 00                    	movq	(%rax), %rax
100001bbd: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100001bc1: 48 01 de                    	addq	%rbx, %rsi
100001bc4: 4c 8d 7d c0                 	leaq	-64(%rbp), %r15
100001bc8: 4c 89 ff                    	movq	%r15, %rdi
100001bcb: e8 68 93 00 00              	callq	37736 <dyld_stub_binder+0x10000af38>
100001bd0: 48 8b 35 61 a4 00 00        	movq	42081(%rip), %rsi
100001bd7: 4c 89 ff                    	movq	%r15, %rdi
100001bda: e8 53 93 00 00              	callq	37715 <dyld_stub_binder+0x10000af32>
100001bdf: 48 8b 08                    	movq	(%rax), %rcx
100001be2: 48 89 c7                    	movq	%rax, %rdi
100001be5: be 0a 00 00 00              	movl	$10, %esi
100001bea: ff 51 38                    	callq	*56(%rcx)
100001bed: 41 89 c7                    	movl	%eax, %r15d
100001bf0: 4c 89 75 b0                 	movq	%r14, -80(%rbp)
100001bf4: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100001bf8: e8 a7 93 00 00              	callq	37799 <dyld_stub_binder+0x10000afa4>
100001bfd: 41 0f be f7                 	movsbl	%r15b, %esi
100001c01: 48 89 df                    	movq	%rbx, %rdi
100001c04: e8 3b 93 00 00              	callq	37691 <dyld_stub_binder+0x10000af44>
100001c09: 48 89 df                    	movq	%rbx, %rdi
100001c0c: e8 39 93 00 00              	callq	37689 <dyld_stub_binder+0x10000af4a>
100001c11: 49 8b 45 00                 	movq	(%r13), %rax
100001c15: 49 8b 4d 08                 	movq	8(%r13), %rcx
100001c19: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100001c20: 48 89 8d 70 ff ff ff        	movq	%rcx, -144(%rbp)
100001c27: 49 8b 45 10                 	movq	16(%r13), %rax
100001c2b: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
100001c32: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100001c39: 48 89 44 24 10              	movq	%rax, 16(%rsp)
100001c3e: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
100001c45: 48 8b 8d 70 ff ff ff        	movq	-144(%rbp), %rcx
100001c4c: 48 89 4c 24 08              	movq	%rcx, 8(%rsp)
100001c51: 48 89 04 24                 	movq	%rax, (%rsp)
100001c55: 48 8d 3d 8c ef 00 00        	leaq	61324(%rip), %rdi
100001c5c: e8 6f 8e 00 00              	callq	36463 <__ZN13NodeAllocator12allocateNodeE3Rec>
100001c61: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100001c65: 48 85 c0                    	testq	%rax, %rax
100001c68: 0f 84 2c 0f 00 00           	je	3884 <_main+0x13aa>
100001c6e: e8 b5 93 00 00              	callq	37813 <dyld_stub_binder+0x10000b028>
100001c73: 49 89 c6                    	movq	%rax, %r14
100001c76: 48 8b 05 53 ef 00 00        	movq	61267(%rip), %rax
100001c7d: 48 39 05 54 ef 00 00        	cmpq	%rax, 61268(%rip)
100001c84: 49 bf ab aa aa aa aa aa aa aa       	movabsq	$-6148914691236517205, %r15
100001c8e: 4c 8b 65 b8                 	movq	-72(%rbp), %r12
100001c92: 74 76                       	je	118 <_main+0x51a>
100001c94: 31 db                       	xorl	%ebx, %ebx
100001c96: 4c 8d 2d 4b ef 00 00        	leaq	61259(%rip), %r13
100001c9d: 0f 1f 00                    	nopl	(%rax)
100001ca0: 48 8d 0c 5b                 	leaq	(%rbx,%rbx,2), %rcx
100001ca4: 48 8b 54 c8 10              	movq	16(%rax,%rcx,8), %rdx
100001ca9: 48 89 55 90                 	movq	%rdx, -112(%rbp)
100001cad: 48 8b 14 c8                 	movq	(%rax,%rcx,8), %rdx
100001cb1: 48 8b 44 c8 08              	movq	8(%rax,%rcx,8), %rax
100001cb6: 48 89 45 88                 	movq	%rax, -120(%rbp)
100001cba: 48 89 55 80                 	movq	%rdx, -128(%rbp)
100001cbe: 48 8b 45 90                 	movq	-112(%rbp), %rax
100001cc2: 48 89 44 24 10              	movq	%rax, 16(%rsp)
100001cc7: 48 8b 45 80                 	movq	-128(%rbp), %rax
100001ccb: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100001ccf: 48 89 4c 24 08              	movq	%rcx, 8(%rsp)
100001cd4: 48 89 04 24                 	movq	%rax, (%rsp)
100001cd8: 4c 89 e7                    	movq	%r12, %rdi
100001cdb: 89 de                       	movl	%ebx, %esi
100001cdd: 4c 89 ea                    	movq	%r13, %rdx
100001ce0: 31 c9                       	xorl	%ecx, %ecx
100001ce2: 45 31 c0                    	xorl	%r8d, %r8d
100001ce5: e8 56 3e 00 00              	callq	15958 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj>
100001cea: ff c3                       	incl	%ebx
100001cec: 48 8b 0d e5 ee 00 00        	movq	61157(%rip), %rcx
100001cf3: 48 8b 05 d6 ee 00 00        	movq	61142(%rip), %rax
100001cfa: 48 29 c1                    	subq	%rax, %rcx
100001cfd: 48 c1 f9 03                 	sarq	$3, %rcx
100001d01: 49 0f af cf                 	imulq	%r15, %rcx
100001d05: 48 39 d9                    	cmpq	%rbx, %rcx
100001d08: 77 96                       	ja	-106 <_main+0x4b0>
100001d0a: e8 19 93 00 00              	callq	37657 <dyld_stub_binder+0x10000b028>
100001d0f: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100001d13: 48 8b 3d 16 a3 00 00        	movq	41750(%rip), %rdi
100001d1a: 48 8d 35 54 9b 00 00        	leaq	39764(%rip), %rsi
100001d21: ba 10 00 00 00              	movl	$16, %edx
100001d26: e8 85 21 00 00              	callq	8581 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001d2b: 48 89 c3                    	movq	%rax, %rbx
100001d2e: 48 8b 00                    	movq	(%rax), %rax
100001d31: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100001d35: 48 01 de                    	addq	%rbx, %rsi
100001d38: 4c 8d 6d c0                 	leaq	-64(%rbp), %r13
100001d3c: 4c 89 ef                    	movq	%r13, %rdi
100001d3f: e8 f4 91 00 00              	callq	37364 <dyld_stub_binder+0x10000af38>
100001d44: 48 8b 35 ed a2 00 00        	movq	41709(%rip), %rsi
100001d4b: 4c 89 ef                    	movq	%r13, %rdi
100001d4e: e8 df 91 00 00              	callq	37343 <dyld_stub_binder+0x10000af32>
100001d53: 48 8b 08                    	movq	(%rax), %rcx
100001d56: 48 89 c7                    	movq	%rax, %rdi
100001d59: be 0a 00 00 00              	movl	$10, %esi
100001d5e: ff 51 38                    	callq	*56(%rcx)
100001d61: 41 89 c5                    	movl	%eax, %r13d
100001d64: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100001d68: 48 29 45 a8                 	subq	%rax, -88(%rbp)
100001d6c: 4c 29 75 a0                 	subq	%r14, -96(%rbp)
100001d70: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100001d74: e8 2b 92 00 00              	callq	37419 <dyld_stub_binder+0x10000afa4>
100001d79: 41 0f be f5                 	movsbl	%r13b, %esi
100001d7d: 48 89 df                    	movq	%rbx, %rdi
100001d80: e8 bf 91 00 00              	callq	37311 <dyld_stub_binder+0x10000af44>
100001d85: 48 89 df                    	movq	%rbx, %rdi
100001d88: e8 bd 91 00 00              	callq	37309 <dyld_stub_binder+0x10000af4a>
100001d8d: 31 f6                       	xorl	%esi, %esi
100001d8f: 48 8b 3d 9a a2 00 00        	movq	41626(%rip), %rdi
100001d96: 45 31 ff                    	xorl	%r15d, %r15d
100001d99: 31 db                       	xorl	%ebx, %ebx
100001d9b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100001da0: ff c6                       	incl	%esi
100001da2: 48 89 75 b0                 	movq	%rsi, -80(%rbp)
100001da6: e8 c3 91 00 00              	callq	37315 <dyld_stub_binder+0x10000af6e>
100001dab: ba 03 00 00 00              	movl	$3, %edx
100001db0: 48 89 c7                    	movq	%rax, %rdi
100001db3: 48 8d 35 cc 9a 00 00        	leaq	39628(%rip), %rsi
100001dba: e8 f1 20 00 00              	callq	8433 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001dbf: 45 31 ed                    	xorl	%r13d, %r13d
100001dc2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001dcc: 0f 1f 40 00                 	nopl	(%rax)
100001dd0: e8 53 92 00 00              	callq	37459 <dyld_stub_binder+0x10000b028>
100001dd5: 49 89 c6                    	movq	%rax, %r14
100001dd8: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100001ddc: 48 8d 35 05 ee 00 00        	leaq	60933(%rip), %rsi
100001de3: 44 89 ea                    	movl	%r13d, %edx
100001de6: e8 b5 52 00 00              	callq	21173 <__ZN4Node6updateER13NodeAllocatorj>
100001deb: 41 89 c4                    	movl	%eax, %r12d
100001dee: e8 35 92 00 00              	callq	37429 <dyld_stub_binder+0x10000b028>
100001df3: 4d 29 f7                    	subq	%r14, %r15
100001df6: 4c 8b 35 33 a2 00 00        	movq	41523(%rip), %r14
100001dfd: 49 01 c7                    	addq	%rax, %r15
100001e00: 4c 89 f7                    	movq	%r14, %rdi
100001e03: 44 89 e6                    	movl	%r12d, %esi
100001e06: e8 63 91 00 00              	callq	37219 <dyld_stub_binder+0x10000af6e>
100001e0b: ba 01 00 00 00              	movl	$1, %edx
100001e10: 48 89 c7                    	movq	%rax, %rdi
100001e13: 48 8d 35 46 9a 00 00        	leaq	39494(%rip), %rsi
100001e1a: e8 91 20 00 00              	callq	8337 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001e1f: 44 39 e3                    	cmpl	%r12d, %ebx
100001e22: 41 0f 42 dc                 	cmovbl	%r12d, %ebx
100001e26: 41 ff c5                    	incl	%r13d
100001e29: 41 83 fd 3c                 	cmpl	$60, %r13d
100001e2d: 75 a1                       	jne	-95 <_main+0x5e0>
100001e2f: 4c 89 f7                    	movq	%r14, %rdi
100001e32: 48 8d 35 51 9a 00 00        	leaq	39505(%rip), %rsi
100001e39: 31 d2                       	xorl	%edx, %edx
100001e3b: e8 70 20 00 00              	callq	8304 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001e40: 49 89 c5                    	movq	%rax, %r13
100001e43: 48 8b 00                    	movq	(%rax), %rax
100001e46: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100001e4a: 4c 01 ee                    	addq	%r13, %rsi
100001e4d: 4c 8d 65 c0                 	leaq	-64(%rbp), %r12
100001e51: 4c 89 e7                    	movq	%r12, %rdi
100001e54: e8 df 90 00 00              	callq	37087 <dyld_stub_binder+0x10000af38>
100001e59: 4c 89 e7                    	movq	%r12, %rdi
100001e5c: 48 8b 35 d5 a1 00 00        	movq	41429(%rip), %rsi
100001e63: e8 ca 90 00 00              	callq	37066 <dyld_stub_binder+0x10000af32>
100001e68: 48 8b 08                    	movq	(%rax), %rcx
100001e6b: 48 89 c7                    	movq	%rax, %rdi
100001e6e: be 0a 00 00 00              	movl	$10, %esi
100001e73: ff 51 38                    	callq	*56(%rcx)
100001e76: 41 89 c6                    	movl	%eax, %r14d
100001e79: 4c 89 e7                    	movq	%r12, %rdi
100001e7c: e8 23 91 00 00              	callq	37155 <dyld_stub_binder+0x10000afa4>
100001e81: 41 0f be f6                 	movsbl	%r14b, %esi
100001e85: 4c 89 ef                    	movq	%r13, %rdi
100001e88: e8 b7 90 00 00              	callq	37047 <dyld_stub_binder+0x10000af44>
100001e8d: 4c 89 ef                    	movq	%r13, %rdi
100001e90: e8 b5 90 00 00              	callq	37045 <dyld_stub_binder+0x10000af4a>
100001e95: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100001e99: 83 fe 0a                    	cmpl	$10, %esi
100001e9c: 48 8b 3d 8d a1 00 00        	movq	41357(%rip), %rdi
100001ea3: 0f 85 f7 fe ff ff           	jne	-265 <_main+0x5b0>
100001ea9: 48 8b 3d 80 a1 00 00        	movq	41344(%rip), %rdi
100001eb0: 48 8d 35 d4 99 00 00        	leaq	39380(%rip), %rsi
100001eb7: ba 10 00 00 00              	movl	$16, %edx
100001ebc: e8 ef 1f 00 00              	callq	8175 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001ec1: 48 89 c7                    	movq	%rax, %rdi
100001ec4: be 10 27 00 00              	movl	$10000, %esi
100001ec9: e8 9a 90 00 00              	callq	37018 <dyld_stub_binder+0x10000af68>
100001ece: 48 8d 35 c7 99 00 00        	leaq	39367(%rip), %rsi
100001ed5: ba 10 00 00 00              	movl	$16, %edx
100001eda: 48 89 c7                    	movq	%rax, %rdi
100001edd: e8 ce 1f 00 00              	callq	8142 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001ee2: f3 0f 10 05 32 98 00 00     	movss	38962(%rip), %xmm0
100001eea: 48 89 c7                    	movq	%rax, %rdi
100001eed: e8 70 90 00 00              	callq	36976 <dyld_stub_binder+0x10000af62>
100001ef2: 48 8d 35 33 99 00 00        	leaq	39219(%rip), %rsi
100001ef9: ba 02 00 00 00              	movl	$2, %edx
100001efe: 48 89 c7                    	movq	%rax, %rdi
100001f01: e8 aa 1f 00 00              	callq	8106 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001f06: 49 89 c6                    	movq	%rax, %r14
100001f09: 48 8b 00                    	movq	(%rax), %rax
100001f0c: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100001f10: 4c 01 f6                    	addq	%r14, %rsi
100001f13: 4c 8d 65 c0                 	leaq	-64(%rbp), %r12
100001f17: 4c 89 e7                    	movq	%r12, %rdi
100001f1a: e8 19 90 00 00              	callq	36889 <dyld_stub_binder+0x10000af38>
100001f1f: 48 8b 35 12 a1 00 00        	movq	41234(%rip), %rsi
100001f26: 4c 89 e7                    	movq	%r12, %rdi
100001f29: e8 04 90 00 00              	callq	36868 <dyld_stub_binder+0x10000af32>
100001f2e: 48 8b 08                    	movq	(%rax), %rcx
100001f31: 48 89 c7                    	movq	%rax, %rdi
100001f34: be 0a 00 00 00              	movl	$10, %esi
100001f39: ff 51 38                    	callq	*56(%rcx)
100001f3c: 41 89 c4                    	movl	%eax, %r12d
100001f3f: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100001f43: e8 5c 90 00 00              	callq	36956 <dyld_stub_binder+0x10000afa4>
100001f48: 41 0f be f4                 	movsbl	%r12b, %esi
100001f4c: 4c 89 f7                    	movq	%r14, %rdi
100001f4f: e8 f0 8f 00 00              	callq	36848 <dyld_stub_binder+0x10000af44>
100001f54: 4c 89 f7                    	movq	%r14, %rdi
100001f57: e8 ee 8f 00 00              	callq	36846 <dyld_stub_binder+0x10000af4a>
100001f5c: 48 8b 3d cd a0 00 00        	movq	41165(%rip), %rdi
100001f63: 48 8d 35 43 99 00 00        	leaq	39235(%rip), %rsi
100001f6a: ba 11 00 00 00              	movl	$17, %edx
100001f6f: e8 3c 1f 00 00              	callq	7996 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001f74: 49 89 c6                    	movq	%rax, %r14
100001f77: 4c 8d 25 6a ec 00 00        	leaq	60522(%rip), %r12
100001f7e: 4c 89 e7                    	movq	%r12, %rdi
100001f81: e8 3a 8f 00 00              	callq	36666 <__ZN13NodeAllocator14allocatedNodesEv>
100001f86: 4c 89 f7                    	movq	%r14, %rdi
100001f89: 89 c6                       	movl	%eax, %esi
100001f8b: e8 de 8f 00 00              	callq	36830 <dyld_stub_binder+0x10000af6e>
100001f90: 48 8d 35 05 99 00 00        	leaq	39173(%rip), %rsi
100001f97: ba 10 00 00 00              	movl	$16, %edx
100001f9c: 48 89 c7                    	movq	%rax, %rdi
100001f9f: e8 0c 1f 00 00              	callq	7948 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001fa4: 49 89 c6                    	movq	%rax, %r14
100001fa7: 4c 89 e7                    	movq	%r12, %rdi
100001faa: e8 11 8f 00 00              	callq	36625 <__ZN13NodeAllocator14allocatedNodesEv>
100001faf: 89 c0                       	movl	%eax, %eax
100001fb1: 48 c1 e0 03                 	shlq	$3, %rax
100001fb5: 48 8d 04 80                 	leaq	(%rax,%rax,4), %rax
100001fb9: 0f 57 c0                    	xorps	%xmm0, %xmm0
100001fbc: f3 48 0f 2a c0              	cvtsi2ss	%rax, %xmm0
100001fc1: f3 0f 59 05 57 97 00 00     	mulss	38743(%rip), %xmm0
100001fc9: 4c 89 f7                    	movq	%r14, %rdi
100001fcc: e8 91 8f 00 00              	callq	36753 <dyld_stub_binder+0x10000af62>
100001fd1: 48 8d 35 54 98 00 00        	leaq	38996(%rip), %rsi
100001fd8: ba 02 00 00 00              	movl	$2, %edx
100001fdd: 48 89 c7                    	movq	%rax, %rdi
100001fe0: e8 cb 1e 00 00              	callq	7883 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001fe5: 49 89 c6                    	movq	%rax, %r14
100001fe8: 48 8b 00                    	movq	(%rax), %rax
100001feb: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100001fef: 4c 01 f6                    	addq	%r14, %rsi
100001ff2: 4c 8d 65 c0                 	leaq	-64(%rbp), %r12
100001ff6: 4c 89 e7                    	movq	%r12, %rdi
100001ff9: e8 3a 8f 00 00              	callq	36666 <dyld_stub_binder+0x10000af38>
100001ffe: 48 8b 35 33 a0 00 00        	movq	41011(%rip), %rsi
100002005: 4c 89 e7                    	movq	%r12, %rdi
100002008: e8 25 8f 00 00              	callq	36645 <dyld_stub_binder+0x10000af32>
10000200d: 4c 8b 6d a0                 	movq	-96(%rbp), %r13
100002011: 4d 89 fc                    	movq	%r15, %r12
100002014: 48 8b 08                    	movq	(%rax), %rcx
100002017: 48 89 c7                    	movq	%rax, %rdi
10000201a: be 0a 00 00 00              	movl	$10, %esi
10000201f: ff 51 38                    	callq	*56(%rcx)
100002022: 41 89 c7                    	movl	%eax, %r15d
100002025: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100002029: e8 76 8f 00 00              	callq	36726 <dyld_stub_binder+0x10000afa4>
10000202e: 41 0f be f7                 	movsbl	%r15b, %esi
100002032: 4c 89 f7                    	movq	%r14, %rdi
100002035: e8 0a 8f 00 00              	callq	36618 <dyld_stub_binder+0x10000af44>
10000203a: 4c 89 f7                    	movq	%r14, %rdi
10000203d: e8 08 8f 00 00              	callq	36616 <dyld_stub_binder+0x10000af4a>
100002042: 48 8b 3d e7 9f 00 00        	movq	40935(%rip), %rdi
100002049: 48 8d 35 6f 98 00 00        	leaq	39023(%rip), %rsi
100002050: ba 0f 00 00 00              	movl	$15, %edx
100002055: e8 56 1e 00 00              	callq	7766 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000205a: 49 89 c6                    	movq	%rax, %r14
10000205d: 4c 8d 3d 84 eb 00 00        	leaq	60292(%rip), %r15
100002064: 4c 89 ff                    	movq	%r15, %rdi
100002067: e8 74 8e 00 00              	callq	36468 <__ZN13NodeAllocator12deletedNodesEv>
10000206c: 4c 89 f7                    	movq	%r14, %rdi
10000206f: 89 c6                       	movl	%eax, %esi
100002071: e8 f8 8e 00 00              	callq	36600 <dyld_stub_binder+0x10000af6e>
100002076: 48 8d 35 1f 98 00 00        	leaq	38943(%rip), %rsi
10000207d: ba 10 00 00 00              	movl	$16, %edx
100002082: 48 89 c7                    	movq	%rax, %rdi
100002085: e8 26 1e 00 00              	callq	7718 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000208a: 49 89 c6                    	movq	%rax, %r14
10000208d: 4c 89 ff                    	movq	%r15, %rdi
100002090: e8 4b 8e 00 00              	callq	36427 <__ZN13NodeAllocator12deletedNodesEv>
100002095: 89 c0                       	movl	%eax, %eax
100002097: 48 c1 e0 03                 	shlq	$3, %rax
10000209b: 48 8d 04 80                 	leaq	(%rax,%rax,4), %rax
10000209f: 0f 57 c0                    	xorps	%xmm0, %xmm0
1000020a2: f3 48 0f 2a c0              	cvtsi2ss	%rax, %xmm0
1000020a7: f3 0f 59 05 71 96 00 00     	mulss	38513(%rip), %xmm0
1000020af: 4c 89 f7                    	movq	%r14, %rdi
1000020b2: e8 ab 8e 00 00              	callq	36523 <dyld_stub_binder+0x10000af62>
1000020b7: 48 8d 35 6e 97 00 00        	leaq	38766(%rip), %rsi
1000020be: ba 02 00 00 00              	movl	$2, %edx
1000020c3: 48 89 c7                    	movq	%rax, %rdi
1000020c6: e8 e5 1d 00 00              	callq	7653 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000020cb: 49 89 c6                    	movq	%rax, %r14
1000020ce: 48 8b 00                    	movq	(%rax), %rax
1000020d1: 48 8b 70 e8                 	movq	-24(%rax), %rsi
1000020d5: 4c 01 f6                    	addq	%r14, %rsi
1000020d8: 4c 8d 7d c0                 	leaq	-64(%rbp), %r15
1000020dc: 4c 89 ff                    	movq	%r15, %rdi
1000020df: e8 54 8e 00 00              	callq	36436 <dyld_stub_binder+0x10000af38>
1000020e4: 48 8b 35 4d 9f 00 00        	movq	40781(%rip), %rsi
1000020eb: 4c 89 ff                    	movq	%r15, %rdi
1000020ee: e8 3f 8e 00 00              	callq	36415 <dyld_stub_binder+0x10000af32>
1000020f3: 48 8b 08                    	movq	(%rax), %rcx
1000020f6: 48 89 c7                    	movq	%rax, %rdi
1000020f9: be 0a 00 00 00              	movl	$10, %esi
1000020fe: ff 51 38                    	callq	*56(%rcx)
100002101: 41 89 c7                    	movl	%eax, %r15d
100002104: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100002108: e8 97 8e 00 00              	callq	36503 <dyld_stub_binder+0x10000afa4>
10000210d: 41 0f be f7                 	movsbl	%r15b, %esi
100002111: 4c 89 f7                    	movq	%r14, %rdi
100002114: e8 2b 8e 00 00              	callq	36395 <dyld_stub_binder+0x10000af44>
100002119: 4c 89 f7                    	movq	%r14, %rdi
10000211c: e8 29 8e 00 00              	callq	36393 <dyld_stub_binder+0x10000af4a>
100002121: 48 8b 3d 08 9f 00 00        	movq	40712(%rip), %rdi
100002128: 48 8d 35 a0 97 00 00        	leaq	38816(%rip), %rsi
10000212f: ba 17 00 00 00              	movl	$23, %edx
100002134: e8 77 1d 00 00              	callq	7543 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002139: 49 89 c6                    	movq	%rax, %r14
10000213c: 4c 8d 3d a5 ea 00 00        	leaq	60069(%rip), %r15
100002143: 4c 89 ff                    	movq	%r15, %rdi
100002146: e8 85 8d 00 00              	callq	36229 <__ZN13NodeAllocator17maxAllocatedNodesEv>
10000214b: 4c 89 f7                    	movq	%r14, %rdi
10000214e: 89 c6                       	movl	%eax, %esi
100002150: e8 19 8e 00 00              	callq	36377 <dyld_stub_binder+0x10000af6e>
100002155: 48 8d 35 40 97 00 00        	leaq	38720(%rip), %rsi
10000215c: ba 10 00 00 00              	movl	$16, %edx
100002161: 48 89 c7                    	movq	%rax, %rdi
100002164: e8 47 1d 00 00              	callq	7495 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002169: 49 89 c6                    	movq	%rax, %r14
10000216c: 4c 89 ff                    	movq	%r15, %rdi
10000216f: e8 5c 8d 00 00              	callq	36188 <__ZN13NodeAllocator17maxAllocatedNodesEv>
100002174: 89 c0                       	movl	%eax, %eax
100002176: 48 c1 e0 03                 	shlq	$3, %rax
10000217a: 48 8d 04 80                 	leaq	(%rax,%rax,4), %rax
10000217e: 0f 57 c0                    	xorps	%xmm0, %xmm0
100002181: f3 48 0f 2a c0              	cvtsi2ss	%rax, %xmm0
100002186: f3 0f 59 05 92 95 00 00     	mulss	38290(%rip), %xmm0
10000218e: 4c 89 f7                    	movq	%r14, %rdi
100002191: e8 cc 8d 00 00              	callq	36300 <dyld_stub_binder+0x10000af62>
100002196: 48 8d 35 8f 96 00 00        	leaq	38543(%rip), %rsi
10000219d: ba 02 00 00 00              	movl	$2, %edx
1000021a2: 48 89 c7                    	movq	%rax, %rdi
1000021a5: e8 06 1d 00 00              	callq	7430 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000021aa: 49 89 c6                    	movq	%rax, %r14
1000021ad: 48 8b 00                    	movq	(%rax), %rax
1000021b0: 48 8b 70 e8                 	movq	-24(%rax), %rsi
1000021b4: 4c 01 f6                    	addq	%r14, %rsi
1000021b7: 4c 8d 7d c0                 	leaq	-64(%rbp), %r15
1000021bb: 4c 89 ff                    	movq	%r15, %rdi
1000021be: e8 75 8d 00 00              	callq	36213 <dyld_stub_binder+0x10000af38>
1000021c3: 48 8b 35 6e 9e 00 00        	movq	40558(%rip), %rsi
1000021ca: 4c 89 ff                    	movq	%r15, %rdi
1000021cd: e8 60 8d 00 00              	callq	36192 <dyld_stub_binder+0x10000af32>
1000021d2: 48 8b 08                    	movq	(%rax), %rcx
1000021d5: 48 89 c7                    	movq	%rax, %rdi
1000021d8: be 0a 00 00 00              	movl	$10, %esi
1000021dd: ff 51 38                    	callq	*56(%rcx)
1000021e0: 41 89 c7                    	movl	%eax, %r15d
1000021e3: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
1000021e7: e8 b8 8d 00 00              	callq	36280 <dyld_stub_binder+0x10000afa4>
1000021ec: 41 0f be f7                 	movsbl	%r15b, %esi
1000021f0: 4c 89 f7                    	movq	%r14, %rdi
1000021f3: e8 4c 8d 00 00              	callq	36172 <dyld_stub_binder+0x10000af44>
1000021f8: 4c 89 f7                    	movq	%r14, %rdi
1000021fb: e8 4a 8d 00 00              	callq	36170 <dyld_stub_binder+0x10000af4a>
100002200: 48 8b 3d 29 9e 00 00        	movq	40489(%rip), %rdi
100002207: 48 8d 35 d9 96 00 00        	leaq	38617(%rip), %rsi
10000220e: ba 19 00 00 00              	movl	$25, %edx
100002213: e8 98 1c 00 00              	callq	7320 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002218: be 28 00 00 00              	movl	$40, %esi
10000221d: 48 89 c7                    	movq	%rax, %rdi
100002220: e8 4f 8d 00 00              	callq	36175 <dyld_stub_binder+0x10000af74>
100002225: 48 8d 35 d5 96 00 00        	leaq	38613(%rip), %rsi
10000222c: ba 01 00 00 00              	movl	$1, %edx
100002231: 48 89 c7                    	movq	%rax, %rdi
100002234: e8 77 1c 00 00              	callq	7287 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002239: 49 89 c6                    	movq	%rax, %r14
10000223c: 48 8b 00                    	movq	(%rax), %rax
10000223f: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100002243: 4c 01 f6                    	addq	%r14, %rsi
100002246: 4c 8d 7d c0                 	leaq	-64(%rbp), %r15
10000224a: 4c 89 ff                    	movq	%r15, %rdi
10000224d: e8 e6 8c 00 00              	callq	36070 <dyld_stub_binder+0x10000af38>
100002252: 48 8b 35 df 9d 00 00        	movq	40415(%rip), %rsi
100002259: 4c 89 ff                    	movq	%r15, %rdi
10000225c: e8 d1 8c 00 00              	callq	36049 <dyld_stub_binder+0x10000af32>
100002261: 48 8b 08                    	movq	(%rax), %rcx
100002264: 48 89 c7                    	movq	%rax, %rdi
100002267: be 0a 00 00 00              	movl	$10, %esi
10000226c: ff 51 38                    	callq	*56(%rcx)
10000226f: 41 89 c7                    	movl	%eax, %r15d
100002272: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100002276: e8 29 8d 00 00              	callq	36137 <dyld_stub_binder+0x10000afa4>
10000227b: 41 0f be f7                 	movsbl	%r15b, %esi
10000227f: 4c 89 f7                    	movq	%r14, %rdi
100002282: e8 bd 8c 00 00              	callq	36029 <dyld_stub_binder+0x10000af44>
100002287: 4c 89 f7                    	movq	%r14, %rdi
10000228a: e8 bb 8c 00 00              	callq	36027 <dyld_stub_binder+0x10000af4a>
10000228f: 48 8b 3d 9a 9d 00 00        	movq	40346(%rip), %rdi
100002296: 48 8d 35 66 96 00 00        	leaq	38502(%rip), %rsi
10000229d: ba 0f 00 00 00              	movl	$15, %edx
1000022a2: e8 09 1c 00 00              	callq	7177 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000022a7: 48 89 c7                    	movq	%rax, %rdi
1000022aa: be 40 00 00 00              	movl	$64, %esi
1000022af: e8 b4 8c 00 00              	callq	36020 <dyld_stub_binder+0x10000af68>
1000022b4: 48 8d 35 58 96 00 00        	leaq	38488(%rip), %rsi
1000022bb: ba 0b 00 00 00              	movl	$11, %edx
1000022c0: 48 89 c7                    	movq	%rax, %rdi
1000022c3: e8 e8 1b 00 00              	callq	7144 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000022c8: 49 89 c6                    	movq	%rax, %r14
1000022cb: 48 8b 00                    	movq	(%rax), %rax
1000022ce: 48 8b 70 e8                 	movq	-24(%rax), %rsi
1000022d2: 4c 01 f6                    	addq	%r14, %rsi
1000022d5: 4c 8d 7d c0                 	leaq	-64(%rbp), %r15
1000022d9: 4c 89 ff                    	movq	%r15, %rdi
1000022dc: e8 57 8c 00 00              	callq	35927 <dyld_stub_binder+0x10000af38>
1000022e1: 48 8b 35 50 9d 00 00        	movq	40272(%rip), %rsi
1000022e8: 4c 89 ff                    	movq	%r15, %rdi
1000022eb: e8 42 8c 00 00              	callq	35906 <dyld_stub_binder+0x10000af32>
1000022f0: 48 8b 08                    	movq	(%rax), %rcx
1000022f3: 48 89 c7                    	movq	%rax, %rdi
1000022f6: be 0a 00 00 00              	movl	$10, %esi
1000022fb: ff 51 38                    	callq	*56(%rcx)
1000022fe: 41 89 c7                    	movl	%eax, %r15d
100002301: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100002305: e8 9a 8c 00 00              	callq	35994 <dyld_stub_binder+0x10000afa4>
10000230a: 41 0f be f7                 	movsbl	%r15b, %esi
10000230e: 4c 89 f7                    	movq	%r14, %rdi
100002311: e8 2e 8c 00 00              	callq	35886 <dyld_stub_binder+0x10000af44>
100002316: 4c 89 f7                    	movq	%r14, %rdi
100002319: e8 2c 8c 00 00              	callq	35884 <dyld_stub_binder+0x10000af4a>
10000231e: 48 8b 3d 0b 9d 00 00        	movq	40203(%rip), %rdi
100002325: 48 8d 35 f3 95 00 00        	leaq	38387(%rip), %rsi
10000232c: ba 19 00 00 00              	movl	$25, %edx
100002331: e8 7a 1b 00 00              	callq	7034 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002336: 48 8d 0d a3 42 08 00        	leaq	541347(%rip), %rcx
10000233d: 8b 31                       	movl	(%rcx), %esi
10000233f: 48 89 c7                    	movq	%rax, %rdi
100002342: e8 27 8c 00 00              	callq	35879 <dyld_stub_binder+0x10000af6e>
100002347: 48 8d 35 eb 95 00 00        	leaq	38379(%rip), %rsi
10000234e: ba 17 00 00 00              	movl	$23, %edx
100002353: 48 89 c7                    	movq	%rax, %rdi
100002356: e8 55 1b 00 00              	callq	6997 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000235b: 48 8d 35 82 42 08 00        	leaq	541314(%rip), %rsi
100002362: 48 89 c7                    	movq	%rax, %rdi
100002365: e8 f6 36 00 00              	callq	14070 <__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK3Rec>
10000236a: 49 89 c6                    	movq	%rax, %r14
10000236d: 48 8b 00                    	movq	(%rax), %rax
100002370: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100002374: 4c 01 f6                    	addq	%r14, %rsi
100002377: 4c 8d 7d c0                 	leaq	-64(%rbp), %r15
10000237b: 4c 89 ff                    	movq	%r15, %rdi
10000237e: e8 b5 8b 00 00              	callq	35765 <dyld_stub_binder+0x10000af38>
100002383: 48 8b 35 ae 9c 00 00        	movq	40110(%rip), %rsi
10000238a: 4c 89 ff                    	movq	%r15, %rdi
10000238d: e8 a0 8b 00 00              	callq	35744 <dyld_stub_binder+0x10000af32>
100002392: 48 8b 08                    	movq	(%rax), %rcx
100002395: 48 89 c7                    	movq	%rax, %rdi
100002398: be 0a 00 00 00              	movl	$10, %esi
10000239d: ff 51 38                    	callq	*56(%rcx)
1000023a0: 41 89 c7                    	movl	%eax, %r15d
1000023a3: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
1000023a7: e8 f8 8b 00 00              	callq	35832 <dyld_stub_binder+0x10000afa4>
1000023ac: 41 0f be f7                 	movsbl	%r15b, %esi
1000023b0: 4c 89 f7                    	movq	%r14, %rdi
1000023b3: e8 8c 8b 00 00              	callq	35724 <dyld_stub_binder+0x10000af44>
1000023b8: 4c 89 f7                    	movq	%r14, %rdi
1000023bb: e8 8a 8b 00 00              	callq	35722 <dyld_stub_binder+0x10000af4a>
1000023c0: 48 8b 3d 69 9c 00 00        	movq	40041(%rip), %rdi
1000023c7: 48 8d 35 83 95 00 00        	leaq	38275(%rip), %rsi
1000023ce: ba 13 00 00 00              	movl	$19, %edx
1000023d3: e8 d8 1a 00 00              	callq	6872 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000023d8: 48 89 c7                    	movq	%rax, %rdi
1000023db: 89 de                       	movl	%ebx, %esi
1000023dd: e8 8c 8b 00 00              	callq	35724 <dyld_stub_binder+0x10000af6e>
1000023e2: 48 89 c3                    	movq	%rax, %rbx
1000023e5: 48 8b 00                    	movq	(%rax), %rax
1000023e8: 48 8b 70 e8                 	movq	-24(%rax), %rsi
1000023ec: 48 01 de                    	addq	%rbx, %rsi
1000023ef: 4c 8d 75 c0                 	leaq	-64(%rbp), %r14
1000023f3: 4c 89 f7                    	movq	%r14, %rdi
1000023f6: e8 3d 8b 00 00              	callq	35645 <dyld_stub_binder+0x10000af38>
1000023fb: 48 8b 35 36 9c 00 00        	movq	39990(%rip), %rsi
100002402: 4c 89 f7                    	movq	%r14, %rdi
100002405: e8 28 8b 00 00              	callq	35624 <dyld_stub_binder+0x10000af32>
10000240a: 48 8b 08                    	movq	(%rax), %rcx
10000240d: 48 89 c7                    	movq	%rax, %rdi
100002410: be 0a 00 00 00              	movl	$10, %esi
100002415: ff 51 38                    	callq	*56(%rcx)
100002418: 41 89 c6                    	movl	%eax, %r14d
10000241b: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
10000241f: e8 80 8b 00 00              	callq	35712 <dyld_stub_binder+0x10000afa4>
100002424: 41 0f be f6                 	movsbl	%r14b, %esi
100002428: 48 89 df                    	movq	%rbx, %rdi
10000242b: e8 14 8b 00 00              	callq	35604 <dyld_stub_binder+0x10000af44>
100002430: 48 89 df                    	movq	%rbx, %rdi
100002433: e8 12 8b 00 00              	callq	35602 <dyld_stub_binder+0x10000af4a>
100002438: 48 8b 3d f1 9b 00 00        	movq	39921(%rip), %rdi
10000243f: 48 8d 35 1f 95 00 00        	leaq	38175(%rip), %rsi
100002446: ba 1a 00 00 00              	movl	$26, %edx
10000244b: e8 60 1a 00 00              	callq	6752 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002450: 4d 85 ed                    	testq	%r13, %r13
100002453: 4c 8b 7d a8                 	movq	-88(%rbp), %r15
100002457: 78 07                       	js	7 <_main+0xc70>
100002459: f3 49 0f 2a c5              	cvtsi2ss	%r13, %xmm0
10000245e: eb 18                       	jmp	24 <_main+0xc88>
100002460: 4c 89 e9                    	movq	%r13, %rcx
100002463: 48 d1 e9                    	shrq	%rcx
100002466: 44 89 ea                    	movl	%r13d, %edx
100002469: 83 e2 01                    	andl	$1, %edx
10000246c: 48 09 ca                    	orq	%rcx, %rdx
10000246f: f3 48 0f 2a c2              	cvtsi2ss	%rdx, %xmm0
100002474: f3 0f 58 c0                 	addss	%xmm0, %xmm0
100002478: f3 0f 5e 05 a4 92 00 00     	divss	37540(%rip), %xmm0
100002480: 48 89 c7                    	movq	%rax, %rdi
100002483: e8 da 8a 00 00              	callq	35546 <dyld_stub_binder+0x10000af62>
100002488: 48 8d 35 f1 94 00 00        	leaq	38129(%rip), %rsi
10000248f: ba 01 00 00 00              	movl	$1, %edx
100002494: 48 89 c7                    	movq	%rax, %rdi
100002497: e8 14 1a 00 00              	callq	6676 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000249c: 48 89 c3                    	movq	%rax, %rbx
10000249f: 48 8b 00                    	movq	(%rax), %rax
1000024a2: 48 8b 70 e8                 	movq	-24(%rax), %rsi
1000024a6: 48 01 de                    	addq	%rbx, %rsi
1000024a9: 4c 8d 75 c0                 	leaq	-64(%rbp), %r14
1000024ad: 4c 89 f7                    	movq	%r14, %rdi
1000024b0: e8 83 8a 00 00              	callq	35459 <dyld_stub_binder+0x10000af38>
1000024b5: 48 8b 35 7c 9b 00 00        	movq	39804(%rip), %rsi
1000024bc: 4c 89 f7                    	movq	%r14, %rdi
1000024bf: e8 6e 8a 00 00              	callq	35438 <dyld_stub_binder+0x10000af32>
1000024c4: 48 8b 08                    	movq	(%rax), %rcx
1000024c7: 48 89 c7                    	movq	%rax, %rdi
1000024ca: be 0a 00 00 00              	movl	$10, %esi
1000024cf: ff 51 38                    	callq	*56(%rcx)
1000024d2: 41 89 c6                    	movl	%eax, %r14d
1000024d5: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
1000024d9: e8 c6 8a 00 00              	callq	35526 <dyld_stub_binder+0x10000afa4>
1000024de: 41 0f be f6                 	movsbl	%r14b, %esi
1000024e2: 48 89 df                    	movq	%rbx, %rdi
1000024e5: e8 5a 8a 00 00              	callq	35418 <dyld_stub_binder+0x10000af44>
1000024ea: 48 89 df                    	movq	%rbx, %rdi
1000024ed: e8 58 8a 00 00              	callq	35416 <dyld_stub_binder+0x10000af4a>
1000024f2: 48 8b 3d 37 9b 00 00        	movq	39735(%rip), %rdi
1000024f9: 48 8d 35 82 94 00 00        	leaq	38018(%rip), %rsi
100002500: ba 1d 00 00 00              	movl	$29, %edx
100002505: e8 a6 19 00 00              	callq	6566 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000250a: 4d 85 e4                    	testq	%r12, %r12
10000250d: 78 0a                       	js	10 <_main+0xd29>
10000250f: 0f 57 c0                    	xorps	%xmm0, %xmm0
100002512: f3 49 0f 2a c4              	cvtsi2ss	%r12, %xmm0
100002517: eb 1b                       	jmp	27 <_main+0xd44>
100002519: 4c 89 e1                    	movq	%r12, %rcx
10000251c: 48 d1 e9                    	shrq	%rcx
10000251f: 44 89 e2                    	movl	%r12d, %edx
100002522: 83 e2 01                    	andl	$1, %edx
100002525: 48 09 ca                    	orq	%rcx, %rdx
100002528: 0f 57 c0                    	xorps	%xmm0, %xmm0
10000252b: f3 48 0f 2a c2              	cvtsi2ss	%rdx, %xmm0
100002530: f3 0f 58 c0                 	addss	%xmm0, %xmm0
100002534: f3 0f 5e 05 e8 91 00 00     	divss	37352(%rip), %xmm0
10000253c: f3 0f 5e 05 c4 91 00 00     	divss	37316(%rip), %xmm0
100002544: 48 89 c7                    	movq	%rax, %rdi
100002547: e8 16 8a 00 00              	callq	35350 <dyld_stub_binder+0x10000af62>
10000254c: 48 8d 35 2d 94 00 00        	leaq	37933(%rip), %rsi
100002553: ba 01 00 00 00              	movl	$1, %edx
100002558: 48 89 c7                    	movq	%rax, %rdi
10000255b: e8 50 19 00 00              	callq	6480 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002560: 48 89 c3                    	movq	%rax, %rbx
100002563: 48 8b 00                    	movq	(%rax), %rax
100002566: 48 8b 70 e8                 	movq	-24(%rax), %rsi
10000256a: 48 01 de                    	addq	%rbx, %rsi
10000256d: 4c 8d 75 c0                 	leaq	-64(%rbp), %r14
100002571: 4c 89 f7                    	movq	%r14, %rdi
100002574: e8 bf 89 00 00              	callq	35263 <dyld_stub_binder+0x10000af38>
100002579: 48 8b 35 b8 9a 00 00        	movq	39608(%rip), %rsi
100002580: 4c 89 f7                    	movq	%r14, %rdi
100002583: e8 aa 89 00 00              	callq	35242 <dyld_stub_binder+0x10000af32>
100002588: 48 8b 08                    	movq	(%rax), %rcx
10000258b: 48 89 c7                    	movq	%rax, %rdi
10000258e: be 0a 00 00 00              	movl	$10, %esi
100002593: ff 51 38                    	callq	*56(%rcx)
100002596: 41 89 c6                    	movl	%eax, %r14d
100002599: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
10000259d: e8 02 8a 00 00              	callq	35330 <dyld_stub_binder+0x10000afa4>
1000025a2: 41 0f be f6                 	movsbl	%r14b, %esi
1000025a6: 48 89 df                    	movq	%rbx, %rdi
1000025a9: e8 96 89 00 00              	callq	35222 <dyld_stub_binder+0x10000af44>
1000025ae: 48 89 df                    	movq	%rbx, %rdi
1000025b1: e8 94 89 00 00              	callq	35220 <dyld_stub_binder+0x10000af4a>
1000025b6: 48 8b 3d 73 9a 00 00        	movq	39539(%rip), %rdi
1000025bd: 48 8d 35 dc 93 00 00        	leaq	37852(%rip), %rsi
1000025c4: ba 1f 00 00 00              	movl	$31, %edx
1000025c9: e8 e2 18 00 00              	callq	6370 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000025ce: 4d 85 ff                    	testq	%r15, %r15
1000025d1: 78 0a                       	js	10 <_main+0xded>
1000025d3: 0f 57 c0                    	xorps	%xmm0, %xmm0
1000025d6: f3 49 0f 2a c7              	cvtsi2ss	%r15, %xmm0
1000025db: eb 1b                       	jmp	27 <_main+0xe08>
1000025dd: 4c 89 f9                    	movq	%r15, %rcx
1000025e0: 48 d1 e9                    	shrq	%rcx
1000025e3: 44 89 fa                    	movl	%r15d, %edx
1000025e6: 83 e2 01                    	andl	$1, %edx
1000025e9: 48 09 ca                    	orq	%rcx, %rdx
1000025ec: 0f 57 c0                    	xorps	%xmm0, %xmm0
1000025ef: f3 48 0f 2a c2              	cvtsi2ss	%rdx, %xmm0
1000025f4: f3 0f 58 c0                 	addss	%xmm0, %xmm0
1000025f8: f3 0f 5e 05 24 91 00 00     	divss	37156(%rip), %xmm0
100002600: 48 89 c7                    	movq	%rax, %rdi
100002603: e8 5a 89 00 00              	callq	35162 <dyld_stub_binder+0x10000af62>
100002608: 48 8d 35 71 93 00 00        	leaq	37745(%rip), %rsi
10000260f: ba 01 00 00 00              	movl	$1, %edx
100002614: 48 89 c7                    	movq	%rax, %rdi
100002617: e8 94 18 00 00              	callq	6292 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000261c: 48 89 c3                    	movq	%rax, %rbx
10000261f: 48 8b 00                    	movq	(%rax), %rax
100002622: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100002626: 48 01 de                    	addq	%rbx, %rsi
100002629: 4c 8d 75 c0                 	leaq	-64(%rbp), %r14
10000262d: 4c 89 f7                    	movq	%r14, %rdi
100002630: e8 03 89 00 00              	callq	35075 <dyld_stub_binder+0x10000af38>
100002635: 48 8b 35 fc 99 00 00        	movq	39420(%rip), %rsi
10000263c: 4c 89 f7                    	movq	%r14, %rdi
10000263f: e8 ee 88 00 00              	callq	35054 <dyld_stub_binder+0x10000af32>
100002644: 48 8b 08                    	movq	(%rax), %rcx
100002647: 48 89 c7                    	movq	%rax, %rdi
10000264a: be 0a 00 00 00              	movl	$10, %esi
10000264f: ff 51 38                    	callq	*56(%rcx)
100002652: 41 89 c6                    	movl	%eax, %r14d
100002655: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100002659: e8 46 89 00 00              	callq	35142 <dyld_stub_binder+0x10000afa4>
10000265e: 41 0f be f6                 	movsbl	%r14b, %esi
100002662: 48 89 df                    	movq	%rbx, %rdi
100002665: e8 da 88 00 00              	callq	35034 <dyld_stub_binder+0x10000af44>
10000266a: 48 89 df                    	movq	%rbx, %rdi
10000266d: e8 d8 88 00 00              	callq	35032 <dyld_stub_binder+0x10000af4a>
100002672: 48 8b 3d b7 99 00 00        	movq	39351(%rip), %rdi
100002679: 48 8d 35 40 93 00 00        	leaq	37696(%rip), %rsi
100002680: ba 13 00 00 00              	movl	$19, %edx
100002685: e8 26 18 00 00              	callq	6182 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000268a: 48 89 c7                    	movq	%rax, %rdi
10000268d: be 0a 00 00 00              	movl	$10, %esi
100002692: e8 d1 88 00 00              	callq	35025 <dyld_stub_binder+0x10000af68>
100002697: 48 8d 35 36 93 00 00        	leaq	37686(%rip), %rsi
10000269e: ba 14 00 00 00              	movl	$20, %edx
1000026a3: 48 89 c7                    	movq	%rax, %rdi
1000026a6: e8 05 18 00 00              	callq	6149 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000026ab: 4d 01 fd                    	addq	%r15, %r13
1000026ae: 4d 01 e5                    	addq	%r12, %r13
1000026b1: 78 0a                       	js	10 <_main+0xecd>
1000026b3: 0f 57 c0                    	xorps	%xmm0, %xmm0
1000026b6: f3 49 0f 2a c5              	cvtsi2ss	%r13, %xmm0
1000026bb: eb 19                       	jmp	25 <_main+0xee6>
1000026bd: 4c 89 e9                    	movq	%r13, %rcx
1000026c0: 48 d1 e9                    	shrq	%rcx
1000026c3: 41 83 e5 01                 	andl	$1, %r13d
1000026c7: 49 09 cd                    	orq	%rcx, %r13
1000026ca: 0f 57 c0                    	xorps	%xmm0, %xmm0
1000026cd: f3 49 0f 2a c5              	cvtsi2ss	%r13, %xmm0
1000026d2: f3 0f 58 c0                 	addss	%xmm0, %xmm0
1000026d6: f3 0f 5e 05 46 90 00 00     	divss	36934(%rip), %xmm0
1000026de: 48 89 c7                    	movq	%rax, %rdi
1000026e1: e8 7c 88 00 00              	callq	34940 <dyld_stub_binder+0x10000af62>
1000026e6: 48 8d 35 93 92 00 00        	leaq	37523(%rip), %rsi
1000026ed: ba 01 00 00 00              	movl	$1, %edx
1000026f2: 48 89 c7                    	movq	%rax, %rdi
1000026f5: e8 b6 17 00 00              	callq	6070 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000026fa: 48 89 c3                    	movq	%rax, %rbx
1000026fd: 48 8b 00                    	movq	(%rax), %rax
100002700: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100002704: 48 01 de                    	addq	%rbx, %rsi
100002707: 4c 8d 75 c0                 	leaq	-64(%rbp), %r14
10000270b: 4c 89 f7                    	movq	%r14, %rdi
10000270e: e8 25 88 00 00              	callq	34853 <dyld_stub_binder+0x10000af38>
100002713: 48 8b 35 1e 99 00 00        	movq	39198(%rip), %rsi
10000271a: 4c 89 f7                    	movq	%r14, %rdi
10000271d: e8 10 88 00 00              	callq	34832 <dyld_stub_binder+0x10000af32>
100002722: 48 8b 08                    	movq	(%rax), %rcx
100002725: 48 89 c7                    	movq	%rax, %rdi
100002728: be 0a 00 00 00              	movl	$10, %esi
10000272d: ff 51 38                    	callq	*56(%rcx)
100002730: 41 89 c6                    	movl	%eax, %r14d
100002733: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100002737: e8 68 88 00 00              	callq	34920 <dyld_stub_binder+0x10000afa4>
10000273c: 41 0f be f6                 	movsbl	%r14b, %esi
100002740: 48 89 df                    	movq	%rbx, %rdi
100002743: e8 fc 87 00 00              	callq	34812 <dyld_stub_binder+0x10000af44>
100002748: 48 89 df                    	movq	%rbx, %rdi
10000274b: e8 fa 87 00 00              	callq	34810 <dyld_stub_binder+0x10000af4a>
100002750: 48 8b 3d d9 98 00 00        	movq	39129(%rip), %rdi
100002757: 48 8d 35 8b 92 00 00        	leaq	37515(%rip), %rsi
10000275e: ba 20 00 00 00              	movl	$32, %edx
100002763: e8 48 17 00 00              	callq	5960 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002768: 4c 8d 3d 39 3e 08 00        	leaq	540217(%rip), %r15
10000276f: 49 8b 77 08                 	movq	8(%r15), %rsi
100002773: 49 2b 37                    	subq	(%r15), %rsi
100002776: 48 c1 fe 08                 	sarq	$8, %rsi
10000277a: 48 89 c7                    	movq	%rax, %rdi
10000277d: e8 f2 87 00 00              	callq	34802 <dyld_stub_binder+0x10000af74>
100002782: 48 89 c3                    	movq	%rax, %rbx
100002785: 48 8b 00                    	movq	(%rax), %rax
100002788: 48 8b 70 e8                 	movq	-24(%rax), %rsi
10000278c: 48 01 de                    	addq	%rbx, %rsi
10000278f: 4c 8d 75 c0                 	leaq	-64(%rbp), %r14
100002793: 4c 89 f7                    	movq	%r14, %rdi
100002796: e8 9d 87 00 00              	callq	34717 <dyld_stub_binder+0x10000af38>
10000279b: 48 8b 35 96 98 00 00        	movq	39062(%rip), %rsi
1000027a2: 4c 89 f7                    	movq	%r14, %rdi
1000027a5: e8 88 87 00 00              	callq	34696 <dyld_stub_binder+0x10000af32>
1000027aa: 48 8b 08                    	movq	(%rax), %rcx
1000027ad: 48 89 c7                    	movq	%rax, %rdi
1000027b0: be 0a 00 00 00              	movl	$10, %esi
1000027b5: ff 51 38                    	callq	*56(%rcx)
1000027b8: 41 89 c6                    	movl	%eax, %r14d
1000027bb: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
1000027bf: e8 e0 87 00 00              	callq	34784 <dyld_stub_binder+0x10000afa4>
1000027c4: 41 0f be f6                 	movsbl	%r14b, %esi
1000027c8: 48 89 df                    	movq	%rbx, %rdi
1000027cb: e8 74 87 00 00              	callq	34676 <dyld_stub_binder+0x10000af44>
1000027d0: 48 89 df                    	movq	%rbx, %rdi
1000027d3: e8 72 87 00 00              	callq	34674 <dyld_stub_binder+0x10000af4a>
1000027d8: 48 8b 3d 51 98 00 00        	movq	38993(%rip), %rdi
1000027df: 48 8d 35 24 92 00 00        	leaq	37412(%rip), %rsi
1000027e6: ba 1e 00 00 00              	movl	$30, %edx
1000027eb: e8 c0 16 00 00              	callq	5824 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000027f0: 41 8b 77 30                 	movl	48(%r15), %esi
1000027f4: 48 89 c7                    	movq	%rax, %rdi
1000027f7: e8 72 87 00 00              	callq	34674 <dyld_stub_binder+0x10000af6e>
1000027fc: 48 8d 35 26 92 00 00        	leaq	37414(%rip), %rsi
100002803: ba 09 00 00 00              	movl	$9, %edx
100002808: 48 89 c7                    	movq	%rax, %rdi
10000280b: e8 a0 16 00 00              	callq	5792 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002810: 41 8b 4f 30                 	movl	48(%r15), %ecx
100002814: 48 c1 e1 08                 	shlq	$8, %rcx
100002818: f3 48 0f 2a c1              	cvtsi2ss	%rcx, %xmm0
10000281d: f3 0f 59 05 fb 8e 00 00     	mulss	36603(%rip), %xmm0
100002825: 48 89 c7                    	movq	%rax, %rdi
100002828: e8 35 87 00 00              	callq	34613 <dyld_stub_binder+0x10000af62>
10000282d: 48 89 c3                    	movq	%rax, %rbx
100002830: 48 8b 00                    	movq	(%rax), %rax
100002833: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100002837: 48 01 de                    	addq	%rbx, %rsi
10000283a: 4c 8d 75 c0                 	leaq	-64(%rbp), %r14
10000283e: 4c 89 f7                    	movq	%r14, %rdi
100002841: e8 f2 86 00 00              	callq	34546 <dyld_stub_binder+0x10000af38>
100002846: 48 8b 35 eb 97 00 00        	movq	38891(%rip), %rsi
10000284d: 4c 89 f7                    	movq	%r14, %rdi
100002850: e8 dd 86 00 00              	callq	34525 <dyld_stub_binder+0x10000af32>
100002855: 48 8b 08                    	movq	(%rax), %rcx
100002858: 48 89 c7                    	movq	%rax, %rdi
10000285b: be 0a 00 00 00              	movl	$10, %esi
100002860: ff 51 38                    	callq	*56(%rcx)
100002863: 41 89 c6                    	movl	%eax, %r14d
100002866: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
10000286a: e8 35 87 00 00              	callq	34613 <dyld_stub_binder+0x10000afa4>
10000286f: 41 0f be f6                 	movsbl	%r14b, %esi
100002873: 48 89 df                    	movq	%rbx, %rdi
100002876: e8 c9 86 00 00              	callq	34505 <dyld_stub_binder+0x10000af44>
10000287b: 48 89 df                    	movq	%rbx, %rdi
10000287e: e8 c7 86 00 00              	callq	34503 <dyld_stub_binder+0x10000af4a>
100002883: 48 8b 3d a6 97 00 00        	movq	38822(%rip), %rdi
10000288a: 48 8d 35 a2 91 00 00        	leaq	37282(%rip), %rsi
100002891: ba 20 00 00 00              	movl	$32, %edx
100002896: e8 15 16 00 00              	callq	5653 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000289b: 49 8b 4f 08                 	movq	8(%r15), %rcx
10000289f: 49 2b 0f                    	subq	(%r15), %rcx
1000028a2: 78 0a                       	js	10 <_main+0x10be>
1000028a4: 0f 57 c0                    	xorps	%xmm0, %xmm0
1000028a7: f3 48 0f 2a c1              	cvtsi2ss	%rcx, %xmm0
1000028ac: eb 18                       	jmp	24 <_main+0x10d6>
1000028ae: 48 89 ca                    	movq	%rcx, %rdx
1000028b1: 48 d1 ea                    	shrq	%rdx
1000028b4: 83 e1 01                    	andl	$1, %ecx
1000028b7: 48 09 d1                    	orq	%rdx, %rcx
1000028ba: 0f 57 c0                    	xorps	%xmm0, %xmm0
1000028bd: f3 48 0f 2a c1              	cvtsi2ss	%rcx, %xmm0
1000028c2: f3 0f 58 c0                 	addss	%xmm0, %xmm0
1000028c6: f3 0f 59 05 52 8e 00 00     	mulss	36434(%rip), %xmm0
1000028ce: 48 89 c7                    	movq	%rax, %rdi
1000028d1: e8 8c 86 00 00              	callq	34444 <dyld_stub_binder+0x10000af62>
1000028d6: 48 89 c3                    	movq	%rax, %rbx
1000028d9: 48 8b 00                    	movq	(%rax), %rax
1000028dc: 48 8b 70 e8                 	movq	-24(%rax), %rsi
1000028e0: 48 01 de                    	addq	%rbx, %rsi
1000028e3: 4c 8d 75 c0                 	leaq	-64(%rbp), %r14
1000028e7: 4c 89 f7                    	movq	%r14, %rdi
1000028ea: e8 49 86 00 00              	callq	34377 <dyld_stub_binder+0x10000af38>
1000028ef: 48 8b 35 42 97 00 00        	movq	38722(%rip), %rsi
1000028f6: 4c 89 f7                    	movq	%r14, %rdi
1000028f9: e8 34 86 00 00              	callq	34356 <dyld_stub_binder+0x10000af32>
1000028fe: 48 8b 08                    	movq	(%rax), %rcx
100002901: 48 89 c7                    	movq	%rax, %rdi
100002904: be 0a 00 00 00              	movl	$10, %esi
100002909: ff 51 38                    	callq	*56(%rcx)
10000290c: 41 89 c6                    	movl	%eax, %r14d
10000290f: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100002913: e8 8c 86 00 00              	callq	34444 <dyld_stub_binder+0x10000afa4>
100002918: 41 0f be f6                 	movsbl	%r14b, %esi
10000291c: 48 89 df                    	movq	%rbx, %rdi
10000291f: e8 20 86 00 00              	callq	34336 <dyld_stub_binder+0x10000af44>
100002924: 48 89 df                    	movq	%rbx, %rdi
100002927: e8 1e 86 00 00              	callq	34334 <dyld_stub_binder+0x10000af4a>
10000292c: 48 8b 3d fd 96 00 00        	movq	38653(%rip), %rdi
100002933: 48 8d 35 1a 91 00 00        	leaq	37146(%rip), %rsi
10000293a: ba 07 00 00 00              	movl	$7, %edx
10000293f: e8 6c 15 00 00              	callq	5484 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002944: 48 8d 0d b5 3c 08 00        	leaq	539829(%rip), %rcx
10000294b: 48 8b 09                    	movq	(%rcx), %rcx
10000294e: 48 85 c9                    	testq	%rcx, %rcx
100002951: 78 0a                       	js	10 <_main+0x116d>
100002953: 0f 57 c0                    	xorps	%xmm0, %xmm0
100002956: f3 48 0f 2a c1              	cvtsi2ss	%rcx, %xmm0
10000295b: eb 18                       	jmp	24 <_main+0x1185>
10000295d: 48 89 ca                    	movq	%rcx, %rdx
100002960: 48 d1 ea                    	shrq	%rdx
100002963: 83 e1 01                    	andl	$1, %ecx
100002966: 48 09 d1                    	orq	%rdx, %rcx
100002969: 0f 57 c0                    	xorps	%xmm0, %xmm0
10000296c: f3 48 0f 2a c1              	cvtsi2ss	%rcx, %xmm0
100002971: f3 0f 58 c0                 	addss	%xmm0, %xmm0
100002975: f3 0f 5e 05 a7 8d 00 00     	divss	36263(%rip), %xmm0
10000297d: 48 89 c7                    	movq	%rax, %rdi
100002980: e8 dd 85 00 00              	callq	34269 <dyld_stub_binder+0x10000af62>
100002985: 48 8d 35 f4 8f 00 00        	leaq	36852(%rip), %rsi
10000298c: ba 01 00 00 00              	movl	$1, %edx
100002991: 48 89 c7                    	movq	%rax, %rdi
100002994: e8 17 15 00 00              	callq	5399 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002999: 48 89 c3                    	movq	%rax, %rbx
10000299c: 48 8b 00                    	movq	(%rax), %rax
10000299f: 48 8b 70 e8                 	movq	-24(%rax), %rsi
1000029a3: 48 01 de                    	addq	%rbx, %rsi
1000029a6: 4c 8d 75 c0                 	leaq	-64(%rbp), %r14
1000029aa: 4c 89 f7                    	movq	%r14, %rdi
1000029ad: e8 86 85 00 00              	callq	34182 <dyld_stub_binder+0x10000af38>
1000029b2: 48 8b 35 7f 96 00 00        	movq	38527(%rip), %rsi
1000029b9: 4c 89 f7                    	movq	%r14, %rdi
1000029bc: e8 71 85 00 00              	callq	34161 <dyld_stub_binder+0x10000af32>
1000029c1: 48 8b 08                    	movq	(%rax), %rcx
1000029c4: 48 89 c7                    	movq	%rax, %rdi
1000029c7: be 0a 00 00 00              	movl	$10, %esi
1000029cc: ff 51 38                    	callq	*56(%rcx)
1000029cf: 41 89 c6                    	movl	%eax, %r14d
1000029d2: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
1000029d6: e8 c9 85 00 00              	callq	34249 <dyld_stub_binder+0x10000afa4>
1000029db: 41 0f be f6                 	movsbl	%r14b, %esi
1000029df: 48 89 df                    	movq	%rbx, %rdi
1000029e2: e8 5d 85 00 00              	callq	34141 <dyld_stub_binder+0x10000af44>
1000029e7: 48 89 df                    	movq	%rbx, %rdi
1000029ea: e8 5b 85 00 00              	callq	34139 <dyld_stub_binder+0x10000af4a>
1000029ef: 48 8b 3d 3a 96 00 00        	movq	38458(%rip), %rdi
1000029f6: 48 8d 35 5f 90 00 00        	leaq	36959(%rip), %rsi
1000029fd: ba 08 00 00 00              	movl	$8, %edx
100002a02: e8 a9 14 00 00              	callq	5289 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002a07: 48 8d 0d fa 3b 08 00        	leaq	539642(%rip), %rcx
100002a0e: 48 8b 09                    	movq	(%rcx), %rcx
100002a11: 48 85 c9                    	testq	%rcx, %rcx
100002a14: 78 0a                       	js	10 <_main+0x1230>
100002a16: 0f 57 c0                    	xorps	%xmm0, %xmm0
100002a19: f3 48 0f 2a c1              	cvtsi2ss	%rcx, %xmm0
100002a1e: eb 18                       	jmp	24 <_main+0x1248>
100002a20: 48 89 ca                    	movq	%rcx, %rdx
100002a23: 48 d1 ea                    	shrq	%rdx
100002a26: 83 e1 01                    	andl	$1, %ecx
100002a29: 48 09 d1                    	orq	%rdx, %rcx
100002a2c: 0f 57 c0                    	xorps	%xmm0, %xmm0
100002a2f: f3 48 0f 2a c1              	cvtsi2ss	%rcx, %xmm0
100002a34: f3 0f 58 c0                 	addss	%xmm0, %xmm0
100002a38: f3 0f 5e 05 e4 8c 00 00     	divss	36068(%rip), %xmm0
100002a40: 48 89 c7                    	movq	%rax, %rdi
100002a43: e8 1a 85 00 00              	callq	34074 <dyld_stub_binder+0x10000af62>
100002a48: 48 8d 35 31 8f 00 00        	leaq	36657(%rip), %rsi
100002a4f: ba 01 00 00 00              	movl	$1, %edx
100002a54: 48 89 c7                    	movq	%rax, %rdi
100002a57: e8 54 14 00 00              	callq	5204 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002a5c: 48 89 c3                    	movq	%rax, %rbx
100002a5f: 48 8b 00                    	movq	(%rax), %rax
100002a62: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100002a66: 48 01 de                    	addq	%rbx, %rsi
100002a69: 4c 8d 75 c0                 	leaq	-64(%rbp), %r14
100002a6d: 4c 89 f7                    	movq	%r14, %rdi
100002a70: e8 c3 84 00 00              	callq	33987 <dyld_stub_binder+0x10000af38>
100002a75: 48 8b 35 bc 95 00 00        	movq	38332(%rip), %rsi
100002a7c: 4c 89 f7                    	movq	%r14, %rdi
100002a7f: e8 ae 84 00 00              	callq	33966 <dyld_stub_binder+0x10000af32>
100002a84: 48 8b 08                    	movq	(%rax), %rcx
100002a87: 48 89 c7                    	movq	%rax, %rdi
100002a8a: be 0a 00 00 00              	movl	$10, %esi
100002a8f: ff 51 38                    	callq	*56(%rcx)
100002a92: 41 89 c6                    	movl	%eax, %r14d
100002a95: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100002a99: e8 06 85 00 00              	callq	34054 <dyld_stub_binder+0x10000afa4>
100002a9e: 41 0f be f6                 	movsbl	%r14b, %esi
100002aa2: 48 89 df                    	movq	%rbx, %rdi
100002aa5: e8 9a 84 00 00              	callq	33946 <dyld_stub_binder+0x10000af44>
100002aaa: 48 89 df                    	movq	%rbx, %rdi
100002aad: e8 98 84 00 00              	callq	33944 <dyld_stub_binder+0x10000af4a>
100002ab2: 48 8b 3d 77 95 00 00        	movq	38263(%rip), %rdi
100002ab9: 48 8d 35 a5 8f 00 00        	leaq	36773(%rip), %rsi
100002ac0: ba 08 00 00 00              	movl	$8, %edx
100002ac5: e8 e6 13 00 00              	callq	5094 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002aca: 48 8d 0d 3f 3b 08 00        	leaq	539455(%rip), %rcx
100002ad1: 48 8b 09                    	movq	(%rcx), %rcx
100002ad4: 48 85 c9                    	testq	%rcx, %rcx
100002ad7: 78 0a                       	js	10 <_main+0x12f3>
100002ad9: 0f 57 c0                    	xorps	%xmm0, %xmm0
100002adc: f3 48 0f 2a c1              	cvtsi2ss	%rcx, %xmm0
100002ae1: eb 18                       	jmp	24 <_main+0x130b>
100002ae3: 48 89 ca                    	movq	%rcx, %rdx
100002ae6: 48 d1 ea                    	shrq	%rdx
100002ae9: 83 e1 01                    	andl	$1, %ecx
100002aec: 48 09 d1                    	orq	%rdx, %rcx
100002aef: 0f 57 c0                    	xorps	%xmm0, %xmm0
100002af2: f3 48 0f 2a c1              	cvtsi2ss	%rcx, %xmm0
100002af7: f3 0f 58 c0                 	addss	%xmm0, %xmm0
100002afb: f3 0f 5e 05 21 8c 00 00     	divss	35873(%rip), %xmm0
100002b03: 48 89 c7                    	movq	%rax, %rdi
100002b06: e8 57 84 00 00              	callq	33879 <dyld_stub_binder+0x10000af62>
100002b0b: 48 8d 35 6e 8e 00 00        	leaq	36462(%rip), %rsi
100002b12: ba 01 00 00 00              	movl	$1, %edx
100002b17: 48 89 c7                    	movq	%rax, %rdi
100002b1a: e8 91 13 00 00              	callq	5009 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002b1f: 48 89 c3                    	movq	%rax, %rbx
100002b22: 48 8b 00                    	movq	(%rax), %rax
100002b25: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100002b29: 48 01 de                    	addq	%rbx, %rsi
100002b2c: 4c 8d 75 c0                 	leaq	-64(%rbp), %r14
100002b30: 4c 89 f7                    	movq	%r14, %rdi
100002b33: e8 00 84 00 00              	callq	33792 <dyld_stub_binder+0x10000af38>
100002b38: 48 8b 35 f9 94 00 00        	movq	38137(%rip), %rsi
100002b3f: 4c 89 f7                    	movq	%r14, %rdi
100002b42: e8 eb 83 00 00              	callq	33771 <dyld_stub_binder+0x10000af32>
100002b47: 48 8b 08                    	movq	(%rax), %rcx
100002b4a: 48 89 c7                    	movq	%rax, %rdi
100002b4d: be 0a 00 00 00              	movl	$10, %esi
100002b52: ff 51 38                    	callq	*56(%rcx)
100002b55: 41 89 c6                    	movl	%eax, %r14d
100002b58: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100002b5c: e8 43 84 00 00              	callq	33859 <dyld_stub_binder+0x10000afa4>
100002b61: 41 0f be f6                 	movsbl	%r14b, %esi
100002b65: 48 89 df                    	movq	%rbx, %rdi
100002b68: e8 d7 83 00 00              	callq	33751 <dyld_stub_binder+0x10000af44>
100002b6d: 48 89 df                    	movq	%rbx, %rdi
100002b70: e8 d5 83 00 00              	callq	33749 <dyld_stub_binder+0x10000af4a>
100002b75: 31 c0                       	xorl	%eax, %eax
100002b77: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100002b7e: 5b                          	popq	%rbx
100002b7f: 41 5c                       	popq	%r12
100002b81: 41 5d                       	popq	%r13
100002b83: 41 5e                       	popq	%r14
100002b85: 41 5f                       	popq	%r15
100002b87: 5d                          	popq	%rbp
100002b88: c3                          	retq
100002b89: 48 8d 3d 40 e0 00 00        	leaq	57408(%rip), %rdi
100002b90: e8 91 83 00 00              	callq	33681 <dyld_stub_binder+0x10000af26>
100002b95: e8 96 12 00 00              	callq	4758 <__ZNSt3__1L20__throw_length_errorEPKc>
100002b9a: 48 8b 1d 8f 94 00 00        	movq	38031(%rip), %rbx
100002ba1: 48 8d 35 87 8c 00 00        	leaq	35975(%rip), %rsi
100002ba8: 48 89 df                    	movq	%rbx, %rdi
100002bab: e8 80 03 00 00              	callq	896 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100002bb0: 48 8d 35 8e 8c 00 00        	leaq	35982(%rip), %rsi
100002bb7: 48 89 c7                    	movq	%rax, %rdi
100002bba: e8 71 03 00 00              	callq	881 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100002bbf: 48 8d 35 84 8c 00 00        	leaq	35972(%rip), %rsi
100002bc6: 48 89 c7                    	movq	%rax, %rdi
100002bc9: e8 62 03 00 00              	callq	866 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100002bce: 48 89 c7                    	movq	%rax, %rdi
100002bd1: e8 da 02 00 00              	callq	730 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100002bd6: 48 89 df                    	movq	%rbx, %rdi
100002bd9: be 45 00 00 00              	movl	$69, %esi
100002bde: e8 85 83 00 00              	callq	33669 <dyld_stub_binder+0x10000af68>
100002be3: 48 8d 35 76 8c 00 00        	leaq	35958(%rip), %rsi
100002bea: 48 89 c7                    	movq	%rax, %rdi
100002bed: e8 3e 03 00 00              	callq	830 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100002bf2: 48 8d 35 69 8c 00 00        	leaq	35945(%rip), %rsi
100002bf9: 48 89 c7                    	movq	%rax, %rdi
100002bfc: e8 2f 03 00 00              	callq	815 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100002c01: 48 89 c7                    	movq	%rax, %rdi
100002c04: e8 a7 02 00 00              	callq	679 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100002c09: bf 01 00 00 00              	movl	$1, %edi
100002c0e: e8 1b 84 00 00              	callq	33819 <dyld_stub_binder+0x10000b02e>
100002c13: eb 31                       	jmp	49 <_main+0x1456>
100002c15: eb 2f                       	jmp	47 <_main+0x1456>
100002c17: eb 2d                       	jmp	45 <_main+0x1456>
100002c19: eb 2b                       	jmp	43 <_main+0x1456>
100002c1b: eb 29                       	jmp	41 <_main+0x1456>
100002c1d: eb 27                       	jmp	39 <_main+0x1456>
100002c1f: eb 25                       	jmp	37 <_main+0x1456>
100002c21: eb 23                       	jmp	35 <_main+0x1456>
100002c23: eb 21                       	jmp	33 <_main+0x1456>
100002c25: eb 1f                       	jmp	31 <_main+0x1456>
100002c27: eb 1d                       	jmp	29 <_main+0x1456>
100002c29: eb 1b                       	jmp	27 <_main+0x1456>
100002c2b: eb 19                       	jmp	25 <_main+0x1456>
100002c2d: eb 17                       	jmp	23 <_main+0x1456>
100002c2f: eb 15                       	jmp	21 <_main+0x1456>
100002c31: eb 13                       	jmp	19 <_main+0x1456>
100002c33: eb 11                       	jmp	17 <_main+0x1456>
100002c35: eb 0f                       	jmp	15 <_main+0x1456>
100002c37: eb 0d                       	jmp	13 <_main+0x1456>
100002c39: eb 0b                       	jmp	11 <_main+0x1456>
100002c3b: eb 09                       	jmp	9 <_main+0x1456>
100002c3d: 48 89 c3                    	movq	%rax, %rbx
100002c40: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
100002c44: eb 07                       	jmp	7 <_main+0x145d>
100002c46: 48 89 c3                    	movq	%rax, %rbx
100002c49: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100002c4d: e8 52 83 00 00              	callq	33618 <dyld_stub_binder+0x10000afa4>
100002c52: 48 89 df                    	movq	%rbx, %rdi
100002c55: e8 c6 82 00 00              	callq	33478 <dyld_stub_binder+0x10000af20>
100002c5a: 0f 0b                       	ud2
100002c5c: 0f 1f 40 00                 	nopl	(%rax)

0000000100002c60 __Z7getRandff:
100002c60: 55                          	pushq	%rbp
100002c61: 48 89 e5                    	movq	%rsp, %rbp
100002c64: 41 56                       	pushq	%r14
100002c66: 53                          	pushq	%rbx
100002c67: 48 83 ec 20                 	subq	$32, %rsp
100002c6b: f3 0f 11 4d ec              	movss	%xmm1, -20(%rbp)
100002c70: f3 0f 11 45 e8              	movss	%xmm0, -24(%rbp)
100002c75: 48 8b 05 84 93 00 00        	movq	37764(%rip), %rax
100002c7c: 8a 00                       	movb	(%rax), %al
100002c7e: 84 c0                       	testb	%al, %al
100002c80: 0f 84 ef 00 00 00           	je	239 <__Z7getRandff+0x115>
100002c86: 48 8b 05 7b 93 00 00        	movq	37755(%rip), %rax
100002c8d: 8a 00                       	movb	(%rax), %al
100002c8f: 84 c0                       	testb	%al, %al
100002c91: 0f 84 5c 01 00 00           	je	348 <__Z7getRandff+0x193>
100002c97: 4c 8b 0d f2 93 00 00        	movq	37874(%rip), %r9
100002c9e: 49 8b b1 c0 09 00 00        	movq	2496(%r9), %rsi
100002ca5: 48 8d 46 01                 	leaq	1(%rsi), %rax
100002ca9: 48 c1 e8 04                 	shrq	$4, %rax
100002cad: 49 b8 21 0d d2 20 0d d2 20 0d       	movabsq	$945986875574848801, %r8
100002cb7: 49 f7 e0                    	mulq	%r8
100002cba: f3 0f 10 4d e8              	movss	-24(%rbp), %xmm1
100002cbf: f3 0f 10 55 ec              	movss	-20(%rbp), %xmm2
100002cc4: f3 0f 5c d1                 	subss	%xmm1, %xmm2
100002cc8: 48 d1 ea                    	shrq	%rdx
100002ccb: 48 69 c2 70 02 00 00        	imulq	$624, %rdx, %rax
100002cd2: 48 f7 d8                    	negq	%rax
100002cd5: 48 8d 7c 06 01              	leaq	1(%rsi,%rax), %rdi
100002cda: b8 00 00 00 80              	movl	$2147483648, %eax
100002cdf: 41 23 04 b1                 	andl	(%r9,%rsi,4), %eax
100002ce3: 41 8b 0c b9                 	movl	(%r9,%rdi,4), %ecx
100002ce7: 89 cb                       	movl	%ecx, %ebx
100002ce9: 81 e3 fe ff ff 7f           	andl	$2147483646, %ebx
100002cef: 09 c3                       	orl	%eax, %ebx
100002cf1: 48 8d 86 8d 01 00 00        	leaq	397(%rsi), %rax
100002cf8: 48 c1 e8 04                 	shrq	$4, %rax
100002cfc: 49 f7 e0                    	mulq	%r8
100002cff: 48 d1 ea                    	shrq	%rdx
100002d02: 48 69 c2 70 02 00 00        	imulq	$624, %rdx, %rax
100002d09: 48 f7 d8                    	negq	%rax
100002d0c: 48 8d 84 06 8d 01 00 00     	leaq	397(%rsi,%rax), %rax
100002d14: d1 eb                       	shrl	%ebx
100002d16: 83 e1 01                    	andl	$1, %ecx
100002d19: 69 c9 df b0 08 99           	imull	$2567483615, %ecx, %ecx
100002d1f: 41 33 0c 81                 	xorl	(%r9,%rax,4), %ecx
100002d23: 31 d9                       	xorl	%ebx, %ecx
100002d25: 41 89 0c b1                 	movl	%ecx, (%r9,%rsi,4)
100002d29: 89 c8                       	movl	%ecx, %eax
100002d2b: c1 e8 0b                    	shrl	$11, %eax
100002d2e: 31 c8                       	xorl	%ecx, %eax
100002d30: 49 89 b9 c0 09 00 00        	movq	%rdi, 2496(%r9)
100002d37: 89 c1                       	movl	%eax, %ecx
100002d39: c1 e1 07                    	shll	$7, %ecx
100002d3c: 81 e1 80 56 2c 9d           	andl	$2636928640, %ecx
100002d42: 31 c1                       	xorl	%eax, %ecx
100002d44: 89 c8                       	movl	%ecx, %eax
100002d46: c1 e0 0f                    	shll	$15, %eax
100002d49: 25 00 00 c6 ef              	andl	$4022730752, %eax
100002d4e: 31 c8                       	xorl	%ecx, %eax
100002d50: 89 c1                       	movl	%eax, %ecx
100002d52: c1 e9 12                    	shrl	$18, %ecx
100002d55: 31 c1                       	xorl	%eax, %ecx
100002d57: f3 48 0f 2a c1              	cvtsi2ss	%rcx, %xmm0
100002d5c: f3 0f 59 05 c4 89 00 00     	mulss	35268(%rip), %xmm0
100002d64: f3 0f 59 c2                 	mulss	%xmm2, %xmm0
100002d68: f3 0f 58 c1                 	addss	%xmm1, %xmm0
100002d6c: 48 83 c4 20                 	addq	$32, %rsp
100002d70: 5b                          	popq	%rbx
100002d71: 41 5e                       	popq	%r14
100002d73: 5d                          	popq	%rbp
100002d74: c3                          	retq
100002d75: 48 8b 1d 84 92 00 00        	movq	37508(%rip), %rbx
100002d7c: 48 89 df                    	movq	%rbx, %rdi
100002d7f: e8 8c 82 00 00              	callq	33420 <dyld_stub_binder+0x10000b010>
100002d84: 85 c0                       	testl	%eax, %eax
100002d86: 0f 84 fa fe ff ff           	je	-262 <__Z7getRandff+0x26>
100002d8c: c6 45 d0 18                 	movb	$24, -48(%rbp)
100002d90: 48 b8 2f 64 65 76 2f 75 72 61       	movabsq	$7021803615734293551, %rax
100002d9a: 48 89 45 d1                 	movq	%rax, -47(%rbp)
100002d9e: c7 45 d9 6e 64 6f 6d        	movl	$1836016750, -39(%rbp)
100002da5: c6 45 dd 00                 	movb	$0, -35(%rbp)
100002da9: 48 8b 3d d8 92 00 00        	movq	37592(%rip), %rdi
100002db0: 48 8d 75 d0                 	leaq	-48(%rbp), %rsi
100002db4: e8 cd 81 00 00              	callq	33229 <dyld_stub_binder+0x10000af86>
100002db9: f6 45 d0 01                 	testb	$1, -48(%rbp)
100002dbd: 74 09                       	je	9 <__Z7getRandff+0x168>
100002dbf: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100002dc3: e8 0c 82 00 00              	callq	33292 <dyld_stub_binder+0x10000afd4>
100002dc8: 48 8b 3d 51 92 00 00        	movq	37457(%rip), %rdi
100002dcf: 48 8b 35 b2 92 00 00        	movq	37554(%rip), %rsi
100002dd6: 48 8d 15 23 d2 ff ff        	leaq	-11741(%rip), %rdx
100002ddd: e8 10 82 00 00              	callq	33296 <dyld_stub_binder+0x10000aff2>
100002de2: 48 8b 3d 17 92 00 00        	movq	37399(%rip), %rdi
100002de9: e8 28 82 00 00              	callq	33320 <dyld_stub_binder+0x10000b016>
100002dee: e9 93 fe ff ff              	jmp	-365 <__Z7getRandff+0x26>
100002df3: 48 8b 1d 0e 92 00 00        	movq	37390(%rip), %rbx
100002dfa: 48 89 df                    	movq	%rbx, %rdi
100002dfd: e8 0e 82 00 00              	callq	33294 <dyld_stub_binder+0x10000b010>
100002e02: 85 c0                       	testl	%eax, %eax
100002e04: 0f 84 8d fe ff ff           	je	-371 <__Z7getRandff+0x37>
100002e0a: 48 8b 3d 77 92 00 00        	movq	37495(%rip), %rdi
100002e11: e8 76 81 00 00              	callq	33142 <dyld_stub_binder+0x10000af8c>
100002e16: 48 8b 0d 73 92 00 00        	movq	37491(%rip), %rcx
100002e1d: 89 01                       	movl	%eax, (%rcx)
100002e1f: ba 01 00 00 00              	movl	$1, %edx
100002e24: be 02 00 00 00              	movl	$2, %esi
100002e29: 89 c7                       	movl	%eax, %edi
100002e2b: c1 ef 1e                    	shrl	$30, %edi
100002e2e: 31 c7                       	xorl	%eax, %edi
100002e30: 69 df 65 89 07 6c           	imull	$1812433253, %edi, %ebx
100002e36: 01 d3                       	addl	%edx, %ebx
100002e38: 89 5c b1 fc                 	movl	%ebx, -4(%rcx,%rsi,4)
100002e3c: 48 81 fe 70 02 00 00        	cmpq	$624, %rsi
100002e43: 74 22                       	je	34 <__Z7getRandff+0x207>
100002e45: 48 8d 42 01                 	leaq	1(%rdx), %rax
100002e49: 89 df                       	movl	%ebx, %edi
100002e4b: c1 ef 1e                    	shrl	$30, %edi
100002e4e: 31 df                       	xorl	%ebx, %edi
100002e50: 69 ff 65 89 07 6c           	imull	$1812433253, %edi, %edi
100002e56: 01 f8                       	addl	%edi, %eax
100002e58: 01 f7                       	addl	%esi, %edi
100002e5a: 89 3c b1                    	movl	%edi, (%rcx,%rsi,4)
100002e5d: 48 83 c2 02                 	addq	$2, %rdx
100002e61: 48 83 c6 02                 	addq	$2, %rsi
100002e65: eb c2                       	jmp	-62 <__Z7getRandff+0x1c9>
100002e67: 48 c7 81 c0 09 00 00 00 00 00 00    	movq	$0, 2496(%rcx)
100002e72: 48 8b 3d 8f 91 00 00        	movq	37263(%rip), %rdi
100002e79: e8 98 81 00 00              	callq	33176 <dyld_stub_binder+0x10000b016>
100002e7e: e9 14 fe ff ff              	jmp	-492 <__Z7getRandff+0x37>
100002e83: 49 89 c6                    	movq	%rax, %r14
100002e86: eb 12                       	jmp	18 <__Z7getRandff+0x23a>
100002e88: 49 89 c6                    	movq	%rax, %r14
100002e8b: f6 45 d0 01                 	testb	$1, -48(%rbp)
100002e8f: 74 09                       	je	9 <__Z7getRandff+0x23a>
100002e91: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100002e95: e8 3a 81 00 00              	callq	33082 <dyld_stub_binder+0x10000afd4>
100002e9a: 48 89 df                    	movq	%rbx, %rdi
100002e9d: e8 68 81 00 00              	callq	33128 <dyld_stub_binder+0x10000b00a>
100002ea2: 4c 89 f7                    	movq	%r14, %rdi
100002ea5: e8 76 80 00 00              	callq	32886 <dyld_stub_binder+0x10000af20>
100002eaa: 0f 0b                       	ud2
100002eac: 0f 1f 40 00                 	nopl	(%rax)

0000000100002eb0 __ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E:
100002eb0: 55                          	pushq	%rbp
100002eb1: 48 89 e5                    	movq	%rsp, %rbp
100002eb4: 41 56                       	pushq	%r14
100002eb6: 53                          	pushq	%rbx
100002eb7: 48 83 ec 10                 	subq	$16, %rsp
100002ebb: 48 89 fb                    	movq	%rdi, %rbx
100002ebe: 48 8b 07                    	movq	(%rdi), %rax
100002ec1: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100002ec5: 48 01 fe                    	addq	%rdi, %rsi
100002ec8: 4c 8d 75 e8                 	leaq	-24(%rbp), %r14
100002ecc: 4c 89 f7                    	movq	%r14, %rdi
100002ecf: e8 64 80 00 00              	callq	32868 <dyld_stub_binder+0x10000af38>
100002ed4: 48 8b 35 5d 91 00 00        	movq	37213(%rip), %rsi
100002edb: 4c 89 f7                    	movq	%r14, %rdi
100002ede: e8 4f 80 00 00              	callq	32847 <dyld_stub_binder+0x10000af32>
100002ee3: 48 8b 08                    	movq	(%rax), %rcx
100002ee6: 48 89 c7                    	movq	%rax, %rdi
100002ee9: be 0a 00 00 00              	movl	$10, %esi
100002eee: ff 51 38                    	callq	*56(%rcx)
100002ef1: 41 89 c6                    	movl	%eax, %r14d
100002ef4: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
100002ef8: e8 a7 80 00 00              	callq	32935 <dyld_stub_binder+0x10000afa4>
100002efd: 41 0f be f6                 	movsbl	%r14b, %esi
100002f01: 48 89 df                    	movq	%rbx, %rdi
100002f04: e8 3b 80 00 00              	callq	32827 <dyld_stub_binder+0x10000af44>
100002f09: 48 89 df                    	movq	%rbx, %rdi
100002f0c: e8 39 80 00 00              	callq	32825 <dyld_stub_binder+0x10000af4a>
100002f11: 48 83 c4 10                 	addq	$16, %rsp
100002f15: 5b                          	popq	%rbx
100002f16: 41 5e                       	popq	%r14
100002f18: 5d                          	popq	%rbp
100002f19: c3                          	retq
100002f1a: 48 89 c3                    	movq	%rax, %rbx
100002f1d: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
100002f21: e8 7e 80 00 00              	callq	32894 <dyld_stub_binder+0x10000afa4>
100002f26: 48 89 df                    	movq	%rbx, %rdi
100002f29: e8 f2 7f 00 00              	callq	32754 <dyld_stub_binder+0x10000af20>
100002f2e: 0f 0b                       	ud2

0000000100002f30 __ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc:
100002f30: 55                          	pushq	%rbp
100002f31: 48 89 e5                    	movq	%rsp, %rbp
100002f34: 41 56                       	pushq	%r14
100002f36: 53                          	pushq	%rbx
100002f37: 48 89 f3                    	movq	%rsi, %rbx
100002f3a: 49 89 fe                    	movq	%rdi, %r14
100002f3d: 48 89 f7                    	movq	%rsi, %rdi
100002f40: e8 31 81 00 00              	callq	33073 <dyld_stub_binder+0x10000b076>
100002f45: 4c 89 f7                    	movq	%r14, %rdi
100002f48: 48 89 de                    	movq	%rbx, %rsi
100002f4b: 48 89 c2                    	movq	%rax, %rdx
100002f4e: 5b                          	popq	%rbx
100002f4f: 41 5e                       	popq	%r14
100002f51: 5d                          	popq	%rbp
100002f52: e9 59 0f 00 00              	jmp	3929 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002f57: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100002f60 __ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev:
100002f60: 55                          	pushq	%rbp
100002f61: 48 89 e5                    	movq	%rsp, %rbp
100002f64: 41 56                       	pushq	%r14
100002f66: 53                          	pushq	%rbx
100002f67: 48 8b 07                    	movq	(%rdi), %rax
100002f6a: 48 8b 40 e8                 	movq	-24(%rax), %rax
100002f6e: 48 8d 1c 07                 	leaq	(%rdi,%rax), %rbx
100002f72: 48 8b 0d ff 90 00 00        	movq	37119(%rip), %rcx
100002f79: 48 8d 51 18                 	leaq	24(%rcx), %rdx
100002f7d: 48 89 14 07                 	movq	%rdx, (%rdi,%rax)
100002f81: 4c 8d b4 07 a0 01 00 00     	leaq	416(%rdi,%rax), %r14
100002f89: 48 83 c1 40                 	addq	$64, %rcx
100002f8d: 48 89 8c 07 a0 01 00 00     	movq	%rcx, 416(%rdi,%rax)
100002f95: 48 8d 7c 07 08              	leaq	8(%rdi,%rax), %rdi
100002f9a: e8 01 01 00 00              	callq	257 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev>
100002f9f: 48 8b 35 c2 90 00 00        	movq	37058(%rip), %rsi
100002fa6: 48 83 c6 08                 	addq	$8, %rsi
100002faa: 48 89 df                    	movq	%rbx, %rdi
100002fad: e8 aa 7f 00 00              	callq	32682 <dyld_stub_binder+0x10000af5c>
100002fb2: 4c 89 f7                    	movq	%r14, %rdi
100002fb5: 5b                          	popq	%rbx
100002fb6: 41 5e                       	popq	%r14
100002fb8: 5d                          	popq	%rbp
100002fb9: e9 fe 7f 00 00              	jmp	32766 <dyld_stub_binder+0x10000afbc>
100002fbe: 66 90                       	nop

0000000100002fc0 __ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev:
100002fc0: 55                          	pushq	%rbp
100002fc1: 48 89 e5                    	movq	%rsp, %rbp
100002fc4: 41 56                       	pushq	%r14
100002fc6: 53                          	pushq	%rbx
100002fc7: 48 89 fb                    	movq	%rdi, %rbx
100002fca: 48 8b 05 a7 90 00 00        	movq	37031(%rip), %rax
100002fd1: 48 8d 48 18                 	leaq	24(%rax), %rcx
100002fd5: 48 89 0f                    	movq	%rcx, (%rdi)
100002fd8: 4c 8d b7 a0 01 00 00        	leaq	416(%rdi), %r14
100002fdf: 48 83 c0 40                 	addq	$64, %rax
100002fe3: 48 89 87 a0 01 00 00        	movq	%rax, 416(%rdi)
100002fea: 48 83 c7 08                 	addq	$8, %rdi
100002fee: e8 ad 00 00 00              	callq	173 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev>
100002ff3: 48 8b 35 6e 90 00 00        	movq	36974(%rip), %rsi
100002ffa: 48 83 c6 08                 	addq	$8, %rsi
100002ffe: 48 89 df                    	movq	%rbx, %rdi
100003001: e8 56 7f 00 00              	callq	32598 <dyld_stub_binder+0x10000af5c>
100003006: 4c 89 f7                    	movq	%r14, %rdi
100003009: e8 ae 7f 00 00              	callq	32686 <dyld_stub_binder+0x10000afbc>
10000300e: 48 89 df                    	movq	%rbx, %rdi
100003011: 5b                          	popq	%rbx
100003012: 41 5e                       	popq	%r14
100003014: 5d                          	popq	%rbp
100003015: e9 ba 7f 00 00              	jmp	32698 <dyld_stub_binder+0x10000afd4>
10000301a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100003020 __ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev:
100003020: 55                          	pushq	%rbp
100003021: 48 89 e5                    	movq	%rsp, %rbp
100003024: 41 56                       	pushq	%r14
100003026: 53                          	pushq	%rbx
100003027: 48 8b 07                    	movq	(%rdi), %rax
10000302a: 48 8b 40 e8                 	movq	-24(%rax), %rax
10000302e: 48 8d 1c 07                 	leaq	(%rdi,%rax), %rbx
100003032: 48 8b 0d 3f 90 00 00        	movq	36927(%rip), %rcx
100003039: 48 8d 51 18                 	leaq	24(%rcx), %rdx
10000303d: 48 89 14 07                 	movq	%rdx, (%rdi,%rax)
100003041: 4c 8d b4 07 a0 01 00 00     	leaq	416(%rdi,%rax), %r14
100003049: 48 83 c1 40                 	addq	$64, %rcx
10000304d: 48 89 8c 07 a0 01 00 00     	movq	%rcx, 416(%rdi,%rax)
100003055: 48 8d 7c 07 08              	leaq	8(%rdi,%rax), %rdi
10000305a: e8 41 00 00 00              	callq	65 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev>
10000305f: 48 8b 35 02 90 00 00        	movq	36866(%rip), %rsi
100003066: 48 83 c6 08                 	addq	$8, %rsi
10000306a: 48 89 df                    	movq	%rbx, %rdi
10000306d: e8 ea 7e 00 00              	callq	32490 <dyld_stub_binder+0x10000af5c>
100003072: 4c 89 f7                    	movq	%r14, %rdi
100003075: e8 42 7f 00 00              	callq	32578 <dyld_stub_binder+0x10000afbc>
10000307a: 48 89 df                    	movq	%rbx, %rdi
10000307d: 5b                          	popq	%rbx
10000307e: 41 5e                       	popq	%r14
100003080: 5d                          	popq	%rbp
100003081: e9 4e 7f 00 00              	jmp	32590 <dyld_stub_binder+0x10000afd4>
100003086: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100003090 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev:
100003090: 55                          	pushq	%rbp
100003091: 48 89 e5                    	movq	%rsp, %rbp
100003094: 5d                          	popq	%rbp
100003095: e9 06 00 00 00              	jmp	6 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev>
10000309a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000030a0 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev:
1000030a0: 55                          	pushq	%rbp
1000030a1: 48 89 e5                    	movq	%rsp, %rbp
1000030a4: 41 57                       	pushq	%r15
1000030a6: 41 56                       	pushq	%r14
1000030a8: 53                          	pushq	%rbx
1000030a9: 50                          	pushq	%rax
1000030aa: 48 89 fb                    	movq	%rdi, %rbx
1000030ad: 48 8b 05 bc 8f 00 00        	movq	36796(%rip), %rax
1000030b4: 48 83 c0 10                 	addq	$16, %rax
1000030b8: 48 89 07                    	movq	%rax, (%rdi)
1000030bb: 4c 8b 77 78                 	movq	120(%rdi), %r14
1000030bf: 4d 85 f6                    	testq	%r14, %r14
1000030c2: 74 25                       	je	37 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0x49>
1000030c4: 48 89 df                    	movq	%rbx, %rdi
1000030c7: e8 64 05 00 00              	callq	1380 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv>
1000030cc: 4c 89 f7                    	movq	%r14, %rdi
1000030cf: e8 60 7f 00 00              	callq	32608 <dyld_stub_binder+0x10000b034>
1000030d4: 48 c7 43 78 00 00 00 00     	movq	$0, 120(%rbx)
1000030dc: 48 8b 03                    	movq	(%rbx), %rax
1000030df: 48 89 df                    	movq	%rbx, %rdi
1000030e2: 31 f6                       	xorl	%esi, %esi
1000030e4: 31 d2                       	xorl	%edx, %edx
1000030e6: ff 50 18                    	callq	*24(%rax)
1000030e9: 80 bb 90 01 00 00 00        	cmpb	$0, 400(%rbx)
1000030f0: 74 0e                       	je	14 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0x60>
1000030f2: 48 8b 7b 40                 	movq	64(%rbx), %rdi
1000030f6: 48 85 ff                    	testq	%rdi, %rdi
1000030f9: 74 05                       	je	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0x60>
1000030fb: e8 ce 7e 00 00              	callq	32462 <dyld_stub_binder+0x10000afce>
100003100: 80 bb 91 01 00 00 00        	cmpb	$0, 401(%rbx)
100003107: 74 0e                       	je	14 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0x77>
100003109: 48 8b 7b 68                 	movq	104(%rbx), %rdi
10000310d: 48 85 ff                    	testq	%rdi, %rdi
100003110: 74 05                       	je	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0x77>
100003112: e8 b7 7e 00 00              	callq	32439 <dyld_stub_binder+0x10000afce>
100003117: 48 89 df                    	movq	%rbx, %rdi
10000311a: 48 83 c4 08                 	addq	$8, %rsp
10000311e: 5b                          	popq	%rbx
10000311f: 41 5e                       	popq	%r14
100003121: 41 5f                       	popq	%r15
100003123: 5d                          	popq	%rbp
100003124: e9 6f 7e 00 00              	jmp	32367 <dyld_stub_binder+0x10000af98>
100003129: 49 89 c7                    	movq	%rax, %r15
10000312c: eb 0b                       	jmp	11 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0x99>
10000312e: 49 89 c7                    	movq	%rax, %r15
100003131: 4c 89 f7                    	movq	%r14, %rdi
100003134: e8 fb 7e 00 00              	callq	32507 <dyld_stub_binder+0x10000b034>
100003139: 4c 89 ff                    	movq	%r15, %rdi
10000313c: e8 b7 7e 00 00              	callq	32439 <dyld_stub_binder+0x10000aff8>
100003141: e8 b8 7e 00 00              	callq	32440 <dyld_stub_binder+0x10000affe>
100003146: eb a1                       	jmp	-95 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0x49>
100003148: 49 89 c6                    	movq	%rax, %r14
10000314b: 48 89 df                    	movq	%rbx, %rdi
10000314e: e8 45 7e 00 00              	callq	32325 <dyld_stub_binder+0x10000af98>
100003153: 4c 89 f7                    	movq	%r14, %rdi
100003156: e8 05 00 00 00              	callq	5 <___clang_call_terminate>
10000315b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100003160 ___clang_call_terminate:
100003160: 50                          	pushq	%rax
100003161: e8 92 7e 00 00              	callq	32402 <dyld_stub_binder+0x10000aff8>
100003166: e8 5d 7e 00 00              	callq	32349 <dyld_stub_binder+0x10000afc8>
10000316b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100003170 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev:
100003170: 55                          	pushq	%rbp
100003171: 48 89 e5                    	movq	%rsp, %rbp
100003174: 53                          	pushq	%rbx
100003175: 50                          	pushq	%rax
100003176: 48 89 fb                    	movq	%rdi, %rbx
100003179: e8 22 ff ff ff              	callq	-222 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev>
10000317e: 48 89 df                    	movq	%rbx, %rdi
100003181: 48 83 c4 08                 	addq	$8, %rsp
100003185: 5b                          	popq	%rbx
100003186: 5d                          	popq	%rbp
100003187: e9 48 7e 00 00              	jmp	32328 <dyld_stub_binder+0x10000afd4>
10000318c: 0f 1f 40 00                 	nopl	(%rax)

0000000100003190 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE:
100003190: 55                          	pushq	%rbp
100003191: 48 89 e5                    	movq	%rsp, %rbp
100003194: 41 56                       	pushq	%r14
100003196: 53                          	pushq	%rbx
100003197: 49 89 f6                    	movq	%rsi, %r14
10000319a: 48 89 fb                    	movq	%rdi, %rbx
10000319d: 48 8b 07                    	movq	(%rdi), %rax
1000031a0: ff 50 30                    	callq	*48(%rax)
1000031a3: 48 8b 35 96 8e 00 00        	movq	36502(%rip), %rsi
1000031aa: 4c 89 f7                    	movq	%r14, %rdi
1000031ad: e8 80 7d 00 00              	callq	32128 <dyld_stub_binder+0x10000af32>
1000031b2: 48 89 83 80 00 00 00        	movq	%rax, 128(%rbx)
1000031b9: 44 8a b3 92 01 00 00        	movb	402(%rbx), %r14b
1000031c0: 48 8b 08                    	movq	(%rax), %rcx
1000031c3: 48 89 c7                    	movq	%rax, %rdi
1000031c6: ff 51 38                    	callq	*56(%rcx)
1000031c9: 88 83 92 01 00 00           	movb	%al, 402(%rbx)
1000031cf: 41 38 c6                    	cmpb	%al, %r14b
1000031d2: 74 7f                       	je	127 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0xc3>
1000031d4: 48 c7 43 38 00 00 00 00     	movq	$0, 56(%rbx)
1000031dc: 48 c7 43 30 00 00 00 00     	movq	$0, 48(%rbx)
1000031e4: 48 c7 43 28 00 00 00 00     	movq	$0, 40(%rbx)
1000031ec: 48 c7 43 20 00 00 00 00     	movq	$0, 32(%rbx)
1000031f4: 48 c7 43 18 00 00 00 00     	movq	$0, 24(%rbx)
1000031fc: 48 c7 43 10 00 00 00 00     	movq	$0, 16(%rbx)
100003204: 8a 8b 90 01 00 00           	movb	400(%rbx), %cl
10000320a: 84 c0                       	testb	%al, %al
10000320c: 74 4a                       	je	74 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0xc8>
10000320e: 84 c9                       	testb	%cl, %cl
100003210: 74 0e                       	je	14 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0x90>
100003212: 48 8b 7b 40                 	movq	64(%rbx), %rdi
100003216: 48 85 ff                    	testq	%rdi, %rdi
100003219: 74 05                       	je	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0x90>
10000321b: e8 ae 7d 00 00              	callq	32174 <dyld_stub_binder+0x10000afce>
100003220: 8a 83 91 01 00 00           	movb	401(%rbx), %al
100003226: 88 83 90 01 00 00           	movb	%al, 400(%rbx)
10000322c: 48 8b 43 68                 	movq	104(%rbx), %rax
100003230: 48 8b 4b 70                 	movq	112(%rbx), %rcx
100003234: 48 89 4b 60                 	movq	%rcx, 96(%rbx)
100003238: 48 89 43 40                 	movq	%rax, 64(%rbx)
10000323c: c6 83 91 01 00 00 00        	movb	$0, 401(%rbx)
100003243: 48 c7 43 70 00 00 00 00     	movq	$0, 112(%rbx)
10000324b: 48 c7 43 68 00 00 00 00     	movq	$0, 104(%rbx)
100003253: 5b                          	popq	%rbx
100003254: 41 5e                       	popq	%r14
100003256: 5d                          	popq	%rbp
100003257: c3                          	retq
100003258: 84 c9                       	testb	%cl, %cl
10000325a: 74 1d                       	je	29 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0xe9>
10000325c: 48 8b 7b 60                 	movq	96(%rbx), %rdi
100003260: 48 89 7b 70                 	movq	%rdi, 112(%rbx)
100003264: e8 71 7d 00 00              	callq	32113 <dyld_stub_binder+0x10000afda>
100003269: 48 89 43 68                 	movq	%rax, 104(%rbx)
10000326d: c6 83 91 01 00 00 01        	movb	$1, 401(%rbx)
100003274: 5b                          	popq	%rbx
100003275: 41 5e                       	popq	%r14
100003277: 5d                          	popq	%rbp
100003278: c3                          	retq
100003279: 48 8b 43 40                 	movq	64(%rbx), %rax
10000327d: 48 8d 4b 58                 	leaq	88(%rbx), %rcx
100003281: 48 39 c8                    	cmpq	%rcx, %rax
100003284: 74 d6                       	je	-42 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0xcc>
100003286: 48 8b 7b 60                 	movq	96(%rbx), %rdi
10000328a: 48 89 7b 70                 	movq	%rdi, 112(%rbx)
10000328e: 48 89 43 68                 	movq	%rax, 104(%rbx)
100003292: c6 83 91 01 00 00 00        	movb	$0, 401(%rbx)
100003299: e8 3c 7d 00 00              	callq	32060 <dyld_stub_binder+0x10000afda>
10000329e: 48 89 43 40                 	movq	%rax, 64(%rbx)
1000032a2: c6 83 90 01 00 00 01        	movb	$1, 400(%rbx)
1000032a9: 5b                          	popq	%rbx
1000032aa: 41 5e                       	popq	%r14
1000032ac: 5d                          	popq	%rbp
1000032ad: c3                          	retq
1000032ae: 66 90                       	nop

00000001000032b0 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl:
1000032b0: 55                          	pushq	%rbp
1000032b1: 48 89 e5                    	movq	%rsp, %rbp
1000032b4: 41 57                       	pushq	%r15
1000032b6: 41 56                       	pushq	%r14
1000032b8: 41 54                       	pushq	%r12
1000032ba: 53                          	pushq	%rbx
1000032bb: 49 89 d7                    	movq	%rdx, %r15
1000032be: 49 89 f6                    	movq	%rsi, %r14
1000032c1: 48 89 fb                    	movq	%rdi, %rbx
1000032c4: 48 c7 47 38 00 00 00 00     	movq	$0, 56(%rdi)
1000032cc: 48 c7 47 30 00 00 00 00     	movq	$0, 48(%rdi)
1000032d4: 48 c7 47 28 00 00 00 00     	movq	$0, 40(%rdi)
1000032dc: 48 c7 47 20 00 00 00 00     	movq	$0, 32(%rdi)
1000032e4: 48 c7 47 18 00 00 00 00     	movq	$0, 24(%rdi)
1000032ec: 48 c7 47 10 00 00 00 00     	movq	$0, 16(%rdi)
1000032f4: 80 bf 90 01 00 00 00        	cmpb	$0, 400(%rdi)
1000032fb: 74 0e                       	je	14 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x5b>
1000032fd: 48 8b 7b 40                 	movq	64(%rbx), %rdi
100003301: 48 85 ff                    	testq	%rdi, %rdi
100003304: 74 05                       	je	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x5b>
100003306: e8 c3 7c 00 00              	callq	31939 <dyld_stub_binder+0x10000afce>
10000330b: 80 bb 91 01 00 00 00        	cmpb	$0, 401(%rbx)
100003312: 74 0e                       	je	14 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x72>
100003314: 48 8b 7b 68                 	movq	104(%rbx), %rdi
100003318: 48 85 ff                    	testq	%rdi, %rdi
10000331b: 74 05                       	je	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x72>
10000331d: e8 ac 7c 00 00              	callq	31916 <dyld_stub_binder+0x10000afce>
100003322: 4c 89 7b 60                 	movq	%r15, 96(%rbx)
100003326: 49 83 ff 09                 	cmpq	$9, %r15
10000332a: 72 1e                       	jb	30 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x9a>
10000332c: 44 8a a3 92 01 00 00        	movb	402(%rbx), %r12b
100003333: 4d 85 f6                    	testq	%r14, %r14
100003336: 74 4e                       	je	78 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0xd6>
100003338: 45 84 e4                    	testb	%r12b, %r12b
10000333b: 74 49                       	je	73 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0xd6>
10000333d: 4c 89 73 40                 	movq	%r14, 64(%rbx)
100003341: c6 83 90 01 00 00 00        	movb	$0, 400(%rbx)
100003348: eb 23                       	jmp	35 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0xbd>
10000334a: 48 8d 43 58                 	leaq	88(%rbx), %rax
10000334e: 48 89 43 40                 	movq	%rax, 64(%rbx)
100003352: 48 c7 43 60 08 00 00 00     	movq	$8, 96(%rbx)
10000335a: c6 83 90 01 00 00 00        	movb	$0, 400(%rbx)
100003361: 44 8a a3 92 01 00 00        	movb	402(%rbx), %r12b
100003368: 45 84 e4                    	testb	%r12b, %r12b
10000336b: 74 31                       	je	49 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0xee>
10000336d: c6 83 91 01 00 00 00        	movb	$0, 401(%rbx)
100003374: 48 c7 43 68 00 00 00 00     	movq	$0, 104(%rbx)
10000337c: 48 c7 43 70 00 00 00 00     	movq	$0, 112(%rbx)
100003384: eb 4b                       	jmp	75 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x121>
100003386: 4c 89 ff                    	movq	%r15, %rdi
100003389: e8 4c 7c 00 00              	callq	31820 <dyld_stub_binder+0x10000afda>
10000338e: 48 89 43 40                 	movq	%rax, 64(%rbx)
100003392: c6 83 90 01 00 00 01        	movb	$1, 400(%rbx)
100003399: 45 84 e4                    	testb	%r12b, %r12b
10000339c: 75 cf                       	jne	-49 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0xbd>
10000339e: 49 83 ff 07                 	cmpq	$7, %r15
1000033a2: bf 08 00 00 00              	movl	$8, %edi
1000033a7: 49 0f 4f ff                 	cmovgq	%r15, %rdi
1000033ab: 48 89 7b 70                 	movq	%rdi, 112(%rbx)
1000033af: 4d 85 f6                    	testq	%r14, %r14
1000033b2: 74 0d                       	je	13 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x111>
1000033b4: 4c 89 73 68                 	movq	%r14, 104(%rbx)
1000033b8: c6 83 91 01 00 00 00        	movb	$0, 401(%rbx)
1000033bf: eb 10                       	jmp	16 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x121>
1000033c1: e8 14 7c 00 00              	callq	31764 <dyld_stub_binder+0x10000afda>
1000033c6: 48 89 43 68                 	movq	%rax, 104(%rbx)
1000033ca: c6 83 91 01 00 00 01        	movb	$1, 401(%rbx)
1000033d1: 48 89 d8                    	movq	%rbx, %rax
1000033d4: 5b                          	popq	%rbx
1000033d5: 41 5c                       	popq	%r12
1000033d7: 41 5e                       	popq	%r14
1000033d9: 41 5f                       	popq	%r15
1000033db: 5d                          	popq	%rbp
1000033dc: c3                          	retq
1000033dd: 0f 1f 00                    	nopl	(%rax)

00000001000033e0 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj:
1000033e0: 55                          	pushq	%rbp
1000033e1: 48 89 e5                    	movq	%rsp, %rbp
1000033e4: 41 57                       	pushq	%r15
1000033e6: 41 56                       	pushq	%r14
1000033e8: 41 55                       	pushq	%r13
1000033ea: 41 54                       	pushq	%r12
1000033ec: 53                          	pushq	%rbx
1000033ed: 50                          	pushq	%rax
1000033ee: 48 89 fb                    	movq	%rdi, %rbx
1000033f1: 48 8b be 80 00 00 00        	movq	128(%rsi), %rdi
1000033f8: 48 85 ff                    	testq	%rdi, %rdi
1000033fb: 0f 84 18 01 00 00           	je	280 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x139>
100003401: 41 89 cf                    	movl	%ecx, %r15d
100003404: 49 89 d4                    	movq	%rdx, %r12
100003407: 49 89 f6                    	movq	%rsi, %r14
10000340a: 48 8b 07                    	movq	(%rdi), %rax
10000340d: ff 50 30                    	callq	*48(%rax)
100003410: 49 83 7e 78 00              	cmpq	$0, 120(%r14)
100003415: 74 43                       	je	67 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x7a>
100003417: 41 89 c5                    	movl	%eax, %r13d
10000341a: 4d 85 e4                    	testq	%r12, %r12
10000341d: 74 05                       	je	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x44>
10000341f: 45 85 ed                    	testl	%r13d, %r13d
100003422: 7e 36                       	jle	54 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x7a>
100003424: 49 8b 06                    	movq	(%r14), %rax
100003427: 4c 89 f7                    	movq	%r14, %rdi
10000342a: ff 50 30                    	callq	*48(%rax)
10000342d: 85 c0                       	testl	%eax, %eax
10000342f: 75 29                       	jne	41 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x7a>
100003431: 41 83 ff 03                 	cmpl	$3, %r15d
100003435: 73 23                       	jae	35 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x7a>
100003437: 49 8b 7e 78                 	movq	120(%r14), %rdi
10000343b: 49 63 c5                    	movslq	%r13d, %rax
10000343e: 4c 0f af e0                 	imulq	%rax, %r12
100003442: 31 f6                       	xorl	%esi, %esi
100003444: 85 c0                       	testl	%eax, %eax
100003446: 49 0f 4f f4                 	cmovgq	%r12, %rsi
10000344a: 44 89 fa                    	movl	%r15d, %edx
10000344d: e8 fa 7b 00 00              	callq	31738 <dyld_stub_binder+0x10000b04c>
100003452: 85 c0                       	testl	%eax, %eax
100003454: 0f 84 9f 00 00 00           	je	159 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x119>
10000345a: 48 c7 43 78 00 00 00 00     	movq	$0, 120(%rbx)
100003462: 48 c7 43 70 00 00 00 00     	movq	$0, 112(%rbx)
10000346a: 48 c7 43 68 00 00 00 00     	movq	$0, 104(%rbx)
100003472: 48 c7 43 60 00 00 00 00     	movq	$0, 96(%rbx)
10000347a: 48 c7 43 58 00 00 00 00     	movq	$0, 88(%rbx)
100003482: 48 c7 43 50 00 00 00 00     	movq	$0, 80(%rbx)
10000348a: 48 c7 43 48 00 00 00 00     	movq	$0, 72(%rbx)
100003492: 48 c7 43 40 00 00 00 00     	movq	$0, 64(%rbx)
10000349a: 48 c7 43 38 00 00 00 00     	movq	$0, 56(%rbx)
1000034a2: 48 c7 43 30 00 00 00 00     	movq	$0, 48(%rbx)
1000034aa: 48 c7 43 28 00 00 00 00     	movq	$0, 40(%rbx)
1000034b2: 48 c7 43 20 00 00 00 00     	movq	$0, 32(%rbx)
1000034ba: 48 c7 43 18 00 00 00 00     	movq	$0, 24(%rbx)
1000034c2: 48 c7 43 10 00 00 00 00     	movq	$0, 16(%rbx)
1000034ca: 48 c7 43 08 00 00 00 00     	movq	$0, 8(%rbx)
1000034d2: 48 c7 03 00 00 00 00        	movq	$0, (%rbx)
1000034d9: 48 c7 c0 ff ff ff ff        	movq	$-1, %rax
1000034e0: 48 89 83 80 00 00 00        	movq	%rax, 128(%rbx)
1000034e7: 48 89 d8                    	movq	%rbx, %rax
1000034ea: 48 83 c4 08                 	addq	$8, %rsp
1000034ee: 5b                          	popq	%rbx
1000034ef: 41 5c                       	popq	%r12
1000034f1: 41 5d                       	popq	%r13
1000034f3: 41 5e                       	popq	%r14
1000034f5: 41 5f                       	popq	%r15
1000034f7: 5d                          	popq	%rbp
1000034f8: c3                          	retq
1000034f9: 49 8b 7e 78                 	movq	120(%r14), %rdi
1000034fd: e8 50 7b 00 00              	callq	31568 <dyld_stub_binder+0x10000b052>
100003502: 49 81 c6 88 00 00 00        	addq	$136, %r14
100003509: b9 10 00 00 00              	movl	$16, %ecx
10000350e: 48 89 df                    	movq	%rbx, %rdi
100003511: 4c 89 f6                    	movq	%r14, %rsi
100003514: f3 48 a5                    	rep		movsq	(%rsi), %es:(%rdi)
100003517: eb c7                       	jmp	-57 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x100>
100003519: e8 d2 08 00 00              	callq	2258 <__ZNSt3__1L16__throw_bad_castEv>
10000351e: 66 90                       	nop

0000000100003520 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj:
100003520: 55                          	pushq	%rbp
100003521: 48 89 e5                    	movq	%rsp, %rbp
100003524: 41 57                       	pushq	%r15
100003526: 41 56                       	pushq	%r14
100003528: 53                          	pushq	%rbx
100003529: 50                          	pushq	%rax
10000352a: 48 89 fb                    	movq	%rdi, %rbx
10000352d: 48 83 7e 78 00              	cmpq	$0, 120(%rsi)
100003532: 74 2e                       	je	46 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj+0x42>
100003534: 49 89 f6                    	movq	%rsi, %r14
100003537: 48 8b 06                    	movq	(%rsi), %rax
10000353a: 48 89 f7                    	movq	%rsi, %rdi
10000353d: ff 50 30                    	callq	*48(%rax)
100003540: 85 c0                       	testl	%eax, %eax
100003542: 75 1e                       	jne	30 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj+0x42>
100003544: 4c 8d 7d 10                 	leaq	16(%rbp), %r15
100003548: 49 8b 7e 78                 	movq	120(%r14), %rdi
10000354c: 49 8b b7 80 00 00 00        	movq	128(%r15), %rsi
100003553: 31 d2                       	xorl	%edx, %edx
100003555: e8 f2 7a 00 00              	callq	31474 <dyld_stub_binder+0x10000b04c>
10000355a: 85 c0                       	testl	%eax, %eax
10000355c: 0f 84 98 00 00 00           	je	152 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj+0xda>
100003562: 48 c7 43 78 00 00 00 00     	movq	$0, 120(%rbx)
10000356a: 48 c7 43 70 00 00 00 00     	movq	$0, 112(%rbx)
100003572: 48 c7 43 68 00 00 00 00     	movq	$0, 104(%rbx)
10000357a: 48 c7 43 60 00 00 00 00     	movq	$0, 96(%rbx)
100003582: 48 c7 43 58 00 00 00 00     	movq	$0, 88(%rbx)
10000358a: 48 c7 43 50 00 00 00 00     	movq	$0, 80(%rbx)
100003592: 48 c7 43 48 00 00 00 00     	movq	$0, 72(%rbx)
10000359a: 48 c7 43 40 00 00 00 00     	movq	$0, 64(%rbx)
1000035a2: 48 c7 43 38 00 00 00 00     	movq	$0, 56(%rbx)
1000035aa: 48 c7 43 30 00 00 00 00     	movq	$0, 48(%rbx)
1000035b2: 48 c7 43 28 00 00 00 00     	movq	$0, 40(%rbx)
1000035ba: 48 c7 43 20 00 00 00 00     	movq	$0, 32(%rbx)
1000035c2: 48 c7 43 18 00 00 00 00     	movq	$0, 24(%rbx)
1000035ca: 48 c7 43 10 00 00 00 00     	movq	$0, 16(%rbx)
1000035d2: 48 c7 43 08 00 00 00 00     	movq	$0, 8(%rbx)
1000035da: 48 c7 03 00 00 00 00        	movq	$0, (%rbx)
1000035e1: 48 c7 83 80 00 00 00 ff ff ff ff    	movq	$-1, 128(%rbx)
1000035ec: 48 89 d8                    	movq	%rbx, %rax
1000035ef: 48 83 c4 08                 	addq	$8, %rsp
1000035f3: 5b                          	popq	%rbx
1000035f4: 41 5e                       	popq	%r14
1000035f6: 41 5f                       	popq	%r15
1000035f8: 5d                          	popq	%rbp
1000035f9: c3                          	retq
1000035fa: 49 81 c6 88 00 00 00        	addq	$136, %r14
100003601: b9 10 00 00 00              	movl	$16, %ecx
100003606: 4c 89 f7                    	movq	%r14, %rdi
100003609: 4c 89 fe                    	movq	%r15, %rsi
10000360c: f3 48 a5                    	rep		movsq	(%rsi), %es:(%rdi)
10000360f: ba 88 00 00 00              	movl	$136, %edx
100003614: 48 89 df                    	movq	%rbx, %rdi
100003617: 4c 89 fe                    	movq	%r15, %rsi
10000361a: e8 3f 7a 00 00              	callq	31295 <dyld_stub_binder+0x10000b05e>
10000361f: eb cb                       	jmp	-53 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj+0xcc>
100003621: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000362b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100003630 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv:
100003630: 55                          	pushq	%rbp
100003631: 48 89 e5                    	movq	%rsp, %rbp
100003634: 41 57                       	pushq	%r15
100003636: 41 56                       	pushq	%r14
100003638: 41 55                       	pushq	%r13
10000363a: 41 54                       	pushq	%r12
10000363c: 53                          	pushq	%rbx
10000363d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100003644: 48 8b 05 55 8a 00 00        	movq	35413(%rip), %rax
10000364b: 48 8b 00                    	movq	(%rax), %rax
10000364e: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100003652: 45 31 ed                    	xorl	%r13d, %r13d
100003655: 48 83 7f 78 00              	cmpq	$0, 120(%rdi)
10000365a: 0f 84 9b 01 00 00           	je	411 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x1cb>
100003660: 49 89 ff                    	movq	%rdi, %r15
100003663: 48 8b 87 80 00 00 00        	movq	128(%rdi), %rax
10000366a: 48 85 c0                    	testq	%rax, %rax
10000366d: 0f 84 f0 01 00 00           	je	496 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x233>
100003673: 41 8b 8f 8c 01 00 00        	movl	396(%r15), %ecx
10000367a: f6 c1 10                    	testb	$16, %cl
10000367d: 75 3a                       	jne	58 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x89>
10000367f: f6 c1 08                    	testb	$8, %cl
100003682: 0f 84 70 01 00 00           	je	368 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x1c8>
100003688: 49 8d b7 08 01 00 00        	leaq	264(%r15), %rsi
10000368f: 48 8d bd 50 ff ff ff        	leaq	-176(%rbp), %rdi
100003696: b9 10 00 00 00              	movl	$16, %ecx
10000369b: f3 48 a5                    	rep		movsq	(%rsi), %es:(%rdi)
10000369e: 41 80 bf 92 01 00 00 00     	cmpb	$0, 402(%r15)
1000036a6: 0f 84 b4 00 00 00           	je	180 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x130>
1000036ac: 4d 8b 77 20                 	movq	32(%r15), %r14
1000036b0: 4d 2b 77 18                 	subq	24(%r15), %r14
1000036b4: e9 d4 00 00 00              	jmp	212 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x15d>
1000036b9: 49 8b 47 30                 	movq	48(%r15), %rax
1000036bd: 49 3b 47 28                 	cmpq	40(%r15), %rax
1000036c1: 74 1d                       	je	29 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0xb0>
1000036c3: 49 8b 07                    	movq	(%r15), %rax
1000036c6: 41 bd ff ff ff ff           	movl	$4294967295, %r13d
1000036cc: 4c 89 ff                    	movq	%r15, %rdi
1000036cf: be ff ff ff ff              	movl	$4294967295, %esi
1000036d4: ff 50 68                    	callq	*104(%rax)
1000036d7: 83 f8 ff                    	cmpl	$-1, %eax
1000036da: 0f 84 1b 01 00 00           	je	283 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x1cb>
1000036e0: 4d 8d b7 88 00 00 00        	leaq	136(%r15), %r14
1000036e7: 41 bd ff ff ff ff           	movl	$4294967295, %r13d
1000036ed: 0f 1f 00                    	nopl	(%rax)
1000036f0: 49 8b 57 40                 	movq	64(%r15), %rdx
1000036f4: 49 8b bf 80 00 00 00        	movq	128(%r15), %rdi
1000036fb: 49 8b 4f 60                 	movq	96(%r15), %rcx
1000036ff: 48 01 d1                    	addq	%rdx, %rcx
100003702: 48 8b 07                    	movq	(%rdi), %rax
100003705: 4c 89 f6                    	movq	%r14, %rsi
100003708: 4c 8d 85 50 ff ff ff        	leaq	-176(%rbp), %r8
10000370f: ff 50 28                    	callq	*40(%rax)
100003712: 89 c3                       	movl	%eax, %ebx
100003714: 4c 8b a5 50 ff ff ff        	movq	-176(%rbp), %r12
10000371b: 49 8b 7f 40                 	movq	64(%r15), %rdi
10000371f: 49 8b 4f 78                 	movq	120(%r15), %rcx
100003723: 49 29 fc                    	subq	%rdi, %r12
100003726: be 01 00 00 00              	movl	$1, %esi
10000372b: 4c 89 e2                    	movq	%r12, %rdx
10000372e: e8 25 79 00 00              	callq	31013 <dyld_stub_binder+0x10000b058>
100003733: 4c 39 e0                    	cmpq	%r12, %rax
100003736: 0f 85 bf 00 00 00           	jne	191 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x1cb>
10000373c: 83 fb 01                    	cmpl	$1, %ebx
10000373f: 74 af                       	je	-81 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0xc0>
100003741: 83 fb 02                    	cmpl	$2, %ebx
100003744: 0f 84 b1 00 00 00           	je	177 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x1cb>
10000374a: 49 8b 7f 78                 	movq	120(%r15), %rdi
10000374e: e8 e7 78 00 00              	callq	30951 <dyld_stub_binder+0x10000b03a>
100003753: 85 c0                       	testl	%eax, %eax
100003755: 0f 85 a0 00 00 00           	jne	160 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x1cb>
10000375b: e9 98 00 00 00              	jmp	152 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x1c8>
100003760: 48 8b 08                    	movq	(%rax), %rcx
100003763: 48 89 c7                    	movq	%rax, %rdi
100003766: ff 51 30                    	callq	*48(%rcx)
100003769: 49 8b 4f 48                 	movq	72(%r15), %rcx
10000376d: 4d 8b 77 50                 	movq	80(%r15), %r14
100003771: 49 29 ce                    	subq	%rcx, %r14
100003774: 85 c0                       	testl	%eax, %eax
100003776: 0f 8e a4 00 00 00           	jle	164 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x1f0>
10000377c: 49 8b 4f 20                 	movq	32(%r15), %rcx
100003780: 49 2b 4f 18                 	subq	24(%r15), %rcx
100003784: 89 c0                       	movl	%eax, %eax
100003786: 48 0f af c8                 	imulq	%rax, %rcx
10000378a: 49 01 ce                    	addq	%rcx, %r14
10000378d: 31 db                       	xorl	%ebx, %ebx
10000378f: 49 8b 7f 78                 	movq	120(%r15), %rdi
100003793: 49 f7 de                    	negq	%r14
100003796: 4c 89 f6                    	movq	%r14, %rsi
100003799: ba 01 00 00 00              	movl	$1, %edx
10000379e: e8 a9 78 00 00              	callq	30889 <dyld_stub_binder+0x10000b04c>
1000037a3: 85 c0                       	testl	%eax, %eax
1000037a5: 74 08                       	je	8 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x17f>
1000037a7: 41 bd ff ff ff ff           	movl	$4294967295, %r13d
1000037ad: eb 4c                       	jmp	76 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x1cb>
1000037af: 84 db                       	testb	%bl, %bl
1000037b1: 74 16                       	je	22 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x199>
1000037b3: 49 8d bf 88 00 00 00        	leaq	136(%r15), %rdi
1000037ba: 48 8d b5 50 ff ff ff        	leaq	-176(%rbp), %rsi
1000037c1: b9 10 00 00 00              	movl	$16, %ecx
1000037c6: f3 48 a5                    	rep		movsq	(%rsi), %es:(%rdi)
1000037c9: 49 8b 47 40                 	movq	64(%r15), %rax
1000037cd: 49 89 47 50                 	movq	%rax, 80(%r15)
1000037d1: 49 89 47 48                 	movq	%rax, 72(%r15)
1000037d5: 41 c7 87 8c 01 00 00 00 00 00 00    	movl	$0, 396(%r15)
1000037e0: 49 c7 47 10 00 00 00 00     	movq	$0, 16(%r15)
1000037e8: 49 c7 47 18 00 00 00 00     	movq	$0, 24(%r15)
1000037f0: 49 c7 47 20 00 00 00 00     	movq	$0, 32(%r15)
1000037f8: 45 31 ed                    	xorl	%r13d, %r13d
1000037fb: 48 8b 05 9e 88 00 00        	movq	34974(%rip), %rax
100003802: 48 8b 00                    	movq	(%rax), %rax
100003805: 48 3b 45 d0                 	cmpq	-48(%rbp), %rax
100003809: 75 53                       	jne	83 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x22e>
10000380b: 44 89 e8                    	movl	%r13d, %eax
10000380e: 48 81 c4 88 00 00 00        	addq	$136, %rsp
100003815: 5b                          	popq	%rbx
100003816: 41 5c                       	popq	%r12
100003818: 41 5d                       	popq	%r13
10000381a: 41 5e                       	popq	%r14
10000381c: 41 5f                       	popq	%r15
10000381e: 5d                          	popq	%rbp
10000381f: c3                          	retq
100003820: 4d 8b 47 18                 	movq	24(%r15), %r8
100003824: 4d 3b 47 20                 	cmpq	32(%r15), %r8
100003828: 0f 84 5f ff ff ff           	je	-161 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x15d>
10000382e: 49 8b 57 40                 	movq	64(%r15), %rdx
100003832: 49 8b bf 80 00 00 00        	movq	128(%r15), %rdi
100003839: 4d 2b 47 10                 	subq	16(%r15), %r8
10000383d: 48 8b 07                    	movq	(%rdi), %rax
100003840: 48 8d b5 50 ff ff ff        	leaq	-176(%rbp), %rsi
100003847: ff 50 40                    	callq	*64(%rax)
10000384a: 48 98                       	cltq
10000384c: 4d 03 77 48                 	addq	72(%r15), %r14
100003850: 49 29 c6                    	subq	%rax, %r14
100003853: 4d 2b 77 40                 	subq	64(%r15), %r14
100003857: b3 01                       	movb	$1, %bl
100003859: e9 31 ff ff ff              	jmp	-207 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x15f>
10000385e: e8 bf 77 00 00              	callq	30655 <dyld_stub_binder+0x10000b022>
100003863: e8 88 05 00 00              	callq	1416 <__ZNSt3__1L16__throw_bad_castEv>
100003868: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100003870 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv:
100003870: 55                          	pushq	%rbp
100003871: 48 89 e5                    	movq	%rsp, %rbp
100003874: 41 57                       	pushq	%r15
100003876: 41 56                       	pushq	%r14
100003878: 41 54                       	pushq	%r12
10000387a: 53                          	pushq	%rbx
10000387b: 48 83 ec 10                 	subq	$16, %rsp
10000387f: 48 83 7f 78 00              	cmpq	$0, 120(%rdi)
100003884: 0f 84 87 00 00 00           	je	135 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0xa1>
10000388a: 48 89 fb                    	movq	%rdi, %rbx
10000388d: f6 87 8c 01 00 00 08        	testb	$8, 396(%rdi)
100003894: 0f 85 81 00 00 00           	jne	129 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0xab>
10000389a: 48 c7 43 28 00 00 00 00     	movq	$0, 40(%rbx)
1000038a2: 48 c7 43 30 00 00 00 00     	movq	$0, 48(%rbx)
1000038aa: 48 c7 43 38 00 00 00 00     	movq	$0, 56(%rbx)
1000038b2: 31 c0                       	xorl	%eax, %eax
1000038b4: 80 bb 92 01 00 00 00        	cmpb	$0, 402(%rbx)
1000038bb: 0f 94 c0                    	sete	%al
1000038be: b9 68 00 00 00              	movl	$104, %ecx
1000038c3: ba 40 00 00 00              	movl	$64, %edx
1000038c8: 48 0f 44 d1                 	cmoveq	%rcx, %rdx
1000038cc: 48 c1 e0 04                 	shlq	$4, %rax
1000038d0: 48 8b 0c 13                 	movq	(%rbx,%rdx), %rcx
1000038d4: 48 8b 74 18 60              	movq	96(%rax,%rbx), %rsi
1000038d9: 48 01 ce                    	addq	%rcx, %rsi
1000038dc: 48 89 4b 10                 	movq	%rcx, 16(%rbx)
1000038e0: 48 89 73 18                 	movq	%rsi, 24(%rbx)
1000038e4: 48 89 73 20                 	movq	%rsi, 32(%rbx)
1000038e8: c7 83 8c 01 00 00 08 00 00 00       	movl	$8, 396(%rbx)
1000038f2: b0 01                       	movb	$1, %al
1000038f4: 48 85 f6                    	testq	%rsi, %rsi
1000038f7: 74 2d                       	je	45 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0xb6>
1000038f9: 84 c0                       	testb	%al, %al
1000038fb: 74 41                       	je	65 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0xce>
1000038fd: 48 8b 43 20                 	movq	32(%rbx), %rax
100003901: 45 31 f6                    	xorl	%r14d, %r14d
100003904: 48 39 c6                    	cmpq	%rax, %rsi
100003907: 74 60                       	je	96 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0xf9>
100003909: 0f b6 06                    	movzbl	(%rsi), %eax
10000390c: e9 b7 01 00 00              	jmp	439 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x258>
100003911: b8 ff ff ff ff              	movl	$4294967295, %eax
100003916: e9 d2 01 00 00              	jmp	466 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x27d>
10000391b: 48 8b 73 18                 	movq	24(%rbx), %rsi
10000391f: 31 c0                       	xorl	%eax, %eax
100003921: 48 85 f6                    	testq	%rsi, %rsi
100003924: 75 d3                       	jne	-45 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x89>
100003926: 48 8d 75 e0                 	leaq	-32(%rbp), %rsi
10000392a: 48 8d 4d df                 	leaq	-33(%rbp), %rcx
10000392e: 48 89 4b 10                 	movq	%rcx, 16(%rbx)
100003932: 48 89 73 18                 	movq	%rsi, 24(%rbx)
100003936: 48 89 73 20                 	movq	%rsi, 32(%rbx)
10000393a: 84 c0                       	testb	%al, %al
10000393c: 75 bf                       	jne	-65 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x8d>
10000393e: 48 8b 43 20                 	movq	32(%rbx), %rax
100003942: 48 89 c1                    	movq	%rax, %rcx
100003945: 48 2b 4b 10                 	subq	16(%rbx), %rcx
100003949: 48 89 ca                    	movq	%rcx, %rdx
10000394c: 48 c1 ea 3f                 	shrq	$63, %rdx
100003950: 48 01 ca                    	addq	%rcx, %rdx
100003953: 48 d1 fa                    	sarq	%rdx
100003956: 48 83 fa 04                 	cmpq	$4, %rdx
10000395a: 41 be 04 00 00 00           	movl	$4, %r14d
100003960: 4c 0f 42 f2                 	cmovbq	%rdx, %r14
100003964: 48 39 c6                    	cmpq	%rax, %rsi
100003967: 75 a0                       	jne	-96 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x99>
100003969: 48 8b 7b 10                 	movq	16(%rbx), %rdi
10000396d: 4c 29 f6                    	subq	%r14, %rsi
100003970: 4c 89 f2                    	movq	%r14, %rdx
100003973: e8 ec 76 00 00              	callq	30444 <dyld_stub_binder+0x10000b064>
100003978: 80 bb 92 01 00 00 00        	cmpb	$0, 402(%rbx)
10000397f: 74 45                       	je	69 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x156>
100003981: 48 8b 7b 10                 	movq	16(%rbx), %rdi
100003985: 48 8b 53 20                 	movq	32(%rbx), %rdx
100003989: 4c 29 f2                    	subq	%r14, %rdx
10000398c: 48 29 fa                    	subq	%rdi, %rdx
10000398f: 4c 01 f7                    	addq	%r14, %rdi
100003992: 48 8b 4b 78                 	movq	120(%rbx), %rcx
100003996: be 01 00 00 00              	movl	$1, %esi
10000399b: e8 a6 76 00 00              	callq	30374 <dyld_stub_binder+0x10000b046>
1000039a0: 48 85 c0                    	testq	%rax, %rax
1000039a3: 0f 84 1a 01 00 00           	je	282 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x253>
1000039a9: 48 8b 4b 10                 	movq	16(%rbx), %rcx
1000039ad: 4a 8d 14 31                 	leaq	(%rcx,%r14), %rdx
1000039b1: 48 01 d0                    	addq	%rdx, %rax
1000039b4: 48 89 53 18                 	movq	%rdx, 24(%rbx)
1000039b8: 48 89 43 20                 	movq	%rax, 32(%rbx)
1000039bc: 42 0f b6 04 31              	movzbl	(%rcx,%r14), %eax
1000039c1: e9 02 01 00 00              	jmp	258 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x258>
1000039c6: 48 8b 73 48                 	movq	72(%rbx), %rsi
1000039ca: 48 8b 43 50                 	movq	80(%rbx), %rax
1000039ce: 48 89 c2                    	movq	%rax, %rdx
1000039d1: 48 29 f2                    	subq	%rsi, %rdx
1000039d4: 74 11                       	je	17 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x177>
1000039d6: 48 8b 7b 40                 	movq	64(%rbx), %rdi
1000039da: e8 85 76 00 00              	callq	30341 <dyld_stub_binder+0x10000b064>
1000039df: 48 8b 73 48                 	movq	72(%rbx), %rsi
1000039e3: 48 8b 43 50                 	movq	80(%rbx), %rax
1000039e7: 48 29 f0                    	subq	%rsi, %rax
1000039ea: 48 8b 53 40                 	movq	64(%rbx), %rdx
1000039ee: 48 01 d0                    	addq	%rdx, %rax
1000039f1: 48 89 43 48                 	movq	%rax, 72(%rbx)
1000039f5: 48 8d 4b 58                 	leaq	88(%rbx), %rcx
1000039f9: 48 39 ca                    	cmpq	%rcx, %rdx
1000039fc: 74 06                       	je	6 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x194>
1000039fe: 48 8b 4b 60                 	movq	96(%rbx), %rcx
100003a02: eb 05                       	jmp	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x199>
100003a04: b9 08 00 00 00              	movl	$8, %ecx
100003a09: 48 01 ca                    	addq	%rcx, %rdx
100003a0c: 48 89 53 50                 	movq	%rdx, 80(%rbx)
100003a10: 48 8b 4b 70                 	movq	112(%rbx), %rcx
100003a14: 4c 29 f1                    	subq	%r14, %rcx
100003a17: 48 29 c2                    	subq	%rax, %rdx
100003a1a: 48 39 ca                    	cmpq	%rcx, %rdx
100003a1d: 48 0f 43 d1                 	cmovaeq	%rcx, %rdx
100003a21: 4c 8d bb 88 00 00 00        	leaq	136(%rbx), %r15
100003a28: 48 8d bb 08 01 00 00        	leaq	264(%rbx), %rdi
100003a2f: b9 10 00 00 00              	movl	$16, %ecx
100003a34: 4c 89 fe                    	movq	%r15, %rsi
100003a37: f3 48 a5                    	rep		movsq	(%rsi), %es:(%rdi)
100003a3a: 48 8b 4b 78                 	movq	120(%rbx), %rcx
100003a3e: be 01 00 00 00              	movl	$1, %esi
100003a43: 48 89 c7                    	movq	%rax, %rdi
100003a46: e8 fb 75 00 00              	callq	30203 <dyld_stub_binder+0x10000b046>
100003a4b: 48 85 c0                    	testq	%rax, %rax
100003a4e: 74 73                       	je	115 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x253>
100003a50: 48 8b bb 80 00 00 00        	movq	128(%rbx), %rdi
100003a57: 48 85 ff                    	testq	%rdi, %rdi
100003a5a: 0f 84 9a 00 00 00           	je	154 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x28a>
100003a60: 48 03 43 48                 	addq	72(%rbx), %rax
100003a64: 4c 8d 43 48                 	leaq	72(%rbx), %r8
100003a68: 48 89 43 50                 	movq	%rax, 80(%rbx)
100003a6c: 4c 8b 53 10                 	movq	16(%rbx), %r10
100003a70: 48 8b 53 40                 	movq	64(%rbx), %rdx
100003a74: 4f 8d 0c 32                 	leaq	(%r10,%r14), %r9
100003a78: 4c 03 53 70                 	addq	112(%rbx), %r10
100003a7c: 4c 8b 1f                    	movq	(%rdi), %r11
100003a7f: 4c 8d 65 d0                 	leaq	-48(%rbp), %r12
100003a83: 4c 89 fe                    	movq	%r15, %rsi
100003a86: 48 89 c1                    	movq	%rax, %rcx
100003a89: 41 54                       	pushq	%r12
100003a8b: 41 52                       	pushq	%r10
100003a8d: 41 ff 53 20                 	callq	*32(%r11)
100003a91: 48 83 c4 10                 	addq	$16, %rsp
100003a95: 83 f8 03                    	cmpl	$3, %eax
100003a98: 75 0e                       	jne	14 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x238>
100003a9a: 4c 8b 73 40                 	movq	64(%rbx), %r14
100003a9e: 48 8b 43 50                 	movq	80(%rbx), %rax
100003aa2: 4c 89 73 10                 	movq	%r14, 16(%rbx)
100003aa6: eb 0d                       	jmp	13 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x245>
100003aa8: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100003aac: 4c 03 73 10                 	addq	16(%rbx), %r14
100003ab0: 4c 39 f0                    	cmpq	%r14, %rax
100003ab3: 74 0e                       	je	14 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x253>
100003ab5: 4c 89 73 18                 	movq	%r14, 24(%rbx)
100003ab9: 48 89 43 20                 	movq	%rax, 32(%rbx)
100003abd: 41 0f b6 06                 	movzbl	(%r14), %eax
100003ac1: eb 05                       	jmp	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x258>
100003ac3: b8 ff ff ff ff              	movl	$4294967295, %eax
100003ac8: 48 8d 4d df                 	leaq	-33(%rbp), %rcx
100003acc: 48 39 4b 10                 	cmpq	%rcx, 16(%rbx)
100003ad0: 75 1b                       	jne	27 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x27d>
100003ad2: 48 83 c3 10                 	addq	$16, %rbx
100003ad6: 48 c7 43 10 00 00 00 00     	movq	$0, 16(%rbx)
100003ade: 48 c7 43 08 00 00 00 00     	movq	$0, 8(%rbx)
100003ae6: 48 c7 03 00 00 00 00        	movq	$0, (%rbx)
100003aed: 48 83 c4 10                 	addq	$16, %rsp
100003af1: 5b                          	popq	%rbx
100003af2: 41 5c                       	popq	%r12
100003af4: 41 5e                       	popq	%r14
100003af6: 41 5f                       	popq	%r15
100003af8: 5d                          	popq	%rbp
100003af9: c3                          	retq
100003afa: e8 f1 02 00 00              	callq	753 <__ZNSt3__1L16__throw_bad_castEv>
100003aff: 90                          	nop

0000000100003b00 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi:
100003b00: 55                          	pushq	%rbp
100003b01: 48 89 e5                    	movq	%rsp, %rbp
100003b04: b8 ff ff ff ff              	movl	$4294967295, %eax
100003b09: 48 83 7f 78 00              	cmpq	$0, 120(%rdi)
100003b0e: 74 2c                       	je	44 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x3c>
100003b10: 48 8b 4f 18                 	movq	24(%rdi), %rcx
100003b14: 48 39 4f 10                 	cmpq	%rcx, 16(%rdi)
100003b18: 73 22                       	jae	34 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x3c>
100003b1a: 83 fe ff                    	cmpl	$-1, %esi
100003b1d: 74 1f                       	je	31 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x3e>
100003b1f: f6 87 88 01 00 00 10        	testb	$16, 392(%rdi)
100003b26: 75 06                       	jne	6 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x2e>
100003b28: 40 38 71 ff                 	cmpb	%sil, -1(%rcx)
100003b2c: 75 0e                       	jne	14 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x3c>
100003b2e: 48 8d 41 ff                 	leaq	-1(%rcx), %rax
100003b32: 48 89 47 18                 	movq	%rax, 24(%rdi)
100003b36: 40 88 71 ff                 	movb	%sil, -1(%rcx)
100003b3a: 89 f0                       	movl	%esi, %eax
100003b3c: 5d                          	popq	%rbp
100003b3d: c3                          	retq
100003b3e: 48 ff c9                    	decq	%rcx
100003b41: 48 89 4f 18                 	movq	%rcx, 24(%rdi)
100003b45: 31 c0                       	xorl	%eax, %eax
100003b47: 5d                          	popq	%rbp
100003b48: c3                          	retq
100003b49: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100003b50 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi:
100003b50: 55                          	pushq	%rbp
100003b51: 48 89 e5                    	movq	%rsp, %rbp
100003b54: 41 57                       	pushq	%r15
100003b56: 41 56                       	pushq	%r14
100003b58: 41 55                       	pushq	%r13
100003b5a: 41 54                       	pushq	%r12
100003b5c: 53                          	pushq	%rbx
100003b5d: 48 83 ec 38                 	subq	$56, %rsp
100003b61: 48 83 7f 78 00              	cmpq	$0, 120(%rdi)
100003b66: 0f 84 5f 02 00 00           	je	607 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x27b>
100003b6c: 49 89 fe                    	movq	%rdi, %r14
100003b6f: f6 87 8c 01 00 00 10        	testb	$16, 396(%rdi)
100003b76: 75 32                       	jne	50 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x5a>
100003b78: 49 c7 46 20 00 00 00 00     	movq	$0, 32(%r14)
100003b80: 49 c7 46 18 00 00 00 00     	movq	$0, 24(%r14)
100003b88: 49 c7 46 10 00 00 00 00     	movq	$0, 16(%r14)
100003b90: 49 8b 46 60                 	movq	96(%r14), %rax
100003b94: 48 83 f8 09                 	cmpq	$9, %rax
100003b98: 72 35                       	jb	53 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x7f>
100003b9a: 41 80 be 92 01 00 00 00     	cmpb	$0, 402(%r14)
100003ba2: 74 61                       	je	97 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0xb5>
100003ba4: 49 8b 56 40                 	movq	64(%r14), %rdx
100003ba8: eb 63                       	jmp	99 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0xbd>
100003baa: 49 8b 56 28                 	movq	40(%r14), %rdx
100003bae: 4d 8b 66 38                 	movq	56(%r14), %r12
100003bb2: 49 89 d5                    	movq	%rdx, %r13
100003bb5: 49 8b 4e 30                 	movq	48(%r14), %rcx
100003bb9: 83 fe ff                    	cmpl	$-1, %esi
100003bbc: 75 77                       	jne	119 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0xe5>
100003bbe: 49 89 cf                    	movq	%rcx, %r15
100003bc1: 49 29 d7                    	subq	%rdx, %r15
100003bc4: 0f 85 9e 00 00 00           	jne	158 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x118>
100003bca: e9 da 00 00 00              	jmp	218 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x159>
100003bcf: 49 c7 46 38 00 00 00 00     	movq	$0, 56(%r14)
100003bd7: 49 c7 46 30 00 00 00 00     	movq	$0, 48(%r14)
100003bdf: 49 c7 46 28 00 00 00 00     	movq	$0, 40(%r14)
100003be7: 31 d2                       	xorl	%edx, %edx
100003be9: 45 31 e4                    	xorl	%r12d, %r12d
100003bec: 45 31 ed                    	xorl	%r13d, %r13d
100003bef: 41 c7 86 8c 01 00 00 10 00 00 00    	movl	$16, 396(%r14)
100003bfa: 49 8b 4e 30                 	movq	48(%r14), %rcx
100003bfe: 83 fe ff                    	cmpl	$-1, %esi
100003c01: 75 32                       	jne	50 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0xe5>
100003c03: eb b9                       	jmp	-71 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x6e>
100003c05: 49 8b 56 68                 	movq	104(%r14), %rdx
100003c09: 49 8b 46 70                 	movq	112(%r14), %rax
100003c0d: 4c 8d 64 10 ff              	leaq	-1(%rax,%rdx), %r12
100003c12: 49 89 56 30                 	movq	%rdx, 48(%r14)
100003c16: 49 89 56 28                 	movq	%rdx, 40(%r14)
100003c1a: 4d 89 66 38                 	movq	%r12, 56(%r14)
100003c1e: 49 89 d5                    	movq	%rdx, %r13
100003c21: 41 c7 86 8c 01 00 00 10 00 00 00    	movl	$16, 396(%r14)
100003c2c: 49 8b 4e 30                 	movq	48(%r14), %rcx
100003c30: 83 fe ff                    	cmpl	$-1, %esi
100003c33: 74 89                       	je	-119 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x6e>
100003c35: 48 85 c9                    	testq	%rcx, %rcx
100003c38: 75 14                       	jne	20 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0xfe>
100003c3a: 48 8d 45 d8                 	leaq	-40(%rbp), %rax
100003c3e: 48 8d 4d d7                 	leaq	-41(%rbp), %rcx
100003c42: 49 89 4e 30                 	movq	%rcx, 48(%r14)
100003c46: 49 89 4e 28                 	movq	%rcx, 40(%r14)
100003c4a: 49 89 46 38                 	movq	%rax, 56(%r14)
100003c4e: 40 88 31                    	movb	%sil, (%rcx)
100003c51: 49 8b 56 28                 	movq	40(%r14), %rdx
100003c55: 49 8b 4e 30                 	movq	48(%r14), %rcx
100003c59: 48 ff c1                    	incq	%rcx
100003c5c: 49 89 4e 30                 	movq	%rcx, 48(%r14)
100003c60: 49 89 cf                    	movq	%rcx, %r15
100003c63: 49 29 d7                    	subq	%rdx, %r15
100003c66: 74 41                       	je	65 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x159>
100003c68: 89 75 bc                    	movl	%esi, -68(%rbp)
100003c6b: 41 80 be 92 01 00 00 00     	cmpb	$0, 402(%r14)
100003c73: 74 41                       	je	65 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x166>
100003c75: 49 8b 4e 78                 	movq	120(%r14), %rcx
100003c79: be 01 00 00 00              	movl	$1, %esi
100003c7e: 48 89 d7                    	movq	%rdx, %rdi
100003c81: 4c 89 fa                    	movq	%r15, %rdx
100003c84: e8 cf 73 00 00              	callq	29647 <dyld_stub_binder+0x10000b058>
100003c89: 48 89 c1                    	movq	%rax, %rcx
100003c8c: b8 ff ff ff ff              	movl	$4294967295, %eax
100003c91: 4c 39 f9                    	cmpq	%r15, %rcx
100003c94: 0f 85 36 01 00 00           	jne	310 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x280>
100003c9a: 4d 89 6e 30                 	movq	%r13, 48(%r14)
100003c9e: 4d 89 6e 28                 	movq	%r13, 40(%r14)
100003ca2: 4d 89 66 38                 	movq	%r12, 56(%r14)
100003ca6: 8b 75 bc                    	movl	-68(%rbp), %esi
100003ca9: 31 c0                       	xorl	%eax, %eax
100003cab: 83 fe ff                    	cmpl	$-1, %esi
100003cae: 0f 45 c6                    	cmovnel	%esi, %eax
100003cb1: e9 1a 01 00 00              	jmp	282 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x280>
100003cb6: 4c 89 6d b0                 	movq	%r13, -80(%rbp)
100003cba: 4c 89 65 a8                 	movq	%r12, -88(%rbp)
100003cbe: 4d 8b 4e 40                 	movq	64(%r14), %r9
100003cc2: 4c 89 4d c0                 	movq	%r9, -64(%rbp)
100003cc6: 49 8b be 80 00 00 00        	movq	128(%r14), %rdi
100003ccd: 48 85 ff                    	testq	%rdi, %rdi
100003cd0: 0f 84 09 01 00 00           	je	265 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x28f>
100003cd6: 4d 8d be 88 00 00 00        	leaq	136(%r14), %r15
100003cdd: 49 8b 46 60                 	movq	96(%r14), %rax
100003ce1: 4c 01 c8                    	addq	%r9, %rax
100003ce4: 4c 8b 17                    	movq	(%rdi), %r10
100003ce7: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
100003ceb: 4c 8d 45 c8                 	leaq	-56(%rbp), %r8
100003cef: 4c 89 fe                    	movq	%r15, %rsi
100003cf2: 53                          	pushq	%rbx
100003cf3: 50                          	pushq	%rax
100003cf4: 41 ff 52 18                 	callq	*24(%r10)
100003cf8: 48 83 c4 10                 	addq	$16, %rsp
100003cfc: 49 8b 7e 28                 	movq	40(%r14), %rdi
100003d00: 48 39 7d c8                 	cmpq	%rdi, -56(%rbp)
100003d04: 0f 84 c1 00 00 00           	je	193 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x27b>
100003d0a: 41 89 c5                    	movl	%eax, %r13d
100003d0d: 0f 1f 00                    	nopl	(%rax)
100003d10: 41 83 fd 03                 	cmpl	$3, %r13d
100003d14: 0f 84 87 00 00 00           	je	135 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x251>
100003d1a: 41 83 fd 01                 	cmpl	$1, %r13d
100003d1e: 0f 87 a7 00 00 00           	ja	167 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x27b>
100003d24: 4c 8b 65 c0                 	movq	-64(%rbp), %r12
100003d28: 49 8b 7e 40                 	movq	64(%r14), %rdi
100003d2c: 49 8b 4e 78                 	movq	120(%r14), %rcx
100003d30: 49 29 fc                    	subq	%rdi, %r12
100003d33: be 01 00 00 00              	movl	$1, %esi
100003d38: 4c 89 e2                    	movq	%r12, %rdx
100003d3b: e8 18 73 00 00              	callq	29464 <dyld_stub_binder+0x10000b058>
100003d40: 4c 39 e0                    	cmpq	%r12, %rax
100003d43: 0f 85 82 00 00 00           	jne	130 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x27b>
100003d49: 41 83 fd 01                 	cmpl	$1, %r13d
100003d4d: 75 6f                       	jne	111 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x26e>
100003d4f: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100003d53: 49 8b 4e 30                 	movq	48(%r14), %rcx
100003d57: 49 89 56 28                 	movq	%rdx, 40(%r14)
100003d5b: 49 89 4e 38                 	movq	%rcx, 56(%r14)
100003d5f: 49 8b be 80 00 00 00        	movq	128(%r14), %rdi
100003d66: 48 85 ff                    	testq	%rdi, %rdi
100003d69: 74 74                       	je	116 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x28f>
100003d6b: 4d 8b 4e 40                 	movq	64(%r14), %r9
100003d6f: 49 8b 46 60                 	movq	96(%r14), %rax
100003d73: 4c 01 c8                    	addq	%r9, %rax
100003d76: 4c 8b 17                    	movq	(%rdi), %r10
100003d79: 4c 89 fe                    	movq	%r15, %rsi
100003d7c: 4c 8d 45 c8                 	leaq	-56(%rbp), %r8
100003d80: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
100003d84: 53                          	pushq	%rbx
100003d85: 50                          	pushq	%rax
100003d86: 41 ff 52 18                 	callq	*24(%r10)
100003d8a: 48 83 c4 10                 	addq	$16, %rsp
100003d8e: 41 89 c5                    	movl	%eax, %r13d
100003d91: 49 8b 7e 28                 	movq	40(%r14), %rdi
100003d95: 48 39 7d c8                 	cmpq	%rdi, -56(%rbp)
100003d99: 0f 85 71 ff ff ff           	jne	-143 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x1c0>
100003d9f: eb 2a                       	jmp	42 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x27b>
100003da1: 4d 8b 7e 30                 	movq	48(%r14), %r15
100003da5: 49 8b 4e 78                 	movq	120(%r14), %rcx
100003da9: 49 29 ff                    	subq	%rdi, %r15
100003dac: be 01 00 00 00              	movl	$1, %esi
100003db1: 4c 89 fa                    	movq	%r15, %rdx
100003db4: e8 9f 72 00 00              	callq	29343 <dyld_stub_binder+0x10000b058>
100003db9: 4c 39 f8                    	cmpq	%r15, %rax
100003dbc: 75 0d                       	jne	13 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x27b>
100003dbe: 4c 8b 65 a8                 	movq	-88(%rbp), %r12
100003dc2: 4c 8b 6d b0                 	movq	-80(%rbp), %r13
100003dc6: e9 cf fe ff ff              	jmp	-305 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x14a>
100003dcb: b8 ff ff ff ff              	movl	$4294967295, %eax
100003dd0: 48 83 c4 38                 	addq	$56, %rsp
100003dd4: 5b                          	popq	%rbx
100003dd5: 41 5c                       	popq	%r12
100003dd7: 41 5d                       	popq	%r13
100003dd9: 41 5e                       	popq	%r14
100003ddb: 41 5f                       	popq	%r15
100003ddd: 5d                          	popq	%rbp
100003dde: c3                          	retq
100003ddf: e8 0c 00 00 00              	callq	12 <__ZNSt3__1L16__throw_bad_castEv>
100003de4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003dee: 66 90                       	nop

0000000100003df0 __ZNSt3__1L16__throw_bad_castEv:
100003df0: 55                          	pushq	%rbp
100003df1: 48 89 e5                    	movq	%rsp, %rbp
100003df4: 53                          	pushq	%rbx
100003df5: 50                          	pushq	%rax
100003df6: bf 08 00 00 00              	movl	$8, %edi
100003dfb: e8 ec 71 00 00              	callq	29164 <dyld_stub_binder+0x10000afec>
100003e00: 48 89 c3                    	movq	%rax, %rbx
100003e03: 48 89 c7                    	movq	%rax, %rdi
100003e06: e8 b7 71 00 00              	callq	29111 <dyld_stub_binder+0x10000afc2>
100003e0b: 48 8b 35 4e 82 00 00        	movq	33358(%rip), %rsi
100003e12: 48 8b 15 2f 82 00 00        	movq	33327(%rip), %rdx
100003e19: 48 89 df                    	movq	%rbx, %rdi
100003e1c: e8 fb 71 00 00              	callq	29179 <dyld_stub_binder+0x10000b01c>
100003e21: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003e2b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100003e30 __ZNSt3__1L20__throw_length_errorEPKc:
100003e30: 55                          	pushq	%rbp
100003e31: 48 89 e5                    	movq	%rsp, %rbp
100003e34: 41 56                       	pushq	%r14
100003e36: 53                          	pushq	%rbx
100003e37: bf 10 00 00 00              	movl	$16, %edi
100003e3c: e8 ab 71 00 00              	callq	29099 <dyld_stub_binder+0x10000afec>
100003e41: 48 89 c3                    	movq	%rax, %rbx
100003e44: 48 89 c7                    	movq	%rax, %rdi
100003e47: e8 34 00 00 00              	callq	52 <__ZNSt12length_errorC1EPKc>
100003e4c: 48 8b 35 05 82 00 00        	movq	33285(%rip), %rsi
100003e53: 48 8b 15 be 81 00 00        	movq	33214(%rip), %rdx
100003e5a: 48 89 df                    	movq	%rbx, %rdi
100003e5d: e8 ba 71 00 00              	callq	29114 <dyld_stub_binder+0x10000b01c>
100003e62: 49 89 c6                    	movq	%rax, %r14
100003e65: 48 89 df                    	movq	%rbx, %rdi
100003e68: e8 97 71 00 00              	callq	29079 <dyld_stub_binder+0x10000b004>
100003e6d: 4c 89 f7                    	movq	%r14, %rdi
100003e70: e8 ab 70 00 00              	callq	28843 <dyld_stub_binder+0x10000af20>
100003e75: 0f 0b                       	ud2
100003e77: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100003e80 __ZNSt12length_errorC1EPKc:
100003e80: 55                          	pushq	%rbp
100003e81: 48 89 e5                    	movq	%rsp, %rbp
100003e84: 53                          	pushq	%rbx
100003e85: 50                          	pushq	%rax
100003e86: 48 89 fb                    	movq	%rdi, %rbx
100003e89: 48 8d 35 eb 7b 00 00        	leaq	31723(%rip), %rsi
100003e90: e8 a9 70 00 00              	callq	28841 <dyld_stub_binder+0x10000af3e>
100003e95: 48 8b 05 e4 81 00 00        	movq	33252(%rip), %rax
100003e9c: 48 83 c0 10                 	addq	$16, %rax
100003ea0: 48 89 03                    	movq	%rax, (%rbx)
100003ea3: 48 83 c4 08                 	addq	$8, %rsp
100003ea7: 5b                          	popq	%rbx
100003ea8: 5d                          	popq	%rbp
100003ea9: c3                          	retq
100003eaa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100003eb0 __ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m:
100003eb0: 55                          	pushq	%rbp
100003eb1: 48 89 e5                    	movq	%rsp, %rbp
100003eb4: 41 57                       	pushq	%r15
100003eb6: 41 56                       	pushq	%r14
100003eb8: 41 55                       	pushq	%r13
100003eba: 41 54                       	pushq	%r12
100003ebc: 53                          	pushq	%rbx
100003ebd: 48 83 ec 28                 	subq	$40, %rsp
100003ec1: 49 89 d6                    	movq	%rdx, %r14
100003ec4: 49 89 f7                    	movq	%rsi, %r15
100003ec7: 48 89 fb                    	movq	%rdi, %rbx
100003eca: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100003ece: 48 89 de                    	movq	%rbx, %rsi
100003ed1: e8 7a 70 00 00              	callq	28794 <dyld_stub_binder+0x10000af50>
100003ed6: 80 7d b0 00                 	cmpb	$0, -80(%rbp)
100003eda: 0f 84 ae 00 00 00           	je	174 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xde>
100003ee0: 48 8b 03                    	movq	(%rbx), %rax
100003ee3: 48 8b 40 e8                 	movq	-24(%rax), %rax
100003ee7: 4c 8d 24 03                 	leaq	(%rbx,%rax), %r12
100003eeb: 48 8b 7c 03 28              	movq	40(%rbx,%rax), %rdi
100003ef0: 44 8b 6c 03 08              	movl	8(%rbx,%rax), %r13d
100003ef5: 8b 84 03 90 00 00 00        	movl	144(%rbx,%rax), %eax
100003efc: 83 f8 ff                    	cmpl	$-1, %eax
100003eff: 75 4a                       	jne	74 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x9b>
100003f01: 48 89 7d c0                 	movq	%rdi, -64(%rbp)
100003f05: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100003f09: 4c 89 e6                    	movq	%r12, %rsi
100003f0c: e8 27 70 00 00              	callq	28711 <dyld_stub_binder+0x10000af38>
100003f11: 48 8b 35 20 81 00 00        	movq	33056(%rip), %rsi
100003f18: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100003f1c: e8 11 70 00 00              	callq	28689 <dyld_stub_binder+0x10000af32>
100003f21: 48 8b 08                    	movq	(%rax), %rcx
100003f24: 48 89 c7                    	movq	%rax, %rdi
100003f27: be 20 00 00 00              	movl	$32, %esi
100003f2c: ff 51 38                    	callq	*56(%rcx)
100003f2f: 88 45 d7                    	movb	%al, -41(%rbp)
100003f32: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100003f36: e8 69 70 00 00              	callq	28777 <dyld_stub_binder+0x10000afa4>
100003f3b: 0f be 45 d7                 	movsbl	-41(%rbp), %eax
100003f3f: 41 89 84 24 90 00 00 00     	movl	%eax, 144(%r12)
100003f47: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100003f4b: 4d 01 fe                    	addq	%r15, %r14
100003f4e: 41 81 e5 b0 00 00 00        	andl	$176, %r13d
100003f55: 41 83 fd 20                 	cmpl	$32, %r13d
100003f59: 4c 89 fa                    	movq	%r15, %rdx
100003f5c: 49 0f 44 d6                 	cmoveq	%r14, %rdx
100003f60: 44 0f be c8                 	movsbl	%al, %r9d
100003f64: 4c 89 fe                    	movq	%r15, %rsi
100003f67: 4c 89 f1                    	movq	%r14, %rcx
100003f6a: 4d 89 e0                    	movq	%r12, %r8
100003f6d: e8 9e 00 00 00              	callq	158 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
100003f72: 48 85 c0                    	testq	%rax, %rax
100003f75: 75 17                       	jne	23 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xde>
100003f77: 48 8b 03                    	movq	(%rbx), %rax
100003f7a: 48 8b 40 e8                 	movq	-24(%rax), %rax
100003f7e: 48 8d 3c 03                 	leaq	(%rbx,%rax), %rdi
100003f82: 8b 74 03 20                 	movl	32(%rbx,%rax), %esi
100003f86: 83 ce 05                    	orl	$5, %esi
100003f89: e8 28 70 00 00              	callq	28712 <dyld_stub_binder+0x10000afb6>
100003f8e: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100003f92: e8 bf 6f 00 00              	callq	28607 <dyld_stub_binder+0x10000af56>
100003f97: 48 89 d8                    	movq	%rbx, %rax
100003f9a: 48 83 c4 28                 	addq	$40, %rsp
100003f9e: 5b                          	popq	%rbx
100003f9f: 41 5c                       	popq	%r12
100003fa1: 41 5d                       	popq	%r13
100003fa3: 41 5e                       	popq	%r14
100003fa5: 41 5f                       	popq	%r15
100003fa7: 5d                          	popq	%rbp
100003fa8: c3                          	retq
100003fa9: eb 0e                       	jmp	14 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x109>
100003fab: 49 89 c6                    	movq	%rax, %r14
100003fae: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100003fb2: e8 ed 6f 00 00              	callq	28653 <dyld_stub_binder+0x10000afa4>
100003fb7: eb 03                       	jmp	3 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x10c>
100003fb9: 49 89 c6                    	movq	%rax, %r14
100003fbc: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100003fc0: e8 91 6f 00 00              	callq	28561 <dyld_stub_binder+0x10000af56>
100003fc5: eb 03                       	jmp	3 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x11a>
100003fc7: 49 89 c6                    	movq	%rax, %r14
100003fca: 4c 89 f7                    	movq	%r14, %rdi
100003fcd: e8 26 70 00 00              	callq	28710 <dyld_stub_binder+0x10000aff8>
100003fd2: 48 8b 03                    	movq	(%rbx), %rax
100003fd5: 48 8b 78 e8                 	movq	-24(%rax), %rdi
100003fd9: 48 01 df                    	addq	%rbx, %rdi
100003fdc: e8 c9 6f 00 00              	callq	28617 <dyld_stub_binder+0x10000afaa>
100003fe1: e8 18 70 00 00              	callq	28696 <dyld_stub_binder+0x10000affe>
100003fe6: eb af                       	jmp	-81 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xe7>
100003fe8: 48 89 c3                    	movq	%rax, %rbx
100003feb: e8 0e 70 00 00              	callq	28686 <dyld_stub_binder+0x10000affe>
100003ff0: 48 89 df                    	movq	%rbx, %rdi
100003ff3: e8 28 6f 00 00              	callq	28456 <dyld_stub_binder+0x10000af20>
100003ff8: 0f 0b                       	ud2
100003ffa: 48 89 c7                    	movq	%rax, %rdi
100003ffd: e8 5e f1 ff ff              	callq	-3746 <___clang_call_terminate>
100004002: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000400c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004010 __ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_:
100004010: 55                          	pushq	%rbp
100004011: 48 89 e5                    	movq	%rsp, %rbp
100004014: 41 57                       	pushq	%r15
100004016: 41 56                       	pushq	%r14
100004018: 41 55                       	pushq	%r13
10000401a: 41 54                       	pushq	%r12
10000401c: 53                          	pushq	%rbx
10000401d: 48 83 ec 38                 	subq	$56, %rsp
100004021: 48 85 ff                    	testq	%rdi, %rdi
100004024: 0f 84 08 01 00 00           	je	264 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x122>
10000402a: 4d 89 c4                    	movq	%r8, %r12
10000402d: 49 89 cf                    	movq	%rcx, %r15
100004030: 49 89 fd                    	movq	%rdi, %r13
100004033: 44 89 4d bc                 	movl	%r9d, -68(%rbp)
100004037: 48 89 c8                    	movq	%rcx, %rax
10000403a: 48 29 f0                    	subq	%rsi, %rax
10000403d: 49 8b 48 18                 	movq	24(%r8), %rcx
100004041: 45 31 f6                    	xorl	%r14d, %r14d
100004044: 48 29 c1                    	subq	%rax, %rcx
100004047: 4c 0f 4f f1                 	cmovgq	%rcx, %r14
10000404b: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
10000404f: 48 89 d3                    	movq	%rdx, %rbx
100004052: 48 29 f3                    	subq	%rsi, %rbx
100004055: 48 85 db                    	testq	%rbx, %rbx
100004058: 7e 16                       	jle	22 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x60>
10000405a: 49 8b 45 00                 	movq	(%r13), %rax
10000405e: 4c 89 ef                    	movq	%r13, %rdi
100004061: 48 89 da                    	movq	%rbx, %rdx
100004064: ff 50 60                    	callq	*96(%rax)
100004067: 48 39 d8                    	cmpq	%rbx, %rax
10000406a: 0f 85 c2 00 00 00           	jne	194 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x122>
100004070: 4d 85 f6                    	testq	%r14, %r14
100004073: 0f 8e 90 00 00 00           	jle	144 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xf9>
100004079: 4c 89 65 b0                 	movq	%r12, -80(%rbp)
10000407d: 49 83 fe 17                 	cmpq	$23, %r14
100004081: 73 11                       	jae	17 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x84>
100004083: 43 8d 04 36                 	leal	(%r14,%r14), %eax
100004087: 88 45 c0                    	movb	%al, -64(%rbp)
10000408a: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
10000408e: 4c 8d 65 c1                 	leaq	-63(%rbp), %r12
100004092: eb 27                       	jmp	39 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xab>
100004094: 49 8d 5e 10                 	leaq	16(%r14), %rbx
100004098: 48 83 e3 f0                 	andq	$-16, %rbx
10000409c: 48 89 df                    	movq	%rbx, %rdi
10000409f: e8 3c 6f 00 00              	callq	28476 <dyld_stub_binder+0x10000afe0>
1000040a4: 49 89 c4                    	movq	%rax, %r12
1000040a7: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000040ab: 48 83 cb 01                 	orq	$1, %rbx
1000040af: 48 89 5d c0                 	movq	%rbx, -64(%rbp)
1000040b3: 4c 89 75 c8                 	movq	%r14, -56(%rbp)
1000040b7: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
1000040bb: 0f b6 75 bc                 	movzbl	-68(%rbp), %esi
1000040bf: 4c 89 e7                    	movq	%r12, %rdi
1000040c2: 4c 89 f2                    	movq	%r14, %rdx
1000040c5: e8 a0 6f 00 00              	callq	28576 <dyld_stub_binder+0x10000b06a>
1000040ca: 43 c6 04 34 00              	movb	$0, (%r12,%r14)
1000040cf: f6 45 c0 01                 	testb	$1, -64(%rbp)
1000040d3: 74 06                       	je	6 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xcb>
1000040d5: 48 8b 5d d0                 	movq	-48(%rbp), %rbx
1000040d9: eb 03                       	jmp	3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xce>
1000040db: 48 ff c3                    	incq	%rbx
1000040de: 4c 8b 65 b0                 	movq	-80(%rbp), %r12
1000040e2: 49 8b 45 00                 	movq	(%r13), %rax
1000040e6: 4c 89 ef                    	movq	%r13, %rdi
1000040e9: 48 89 de                    	movq	%rbx, %rsi
1000040ec: 4c 89 f2                    	movq	%r14, %rdx
1000040ef: ff 50 60                    	callq	*96(%rax)
1000040f2: 48 89 c3                    	movq	%rax, %rbx
1000040f5: f6 45 c0 01                 	testb	$1, -64(%rbp)
1000040f9: 74 09                       	je	9 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xf4>
1000040fb: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000040ff: e8 d0 6e 00 00              	callq	28368 <dyld_stub_binder+0x10000afd4>
100004104: 4c 39 f3                    	cmpq	%r14, %rbx
100004107: 75 29                       	jne	41 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x122>
100004109: 48 8b 75 a8                 	movq	-88(%rbp), %rsi
10000410d: 49 29 f7                    	subq	%rsi, %r15
100004110: 4d 85 ff                    	testq	%r15, %r15
100004113: 7e 12                       	jle	18 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x117>
100004115: 49 8b 45 00                 	movq	(%r13), %rax
100004119: 4c 89 ef                    	movq	%r13, %rdi
10000411c: 4c 89 fa                    	movq	%r15, %rdx
10000411f: ff 50 60                    	callq	*96(%rax)
100004122: 4c 39 f8                    	cmpq	%r15, %rax
100004125: 75 0b                       	jne	11 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x122>
100004127: 49 c7 44 24 18 00 00 00 00  	movq	$0, 24(%r12)
100004130: eb 03                       	jmp	3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x125>
100004132: 45 31 ed                    	xorl	%r13d, %r13d
100004135: 4c 89 e8                    	movq	%r13, %rax
100004138: 48 83 c4 38                 	addq	$56, %rsp
10000413c: 5b                          	popq	%rbx
10000413d: 41 5c                       	popq	%r12
10000413f: 41 5d                       	popq	%r13
100004141: 41 5e                       	popq	%r14
100004143: 41 5f                       	popq	%r15
100004145: 5d                          	popq	%rbp
100004146: c3                          	retq
100004147: 48 89 c3                    	movq	%rax, %rbx
10000414a: f6 45 c0 01                 	testb	$1, -64(%rbp)
10000414e: 74 09                       	je	9 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x149>
100004150: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100004154: e8 7b 6e 00 00              	callq	28283 <dyld_stub_binder+0x10000afd4>
100004159: 48 89 df                    	movq	%rbx, %rdi
10000415c: e8 bf 6d 00 00              	callq	28095 <dyld_stub_binder+0x10000af20>
100004161: 0f 0b                       	ud2
100004163: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000416d: 0f 1f 00                    	nopl	(%rax)

0000000100004170 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev:
100004170: 55                          	pushq	%rbp
100004171: 48 89 e5                    	movq	%rsp, %rbp
100004174: 41 57                       	pushq	%r15
100004176: 41 56                       	pushq	%r14
100004178: 53                          	pushq	%rbx
100004179: 50                          	pushq	%rax
10000417a: 48 89 fb                    	movq	%rdi, %rbx
10000417d: e8 10 6e 00 00              	callq	28176 <dyld_stub_binder+0x10000af92>
100004182: 48 8b 05 e7 7e 00 00        	movq	32487(%rip), %rax
100004189: 48 83 c0 10                 	addq	$16, %rax
10000418d: 48 89 03                    	movq	%rax, (%rbx)
100004190: 48 8d 7b 60                 	leaq	96(%rbx), %rdi
100004194: 48 c7 43 40 00 00 00 00     	movq	$0, 64(%rbx)
10000419c: 48 c7 43 48 00 00 00 00     	movq	$0, 72(%rbx)
1000041a4: 48 c7 43 50 00 00 00 00     	movq	$0, 80(%rbx)
1000041ac: be 33 01 00 00              	movl	$307, %esi
1000041b1: e8 30 6e 00 00              	callq	28208 <dyld_stub_binder+0x10000afe6>
1000041b6: 4c 8d 73 08                 	leaq	8(%rbx), %r14
1000041ba: 4c 8d 7d e0                 	leaq	-32(%rbp), %r15
1000041be: 4c 89 ff                    	movq	%r15, %rdi
1000041c1: 4c 89 f6                    	movq	%r14, %rsi
1000041c4: e8 d5 6d 00 00              	callq	28117 <dyld_stub_binder+0x10000af9e>
1000041c9: 48 8b 35 70 7e 00 00        	movq	32368(%rip), %rsi
1000041d0: 4c 89 ff                    	movq	%r15, %rdi
1000041d3: e8 54 6d 00 00              	callq	27988 <dyld_stub_binder+0x10000af2c>
1000041d8: 41 89 c7                    	movl	%eax, %r15d
1000041db: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
1000041df: e8 c0 6d 00 00              	callq	28096 <dyld_stub_binder+0x10000afa4>
1000041e4: 45 84 ff                    	testb	%r15b, %r15b
1000041e7: 74 41                       	je	65 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev+0xba>
1000041e9: 4c 8d 7d e0                 	leaq	-32(%rbp), %r15
1000041ed: 4c 89 ff                    	movq	%r15, %rdi
1000041f0: 4c 89 f6                    	movq	%r14, %rsi
1000041f3: e8 a6 6d 00 00              	callq	28070 <dyld_stub_binder+0x10000af9e>
1000041f8: 48 8b 35 41 7e 00 00        	movq	32321(%rip), %rsi
1000041ff: 4c 89 ff                    	movq	%r15, %rdi
100004202: e8 2b 6d 00 00              	callq	27947 <dyld_stub_binder+0x10000af32>
100004207: 48 89 83 80 00 00 00        	movq	%rax, 128(%rbx)
10000420e: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
100004212: e8 8d 6d 00 00              	callq	28045 <dyld_stub_binder+0x10000afa4>
100004217: 48 8b bb 80 00 00 00        	movq	128(%rbx), %rdi
10000421e: 48 8b 07                    	movq	(%rdi), %rax
100004221: ff 50 38                    	callq	*56(%rax)
100004224: 88 83 92 01 00 00           	movb	%al, 402(%rbx)
10000422a: 48 8b 03                    	movq	(%rbx), %rax
10000422d: ba 00 10 00 00              	movl	$4096, %edx
100004232: 48 89 df                    	movq	%rbx, %rdi
100004235: 31 f6                       	xorl	%esi, %esi
100004237: ff 50 18                    	callq	*24(%rax)
10000423a: 48 83 c4 08                 	addq	$8, %rsp
10000423e: 5b                          	popq	%rbx
10000423f: 41 5e                       	popq	%r14
100004241: 41 5f                       	popq	%r15
100004243: 5d                          	popq	%rbp
100004244: c3                          	retq
100004245: 49 89 c6                    	movq	%rax, %r14
100004248: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
10000424c: e8 53 6d 00 00              	callq	27987 <dyld_stub_binder+0x10000afa4>
100004251: eb 03                       	jmp	3 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev+0xe6>
100004253: 49 89 c6                    	movq	%rax, %r14
100004256: 48 89 df                    	movq	%rbx, %rdi
100004259: e8 3a 6d 00 00              	callq	27962 <dyld_stub_binder+0x10000af98>
10000425e: 4c 89 f7                    	movq	%r14, %rdi
100004261: e8 ba 6c 00 00              	callq	27834 <dyld_stub_binder+0x10000af20>
100004266: 0f 0b                       	ud2
100004268: 48 89 c7                    	movq	%rax, %rdi
10000426b: e8 f0 ee ff ff              	callq	-4368 <___clang_call_terminate>

0000000100004270 __ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_:
100004270: 55                          	pushq	%rbp
100004271: 48 89 e5                    	movq	%rsp, %rbp
100004274: 41 57                       	pushq	%r15
100004276: 41 56                       	pushq	%r14
100004278: 41 55                       	pushq	%r13
10000427a: 41 54                       	pushq	%r12
10000427c: 53                          	pushq	%rbx
10000427d: 48 83 ec 38                 	subq	$56, %rsp
100004281: 49 89 f7                    	movq	%rsi, %r15
100004284: 49 89 fc                    	movq	%rdi, %r12
100004287: 49 b9 ab aa aa aa aa aa aa aa       	movabsq	$-6148914691236517205, %r9
100004291: 4d 8d 47 e8                 	leaq	-24(%r15), %r8
100004295: 49 8d 47 d0                 	leaq	-48(%r15), %rax
100004299: 48 89 45 a8                 	movq	%rax, -88(%rbp)
10000429d: 4d 89 e6                    	movq	%r12, %r14
1000042a0: 4c 89 45 b8                 	movq	%r8, -72(%rbp)
1000042a4: 4d 89 f4                    	movq	%r14, %r12
1000042a7: 4c 89 f9                    	movq	%r15, %rcx
1000042aa: 4c 29 e1                    	subq	%r12, %rcx
1000042ad: 48 89 c8                    	movq	%rcx, %rax
1000042b0: 48 c1 f8 03                 	sarq	$3, %rax
1000042b4: 49 0f af c1                 	imulq	%r9, %rax
1000042b8: 48 83 f8 05                 	cmpq	$5, %rax
1000042bc: 0f 86 9a 07 00 00           	jbe	1946 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x7ec>
1000042c2: 48 81 f9 e7 02 00 00        	cmpq	$743, %rcx
1000042c9: 0f 8e b2 07 00 00           	jle	1970 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x811>
1000042cf: 48 89 c8                    	movq	%rcx, %rax
1000042d2: 49 f7 e1                    	mulq	%r9
1000042d5: 48 c1 ea 05                 	shrq	$5, %rdx
1000042d9: 48 8d 04 52                 	leaq	(%rdx,%rdx,2), %rax
1000042dd: 4d 8d 2c c4                 	leaq	(%r12,%rax,8), %r13
1000042e1: 48 81 f9 a9 5d 00 00        	cmpq	$23977, %rcx
1000042e8: 0f 8c c2 01 00 00           	jl	450 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x240>
1000042ee: 48 89 c8                    	movq	%rcx, %rax
1000042f1: 49 f7 e1                    	mulq	%r9
1000042f4: 48 c1 ea 03                 	shrq	$3, %rdx
1000042f8: 48 83 e2 f8                 	andq	$-8, %rdx
1000042fc: 4c 89 fb                    	movq	%r15, %rbx
1000042ff: 4c 8d 3c 52                 	leaq	(%rdx,%rdx,2), %r15
100004303: 4b 8d 34 3c                 	leaq	(%r12,%r15), %rsi
100004307: 4f 8d 74 3d 00              	leaq	(%r13,%r15), %r14
10000430c: 4c 89 e7                    	movq	%r12, %rdi
10000430f: 48 89 75 b0                 	movq	%rsi, -80(%rbp)
100004313: 4c 89 ea                    	movq	%r13, %rdx
100004316: 4c 89 f1                    	movq	%r14, %rcx
100004319: e8 42 0d 00 00              	callq	3394 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_>
10000431e: 49 b9 ab aa aa aa aa aa aa aa       	movabsq	$-6148914691236517205, %r9
100004328: 4c 8b 45 b8                 	movq	-72(%rbp), %r8
10000432c: f3 43 0f 10 44 3d 00        	movss	(%r13,%r15), %xmm0
100004333: 49 89 df                    	movq	%rbx, %r15
100004336: 41 0f 2e 00                 	ucomiss	(%r8), %xmm0
10000433a: 0f 86 a0 03 00 00           	jbe	928 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x470>
100004340: 49 8b 4e 10                 	movq	16(%r14), %rcx
100004344: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100004348: 49 8b 0e                    	movq	(%r14), %rcx
10000434b: 49 8b 56 08                 	movq	8(%r14), %rdx
10000434f: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
100004353: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
100004357: 49 8b 48 10                 	movq	16(%r8), %rcx
10000435b: 49 89 4e 10                 	movq	%rcx, 16(%r14)
10000435f: 49 8b 08                    	movq	(%r8), %rcx
100004362: 49 8b 50 08                 	movq	8(%r8), %rdx
100004366: 49 89 56 08                 	movq	%rdx, 8(%r14)
10000436a: 49 89 0e                    	movq	%rcx, (%r14)
10000436d: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100004371: 49 89 48 10                 	movq	%rcx, 16(%r8)
100004375: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100004379: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
10000437d: 49 89 50 08                 	movq	%rdx, 8(%r8)
100004381: 49 89 08                    	movq	%rcx, (%r8)
100004384: f3 41 0f 10 45 00           	movss	(%r13), %xmm0
10000438a: 41 0f 2e 06                 	ucomiss	(%r14), %xmm0
10000438e: 0f 86 64 02 00 00           	jbe	612 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x388>
100004394: 49 8b 4d 10                 	movq	16(%r13), %rcx
100004398: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
10000439c: 49 8b 4d 00                 	movq	(%r13), %rcx
1000043a0: 49 8b 55 08                 	movq	8(%r13), %rdx
1000043a4: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
1000043a8: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
1000043ac: 49 8b 4e 10                 	movq	16(%r14), %rcx
1000043b0: 49 89 4d 10                 	movq	%rcx, 16(%r13)
1000043b4: 49 8b 0e                    	movq	(%r14), %rcx
1000043b7: 49 8b 56 08                 	movq	8(%r14), %rdx
1000043bb: 49 89 55 08                 	movq	%rdx, 8(%r13)
1000043bf: 49 89 4d 00                 	movq	%rcx, (%r13)
1000043c3: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000043c7: 49 89 4e 10                 	movq	%rcx, 16(%r14)
1000043cb: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000043cf: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
1000043d3: 49 89 56 08                 	movq	%rdx, 8(%r14)
1000043d7: 49 89 0e                    	movq	%rcx, (%r14)
1000043da: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
1000043de: f3 0f 10 06                 	movss	(%rsi), %xmm0
1000043e2: 41 0f 2e 45 00              	ucomiss	(%r13), %xmm0
1000043e7: 0f 86 e5 02 00 00           	jbe	741 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x462>
1000043ed: 48 8b 4e 10                 	movq	16(%rsi), %rcx
1000043f1: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
1000043f5: 48 8b 0e                    	movq	(%rsi), %rcx
1000043f8: 48 8b 56 08                 	movq	8(%rsi), %rdx
1000043fc: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
100004400: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
100004404: 49 8b 4d 10                 	movq	16(%r13), %rcx
100004408: 48 89 4e 10                 	movq	%rcx, 16(%rsi)
10000440c: 49 8b 4d 00                 	movq	(%r13), %rcx
100004410: 49 8b 55 08                 	movq	8(%r13), %rdx
100004414: 48 89 56 08                 	movq	%rdx, 8(%rsi)
100004418: 48 89 0e                    	movq	%rcx, (%rsi)
10000441b: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
10000441f: 49 89 4d 10                 	movq	%rcx, 16(%r13)
100004423: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100004427: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
10000442b: 49 89 55 08                 	movq	%rdx, 8(%r13)
10000442f: 49 89 4d 00                 	movq	%rcx, (%r13)
100004433: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
100004439: 0f 2e 06                    	ucomiss	(%rsi), %xmm0
10000443c: 0f 86 06 04 00 00           	jbe	1030 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x5d8>
100004442: 49 8b 4c 24 10              	movq	16(%r12), %rcx
100004447: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
10000444b: 49 8b 0c 24                 	movq	(%r12), %rcx
10000444f: 49 8b 54 24 08              	movq	8(%r12), %rdx
100004454: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
100004458: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
10000445c: 48 8b 4e 10                 	movq	16(%rsi), %rcx
100004460: 49 89 4c 24 10              	movq	%rcx, 16(%r12)
100004465: 48 8b 0e                    	movq	(%rsi), %rcx
100004468: 48 8b 56 08                 	movq	8(%rsi), %rdx
10000446c: 49 89 54 24 08              	movq	%rdx, 8(%r12)
100004471: 49 89 0c 24                 	movq	%rcx, (%r12)
100004475: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100004479: 48 89 4e 10                 	movq	%rcx, 16(%rsi)
10000447d: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100004481: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100004485: 48 89 56 08                 	movq	%rdx, 8(%rsi)
100004489: 48 89 0e                    	movq	%rcx, (%rsi)
10000448c: 83 c0 04                    	addl	$4, %eax
10000448f: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
100004495: f3 41 0f 10 4d 00           	movss	(%r13), %xmm1
10000449b: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
10000449e: 0f 86 51 02 00 00           	jbe	593 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x485>
1000044a4: e9 19 04 00 00              	jmp	1049 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x652>
1000044a9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000044b0: f3 41 0f 10 45 00           	movss	(%r13), %xmm0
1000044b6: f3 41 0f 10 0c 24           	movss	(%r12), %xmm1
1000044bc: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
1000044bf: f3 41 0f 10 08              	movss	(%r8), %xmm1
1000044c4: 76 7a                       	jbe	122 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x2d0>
1000044c6: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
1000044c9: 0f 86 45 01 00 00           	jbe	325 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x3a4>
1000044cf: 49 8b 44 24 10              	movq	16(%r12), %rax
1000044d4: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000044d8: 49 8b 04 24                 	movq	(%r12), %rax
1000044dc: 49 8b 4c 24 08              	movq	8(%r12), %rcx
1000044e1: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
1000044e5: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000044e9: 49 8b 40 10                 	movq	16(%r8), %rax
1000044ed: 49 89 44 24 10              	movq	%rax, 16(%r12)
1000044f2: 49 8b 00                    	movq	(%r8), %rax
1000044f5: 49 8b 48 08                 	movq	8(%r8), %rcx
1000044f9: 49 89 4c 24 08              	movq	%rcx, 8(%r12)
1000044fe: 49 89 04 24                 	movq	%rax, (%r12)
100004502: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100004506: 49 89 40 10                 	movq	%rax, 16(%r8)
10000450a: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000450e: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004512: 49 89 48 08                 	movq	%rcx, 8(%r8)
100004516: 49 89 00                    	movq	%rax, (%r8)
100004519: b8 01 00 00 00              	movl	$1, %eax
10000451e: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
100004524: f3 41 0f 10 4d 00           	movss	(%r13), %xmm1
10000452a: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
10000452d: 0f 86 c2 01 00 00           	jbe	450 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x485>
100004533: e9 8a 03 00 00              	jmp	906 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x652>
100004538: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100004540: 31 c0                       	xorl	%eax, %eax
100004542: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
100004545: 0f 86 95 01 00 00           	jbe	405 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x470>
10000454b: 49 8b 45 10                 	movq	16(%r13), %rax
10000454f: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100004553: 49 8b 45 00                 	movq	(%r13), %rax
100004557: 49 8b 4d 08                 	movq	8(%r13), %rcx
10000455b: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
10000455f: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100004563: 49 8b 40 10                 	movq	16(%r8), %rax
100004567: 49 89 45 10                 	movq	%rax, 16(%r13)
10000456b: 49 8b 00                    	movq	(%r8), %rax
10000456e: 49 8b 48 08                 	movq	8(%r8), %rcx
100004572: 49 89 4d 08                 	movq	%rcx, 8(%r13)
100004576: 49 89 45 00                 	movq	%rax, (%r13)
10000457a: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000457e: 49 89 40 10                 	movq	%rax, 16(%r8)
100004582: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100004586: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
10000458a: 49 89 48 08                 	movq	%rcx, 8(%r8)
10000458e: 49 89 00                    	movq	%rax, (%r8)
100004591: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
100004597: b8 01 00 00 00              	movl	$1, %eax
10000459c: 41 0f 2e 45 00              	ucomiss	(%r13), %xmm0
1000045a1: 0f 86 39 01 00 00           	jbe	313 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x470>
1000045a7: 49 8b 44 24 10              	movq	16(%r12), %rax
1000045ac: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000045b0: 49 8b 04 24                 	movq	(%r12), %rax
1000045b4: 49 8b 4c 24 08              	movq	8(%r12), %rcx
1000045b9: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
1000045bd: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000045c1: 49 8b 45 10                 	movq	16(%r13), %rax
1000045c5: 49 89 44 24 10              	movq	%rax, 16(%r12)
1000045ca: 49 8b 45 00                 	movq	(%r13), %rax
1000045ce: 49 8b 4d 08                 	movq	8(%r13), %rcx
1000045d2: 49 89 4c 24 08              	movq	%rcx, 8(%r12)
1000045d7: 49 89 04 24                 	movq	%rax, (%r12)
1000045db: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000045df: 49 89 45 10                 	movq	%rax, 16(%r13)
1000045e3: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000045e7: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000045eb: 49 89 4d 08                 	movq	%rcx, 8(%r13)
1000045ef: 49 89 45 00                 	movq	%rax, (%r13)
1000045f3: e9 bf 00 00 00              	jmp	191 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x447>
1000045f8: ff c0                       	incl	%eax
1000045fa: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
100004600: f3 41 0f 10 4d 00           	movss	(%r13), %xmm1
100004606: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
100004609: 0f 86 e6 00 00 00           	jbe	230 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x485>
10000460f: e9 ae 02 00 00              	jmp	686 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x652>
100004614: 49 8b 44 24 10              	movq	16(%r12), %rax
100004619: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000461d: 49 8b 04 24                 	movq	(%r12), %rax
100004621: 49 8b 4c 24 08              	movq	8(%r12), %rcx
100004626: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
10000462a: 48 89 45 c0                 	movq	%rax, -64(%rbp)
10000462e: 49 8b 45 10                 	movq	16(%r13), %rax
100004632: 49 89 44 24 10              	movq	%rax, 16(%r12)
100004637: 49 8b 45 00                 	movq	(%r13), %rax
10000463b: 49 8b 4d 08                 	movq	8(%r13), %rcx
10000463f: 49 89 4c 24 08              	movq	%rcx, 8(%r12)
100004644: 49 89 04 24                 	movq	%rax, (%r12)
100004648: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000464c: 49 89 45 10                 	movq	%rax, 16(%r13)
100004650: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100004654: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004658: 49 89 4d 08                 	movq	%rcx, 8(%r13)
10000465c: 49 89 45 00                 	movq	%rax, (%r13)
100004660: f3 41 0f 10 45 00           	movss	(%r13), %xmm0
100004666: b8 01 00 00 00              	movl	$1, %eax
10000466b: 41 0f 2e 00                 	ucomiss	(%r8), %xmm0
10000466f: 76 6f                       	jbe	111 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x470>
100004671: 49 8b 45 10                 	movq	16(%r13), %rax
100004675: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100004679: 49 8b 45 00                 	movq	(%r13), %rax
10000467d: 49 8b 4d 08                 	movq	8(%r13), %rcx
100004681: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100004685: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100004689: 49 8b 40 10                 	movq	16(%r8), %rax
10000468d: 49 89 45 10                 	movq	%rax, 16(%r13)
100004691: 49 8b 00                    	movq	(%r8), %rax
100004694: 49 8b 48 08                 	movq	8(%r8), %rcx
100004698: 49 89 4d 08                 	movq	%rcx, 8(%r13)
10000469c: 49 89 45 00                 	movq	%rax, (%r13)
1000046a0: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000046a4: 49 89 40 10                 	movq	%rax, 16(%r8)
1000046a8: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000046ac: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000046b0: 49 89 48 08                 	movq	%rcx, 8(%r8)
1000046b4: 49 89 00                    	movq	%rax, (%r8)
1000046b7: b8 02 00 00 00              	movl	$2, %eax
1000046bc: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
1000046c2: f3 41 0f 10 4d 00           	movss	(%r13), %xmm1
1000046c8: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
1000046cb: 76 28                       	jbe	40 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x485>
1000046cd: e9 f0 01 00 00              	jmp	496 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x652>
1000046d2: 83 c0 02                    	addl	$2, %eax
1000046d5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000046df: 90                          	nop
1000046e0: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
1000046e6: f3 41 0f 10 4d 00           	movss	(%r13), %xmm1
1000046ec: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
1000046ef: 0f 87 cd 01 00 00           	ja	461 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x652>
1000046f5: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
1000046f9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100004700: 49 39 cc                    	cmpq	%rcx, %r12
100004703: 74 1b                       	je	27 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x4b0>
100004705: 0f 2e 09                    	ucomiss	(%rcx), %xmm1
100004708: 48 8d 49 e8                 	leaq	-24(%rcx), %rcx
10000470c: 76 f2                       	jbe	-14 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x490>
10000470e: e9 5d 01 00 00              	jmp	349 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x600>
100004713: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000471d: 0f 1f 00                    	nopl	(%rax)
100004720: 49 8d 44 24 18              	leaq	24(%r12), %rax
100004725: f3 41 0f 10 08              	movss	(%r8), %xmm1
10000472a: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
10000472d: 77 6f                       	ja	111 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x52e>
10000472f: 4c 39 c0                    	cmpq	%r8, %rax
100004732: 0f 84 fd 08 00 00           	je	2301 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004738: 49 8d 44 24 30              	leaq	48(%r12), %rax
10000473d: 0f 1f 00                    	nopl	(%rax)
100004740: f3 0f 10 48 e8              	movss	-24(%rax), %xmm1
100004745: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
100004748: 77 0e                       	ja	14 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x4e8>
10000474a: 48 83 c0 18                 	addq	$24, %rax
10000474e: 49 39 c7                    	cmpq	%rax, %r15
100004751: 75 ed                       	jne	-19 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x4d0>
100004753: e9 dd 08 00 00              	jmp	2269 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004758: 48 8b 48 f8                 	movq	-8(%rax), %rcx
10000475c: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100004760: 48 8b 48 e8                 	movq	-24(%rax), %rcx
100004764: 48 8b 50 f0                 	movq	-16(%rax), %rdx
100004768: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
10000476c: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
100004770: 49 8b 48 10                 	movq	16(%r8), %rcx
100004774: 48 89 48 f8                 	movq	%rcx, -8(%rax)
100004778: 49 8b 08                    	movq	(%r8), %rcx
10000477b: 49 8b 50 08                 	movq	8(%r8), %rdx
10000477f: 48 89 50 f0                 	movq	%rdx, -16(%rax)
100004783: 48 89 48 e8                 	movq	%rcx, -24(%rax)
100004787: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
10000478b: 49 89 48 10                 	movq	%rcx, 16(%r8)
10000478f: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100004793: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100004797: 49 89 50 08                 	movq	%rdx, 8(%r8)
10000479b: 49 89 08                    	movq	%rcx, (%r8)
10000479e: 4c 39 c0                    	cmpq	%r8, %rax
1000047a1: 0f 84 8e 08 00 00           	je	2190 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
1000047a7: 4c 89 c1                    	movq	%r8, %rcx
1000047aa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
1000047b0: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
1000047b6: 48 83 c0 e8                 	addq	$-24, %rax
1000047ba: 48 89 c2                    	movq	%rax, %rdx
1000047bd: 0f 1f 00                    	nopl	(%rax)
1000047c0: f3 0f 10 4a 18              	movss	24(%rdx), %xmm1
1000047c5: 48 83 c2 18                 	addq	$24, %rdx
1000047c9: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
1000047cc: 76 f2                       	jbe	-14 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x550>
1000047ce: 48 8d 42 18                 	leaq	24(%rdx), %rax
1000047d2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000047dc: 0f 1f 40 00                 	nopl	(%rax)
1000047e0: f3 0f 10 49 e8              	movss	-24(%rcx), %xmm1
1000047e5: 48 83 c1 e8                 	addq	$-24, %rcx
1000047e9: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
1000047ec: 77 f2                       	ja	-14 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x570>
1000047ee: 48 39 ca                    	cmpq	%rcx, %rdx
1000047f1: 73 4d                       	jae	77 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x5d0>
1000047f3: 48 8b 72 10                 	movq	16(%rdx), %rsi
1000047f7: 48 89 75 d0                 	movq	%rsi, -48(%rbp)
1000047fb: 48 8b 32                    	movq	(%rdx), %rsi
1000047fe: 48 8b 7a 08                 	movq	8(%rdx), %rdi
100004802: 48 89 7d c8                 	movq	%rdi, -56(%rbp)
100004806: 48 89 75 c0                 	movq	%rsi, -64(%rbp)
10000480a: 48 8b 71 10                 	movq	16(%rcx), %rsi
10000480e: 48 89 72 10                 	movq	%rsi, 16(%rdx)
100004812: 48 8b 31                    	movq	(%rcx), %rsi
100004815: 48 8b 79 08                 	movq	8(%rcx), %rdi
100004819: 48 89 7a 08                 	movq	%rdi, 8(%rdx)
10000481d: 48 89 32                    	movq	%rsi, (%rdx)
100004820: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100004824: 48 89 51 10                 	movq	%rdx, 16(%rcx)
100004828: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
10000482c: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100004830: 48 89 71 08                 	movq	%rsi, 8(%rcx)
100004834: 48 89 11                    	movq	%rdx, (%rcx)
100004837: e9 74 ff ff ff              	jmp	-140 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x540>
10000483c: 0f 1f 40 00                 	nopl	(%rax)
100004840: 49 89 d4                    	movq	%rdx, %r12
100004843: e9 5f fa ff ff              	jmp	-1441 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x37>
100004848: 83 c0 03                    	addl	$3, %eax
10000484b: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
100004851: f3 41 0f 10 4d 00           	movss	(%r13), %xmm1
100004857: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
10000485a: 0f 86 95 fe ff ff           	jbe	-363 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x485>
100004860: eb 60                       	jmp	96 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x652>
100004862: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000486c: 0f 1f 40 00                 	nopl	(%rax)
100004870: 49 8b 54 24 10              	movq	16(%r12), %rdx
100004875: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100004879: 49 8b 14 24                 	movq	(%r12), %rdx
10000487d: 49 8b 74 24 08              	movq	8(%r12), %rsi
100004882: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100004886: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
10000488a: 48 8b 51 28                 	movq	40(%rcx), %rdx
10000488e: 49 89 54 24 10              	movq	%rdx, 16(%r12)
100004893: 48 8b 51 18                 	movq	24(%rcx), %rdx
100004897: 48 8b 71 20                 	movq	32(%rcx), %rsi
10000489b: 49 89 74 24 08              	movq	%rsi, 8(%r12)
1000048a0: 49 89 14 24                 	movq	%rdx, (%r12)
1000048a4: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
1000048a8: 48 89 51 28                 	movq	%rdx, 40(%rcx)
1000048ac: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
1000048b0: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
1000048b4: 48 89 71 20                 	movq	%rsi, 32(%rcx)
1000048b8: 48 89 51 18                 	movq	%rdx, 24(%rcx)
1000048bc: 4c 8d 41 18                 	leaq	24(%rcx), %r8
1000048c0: ff c0                       	incl	%eax
1000048c2: 49 8d 5c 24 18              	leaq	24(%r12), %rbx
1000048c7: 4c 39 c3                    	cmpq	%r8, %rbx
1000048ca: 0f 83 83 00 00 00           	jae	131 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x6e3>
1000048d0: f3 41 0f 10 45 00           	movss	(%r13), %xmm0
1000048d6: 48 83 c3 e8                 	addq	$-24, %rbx
1000048da: 48 89 da                    	movq	%rbx, %rdx
1000048dd: 0f 1f 00                    	nopl	(%rax)
1000048e0: 0f 2e 42 18                 	ucomiss	24(%rdx), %xmm0
1000048e4: 48 8d 52 18                 	leaq	24(%rdx), %rdx
1000048e8: 77 f6                       	ja	-10 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x670>
1000048ea: 48 8d 5a 18                 	leaq	24(%rdx), %rbx
1000048ee: 66 90                       	nop
1000048f0: 41 0f 2e 40 e8              	ucomiss	-24(%r8), %xmm0
1000048f5: 4d 8d 40 e8                 	leaq	-24(%r8), %r8
1000048f9: 76 f5                       	jbe	-11 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x680>
1000048fb: 4c 39 c2                    	cmpq	%r8, %rdx
1000048fe: 77 50                       	ja	80 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x6e0>
100004900: 48 8b 72 10                 	movq	16(%rdx), %rsi
100004904: 48 89 75 d0                 	movq	%rsi, -48(%rbp)
100004908: 48 8b 32                    	movq	(%rdx), %rsi
10000490b: 48 8b 7a 08                 	movq	8(%rdx), %rdi
10000490f: 48 89 7d c8                 	movq	%rdi, -56(%rbp)
100004913: 48 89 75 c0                 	movq	%rsi, -64(%rbp)
100004917: 49 8b 70 10                 	movq	16(%r8), %rsi
10000491b: 48 89 72 10                 	movq	%rsi, 16(%rdx)
10000491f: 49 8b 30                    	movq	(%r8), %rsi
100004922: 49 8b 78 08                 	movq	8(%r8), %rdi
100004926: 48 89 7a 08                 	movq	%rdi, 8(%rdx)
10000492a: 48 89 32                    	movq	%rsi, (%rdx)
10000492d: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100004931: 49 89 70 10                 	movq	%rsi, 16(%r8)
100004935: 48 8b 75 c0                 	movq	-64(%rbp), %rsi
100004939: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
10000493d: 49 89 78 08                 	movq	%rdi, 8(%r8)
100004941: 49 89 30                    	movq	%rsi, (%r8)
100004944: ff c0                       	incl	%eax
100004946: 49 39 d5                    	cmpq	%rdx, %r13
100004949: 4d 0f 44 e8                 	cmoveq	%r8, %r13
10000494d: eb 81                       	jmp	-127 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x660>
10000494f: 90                          	nop
100004950: 48 89 d3                    	movq	%rdx, %rbx
100004953: 4c 39 eb                    	cmpq	%r13, %rbx
100004956: 74 53                       	je	83 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x73b>
100004958: f3 0f 10 03                 	movss	(%rbx), %xmm0
10000495c: 41 0f 2e 45 00              	ucomiss	(%r13), %xmm0
100004961: 76 48                       	jbe	72 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x73b>
100004963: 48 8b 4b 10                 	movq	16(%rbx), %rcx
100004967: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
10000496b: 48 8b 0b                    	movq	(%rbx), %rcx
10000496e: 48 8b 53 08                 	movq	8(%rbx), %rdx
100004972: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
100004976: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
10000497a: 49 8b 4d 10                 	movq	16(%r13), %rcx
10000497e: 48 89 4b 10                 	movq	%rcx, 16(%rbx)
100004982: 49 8b 4d 00                 	movq	(%r13), %rcx
100004986: 49 8b 55 08                 	movq	8(%r13), %rdx
10000498a: 48 89 53 08                 	movq	%rdx, 8(%rbx)
10000498e: 48 89 0b                    	movq	%rcx, (%rbx)
100004991: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100004995: 49 89 4d 10                 	movq	%rcx, 16(%r13)
100004999: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
10000499d: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
1000049a1: 49 89 55 08                 	movq	%rdx, 8(%r13)
1000049a5: 49 89 4d 00                 	movq	%rcx, (%r13)
1000049a9: ff c0                       	incl	%eax
1000049ab: 85 c0                       	testl	%eax, %eax
1000049ad: 75 38                       	jne	56 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x777>
1000049af: 4c 89 e7                    	movq	%r12, %rdi
1000049b2: 48 89 de                    	movq	%rbx, %rsi
1000049b5: e8 56 09 00 00              	callq	2390 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_>
1000049ba: 41 89 c5                    	movl	%eax, %r13d
1000049bd: 4c 8d 73 18                 	leaq	24(%rbx), %r14
1000049c1: 4c 89 f7                    	movq	%r14, %rdi
1000049c4: 4c 89 fe                    	movq	%r15, %rsi
1000049c7: e8 44 09 00 00              	callq	2372 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_>
1000049cc: 84 c0                       	testb	%al, %al
1000049ce: 75 5d                       	jne	93 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x7bd>
1000049d0: 45 84 ed                    	testb	%r13b, %r13b
1000049d3: 4c 8b 45 b8                 	movq	-72(%rbp), %r8
1000049d7: 49 b9 ab aa aa aa aa aa aa aa       	movabsq	$-6148914691236517205, %r9
1000049e1: 0f 85 bd f8 ff ff           	jne	-1859 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x34>
1000049e7: 48 89 d8                    	movq	%rbx, %rax
1000049ea: 4c 29 e0                    	subq	%r12, %rax
1000049ed: 48 c1 f8 03                 	sarq	$3, %rax
1000049f1: 49 0f af c1                 	imulq	%r9, %rax
1000049f5: 4c 89 f9                    	movq	%r15, %rcx
1000049f8: 48 29 d9                    	subq	%rbx, %rcx
1000049fb: 48 c1 f9 03                 	sarq	$3, %rcx
1000049ff: 49 0f af c9                 	imulq	%r9, %rcx
100004a03: 48 39 c8                    	cmpq	%rcx, %rax
100004a06: 7d 40                       	jge	64 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x7d8>
100004a08: 4c 89 e7                    	movq	%r12, %rdi
100004a0b: 48 89 de                    	movq	%rbx, %rsi
100004a0e: e8 5d f8 ff ff              	callq	-1955 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_>
100004a13: 4c 8b 45 b8                 	movq	-72(%rbp), %r8
100004a17: 48 83 c3 18                 	addq	$24, %rbx
100004a1b: 49 89 de                    	movq	%rbx, %r14
100004a1e: 49 b9 ab aa aa aa aa aa aa aa       	movabsq	$-6148914691236517205, %r9
100004a28: e9 77 f8 ff ff              	jmp	-1929 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x34>
100004a2d: 49 89 df                    	movq	%rbx, %r15
100004a30: 45 84 ed                    	testb	%r13b, %r13b
100004a33: 49 b9 ab aa aa aa aa aa aa aa       	movabsq	$-6148914691236517205, %r9
100004a3d: 0f 84 4e f8 ff ff           	je	-1970 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x21>
100004a43: e9 ed 05 00 00              	jmp	1517 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004a48: 48 8d 7b 18                 	leaq	24(%rbx), %rdi
100004a4c: 4c 89 fe                    	movq	%r15, %rsi
100004a4f: e8 1c f8 ff ff              	callq	-2020 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_>
100004a54: 49 89 df                    	movq	%rbx, %r15
100004a57: e9 2b f8 ff ff              	jmp	-2005 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x17>
100004a5c: 48 8d 0d e1 05 00 00        	leaq	1505(%rip), %rcx
100004a63: 48 63 04 81                 	movslq	(%rcx,%rax,4), %rax
100004a67: 48 01 c8                    	addq	%rcx, %rax
100004a6a: ff e0                       	jmpq	*%rax
100004a6c: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
100004a72: 41 0f 2e 00                 	ucomiss	(%r8), %xmm0
100004a76: 0f 87 8c 02 00 00           	ja	652 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xa98>
100004a7c: e9 b4 05 00 00              	jmp	1460 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004a81: 49 8d 44 24 30              	leaq	48(%r12), %rax
100004a86: 49 8d 4c 24 18              	leaq	24(%r12), %rcx
100004a8b: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
100004a91: f3 41 0f 10 54 24 18        	movss	24(%r12), %xmm2
100004a98: 0f 2e c2                    	ucomiss	%xmm2, %xmm0
100004a9b: f3 41 0f 10 4c 24 30        	movss	48(%r12), %xmm1
100004aa2: 76 41                       	jbe	65 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x875>
100004aa4: 0f 2e d1                    	ucomiss	%xmm1, %xmm2
100004aa7: 0f 86 dd 00 00 00           	jbe	221 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x91a>
100004aad: 49 8b 4c 24 10              	movq	16(%r12), %rcx
100004ab2: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100004ab6: 49 8b 0c 24                 	movq	(%r12), %rcx
100004aba: 49 8b 54 24 08              	movq	8(%r12), %rdx
100004abf: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
100004ac3: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
100004ac7: 48 8b 48 10                 	movq	16(%rax), %rcx
100004acb: 49 89 4c 24 10              	movq	%rcx, 16(%r12)
100004ad0: 48 8b 08                    	movq	(%rax), %rcx
100004ad3: 48 8b 50 08                 	movq	8(%rax), %rdx
100004ad7: 49 89 54 24 08              	movq	%rdx, 8(%r12)
100004adc: 49 89 0c 24                 	movq	%rcx, (%r12)
100004ae0: e9 28 01 00 00              	jmp	296 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x99d>
100004ae5: 0f 2e d1                    	ucomiss	%xmm1, %xmm2
100004ae8: 0f 86 36 01 00 00           	jbe	310 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x9b4>
100004aee: 48 8b 51 10                 	movq	16(%rcx), %rdx
100004af2: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100004af6: 48 8b 11                    	movq	(%rcx), %rdx
100004af9: 48 8b 71 08                 	movq	8(%rcx), %rsi
100004afd: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100004b01: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100004b05: 48 8b 50 10                 	movq	16(%rax), %rdx
100004b09: 48 89 51 10                 	movq	%rdx, 16(%rcx)
100004b0d: 48 8b 10                    	movq	(%rax), %rdx
100004b10: 48 8b 70 08                 	movq	8(%rax), %rsi
100004b14: 48 89 71 08                 	movq	%rsi, 8(%rcx)
100004b18: 48 89 11                    	movq	%rdx, (%rcx)
100004b1b: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100004b1f: 48 89 50 10                 	movq	%rdx, 16(%rax)
100004b23: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100004b27: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100004b2b: 48 89 70 08                 	movq	%rsi, 8(%rax)
100004b2f: 48 89 10                    	movq	%rdx, (%rax)
100004b32: 0f 2e 01                    	ucomiss	(%rcx), %xmm0
100004b35: 0f 86 e9 00 00 00           	jbe	233 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x9b4>
100004b3b: 49 8b 54 24 10              	movq	16(%r12), %rdx
100004b40: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100004b44: 49 8b 14 24                 	movq	(%r12), %rdx
100004b48: 49 8b 74 24 08              	movq	8(%r12), %rsi
100004b4d: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100004b51: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100004b55: 48 8b 51 10                 	movq	16(%rcx), %rdx
100004b59: 49 89 54 24 10              	movq	%rdx, 16(%r12)
100004b5e: 48 8b 11                    	movq	(%rcx), %rdx
100004b61: 48 8b 71 08                 	movq	8(%rcx), %rsi
100004b65: 49 89 74 24 08              	movq	%rsi, 8(%r12)
100004b6a: 49 89 14 24                 	movq	%rdx, (%r12)
100004b6e: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100004b72: 48 89 51 10                 	movq	%rdx, 16(%rcx)
100004b76: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100004b7a: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100004b7e: 48 89 71 08                 	movq	%rsi, 8(%rcx)
100004b82: 48 89 11                    	movq	%rdx, (%rcx)
100004b85: e9 9a 00 00 00              	jmp	154 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x9b4>
100004b8a: 49 8b 54 24 10              	movq	16(%r12), %rdx
100004b8f: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100004b93: 49 8b 14 24                 	movq	(%r12), %rdx
100004b97: 49 8b 74 24 08              	movq	8(%r12), %rsi
100004b9c: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100004ba0: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100004ba4: 48 8b 51 10                 	movq	16(%rcx), %rdx
100004ba8: 49 89 54 24 10              	movq	%rdx, 16(%r12)
100004bad: 48 8b 11                    	movq	(%rcx), %rdx
100004bb0: 48 8b 71 08                 	movq	8(%rcx), %rsi
100004bb4: 49 89 74 24 08              	movq	%rsi, 8(%r12)
100004bb9: 49 89 14 24                 	movq	%rdx, (%r12)
100004bbd: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100004bc1: 48 89 51 10                 	movq	%rdx, 16(%rcx)
100004bc5: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100004bc9: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100004bcd: 48 89 71 08                 	movq	%rsi, 8(%rcx)
100004bd1: 48 89 11                    	movq	%rdx, (%rcx)
100004bd4: f3 41 0f 10 44 24 18        	movss	24(%r12), %xmm0
100004bdb: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
100004bde: 76 44                       	jbe	68 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x9b4>
100004be0: 48 8b 51 10                 	movq	16(%rcx), %rdx
100004be4: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100004be8: 48 8b 11                    	movq	(%rcx), %rdx
100004beb: 48 8b 71 08                 	movq	8(%rcx), %rsi
100004bef: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100004bf3: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100004bf7: 48 8b 50 10                 	movq	16(%rax), %rdx
100004bfb: 48 89 51 10                 	movq	%rdx, 16(%rcx)
100004bff: 48 8b 10                    	movq	(%rax), %rdx
100004c02: 48 8b 70 08                 	movq	8(%rax), %rsi
100004c06: 48 89 71 08                 	movq	%rsi, 8(%rcx)
100004c0a: 48 89 11                    	movq	%rdx, (%rcx)
100004c0d: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100004c11: 48 89 48 10                 	movq	%rcx, 16(%rax)
100004c15: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100004c19: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100004c1d: 48 89 50 08                 	movq	%rdx, 8(%rax)
100004c21: 48 89 08                    	movq	%rcx, (%rax)
100004c24: 49 8d 54 24 48              	leaq	72(%r12), %rdx
100004c29: 4c 39 fa                    	cmpq	%r15, %rdx
100004c2c: 0f 84 03 04 00 00           	je	1027 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004c32: b9 48 00 00 00              	movl	$72, %ecx
100004c37: eb 35                       	jmp	53 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x9fe>
100004c39: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100004c40: 4c 89 e2                    	movq	%r12, %rdx
100004c43: f3 0f 11 02                 	movss	%xmm0, (%rdx)
100004c47: 48 8b 75 c0                 	movq	-64(%rbp), %rsi
100004c4b: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
100004c4f: 48 89 72 04                 	movq	%rsi, 4(%rdx)
100004c53: 48 89 7a 0c                 	movq	%rdi, 12(%rdx)
100004c57: 8b 75 d0                    	movl	-48(%rbp), %esi
100004c5a: 89 72 14                    	movl	%esi, 20(%rdx)
100004c5d: 48 8d 50 18                 	leaq	24(%rax), %rdx
100004c61: 48 83 c1 18                 	addq	$24, %rcx
100004c65: 4c 39 fa                    	cmpq	%r15, %rdx
100004c68: 0f 84 c7 03 00 00           	je	967 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004c6e: f3 0f 10 08                 	movss	(%rax), %xmm1
100004c72: 48 89 d0                    	movq	%rdx, %rax
100004c75: f3 0f 10 02                 	movss	(%rdx), %xmm0
100004c79: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
100004c7c: 76 df                       	jbe	-33 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x9ed>
100004c7e: 8b 50 14                    	movl	20(%rax), %edx
100004c81: 89 55 d0                    	movl	%edx, -48(%rbp)
100004c84: 48 8b 50 04                 	movq	4(%rax), %rdx
100004c88: 48 8b 70 0c                 	movq	12(%rax), %rsi
100004c8c: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100004c90: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100004c94: 48 89 ca                    	movq	%rcx, %rdx
100004c97: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100004ca0: 49 8b 74 14 f8              	movq	-8(%r12,%rdx), %rsi
100004ca5: 49 89 74 14 10              	movq	%rsi, 16(%r12,%rdx)
100004caa: 49 8b 74 14 e8              	movq	-24(%r12,%rdx), %rsi
100004caf: 49 8b 7c 14 f0              	movq	-16(%r12,%rdx), %rdi
100004cb4: 49 89 7c 14 08              	movq	%rdi, 8(%r12,%rdx)
100004cb9: 49 89 34 14                 	movq	%rsi, (%r12,%rdx)
100004cbd: 48 83 fa 18                 	cmpq	$24, %rdx
100004cc1: 0f 84 79 ff ff ff           	je	-135 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x9d0>
100004cc7: f3 41 0f 10 4c 14 d0        	movss	-48(%r12,%rdx), %xmm1
100004cce: 48 83 c2 e8                 	addq	$-24, %rdx
100004cd2: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
100004cd5: 77 c9                       	ja	-55 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xa30>
100004cd7: 4c 01 e2                    	addq	%r12, %rdx
100004cda: e9 64 ff ff ff              	jmp	-156 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0x9d3>
100004cdf: 49 8d 44 24 18              	leaq	24(%r12), %rax
100004ce4: f3 41 0f 10 0c 24           	movss	(%r12), %xmm1
100004cea: f3 41 0f 10 44 24 18        	movss	24(%r12), %xmm0
100004cf1: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
100004cf4: f3 41 0f 10 08              	movss	(%r8), %xmm1
100004cf9: 0f 86 ff 01 00 00           	jbe	511 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xc8e>
100004cff: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
100004d02: 0f 86 a4 02 00 00           	jbe	676 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xd3c>
100004d08: 49 8b 44 24 10              	movq	16(%r12), %rax
100004d0d: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100004d11: 49 8b 04 24                 	movq	(%r12), %rax
100004d15: 49 8b 4c 24 08              	movq	8(%r12), %rcx
100004d1a: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100004d1e: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100004d22: 49 8b 40 10                 	movq	16(%r8), %rax
100004d26: 49 89 44 24 10              	movq	%rax, 16(%r12)
100004d2b: 49 8b 00                    	movq	(%r8), %rax
100004d2e: 49 8b 48 08                 	movq	8(%r8), %rcx
100004d32: 49 89 4c 24 08              	movq	%rcx, 8(%r12)
100004d37: 49 89 04 24                 	movq	%rax, (%r12)
100004d3b: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100004d3f: 49 89 40 10                 	movq	%rax, 16(%r8)
100004d43: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100004d47: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004d4b: 49 89 48 08                 	movq	%rcx, 8(%r8)
100004d4f: 49 89 00                    	movq	%rax, (%r8)
100004d52: e9 de 02 00 00              	jmp	734 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004d57: 49 8d 74 24 18              	leaq	24(%r12), %rsi
100004d5c: 49 8d 54 24 30              	leaq	48(%r12), %rdx
100004d61: 4c 89 e7                    	movq	%r12, %rdi
100004d64: 4c 89 c1                    	movq	%r8, %rcx
100004d67: 48 83 c4 38                 	addq	$56, %rsp
100004d6b: 5b                          	popq	%rbx
100004d6c: 41 5c                       	popq	%r12
100004d6e: 41 5d                       	popq	%r13
100004d70: 41 5e                       	popq	%r14
100004d72: 41 5f                       	popq	%r15
100004d74: 5d                          	popq	%rbp
100004d75: e9 e6 02 00 00              	jmp	742 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_>
100004d7a: 4d 8d 74 24 18              	leaq	24(%r12), %r14
100004d7f: 4d 8d 6c 24 30              	leaq	48(%r12), %r13
100004d84: 49 8d 5c 24 48              	leaq	72(%r12), %rbx
100004d89: 4c 89 e7                    	movq	%r12, %rdi
100004d8c: 4c 89 f6                    	movq	%r14, %rsi
100004d8f: 4c 89 ea                    	movq	%r13, %rdx
100004d92: 48 89 d9                    	movq	%rbx, %rcx
100004d95: e8 c6 02 00 00              	callq	710 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_>
100004d9a: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
100004d9e: f3 41 0f 10 44 24 48        	movss	72(%r12), %xmm0
100004da5: 0f 2e 02                    	ucomiss	(%rdx), %xmm0
100004da8: 0f 86 87 02 00 00           	jbe	647 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004dae: 48 8b 43 10                 	movq	16(%rbx), %rax
100004db2: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100004db6: 48 8b 03                    	movq	(%rbx), %rax
100004db9: 48 8b 4b 08                 	movq	8(%rbx), %rcx
100004dbd: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100004dc1: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100004dc5: 48 8b 42 10                 	movq	16(%rdx), %rax
100004dc9: 48 89 43 10                 	movq	%rax, 16(%rbx)
100004dcd: 48 8b 02                    	movq	(%rdx), %rax
100004dd0: 48 8b 4a 08                 	movq	8(%rdx), %rcx
100004dd4: 48 89 4b 08                 	movq	%rcx, 8(%rbx)
100004dd8: 48 89 03                    	movq	%rax, (%rbx)
100004ddb: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100004ddf: 48 89 42 10                 	movq	%rax, 16(%rdx)
100004de3: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100004de7: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004deb: 48 89 4a 08                 	movq	%rcx, 8(%rdx)
100004def: 48 89 02                    	movq	%rax, (%rdx)
100004df2: f3 41 0f 10 45 00           	movss	(%r13), %xmm0
100004df8: 0f 2e 03                    	ucomiss	(%rbx), %xmm0
100004dfb: 0f 86 34 02 00 00           	jbe	564 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004e01: 49 8b 45 10                 	movq	16(%r13), %rax
100004e05: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100004e09: 49 8b 45 00                 	movq	(%r13), %rax
100004e0d: 49 8b 4d 08                 	movq	8(%r13), %rcx
100004e11: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100004e15: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100004e19: 48 8b 43 10                 	movq	16(%rbx), %rax
100004e1d: 49 89 45 10                 	movq	%rax, 16(%r13)
100004e21: 48 8b 03                    	movq	(%rbx), %rax
100004e24: 48 8b 4b 08                 	movq	8(%rbx), %rcx
100004e28: 49 89 4d 08                 	movq	%rcx, 8(%r13)
100004e2c: 49 89 45 00                 	movq	%rax, (%r13)
100004e30: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100004e34: 48 89 43 10                 	movq	%rax, 16(%rbx)
100004e38: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100004e3c: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004e40: 48 89 4b 08                 	movq	%rcx, 8(%rbx)
100004e44: 48 89 03                    	movq	%rax, (%rbx)
100004e47: f3 41 0f 10 06              	movss	(%r14), %xmm0
100004e4c: 41 0f 2e 45 00              	ucomiss	(%r13), %xmm0
100004e51: 0f 86 de 01 00 00           	jbe	478 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004e57: 49 8b 46 10                 	movq	16(%r14), %rax
100004e5b: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100004e5f: 49 8b 06                    	movq	(%r14), %rax
100004e62: 49 8b 4e 08                 	movq	8(%r14), %rcx
100004e66: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100004e6a: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100004e6e: 49 8b 45 10                 	movq	16(%r13), %rax
100004e72: 49 89 46 10                 	movq	%rax, 16(%r14)
100004e76: 49 8b 45 00                 	movq	(%r13), %rax
100004e7a: 49 8b 4d 08                 	movq	8(%r13), %rcx
100004e7e: 49 89 4e 08                 	movq	%rcx, 8(%r14)
100004e82: 49 89 06                    	movq	%rax, (%r14)
100004e85: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100004e89: 49 89 45 10                 	movq	%rax, 16(%r13)
100004e8d: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100004e91: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004e95: 49 89 4d 08                 	movq	%rcx, 8(%r13)
100004e99: 49 89 45 00                 	movq	%rax, (%r13)
100004e9d: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
100004ea3: 41 0f 2e 44 24 18           	ucomiss	24(%r12), %xmm0
100004ea9: 0f 86 86 01 00 00           	jbe	390 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004eaf: 49 8b 44 24 10              	movq	16(%r12), %rax
100004eb4: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100004eb8: 49 8b 04 24                 	movq	(%r12), %rax
100004ebc: 49 8b 4c 24 08              	movq	8(%r12), %rcx
100004ec1: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100004ec5: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100004ec9: 49 8b 46 10                 	movq	16(%r14), %rax
100004ecd: 49 89 44 24 10              	movq	%rax, 16(%r12)
100004ed2: 49 8b 06                    	movq	(%r14), %rax
100004ed5: 49 8b 4e 08                 	movq	8(%r14), %rcx
100004ed9: 49 89 4c 24 08              	movq	%rcx, 8(%r12)
100004ede: 49 89 04 24                 	movq	%rax, (%r12)
100004ee2: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100004ee6: 49 89 46 10                 	movq	%rax, 16(%r14)
100004eea: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100004eee: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004ef2: 49 89 4e 08                 	movq	%rcx, 8(%r14)
100004ef6: 49 89 06                    	movq	%rax, (%r14)
100004ef9: e9 37 01 00 00              	jmp	311 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004efe: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
100004f01: 0f 86 2e 01 00 00           	jbe	302 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004f07: 48 8b 48 10                 	movq	16(%rax), %rcx
100004f0b: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100004f0f: 48 8b 08                    	movq	(%rax), %rcx
100004f12: 48 8b 50 08                 	movq	8(%rax), %rdx
100004f16: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
100004f1a: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
100004f1e: 49 8b 48 10                 	movq	16(%r8), %rcx
100004f22: 48 89 48 10                 	movq	%rcx, 16(%rax)
100004f26: 49 8b 08                    	movq	(%r8), %rcx
100004f29: 49 8b 50 08                 	movq	8(%r8), %rdx
100004f2d: 48 89 50 08                 	movq	%rdx, 8(%rax)
100004f31: 48 89 08                    	movq	%rcx, (%rax)
100004f34: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100004f38: 49 89 48 10                 	movq	%rcx, 16(%r8)
100004f3c: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100004f40: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100004f44: 49 89 50 08                 	movq	%rdx, 8(%r8)
100004f48: 49 89 08                    	movq	%rcx, (%r8)
100004f4b: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
100004f51: 41 0f 2e 44 24 18           	ucomiss	24(%r12), %xmm0
100004f57: 0f 86 d8 00 00 00           	jbe	216 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004f5d: 49 8b 4c 24 10              	movq	16(%r12), %rcx
100004f62: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100004f66: 49 8b 0c 24                 	movq	(%r12), %rcx
100004f6a: 49 8b 54 24 08              	movq	8(%r12), %rdx
100004f6f: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
100004f73: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
100004f77: 48 8b 48 10                 	movq	16(%rax), %rcx
100004f7b: 49 89 4c 24 10              	movq	%rcx, 16(%r12)
100004f80: 48 8b 08                    	movq	(%rax), %rcx
100004f83: 48 8b 50 08                 	movq	8(%rax), %rdx
100004f87: 49 89 54 24 08              	movq	%rdx, 8(%r12)
100004f8c: 49 89 0c 24                 	movq	%rcx, (%r12)
100004f90: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100004f94: 48 89 48 10                 	movq	%rcx, 16(%rax)
100004f98: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100004f9c: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100004fa0: 48 89 50 08                 	movq	%rdx, 8(%rax)
100004fa4: 48 89 08                    	movq	%rcx, (%rax)
100004fa7: e9 89 00 00 00              	jmp	137 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100004fac: 49 8b 4c 24 10              	movq	16(%r12), %rcx
100004fb1: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100004fb5: 49 8b 0c 24                 	movq	(%r12), %rcx
100004fb9: 49 8b 54 24 08              	movq	8(%r12), %rdx
100004fbe: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
100004fc2: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
100004fc6: 48 8b 48 10                 	movq	16(%rax), %rcx
100004fca: 49 89 4c 24 10              	movq	%rcx, 16(%r12)
100004fcf: 48 8b 08                    	movq	(%rax), %rcx
100004fd2: 48 8b 50 08                 	movq	8(%rax), %rdx
100004fd6: 49 89 54 24 08              	movq	%rdx, 8(%r12)
100004fdb: 49 89 0c 24                 	movq	%rcx, (%r12)
100004fdf: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100004fe3: 48 89 48 10                 	movq	%rcx, 16(%rax)
100004fe7: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100004feb: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100004fef: 48 89 50 08                 	movq	%rdx, 8(%rax)
100004ff3: 48 89 08                    	movq	%rcx, (%rax)
100004ff6: f3 41 0f 10 44 24 18        	movss	24(%r12), %xmm0
100004ffd: 41 0f 2e 00                 	ucomiss	(%r8), %xmm0
100005001: 76 32                       	jbe	50 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xdc5>
100005003: 48 8b 48 10                 	movq	16(%rax), %rcx
100005007: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
10000500b: 48 8b 08                    	movq	(%rax), %rcx
10000500e: 48 8b 50 08                 	movq	8(%rax), %rdx
100005012: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
100005016: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
10000501a: 49 8b 48 10                 	movq	16(%r8), %rcx
10000501e: 48 89 48 10                 	movq	%rcx, 16(%rax)
100005022: 49 8b 08                    	movq	(%r8), %rcx
100005025: 49 8b 50 08                 	movq	8(%r8), %rdx
100005029: 48 89 50 08                 	movq	%rdx, 8(%rax)
10000502d: 48 89 08                    	movq	%rcx, (%rax)
100005030: e9 06 fd ff ff              	jmp	-762 <__ZNSt3__16__sortIRZ4mainE3$_0P3RecEEvT0_S5_T_+0xacb>
100005035: 48 83 c4 38                 	addq	$56, %rsp
100005039: 5b                          	popq	%rbx
10000503a: 41 5c                       	popq	%r12
10000503c: 41 5d                       	popq	%r13
10000503e: 41 5e                       	popq	%r14
100005040: 41 5f                       	popq	%r15
100005042: 5d                          	popq	%rbp
100005043: c3                          	retq
100005044: f1                          	<unknown>
100005045: ff ff                       	<unknown>
100005047: ff f1                       	pushq	%rcx
100005049: ff ff                       	<unknown>
10000504b: ff 28                       	ljmpl	*(%rax)
10000504d: fa                          	cli
10000504e: ff ff                       	<unknown>
100005050: 9b                          	wait
100005051: fc                          	cld
100005052: ff ff                       	<unknown>
100005054: 13 fd                       	adcl	%ebp, %edi
100005056: ff ff                       	<unknown>
100005058: 36 fd                       	std
10000505a: ff ff                       	<unknown>
10000505c: 0f 1f 40 00                 	nopl	(%rax)

0000000100005060 __ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_:
100005060: 55                          	pushq	%rbp
100005061: 48 89 e5                    	movq	%rsp, %rbp
100005064: f3 0f 10 06                 	movss	(%rsi), %xmm0
100005068: f3 0f 10 0f                 	movss	(%rdi), %xmm1
10000506c: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
10000506f: f3 0f 10 0a                 	movss	(%rdx), %xmm1
100005073: 76 57                       	jbe	87 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_+0x6c>
100005075: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
100005078: 0f 86 f8 00 00 00           	jbe	248 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_+0x116>
10000507e: 48 8b 47 10                 	movq	16(%rdi), %rax
100005082: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100005086: 4c 8b 07                    	movq	(%rdi), %r8
100005089: 48 8b 47 08                 	movq	8(%rdi), %rax
10000508d: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100005091: 4c 89 45 e8                 	movq	%r8, -24(%rbp)
100005095: 48 8b 42 10                 	movq	16(%rdx), %rax
100005099: 48 89 47 10                 	movq	%rax, 16(%rdi)
10000509d: 4c 8b 02                    	movq	(%rdx), %r8
1000050a0: 48 8b 42 08                 	movq	8(%rdx), %rax
1000050a4: 48 89 47 08                 	movq	%rax, 8(%rdi)
1000050a8: 4c 89 07                    	movq	%r8, (%rdi)
1000050ab: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000050af: 48 89 42 10                 	movq	%rax, 16(%rdx)
1000050b3: 4c 8b 45 e8                 	movq	-24(%rbp), %r8
1000050b7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000050bb: 48 89 42 08                 	movq	%rax, 8(%rdx)
1000050bf: 4c 89 02                    	movq	%r8, (%rdx)
1000050c2: b8 01 00 00 00              	movl	$1, %eax
1000050c7: e9 45 01 00 00              	jmp	325 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_+0x1b1>
1000050cc: 31 c0                       	xorl	%eax, %eax
1000050ce: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
1000050d1: 0f 86 3a 01 00 00           	jbe	314 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_+0x1b1>
1000050d7: 48 8b 46 10                 	movq	16(%rsi), %rax
1000050db: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000050df: 4c 8b 06                    	movq	(%rsi), %r8
1000050e2: 48 8b 46 08                 	movq	8(%rsi), %rax
1000050e6: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000050ea: 4c 89 45 e8                 	movq	%r8, -24(%rbp)
1000050ee: 48 8b 42 10                 	movq	16(%rdx), %rax
1000050f2: 48 89 46 10                 	movq	%rax, 16(%rsi)
1000050f6: 4c 8b 02                    	movq	(%rdx), %r8
1000050f9: 48 8b 42 08                 	movq	8(%rdx), %rax
1000050fd: 48 89 46 08                 	movq	%rax, 8(%rsi)
100005101: 4c 89 06                    	movq	%r8, (%rsi)
100005104: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005108: 48 89 42 10                 	movq	%rax, 16(%rdx)
10000510c: 4c 8b 45 e8                 	movq	-24(%rbp), %r8
100005110: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005114: 48 89 42 08                 	movq	%rax, 8(%rdx)
100005118: 4c 89 02                    	movq	%r8, (%rdx)
10000511b: f3 0f 10 07                 	movss	(%rdi), %xmm0
10000511f: b8 01 00 00 00              	movl	$1, %eax
100005124: 0f 2e 06                    	ucomiss	(%rsi), %xmm0
100005127: 0f 86 e4 00 00 00           	jbe	228 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_+0x1b1>
10000512d: 48 8b 47 10                 	movq	16(%rdi), %rax
100005131: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100005135: 4c 8b 07                    	movq	(%rdi), %r8
100005138: 48 8b 47 08                 	movq	8(%rdi), %rax
10000513c: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100005140: 4c 89 45 e8                 	movq	%r8, -24(%rbp)
100005144: 48 8b 46 10                 	movq	16(%rsi), %rax
100005148: 48 89 47 10                 	movq	%rax, 16(%rdi)
10000514c: 4c 8b 06                    	movq	(%rsi), %r8
10000514f: 48 8b 46 08                 	movq	8(%rsi), %rax
100005153: 48 89 47 08                 	movq	%rax, 8(%rdi)
100005157: 4c 89 07                    	movq	%r8, (%rdi)
10000515a: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000515e: 48 89 46 10                 	movq	%rax, 16(%rsi)
100005162: 4c 8b 45 e8                 	movq	-24(%rbp), %r8
100005166: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000516a: 48 89 46 08                 	movq	%rax, 8(%rsi)
10000516e: 4c 89 06                    	movq	%r8, (%rsi)
100005171: e9 96 00 00 00              	jmp	150 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_+0x1ac>
100005176: 48 8b 47 10                 	movq	16(%rdi), %rax
10000517a: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000517e: 4c 8b 07                    	movq	(%rdi), %r8
100005181: 48 8b 47 08                 	movq	8(%rdi), %rax
100005185: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100005189: 4c 89 45 e8                 	movq	%r8, -24(%rbp)
10000518d: 48 8b 46 10                 	movq	16(%rsi), %rax
100005191: 48 89 47 10                 	movq	%rax, 16(%rdi)
100005195: 4c 8b 06                    	movq	(%rsi), %r8
100005198: 48 8b 46 08                 	movq	8(%rsi), %rax
10000519c: 48 89 47 08                 	movq	%rax, 8(%rdi)
1000051a0: 4c 89 07                    	movq	%r8, (%rdi)
1000051a3: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000051a7: 48 89 46 10                 	movq	%rax, 16(%rsi)
1000051ab: 4c 8b 45 e8                 	movq	-24(%rbp), %r8
1000051af: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000051b3: 48 89 46 08                 	movq	%rax, 8(%rsi)
1000051b7: 4c 89 06                    	movq	%r8, (%rsi)
1000051ba: f3 0f 10 06                 	movss	(%rsi), %xmm0
1000051be: b8 01 00 00 00              	movl	$1, %eax
1000051c3: 0f 2e 02                    	ucomiss	(%rdx), %xmm0
1000051c6: 76 49                       	jbe	73 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_+0x1b1>
1000051c8: 48 8b 46 10                 	movq	16(%rsi), %rax
1000051cc: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000051d0: 4c 8b 06                    	movq	(%rsi), %r8
1000051d3: 48 8b 46 08                 	movq	8(%rsi), %rax
1000051d7: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000051db: 4c 89 45 e8                 	movq	%r8, -24(%rbp)
1000051df: 48 8b 42 10                 	movq	16(%rdx), %rax
1000051e3: 48 89 46 10                 	movq	%rax, 16(%rsi)
1000051e7: 4c 8b 02                    	movq	(%rdx), %r8
1000051ea: 48 8b 42 08                 	movq	8(%rdx), %rax
1000051ee: 48 89 46 08                 	movq	%rax, 8(%rsi)
1000051f2: 4c 89 06                    	movq	%r8, (%rsi)
1000051f5: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000051f9: 48 89 42 10                 	movq	%rax, 16(%rdx)
1000051fd: 4c 8b 45 e8                 	movq	-24(%rbp), %r8
100005201: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005205: 48 89 42 08                 	movq	%rax, 8(%rdx)
100005209: 4c 89 02                    	movq	%r8, (%rdx)
10000520c: b8 02 00 00 00              	movl	$2, %eax
100005211: f3 0f 10 02                 	movss	(%rdx), %xmm0
100005215: 0f 2e 01                    	ucomiss	(%rcx), %xmm0
100005218: 0f 86 e5 00 00 00           	jbe	229 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_+0x2a3>
10000521e: 4c 8b 42 10                 	movq	16(%rdx), %r8
100005222: 4c 89 45 f8                 	movq	%r8, -8(%rbp)
100005226: 4c 8b 02                    	movq	(%rdx), %r8
100005229: 4c 8b 4a 08                 	movq	8(%rdx), %r9
10000522d: 4c 89 4d f0                 	movq	%r9, -16(%rbp)
100005231: 4c 89 45 e8                 	movq	%r8, -24(%rbp)
100005235: 4c 8b 41 10                 	movq	16(%rcx), %r8
100005239: 4c 89 42 10                 	movq	%r8, 16(%rdx)
10000523d: 4c 8b 01                    	movq	(%rcx), %r8
100005240: 4c 8b 49 08                 	movq	8(%rcx), %r9
100005244: 4c 89 4a 08                 	movq	%r9, 8(%rdx)
100005248: 4c 89 02                    	movq	%r8, (%rdx)
10000524b: 4c 8b 45 f8                 	movq	-8(%rbp), %r8
10000524f: 4c 89 41 10                 	movq	%r8, 16(%rcx)
100005253: 4c 8b 45 e8                 	movq	-24(%rbp), %r8
100005257: 4c 8b 4d f0                 	movq	-16(%rbp), %r9
10000525b: 4c 89 49 08                 	movq	%r9, 8(%rcx)
10000525f: 4c 89 01                    	movq	%r8, (%rcx)
100005262: f3 0f 10 06                 	movss	(%rsi), %xmm0
100005266: 0f 2e 02                    	ucomiss	(%rdx), %xmm0
100005269: 0f 86 96 00 00 00           	jbe	150 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_+0x2a5>
10000526f: 48 8b 4e 10                 	movq	16(%rsi), %rcx
100005273: 48 89 4d f8                 	movq	%rcx, -8(%rbp)
100005277: 4c 8b 06                    	movq	(%rsi), %r8
10000527a: 48 8b 4e 08                 	movq	8(%rsi), %rcx
10000527e: 48 89 4d f0                 	movq	%rcx, -16(%rbp)
100005282: 4c 89 45 e8                 	movq	%r8, -24(%rbp)
100005286: 48 8b 4a 10                 	movq	16(%rdx), %rcx
10000528a: 48 89 4e 10                 	movq	%rcx, 16(%rsi)
10000528e: 4c 8b 02                    	movq	(%rdx), %r8
100005291: 48 8b 4a 08                 	movq	8(%rdx), %rcx
100005295: 48 89 4e 08                 	movq	%rcx, 8(%rsi)
100005299: 4c 89 06                    	movq	%r8, (%rsi)
10000529c: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
1000052a0: 48 89 4a 10                 	movq	%rcx, 16(%rdx)
1000052a4: 4c 8b 45 e8                 	movq	-24(%rbp), %r8
1000052a8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000052ac: 48 89 4a 08                 	movq	%rcx, 8(%rdx)
1000052b0: 4c 89 02                    	movq	%r8, (%rdx)
1000052b3: f3 0f 10 07                 	movss	(%rdi), %xmm0
1000052b7: 0f 2e 06                    	ucomiss	(%rsi), %xmm0
1000052ba: 76 4d                       	jbe	77 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_+0x2a9>
1000052bc: 48 8b 4f 10                 	movq	16(%rdi), %rcx
1000052c0: 48 89 4d f8                 	movq	%rcx, -8(%rbp)
1000052c4: 48 8b 0f                    	movq	(%rdi), %rcx
1000052c7: 48 8b 57 08                 	movq	8(%rdi), %rdx
1000052cb: 48 89 55 f0                 	movq	%rdx, -16(%rbp)
1000052cf: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
1000052d3: 48 8b 4e 10                 	movq	16(%rsi), %rcx
1000052d7: 48 89 4f 10                 	movq	%rcx, 16(%rdi)
1000052db: 48 8b 0e                    	movq	(%rsi), %rcx
1000052de: 48 8b 56 08                 	movq	8(%rsi), %rdx
1000052e2: 48 89 57 08                 	movq	%rdx, 8(%rdi)
1000052e6: 48 89 0f                    	movq	%rcx, (%rdi)
1000052e9: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
1000052ed: 48 89 4e 10                 	movq	%rcx, 16(%rsi)
1000052f1: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000052f5: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
1000052f9: 48 89 56 08                 	movq	%rdx, 8(%rsi)
1000052fd: 48 89 0e                    	movq	%rcx, (%rsi)
100005300: 83 c0 03                    	addl	$3, %eax
100005303: 5d                          	popq	%rbp
100005304: c3                          	retq
100005305: ff c0                       	incl	%eax
100005307: 5d                          	popq	%rbp
100005308: c3                          	retq
100005309: 83 c0 02                    	addl	$2, %eax
10000530c: 5d                          	popq	%rbp
10000530d: c3                          	retq
10000530e: 66 90                       	nop

0000000100005310 __ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_:
100005310: 55                          	pushq	%rbp
100005311: 48 89 e5                    	movq	%rsp, %rbp
100005314: 41 57                       	pushq	%r15
100005316: 41 56                       	pushq	%r14
100005318: 41 55                       	pushq	%r13
10000531a: 41 54                       	pushq	%r12
10000531c: 53                          	pushq	%rbx
10000531d: 48 83 ec 18                 	subq	$24, %rsp
100005321: 49 89 f7                    	movq	%rsi, %r15
100005324: 48 89 fb                    	movq	%rdi, %rbx
100005327: 48 89 f1                    	movq	%rsi, %rcx
10000532a: 48 29 f9                    	subq	%rdi, %rcx
10000532d: 48 c1 f9 03                 	sarq	$3, %rcx
100005331: 48 b8 ab aa aa aa aa aa aa aa       	movabsq	$-6148914691236517205, %rax
10000533b: 48 0f af c1                 	imulq	%rcx, %rax
10000533f: 41 b6 01                    	movb	$1, %r14b
100005342: 48 83 f8 05                 	cmpq	$5, %rax
100005346: 0f 87 c7 00 00 00           	ja	199 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x103>
10000534c: 48 8d 0d 09 06 00 00        	leaq	1545(%rip), %rcx
100005353: 48 63 04 81                 	movslq	(%rcx,%rax,4), %rax
100005357: 48 01 c8                    	addq	%rcx, %rax
10000535a: ff e0                       	jmpq	*%rax
10000535c: f3 0f 10 03                 	movss	(%rbx), %xmm0
100005360: 41 0f 2e 47 e8              	ucomiss	-24(%r15), %xmm0
100005365: 0f 86 de 05 00 00           	jbe	1502 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
10000536b: 49 83 c7 e8                 	addq	$-24, %r15
10000536f: 48 8b 43 10                 	movq	16(%rbx), %rax
100005373: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100005377: 48 8b 03                    	movq	(%rbx), %rax
10000537a: 48 8b 4b 08                 	movq	8(%rbx), %rcx
10000537e: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100005382: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100005386: 49 8b 47 10                 	movq	16(%r15), %rax
10000538a: 48 89 43 10                 	movq	%rax, 16(%rbx)
10000538e: 49 8b 07                    	movq	(%r15), %rax
100005391: 49 8b 4f 08                 	movq	8(%r15), %rcx
100005395: 48 89 4b 08                 	movq	%rcx, 8(%rbx)
100005399: 48 89 03                    	movq	%rax, (%rbx)
10000539c: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000053a0: 49 89 47 10                 	movq	%rax, 16(%r15)
1000053a4: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000053a8: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000053ac: 49 89 4f 08                 	movq	%rcx, 8(%r15)
1000053b0: 49 89 07                    	movq	%rax, (%r15)
1000053b3: e9 91 05 00 00              	jmp	1425 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
1000053b8: 48 8d 4b 18                 	leaq	24(%rbx), %rcx
1000053bc: 49 8d 47 e8                 	leaq	-24(%r15), %rax
1000053c0: f3 0f 10 0b                 	movss	(%rbx), %xmm1
1000053c4: f3 0f 10 43 18              	movss	24(%rbx), %xmm0
1000053c9: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
1000053cc: f3 41 0f 10 4f e8           	movss	-24(%r15), %xmm1
1000053d2: 0f 86 41 02 00 00           	jbe	577 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x309>
1000053d8: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
1000053db: 0f 86 7b 03 00 00           	jbe	891 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x44c>
1000053e1: 48 8b 4b 10                 	movq	16(%rbx), %rcx
1000053e5: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
1000053e9: 48 8b 0b                    	movq	(%rbx), %rcx
1000053ec: 48 8b 53 08                 	movq	8(%rbx), %rdx
1000053f0: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
1000053f4: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
1000053f8: 48 8b 48 10                 	movq	16(%rax), %rcx
1000053fc: 48 89 4b 10                 	movq	%rcx, 16(%rbx)
100005400: 48 8b 08                    	movq	(%rax), %rcx
100005403: 48 8b 50 08                 	movq	8(%rax), %rdx
100005407: 48 89 53 08                 	movq	%rdx, 8(%rbx)
10000540b: 48 89 0b                    	movq	%rcx, (%rbx)
10000540e: e9 c8 03 00 00              	jmp	968 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x4cb>
100005413: 48 8d 43 30                 	leaq	48(%rbx), %rax
100005417: 48 8d 4b 18                 	leaq	24(%rbx), %rcx
10000541b: f3 0f 10 03                 	movss	(%rbx), %xmm0
10000541f: f3 0f 10 53 18              	movss	24(%rbx), %xmm2
100005424: 0f 2e c2                    	ucomiss	%xmm2, %xmm0
100005427: f3 0f 10 4b 30              	movss	48(%rbx), %xmm1
10000542c: 0f 86 8b 02 00 00           	jbe	651 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x3ad>
100005432: 0f 2e d1                    	ucomiss	%xmm1, %xmm2
100005435: 0f 86 bc 03 00 00           	jbe	956 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x4e7>
10000543b: 48 8b 4b 10                 	movq	16(%rbx), %rcx
10000543f: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100005443: 48 8b 0b                    	movq	(%rbx), %rcx
100005446: 48 8b 53 08                 	movq	8(%rbx), %rdx
10000544a: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
10000544e: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
100005452: 48 8b 48 10                 	movq	16(%rax), %rcx
100005456: 48 89 4b 10                 	movq	%rcx, 16(%rbx)
10000545a: 48 8b 08                    	movq	(%rax), %rcx
10000545d: 48 8b 50 08                 	movq	8(%rax), %rdx
100005461: 48 89 53 08                 	movq	%rdx, 8(%rbx)
100005465: 48 89 0b                    	movq	%rcx, (%rbx)
100005468: e9 05 04 00 00              	jmp	1029 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x562>
10000546d: 48 8d 73 18                 	leaq	24(%rbx), %rsi
100005471: 48 8d 53 30                 	leaq	48(%rbx), %rdx
100005475: 49 83 c7 e8                 	addq	$-24, %r15
100005479: 48 89 df                    	movq	%rbx, %rdi
10000547c: 4c 89 f9                    	movq	%r15, %rcx
10000547f: e8 dc fb ff ff              	callq	-1060 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_>
100005484: e9 c0 04 00 00              	jmp	1216 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
100005489: 4c 8d 63 18                 	leaq	24(%rbx), %r12
10000548d: 4c 8d 6b 30                 	leaq	48(%rbx), %r13
100005491: 4c 8d 73 48                 	leaq	72(%rbx), %r14
100005495: 48 89 df                    	movq	%rbx, %rdi
100005498: 4c 89 e6                    	movq	%r12, %rsi
10000549b: 4c 89 ea                    	movq	%r13, %rdx
10000549e: 4c 89 f1                    	movq	%r14, %rcx
1000054a1: e8 ba fb ff ff              	callq	-1094 <__ZNSt3__17__sort4IRZ4mainE3$_0P3RecEEjT0_S5_S5_S5_T_>
1000054a6: f3 0f 10 43 48              	movss	72(%rbx), %xmm0
1000054ab: 41 0f 2e 47 e8              	ucomiss	-24(%r15), %xmm0
1000054b0: 0f 86 5b 01 00 00           	jbe	347 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x301>
1000054b6: 49 83 c7 e8                 	addq	$-24, %r15
1000054ba: 49 8b 46 10                 	movq	16(%r14), %rax
1000054be: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000054c2: 49 8b 06                    	movq	(%r14), %rax
1000054c5: 49 8b 4e 08                 	movq	8(%r14), %rcx
1000054c9: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
1000054cd: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000054d1: 49 8b 47 10                 	movq	16(%r15), %rax
1000054d5: 49 89 46 10                 	movq	%rax, 16(%r14)
1000054d9: 49 8b 07                    	movq	(%r15), %rax
1000054dc: 49 8b 4f 08                 	movq	8(%r15), %rcx
1000054e0: 49 89 4e 08                 	movq	%rcx, 8(%r14)
1000054e4: 49 89 06                    	movq	%rax, (%r14)
1000054e7: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000054eb: 49 89 47 10                 	movq	%rax, 16(%r15)
1000054ef: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000054f3: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000054f7: 49 89 4f 08                 	movq	%rcx, 8(%r15)
1000054fb: 49 89 07                    	movq	%rax, (%r15)
1000054fe: f3 41 0f 10 45 00           	movss	(%r13), %xmm0
100005504: 41 0f 2e 06                 	ucomiss	(%r14), %xmm0
100005508: 0f 86 03 01 00 00           	jbe	259 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x301>
10000550e: 49 8b 45 10                 	movq	16(%r13), %rax
100005512: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100005516: 49 8b 45 00                 	movq	(%r13), %rax
10000551a: 49 8b 4d 08                 	movq	8(%r13), %rcx
10000551e: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100005522: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100005526: 49 8b 46 10                 	movq	16(%r14), %rax
10000552a: 49 89 45 10                 	movq	%rax, 16(%r13)
10000552e: 49 8b 06                    	movq	(%r14), %rax
100005531: 49 8b 4e 08                 	movq	8(%r14), %rcx
100005535: 49 89 4d 08                 	movq	%rcx, 8(%r13)
100005539: 49 89 45 00                 	movq	%rax, (%r13)
10000553d: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100005541: 49 89 46 10                 	movq	%rax, 16(%r14)
100005545: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100005549: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
10000554d: 49 89 4e 08                 	movq	%rcx, 8(%r14)
100005551: 49 89 06                    	movq	%rax, (%r14)
100005554: f3 41 0f 10 04 24           	movss	(%r12), %xmm0
10000555a: 41 0f 2e 45 00              	ucomiss	(%r13), %xmm0
10000555f: 41 b6 01                    	movb	$1, %r14b
100005562: 0f 86 e1 03 00 00           	jbe	993 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
100005568: 49 8b 44 24 10              	movq	16(%r12), %rax
10000556d: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100005571: 49 8b 04 24                 	movq	(%r12), %rax
100005575: 49 8b 4c 24 08              	movq	8(%r12), %rcx
10000557a: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
10000557e: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100005582: 49 8b 45 10                 	movq	16(%r13), %rax
100005586: 49 89 44 24 10              	movq	%rax, 16(%r12)
10000558b: 49 8b 45 00                 	movq	(%r13), %rax
10000558f: 49 8b 4d 08                 	movq	8(%r13), %rcx
100005593: 49 89 4c 24 08              	movq	%rcx, 8(%r12)
100005598: 49 89 04 24                 	movq	%rax, (%r12)
10000559c: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000055a0: 49 89 45 10                 	movq	%rax, 16(%r13)
1000055a4: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000055a8: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000055ac: 49 89 4d 08                 	movq	%rcx, 8(%r13)
1000055b0: 49 89 45 00                 	movq	%rax, (%r13)
1000055b4: f3 0f 10 03                 	movss	(%rbx), %xmm0
1000055b8: 0f 2e 43 18                 	ucomiss	24(%rbx), %xmm0
1000055bc: 0f 86 87 03 00 00           	jbe	903 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
1000055c2: 48 8b 43 10                 	movq	16(%rbx), %rax
1000055c6: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000055ca: 48 8b 03                    	movq	(%rbx), %rax
1000055cd: 48 8b 4b 08                 	movq	8(%rbx), %rcx
1000055d1: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
1000055d5: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000055d9: 49 8b 44 24 10              	movq	16(%r12), %rax
1000055de: 48 89 43 10                 	movq	%rax, 16(%rbx)
1000055e2: 49 8b 04 24                 	movq	(%r12), %rax
1000055e6: 49 8b 4c 24 08              	movq	8(%r12), %rcx
1000055eb: 48 89 4b 08                 	movq	%rcx, 8(%rbx)
1000055ef: 48 89 03                    	movq	%rax, (%rbx)
1000055f2: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000055f6: 49 89 44 24 10              	movq	%rax, 16(%r12)
1000055fb: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000055ff: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100005603: 49 89 4c 24 08              	movq	%rcx, 8(%r12)
100005608: 49 89 04 24                 	movq	%rax, (%r12)
10000560c: e9 38 03 00 00              	jmp	824 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
100005611: 41 b6 01                    	movb	$1, %r14b
100005614: e9 30 03 00 00              	jmp	816 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
100005619: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
10000561c: 0f 86 27 03 00 00           	jbe	807 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
100005622: 48 8b 51 10                 	movq	16(%rcx), %rdx
100005626: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
10000562a: 48 8b 11                    	movq	(%rcx), %rdx
10000562d: 48 8b 71 08                 	movq	8(%rcx), %rsi
100005631: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100005635: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100005639: 48 8b 50 10                 	movq	16(%rax), %rdx
10000563d: 48 89 51 10                 	movq	%rdx, 16(%rcx)
100005641: 48 8b 10                    	movq	(%rax), %rdx
100005644: 48 8b 70 08                 	movq	8(%rax), %rsi
100005648: 48 89 71 08                 	movq	%rsi, 8(%rcx)
10000564c: 48 89 11                    	movq	%rdx, (%rcx)
10000564f: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100005653: 48 89 50 10                 	movq	%rdx, 16(%rax)
100005657: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
10000565b: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
10000565f: 48 89 70 08                 	movq	%rsi, 8(%rax)
100005663: 48 89 10                    	movq	%rdx, (%rax)
100005666: f3 0f 10 03                 	movss	(%rbx), %xmm0
10000566a: 0f 2e 43 18                 	ucomiss	24(%rbx), %xmm0
10000566e: 0f 86 d5 02 00 00           	jbe	725 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
100005674: 48 8b 43 10                 	movq	16(%rbx), %rax
100005678: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000567c: 48 8b 03                    	movq	(%rbx), %rax
10000567f: 48 8b 53 08                 	movq	8(%rbx), %rdx
100005683: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
100005687: 48 89 45 c0                 	movq	%rax, -64(%rbp)
10000568b: 48 8b 41 10                 	movq	16(%rcx), %rax
10000568f: 48 89 43 10                 	movq	%rax, 16(%rbx)
100005693: 48 8b 01                    	movq	(%rcx), %rax
100005696: 48 8b 51 08                 	movq	8(%rcx), %rdx
10000569a: 48 89 53 08                 	movq	%rdx, 8(%rbx)
10000569e: 48 89 03                    	movq	%rax, (%rbx)
1000056a1: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000056a5: 48 89 41 10                 	movq	%rax, 16(%rcx)
1000056a9: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000056ad: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
1000056b1: 48 89 51 08                 	movq	%rdx, 8(%rcx)
1000056b5: 48 89 01                    	movq	%rax, (%rcx)
1000056b8: e9 8c 02 00 00              	jmp	652 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
1000056bd: 0f 2e d1                    	ucomiss	%xmm1, %xmm2
1000056c0: 0f 86 c3 01 00 00           	jbe	451 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x579>
1000056c6: 48 8b 51 10                 	movq	16(%rcx), %rdx
1000056ca: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
1000056ce: 48 8b 11                    	movq	(%rcx), %rdx
1000056d1: 48 8b 71 08                 	movq	8(%rcx), %rsi
1000056d5: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
1000056d9: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
1000056dd: 48 8b 50 10                 	movq	16(%rax), %rdx
1000056e1: 48 89 51 10                 	movq	%rdx, 16(%rcx)
1000056e5: 48 8b 10                    	movq	(%rax), %rdx
1000056e8: 48 8b 70 08                 	movq	8(%rax), %rsi
1000056ec: 48 89 71 08                 	movq	%rsi, 8(%rcx)
1000056f0: 48 89 11                    	movq	%rdx, (%rcx)
1000056f3: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
1000056f7: 48 89 50 10                 	movq	%rdx, 16(%rax)
1000056fb: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
1000056ff: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100005703: 48 89 70 08                 	movq	%rsi, 8(%rax)
100005707: 48 89 10                    	movq	%rdx, (%rax)
10000570a: 0f 2e 01                    	ucomiss	(%rcx), %xmm0
10000570d: 0f 86 76 01 00 00           	jbe	374 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x579>
100005713: 48 8b 53 10                 	movq	16(%rbx), %rdx
100005717: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
10000571b: 48 8b 13                    	movq	(%rbx), %rdx
10000571e: 48 8b 73 08                 	movq	8(%rbx), %rsi
100005722: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100005726: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
10000572a: 48 8b 51 10                 	movq	16(%rcx), %rdx
10000572e: 48 89 53 10                 	movq	%rdx, 16(%rbx)
100005732: 48 8b 11                    	movq	(%rcx), %rdx
100005735: 48 8b 71 08                 	movq	8(%rcx), %rsi
100005739: 48 89 73 08                 	movq	%rsi, 8(%rbx)
10000573d: 48 89 13                    	movq	%rdx, (%rbx)
100005740: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100005744: 48 89 51 10                 	movq	%rdx, 16(%rcx)
100005748: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
10000574c: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100005750: 48 89 71 08                 	movq	%rsi, 8(%rcx)
100005754: 48 89 11                    	movq	%rdx, (%rcx)
100005757: e9 2d 01 00 00              	jmp	301 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x579>
10000575c: 48 8b 53 10                 	movq	16(%rbx), %rdx
100005760: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100005764: 48 8b 13                    	movq	(%rbx), %rdx
100005767: 48 8b 73 08                 	movq	8(%rbx), %rsi
10000576b: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
10000576f: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100005773: 48 8b 51 10                 	movq	16(%rcx), %rdx
100005777: 48 89 53 10                 	movq	%rdx, 16(%rbx)
10000577b: 48 8b 11                    	movq	(%rcx), %rdx
10000577e: 48 8b 71 08                 	movq	8(%rcx), %rsi
100005782: 48 89 73 08                 	movq	%rsi, 8(%rbx)
100005786: 48 89 13                    	movq	%rdx, (%rbx)
100005789: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
10000578d: 48 89 51 10                 	movq	%rdx, 16(%rcx)
100005791: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100005795: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100005799: 48 89 71 08                 	movq	%rsi, 8(%rcx)
10000579d: 48 89 11                    	movq	%rdx, (%rcx)
1000057a0: f3 0f 10 43 18              	movss	24(%rbx), %xmm0
1000057a5: 0f 2e 00                    	ucomiss	(%rax), %xmm0
1000057a8: 0f 86 9b 01 00 00           	jbe	411 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
1000057ae: 48 8b 51 10                 	movq	16(%rcx), %rdx
1000057b2: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
1000057b6: 48 8b 11                    	movq	(%rcx), %rdx
1000057b9: 48 8b 71 08                 	movq	8(%rcx), %rsi
1000057bd: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
1000057c1: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
1000057c5: 48 8b 50 10                 	movq	16(%rax), %rdx
1000057c9: 48 89 51 10                 	movq	%rdx, 16(%rcx)
1000057cd: 48 8b 10                    	movq	(%rax), %rdx
1000057d0: 48 8b 70 08                 	movq	8(%rax), %rsi
1000057d4: 48 89 71 08                 	movq	%rsi, 8(%rcx)
1000057d8: 48 89 11                    	movq	%rdx, (%rcx)
1000057db: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000057df: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000057e3: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000057e7: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
1000057eb: 48 89 50 08                 	movq	%rdx, 8(%rax)
1000057ef: 48 89 08                    	movq	%rcx, (%rax)
1000057f2: e9 52 01 00 00              	jmp	338 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
1000057f7: 48 8b 53 10                 	movq	16(%rbx), %rdx
1000057fb: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
1000057ff: 48 8b 13                    	movq	(%rbx), %rdx
100005802: 48 8b 73 08                 	movq	8(%rbx), %rsi
100005806: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
10000580a: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
10000580e: 48 8b 51 10                 	movq	16(%rcx), %rdx
100005812: 48 89 53 10                 	movq	%rdx, 16(%rbx)
100005816: 48 8b 11                    	movq	(%rcx), %rdx
100005819: 48 8b 71 08                 	movq	8(%rcx), %rsi
10000581d: 48 89 73 08                 	movq	%rsi, 8(%rbx)
100005821: 48 89 13                    	movq	%rdx, (%rbx)
100005824: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100005828: 48 89 51 10                 	movq	%rdx, 16(%rcx)
10000582c: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100005830: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100005834: 48 89 71 08                 	movq	%rsi, 8(%rcx)
100005838: 48 89 11                    	movq	%rdx, (%rcx)
10000583b: f3 0f 10 43 18              	movss	24(%rbx), %xmm0
100005840: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
100005843: 76 44                       	jbe	68 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x579>
100005845: 48 8b 51 10                 	movq	16(%rcx), %rdx
100005849: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
10000584d: 48 8b 11                    	movq	(%rcx), %rdx
100005850: 48 8b 71 08                 	movq	8(%rcx), %rsi
100005854: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100005858: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
10000585c: 48 8b 50 10                 	movq	16(%rax), %rdx
100005860: 48 89 51 10                 	movq	%rdx, 16(%rcx)
100005864: 48 8b 10                    	movq	(%rax), %rdx
100005867: 48 8b 70 08                 	movq	8(%rax), %rsi
10000586b: 48 89 71 08                 	movq	%rsi, 8(%rcx)
10000586f: 48 89 11                    	movq	%rdx, (%rcx)
100005872: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100005876: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000587a: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
10000587e: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100005882: 48 89 50 08                 	movq	%rdx, 8(%rax)
100005886: 48 89 08                    	movq	%rcx, (%rax)
100005889: 48 8d 73 48                 	leaq	72(%rbx), %rsi
10000588d: 4c 39 fe                    	cmpq	%r15, %rsi
100005890: 0f 84 b3 00 00 00           	je	179 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
100005896: 45 31 c0                    	xorl	%r8d, %r8d
100005899: ba 48 00 00 00              	movl	$72, %edx
10000589e: eb 33                       	jmp	51 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x5c3>
1000058a0: 48 89 de                    	movq	%rbx, %rsi
1000058a3: f3 0f 11 06                 	movss	%xmm0, (%rsi)
1000058a7: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000058ab: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
1000058af: 48 89 4e 04                 	movq	%rcx, 4(%rsi)
1000058b3: 48 89 7e 0c                 	movq	%rdi, 12(%rsi)
1000058b7: 8b 4d d0                    	movl	-48(%rbp), %ecx
1000058ba: 89 4e 14                    	movl	%ecx, 20(%rsi)
1000058bd: 41 ff c0                    	incl	%r8d
1000058c0: 41 83 f8 08                 	cmpl	$8, %r8d
1000058c4: 74 78                       	je	120 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x62e>
1000058c6: 48 8d 70 18                 	leaq	24(%rax), %rsi
1000058ca: 48 83 c2 18                 	addq	$24, %rdx
1000058ce: 4c 39 fe                    	cmpq	%r15, %rsi
1000058d1: 74 76                       	je	118 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x639>
1000058d3: f3 0f 10 08                 	movss	(%rax), %xmm1
1000058d7: 48 89 f0                    	movq	%rsi, %rax
1000058da: f3 0f 10 06                 	movss	(%rsi), %xmm0
1000058de: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
1000058e1: 76 e3                       	jbe	-29 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x5b6>
1000058e3: 8b 70 14                    	movl	20(%rax), %esi
1000058e6: 89 75 d0                    	movl	%esi, -48(%rbp)
1000058e9: 48 8b 70 04                 	movq	4(%rax), %rsi
1000058ed: 48 8b 78 0c                 	movq	12(%rax), %rdi
1000058f1: 48 89 7d c8                 	movq	%rdi, -56(%rbp)
1000058f5: 48 89 75 c0                 	movq	%rsi, -64(%rbp)
1000058f9: 48 89 d6                    	movq	%rdx, %rsi
1000058fc: 0f 1f 40 00                 	nopl	(%rax)
100005900: 48 8b 7c 33 f8              	movq	-8(%rbx,%rsi), %rdi
100005905: 48 89 7c 33 10              	movq	%rdi, 16(%rbx,%rsi)
10000590a: 48 8b 7c 33 e8              	movq	-24(%rbx,%rsi), %rdi
10000590f: 48 8b 4c 33 f0              	movq	-16(%rbx,%rsi), %rcx
100005914: 48 89 4c 33 08              	movq	%rcx, 8(%rbx,%rsi)
100005919: 48 89 3c 33                 	movq	%rdi, (%rbx,%rsi)
10000591d: 48 83 fe 18                 	cmpq	$24, %rsi
100005921: 0f 84 79 ff ff ff           	je	-135 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x590>
100005927: f3 0f 10 4c 33 d0           	movss	-48(%rbx,%rsi), %xmm1
10000592d: 48 83 c6 e8                 	addq	$-24, %rsi
100005931: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
100005934: 77 ca                       	ja	-54 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x5f0>
100005936: 48 01 de                    	addq	%rbx, %rsi
100005939: e9 65 ff ff ff              	jmp	-155 <__ZNSt3__127__insertion_sort_incompleteIRZ4mainE3$_0P3RecEEbT0_S5_T_+0x593>
10000593e: 48 83 c0 18                 	addq	$24, %rax
100005942: 4c 39 f8                    	cmpq	%r15, %rax
100005945: 41 0f 94 c6                 	sete	%r14b
100005949: 44 89 f0                    	movl	%r14d, %eax
10000594c: 48 83 c4 18                 	addq	$24, %rsp
100005950: 5b                          	popq	%rbx
100005951: 41 5c                       	popq	%r12
100005953: 41 5d                       	popq	%r13
100005955: 41 5e                       	popq	%r14
100005957: 41 5f                       	popq	%r15
100005959: 5d                          	popq	%rbp
10000595a: c3                          	retq
10000595b: 90                          	nop
10000595c: ed                          	inl	%dx, %eax
10000595d: ff ff                       	<unknown>
10000595f: ff ed                       	<unknown>
100005961: ff ff                       	<unknown>
100005963: ff 00                       	incl	(%rax)
100005965: fa                          	cli
100005966: ff ff                       	<unknown>
100005968: 5c                          	popq	%rsp
100005969: fa                          	cli
10000596a: ff ff                       	<unknown>
10000596c: 11 fb                       	adcl	%edi, %ebx
10000596e: ff ff                       	<unknown>
100005970: 2d fb ff ff 90              	subl	$2432696315, %eax
100005975: 90                          	nop
100005976: 90                          	nop
100005977: 90                          	nop
100005978: 90                          	nop
100005979: 90                          	nop
10000597a: 90                          	nop
10000597b: 90                          	nop
10000597c: 90                          	nop
10000597d: 90                          	nop
10000597e: 90                          	nop
10000597f: 90                          	nop

0000000100005980 __GLOBAL__sub_I_SpacePartition.cpp:
100005980: 55                          	pushq	%rbp
100005981: 48 89 e5                    	movq	%rsp, %rbp
100005984: 41 57                       	pushq	%r15
100005986: 41 56                       	pushq	%r14
100005988: 53                          	pushq	%rbx
100005989: 50                          	pushq	%rax
10000598a: 48 c7 05 4b b2 00 00 00 00 00 00    	movq	$0, 45643(%rip)
100005995: 48 c7 05 38 b2 00 00 00 00 00 00    	movq	$0, 45624(%rip)
1000059a0: 48 c7 05 25 b2 00 00 00 00 00 00    	movq	$0, 45605(%rip)
1000059ab: 48 8d 35 1e b2 00 00        	leaq	45598(%rip), %rsi
1000059b2: 48 8d 3d a7 bc ff ff        	leaq	-17241(%rip), %rdi
1000059b9: 4c 8d 35 40 a6 ff ff        	leaq	-22976(%rip), %r14
1000059c0: 4c 89 f2                    	movq	%r14, %rdx
1000059c3: e8 2a 56 00 00              	callq	22058 <dyld_stub_binder+0x10000aff2>
1000059c8: 48 8d 3d 19 b2 00 00        	leaq	45593(%rip), %rdi
1000059cf: e8 cc 50 00 00              	callq	20684 <__ZN13NodeAllocatorC1Ev>
1000059d4: 48 8d 1d 25 05 08 00        	leaq	525605(%rip), %rbx
1000059db: 48 8d 35 ce 5d 00 00        	leaq	24014(%rip), %rsi
1000059e2: 48 89 df                    	movq	%rbx, %rdi
1000059e5: e8 96 bc ff ff              	callq	-17258 <__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj>
1000059ea: 4c 8b 3d 37 66 00 00        	movq	26167(%rip), %r15
1000059f1: 4c 89 ff                    	movq	%r15, %rdi
1000059f4: 48 89 de                    	movq	%rbx, %rsi
1000059f7: 4c 89 f2                    	movq	%r14, %rdx
1000059fa: e8 f3 55 00 00              	callq	22003 <dyld_stub_binder+0x10000aff2>
1000059ff: 48 8d 1d 32 07 08 00        	leaq	526130(%rip), %rbx
100005a06: 48 8d 35 b2 5d 00 00        	leaq	23986(%rip), %rsi
100005a0d: 48 89 df                    	movq	%rbx, %rdi
100005a10: e8 6b bc ff ff              	callq	-17301 <__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj>
100005a15: 4c 89 ff                    	movq	%r15, %rdi
100005a18: 48 89 de                    	movq	%rbx, %rsi
100005a1b: 4c 89 f2                    	movq	%r14, %rdx
100005a1e: e8 cf 55 00 00              	callq	21967 <dyld_stub_binder+0x10000aff2>
100005a23: 48 8d 1d 46 09 08 00        	leaq	526662(%rip), %rbx
100005a2a: 48 8d 35 9e 5d 00 00        	leaq	23966(%rip), %rsi
100005a31: 48 89 df                    	movq	%rbx, %rdi
100005a34: e8 47 bc ff ff              	callq	-17337 <__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj>
100005a39: 4c 89 ff                    	movq	%r15, %rdi
100005a3c: 48 89 de                    	movq	%rbx, %rsi
100005a3f: 4c 89 f2                    	movq	%r14, %rdx
100005a42: 48 83 c4 08                 	addq	$8, %rsp
100005a46: 5b                          	popq	%rbx
100005a47: 41 5e                       	popq	%r14
100005a49: 41 5f                       	popq	%r15
100005a4b: 5d                          	popq	%rbp
100005a4c: e9 a1 55 00 00              	jmp	21921 <dyld_stub_binder+0x10000aff2>
100005a51: 90                          	nop
100005a52: 90                          	nop
100005a53: 90                          	nop
100005a54: 90                          	nop
100005a55: 90                          	nop
100005a56: 90                          	nop
100005a57: 90                          	nop
100005a58: 90                          	nop
100005a59: 90                          	nop
100005a5a: 90                          	nop
100005a5b: 90                          	nop
100005a5c: 90                          	nop
100005a5d: 90                          	nop
100005a5e: 90                          	nop
100005a5f: 90                          	nop

0000000100005a60 __ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK3Rec:
100005a60: 55                          	pushq	%rbp
100005a61: 48 89 e5                    	movq	%rsp, %rbp
100005a64: 41 56                       	pushq	%r14
100005a66: 53                          	pushq	%rbx
100005a67: 48 89 f3                    	movq	%rsi, %rbx
100005a6a: 49 89 fe                    	movq	%rdi, %r14
100005a6d: f3 0f 10 06                 	movss	(%rsi), %xmm0
100005a71: e8 ec 54 00 00              	callq	21740 <dyld_stub_binder+0x10000af62>
100005a76: 48 8d 35 44 60 00 00        	leaq	24644(%rip), %rsi
100005a7d: ba 02 00 00 00              	movl	$2, %edx
100005a82: 48 89 c7                    	movq	%rax, %rdi
100005a85: e8 26 e4 ff ff              	callq	-7130 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100005a8a: f3 0f 10 43 04              	movss	4(%rbx), %xmm0
100005a8f: 48 89 c7                    	movq	%rax, %rdi
100005a92: e8 cb 54 00 00              	callq	21707 <dyld_stub_binder+0x10000af62>
100005a97: 48 8d 35 26 60 00 00        	leaq	24614(%rip), %rsi
100005a9e: ba 02 00 00 00              	movl	$2, %edx
100005aa3: 48 89 c7                    	movq	%rax, %rdi
100005aa6: e8 05 e4 ff ff              	callq	-7163 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100005aab: f3 0f 10 43 08              	movss	8(%rbx), %xmm0
100005ab0: 48 89 c7                    	movq	%rax, %rdi
100005ab3: e8 aa 54 00 00              	callq	21674 <dyld_stub_binder+0x10000af62>
100005ab8: 48 8d 35 08 60 00 00        	leaq	24584(%rip), %rsi
100005abf: ba 02 00 00 00              	movl	$2, %edx
100005ac4: 48 89 c7                    	movq	%rax, %rdi
100005ac7: e8 e4 e3 ff ff              	callq	-7196 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100005acc: f3 0f 10 43 0c              	movss	12(%rbx), %xmm0
100005ad1: 48 89 c7                    	movq	%rax, %rdi
100005ad4: e8 89 54 00 00              	callq	21641 <dyld_stub_binder+0x10000af62>
100005ad9: 48 8d 35 ea 5f 00 00        	leaq	24554(%rip), %rsi
100005ae0: ba 01 00 00 00              	movl	$1, %edx
100005ae5: 48 89 c7                    	movq	%rax, %rdi
100005ae8: e8 c3 e3 ff ff              	callq	-7229 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100005aed: 4c 89 f0                    	movq	%r14, %rax
100005af0: 5b                          	popq	%rbx
100005af1: 41 5e                       	popq	%r14
100005af3: 5d                          	popq	%rbp
100005af4: c3                          	retq
100005af5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005aff: 90                          	nop

0000000100005b00 __ZN17LeafHashAllocatorD1Ev:
100005b00: 55                          	pushq	%rbp
100005b01: 48 89 e5                    	movq	%rsp, %rbp
100005b04: 53                          	pushq	%rbx
100005b05: 50                          	pushq	%rax
100005b06: 48 89 fb                    	movq	%rdi, %rbx
100005b09: 48 8b 7f 18                 	movq	24(%rdi), %rdi
100005b0d: 48 85 ff                    	testq	%rdi, %rdi
100005b10: 74 09                       	je	9 <__ZN17LeafHashAllocatorD1Ev+0x1b>
100005b12: 48 89 7b 20                 	movq	%rdi, 32(%rbx)
100005b16: e8 b9 54 00 00              	callq	21689 <dyld_stub_binder+0x10000afd4>
100005b1b: 48 8b 3b                    	movq	(%rbx), %rdi
100005b1e: 48 85 ff                    	testq	%rdi, %rdi
100005b21: 74 0f                       	je	15 <__ZN17LeafHashAllocatorD1Ev+0x32>
100005b23: 48 89 7b 08                 	movq	%rdi, 8(%rbx)
100005b27: 48 83 c4 08                 	addq	$8, %rsp
100005b2b: 5b                          	popq	%rbx
100005b2c: 5d                          	popq	%rbp
100005b2d: e9 a2 54 00 00              	jmp	21666 <dyld_stub_binder+0x10000afd4>
100005b32: 48 83 c4 08                 	addq	$8, %rsp
100005b36: 5b                          	popq	%rbx
100005b37: 5d                          	popq	%rbp
100005b38: c3                          	retq
100005b39: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100005b40 __ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj:
100005b40: 55                          	pushq	%rbp
100005b41: 48 89 e5                    	movq	%rsp, %rbp
100005b44: 41 57                       	pushq	%r15
100005b46: 41 56                       	pushq	%r14
100005b48: 41 55                       	pushq	%r13
100005b4a: 41 54                       	pushq	%r12
100005b4c: 53                          	pushq	%rbx
100005b4d: 48 83 ec 58                 	subq	$88, %rsp
100005b51: 45 89 c7                    	movl	%r8d, %r15d
100005b54: 41 89 ce                    	movl	%ecx, %r14d
100005b57: 49 89 d5                    	movq	%rdx, %r13
100005b5a: 41 89 f4                    	movl	%esi, %r12d
100005b5d: 48 89 fb                    	movq	%rdi, %rbx
100005b60: 44 39 05 79 0a 08 00        	cmpl	%r8d, 526969(%rip)
100005b67: 73 28                       	jae	40 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x51>
100005b69: 44 89 3d 70 0a 08 00        	movl	%r15d, 526960(%rip)
100005b70: 48 8b 43 10                 	movq	16(%rbx), %rax
100005b74: 48 8b 4b 18                 	movq	24(%rbx), %rcx
100005b78: 48 89 05 65 0a 08 00        	movq	%rax, 526949(%rip)
100005b7f: 48 89 0d 66 0a 08 00        	movq	%rcx, 526950(%rip)
100005b86: 48 8b 43 20                 	movq	32(%rbx), %rax
100005b8a: 48 89 05 63 0a 08 00        	movq	%rax, 526947(%rip)
100005b91: f3 0f 10 05 67 5b 00 00     	movss	23399(%rip), %xmm0
100005b99: 0f 2e 43 18                 	ucomiss	24(%rbx), %xmm0
100005b9d: 0f 87 53 02 00 00           	ja	595 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x2b6>
100005ba3: 0f 2e 43 1c                 	ucomiss	28(%rbx), %xmm0
100005ba7: 0f 87 49 02 00 00           	ja	585 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x2b6>
100005bad: 8b 4b 0c                    	movl	12(%rbx), %ecx
100005bb0: 85 c9                       	testl	%ecx, %ecx
100005bb2: 78 72                       	js	114 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0xe6>
100005bb4: 83 f9 3f                    	cmpl	$63, %ecx
100005bb7: 7f 39                       	jg	57 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0xb2>
100005bb9: 0f b7 03                    	movzwl	(%rbx), %eax
100005bbc: 66 85 c0                    	testw	%ax, %ax
100005bbf: 79 17                       	jns	23 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x98>
100005bc1: 85 c9                       	testl	%ecx, %ecx
100005bc3: 0f 85 4c 03 00 00           	jne	844 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x3d5>
100005bc9: 48 8d 3d d8 09 08 00        	leaq	526808(%rip), %rdi
100005bd0: e8 0b 04 00 00              	callq	1035 <__ZN17LeafHashAllocator16allocateLeafHashEv>
100005bd5: 66 89 03                    	movw	%ax, (%rbx)
100005bd8: 0f b7 d0                    	movzwl	%ax, %edx
100005bdb: 48 8d 3d c6 09 08 00        	leaq	526790(%rip), %rdi
100005be2: 44 89 e6                    	movl	%r12d, %esi
100005be5: e8 96 06 00 00              	callq	1686 <__ZN17LeafHashAllocator6insertEjt>
100005bea: ff 43 0c                    	incl	12(%rbx)
100005bed: e9 f5 01 00 00              	jmp	501 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x2a7>
100005bf2: 83 7b 04 00                 	cmpl	$0, 4(%rbx)
100005bf6: 0f 89 8a 02 00 00           	jns	650 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x346>
100005bfc: 83 7b 08 00                 	cmpl	$0, 8(%rbx)
100005c00: 0f 89 c6 02 00 00           	jns	710 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x38c>
100005c06: 48 89 df                    	movq	%rbx, %rdi
100005c09: 4c 89 ee                    	movq	%r13, %rsi
100005c0c: 44 89 f2                    	movl	%r14d, %edx
100005c0f: 44 89 f9                    	movl	%r15d, %ecx
100005c12: e8 69 07 00 00              	callq	1897 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj>
100005c17: 48 89 df                    	movq	%rbx, %rdi
100005c1a: e8 51 0a 00 00              	callq	2641 <__ZN4Node9setBranchEv>
100005c1f: 41 ff 8d c8 b6 06 00        	decl	440008(%r13)
100005c26: 4c 89 6d c8                 	movq	%r13, -56(%rbp)
100005c2a: 44 89 65 d4                 	movl	%r12d, -44(%rbp)
100005c2e: 4c 8d 65 10                 	leaq	16(%rbp), %r12
100005c32: 48 8d 7d 88                 	leaq	-120(%rbp), %rdi
100005c36: 48 89 de                    	movq	%rbx, %rsi
100005c39: 44 89 f2                    	movl	%r14d, %edx
100005c3c: e8 df 0a 00 00              	callq	2783 <__ZNK4Node14getChildBoundsE15NodeOrientation>
100005c41: f3 41 0f 10 14 24           	movss	(%r12), %xmm2
100005c47: f3 41 0f 10 4c 24 04        	movss	4(%r12), %xmm1
100005c4e: f3 41 0f 10 64 24 08        	movss	8(%r12), %xmm4
100005c55: f3 0f 58 e2                 	addss	%xmm2, %xmm4
100005c59: f3 41 0f 10 5c 24 0c        	movss	12(%r12), %xmm3
100005c60: f3 0f 58 d9                 	addss	%xmm1, %xmm3
100005c64: 45 31 ed                    	xorl	%r13d, %r13d
100005c67: 45 85 f6                    	testl	%r14d, %r14d
100005c6a: 41 0f 94 c5                 	sete	%r13b
100005c6e: 41 ff c7                    	incl	%r15d
100005c71: f3 0f 10 45 88              	movss	-120(%rbp), %xmm0
100005c76: 0f 2e e0                    	ucomiss	%xmm0, %xmm4
100005c79: 0f 82 c4 00 00 00           	jb	196 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x203>
100005c7f: f3 0f 58 45 90              	addss	-112(%rbp), %xmm0
100005c84: 0f 2e c2                    	ucomiss	%xmm2, %xmm0
100005c87: 0f 82 b6 00 00 00           	jb	182 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x203>
100005c8d: f3 0f 10 45 8c              	movss	-116(%rbp), %xmm0
100005c92: 0f 2e d8                    	ucomiss	%xmm0, %xmm3
100005c95: 0f 82 a8 00 00 00           	jb	168 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x203>
100005c9b: f3 0f 58 45 94              	addss	-108(%rbp), %xmm0
100005ca0: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
100005ca3: 0f 82 9a 00 00 00           	jb	154 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x203>
100005ca9: f3 0f 11 65 c4              	movss	%xmm4, -60(%rbp)
100005cae: f3 0f 11 5d c0              	movss	%xmm3, -64(%rbp)
100005cb3: f3 0f 11 55 bc              	movss	%xmm2, -68(%rbp)
100005cb8: f3 0f 11 4d b8              	movss	%xmm1, -72(%rbp)
100005cbd: 8b 73 04                    	movl	4(%rbx), %esi
100005cc0: 85 f6                       	testl	%esi, %esi
100005cc2: 78 0e                       	js	14 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x192>
100005cc4: 4c 8b 75 c8                 	movq	-56(%rbp), %r14
100005cc8: 4c 89 f7                    	movq	%r14, %rdi
100005ccb: e8 f0 50 00 00              	callq	20720 <__ZN13NodeAllocator7getNodeEj>
100005cd0: eb 2d                       	jmp	45 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x1bf>
100005cd2: 48 83 ec 08                 	subq	$8, %rsp
100005cd6: 48 8b 45 98                 	movq	-104(%rbp), %rax
100005cda: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100005cde: 48 8b 55 90                 	movq	-112(%rbp), %rdx
100005ce2: 4c 8b 75 c8                 	movq	-56(%rbp), %r14
100005ce6: 4c 89 f7                    	movq	%r14, %rdi
100005ce9: 50                          	pushq	%rax
100005cea: 52                          	pushq	%rdx
100005ceb: 51                          	pushq	%rcx
100005cec: e8 df 4d 00 00              	callq	19935 <__ZN13NodeAllocator12allocateNodeE3Rec>
100005cf1: 48 83 c4 20                 	addq	$32, %rsp
100005cf5: 89 53 04                    	movl	%edx, 4(%rbx)
100005cf8: 41 ff 86 c8 b6 06 00        	incl	440008(%r14)
100005cff: 48 83 ec 08                 	subq	$8, %rsp
100005d03: 4d 8b 4c 24 10              	movq	16(%r12), %r9
100005d08: 4d 8b 14 24                 	movq	(%r12), %r10
100005d0c: 4d 8b 5c 24 08              	movq	8(%r12), %r11
100005d11: 48 89 c7                    	movq	%rax, %rdi
100005d14: 8b 75 d4                    	movl	-44(%rbp), %esi
100005d17: 4c 89 f2                    	movq	%r14, %rdx
100005d1a: 44 89 e9                    	movl	%r13d, %ecx
100005d1d: 45 89 f8                    	movl	%r15d, %r8d
100005d20: 41 51                       	pushq	%r9
100005d22: 41 53                       	pushq	%r11
100005d24: 41 52                       	pushq	%r10
100005d26: e8 15 fe ff ff              	callq	-491 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj>
100005d2b: 48 83 c4 20                 	addq	$32, %rsp
100005d2f: f3 0f 10 4d b8              	movss	-72(%rbp), %xmm1
100005d34: f3 0f 10 55 bc              	movss	-68(%rbp), %xmm2
100005d39: f3 0f 10 5d c0              	movss	-64(%rbp), %xmm3
100005d3e: f3 0f 10 65 c4              	movss	-60(%rbp), %xmm4
100005d43: f3 0f 10 45 a0              	movss	-96(%rbp), %xmm0
100005d48: 0f 2e e0                    	ucomiss	%xmm0, %xmm4
100005d4b: 0f 82 96 00 00 00           	jb	150 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x2a7>
100005d51: f3 0f 58 45 a8              	addss	-88(%rbp), %xmm0
100005d56: 0f 2e c2                    	ucomiss	%xmm2, %xmm0
100005d59: 0f 82 88 00 00 00           	jb	136 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x2a7>
100005d5f: f3 0f 10 45 a4              	movss	-92(%rbp), %xmm0
100005d64: 0f 2e d8                    	ucomiss	%xmm0, %xmm3
100005d67: 72 7e                       	jb	126 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x2a7>
100005d69: f3 0f 58 45 ac              	addss	-84(%rbp), %xmm0
100005d6e: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
100005d71: 72 74                       	jb	116 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x2a7>
100005d73: 8b 73 08                    	movl	8(%rbx), %esi
100005d76: 85 f6                       	testl	%esi, %esi
100005d78: 78 0e                       	js	14 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x248>
100005d7a: 4c 8b 75 c8                 	movq	-56(%rbp), %r14
100005d7e: 4c 89 f7                    	movq	%r14, %rdi
100005d81: e8 3a 50 00 00              	callq	20538 <__ZN13NodeAllocator7getNodeEj>
100005d86: eb 30                       	jmp	48 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x278>
100005d88: 48 8d 45 a0                 	leaq	-96(%rbp), %rax
100005d8c: 48 83 ec 08                 	subq	$8, %rsp
100005d90: 48 8b 48 10                 	movq	16(%rax), %rcx
100005d94: 48 8b 10                    	movq	(%rax), %rdx
100005d97: 48 8b 40 08                 	movq	8(%rax), %rax
100005d9b: 4c 8b 75 c8                 	movq	-56(%rbp), %r14
100005d9f: 4c 89 f7                    	movq	%r14, %rdi
100005da2: 51                          	pushq	%rcx
100005da3: 50                          	pushq	%rax
100005da4: 52                          	pushq	%rdx
100005da5: e8 26 4d 00 00              	callq	19750 <__ZN13NodeAllocator12allocateNodeE3Rec>
100005daa: 48 83 c4 20                 	addq	$32, %rsp
100005dae: 89 53 08                    	movl	%edx, 8(%rbx)
100005db1: 41 ff 86 c8 b6 06 00        	incl	440008(%r14)
100005db8: 48 83 ec 08                 	subq	$8, %rsp
100005dbc: 4d 8b 54 24 10              	movq	16(%r12), %r10
100005dc1: 4d 8b 0c 24                 	movq	(%r12), %r9
100005dc5: 49 8b 5c 24 08              	movq	8(%r12), %rbx
100005dca: 48 89 c7                    	movq	%rax, %rdi
100005dcd: 8b 75 d4                    	movl	-44(%rbp), %esi
100005dd0: 4c 89 f2                    	movq	%r14, %rdx
100005dd3: 44 89 e9                    	movl	%r13d, %ecx
100005dd6: 45 89 f8                    	movl	%r15d, %r8d
100005dd9: 41 52                       	pushq	%r10
100005ddb: 53                          	pushq	%rbx
100005ddc: 41 51                       	pushq	%r9
100005dde: e8 5d fd ff ff              	callq	-675 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj>
100005de3: 48 83 c4 20                 	addq	$32, %rsp
100005de7: 48 83 c4 58                 	addq	$88, %rsp
100005deb: 5b                          	popq	%rbx
100005dec: 41 5c                       	popq	%r12
100005dee: 41 5d                       	popq	%r13
100005df0: 41 5e                       	popq	%r14
100005df2: 41 5f                       	popq	%r15
100005df4: 5d                          	popq	%rbp
100005df5: c3                          	retq
100005df6: 48 83 c3 10                 	addq	$16, %rbx
100005dfa: 4c 8b 35 2f 62 00 00        	movq	25135(%rip), %r14
100005e01: 4c 89 f7                    	movq	%r14, %rdi
100005e04: 48 89 de                    	movq	%rbx, %rsi
100005e07: e8 54 fc ff ff              	callq	-940 <__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK3Rec>
100005e0c: 48 89 c7                    	movq	%rax, %rdi
100005e0f: e8 4c 01 00 00              	callq	332 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100005e14: 48 8d 35 14 5a 00 00        	leaq	23060(%rip), %rsi
100005e1b: 4c 89 f7                    	movq	%r14, %rdi
100005e1e: e8 0d d1 ff ff              	callq	-12019 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005e23: 48 8d 35 a2 5c 00 00        	leaq	23714(%rip), %rsi
100005e2a: 48 89 c7                    	movq	%rax, %rdi
100005e2d: e8 fe d0 ff ff              	callq	-12034 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005e32: 48 8d 35 11 5a 00 00        	leaq	23057(%rip), %rsi
100005e39: 48 89 c7                    	movq	%rax, %rdi
100005e3c: e8 ef d0 ff ff              	callq	-12049 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005e41: 48 89 c7                    	movq	%rax, %rdi
100005e44: e8 17 01 00 00              	callq	279 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100005e49: 4c 89 f7                    	movq	%r14, %rdi
100005e4c: be 1d 00 00 00              	movl	$29, %esi
100005e51: e8 12 51 00 00              	callq	20754 <dyld_stub_binder+0x10000af68>
100005e56: 48 8d 35 03 5a 00 00        	leaq	23043(%rip), %rsi
100005e5d: 48 89 c7                    	movq	%rax, %rdi
100005e60: e8 cb d0 ff ff              	callq	-12085 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005e65: 48 8d 35 66 5c 00 00        	leaq	23654(%rip), %rsi
100005e6c: 48 89 c7                    	movq	%rax, %rdi
100005e6f: e8 bc d0 ff ff              	callq	-12100 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005e74: 48 89 c7                    	movq	%rax, %rdi
100005e77: e8 e4 00 00 00              	callq	228 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100005e7c: bf 01 00 00 00              	movl	$1, %edi
100005e81: e8 a8 51 00 00              	callq	20904 <dyld_stub_binder+0x10000b02e>
100005e86: 48 8b 1d a3 61 00 00        	movq	24995(%rip), %rbx
100005e8d: 48 8d 35 9b 59 00 00        	leaq	22939(%rip), %rsi
100005e94: 48 89 df                    	movq	%rbx, %rdi
100005e97: e8 94 d0 ff ff              	callq	-12140 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005e9c: 48 8d 35 54 5c 00 00        	leaq	23636(%rip), %rsi
100005ea3: 48 89 c7                    	movq	%rax, %rdi
100005ea6: e8 85 d0 ff ff              	callq	-12155 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005eab: 48 8d 35 98 59 00 00        	leaq	22936(%rip), %rsi
100005eb2: 48 89 c7                    	movq	%rax, %rdi
100005eb5: e8 76 d0 ff ff              	callq	-12170 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005eba: 48 89 c7                    	movq	%rax, %rdi
100005ebd: e8 9e 00 00 00              	callq	158 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100005ec2: 48 89 df                    	movq	%rbx, %rdi
100005ec5: be 2c 00 00 00              	movl	$44, %esi
100005eca: eb 85                       	jmp	-123 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x311>
100005ecc: 48 8b 1d 5d 61 00 00        	movq	24925(%rip), %rbx
100005ed3: 48 8d 35 55 59 00 00        	leaq	22869(%rip), %rsi
100005eda: 48 89 df                    	movq	%rbx, %rdi
100005edd: e8 4e d0 ff ff              	callq	-12210 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005ee2: 48 8d 35 27 5c 00 00        	leaq	23591(%rip), %rsi
100005ee9: 48 89 c7                    	movq	%rax, %rdi
100005eec: e8 3f d0 ff ff              	callq	-12225 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005ef1: 48 8d 35 52 59 00 00        	leaq	22866(%rip), %rsi
100005ef8: 48 89 c7                    	movq	%rax, %rdi
100005efb: e8 30 d0 ff ff              	callq	-12240 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005f00: 48 89 c7                    	movq	%rax, %rdi
100005f03: e8 58 00 00 00              	callq	88 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100005f08: 48 89 df                    	movq	%rbx, %rdi
100005f0b: be 2d 00 00 00              	movl	$45, %esi
100005f10: e9 3c ff ff ff              	jmp	-196 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x311>
100005f15: 48 8b 1d 14 61 00 00        	movq	24852(%rip), %rbx
100005f1c: 48 8d 35 0c 59 00 00        	leaq	22796(%rip), %rsi
100005f23: 48 89 df                    	movq	%rbx, %rdi
100005f26: e8 05 d0 ff ff              	callq	-12283 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005f2b: 48 8d 35 a9 5b 00 00        	leaq	23465(%rip), %rsi
100005f32: 48 89 c7                    	movq	%rax, %rdi
100005f35: e8 f6 cf ff ff              	callq	-12298 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005f3a: 48 8d 35 09 59 00 00        	leaq	22793(%rip), %rsi
100005f41: 48 89 c7                    	movq	%rax, %rdi
100005f44: e8 e7 cf ff ff              	callq	-12313 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100005f49: 48 89 c7                    	movq	%rax, %rdi
100005f4c: e8 0f 00 00 00              	callq	15 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100005f51: 48 89 df                    	movq	%rbx, %rdi
100005f54: be 25 00 00 00              	movl	$37, %esi
100005f59: e9 f3 fe ff ff              	jmp	-269 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj+0x311>
100005f5e: 66 90                       	nop

0000000100005f60 __ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E:
100005f60: 55                          	pushq	%rbp
100005f61: 48 89 e5                    	movq	%rsp, %rbp
100005f64: 41 56                       	pushq	%r14
100005f66: 53                          	pushq	%rbx
100005f67: 48 83 ec 10                 	subq	$16, %rsp
100005f6b: 48 89 fb                    	movq	%rdi, %rbx
100005f6e: 48 8b 07                    	movq	(%rdi), %rax
100005f71: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100005f75: 48 01 fe                    	addq	%rdi, %rsi
100005f78: 4c 8d 75 e8                 	leaq	-24(%rbp), %r14
100005f7c: 4c 89 f7                    	movq	%r14, %rdi
100005f7f: e8 b4 4f 00 00              	callq	20404 <dyld_stub_binder+0x10000af38>
100005f84: 48 8b 35 ad 60 00 00        	movq	24749(%rip), %rsi
100005f8b: 4c 89 f7                    	movq	%r14, %rdi
100005f8e: e8 9f 4f 00 00              	callq	20383 <dyld_stub_binder+0x10000af32>
100005f93: 48 8b 08                    	movq	(%rax), %rcx
100005f96: 48 89 c7                    	movq	%rax, %rdi
100005f99: be 0a 00 00 00              	movl	$10, %esi
100005f9e: ff 51 38                    	callq	*56(%rcx)
100005fa1: 41 89 c6                    	movl	%eax, %r14d
100005fa4: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
100005fa8: e8 f7 4f 00 00              	callq	20471 <dyld_stub_binder+0x10000afa4>
100005fad: 41 0f be f6                 	movsbl	%r14b, %esi
100005fb1: 48 89 df                    	movq	%rbx, %rdi
100005fb4: e8 8b 4f 00 00              	callq	20363 <dyld_stub_binder+0x10000af44>
100005fb9: 48 89 df                    	movq	%rbx, %rdi
100005fbc: e8 89 4f 00 00              	callq	20361 <dyld_stub_binder+0x10000af4a>
100005fc1: 48 83 c4 10                 	addq	$16, %rsp
100005fc5: 5b                          	popq	%rbx
100005fc6: 41 5e                       	popq	%r14
100005fc8: 5d                          	popq	%rbp
100005fc9: c3                          	retq
100005fca: 48 89 c3                    	movq	%rax, %rbx
100005fcd: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
100005fd1: e8 ce 4f 00 00              	callq	20430 <dyld_stub_binder+0x10000afa4>
100005fd6: 48 89 df                    	movq	%rbx, %rdi
100005fd9: e8 42 4f 00 00              	callq	20290 <dyld_stub_binder+0x10000af20>
100005fde: 0f 0b                       	ud2

0000000100005fe0 __ZN17LeafHashAllocator16allocateLeafHashEv:
100005fe0: 55                          	pushq	%rbp
100005fe1: 48 89 e5                    	movq	%rsp, %rbp
100005fe4: 41 57                       	pushq	%r15
100005fe6: 41 56                       	pushq	%r14
100005fe8: 41 55                       	pushq	%r13
100005fea: 41 54                       	pushq	%r12
100005fec: 53                          	pushq	%rbx
100005fed: 48 81 ec 18 01 00 00        	subq	$280, %rsp
100005ff4: 48 89 fb                    	movq	%rdi, %rbx
100005ff7: 48 8b 47 20                 	movq	32(%rdi), %rax
100005ffb: 48 3b 47 18                 	cmpq	24(%rdi), %rax
100005fff: 0f 85 ad 00 00 00           	jne	173 <__ZN17LeafHashAllocator16allocateLeafHashEv+0xd2>
100006005: 48 8b 03                    	movq	(%rbx), %rax
100006008: 4c 8b 73 08                 	movq	8(%rbx), %r14
10000600c: 4d 89 f4                    	movq	%r14, %r12
10000600f: 49 29 c4                    	subq	%rax, %r12
100006012: 66 0f 76 c0                 	pcmpeqd	%xmm0, %xmm0
100006016: 66 0f 7f 45 b0              	movdqa	%xmm0, -80(%rbp)
10000601b: 66 0f 7f 45 a0              	movdqa	%xmm0, -96(%rbp)
100006020: 66 0f 7f 45 90              	movdqa	%xmm0, -112(%rbp)
100006025: 66 0f 7f 45 80              	movdqa	%xmm0, -128(%rbp)
10000602a: 66 0f 7f 85 70 ff ff ff     	movdqa	%xmm0, -144(%rbp)
100006032: 66 0f 7f 85 60 ff ff ff     	movdqa	%xmm0, -160(%rbp)
10000603a: 66 0f 7f 85 50 ff ff ff     	movdqa	%xmm0, -176(%rbp)
100006042: 66 0f 7f 85 40 ff ff ff     	movdqa	%xmm0, -192(%rbp)
10000604a: 66 0f 7f 85 30 ff ff ff     	movdqa	%xmm0, -208(%rbp)
100006052: 66 0f 7f 85 20 ff ff ff     	movdqa	%xmm0, -224(%rbp)
10000605a: 66 0f 7f 85 10 ff ff ff     	movdqa	%xmm0, -240(%rbp)
100006062: 66 0f 7f 85 00 ff ff ff     	movdqa	%xmm0, -256(%rbp)
10000606a: 66 0f 7f 85 f0 fe ff ff     	movdqa	%xmm0, -272(%rbp)
100006072: 66 0f 7f 85 e0 fe ff ff     	movdqa	%xmm0, -288(%rbp)
10000607a: 66 0f 7f 85 d0 fe ff ff     	movdqa	%xmm0, -304(%rbp)
100006082: 66 0f 7f 85 c0 fe ff ff     	movdqa	%xmm0, -320(%rbp)
10000608a: 4c 8b 6b 10                 	movq	16(%rbx), %r13
10000608e: 4d 39 f5                    	cmpq	%r14, %r13
100006091: 76 31                       	jbe	49 <__ZN17LeafHashAllocator16allocateLeafHashEv+0xe4>
100006093: 48 8d b5 c0 fe ff ff        	leaq	-320(%rbp), %rsi
10000609a: 4c 89 f7                    	movq	%r14, %rdi
10000609d: e8 9e 21 00 00              	callq	8606 <__ZN8LeafHashaSERKS_>
1000060a2: 49 81 c6 00 01 00 00        	addq	$256, %r14
1000060a9: 4c 89 73 08                 	movq	%r14, 8(%rbx)
1000060ad: e9 23 01 00 00              	jmp	291 <__ZN17LeafHashAllocator16allocateLeafHashEv+0x1f5>
1000060b2: 44 0f b7 60 fe              	movzwl	-2(%rax), %r12d
1000060b7: 48 83 c0 fe                 	addq	$-2, %rax
1000060bb: 48 89 43 20                 	movq	%rax, 32(%rbx)
1000060bf: e9 15 01 00 00              	jmp	277 <__ZN17LeafHashAllocator16allocateLeafHashEv+0x1f9>
1000060c4: 4d 89 e7                    	movq	%r12, %r15
1000060c7: 49 c1 ff 08                 	sarq	$8, %r15
1000060cb: 49 8d 57 01                 	leaq	1(%r15), %rdx
1000060cf: 48 89 d1                    	movq	%rdx, %rcx
1000060d2: 48 c1 e9 38                 	shrq	$56, %rcx
1000060d6: 0f 85 93 01 00 00           	jne	403 <__ZN17LeafHashAllocator16allocateLeafHashEv+0x28f>
1000060dc: 48 b9 ff ff ff ff ff ff ff 00       	movabsq	$72057594037927935, %rcx
1000060e6: 49 29 c5                    	subq	%rax, %r13
1000060e9: 4c 89 e8                    	movq	%r13, %rax
1000060ec: 48 c1 f8 08                 	sarq	$8, %rax
1000060f0: 49 c1 fd 07                 	sarq	$7, %r13
1000060f4: 49 39 d5                    	cmpq	%rdx, %r13
1000060f7: 4c 0f 42 ea                 	cmovbq	%rdx, %r13
1000060fb: 48 ba ff ff ff ff ff ff 7f 00       	movabsq	$36028797018963967, %rdx
100006105: 48 39 d0                    	cmpq	%rdx, %rax
100006108: 4c 0f 43 e9                 	cmovaeq	%rcx, %r13
10000610c: 4d 85 ed                    	testq	%r13, %r13
10000610f: 48 89 5d d0                 	movq	%rbx, -48(%rbp)
100006113: 74 1a                       	je	26 <__ZN17LeafHashAllocator16allocateLeafHashEv+0x14f>
100006115: 49 39 cd                    	cmpq	%rcx, %r13
100006118: 0f 87 59 01 00 00           	ja	345 <__ZN17LeafHashAllocator16allocateLeafHashEv+0x297>
10000611e: 4c 89 ef                    	movq	%r13, %rdi
100006121: 48 c1 e7 08                 	shlq	$8, %rdi
100006125: e8 b6 4e 00 00              	callq	20150 <dyld_stub_binder+0x10000afe0>
10000612a: 48 89 c3                    	movq	%rax, %rbx
10000612d: eb 02                       	jmp	2 <__ZN17LeafHashAllocator16allocateLeafHashEv+0x151>
10000612f: 31 db                       	xorl	%ebx, %ebx
100006131: 49 c1 e7 08                 	shlq	$8, %r15
100006135: 4e 8d 34 3b                 	leaq	(%rbx,%r15), %r14
100006139: 49 c1 e5 08                 	shlq	$8, %r13
10000613d: 49 01 dd                    	addq	%rbx, %r13
100006140: 48 8d b5 c0 fe ff ff        	leaq	-320(%rbp), %rsi
100006147: 4c 89 f7                    	movq	%r14, %rdi
10000614a: e8 f1 20 00 00              	callq	8433 <__ZN8LeafHashaSERKS_>
10000614f: 4a 8d 8c 3b 00 01 00 00     	leaq	256(%rbx,%r15), %rcx
100006157: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000615b: 4c 8b 38                    	movq	(%rax), %r15
10000615e: 48 8b 58 08                 	movq	8(%rax), %rbx
100006162: 4c 39 fb                    	cmpq	%r15, %rbx
100006165: 74 52                       	je	82 <__ZN17LeafHashAllocator16allocateLeafHashEv+0x1d9>
100006167: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
10000616b: 4c 89 65 c0                 	movq	%r12, -64(%rbp)
10000616f: 4d 89 f4                    	movq	%r14, %r12
100006172: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000617c: 0f 1f 40 00                 	nopl	(%rax)
100006180: 49 81 c6 00 ff ff ff        	addq	$-256, %r14
100006187: 48 81 c3 00 ff ff ff        	addq	$-256, %rbx
10000618e: 4c 89 f7                    	movq	%r14, %rdi
100006191: 48 89 de                    	movq	%rbx, %rsi
100006194: e8 a7 20 00 00              	callq	8359 <__ZN8LeafHashaSERKS_>
100006199: 49 81 c4 00 ff ff ff        	addq	$-256, %r12
1000061a0: 4d 89 e6                    	movq	%r12, %r14
1000061a3: 49 39 df                    	cmpq	%rbx, %r15
1000061a6: 75 d8                       	jne	-40 <__ZN17LeafHashAllocator16allocateLeafHashEv+0x1a0>
1000061a8: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000061ac: 4c 8b 38                    	movq	(%rax), %r15
1000061af: 4c 8b 65 c0                 	movq	-64(%rbp), %r12
1000061b3: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000061b7: eb 04                       	jmp	4 <__ZN17LeafHashAllocator16allocateLeafHashEv+0x1dd>
1000061b9: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000061bd: 4c 89 30                    	movq	%r14, (%rax)
1000061c0: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000061c4: 4c 89 68 10                 	movq	%r13, 16(%rax)
1000061c8: 4d 85 ff                    	testq	%r15, %r15
1000061cb: 74 08                       	je	8 <__ZN17LeafHashAllocator16allocateLeafHashEv+0x1f5>
1000061cd: 4c 89 ff                    	movq	%r15, %rdi
1000061d0: e8 ff 4d 00 00              	callq	19967 <dyld_stub_binder+0x10000afd4>
1000061d5: 49 c1 ec 08                 	shrq	$8, %r12
1000061d9: 41 0f b7 c4                 	movzwl	%r12w, %eax
1000061dd: 3d 10 27 00 00              	cmpl	$10000, %eax
1000061e2: 73 12                       	jae	18 <__ZN17LeafHashAllocator16allocateLeafHashEv+0x216>
1000061e4: 48 81 c4 18 01 00 00        	addq	$280, %rsp
1000061eb: 5b                          	popq	%rbx
1000061ec: 41 5c                       	popq	%r12
1000061ee: 41 5d                       	popq	%r13
1000061f0: 41 5e                       	popq	%r14
1000061f2: 41 5f                       	popq	%r15
1000061f4: 5d                          	popq	%rbp
1000061f5: c3                          	retq
1000061f6: 48 8b 1d 33 5e 00 00        	movq	24115(%rip), %rbx
1000061fd: 48 8d 35 2b 56 00 00        	leaq	22059(%rip), %rsi
100006204: 48 89 df                    	movq	%rbx, %rdi
100006207: e8 24 cd ff ff              	callq	-13020 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000620c: 48 8d 35 a1 5a 00 00        	leaq	23201(%rip), %rsi
100006213: 48 89 c7                    	movq	%rax, %rdi
100006216: e8 15 cd ff ff              	callq	-13035 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000621b: 48 8d 35 28 56 00 00        	leaq	22056(%rip), %rsi
100006222: 48 89 c7                    	movq	%rax, %rdi
100006225: e8 06 cd ff ff              	callq	-13050 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000622a: 48 89 c7                    	movq	%rax, %rdi
10000622d: e8 2e fd ff ff              	callq	-722 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100006232: 48 89 df                    	movq	%rbx, %rdi
100006235: be d5 00 00 00              	movl	$213, %esi
10000623a: e8 29 4d 00 00              	callq	19753 <dyld_stub_binder+0x10000af68>
10000623f: 48 8d 35 1a 56 00 00        	leaq	22042(%rip), %rsi
100006246: 48 89 c7                    	movq	%rax, %rdi
100006249: e8 e2 cc ff ff              	callq	-13086 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000624e: 48 8d 35 6e 5a 00 00        	leaq	23150(%rip), %rsi
100006255: 48 89 c7                    	movq	%rax, %rdi
100006258: e8 d3 cc ff ff              	callq	-13101 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000625d: 48 89 c7                    	movq	%rax, %rdi
100006260: e8 fb fc ff ff              	callq	-773 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100006265: bf 01 00 00 00              	movl	$1, %edi
10000626a: e8 bf 4d 00 00              	callq	19903 <dyld_stub_binder+0x10000b02e>
10000626f: 48 89 df                    	movq	%rbx, %rdi
100006272: e8 af 4c 00 00              	callq	19631 <dyld_stub_binder+0x10000af26>
100006277: e8 14 22 00 00              	callq	8724 <__ZNSt3__1L20__throw_length_errorEPKc>
10000627c: 0f 1f 40 00                 	nopl	(%rax)

0000000100006280 __ZN17LeafHashAllocator6insertEjt:
100006280: 55                          	pushq	%rbp
100006281: 48 89 e5                    	movq	%rsp, %rbp
100006284: 41 57                       	pushq	%r15
100006286: 41 56                       	pushq	%r14
100006288: 41 54                       	pushq	%r12
10000628a: 53                          	pushq	%rbx
10000628b: 41 89 f4                    	movl	%esi, %r12d
10000628e: 48 89 fb                    	movq	%rdi, %rbx
100006291: 89 d0                       	movl	%edx, %eax
100006293: 48 8b 3f                    	movq	(%rdi), %rdi
100006296: 48 8b 4b 08                 	movq	8(%rbx), %rcx
10000629a: 48 29 f9                    	subq	%rdi, %rcx
10000629d: 48 c1 f9 08                 	sarq	$8, %rcx
1000062a1: 48 39 c1                    	cmpq	%rax, %rcx
1000062a4: 76 17                       	jbe	23 <__ZN17LeafHashAllocator6insertEjt+0x3d>
1000062a6: 48 c1 e0 08                 	shlq	$8, %rax
1000062aa: 48 01 c7                    	addq	%rax, %rdi
1000062ad: 44 89 e6                    	movl	%r12d, %esi
1000062b0: 5b                          	popq	%rbx
1000062b1: 41 5c                       	popq	%r12
1000062b3: 41 5e                       	popq	%r14
1000062b5: 41 5f                       	popq	%r15
1000062b7: 5d                          	popq	%rbp
1000062b8: e9 53 22 00 00              	jmp	8787 <__ZN8LeafHash6insertEj>
1000062bd: 0f b7 f2                    	movzwl	%dx, %esi
1000062c0: 4c 8b 3d 69 5d 00 00        	movq	23913(%rip), %r15
1000062c7: 4c 89 ff                    	movq	%r15, %rdi
1000062ca: e8 b1 4c 00 00              	callq	19633 <dyld_stub_binder+0x10000af80>
1000062cf: 4c 8d 35 8a 55 00 00        	leaq	21898(%rip), %r14
1000062d6: 48 89 c7                    	movq	%rax, %rdi
1000062d9: 4c 89 f6                    	movq	%r14, %rsi
1000062dc: e8 4f cc ff ff              	callq	-13233 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000062e1: 48 8b 73 08                 	movq	8(%rbx), %rsi
1000062e5: 48 2b 33                    	subq	(%rbx), %rsi
1000062e8: 48 c1 fe 08                 	sarq	$8, %rsi
1000062ec: 48 89 c7                    	movq	%rax, %rdi
1000062ef: e8 80 4c 00 00              	callq	19584 <dyld_stub_binder+0x10000af74>
1000062f4: 48 89 c7                    	movq	%rax, %rdi
1000062f7: 4c 89 f6                    	movq	%r14, %rsi
1000062fa: e8 31 cc ff ff              	callq	-13263 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000062ff: 48 89 c7                    	movq	%rax, %rdi
100006302: 44 89 e6                    	movl	%r12d, %esi
100006305: e8 64 4c 00 00              	callq	19556 <dyld_stub_binder+0x10000af6e>
10000630a: 48 89 c7                    	movq	%rax, %rdi
10000630d: e8 4e fc ff ff              	callq	-946 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100006312: 48 8d 35 16 55 00 00        	leaq	21782(%rip), %rsi
100006319: 4c 89 ff                    	movq	%r15, %rdi
10000631c: e8 0f cc ff ff              	callq	-13297 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100006321: 48 8d 35 a4 57 00 00        	leaq	22436(%rip), %rsi
100006328: 48 89 c7                    	movq	%rax, %rdi
10000632b: e8 00 cc ff ff              	callq	-13312 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100006330: 48 8d 35 13 55 00 00        	leaq	21779(%rip), %rsi
100006337: 48 89 c7                    	movq	%rax, %rdi
10000633a: e8 f1 cb ff ff              	callq	-13327 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000633f: 48 89 c7                    	movq	%rax, %rdi
100006342: e8 19 fc ff ff              	callq	-999 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100006347: 4c 89 ff                    	movq	%r15, %rdi
10000634a: be e2 00 00 00              	movl	$226, %esi
10000634f: e8 14 4c 00 00              	callq	19476 <dyld_stub_binder+0x10000af68>
100006354: 48 89 c7                    	movq	%rax, %rdi
100006357: 4c 89 f6                    	movq	%r14, %rsi
10000635a: e8 d1 cb ff ff              	callq	-13359 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000635f: 48 8d 35 5d 59 00 00        	leaq	22877(%rip), %rsi
100006366: 48 89 c7                    	movq	%rax, %rdi
100006369: e8 c2 cb ff ff              	callq	-13374 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000636e: 48 89 c7                    	movq	%rax, %rdi
100006371: e8 ea fb ff ff              	callq	-1046 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100006376: bf 01 00 00 00              	movl	$1, %edi
10000637b: e8 ae 4c 00 00              	callq	19630 <dyld_stub_binder+0x10000b02e>

0000000100006380 __ZN4Node9subdivideER13NodeAllocator15NodeOrientationj:
100006380: 55                          	pushq	%rbp
100006381: 48 89 e5                    	movq	%rsp, %rbp
100006384: 41 57                       	pushq	%r15
100006386: 41 56                       	pushq	%r14
100006388: 41 55                       	pushq	%r13
10000638a: 41 54                       	pushq	%r12
10000638c: 53                          	pushq	%rbx
10000638d: 48 81 ec 88 00 00 00        	subq	$136, %rsp
100006394: 41 89 ce                    	movl	%ecx, %r14d
100006397: 89 d3                       	movl	%edx, %ebx
100006399: 49 89 f7                    	movq	%rsi, %r15
10000639c: 49 89 fd                    	movq	%rdi, %r13
10000639f: 48 8d bd 70 ff ff ff        	leaq	-144(%rbp), %rdi
1000063a6: 4c 89 ee                    	movq	%r13, %rsi
1000063a9: e8 72 03 00 00              	callq	882 <__ZNK4Node14getChildBoundsE15NodeOrientation>
1000063ae: 41 0f b7 55 00              	movzwl	(%r13), %edx
1000063b3: 48 8d 35 ee 01 08 00        	leaq	524782(%rip), %rsi
1000063ba: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
1000063be: e8 ed 0b 00 00              	callq	3053 <__ZN17LeafHashAllocator11getRecInfosEt>
1000063c3: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
1000063c7: 48 39 7d a8                 	cmpq	%rdi, -88(%rbp)
1000063cb: 75 20                       	jne	32 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x6d>
1000063cd: 48 85 ff                    	testq	%rdi, %rdi
1000063d0: 74 09                       	je	9 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x5b>
1000063d2: 48 89 7d a8                 	movq	%rdi, -88(%rbp)
1000063d6: e8 f9 4b 00 00              	callq	19449 <dyld_stub_binder+0x10000afd4>
1000063db: 48 81 c4 88 00 00 00        	addq	$136, %rsp
1000063e2: 5b                          	popq	%rbx
1000063e3: 41 5c                       	popq	%r12
1000063e5: 41 5d                       	popq	%r13
1000063e7: 41 5e                       	popq	%r14
1000063e9: 41 5f                       	popq	%r15
1000063eb: 5d                          	popq	%rbp
1000063ec: c3                          	retq
1000063ed: 31 c0                       	xorl	%eax, %eax
1000063ef: 85 db                       	testl	%ebx, %ebx
1000063f1: 0f 94 c0                    	sete	%al
1000063f4: 89 45 d4                    	movl	%eax, -44(%rbp)
1000063f7: 41 ff c6                    	incl	%r14d
1000063fa: 44 89 75 d0                 	movl	%r14d, -48(%rbp)
1000063fe: bb 01 00 00 00              	movl	$1, %ebx
100006403: 31 c0                       	xorl	%eax, %eax
100006405: 49 bc b7 6d db b6 6d db b6 6d       	movabsq	$7905747460161236407, %r12
10000640f: eb 27                       	jmp	39 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0xb8>
100006411: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000641b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100006420: 89 d8                       	movl	%ebx, %eax
100006422: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100006426: 48 29 f9                    	subq	%rdi, %rcx
100006429: 48 c1 f9 02                 	sarq	$2, %rcx
10000642d: 49 0f af cc                 	imulq	%r12, %rcx
100006431: ff c3                       	incl	%ebx
100006433: 48 39 c1                    	cmpq	%rax, %rcx
100006436: 76 95                       	jbe	-107 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x4d>
100006438: f3 0f 10 85 70 ff ff ff     	movss	-144(%rbp), %xmm0
100006440: 48 8d 0c c0                 	leaq	(%rax,%rax,8), %rcx
100006444: 4c 8d 34 49                 	leaq	(%rcx,%rcx,2), %r14
100006448: 49 01 c6                    	addq	%rax, %r14
10000644b: f3 42 0f 10 4c 37 04        	movss	4(%rdi,%r14), %xmm1
100006452: f3 42 0f 10 54 37 0c        	movss	12(%rdi,%r14), %xmm2
100006459: f3 0f 58 d1                 	addss	%xmm1, %xmm2
10000645d: 0f 2e d0                    	ucomiss	%xmm0, %xmm2
100006460: 0f 82 ea 00 00 00           	jb	234 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x1d0>
100006466: f3 0f 58 85 78 ff ff ff     	addss	-136(%rbp), %xmm0
10000646e: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
100006471: 0f 82 d9 00 00 00           	jb	217 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x1d0>
100006477: f3 0f 10 85 74 ff ff ff     	movss	-140(%rbp), %xmm0
10000647f: f3 42 0f 10 4c 37 08        	movss	8(%rdi,%r14), %xmm1
100006486: f3 42 0f 10 54 37 10        	movss	16(%rdi,%r14), %xmm2
10000648d: f3 0f 58 d1                 	addss	%xmm1, %xmm2
100006491: 0f 2e d0                    	ucomiss	%xmm0, %xmm2
100006494: 0f 82 b6 00 00 00           	jb	182 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x1d0>
10000649a: f3 0f 58 85 7c ff ff ff     	addss	-132(%rbp), %xmm0
1000064a2: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
1000064a5: 0f 82 a5 00 00 00           	jb	165 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x1d0>
1000064ab: 41 8b 75 04                 	movl	4(%r13), %esi
1000064af: 85 f6                       	testl	%esi, %esi
1000064b1: 78 0a                       	js	10 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x13d>
1000064b3: 4c 89 ff                    	movq	%r15, %rdi
1000064b6: e8 05 49 00 00              	callq	18693 <__ZN13NodeAllocator7getNodeEj>
1000064bb: eb 33                       	jmp	51 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x170>
1000064bd: 48 8b 45 80                 	movq	-128(%rbp), %rax
1000064c1: 48 89 44 24 10              	movq	%rax, 16(%rsp)
1000064c6: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
1000064cd: 48 8b 8d 78 ff ff ff        	movq	-136(%rbp), %rcx
1000064d4: 48 89 4c 24 08              	movq	%rcx, 8(%rsp)
1000064d9: 48 89 04 24                 	movq	%rax, (%rsp)
1000064dd: 4c 89 ff                    	movq	%r15, %rdi
1000064e0: e8 eb 45 00 00              	callq	17899 <__ZN13NodeAllocator12allocateNodeE3Rec>
1000064e5: 41 89 55 04                 	movl	%edx, 4(%r13)
1000064e9: 41 ff 87 c8 b6 06 00        	incl	440008(%r15)
1000064f0: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
1000064f4: 42 8b 34 31                 	movl	(%rcx,%r14), %esi
1000064f8: 4a 8b 54 31 04              	movq	4(%rcx,%r14), %rdx
1000064fd: 48 89 55 b8                 	movq	%rdx, -72(%rbp)
100006501: 4a 8b 54 31 0c              	movq	12(%rcx,%r14), %rdx
100006506: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
10000650a: 4a 8b 4c 31 14              	movq	20(%rcx,%r14), %rcx
10000650f: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100006513: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100006517: 48 89 4c 24 10              	movq	%rcx, 16(%rsp)
10000651c: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100006520: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100006524: 48 89 54 24 08              	movq	%rdx, 8(%rsp)
100006529: 48 89 0c 24                 	movq	%rcx, (%rsp)
10000652d: 48 89 c7                    	movq	%rax, %rdi
100006530: 4c 89 fa                    	movq	%r15, %rdx
100006533: 8b 4d d4                    	movl	-44(%rbp), %ecx
100006536: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
10000653a: e8 01 f6 ff ff              	callq	-2559 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj>
10000653f: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100006543: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000654d: 0f 1f 00                    	nopl	(%rax)
100006550: f3 0f 10 45 88              	movss	-120(%rbp), %xmm0
100006555: f3 42 0f 10 4c 37 04        	movss	4(%rdi,%r14), %xmm1
10000655c: f3 42 0f 10 54 37 0c        	movss	12(%rdi,%r14), %xmm2
100006563: f3 0f 58 d1                 	addss	%xmm1, %xmm2
100006567: 0f 2e d0                    	ucomiss	%xmm0, %xmm2
10000656a: 0f 82 b0 fe ff ff           	jb	-336 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0xa0>
100006570: f3 0f 58 45 90              	addss	-112(%rbp), %xmm0
100006575: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
100006578: 0f 82 a2 fe ff ff           	jb	-350 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0xa0>
10000657e: f3 0f 10 45 8c              	movss	-116(%rbp), %xmm0
100006583: f3 42 0f 10 4c 37 08        	movss	8(%rdi,%r14), %xmm1
10000658a: f3 42 0f 10 54 37 10        	movss	16(%rdi,%r14), %xmm2
100006591: f3 0f 58 d1                 	addss	%xmm1, %xmm2
100006595: 0f 2e d0                    	ucomiss	%xmm0, %xmm2
100006598: 0f 82 82 fe ff ff           	jb	-382 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0xa0>
10000659e: f3 0f 58 45 94              	addss	-108(%rbp), %xmm0
1000065a3: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
1000065a6: 0f 82 74 fe ff ff           	jb	-396 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0xa0>
1000065ac: 41 8b 75 08                 	movl	8(%r13), %esi
1000065b0: 85 f6                       	testl	%esi, %esi
1000065b2: 78 0a                       	js	10 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x23e>
1000065b4: 4c 89 ff                    	movq	%r15, %rdi
1000065b7: e8 04 48 00 00              	callq	18436 <__ZN13NodeAllocator7getNodeEj>
1000065bc: eb 30                       	jmp	48 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x26e>
1000065be: 48 8d 4d 88                 	leaq	-120(%rbp), %rcx
1000065c2: 48 8b 41 10                 	movq	16(%rcx), %rax
1000065c6: 48 89 44 24 10              	movq	%rax, 16(%rsp)
1000065cb: 48 8b 01                    	movq	(%rcx), %rax
1000065ce: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000065d2: 48 89 4c 24 08              	movq	%rcx, 8(%rsp)
1000065d7: 48 89 04 24                 	movq	%rax, (%rsp)
1000065db: 4c 89 ff                    	movq	%r15, %rdi
1000065de: e8 ed 44 00 00              	callq	17645 <__ZN13NodeAllocator12allocateNodeE3Rec>
1000065e3: 41 89 55 08                 	movl	%edx, 8(%r13)
1000065e7: 41 ff 87 c8 b6 06 00        	incl	440008(%r15)
1000065ee: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
1000065f2: 42 8b 34 31                 	movl	(%rcx,%r14), %esi
1000065f6: 4a 8b 54 31 04              	movq	4(%rcx,%r14), %rdx
1000065fb: 48 89 55 b8                 	movq	%rdx, -72(%rbp)
1000065ff: 4a 8b 54 31 0c              	movq	12(%rcx,%r14), %rdx
100006604: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100006608: 4a 8b 4c 31 14              	movq	20(%rcx,%r14), %rcx
10000660d: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100006611: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100006615: 48 89 4c 24 10              	movq	%rcx, 16(%rsp)
10000661a: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
10000661e: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100006622: 48 89 54 24 08              	movq	%rdx, 8(%rsp)
100006627: 48 89 0c 24                 	movq	%rcx, (%rsp)
10000662b: 48 89 c7                    	movq	%rax, %rdi
10000662e: 4c 89 fa                    	movq	%r15, %rdx
100006631: 8b 4d d4                    	movl	-44(%rbp), %ecx
100006634: 44 8b 45 d0                 	movl	-48(%rbp), %r8d
100006638: e8 03 f5 ff ff              	callq	-2813 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj>
10000663d: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100006641: e9 da fd ff ff              	jmp	-550 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0xa0>
100006646: eb 00                       	jmp	0 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x2c8>
100006648: 48 89 c3                    	movq	%rax, %rbx
10000664b: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
10000664f: 48 85 ff                    	testq	%rdi, %rdi
100006652: 74 09                       	je	9 <__ZN4Node9subdivideER13NodeAllocator15NodeOrientationj+0x2dd>
100006654: 48 89 7d a8                 	movq	%rdi, -88(%rbp)
100006658: e8 77 49 00 00              	callq	18807 <dyld_stub_binder+0x10000afd4>
10000665d: 48 89 df                    	movq	%rbx, %rdi
100006660: e8 bb 48 00 00              	callq	18619 <dyld_stub_binder+0x10000af20>
100006665: 0f 0b                       	ud2
100006667: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100006670 __ZN4Node9setBranchEv:
100006670: 55                          	pushq	%rbp
100006671: 48 89 e5                    	movq	%rsp, %rbp
100006674: 53                          	pushq	%rbx
100006675: 50                          	pushq	%rax
100006676: c7 47 0c ff ff ff ff        	movl	$4294967295, 12(%rdi)
10000667d: 0f b7 07                    	movzwl	(%rdi), %eax
100006680: 66 85 c0                    	testw	%ax, %ax
100006683: 78 1e                       	js	30 <__ZN4Node9setBranchEv+0x33>
100006685: 48 89 fb                    	movq	%rdi, %rbx
100006688: 0f b7 f0                    	movzwl	%ax, %esi
10000668b: 48 8d 3d 16 ff 07 00        	leaq	524054(%rip), %rdi
100006692: e8 c9 10 00 00              	callq	4297 <__ZN17LeafHashAllocator13clearLeafHashEt>
100006697: 66 c7 03 ff ff              	movw	$65535, (%rbx)
10000669c: 48 83 c4 08                 	addq	$8, %rsp
1000066a0: 5b                          	popq	%rbx
1000066a1: 5d                          	popq	%rbp
1000066a2: c3                          	retq
1000066a3: 48 8b 1d 86 59 00 00        	movq	22918(%rip), %rbx
1000066aa: 48 8d 35 7e 51 00 00        	leaq	20862(%rip), %rsi
1000066b1: 48 89 df                    	movq	%rbx, %rdi
1000066b4: e8 77 c8 ff ff              	callq	-14217 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000066b9: 48 8d 35 2e 56 00 00        	leaq	22062(%rip), %rsi
1000066c0: 48 89 c7                    	movq	%rax, %rdi
1000066c3: e8 68 c8 ff ff              	callq	-14232 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000066c8: 48 8d 35 7b 51 00 00        	leaq	20859(%rip), %rsi
1000066cf: 48 89 c7                    	movq	%rax, %rdi
1000066d2: e8 59 c8 ff ff              	callq	-14247 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000066d7: 48 89 c7                    	movq	%rax, %rdi
1000066da: e8 81 f8 ff ff              	callq	-1919 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
1000066df: 48 89 df                    	movq	%rbx, %rdi
1000066e2: be 55 01 00 00              	movl	$341, %esi
1000066e7: e8 7c 48 00 00              	callq	18556 <dyld_stub_binder+0x10000af68>
1000066ec: 48 8d 35 6d 51 00 00        	leaq	20845(%rip), %rsi
1000066f3: 48 89 c7                    	movq	%rax, %rdi
1000066f6: e8 35 c8 ff ff              	callq	-14283 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000066fb: 48 8d 35 c1 55 00 00        	leaq	21953(%rip), %rsi
100006702: 48 89 c7                    	movq	%rax, %rdi
100006705: e8 26 c8 ff ff              	callq	-14298 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000670a: 48 89 c7                    	movq	%rax, %rdi
10000670d: e8 4e f8 ff ff              	callq	-1970 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100006712: bf 01 00 00 00              	movl	$1, %edi
100006717: e8 12 49 00 00              	callq	18706 <dyld_stub_binder+0x10000b02e>
10000671c: 0f 1f 40 00                 	nopl	(%rax)

0000000100006720 __ZNK4Node14getChildBoundsE15NodeOrientation:
100006720: 55                          	pushq	%rbp
100006721: 48 89 e5                    	movq	%rsp, %rbp
100006724: 41 56                       	pushq	%r14
100006726: 53                          	pushq	%rbx
100006727: 48 83 ec 10                 	subq	$16, %rsp
10000672b: 48 89 f3                    	movq	%rsi, %rbx
10000672e: 48 89 f8                    	movq	%rdi, %rax
100006731: f3 0f 10 46 10              	movss	16(%rsi), %xmm0
100006736: 85 d2                       	testl	%edx, %edx
100006738: 74 33                       	je	51 <__ZNK4Node14getChildBoundsE15NodeOrientation+0x4d>
10000673a: 48 8d 4b 14                 	leaq	20(%rbx), %rcx
10000673e: f3 0f 10 4b 14              	movss	20(%rbx), %xmm1
100006743: f3 0f 10 53 18              	movss	24(%rbx), %xmm2
100006748: f3 0f 10 6b 1c              	movss	28(%rbx), %xmm5
10000674d: f3 0f 59 2d 37 50 00 00     	mulss	20535(%rip), %xmm5
100006755: f3 0f 58 e9                 	addss	%xmm1, %xmm5
100006759: 0f 28 f0                    	movaps	%xmm0, %xmm6
10000675c: f3 0f 5c f0                 	subss	%xmm0, %xmm6
100006760: 0f 57 db                    	xorps	%xmm3, %xmm3
100006763: 0f 2e de                    	ucomiss	%xmm6, %xmm3
100006766: 76 32                       	jbe	50 <__ZNK4Node14getChildBoundsE15NodeOrientation+0x7a>
100006768: e9 a5 00 00 00              	jmp	165 <__ZNK4Node14getChildBoundsE15NodeOrientation+0xf2>
10000676d: f3 0f 10 4b 14              	movss	20(%rbx), %xmm1
100006772: f3 0f 10 53 18              	movss	24(%rbx), %xmm2
100006777: f3 0f 10 35 0d 50 00 00     	movss	20493(%rip), %xmm6
10000677f: f3 0f 59 f2                 	mulss	%xmm2, %xmm6
100006783: f3 0f 58 f0                 	addss	%xmm0, %xmm6
100006787: 48 8d 4b 14                 	leaq	20(%rbx), %rcx
10000678b: 0f 28 e9                    	movaps	%xmm1, %xmm5
10000678e: f3 0f 5c f0                 	subss	%xmm0, %xmm6
100006792: 0f 57 db                    	xorps	%xmm3, %xmm3
100006795: 0f 2e de                    	ucomiss	%xmm6, %xmm3
100006798: 77 78                       	ja	120 <__ZNK4Node14getChildBoundsE15NodeOrientation+0xf2>
10000679a: 0f 2e d6                    	ucomiss	%xmm6, %xmm2
10000679d: 76 73                       	jbe	115 <__ZNK4Node14getChildBoundsE15NodeOrientation+0xf2>
10000679f: f3 0f 5c e9                 	subss	%xmm1, %xmm5
1000067a3: 0f 57 db                    	xorps	%xmm3, %xmm3
1000067a6: 0f 2e dd                    	ucomiss	%xmm5, %xmm3
1000067a9: 0f 87 ea 00 00 00           	ja	234 <__ZNK4Node14getChildBoundsE15NodeOrientation+0x179>
1000067af: f3 0f 10 5b 1c              	movss	28(%rbx), %xmm3
1000067b4: 0f 2e dd                    	ucomiss	%xmm5, %xmm3
1000067b7: 0f 86 dc 00 00 00           	jbe	220 <__ZNK4Node14getChildBoundsE15NodeOrientation+0x179>
1000067bd: f3 0f 11 00                 	movss	%xmm0, (%rax)
1000067c1: 8b 09                       	movl	(%rcx), %ecx
1000067c3: 89 48 04                    	movl	%ecx, 4(%rax)
1000067c6: 0f 28 e6                    	movaps	%xmm6, %xmm4
1000067c9: 85 d2                       	testl	%edx, %edx
1000067cb: 74 06                       	je	6 <__ZNK4Node14getChildBoundsE15NodeOrientation+0xb3>
1000067cd: 0f 28 e2                    	movaps	%xmm2, %xmm4
1000067d0: 0f 28 dd                    	movaps	%xmm5, %xmm3
1000067d3: f3 0f 11 60 08              	movss	%xmm4, 8(%rax)
1000067d8: f3 0f 11 58 0c              	movss	%xmm3, 12(%rax)
1000067dd: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
1000067e5: f3 0f 58 c6                 	addss	%xmm6, %xmm0
1000067e9: f3 0f 11 40 18              	movss	%xmm0, 24(%rax)
1000067ee: f3 0f 58 cd                 	addss	%xmm5, %xmm1
1000067f2: f3 0f 11 48 1c              	movss	%xmm1, 28(%rax)
1000067f7: f3 0f 11 60 20              	movss	%xmm4, 32(%rax)
1000067fc: f3 0f 11 58 24              	movss	%xmm3, 36(%rax)
100006801: 48 c7 40 28 00 00 00 00     	movq	$0, 40(%rax)
100006809: 48 83 c4 10                 	addq	$16, %rsp
10000680d: 5b                          	popq	%rbx
10000680e: 41 5e                       	popq	%r14
100006810: 5d                          	popq	%rbp
100006811: c3                          	retq
100006812: 4c 8b 35 17 58 00 00        	movq	22551(%rip), %r14
100006819: 48 8d 35 e4 54 00 00        	leaq	21732(%rip), %rsi
100006820: 4c 89 f7                    	movq	%r14, %rdi
100006823: f3 0f 11 75 ec              	movss	%xmm6, -20(%rbp)
100006828: e8 03 c7 ff ff              	callq	-14589 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000682d: 48 89 c7                    	movq	%rax, %rdi
100006830: f3 0f 10 45 ec              	movss	-20(%rbp), %xmm0
100006835: e8 28 47 00 00              	callq	18216 <dyld_stub_binder+0x10000af62>
10000683a: 48 89 c7                    	movq	%rax, %rdi
10000683d: e8 1e f7 ff ff              	callq	-2274 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100006842: f3 0f 10 43 18              	movss	24(%rbx), %xmm0
100006847: 4c 89 f7                    	movq	%r14, %rdi
10000684a: e8 13 47 00 00              	callq	18195 <dyld_stub_binder+0x10000af62>
10000684f: 48 89 c7                    	movq	%rax, %rdi
100006852: e8 09 f7 ff ff              	callq	-2295 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100006857: 48 8d 35 d1 4f 00 00        	leaq	20433(%rip), %rsi
10000685e: 4c 89 f7                    	movq	%r14, %rdi
100006861: e8 ca c6 ff ff              	callq	-14646 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100006866: 48 8d 35 5f 52 00 00        	leaq	21087(%rip), %rsi
10000686d: 48 89 c7                    	movq	%rax, %rdi
100006870: e8 bb c6 ff ff              	callq	-14661 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100006875: 48 8d 35 ce 4f 00 00        	leaq	20430(%rip), %rsi
10000687c: 48 89 c7                    	movq	%rax, %rdi
10000687f: e8 ac c6 ff ff              	callq	-14676 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100006884: 48 89 c7                    	movq	%rax, %rdi
100006887: e8 d4 f6 ff ff              	callq	-2348 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
10000688c: 4c 89 f7                    	movq	%r14, %rdi
10000688f: be 94 01 00 00              	movl	$404, %esi
100006894: e9 82 00 00 00              	jmp	130 <__ZNK4Node14getChildBoundsE15NodeOrientation+0x1fb>
100006899: 4c 8b 35 90 57 00 00        	movq	22416(%rip), %r14
1000068a0: 48 8d 35 67 54 00 00        	leaq	21607(%rip), %rsi
1000068a7: 4c 89 f7                    	movq	%r14, %rdi
1000068aa: f3 0f 11 6d ec              	movss	%xmm5, -20(%rbp)
1000068af: e8 7c c6 ff ff              	callq	-14724 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000068b4: 48 89 c7                    	movq	%rax, %rdi
1000068b7: f3 0f 10 45 ec              	movss	-20(%rbp), %xmm0
1000068bc: e8 a1 46 00 00              	callq	18081 <dyld_stub_binder+0x10000af62>
1000068c1: 48 89 c7                    	movq	%rax, %rdi
1000068c4: e8 97 f6 ff ff              	callq	-2409 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
1000068c9: f3 0f 10 43 1c              	movss	28(%rbx), %xmm0
1000068ce: 4c 89 f7                    	movq	%r14, %rdi
1000068d1: e8 8c 46 00 00              	callq	18060 <dyld_stub_binder+0x10000af62>
1000068d6: 48 89 c7                    	movq	%rax, %rdi
1000068d9: e8 82 f6 ff ff              	callq	-2430 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
1000068de: 48 8d 35 4a 4f 00 00        	leaq	20298(%rip), %rsi
1000068e5: 4c 89 f7                    	movq	%r14, %rdi
1000068e8: e8 43 c6 ff ff              	callq	-14781 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000068ed: 48 8d 35 d8 51 00 00        	leaq	20952(%rip), %rsi
1000068f4: 48 89 c7                    	movq	%rax, %rdi
1000068f7: e8 34 c6 ff ff              	callq	-14796 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000068fc: 48 8d 35 47 4f 00 00        	leaq	20295(%rip), %rsi
100006903: 48 89 c7                    	movq	%rax, %rdi
100006906: e8 25 c6 ff ff              	callq	-14811 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000690b: 48 89 c7                    	movq	%rax, %rdi
10000690e: e8 4d f6 ff ff              	callq	-2483 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100006913: 4c 89 f7                    	movq	%r14, %rdi
100006916: be 9a 01 00 00              	movl	$410, %esi
10000691b: e8 48 46 00 00              	callq	17992 <dyld_stub_binder+0x10000af68>
100006920: 48 8d 35 39 4f 00 00        	leaq	20281(%rip), %rsi
100006927: 48 89 c7                    	movq	%rax, %rdi
10000692a: e8 01 c6 ff ff              	callq	-14847 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000692f: 48 8d 35 8d 53 00 00        	leaq	21389(%rip), %rsi
100006936: 48 89 c7                    	movq	%rax, %rdi
100006939: e8 f2 c5 ff ff              	callq	-14862 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000693e: 48 89 c7                    	movq	%rax, %rdi
100006941: e8 1a f6 ff ff              	callq	-2534 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100006946: bf 01 00 00 00              	movl	$1, %edi
10000694b: e8 de 46 00 00              	callq	18142 <dyld_stub_binder+0x10000b02e>

0000000100006950 __ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij:
100006950: 55                          	pushq	%rbp
100006951: 48 89 e5                    	movq	%rsp, %rbp
100006954: 41 57                       	pushq	%r15
100006956: 41 56                       	pushq	%r14
100006958: 41 55                       	pushq	%r13
10000695a: 41 54                       	pushq	%r12
10000695c: 53                          	pushq	%rbx
10000695d: 48 83 ec 68                 	subq	$104, %rsp
100006961: 45 89 c6                    	movl	%r8d, %r14d
100006964: 41 89 cf                    	movl	%ecx, %r15d
100006967: 48 89 55 90                 	movq	%rdx, -112(%rbp)
10000696b: 49 89 f5                    	movq	%rsi, %r13
10000696e: 49 89 fc                    	movq	%rdi, %r12
100006971: 66 0f ef c0                 	pxor	%xmm0, %xmm0
100006975: 66 0f 7f 45 c0              	movdqa	%xmm0, -64(%rbp)
10000697a: 66 0f 7f 45 b0              	movdqa	%xmm0, -80(%rbp)
10000697f: 66 0f 7f 45 a0              	movdqa	%xmm0, -96(%rbp)
100006984: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
100006988: e8 93 2a 00 00              	callq	10899 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv>
10000698d: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100006991: 48 39 45 b0                 	cmpq	%rax, -80(%rbp)
100006995: 74 19                       	je	25 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x60>
100006997: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
10000699b: 48 03 55 c8                 	addq	-56(%rbp), %rdx
10000699f: 0f b6 ca                    	movzbl	%dl, %ecx
1000069a2: 48 c1 ea 08                 	shrq	$8, %rdx
1000069a6: 48 c1 e1 04                 	shlq	$4, %rcx
1000069aa: 48 03 0c d0                 	addq	(%rax,%rdx,8), %rcx
1000069ae: eb 02                       	jmp	2 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x62>
1000069b0: 31 c9                       	xorl	%ecx, %ecx
1000069b2: 4c 89 21                    	movq	%r12, (%rcx)
1000069b5: 44 89 79 08                 	movl	%r15d, 8(%rcx)
1000069b9: 48 ff 45 c8                 	incq	-56(%rbp)
1000069bd: 48 8d 35 65 51 00 00        	leaq	20837(%rip), %rsi
1000069c4: ba 10 00 00 00              	movl	$16, %edx
1000069c9: 4c 89 ef                    	movq	%r13, %rdi
1000069cc: e8 df d4 ff ff              	callq	-11041 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000069d1: 48 89 c7                    	movq	%rax, %rdi
1000069d4: 44 89 f6                    	movl	%r14d, %esi
1000069d7: e8 92 45 00 00              	callq	17810 <dyld_stub_binder+0x10000af6e>
1000069dc: 48 8d 35 57 51 00 00        	leaq	20823(%rip), %rsi
1000069e3: ba 05 00 00 00              	movl	$5, %edx
1000069e8: 48 89 c7                    	movq	%rax, %rdi
1000069eb: e8 c0 d4 ff ff              	callq	-11072 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000069f0: 48 8d 35 49 51 00 00        	leaq	20809(%rip), %rsi
1000069f7: ba 07 00 00 00              	movl	$7, %edx
1000069fc: 4c 89 ef                    	movq	%r13, %rdi
1000069ff: e8 ac d4 ff ff              	callq	-11092 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006a04: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006a0e: 66 90                       	nop
100006a10: 48 83 7d c8 00              	cmpq	$0, -56(%rbp)
100006a15: 0f 84 33 03 00 00           	je	819 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x3fe>
100006a1b: ba 04 00 00 00              	movl	$4, %edx
100006a20: 4c 89 ef                    	movq	%r13, %rdi
100006a23: 48 8d 35 1e 51 00 00        	leaq	20766(%rip), %rsi
100006a2a: e8 81 d4 ff ff              	callq	-11135 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006a2f: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100006a33: 66 0f 6f 45 c0              	movdqa	-64(%rbp), %xmm0
100006a38: 66 48 0f 7e c1              	movq	%xmm0, %rcx
100006a3d: 0f b6 d1                    	movzbl	%cl, %edx
100006a40: 48 c1 e9 08                 	shrq	$8, %rcx
100006a44: 48 8b 0c c8                 	movq	(%rax,%rcx,8), %rcx
100006a48: 48 c1 e2 04                 	shlq	$4, %rdx
100006a4c: 48 8b 1c 11                 	movq	(%rcx,%rdx), %rbx
100006a50: 44 8b 74 11 08              	movl	8(%rcx,%rdx), %r14d
100006a55: 66 0f d4 05 33 4d 00 00     	paddq	19763(%rip), %xmm0
100006a5d: 66 0f 7f 45 c0              	movdqa	%xmm0, -64(%rbp)
100006a62: 66 48 0f 7e c1              	movq	%xmm0, %rcx
100006a67: 48 81 f9 00 02 00 00        	cmpq	$512, %rcx
100006a6e: 72 15                       	jb	21 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x135>
100006a70: 48 8b 38                    	movq	(%rax), %rdi
100006a73: e8 5c 45 00 00              	callq	17756 <dyld_stub_binder+0x10000afd4>
100006a78: 48 83 45 a8 08              	addq	$8, -88(%rbp)
100006a7d: 48 81 45 c0 00 ff ff ff     	addq	$-256, -64(%rbp)
100006a85: 0f b7 03                    	movzwl	(%rbx), %eax
100006a88: 66 85 c0                    	testw	%ax, %ax
100006a8b: 78 33                       	js	51 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x170>
100006a8d: 0f b7 d0                    	movzwl	%ax, %edx
100006a90: 48 8d bd 78 ff ff ff        	leaq	-136(%rbp), %rdi
100006a97: 48 8d 35 0a fb 07 00        	leaq	523018(%rip), %rsi
100006a9e: e8 0d 05 00 00              	callq	1293 <__ZN17LeafHashAllocator11getRecInfosEt>
100006aa3: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100006aaa: 48 89 45 98                 	movq	%rax, -104(%rbp)
100006aae: 4c 8b 7d 80                 	movq	-128(%rbp), %r15
100006ab2: eb 15                       	jmp	21 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x179>
100006ab4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006abe: 66 90                       	nop
100006ac0: 45 31 ff                    	xorl	%r15d, %r15d
100006ac3: 31 c0                       	xorl	%eax, %eax
100006ac5: 48 89 45 98                 	movq	%rax, -104(%rbp)
100006ac9: ba 27 00 00 00              	movl	$39, %edx
100006ace: 4c 89 ef                    	movq	%r13, %rdi
100006ad1: 48 8d 35 75 50 00 00        	leaq	20597(%rip), %rsi
100006ad8: e8 d3 d3 ff ff              	callq	-11309 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006add: 48 89 c7                    	movq	%rax, %rdi
100006ae0: 44 89 f6                    	movl	%r14d, %esi
100006ae3: e8 80 44 00 00              	callq	17536 <dyld_stub_binder+0x10000af68>
100006ae8: ba 14 00 00 00              	movl	$20, %edx
100006aed: 48 89 c7                    	movq	%rax, %rdi
100006af0: 48 8d 35 7e 50 00 00        	leaq	20606(%rip), %rsi
100006af7: e8 b4 d3 ff ff              	callq	-11340 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006afc: ba 1c 00 00 00              	movl	$28, %edx
100006b01: 48 89 c7                    	movq	%rax, %rdi
100006b04: 48 8d 35 7f 50 00 00        	leaq	20607(%rip), %rsi
100006b0b: e8 a0 d3 ff ff              	callq	-11360 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006b10: 48 8d 73 10                 	leaq	16(%rbx), %rsi
100006b14: 48 89 c7                    	movq	%rax, %rdi
100006b17: e8 44 ef ff ff              	callq	-4284 <__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK3Rec>
100006b1c: ba 1d 00 00 00              	movl	$29, %edx
100006b21: 48 89 c7                    	movq	%rax, %rdi
100006b24: 48 8d 35 7c 50 00 00        	leaq	20604(%rip), %rsi
100006b2b: e8 80 d3 ff ff              	callq	-11392 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006b30: 8b 73 0c                    	movl	12(%rbx), %esi
100006b33: 48 89 c7                    	movq	%rax, %rdi
100006b36: e8 2d 44 00 00              	callq	17453 <dyld_stub_binder+0x10000af68>
100006b3b: ba 15 00 00 00              	movl	$21, %edx
100006b40: 48 89 c7                    	movq	%rax, %rdi
100006b43: 48 8d 35 7b 50 00 00        	leaq	20603(%rip), %rsi
100006b4a: e8 61 d3 ff ff              	callq	-11423 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006b4f: 0f bf 33                    	movswl	(%rbx), %esi
100006b52: 48 89 c7                    	movq	%rax, %rdi
100006b55: e8 20 44 00 00              	callq	17440 <dyld_stub_binder+0x10000af7a>
100006b5a: ba 18 00 00 00              	movl	$24, %edx
100006b5f: 48 89 c7                    	movq	%rax, %rdi
100006b62: 48 8d 35 72 50 00 00        	leaq	20594(%rip), %rsi
100006b69: e8 42 d3 ff ff              	callq	-11454 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006b6e: ba 1a 00 00 00              	movl	$26, %edx
100006b73: 48 89 c7                    	movq	%rax, %rdi
100006b76: 48 8d 35 77 50 00 00        	leaq	20599(%rip), %rsi
100006b7d: e8 2e d3 ff ff              	callq	-11474 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006b82: 44 8b 63 04                 	movl	4(%rbx), %r12d
100006b86: 45 85 e4                    	testl	%r12d, %r12d
100006b89: 0f 88 7e 00 00 00           	js	126 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x2bd>
100006b8f: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100006b93: 44 89 e6                    	movl	%r12d, %esi
100006b96: e8 25 42 00 00              	callq	16933 <__ZN13NodeAllocator7getNodeEj>
100006b9b: 49 89 c6                    	movq	%rax, %r14
100006b9e: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100006ba2: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100006ba6: 48 89 ca                    	movq	%rcx, %rdx
100006ba9: 48 29 c2                    	subq	%rax, %rdx
100006bac: 48 89 d6                    	movq	%rdx, %rsi
100006baf: 48 c1 e6 05                 	shlq	$5, %rsi
100006bb3: 48 ff ce                    	decq	%rsi
100006bb6: 48 85 d2                    	testq	%rdx, %rdx
100006bb9: 48 0f 44 f2                 	cmoveq	%rdx, %rsi
100006bbd: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100006bc1: 48 03 55 c0                 	addq	-64(%rbp), %rdx
100006bc5: 48 39 d6                    	cmpq	%rdx, %rsi
100006bc8: 75 19                       	jne	25 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x293>
100006bca: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
100006bce: e8 4d 28 00 00              	callq	10317 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv>
100006bd3: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100006bd7: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100006bdb: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100006bdf: 48 03 55 c8                 	addq	-56(%rbp), %rdx
100006be3: 48 39 c1                    	cmpq	%rax, %rcx
100006be6: 74 18                       	je	24 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x2b0>
100006be8: 48 89 d6                    	movq	%rdx, %rsi
100006beb: 48 c1 ee 08                 	shrq	$8, %rsi
100006bef: 0f b6 ca                    	movzbl	%dl, %ecx
100006bf2: 48 c1 e1 04                 	shlq	$4, %rcx
100006bf6: 48 03 0c f0                 	addq	(%rax,%rsi,8), %rcx
100006bfa: eb 06                       	jmp	6 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x2b2>
100006bfc: 0f 1f 40 00                 	nopl	(%rax)
100006c00: 31 c9                       	xorl	%ecx, %ecx
100006c02: 4c 89 31                    	movq	%r14, (%rcx)
100006c05: 44 89 61 08                 	movl	%r12d, 8(%rcx)
100006c09: 48 ff 45 c8                 	incq	-56(%rbp)
100006c0d: 4c 89 ef                    	movq	%r13, %rdi
100006c10: 44 89 e6                    	movl	%r12d, %esi
100006c13: e8 50 43 00 00              	callq	17232 <dyld_stub_binder+0x10000af68>
100006c18: ba 01 00 00 00              	movl	$1, %edx
100006c1d: 48 89 c7                    	movq	%rax, %rdi
100006c20: 48 8d 35 39 4c 00 00        	leaq	19513(%rip), %rsi
100006c27: e8 84 d2 ff ff              	callq	-11644 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006c2c: 44 8b 63 08                 	movl	8(%rbx), %r12d
100006c30: 45 85 e4                    	testl	%r12d, %r12d
100006c33: 0f 88 84 00 00 00           	js	132 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x36d>
100006c39: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100006c3d: 44 89 e6                    	movl	%r12d, %esi
100006c40: e8 7b 41 00 00              	callq	16763 <__ZN13NodeAllocator7getNodeEj>
100006c45: 49 89 c6                    	movq	%rax, %r14
100006c48: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100006c4c: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100006c50: 48 89 ca                    	movq	%rcx, %rdx
100006c53: 48 29 c2                    	subq	%rax, %rdx
100006c56: 48 89 d6                    	movq	%rdx, %rsi
100006c59: 48 c1 e6 05                 	shlq	$5, %rsi
100006c5d: 48 ff ce                    	decq	%rsi
100006c60: 48 85 d2                    	testq	%rdx, %rdx
100006c63: 48 0f 44 f2                 	cmoveq	%rdx, %rsi
100006c67: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100006c6b: 48 03 55 c0                 	addq	-64(%rbp), %rdx
100006c6f: 48 39 d6                    	cmpq	%rdx, %rsi
100006c72: 75 19                       	jne	25 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x33d>
100006c74: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
100006c78: e8 a3 27 00 00              	callq	10147 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv>
100006c7d: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100006c81: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100006c85: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100006c89: 48 03 55 c8                 	addq	-56(%rbp), %rdx
100006c8d: 48 39 c1                    	cmpq	%rax, %rcx
100006c90: 74 1e                       	je	30 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x360>
100006c92: 48 89 d6                    	movq	%rdx, %rsi
100006c95: 48 c1 ee 08                 	shrq	$8, %rsi
100006c99: 0f b6 ca                    	movzbl	%dl, %ecx
100006c9c: 48 c1 e1 04                 	shlq	$4, %rcx
100006ca0: 48 03 0c f0                 	addq	(%rax,%rsi,8), %rcx
100006ca4: eb 0c                       	jmp	12 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x362>
100006ca6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006cb0: 31 c9                       	xorl	%ecx, %ecx
100006cb2: 4c 89 31                    	movq	%r14, (%rcx)
100006cb5: 44 89 61 08                 	movl	%r12d, 8(%rcx)
100006cb9: 48 ff 45 c8                 	incq	-56(%rbp)
100006cbd: 4c 89 ef                    	movq	%r13, %rdi
100006cc0: 44 89 e6                    	movl	%r12d, %esi
100006cc3: e8 a0 42 00 00              	callq	17056 <dyld_stub_binder+0x10000af68>
100006cc8: ba 01 00 00 00              	movl	$1, %edx
100006ccd: 48 89 c7                    	movq	%rax, %rdi
100006cd0: 48 8d 35 89 4b 00 00        	leaq	19337(%rip), %rsi
100006cd7: e8 d4 d1 ff ff              	callq	-11820 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006cdc: ba 0d 00 00 00              	movl	$13, %edx
100006ce1: 4c 89 ef                    	movq	%r13, %rdi
100006ce4: 48 8d 35 24 4f 00 00        	leaq	20260(%rip), %rsi
100006ceb: e8 c0 d1 ff ff              	callq	-11840 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006cf0: ba 2e 00 00 00              	movl	$46, %edx
100006cf5: 4c 89 ef                    	movq	%r13, %rdi
100006cf8: 48 8d 35 1e 4f 00 00        	leaq	20254(%rip), %rsi
100006cff: e8 ac d1 ff ff              	callq	-11860 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006d04: 48 8b 45 98                 	movq	-104(%rbp), %rax
100006d08: 48 89 c3                    	movq	%rax, %rbx
100006d0b: 4c 39 f8                    	cmpq	%r15, %rax
100006d0e: 74 27                       	je	39 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x3e7>
100006d10: 8b 33                       	movl	(%rbx), %esi
100006d12: 4c 89 ef                    	movq	%r13, %rdi
100006d15: e8 54 42 00 00              	callq	16980 <dyld_stub_binder+0x10000af6e>
100006d1a: ba 01 00 00 00              	movl	$1, %edx
100006d1f: 48 89 c7                    	movq	%rax, %rdi
100006d22: 48 8d 35 37 4b 00 00        	leaq	19255(%rip), %rsi
100006d29: e8 82 d1 ff ff              	callq	-11902 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006d2e: 48 83 c3 1c                 	addq	$28, %rbx
100006d32: 49 39 df                    	cmpq	%rbx, %r15
100006d35: 75 d9                       	jne	-39 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x3c0>
100006d37: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100006d3b: 48 85 ff                    	testq	%rdi, %rdi
100006d3e: 0f 84 cc fc ff ff           	je	-820 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0xc0>
100006d44: e8 8b 42 00 00              	callq	17035 <dyld_stub_binder+0x10000afd4>
100006d49: e9 c2 fc ff ff              	jmp	-830 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0xc0>
100006d4e: 48 8d 35 f7 4e 00 00        	leaq	20215(%rip), %rsi
100006d55: ba 0d 00 00 00              	movl	$13, %edx
100006d5a: 4c 89 ef                    	movq	%r13, %rdi
100006d5d: e8 4e d1 ff ff              	callq	-11954 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100006d62: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
100006d66: 4c 8b 75 b0                 	movq	-80(%rbp), %r14
100006d6a: 4c 89 f0                    	movq	%r14, %rax
100006d6d: 48 29 d8                    	subq	%rbx, %rax
100006d70: 74 50                       	je	80 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x472>
100006d72: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100006d76: 48 89 f9                    	movq	%rdi, %rcx
100006d79: 48 c1 e9 08                 	shrq	$8, %rcx
100006d7d: 48 8d 0c cb                 	leaq	(%rbx,%rcx,8), %rcx
100006d81: 40 0f b6 d7                 	movzbl	%dil, %edx
100006d85: 48 c1 e2 04                 	shlq	$4, %rdx
100006d89: 48 03 11                    	addq	(%rcx), %rdx
100006d8c: 48 03 7d c8                 	addq	-56(%rbp), %rdi
100006d90: 40 0f b6 f7                 	movzbl	%dil, %esi
100006d94: 48 c1 ef 08                 	shrq	$8, %rdi
100006d98: 48 c1 e6 04                 	shlq	$4, %rsi
100006d9c: 48 03 34 fb                 	addq	(%rbx,%rdi,8), %rsi
100006da0: 48 39 d6                    	cmpq	%rdx, %rsi
100006da3: 74 1d                       	je	29 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x472>
100006da5: 48 83 c2 10                 	addq	$16, %rdx
100006da9: 48 89 d7                    	movq	%rdx, %rdi
100006dac: 48 2b 39                    	subq	(%rcx), %rdi
100006daf: 48 81 ff 00 10 00 00        	cmpq	$4096, %rdi
100006db6: 75 e8                       	jne	-24 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x450>
100006db8: 48 8b 51 08                 	movq	8(%rcx), %rdx
100006dbc: 48 83 c1 08                 	addq	$8, %rcx
100006dc0: eb de                       	jmp	-34 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x450>
100006dc2: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
100006dca: 48 c1 f8 03                 	sarq	$3, %rax
100006dce: 48 83 f8 03                 	cmpq	$3, %rax
100006dd2: 72 34                       	jb	52 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x4b8>
100006dd4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006dde: 66 90                       	nop
100006de0: 48 8b 3b                    	movq	(%rbx), %rdi
100006de3: e8 ec 41 00 00              	callq	16876 <dyld_stub_binder+0x10000afd4>
100006de8: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
100006dec: 4c 8b 75 b0                 	movq	-80(%rbp), %r14
100006df0: 48 83 c3 08                 	addq	$8, %rbx
100006df4: 48 89 5d a8                 	movq	%rbx, -88(%rbp)
100006df8: 4c 89 f0                    	movq	%r14, %rax
100006dfb: 48 29 d8                    	subq	%rbx, %rax
100006dfe: 48 c1 f8 03                 	sarq	$3, %rax
100006e02: 48 83 f8 02                 	cmpq	$2, %rax
100006e06: 77 d8                       	ja	-40 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x490>
100006e08: 48 83 f8 01                 	cmpq	$1, %rax
100006e0c: 74 0d                       	je	13 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x4cb>
100006e0e: 48 83 f8 02                 	cmpq	$2, %rax
100006e12: 75 10                       	jne	16 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x4d4>
100006e14: b8 00 01 00 00              	movl	$256, %eax
100006e19: eb 05                       	jmp	5 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x4d0>
100006e1b: b8 80 00 00 00              	movl	$128, %eax
100006e20: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100006e24: 4c 39 f3                    	cmpq	%r14, %rbx
100006e27: 74 38                       	je	56 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x511>
100006e29: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100006e30: 48 8b 3b                    	movq	(%rbx), %rdi
100006e33: e8 9c 41 00 00              	callq	16796 <dyld_stub_binder+0x10000afd4>
100006e38: 48 83 c3 08                 	addq	$8, %rbx
100006e3c: 49 39 de                    	cmpq	%rbx, %r14
100006e3f: 75 ef                       	jne	-17 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x4e0>
100006e41: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100006e45: 48 89 c1                    	movq	%rax, %rcx
100006e48: 48 2b 4d a8                 	subq	-88(%rbp), %rcx
100006e4c: 74 13                       	je	19 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x511>
100006e4e: 48 83 c1 f8                 	addq	$-8, %rcx
100006e52: 48 c1 e9 03                 	shrq	$3, %rcx
100006e56: 48 f7 d1                    	notq	%rcx
100006e59: 48 8d 04 c8                 	leaq	(%rax,%rcx,8), %rax
100006e5d: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100006e61: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100006e65: 48 85 ff                    	testq	%rdi, %rdi
100006e68: 74 05                       	je	5 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x51f>
100006e6a: e8 65 41 00 00              	callq	16741 <dyld_stub_binder+0x10000afd4>
100006e6f: 48 83 c4 68                 	addq	$104, %rsp
100006e73: 5b                          	popq	%rbx
100006e74: 41 5c                       	popq	%r12
100006e76: 41 5d                       	popq	%r13
100006e78: 41 5e                       	popq	%r14
100006e7a: 41 5f                       	popq	%r15
100006e7c: 5d                          	popq	%rbp
100006e7d: c3                          	retq
100006e7e: eb 04                       	jmp	4 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x534>
100006e80: eb 02                       	jmp	2 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x534>
100006e82: eb 00                       	jmp	0 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x534>
100006e84: 49 89 c6                    	movq	%rax, %r14
100006e87: eb 17                       	jmp	23 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x550>
100006e89: eb 04                       	jmp	4 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x53f>
100006e8b: eb 02                       	jmp	2 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x53f>
100006e8d: eb 00                       	jmp	0 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x53f>
100006e8f: 49 89 c6                    	movq	%rax, %r14
100006e92: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100006e96: 48 85 ff                    	testq	%rdi, %rdi
100006e99: 74 05                       	je	5 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x550>
100006e9b: e8 34 41 00 00              	callq	16692 <dyld_stub_binder+0x10000afd4>
100006ea0: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
100006ea4: 4c 8b 7d b0                 	movq	-80(%rbp), %r15
100006ea8: 4c 89 f8                    	movq	%r15, %rax
100006eab: 48 29 d8                    	subq	%rbx, %rax
100006eae: 75 4d                       	jne	77 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x5ad>
100006eb0: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
100006eb8: 48 c1 f8 03                 	sarq	$3, %rax
100006ebc: 48 83 f8 03                 	cmpq	$3, %rax
100006ec0: 72 28                       	jb	40 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x59a>
100006ec2: 48 8b 3b                    	movq	(%rbx), %rdi
100006ec5: e8 0a 41 00 00              	callq	16650 <dyld_stub_binder+0x10000afd4>
100006eca: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
100006ece: 4c 8b 7d b0                 	movq	-80(%rbp), %r15
100006ed2: 48 83 c3 08                 	addq	$8, %rbx
100006ed6: 48 89 5d a8                 	movq	%rbx, -88(%rbp)
100006eda: 4c 89 f8                    	movq	%r15, %rax
100006edd: 48 29 d8                    	subq	%rbx, %rax
100006ee0: 48 c1 f8 03                 	sarq	$3, %rax
100006ee4: 48 83 f8 02                 	cmpq	$2, %rax
100006ee8: 77 d8                       	ja	-40 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x572>
100006eea: 48 83 f8 01                 	cmpq	$1, %rax
100006eee: 74 5d                       	je	93 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x5fd>
100006ef0: 48 83 f8 02                 	cmpq	$2, %rax
100006ef4: 75 60                       	jne	96 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x606>
100006ef6: b8 00 01 00 00              	movl	$256, %eax
100006efb: eb 55                       	jmp	85 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x602>
100006efd: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100006f01: 48 89 f9                    	movq	%rdi, %rcx
100006f04: 48 c1 e9 08                 	shrq	$8, %rcx
100006f08: 48 8d 0c cb                 	leaq	(%rbx,%rcx,8), %rcx
100006f0c: 40 0f b6 d7                 	movzbl	%dil, %edx
100006f10: 48 c1 e2 04                 	shlq	$4, %rdx
100006f14: 48 03 11                    	addq	(%rcx), %rdx
100006f17: 48 03 7d c8                 	addq	-56(%rbp), %rdi
100006f1b: 40 0f b6 f7                 	movzbl	%dil, %esi
100006f1f: 48 c1 ef 08                 	shrq	$8, %rdi
100006f23: 48 c1 e6 04                 	shlq	$4, %rsi
100006f27: 48 03 34 fb                 	addq	(%rbx,%rdi,8), %rsi
100006f2b: 48 39 d6                    	cmpq	%rdx, %rsi
100006f2e: 74 80                       	je	-128 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x560>
100006f30: 48 83 c2 10                 	addq	$16, %rdx
100006f34: 48 89 d7                    	movq	%rdx, %rdi
100006f37: 48 2b 39                    	subq	(%rcx), %rdi
100006f3a: 48 81 ff 00 10 00 00        	cmpq	$4096, %rdi
100006f41: 75 e8                       	jne	-24 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x5db>
100006f43: 48 8b 51 08                 	movq	8(%rcx), %rdx
100006f47: 48 83 c1 08                 	addq	$8, %rcx
100006f4b: eb de                       	jmp	-34 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x5db>
100006f4d: b8 80 00 00 00              	movl	$128, %eax
100006f52: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100006f56: 4c 39 fb                    	cmpq	%r15, %rbx
100006f59: 74 31                       	je	49 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x63c>
100006f5b: 48 8b 3b                    	movq	(%rbx), %rdi
100006f5e: e8 71 40 00 00              	callq	16497 <dyld_stub_binder+0x10000afd4>
100006f63: 48 83 c3 08                 	addq	$8, %rbx
100006f67: 49 39 df                    	cmpq	%rbx, %r15
100006f6a: 75 ef                       	jne	-17 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x60b>
100006f6c: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100006f70: 48 89 c1                    	movq	%rax, %rcx
100006f73: 48 2b 4d a8                 	subq	-88(%rbp), %rcx
100006f77: 74 13                       	je	19 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x63c>
100006f79: 48 83 c1 f8                 	addq	$-8, %rcx
100006f7d: 48 c1 e9 03                 	shrq	$3, %rcx
100006f81: 48 f7 d1                    	notq	%rcx
100006f84: 48 8d 04 c8                 	leaq	(%rax,%rcx,8), %rax
100006f88: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100006f8c: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100006f90: 48 85 ff                    	testq	%rdi, %rdi
100006f93: 74 05                       	je	5 <__ZN4Node7logInfoERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEER13NodeAllocatorij+0x64a>
100006f95: e8 3a 40 00 00              	callq	16442 <dyld_stub_binder+0x10000afd4>
100006f9a: 4c 89 f7                    	movq	%r14, %rdi
100006f9d: e8 7e 3f 00 00              	callq	16254 <dyld_stub_binder+0x10000af20>
100006fa2: 0f 0b                       	ud2
100006fa4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006fae: 66 90                       	nop

0000000100006fb0 __ZN17LeafHashAllocator11getRecInfosEt:
100006fb0: 55                          	pushq	%rbp
100006fb1: 48 89 e5                    	movq	%rsp, %rbp
100006fb4: 41 57                       	pushq	%r15
100006fb6: 41 56                       	pushq	%r14
100006fb8: 41 54                       	pushq	%r12
100006fba: 53                          	pushq	%rbx
100006fbb: 49 89 f4                    	movq	%rsi, %r12
100006fbe: 89 d0                       	movl	%edx, %eax
100006fc0: 48 8b 36                    	movq	(%rsi), %rsi
100006fc3: 49 8b 4c 24 08              	movq	8(%r12), %rcx
100006fc8: 48 29 f1                    	subq	%rsi, %rcx
100006fcb: 48 c1 f9 08                 	sarq	$8, %rcx
100006fcf: 48 39 c1                    	cmpq	%rax, %rcx
100006fd2: 76 1b                       	jbe	27 <__ZN17LeafHashAllocator11getRecInfosEt+0x3f>
100006fd4: 48 89 fb                    	movq	%rdi, %rbx
100006fd7: 48 c1 e0 08                 	shlq	$8, %rax
100006fdb: 48 01 c6                    	addq	%rax, %rsi
100006fde: e8 fd 21 00 00              	callq	8701 <__ZN8LeafHash11getRecInfosEv>
100006fe3: 48 89 d8                    	movq	%rbx, %rax
100006fe6: 5b                          	popq	%rbx
100006fe7: 41 5c                       	popq	%r12
100006fe9: 41 5e                       	popq	%r14
100006feb: 41 5f                       	popq	%r15
100006fed: 5d                          	popq	%rbp
100006fee: c3                          	retq
100006fef: 0f b7 f2                    	movzwl	%dx, %esi
100006ff2: 4c 8b 3d 37 50 00 00        	movq	20535(%rip), %r15
100006ff9: 4c 89 ff                    	movq	%r15, %rdi
100006ffc: e8 7f 3f 00 00              	callq	16255 <dyld_stub_binder+0x10000af80>
100007001: 4c 8d 35 58 48 00 00        	leaq	18520(%rip), %r14
100007008: 48 89 c7                    	movq	%rax, %rdi
10000700b: 4c 89 f6                    	movq	%r14, %rsi
10000700e: e8 1d bf ff ff              	callq	-16611 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100007013: 49 8b 74 24 08              	movq	8(%r12), %rsi
100007018: 49 2b 34 24                 	subq	(%r12), %rsi
10000701c: 48 c1 fe 08                 	sarq	$8, %rsi
100007020: 48 89 c7                    	movq	%rax, %rdi
100007023: e8 4c 3f 00 00              	callq	16204 <dyld_stub_binder+0x10000af74>
100007028: 48 89 c7                    	movq	%rax, %rdi
10000702b: e8 30 ef ff ff              	callq	-4304 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100007030: 48 8d 35 f8 47 00 00        	leaq	18424(%rip), %rsi
100007037: 4c 89 ff                    	movq	%r15, %rdi
10000703a: e8 f1 be ff ff              	callq	-16655 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000703f: 48 8d 35 86 4a 00 00        	leaq	19078(%rip), %rsi
100007046: 48 89 c7                    	movq	%rax, %rdi
100007049: e8 e2 be ff ff              	callq	-16670 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000704e: 48 8d 35 f5 47 00 00        	leaq	18421(%rip), %rsi
100007055: 48 89 c7                    	movq	%rax, %rdi
100007058: e8 d3 be ff ff              	callq	-16685 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000705d: 48 89 c7                    	movq	%rax, %rdi
100007060: e8 fb ee ff ff              	callq	-4357 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100007065: 4c 89 ff                    	movq	%r15, %rdi
100007068: be 19 01 00 00              	movl	$281, %esi
10000706d: e8 f6 3e 00 00              	callq	16118 <dyld_stub_binder+0x10000af68>
100007072: 48 89 c7                    	movq	%rax, %rdi
100007075: 4c 89 f6                    	movq	%r14, %rsi
100007078: e8 b3 be ff ff              	callq	-16717 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000707d: 48 8d 35 3f 4c 00 00        	leaq	19519(%rip), %rsi
100007084: 48 89 c7                    	movq	%rax, %rdi
100007087: e8 a4 be ff ff              	callq	-16732 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000708c: 48 89 c7                    	movq	%rax, %rdi
10000708f: e8 cc ee ff ff              	callq	-4404 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100007094: bf 01 00 00 00              	movl	$1, %edi
100007099: e8 90 3f 00 00              	callq	16272 <dyld_stub_binder+0x10000b02e>
10000709e: 66 90                       	nop

00000001000070a0 __ZN4Node6updateER13NodeAllocatorj:
1000070a0: 55                          	pushq	%rbp
1000070a1: 48 89 e5                    	movq	%rsp, %rbp
1000070a4: 41 57                       	pushq	%r15
1000070a6: 41 56                       	pushq	%r14
1000070a8: 41 55                       	pushq	%r13
1000070aa: 41 54                       	pushq	%r12
1000070ac: 53                          	pushq	%rbx
1000070ad: 48 81 ec 98 00 00 00        	subq	$152, %rsp
1000070b4: 48 89 f3                    	movq	%rsi, %rbx
1000070b7: 48 89 7d a8                 	movq	%rdi, -88(%rbp)
1000070bb: bf a0 0f 00 00              	movl	$4000, %edi
1000070c0: e8 1b 3f 00 00              	callq	16155 <dyld_stub_binder+0x10000afe0>
1000070c5: be a0 0f 00 00              	movl	$4000, %esi
1000070ca: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000070ce: 48 89 c7                    	movq	%rax, %rdi
1000070d1: e8 10 3f 00 00              	callq	16144 <dyld_stub_binder+0x10000afe6>
1000070d6: e8 4d 3f 00 00              	callq	16205 <dyld_stub_binder+0x10000b028>
1000070db: 48 89 45 88                 	movq	%rax, -120(%rbp)
1000070df: 83 bb c0 b6 06 00 00        	cmpl	$0, 440000(%rbx)
1000070e6: 48 89 5d b0                 	movq	%rbx, -80(%rbp)
1000070ea: 0f 84 6d 02 00 00           	je	621 <__ZN4Node6updateER13NodeAllocatorj+0x2bd>
1000070f0: 31 c0                       	xorl	%eax, %eax
1000070f2: 48 89 45 b8                 	movq	%rax, -72(%rbp)
1000070f6: 4c 8d 35 ab f4 07 00        	leaq	521387(%rip), %r14
1000070fd: 31 f6                       	xorl	%esi, %esi
1000070ff: eb 20                       	jmp	32 <__ZN4Node6updateER13NodeAllocatorj+0x81>
100007101: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000710b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100007110: 8b 75 d4                    	movl	-44(%rbp), %esi
100007113: ff c6                       	incl	%esi
100007115: 3b b3 c0 b6 06 00           	cmpl	440000(%rbx), %esi
10000711b: 0f 83 42 02 00 00           	jae	578 <__ZN4Node6updateER13NodeAllocatorj+0x2c3>
100007121: 48 89 df                    	movq	%rbx, %rdi
100007124: 89 75 d4                    	movl	%esi, -44(%rbp)
100007127: e8 94 05 00 00              	callq	1428 <__ZNK13NodeAllocator7isValidEj>
10000712c: 83 f8 01                    	cmpl	$1, %eax
10000712f: 75 df                       	jne	-33 <__ZN4Node6updateER13NodeAllocatorj+0x70>
100007131: 48 89 df                    	movq	%rbx, %rdi
100007134: 8b 75 d4                    	movl	-44(%rbp), %esi
100007137: e8 84 3c 00 00              	callq	15492 <__ZN13NodeAllocator7getNodeEj>
10000713c: 83 78 0c 00                 	cmpl	$0, 12(%rax)
100007140: 78 ce                       	js	-50 <__ZN4Node6updateER13NodeAllocatorj+0x70>
100007142: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
100007149: 0f b7 10                    	movzwl	(%rax), %edx
10000714c: 48 8d 7d 90                 	leaq	-112(%rbp), %rdi
100007150: 4c 89 f6                    	movq	%r14, %rsi
100007153: e8 58 fe ff ff              	callq	-424 <__ZN17LeafHashAllocator11getRecInfosEt>
100007158: 48 8b 55 90                 	movq	-112(%rbp), %rdx
10000715c: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100007160: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100007164: 48 29 d7                    	subq	%rdx, %rdi
100007167: 48 b8 b7 6d db b6 6d db b6 6d       	movabsq	$7905747460161236407, %rax
100007171: 0f 84 39 01 00 00           	je	313 <__ZN4Node6updateER13NodeAllocatorj+0x210>
100007177: 48 c1 ff 02                 	sarq	$2, %rdi
10000717b: 48 0f af f8                 	imulq	%rax, %rdi
10000717f: 41 be 02 00 00 00           	movl	$2, %r14d
100007185: 45 31 db                    	xorl	%r11d, %r11d
100007188: eb 32                       	jmp	50 <__ZN4Node6updateER13NodeAllocatorj+0x11c>
10000718a: 48 8b 8d 70 ff ff ff        	movq	-144(%rbp), %rcx
100007191: 4c 09 d1                    	orq	%r10, %rcx
100007194: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100007198: 4a 89 0c c8                 	movq	%rcx, (%rax,%r9,8)
10000719c: 4e 09 3c e8                 	orq	%r15, (%rax,%r13,8)
1000071a0: 48 8b 45 b8                 	movq	-72(%rbp), %rax
1000071a4: ff c0                       	incl	%eax
1000071a6: 48 89 45 b8                 	movq	%rax, -72(%rbp)
1000071aa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
1000071b0: 41 ff c6                    	incl	%r14d
1000071b3: 4c 39 df                    	cmpq	%r11, %rdi
1000071b6: 0f 86 f4 00 00 00           	jbe	244 <__ZN4Node6updateER13NodeAllocatorj+0x210>
1000071bc: 4b 8d 04 db                 	leaq	(%r11,%r11,8), %rax
1000071c0: 48 8d 34 40                 	leaq	(%rax,%rax,2), %rsi
1000071c4: 4c 01 de                    	addq	%r11, %rsi
1000071c7: 8b 04 32                    	movl	(%rdx,%rsi), %eax
1000071ca: 49 89 c1                    	movq	%rax, %r9
1000071cd: 41 ba 01 00 00 00           	movl	$1, %r10d
1000071d3: 89 c1                       	movl	%eax, %ecx
1000071d5: 49 d3 e2                    	shlq	%cl, %r10
1000071d8: 49 c1 e9 06                 	shrq	$6, %r9
1000071dc: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000071e0: 4a 8b 0c c9                 	movq	(%rcx,%r9,8), %rcx
1000071e4: 41 ff c3                    	incl	%r11d
1000071e7: 48 0f a3 c1                 	btq	%rax, %rcx
1000071eb: 72 c3                       	jb	-61 <__ZN4Node6updateER13NodeAllocatorj+0x110>
1000071ed: 4c 39 df                    	cmpq	%r11, %rdi
1000071f0: 76 be                       	jbe	-66 <__ZN4Node6updateER13NodeAllocatorj+0x110>
1000071f2: 48 89 8d 70 ff ff ff        	movq	%rcx, -144(%rbp)
1000071f9: 4c 8d 44 32 04              	leaq	4(%rdx,%rsi), %r8
1000071fe: 44 89 f6                    	movl	%r14d, %esi
100007201: 4c 89 d9                    	movq	%r11, %rcx
100007204: eb 13                       	jmp	19 <__ZN4Node6updateER13NodeAllocatorj+0x179>
100007206: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007210: 89 f1                       	movl	%esi, %ecx
100007212: ff c6                       	incl	%esi
100007214: 48 39 cf                    	cmpq	%rcx, %rdi
100007217: 76 97                       	jbe	-105 <__ZN4Node6updateER13NodeAllocatorj+0x110>
100007219: 48 8d 1c c9                 	leaq	(%rcx,%rcx,8), %rbx
10000721d: 4c 8d 24 5b                 	leaq	(%rbx,%rbx,2), %r12
100007221: 49 01 cc                    	addq	%rcx, %r12
100007224: 42 8b 0c 22                 	movl	(%rdx,%r12), %ecx
100007228: 39 c8                       	cmpl	%ecx, %eax
10000722a: 0f 84 1c 03 00 00           	je	796 <__ZN4Node6updateER13NodeAllocatorj+0x4ac>
100007230: 41 bf 01 00 00 00           	movl	$1, %r15d
100007236: 49 d3 e7                    	shlq	%cl, %r15
100007239: 49 89 cd                    	movq	%rcx, %r13
10000723c: 49 c1 ed 06                 	shrq	$6, %r13
100007240: 48 8b 5d c0                 	movq	-64(%rbp), %rbx
100007244: 4a 8b 1c eb                 	movq	(%rbx,%r13,8), %rbx
100007248: 48 0f a3 cb                 	btq	%rcx, %rbx
10000724c: 72 c2                       	jb	-62 <__ZN4Node6updateER13NodeAllocatorj+0x170>
10000724e: f3 41 0f 10 00              	movss	(%r8), %xmm0
100007253: f3 42 0f 10 4c 22 04        	movss	4(%rdx,%r12), %xmm1
10000725a: f3 41 0f 10 50 08           	movss	8(%r8), %xmm2
100007260: f3 0f 58 d0                 	addss	%xmm0, %xmm2
100007264: 0f 2e d1                    	ucomiss	%xmm1, %xmm2
100007267: 72 a7                       	jb	-89 <__ZN4Node6updateER13NodeAllocatorj+0x170>
100007269: f3 42 0f 58 4c 22 0c        	addss	12(%rdx,%r12), %xmm1
100007270: 0f 2e c8                    	ucomiss	%xmm0, %xmm1
100007273: 72 9b                       	jb	-101 <__ZN4Node6updateER13NodeAllocatorj+0x170>
100007275: f3 41 0f 10 40 04           	movss	4(%r8), %xmm0
10000727b: f3 42 0f 10 4c 22 08        	movss	8(%rdx,%r12), %xmm1
100007282: f3 42 0f 10 54 22 10        	movss	16(%rdx,%r12), %xmm2
100007289: f3 0f 58 d1                 	addss	%xmm1, %xmm2
10000728d: 0f 2e d0                    	ucomiss	%xmm0, %xmm2
100007290: 0f 82 7a ff ff ff           	jb	-134 <__ZN4Node6updateER13NodeAllocatorj+0x170>
100007296: f3 41 0f 58 40 0c           	addss	12(%r8), %xmm0
10000729c: 0f 2e c1                    	ucomiss	%xmm1, %xmm0
10000729f: 0f 82 6b ff ff ff           	jb	-149 <__ZN4Node6updateER13NodeAllocatorj+0x170>
1000072a5: e9 e0 fe ff ff              	jmp	-288 <__ZN4Node6updateER13NodeAllocatorj+0xea>
1000072aa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
1000072b0: 48 39 55 80                 	cmpq	%rdx, -128(%rbp)
1000072b4: 4c 8d 05 15 99 00 00        	leaq	39189(%rip), %r8
1000072bb: 49 b9 b7 6d db b6 6d db b6 6d       	movabsq	$7905747460161236407, %r9
1000072c5: 74 57                       	je	87 <__ZN4Node6updateER13NodeAllocatorj+0x27e>
1000072c7: b8 01 00 00 00              	movl	$1, %eax
1000072cc: 31 c9                       	xorl	%ecx, %ecx
1000072ce: 66 90                       	nop
1000072d0: 48 8d 34 c9                 	leaq	(%rcx,%rcx,8), %rsi
1000072d4: 48 8d 34 76                 	leaq	(%rsi,%rsi,2), %rsi
1000072d8: 48 01 ce                    	addq	%rcx, %rsi
1000072db: 8b 0c 32                    	movl	(%rdx,%rsi), %ecx
1000072de: 49 8b 38                    	movq	(%r8), %rdi
1000072e1: 48 8d 0c 49                 	leaq	(%rcx,%rcx,2), %rcx
1000072e5: 48 8b 5c 32 14              	movq	20(%rdx,%rsi), %rbx
1000072ea: 48 89 5c cf 10              	movq	%rbx, 16(%rdi,%rcx,8)
1000072ef: 48 8b 5c 32 0c              	movq	12(%rdx,%rsi), %rbx
1000072f4: 48 89 5c cf 08              	movq	%rbx, 8(%rdi,%rcx,8)
1000072f9: 48 8b 54 32 04              	movq	4(%rdx,%rsi), %rdx
1000072fe: 48 89 14 cf                 	movq	%rdx, (%rdi,%rcx,8)
100007302: 89 c1                       	movl	%eax, %ecx
100007304: 48 8b 55 90                 	movq	-112(%rbp), %rdx
100007308: 48 8b 75 98                 	movq	-104(%rbp), %rsi
10000730c: 48 29 d6                    	subq	%rdx, %rsi
10000730f: 48 c1 fe 02                 	sarq	$2, %rsi
100007313: 49 0f af f1                 	imulq	%r9, %rsi
100007317: ff c0                       	incl	%eax
100007319: 48 39 ce                    	cmpq	%rcx, %rsi
10000731c: 77 b2                       	ja	-78 <__ZN4Node6updateER13NodeAllocatorj+0x230>
10000731e: 48 8b 9d 78 ff ff ff        	movq	-136(%rbp), %rbx
100007325: 0f b7 33                    	movzwl	(%rbx), %esi
100007328: 4c 8d 35 79 f2 07 00        	leaq	520825(%rip), %r14
10000732f: 4c 89 f7                    	movq	%r14, %rdi
100007332: e8 29 04 00 00              	callq	1065 <__ZN17LeafHashAllocator13clearLeafHashEt>
100007337: c7 43 0c 00 00 00 00        	movl	$0, 12(%rbx)
10000733e: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100007342: 48 85 ff                    	testq	%rdi, %rdi
100007345: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
100007349: 0f 84 c1 fd ff ff           	je	-575 <__ZN4Node6updateER13NodeAllocatorj+0x70>
10000734f: 48 89 7d 98                 	movq	%rdi, -104(%rbp)
100007353: e8 7c 3c 00 00              	callq	15484 <dyld_stub_binder+0x10000afd4>
100007358: e9 b3 fd ff ff              	jmp	-589 <__ZN4Node6updateER13NodeAllocatorj+0x70>
10000735d: 31 c0                       	xorl	%eax, %eax
10000735f: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100007363: e8 c0 3c 00 00              	callq	15552 <dyld_stub_binder+0x10000b028>
100007368: 48 2b 45 88                 	subq	-120(%rbp), %rax
10000736c: 48 01 05 8d f2 07 00        	addq	%rax, 520845(%rip)
100007373: e8 b0 3c 00 00              	callq	15536 <dyld_stub_binder+0x10000b028>
100007378: 49 89 c4                    	movq	%rax, %r12
10000737b: 4c 8d 35 4e 98 00 00        	leaq	38990(%rip), %r14
100007382: 49 8b 06                    	movq	(%r14), %rax
100007385: 49 39 46 08                 	cmpq	%rax, 8(%r14)
100007389: 0f 84 68 01 00 00           	je	360 <__ZN4Node6updateER13NodeAllocatorj+0x457>
10000738f: 45 31 ed                    	xorl	%r13d, %r13d
100007392: 48 8d 1d 1f 98 00 00        	leaq	38943(%rip), %rbx
100007399: 49 bf ab aa aa aa aa aa aa aa       	movabsq	$-6148914691236517205, %r15
1000073a3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000073ad: 0f 1f 00                    	nopl	(%rax)
1000073b0: 4b 8d 54 6d 00              	leaq	(%r13,%r13,2), %rdx
1000073b5: 48 8d 0c d0                 	leaq	(%rax,%rdx,8), %rcx
1000073b9: 4c 89 ee                    	movq	%r13, %rsi
1000073bc: 48 c1 ee 06                 	shrq	$6, %rsi
1000073c0: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
1000073c4: 48 8b 34 f7                 	movq	(%rdi,%rsi,8), %rsi
1000073c8: 4c 0f a3 ee                 	btq	%r13, %rsi
1000073cc: 73 22                       	jae	34 <__ZN4Node6updateER13NodeAllocatorj+0x350>
1000073ce: f3 0f 10 54 d0 04           	movss	4(%rax,%rdx,8), %xmm2
1000073d4: f3 0f 10 4c d0 10           	movss	16(%rax,%rdx,8), %xmm1
1000073da: f3 0f 10 01                 	movss	(%rcx), %xmm0
1000073de: f3 0f 10 5c d0 14           	movss	20(%rax,%rdx,8), %xmm3
1000073e4: e9 86 00 00 00              	jmp	134 <__ZN4Node6updateER13NodeAllocatorj+0x3cf>
1000073e9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000073f0: f3 0f 10 01                 	movss	(%rcx), %xmm0
1000073f4: f3 0f 10 4c d0 10           	movss	16(%rax,%rdx,8), %xmm1
1000073fa: 0f 28 d0                    	movaps	%xmm0, %xmm2
1000073fd: f3 0f 58 d1                 	addss	%xmm1, %xmm2
100007401: f3 0f 10 1b                 	movss	(%rbx), %xmm3
100007405: f3 0f 10 63 08              	movss	8(%rbx), %xmm4
10000740a: f3 0f 58 e3                 	addss	%xmm3, %xmm4
10000740e: 0f 2e d4                    	ucomiss	%xmm4, %xmm2
100007411: 73 0b                       	jae	11 <__ZN4Node6updateER13NodeAllocatorj+0x37e>
100007413: f3 0f 58 54 d0 08           	addss	8(%rax,%rdx,8), %xmm2
100007419: 0f 2e da                    	ucomiss	%xmm2, %xmm3
10000741c: 72 10                       	jb	16 <__ZN4Node6updateER13NodeAllocatorj+0x38e>
10000741e: 48 8d 74 d0 10              	leaq	16(%rax,%rdx,8), %rsi
100007423: 0f 57 0d 76 43 00 00        	xorps	17270(%rip), %xmm1
10000742a: f3 0f 11 0e                 	movss	%xmm1, (%rsi)
10000742e: f3 0f 10 54 d0 04           	movss	4(%rax,%rdx,8), %xmm2
100007434: f3 0f 10 5c d0 14           	movss	20(%rax,%rdx,8), %xmm3
10000743a: 0f 28 e2                    	movaps	%xmm2, %xmm4
10000743d: f3 0f 58 e3                 	addss	%xmm3, %xmm4
100007441: f3 0f 10 6b 04              	movss	4(%rbx), %xmm5
100007446: f3 0f 10 73 0c              	movss	12(%rbx), %xmm6
10000744b: f3 0f 58 f5                 	addss	%xmm5, %xmm6
10000744f: 0f 2e e6                    	ucomiss	%xmm6, %xmm4
100007452: 73 0b                       	jae	11 <__ZN4Node6updateER13NodeAllocatorj+0x3bf>
100007454: f3 0f 58 64 d0 0c           	addss	12(%rax,%rdx,8), %xmm4
10000745a: 0f 2e ec                    	ucomiss	%xmm4, %xmm5
10000745d: 72 10                       	jb	16 <__ZN4Node6updateER13NodeAllocatorj+0x3cf>
10000745f: 48 8d 74 d0 14              	leaq	20(%rax,%rdx,8), %rsi
100007464: 0f 57 1d 35 43 00 00        	xorps	17205(%rip), %xmm3
10000746b: f3 0f 11 1e                 	movss	%xmm3, (%rsi)
10000746f: f3 0f 58 d3                 	addss	%xmm3, %xmm2
100007473: f3 0f 58 c1                 	addss	%xmm1, %xmm0
100007477: f3 0f 11 01                 	movss	%xmm0, (%rcx)
10000747b: f3 0f 11 54 d0 04           	movss	%xmm2, 4(%rax,%rdx,8)
100007481: 48 8b 41 10                 	movq	16(%rcx), %rax
100007485: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000748c: 48 8b 01                    	movq	(%rcx), %rax
10000748f: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007493: 48 89 8d 60 ff ff ff        	movq	%rcx, -160(%rbp)
10000749a: 48 89 85 58 ff ff ff        	movq	%rax, -168(%rbp)
1000074a1: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
1000074a8: 48 89 44 24 10              	movq	%rax, 16(%rsp)
1000074ad: 48 8b 85 58 ff ff ff        	movq	-168(%rbp), %rax
1000074b4: 48 8b 8d 60 ff ff ff        	movq	-160(%rbp), %rcx
1000074bb: 48 89 4c 24 08              	movq	%rcx, 8(%rsp)
1000074c0: 48 89 04 24                 	movq	%rax, (%rsp)
1000074c4: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
1000074c8: 44 89 ee                    	movl	%r13d, %esi
1000074cb: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
1000074cf: 31 c9                       	xorl	%ecx, %ecx
1000074d1: 45 31 c0                    	xorl	%r8d, %r8d
1000074d4: e8 67 e6 ff ff              	callq	-6553 <__ZN4Node6insertEjR13NodeAllocator3Rec15NodeOrientationj>
1000074d9: 41 ff c5                    	incl	%r13d
1000074dc: 49 8b 06                    	movq	(%r14), %rax
1000074df: 49 8b 4e 08                 	movq	8(%r14), %rcx
1000074e3: 48 29 c1                    	subq	%rax, %rcx
1000074e6: 48 c1 f9 03                 	sarq	$3, %rcx
1000074ea: 49 0f af cf                 	imulq	%r15, %rcx
1000074ee: 4c 39 e9                    	cmpq	%r13, %rcx
1000074f1: 0f 87 b9 fe ff ff           	ja	-327 <__ZN4Node6updateER13NodeAllocatorj+0x310>
1000074f7: e8 2c 3b 00 00              	callq	15148 <dyld_stub_binder+0x10000b028>
1000074fc: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
100007500: 4c 29 e0                    	subq	%r12, %rax
100007503: 48 01 05 fe f0 07 00        	addq	%rax, 520446(%rip)
10000750a: e8 19 3b 00 00              	callq	15129 <dyld_stub_binder+0x10000b028>
10000750f: 49 89 c7                    	movq	%rax, %r15
100007512: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100007516: 48 89 de                    	movq	%rbx, %rsi
100007519: e8 02 03 00 00              	callq	770 <__ZN4Node15deferredCleanupER13NodeAllocator>
10000751e: e8 05 3b 00 00              	callq	15109 <dyld_stub_binder+0x10000b028>
100007523: 4c 29 f8                    	subq	%r15, %rax
100007526: 48 01 05 e3 f0 07 00        	addq	%rax, 520419(%rip)
10000752d: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100007531: e8 9e 3a 00 00              	callq	15006 <dyld_stub_binder+0x10000afd4>
100007536: 48 8b 45 b8                 	movq	-72(%rbp), %rax
10000753a: 48 81 c4 98 00 00 00        	addq	$152, %rsp
100007541: 5b                          	popq	%rbx
100007542: 41 5c                       	popq	%r12
100007544: 41 5d                       	popq	%r13
100007546: 41 5e                       	popq	%r14
100007548: 41 5f                       	popq	%r15
10000754a: 5d                          	popq	%rbp
10000754b: c3                          	retq
10000754c: 48 8b 3d dd 4a 00 00        	movq	19165(%rip), %rdi
100007553: 48 8d 35 d5 42 00 00        	leaq	17109(%rip), %rsi
10000755a: ba 15 00 00 00              	movl	$21, %edx
10000755f: e8 4c c9 ff ff              	callq	-14004 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007564: 48 8d 35 ef 46 00 00        	leaq	18159(%rip), %rsi
10000756b: ba 1d 00 00 00              	movl	$29, %edx
100007570: 48 89 c7                    	movq	%rax, %rdi
100007573: e8 38 c9 ff ff              	callq	-14024 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007578: 48 8d 35 cb 42 00 00        	leaq	17099(%rip), %rsi
10000757f: ba 15 00 00 00              	movl	$21, %edx
100007584: 48 89 c7                    	movq	%rax, %rdi
100007587: e8 24 c9 ff ff              	callq	-14044 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000758c: 49 89 c6                    	movq	%rax, %r14
10000758f: 48 8b 00                    	movq	(%rax), %rax
100007592: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100007596: 4c 01 f6                    	addq	%r14, %rsi
100007599: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
10000759d: e8 96 39 00 00              	callq	14742 <dyld_stub_binder+0x10000af38>
1000075a2: 48 8b 35 8f 4a 00 00        	movq	19087(%rip), %rsi
1000075a9: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
1000075ad: e8 80 39 00 00              	callq	14720 <dyld_stub_binder+0x10000af32>
1000075b2: 48 8b 08                    	movq	(%rax), %rcx
1000075b5: 48 89 c7                    	movq	%rax, %rdi
1000075b8: be 0a 00 00 00              	movl	$10, %esi
1000075bd: ff 51 38                    	callq	*56(%rcx)
1000075c0: 41 89 c7                    	movl	%eax, %r15d
1000075c3: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
1000075c7: e8 d8 39 00 00              	callq	14808 <dyld_stub_binder+0x10000afa4>
1000075cc: 41 0f be f7                 	movsbl	%r15b, %esi
1000075d0: 4c 89 f7                    	movq	%r14, %rdi
1000075d3: e8 6c 39 00 00              	callq	14700 <dyld_stub_binder+0x10000af44>
1000075d8: 4c 89 f7                    	movq	%r14, %rdi
1000075db: e8 6a 39 00 00              	callq	14698 <dyld_stub_binder+0x10000af4a>
1000075e0: 48 8b 3d 49 4a 00 00        	movq	19017(%rip), %rdi
1000075e7: be a1 00 00 00              	movl	$161, %esi
1000075ec: e8 77 39 00 00              	callq	14711 <dyld_stub_binder+0x10000af68>
1000075f1: 48 8d 35 68 42 00 00        	leaq	17000(%rip), %rsi
1000075f8: ba 01 00 00 00              	movl	$1, %edx
1000075fd: 48 89 c7                    	movq	%rax, %rdi
100007600: e8 ab c8 ff ff              	callq	-14165 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007605: 48 8d 35 c6 44 00 00        	leaq	17606(%rip), %rsi
10000760c: ba 08 00 00 00              	movl	$8, %edx
100007611: 48 89 c7                    	movq	%rax, %rdi
100007614: e8 97 c8 ff ff              	callq	-14185 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007619: 49 89 c6                    	movq	%rax, %r14
10000761c: 48 8b 00                    	movq	(%rax), %rax
10000761f: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100007623: 4c 01 f6                    	addq	%r14, %rsi
100007626: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
10000762a: e8 09 39 00 00              	callq	14601 <dyld_stub_binder+0x10000af38>
10000762f: 48 8b 35 02 4a 00 00        	movq	18946(%rip), %rsi
100007636: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
10000763a: e8 f3 38 00 00              	callq	14579 <dyld_stub_binder+0x10000af32>
10000763f: 48 8b 08                    	movq	(%rax), %rcx
100007642: 48 89 c7                    	movq	%rax, %rdi
100007645: be 0a 00 00 00              	movl	$10, %esi
10000764a: ff 51 38                    	callq	*56(%rcx)
10000764d: 41 89 c7                    	movl	%eax, %r15d
100007650: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007654: e8 4b 39 00 00              	callq	14667 <dyld_stub_binder+0x10000afa4>
100007659: 41 0f be f7                 	movsbl	%r15b, %esi
10000765d: 4c 89 f7                    	movq	%r14, %rdi
100007660: e8 df 38 00 00              	callq	14559 <dyld_stub_binder+0x10000af44>
100007665: 4c 89 f7                    	movq	%r14, %rdi
100007668: e8 dd 38 00 00              	callq	14557 <dyld_stub_binder+0x10000af4a>
10000766d: bf 01 00 00 00              	movl	$1, %edi
100007672: e8 b7 39 00 00              	callq	14775 <dyld_stub_binder+0x10000b02e>
100007677: 0f 0b                       	ud2
100007679: eb 00                       	jmp	0 <__ZN4Node6updateER13NodeAllocatorj+0x5db>
10000767b: 49 89 c6                    	movq	%rax, %r14
10000767e: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007682: e8 1d 39 00 00              	callq	14621 <dyld_stub_binder+0x10000afa4>
100007687: eb 05                       	jmp	5 <__ZN4Node6updateER13NodeAllocatorj+0x5ee>
100007689: eb 00                       	jmp	0 <__ZN4Node6updateER13NodeAllocatorj+0x5eb>
10000768b: 49 89 c6                    	movq	%rax, %r14
10000768e: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
100007692: 48 85 ff                    	testq	%rdi, %rdi
100007695: 74 16                       	je	22 <__ZN4Node6updateER13NodeAllocatorj+0x60d>
100007697: 48 89 7d 98                 	movq	%rdi, -104(%rbp)
10000769b: e8 34 39 00 00              	callq	14644 <dyld_stub_binder+0x10000afd4>
1000076a0: eb 0b                       	jmp	11 <__ZN4Node6updateER13NodeAllocatorj+0x60d>
1000076a2: eb 06                       	jmp	6 <__ZN4Node6updateER13NodeAllocatorj+0x60a>
1000076a4: eb 04                       	jmp	4 <__ZN4Node6updateER13NodeAllocatorj+0x60a>
1000076a6: eb 02                       	jmp	2 <__ZN4Node6updateER13NodeAllocatorj+0x60a>
1000076a8: eb 00                       	jmp	0 <__ZN4Node6updateER13NodeAllocatorj+0x60a>
1000076aa: 49 89 c6                    	movq	%rax, %r14
1000076ad: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
1000076b1: e8 1e 39 00 00              	callq	14622 <dyld_stub_binder+0x10000afd4>
1000076b6: 4c 89 f7                    	movq	%r14, %rdi
1000076b9: e8 62 38 00 00              	callq	14434 <dyld_stub_binder+0x10000af20>
1000076be: 0f 0b                       	ud2

00000001000076c0 __ZNK13NodeAllocator7isValidEj:
1000076c0: 55                          	pushq	%rbp
1000076c1: 48 89 e5                    	movq	%rsp, %rbp
1000076c4: 53                          	pushq	%rbx
1000076c5: 50                          	pushq	%rax
1000076c6: 81 fe 10 27 00 00           	cmpl	$10000, %esi
1000076cc: 73 16                       	jae	22 <__ZNK13NodeAllocator7isValidEj+0x24>
1000076ce: 89 f1                       	movl	%esi, %ecx
1000076d0: 31 c0                       	xorl	%eax, %eax
1000076d2: 83 bc 8f 80 1a 06 00 01     	cmpl	$1, 400000(%rdi,%rcx,4)
1000076da: 0f 94 c0                    	sete	%al
1000076dd: 48 83 c4 08                 	addq	$8, %rsp
1000076e1: 5b                          	popq	%rbx
1000076e2: 5d                          	popq	%rbp
1000076e3: c3                          	retq
1000076e4: 48 8b 1d 45 49 00 00        	movq	18757(%rip), %rbx
1000076eb: 48 8d 35 3d 41 00 00        	leaq	16701(%rip), %rsi
1000076f2: 48 89 df                    	movq	%rbx, %rdi
1000076f5: e8 36 b8 ff ff              	callq	-18378 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000076fa: 48 8d 35 17 46 00 00        	leaq	17943(%rip), %rsi
100007701: 48 89 c7                    	movq	%rax, %rdi
100007704: e8 27 b8 ff ff              	callq	-18393 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100007709: 48 8d 35 3a 41 00 00        	leaq	16698(%rip), %rsi
100007710: 48 89 c7                    	movq	%rax, %rdi
100007713: e8 18 b8 ff ff              	callq	-18408 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100007718: 48 89 c7                    	movq	%rax, %rdi
10000771b: e8 40 e8 ff ff              	callq	-6080 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100007720: 48 89 df                    	movq	%rbx, %rdi
100007723: be 25 00 00 00              	movl	$37, %esi
100007728: e8 3b 38 00 00              	callq	14395 <dyld_stub_binder+0x10000af68>
10000772d: 48 8d 35 2c 41 00 00        	leaq	16684(%rip), %rsi
100007734: 48 89 c7                    	movq	%rax, %rdi
100007737: e8 f4 b7 ff ff              	callq	-18444 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000773c: 48 8d 35 f4 45 00 00        	leaq	17908(%rip), %rsi
100007743: 48 89 c7                    	movq	%rax, %rdi
100007746: e8 e5 b7 ff ff              	callq	-18459 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000774b: 48 89 c7                    	movq	%rax, %rdi
10000774e: e8 0d e8 ff ff              	callq	-6131 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100007753: bf 01 00 00 00              	movl	$1, %edi
100007758: e8 d1 38 00 00              	callq	14545 <dyld_stub_binder+0x10000b02e>
10000775d: 0f 1f 00                    	nopl	(%rax)

0000000100007760 __ZN17LeafHashAllocator13clearLeafHashEt:
100007760: 55                          	pushq	%rbp
100007761: 48 89 e5                    	movq	%rsp, %rbp
100007764: 53                          	pushq	%rbx
100007765: 50                          	pushq	%rax
100007766: 48 89 f8                    	movq	%rdi, %rax
100007769: 89 f1                       	movl	%esi, %ecx
10000776b: 48 8b 3f                    	movq	(%rdi), %rdi
10000776e: 48 8b 40 08                 	movq	8(%rax), %rax
100007772: 48 29 f8                    	subq	%rdi, %rax
100007775: 48 c1 f8 08                 	sarq	$8, %rax
100007779: 48 39 c8                    	cmpq	%rcx, %rax
10000777c: 76 1c                       	jbe	28 <__ZN17LeafHashAllocator13clearLeafHashEt+0x3a>
10000777e: 48 c1 e1 08                 	shlq	$8, %rcx
100007782: 48 01 cf                    	addq	%rcx, %rdi
100007785: ba 00 01 00 00              	movl	$256, %edx
10000778a: be ff 00 00 00              	movl	$255, %esi
10000778f: 48 83 c4 08                 	addq	$8, %rsp
100007793: 5b                          	popq	%rbx
100007794: 5d                          	popq	%rbp
100007795: e9 d0 38 00 00              	jmp	14544 <dyld_stub_binder+0x10000b06a>
10000779a: 48 8b 1d 8f 48 00 00        	movq	18575(%rip), %rbx
1000077a1: 48 8d 35 87 40 00 00        	leaq	16519(%rip), %rsi
1000077a8: 48 89 df                    	movq	%rbx, %rdi
1000077ab: e8 80 b7 ff ff              	callq	-18560 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000077b0: 48 8d 35 94 45 00 00        	leaq	17812(%rip), %rsi
1000077b7: 48 89 c7                    	movq	%rax, %rdi
1000077ba: e8 71 b7 ff ff              	callq	-18575 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000077bf: 48 8d 35 84 40 00 00        	leaq	16516(%rip), %rsi
1000077c6: 48 89 c7                    	movq	%rax, %rdi
1000077c9: e8 62 b7 ff ff              	callq	-18590 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000077ce: 48 89 c7                    	movq	%rax, %rdi
1000077d1: e8 8a e7 ff ff              	callq	-6262 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
1000077d6: 48 89 df                    	movq	%rbx, %rdi
1000077d9: be 01 01 00 00              	movl	$257, %esi
1000077de: e8 85 37 00 00              	callq	14213 <dyld_stub_binder+0x10000af68>
1000077e3: 48 8d 35 76 40 00 00        	leaq	16502(%rip), %rsi
1000077ea: 48 89 c7                    	movq	%rax, %rdi
1000077ed: e8 3e b7 ff ff              	callq	-18626 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000077f2: 48 8d 35 ca 44 00 00        	leaq	17610(%rip), %rsi
1000077f9: 48 89 c7                    	movq	%rax, %rdi
1000077fc: e8 2f b7 ff ff              	callq	-18641 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100007801: 48 89 c7                    	movq	%rax, %rdi
100007804: e8 57 e7 ff ff              	callq	-6313 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100007809: bf 01 00 00 00              	movl	$1, %edi
10000780e: e8 1b 38 00 00              	callq	14363 <dyld_stub_binder+0x10000b02e>
100007813: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000781d: 0f 1f 00                    	nopl	(%rax)

0000000100007820 __ZN4Node15deferredCleanupER13NodeAllocator:
100007820: 55                          	pushq	%rbp
100007821: 48 89 e5                    	movq	%rsp, %rbp
100007824: 41 57                       	pushq	%r15
100007826: 41 56                       	pushq	%r14
100007828: 41 55                       	pushq	%r13
10000782a: 41 54                       	pushq	%r12
10000782c: 53                          	pushq	%rbx
10000782d: 48 83 ec 38                 	subq	$56, %rsp
100007831: 49 89 f4                    	movq	%rsi, %r12
100007834: 48 89 fb                    	movq	%rdi, %rbx
100007837: 0f 57 c0                    	xorps	%xmm0, %xmm0
10000783a: 0f 29 45 c0                 	movaps	%xmm0, -64(%rbp)
10000783e: 0f 29 45 b0                 	movaps	%xmm0, -80(%rbp)
100007842: 0f 29 45 a0                 	movaps	%xmm0, -96(%rbp)
100007846: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
10000784a: e8 d1 27 00 00              	callq	10193 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv>
10000784f: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100007853: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
100007857: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
10000785b: 48 8d 34 01                 	leaq	(%rcx,%rax), %rsi
10000785f: 48 89 f7                    	movq	%rsi, %rdi
100007862: 48 c1 ef 09                 	shrq	$9, %rdi
100007866: 48 8b 14 fa                 	movq	(%rdx,%rdi,8), %rdx
10000786a: 81 e6 ff 01 00 00           	andl	$511, %esi
100007870: 48 89 1c f2                 	movq	%rbx, (%rdx,%rsi,8)
100007874: 48 89 ca                    	movq	%rcx, %rdx
100007877: 48 c1 ea 09                 	shrq	$9, %rdx
10000787b: 48 ff c0                    	incq	%rax
10000787e: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100007882: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
100007886: 48 8d 14 d3                 	leaq	(%rbx,%rdx,8), %rdx
10000788a: 0f 85 b6 00 00 00           	jne	182 <__ZN4Node15deferredCleanupER13NodeAllocator+0x126>
100007890: 4c 8b 75 b0                 	movq	-80(%rbp), %r14
100007894: 4c 89 f0                    	movq	%r14, %rax
100007897: 48 29 d8                    	subq	%rbx, %rax
10000789a: 74 46                       	je	70 <__ZN4Node15deferredCleanupER13NodeAllocator+0xc2>
10000789c: 48 8b 3a                    	movq	(%rdx), %rdi
10000789f: 48 89 ce                    	movq	%rcx, %rsi
1000078a2: 48 c1 ee 09                 	shrq	$9, %rsi
1000078a6: 48 8b 34 f3                 	movq	(%rbx,%rsi,8), %rsi
1000078aa: 48 39 fe                    	cmpq	%rdi, %rsi
1000078ad: 74 33                       	je	51 <__ZN4Node15deferredCleanupER13NodeAllocator+0xc2>
1000078af: 81 e1 ff 01 00 00           	andl	$511, %ecx
1000078b5: 48 8d 34 ce                 	leaq	(%rsi,%rcx,8), %rsi
1000078b9: 48 8d 0c cf                 	leaq	(%rdi,%rcx,8), %rcx
1000078bd: eb 06                       	jmp	6 <__ZN4Node15deferredCleanupER13NodeAllocator+0xa5>
1000078bf: 90                          	nop
1000078c0: 48 39 ce                    	cmpq	%rcx, %rsi
1000078c3: 74 1d                       	je	29 <__ZN4Node15deferredCleanupER13NodeAllocator+0xc2>
1000078c5: 48 83 c1 08                 	addq	$8, %rcx
1000078c9: 48 89 cf                    	movq	%rcx, %rdi
1000078cc: 48 2b 3a                    	subq	(%rdx), %rdi
1000078cf: 48 81 ff 00 10 00 00        	cmpq	$4096, %rdi
1000078d6: 75 e8                       	jne	-24 <__ZN4Node15deferredCleanupER13NodeAllocator+0xa0>
1000078d8: 48 8b 4a 08                 	movq	8(%rdx), %rcx
1000078dc: 48 83 c2 08                 	addq	$8, %rdx
1000078e0: eb de                       	jmp	-34 <__ZN4Node15deferredCleanupER13NodeAllocator+0xa0>
1000078e2: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
1000078ea: 48 c1 f8 03                 	sarq	$3, %rax
1000078ee: 48 83 f8 03                 	cmpq	$3, %rax
1000078f2: 72 34                       	jb	52 <__ZN4Node15deferredCleanupER13NodeAllocator+0x108>
1000078f4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000078fe: 66 90                       	nop
100007900: 48 8b 3b                    	movq	(%rbx), %rdi
100007903: e8 cc 36 00 00              	callq	14028 <dyld_stub_binder+0x10000afd4>
100007908: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
10000790c: 4c 8b 75 b0                 	movq	-80(%rbp), %r14
100007910: 48 83 c3 08                 	addq	$8, %rbx
100007914: 48 89 5d a8                 	movq	%rbx, -88(%rbp)
100007918: 4c 89 f0                    	movq	%r14, %rax
10000791b: 48 29 d8                    	subq	%rbx, %rax
10000791e: 48 c1 f8 03                 	sarq	$3, %rax
100007922: 48 83 f8 02                 	cmpq	$2, %rax
100007926: 77 d8                       	ja	-40 <__ZN4Node15deferredCleanupER13NodeAllocator+0xe0>
100007928: 48 83 f8 01                 	cmpq	$1, %rax
10000792c: 0f 84 63 02 00 00           	je	611 <__ZN4Node15deferredCleanupER13NodeAllocator+0x375>
100007932: 48 83 f8 02                 	cmpq	$2, %rax
100007936: 0f 85 62 02 00 00           	jne	610 <__ZN4Node15deferredCleanupER13NodeAllocator+0x37e>
10000793c: b8 00 02 00 00              	movl	$512, %eax
100007941: e9 54 02 00 00              	jmp	596 <__ZN4Node15deferredCleanupER13NodeAllocator+0x37a>
100007946: 4c 8d 3d 5b ec 07 00        	leaq	519259(%rip), %r15
10000794d: eb 21                       	jmp	33 <__ZN4Node15deferredCleanupER13NodeAllocator+0x150>
10000794f: 90                          	nop
100007950: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100007954: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
100007958: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
10000795c: 48 89 ca                    	movq	%rcx, %rdx
10000795f: 48 c1 ea 09                 	shrq	$9, %rdx
100007963: 48 8d 14 d3                 	leaq	(%rbx,%rdx,8), %rdx
100007967: 48 85 c0                    	testq	%rax, %rax
10000796a: 0f 84 20 ff ff ff           	je	-224 <__ZN4Node15deferredCleanupER13NodeAllocator+0x70>
100007970: 48 8b 12                    	movq	(%rdx), %rdx
100007973: 89 ce                       	movl	%ecx, %esi
100007975: 81 e6 ff 01 00 00           	andl	$511, %esi
10000797b: 4c 8b 34 f2                 	movq	(%rdx,%rsi,8), %r14
10000797f: 48 ff c8                    	decq	%rax
100007982: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100007986: 48 ff c1                    	incq	%rcx
100007989: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
10000798d: 48 81 f9 00 04 00 00        	cmpq	$1024, %rcx
100007994: 72 15                       	jb	21 <__ZN4Node15deferredCleanupER13NodeAllocator+0x18b>
100007996: 48 8b 3b                    	movq	(%rbx), %rdi
100007999: e8 36 36 00 00              	callq	13878 <dyld_stub_binder+0x10000afd4>
10000799e: 48 83 45 a8 08              	addq	$8, -88(%rbp)
1000079a3: 48 81 45 c0 00 fe ff ff     	addq	$-512, -64(%rbp)
1000079ab: 41 8b 76 04                 	movl	4(%r14), %esi
1000079af: 45 31 ed                    	xorl	%r13d, %r13d
1000079b2: 85 f6                       	testl	%esi, %esi
1000079b4: 78 1c                       	js	28 <__ZN4Node15deferredCleanupER13NodeAllocator+0x1b2>
1000079b6: 4c 89 e7                    	movq	%r12, %rdi
1000079b9: e8 02 34 00 00              	callq	13314 <__ZN13NodeAllocator7getNodeEj>
1000079be: 48 89 c3                    	movq	%rax, %rbx
1000079c1: 83 78 0c 00                 	cmpl	$0, 12(%rax)
1000079c5: 0f 88 e5 00 00 00           	js	229 <__ZN4Node15deferredCleanupER13NodeAllocator+0x290>
1000079cb: 0f 94 c0                    	sete	%al
1000079ce: 44 0f b6 e8                 	movzbl	%al, %r13d
1000079d2: 41 8b 76 08                 	movl	8(%r14), %esi
1000079d6: 85 f6                       	testl	%esi, %esi
1000079d8: 0f 88 72 ff ff ff           	js	-142 <__ZN4Node15deferredCleanupER13NodeAllocator+0x130>
1000079de: 4c 89 e7                    	movq	%r12, %rdi
1000079e1: e8 da 33 00 00              	callq	13274 <__ZN13NodeAllocator7getNodeEj>
1000079e6: 48 89 c3                    	movq	%rax, %rbx
1000079e9: 8b 40 0c                    	movl	12(%rax), %eax
1000079ec: 85 c0                       	testl	%eax, %eax
1000079ee: 0f 88 3c 01 00 00           	js	316 <__ZN4Node15deferredCleanupER13NodeAllocator+0x310>
1000079f4: 83 f8 01                    	cmpl	$1, %eax
1000079f7: 41 83 d5 00                 	adcl	$0, %r13d
1000079fb: 41 83 fd 02                 	cmpl	$2, %r13d
1000079ff: 0f 85 4b ff ff ff           	jne	-181 <__ZN4Node15deferredCleanupER13NodeAllocator+0x130>
100007a05: 45 8b 6e 04                 	movl	4(%r14), %r13d
100007a09: 45 85 ed                    	testl	%r13d, %r13d
100007a0c: 0f 88 ec 01 00 00           	js	492 <__ZN4Node15deferredCleanupER13NodeAllocator+0x3de>
100007a12: 4c 89 e7                    	movq	%r12, %rdi
100007a15: 44 89 ee                    	movl	%r13d, %esi
100007a18: e8 a3 33 00 00              	callq	13219 <__ZN13NodeAllocator7getNodeEj>
100007a1d: 48 89 c3                    	movq	%rax, %rbx
100007a20: 0f b7 30                    	movzwl	(%rax), %esi
100007a23: 4c 89 ff                    	movq	%r15, %rdi
100007a26: e8 65 05 00 00              	callq	1381 <__ZN17LeafHashAllocator13eraseLeafHashEt>
100007a2b: 4c 89 e7                    	movq	%r12, %rdi
100007a2e: 48 89 de                    	movq	%rbx, %rsi
100007a31: 44 89 ea                    	movl	%r13d, %edx
100007a34: e8 b7 32 00 00              	callq	12983 <__ZN13NodeAllocator10deleteNodeE8NodeInfo>
100007a39: 41 c7 46 04 ff ff ff ff     	movl	$4294967295, 4(%r14)
100007a41: 45 8b 6e 08                 	movl	8(%r14), %r13d
100007a45: 45 85 ed                    	testl	%r13d, %r13d
100007a48: 0f 88 b0 01 00 00           	js	432 <__ZN4Node15deferredCleanupER13NodeAllocator+0x3de>
100007a4e: 4c 89 e7                    	movq	%r12, %rdi
100007a51: 44 89 ee                    	movl	%r13d, %esi
100007a54: e8 67 33 00 00              	callq	13159 <__ZN13NodeAllocator7getNodeEj>
100007a59: 48 89 c3                    	movq	%rax, %rbx
100007a5c: 0f b7 30                    	movzwl	(%rax), %esi
100007a5f: 4c 89 ff                    	movq	%r15, %rdi
100007a62: e8 29 05 00 00              	callq	1321 <__ZN17LeafHashAllocator13eraseLeafHashEt>
100007a67: 4c 89 e7                    	movq	%r12, %rdi
100007a6a: 48 89 de                    	movq	%rbx, %rsi
100007a6d: 44 89 ea                    	movl	%r13d, %edx
100007a70: e8 7b 32 00 00              	callq	12923 <__ZN13NodeAllocator10deleteNodeE8NodeInfo>
100007a75: 41 c7 46 08 ff ff ff ff     	movl	$4294967295, 8(%r14)
100007a7d: 66 41 83 3e 00              	cmpw	$0, (%r14)
100007a82: 0f 89 a6 02 00 00           	jns	678 <__ZN4Node15deferredCleanupER13NodeAllocator+0x50e>
100007a88: 41 c7 46 0c 00 00 00 00     	movl	$0, 12(%r14)
100007a90: 4c 89 ff                    	movq	%r15, %rdi
100007a93: e8 48 e5 ff ff              	callq	-6840 <__ZN17LeafHashAllocator16allocateLeafHashEv>
100007a98: 66 41 89 06                 	movw	%ax, (%r14)
100007a9c: e9 af fe ff ff              	jmp	-337 <__ZN4Node15deferredCleanupER13NodeAllocator+0x130>
100007aa1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007aab: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100007ab0: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100007ab4: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100007ab8: 48 29 c1                    	subq	%rax, %rcx
100007abb: 48 89 ce                    	movq	%rcx, %rsi
100007abe: 48 c1 e6 06                 	shlq	$6, %rsi
100007ac2: 48 ff ce                    	decq	%rsi
100007ac5: 48 85 c9                    	testq	%rcx, %rcx
100007ac8: 48 0f 44 f1                 	cmoveq	%rcx, %rsi
100007acc: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100007ad0: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100007ad4: 48 01 ca                    	addq	%rcx, %rdx
100007ad7: 48 39 d6                    	cmpq	%rdx, %rsi
100007ada: 75 18                       	jne	24 <__ZN4Node15deferredCleanupER13NodeAllocator+0x2d4>
100007adc: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
100007ae0: e8 3b 25 00 00              	callq	9531 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv>
100007ae5: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100007ae9: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100007aed: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100007af1: 48 01 ca                    	addq	%rcx, %rdx
100007af4: 48 89 d6                    	movq	%rdx, %rsi
100007af7: 48 c1 ee 09                 	shrq	$9, %rsi
100007afb: 48 8b 04 f0                 	movq	(%rax,%rsi,8), %rax
100007aff: 81 e2 ff 01 00 00           	andl	$511, %edx
100007b05: 48 89 1c d0                 	movq	%rbx, (%rax,%rdx,8)
100007b09: 48 ff c1                    	incq	%rcx
100007b0c: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100007b10: 41 8b 76 08                 	movl	8(%r14), %esi
100007b14: 85 f6                       	testl	%esi, %esi
100007b16: 0f 89 c2 fe ff ff           	jns	-318 <__ZN4Node15deferredCleanupER13NodeAllocator+0x1be>
100007b1c: e9 2f fe ff ff              	jmp	-465 <__ZN4Node15deferredCleanupER13NodeAllocator+0x130>
100007b21: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007b2b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100007b30: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100007b34: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100007b38: 48 29 c8                    	subq	%rcx, %rax
100007b3b: 48 89 c6                    	movq	%rax, %rsi
100007b3e: 48 c1 e6 06                 	shlq	$6, %rsi
100007b42: 48 ff ce                    	decq	%rsi
100007b45: 48 85 c0                    	testq	%rax, %rax
100007b48: 48 0f 44 f0                 	cmoveq	%rax, %rsi
100007b4c: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100007b50: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100007b54: 48 01 c2                    	addq	%rax, %rdx
100007b57: 48 39 d6                    	cmpq	%rdx, %rsi
100007b5a: 75 18                       	jne	24 <__ZN4Node15deferredCleanupER13NodeAllocator+0x354>
100007b5c: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
100007b60: e8 bb 24 00 00              	callq	9403 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv>
100007b65: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100007b69: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100007b6d: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100007b71: 48 01 c2                    	addq	%rax, %rdx
100007b74: 48 89 d6                    	movq	%rdx, %rsi
100007b77: 48 c1 ee 09                 	shrq	$9, %rsi
100007b7b: 48 8b 0c f1                 	movq	(%rcx,%rsi,8), %rcx
100007b7f: 81 e2 ff 01 00 00           	andl	$511, %edx
100007b85: 48 89 1c d1                 	movq	%rbx, (%rcx,%rdx,8)
100007b89: 48 ff c0                    	incq	%rax
100007b8c: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100007b90: e9 bf fd ff ff              	jmp	-577 <__ZN4Node15deferredCleanupER13NodeAllocator+0x134>
100007b95: b8 00 01 00 00              	movl	$256, %eax
100007b9a: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100007b9e: 4c 39 f3                    	cmpq	%r14, %rbx
100007ba1: 74 3e                       	je	62 <__ZN4Node15deferredCleanupER13NodeAllocator+0x3c1>
100007ba3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007bad: 0f 1f 00                    	nopl	(%rax)
100007bb0: 48 8b 3b                    	movq	(%rbx), %rdi
100007bb3: e8 1c 34 00 00              	callq	13340 <dyld_stub_binder+0x10000afd4>
100007bb8: 48 83 c3 08                 	addq	$8, %rbx
100007bbc: 49 39 de                    	cmpq	%rbx, %r14
100007bbf: 75 ef                       	jne	-17 <__ZN4Node15deferredCleanupER13NodeAllocator+0x390>
100007bc1: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100007bc5: 48 89 c1                    	movq	%rax, %rcx
100007bc8: 48 2b 4d a8                 	subq	-88(%rbp), %rcx
100007bcc: 74 13                       	je	19 <__ZN4Node15deferredCleanupER13NodeAllocator+0x3c1>
100007bce: 48 83 c1 f8                 	addq	$-8, %rcx
100007bd2: 48 c1 e9 03                 	shrq	$3, %rcx
100007bd6: 48 f7 d1                    	notq	%rcx
100007bd9: 48 8d 04 c8                 	leaq	(%rax,%rcx,8), %rax
100007bdd: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100007be1: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100007be5: 48 85 ff                    	testq	%rdi, %rdi
100007be8: 74 05                       	je	5 <__ZN4Node15deferredCleanupER13NodeAllocator+0x3cf>
100007bea: e8 e5 33 00 00              	callq	13285 <dyld_stub_binder+0x10000afd4>
100007bef: 48 83 c4 38                 	addq	$56, %rsp
100007bf3: 5b                          	popq	%rbx
100007bf4: 41 5c                       	popq	%r12
100007bf6: 41 5d                       	popq	%r13
100007bf8: 41 5e                       	popq	%r14
100007bfa: 41 5f                       	popq	%r15
100007bfc: 5d                          	popq	%rbp
100007bfd: c3                          	retq
100007bfe: 48 8b 3d 2b 44 00 00        	movq	17451(%rip), %rdi
100007c05: 48 8d 35 23 3c 00 00        	leaq	15395(%rip), %rsi
100007c0c: ba 15 00 00 00              	movl	$21, %edx
100007c11: e8 9a c2 ff ff              	callq	-15718 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007c16: 48 8d 35 5b 40 00 00        	leaq	16475(%rip), %rsi
100007c1d: ba 1e 00 00 00              	movl	$30, %edx
100007c22: 48 89 c7                    	movq	%rax, %rdi
100007c25: e8 86 c2 ff ff              	callq	-15738 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007c2a: 48 8d 35 19 3c 00 00        	leaq	15385(%rip), %rsi
100007c31: ba 15 00 00 00              	movl	$21, %edx
100007c36: 48 89 c7                    	movq	%rax, %rdi
100007c39: e8 72 c2 ff ff              	callq	-15758 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007c3e: 48 89 c3                    	movq	%rax, %rbx
100007c41: 48 8b 00                    	movq	(%rax), %rax
100007c44: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100007c48: 48 01 de                    	addq	%rbx, %rsi
100007c4b: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007c4f: e8 e4 32 00 00              	callq	13028 <dyld_stub_binder+0x10000af38>
100007c54: 48 8b 35 dd 43 00 00        	movq	17373(%rip), %rsi
100007c5b: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007c5f: e8 ce 32 00 00              	callq	13006 <dyld_stub_binder+0x10000af32>
100007c64: 48 8b 08                    	movq	(%rax), %rcx
100007c67: 48 89 c7                    	movq	%rax, %rdi
100007c6a: be 0a 00 00 00              	movl	$10, %esi
100007c6f: ff 51 38                    	callq	*56(%rcx)
100007c72: 41 89 c6                    	movl	%eax, %r14d
100007c75: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007c79: e8 26 33 00 00              	callq	13094 <dyld_stub_binder+0x10000afa4>
100007c7e: 41 0f be f6                 	movsbl	%r14b, %esi
100007c82: 48 89 df                    	movq	%rbx, %rdi
100007c85: e8 ba 32 00 00              	callq	12986 <dyld_stub_binder+0x10000af44>
100007c8a: 48 89 df                    	movq	%rbx, %rdi
100007c8d: e8 b8 32 00 00              	callq	12984 <dyld_stub_binder+0x10000af4a>
100007c92: 48 8b 3d 97 43 00 00        	movq	17303(%rip), %rdi
100007c99: be 1e 01 00 00              	movl	$286, %esi
100007c9e: e8 c5 32 00 00              	callq	12997 <dyld_stub_binder+0x10000af68>
100007ca3: 48 8d 35 b6 3b 00 00        	leaq	15286(%rip), %rsi
100007caa: ba 01 00 00 00              	movl	$1, %edx
100007caf: 48 89 c7                    	movq	%rax, %rdi
100007cb2: e8 f9 c1 ff ff              	callq	-15879 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007cb7: 48 8d 35 14 3e 00 00        	leaq	15892(%rip), %rsi
100007cbe: ba 08 00 00 00              	movl	$8, %edx
100007cc3: 48 89 c7                    	movq	%rax, %rdi
100007cc6: e8 e5 c1 ff ff              	callq	-15899 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007ccb: 48 89 c3                    	movq	%rax, %rbx
100007cce: 48 8b 00                    	movq	(%rax), %rax
100007cd1: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100007cd5: 48 01 de                    	addq	%rbx, %rsi
100007cd8: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007cdc: e8 57 32 00 00              	callq	12887 <dyld_stub_binder+0x10000af38>
100007ce1: 48 8b 35 50 43 00 00        	movq	17232(%rip), %rsi
100007ce8: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007cec: e8 41 32 00 00              	callq	12865 <dyld_stub_binder+0x10000af32>
100007cf1: 48 8b 08                    	movq	(%rax), %rcx
100007cf4: 48 89 c7                    	movq	%rax, %rdi
100007cf7: be 0a 00 00 00              	movl	$10, %esi
100007cfc: ff 51 38                    	callq	*56(%rcx)
100007cff: 41 89 c6                    	movl	%eax, %r14d
100007d02: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007d06: e8 99 32 00 00              	callq	12953 <dyld_stub_binder+0x10000afa4>
100007d0b: 41 0f be f6                 	movsbl	%r14b, %esi
100007d0f: 48 89 df                    	movq	%rbx, %rdi
100007d12: e8 2d 32 00 00              	callq	12845 <dyld_stub_binder+0x10000af44>
100007d17: 48 89 df                    	movq	%rbx, %rdi
100007d1a: e8 2b 32 00 00              	callq	12843 <dyld_stub_binder+0x10000af4a>
100007d1f: bf 01 00 00 00              	movl	$1, %edi
100007d24: e8 05 33 00 00              	callq	13061 <dyld_stub_binder+0x10000b02e>
100007d29: e9 2b 01 00 00              	jmp	299 <__ZN4Node15deferredCleanupER13NodeAllocator+0x639>
100007d2e: 48 8b 3d fb 42 00 00        	movq	17147(%rip), %rdi
100007d35: 48 8d 35 f3 3a 00 00        	leaq	15091(%rip), %rsi
100007d3c: ba 15 00 00 00              	movl	$21, %edx
100007d41: e8 6a c1 ff ff              	callq	-16022 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007d46: 48 8d 35 4a 3f 00 00        	leaq	16202(%rip), %rsi
100007d4d: ba 1c 00 00 00              	movl	$28, %edx
100007d52: 48 89 c7                    	movq	%rax, %rdi
100007d55: e8 56 c1 ff ff              	callq	-16042 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007d5a: 48 8d 35 e9 3a 00 00        	leaq	15081(%rip), %rsi
100007d61: ba 15 00 00 00              	movl	$21, %edx
100007d66: 48 89 c7                    	movq	%rax, %rdi
100007d69: e8 42 c1 ff ff              	callq	-16062 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007d6e: 48 89 c3                    	movq	%rax, %rbx
100007d71: 48 8b 00                    	movq	(%rax), %rax
100007d74: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100007d78: 48 01 de                    	addq	%rbx, %rsi
100007d7b: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007d7f: e8 b4 31 00 00              	callq	12724 <dyld_stub_binder+0x10000af38>
100007d84: 48 8b 35 ad 42 00 00        	movq	17069(%rip), %rsi
100007d8b: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007d8f: e8 9e 31 00 00              	callq	12702 <dyld_stub_binder+0x10000af32>
100007d94: 48 8b 08                    	movq	(%rax), %rcx
100007d97: 48 89 c7                    	movq	%rax, %rdi
100007d9a: be 0a 00 00 00              	movl	$10, %esi
100007d9f: ff 51 38                    	callq	*56(%rcx)
100007da2: 41 89 c6                    	movl	%eax, %r14d
100007da5: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007da9: e8 f6 31 00 00              	callq	12790 <dyld_stub_binder+0x10000afa4>
100007dae: 41 0f be f6                 	movsbl	%r14b, %esi
100007db2: 48 89 df                    	movq	%rbx, %rdi
100007db5: e8 8a 31 00 00              	callq	12682 <dyld_stub_binder+0x10000af44>
100007dba: 48 89 df                    	movq	%rbx, %rdi
100007dbd: e8 88 31 00 00              	callq	12680 <dyld_stub_binder+0x10000af4a>
100007dc2: 48 8b 3d 67 42 00 00        	movq	16999(%rip), %rdi
100007dc9: be 27 01 00 00              	movl	$295, %esi
100007dce: e8 95 31 00 00              	callq	12693 <dyld_stub_binder+0x10000af68>
100007dd3: 48 8d 35 86 3a 00 00        	leaq	14982(%rip), %rsi
100007dda: ba 01 00 00 00              	movl	$1, %edx
100007ddf: 48 89 c7                    	movq	%rax, %rdi
100007de2: e8 c9 c0 ff ff              	callq	-16183 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007de7: 48 8d 35 e4 3c 00 00        	leaq	15588(%rip), %rsi
100007dee: ba 08 00 00 00              	movl	$8, %edx
100007df3: 48 89 c7                    	movq	%rax, %rdi
100007df6: e8 b5 c0 ff ff              	callq	-16203 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100007dfb: 48 89 c3                    	movq	%rax, %rbx
100007dfe: 48 8b 00                    	movq	(%rax), %rax
100007e01: 48 8b 70 e8                 	movq	-24(%rax), %rsi
100007e05: 48 01 de                    	addq	%rbx, %rsi
100007e08: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007e0c: e8 27 31 00 00              	callq	12583 <dyld_stub_binder+0x10000af38>
100007e11: 48 8b 35 20 42 00 00        	movq	16928(%rip), %rsi
100007e18: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007e1c: e8 11 31 00 00              	callq	12561 <dyld_stub_binder+0x10000af32>
100007e21: 48 8b 08                    	movq	(%rax), %rcx
100007e24: 48 89 c7                    	movq	%rax, %rdi
100007e27: be 0a 00 00 00              	movl	$10, %esi
100007e2c: ff 51 38                    	callq	*56(%rcx)
100007e2f: 41 89 c6                    	movl	%eax, %r14d
100007e32: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007e36: e8 69 31 00 00              	callq	12649 <dyld_stub_binder+0x10000afa4>
100007e3b: 41 0f be f6                 	movsbl	%r14b, %esi
100007e3f: 48 89 df                    	movq	%rbx, %rdi
100007e42: e8 fd 30 00 00              	callq	12541 <dyld_stub_binder+0x10000af44>
100007e47: 48 89 df                    	movq	%rbx, %rdi
100007e4a: e8 fb 30 00 00              	callq	12539 <dyld_stub_binder+0x10000af4a>
100007e4f: bf 01 00 00 00              	movl	$1, %edi
100007e54: e8 d5 31 00 00              	callq	12757 <dyld_stub_binder+0x10000b02e>
100007e59: 0f 0b                       	ud2
100007e5b: eb 04                       	jmp	4 <__ZN4Node15deferredCleanupER13NodeAllocator+0x641>
100007e5d: eb 02                       	jmp	2 <__ZN4Node15deferredCleanupER13NodeAllocator+0x641>
100007e5f: eb 00                       	jmp	0 <__ZN4Node15deferredCleanupER13NodeAllocator+0x641>
100007e61: 49 89 c6                    	movq	%rax, %r14
100007e64: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007e68: e8 37 31 00 00              	callq	12599 <dyld_stub_binder+0x10000afa4>
100007e6d: eb 0f                       	jmp	15 <__ZN4Node15deferredCleanupER13NodeAllocator+0x65e>
100007e6f: eb 0a                       	jmp	10 <__ZN4Node15deferredCleanupER13NodeAllocator+0x65b>
100007e71: eb 08                       	jmp	8 <__ZN4Node15deferredCleanupER13NodeAllocator+0x65b>
100007e73: eb 06                       	jmp	6 <__ZN4Node15deferredCleanupER13NodeAllocator+0x65b>
100007e75: eb 04                       	jmp	4 <__ZN4Node15deferredCleanupER13NodeAllocator+0x65b>
100007e77: eb 02                       	jmp	2 <__ZN4Node15deferredCleanupER13NodeAllocator+0x65b>
100007e79: eb 00                       	jmp	0 <__ZN4Node15deferredCleanupER13NodeAllocator+0x65b>
100007e7b: 49 89 c6                    	movq	%rax, %r14
100007e7e: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
100007e82: 4c 8b 7d b0                 	movq	-80(%rbp), %r15
100007e86: 4c 89 f8                    	movq	%r15, %rax
100007e89: 48 29 d8                    	subq	%rbx, %rax
100007e8c: 75 4d                       	jne	77 <__ZN4Node15deferredCleanupER13NodeAllocator+0x6bb>
100007e8e: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
100007e96: 48 c1 f8 03                 	sarq	$3, %rax
100007e9a: 48 83 f8 03                 	cmpq	$3, %rax
100007e9e: 72 28                       	jb	40 <__ZN4Node15deferredCleanupER13NodeAllocator+0x6a8>
100007ea0: 48 8b 3b                    	movq	(%rbx), %rdi
100007ea3: e8 2c 31 00 00              	callq	12588 <dyld_stub_binder+0x10000afd4>
100007ea8: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
100007eac: 4c 8b 7d b0                 	movq	-80(%rbp), %r15
100007eb0: 48 83 c3 08                 	addq	$8, %rbx
100007eb4: 48 89 5d a8                 	movq	%rbx, -88(%rbp)
100007eb8: 4c 89 f8                    	movq	%r15, %rax
100007ebb: 48 29 d8                    	subq	%rbx, %rax
100007ebe: 48 c1 f8 03                 	sarq	$3, %rax
100007ec2: 48 83 f8 02                 	cmpq	$2, %rax
100007ec6: 77 d8                       	ja	-40 <__ZN4Node15deferredCleanupER13NodeAllocator+0x680>
100007ec8: 48 83 f8 01                 	cmpq	$1, %rax
100007ecc: 74 6a                       	je	106 <__ZN4Node15deferredCleanupER13NodeAllocator+0x718>
100007ece: 48 83 f8 02                 	cmpq	$2, %rax
100007ed2: 75 6d                       	jne	109 <__ZN4Node15deferredCleanupER13NodeAllocator+0x721>
100007ed4: b8 00 02 00 00              	movl	$512, %eax
100007ed9: eb 62                       	jmp	98 <__ZN4Node15deferredCleanupER13NodeAllocator+0x71d>
100007edb: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100007edf: 48 89 ca                    	movq	%rcx, %rdx
100007ee2: 48 c1 ea 09                 	shrq	$9, %rdx
100007ee6: 48 8d 14 d3                 	leaq	(%rbx,%rdx,8), %rdx
100007eea: 89 ce                       	movl	%ecx, %esi
100007eec: 81 e6 ff 01 00 00           	andl	$511, %esi
100007ef2: 48 c1 e6 03                 	shlq	$3, %rsi
100007ef6: 48 03 32                    	addq	(%rdx), %rsi
100007ef9: 48 03 4d c8                 	addq	-56(%rbp), %rcx
100007efd: 48 89 cf                    	movq	%rcx, %rdi
100007f00: 48 c1 ef 09                 	shrq	$9, %rdi
100007f04: 81 e1 ff 01 00 00           	andl	$511, %ecx
100007f0a: 48 c1 e1 03                 	shlq	$3, %rcx
100007f0e: 48 03 0c fb                 	addq	(%rbx,%rdi,8), %rcx
100007f12: 48 39 f1                    	cmpq	%rsi, %rcx
100007f15: 0f 84 73 ff ff ff           	je	-141 <__ZN4Node15deferredCleanupER13NodeAllocator+0x66e>
100007f1b: 48 83 c6 08                 	addq	$8, %rsi
100007f1f: 48 89 f7                    	movq	%rsi, %rdi
100007f22: 48 2b 3a                    	subq	(%rdx), %rdi
100007f25: 48 81 ff 00 10 00 00        	cmpq	$4096, %rdi
100007f2c: 75 e4                       	jne	-28 <__ZN4Node15deferredCleanupER13NodeAllocator+0x6f2>
100007f2e: 48 8b 72 08                 	movq	8(%rdx), %rsi
100007f32: 48 83 c2 08                 	addq	$8, %rdx
100007f36: eb da                       	jmp	-38 <__ZN4Node15deferredCleanupER13NodeAllocator+0x6f2>
100007f38: b8 00 01 00 00              	movl	$256, %eax
100007f3d: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100007f41: 4c 39 fb                    	cmpq	%r15, %rbx
100007f44: 74 31                       	je	49 <__ZN4Node15deferredCleanupER13NodeAllocator+0x757>
100007f46: 48 8b 3b                    	movq	(%rbx), %rdi
100007f49: e8 86 30 00 00              	callq	12422 <dyld_stub_binder+0x10000afd4>
100007f4e: 48 83 c3 08                 	addq	$8, %rbx
100007f52: 49 39 df                    	cmpq	%rbx, %r15
100007f55: 75 ef                       	jne	-17 <__ZN4Node15deferredCleanupER13NodeAllocator+0x726>
100007f57: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100007f5b: 48 89 c1                    	movq	%rax, %rcx
100007f5e: 48 2b 4d a8                 	subq	-88(%rbp), %rcx
100007f62: 74 13                       	je	19 <__ZN4Node15deferredCleanupER13NodeAllocator+0x757>
100007f64: 48 83 c1 f8                 	addq	$-8, %rcx
100007f68: 48 c1 e9 03                 	shrq	$3, %rcx
100007f6c: 48 f7 d1                    	notq	%rcx
100007f6f: 48 8d 04 c8                 	leaq	(%rax,%rcx,8), %rax
100007f73: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100007f77: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100007f7b: 48 85 ff                    	testq	%rdi, %rdi
100007f7e: 74 05                       	je	5 <__ZN4Node15deferredCleanupER13NodeAllocator+0x765>
100007f80: e8 4f 30 00 00              	callq	12367 <dyld_stub_binder+0x10000afd4>
100007f85: 4c 89 f7                    	movq	%r14, %rdi
100007f88: e8 93 2f 00 00              	callq	12179 <dyld_stub_binder+0x10000af20>
100007f8d: 0f 0b                       	ud2
100007f8f: 90                          	nop

0000000100007f90 __ZN17LeafHashAllocator13eraseLeafHashEt:
100007f90: 55                          	pushq	%rbp
100007f91: 48 89 e5                    	movq	%rsp, %rbp
100007f94: 41 57                       	pushq	%r15
100007f96: 41 56                       	pushq	%r14
100007f98: 41 55                       	pushq	%r13
100007f9a: 41 54                       	pushq	%r12
100007f9c: 53                          	pushq	%rbx
100007f9d: 48 83 ec 18                 	subq	$24, %rsp
100007fa1: 49 89 fc                    	movq	%rdi, %r12
100007fa4: 89 f0                       	movl	%esi, %eax
100007fa6: 48 8b 3f                    	movq	(%rdi), %rdi
100007fa9: 49 8b 4c 24 08              	movq	8(%r12), %rcx
100007fae: 48 29 f9                    	subq	%rdi, %rcx
100007fb1: 48 c1 f9 08                 	sarq	$8, %rcx
100007fb5: 48 39 c1                    	cmpq	%rax, %rcx
100007fb8: 0f 86 0b 01 00 00           	jbe	267 <__ZN17LeafHashAllocator13eraseLeafHashEt+0x139>
100007fbe: 41 89 f5                    	movl	%esi, %r13d
100007fc1: 48 c1 e0 08                 	shlq	$8, %rax
100007fc5: 48 01 c7                    	addq	%rax, %rdi
100007fc8: ba 00 01 00 00              	movl	$256, %edx
100007fcd: be ff 00 00 00              	movl	$255, %esi
100007fd2: e8 93 30 00 00              	callq	12435 <dyld_stub_binder+0x10000b06a>
100007fd7: 49 8b 5c 24 20              	movq	32(%r12), %rbx
100007fdc: 49 8b 44 24 28              	movq	40(%r12), %rax
100007fe1: 48 39 c3                    	cmpq	%rax, %rbx
100007fe4: 74 12                       	je	18 <__ZN17LeafHashAllocator13eraseLeafHashEt+0x68>
100007fe6: 66 44 89 2b                 	movw	%r13w, (%rbx)
100007fea: 48 83 c3 02                 	addq	$2, %rbx
100007fee: 49 89 5c 24 20              	movq	%rbx, 32(%r12)
100007ff3: e9 bd 00 00 00              	jmp	189 <__ZN17LeafHashAllocator13eraseLeafHashEt+0x125>
100007ff8: 49 8d 7c 24 18              	leaq	24(%r12), %rdi
100007ffd: 48 8b 37                    	movq	(%rdi), %rsi
100008000: 48 29 f3                    	subq	%rsi, %rbx
100008003: 48 83 fb fd                 	cmpq	$-3, %rbx
100008007: 0f 8e 35 01 00 00           	jle	309 <__ZN17LeafHashAllocator13eraseLeafHashEt+0x1b2>
10000800d: 49 89 df                    	movq	%rbx, %r15
100008010: 49 d1 ff                    	sarq	%r15
100008013: 49 8d 4f 01                 	leaq	1(%r15), %rcx
100008017: 48 29 f0                    	subq	%rsi, %rax
10000801a: 48 89 c2                    	movq	%rax, %rdx
10000801d: 48 d1 fa                    	sarq	%rdx
100008020: 48 39 c8                    	cmpq	%rcx, %rax
100008023: 48 0f 42 c1                 	cmovbq	%rcx, %rax
100008027: 48 b9 ff ff ff ff ff ff ff 3f       	movabsq	$4611686018427387903, %rcx
100008031: 48 39 ca                    	cmpq	%rcx, %rdx
100008034: 49 be ff ff ff ff ff ff ff 7f       	movabsq	$9223372036854775807, %r14
10000803e: 4c 0f 42 f0                 	cmovbq	%rax, %r14
100008042: 4d 85 f6                    	testq	%r14, %r14
100008045: 44 89 6d d4                 	movl	%r13d, -44(%rbp)
100008049: 74 1c                       	je	28 <__ZN17LeafHashAllocator13eraseLeafHashEt+0xd7>
10000804b: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
10000804f: 0f 88 f2 00 00 00           	js	242 <__ZN17LeafHashAllocator13eraseLeafHashEt+0x1b7>
100008055: 4b 8d 3c 36                 	leaq	(%r14,%r14), %rdi
100008059: e8 82 2f 00 00              	callq	12162 <dyld_stub_binder+0x10000afe0>
10000805e: 49 89 c5                    	movq	%rax, %r13
100008061: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100008065: eb 03                       	jmp	3 <__ZN17LeafHashAllocator13eraseLeafHashEt+0xda>
100008067: 45 31 ed                    	xorl	%r13d, %r13d
10000806a: 4b 8d 4c 75 00              	leaq	(%r13,%r14,2), %rcx
10000806f: 8b 45 d4                    	movl	-44(%rbp), %eax
100008072: 66 43 89 44 7d 00           	movw	%ax, (%r13,%r15,2)
100008078: 4f 8d 7c 7d 02              	leaq	2(%r13,%r15,2), %r15
10000807d: 48 85 db                    	testq	%rbx, %rbx
100008080: 7e 17                       	jle	23 <__ZN17LeafHashAllocator13eraseLeafHashEt+0x109>
100008082: 4c 89 ef                    	movq	%r13, %rdi
100008085: 49 89 f6                    	movq	%rsi, %r14
100008088: 48 89 da                    	movq	%rbx, %rdx
10000808b: 48 89 cb                    	movq	%rcx, %rbx
10000808e: e8 cb 2f 00 00              	callq	12235 <dyld_stub_binder+0x10000b05e>
100008093: 48 89 d9                    	movq	%rbx, %rcx
100008096: 4c 89 f6                    	movq	%r14, %rsi
100008099: 4d 89 6c 24 18              	movq	%r13, 24(%r12)
10000809e: 4d 89 7c 24 20              	movq	%r15, 32(%r12)
1000080a3: 49 89 4c 24 28              	movq	%rcx, 40(%r12)
1000080a8: 48 85 f6                    	testq	%rsi, %rsi
1000080ab: 74 08                       	je	8 <__ZN17LeafHashAllocator13eraseLeafHashEt+0x125>
1000080ad: 48 89 f7                    	movq	%rsi, %rdi
1000080b0: e8 1f 2f 00 00              	callq	12063 <dyld_stub_binder+0x10000afd4>
1000080b5: 41 ff 44 24 30              	incl	48(%r12)
1000080ba: 48 83 c4 18                 	addq	$24, %rsp
1000080be: 5b                          	popq	%rbx
1000080bf: 41 5c                       	popq	%r12
1000080c1: 41 5d                       	popq	%r13
1000080c3: 41 5e                       	popq	%r14
1000080c5: 41 5f                       	popq	%r15
1000080c7: 5d                          	popq	%rbp
1000080c8: c3                          	retq
1000080c9: 48 8b 1d 60 3f 00 00        	movq	16224(%rip), %rbx
1000080d0: 48 8d 35 58 37 00 00        	leaq	14168(%rip), %rsi
1000080d7: 48 89 df                    	movq	%rbx, %rdi
1000080da: e8 51 ae ff ff              	callq	-20911 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000080df: 48 8d 35 65 3c 00 00        	leaq	15461(%rip), %rsi
1000080e6: 48 89 c7                    	movq	%rax, %rdi
1000080e9: e8 42 ae ff ff              	callq	-20926 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000080ee: 48 8d 35 55 37 00 00        	leaq	14165(%rip), %rsi
1000080f5: 48 89 c7                    	movq	%rax, %rdi
1000080f8: e8 33 ae ff ff              	callq	-20941 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000080fd: 48 89 c7                    	movq	%rax, %rdi
100008100: e8 5b de ff ff              	callq	-8613 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100008105: 48 89 df                    	movq	%rbx, %rdi
100008108: be f5 00 00 00              	movl	$245, %esi
10000810d: e8 56 2e 00 00              	callq	11862 <dyld_stub_binder+0x10000af68>
100008112: 48 8d 35 47 37 00 00        	leaq	14151(%rip), %rsi
100008119: 48 89 c7                    	movq	%rax, %rdi
10000811c: e8 0f ae ff ff              	callq	-20977 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100008121: 48 8d 35 9b 3b 00 00        	leaq	15259(%rip), %rsi
100008128: 48 89 c7                    	movq	%rax, %rdi
10000812b: e8 00 ae ff ff              	callq	-20992 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100008130: 48 89 c7                    	movq	%rax, %rdi
100008133: e8 28 de ff ff              	callq	-8664 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100008138: bf 01 00 00 00              	movl	$1, %edi
10000813d: e8 ec 2e 00 00              	callq	12012 <dyld_stub_binder+0x10000b02e>
100008142: e8 df 2d 00 00              	callq	11743 <dyld_stub_binder+0x10000af26>
100008147: e8 44 03 00 00              	callq	836 <__ZNSt3__1L20__throw_length_errorEPKc>
10000814c: 0f 1f 40 00                 	nopl	(%rax)

0000000100008150 __ZNK4Node11printBoundsEiR13NodeAllocator:
100008150: 55                          	pushq	%rbp
100008151: 48 89 e5                    	movq	%rsp, %rbp
100008154: 41 57                       	pushq	%r15
100008156: 41 56                       	pushq	%r14
100008158: 41 55                       	pushq	%r13
10000815a: 41 54                       	pushq	%r12
10000815c: 53                          	pushq	%rbx
10000815d: 50                          	pushq	%rax
10000815e: 85 f6                       	testl	%esi, %esi
100008160: 0f 88 af 00 00 00           	js	175 <__ZNK4Node11printBoundsEiR13NodeAllocator+0xc5>
100008166: 49 89 d7                    	movq	%rdx, %r15
100008169: 83 ba c0 b6 06 00 00        	cmpl	$0, 440000(%rdx)
100008170: 0f 84 9f 00 00 00           	je	159 <__ZNK4Node11printBoundsEiR13NodeAllocator+0xc5>
100008176: 41 89 f6                    	movl	%esi, %r14d
100008179: 31 db                       	xorl	%ebx, %ebx
10000817b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100008180: 4c 89 ff                    	movq	%r15, %rdi
100008183: 89 de                       	movl	%ebx, %esi
100008185: e8 36 f5 ff ff              	callq	-2762 <__ZNK13NodeAllocator7isValidEj>
10000818a: 85 c0                       	testl	%eax, %eax
10000818c: 74 73                       	je	115 <__ZNK4Node11printBoundsEiR13NodeAllocator+0xb1>
10000818e: 4c 89 ff                    	movq	%r15, %rdi
100008191: 89 de                       	movl	%ebx, %esi
100008193: e8 28 2c 00 00              	callq	11304 <__ZN13NodeAllocator7getNodeEj>
100008198: 48 8d 70 10                 	leaq	16(%rax), %rsi
10000819c: 48 8b 3d 8d 3e 00 00        	movq	16013(%rip), %rdi
1000081a3: e8 b8 d8 ff ff              	callq	-10056 <__ZlsRNSt3__113basic_ostreamIcNS_11char_traitsIcEEEERK3Rec>
1000081a8: 49 89 c4                    	movq	%rax, %r12
1000081ab: 48 8b 00                    	movq	(%rax), %rax
1000081ae: 48 8b 70 e8                 	movq	-24(%rax), %rsi
1000081b2: 4c 01 e6                    	addq	%r12, %rsi
1000081b5: 4c 8d 6d d0                 	leaq	-48(%rbp), %r13
1000081b9: 4c 89 ef                    	movq	%r13, %rdi
1000081bc: e8 77 2d 00 00              	callq	11639 <dyld_stub_binder+0x10000af38>
1000081c1: 4c 89 ef                    	movq	%r13, %rdi
1000081c4: 48 8b 35 6d 3e 00 00        	movq	15981(%rip), %rsi
1000081cb: e8 62 2d 00 00              	callq	11618 <dyld_stub_binder+0x10000af32>
1000081d0: 48 8b 08                    	movq	(%rax), %rcx
1000081d3: 48 89 c7                    	movq	%rax, %rdi
1000081d6: be 0a 00 00 00              	movl	$10, %esi
1000081db: ff 51 38                    	callq	*56(%rcx)
1000081de: 41 89 c5                    	movl	%eax, %r13d
1000081e1: 41 ff ce                    	decl	%r14d
1000081e4: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
1000081e8: e8 b7 2d 00 00              	callq	11703 <dyld_stub_binder+0x10000afa4>
1000081ed: 41 0f be f5                 	movsbl	%r13b, %esi
1000081f1: 4c 89 e7                    	movq	%r12, %rdi
1000081f4: e8 4b 2d 00 00              	callq	11595 <dyld_stub_binder+0x10000af44>
1000081f9: 4c 89 e7                    	movq	%r12, %rdi
1000081fc: e8 49 2d 00 00              	callq	11593 <dyld_stub_binder+0x10000af4a>
100008201: 45 85 f6                    	testl	%r14d, %r14d
100008204: 78 0f                       	js	15 <__ZNK4Node11printBoundsEiR13NodeAllocator+0xc5>
100008206: ff c3                       	incl	%ebx
100008208: 41 3b 9f c0 b6 06 00        	cmpl	440000(%r15), %ebx
10000820f: 0f 82 6b ff ff ff           	jb	-149 <__ZNK4Node11printBoundsEiR13NodeAllocator+0x30>
100008215: 48 83 c4 08                 	addq	$8, %rsp
100008219: 5b                          	popq	%rbx
10000821a: 41 5c                       	popq	%r12
10000821c: 41 5d                       	popq	%r13
10000821e: 41 5e                       	popq	%r14
100008220: 41 5f                       	popq	%r15
100008222: 5d                          	popq	%rbp
100008223: c3                          	retq
100008224: 48 89 c3                    	movq	%rax, %rbx
100008227: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
10000822b: e8 74 2d 00 00              	callq	11636 <dyld_stub_binder+0x10000afa4>
100008230: 48 89 df                    	movq	%rbx, %rdi
100008233: e8 e8 2c 00 00              	callq	11496 <dyld_stub_binder+0x10000af20>
100008238: 0f 0b                       	ud2
10000823a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008240 __ZN8LeafHashaSERKS_:
100008240: 48 89 f8                    	movq	%rdi, %rax
100008243: 48 39 f7                    	cmpq	%rsi, %rdi
100008246: 0f 84 43 02 00 00           	je	579 <__ZN8LeafHashaSERKS_+0x24f>
10000824c: 55                          	pushq	%rbp
10000824d: 48 89 e5                    	movq	%rsp, %rbp
100008250: 8b 0e                       	movl	(%rsi), %ecx
100008252: 89 08                       	movl	%ecx, (%rax)
100008254: 8b 4e 04                    	movl	4(%rsi), %ecx
100008257: 89 48 04                    	movl	%ecx, 4(%rax)
10000825a: 8b 4e 08                    	movl	8(%rsi), %ecx
10000825d: 89 48 08                    	movl	%ecx, 8(%rax)
100008260: 8b 4e 0c                    	movl	12(%rsi), %ecx
100008263: 89 48 0c                    	movl	%ecx, 12(%rax)
100008266: 8b 4e 10                    	movl	16(%rsi), %ecx
100008269: 89 48 10                    	movl	%ecx, 16(%rax)
10000826c: 8b 4e 14                    	movl	20(%rsi), %ecx
10000826f: 89 48 14                    	movl	%ecx, 20(%rax)
100008272: 8b 4e 18                    	movl	24(%rsi), %ecx
100008275: 89 48 18                    	movl	%ecx, 24(%rax)
100008278: 8b 4e 1c                    	movl	28(%rsi), %ecx
10000827b: 89 48 1c                    	movl	%ecx, 28(%rax)
10000827e: 8b 4e 20                    	movl	32(%rsi), %ecx
100008281: 89 48 20                    	movl	%ecx, 32(%rax)
100008284: 8b 4e 24                    	movl	36(%rsi), %ecx
100008287: 89 48 24                    	movl	%ecx, 36(%rax)
10000828a: 8b 4e 28                    	movl	40(%rsi), %ecx
10000828d: 89 48 28                    	movl	%ecx, 40(%rax)
100008290: 8b 4e 2c                    	movl	44(%rsi), %ecx
100008293: 89 48 2c                    	movl	%ecx, 44(%rax)
100008296: 8b 4e 30                    	movl	48(%rsi), %ecx
100008299: 89 48 30                    	movl	%ecx, 48(%rax)
10000829c: 8b 4e 34                    	movl	52(%rsi), %ecx
10000829f: 89 48 34                    	movl	%ecx, 52(%rax)
1000082a2: 8b 4e 38                    	movl	56(%rsi), %ecx
1000082a5: 89 48 38                    	movl	%ecx, 56(%rax)
1000082a8: 8b 4e 3c                    	movl	60(%rsi), %ecx
1000082ab: 89 48 3c                    	movl	%ecx, 60(%rax)
1000082ae: 8b 4e 40                    	movl	64(%rsi), %ecx
1000082b1: 89 48 40                    	movl	%ecx, 64(%rax)
1000082b4: 8b 4e 44                    	movl	68(%rsi), %ecx
1000082b7: 89 48 44                    	movl	%ecx, 68(%rax)
1000082ba: 8b 4e 48                    	movl	72(%rsi), %ecx
1000082bd: 89 48 48                    	movl	%ecx, 72(%rax)
1000082c0: 8b 4e 4c                    	movl	76(%rsi), %ecx
1000082c3: 89 48 4c                    	movl	%ecx, 76(%rax)
1000082c6: 8b 4e 50                    	movl	80(%rsi), %ecx
1000082c9: 89 48 50                    	movl	%ecx, 80(%rax)
1000082cc: 8b 4e 54                    	movl	84(%rsi), %ecx
1000082cf: 89 48 54                    	movl	%ecx, 84(%rax)
1000082d2: 8b 4e 58                    	movl	88(%rsi), %ecx
1000082d5: 89 48 58                    	movl	%ecx, 88(%rax)
1000082d8: 8b 4e 5c                    	movl	92(%rsi), %ecx
1000082db: 89 48 5c                    	movl	%ecx, 92(%rax)
1000082de: 8b 4e 60                    	movl	96(%rsi), %ecx
1000082e1: 89 48 60                    	movl	%ecx, 96(%rax)
1000082e4: 8b 4e 64                    	movl	100(%rsi), %ecx
1000082e7: 89 48 64                    	movl	%ecx, 100(%rax)
1000082ea: 8b 4e 68                    	movl	104(%rsi), %ecx
1000082ed: 89 48 68                    	movl	%ecx, 104(%rax)
1000082f0: 8b 4e 6c                    	movl	108(%rsi), %ecx
1000082f3: 89 48 6c                    	movl	%ecx, 108(%rax)
1000082f6: 8b 4e 70                    	movl	112(%rsi), %ecx
1000082f9: 89 48 70                    	movl	%ecx, 112(%rax)
1000082fc: 8b 4e 74                    	movl	116(%rsi), %ecx
1000082ff: 89 48 74                    	movl	%ecx, 116(%rax)
100008302: 8b 4e 78                    	movl	120(%rsi), %ecx
100008305: 89 48 78                    	movl	%ecx, 120(%rax)
100008308: 8b 4e 7c                    	movl	124(%rsi), %ecx
10000830b: 89 48 7c                    	movl	%ecx, 124(%rax)
10000830e: 8b 8e 80 00 00 00           	movl	128(%rsi), %ecx
100008314: 89 88 80 00 00 00           	movl	%ecx, 128(%rax)
10000831a: 8b 8e 84 00 00 00           	movl	132(%rsi), %ecx
100008320: 89 88 84 00 00 00           	movl	%ecx, 132(%rax)
100008326: 8b 8e 88 00 00 00           	movl	136(%rsi), %ecx
10000832c: 89 88 88 00 00 00           	movl	%ecx, 136(%rax)
100008332: 8b 8e 8c 00 00 00           	movl	140(%rsi), %ecx
100008338: 89 88 8c 00 00 00           	movl	%ecx, 140(%rax)
10000833e: 8b 8e 90 00 00 00           	movl	144(%rsi), %ecx
100008344: 89 88 90 00 00 00           	movl	%ecx, 144(%rax)
10000834a: 8b 8e 94 00 00 00           	movl	148(%rsi), %ecx
100008350: 89 88 94 00 00 00           	movl	%ecx, 148(%rax)
100008356: 8b 8e 98 00 00 00           	movl	152(%rsi), %ecx
10000835c: 89 88 98 00 00 00           	movl	%ecx, 152(%rax)
100008362: 8b 8e 9c 00 00 00           	movl	156(%rsi), %ecx
100008368: 89 88 9c 00 00 00           	movl	%ecx, 156(%rax)
10000836e: 8b 8e a0 00 00 00           	movl	160(%rsi), %ecx
100008374: 89 88 a0 00 00 00           	movl	%ecx, 160(%rax)
10000837a: 8b 8e a4 00 00 00           	movl	164(%rsi), %ecx
100008380: 89 88 a4 00 00 00           	movl	%ecx, 164(%rax)
100008386: 8b 8e a8 00 00 00           	movl	168(%rsi), %ecx
10000838c: 89 88 a8 00 00 00           	movl	%ecx, 168(%rax)
100008392: 8b 8e ac 00 00 00           	movl	172(%rsi), %ecx
100008398: 89 88 ac 00 00 00           	movl	%ecx, 172(%rax)
10000839e: 8b 8e b0 00 00 00           	movl	176(%rsi), %ecx
1000083a4: 89 88 b0 00 00 00           	movl	%ecx, 176(%rax)
1000083aa: 8b 8e b4 00 00 00           	movl	180(%rsi), %ecx
1000083b0: 89 88 b4 00 00 00           	movl	%ecx, 180(%rax)
1000083b6: 8b 8e b8 00 00 00           	movl	184(%rsi), %ecx
1000083bc: 89 88 b8 00 00 00           	movl	%ecx, 184(%rax)
1000083c2: 8b 8e bc 00 00 00           	movl	188(%rsi), %ecx
1000083c8: 89 88 bc 00 00 00           	movl	%ecx, 188(%rax)
1000083ce: 8b 8e c0 00 00 00           	movl	192(%rsi), %ecx
1000083d4: 89 88 c0 00 00 00           	movl	%ecx, 192(%rax)
1000083da: 8b 8e c4 00 00 00           	movl	196(%rsi), %ecx
1000083e0: 89 88 c4 00 00 00           	movl	%ecx, 196(%rax)
1000083e6: 8b 8e c8 00 00 00           	movl	200(%rsi), %ecx
1000083ec: 89 88 c8 00 00 00           	movl	%ecx, 200(%rax)
1000083f2: 8b 8e cc 00 00 00           	movl	204(%rsi), %ecx
1000083f8: 89 88 cc 00 00 00           	movl	%ecx, 204(%rax)
1000083fe: 8b 8e d0 00 00 00           	movl	208(%rsi), %ecx
100008404: 89 88 d0 00 00 00           	movl	%ecx, 208(%rax)
10000840a: 8b 8e d4 00 00 00           	movl	212(%rsi), %ecx
100008410: 89 88 d4 00 00 00           	movl	%ecx, 212(%rax)
100008416: 8b 8e d8 00 00 00           	movl	216(%rsi), %ecx
10000841c: 89 88 d8 00 00 00           	movl	%ecx, 216(%rax)
100008422: 8b 8e dc 00 00 00           	movl	220(%rsi), %ecx
100008428: 89 88 dc 00 00 00           	movl	%ecx, 220(%rax)
10000842e: 8b 8e e0 00 00 00           	movl	224(%rsi), %ecx
100008434: 89 88 e0 00 00 00           	movl	%ecx, 224(%rax)
10000843a: 8b 8e e4 00 00 00           	movl	228(%rsi), %ecx
100008440: 89 88 e4 00 00 00           	movl	%ecx, 228(%rax)
100008446: 8b 8e e8 00 00 00           	movl	232(%rsi), %ecx
10000844c: 89 88 e8 00 00 00           	movl	%ecx, 232(%rax)
100008452: 8b 8e ec 00 00 00           	movl	236(%rsi), %ecx
100008458: 89 88 ec 00 00 00           	movl	%ecx, 236(%rax)
10000845e: 8b 8e f0 00 00 00           	movl	240(%rsi), %ecx
100008464: 89 88 f0 00 00 00           	movl	%ecx, 240(%rax)
10000846a: 8b 8e f4 00 00 00           	movl	244(%rsi), %ecx
100008470: 89 88 f4 00 00 00           	movl	%ecx, 244(%rax)
100008476: 8b 8e f8 00 00 00           	movl	248(%rsi), %ecx
10000847c: 89 88 f8 00 00 00           	movl	%ecx, 248(%rax)
100008482: 8b 8e fc 00 00 00           	movl	252(%rsi), %ecx
100008488: 89 88 fc 00 00 00           	movl	%ecx, 252(%rax)
10000848e: 5d                          	popq	%rbp
10000848f: c3                          	retq

0000000100008490 __ZNSt3__1L20__throw_length_errorEPKc:
100008490: 55                          	pushq	%rbp
100008491: 48 89 e5                    	movq	%rsp, %rbp
100008494: 41 56                       	pushq	%r14
100008496: 53                          	pushq	%rbx
100008497: bf 10 00 00 00              	movl	$16, %edi
10000849c: e8 4b 2b 00 00              	callq	11083 <dyld_stub_binder+0x10000afec>
1000084a1: 48 89 c3                    	movq	%rax, %rbx
1000084a4: 48 89 c7                    	movq	%rax, %rdi
1000084a7: e8 34 00 00 00              	callq	52 <__ZNSt12length_errorC1EPKc>
1000084ac: 48 8b 35 a5 3b 00 00        	movq	15269(%rip), %rsi
1000084b3: 48 8b 15 5e 3b 00 00        	movq	15198(%rip), %rdx
1000084ba: 48 89 df                    	movq	%rbx, %rdi
1000084bd: e8 5a 2b 00 00              	callq	11098 <dyld_stub_binder+0x10000b01c>
1000084c2: 49 89 c6                    	movq	%rax, %r14
1000084c5: 48 89 df                    	movq	%rbx, %rdi
1000084c8: e8 37 2b 00 00              	callq	11063 <dyld_stub_binder+0x10000b004>
1000084cd: 4c 89 f7                    	movq	%r14, %rdi
1000084d0: e8 4b 2a 00 00              	callq	10827 <dyld_stub_binder+0x10000af20>
1000084d5: 0f 0b                       	ud2
1000084d7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

00000001000084e0 __ZNSt12length_errorC1EPKc:
1000084e0: 55                          	pushq	%rbp
1000084e1: 48 89 e5                    	movq	%rsp, %rbp
1000084e4: 53                          	pushq	%rbx
1000084e5: 50                          	pushq	%rax
1000084e6: 48 89 fb                    	movq	%rdi, %rbx
1000084e9: 48 8d 35 8b 35 00 00        	leaq	13707(%rip), %rsi
1000084f0: e8 49 2a 00 00              	callq	10825 <dyld_stub_binder+0x10000af3e>
1000084f5: 48 8b 05 84 3b 00 00        	movq	15236(%rip), %rax
1000084fc: 48 83 c0 10                 	addq	$16, %rax
100008500: 48 89 03                    	movq	%rax, (%rbx)
100008503: 48 83 c4 08                 	addq	$8, %rsp
100008507: 5b                          	popq	%rbx
100008508: 5d                          	popq	%rbp
100008509: c3                          	retq
10000850a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008510 __ZN8LeafHash6insertEj:
100008510: 55                          	pushq	%rbp
100008511: 48 89 e5                    	movq	%rsp, %rbp
100008514: 41 57                       	pushq	%r15
100008516: 41 56                       	pushq	%r14
100008518: 53                          	pushq	%rbx
100008519: 50                          	pushq	%rax
10000851a: 81 fe 00 7d 00 00           	cmpl	$32000, %esi
100008520: 0f 83 21 06 00 00           	jae	1569 <__ZN8LeafHash6insertEj+0x637>
100008526: 89 f1                       	movl	%esi, %ecx
100008528: 83 e1 3f                    	andl	$63, %ecx
10000852b: 48 89 cb                    	movq	%rcx, %rbx
10000852e: 66 90                       	nop
100008530: 8b 04 9f                    	movl	(%rdi,%rbx,4), %eax
100008533: 39 f0                       	cmpl	%esi, %eax
100008535: 0f 84 a9 00 00 00           	je	169 <__ZN8LeafHash6insertEj+0xd4>
10000853b: 83 f8 ff                    	cmpl	$-1, %eax
10000853e: 0f 84 a7 00 00 00           	je	167 <__ZN8LeafHash6insertEj+0xdb>
100008544: 48 ff c3                    	incq	%rbx
100008547: 48 83 fb 40                 	cmpq	$64, %rbx
10000854b: 75 e3                       	jne	-29 <__ZN8LeafHash6insertEj+0x20>
10000854d: 85 c9                       	testl	%ecx, %ecx
10000854f: 74 2b                       	je	43 <__ZN8LeafHash6insertEj+0x6c>
100008551: 31 c0                       	xorl	%eax, %eax
100008553: 31 db                       	xorl	%ebx, %ebx
100008555: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000855f: 90                          	nop
100008560: 8b 14 9f                    	movl	(%rdi,%rbx,4), %edx
100008563: 39 f2                       	cmpl	%esi, %edx
100008565: 0f 84 d1 05 00 00           	je	1489 <__ZN8LeafHash6insertEj+0x62c>
10000856b: 83 fa ff                    	cmpl	$-1, %edx
10000856e: 0f 84 21 03 00 00           	je	801 <__ZN8LeafHash6insertEj+0x385>
100008574: 48 ff c3                    	incq	%rbx
100008577: 48 39 d9                    	cmpq	%rbx, %rcx
10000857a: 75 e4                       	jne	-28 <__ZN8LeafHash6insertEj+0x50>
10000857c: 48 8b 1d ad 3a 00 00        	movq	15021(%rip), %rbx
100008583: 48 89 df                    	movq	%rbx, %rdi
100008586: e8 e3 29 00 00              	callq	10723 <dyld_stub_binder+0x10000af6e>
10000858b: 48 89 c7                    	movq	%rax, %rdi
10000858e: e8 cd d9 ff ff              	callq	-9779 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100008593: 48 8d 35 95 32 00 00        	leaq	12949(%rip), %rsi
10000859a: 48 89 df                    	movq	%rbx, %rdi
10000859d: e8 8e a9 ff ff              	callq	-22130 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000085a2: 48 8d 35 23 35 00 00        	leaq	13603(%rip), %rsi
1000085a9: 48 89 c7                    	movq	%rax, %rdi
1000085ac: e8 7f a9 ff ff              	callq	-22145 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000085b1: 48 8d 35 92 32 00 00        	leaq	12946(%rip), %rsi
1000085b8: 48 89 c7                    	movq	%rax, %rdi
1000085bb: e8 70 a9 ff ff              	callq	-22160 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000085c0: 48 89 c7                    	movq	%rax, %rdi
1000085c3: e8 98 d9 ff ff              	callq	-9832 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
1000085c8: 48 89 df                    	movq	%rbx, %rdi
1000085cb: be 84 00 00 00              	movl	$132, %esi
1000085d0: e8 93 29 00 00              	callq	10643 <dyld_stub_binder+0x10000af68>
1000085d5: 48 8d 35 84 32 00 00        	leaq	12932(%rip), %rsi
1000085dc: 48 89 c7                    	movq	%rax, %rdi
1000085df: e9 d5 0b 00 00              	jmp	3029 <__ZN8LeafHash6insertEj+0xca9>
1000085e4: 31 c0                       	xorl	%eax, %eax
1000085e6: e9 51 05 00 00              	jmp	1361 <__ZN8LeafHash6insertEj+0x62c>
1000085eb: 39 37                       	cmpl	%esi, (%rdi)
1000085ed: 0f 84 9d 05 00 00           	je	1437 <__ZN8LeafHash6insertEj+0x680>
1000085f3: 39 77 04                    	cmpl	%esi, 4(%rdi)
1000085f6: 0f 84 9c 05 00 00           	je	1436 <__ZN8LeafHash6insertEj+0x688>
1000085fc: 39 77 08                    	cmpl	%esi, 8(%rdi)
1000085ff: 0f 84 9e 05 00 00           	je	1438 <__ZN8LeafHash6insertEj+0x693>
100008605: 39 77 0c                    	cmpl	%esi, 12(%rdi)
100008608: 0f 84 a0 05 00 00           	je	1440 <__ZN8LeafHash6insertEj+0x69e>
10000860e: 39 77 10                    	cmpl	%esi, 16(%rdi)
100008611: 0f 84 a2 05 00 00           	je	1442 <__ZN8LeafHash6insertEj+0x6a9>
100008617: 39 77 14                    	cmpl	%esi, 20(%rdi)
10000861a: 0f 84 a4 05 00 00           	je	1444 <__ZN8LeafHash6insertEj+0x6b4>
100008620: 39 77 18                    	cmpl	%esi, 24(%rdi)
100008623: 0f 84 a6 05 00 00           	je	1446 <__ZN8LeafHash6insertEj+0x6bf>
100008629: 39 77 1c                    	cmpl	%esi, 28(%rdi)
10000862c: 0f 84 a8 05 00 00           	je	1448 <__ZN8LeafHash6insertEj+0x6ca>
100008632: 39 77 20                    	cmpl	%esi, 32(%rdi)
100008635: 0f 84 aa 05 00 00           	je	1450 <__ZN8LeafHash6insertEj+0x6d5>
10000863b: 39 77 24                    	cmpl	%esi, 36(%rdi)
10000863e: 0f 84 ac 05 00 00           	je	1452 <__ZN8LeafHash6insertEj+0x6e0>
100008644: 39 77 28                    	cmpl	%esi, 40(%rdi)
100008647: 0f 84 ae 05 00 00           	je	1454 <__ZN8LeafHash6insertEj+0x6eb>
10000864d: 39 77 2c                    	cmpl	%esi, 44(%rdi)
100008650: 0f 84 b0 05 00 00           	je	1456 <__ZN8LeafHash6insertEj+0x6f6>
100008656: 39 77 30                    	cmpl	%esi, 48(%rdi)
100008659: 0f 84 b2 05 00 00           	je	1458 <__ZN8LeafHash6insertEj+0x701>
10000865f: 39 77 34                    	cmpl	%esi, 52(%rdi)
100008662: 0f 84 b4 05 00 00           	je	1460 <__ZN8LeafHash6insertEj+0x70c>
100008668: 39 77 38                    	cmpl	%esi, 56(%rdi)
10000866b: 0f 84 b6 05 00 00           	je	1462 <__ZN8LeafHash6insertEj+0x717>
100008671: 39 77 3c                    	cmpl	%esi, 60(%rdi)
100008674: 0f 84 b8 05 00 00           	je	1464 <__ZN8LeafHash6insertEj+0x722>
10000867a: 39 77 40                    	cmpl	%esi, 64(%rdi)
10000867d: 0f 84 ba 05 00 00           	je	1466 <__ZN8LeafHash6insertEj+0x72d>
100008683: 39 77 44                    	cmpl	%esi, 68(%rdi)
100008686: 0f 84 bc 05 00 00           	je	1468 <__ZN8LeafHash6insertEj+0x738>
10000868c: 39 77 48                    	cmpl	%esi, 72(%rdi)
10000868f: 0f 84 be 05 00 00           	je	1470 <__ZN8LeafHash6insertEj+0x743>
100008695: 39 77 4c                    	cmpl	%esi, 76(%rdi)
100008698: 0f 84 c0 05 00 00           	je	1472 <__ZN8LeafHash6insertEj+0x74e>
10000869e: 39 77 50                    	cmpl	%esi, 80(%rdi)
1000086a1: 0f 84 c2 05 00 00           	je	1474 <__ZN8LeafHash6insertEj+0x759>
1000086a7: 39 77 54                    	cmpl	%esi, 84(%rdi)
1000086aa: 0f 84 c4 05 00 00           	je	1476 <__ZN8LeafHash6insertEj+0x764>
1000086b0: 39 77 58                    	cmpl	%esi, 88(%rdi)
1000086b3: 0f 84 c6 05 00 00           	je	1478 <__ZN8LeafHash6insertEj+0x76f>
1000086b9: 39 77 5c                    	cmpl	%esi, 92(%rdi)
1000086bc: 0f 84 c8 05 00 00           	je	1480 <__ZN8LeafHash6insertEj+0x77a>
1000086c2: 39 77 60                    	cmpl	%esi, 96(%rdi)
1000086c5: 0f 84 ca 05 00 00           	je	1482 <__ZN8LeafHash6insertEj+0x785>
1000086cb: 39 77 64                    	cmpl	%esi, 100(%rdi)
1000086ce: 0f 84 cc 05 00 00           	je	1484 <__ZN8LeafHash6insertEj+0x790>
1000086d4: 39 77 68                    	cmpl	%esi, 104(%rdi)
1000086d7: 0f 84 ce 05 00 00           	je	1486 <__ZN8LeafHash6insertEj+0x79b>
1000086dd: 39 77 6c                    	cmpl	%esi, 108(%rdi)
1000086e0: 0f 84 d0 05 00 00           	je	1488 <__ZN8LeafHash6insertEj+0x7a6>
1000086e6: 39 77 70                    	cmpl	%esi, 112(%rdi)
1000086e9: 0f 84 d2 05 00 00           	je	1490 <__ZN8LeafHash6insertEj+0x7b1>
1000086ef: 39 77 74                    	cmpl	%esi, 116(%rdi)
1000086f2: 0f 84 d4 05 00 00           	je	1492 <__ZN8LeafHash6insertEj+0x7bc>
1000086f8: 39 77 78                    	cmpl	%esi, 120(%rdi)
1000086fb: 0f 84 d6 05 00 00           	je	1494 <__ZN8LeafHash6insertEj+0x7c7>
100008701: 39 77 7c                    	cmpl	%esi, 124(%rdi)
100008704: 0f 84 d8 05 00 00           	je	1496 <__ZN8LeafHash6insertEj+0x7d2>
10000870a: 39 b7 80 00 00 00           	cmpl	%esi, 128(%rdi)
100008710: 0f 84 d7 05 00 00           	je	1495 <__ZN8LeafHash6insertEj+0x7dd>
100008716: 39 b7 84 00 00 00           	cmpl	%esi, 132(%rdi)
10000871c: 0f 84 d6 05 00 00           	je	1494 <__ZN8LeafHash6insertEj+0x7e8>
100008722: 39 b7 88 00 00 00           	cmpl	%esi, 136(%rdi)
100008728: 0f 84 d5 05 00 00           	je	1493 <__ZN8LeafHash6insertEj+0x7f3>
10000872e: 39 b7 8c 00 00 00           	cmpl	%esi, 140(%rdi)
100008734: 0f 84 d4 05 00 00           	je	1492 <__ZN8LeafHash6insertEj+0x7fe>
10000873a: 39 b7 90 00 00 00           	cmpl	%esi, 144(%rdi)
100008740: 0f 84 d3 05 00 00           	je	1491 <__ZN8LeafHash6insertEj+0x809>
100008746: 39 b7 94 00 00 00           	cmpl	%esi, 148(%rdi)
10000874c: 0f 84 d2 05 00 00           	je	1490 <__ZN8LeafHash6insertEj+0x814>
100008752: 39 b7 98 00 00 00           	cmpl	%esi, 152(%rdi)
100008758: 0f 84 d1 05 00 00           	je	1489 <__ZN8LeafHash6insertEj+0x81f>
10000875e: 39 b7 9c 00 00 00           	cmpl	%esi, 156(%rdi)
100008764: 0f 84 d0 05 00 00           	je	1488 <__ZN8LeafHash6insertEj+0x82a>
10000876a: 39 b7 a0 00 00 00           	cmpl	%esi, 160(%rdi)
100008770: 0f 84 cf 05 00 00           	je	1487 <__ZN8LeafHash6insertEj+0x835>
100008776: 39 b7 a4 00 00 00           	cmpl	%esi, 164(%rdi)
10000877c: 0f 84 ce 05 00 00           	je	1486 <__ZN8LeafHash6insertEj+0x840>
100008782: 39 b7 a8 00 00 00           	cmpl	%esi, 168(%rdi)
100008788: 0f 84 cd 05 00 00           	je	1485 <__ZN8LeafHash6insertEj+0x84b>
10000878e: 39 b7 ac 00 00 00           	cmpl	%esi, 172(%rdi)
100008794: 0f 84 cc 05 00 00           	je	1484 <__ZN8LeafHash6insertEj+0x856>
10000879a: 39 b7 b0 00 00 00           	cmpl	%esi, 176(%rdi)
1000087a0: 0f 84 cb 05 00 00           	je	1483 <__ZN8LeafHash6insertEj+0x861>
1000087a6: 39 b7 b4 00 00 00           	cmpl	%esi, 180(%rdi)
1000087ac: 0f 84 ca 05 00 00           	je	1482 <__ZN8LeafHash6insertEj+0x86c>
1000087b2: 39 b7 b8 00 00 00           	cmpl	%esi, 184(%rdi)
1000087b8: 0f 84 c9 05 00 00           	je	1481 <__ZN8LeafHash6insertEj+0x877>
1000087be: 39 b7 bc 00 00 00           	cmpl	%esi, 188(%rdi)
1000087c4: 0f 84 c5 05 00 00           	je	1477 <__ZN8LeafHash6insertEj+0x87f>
1000087ca: 39 b7 c0 00 00 00           	cmpl	%esi, 192(%rdi)
1000087d0: 0f 84 c1 05 00 00           	je	1473 <__ZN8LeafHash6insertEj+0x887>
1000087d6: 39 b7 c4 00 00 00           	cmpl	%esi, 196(%rdi)
1000087dc: 0f 84 bd 05 00 00           	je	1469 <__ZN8LeafHash6insertEj+0x88f>
1000087e2: 39 b7 c8 00 00 00           	cmpl	%esi, 200(%rdi)
1000087e8: 0f 84 b9 05 00 00           	je	1465 <__ZN8LeafHash6insertEj+0x897>
1000087ee: 39 b7 cc 00 00 00           	cmpl	%esi, 204(%rdi)
1000087f4: 0f 84 b5 05 00 00           	je	1461 <__ZN8LeafHash6insertEj+0x89f>
1000087fa: 39 b7 d0 00 00 00           	cmpl	%esi, 208(%rdi)
100008800: 0f 84 b1 05 00 00           	je	1457 <__ZN8LeafHash6insertEj+0x8a7>
100008806: 39 b7 d4 00 00 00           	cmpl	%esi, 212(%rdi)
10000880c: 0f 84 ad 05 00 00           	je	1453 <__ZN8LeafHash6insertEj+0x8af>
100008812: 39 b7 d8 00 00 00           	cmpl	%esi, 216(%rdi)
100008818: 0f 84 a9 05 00 00           	je	1449 <__ZN8LeafHash6insertEj+0x8b7>
10000881e: 39 b7 dc 00 00 00           	cmpl	%esi, 220(%rdi)
100008824: 0f 84 a5 05 00 00           	je	1445 <__ZN8LeafHash6insertEj+0x8bf>
10000882a: 39 b7 e0 00 00 00           	cmpl	%esi, 224(%rdi)
100008830: 0f 84 a1 05 00 00           	je	1441 <__ZN8LeafHash6insertEj+0x8c7>
100008836: 39 b7 e4 00 00 00           	cmpl	%esi, 228(%rdi)
10000883c: 0f 84 9d 05 00 00           	je	1437 <__ZN8LeafHash6insertEj+0x8cf>
100008842: 39 b7 e8 00 00 00           	cmpl	%esi, 232(%rdi)
100008848: 0f 84 99 05 00 00           	je	1433 <__ZN8LeafHash6insertEj+0x8d7>
10000884e: 39 b7 ec 00 00 00           	cmpl	%esi, 236(%rdi)
100008854: 0f 84 95 05 00 00           	je	1429 <__ZN8LeafHash6insertEj+0x8df>
10000885a: 39 b7 f0 00 00 00           	cmpl	%esi, 240(%rdi)
100008860: 0f 84 91 05 00 00           	je	1425 <__ZN8LeafHash6insertEj+0x8e7>
100008866: 39 b7 f4 00 00 00           	cmpl	%esi, 244(%rdi)
10000886c: 0f 84 8d 05 00 00           	je	1421 <__ZN8LeafHash6insertEj+0x8ef>
100008872: 39 b7 f8 00 00 00           	cmpl	%esi, 248(%rdi)
100008878: 0f 84 89 05 00 00           	je	1417 <__ZN8LeafHash6insertEj+0x8f7>
10000887e: 39 b7 fc 00 00 00           	cmpl	%esi, 252(%rdi)
100008884: 0f 85 aa 02 00 00           	jne	682 <__ZN8LeafHash6insertEj+0x624>
10000888a: 41 be 3f 00 00 00           	movl	$63, %r14d
100008890: e9 78 05 00 00              	jmp	1400 <__ZN8LeafHash6insertEj+0x8fd>
100008895: 39 37                       	cmpl	%esi, (%rdi)
100008897: 0f 84 ff 05 00 00           	je	1535 <__ZN8LeafHash6insertEj+0x98c>
10000889d: 39 77 04                    	cmpl	%esi, 4(%rdi)
1000088a0: 0f 84 fe 05 00 00           	je	1534 <__ZN8LeafHash6insertEj+0x994>
1000088a6: 39 77 08                    	cmpl	%esi, 8(%rdi)
1000088a9: 0f 84 00 06 00 00           	je	1536 <__ZN8LeafHash6insertEj+0x99f>
1000088af: 39 77 0c                    	cmpl	%esi, 12(%rdi)
1000088b2: 0f 84 02 06 00 00           	je	1538 <__ZN8LeafHash6insertEj+0x9aa>
1000088b8: 39 77 10                    	cmpl	%esi, 16(%rdi)
1000088bb: 0f 84 04 06 00 00           	je	1540 <__ZN8LeafHash6insertEj+0x9b5>
1000088c1: 39 77 14                    	cmpl	%esi, 20(%rdi)
1000088c4: 0f 84 06 06 00 00           	je	1542 <__ZN8LeafHash6insertEj+0x9c0>
1000088ca: 39 77 18                    	cmpl	%esi, 24(%rdi)
1000088cd: 0f 84 08 06 00 00           	je	1544 <__ZN8LeafHash6insertEj+0x9cb>
1000088d3: 39 77 1c                    	cmpl	%esi, 28(%rdi)
1000088d6: 0f 84 0a 06 00 00           	je	1546 <__ZN8LeafHash6insertEj+0x9d6>
1000088dc: 39 77 20                    	cmpl	%esi, 32(%rdi)
1000088df: 0f 84 0c 06 00 00           	je	1548 <__ZN8LeafHash6insertEj+0x9e1>
1000088e5: 39 77 24                    	cmpl	%esi, 36(%rdi)
1000088e8: 0f 84 0e 06 00 00           	je	1550 <__ZN8LeafHash6insertEj+0x9ec>
1000088ee: 39 77 28                    	cmpl	%esi, 40(%rdi)
1000088f1: 0f 84 10 06 00 00           	je	1552 <__ZN8LeafHash6insertEj+0x9f7>
1000088f7: 39 77 2c                    	cmpl	%esi, 44(%rdi)
1000088fa: 0f 84 12 06 00 00           	je	1554 <__ZN8LeafHash6insertEj+0xa02>
100008900: 39 77 30                    	cmpl	%esi, 48(%rdi)
100008903: 0f 84 14 06 00 00           	je	1556 <__ZN8LeafHash6insertEj+0xa0d>
100008909: 39 77 34                    	cmpl	%esi, 52(%rdi)
10000890c: 0f 84 16 06 00 00           	je	1558 <__ZN8LeafHash6insertEj+0xa18>
100008912: 39 77 38                    	cmpl	%esi, 56(%rdi)
100008915: 0f 84 18 06 00 00           	je	1560 <__ZN8LeafHash6insertEj+0xa23>
10000891b: 39 77 3c                    	cmpl	%esi, 60(%rdi)
10000891e: 0f 84 1a 06 00 00           	je	1562 <__ZN8LeafHash6insertEj+0xa2e>
100008924: 39 77 40                    	cmpl	%esi, 64(%rdi)
100008927: 0f 84 1c 06 00 00           	je	1564 <__ZN8LeafHash6insertEj+0xa39>
10000892d: 39 77 44                    	cmpl	%esi, 68(%rdi)
100008930: 0f 84 1e 06 00 00           	je	1566 <__ZN8LeafHash6insertEj+0xa44>
100008936: 39 77 48                    	cmpl	%esi, 72(%rdi)
100008939: 0f 84 20 06 00 00           	je	1568 <__ZN8LeafHash6insertEj+0xa4f>
10000893f: 39 77 4c                    	cmpl	%esi, 76(%rdi)
100008942: 0f 84 22 06 00 00           	je	1570 <__ZN8LeafHash6insertEj+0xa5a>
100008948: 39 77 50                    	cmpl	%esi, 80(%rdi)
10000894b: 0f 84 24 06 00 00           	je	1572 <__ZN8LeafHash6insertEj+0xa65>
100008951: 39 77 54                    	cmpl	%esi, 84(%rdi)
100008954: 0f 84 26 06 00 00           	je	1574 <__ZN8LeafHash6insertEj+0xa70>
10000895a: 39 77 58                    	cmpl	%esi, 88(%rdi)
10000895d: 0f 84 28 06 00 00           	je	1576 <__ZN8LeafHash6insertEj+0xa7b>
100008963: 39 77 5c                    	cmpl	%esi, 92(%rdi)
100008966: 0f 84 2a 06 00 00           	je	1578 <__ZN8LeafHash6insertEj+0xa86>
10000896c: 39 77 60                    	cmpl	%esi, 96(%rdi)
10000896f: 0f 84 2c 06 00 00           	je	1580 <__ZN8LeafHash6insertEj+0xa91>
100008975: 39 77 64                    	cmpl	%esi, 100(%rdi)
100008978: 0f 84 2e 06 00 00           	je	1582 <__ZN8LeafHash6insertEj+0xa9c>
10000897e: 39 77 68                    	cmpl	%esi, 104(%rdi)
100008981: 0f 84 30 06 00 00           	je	1584 <__ZN8LeafHash6insertEj+0xaa7>
100008987: 39 77 6c                    	cmpl	%esi, 108(%rdi)
10000898a: 0f 84 32 06 00 00           	je	1586 <__ZN8LeafHash6insertEj+0xab2>
100008990: 39 77 70                    	cmpl	%esi, 112(%rdi)
100008993: 0f 84 34 06 00 00           	je	1588 <__ZN8LeafHash6insertEj+0xabd>
100008999: 39 77 74                    	cmpl	%esi, 116(%rdi)
10000899c: 0f 84 36 06 00 00           	je	1590 <__ZN8LeafHash6insertEj+0xac8>
1000089a2: 39 77 78                    	cmpl	%esi, 120(%rdi)
1000089a5: 0f 84 38 06 00 00           	je	1592 <__ZN8LeafHash6insertEj+0xad3>
1000089ab: 39 77 7c                    	cmpl	%esi, 124(%rdi)
1000089ae: 0f 84 3a 06 00 00           	je	1594 <__ZN8LeafHash6insertEj+0xade>
1000089b4: 39 b7 80 00 00 00           	cmpl	%esi, 128(%rdi)
1000089ba: 0f 84 39 06 00 00           	je	1593 <__ZN8LeafHash6insertEj+0xae9>
1000089c0: 39 b7 84 00 00 00           	cmpl	%esi, 132(%rdi)
1000089c6: 0f 84 38 06 00 00           	je	1592 <__ZN8LeafHash6insertEj+0xaf4>
1000089cc: 39 b7 88 00 00 00           	cmpl	%esi, 136(%rdi)
1000089d2: 0f 84 37 06 00 00           	je	1591 <__ZN8LeafHash6insertEj+0xaff>
1000089d8: 39 b7 8c 00 00 00           	cmpl	%esi, 140(%rdi)
1000089de: 0f 84 36 06 00 00           	je	1590 <__ZN8LeafHash6insertEj+0xb0a>
1000089e4: 39 b7 90 00 00 00           	cmpl	%esi, 144(%rdi)
1000089ea: 0f 84 35 06 00 00           	je	1589 <__ZN8LeafHash6insertEj+0xb15>
1000089f0: 39 b7 94 00 00 00           	cmpl	%esi, 148(%rdi)
1000089f6: 0f 84 34 06 00 00           	je	1588 <__ZN8LeafHash6insertEj+0xb20>
1000089fc: 39 b7 98 00 00 00           	cmpl	%esi, 152(%rdi)
100008a02: 0f 84 33 06 00 00           	je	1587 <__ZN8LeafHash6insertEj+0xb2b>
100008a08: 39 b7 9c 00 00 00           	cmpl	%esi, 156(%rdi)
100008a0e: 0f 84 32 06 00 00           	je	1586 <__ZN8LeafHash6insertEj+0xb36>
100008a14: 39 b7 a0 00 00 00           	cmpl	%esi, 160(%rdi)
100008a1a: 0f 84 31 06 00 00           	je	1585 <__ZN8LeafHash6insertEj+0xb41>
100008a20: 39 b7 a4 00 00 00           	cmpl	%esi, 164(%rdi)
100008a26: 0f 84 30 06 00 00           	je	1584 <__ZN8LeafHash6insertEj+0xb4c>
100008a2c: 39 b7 a8 00 00 00           	cmpl	%esi, 168(%rdi)
100008a32: 0f 84 2f 06 00 00           	je	1583 <__ZN8LeafHash6insertEj+0xb57>
100008a38: 39 b7 ac 00 00 00           	cmpl	%esi, 172(%rdi)
100008a3e: 0f 84 2e 06 00 00           	je	1582 <__ZN8LeafHash6insertEj+0xb62>
100008a44: 39 b7 b0 00 00 00           	cmpl	%esi, 176(%rdi)
100008a4a: 0f 84 2d 06 00 00           	je	1581 <__ZN8LeafHash6insertEj+0xb6d>
100008a50: 39 b7 b4 00 00 00           	cmpl	%esi, 180(%rdi)
100008a56: 0f 84 2c 06 00 00           	je	1580 <__ZN8LeafHash6insertEj+0xb78>
100008a5c: 39 b7 b8 00 00 00           	cmpl	%esi, 184(%rdi)
100008a62: 0f 84 2b 06 00 00           	je	1579 <__ZN8LeafHash6insertEj+0xb83>
100008a68: 39 b7 bc 00 00 00           	cmpl	%esi, 188(%rdi)
100008a6e: 0f 84 2a 06 00 00           	je	1578 <__ZN8LeafHash6insertEj+0xb8e>
100008a74: 39 b7 c0 00 00 00           	cmpl	%esi, 192(%rdi)
100008a7a: 0f 84 26 06 00 00           	je	1574 <__ZN8LeafHash6insertEj+0xb96>
100008a80: 39 b7 c4 00 00 00           	cmpl	%esi, 196(%rdi)
100008a86: 0f 84 22 06 00 00           	je	1570 <__ZN8LeafHash6insertEj+0xb9e>
100008a8c: 39 b7 c8 00 00 00           	cmpl	%esi, 200(%rdi)
100008a92: 0f 84 1e 06 00 00           	je	1566 <__ZN8LeafHash6insertEj+0xba6>
100008a98: 39 b7 cc 00 00 00           	cmpl	%esi, 204(%rdi)
100008a9e: 0f 84 1a 06 00 00           	je	1562 <__ZN8LeafHash6insertEj+0xbae>
100008aa4: 39 b7 d0 00 00 00           	cmpl	%esi, 208(%rdi)
100008aaa: 0f 84 16 06 00 00           	je	1558 <__ZN8LeafHash6insertEj+0xbb6>
100008ab0: 39 b7 d4 00 00 00           	cmpl	%esi, 212(%rdi)
100008ab6: 0f 84 12 06 00 00           	je	1554 <__ZN8LeafHash6insertEj+0xbbe>
100008abc: 39 b7 d8 00 00 00           	cmpl	%esi, 216(%rdi)
100008ac2: 0f 84 0e 06 00 00           	je	1550 <__ZN8LeafHash6insertEj+0xbc6>
100008ac8: 39 b7 dc 00 00 00           	cmpl	%esi, 220(%rdi)
100008ace: 0f 84 0a 06 00 00           	je	1546 <__ZN8LeafHash6insertEj+0xbce>
100008ad4: 39 b7 e0 00 00 00           	cmpl	%esi, 224(%rdi)
100008ada: 0f 84 06 06 00 00           	je	1542 <__ZN8LeafHash6insertEj+0xbd6>
100008ae0: 39 b7 e4 00 00 00           	cmpl	%esi, 228(%rdi)
100008ae6: 0f 84 02 06 00 00           	je	1538 <__ZN8LeafHash6insertEj+0xbde>
100008aec: 39 b7 e8 00 00 00           	cmpl	%esi, 232(%rdi)
100008af2: 0f 84 fe 05 00 00           	je	1534 <__ZN8LeafHash6insertEj+0xbe6>
100008af8: 39 b7 ec 00 00 00           	cmpl	%esi, 236(%rdi)
100008afe: 0f 84 fa 05 00 00           	je	1530 <__ZN8LeafHash6insertEj+0xbee>
100008b04: 39 b7 f0 00 00 00           	cmpl	%esi, 240(%rdi)
100008b0a: 0f 84 f6 05 00 00           	je	1526 <__ZN8LeafHash6insertEj+0xbf6>
100008b10: 39 b7 f4 00 00 00           	cmpl	%esi, 244(%rdi)
100008b16: 0f 84 f2 05 00 00           	je	1522 <__ZN8LeafHash6insertEj+0xbfe>
100008b1c: 39 b7 f8 00 00 00           	cmpl	%esi, 248(%rdi)
100008b22: 0f 84 ee 05 00 00           	je	1518 <__ZN8LeafHash6insertEj+0xc06>
100008b28: 39 b7 fc 00 00 00           	cmpl	%esi, 252(%rdi)
100008b2e: 0f 84 ea 05 00 00           	je	1514 <__ZN8LeafHash6insertEj+0xc0e>
100008b34: 89 34 9f                    	movl	%esi, (%rdi,%rbx,4)
100008b37: b8 01 00 00 00              	movl	$1, %eax
100008b3c: 48 83 c4 08                 	addq	$8, %rsp
100008b40: 5b                          	popq	%rbx
100008b41: 41 5e                       	popq	%r14
100008b43: 41 5f                       	popq	%r15
100008b45: 5d                          	popq	%rbp
100008b46: c3                          	retq
100008b47: 48 8b 1d e2 34 00 00        	movq	13538(%rip), %rbx
100008b4e: 48 8d 35 da 2c 00 00        	leaq	11482(%rip), %rsi
100008b55: 48 89 df                    	movq	%rbx, %rdi
100008b58: e8 d3 a3 ff ff              	callq	-23597 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100008b5d: 48 8d 35 6a 31 00 00        	leaq	12650(%rip), %rsi
100008b64: 48 89 c7                    	movq	%rax, %rdi
100008b67: e8 c4 a3 ff ff              	callq	-23612 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100008b6c: 48 8d 35 d7 2c 00 00        	leaq	11479(%rip), %rsi
100008b73: 48 89 c7                    	movq	%rax, %rdi
100008b76: e8 b5 a3 ff ff              	callq	-23627 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100008b7b: 48 89 c7                    	movq	%rax, %rdi
100008b7e: e8 dd d3 ff ff              	callq	-11299 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100008b83: 48 89 df                    	movq	%rbx, %rdi
100008b86: be 48 00 00 00              	movl	$72, %esi
100008b8b: e9 40 fa ff ff              	jmp	-1472 <__ZN8LeafHash6insertEj+0xc0>
100008b90: 45 31 f6                    	xorl	%r14d, %r14d
100008b93: e9 75 02 00 00              	jmp	629 <__ZN8LeafHash6insertEj+0x8fd>
100008b98: 41 be 01 00 00 00           	movl	$1, %r14d
100008b9e: e9 6a 02 00 00              	jmp	618 <__ZN8LeafHash6insertEj+0x8fd>
100008ba3: 41 be 02 00 00 00           	movl	$2, %r14d
100008ba9: e9 5f 02 00 00              	jmp	607 <__ZN8LeafHash6insertEj+0x8fd>
100008bae: 41 be 03 00 00 00           	movl	$3, %r14d
100008bb4: e9 54 02 00 00              	jmp	596 <__ZN8LeafHash6insertEj+0x8fd>
100008bb9: 41 be 04 00 00 00           	movl	$4, %r14d
100008bbf: e9 49 02 00 00              	jmp	585 <__ZN8LeafHash6insertEj+0x8fd>
100008bc4: 41 be 05 00 00 00           	movl	$5, %r14d
100008bca: e9 3e 02 00 00              	jmp	574 <__ZN8LeafHash6insertEj+0x8fd>
100008bcf: 41 be 06 00 00 00           	movl	$6, %r14d
100008bd5: e9 33 02 00 00              	jmp	563 <__ZN8LeafHash6insertEj+0x8fd>
100008bda: 41 be 07 00 00 00           	movl	$7, %r14d
100008be0: e9 28 02 00 00              	jmp	552 <__ZN8LeafHash6insertEj+0x8fd>
100008be5: 41 be 08 00 00 00           	movl	$8, %r14d
100008beb: e9 1d 02 00 00              	jmp	541 <__ZN8LeafHash6insertEj+0x8fd>
100008bf0: 41 be 09 00 00 00           	movl	$9, %r14d
100008bf6: e9 12 02 00 00              	jmp	530 <__ZN8LeafHash6insertEj+0x8fd>
100008bfb: 41 be 0a 00 00 00           	movl	$10, %r14d
100008c01: e9 07 02 00 00              	jmp	519 <__ZN8LeafHash6insertEj+0x8fd>
100008c06: 41 be 0b 00 00 00           	movl	$11, %r14d
100008c0c: e9 fc 01 00 00              	jmp	508 <__ZN8LeafHash6insertEj+0x8fd>
100008c11: 41 be 0c 00 00 00           	movl	$12, %r14d
100008c17: e9 f1 01 00 00              	jmp	497 <__ZN8LeafHash6insertEj+0x8fd>
100008c1c: 41 be 0d 00 00 00           	movl	$13, %r14d
100008c22: e9 e6 01 00 00              	jmp	486 <__ZN8LeafHash6insertEj+0x8fd>
100008c27: 41 be 0e 00 00 00           	movl	$14, %r14d
100008c2d: e9 db 01 00 00              	jmp	475 <__ZN8LeafHash6insertEj+0x8fd>
100008c32: 41 be 0f 00 00 00           	movl	$15, %r14d
100008c38: e9 d0 01 00 00              	jmp	464 <__ZN8LeafHash6insertEj+0x8fd>
100008c3d: 41 be 10 00 00 00           	movl	$16, %r14d
100008c43: e9 c5 01 00 00              	jmp	453 <__ZN8LeafHash6insertEj+0x8fd>
100008c48: 41 be 11 00 00 00           	movl	$17, %r14d
100008c4e: e9 ba 01 00 00              	jmp	442 <__ZN8LeafHash6insertEj+0x8fd>
100008c53: 41 be 12 00 00 00           	movl	$18, %r14d
100008c59: e9 af 01 00 00              	jmp	431 <__ZN8LeafHash6insertEj+0x8fd>
100008c5e: 41 be 13 00 00 00           	movl	$19, %r14d
100008c64: e9 a4 01 00 00              	jmp	420 <__ZN8LeafHash6insertEj+0x8fd>
100008c69: 41 be 14 00 00 00           	movl	$20, %r14d
100008c6f: e9 99 01 00 00              	jmp	409 <__ZN8LeafHash6insertEj+0x8fd>
100008c74: 41 be 15 00 00 00           	movl	$21, %r14d
100008c7a: e9 8e 01 00 00              	jmp	398 <__ZN8LeafHash6insertEj+0x8fd>
100008c7f: 41 be 16 00 00 00           	movl	$22, %r14d
100008c85: e9 83 01 00 00              	jmp	387 <__ZN8LeafHash6insertEj+0x8fd>
100008c8a: 41 be 17 00 00 00           	movl	$23, %r14d
100008c90: e9 78 01 00 00              	jmp	376 <__ZN8LeafHash6insertEj+0x8fd>
100008c95: 41 be 18 00 00 00           	movl	$24, %r14d
100008c9b: e9 6d 01 00 00              	jmp	365 <__ZN8LeafHash6insertEj+0x8fd>
100008ca0: 41 be 19 00 00 00           	movl	$25, %r14d
100008ca6: e9 62 01 00 00              	jmp	354 <__ZN8LeafHash6insertEj+0x8fd>
100008cab: 41 be 1a 00 00 00           	movl	$26, %r14d
100008cb1: e9 57 01 00 00              	jmp	343 <__ZN8LeafHash6insertEj+0x8fd>
100008cb6: 41 be 1b 00 00 00           	movl	$27, %r14d
100008cbc: e9 4c 01 00 00              	jmp	332 <__ZN8LeafHash6insertEj+0x8fd>
100008cc1: 41 be 1c 00 00 00           	movl	$28, %r14d
100008cc7: e9 41 01 00 00              	jmp	321 <__ZN8LeafHash6insertEj+0x8fd>
100008ccc: 41 be 1d 00 00 00           	movl	$29, %r14d
100008cd2: e9 36 01 00 00              	jmp	310 <__ZN8LeafHash6insertEj+0x8fd>
100008cd7: 41 be 1e 00 00 00           	movl	$30, %r14d
100008cdd: e9 2b 01 00 00              	jmp	299 <__ZN8LeafHash6insertEj+0x8fd>
100008ce2: 41 be 1f 00 00 00           	movl	$31, %r14d
100008ce8: e9 20 01 00 00              	jmp	288 <__ZN8LeafHash6insertEj+0x8fd>
100008ced: 41 be 20 00 00 00           	movl	$32, %r14d
100008cf3: e9 15 01 00 00              	jmp	277 <__ZN8LeafHash6insertEj+0x8fd>
100008cf8: 41 be 21 00 00 00           	movl	$33, %r14d
100008cfe: e9 0a 01 00 00              	jmp	266 <__ZN8LeafHash6insertEj+0x8fd>
100008d03: 41 be 22 00 00 00           	movl	$34, %r14d
100008d09: e9 ff 00 00 00              	jmp	255 <__ZN8LeafHash6insertEj+0x8fd>
100008d0e: 41 be 23 00 00 00           	movl	$35, %r14d
100008d14: e9 f4 00 00 00              	jmp	244 <__ZN8LeafHash6insertEj+0x8fd>
100008d19: 41 be 24 00 00 00           	movl	$36, %r14d
100008d1f: e9 e9 00 00 00              	jmp	233 <__ZN8LeafHash6insertEj+0x8fd>
100008d24: 41 be 25 00 00 00           	movl	$37, %r14d
100008d2a: e9 de 00 00 00              	jmp	222 <__ZN8LeafHash6insertEj+0x8fd>
100008d2f: 41 be 26 00 00 00           	movl	$38, %r14d
100008d35: e9 d3 00 00 00              	jmp	211 <__ZN8LeafHash6insertEj+0x8fd>
100008d3a: 41 be 27 00 00 00           	movl	$39, %r14d
100008d40: e9 c8 00 00 00              	jmp	200 <__ZN8LeafHash6insertEj+0x8fd>
100008d45: 41 be 28 00 00 00           	movl	$40, %r14d
100008d4b: e9 bd 00 00 00              	jmp	189 <__ZN8LeafHash6insertEj+0x8fd>
100008d50: 41 be 29 00 00 00           	movl	$41, %r14d
100008d56: e9 b2 00 00 00              	jmp	178 <__ZN8LeafHash6insertEj+0x8fd>
100008d5b: 41 be 2a 00 00 00           	movl	$42, %r14d
100008d61: e9 a7 00 00 00              	jmp	167 <__ZN8LeafHash6insertEj+0x8fd>
100008d66: 41 be 2b 00 00 00           	movl	$43, %r14d
100008d6c: e9 9c 00 00 00              	jmp	156 <__ZN8LeafHash6insertEj+0x8fd>
100008d71: 41 be 2c 00 00 00           	movl	$44, %r14d
100008d77: e9 91 00 00 00              	jmp	145 <__ZN8LeafHash6insertEj+0x8fd>
100008d7c: 41 be 2d 00 00 00           	movl	$45, %r14d
100008d82: e9 86 00 00 00              	jmp	134 <__ZN8LeafHash6insertEj+0x8fd>
100008d87: 41 be 2e 00 00 00           	movl	$46, %r14d
100008d8d: eb 7e                       	jmp	126 <__ZN8LeafHash6insertEj+0x8fd>
100008d8f: 41 be 2f 00 00 00           	movl	$47, %r14d
100008d95: eb 76                       	jmp	118 <__ZN8LeafHash6insertEj+0x8fd>
100008d97: 41 be 30 00 00 00           	movl	$48, %r14d
100008d9d: eb 6e                       	jmp	110 <__ZN8LeafHash6insertEj+0x8fd>
100008d9f: 41 be 31 00 00 00           	movl	$49, %r14d
100008da5: eb 66                       	jmp	102 <__ZN8LeafHash6insertEj+0x8fd>
100008da7: 41 be 32 00 00 00           	movl	$50, %r14d
100008dad: eb 5e                       	jmp	94 <__ZN8LeafHash6insertEj+0x8fd>
100008daf: 41 be 33 00 00 00           	movl	$51, %r14d
100008db5: eb 56                       	jmp	86 <__ZN8LeafHash6insertEj+0x8fd>
100008db7: 41 be 34 00 00 00           	movl	$52, %r14d
100008dbd: eb 4e                       	jmp	78 <__ZN8LeafHash6insertEj+0x8fd>
100008dbf: 41 be 35 00 00 00           	movl	$53, %r14d
100008dc5: eb 46                       	jmp	70 <__ZN8LeafHash6insertEj+0x8fd>
100008dc7: 41 be 36 00 00 00           	movl	$54, %r14d
100008dcd: eb 3e                       	jmp	62 <__ZN8LeafHash6insertEj+0x8fd>
100008dcf: 41 be 37 00 00 00           	movl	$55, %r14d
100008dd5: eb 36                       	jmp	54 <__ZN8LeafHash6insertEj+0x8fd>
100008dd7: 41 be 38 00 00 00           	movl	$56, %r14d
100008ddd: eb 2e                       	jmp	46 <__ZN8LeafHash6insertEj+0x8fd>
100008ddf: 41 be 39 00 00 00           	movl	$57, %r14d
100008de5: eb 26                       	jmp	38 <__ZN8LeafHash6insertEj+0x8fd>
100008de7: 41 be 3a 00 00 00           	movl	$58, %r14d
100008ded: eb 1e                       	jmp	30 <__ZN8LeafHash6insertEj+0x8fd>
100008def: 41 be 3b 00 00 00           	movl	$59, %r14d
100008df5: eb 16                       	jmp	22 <__ZN8LeafHash6insertEj+0x8fd>
100008df7: 41 be 3c 00 00 00           	movl	$60, %r14d
100008dfd: eb 0e                       	jmp	14 <__ZN8LeafHash6insertEj+0x8fd>
100008dff: 41 be 3d 00 00 00           	movl	$61, %r14d
100008e05: eb 06                       	jmp	6 <__ZN8LeafHash6insertEj+0x8fd>
100008e07: 41 be 3e 00 00 00           	movl	$62, %r14d
100008e0d: 4c 8b 3d 1c 32 00 00        	movq	12828(%rip), %r15
100008e14: 48 8d 35 6f 2a 00 00        	leaq	10863(%rip), %rsi
100008e1b: 4c 89 ff                    	movq	%r15, %rdi
100008e1e: e8 0d a1 ff ff              	callq	-24307 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100008e23: 48 89 c7                    	movq	%rax, %rdi
100008e26: e8 35 d1 ff ff              	callq	-11979 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100008e2b: 4c 89 ff                    	movq	%r15, %rdi
100008e2e: 89 de                       	movl	%ebx, %esi
100008e30: e8 39 21 00 00              	callq	8505 <dyld_stub_binder+0x10000af6e>
100008e35: 48 8d 1d 24 2a 00 00        	leaq	10788(%rip), %rbx
100008e3c: 48 89 c7                    	movq	%rax, %rdi
100008e3f: 48 89 de                    	movq	%rbx, %rsi
100008e42: e8 e9 a0 ff ff              	callq	-24343 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100008e47: 48 89 c7                    	movq	%rax, %rdi
100008e4a: 44 89 f6                    	movl	%r14d, %esi
100008e4d: e8 1c 21 00 00              	callq	8476 <dyld_stub_binder+0x10000af6e>
100008e52: 48 89 c7                    	movq	%rax, %rdi
100008e55: e8 06 d1 ff ff              	callq	-12026 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100008e5a: 48 8d 35 ce 29 00 00        	leaq	10702(%rip), %rsi
100008e61: 4c 89 ff                    	movq	%r15, %rdi
100008e64: e8 c7 a0 ff ff              	callq	-24377 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100008e69: 48 8d 35 5c 2c 00 00        	leaq	11356(%rip), %rsi
100008e70: 48 89 c7                    	movq	%rax, %rdi
100008e73: e8 b8 a0 ff ff              	callq	-24392 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100008e78: 48 8d 35 cb 29 00 00        	leaq	10699(%rip), %rsi
100008e7f: 48 89 c7                    	movq	%rax, %rdi
100008e82: e8 a9 a0 ff ff              	callq	-24407 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100008e87: 48 89 c7                    	movq	%rax, %rdi
100008e8a: e8 d1 d0 ff ff              	callq	-12079 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100008e8f: 4c 89 ff                    	movq	%r15, %rdi
100008e92: be 60 00 00 00              	movl	$96, %esi
100008e97: e9 12 03 00 00              	jmp	786 <__ZN8LeafHash6insertEj+0xc9e>
100008e9c: 45 31 f6                    	xorl	%r14d, %r14d
100008e9f: e9 80 02 00 00              	jmp	640 <__ZN8LeafHash6insertEj+0xc14>
100008ea4: 41 be 01 00 00 00           	movl	$1, %r14d
100008eaa: e9 75 02 00 00              	jmp	629 <__ZN8LeafHash6insertEj+0xc14>
100008eaf: 41 be 02 00 00 00           	movl	$2, %r14d
100008eb5: e9 6a 02 00 00              	jmp	618 <__ZN8LeafHash6insertEj+0xc14>
100008eba: 41 be 03 00 00 00           	movl	$3, %r14d
100008ec0: e9 5f 02 00 00              	jmp	607 <__ZN8LeafHash6insertEj+0xc14>
100008ec5: 41 be 04 00 00 00           	movl	$4, %r14d
100008ecb: e9 54 02 00 00              	jmp	596 <__ZN8LeafHash6insertEj+0xc14>
100008ed0: 41 be 05 00 00 00           	movl	$5, %r14d
100008ed6: e9 49 02 00 00              	jmp	585 <__ZN8LeafHash6insertEj+0xc14>
100008edb: 41 be 06 00 00 00           	movl	$6, %r14d
100008ee1: e9 3e 02 00 00              	jmp	574 <__ZN8LeafHash6insertEj+0xc14>
100008ee6: 41 be 07 00 00 00           	movl	$7, %r14d
100008eec: e9 33 02 00 00              	jmp	563 <__ZN8LeafHash6insertEj+0xc14>
100008ef1: 41 be 08 00 00 00           	movl	$8, %r14d
100008ef7: e9 28 02 00 00              	jmp	552 <__ZN8LeafHash6insertEj+0xc14>
100008efc: 41 be 09 00 00 00           	movl	$9, %r14d
100008f02: e9 1d 02 00 00              	jmp	541 <__ZN8LeafHash6insertEj+0xc14>
100008f07: 41 be 0a 00 00 00           	movl	$10, %r14d
100008f0d: e9 12 02 00 00              	jmp	530 <__ZN8LeafHash6insertEj+0xc14>
100008f12: 41 be 0b 00 00 00           	movl	$11, %r14d
100008f18: e9 07 02 00 00              	jmp	519 <__ZN8LeafHash6insertEj+0xc14>
100008f1d: 41 be 0c 00 00 00           	movl	$12, %r14d
100008f23: e9 fc 01 00 00              	jmp	508 <__ZN8LeafHash6insertEj+0xc14>
100008f28: 41 be 0d 00 00 00           	movl	$13, %r14d
100008f2e: e9 f1 01 00 00              	jmp	497 <__ZN8LeafHash6insertEj+0xc14>
100008f33: 41 be 0e 00 00 00           	movl	$14, %r14d
100008f39: e9 e6 01 00 00              	jmp	486 <__ZN8LeafHash6insertEj+0xc14>
100008f3e: 41 be 0f 00 00 00           	movl	$15, %r14d
100008f44: e9 db 01 00 00              	jmp	475 <__ZN8LeafHash6insertEj+0xc14>
100008f49: 41 be 10 00 00 00           	movl	$16, %r14d
100008f4f: e9 d0 01 00 00              	jmp	464 <__ZN8LeafHash6insertEj+0xc14>
100008f54: 41 be 11 00 00 00           	movl	$17, %r14d
100008f5a: e9 c5 01 00 00              	jmp	453 <__ZN8LeafHash6insertEj+0xc14>
100008f5f: 41 be 12 00 00 00           	movl	$18, %r14d
100008f65: e9 ba 01 00 00              	jmp	442 <__ZN8LeafHash6insertEj+0xc14>
100008f6a: 41 be 13 00 00 00           	movl	$19, %r14d
100008f70: e9 af 01 00 00              	jmp	431 <__ZN8LeafHash6insertEj+0xc14>
100008f75: 41 be 14 00 00 00           	movl	$20, %r14d
100008f7b: e9 a4 01 00 00              	jmp	420 <__ZN8LeafHash6insertEj+0xc14>
100008f80: 41 be 15 00 00 00           	movl	$21, %r14d
100008f86: e9 99 01 00 00              	jmp	409 <__ZN8LeafHash6insertEj+0xc14>
100008f8b: 41 be 16 00 00 00           	movl	$22, %r14d
100008f91: e9 8e 01 00 00              	jmp	398 <__ZN8LeafHash6insertEj+0xc14>
100008f96: 41 be 17 00 00 00           	movl	$23, %r14d
100008f9c: e9 83 01 00 00              	jmp	387 <__ZN8LeafHash6insertEj+0xc14>
100008fa1: 41 be 18 00 00 00           	movl	$24, %r14d
100008fa7: e9 78 01 00 00              	jmp	376 <__ZN8LeafHash6insertEj+0xc14>
100008fac: 41 be 19 00 00 00           	movl	$25, %r14d
100008fb2: e9 6d 01 00 00              	jmp	365 <__ZN8LeafHash6insertEj+0xc14>
100008fb7: 41 be 1a 00 00 00           	movl	$26, %r14d
100008fbd: e9 62 01 00 00              	jmp	354 <__ZN8LeafHash6insertEj+0xc14>
100008fc2: 41 be 1b 00 00 00           	movl	$27, %r14d
100008fc8: e9 57 01 00 00              	jmp	343 <__ZN8LeafHash6insertEj+0xc14>
100008fcd: 41 be 1c 00 00 00           	movl	$28, %r14d
100008fd3: e9 4c 01 00 00              	jmp	332 <__ZN8LeafHash6insertEj+0xc14>
100008fd8: 41 be 1d 00 00 00           	movl	$29, %r14d
100008fde: e9 41 01 00 00              	jmp	321 <__ZN8LeafHash6insertEj+0xc14>
100008fe3: 41 be 1e 00 00 00           	movl	$30, %r14d
100008fe9: e9 36 01 00 00              	jmp	310 <__ZN8LeafHash6insertEj+0xc14>
100008fee: 41 be 1f 00 00 00           	movl	$31, %r14d
100008ff4: e9 2b 01 00 00              	jmp	299 <__ZN8LeafHash6insertEj+0xc14>
100008ff9: 41 be 20 00 00 00           	movl	$32, %r14d
100008fff: e9 20 01 00 00              	jmp	288 <__ZN8LeafHash6insertEj+0xc14>
100009004: 41 be 21 00 00 00           	movl	$33, %r14d
10000900a: e9 15 01 00 00              	jmp	277 <__ZN8LeafHash6insertEj+0xc14>
10000900f: 41 be 22 00 00 00           	movl	$34, %r14d
100009015: e9 0a 01 00 00              	jmp	266 <__ZN8LeafHash6insertEj+0xc14>
10000901a: 41 be 23 00 00 00           	movl	$35, %r14d
100009020: e9 ff 00 00 00              	jmp	255 <__ZN8LeafHash6insertEj+0xc14>
100009025: 41 be 24 00 00 00           	movl	$36, %r14d
10000902b: e9 f4 00 00 00              	jmp	244 <__ZN8LeafHash6insertEj+0xc14>
100009030: 41 be 25 00 00 00           	movl	$37, %r14d
100009036: e9 e9 00 00 00              	jmp	233 <__ZN8LeafHash6insertEj+0xc14>
10000903b: 41 be 26 00 00 00           	movl	$38, %r14d
100009041: e9 de 00 00 00              	jmp	222 <__ZN8LeafHash6insertEj+0xc14>
100009046: 41 be 27 00 00 00           	movl	$39, %r14d
10000904c: e9 d3 00 00 00              	jmp	211 <__ZN8LeafHash6insertEj+0xc14>
100009051: 41 be 28 00 00 00           	movl	$40, %r14d
100009057: e9 c8 00 00 00              	jmp	200 <__ZN8LeafHash6insertEj+0xc14>
10000905c: 41 be 29 00 00 00           	movl	$41, %r14d
100009062: e9 bd 00 00 00              	jmp	189 <__ZN8LeafHash6insertEj+0xc14>
100009067: 41 be 2a 00 00 00           	movl	$42, %r14d
10000906d: e9 b2 00 00 00              	jmp	178 <__ZN8LeafHash6insertEj+0xc14>
100009072: 41 be 2b 00 00 00           	movl	$43, %r14d
100009078: e9 a7 00 00 00              	jmp	167 <__ZN8LeafHash6insertEj+0xc14>
10000907d: 41 be 2c 00 00 00           	movl	$44, %r14d
100009083: e9 9c 00 00 00              	jmp	156 <__ZN8LeafHash6insertEj+0xc14>
100009088: 41 be 2d 00 00 00           	movl	$45, %r14d
10000908e: e9 91 00 00 00              	jmp	145 <__ZN8LeafHash6insertEj+0xc14>
100009093: 41 be 2e 00 00 00           	movl	$46, %r14d
100009099: e9 86 00 00 00              	jmp	134 <__ZN8LeafHash6insertEj+0xc14>
10000909e: 41 be 2f 00 00 00           	movl	$47, %r14d
1000090a4: eb 7e                       	jmp	126 <__ZN8LeafHash6insertEj+0xc14>
1000090a6: 41 be 30 00 00 00           	movl	$48, %r14d
1000090ac: eb 76                       	jmp	118 <__ZN8LeafHash6insertEj+0xc14>
1000090ae: 41 be 31 00 00 00           	movl	$49, %r14d
1000090b4: eb 6e                       	jmp	110 <__ZN8LeafHash6insertEj+0xc14>
1000090b6: 41 be 32 00 00 00           	movl	$50, %r14d
1000090bc: eb 66                       	jmp	102 <__ZN8LeafHash6insertEj+0xc14>
1000090be: 41 be 33 00 00 00           	movl	$51, %r14d
1000090c4: eb 5e                       	jmp	94 <__ZN8LeafHash6insertEj+0xc14>
1000090c6: 41 be 34 00 00 00           	movl	$52, %r14d
1000090cc: eb 56                       	jmp	86 <__ZN8LeafHash6insertEj+0xc14>
1000090ce: 41 be 35 00 00 00           	movl	$53, %r14d
1000090d4: eb 4e                       	jmp	78 <__ZN8LeafHash6insertEj+0xc14>
1000090d6: 41 be 36 00 00 00           	movl	$54, %r14d
1000090dc: eb 46                       	jmp	70 <__ZN8LeafHash6insertEj+0xc14>
1000090de: 41 be 37 00 00 00           	movl	$55, %r14d
1000090e4: eb 3e                       	jmp	62 <__ZN8LeafHash6insertEj+0xc14>
1000090e6: 41 be 38 00 00 00           	movl	$56, %r14d
1000090ec: eb 36                       	jmp	54 <__ZN8LeafHash6insertEj+0xc14>
1000090ee: 41 be 39 00 00 00           	movl	$57, %r14d
1000090f4: eb 2e                       	jmp	46 <__ZN8LeafHash6insertEj+0xc14>
1000090f6: 41 be 3a 00 00 00           	movl	$58, %r14d
1000090fc: eb 26                       	jmp	38 <__ZN8LeafHash6insertEj+0xc14>
1000090fe: 41 be 3b 00 00 00           	movl	$59, %r14d
100009104: eb 1e                       	jmp	30 <__ZN8LeafHash6insertEj+0xc14>
100009106: 41 be 3c 00 00 00           	movl	$60, %r14d
10000910c: eb 16                       	jmp	22 <__ZN8LeafHash6insertEj+0xc14>
10000910e: 41 be 3d 00 00 00           	movl	$61, %r14d
100009114: eb 0e                       	jmp	14 <__ZN8LeafHash6insertEj+0xc14>
100009116: 41 be 3e 00 00 00           	movl	$62, %r14d
10000911c: eb 06                       	jmp	6 <__ZN8LeafHash6insertEj+0xc14>
10000911e: 41 be 3f 00 00 00           	movl	$63, %r14d
100009124: 4c 8b 3d 05 2f 00 00        	movq	12037(%rip), %r15
10000912b: 48 8d 35 58 27 00 00        	leaq	10072(%rip), %rsi
100009132: 4c 89 ff                    	movq	%r15, %rdi
100009135: e8 f6 9d ff ff              	callq	-25098 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000913a: 48 89 c7                    	movq	%rax, %rdi
10000913d: e8 1e ce ff ff              	callq	-12770 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100009142: 4c 89 ff                    	movq	%r15, %rdi
100009145: 89 de                       	movl	%ebx, %esi
100009147: e8 22 1e 00 00              	callq	7714 <dyld_stub_binder+0x10000af6e>
10000914c: 48 8d 1d 0d 27 00 00        	leaq	9997(%rip), %rbx
100009153: 48 89 c7                    	movq	%rax, %rdi
100009156: 48 89 de                    	movq	%rbx, %rsi
100009159: e8 d2 9d ff ff              	callq	-25134 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000915e: 48 89 c7                    	movq	%rax, %rdi
100009161: 44 89 f6                    	movl	%r14d, %esi
100009164: e8 05 1e 00 00              	callq	7685 <dyld_stub_binder+0x10000af6e>
100009169: 48 89 c7                    	movq	%rax, %rdi
10000916c: e8 ef cd ff ff              	callq	-12817 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
100009171: 48 8d 35 b7 26 00 00        	leaq	9911(%rip), %rsi
100009178: 4c 89 ff                    	movq	%r15, %rdi
10000917b: e8 b0 9d ff ff              	callq	-25168 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100009180: 48 8d 35 45 29 00 00        	leaq	10565(%rip), %rsi
100009187: 48 89 c7                    	movq	%rax, %rdi
10000918a: e8 a1 9d ff ff              	callq	-25183 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000918f: 48 8d 35 b4 26 00 00        	leaq	9908(%rip), %rsi
100009196: 48 89 c7                    	movq	%rax, %rdi
100009199: e8 92 9d ff ff              	callq	-25198 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000919e: 48 89 c7                    	movq	%rax, %rdi
1000091a1: e8 ba cd ff ff              	callq	-12870 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
1000091a6: 4c 89 ff                    	movq	%r15, %rdi
1000091a9: be 7c 00 00 00              	movl	$124, %esi
1000091ae: e8 b5 1d 00 00              	callq	7605 <dyld_stub_binder+0x10000af68>
1000091b3: 48 89 c7                    	movq	%rax, %rdi
1000091b6: 48 89 de                    	movq	%rbx, %rsi
1000091b9: e8 72 9d ff ff              	callq	-25230 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000091be: 48 8d 35 fe 2a 00 00        	leaq	11006(%rip), %rsi
1000091c5: 48 89 c7                    	movq	%rax, %rdi
1000091c8: e8 63 9d ff ff              	callq	-25245 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
1000091cd: 48 89 c7                    	movq	%rax, %rdi
1000091d0: e8 8b cd ff ff              	callq	-12917 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
1000091d5: bf 01 00 00 00              	movl	$1, %edi
1000091da: e8 4f 1e 00 00              	callq	7759 <dyld_stub_binder+0x10000b02e>
1000091df: 90                          	nop

00000001000091e0 __ZN8LeafHash11getRecInfosEv:
1000091e0: 55                          	pushq	%rbp
1000091e1: 48 89 e5                    	movq	%rsp, %rbp
1000091e4: 41 57                       	pushq	%r15
1000091e6: 41 56                       	pushq	%r14
1000091e8: 41 55                       	pushq	%r13
1000091ea: 41 54                       	pushq	%r12
1000091ec: 53                          	pushq	%rbx
1000091ed: 48 83 ec 38                 	subq	$56, %rsp
1000091f1: 49 89 f7                    	movq	%rsi, %r15
1000091f4: 48 89 fb                    	movq	%rdi, %rbx
1000091f7: 48 c7 47 10 00 00 00 00     	movq	$0, 16(%rdi)
1000091ff: 48 c7 47 08 00 00 00 00     	movq	$0, 8(%rdi)
100009207: 48 c7 07 00 00 00 00        	movq	$0, (%rdi)
10000920e: 45 31 f6                    	xorl	%r14d, %r14d
100009211: 41 bd ff ff ff ff           	movl	$4294967295, %r13d
100009217: 48 89 75 a8                 	movq	%rsi, -88(%rbp)
10000921b: 48 89 7d c8                 	movq	%rdi, -56(%rbp)
10000921f: eb 43                       	jmp	67 <__ZN8LeafHash11getRecInfosEv+0x84>
100009221: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000922b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100009230: 41 89 3c 24                 	movl	%edi, (%r12)
100009234: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100009238: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
10000923c: 49 89 44 24 04              	movq	%rax, 4(%r12)
100009241: 49 89 4c 24 0c              	movq	%rcx, 12(%r12)
100009246: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000924a: 49 89 44 24 14              	movq	%rax, 20(%r12)
10000924f: 49 83 c4 1c                 	addq	$28, %r12
100009253: 4c 89 63 08                 	movq	%r12, 8(%rbx)
100009257: 49 ff c6                    	incq	%r14
10000925a: 49 83 fe 40                 	cmpq	$64, %r14
10000925e: 0f 84 5d 01 00 00           	je	349 <__ZN8LeafHash11getRecInfosEv+0x1e1>
100009264: 43 8b 3c b7                 	movl	(%r15,%r14,4), %edi
100009268: 4c 39 ef                    	cmpq	%r13, %rdi
10000926b: 74 ea                       	je	-22 <__ZN8LeafHash11getRecInfosEv+0x77>
10000926d: 48 8d 05 5c 79 00 00        	leaq	31068(%rip), %rax
100009274: 48 8b 00                    	movq	(%rax), %rax
100009277: 48 8d 0c 7f                 	leaq	(%rdi,%rdi,2), %rcx
10000927b: 48 8b 54 c8 10              	movq	16(%rax,%rcx,8), %rdx
100009280: 48 89 55 c0                 	movq	%rdx, -64(%rbp)
100009284: 48 8b 14 c8                 	movq	(%rax,%rcx,8), %rdx
100009288: 48 8b 44 c8 08              	movq	8(%rax,%rcx,8), %rax
10000928d: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100009291: 48 89 55 b0                 	movq	%rdx, -80(%rbp)
100009295: 4c 8b 63 08                 	movq	8(%rbx), %r12
100009299: 48 8b 43 10                 	movq	16(%rbx), %rax
10000929d: 49 39 c4                    	cmpq	%rax, %r12
1000092a0: 72 8e                       	jb	-114 <__ZN8LeafHash11getRecInfosEv+0x50>
1000092a2: 4c 8b 03                    	movq	(%rbx), %r8
1000092a5: 4d 29 c4                    	subq	%r8, %r12
1000092a8: 4c 89 e3                    	movq	%r12, %rbx
1000092ab: 48 c1 fb 02                 	sarq	$2, %rbx
1000092af: 48 be b7 6d db b6 6d db b6 6d       	movabsq	$7905747460161236407, %rsi
1000092b9: 48 0f af de                 	imulq	%rsi, %rbx
1000092bd: 48 8d 4b 01                 	leaq	1(%rbx), %rcx
1000092c1: 48 ba 24 49 92 24 49 92 24 09       	movabsq	$658812288346769700, %rdx
1000092cb: 48 39 d1                    	cmpq	%rdx, %rcx
1000092ce: 0f 87 ff 00 00 00           	ja	255 <__ZN8LeafHash11getRecInfosEv+0x1f3>
1000092d4: 4c 29 c0                    	subq	%r8, %rax
1000092d7: 48 c1 f8 02                 	sarq	$2, %rax
1000092db: 48 0f af c6                 	imulq	%rsi, %rax
1000092df: 4c 8d 2c 00                 	leaq	(%rax,%rax), %r13
1000092e3: 49 39 cd                    	cmpq	%rcx, %r13
1000092e6: 4c 0f 42 e9                 	cmovbq	%rcx, %r13
1000092ea: 48 b9 92 24 49 92 24 49 92 04       	movabsq	$329406144173384850, %rcx
1000092f4: 48 39 c8                    	cmpq	%rcx, %rax
1000092f7: 72 03                       	jb	3 <__ZN8LeafHash11getRecInfosEv+0x11c>
1000092f9: 49 89 d5                    	movq	%rdx, %r13
1000092fc: 4d 85 ed                    	testq	%r13, %r13
1000092ff: 74 2a                       	je	42 <__ZN8LeafHash11getRecInfosEv+0x14b>
100009301: 4c 89 45 d0                 	movq	%r8, -48(%rbp)
100009305: 49 39 d5                    	cmpq	%rdx, %r13
100009308: 0f 87 d0 00 00 00           	ja	208 <__ZN8LeafHash11getRecInfosEv+0x1fe>
10000930e: 49 89 ff                    	movq	%rdi, %r15
100009311: 4b 8d 44 ed 00              	leaq	(%r13,%r13,8), %rax
100009316: 48 8d 3c 40                 	leaq	(%rax,%rax,2), %rdi
10000931a: 4c 01 ef                    	addq	%r13, %rdi
10000931d: e8 be 1c 00 00              	callq	7358 <dyld_stub_binder+0x10000afe0>
100009322: 4c 8b 45 d0                 	movq	-48(%rbp), %r8
100009326: 4c 89 ff                    	movq	%r15, %rdi
100009329: eb 02                       	jmp	2 <__ZN8LeafHash11getRecInfosEv+0x14d>
10000932b: 31 c0                       	xorl	%eax, %eax
10000932d: 48 8d 0c db                 	leaq	(%rbx,%rbx,8), %rcx
100009331: 48 8d 0c 49                 	leaq	(%rcx,%rcx,2), %rcx
100009335: 48 01 d9                    	addq	%rbx, %rcx
100009338: 48 8d 1c 08                 	leaq	(%rax,%rcx), %rbx
10000933c: 4b 8d 54 ed 00              	leaq	(%r13,%r13,8), %rdx
100009341: 4c 8d 3c 52                 	leaq	(%rdx,%rdx,2), %r15
100009345: 4d 01 ef                    	addq	%r13, %r15
100009348: 49 01 c7                    	addq	%rax, %r15
10000934b: 89 3c 08                    	movl	%edi, (%rax,%rcx)
10000934e: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
100009352: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
100009356: 48 89 54 08 04              	movq	%rdx, 4(%rax,%rcx)
10000935b: 48 89 74 08 0c              	movq	%rsi, 12(%rax,%rcx)
100009360: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100009364: 48 89 54 08 14              	movq	%rdx, 20(%rax,%rcx)
100009369: 48 89 df                    	movq	%rbx, %rdi
10000936c: 4c 8d 6c 08 1c              	leaq	28(%rax,%rcx), %r13
100009371: 4c 29 e7                    	subq	%r12, %rdi
100009374: 4d 85 e4                    	testq	%r12, %r12
100009377: 7e 19                       	jle	25 <__ZN8LeafHash11getRecInfosEv+0x1b2>
100009379: 4c 89 c6                    	movq	%r8, %rsi
10000937c: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
100009380: 4c 89 e2                    	movq	%r12, %rdx
100009383: 4c 89 c3                    	movq	%r8, %rbx
100009386: e8 d3 1c 00 00              	callq	7379 <dyld_stub_binder+0x10000b05e>
10000938b: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000938f: 49 89 d8                    	movq	%rbx, %r8
100009392: 48 8b 5d c8                 	movq	-56(%rbp), %rbx
100009396: 48 89 3b                    	movq	%rdi, (%rbx)
100009399: 4c 89 6b 08                 	movq	%r13, 8(%rbx)
10000939d: 4c 89 7b 10                 	movq	%r15, 16(%rbx)
1000093a1: 4d 85 c0                    	testq	%r8, %r8
1000093a4: 4c 8b 7d a8                 	movq	-88(%rbp), %r15
1000093a8: 41 bd ff ff ff ff           	movl	$4294967295, %r13d
1000093ae: 0f 84 a3 fe ff ff           	je	-349 <__ZN8LeafHash11getRecInfosEv+0x77>
1000093b4: 4c 89 c7                    	movq	%r8, %rdi
1000093b7: e8 18 1c 00 00              	callq	7192 <dyld_stub_binder+0x10000afd4>
1000093bc: e9 96 fe ff ff              	jmp	-362 <__ZN8LeafHash11getRecInfosEv+0x77>
1000093c1: 48 89 d8                    	movq	%rbx, %rax
1000093c4: 48 83 c4 38                 	addq	$56, %rsp
1000093c8: 5b                          	popq	%rbx
1000093c9: 41 5c                       	popq	%r12
1000093cb: 41 5d                       	popq	%r13
1000093cd: 41 5e                       	popq	%r14
1000093cf: 41 5f                       	popq	%r15
1000093d1: 5d                          	popq	%rbp
1000093d2: c3                          	retq
1000093d3: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
1000093d7: e8 4a 1b 00 00              	callq	6986 <dyld_stub_binder+0x10000af26>
1000093dc: eb 05                       	jmp	5 <__ZN8LeafHash11getRecInfosEv+0x203>
1000093de: e8 ad f0 ff ff              	callq	-3923 <__ZNSt3__1L20__throw_length_errorEPKc>
1000093e3: 0f 0b                       	ud2
1000093e5: 48 89 c3                    	movq	%rax, %rbx
1000093e8: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000093ec: 48 8b 00                    	movq	(%rax), %rax
1000093ef: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000093f3: eb 03                       	jmp	3 <__ZN8LeafHash11getRecInfosEv+0x218>
1000093f5: 48 89 c3                    	movq	%rax, %rbx
1000093f8: 48 83 7d d0 00              	cmpq	$0, -48(%rbp)
1000093fd: 74 11                       	je	17 <__ZN8LeafHash11getRecInfosEv+0x230>
1000093ff: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100009403: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100009407: 48 89 78 08                 	movq	%rdi, 8(%rax)
10000940b: e8 c4 1b 00 00              	callq	7108 <dyld_stub_binder+0x10000afd4>
100009410: 48 89 df                    	movq	%rbx, %rdi
100009413: e8 08 1b 00 00              	callq	6920 <dyld_stub_binder+0x10000af20>
100009418: 0f 0b                       	ud2
10000941a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100009420 __ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv:
100009420: 55                          	pushq	%rbp
100009421: 48 89 e5                    	movq	%rsp, %rbp
100009424: 41 57                       	pushq	%r15
100009426: 41 56                       	pushq	%r14
100009428: 41 55                       	pushq	%r13
10000942a: 41 54                       	pushq	%r12
10000942c: 53                          	pushq	%rbx
10000942d: 48 83 ec 28                 	subq	$40, %rsp
100009431: 48 8b 47 20                 	movq	32(%rdi), %rax
100009435: 48 3d 00 01 00 00           	cmpq	$256, %rax
10000943b: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
10000943f: 0f 82 9d 00 00 00           	jb	157 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0xc2>
100009445: 48 05 00 ff ff ff           	addq	$-256, %rax
10000944b: 48 89 47 20                 	movq	%rax, 32(%rdi)
10000944f: 48 8b 5f 08                 	movq	8(%rdi), %rbx
100009453: 4c 8b 7f 10                 	movq	16(%rdi), %r15
100009457: 48 8b 13                    	movq	(%rbx), %rdx
10000945a: 48 83 c3 08                 	addq	$8, %rbx
10000945e: 48 89 5f 08                 	movq	%rbx, 8(%rdi)
100009462: 48 8b 47 18                 	movq	24(%rdi), %rax
100009466: 49 39 c7                    	cmpq	%rax, %r15
100009469: 0f 85 6f 06 00 00           	jne	1647 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x6be>
10000946f: 4c 8b 37                    	movq	(%rdi), %r14
100009472: 48 89 d9                    	movq	%rbx, %rcx
100009475: 4c 29 f1                    	subq	%r14, %rcx
100009478: 0f 86 05 02 00 00           	jbe	517 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x263>
10000947e: 48 c1 f9 03                 	sarq	$3, %rcx
100009482: 48 8d 41 01                 	leaq	1(%rcx), %rax
100009486: 48 c1 e8 3f                 	shrq	$63, %rax
10000948a: 48 8d 44 01 01              	leaq	1(%rcx,%rax), %rax
10000948f: 48 d1 f8                    	sarq	%rax
100009492: 49 89 c5                    	movq	%rax, %r13
100009495: 49 f7 dd                    	negq	%r13
100009498: 48 c1 e0 03                 	shlq	$3, %rax
10000949c: 49 89 de                    	movq	%rbx, %r14
10000949f: 49 29 c6                    	subq	%rax, %r14
1000094a2: 49 29 df                    	subq	%rbx, %r15
1000094a5: 4d 89 fc                    	movq	%r15, %r12
1000094a8: 49 c1 fc 03                 	sarq	$3, %r12
1000094ac: 4d 85 ff                    	testq	%r15, %r15
1000094af: 74 1c                       	je	28 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0xad>
1000094b1: 4c 89 f7                    	movq	%r14, %rdi
1000094b4: 48 89 de                    	movq	%rbx, %rsi
1000094b7: 48 89 d3                    	movq	%rdx, %rbx
1000094ba: 4c 89 fa                    	movq	%r15, %rdx
1000094bd: e8 a2 1b 00 00              	callq	7074 <dyld_stub_binder+0x10000b064>
1000094c2: 48 89 da                    	movq	%rbx, %rdx
1000094c5: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000094c9: 48 8b 5f 08                 	movq	8(%rdi), %rbx
1000094cd: 4f 8d 3c e6                 	leaq	(%r14,%r12,8), %r15
1000094d1: 4c 89 7f 10                 	movq	%r15, 16(%rdi)
1000094d5: 4a 8d 04 eb                 	leaq	(%rbx,%r13,8), %rax
1000094d9: 48 89 47 08                 	movq	%rax, 8(%rdi)
1000094dd: e9 fc 05 00 00              	jmp	1532 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x6be>
1000094e2: 48 8b 77 08                 	movq	8(%rdi), %rsi
1000094e6: 4c 8b 77 10                 	movq	16(%rdi), %r14
1000094ea: 4d 89 f4                    	movq	%r14, %r12
1000094ed: 49 29 f4                    	subq	%rsi, %r12
1000094f0: 49 c1 fc 03                 	sarq	$3, %r12
1000094f4: 48 8b 4f 18                 	movq	24(%rdi), %rcx
1000094f8: 48 89 c8                    	movq	%rcx, %rax
1000094fb: 48 2b 07                    	subq	(%rdi), %rax
1000094fe: 48 89 c2                    	movq	%rax, %rdx
100009501: 48 c1 fa 03                 	sarq	$3, %rdx
100009505: 49 39 d4                    	cmpq	%rdx, %r12
100009508: 0f 83 bf 00 00 00           	jae	191 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x1ad>
10000950e: bf 00 10 00 00              	movl	$4096, %edi
100009513: 4c 39 f1                    	cmpq	%r14, %rcx
100009516: 0f 85 1b 01 00 00           	jne	283 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x217>
10000951c: e8 bf 1a 00 00              	callq	6847 <dyld_stub_binder+0x10000afe0>
100009521: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100009525: 48 8d 75 b8                 	leaq	-72(%rbp), %rsi
100009529: 48 8b 5d d0                 	movq	-48(%rbp), %rbx
10000952d: 48 89 df                    	movq	%rbx, %rdi
100009530: e8 fb 08 00 00              	callq	2299 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_>
100009535: 48 89 da                    	movq	%rbx, %rdx
100009538: 48 8b 5b 08                 	movq	8(%rbx), %rbx
10000953c: 4c 8b 7a 10                 	movq	16(%rdx), %r15
100009540: 48 8b 33                    	movq	(%rbx), %rsi
100009543: 48 83 c3 08                 	addq	$8, %rbx
100009547: 48 89 5a 08                 	movq	%rbx, 8(%rdx)
10000954b: 48 8b 42 18                 	movq	24(%rdx), %rax
10000954f: 49 39 c7                    	cmpq	%rax, %r15
100009552: 0f 85 66 06 00 00           	jne	1638 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x79e>
100009558: 4c 8b 32                    	movq	(%rdx), %r14
10000955b: 48 89 d9                    	movq	%rbx, %rcx
10000955e: 4c 29 f1                    	subq	%r14, %rcx
100009561: 0f 86 2a 04 00 00           	jbe	1066 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x571>
100009567: 48 c1 f9 03                 	sarq	$3, %rcx
10000956b: 48 8d 41 01                 	leaq	1(%rcx), %rax
10000956f: 48 c1 e8 3f                 	shrq	$63, %rax
100009573: 48 8d 44 01 01              	leaq	1(%rcx,%rax), %rax
100009578: 48 d1 f8                    	sarq	%rax
10000957b: 49 89 c5                    	movq	%rax, %r13
10000957e: 49 f7 dd                    	negq	%r13
100009581: 48 c1 e0 03                 	shlq	$3, %rax
100009585: 49 89 de                    	movq	%rbx, %r14
100009588: 49 29 c6                    	subq	%rax, %r14
10000958b: 49 29 df                    	subq	%rbx, %r15
10000958e: 4d 89 fc                    	movq	%r15, %r12
100009591: 49 c1 fc 03                 	sarq	$3, %r12
100009595: 4d 85 ff                    	testq	%r15, %r15
100009598: 74 1e                       	je	30 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x198>
10000959a: 4c 89 f7                    	movq	%r14, %rdi
10000959d: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
1000095a1: 48 89 de                    	movq	%rbx, %rsi
1000095a4: 4c 89 fa                    	movq	%r15, %rdx
1000095a7: e8 b8 1a 00 00              	callq	6840 <dyld_stub_binder+0x10000b064>
1000095ac: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
1000095b0: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
1000095b4: 48 8b 5a 08                 	movq	8(%rdx), %rbx
1000095b8: 4f 8d 3c e6                 	leaq	(%r14,%r12,8), %r15
1000095bc: 4c 89 7a 10                 	movq	%r15, 16(%rdx)
1000095c0: 4a 8d 04 eb                 	leaq	(%rbx,%r13,8), %rax
1000095c4: 48 89 42 08                 	movq	%rax, 8(%rdx)
1000095c8: e9 f1 05 00 00              	jmp	1521 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x79e>
1000095cd: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
1000095d1: 48 89 c1                    	movq	%rax, %rcx
1000095d4: 48 c1 f9 02                 	sarq	$2, %rcx
1000095d8: 48 85 c0                    	testq	%rax, %rax
1000095db: 41 bf 01 00 00 00           	movl	$1, %r15d
1000095e1: 4c 0f 45 f9                 	cmovneq	%rcx, %r15
1000095e5: 4c 89 f8                    	movq	%r15, %rax
1000095e8: 48 c1 e8 3d                 	shrq	$61, %rax
1000095ec: 0f 85 e0 05 00 00           	jne	1504 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x7b2>
1000095f2: 4a 8d 3c fd 00 00 00 00     	leaq	(,%r15,8), %rdi
1000095fa: e8 e1 19 00 00              	callq	6625 <dyld_stub_binder+0x10000afe0>
1000095ff: 48 89 c3                    	movq	%rax, %rbx
100009602: bf 00 10 00 00              	movl	$4096, %edi
100009607: e8 d4 19 00 00              	callq	6612 <dyld_stub_binder+0x10000afe0>
10000960c: 4e 8d 2c e3                 	leaq	(%rbx,%r12,8), %r13
100009610: 4e 8d 04 fb                 	leaq	(%rbx,%r15,8), %r8
100009614: 4d 39 fc                    	cmpq	%r15, %r12
100009617: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
10000961b: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
10000961f: 74 31                       	je	49 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x232>
100009621: 49 89 45 00                 	movq	%rax, (%r13)
100009625: 4d 8d 65 08                 	leaq	8(%r13), %r12
100009629: 49 39 d6                    	cmpq	%rdx, %r14
10000962c: 0f 85 a6 01 00 00           	jne	422 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x3b8>
100009632: e9 57 01 00 00              	jmp	343 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x36e>
100009637: e8 a4 19 00 00              	callq	6564 <dyld_stub_binder+0x10000afe0>
10000963c: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100009640: 48 8d 75 b8                 	leaq	-72(%rbp), %rsi
100009644: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100009648: e8 c3 05 00 00              	callq	1475 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_>
10000964d: e9 94 04 00 00              	jmp	1172 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x6c6>
100009652: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100009656: 4c 89 e8                    	movq	%r13, %rax
100009659: 48 29 d8                    	subq	%rbx, %rax
10000965c: 0f 86 b6 00 00 00           	jbe	182 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x2f8>
100009662: 48 c1 f8 03                 	sarq	$3, %rax
100009666: 48 8d 48 01                 	leaq	1(%rax), %rcx
10000966a: 48 c1 e9 3f                 	shrq	$63, %rcx
10000966e: 48 8d 44 08 01              	leaq	1(%rax,%rcx), %rax
100009673: 48 c1 e0 02                 	shlq	$2, %rax
100009677: 48 83 e0 f8                 	andq	$-8, %rax
10000967b: 49 29 c5                    	subq	%rax, %r13
10000967e: e9 fa 00 00 00              	jmp	250 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x35d>
100009683: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
100009687: 4c 29 f0                    	subq	%r14, %rax
10000968a: 48 89 c1                    	movq	%rax, %rcx
10000968d: 48 c1 f9 02                 	sarq	$2, %rcx
100009691: 48 85 c0                    	testq	%rax, %rax
100009694: 41 bd 01 00 00 00           	movl	$1, %r13d
10000969a: 4c 0f 45 e9                 	cmovneq	%rcx, %r13
10000969e: 4c 89 e8                    	movq	%r13, %rax
1000096a1: 48 c1 e8 3d                 	shrq	$61, %rax
1000096a5: 0f 85 27 05 00 00           	jne	1319 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x7b2>
1000096ab: 4d 89 ec                    	movq	%r13, %r12
1000096ae: 49 c1 ec 02                 	shrq	$2, %r12
1000096b2: 4a 8d 3c ed 00 00 00 00     	leaq	(,%r13,8), %rdi
1000096ba: e8 21 19 00 00              	callq	6433 <dyld_stub_binder+0x10000afe0>
1000096bf: 4e 8d 14 e0                 	leaq	(%rax,%r12,8), %r10
1000096c3: 4d 89 d1                    	movq	%r10, %r9
1000096c6: 4e 8d 04 e8                 	leaq	(%rax,%r13,8), %r8
1000096ca: 49 29 df                    	subq	%rbx, %r15
1000096cd: 0f 84 b5 02 00 00           	je	693 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x568>
1000096d3: 49 8d 57 f8                 	leaq	-8(%r15), %rdx
1000096d7: 89 d6                       	movl	%edx, %esi
1000096d9: c1 ee 03                    	shrl	$3, %esi
1000096dc: ff c6                       	incl	%esi
1000096de: 48 83 e6 07                 	andq	$7, %rsi
1000096e2: 0f 84 33 03 00 00           	je	819 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x5fb>
1000096e8: 48 f7 de                    	negq	%rsi
1000096eb: 4c 89 cf                    	movq	%r9, %rdi
1000096ee: 66 90                       	nop
1000096f0: 48 8b 0b                    	movq	(%rbx), %rcx
1000096f3: 48 89 0f                    	movq	%rcx, (%rdi)
1000096f6: 48 83 c7 08                 	addq	$8, %rdi
1000096fa: 48 83 c3 08                 	addq	$8, %rbx
1000096fe: 48 ff c6                    	incq	%rsi
100009701: 75 ed                       	jne	-19 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x2d0>
100009703: 48 89 fe                    	movq	%rdi, %rsi
100009706: 4d 01 fa                    	addq	%r15, %r10
100009709: 48 83 fa 38                 	cmpq	$56, %rdx
10000970d: 0f 83 1b 03 00 00           	jae	795 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x60e>
100009713: e9 92 03 00 00              	jmp	914 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x68a>
100009718: 49 89 df                    	movq	%rbx, %r15
10000971b: 49 29 d8                    	subq	%rbx, %r8
10000971e: 4c 89 c0                    	movq	%r8, %rax
100009721: 48 c1 f8 02                 	sarq	$2, %rax
100009725: 4d 85 c0                    	testq	%r8, %r8
100009728: bb 01 00 00 00              	movl	$1, %ebx
10000972d: 48 0f 45 d8                 	cmovneq	%rax, %rbx
100009731: 48 b8 ff ff ff ff ff ff ff 1f       	movabsq	$2305843009213693951, %rax
10000973b: 48 39 c3                    	cmpq	%rax, %rbx
10000973e: 0f 87 93 04 00 00           	ja	1171 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x7b7>
100009744: 48 8d 3c dd 00 00 00 00     	leaq	(,%rbx,8), %rdi
10000974c: e8 8f 18 00 00              	callq	6287 <dyld_stub_binder+0x10000afe0>
100009751: 49 89 c4                    	movq	%rax, %r12
100009754: 48 89 d8                    	movq	%rbx, %rax
100009757: 48 83 e0 fc                 	andq	$-4, %rax
10000975b: 4d 8d 2c 44                 	leaq	(%r12,%rax,2), %r13
10000975f: 49 8d 1c dc                 	leaq	(%r12,%rbx,8), %rbx
100009763: 4c 89 ff                    	movq	%r15, %rdi
100009766: e8 69 18 00 00              	callq	6249 <dyld_stub_binder+0x10000afd4>
10000976b: 49 89 d8                    	movq	%rbx, %r8
10000976e: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100009772: 48 8b 56 08                 	movq	8(%rsi), %rdx
100009776: 4c 8b 76 10                 	movq	16(%rsi), %r14
10000977a: 4c 89 e3                    	movq	%r12, %rbx
10000977d: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100009781: 49 89 45 00                 	movq	%rax, (%r13)
100009785: 4d 8d 65 08                 	leaq	8(%r13), %r12
100009789: 49 39 d6                    	cmpq	%rdx, %r14
10000978c: 75 4a                       	jne	74 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x3b8>
10000978e: 48 8b 3e                    	movq	(%rsi), %rdi
100009791: 48 89 1e                    	movq	%rbx, (%rsi)
100009794: 4c 89 6e 08                 	movq	%r13, 8(%rsi)
100009798: 4c 89 66 10                 	movq	%r12, 16(%rsi)
10000979c: 4c 89 46 18                 	movq	%r8, 24(%rsi)
1000097a0: 48 85 ff                    	testq	%rdi, %rdi
1000097a3: 0f 84 3d 03 00 00           	je	829 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x6c6>
1000097a9: 48 83 c4 28                 	addq	$40, %rsp
1000097ad: 5b                          	popq	%rbx
1000097ae: 41 5c                       	popq	%r12
1000097b0: 41 5d                       	popq	%r13
1000097b2: 41 5e                       	popq	%r14
1000097b4: 41 5f                       	popq	%r15
1000097b6: 5d                          	popq	%rbp
1000097b7: e9 18 18 00 00              	jmp	6168 <dyld_stub_binder+0x10000afd4>
1000097bc: 0f 1f 40 00                 	nopl	(%rax)
1000097c0: 4d 89 ef                    	movq	%r13, %r15
1000097c3: 49 83 c6 f8                 	addq	$-8, %r14
1000097c7: 49 8b 06                    	movq	(%r14), %rax
1000097ca: 49 89 47 f8                 	movq	%rax, -8(%r15)
1000097ce: 49 83 c5 f8                 	addq	$-8, %r13
1000097d2: 4c 3b 76 08                 	cmpq	8(%rsi), %r14
1000097d6: 74 b6                       	je	-74 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x36e>
1000097d8: 49 39 dd                    	cmpq	%rbx, %r13
1000097db: 75 e3                       	jne	-29 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x3a0>
1000097dd: 4d 39 c4                    	cmpq	%r8, %r12
1000097e0: 73 55                       	jae	85 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x417>
1000097e2: 48 89 5d c8                 	movq	%rbx, -56(%rbp)
1000097e6: 4c 89 c0                    	movq	%r8, %rax
1000097e9: 4c 29 e0                    	subq	%r12, %rax
1000097ec: 48 c1 f8 03                 	sarq	$3, %rax
1000097f0: 48 8d 48 01                 	leaq	1(%rax), %rcx
1000097f4: 48 c1 e9 3f                 	shrq	$63, %rcx
1000097f8: 48 8d 44 08 01              	leaq	1(%rax,%rcx), %rax
1000097fd: 48 83 e0 fe                 	andq	$-2, %rax
100009801: 49 8d 1c 84                 	leaq	(%r12,%rax,4), %rbx
100009805: 49 89 df                    	movq	%rbx, %r15
100009808: 4d 29 ec                    	subq	%r13, %r12
10000980b: 74 1e                       	je	30 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x40b>
10000980d: 49 89 df                    	movq	%rbx, %r15
100009810: 4d 29 e7                    	subq	%r12, %r15
100009813: 4c 89 ff                    	movq	%r15, %rdi
100009816: 4c 89 ee                    	movq	%r13, %rsi
100009819: 4c 89 e2                    	movq	%r12, %rdx
10000981c: 4d 89 c4                    	movq	%r8, %r12
10000981f: e8 40 18 00 00              	callq	6208 <dyld_stub_binder+0x10000b064>
100009824: 4d 89 e0                    	movq	%r12, %r8
100009827: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
10000982b: 4d 89 fd                    	movq	%r15, %r13
10000982e: 49 89 dc                    	movq	%rbx, %r12
100009831: 48 8b 5d c8                 	movq	-56(%rbp), %rbx
100009835: eb 8c                       	jmp	-116 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x3a3>
100009837: 49 89 df                    	movq	%rbx, %r15
10000983a: 49 29 d8                    	subq	%rbx, %r8
10000983d: 4c 89 c3                    	movq	%r8, %rbx
100009840: 48 c1 fb 02                 	sarq	$2, %rbx
100009844: 4d 85 c0                    	testq	%r8, %r8
100009847: b8 01 00 00 00              	movl	$1, %eax
10000984c: 48 0f 44 d8                 	cmoveq	%rax, %rbx
100009850: 48 b8 ff ff ff ff ff ff ff 1f       	movabsq	$2305843009213693951, %rax
10000985a: 48 39 c3                    	cmpq	%rax, %rbx
10000985d: 0f 87 68 03 00 00           	ja	872 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x7ab>
100009863: 48 8d 3c dd 00 00 00 00     	leaq	(,%rbx,8), %rdi
10000986b: e8 70 17 00 00              	callq	6000 <dyld_stub_binder+0x10000afe0>
100009870: 48 8d 73 03                 	leaq	3(%rbx), %rsi
100009874: 48 c1 ee 02                 	shrq	$2, %rsi
100009878: 4c 8d 14 f0                 	leaq	(%rax,%rsi,8), %r10
10000987c: 4d 89 d7                    	movq	%r10, %r15
10000987f: 4c 8d 0c d8                 	leaq	(%rax,%rbx,8), %r9
100009883: 4d 29 ec                    	subq	%r13, %r12
100009886: 4c 89 4d c8                 	movq	%r9, -56(%rbp)
10000988a: 0f 84 da 00 00 00           	je	218 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x54a>
100009890: 4d 8d 44 24 f8              	leaq	-8(%r12), %r8
100009895: 44 89 c2                    	movl	%r8d, %edx
100009898: c1 ea 03                    	shrl	$3, %edx
10000989b: ff c2                       	incl	%edx
10000989d: 48 83 e2 07                 	andq	$7, %rdx
1000098a1: 74 31                       	je	49 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x4b4>
1000098a3: 48 f7 da                    	negq	%rdx
1000098a6: 4c 89 ff                    	movq	%r15, %rdi
1000098a9: 4c 89 e9                    	movq	%r13, %rcx
1000098ac: 0f 1f 40 00                 	nopl	(%rax)
1000098b0: 48 8b 19                    	movq	(%rcx), %rbx
1000098b3: 48 89 1f                    	movq	%rbx, (%rdi)
1000098b6: 48 83 c7 08                 	addq	$8, %rdi
1000098ba: 48 83 c1 08                 	addq	$8, %rcx
1000098be: 48 ff c2                    	incq	%rdx
1000098c1: 75 ed                       	jne	-19 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x490>
1000098c3: 48 89 fa                    	movq	%rdi, %rdx
1000098c6: 4d 01 e2                    	addq	%r12, %r10
1000098c9: 49 83 f8 38                 	cmpq	$56, %r8
1000098cd: 73 1b                       	jae	27 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x4ca>
1000098cf: e9 96 00 00 00              	jmp	150 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x54a>
1000098d4: 4c 89 ff                    	movq	%r15, %rdi
1000098d7: 4c 89 fa                    	movq	%r15, %rdx
1000098da: 4c 89 e9                    	movq	%r13, %rcx
1000098dd: 4d 01 e2                    	addq	%r12, %r10
1000098e0: 49 83 f8 38                 	cmpq	$56, %r8
1000098e4: 0f 82 80 00 00 00           	jb	128 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x54a>
1000098ea: 49 c1 fc 03                 	sarq	$3, %r12
1000098ee: 48 c1 e6 03                 	shlq	$3, %rsi
1000098f2: 4a 8d 34 e6                 	leaq	(%rsi,%r12,8), %rsi
1000098f6: 48 29 fe                    	subq	%rdi, %rsi
1000098f9: 49 89 c1                    	movq	%rax, %r9
1000098fc: 49 01 f1                    	addq	%rsi, %r9
1000098ff: 4c 8d 47 40                 	leaq	64(%rdi), %r8
100009903: 31 db                       	xorl	%ebx, %ebx
100009905: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000990f: 90                          	nop
100009910: 48 8b 34 19                 	movq	(%rcx,%rbx), %rsi
100009914: 48 89 32                    	movq	%rsi, (%rdx)
100009917: 48 8b 74 19 08              	movq	8(%rcx,%rbx), %rsi
10000991c: 48 89 74 1f 08              	movq	%rsi, 8(%rdi,%rbx)
100009921: 48 8b 74 19 10              	movq	16(%rcx,%rbx), %rsi
100009926: 48 89 74 1f 10              	movq	%rsi, 16(%rdi,%rbx)
10000992b: 48 8b 74 19 18              	movq	24(%rcx,%rbx), %rsi
100009930: 48 89 74 1f 18              	movq	%rsi, 24(%rdi,%rbx)
100009935: 48 8b 74 19 20              	movq	32(%rcx,%rbx), %rsi
10000993a: 48 89 74 1f 20              	movq	%rsi, 32(%rdi,%rbx)
10000993f: 48 8b 74 19 28              	movq	40(%rcx,%rbx), %rsi
100009944: 48 89 74 1f 28              	movq	%rsi, 40(%rdi,%rbx)
100009949: 48 8b 74 19 30              	movq	48(%rcx,%rbx), %rsi
10000994e: 48 89 74 1f 30              	movq	%rsi, 48(%rdi,%rbx)
100009953: 48 8b 74 19 38              	movq	56(%rcx,%rbx), %rsi
100009958: 48 89 74 1f 38              	movq	%rsi, 56(%rdi,%rbx)
10000995d: 49 8d 14 18                 	leaq	(%r8,%rbx), %rdx
100009961: 48 83 c3 40                 	addq	$64, %rbx
100009965: 49 39 d9                    	cmpq	%rbx, %r9
100009968: 75 a6                       	jne	-90 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x4f0>
10000996a: 4d 89 d4                    	movq	%r10, %r12
10000996d: 48 89 c3                    	movq	%rax, %rbx
100009970: 4c 89 ef                    	movq	%r13, %rdi
100009973: e8 5c 16 00 00              	callq	5724 <dyld_stub_binder+0x10000afd4>
100009978: 4d 89 fd                    	movq	%r15, %r13
10000997b: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
10000997f: 4c 8b 45 c8                 	movq	-56(%rbp), %r8
100009983: e9 3b fe ff ff              	jmp	-453 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x3a3>
100009988: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000998c: e9 20 01 00 00              	jmp	288 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x691>
100009991: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100009995: 4c 29 f0                    	subq	%r14, %rax
100009998: 48 89 c1                    	movq	%rax, %rcx
10000999b: 48 c1 f9 02                 	sarq	$2, %rcx
10000999f: 48 85 c0                    	testq	%rax, %rax
1000099a2: 41 bd 01 00 00 00           	movl	$1, %r13d
1000099a8: 4c 0f 45 e9                 	cmovneq	%rcx, %r13
1000099ac: 4c 89 e8                    	movq	%r13, %rax
1000099af: 48 c1 e8 3d                 	shrq	$61, %rax
1000099b3: 0f 85 19 02 00 00           	jne	537 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x7b2>
1000099b9: 4d 89 ec                    	movq	%r13, %r12
1000099bc: 49 c1 ec 02                 	shrq	$2, %r12
1000099c0: 4a 8d 3c ed 00 00 00 00     	leaq	(,%r13,8), %rdi
1000099c8: e8 13 16 00 00              	callq	5651 <dyld_stub_binder+0x10000afe0>
1000099cd: 4e 8d 14 e0                 	leaq	(%rax,%r12,8), %r10
1000099d1: 4d 89 d1                    	movq	%r10, %r9
1000099d4: 4e 8d 04 e8                 	leaq	(%rax,%r13,8), %r8
1000099d8: 49 29 df                    	subq	%rbx, %r15
1000099db: 0f 84 14 01 00 00           	je	276 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x6d5>
1000099e1: 49 8d 57 f8                 	leaq	-8(%r15), %rdx
1000099e5: 89 d6                       	movl	%edx, %esi
1000099e7: c1 ee 03                    	shrl	$3, %esi
1000099ea: ff c6                       	incl	%esi
1000099ec: 48 83 e6 07                 	andq	$7, %rsi
1000099f0: 0f 84 08 01 00 00           	je	264 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x6de>
1000099f6: 48 f7 de                    	negq	%rsi
1000099f9: 4c 89 cf                    	movq	%r9, %rdi
1000099fc: 0f 1f 40 00                 	nopl	(%rax)
100009a00: 48 8b 0b                    	movq	(%rbx), %rcx
100009a03: 48 89 0f                    	movq	%rcx, (%rdi)
100009a06: 48 83 c7 08                 	addq	$8, %rdi
100009a0a: 48 83 c3 08                 	addq	$8, %rbx
100009a0e: 48 ff c6                    	incq	%rsi
100009a11: 75 ed                       	jne	-19 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x5e0>
100009a13: 48 89 fe                    	movq	%rdi, %rsi
100009a16: e9 e9 00 00 00              	jmp	233 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x6e4>
100009a1b: 4c 89 cf                    	movq	%r9, %rdi
100009a1e: 4c 89 ce                    	movq	%r9, %rsi
100009a21: 4d 01 fa                    	addq	%r15, %r10
100009a24: 48 83 fa 38                 	cmpq	$56, %rdx
100009a28: 0f 82 7c 00 00 00           	jb	124 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x68a>
100009a2e: 49 c1 ff 03                 	sarq	$3, %r15
100009a32: 49 c1 e4 03                 	shlq	$3, %r12
100009a36: 4b 8d 0c fc                 	leaq	(%r12,%r15,8), %rcx
100009a3a: 48 29 f9                    	subq	%rdi, %rcx
100009a3d: 49 89 c6                    	movq	%rax, %r14
100009a40: 49 01 ce                    	addq	%rcx, %r14
100009a43: 4c 8d 5f 40                 	leaq	64(%rdi), %r11
100009a47: 31 c9                       	xorl	%ecx, %ecx
100009a49: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100009a50: 48 8b 14 0b                 	movq	(%rbx,%rcx), %rdx
100009a54: 48 89 16                    	movq	%rdx, (%rsi)
100009a57: 48 8b 54 0b 08              	movq	8(%rbx,%rcx), %rdx
100009a5c: 48 89 54 0f 08              	movq	%rdx, 8(%rdi,%rcx)
100009a61: 48 8b 54 0b 10              	movq	16(%rbx,%rcx), %rdx
100009a66: 48 89 54 0f 10              	movq	%rdx, 16(%rdi,%rcx)
100009a6b: 48 8b 54 0b 18              	movq	24(%rbx,%rcx), %rdx
100009a70: 48 89 54 0f 18              	movq	%rdx, 24(%rdi,%rcx)
100009a75: 48 8b 54 0b 20              	movq	32(%rbx,%rcx), %rdx
100009a7a: 48 89 54 0f 20              	movq	%rdx, 32(%rdi,%rcx)
100009a7f: 48 8b 54 0b 28              	movq	40(%rbx,%rcx), %rdx
100009a84: 48 89 54 0f 28              	movq	%rdx, 40(%rdi,%rcx)
100009a89: 48 8b 54 0b 30              	movq	48(%rbx,%rcx), %rdx
100009a8e: 48 89 54 0f 30              	movq	%rdx, 48(%rdi,%rcx)
100009a93: 48 8b 54 0b 38              	movq	56(%rbx,%rcx), %rdx
100009a98: 48 89 54 0f 38              	movq	%rdx, 56(%rdi,%rcx)
100009a9d: 49 8d 34 0b                 	leaq	(%r11,%rcx), %rsi
100009aa1: 48 83 c1 40                 	addq	$64, %rcx
100009aa5: 49 39 ce                    	cmpq	%rcx, %r14
100009aa8: 75 a6                       	jne	-90 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x630>
100009aaa: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100009aae: 4c 8b 37                    	movq	(%rdi), %r14
100009ab1: 48 89 07                    	movq	%rax, (%rdi)
100009ab4: 4c 89 4f 08                 	movq	%r9, 8(%rdi)
100009ab8: 4c 89 57 10                 	movq	%r10, 16(%rdi)
100009abc: 4c 89 47 18                 	movq	%r8, 24(%rdi)
100009ac0: 4d 85 f6                    	testq	%r14, %r14
100009ac3: 74 12                       	je	18 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x6b7>
100009ac5: 4c 89 f7                    	movq	%r14, %rdi
100009ac8: e8 07 15 00 00              	callq	5383 <dyld_stub_binder+0x10000afd4>
100009acd: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100009ad1: 4c 8b 7f 10                 	movq	16(%rdi), %r15
100009ad5: eb 03                       	jmp	3 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x6ba>
100009ad7: 4d 89 d7                    	movq	%r10, %r15
100009ada: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100009ade: 49 89 17                    	movq	%rdx, (%r15)
100009ae1: 48 83 47 10 08              	addq	$8, 16(%rdi)
100009ae6: 48 83 c4 28                 	addq	$40, %rsp
100009aea: 5b                          	popq	%rbx
100009aeb: 41 5c                       	popq	%r12
100009aed: 41 5d                       	popq	%r13
100009aef: 41 5e                       	popq	%r14
100009af1: 41 5f                       	popq	%r15
100009af3: 5d                          	popq	%rbp
100009af4: c3                          	retq
100009af5: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100009af9: e9 93 00 00 00              	jmp	147 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x771>
100009afe: 4c 89 cf                    	movq	%r9, %rdi
100009b01: 4c 89 ce                    	movq	%r9, %rsi
100009b04: 4d 01 fa                    	addq	%r15, %r10
100009b07: 48 83 fa 38                 	cmpq	$56, %rdx
100009b0b: 0f 82 79 00 00 00           	jb	121 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x76a>
100009b11: 49 c1 ff 03                 	sarq	$3, %r15
100009b15: 49 c1 e4 03                 	shlq	$3, %r12
100009b19: 4b 8d 0c fc                 	leaq	(%r12,%r15,8), %rcx
100009b1d: 48 29 f9                    	subq	%rdi, %rcx
100009b20: 49 89 c6                    	movq	%rax, %r14
100009b23: 49 01 ce                    	addq	%rcx, %r14
100009b26: 4c 8d 5f 40                 	leaq	64(%rdi), %r11
100009b2a: 31 c9                       	xorl	%ecx, %ecx
100009b2c: 0f 1f 40 00                 	nopl	(%rax)
100009b30: 48 8b 14 0b                 	movq	(%rbx,%rcx), %rdx
100009b34: 48 89 16                    	movq	%rdx, (%rsi)
100009b37: 48 8b 54 0b 08              	movq	8(%rbx,%rcx), %rdx
100009b3c: 48 89 54 0f 08              	movq	%rdx, 8(%rdi,%rcx)
100009b41: 48 8b 54 0b 10              	movq	16(%rbx,%rcx), %rdx
100009b46: 48 89 54 0f 10              	movq	%rdx, 16(%rdi,%rcx)
100009b4b: 48 8b 54 0b 18              	movq	24(%rbx,%rcx), %rdx
100009b50: 48 89 54 0f 18              	movq	%rdx, 24(%rdi,%rcx)
100009b55: 48 8b 54 0b 20              	movq	32(%rbx,%rcx), %rdx
100009b5a: 48 89 54 0f 20              	movq	%rdx, 32(%rdi,%rcx)
100009b5f: 48 8b 54 0b 28              	movq	40(%rbx,%rcx), %rdx
100009b64: 48 89 54 0f 28              	movq	%rdx, 40(%rdi,%rcx)
100009b69: 48 8b 54 0b 30              	movq	48(%rbx,%rcx), %rdx
100009b6e: 48 89 54 0f 30              	movq	%rdx, 48(%rdi,%rcx)
100009b73: 48 8b 54 0b 38              	movq	56(%rbx,%rcx), %rdx
100009b78: 48 89 54 0f 38              	movq	%rdx, 56(%rdi,%rcx)
100009b7d: 49 8d 34 0b                 	leaq	(%r11,%rcx), %rsi
100009b81: 48 83 c1 40                 	addq	$64, %rcx
100009b85: 49 39 ce                    	cmpq	%rcx, %r14
100009b88: 75 a6                       	jne	-90 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x710>
100009b8a: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100009b8e: 4c 8b 32                    	movq	(%rdx), %r14
100009b91: 48 89 02                    	movq	%rax, (%rdx)
100009b94: 4c 89 4a 08                 	movq	%r9, 8(%rdx)
100009b98: 4c 89 52 10                 	movq	%r10, 16(%rdx)
100009b9c: 4c 89 42 18                 	movq	%r8, 24(%rdx)
100009ba0: 4d 85 f6                    	testq	%r14, %r14
100009ba3: 74 12                       	je	18 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x797>
100009ba5: 4c 89 f7                    	movq	%r14, %rdi
100009ba8: e8 27 14 00 00              	callq	5159 <dyld_stub_binder+0x10000afd4>
100009bad: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100009bb1: 4c 8b 7a 10                 	movq	16(%rdx), %r15
100009bb5: eb 03                       	jmp	3 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x79a>
100009bb7: 4d 89 d7                    	movq	%r10, %r15
100009bba: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100009bbe: 49 89 37                    	movq	%rsi, (%r15)
100009bc1: 48 83 42 10 08              	addq	$8, 16(%rdx)
100009bc6: e9 1b ff ff ff              	jmp	-229 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x6c6>
100009bcb: e8 c0 e8 ff ff              	callq	-5952 <__ZNSt3__1L20__throw_length_errorEPKc>
100009bd0: 0f 0b                       	ud2
100009bd2: e8 b9 e8 ff ff              	callq	-5959 <__ZNSt3__1L20__throw_length_errorEPKc>
100009bd7: e8 b4 e8 ff ff              	callq	-5964 <__ZNSt3__1L20__throw_length_errorEPKc>
100009bdc: eb f2                       	jmp	-14 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x7b0>
100009bde: eb 16                       	jmp	22 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x7d6>
100009be0: 48 89 c3                    	movq	%rax, %rbx
100009be3: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100009be7: e8 e8 13 00 00              	callq	5096 <dyld_stub_binder+0x10000afd4>
100009bec: eb 10                       	jmp	16 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x7de>
100009bee: 49 89 df                    	movq	%rbx, %r15
100009bf1: 48 89 c3                    	movq	%rax, %rbx
100009bf4: eb 08                       	jmp	8 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x7de>
100009bf6: 48 89 c3                    	movq	%rax, %rbx
100009bf9: 4d 85 ff                    	testq	%r15, %r15
100009bfc: 74 08                       	je	8 <__ZNSt3__15dequeI8NodeInfoNS_9allocatorIS1_EEE19__add_back_capacityEv+0x7e6>
100009bfe: 4c 89 ff                    	movq	%r15, %rdi
100009c01: e8 ce 13 00 00              	callq	5070 <dyld_stub_binder+0x10000afd4>
100009c06: 48 89 df                    	movq	%rbx, %rdi
100009c09: e8 12 13 00 00              	callq	4882 <dyld_stub_binder+0x10000af20>
100009c0e: 0f 0b                       	ud2

0000000100009c10 __ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_:
100009c10: 55                          	pushq	%rbp
100009c11: 48 89 e5                    	movq	%rsp, %rbp
100009c14: 41 57                       	pushq	%r15
100009c16: 41 56                       	pushq	%r14
100009c18: 41 55                       	pushq	%r13
100009c1a: 41 54                       	pushq	%r12
100009c1c: 53                          	pushq	%rbx
100009c1d: 48 83 ec 18                 	subq	$24, %rsp
100009c21: 49 89 ff                    	movq	%rdi, %r15
100009c24: 4c 8b 67 10                 	movq	16(%rdi), %r12
100009c28: 48 8b 47 18                 	movq	24(%rdi), %rax
100009c2c: 49 39 c4                    	cmpq	%rax, %r12
100009c2f: 0f 85 ce 01 00 00           	jne	462 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x1f3>
100009c35: 49 8b 17                    	movq	(%r15), %rdx
100009c38: 49 8b 5f 08                 	movq	8(%r15), %rbx
100009c3c: 48 89 d9                    	movq	%rbx, %rcx
100009c3f: 48 29 d1                    	subq	%rdx, %rcx
100009c42: 76 69                       	jbe	105 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x9d>
100009c44: 48 c1 f9 03                 	sarq	$3, %rcx
100009c48: 48 8d 41 01                 	leaq	1(%rcx), %rax
100009c4c: 48 c1 e8 3f                 	shrq	$63, %rax
100009c50: 48 8d 44 01 01              	leaq	1(%rcx,%rax), %rax
100009c55: 48 d1 f8                    	sarq	%rax
100009c58: 48 89 c1                    	movq	%rax, %rcx
100009c5b: 48 f7 d9                    	negq	%rcx
100009c5e: 48 c1 e0 03                 	shlq	$3, %rax
100009c62: 49 89 dd                    	movq	%rbx, %r13
100009c65: 49 29 c5                    	subq	%rax, %r13
100009c68: 49 29 dc                    	subq	%rbx, %r12
100009c6b: 4d 89 e6                    	movq	%r12, %r14
100009c6e: 49 c1 fe 03                 	sarq	$3, %r14
100009c72: 4d 85 e4                    	testq	%r12, %r12
100009c75: 74 20                       	je	32 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x87>
100009c77: 4c 89 ef                    	movq	%r13, %rdi
100009c7a: 48 89 75 d0                 	movq	%rsi, -48(%rbp)
100009c7e: 48 89 de                    	movq	%rbx, %rsi
100009c81: 4c 89 e2                    	movq	%r12, %rdx
100009c84: 48 89 cb                    	movq	%rcx, %rbx
100009c87: e8 d8 13 00 00              	callq	5080 <dyld_stub_binder+0x10000b064>
100009c8c: 48 89 d9                    	movq	%rbx, %rcx
100009c8f: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100009c93: 49 8b 5f 08                 	movq	8(%r15), %rbx
100009c97: 4f 8d 64 f5 00              	leaq	(%r13,%r14,8), %r12
100009c9c: 4d 89 67 10                 	movq	%r12, 16(%r15)
100009ca0: 48 8d 04 cb                 	leaq	(%rbx,%rcx,8), %rax
100009ca4: 49 89 47 08                 	movq	%rax, 8(%r15)
100009ca8: e9 56 01 00 00              	jmp	342 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x1f3>
100009cad: 48 89 75 d0                 	movq	%rsi, -48(%rbp)
100009cb1: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
100009cb5: 48 29 d0                    	subq	%rdx, %rax
100009cb8: 48 89 c1                    	movq	%rax, %rcx
100009cbb: 48 c1 f9 02                 	sarq	$2, %rcx
100009cbf: 48 85 c0                    	testq	%rax, %rax
100009cc2: 41 be 01 00 00 00           	movl	$1, %r14d
100009cc8: 4c 0f 45 f1                 	cmovneq	%rcx, %r14
100009ccc: 4c 89 f0                    	movq	%r14, %rax
100009ccf: 48 c1 e8 3d                 	shrq	$61, %rax
100009cd3: 0f 85 45 01 00 00           	jne	325 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x20e>
100009cd9: 4d 89 f5                    	movq	%r14, %r13
100009cdc: 49 c1 ed 02                 	shrq	$2, %r13
100009ce0: 4a 8d 3c f5 00 00 00 00     	leaq	(,%r14,8), %rdi
100009ce8: e8 f3 12 00 00              	callq	4851 <dyld_stub_binder+0x10000afe0>
100009ced: 4e 8d 14 e8                 	leaq	(%rax,%r13,8), %r10
100009cf1: 4d 89 d1                    	movq	%r10, %r9
100009cf4: 4e 8d 04 f0                 	leaq	(%rax,%r14,8), %r8
100009cf8: 49 29 dc                    	subq	%rbx, %r12
100009cfb: 74 47                       	je	71 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x134>
100009cfd: 49 8d 54 24 f8              	leaq	-8(%r12), %rdx
100009d02: 89 d6                       	movl	%edx, %esi
100009d04: c1 ee 03                    	shrl	$3, %esi
100009d07: ff c6                       	incl	%esi
100009d09: 48 83 e6 07                 	andq	$7, %rsi
100009d0d: 74 3e                       	je	62 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x13d>
100009d0f: 48 f7 de                    	negq	%rsi
100009d12: 4c 89 cf                    	movq	%r9, %rdi
100009d15: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100009d1f: 90                          	nop
100009d20: 48 8b 0b                    	movq	(%rbx), %rcx
100009d23: 48 89 0f                    	movq	%rcx, (%rdi)
100009d26: 48 83 c7 08                 	addq	$8, %rdi
100009d2a: 48 83 c3 08                 	addq	$8, %rbx
100009d2e: 48 ff c6                    	incq	%rsi
100009d31: 75 ed                       	jne	-19 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x110>
100009d33: 48 89 fe                    	movq	%rdi, %rsi
100009d36: 4d 01 e2                    	addq	%r12, %r10
100009d39: 48 83 fa 38                 	cmpq	$56, %rdx
100009d3d: 73 21                       	jae	33 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x150>
100009d3f: e9 96 00 00 00              	jmp	150 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x1ca>
100009d44: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
100009d48: e9 90 00 00 00              	jmp	144 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x1cd>
100009d4d: 4c 89 cf                    	movq	%r9, %rdi
100009d50: 4c 89 ce                    	movq	%r9, %rsi
100009d53: 4d 01 e2                    	addq	%r12, %r10
100009d56: 48 83 fa 38                 	cmpq	$56, %rdx
100009d5a: 0f 82 7a 00 00 00           	jb	122 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x1ca>
100009d60: 49 c1 fc 03                 	sarq	$3, %r12
100009d64: 49 c1 e5 03                 	shlq	$3, %r13
100009d68: 4b 8d 4c e5 00              	leaq	(%r13,%r12,8), %rcx
100009d6d: 48 29 f9                    	subq	%rdi, %rcx
100009d70: 49 89 c6                    	movq	%rax, %r14
100009d73: 49 01 ce                    	addq	%rcx, %r14
100009d76: 4c 8d 5f 40                 	leaq	64(%rdi), %r11
100009d7a: 31 c9                       	xorl	%ecx, %ecx
100009d7c: 0f 1f 40 00                 	nopl	(%rax)
100009d80: 48 8b 14 0b                 	movq	(%rbx,%rcx), %rdx
100009d84: 48 89 16                    	movq	%rdx, (%rsi)
100009d87: 48 8b 54 0b 08              	movq	8(%rbx,%rcx), %rdx
100009d8c: 48 89 54 0f 08              	movq	%rdx, 8(%rdi,%rcx)
100009d91: 48 8b 54 0b 10              	movq	16(%rbx,%rcx), %rdx
100009d96: 48 89 54 0f 10              	movq	%rdx, 16(%rdi,%rcx)
100009d9b: 48 8b 54 0b 18              	movq	24(%rbx,%rcx), %rdx
100009da0: 48 89 54 0f 18              	movq	%rdx, 24(%rdi,%rcx)
100009da5: 48 8b 54 0b 20              	movq	32(%rbx,%rcx), %rdx
100009daa: 48 89 54 0f 20              	movq	%rdx, 32(%rdi,%rcx)
100009daf: 48 8b 54 0b 28              	movq	40(%rbx,%rcx), %rdx
100009db4: 48 89 54 0f 28              	movq	%rdx, 40(%rdi,%rcx)
100009db9: 48 8b 54 0b 30              	movq	48(%rbx,%rcx), %rdx
100009dbe: 48 89 54 0f 30              	movq	%rdx, 48(%rdi,%rcx)
100009dc3: 48 8b 54 0b 38              	movq	56(%rbx,%rcx), %rdx
100009dc8: 48 89 54 0f 38              	movq	%rdx, 56(%rdi,%rcx)
100009dcd: 49 8d 34 0b                 	leaq	(%r11,%rcx), %rsi
100009dd1: 48 83 c1 40                 	addq	$64, %rcx
100009dd5: 49 39 ce                    	cmpq	%rcx, %r14
100009dd8: 75 a6                       	jne	-90 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x170>
100009dda: 49 8b 3f                    	movq	(%r15), %rdi
100009ddd: 49 89 07                    	movq	%rax, (%r15)
100009de0: 4d 89 4f 08                 	movq	%r9, 8(%r15)
100009de4: 4d 89 57 10                 	movq	%r10, 16(%r15)
100009de8: 4d 89 47 18                 	movq	%r8, 24(%r15)
100009dec: 48 85 ff                    	testq	%rdi, %rdi
100009def: 74 0b                       	je	11 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x1ec>
100009df1: e8 de 11 00 00              	callq	4574 <dyld_stub_binder+0x10000afd4>
100009df6: 4d 8b 67 10                 	movq	16(%r15), %r12
100009dfa: eb 03                       	jmp	3 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_+0x1ef>
100009dfc: 4d 89 d4                    	movq	%r10, %r12
100009dff: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100009e03: 48 8b 06                    	movq	(%rsi), %rax
100009e06: 49 89 04 24                 	movq	%rax, (%r12)
100009e0a: 49 83 47 10 08              	addq	$8, 16(%r15)
100009e0f: 48 83 c4 18                 	addq	$24, %rsp
100009e13: 5b                          	popq	%rbx
100009e14: 41 5c                       	popq	%r12
100009e16: 41 5d                       	popq	%r13
100009e18: 41 5e                       	popq	%r14
100009e1a: 41 5f                       	popq	%r15
100009e1c: 5d                          	popq	%rbp
100009e1d: c3                          	retq
100009e1e: e8 6d e6 ff ff              	callq	-6547 <__ZNSt3__1L20__throw_length_errorEPKc>
100009e23: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100009e2d: 0f 1f 00                    	nopl	(%rax)

0000000100009e30 __ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_:
100009e30: 55                          	pushq	%rbp
100009e31: 48 89 e5                    	movq	%rsp, %rbp
100009e34: 41 57                       	pushq	%r15
100009e36: 41 56                       	pushq	%r14
100009e38: 41 55                       	pushq	%r13
100009e3a: 41 54                       	pushq	%r12
100009e3c: 53                          	pushq	%rbx
100009e3d: 50                          	pushq	%rax
100009e3e: 49 89 f6                    	movq	%rsi, %r14
100009e41: 49 89 ff                    	movq	%rdi, %r15
100009e44: 48 8b 0f                    	movq	(%rdi), %rcx
100009e47: 48 8b 5f 08                 	movq	8(%rdi), %rbx
100009e4b: 48 39 cb                    	cmpq	%rcx, %rbx
100009e4e: 74 08                       	je	8 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x28>
100009e50: 49 89 dc                    	movq	%rbx, %r12
100009e53: e9 a5 01 00 00              	jmp	421 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x1cd>
100009e58: 4c 89 75 d0                 	movq	%r14, -48(%rbp)
100009e5c: 4d 8b 6f 10                 	movq	16(%r15), %r13
100009e60: 49 8b 47 18                 	movq	24(%r15), %rax
100009e64: 49 39 c5                    	cmpq	%rax, %r13
100009e67: 73 4c                       	jae	76 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x85>
100009e69: 4c 29 e8                    	subq	%r13, %rax
100009e6c: 48 c1 f8 03                 	sarq	$3, %rax
100009e70: 48 8d 48 01                 	leaq	1(%rax), %rcx
100009e74: 48 c1 e9 3f                 	shrq	$63, %rcx
100009e78: 4c 8d 74 08 01              	leaq	1(%rax,%rcx), %r14
100009e7d: 49 d1 fe                    	sarq	%r14
100009e80: 4f 8d 64 f5 00              	leaq	(%r13,%r14,8), %r12
100009e85: 4c 89 ea                    	movq	%r13, %rdx
100009e88: 48 29 da                    	subq	%rbx, %rdx
100009e8b: 74 12                       	je	18 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x6f>
100009e8d: 49 29 d4                    	subq	%rdx, %r12
100009e90: 4c 89 e7                    	movq	%r12, %rdi
100009e93: 48 89 de                    	movq	%rbx, %rsi
100009e96: e8 c9 11 00 00              	callq	4553 <dyld_stub_binder+0x10000b064>
100009e9b: 4d 8b 6f 10                 	movq	16(%r15), %r13
100009e9f: 4d 89 67 08                 	movq	%r12, 8(%r15)
100009ea3: 4b 8d 44 f5 00              	leaq	(%r13,%r14,8), %rax
100009ea8: 49 89 47 10                 	movq	%rax, 16(%r15)
100009eac: 4c 8b 75 d0                 	movq	-48(%rbp), %r14
100009eb0: e9 48 01 00 00              	jmp	328 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x1cd>
100009eb5: 48 29 c8                    	subq	%rcx, %rax
100009eb8: 48 89 c1                    	movq	%rax, %rcx
100009ebb: 48 c1 f9 02                 	sarq	$2, %rcx
100009ebf: 48 85 c0                    	testq	%rax, %rax
100009ec2: 41 be 01 00 00 00           	movl	$1, %r14d
100009ec8: 4c 0f 45 f1                 	cmovneq	%rcx, %r14
100009ecc: 4c 89 f0                    	movq	%r14, %rax
100009ecf: 48 c1 e8 3d                 	shrq	$61, %rax
100009ed3: 0f 85 40 01 00 00           	jne	320 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x1e9>
100009ed9: 4d 8d 66 03                 	leaq	3(%r14), %r12
100009edd: 49 c1 ec 02                 	shrq	$2, %r12
100009ee1: 4a 8d 3c f5 00 00 00 00     	leaq	(,%r14,8), %rdi
100009ee9: e8 f2 10 00 00              	callq	4338 <dyld_stub_binder+0x10000afe0>
100009eee: 4c 89 e7                    	movq	%r12, %rdi
100009ef1: 4e 8d 0c e0                 	leaq	(%rax,%r12,8), %r9
100009ef5: 4d 89 cc                    	movq	%r9, %r12
100009ef8: 4e 8d 04 f0                 	leaq	(%rax,%r14,8), %r8
100009efc: 49 29 dd                    	subq	%rbx, %r13
100009eff: 74 43                       	je	67 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x114>
100009f01: 4d 8d 55 f8                 	leaq	-8(%r13), %r10
100009f05: 44 89 d2                    	movl	%r10d, %edx
100009f08: c1 ea 03                    	shrl	$3, %edx
100009f0b: ff c2                       	incl	%edx
100009f0d: 48 83 e2 07                 	andq	$7, %rdx
100009f11: 4c 8b 75 d0                 	movq	-48(%rbp), %r14
100009f15: 74 36                       	je	54 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x11d>
100009f17: 48 f7 da                    	negq	%rdx
100009f1a: 4c 89 e6                    	movq	%r12, %rsi
100009f1d: 0f 1f 00                    	nopl	(%rax)
100009f20: 48 8b 0b                    	movq	(%rbx), %rcx
100009f23: 48 89 0e                    	movq	%rcx, (%rsi)
100009f26: 48 83 c6 08                 	addq	$8, %rsi
100009f2a: 48 83 c3 08                 	addq	$8, %rbx
100009f2e: 48 ff c2                    	incq	%rdx
100009f31: 75 ed                       	jne	-19 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0xf0>
100009f33: 48 89 f2                    	movq	%rsi, %rdx
100009f36: 4d 01 e9                    	addq	%r13, %r9
100009f39: 49 83 fa 38                 	cmpq	$56, %r10
100009f3d: 73 21                       	jae	33 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x130>
100009f3f: e9 96 00 00 00              	jmp	150 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x1aa>
100009f44: 4c 8b 75 d0                 	movq	-48(%rbp), %r14
100009f48: e9 90 00 00 00              	jmp	144 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x1ad>
100009f4d: 4c 89 e6                    	movq	%r12, %rsi
100009f50: 4c 89 e2                    	movq	%r12, %rdx
100009f53: 4d 01 e9                    	addq	%r13, %r9
100009f56: 49 83 fa 38                 	cmpq	$56, %r10
100009f5a: 0f 82 7a 00 00 00           	jb	122 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x1aa>
100009f60: 49 c1 fd 03                 	sarq	$3, %r13
100009f64: 48 c1 e7 03                 	shlq	$3, %rdi
100009f68: 4a 8d 0c ef                 	leaq	(%rdi,%r13,8), %rcx
100009f6c: 48 29 f1                    	subq	%rsi, %rcx
100009f6f: 49 89 c3                    	movq	%rax, %r11
100009f72: 49 01 cb                    	addq	%rcx, %r11
100009f75: 4c 8d 56 40                 	leaq	64(%rsi), %r10
100009f79: 31 c9                       	xorl	%ecx, %ecx
100009f7b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100009f80: 48 8b 3c 0b                 	movq	(%rbx,%rcx), %rdi
100009f84: 48 89 3a                    	movq	%rdi, (%rdx)
100009f87: 48 8b 54 0b 08              	movq	8(%rbx,%rcx), %rdx
100009f8c: 48 89 54 0e 08              	movq	%rdx, 8(%rsi,%rcx)
100009f91: 48 8b 54 0b 10              	movq	16(%rbx,%rcx), %rdx
100009f96: 48 89 54 0e 10              	movq	%rdx, 16(%rsi,%rcx)
100009f9b: 48 8b 54 0b 18              	movq	24(%rbx,%rcx), %rdx
100009fa0: 48 89 54 0e 18              	movq	%rdx, 24(%rsi,%rcx)
100009fa5: 48 8b 54 0b 20              	movq	32(%rbx,%rcx), %rdx
100009faa: 48 89 54 0e 20              	movq	%rdx, 32(%rsi,%rcx)
100009faf: 48 8b 54 0b 28              	movq	40(%rbx,%rcx), %rdx
100009fb4: 48 89 54 0e 28              	movq	%rdx, 40(%rsi,%rcx)
100009fb9: 48 8b 54 0b 30              	movq	48(%rbx,%rcx), %rdx
100009fbe: 48 89 54 0e 30              	movq	%rdx, 48(%rsi,%rcx)
100009fc3: 48 8b 54 0b 38              	movq	56(%rbx,%rcx), %rdx
100009fc8: 48 89 54 0e 38              	movq	%rdx, 56(%rsi,%rcx)
100009fcd: 49 8d 14 0a                 	leaq	(%r10,%rcx), %rdx
100009fd1: 48 83 c1 40                 	addq	$64, %rcx
100009fd5: 49 39 cb                    	cmpq	%rcx, %r11
100009fd8: 75 a6                       	jne	-90 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x150>
100009fda: 49 8b 1f                    	movq	(%r15), %rbx
100009fdd: 49 89 07                    	movq	%rax, (%r15)
100009fe0: 4d 89 67 08                 	movq	%r12, 8(%r15)
100009fe4: 4d 89 4f 10                 	movq	%r9, 16(%r15)
100009fe8: 4d 89 47 18                 	movq	%r8, 24(%r15)
100009fec: 48 85 db                    	testq	%rbx, %rbx
100009fef: 74 0c                       	je	12 <__ZNSt3__114__split_bufferIP8NodeInfoNS_9allocatorIS2_EEE10push_frontEOS2_+0x1cd>
100009ff1: 48 89 df                    	movq	%rbx, %rdi
100009ff4: e8 db 0f 00 00              	callq	4059 <dyld_stub_binder+0x10000afd4>
100009ff9: 4d 8b 67 08                 	movq	8(%r15), %r12
100009ffd: 49 8b 06                    	movq	(%r14), %rax
10000a000: 49 89 44 24 f8              	movq	%rax, -8(%r12)
10000a005: 49 83 47 08 f8              	addq	$-8, 8(%r15)
10000a00a: 48 83 c4 08                 	addq	$8, %rsp
10000a00e: 5b                          	popq	%rbx
10000a00f: 41 5c                       	popq	%r12
10000a011: 41 5d                       	popq	%r13
10000a013: 41 5e                       	popq	%r14
10000a015: 41 5f                       	popq	%r15
10000a017: 5d                          	popq	%rbp
10000a018: c3                          	retq
10000a019: e8 72 e4 ff ff              	callq	-7054 <__ZNSt3__1L20__throw_length_errorEPKc>
10000a01e: 66 90                       	nop

000000010000a020 __ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv:
10000a020: 55                          	pushq	%rbp
10000a021: 48 89 e5                    	movq	%rsp, %rbp
10000a024: 41 57                       	pushq	%r15
10000a026: 41 56                       	pushq	%r14
10000a028: 41 55                       	pushq	%r13
10000a02a: 41 54                       	pushq	%r12
10000a02c: 53                          	pushq	%rbx
10000a02d: 48 83 ec 28                 	subq	$40, %rsp
10000a031: 48 8b 47 20                 	movq	32(%rdi), %rax
10000a035: 48 3d 00 02 00 00           	cmpq	$512, %rax
10000a03b: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
10000a03f: 0f 82 9d 00 00 00           	jb	157 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0xc2>
10000a045: 48 05 00 fe ff ff           	addq	$-512, %rax
10000a04b: 48 89 47 20                 	movq	%rax, 32(%rdi)
10000a04f: 48 8b 5f 08                 	movq	8(%rdi), %rbx
10000a053: 4c 8b 7f 10                 	movq	16(%rdi), %r15
10000a057: 48 8b 13                    	movq	(%rbx), %rdx
10000a05a: 48 83 c3 08                 	addq	$8, %rbx
10000a05e: 48 89 5f 08                 	movq	%rbx, 8(%rdi)
10000a062: 48 8b 47 18                 	movq	24(%rdi), %rax
10000a066: 49 39 c7                    	cmpq	%rax, %r15
10000a069: 0f 85 6f 06 00 00           	jne	1647 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x6be>
10000a06f: 4c 8b 37                    	movq	(%rdi), %r14
10000a072: 48 89 d9                    	movq	%rbx, %rcx
10000a075: 4c 29 f1                    	subq	%r14, %rcx
10000a078: 0f 86 05 02 00 00           	jbe	517 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x263>
10000a07e: 48 c1 f9 03                 	sarq	$3, %rcx
10000a082: 48 8d 41 01                 	leaq	1(%rcx), %rax
10000a086: 48 c1 e8 3f                 	shrq	$63, %rax
10000a08a: 48 8d 44 01 01              	leaq	1(%rcx,%rax), %rax
10000a08f: 48 d1 f8                    	sarq	%rax
10000a092: 49 89 c5                    	movq	%rax, %r13
10000a095: 49 f7 dd                    	negq	%r13
10000a098: 48 c1 e0 03                 	shlq	$3, %rax
10000a09c: 49 89 de                    	movq	%rbx, %r14
10000a09f: 49 29 c6                    	subq	%rax, %r14
10000a0a2: 49 29 df                    	subq	%rbx, %r15
10000a0a5: 4d 89 fc                    	movq	%r15, %r12
10000a0a8: 49 c1 fc 03                 	sarq	$3, %r12
10000a0ac: 4d 85 ff                    	testq	%r15, %r15
10000a0af: 74 1c                       	je	28 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0xad>
10000a0b1: 4c 89 f7                    	movq	%r14, %rdi
10000a0b4: 48 89 de                    	movq	%rbx, %rsi
10000a0b7: 48 89 d3                    	movq	%rdx, %rbx
10000a0ba: 4c 89 fa                    	movq	%r15, %rdx
10000a0bd: e8 a2 0f 00 00              	callq	4002 <dyld_stub_binder+0x10000b064>
10000a0c2: 48 89 da                    	movq	%rbx, %rdx
10000a0c5: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000a0c9: 48 8b 5f 08                 	movq	8(%rdi), %rbx
10000a0cd: 4f 8d 3c e6                 	leaq	(%r14,%r12,8), %r15
10000a0d1: 4c 89 7f 10                 	movq	%r15, 16(%rdi)
10000a0d5: 4a 8d 04 eb                 	leaq	(%rbx,%r13,8), %rax
10000a0d9: 48 89 47 08                 	movq	%rax, 8(%rdi)
10000a0dd: e9 fc 05 00 00              	jmp	1532 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x6be>
10000a0e2: 48 8b 77 08                 	movq	8(%rdi), %rsi
10000a0e6: 4c 8b 77 10                 	movq	16(%rdi), %r14
10000a0ea: 4d 89 f4                    	movq	%r14, %r12
10000a0ed: 49 29 f4                    	subq	%rsi, %r12
10000a0f0: 49 c1 fc 03                 	sarq	$3, %r12
10000a0f4: 48 8b 4f 18                 	movq	24(%rdi), %rcx
10000a0f8: 48 89 c8                    	movq	%rcx, %rax
10000a0fb: 48 2b 07                    	subq	(%rdi), %rax
10000a0fe: 48 89 c2                    	movq	%rax, %rdx
10000a101: 48 c1 fa 03                 	sarq	$3, %rdx
10000a105: 49 39 d4                    	cmpq	%rdx, %r12
10000a108: 0f 83 bf 00 00 00           	jae	191 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x1ad>
10000a10e: bf 00 10 00 00              	movl	$4096, %edi
10000a113: 4c 39 f1                    	cmpq	%r14, %rcx
10000a116: 0f 85 1b 01 00 00           	jne	283 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x217>
10000a11c: e8 bf 0e 00 00              	callq	3775 <dyld_stub_binder+0x10000afe0>
10000a121: 48 89 45 b8                 	movq	%rax, -72(%rbp)
10000a125: 48 8d 75 b8                 	leaq	-72(%rbp), %rsi
10000a129: 48 8b 5d d0                 	movq	-48(%rbp), %rbx
10000a12d: 48 89 df                    	movq	%rbx, %rdi
10000a130: e8 db 06 00 00              	callq	1755 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_>
10000a135: 48 89 da                    	movq	%rbx, %rdx
10000a138: 48 8b 5b 08                 	movq	8(%rbx), %rbx
10000a13c: 4c 8b 7a 10                 	movq	16(%rdx), %r15
10000a140: 48 8b 33                    	movq	(%rbx), %rsi
10000a143: 48 83 c3 08                 	addq	$8, %rbx
10000a147: 48 89 5a 08                 	movq	%rbx, 8(%rdx)
10000a14b: 48 8b 42 18                 	movq	24(%rdx), %rax
10000a14f: 49 39 c7                    	cmpq	%rax, %r15
10000a152: 0f 85 66 06 00 00           	jne	1638 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x79e>
10000a158: 4c 8b 32                    	movq	(%rdx), %r14
10000a15b: 48 89 d9                    	movq	%rbx, %rcx
10000a15e: 4c 29 f1                    	subq	%r14, %rcx
10000a161: 0f 86 2a 04 00 00           	jbe	1066 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x571>
10000a167: 48 c1 f9 03                 	sarq	$3, %rcx
10000a16b: 48 8d 41 01                 	leaq	1(%rcx), %rax
10000a16f: 48 c1 e8 3f                 	shrq	$63, %rax
10000a173: 48 8d 44 01 01              	leaq	1(%rcx,%rax), %rax
10000a178: 48 d1 f8                    	sarq	%rax
10000a17b: 49 89 c5                    	movq	%rax, %r13
10000a17e: 49 f7 dd                    	negq	%r13
10000a181: 48 c1 e0 03                 	shlq	$3, %rax
10000a185: 49 89 de                    	movq	%rbx, %r14
10000a188: 49 29 c6                    	subq	%rax, %r14
10000a18b: 49 29 df                    	subq	%rbx, %r15
10000a18e: 4d 89 fc                    	movq	%r15, %r12
10000a191: 49 c1 fc 03                 	sarq	$3, %r12
10000a195: 4d 85 ff                    	testq	%r15, %r15
10000a198: 74 1e                       	je	30 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x198>
10000a19a: 4c 89 f7                    	movq	%r14, %rdi
10000a19d: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
10000a1a1: 48 89 de                    	movq	%rbx, %rsi
10000a1a4: 4c 89 fa                    	movq	%r15, %rdx
10000a1a7: e8 b8 0e 00 00              	callq	3768 <dyld_stub_binder+0x10000b064>
10000a1ac: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
10000a1b0: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
10000a1b4: 48 8b 5a 08                 	movq	8(%rdx), %rbx
10000a1b8: 4f 8d 3c e6                 	leaq	(%r14,%r12,8), %r15
10000a1bc: 4c 89 7a 10                 	movq	%r15, 16(%rdx)
10000a1c0: 4a 8d 04 eb                 	leaq	(%rbx,%r13,8), %rax
10000a1c4: 48 89 42 08                 	movq	%rax, 8(%rdx)
10000a1c8: e9 f1 05 00 00              	jmp	1521 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x79e>
10000a1cd: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
10000a1d1: 48 89 c1                    	movq	%rax, %rcx
10000a1d4: 48 c1 f9 02                 	sarq	$2, %rcx
10000a1d8: 48 85 c0                    	testq	%rax, %rax
10000a1db: 41 bf 01 00 00 00           	movl	$1, %r15d
10000a1e1: 4c 0f 45 f9                 	cmovneq	%rcx, %r15
10000a1e5: 4c 89 f8                    	movq	%r15, %rax
10000a1e8: 48 c1 e8 3d                 	shrq	$61, %rax
10000a1ec: 0f 85 e0 05 00 00           	jne	1504 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x7b2>
10000a1f2: 4a 8d 3c fd 00 00 00 00     	leaq	(,%r15,8), %rdi
10000a1fa: e8 e1 0d 00 00              	callq	3553 <dyld_stub_binder+0x10000afe0>
10000a1ff: 48 89 c3                    	movq	%rax, %rbx
10000a202: bf 00 10 00 00              	movl	$4096, %edi
10000a207: e8 d4 0d 00 00              	callq	3540 <dyld_stub_binder+0x10000afe0>
10000a20c: 4e 8d 2c e3                 	leaq	(%rbx,%r12,8), %r13
10000a210: 4e 8d 04 fb                 	leaq	(%rbx,%r15,8), %r8
10000a214: 4d 39 fc                    	cmpq	%r15, %r12
10000a217: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
10000a21b: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
10000a21f: 74 31                       	je	49 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x232>
10000a221: 49 89 45 00                 	movq	%rax, (%r13)
10000a225: 4d 8d 65 08                 	leaq	8(%r13), %r12
10000a229: 49 39 d6                    	cmpq	%rdx, %r14
10000a22c: 0f 85 a6 01 00 00           	jne	422 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x3b8>
10000a232: e9 57 01 00 00              	jmp	343 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x36e>
10000a237: e8 a4 0d 00 00              	callq	3492 <dyld_stub_binder+0x10000afe0>
10000a23c: 48 89 45 b8                 	movq	%rax, -72(%rbp)
10000a240: 48 8d 75 b8                 	leaq	-72(%rbp), %rsi
10000a244: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000a248: e8 c3 f9 ff ff              	callq	-1597 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE9push_backEOS3_>
10000a24d: e9 94 04 00 00              	jmp	1172 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x6c6>
10000a252: 48 89 45 c0                 	movq	%rax, -64(%rbp)
10000a256: 4c 89 e8                    	movq	%r13, %rax
10000a259: 48 29 d8                    	subq	%rbx, %rax
10000a25c: 0f 86 b6 00 00 00           	jbe	182 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x2f8>
10000a262: 48 c1 f8 03                 	sarq	$3, %rax
10000a266: 48 8d 48 01                 	leaq	1(%rax), %rcx
10000a26a: 48 c1 e9 3f                 	shrq	$63, %rcx
10000a26e: 48 8d 44 08 01              	leaq	1(%rax,%rcx), %rax
10000a273: 48 c1 e0 02                 	shlq	$2, %rax
10000a277: 48 83 e0 f8                 	andq	$-8, %rax
10000a27b: 49 29 c5                    	subq	%rax, %r13
10000a27e: e9 fa 00 00 00              	jmp	250 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x35d>
10000a283: 48 89 55 c8                 	movq	%rdx, -56(%rbp)
10000a287: 4c 29 f0                    	subq	%r14, %rax
10000a28a: 48 89 c1                    	movq	%rax, %rcx
10000a28d: 48 c1 f9 02                 	sarq	$2, %rcx
10000a291: 48 85 c0                    	testq	%rax, %rax
10000a294: 41 bd 01 00 00 00           	movl	$1, %r13d
10000a29a: 4c 0f 45 e9                 	cmovneq	%rcx, %r13
10000a29e: 4c 89 e8                    	movq	%r13, %rax
10000a2a1: 48 c1 e8 3d                 	shrq	$61, %rax
10000a2a5: 0f 85 27 05 00 00           	jne	1319 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x7b2>
10000a2ab: 4d 89 ec                    	movq	%r13, %r12
10000a2ae: 49 c1 ec 02                 	shrq	$2, %r12
10000a2b2: 4a 8d 3c ed 00 00 00 00     	leaq	(,%r13,8), %rdi
10000a2ba: e8 21 0d 00 00              	callq	3361 <dyld_stub_binder+0x10000afe0>
10000a2bf: 4e 8d 14 e0                 	leaq	(%rax,%r12,8), %r10
10000a2c3: 4d 89 d1                    	movq	%r10, %r9
10000a2c6: 4e 8d 04 e8                 	leaq	(%rax,%r13,8), %r8
10000a2ca: 49 29 df                    	subq	%rbx, %r15
10000a2cd: 0f 84 b5 02 00 00           	je	693 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x568>
10000a2d3: 49 8d 57 f8                 	leaq	-8(%r15), %rdx
10000a2d7: 89 d6                       	movl	%edx, %esi
10000a2d9: c1 ee 03                    	shrl	$3, %esi
10000a2dc: ff c6                       	incl	%esi
10000a2de: 48 83 e6 07                 	andq	$7, %rsi
10000a2e2: 0f 84 33 03 00 00           	je	819 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x5fb>
10000a2e8: 48 f7 de                    	negq	%rsi
10000a2eb: 4c 89 cf                    	movq	%r9, %rdi
10000a2ee: 66 90                       	nop
10000a2f0: 48 8b 0b                    	movq	(%rbx), %rcx
10000a2f3: 48 89 0f                    	movq	%rcx, (%rdi)
10000a2f6: 48 83 c7 08                 	addq	$8, %rdi
10000a2fa: 48 83 c3 08                 	addq	$8, %rbx
10000a2fe: 48 ff c6                    	incq	%rsi
10000a301: 75 ed                       	jne	-19 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x2d0>
10000a303: 48 89 fe                    	movq	%rdi, %rsi
10000a306: 4d 01 fa                    	addq	%r15, %r10
10000a309: 48 83 fa 38                 	cmpq	$56, %rdx
10000a30d: 0f 83 1b 03 00 00           	jae	795 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x60e>
10000a313: e9 92 03 00 00              	jmp	914 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x68a>
10000a318: 49 89 df                    	movq	%rbx, %r15
10000a31b: 49 29 d8                    	subq	%rbx, %r8
10000a31e: 4c 89 c0                    	movq	%r8, %rax
10000a321: 48 c1 f8 02                 	sarq	$2, %rax
10000a325: 4d 85 c0                    	testq	%r8, %r8
10000a328: bb 01 00 00 00              	movl	$1, %ebx
10000a32d: 48 0f 45 d8                 	cmovneq	%rax, %rbx
10000a331: 48 b8 ff ff ff ff ff ff ff 1f       	movabsq	$2305843009213693951, %rax
10000a33b: 48 39 c3                    	cmpq	%rax, %rbx
10000a33e: 0f 87 93 04 00 00           	ja	1171 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x7b7>
10000a344: 48 8d 3c dd 00 00 00 00     	leaq	(,%rbx,8), %rdi
10000a34c: e8 8f 0c 00 00              	callq	3215 <dyld_stub_binder+0x10000afe0>
10000a351: 49 89 c4                    	movq	%rax, %r12
10000a354: 48 89 d8                    	movq	%rbx, %rax
10000a357: 48 83 e0 fc                 	andq	$-4, %rax
10000a35b: 4d 8d 2c 44                 	leaq	(%r12,%rax,2), %r13
10000a35f: 49 8d 1c dc                 	leaq	(%r12,%rbx,8), %rbx
10000a363: 4c 89 ff                    	movq	%r15, %rdi
10000a366: e8 69 0c 00 00              	callq	3177 <dyld_stub_binder+0x10000afd4>
10000a36b: 49 89 d8                    	movq	%rbx, %r8
10000a36e: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
10000a372: 48 8b 56 08                 	movq	8(%rsi), %rdx
10000a376: 4c 8b 76 10                 	movq	16(%rsi), %r14
10000a37a: 4c 89 e3                    	movq	%r12, %rbx
10000a37d: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000a381: 49 89 45 00                 	movq	%rax, (%r13)
10000a385: 4d 8d 65 08                 	leaq	8(%r13), %r12
10000a389: 49 39 d6                    	cmpq	%rdx, %r14
10000a38c: 75 4a                       	jne	74 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x3b8>
10000a38e: 48 8b 3e                    	movq	(%rsi), %rdi
10000a391: 48 89 1e                    	movq	%rbx, (%rsi)
10000a394: 4c 89 6e 08                 	movq	%r13, 8(%rsi)
10000a398: 4c 89 66 10                 	movq	%r12, 16(%rsi)
10000a39c: 4c 89 46 18                 	movq	%r8, 24(%rsi)
10000a3a0: 48 85 ff                    	testq	%rdi, %rdi
10000a3a3: 0f 84 3d 03 00 00           	je	829 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x6c6>
10000a3a9: 48 83 c4 28                 	addq	$40, %rsp
10000a3ad: 5b                          	popq	%rbx
10000a3ae: 41 5c                       	popq	%r12
10000a3b0: 41 5d                       	popq	%r13
10000a3b2: 41 5e                       	popq	%r14
10000a3b4: 41 5f                       	popq	%r15
10000a3b6: 5d                          	popq	%rbp
10000a3b7: e9 18 0c 00 00              	jmp	3096 <dyld_stub_binder+0x10000afd4>
10000a3bc: 0f 1f 40 00                 	nopl	(%rax)
10000a3c0: 4d 89 ef                    	movq	%r13, %r15
10000a3c3: 49 83 c6 f8                 	addq	$-8, %r14
10000a3c7: 49 8b 06                    	movq	(%r14), %rax
10000a3ca: 49 89 47 f8                 	movq	%rax, -8(%r15)
10000a3ce: 49 83 c5 f8                 	addq	$-8, %r13
10000a3d2: 4c 3b 76 08                 	cmpq	8(%rsi), %r14
10000a3d6: 74 b6                       	je	-74 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x36e>
10000a3d8: 49 39 dd                    	cmpq	%rbx, %r13
10000a3db: 75 e3                       	jne	-29 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x3a0>
10000a3dd: 4d 39 c4                    	cmpq	%r8, %r12
10000a3e0: 73 55                       	jae	85 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x417>
10000a3e2: 48 89 5d c8                 	movq	%rbx, -56(%rbp)
10000a3e6: 4c 89 c0                    	movq	%r8, %rax
10000a3e9: 4c 29 e0                    	subq	%r12, %rax
10000a3ec: 48 c1 f8 03                 	sarq	$3, %rax
10000a3f0: 48 8d 48 01                 	leaq	1(%rax), %rcx
10000a3f4: 48 c1 e9 3f                 	shrq	$63, %rcx
10000a3f8: 48 8d 44 08 01              	leaq	1(%rax,%rcx), %rax
10000a3fd: 48 83 e0 fe                 	andq	$-2, %rax
10000a401: 49 8d 1c 84                 	leaq	(%r12,%rax,4), %rbx
10000a405: 49 89 df                    	movq	%rbx, %r15
10000a408: 4d 29 ec                    	subq	%r13, %r12
10000a40b: 74 1e                       	je	30 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x40b>
10000a40d: 49 89 df                    	movq	%rbx, %r15
10000a410: 4d 29 e7                    	subq	%r12, %r15
10000a413: 4c 89 ff                    	movq	%r15, %rdi
10000a416: 4c 89 ee                    	movq	%r13, %rsi
10000a419: 4c 89 e2                    	movq	%r12, %rdx
10000a41c: 4d 89 c4                    	movq	%r8, %r12
10000a41f: e8 40 0c 00 00              	callq	3136 <dyld_stub_binder+0x10000b064>
10000a424: 4d 89 e0                    	movq	%r12, %r8
10000a427: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
10000a42b: 4d 89 fd                    	movq	%r15, %r13
10000a42e: 49 89 dc                    	movq	%rbx, %r12
10000a431: 48 8b 5d c8                 	movq	-56(%rbp), %rbx
10000a435: eb 8c                       	jmp	-116 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x3a3>
10000a437: 49 89 df                    	movq	%rbx, %r15
10000a43a: 49 29 d8                    	subq	%rbx, %r8
10000a43d: 4c 89 c3                    	movq	%r8, %rbx
10000a440: 48 c1 fb 02                 	sarq	$2, %rbx
10000a444: 4d 85 c0                    	testq	%r8, %r8
10000a447: b8 01 00 00 00              	movl	$1, %eax
10000a44c: 48 0f 44 d8                 	cmoveq	%rax, %rbx
10000a450: 48 b8 ff ff ff ff ff ff ff 1f       	movabsq	$2305843009213693951, %rax
10000a45a: 48 39 c3                    	cmpq	%rax, %rbx
10000a45d: 0f 87 68 03 00 00           	ja	872 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x7ab>
10000a463: 48 8d 3c dd 00 00 00 00     	leaq	(,%rbx,8), %rdi
10000a46b: e8 70 0b 00 00              	callq	2928 <dyld_stub_binder+0x10000afe0>
10000a470: 48 8d 73 03                 	leaq	3(%rbx), %rsi
10000a474: 48 c1 ee 02                 	shrq	$2, %rsi
10000a478: 4c 8d 14 f0                 	leaq	(%rax,%rsi,8), %r10
10000a47c: 4d 89 d7                    	movq	%r10, %r15
10000a47f: 4c 8d 0c d8                 	leaq	(%rax,%rbx,8), %r9
10000a483: 4d 29 ec                    	subq	%r13, %r12
10000a486: 4c 89 4d c8                 	movq	%r9, -56(%rbp)
10000a48a: 0f 84 da 00 00 00           	je	218 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x54a>
10000a490: 4d 8d 44 24 f8              	leaq	-8(%r12), %r8
10000a495: 44 89 c2                    	movl	%r8d, %edx
10000a498: c1 ea 03                    	shrl	$3, %edx
10000a49b: ff c2                       	incl	%edx
10000a49d: 48 83 e2 07                 	andq	$7, %rdx
10000a4a1: 74 31                       	je	49 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x4b4>
10000a4a3: 48 f7 da                    	negq	%rdx
10000a4a6: 4c 89 ff                    	movq	%r15, %rdi
10000a4a9: 4c 89 e9                    	movq	%r13, %rcx
10000a4ac: 0f 1f 40 00                 	nopl	(%rax)
10000a4b0: 48 8b 19                    	movq	(%rcx), %rbx
10000a4b3: 48 89 1f                    	movq	%rbx, (%rdi)
10000a4b6: 48 83 c7 08                 	addq	$8, %rdi
10000a4ba: 48 83 c1 08                 	addq	$8, %rcx
10000a4be: 48 ff c2                    	incq	%rdx
10000a4c1: 75 ed                       	jne	-19 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x490>
10000a4c3: 48 89 fa                    	movq	%rdi, %rdx
10000a4c6: 4d 01 e2                    	addq	%r12, %r10
10000a4c9: 49 83 f8 38                 	cmpq	$56, %r8
10000a4cd: 73 1b                       	jae	27 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x4ca>
10000a4cf: e9 96 00 00 00              	jmp	150 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x54a>
10000a4d4: 4c 89 ff                    	movq	%r15, %rdi
10000a4d7: 4c 89 fa                    	movq	%r15, %rdx
10000a4da: 4c 89 e9                    	movq	%r13, %rcx
10000a4dd: 4d 01 e2                    	addq	%r12, %r10
10000a4e0: 49 83 f8 38                 	cmpq	$56, %r8
10000a4e4: 0f 82 80 00 00 00           	jb	128 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x54a>
10000a4ea: 49 c1 fc 03                 	sarq	$3, %r12
10000a4ee: 48 c1 e6 03                 	shlq	$3, %rsi
10000a4f2: 4a 8d 34 e6                 	leaq	(%rsi,%r12,8), %rsi
10000a4f6: 48 29 fe                    	subq	%rdi, %rsi
10000a4f9: 49 89 c1                    	movq	%rax, %r9
10000a4fc: 49 01 f1                    	addq	%rsi, %r9
10000a4ff: 4c 8d 47 40                 	leaq	64(%rdi), %r8
10000a503: 31 db                       	xorl	%ebx, %ebx
10000a505: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a50f: 90                          	nop
10000a510: 48 8b 34 19                 	movq	(%rcx,%rbx), %rsi
10000a514: 48 89 32                    	movq	%rsi, (%rdx)
10000a517: 48 8b 74 19 08              	movq	8(%rcx,%rbx), %rsi
10000a51c: 48 89 74 1f 08              	movq	%rsi, 8(%rdi,%rbx)
10000a521: 48 8b 74 19 10              	movq	16(%rcx,%rbx), %rsi
10000a526: 48 89 74 1f 10              	movq	%rsi, 16(%rdi,%rbx)
10000a52b: 48 8b 74 19 18              	movq	24(%rcx,%rbx), %rsi
10000a530: 48 89 74 1f 18              	movq	%rsi, 24(%rdi,%rbx)
10000a535: 48 8b 74 19 20              	movq	32(%rcx,%rbx), %rsi
10000a53a: 48 89 74 1f 20              	movq	%rsi, 32(%rdi,%rbx)
10000a53f: 48 8b 74 19 28              	movq	40(%rcx,%rbx), %rsi
10000a544: 48 89 74 1f 28              	movq	%rsi, 40(%rdi,%rbx)
10000a549: 48 8b 74 19 30              	movq	48(%rcx,%rbx), %rsi
10000a54e: 48 89 74 1f 30              	movq	%rsi, 48(%rdi,%rbx)
10000a553: 48 8b 74 19 38              	movq	56(%rcx,%rbx), %rsi
10000a558: 48 89 74 1f 38              	movq	%rsi, 56(%rdi,%rbx)
10000a55d: 49 8d 14 18                 	leaq	(%r8,%rbx), %rdx
10000a561: 48 83 c3 40                 	addq	$64, %rbx
10000a565: 49 39 d9                    	cmpq	%rbx, %r9
10000a568: 75 a6                       	jne	-90 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x4f0>
10000a56a: 4d 89 d4                    	movq	%r10, %r12
10000a56d: 48 89 c3                    	movq	%rax, %rbx
10000a570: 4c 89 ef                    	movq	%r13, %rdi
10000a573: e8 5c 0a 00 00              	callq	2652 <dyld_stub_binder+0x10000afd4>
10000a578: 4d 89 fd                    	movq	%r15, %r13
10000a57b: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
10000a57f: 4c 8b 45 c8                 	movq	-56(%rbp), %r8
10000a583: e9 3b fe ff ff              	jmp	-453 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x3a3>
10000a588: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000a58c: e9 20 01 00 00              	jmp	288 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x691>
10000a591: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
10000a595: 4c 29 f0                    	subq	%r14, %rax
10000a598: 48 89 c1                    	movq	%rax, %rcx
10000a59b: 48 c1 f9 02                 	sarq	$2, %rcx
10000a59f: 48 85 c0                    	testq	%rax, %rax
10000a5a2: 41 bd 01 00 00 00           	movl	$1, %r13d
10000a5a8: 4c 0f 45 e9                 	cmovneq	%rcx, %r13
10000a5ac: 4c 89 e8                    	movq	%r13, %rax
10000a5af: 48 c1 e8 3d                 	shrq	$61, %rax
10000a5b3: 0f 85 19 02 00 00           	jne	537 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x7b2>
10000a5b9: 4d 89 ec                    	movq	%r13, %r12
10000a5bc: 49 c1 ec 02                 	shrq	$2, %r12
10000a5c0: 4a 8d 3c ed 00 00 00 00     	leaq	(,%r13,8), %rdi
10000a5c8: e8 13 0a 00 00              	callq	2579 <dyld_stub_binder+0x10000afe0>
10000a5cd: 4e 8d 14 e0                 	leaq	(%rax,%r12,8), %r10
10000a5d1: 4d 89 d1                    	movq	%r10, %r9
10000a5d4: 4e 8d 04 e8                 	leaq	(%rax,%r13,8), %r8
10000a5d8: 49 29 df                    	subq	%rbx, %r15
10000a5db: 0f 84 14 01 00 00           	je	276 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x6d5>
10000a5e1: 49 8d 57 f8                 	leaq	-8(%r15), %rdx
10000a5e5: 89 d6                       	movl	%edx, %esi
10000a5e7: c1 ee 03                    	shrl	$3, %esi
10000a5ea: ff c6                       	incl	%esi
10000a5ec: 48 83 e6 07                 	andq	$7, %rsi
10000a5f0: 0f 84 08 01 00 00           	je	264 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x6de>
10000a5f6: 48 f7 de                    	negq	%rsi
10000a5f9: 4c 89 cf                    	movq	%r9, %rdi
10000a5fc: 0f 1f 40 00                 	nopl	(%rax)
10000a600: 48 8b 0b                    	movq	(%rbx), %rcx
10000a603: 48 89 0f                    	movq	%rcx, (%rdi)
10000a606: 48 83 c7 08                 	addq	$8, %rdi
10000a60a: 48 83 c3 08                 	addq	$8, %rbx
10000a60e: 48 ff c6                    	incq	%rsi
10000a611: 75 ed                       	jne	-19 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x5e0>
10000a613: 48 89 fe                    	movq	%rdi, %rsi
10000a616: e9 e9 00 00 00              	jmp	233 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x6e4>
10000a61b: 4c 89 cf                    	movq	%r9, %rdi
10000a61e: 4c 89 ce                    	movq	%r9, %rsi
10000a621: 4d 01 fa                    	addq	%r15, %r10
10000a624: 48 83 fa 38                 	cmpq	$56, %rdx
10000a628: 0f 82 7c 00 00 00           	jb	124 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x68a>
10000a62e: 49 c1 ff 03                 	sarq	$3, %r15
10000a632: 49 c1 e4 03                 	shlq	$3, %r12
10000a636: 4b 8d 0c fc                 	leaq	(%r12,%r15,8), %rcx
10000a63a: 48 29 f9                    	subq	%rdi, %rcx
10000a63d: 49 89 c6                    	movq	%rax, %r14
10000a640: 49 01 ce                    	addq	%rcx, %r14
10000a643: 4c 8d 5f 40                 	leaq	64(%rdi), %r11
10000a647: 31 c9                       	xorl	%ecx, %ecx
10000a649: 0f 1f 80 00 00 00 00        	nopl	(%rax)
10000a650: 48 8b 14 0b                 	movq	(%rbx,%rcx), %rdx
10000a654: 48 89 16                    	movq	%rdx, (%rsi)
10000a657: 48 8b 54 0b 08              	movq	8(%rbx,%rcx), %rdx
10000a65c: 48 89 54 0f 08              	movq	%rdx, 8(%rdi,%rcx)
10000a661: 48 8b 54 0b 10              	movq	16(%rbx,%rcx), %rdx
10000a666: 48 89 54 0f 10              	movq	%rdx, 16(%rdi,%rcx)
10000a66b: 48 8b 54 0b 18              	movq	24(%rbx,%rcx), %rdx
10000a670: 48 89 54 0f 18              	movq	%rdx, 24(%rdi,%rcx)
10000a675: 48 8b 54 0b 20              	movq	32(%rbx,%rcx), %rdx
10000a67a: 48 89 54 0f 20              	movq	%rdx, 32(%rdi,%rcx)
10000a67f: 48 8b 54 0b 28              	movq	40(%rbx,%rcx), %rdx
10000a684: 48 89 54 0f 28              	movq	%rdx, 40(%rdi,%rcx)
10000a689: 48 8b 54 0b 30              	movq	48(%rbx,%rcx), %rdx
10000a68e: 48 89 54 0f 30              	movq	%rdx, 48(%rdi,%rcx)
10000a693: 48 8b 54 0b 38              	movq	56(%rbx,%rcx), %rdx
10000a698: 48 89 54 0f 38              	movq	%rdx, 56(%rdi,%rcx)
10000a69d: 49 8d 34 0b                 	leaq	(%r11,%rcx), %rsi
10000a6a1: 48 83 c1 40                 	addq	$64, %rcx
10000a6a5: 49 39 ce                    	cmpq	%rcx, %r14
10000a6a8: 75 a6                       	jne	-90 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x630>
10000a6aa: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000a6ae: 4c 8b 37                    	movq	(%rdi), %r14
10000a6b1: 48 89 07                    	movq	%rax, (%rdi)
10000a6b4: 4c 89 4f 08                 	movq	%r9, 8(%rdi)
10000a6b8: 4c 89 57 10                 	movq	%r10, 16(%rdi)
10000a6bc: 4c 89 47 18                 	movq	%r8, 24(%rdi)
10000a6c0: 4d 85 f6                    	testq	%r14, %r14
10000a6c3: 74 12                       	je	18 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x6b7>
10000a6c5: 4c 89 f7                    	movq	%r14, %rdi
10000a6c8: e8 07 09 00 00              	callq	2311 <dyld_stub_binder+0x10000afd4>
10000a6cd: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000a6d1: 4c 8b 7f 10                 	movq	16(%rdi), %r15
10000a6d5: eb 03                       	jmp	3 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x6ba>
10000a6d7: 4d 89 d7                    	movq	%r10, %r15
10000a6da: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
10000a6de: 49 89 17                    	movq	%rdx, (%r15)
10000a6e1: 48 83 47 10 08              	addq	$8, 16(%rdi)
10000a6e6: 48 83 c4 28                 	addq	$40, %rsp
10000a6ea: 5b                          	popq	%rbx
10000a6eb: 41 5c                       	popq	%r12
10000a6ed: 41 5d                       	popq	%r13
10000a6ef: 41 5e                       	popq	%r14
10000a6f1: 41 5f                       	popq	%r15
10000a6f3: 5d                          	popq	%rbp
10000a6f4: c3                          	retq
10000a6f5: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
10000a6f9: e9 93 00 00 00              	jmp	147 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x771>
10000a6fe: 4c 89 cf                    	movq	%r9, %rdi
10000a701: 4c 89 ce                    	movq	%r9, %rsi
10000a704: 4d 01 fa                    	addq	%r15, %r10
10000a707: 48 83 fa 38                 	cmpq	$56, %rdx
10000a70b: 0f 82 79 00 00 00           	jb	121 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x76a>
10000a711: 49 c1 ff 03                 	sarq	$3, %r15
10000a715: 49 c1 e4 03                 	shlq	$3, %r12
10000a719: 4b 8d 0c fc                 	leaq	(%r12,%r15,8), %rcx
10000a71d: 48 29 f9                    	subq	%rdi, %rcx
10000a720: 49 89 c6                    	movq	%rax, %r14
10000a723: 49 01 ce                    	addq	%rcx, %r14
10000a726: 4c 8d 5f 40                 	leaq	64(%rdi), %r11
10000a72a: 31 c9                       	xorl	%ecx, %ecx
10000a72c: 0f 1f 40 00                 	nopl	(%rax)
10000a730: 48 8b 14 0b                 	movq	(%rbx,%rcx), %rdx
10000a734: 48 89 16                    	movq	%rdx, (%rsi)
10000a737: 48 8b 54 0b 08              	movq	8(%rbx,%rcx), %rdx
10000a73c: 48 89 54 0f 08              	movq	%rdx, 8(%rdi,%rcx)
10000a741: 48 8b 54 0b 10              	movq	16(%rbx,%rcx), %rdx
10000a746: 48 89 54 0f 10              	movq	%rdx, 16(%rdi,%rcx)
10000a74b: 48 8b 54 0b 18              	movq	24(%rbx,%rcx), %rdx
10000a750: 48 89 54 0f 18              	movq	%rdx, 24(%rdi,%rcx)
10000a755: 48 8b 54 0b 20              	movq	32(%rbx,%rcx), %rdx
10000a75a: 48 89 54 0f 20              	movq	%rdx, 32(%rdi,%rcx)
10000a75f: 48 8b 54 0b 28              	movq	40(%rbx,%rcx), %rdx
10000a764: 48 89 54 0f 28              	movq	%rdx, 40(%rdi,%rcx)
10000a769: 48 8b 54 0b 30              	movq	48(%rbx,%rcx), %rdx
10000a76e: 48 89 54 0f 30              	movq	%rdx, 48(%rdi,%rcx)
10000a773: 48 8b 54 0b 38              	movq	56(%rbx,%rcx), %rdx
10000a778: 48 89 54 0f 38              	movq	%rdx, 56(%rdi,%rcx)
10000a77d: 49 8d 34 0b                 	leaq	(%r11,%rcx), %rsi
10000a781: 48 83 c1 40                 	addq	$64, %rcx
10000a785: 49 39 ce                    	cmpq	%rcx, %r14
10000a788: 75 a6                       	jne	-90 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x710>
10000a78a: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
10000a78e: 4c 8b 32                    	movq	(%rdx), %r14
10000a791: 48 89 02                    	movq	%rax, (%rdx)
10000a794: 4c 89 4a 08                 	movq	%r9, 8(%rdx)
10000a798: 4c 89 52 10                 	movq	%r10, 16(%rdx)
10000a79c: 4c 89 42 18                 	movq	%r8, 24(%rdx)
10000a7a0: 4d 85 f6                    	testq	%r14, %r14
10000a7a3: 74 12                       	je	18 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x797>
10000a7a5: 4c 89 f7                    	movq	%r14, %rdi
10000a7a8: e8 27 08 00 00              	callq	2087 <dyld_stub_binder+0x10000afd4>
10000a7ad: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
10000a7b1: 4c 8b 7a 10                 	movq	16(%rdx), %r15
10000a7b5: eb 03                       	jmp	3 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x79a>
10000a7b7: 4d 89 d7                    	movq	%r10, %r15
10000a7ba: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
10000a7be: 49 89 37                    	movq	%rsi, (%r15)
10000a7c1: 48 83 42 10 08              	addq	$8, 16(%rdx)
10000a7c6: e9 1b ff ff ff              	jmp	-229 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x6c6>
10000a7cb: e8 c0 dc ff ff              	callq	-9024 <__ZNSt3__1L20__throw_length_errorEPKc>
10000a7d0: 0f 0b                       	ud2
10000a7d2: e8 b9 dc ff ff              	callq	-9031 <__ZNSt3__1L20__throw_length_errorEPKc>
10000a7d7: e8 b4 dc ff ff              	callq	-9036 <__ZNSt3__1L20__throw_length_errorEPKc>
10000a7dc: eb f2                       	jmp	-14 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x7b0>
10000a7de: eb 16                       	jmp	22 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x7d6>
10000a7e0: 48 89 c3                    	movq	%rax, %rbx
10000a7e3: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
10000a7e7: e8 e8 07 00 00              	callq	2024 <dyld_stub_binder+0x10000afd4>
10000a7ec: eb 10                       	jmp	16 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x7de>
10000a7ee: 49 89 df                    	movq	%rbx, %r15
10000a7f1: 48 89 c3                    	movq	%rax, %rbx
10000a7f4: eb 08                       	jmp	8 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x7de>
10000a7f6: 48 89 c3                    	movq	%rax, %rbx
10000a7f9: 4d 85 ff                    	testq	%r15, %r15
10000a7fc: 74 08                       	je	8 <__ZNSt3__15dequeIP4NodeNS_9allocatorIS2_EEE19__add_back_capacityEv+0x7e6>
10000a7fe: 4c 89 ff                    	movq	%r15, %rdi
10000a801: e8 ce 07 00 00              	callq	1998 <dyld_stub_binder+0x10000afd4>
10000a806: 48 89 df                    	movq	%rbx, %rdi
10000a809: e8 12 07 00 00              	callq	1810 <dyld_stub_binder+0x10000af20>
10000a80e: 0f 0b                       	ud2

000000010000a810 __ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_:
10000a810: 55                          	pushq	%rbp
10000a811: 48 89 e5                    	movq	%rsp, %rbp
10000a814: 41 57                       	pushq	%r15
10000a816: 41 56                       	pushq	%r14
10000a818: 41 55                       	pushq	%r13
10000a81a: 41 54                       	pushq	%r12
10000a81c: 53                          	pushq	%rbx
10000a81d: 50                          	pushq	%rax
10000a81e: 49 89 f6                    	movq	%rsi, %r14
10000a821: 49 89 ff                    	movq	%rdi, %r15
10000a824: 48 8b 0f                    	movq	(%rdi), %rcx
10000a827: 48 8b 5f 08                 	movq	8(%rdi), %rbx
10000a82b: 48 39 cb                    	cmpq	%rcx, %rbx
10000a82e: 74 08                       	je	8 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x28>
10000a830: 49 89 dc                    	movq	%rbx, %r12
10000a833: e9 a5 01 00 00              	jmp	421 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x1cd>
10000a838: 4c 89 75 d0                 	movq	%r14, -48(%rbp)
10000a83c: 4d 8b 6f 10                 	movq	16(%r15), %r13
10000a840: 49 8b 47 18                 	movq	24(%r15), %rax
10000a844: 49 39 c5                    	cmpq	%rax, %r13
10000a847: 73 4c                       	jae	76 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x85>
10000a849: 4c 29 e8                    	subq	%r13, %rax
10000a84c: 48 c1 f8 03                 	sarq	$3, %rax
10000a850: 48 8d 48 01                 	leaq	1(%rax), %rcx
10000a854: 48 c1 e9 3f                 	shrq	$63, %rcx
10000a858: 4c 8d 74 08 01              	leaq	1(%rax,%rcx), %r14
10000a85d: 49 d1 fe                    	sarq	%r14
10000a860: 4f 8d 64 f5 00              	leaq	(%r13,%r14,8), %r12
10000a865: 4c 89 ea                    	movq	%r13, %rdx
10000a868: 48 29 da                    	subq	%rbx, %rdx
10000a86b: 74 12                       	je	18 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x6f>
10000a86d: 49 29 d4                    	subq	%rdx, %r12
10000a870: 4c 89 e7                    	movq	%r12, %rdi
10000a873: 48 89 de                    	movq	%rbx, %rsi
10000a876: e8 e9 07 00 00              	callq	2025 <dyld_stub_binder+0x10000b064>
10000a87b: 4d 8b 6f 10                 	movq	16(%r15), %r13
10000a87f: 4d 89 67 08                 	movq	%r12, 8(%r15)
10000a883: 4b 8d 44 f5 00              	leaq	(%r13,%r14,8), %rax
10000a888: 49 89 47 10                 	movq	%rax, 16(%r15)
10000a88c: 4c 8b 75 d0                 	movq	-48(%rbp), %r14
10000a890: e9 48 01 00 00              	jmp	328 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x1cd>
10000a895: 48 29 c8                    	subq	%rcx, %rax
10000a898: 48 89 c1                    	movq	%rax, %rcx
10000a89b: 48 c1 f9 02                 	sarq	$2, %rcx
10000a89f: 48 85 c0                    	testq	%rax, %rax
10000a8a2: 41 be 01 00 00 00           	movl	$1, %r14d
10000a8a8: 4c 0f 45 f1                 	cmovneq	%rcx, %r14
10000a8ac: 4c 89 f0                    	movq	%r14, %rax
10000a8af: 48 c1 e8 3d                 	shrq	$61, %rax
10000a8b3: 0f 85 40 01 00 00           	jne	320 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x1e9>
10000a8b9: 4d 8d 66 03                 	leaq	3(%r14), %r12
10000a8bd: 49 c1 ec 02                 	shrq	$2, %r12
10000a8c1: 4a 8d 3c f5 00 00 00 00     	leaq	(,%r14,8), %rdi
10000a8c9: e8 12 07 00 00              	callq	1810 <dyld_stub_binder+0x10000afe0>
10000a8ce: 4c 89 e7                    	movq	%r12, %rdi
10000a8d1: 4e 8d 0c e0                 	leaq	(%rax,%r12,8), %r9
10000a8d5: 4d 89 cc                    	movq	%r9, %r12
10000a8d8: 4e 8d 04 f0                 	leaq	(%rax,%r14,8), %r8
10000a8dc: 49 29 dd                    	subq	%rbx, %r13
10000a8df: 74 43                       	je	67 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x114>
10000a8e1: 4d 8d 55 f8                 	leaq	-8(%r13), %r10
10000a8e5: 44 89 d2                    	movl	%r10d, %edx
10000a8e8: c1 ea 03                    	shrl	$3, %edx
10000a8eb: ff c2                       	incl	%edx
10000a8ed: 48 83 e2 07                 	andq	$7, %rdx
10000a8f1: 4c 8b 75 d0                 	movq	-48(%rbp), %r14
10000a8f5: 74 36                       	je	54 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x11d>
10000a8f7: 48 f7 da                    	negq	%rdx
10000a8fa: 4c 89 e6                    	movq	%r12, %rsi
10000a8fd: 0f 1f 00                    	nopl	(%rax)
10000a900: 48 8b 0b                    	movq	(%rbx), %rcx
10000a903: 48 89 0e                    	movq	%rcx, (%rsi)
10000a906: 48 83 c6 08                 	addq	$8, %rsi
10000a90a: 48 83 c3 08                 	addq	$8, %rbx
10000a90e: 48 ff c2                    	incq	%rdx
10000a911: 75 ed                       	jne	-19 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0xf0>
10000a913: 48 89 f2                    	movq	%rsi, %rdx
10000a916: 4d 01 e9                    	addq	%r13, %r9
10000a919: 49 83 fa 38                 	cmpq	$56, %r10
10000a91d: 73 21                       	jae	33 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x130>
10000a91f: e9 96 00 00 00              	jmp	150 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x1aa>
10000a924: 4c 8b 75 d0                 	movq	-48(%rbp), %r14
10000a928: e9 90 00 00 00              	jmp	144 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x1ad>
10000a92d: 4c 89 e6                    	movq	%r12, %rsi
10000a930: 4c 89 e2                    	movq	%r12, %rdx
10000a933: 4d 01 e9                    	addq	%r13, %r9
10000a936: 49 83 fa 38                 	cmpq	$56, %r10
10000a93a: 0f 82 7a 00 00 00           	jb	122 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x1aa>
10000a940: 49 c1 fd 03                 	sarq	$3, %r13
10000a944: 48 c1 e7 03                 	shlq	$3, %rdi
10000a948: 4a 8d 0c ef                 	leaq	(%rdi,%r13,8), %rcx
10000a94c: 48 29 f1                    	subq	%rsi, %rcx
10000a94f: 49 89 c3                    	movq	%rax, %r11
10000a952: 49 01 cb                    	addq	%rcx, %r11
10000a955: 4c 8d 56 40                 	leaq	64(%rsi), %r10
10000a959: 31 c9                       	xorl	%ecx, %ecx
10000a95b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
10000a960: 48 8b 3c 0b                 	movq	(%rbx,%rcx), %rdi
10000a964: 48 89 3a                    	movq	%rdi, (%rdx)
10000a967: 48 8b 54 0b 08              	movq	8(%rbx,%rcx), %rdx
10000a96c: 48 89 54 0e 08              	movq	%rdx, 8(%rsi,%rcx)
10000a971: 48 8b 54 0b 10              	movq	16(%rbx,%rcx), %rdx
10000a976: 48 89 54 0e 10              	movq	%rdx, 16(%rsi,%rcx)
10000a97b: 48 8b 54 0b 18              	movq	24(%rbx,%rcx), %rdx
10000a980: 48 89 54 0e 18              	movq	%rdx, 24(%rsi,%rcx)
10000a985: 48 8b 54 0b 20              	movq	32(%rbx,%rcx), %rdx
10000a98a: 48 89 54 0e 20              	movq	%rdx, 32(%rsi,%rcx)
10000a98f: 48 8b 54 0b 28              	movq	40(%rbx,%rcx), %rdx
10000a994: 48 89 54 0e 28              	movq	%rdx, 40(%rsi,%rcx)
10000a999: 48 8b 54 0b 30              	movq	48(%rbx,%rcx), %rdx
10000a99e: 48 89 54 0e 30              	movq	%rdx, 48(%rsi,%rcx)
10000a9a3: 48 8b 54 0b 38              	movq	56(%rbx,%rcx), %rdx
10000a9a8: 48 89 54 0e 38              	movq	%rdx, 56(%rsi,%rcx)
10000a9ad: 49 8d 14 0a                 	leaq	(%r10,%rcx), %rdx
10000a9b1: 48 83 c1 40                 	addq	$64, %rcx
10000a9b5: 49 39 cb                    	cmpq	%rcx, %r11
10000a9b8: 75 a6                       	jne	-90 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x150>
10000a9ba: 49 8b 1f                    	movq	(%r15), %rbx
10000a9bd: 49 89 07                    	movq	%rax, (%r15)
10000a9c0: 4d 89 67 08                 	movq	%r12, 8(%r15)
10000a9c4: 4d 89 4f 10                 	movq	%r9, 16(%r15)
10000a9c8: 4d 89 47 18                 	movq	%r8, 24(%r15)
10000a9cc: 48 85 db                    	testq	%rbx, %rbx
10000a9cf: 74 0c                       	je	12 <__ZNSt3__114__split_bufferIPP4NodeNS_9allocatorIS3_EEE10push_frontEOS3_+0x1cd>
10000a9d1: 48 89 df                    	movq	%rbx, %rdi
10000a9d4: e8 fb 05 00 00              	callq	1531 <dyld_stub_binder+0x10000afd4>
10000a9d9: 4d 8b 67 08                 	movq	8(%r15), %r12
10000a9dd: 49 8b 06                    	movq	(%r14), %rax
10000a9e0: 49 89 44 24 f8              	movq	%rax, -8(%r12)
10000a9e5: 49 83 47 08 f8              	addq	$-8, 8(%r15)
10000a9ea: 48 83 c4 08                 	addq	$8, %rsp
10000a9ee: 5b                          	popq	%rbx
10000a9ef: 41 5c                       	popq	%r12
10000a9f1: 41 5d                       	popq	%r13
10000a9f3: 41 5e                       	popq	%r14
10000a9f5: 41 5f                       	popq	%r15
10000a9f7: 5d                          	popq	%rbp
10000a9f8: c3                          	retq
10000a9f9: e8 92 da ff ff              	callq	-9582 <__ZNSt3__1L20__throw_length_errorEPKc>
10000a9fe: 90                          	nop
10000a9ff: 90                          	nop

000000010000aa00 __GLOBAL__sub_I_Node.cpp:
10000aa00: 55                          	pushq	%rbp
10000aa01: 48 89 e5                    	movq	%rsp, %rbp
10000aa04: c7 05 ca bb 07 00 00 00 00 00       	movl	$0, 506826(%rip)
10000aa0e: 48 c7 05 b7 bb 07 00 00 00 00 00    	movq	$0, 506807(%rip)
10000aa19: 48 c7 05 a4 bb 07 00 00 00 00 00    	movq	$0, 506788(%rip)
10000aa24: 48 c7 05 91 bb 07 00 00 00 00 00    	movq	$0, 506769(%rip)
10000aa2f: 48 c7 05 7e bb 07 00 00 00 00 00    	movq	$0, 506750(%rip)
10000aa3a: 48 c7 05 6b bb 07 00 00 00 00 00    	movq	$0, 506731(%rip)
10000aa45: 48 c7 05 58 bb 07 00 00 00 00 00    	movq	$0, 506712(%rip)
10000aa50: 48 8d 35 51 bb 07 00        	leaq	506705(%rip), %rsi
10000aa57: 48 8b 3d b2 15 00 00        	movq	5554(%rip), %rdi
10000aa5e: 48 8d 15 9b 55 ff ff        	leaq	-43621(%rip), %rdx
10000aa65: 5d                          	popq	%rbp
10000aa66: e9 87 05 00 00              	jmp	1415 <dyld_stub_binder+0x10000aff2>
10000aa6b: 90                          	nop
10000aa6c: 90                          	nop
10000aa6d: 90                          	nop
10000aa6e: 90                          	nop
10000aa6f: 90                          	nop

000000010000aa70 __ZN13NodeAllocatorC2Ev:
10000aa70: 55                          	pushq	%rbp
10000aa71: 48 89 e5                    	movq	%rsp, %rbp
10000aa74: 48 c7 87 0c 53 07 00 00 00 00 00    	movq	$0, 480012(%rdi)
10000aa7f: 48 81 c7 80 1a 06 00        	addq	$400000, %rdi
10000aa86: be 4c 9c 00 00              	movl	$40012, %esi
10000aa8b: e8 56 05 00 00              	callq	1366 <dyld_stub_binder+0x10000afe6>
10000aa90: 5d                          	popq	%rbp
10000aa91: c3                          	retq
10000aa92: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000aa9c: 0f 1f 40 00                 	nopl	(%rax)

000000010000aaa0 __ZN13NodeAllocatorC1Ev:
10000aaa0: 55                          	pushq	%rbp
10000aaa1: 48 89 e5                    	movq	%rsp, %rbp
10000aaa4: 48 c7 87 0c 53 07 00 00 00 00 00    	movq	$0, 480012(%rdi)
10000aaaf: 48 81 c7 80 1a 06 00        	addq	$400000, %rdi
10000aab6: be 4c 9c 00 00              	movl	$40012, %esi
10000aabb: e8 26 05 00 00              	callq	1318 <dyld_stub_binder+0x10000afe6>
10000aac0: 5d                          	popq	%rbp
10000aac1: c3                          	retq
10000aac2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000aacc: 0f 1f 40 00                 	nopl	(%rax)

000000010000aad0 __ZN13NodeAllocator12allocateNodeE3Rec:
10000aad0: 55                          	pushq	%rbp
10000aad1: 48 89 e5                    	movq	%rsp, %rbp
10000aad4: 41 56                       	pushq	%r14
10000aad6: 53                          	pushq	%rbx
10000aad7: 48 89 fb                    	movq	%rdi, %rbx
10000aada: 8b 87 0c 53 07 00           	movl	480012(%rdi), %eax
10000aae0: 85 c0                       	testl	%eax, %eax
10000aae2: 74 11                       	je	17 <__ZN13NodeAllocator12allocateNodeE3Rec+0x25>
10000aae4: ff c8                       	decl	%eax
10000aae6: 89 83 0c 53 07 00           	movl	%eax, 480012(%rbx)
10000aaec: 8b 8c 83 cc b6 06 00        	movl	440012(%rbx,%rax,4), %ecx
10000aaf3: eb 25                       	jmp	37 <__ZN13NodeAllocator12allocateNodeE3Rec+0x4a>
10000aaf5: 8b 8b c0 b6 06 00           	movl	440000(%rbx), %ecx
10000aafb: 81 f9 10 27 00 00           	cmpl	$10000, %ecx
10000ab01: 73 69                       	jae	105 <__ZN13NodeAllocator12allocateNodeE3Rec+0x9c>
10000ab03: 8d 41 01                    	leal	1(%rcx), %eax
10000ab06: 89 83 c0 b6 06 00           	movl	%eax, 440000(%rbx)
10000ab0c: 3b 8b c4 b6 06 00           	cmpl	440004(%rbx), %ecx
10000ab12: 72 06                       	jb	6 <__ZN13NodeAllocator12allocateNodeE3Rec+0x4a>
10000ab14: 89 83 c4 b6 06 00           	movl	%eax, 440004(%rbx)
10000ab1a: 4c 8d 45 10                 	leaq	16(%rbp), %r8
10000ab1e: 89 c8                       	movl	%ecx, %eax
10000ab20: 48 8d 34 80                 	leaq	(%rax,%rax,4), %rsi
10000ab24: 48 8d 04 f3                 	leaq	(%rbx,%rsi,8), %rax
10000ab28: 66 c7 04 f3 ff ff           	movw	$65535, (%rbx,%rsi,8)
10000ab2e: c7 44 f3 0c 00 00 00 00     	movl	$0, 12(%rbx,%rsi,8)
10000ab36: 48 c7 44 f3 04 ff ff ff ff  	movq	$-1, 4(%rbx,%rsi,8)
10000ab3f: 49 8b 38                    	movq	(%r8), %rdi
10000ab42: 49 8b 50 08                 	movq	8(%r8), %rdx
10000ab46: 48 89 7c f3 10              	movq	%rdi, 16(%rbx,%rsi,8)
10000ab4b: 48 89 54 f3 18              	movq	%rdx, 24(%rbx,%rsi,8)
10000ab50: 49 8b 50 10                 	movq	16(%r8), %rdx
10000ab54: 48 89 54 f3 20              	movq	%rdx, 32(%rbx,%rsi,8)
10000ab59: 48 63 d1                    	movslq	%ecx, %rdx
10000ab5c: c7 84 93 80 1a 06 00 01 00 00 00    	movl	$1, 400000(%rbx,%rdx,4)
10000ab67: 5b                          	popq	%rbx
10000ab68: 41 5e                       	popq	%r14
10000ab6a: 5d                          	popq	%rbp
10000ab6b: c3                          	retq
10000ab6c: 4c 8b 35 bd 14 00 00        	movq	5309(%rip), %r14
10000ab73: 48 8d 35 f4 11 00 00        	leaq	4596(%rip), %rsi
10000ab7a: 4c 89 f7                    	movq	%r14, %rdi
10000ab7d: e8 ae 83 ff ff              	callq	-31826 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ab82: 8b b3 c0 b6 06 00           	movl	440000(%rbx), %esi
10000ab88: 48 89 c7                    	movq	%rax, %rdi
10000ab8b: e8 de 03 00 00              	callq	990 <dyld_stub_binder+0x10000af6e>
10000ab90: 48 89 c7                    	movq	%rax, %rdi
10000ab93: e8 98 00 00 00              	callq	152 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
10000ab98: 48 8d 35 e0 11 00 00        	leaq	4576(%rip), %rsi
10000ab9f: 4c 89 f7                    	movq	%r14, %rdi
10000aba2: e8 89 83 ff ff              	callq	-31863 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000aba7: 48 89 c7                    	movq	%rax, %rdi
10000abaa: be 10 27 00 00              	movl	$10000, %esi
10000abaf: e8 b4 03 00 00              	callq	948 <dyld_stub_binder+0x10000af68>
10000abb4: 48 89 c7                    	movq	%rax, %rdi
10000abb7: e8 74 00 00 00              	callq	116 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
10000abbc: 48 8d 35 6c 0c 00 00        	leaq	3180(%rip), %rsi
10000abc3: 4c 89 f7                    	movq	%r14, %rdi
10000abc6: e8 65 83 ff ff              	callq	-31899 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000abcb: 48 8d 35 fa 0e 00 00        	leaq	3834(%rip), %rsi
10000abd2: 48 89 c7                    	movq	%rax, %rdi
10000abd5: e8 56 83 ff ff              	callq	-31914 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000abda: 48 8d 35 69 0c 00 00        	leaq	3177(%rip), %rsi
10000abe1: 48 89 c7                    	movq	%rax, %rdi
10000abe4: e8 47 83 ff ff              	callq	-31929 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000abe9: 48 89 c7                    	movq	%rax, %rdi
10000abec: e8 3f 00 00 00              	callq	63 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
10000abf1: 4c 89 f7                    	movq	%r14, %rdi
10000abf4: be 1f 00 00 00              	movl	$31, %esi
10000abf9: e8 6a 03 00 00              	callq	874 <dyld_stub_binder+0x10000af68>
10000abfe: 48 8d 35 5b 0c 00 00        	leaq	3163(%rip), %rsi
10000ac05: 48 89 c7                    	movq	%rax, %rdi
10000ac08: e8 23 83 ff ff              	callq	-31965 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ac0d: 48 8d 35 7c 11 00 00        	leaq	4476(%rip), %rsi
10000ac14: 48 89 c7                    	movq	%rax, %rdi
10000ac17: e8 14 83 ff ff              	callq	-31980 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ac1c: 48 89 c7                    	movq	%rax, %rdi
10000ac1f: e8 0c 00 00 00              	callq	12 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
10000ac24: bf 01 00 00 00              	movl	$1, %edi
10000ac29: e8 00 04 00 00              	callq	1024 <dyld_stub_binder+0x10000b02e>
10000ac2e: 66 90                       	nop

000000010000ac30 __ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E:
10000ac30: 55                          	pushq	%rbp
10000ac31: 48 89 e5                    	movq	%rsp, %rbp
10000ac34: 41 56                       	pushq	%r14
10000ac36: 53                          	pushq	%rbx
10000ac37: 48 83 ec 10                 	subq	$16, %rsp
10000ac3b: 48 89 fb                    	movq	%rdi, %rbx
10000ac3e: 48 8b 07                    	movq	(%rdi), %rax
10000ac41: 48 8b 70 e8                 	movq	-24(%rax), %rsi
10000ac45: 48 01 fe                    	addq	%rdi, %rsi
10000ac48: 4c 8d 75 e8                 	leaq	-24(%rbp), %r14
10000ac4c: 4c 89 f7                    	movq	%r14, %rdi
10000ac4f: e8 e4 02 00 00              	callq	740 <dyld_stub_binder+0x10000af38>
10000ac54: 48 8b 35 dd 13 00 00        	movq	5085(%rip), %rsi
10000ac5b: 4c 89 f7                    	movq	%r14, %rdi
10000ac5e: e8 cf 02 00 00              	callq	719 <dyld_stub_binder+0x10000af32>
10000ac63: 48 8b 08                    	movq	(%rax), %rcx
10000ac66: 48 89 c7                    	movq	%rax, %rdi
10000ac69: be 0a 00 00 00              	movl	$10, %esi
10000ac6e: ff 51 38                    	callq	*56(%rcx)
10000ac71: 41 89 c6                    	movl	%eax, %r14d
10000ac74: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
10000ac78: e8 27 03 00 00              	callq	807 <dyld_stub_binder+0x10000afa4>
10000ac7d: 41 0f be f6                 	movsbl	%r14b, %esi
10000ac81: 48 89 df                    	movq	%rbx, %rdi
10000ac84: e8 bb 02 00 00              	callq	699 <dyld_stub_binder+0x10000af44>
10000ac89: 48 89 df                    	movq	%rbx, %rdi
10000ac8c: e8 b9 02 00 00              	callq	697 <dyld_stub_binder+0x10000af4a>
10000ac91: 48 83 c4 10                 	addq	$16, %rsp
10000ac95: 5b                          	popq	%rbx
10000ac96: 41 5e                       	popq	%r14
10000ac98: 5d                          	popq	%rbp
10000ac99: c3                          	retq
10000ac9a: 48 89 c3                    	movq	%rax, %rbx
10000ac9d: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
10000aca1: e8 fe 02 00 00              	callq	766 <dyld_stub_binder+0x10000afa4>
10000aca6: 48 89 df                    	movq	%rbx, %rdi
10000aca9: e8 72 02 00 00              	callq	626 <dyld_stub_binder+0x10000af20>
10000acae: 0f 0b                       	ud2

000000010000acb0 __ZN13NodeAllocator14initializeNodeEP4Node3Rec:
10000acb0: 55                          	pushq	%rbp
10000acb1: 48 89 e5                    	movq	%rsp, %rbp
10000acb4: 66 c7 06 ff ff              	movw	$65535, (%rsi)
10000acb9: c7 46 0c 00 00 00 00        	movl	$0, 12(%rsi)
10000acc0: 48 c7 46 04 ff ff ff ff     	movq	$-1, 4(%rsi)
10000acc8: 48 8b 45 10                 	movq	16(%rbp), %rax
10000accc: 48 8b 4d 18                 	movq	24(%rbp), %rcx
10000acd0: 48 89 46 10                 	movq	%rax, 16(%rsi)
10000acd4: 48 89 4e 18                 	movq	%rcx, 24(%rsi)
10000acd8: 48 8b 45 20                 	movq	32(%rbp), %rax
10000acdc: 48 89 46 20                 	movq	%rax, 32(%rsi)
10000ace0: 5d                          	popq	%rbp
10000ace1: c3                          	retq
10000ace2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000acec: 0f 1f 40 00                 	nopl	(%rax)

000000010000acf0 __ZN13NodeAllocator10deleteNodeE8NodeInfo:
10000acf0: 55                          	pushq	%rbp
10000acf1: 48 89 e5                    	movq	%rsp, %rbp
10000acf4: 53                          	pushq	%rbx
10000acf5: 50                          	pushq	%rax
10000acf6: 8b 87 0c 53 07 00           	movl	480012(%rdi), %eax
10000acfc: 48 3d 0f 27 00 00           	cmpq	$9999, %rax
10000ad02: 77 34                       	ja	52 <__ZN13NodeAllocator10deleteNodeE8NodeInfo+0x48>
10000ad04: 83 bf c0 b6 06 00 00        	cmpl	$0, 440000(%rdi)
10000ad0b: 74 2b                       	je	43 <__ZN13NodeAllocator10deleteNodeE8NodeInfo+0x48>
10000ad0d: ff 87 10 53 07 00           	incl	480016(%rdi)
10000ad13: 8d 48 01                    	leal	1(%rax), %ecx
10000ad16: 89 8f 0c 53 07 00           	movl	%ecx, 480012(%rdi)
10000ad1c: 89 94 87 cc b6 06 00        	movl	%edx, 440012(%rdi,%rax,4)
10000ad23: 48 63 c2                    	movslq	%edx, %rax
10000ad26: c7 84 87 80 1a 06 00 00 00 00 00    	movl	$0, 400000(%rdi,%rax,4)
10000ad31: 48 83 c4 08                 	addq	$8, %rsp
10000ad35: 5b                          	popq	%rbx
10000ad36: 5d                          	popq	%rbp
10000ad37: c3                          	retq
10000ad38: 48 8b 1d f1 12 00 00        	movq	4849(%rip), %rbx
10000ad3f: 48 8d 35 e9 0a 00 00        	leaq	2793(%rip), %rsi
10000ad46: 48 89 df                    	movq	%rbx, %rdi
10000ad49: e8 e2 81 ff ff              	callq	-32286 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ad4e: 48 8d 35 4d 10 00 00        	leaq	4173(%rip), %rsi
10000ad55: 48 89 c7                    	movq	%rax, %rdi
10000ad58: e8 d3 81 ff ff              	callq	-32301 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ad5d: 48 8d 35 e6 0a 00 00        	leaq	2790(%rip), %rsi
10000ad64: 48 89 c7                    	movq	%rax, %rdi
10000ad67: e8 c4 81 ff ff              	callq	-32316 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ad6c: 48 89 c7                    	movq	%rax, %rdi
10000ad6f: e8 bc fe ff ff              	callq	-324 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
10000ad74: 48 89 df                    	movq	%rbx, %rdi
10000ad77: be 33 00 00 00              	movl	$51, %esi
10000ad7c: e8 e7 01 00 00              	callq	487 <dyld_stub_binder+0x10000af68>
10000ad81: 48 8d 35 d8 0a 00 00        	leaq	2776(%rip), %rsi
10000ad88: 48 89 c7                    	movq	%rax, %rdi
10000ad8b: e8 a0 81 ff ff              	callq	-32352 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ad90: 48 8d 35 f9 0f 00 00        	leaq	4089(%rip), %rsi
10000ad97: 48 89 c7                    	movq	%rax, %rdi
10000ad9a: e8 91 81 ff ff              	callq	-32367 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ad9f: 48 89 c7                    	movq	%rax, %rdi
10000ada2: e8 89 fe ff ff              	callq	-375 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
10000ada7: bf 01 00 00 00              	movl	$1, %edi
10000adac: e8 7d 02 00 00              	callq	637 <dyld_stub_binder+0x10000b02e>
10000adb1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000adbb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

000000010000adc0 __ZN13NodeAllocator7getNodeEj:
10000adc0: 55                          	pushq	%rbp
10000adc1: 48 89 e5                    	movq	%rsp, %rbp
10000adc4: 53                          	pushq	%rbx
10000adc5: 50                          	pushq	%rax
10000adc6: 81 fe 10 27 00 00           	cmpl	$10000, %esi
10000adcc: 73 1b                       	jae	27 <__ZN13NodeAllocator7getNodeEj+0x29>
10000adce: 89 f0                       	movl	%esi, %eax
10000add0: 83 bc 87 80 1a 06 00 01     	cmpl	$1, 400000(%rdi,%rax,4)
10000add8: 75 65                       	jne	101 <__ZN13NodeAllocator7getNodeEj+0x7f>
10000adda: 48 8d 04 80                 	leaq	(%rax,%rax,4), %rax
10000adde: 48 8d 04 c7                 	leaq	(%rdi,%rax,8), %rax
10000ade2: 48 83 c4 08                 	addq	$8, %rsp
10000ade6: 5b                          	popq	%rbx
10000ade7: 5d                          	popq	%rbp
10000ade8: c3                          	retq
10000ade9: 48 8b 1d 40 12 00 00        	movq	4672(%rip), %rbx
10000adf0: 48 89 df                    	movq	%rbx, %rdi
10000adf3: e8 76 01 00 00              	callq	374 <dyld_stub_binder+0x10000af6e>
10000adf8: 48 89 c7                    	movq	%rax, %rdi
10000adfb: e8 30 fe ff ff              	callq	-464 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
10000ae00: 48 8d 35 28 0a 00 00        	leaq	2600(%rip), %rsi
10000ae07: 48 89 df                    	movq	%rbx, %rdi
10000ae0a: e8 21 81 ff ff              	callq	-32479 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ae0f: 48 8d 35 b6 0c 00 00        	leaq	3254(%rip), %rsi
10000ae16: 48 89 c7                    	movq	%rax, %rdi
10000ae19: e8 12 81 ff ff              	callq	-32494 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ae1e: 48 8d 35 25 0a 00 00        	leaq	2597(%rip), %rsi
10000ae25: 48 89 c7                    	movq	%rax, %rdi
10000ae28: e8 03 81 ff ff              	callq	-32509 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ae2d: 48 89 c7                    	movq	%rax, %rdi
10000ae30: e8 fb fd ff ff              	callq	-517 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
10000ae35: 48 89 df                    	movq	%rbx, %rdi
10000ae38: be 3e 00 00 00              	movl	$62, %esi
10000ae3d: eb 44                       	jmp	68 <__ZN13NodeAllocator7getNodeEj+0xc3>
10000ae3f: 48 8b 1d ea 11 00 00        	movq	4586(%rip), %rbx
10000ae46: 48 8d 35 e2 09 00 00        	leaq	2530(%rip), %rsi
10000ae4d: 48 89 df                    	movq	%rbx, %rdi
10000ae50: e8 db 80 ff ff              	callq	-32549 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ae55: 48 8d 35 84 0f 00 00        	leaq	3972(%rip), %rsi
10000ae5c: 48 89 c7                    	movq	%rax, %rdi
10000ae5f: e8 cc 80 ff ff              	callq	-32564 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ae64: 48 8d 35 df 09 00 00        	leaq	2527(%rip), %rsi
10000ae6b: 48 89 c7                    	movq	%rax, %rdi
10000ae6e: e8 bd 80 ff ff              	callq	-32579 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ae73: 48 89 c7                    	movq	%rax, %rdi
10000ae76: e8 b5 fd ff ff              	callq	-587 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
10000ae7b: 48 89 df                    	movq	%rbx, %rdi
10000ae7e: be 40 00 00 00              	movl	$64, %esi
10000ae83: e8 e0 00 00 00              	callq	224 <dyld_stub_binder+0x10000af68>
10000ae88: 48 8d 35 d1 09 00 00        	leaq	2513(%rip), %rsi
10000ae8f: 48 89 c7                    	movq	%rax, %rdi
10000ae92: e8 99 80 ff ff              	callq	-32615 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000ae97: 48 8d 35 f2 0e 00 00        	leaq	3826(%rip), %rsi
10000ae9e: 48 89 c7                    	movq	%rax, %rdi
10000aea1: e8 8a 80 ff ff              	callq	-32630 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
10000aea6: 48 89 c7                    	movq	%rax, %rdi
10000aea9: e8 82 fd ff ff              	callq	-638 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E>
10000aeae: bf 01 00 00 00              	movl	$1, %edi
10000aeb3: e8 76 01 00 00              	callq	374 <dyld_stub_binder+0x10000b02e>
10000aeb8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000aec0 __ZN13NodeAllocator14allocatedNodesEv:
10000aec0: 55                          	pushq	%rbp
10000aec1: 48 89 e5                    	movq	%rsp, %rbp
10000aec4: 8b 87 c0 b6 06 00           	movl	440000(%rdi), %eax
10000aeca: 5d                          	popq	%rbp
10000aecb: c3                          	retq
10000aecc: 0f 1f 40 00                 	nopl	(%rax)

000000010000aed0 __ZN13NodeAllocator17maxAllocatedNodesEv:
10000aed0: 55                          	pushq	%rbp
10000aed1: 48 89 e5                    	movq	%rsp, %rbp
10000aed4: 8b 87 c4 b6 06 00           	movl	440004(%rdi), %eax
10000aeda: 5d                          	popq	%rbp
10000aedb: c3                          	retq
10000aedc: 0f 1f 40 00                 	nopl	(%rax)

000000010000aee0 __ZN13NodeAllocator12deletedNodesEv:
10000aee0: 55                          	pushq	%rbp
10000aee1: 48 89 e5                    	movq	%rsp, %rbp
10000aee4: 8b 87 10 53 07 00           	movl	480016(%rdi), %eax
10000aeea: 5d                          	popq	%rbp
10000aeeb: c3                          	retq
10000aeec: 0f 1f 40 00                 	nopl	(%rax)

000000010000aef0 __ZN13NodeAllocator5clearEv:
10000aef0: 55                          	pushq	%rbp
10000aef1: 48 89 e5                    	movq	%rsp, %rbp
10000aef4: c7 87 c0 b6 06 00 00 00 00 00       	movl	$0, 440000(%rdi)
10000aefe: c7 87 c8 b6 06 00 00 00 00 00       	movl	$0, 440008(%rdi)
10000af08: c7 87 0c 53 07 00 00 00 00 00       	movl	$0, 480012(%rdi)
10000af12: 5d                          	popq	%rbp
10000af13: c3                          	retq
10000af14: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000af1e: 66 90                       	nop

Disassembly of section __TEXT,__stubs:

000000010000af20 __stubs:
10000af20: ff 25 da 50 00 00           	jmpq	*20698(%rip)
10000af26: ff 25 dc 50 00 00           	jmpq	*20700(%rip)
10000af2c: ff 25 de 50 00 00           	jmpq	*20702(%rip)
10000af32: ff 25 e0 50 00 00           	jmpq	*20704(%rip)
10000af38: ff 25 e2 50 00 00           	jmpq	*20706(%rip)
10000af3e: ff 25 e4 50 00 00           	jmpq	*20708(%rip)
10000af44: ff 25 e6 50 00 00           	jmpq	*20710(%rip)
10000af4a: ff 25 e8 50 00 00           	jmpq	*20712(%rip)
10000af50: ff 25 ea 50 00 00           	jmpq	*20714(%rip)
10000af56: ff 25 ec 50 00 00           	jmpq	*20716(%rip)
10000af5c: ff 25 ee 50 00 00           	jmpq	*20718(%rip)
10000af62: ff 25 f0 50 00 00           	jmpq	*20720(%rip)
10000af68: ff 25 f2 50 00 00           	jmpq	*20722(%rip)
10000af6e: ff 25 f4 50 00 00           	jmpq	*20724(%rip)
10000af74: ff 25 f6 50 00 00           	jmpq	*20726(%rip)
10000af7a: ff 25 f8 50 00 00           	jmpq	*20728(%rip)
10000af80: ff 25 fa 50 00 00           	jmpq	*20730(%rip)
10000af86: ff 25 fc 50 00 00           	jmpq	*20732(%rip)
10000af8c: ff 25 fe 50 00 00           	jmpq	*20734(%rip)
10000af92: ff 25 00 51 00 00           	jmpq	*20736(%rip)
10000af98: ff 25 02 51 00 00           	jmpq	*20738(%rip)
10000af9e: ff 25 04 51 00 00           	jmpq	*20740(%rip)
10000afa4: ff 25 06 51 00 00           	jmpq	*20742(%rip)
10000afaa: ff 25 08 51 00 00           	jmpq	*20744(%rip)
10000afb0: ff 25 0a 51 00 00           	jmpq	*20746(%rip)
10000afb6: ff 25 0c 51 00 00           	jmpq	*20748(%rip)
10000afbc: ff 25 0e 51 00 00           	jmpq	*20750(%rip)
10000afc2: ff 25 10 51 00 00           	jmpq	*20752(%rip)
10000afc8: ff 25 12 51 00 00           	jmpq	*20754(%rip)
10000afce: ff 25 14 51 00 00           	jmpq	*20756(%rip)
10000afd4: ff 25 16 51 00 00           	jmpq	*20758(%rip)
10000afda: ff 25 18 51 00 00           	jmpq	*20760(%rip)
10000afe0: ff 25 1a 51 00 00           	jmpq	*20762(%rip)
10000afe6: ff 25 1c 51 00 00           	jmpq	*20764(%rip)
10000afec: ff 25 1e 51 00 00           	jmpq	*20766(%rip)
10000aff2: ff 25 20 51 00 00           	jmpq	*20768(%rip)
10000aff8: ff 25 22 51 00 00           	jmpq	*20770(%rip)
10000affe: ff 25 24 51 00 00           	jmpq	*20772(%rip)
10000b004: ff 25 26 51 00 00           	jmpq	*20774(%rip)
10000b00a: ff 25 28 51 00 00           	jmpq	*20776(%rip)
10000b010: ff 25 2a 51 00 00           	jmpq	*20778(%rip)
10000b016: ff 25 2c 51 00 00           	jmpq	*20780(%rip)
10000b01c: ff 25 2e 51 00 00           	jmpq	*20782(%rip)
10000b022: ff 25 30 51 00 00           	jmpq	*20784(%rip)
10000b028: ff 25 32 51 00 00           	jmpq	*20786(%rip)
10000b02e: ff 25 34 51 00 00           	jmpq	*20788(%rip)
10000b034: ff 25 36 51 00 00           	jmpq	*20790(%rip)
10000b03a: ff 25 38 51 00 00           	jmpq	*20792(%rip)
10000b040: ff 25 3a 51 00 00           	jmpq	*20794(%rip)
10000b046: ff 25 3c 51 00 00           	jmpq	*20796(%rip)
10000b04c: ff 25 3e 51 00 00           	jmpq	*20798(%rip)
10000b052: ff 25 40 51 00 00           	jmpq	*20800(%rip)
10000b058: ff 25 42 51 00 00           	jmpq	*20802(%rip)
10000b05e: ff 25 44 51 00 00           	jmpq	*20804(%rip)
10000b064: ff 25 46 51 00 00           	jmpq	*20806(%rip)
10000b06a: ff 25 48 51 00 00           	jmpq	*20808(%rip)
10000b070: ff 25 4a 51 00 00           	jmpq	*20810(%rip)
10000b076: ff 25 4c 51 00 00           	jmpq	*20812(%rip)

Disassembly of section __TEXT,__stub_helper:

000000010000b07c __stub_helper:
10000b07c: 4c 8d 1d 4d 51 00 00        	leaq	20813(%rip), %r11
10000b083: 41 53                       	pushq	%r11
10000b085: ff 25 1d 10 00 00           	jmpq	*4125(%rip)
10000b08b: 90                          	nop
10000b08c: 68 16 00 00 00              	pushq	$22
10000b091: e9 e6 ff ff ff              	jmp	-26 <__stub_helper>
10000b096: 68 5c 00 00 00              	pushq	$92
10000b09b: e9 dc ff ff ff              	jmp	-36 <__stub_helper>
10000b0a0: 68 89 00 00 00              	pushq	$137
10000b0a5: e9 d2 ff ff ff              	jmp	-46 <__stub_helper>
10000b0aa: 68 b6 00 00 00              	pushq	$182
10000b0af: e9 c8 ff ff ff              	jmp	-56 <__stub_helper>
10000b0b4: 68 da 00 00 00              	pushq	$218
10000b0b9: e9 be ff ff ff              	jmp	-66 <__stub_helper>
10000b0be: 68 fa 00 00 00              	pushq	$250
10000b0c3: e9 b4 ff ff ff              	jmp	-76 <__stub_helper>
10000b0c8: 68 37 01 00 00              	pushq	$311
10000b0cd: e9 aa ff ff ff              	jmp	-86 <__stub_helper>
10000b0d2: 68 76 01 00 00              	pushq	$374
10000b0d7: e9 a0 ff ff ff              	jmp	-96 <__stub_helper>
10000b0dc: 68 bb 01 00 00              	pushq	$443
10000b0e1: e9 96 ff ff ff              	jmp	-106 <__stub_helper>
10000b0e6: 68 fd 01 00 00              	pushq	$509
10000b0eb: e9 8c ff ff ff              	jmp	-116 <__stub_helper>
10000b0f0: 68 38 02 00 00              	pushq	$568
10000b0f5: e9 82 ff ff ff              	jmp	-126 <__stub_helper>
10000b0fa: 68 73 02 00 00              	pushq	$627
10000b0ff: e9 78 ff ff ff              	jmp	-136 <__stub_helper>
10000b104: 68 ae 02 00 00              	pushq	$686
10000b109: e9 6e ff ff ff              	jmp	-146 <__stub_helper>
10000b10e: 68 e9 02 00 00              	pushq	$745
10000b113: e9 64 ff ff ff              	jmp	-156 <__stub_helper>
10000b118: 68 24 03 00 00              	pushq	$804
10000b11d: e9 5a ff ff ff              	jmp	-166 <__stub_helper>
10000b122: 68 5f 03 00 00              	pushq	$863
10000b127: e9 50 ff ff ff              	jmp	-176 <__stub_helper>
10000b12c: 68 9b 03 00 00              	pushq	$923
10000b131: e9 46 ff ff ff              	jmp	-186 <__stub_helper>
10000b136: 68 fb 03 00 00              	pushq	$1019
10000b13b: e9 3c ff ff ff              	jmp	-196 <__stub_helper>
10000b140: 68 20 04 00 00              	pushq	$1056
10000b145: e9 32 ff ff ff              	jmp	-206 <__stub_helper>
10000b14a: 68 5e 04 00 00              	pushq	$1118
10000b14f: e9 28 ff ff ff              	jmp	-216 <__stub_helper>
10000b154: 68 9c 04 00 00              	pushq	$1180
10000b159: e9 1e ff ff ff              	jmp	-226 <__stub_helper>
10000b15e: 68 bd 04 00 00              	pushq	$1213
10000b163: e9 14 ff ff ff              	jmp	-236 <__stub_helper>
10000b168: 68 da 04 00 00              	pushq	$1242
10000b16d: e9 0a ff ff ff              	jmp	-246 <__stub_helper>
10000b172: 68 1a 05 00 00              	pushq	$1306
10000b177: e9 00 ff ff ff              	jmp	-256 <__stub_helper>
10000b17c: 68 3d 05 00 00              	pushq	$1341
10000b181: e9 f6 fe ff ff              	jmp	-266 <__stub_helper>
10000b186: 68 60 05 00 00              	pushq	$1376
10000b18b: e9 ec fe ff ff              	jmp	-276 <__stub_helper>
10000b190: 68 97 05 00 00              	pushq	$1431
10000b195: e9 e2 fe ff ff              	jmp	-286 <__stub_helper>
10000b19a: 68 b2 05 00 00              	pushq	$1458
10000b19f: e9 d8 fe ff ff              	jmp	-296 <__stub_helper>
10000b1a4: 68 da 05 00 00              	pushq	$1498
10000b1a9: e9 ce fe ff ff              	jmp	-306 <__stub_helper>
10000b1ae: 68 10 06 00 00              	pushq	$1552
10000b1b3: e9 c4 fe ff ff              	jmp	-316 <__stub_helper>
10000b1b8: 68 2a 06 00 00              	pushq	$1578
10000b1bd: e9 ba fe ff ff              	jmp	-326 <__stub_helper>
10000b1c2: 68 42 06 00 00              	pushq	$1602
10000b1c7: e9 b0 fe ff ff              	jmp	-336 <__stub_helper>
10000b1cc: 68 5f 06 00 00              	pushq	$1631
10000b1d1: e9 a6 fe ff ff              	jmp	-346 <__stub_helper>
10000b1d6: 68 79 06 00 00              	pushq	$1657
10000b1db: e9 9c fe ff ff              	jmp	-356 <__stub_helper>
10000b1e0: 68 95 06 00 00              	pushq	$1685
10000b1e5: e9 92 fe ff ff              	jmp	-366 <__stub_helper>
10000b1ea: 68 b1 06 00 00              	pushq	$1713
10000b1ef: e9 88 fe ff ff              	jmp	-376 <__stub_helper>
10000b1f4: 68 00 00 00 00              	pushq	$0
10000b1f9: e9 7e fe ff ff              	jmp	-386 <__stub_helper>
10000b1fe: 68 ca 05 00 00              	pushq	$1482
10000b203: e9 74 fe ff ff              	jmp	-396 <__stub_helper>
10000b208: 68 fb 05 00 00              	pushq	$1531
10000b20d: e9 6a fe ff ff              	jmp	-406 <__stub_helper>
10000b212: 68 c5 06 00 00              	pushq	$1733
10000b217: e9 60 fe ff ff              	jmp	-416 <__stub_helper>
10000b21c: 68 de 06 00 00              	pushq	$1758
10000b221: e9 56 fe ff ff              	jmp	-426 <__stub_helper>
10000b226: 68 ec 06 00 00              	pushq	$1772
10000b22b: e9 4c fe ff ff              	jmp	-436 <__stub_helper>
10000b230: 68 f9 06 00 00              	pushq	$1785
10000b235: e9 42 fe ff ff              	jmp	-446 <__stub_helper>
10000b23a: 68 08 07 00 00              	pushq	$1800
10000b23f: e9 38 fe ff ff              	jmp	-456 <__stub_helper>
10000b244: 68 17 07 00 00              	pushq	$1815
10000b249: e9 2e fe ff ff              	jmp	-466 <__stub_helper>
10000b24e: 68 25 07 00 00              	pushq	$1829
10000b253: e9 24 fe ff ff              	jmp	-476 <__stub_helper>
10000b258: 68 33 07 00 00              	pushq	$1843
10000b25d: e9 1a fe ff ff              	jmp	-486 <__stub_helper>
10000b262: 68 42 07 00 00              	pushq	$1858
10000b267: e9 10 fe ff ff              	jmp	-496 <__stub_helper>
10000b26c: 68 51 07 00 00              	pushq	$1873
10000b271: e9 06 fe ff ff              	jmp	-506 <__stub_helper>
10000b276: 68 60 07 00 00              	pushq	$1888
10000b27b: e9 fc fd ff ff              	jmp	-516 <__stub_helper>
10000b280: 68 6f 07 00 00              	pushq	$1903
10000b285: e9 f2 fd ff ff              	jmp	-526 <__stub_helper>
10000b28a: 68 7f 07 00 00              	pushq	$1919
10000b28f: e9 e8 fd ff ff              	jmp	-536 <__stub_helper>
10000b294: 68 8e 07 00 00              	pushq	$1934
10000b299: e9 de fd ff ff              	jmp	-546 <__stub_helper>
10000b29e: 68 9c 07 00 00              	pushq	$1948
10000b2a3: e9 d4 fd ff ff              	jmp	-556 <__stub_helper>
