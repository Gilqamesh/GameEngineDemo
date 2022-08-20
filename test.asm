
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 3f 00 00 	mov    0x3fe9(%rip),%rax        # 404ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 3f 00 00    	pushq  0x3fe2(%rip)        # 405008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 3f 00 00    	jmpq   *0x3fe4(%rip)        # 405010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <_ZSt9terminatev@plt>:
  401030:	ff 25 e2 3f 00 00    	jmpq   *0x3fe2(%rip)        # 405018 <_ZSt9terminatev@GLIBCXX_3.4>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <__cxa_begin_catch@plt>:
  401040:	ff 25 da 3f 00 00    	jmpq   *0x3fda(%rip)        # 405020 <__cxa_begin_catch@CXXABI_1.3>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  401050:	ff 25 d2 3f 00 00    	jmpq   *0x3fd2(%rip)        # 405028 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <logl@plt>:
  401060:	ff 25 ca 3f 00 00    	jmpq   *0x3fca(%rip)        # 405030 <logl@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>:
  401070:	ff 25 c2 3f 00 00    	jmpq   *0x3fc2(%rip)        # 405038 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GLIBCXX_3.4.21>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <__cxa_guard_abort@plt>:
  401080:	ff 25 ba 3f 00 00    	jmpq   *0x3fba(%rip)        # 405040 <__cxa_guard_abort@CXXABI_1.3>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <__cxa_guard_release@plt>:
  401090:	ff 25 b2 3f 00 00    	jmpq   *0x3fb2(%rip)        # 405048 <__cxa_guard_release@CXXABI_1.3>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <clock@plt>:
  4010a0:	ff 25 aa 3f 00 00    	jmpq   *0x3faa(%rip)        # 405050 <clock@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <_ZNSolsEf@plt>:
  4010b0:	ff 25 a2 3f 00 00    	jmpq   *0x3fa2(%rip)        # 405058 <_ZNSolsEf@GLIBCXX_3.4>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <nextafterf@plt>:
  4010c0:	ff 25 9a 3f 00 00    	jmpq   *0x3f9a(%rip)        # 405060 <nextafterf@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <__cxa_atexit@plt>:
  4010d0:	ff 25 92 3f 00 00    	jmpq   *0x3f92(%rip)        # 405068 <__cxa_atexit@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <_ZNSt13random_device7_M_finiEv@plt>:
  4010e0:	ff 25 8a 3f 00 00    	jmpq   *0x3f8a(%rip)        # 405070 <_ZNSt13random_device7_M_finiEv@GLIBCXX_3.4.18>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  4010f0:	ff 25 82 3f 00 00    	jmpq   *0x3f82(%rip)        # 405078 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <_ZNSolsEPFRSoS_E@plt>:
  401100:	ff 25 7a 3f 00 00    	jmpq   *0x3f7a(%rip)        # 405080 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

0000000000401110 <_ZNSaIcED1Ev@plt>:
  401110:	ff 25 72 3f 00 00    	jmpq   *0x3f72(%rip)        # 405088 <_ZNSaIcED1Ev@GLIBCXX_3.4>
  401116:	68 0e 00 00 00       	pushq  $0xe
  40111b:	e9 00 ff ff ff       	jmpq   401020 <.plt>

0000000000401120 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>:
  401120:	ff 25 6a 3f 00 00    	jmpq   *0x3f6a(%rip)        # 405090 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@GLIBCXX_3.4.21>
  401126:	68 0f 00 00 00       	pushq  $0xf
  40112b:	e9 f0 fe ff ff       	jmpq   401020 <.plt>

0000000000401130 <_ZNSt13random_device9_M_getvalEv@plt>:
  401130:	ff 25 62 3f 00 00    	jmpq   *0x3f62(%rip)        # 405098 <_ZNSt13random_device9_M_getvalEv@GLIBCXX_3.4.18>
  401136:	68 10 00 00 00       	pushq  $0x10
  40113b:	e9 e0 fe ff ff       	jmpq   401020 <.plt>

0000000000401140 <_ZNSt8ios_base4InitC1Ev@plt>:
  401140:	ff 25 5a 3f 00 00    	jmpq   *0x3f5a(%rip)        # 4050a0 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <__gxx_personality_v0@plt>:
  401150:	ff 25 52 3f 00 00    	jmpq   *0x3f52(%rip)        # 4050a8 <__gxx_personality_v0@CXXABI_1.3>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

0000000000401160 <_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>:
  401160:	ff 25 4a 3f 00 00    	jmpq   *0x3f4a(%rip)        # 4050b0 <_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@GLIBCXX_3.4.21>
  401166:	68 13 00 00 00       	pushq  $0x13
  40116b:	e9 b0 fe ff ff       	jmpq   401020 <.plt>

0000000000401170 <_Unwind_Resume@plt>:
  401170:	ff 25 42 3f 00 00    	jmpq   *0x3f42(%rip)        # 4050b8 <_Unwind_Resume@GCC_3.0>
  401176:	68 14 00 00 00       	pushq  $0x14
  40117b:	e9 a0 fe ff ff       	jmpq   401020 <.plt>

0000000000401180 <_ZNSaIcEC1Ev@plt>:
  401180:	ff 25 3a 3f 00 00    	jmpq   *0x3f3a(%rip)        # 4050c0 <_ZNSaIcEC1Ev@GLIBCXX_3.4>
  401186:	68 15 00 00 00       	pushq  $0x15
  40118b:	e9 90 fe ff ff       	jmpq   401020 <.plt>

0000000000401190 <__cxa_guard_acquire@plt>:
  401190:	ff 25 32 3f 00 00    	jmpq   *0x3f32(%rip)        # 4050c8 <__cxa_guard_acquire@CXXABI_1.3>
  401196:	68 16 00 00 00       	pushq  $0x16
  40119b:	e9 80 fe ff ff       	jmpq   401020 <.plt>

00000000004011a0 <_ZNSt8ios_base4InitD1Ev@plt>:
  4011a0:	ff 25 2a 3f 00 00    	jmpq   *0x3f2a(%rip)        # 4050d0 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  4011a6:	68 17 00 00 00       	pushq  $0x17
  4011ab:	e9 70 fe ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

00000000004011b0 <__cxx_global_var_init>:
  4011b0:	55                   	push   %rbp
  4011b1:	48 89 e5             	mov    %rsp,%rbp
  4011b4:	48 bf 11 52 40 00 00 	movabs $0x405211,%rdi
  4011bb:	00 00 00 
  4011be:	e8 7d ff ff ff       	callq  401140 <_ZNSt8ios_base4InitC1Ev@plt>
  4011c3:	48 b8 a0 11 40 00 00 	movabs $0x4011a0,%rax
  4011ca:	00 00 00 
  4011cd:	48 89 c7             	mov    %rax,%rdi
  4011d0:	48 be 11 52 40 00 00 	movabs $0x405211,%rsi
  4011d7:	00 00 00 
  4011da:	48 ba e0 50 40 00 00 	movabs $0x4050e0,%rdx
  4011e1:	00 00 00 
  4011e4:	e8 e7 fe ff ff       	callq  4010d0 <__cxa_atexit@plt>
  4011e9:	5d                   	pop    %rbp
  4011ea:	c3                   	retq   
  4011eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011f0 <_GLOBAL__sub_I_test.cpp>:
  4011f0:	55                   	push   %rbp
  4011f1:	48 89 e5             	mov    %rsp,%rbp
  4011f4:	e8 b7 ff ff ff       	callq  4011b0 <__cxx_global_var_init>
  4011f9:	5d                   	pop    %rbp
  4011fa:	c3                   	retq   
  4011fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401200 <_start>:
  401200:	f3 0f 1e fa          	endbr64 
  401204:	31 ed                	xor    %ebp,%ebp
  401206:	49 89 d1             	mov    %rdx,%r9
  401209:	5e                   	pop    %rsi
  40120a:	48 89 e2             	mov    %rsp,%rdx
  40120d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401211:	50                   	push   %rax
  401212:	54                   	push   %rsp
  401213:	49 c7 c0 70 21 40 00 	mov    $0x402170,%r8
  40121a:	48 c7 c1 00 21 40 00 	mov    $0x402100,%rcx
  401221:	48 c7 c7 f0 12 40 00 	mov    $0x4012f0,%rdi
  401228:	ff 15 c2 3d 00 00    	callq  *0x3dc2(%rip)        # 404ff0 <__libc_start_main@GLIBC_2.2.5>
  40122e:	f4                   	hlt    
  40122f:	90                   	nop

0000000000401230 <_dl_relocate_static_pie>:
  401230:	f3 0f 1e fa          	endbr64 
  401234:	c3                   	retq   
  401235:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40123c:	00 00 00 
  40123f:	90                   	nop

0000000000401240 <deregister_tm_clones>:
  401240:	b8 e8 50 40 00       	mov    $0x4050e8,%eax
  401245:	48 3d e8 50 40 00    	cmp    $0x4050e8,%rax
  40124b:	74 13                	je     401260 <deregister_tm_clones+0x20>
  40124d:	b8 00 00 00 00       	mov    $0x0,%eax
  401252:	48 85 c0             	test   %rax,%rax
  401255:	74 09                	je     401260 <deregister_tm_clones+0x20>
  401257:	bf e8 50 40 00       	mov    $0x4050e8,%edi
  40125c:	ff e0                	jmpq   *%rax
  40125e:	66 90                	xchg   %ax,%ax
  401260:	c3                   	retq   
  401261:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401268:	00 00 00 00 
  40126c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401270 <register_tm_clones>:
  401270:	be e8 50 40 00       	mov    $0x4050e8,%esi
  401275:	48 81 ee e8 50 40 00 	sub    $0x4050e8,%rsi
  40127c:	48 89 f0             	mov    %rsi,%rax
  40127f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401283:	48 c1 f8 03          	sar    $0x3,%rax
  401287:	48 01 c6             	add    %rax,%rsi
  40128a:	48 d1 fe             	sar    %rsi
  40128d:	74 11                	je     4012a0 <register_tm_clones+0x30>
  40128f:	b8 00 00 00 00       	mov    $0x0,%eax
  401294:	48 85 c0             	test   %rax,%rax
  401297:	74 07                	je     4012a0 <register_tm_clones+0x30>
  401299:	bf e8 50 40 00       	mov    $0x4050e8,%edi
  40129e:	ff e0                	jmpq   *%rax
  4012a0:	c3                   	retq   
  4012a1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <__do_global_dtors_aux>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	80 3d 55 3f 00 00 00 	cmpb   $0x0,0x3f55(%rip)        # 405210 <completed.8060>
  4012bb:	75 13                	jne    4012d0 <__do_global_dtors_aux+0x20>
  4012bd:	55                   	push   %rbp
  4012be:	48 89 e5             	mov    %rsp,%rbp
  4012c1:	e8 7a ff ff ff       	callq  401240 <deregister_tm_clones>
  4012c6:	c6 05 43 3f 00 00 01 	movb   $0x1,0x3f43(%rip)        # 405210 <completed.8060>
  4012cd:	5d                   	pop    %rbp
  4012ce:	c3                   	retq   
  4012cf:	90                   	nop
  4012d0:	c3                   	retq   
  4012d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012d8:	00 00 00 00 
  4012dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012e0 <frame_dummy>:
  4012e0:	f3 0f 1e fa          	endbr64 
  4012e4:	eb 8a                	jmp    401270 <register_tm_clones>
  4012e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012ed:	00 00 00 

00000000004012f0 <main>:
  4012f0:	55                   	push   %rbp
  4012f1:	48 89 e5             	mov    %rsp,%rbp
  4012f4:	48 81 ec 60 d0 07 00 	sub    $0x7d060,%rsp
  4012fb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401302:	c7 45 f8 00 7d 00 00 	movl   $0x7d00,-0x8(%rbp)
  401309:	c7 85 ec 2f f8 ff 00 	movl   $0x0,-0x7d014(%rbp)
  401310:	00 00 00 
  401313:	81 bd ec 2f f8 ff 00 	cmpl   $0x7d00,-0x7d014(%rbp)
  40131a:	7d 00 00 
  40131d:	0f 83 b5 00 00 00    	jae    4013d8 <main+0xe8>
  401323:	f3 0f 10 0d e5 1c 00 	movss  0x1ce5(%rip),%xmm1        # 403010 <_IO_stdin_used+0x10>
  40132a:	00 
  40132b:	0f 57 c0             	xorps  %xmm0,%xmm0
  40132e:	e8 2d 02 00 00       	callq  401560 <_Z7getRandff>
  401333:	f3 0f 10 0d d5 1c 00 	movss  0x1cd5(%rip),%xmm1        # 403010 <_IO_stdin_used+0x10>
  40133a:	00 
  40133b:	f3 0f 11 85 d8 2f f8 	movss  %xmm0,-0x7d028(%rbp)
  401342:	ff 
  401343:	0f 57 c0             	xorps  %xmm0,%xmm0
  401346:	e8 15 02 00 00       	callq  401560 <_Z7getRandff>
  40134b:	f3 0f 10 0d b5 1c 00 	movss  0x1cb5(%rip),%xmm1        # 403008 <_IO_stdin_used+0x8>
  401352:	00 
  401353:	f3 0f 10 15 b1 1c 00 	movss  0x1cb1(%rip),%xmm2        # 40300c <_IO_stdin_used+0xc>
  40135a:	00 
  40135b:	f3 0f 11 85 dc 2f f8 	movss  %xmm0,-0x7d024(%rbp)
  401362:	ff 
  401363:	0f 28 c1             	movaps %xmm1,%xmm0
  401366:	0f 28 ca             	movaps %xmm2,%xmm1
  401369:	e8 f2 01 00 00       	callq  401560 <_Z7getRandff>
  40136e:	f3 0f 10 0d 92 1c 00 	movss  0x1c92(%rip),%xmm1        # 403008 <_IO_stdin_used+0x8>
  401375:	00 
  401376:	f3 0f 10 15 8e 1c 00 	movss  0x1c8e(%rip),%xmm2        # 40300c <_IO_stdin_used+0xc>
  40137d:	00 
  40137e:	f3 0f 11 85 e0 2f f8 	movss  %xmm0,-0x7d020(%rbp)
  401385:	ff 
  401386:	0f 28 c1             	movaps %xmm1,%xmm0
  401389:	0f 28 ca             	movaps %xmm2,%xmm1
  40138c:	e8 cf 01 00 00       	callq  401560 <_Z7getRandff>
  401391:	f3 0f 11 85 e4 2f f8 	movss  %xmm0,-0x7d01c(%rbp)
  401398:	ff 
  401399:	8b 85 ec 2f f8 ff    	mov    -0x7d014(%rbp),%eax
  40139f:	89 c1                	mov    %eax,%ecx
  4013a1:	48 c1 e1 04          	shl    $0x4,%rcx
  4013a5:	48 8d 95 f0 2f f8 ff 	lea    -0x7d010(%rbp),%rdx
  4013ac:	48 01 ca             	add    %rcx,%rdx
  4013af:	48 8b 8d d8 2f f8 ff 	mov    -0x7d028(%rbp),%rcx
  4013b6:	48 89 0a             	mov    %rcx,(%rdx)
  4013b9:	48 8b 8d e0 2f f8 ff 	mov    -0x7d020(%rbp),%rcx
  4013c0:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
  4013c4:	8b 85 ec 2f f8 ff    	mov    -0x7d014(%rbp),%eax
  4013ca:	83 c0 01             	add    $0x1,%eax
  4013cd:	89 85 ec 2f f8 ff    	mov    %eax,-0x7d014(%rbp)
  4013d3:	e9 3b ff ff ff       	jmpq   401313 <main+0x23>
  4013d8:	c7 85 d4 2f f8 ff 0a 	movl   $0xa,-0x7d02c(%rbp)
  4013df:	00 00 00 
  4013e2:	8b 85 d4 2f f8 ff    	mov    -0x7d02c(%rbp),%eax
  4013e8:	0f af 85 d4 2f f8 ff 	imul   -0x7d02c(%rbp),%eax
  4013ef:	89 85 d0 2f f8 ff    	mov    %eax,-0x7d030(%rbp)
  4013f5:	c7 85 cc 2f f8 ff 64 	movl   $0x64,-0x7d034(%rbp)
  4013fc:	00 00 00 
  4013ff:	e8 9c fc ff ff       	callq  4010a0 <clock@plt>
  401404:	48 89 85 c0 2f f8 ff 	mov    %rax,-0x7d040(%rbp)
  40140b:	c7 85 bc 2f f8 ff 00 	movl   $0x0,-0x7d044(%rbp)
  401412:	00 00 00 
  401415:	8b 85 bc 2f f8 ff    	mov    -0x7d044(%rbp),%eax
  40141b:	3b 85 d0 2f f8 ff    	cmp    -0x7d030(%rbp),%eax
  401421:	0f 83 a9 00 00 00    	jae    4014d0 <main+0x1e0>
  401427:	c7 85 b8 2f f8 ff 00 	movl   $0x0,-0x7d048(%rbp)
  40142e:	00 00 00 
  401431:	8b 85 b8 2f f8 ff    	mov    -0x7d048(%rbp),%eax
  401437:	3b 85 cc 2f f8 ff    	cmp    -0x7d034(%rbp),%eax
  40143d:	0f 83 74 00 00 00    	jae    4014b7 <main+0x1c7>
  401443:	8b 85 bc 2f f8 ff    	mov    -0x7d044(%rbp),%eax
  401449:	03 85 cc 2f f8 ff    	add    -0x7d034(%rbp),%eax
  40144f:	89 c0                	mov    %eax,%eax
  401451:	89 c1                	mov    %eax,%ecx
  401453:	48 c1 e1 04          	shl    $0x4,%rcx
  401457:	48 8d 95 f0 2f f8 ff 	lea    -0x7d010(%rbp),%rdx
  40145e:	48 89 d6             	mov    %rdx,%rsi
  401461:	48 01 ce             	add    %rcx,%rsi
  401464:	6b 85 bc 2f f8 ff 0a 	imul   $0xa,-0x7d044(%rbp),%eax
  40146b:	03 85 cc 2f f8 ff    	add    -0x7d034(%rbp),%eax
  401471:	89 c0                	mov    %eax,%eax
  401473:	89 c1                	mov    %eax,%ecx
  401475:	48 c1 e1 04          	shl    $0x4,%rcx
  401479:	48 01 ca             	add    %rcx,%rdx
  40147c:	48 89 f7             	mov    %rsi,%rdi
  40147f:	48 89 d6             	mov    %rdx,%rsi
  401482:	e8 29 02 00 00       	callq  4016b0 <_ZNK9Rectangle16doesRecIntersectERKS_>
  401487:	a8 01                	test   $0x1,%al
  401489:	0f 85 05 00 00 00    	jne    401494 <main+0x1a4>
  40148f:	e9 0a 00 00 00       	jmpq   40149e <main+0x1ae>
  401494:	c7 85 b4 2f f8 ff 02 	movl   $0x2,-0x7d04c(%rbp)
  40149b:	00 00 00 
  40149e:	e9 00 00 00 00       	jmpq   4014a3 <main+0x1b3>
  4014a3:	8b 85 b8 2f f8 ff    	mov    -0x7d048(%rbp),%eax
  4014a9:	83 c0 01             	add    $0x1,%eax
  4014ac:	89 85 b8 2f f8 ff    	mov    %eax,-0x7d048(%rbp)
  4014b2:	e9 7a ff ff ff       	jmpq   401431 <main+0x141>
  4014b7:	e9 00 00 00 00       	jmpq   4014bc <main+0x1cc>
  4014bc:	8b 85 bc 2f f8 ff    	mov    -0x7d044(%rbp),%eax
  4014c2:	83 c0 01             	add    $0x1,%eax
  4014c5:	89 85 bc 2f f8 ff    	mov    %eax,-0x7d044(%rbp)
  4014cb:	e9 45 ff ff ff       	jmpq   401415 <main+0x125>
  4014d0:	48 bf 00 51 40 00 00 	movabs $0x405100,%rdi
  4014d7:	00 00 00 
  4014da:	48 be 28 30 40 00 00 	movabs $0x403028,%rsi
  4014e1:	00 00 00 
  4014e4:	e8 07 fc ff ff       	callq  4010f0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4014e9:	48 89 85 a8 2f f8 ff 	mov    %rax,-0x7d058(%rbp)
  4014f0:	e8 ab fb ff ff       	callq  4010a0 <clock@plt>
  4014f5:	f3 0f 10 05 07 1b 00 	movss  0x1b07(%rip),%xmm0        # 403004 <_IO_stdin_used+0x4>
  4014fc:	00 
  4014fd:	48 2b 85 c0 2f f8 ff 	sub    -0x7d040(%rbp),%rax
  401504:	f3 48 0f 2a c8       	cvtsi2ss %rax,%xmm1
  401509:	f3 0f 5e c8          	divss  %xmm0,%xmm1
  40150d:	48 8b bd a8 2f f8 ff 	mov    -0x7d058(%rbp),%rdi
  401514:	0f 28 c1             	movaps %xmm1,%xmm0
  401517:	e8 94 fb ff ff       	callq  4010b0 <_ZNSolsEf@plt>
  40151c:	48 89 c7             	mov    %rax,%rdi
  40151f:	48 be 35 30 40 00 00 	movabs $0x403035,%rsi
  401526:	00 00 00 
  401529:	e8 c2 fb ff ff       	callq  4010f0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40152e:	48 89 c7             	mov    %rax,%rdi
  401531:	48 be 50 10 40 00 00 	movabs $0x401050,%rsi
  401538:	00 00 00 
  40153b:	e8 c0 fb ff ff       	callq  401100 <_ZNSolsEPFRSoS_E@plt>
  401540:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  401543:	48 89 85 a0 2f f8 ff 	mov    %rax,-0x7d060(%rbp)
  40154a:	89 c8                	mov    %ecx,%eax
  40154c:	48 81 c4 60 d0 07 00 	add    $0x7d060,%rsp
  401553:	5d                   	pop    %rbp
  401554:	c3                   	retq   
  401555:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40155c:	00 00 00 
  40155f:	90                   	nop

0000000000401560 <_Z7getRandff>:
  401560:	55                   	push   %rbp
  401561:	48 89 e5             	mov    %rsp,%rbp
  401564:	48 83 ec 30          	sub    $0x30,%rsp
  401568:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
  40156d:	f3 0f 11 4d f8       	movss  %xmm1,-0x8(%rbp)
  401572:	80 3c 25 a0 65 40 00 	cmpb   $0x0,0x4065a0
  401579:	00 
  40157a:	0f 85 62 00 00 00    	jne    4015e2 <_Z7getRandff+0x82>
  401580:	48 bf a0 65 40 00 00 	movabs $0x4065a0,%rdi
  401587:	00 00 00 
  40158a:	e8 01 fc ff ff       	callq  401190 <__cxa_guard_acquire@plt>
  40158f:	83 f8 00             	cmp    $0x0,%eax
  401592:	0f 84 4a 00 00 00    	je     4015e2 <_Z7getRandff+0x82>
  401598:	bf 18 52 40 00       	mov    $0x405218,%edi
  40159d:	e8 be 01 00 00       	callq  401760 <_ZNSt13random_deviceC2Ev>
  4015a2:	e9 00 00 00 00       	jmpq   4015a7 <_Z7getRandff+0x47>
  4015a7:	48 b8 00 18 40 00 00 	movabs $0x401800,%rax
  4015ae:	00 00 00 
  4015b1:	48 b9 18 52 40 00 00 	movabs $0x405218,%rcx
  4015b8:	00 00 00 
  4015bb:	48 89 c7             	mov    %rax,%rdi
  4015be:	48 89 ce             	mov    %rcx,%rsi
  4015c1:	48 ba e0 50 40 00 00 	movabs $0x4050e0,%rdx
  4015c8:	00 00 00 
  4015cb:	e8 00 fb ff ff       	callq  4010d0 <__cxa_atexit@plt>
  4015d0:	48 bf a0 65 40 00 00 	movabs $0x4065a0,%rdi
  4015d7:	00 00 00 
  4015da:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4015dd:	e8 ae fa ff ff       	callq  401090 <__cxa_guard_release@plt>
  4015e2:	80 3c 25 30 79 40 00 	cmpb   $0x0,0x407930
  4015e9:	00 
  4015ea:	0f 85 4f 00 00 00    	jne    40163f <_Z7getRandff+0xdf>
  4015f0:	48 bf 30 79 40 00 00 	movabs $0x407930,%rdi
  4015f7:	00 00 00 
  4015fa:	e8 91 fb ff ff       	callq  401190 <__cxa_guard_acquire@plt>
  4015ff:	83 f8 00             	cmp    $0x0,%eax
  401602:	0f 84 37 00 00 00    	je     40163f <_Z7getRandff+0xdf>
  401608:	bf 18 52 40 00       	mov    $0x405218,%edi
  40160d:	e8 1e 02 00 00       	callq  401830 <_ZNSt13random_deviceclEv>
  401612:	89 45 d8             	mov    %eax,-0x28(%rbp)
  401615:	e9 00 00 00 00       	jmpq   40161a <_Z7getRandff+0xba>
  40161a:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40161d:	89 c1                	mov    %eax,%ecx
  40161f:	89 ce                	mov    %ecx,%esi
  401621:	bf a8 65 40 00       	mov    $0x4065a8,%edi
  401626:	e8 25 02 00 00       	callq  401850 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em>
  40162b:	e9 00 00 00 00       	jmpq   401630 <_Z7getRandff+0xd0>
  401630:	48 bf 30 79 40 00 00 	movabs $0x407930,%rdi
  401637:	00 00 00 
  40163a:	e8 51 fa ff ff       	callq  401090 <__cxa_guard_release@plt>
  40163f:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
  401644:	f3 0f 10 4d f8       	movss  -0x8(%rbp),%xmm1
  401649:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  40164d:	e8 2e 02 00 00       	callq  401880 <_ZNSt25uniform_real_distributionIfEC2Eff>
  401652:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  401656:	48 be a8 65 40 00 00 	movabs $0x4065a8,%rsi
  40165d:	00 00 00 
  401660:	e8 4b 02 00 00       	callq  4018b0 <_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_>
  401665:	48 83 c4 30          	add    $0x30,%rsp
  401669:	5d                   	pop    %rbp
  40166a:	c3                   	retq   
  40166b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40166f:	89 55 ec             	mov    %edx,-0x14(%rbp)
  401672:	48 bf a0 65 40 00 00 	movabs $0x4065a0,%rdi
  401679:	00 00 00 
  40167c:	e8 ff f9 ff ff       	callq  401080 <__cxa_guard_abort@plt>
  401681:	e9 16 00 00 00       	jmpq   40169c <_Z7getRandff+0x13c>
  401686:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40168a:	89 55 ec             	mov    %edx,-0x14(%rbp)
  40168d:	48 bf 30 79 40 00 00 	movabs $0x407930,%rdi
  401694:	00 00 00 
  401697:	e8 e4 f9 ff ff       	callq  401080 <__cxa_guard_abort@plt>
  40169c:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4016a0:	e8 cb fa ff ff       	callq  401170 <_Unwind_Resume@plt>
  4016a5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4016ac:	00 00 00 
  4016af:	90                   	nop

00000000004016b0 <_ZNK9Rectangle16doesRecIntersectERKS_>:
  4016b0:	55                   	push   %rbp
  4016b1:	48 89 e5             	mov    %rsp,%rbp
  4016b4:	31 c0                	xor    %eax,%eax
  4016b6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4016ba:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4016be:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4016c2:	f3 0f 10 01          	movss  (%rcx),%xmm0
  4016c6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4016ca:	f3 0f 10 0a          	movss  (%rdx),%xmm1
  4016ce:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4016d2:	f3 0f 58 4a 08       	addss  0x8(%rdx),%xmm1
  4016d7:	0f 2e c8             	ucomiss %xmm0,%xmm1
  4016da:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  4016de:	88 45 e7             	mov    %al,-0x19(%rbp)
  4016e1:	0f 86 6c 00 00 00    	jbe    401753 <_ZNK9Rectangle16doesRecIntersectERKS_+0xa3>
  4016e7:	31 c0                	xor    %eax,%eax
  4016e9:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  4016ed:	f3 0f 10 01          	movss  (%rcx),%xmm0
  4016f1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  4016f5:	f3 0f 10 09          	movss  (%rcx),%xmm1
  4016f9:	f3 0f 58 49 08       	addss  0x8(%rcx),%xmm1
  4016fe:	0f 2e c8             	ucomiss %xmm0,%xmm1
  401701:	88 45 e7             	mov    %al,-0x19(%rbp)
  401704:	0f 86 49 00 00 00    	jbe    401753 <_ZNK9Rectangle16doesRecIntersectERKS_+0xa3>
  40170a:	31 c0                	xor    %eax,%eax
  40170c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  401710:	f3 0f 10 41 04       	movss  0x4(%rcx),%xmm0
  401715:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401719:	f3 0f 10 4a 04       	movss  0x4(%rdx),%xmm1
  40171e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401722:	f3 0f 58 4a 0c       	addss  0xc(%rdx),%xmm1
  401727:	0f 2e c8             	ucomiss %xmm0,%xmm1
  40172a:	88 45 e7             	mov    %al,-0x19(%rbp)
  40172d:	0f 86 20 00 00 00    	jbe    401753 <_ZNK9Rectangle16doesRecIntersectERKS_+0xa3>
  401733:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401737:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
  40173c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401740:	f3 0f 10 48 04       	movss  0x4(%rax),%xmm1
  401745:	f3 0f 58 48 0c       	addss  0xc(%rax),%xmm1
  40174a:	0f 2e c8             	ucomiss %xmm0,%xmm1
  40174d:	0f 97 c1             	seta   %cl
  401750:	88 4d e7             	mov    %cl,-0x19(%rbp)
  401753:	8a 45 e7             	mov    -0x19(%rbp),%al
  401756:	24 01                	and    $0x1,%al
  401758:	0f b6 c0             	movzbl %al,%eax
  40175b:	5d                   	pop    %rbp
  40175c:	c3                   	retq   
  40175d:	0f 1f 00             	nopl   (%rax)

0000000000401760 <_ZNSt13random_deviceC2Ev>:
  401760:	55                   	push   %rbp
  401761:	48 89 e5             	mov    %rsp,%rbp
  401764:	48 83 ec 50          	sub    $0x50,%rsp
  401768:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40176c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  401770:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401774:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  401778:	48 89 c7             	mov    %rax,%rdi
  40177b:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40177f:	e8 fc f9 ff ff       	callq  401180 <_ZNSaIcEC1Ev@plt>
  401784:	be 37 30 40 00       	mov    $0x403037,%esi
  401789:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  40178d:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  401791:	e8 8a f9 ff ff       	callq  401120 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
  401796:	e9 00 00 00 00       	jmpq   40179b <_ZNSt13random_deviceC2Ev+0x3b>
  40179b:	48 8d 75 d8          	lea    -0x28(%rbp),%rsi
  40179f:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  4017a3:	e8 b8 f9 ff ff       	callq  401160 <_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@plt>
  4017a8:	e9 00 00 00 00       	jmpq   4017ad <_ZNSt13random_deviceC2Ev+0x4d>
  4017ad:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  4017b1:	e8 ba f8 ff ff       	callq  401070 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  4017b6:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  4017ba:	e8 51 f9 ff ff       	callq  401110 <_ZNSaIcED1Ev@plt>
  4017bf:	48 83 c4 50          	add    $0x50,%rsp
  4017c3:	5d                   	pop    %rbp
  4017c4:	c3                   	retq   
  4017c5:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4017c9:	89 55 c4             	mov    %edx,-0x3c(%rbp)
  4017cc:	e9 10 00 00 00       	jmpq   4017e1 <_ZNSt13random_deviceC2Ev+0x81>
  4017d1:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4017d5:	89 55 c4             	mov    %edx,-0x3c(%rbp)
  4017d8:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
  4017dc:	e8 8f f8 ff ff       	callq  401070 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  4017e1:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
  4017e5:	e8 26 f9 ff ff       	callq  401110 <_ZNSaIcED1Ev@plt>
  4017ea:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  4017ee:	e8 7d f9 ff ff       	callq  401170 <_Unwind_Resume@plt>
  4017f3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4017fa:	00 00 00 
  4017fd:	0f 1f 00             	nopl   (%rax)

0000000000401800 <_ZNSt13random_deviceD2Ev>:
  401800:	55                   	push   %rbp
  401801:	48 89 e5             	mov    %rsp,%rbp
  401804:	48 83 ec 10          	sub    $0x10,%rsp
  401808:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40180c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  401810:	e8 cb f8 ff ff       	callq  4010e0 <_ZNSt13random_device7_M_finiEv@plt>
  401815:	e9 00 00 00 00       	jmpq   40181a <_ZNSt13random_deviceD2Ev+0x1a>
  40181a:	48 83 c4 10          	add    $0x10,%rsp
  40181e:	5d                   	pop    %rbp
  40181f:	c3                   	retq   
  401820:	48 89 c7             	mov    %rax,%rdi
  401823:	89 55 f4             	mov    %edx,-0xc(%rbp)
  401826:	e8 b5 00 00 00       	callq  4018e0 <__clang_call_terminate>
  40182b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401830 <_ZNSt13random_deviceclEv>:
  401830:	55                   	push   %rbp
  401831:	48 89 e5             	mov    %rsp,%rbp
  401834:	48 83 ec 10          	sub    $0x10,%rsp
  401838:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40183c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  401840:	e8 eb f8 ff ff       	callq  401130 <_ZNSt13random_device9_M_getvalEv@plt>
  401845:	48 83 c4 10          	add    $0x10,%rsp
  401849:	5d                   	pop    %rbp
  40184a:	c3                   	retq   
  40184b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401850 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em>:
  401850:	55                   	push   %rbp
  401851:	48 89 e5             	mov    %rsp,%rbp
  401854:	48 83 ec 10          	sub    $0x10,%rsp
  401858:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40185c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401860:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  401864:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  401868:	e8 83 00 00 00       	callq  4018f0 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm>
  40186d:	48 83 c4 10          	add    $0x10,%rsp
  401871:	5d                   	pop    %rbp
  401872:	c3                   	retq   
  401873:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40187a:	00 00 00 
  40187d:	0f 1f 00             	nopl   (%rax)

0000000000401880 <_ZNSt25uniform_real_distributionIfEC2Eff>:
  401880:	55                   	push   %rbp
  401881:	48 89 e5             	mov    %rsp,%rbp
  401884:	48 83 ec 10          	sub    $0x10,%rsp
  401888:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40188c:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
  401891:	f3 0f 11 4d f0       	movss  %xmm1,-0x10(%rbp)
  401896:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40189a:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
  40189f:	f3 0f 10 4d f0       	movss  -0x10(%rbp),%xmm1
  4018a4:	e8 b7 01 00 00       	callq  401a60 <_ZNSt25uniform_real_distributionIfE10param_typeC2Eff>
  4018a9:	48 83 c4 10          	add    $0x10,%rsp
  4018ad:	5d                   	pop    %rbp
  4018ae:	c3                   	retq   
  4018af:	90                   	nop

00000000004018b0 <_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_>:
  4018b0:	55                   	push   %rbp
  4018b1:	48 89 e5             	mov    %rsp,%rbp
  4018b4:	48 83 ec 10          	sub    $0x10,%rsp
  4018b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4018bc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4018c0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018c4:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  4018c8:	48 89 c7             	mov    %rax,%rdi
  4018cb:	48 89 c2             	mov    %rax,%rdx
  4018ce:	e8 bd 01 00 00       	callq  401a90 <_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE>
  4018d3:	48 83 c4 10          	add    $0x10,%rsp
  4018d7:	5d                   	pop    %rbp
  4018d8:	c3                   	retq   
  4018d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004018e0 <__clang_call_terminate>:
  4018e0:	50                   	push   %rax
  4018e1:	e8 5a f7 ff ff       	callq  401040 <__cxa_begin_catch@plt>
  4018e6:	48 89 04 24          	mov    %rax,(%rsp)
  4018ea:	e8 41 f7 ff ff       	callq  401030 <_ZSt9terminatev@plt>
  4018ef:	90                   	nop

00000000004018f0 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm>:
  4018f0:	55                   	push   %rbp
  4018f1:	48 89 e5             	mov    %rsp,%rbp
  4018f4:	48 83 ec 30          	sub    $0x30,%rsp
  4018f8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4018fc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401900:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401904:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  401908:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  40190c:	e8 9f 00 00 00       	callq  4019b0 <_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_>
  401911:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  401915:	48 89 01             	mov    %rax,(%rcx)
  401918:	48 c7 45 e8 01 00 00 	movq   $0x1,-0x18(%rbp)
  40191f:	00 
  401920:	48 81 7d e8 70 02 00 	cmpq   $0x270,-0x18(%rbp)
  401927:	00 
  401928:	0f 83 6b 00 00 00    	jae    401999 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm+0xa9>
  40192e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401932:	48 2d 01 00 00 00    	sub    $0x1,%rax
  401938:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40193c:	48 8b 04 c1          	mov    (%rcx,%rax,8),%rax
  401940:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401944:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401948:	48 c1 e8 1e          	shr    $0x1e,%rax
  40194c:	48 33 45 e0          	xor    -0x20(%rbp),%rax
  401950:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401954:	48 69 45 e0 65 89 07 	imul   $0x6c078965,-0x20(%rbp),%rax
  40195b:	6c 
  40195c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401960:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  401964:	e8 67 00 00 00       	callq  4019d0 <_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_>
  401969:	48 03 45 e0          	add    -0x20(%rbp),%rax
  40196d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401971:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  401975:	e8 36 00 00 00       	callq  4019b0 <_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_>
  40197a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  40197e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401982:	48 89 04 ca          	mov    %rax,(%rdx,%rcx,8)
  401986:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40198a:	48 05 01 00 00 00    	add    $0x1,%rax
  401990:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401994:	e9 87 ff ff ff       	jmpq   401920 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm+0x30>
  401999:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40199d:	48 c7 80 80 13 00 00 	movq   $0x270,0x1380(%rax)
  4019a4:	70 02 00 00 
  4019a8:	48 83 c4 30          	add    $0x30,%rsp
  4019ac:	5d                   	pop    %rbp
  4019ad:	c3                   	retq   
  4019ae:	66 90                	xchg   %ax,%ax

00000000004019b0 <_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_>:
  4019b0:	55                   	push   %rbp
  4019b1:	48 89 e5             	mov    %rsp,%rbp
  4019b4:	48 83 ec 10          	sub    $0x10,%rsp
  4019b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4019bc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4019c0:	e8 2b 00 00 00       	callq  4019f0 <_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm>
  4019c5:	48 83 c4 10          	add    $0x10,%rsp
  4019c9:	5d                   	pop    %rbp
  4019ca:	c3                   	retq   
  4019cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004019d0 <_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_>:
  4019d0:	55                   	push   %rbp
  4019d1:	48 89 e5             	mov    %rsp,%rbp
  4019d4:	48 83 ec 10          	sub    $0x10,%rsp
  4019d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4019dc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4019e0:	e8 3b 00 00 00       	callq  401a20 <_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm>
  4019e5:	48 83 c4 10          	add    $0x10,%rsp
  4019e9:	5d                   	pop    %rbp
  4019ea:	c3                   	retq   
  4019eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004019f0 <_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm>:
  4019f0:	55                   	push   %rbp
  4019f1:	48 89 e5             	mov    %rsp,%rbp
  4019f4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4019f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4019fc:	48 c1 e0 00          	shl    $0x0,%rax
  401a00:	48 05 00 00 00 00    	add    $0x0,%rax
  401a06:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401a0a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401a0f:	48 23 45 f0          	and    -0x10(%rbp),%rax
  401a13:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401a17:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401a1b:	5d                   	pop    %rbp
  401a1c:	c3                   	retq   
  401a1d:	0f 1f 00             	nopl   (%rax)

0000000000401a20 <_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm>:
  401a20:	55                   	push   %rbp
  401a21:	48 89 e5             	mov    %rsp,%rbp
  401a24:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401a28:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a2c:	48 c1 e0 00          	shl    $0x0,%rax
  401a30:	48 05 00 00 00 00    	add    $0x0,%rax
  401a36:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401a3a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401a3e:	31 c9                	xor    %ecx,%ecx
  401a40:	89 ca                	mov    %ecx,%edx
  401a42:	be 70 02 00 00       	mov    $0x270,%esi
  401a47:	48 f7 f6             	div    %rsi
  401a4a:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
  401a4e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401a52:	48 89 d0             	mov    %rdx,%rax
  401a55:	5d                   	pop    %rbp
  401a56:	c3                   	retq   
  401a57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401a5e:	00 00 

0000000000401a60 <_ZNSt25uniform_real_distributionIfE10param_typeC2Eff>:
  401a60:	55                   	push   %rbp
  401a61:	48 89 e5             	mov    %rsp,%rbp
  401a64:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401a68:	f3 0f 11 45 f4       	movss  %xmm0,-0xc(%rbp)
  401a6d:	f3 0f 11 4d f0       	movss  %xmm1,-0x10(%rbp)
  401a72:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401a76:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
  401a7b:	f3 0f 11 00          	movss  %xmm0,(%rax)
  401a7f:	f3 0f 10 45 f0       	movss  -0x10(%rbp),%xmm0
  401a84:	f3 0f 11 40 04       	movss  %xmm0,0x4(%rax)
  401a89:	5d                   	pop    %rbp
  401a8a:	c3                   	retq   
  401a8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401a90 <_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE>:
  401a90:	55                   	push   %rbp
  401a91:	48 89 e5             	mov    %rsp,%rbp
  401a94:	48 83 ec 30          	sub    $0x30,%rsp
  401a98:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401a9c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401aa0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  401aa4:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  401aa8:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  401aac:	e8 5f 00 00 00       	callq  401b10 <_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_>
  401ab1:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
  401ab5:	e8 76 00 00 00       	callq  401b30 <_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv>
  401aba:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  401abe:	f3 0f 11 45 dc       	movss  %xmm0,-0x24(%rbp)
  401ac3:	e8 88 00 00 00       	callq  401b50 <_ZNKSt25uniform_real_distributionIfE10param_type1bEv>
  401ac8:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  401acc:	f3 0f 11 45 d8       	movss  %xmm0,-0x28(%rbp)
  401ad1:	e8 9a 00 00 00       	callq  401b70 <_ZNKSt25uniform_real_distributionIfE10param_type1aEv>
  401ad6:	f3 0f 10 4d d8       	movss  -0x28(%rbp),%xmm1
  401adb:	f3 0f 5c c8          	subss  %xmm0,%xmm1
  401adf:	f3 0f 10 45 dc       	movss  -0x24(%rbp),%xmm0
  401ae4:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  401ae8:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  401aec:	f3 0f 11 45 d4       	movss  %xmm0,-0x2c(%rbp)
  401af1:	e8 7a 00 00 00       	callq  401b70 <_ZNKSt25uniform_real_distributionIfE10param_type1aEv>
  401af6:	f3 0f 10 4d d4       	movss  -0x2c(%rbp),%xmm1
  401afb:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  401aff:	0f 28 c1             	movaps %xmm1,%xmm0
  401b02:	48 83 c4 30          	add    $0x30,%rsp
  401b06:	5d                   	pop    %rbp
  401b07:	c3                   	retq   
  401b08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401b0f:	00 

0000000000401b10 <_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_>:
  401b10:	55                   	push   %rbp
  401b11:	48 89 e5             	mov    %rsp,%rbp
  401b14:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401b18:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401b1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b20:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  401b24:	48 89 08             	mov    %rcx,(%rax)
  401b27:	5d                   	pop    %rbp
  401b28:	c3                   	retq   
  401b29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401b30 <_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv>:
  401b30:	55                   	push   %rbp
  401b31:	48 89 e5             	mov    %rsp,%rbp
  401b34:	48 83 ec 10          	sub    $0x10,%rsp
  401b38:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401b3c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b40:	48 8b 38             	mov    (%rax),%rdi
  401b43:	e8 48 00 00 00       	callq  401b90 <_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_>
  401b48:	48 83 c4 10          	add    $0x10,%rsp
  401b4c:	5d                   	pop    %rbp
  401b4d:	c3                   	retq   
  401b4e:	66 90                	xchg   %ax,%ax

0000000000401b50 <_ZNKSt25uniform_real_distributionIfE10param_type1bEv>:
  401b50:	55                   	push   %rbp
  401b51:	48 89 e5             	mov    %rsp,%rbp
  401b54:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401b58:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b5c:	f3 0f 10 40 04       	movss  0x4(%rax),%xmm0
  401b61:	5d                   	pop    %rbp
  401b62:	c3                   	retq   
  401b63:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b6a:	00 00 00 
  401b6d:	0f 1f 00             	nopl   (%rax)

0000000000401b70 <_ZNKSt25uniform_real_distributionIfE10param_type1aEv>:
  401b70:	55                   	push   %rbp
  401b71:	48 89 e5             	mov    %rsp,%rbp
  401b74:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401b78:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b7c:	f3 0f 10 00          	movss  (%rax),%xmm0
  401b80:	5d                   	pop    %rbp
  401b81:	c3                   	retq   
  401b82:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b89:	00 00 00 
  401b8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401b90 <_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_>:
  401b90:	55                   	push   %rbp
  401b91:	48 89 e5             	mov    %rsp,%rbp
  401b94:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
  401b9b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401b9f:	48 c7 45 f0 18 00 00 	movq   $0x18,-0x10(%rbp)
  401ba6:	00 
  401ba7:	e8 24 02 00 00       	callq  401dd0 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3maxEv>
  401bac:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  401bb0:	48 85 c0             	test   %rax,%rax
  401bb3:	0f 98 c1             	sets   %cl
  401bb6:	0f b6 d1             	movzbl %cl,%edx
  401bb9:	89 d0                	mov    %edx,%eax
  401bbb:	df 6d 90             	fildll -0x70(%rbp)
  401bbe:	d9 04 85 20 30 40 00 	flds   0x403020(,%rax,4)
  401bc5:	de c1                	faddp  %st,%st(1)
  401bc7:	db bd 7c ff ff ff    	fstpt  -0x84(%rbp)
  401bcd:	e8 0e 02 00 00       	callq  401de0 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv>
  401bd2:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  401bd6:	48 85 c0             	test   %rax,%rax
  401bd9:	0f 98 c1             	sets   %cl
  401bdc:	0f b6 d1             	movzbl %cl,%edx
  401bdf:	89 d0                	mov    %edx,%eax
  401be1:	df 6d 98             	fildll -0x68(%rbp)
  401be4:	d9 04 85 20 30 40 00 	flds   0x403020(,%rax,4)
  401beb:	de c1                	faddp  %st,%st(1)
  401bed:	db ad 7c ff ff ff    	fldt   -0x84(%rbp)
  401bf3:	de e1                	fsubp  %st,%st(1)
  401bf5:	d9 e8                	fld1   
  401bf7:	de c1                	faddp  %st,%st(1)
  401bf9:	db 7d e0             	fstpt  -0x20(%rbp)
  401bfc:	db 6d e0             	fldt   -0x20(%rbp)
  401bff:	48 89 e0             	mov    %rsp,%rax
  401c02:	db 38                	fstpt  (%rax)
  401c04:	e8 e7 01 00 00       	callq  401df0 <_ZSt3loge>
  401c09:	48 89 e0             	mov    %rsp,%rax
  401c0c:	d9 05 06 14 00 00    	flds   0x1406(%rip)        # 403018 <_IO_stdin_used+0x18>
  401c12:	db 38                	fstpt  (%rax)
  401c14:	db bd 70 ff ff ff    	fstpt  -0x90(%rbp)
  401c1a:	e8 d1 01 00 00       	callq  401df0 <_ZSt3loge>
  401c1f:	db ad 70 ff ff ff    	fldt   -0x90(%rbp)
  401c25:	de f1                	fdivp  %st,%st(1)
  401c27:	d9 05 ef 13 00 00    	flds   0x13ef(%rip)        # 40301c <_IO_stdin_used+0x1c>
  401c2d:	d9 c9                	fxch   %st(1)
  401c2f:	db e9                	fucomi %st(1),%st
  401c31:	d9 ee                	fldz   
  401c33:	d9 ca                	fxch   %st(2)
  401c35:	da c2                	fcmovb %st(2),%st
  401c37:	dd da                	fstp   %st(2)
  401c39:	de e1                	fsubp  %st,%st(1)
  401c3b:	0f 93 c1             	setae  %cl
  401c3e:	d9 7d 8a             	fnstcw -0x76(%rbp)
  401c41:	0f b7 55 8a          	movzwl -0x76(%rbp),%edx
  401c45:	81 ca 00 0c 00 00    	or     $0xc00,%edx
  401c4b:	66 89 55 88          	mov    %dx,-0x78(%rbp)
  401c4f:	d9 6d 88             	fldcw  -0x78(%rbp)
  401c52:	df 7d a0             	fistpll -0x60(%rbp)
  401c55:	d9 6d 8a             	fldcw  -0x76(%rbp)
  401c58:	0f b6 f1             	movzbl %cl,%esi
  401c5b:	89 f0                	mov    %esi,%eax
  401c5d:	48 c1 e0 3f          	shl    $0x3f,%rax
  401c61:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  401c65:	48 31 c7             	xor    %rax,%rdi
  401c68:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401c6c:	48 c7 45 c8 01 00 00 	movq   $0x1,-0x38(%rbp)
  401c73:	00 
  401c74:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401c78:	48 05 18 00 00 00    	add    $0x18,%rax
  401c7e:	48 2d 01 00 00 00    	sub    $0x1,%rax
  401c84:	31 f6                	xor    %esi,%esi
  401c86:	89 f2                	mov    %esi,%edx
  401c88:	48 f7 75 d8          	divq   -0x28(%rbp)
  401c8c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  401c90:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
  401c94:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
  401c98:	e8 83 01 00 00       	callq  401e20 <_ZSt3maxImERKT_S2_S2_>
  401c9d:	f3 0f 10 05 6f 13 00 	movss  0x136f(%rip),%xmm0        # 403014 <_IO_stdin_used+0x14>
  401ca4:	00 
  401ca5:	48 8b 00             	mov    (%rax),%rax
  401ca8:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  401cac:	0f 57 c9             	xorps  %xmm1,%xmm1
  401caf:	f3 0f 11 4d b8       	movss  %xmm1,-0x48(%rbp)
  401cb4:	f3 0f 11 45 b4       	movss  %xmm0,-0x4c(%rbp)
  401cb9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401cbd:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401cc1:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  401cc6:	0f 84 ad 00 00 00    	je     401d79 <_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_+0x1e9>
  401ccc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  401cd0:	e8 8b 01 00 00       	callq  401e60 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv>
  401cd5:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  401cdc:	e8 ff 00 00 00       	callq  401de0 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv>
  401ce1:	48 8b 8d 68 ff ff ff 	mov    -0x98(%rbp),%rcx
  401ce8:	48 29 c1             	sub    %rax,%rcx
  401ceb:	48 89 c8             	mov    %rcx,%rax
  401cee:	48 d1 e8             	shr    %rax
  401cf1:	89 ca                	mov    %ecx,%edx
  401cf3:	83 e2 01             	and    $0x1,%edx
  401cf6:	89 d6                	mov    %edx,%esi
  401cf8:	48 09 c6             	or     %rax,%rsi
  401cfb:	f3 48 0f 2a c6       	cvtsi2ss %rsi,%xmm0
  401d00:	f3 0f 58 c0          	addss  %xmm0,%xmm0
  401d04:	f3 48 0f 2a c9       	cvtsi2ss %rcx,%xmm1
  401d09:	48 85 c9             	test   %rcx,%rcx
  401d0c:	f3 0f 11 8d 64 ff ff 	movss  %xmm1,-0x9c(%rbp)
  401d13:	ff 
  401d14:	f3 0f 11 85 60 ff ff 	movss  %xmm0,-0xa0(%rbp)
  401d1b:	ff 
  401d1c:	0f 88 10 00 00 00    	js     401d32 <_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_+0x1a2>
  401d22:	f3 0f 10 85 64 ff ff 	movss  -0x9c(%rbp),%xmm0
  401d29:	ff 
  401d2a:	f3 0f 11 85 60 ff ff 	movss  %xmm0,-0xa0(%rbp)
  401d31:	ff 
  401d32:	f3 0f 10 85 60 ff ff 	movss  -0xa0(%rbp),%xmm0
  401d39:	ff 
  401d3a:	f3 0f 10 4d b4       	movss  -0x4c(%rbp),%xmm1
  401d3f:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
  401d43:	f3 0f 10 4d b8       	movss  -0x48(%rbp),%xmm1
  401d48:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  401d4c:	f3 0f 11 4d b8       	movss  %xmm1,-0x48(%rbp)
  401d51:	db 6d e0             	fldt   -0x20(%rbp)
  401d54:	d9 45 b4             	flds   -0x4c(%rbp)
  401d57:	de c9                	fmulp  %st,%st(1)
  401d59:	d9 5d 8c             	fstps  -0x74(%rbp)
  401d5c:	f3 0f 10 45 8c       	movss  -0x74(%rbp),%xmm0
  401d61:	f3 0f 11 45 b4       	movss  %xmm0,-0x4c(%rbp)
  401d66:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  401d6a:	48 05 ff ff ff ff    	add    $0xffffffffffffffff,%rax
  401d70:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401d74:	e9 48 ff ff ff       	jmpq   401cc1 <_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_+0x131>
  401d79:	f3 0f 10 05 93 12 00 	movss  0x1293(%rip),%xmm0        # 403014 <_IO_stdin_used+0x14>
  401d80:	00 
  401d81:	f3 0f 10 4d b8       	movss  -0x48(%rbp),%xmm1
  401d86:	f3 0f 5e 4d b4       	divss  -0x4c(%rbp),%xmm1
  401d8b:	f3 0f 11 4d bc       	movss  %xmm1,-0x44(%rbp)
  401d90:	f3 0f 10 4d bc       	movss  -0x44(%rbp),%xmm1
  401d95:	0f 2e c8             	ucomiss %xmm0,%xmm1
  401d98:	0f 82 15 00 00 00    	jb     401db3 <_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_+0x223>
  401d9e:	f3 0f 10 05 6e 12 00 	movss  0x126e(%rip),%xmm0        # 403014 <_IO_stdin_used+0x14>
  401da5:	00 
  401da6:	0f 57 c9             	xorps  %xmm1,%xmm1
  401da9:	e8 72 01 00 00       	callq  401f20 <_ZSt9nextafterff>
  401dae:	f3 0f 11 45 bc       	movss  %xmm0,-0x44(%rbp)
  401db3:	f3 0f 10 45 bc       	movss  -0x44(%rbp),%xmm0
  401db8:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
  401dbf:	5d                   	pop    %rbp
  401dc0:	c3                   	retq   
  401dc1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401dc8:	00 00 00 
  401dcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401dd0 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3maxEv>:
  401dd0:	55                   	push   %rbp
  401dd1:	48 89 e5             	mov    %rsp,%rbp
  401dd4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401dd9:	5d                   	pop    %rbp
  401dda:	c3                   	retq   
  401ddb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401de0 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv>:
  401de0:	55                   	push   %rbp
  401de1:	48 89 e5             	mov    %rsp,%rbp
  401de4:	31 c0                	xor    %eax,%eax
  401de6:	5d                   	pop    %rbp
  401de7:	c3                   	retq   
  401de8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401def:	00 

0000000000401df0 <_ZSt3loge>:
  401df0:	55                   	push   %rbp
  401df1:	48 89 e5             	mov    %rsp,%rbp
  401df4:	48 83 ec 20          	sub    $0x20,%rsp
  401df8:	db 6d 10             	fldt   0x10(%rbp)
  401dfb:	db 7d f0             	fstpt  -0x10(%rbp)
  401dfe:	db 6d f0             	fldt   -0x10(%rbp)
  401e01:	48 89 e0             	mov    %rsp,%rax
  401e04:	db 38                	fstpt  (%rax)
  401e06:	e8 55 f2 ff ff       	callq  401060 <logl@plt>
  401e0b:	d9 c0                	fld    %st(0)
  401e0d:	dd d8                	fstp   %st(0)
  401e0f:	48 83 c4 20          	add    $0x20,%rsp
  401e13:	5d                   	pop    %rbp
  401e14:	c3                   	retq   
  401e15:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401e1c:	00 00 00 
  401e1f:	90                   	nop

0000000000401e20 <_ZSt3maxImERKT_S2_S2_>:
  401e20:	55                   	push   %rbp
  401e21:	48 89 e5             	mov    %rsp,%rbp
  401e24:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  401e28:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  401e2c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401e30:	48 8b 00             	mov    (%rax),%rax
  401e33:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  401e37:	48 3b 01             	cmp    (%rcx),%rax
  401e3a:	0f 83 0d 00 00 00    	jae    401e4d <_ZSt3maxImERKT_S2_S2_+0x2d>
  401e40:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401e44:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401e48:	e9 08 00 00 00       	jmpq   401e55 <_ZSt3maxImERKT_S2_S2_+0x35>
  401e4d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401e51:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401e55:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e59:	5d                   	pop    %rbp
  401e5a:	c3                   	retq   
  401e5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401e60 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv>:
  401e60:	55                   	push   %rbp
  401e61:	48 89 e5             	mov    %rsp,%rbp
  401e64:	48 83 ec 20          	sub    $0x20,%rsp
  401e68:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401e6c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e70:	48 81 b8 80 13 00 00 	cmpq   $0x270,0x1380(%rax)
  401e77:	70 02 00 00 
  401e7b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401e7f:	0f 82 09 00 00 00    	jb     401e8e <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv+0x2e>
  401e85:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  401e89:	e8 c2 00 00 00       	callq  401f50 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv>
  401e8e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401e92:	48 8b 88 80 13 00 00 	mov    0x1380(%rax),%rcx
  401e99:	48 89 ca             	mov    %rcx,%rdx
  401e9c:	48 81 c2 01 00 00 00 	add    $0x1,%rdx
  401ea3:	48 89 90 80 13 00 00 	mov    %rdx,0x1380(%rax)
  401eaa:	48 8b 0c c8          	mov    (%rax,%rcx,8),%rcx
  401eae:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  401eb2:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  401eb6:	48 c1 e9 0b          	shr    $0xb,%rcx
  401eba:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401ebf:	48 21 d1             	and    %rdx,%rcx
  401ec2:	48 33 4d f0          	xor    -0x10(%rbp),%rcx
  401ec6:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  401eca:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  401ece:	48 c1 e1 07          	shl    $0x7,%rcx
  401ed2:	ba 80 56 2c 9d       	mov    $0x9d2c5680,%edx
  401ed7:	48 21 d1             	and    %rdx,%rcx
  401eda:	48 33 4d f0          	xor    -0x10(%rbp),%rcx
  401ede:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  401ee2:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  401ee6:	48 c1 e1 0f          	shl    $0xf,%rcx
  401eea:	ba 00 00 c6 ef       	mov    $0xefc60000,%edx
  401eef:	48 21 d1             	and    %rdx,%rcx
  401ef2:	48 33 4d f0          	xor    -0x10(%rbp),%rcx
  401ef6:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  401efa:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  401efe:	48 c1 e9 12          	shr    $0x12,%rcx
  401f02:	48 33 4d f0          	xor    -0x10(%rbp),%rcx
  401f06:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
  401f0a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401f0e:	48 83 c4 20          	add    $0x20,%rsp
  401f12:	5d                   	pop    %rbp
  401f13:	c3                   	retq   
  401f14:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401f1b:	00 00 00 
  401f1e:	66 90                	xchg   %ax,%ax

0000000000401f20 <_ZSt9nextafterff>:
  401f20:	55                   	push   %rbp
  401f21:	48 89 e5             	mov    %rsp,%rbp
  401f24:	48 83 ec 10          	sub    $0x10,%rsp
  401f28:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
  401f2d:	f3 0f 11 4d f8       	movss  %xmm1,-0x8(%rbp)
  401f32:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
  401f37:	f3 0f 10 4d f8       	movss  -0x8(%rbp),%xmm1
  401f3c:	e8 7f f1 ff ff       	callq  4010c0 <nextafterf@plt>
  401f41:	48 83 c4 10          	add    $0x10,%rsp
  401f45:	5d                   	pop    %rbp
  401f46:	c3                   	retq   
  401f47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401f4e:	00 00 

0000000000401f50 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv>:
  401f50:	55                   	push   %rbp
  401f51:	48 89 e5             	mov    %rsp,%rbp
  401f54:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401f58:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f5c:	48 c7 45 f0 00 00 00 	movq   $0xffffffff80000000,-0x10(%rbp)
  401f63:	80 
  401f64:	48 c7 45 e8 ff ff ff 	movq   $0x7fffffff,-0x18(%rbp)
  401f6b:	7f 
  401f6c:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  401f73:	00 
  401f74:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  401f78:	48 81 7d e0 e3 00 00 	cmpq   $0xe3,-0x20(%rbp)
  401f7f:	00 
  401f80:	0f 83 7b 00 00 00    	jae    402001 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv+0xb1>
  401f86:	31 c0                	xor    %eax,%eax
  401f88:	89 c1                	mov    %eax,%ecx
  401f8a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401f8e:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  401f92:	48 8b 14 d6          	mov    (%rsi,%rdx,8),%rdx
  401f96:	48 81 e2 00 00 00 80 	and    $0xffffffff80000000,%rdx
  401f9d:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  401fa1:	48 8b 7c fe 08       	mov    0x8(%rsi,%rdi,8),%rdi
  401fa6:	48 81 e7 ff ff ff 7f 	and    $0x7fffffff,%rdi
  401fad:	48 09 fa             	or     %rdi,%rdx
  401fb0:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  401fb4:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401fb8:	48 8b 94 d6 68 0c 00 	mov    0xc68(%rsi,%rdx,8),%rdx
  401fbf:	00 
  401fc0:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  401fc4:	48 c1 ef 01          	shr    $0x1,%rdi
  401fc8:	48 31 fa             	xor    %rdi,%rdx
  401fcb:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  401fcf:	48 81 e7 01 00 00 00 	and    $0x1,%rdi
  401fd6:	48 83 ff 00          	cmp    $0x0,%rdi
  401fda:	bf df b0 08 99       	mov    $0x9908b0df,%edi
  401fdf:	48 0f 45 cf          	cmovne %rdi,%rcx
  401fe3:	48 31 ca             	xor    %rcx,%rdx
  401fe6:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401fea:	48 89 14 ce          	mov    %rdx,(%rsi,%rcx,8)
  401fee:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401ff2:	48 05 01 00 00 00    	add    $0x1,%rax
  401ff8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401ffc:	e9 77 ff ff ff       	jmpq   401f78 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv+0x28>
  402001:	48 c7 45 d0 e3 00 00 	movq   $0xe3,-0x30(%rbp)
  402008:	00 
  402009:	48 81 7d d0 6f 02 00 	cmpq   $0x26f,-0x30(%rbp)
  402010:	00 
  402011:	0f 83 7b 00 00 00    	jae    402092 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv+0x142>
  402017:	31 c0                	xor    %eax,%eax
  402019:	89 c1                	mov    %eax,%ecx
  40201b:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  40201f:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  402023:	48 8b 14 d6          	mov    (%rsi,%rdx,8),%rdx
  402027:	48 81 e2 00 00 00 80 	and    $0xffffffff80000000,%rdx
  40202e:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  402032:	48 8b 7c fe 08       	mov    0x8(%rsi,%rdi,8),%rdi
  402037:	48 81 e7 ff ff ff 7f 	and    $0x7fffffff,%rdi
  40203e:	48 09 fa             	or     %rdi,%rdx
  402041:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  402045:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  402049:	48 8b 94 d6 e8 f8 ff 	mov    -0x718(%rsi,%rdx,8),%rdx
  402050:	ff 
  402051:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  402055:	48 c1 ef 01          	shr    $0x1,%rdi
  402059:	48 31 fa             	xor    %rdi,%rdx
  40205c:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  402060:	48 81 e7 01 00 00 00 	and    $0x1,%rdi
  402067:	48 83 ff 00          	cmp    $0x0,%rdi
  40206b:	bf df b0 08 99       	mov    $0x9908b0df,%edi
  402070:	48 0f 45 cf          	cmovne %rdi,%rcx
  402074:	48 31 ca             	xor    %rcx,%rdx
  402077:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40207b:	48 89 14 ce          	mov    %rdx,(%rsi,%rcx,8)
  40207f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402083:	48 05 01 00 00 00    	add    $0x1,%rax
  402089:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  40208d:	e9 77 ff ff ff       	jmpq   402009 <_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv+0xb9>
  402092:	31 c0                	xor    %eax,%eax
  402094:	89 c1                	mov    %eax,%ecx
  402096:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  40209a:	48 8b b2 78 13 00 00 	mov    0x1378(%rdx),%rsi
  4020a1:	48 81 e6 00 00 00 80 	and    $0xffffffff80000000,%rsi
  4020a8:	48 8b 3a             	mov    (%rdx),%rdi
  4020ab:	48 81 e7 ff ff ff 7f 	and    $0x7fffffff,%rdi
  4020b2:	48 09 fe             	or     %rdi,%rsi
  4020b5:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  4020b9:	48 8b b2 60 0c 00 00 	mov    0xc60(%rdx),%rsi
  4020c0:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  4020c4:	48 c1 ef 01          	shr    $0x1,%rdi
  4020c8:	48 31 fe             	xor    %rdi,%rsi
  4020cb:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  4020cf:	48 81 e7 01 00 00 00 	and    $0x1,%rdi
  4020d6:	48 83 ff 00          	cmp    $0x0,%rdi
  4020da:	bf df b0 08 99       	mov    $0x9908b0df,%edi
  4020df:	48 0f 45 cf          	cmovne %rdi,%rcx
  4020e3:	48 31 ce             	xor    %rcx,%rsi
  4020e6:	48 89 b2 78 13 00 00 	mov    %rsi,0x1378(%rdx)
  4020ed:	48 c7 82 80 13 00 00 	movq   $0x0,0x1380(%rdx)
  4020f4:	00 00 00 00 
  4020f8:	5d                   	pop    %rbp
  4020f9:	c3                   	retq   
  4020fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402100 <__libc_csu_init>:
  402100:	f3 0f 1e fa          	endbr64 
  402104:	41 57                	push   %r15
  402106:	4c 8d 3d cb 2c 00 00 	lea    0x2ccb(%rip),%r15        # 404dd8 <__frame_dummy_init_array_entry>
  40210d:	41 56                	push   %r14
  40210f:	49 89 d6             	mov    %rdx,%r14
  402112:	41 55                	push   %r13
  402114:	49 89 f5             	mov    %rsi,%r13
  402117:	41 54                	push   %r12
  402119:	41 89 fc             	mov    %edi,%r12d
  40211c:	55                   	push   %rbp
  40211d:	48 8d 2d c4 2c 00 00 	lea    0x2cc4(%rip),%rbp        # 404de8 <__do_global_dtors_aux_fini_array_entry>
  402124:	53                   	push   %rbx
  402125:	4c 29 fd             	sub    %r15,%rbp
  402128:	48 83 ec 08          	sub    $0x8,%rsp
  40212c:	e8 cf ee ff ff       	callq  401000 <_init>
  402131:	48 c1 fd 03          	sar    $0x3,%rbp
  402135:	74 1f                	je     402156 <__libc_csu_init+0x56>
  402137:	31 db                	xor    %ebx,%ebx
  402139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402140:	4c 89 f2             	mov    %r14,%rdx
  402143:	4c 89 ee             	mov    %r13,%rsi
  402146:	44 89 e7             	mov    %r12d,%edi
  402149:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40214d:	48 83 c3 01          	add    $0x1,%rbx
  402151:	48 39 dd             	cmp    %rbx,%rbp
  402154:	75 ea                	jne    402140 <__libc_csu_init+0x40>
  402156:	48 83 c4 08          	add    $0x8,%rsp
  40215a:	5b                   	pop    %rbx
  40215b:	5d                   	pop    %rbp
  40215c:	41 5c                	pop    %r12
  40215e:	41 5d                	pop    %r13
  402160:	41 5e                	pop    %r14
  402162:	41 5f                	pop    %r15
  402164:	c3                   	retq   
  402165:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40216c:	00 00 00 00 

0000000000402170 <__libc_csu_fini>:
  402170:	f3 0f 1e fa          	endbr64 
  402174:	c3                   	retq   

Disassembly of section .fini:

0000000000402178 <_fini>:
  402178:	f3 0f 1e fa          	endbr64 
  40217c:	48 83 ec 08          	sub    $0x8,%rsp
  402180:	48 83 c4 08          	add    $0x8,%rsp
  402184:	c3                   	retq   
