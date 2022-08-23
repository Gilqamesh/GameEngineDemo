
a.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 15 34 00 00 	mov    0x3415(%rip),%rax        # 140004430 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 16 34 00 00 	mov    0x3416(%rip),%rax        # 140004440 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 19 34 00 00 	mov    0x3419(%rip),%rax        # 140004450 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 8c 33 00 00 	mov    0x338c(%rip),%rax        # 1400043d0 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 bf 33 00 00 	mov    0x33bf(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   140001061:	89 0d b9 5f 00 00    	mov    %ecx,0x5fb9(%rip)        # 140007020 <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 41 1a 00 00       	call   140002ab8 <__set_app_type>
   140001077:	e8 b4 19 00 00       	call   140002a30 <__p__fmode>
   14000107c:	48 8b 15 6d 34 00 00 	mov    0x346d(%rip),%rdx        # 1400044f0 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 b4 19 00 00       	call   140002a40 <__p__commode>
   14000108c:	48 8b 15 3d 34 00 00 	mov    0x343d(%rip),%rdx        # 1400044d0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 b4 09 00 00       	call   140001a50 <_setargv>
   14000109c:	48 8b 05 cd 32 00 00 	mov    0x32cd(%rip),%rax        # 140004370 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret    
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 fe 19 00 00       	call   140002ab8 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d 11 34 00 00 	mov    0x3411(%rip),%rcx        # 140004510 <.refptr._matherr>
   1400010ff:	e8 ac 10 00 00       	call   1400021b0 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret    
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 e5 33 00 00 	mov    0x33e5(%rip),%rax        # 140004520 <.refptr._newmode>
   14000113b:	4c 8d 05 e6 5e 00 00 	lea    0x5ee6(%rip),%r8        # 140007028 <envp>
   140001142:	48 8d 15 e7 5e 00 00 	lea    0x5ee7(%rip),%rdx        # 140007030 <argv>
   140001149:	48 8d 0d e8 5e 00 00 	lea    0x5ee8(%rip),%rcx        # 140007038 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 c0 5e 00 00    	mov    %eax,0x5ec0(%rip)        # 140007018 <startinfo>
   140001158:	48 8d 05 b9 5e 00 00 	lea    0x5eb9(%rip),%rax        # 140007018 <startinfo>
   14000115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001164:	48 8b 05 75 33 00 00 	mov    0x3375(%rip),%rax        # 1400044e0 <.refptr._dowildcard>
   14000116b:	44 8b 08             	mov    (%rax),%r9d
   14000116e:	e8 35 19 00 00       	call   140002aa8 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret    
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 55                	push   %r13
   140001182:	41 54                	push   %r12
   140001184:	55                   	push   %rbp
   140001185:	57                   	push   %rdi
   140001186:	56                   	push   %rsi
   140001187:	53                   	push   %rbx
   140001188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   14000118f:	b9 0d 00 00 00       	mov    $0xd,%ecx
   140001194:	31 c0                	xor    %eax,%eax
   140001196:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
   14000119b:	4c 89 c7             	mov    %r8,%rdi
   14000119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
   1400011a1:	48 8b 3d 78 32 00 00 	mov    0x3278(%rip),%rdi        # 140004420 <.refptr.__mingw_app_type>
   1400011a8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011ab:	45 85 c9             	test   %r9d,%r9d
   1400011ae:	0f 85 9c 02 00 00    	jne    140001450 <__tmainCRTStartup+0x2d0>
   1400011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011bb:	00 00 
   1400011bd:	48 8b 1d ac 32 00 00 	mov    0x32ac(%rip),%rbx        # 140004470 <.refptr.__native_startup_lock>
   1400011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011c8:	31 ed                	xor    %ebp,%ebp
   1400011ca:	4c 8b 25 1f 70 00 00 	mov    0x701f(%rip),%r12        # 1400081f0 <__imp_Sleep>
   1400011d1:	eb 16                	jmp    1400011e9 <__tmainCRTStartup+0x69>
   1400011d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400011d8:	48 39 c6             	cmp    %rax,%rsi
   1400011db:	0f 84 17 02 00 00    	je     1400013f8 <__tmainCRTStartup+0x278>
   1400011e1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011e6:	41 ff d4             	call   *%r12
   1400011e9:	48 89 e8             	mov    %rbp,%rax
   1400011ec:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011f1:	48 85 c0             	test   %rax,%rax
   1400011f4:	75 e2                	jne    1400011d8 <__tmainCRTStartup+0x58>
   1400011f6:	48 8b 35 83 32 00 00 	mov    0x3283(%rip),%rsi        # 140004480 <.refptr.__native_startup_state>
   1400011fd:	31 ed                	xor    %ebp,%ebp
   1400011ff:	8b 06                	mov    (%rsi),%eax
   140001201:	83 f8 01             	cmp    $0x1,%eax
   140001204:	0f 84 05 02 00 00    	je     14000140f <__tmainCRTStartup+0x28f>
   14000120a:	8b 06                	mov    (%rsi),%eax
   14000120c:	85 c0                	test   %eax,%eax
   14000120e:	0f 84 6c 02 00 00    	je     140001480 <__tmainCRTStartup+0x300>
   140001214:	c7 05 fe 5d 00 00 01 	movl   $0x1,0x5dfe(%rip)        # 14000701c <has_cctor>
   14000121b:	00 00 00 
   14000121e:	8b 06                	mov    (%rsi),%eax
   140001220:	83 f8 01             	cmp    $0x1,%eax
   140001223:	0f 84 fb 01 00 00    	je     140001424 <__tmainCRTStartup+0x2a4>
   140001229:	85 ed                	test   %ebp,%ebp
   14000122b:	0f 84 14 02 00 00    	je     140001445 <__tmainCRTStartup+0x2c5>
   140001231:	48 8b 05 88 31 00 00 	mov    0x3188(%rip),%rax        # 1400043c0 <.refptr.__dyn_tls_init_callback>
   140001238:	48 8b 00             	mov    (%rax),%rax
   14000123b:	48 85 c0             	test   %rax,%rax
   14000123e:	74 0c                	je     14000124c <__tmainCRTStartup+0xcc>
   140001240:	45 31 c0             	xor    %r8d,%r8d
   140001243:	ba 02 00 00 00       	mov    $0x2,%edx
   140001248:	31 c9                	xor    %ecx,%ecx
   14000124a:	ff d0                	call   *%rax
   14000124c:	e8 cf 0b 00 00       	call   140001e20 <_pei386_runtime_relocator>
   140001251:	48 8b 0d a8 32 00 00 	mov    0x32a8(%rip),%rcx        # 140004500 <.refptr._gnu_exception_handler>
   140001258:	ff 15 8a 6f 00 00    	call   *0x6f8a(%rip)        # 1400081e8 <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 fb 31 00 00 	mov    0x31fb(%rip),%rdx        # 140004460 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    -0x26c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    %rax,(%rdx)
   14000126f:	e8 fc 17 00 00       	call   140002a70 <_set_invalid_parameter_handler>
   140001274:	e8 b7 09 00 00       	call   140001c30 <_fpreset>
   140001279:	48 8b 05 50 31 00 00 	mov    0x3150(%rip),%rax        # 1400043d0 <.refptr.__image_base__>
   140001280:	48 89 05 89 5d 00 00 	mov    %rax,0x5d89(%rip)        # 140007010 <__mingw_winmain_hInstance>
   140001287:	e8 c4 17 00 00       	call   140002a50 <__p__acmdln>
   14000128c:	31 c9                	xor    %ecx,%ecx
   14000128e:	48 8b 00             	mov    (%rax),%rax
   140001291:	48 85 c0             	test   %rax,%rax
   140001294:	75 1c                	jne    1400012b2 <__tmainCRTStartup+0x132>
   140001296:	eb 58                	jmp    1400012f0 <__tmainCRTStartup+0x170>
   140001298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000129f:	00 
   1400012a0:	84 d2                	test   %dl,%dl
   1400012a2:	74 45                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012a4:	83 e1 01             	and    $0x1,%ecx
   1400012a7:	74 27                	je     1400012d0 <__tmainCRTStartup+0x150>
   1400012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012ae:	48 83 c0 01          	add    $0x1,%rax
   1400012b2:	0f b6 10             	movzbl (%rax),%edx
   1400012b5:	80 fa 20             	cmp    $0x20,%dl
   1400012b8:	7e e6                	jle    1400012a0 <__tmainCRTStartup+0x120>
   1400012ba:	41 89 c8             	mov    %ecx,%r8d
   1400012bd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012c1:	80 fa 22             	cmp    $0x22,%dl
   1400012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012c8:	eb e4                	jmp    1400012ae <__tmainCRTStartup+0x12e>
   1400012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012d0:	84 d2                	test   %dl,%dl
   1400012d2:	74 15                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012d8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012dc:	48 83 c0 01          	add    $0x1,%rax
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 05                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012e4:	80 fa 20             	cmp    $0x20,%dl
   1400012e7:	7e ef                	jle    1400012d8 <__tmainCRTStartup+0x158>
   1400012e9:	48 89 05 18 5d 00 00 	mov    %rax,0x5d18(%rip)        # 140007008 <__mingw_winmain_lpCmdLine>
   1400012f0:	44 8b 07             	mov    (%rdi),%r8d
   1400012f3:	45 85 c0             	test   %r8d,%r8d
   1400012f6:	74 16                	je     14000130e <__tmainCRTStartup+0x18e>
   1400012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
   1400012fd:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001302:	0f 85 e0 00 00 00    	jne    1400013e8 <__tmainCRTStartup+0x268>
   140001308:	89 05 f2 1c 00 00    	mov    %eax,0x1cf2(%rip)        # 140003000 <__data_start__>
   14000130e:	48 63 2d 23 5d 00 00 	movslq 0x5d23(%rip),%rbp        # 140007038 <argc>
   140001315:	44 8d 65 01          	lea    0x1(%rbp),%r12d
   140001319:	4d 63 e4             	movslq %r12d,%r12
   14000131c:	49 c1 e4 03          	shl    $0x3,%r12
   140001320:	4c 89 e1             	mov    %r12,%rcx
   140001323:	e8 f0 17 00 00       	call   140002b18 <malloc>
   140001328:	4c 8b 2d 01 5d 00 00 	mov    0x5d01(%rip),%r13        # 140007030 <argv>
   14000132f:	48 89 c7             	mov    %rax,%rdi
   140001332:	85 ed                	test   %ebp,%ebp
   140001334:	7e 42                	jle    140001378 <__tmainCRTStartup+0x1f8>
   140001336:	31 db                	xor    %ebx,%ebx
   140001338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000133f:	00 
   140001340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001345:	e8 e6 17 00 00       	call   140002b30 <strlen>
   14000134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000134e:	48 89 f1             	mov    %rsi,%rcx
   140001351:	e8 c2 17 00 00       	call   140002b18 <malloc>
   140001356:	49 89 f0             	mov    %rsi,%r8
   140001359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001362:	48 89 c1             	mov    %rax,%rcx
   140001365:	48 83 c3 01          	add    $0x1,%rbx
   140001369:	e8 b2 17 00 00       	call   140002b20 <memcpy>
   14000136e:	48 39 dd             	cmp    %rbx,%rbp
   140001371:	75 cd                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001373:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001378:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000137f:	48 89 3d aa 5c 00 00 	mov    %rdi,0x5caa(%rip)        # 140007030 <argv>
   140001386:	e8 a5 06 00 00       	call   140001a30 <__main>
   14000138b:	48 8b 05 4e 30 00 00 	mov    0x304e(%rip),%rax        # 1400043e0 <.refptr.__imp___initenv>
   140001392:	4c 8b 05 8f 5c 00 00 	mov    0x5c8f(%rip),%r8        # 140007028 <envp>
   140001399:	8b 0d 99 5c 00 00    	mov    0x5c99(%rip),%ecx        # 140007038 <argc>
   14000139f:	48 8b 00             	mov    (%rax),%rax
   1400013a2:	4c 89 00             	mov    %r8,(%rax)
   1400013a5:	48 8b 15 84 5c 00 00 	mov    0x5c84(%rip),%rdx        # 140007030 <argv>
   1400013ac:	e8 cf 01 00 00       	call   140001580 <main>
   1400013b1:	8b 0d 69 5c 00 00    	mov    0x5c69(%rip),%ecx        # 140007020 <managedapp>
   1400013b7:	89 05 67 5c 00 00    	mov    %eax,0x5c67(%rip)        # 140007024 <mainret>
   1400013bd:	85 c9                	test   %ecx,%ecx
   1400013bf:	0f 84 d9 00 00 00    	je     14000149e <__tmainCRTStartup+0x31e>
   1400013c5:	8b 15 51 5c 00 00    	mov    0x5c51(%rip),%edx        # 14000701c <has_cctor>
   1400013cb:	85 d2                	test   %edx,%edx
   1400013cd:	0f 84 8d 00 00 00    	je     140001460 <__tmainCRTStartup+0x2e0>
   1400013d3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   1400013da:	5b                   	pop    %rbx
   1400013db:	5e                   	pop    %rsi
   1400013dc:	5f                   	pop    %rdi
   1400013dd:	5d                   	pop    %rbp
   1400013de:	41 5c                	pop    %r12
   1400013e0:	41 5d                	pop    %r13
   1400013e2:	c3                   	ret    
   1400013e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400013e8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
   1400013ed:	e9 16 ff ff ff       	jmp    140001308 <__tmainCRTStartup+0x188>
   1400013f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400013f8:	48 8b 35 81 30 00 00 	mov    0x3081(%rip),%rsi        # 140004480 <.refptr.__native_startup_state>
   1400013ff:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001404:	8b 06                	mov    (%rsi),%eax
   140001406:	83 f8 01             	cmp    $0x1,%eax
   140001409:	0f 85 fb fd ff ff    	jne    14000120a <__tmainCRTStartup+0x8a>
   14000140f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001414:	e8 af 16 00 00       	call   140002ac8 <_amsg_exit>
   140001419:	8b 06                	mov    (%rsi),%eax
   14000141b:	83 f8 01             	cmp    $0x1,%eax
   14000141e:	0f 85 05 fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   140001424:	48 8b 15 75 30 00 00 	mov    0x3075(%rip),%rdx        # 1400044a0 <.refptr.__xc_z>
   14000142b:	48 8b 0d 5e 30 00 00 	mov    0x305e(%rip),%rcx        # 140004490 <.refptr.__xc_a>
   140001432:	e8 a1 16 00 00       	call   140002ad8 <_initterm>
   140001437:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000143d:	85 ed                	test   %ebp,%ebp
   14000143f:	0f 85 ec fd ff ff    	jne    140001231 <__tmainCRTStartup+0xb1>
   140001445:	31 c0                	xor    %eax,%eax
   140001447:	48 87 03             	xchg   %rax,(%rbx)
   14000144a:	e9 e2 fd ff ff       	jmp    140001231 <__tmainCRTStartup+0xb1>
   14000144f:	90                   	nop
   140001450:	4c 89 c1             	mov    %r8,%rcx
   140001453:	ff 15 77 6d 00 00    	call   *0x6d77(%rip)        # 1400081d0 <__imp_GetStartupInfoA>
   140001459:	e9 56 fd ff ff       	jmp    1400011b4 <__tmainCRTStartup+0x34>
   14000145e:	66 90                	xchg   %ax,%ax
   140001460:	e8 6b 16 00 00       	call   140002ad0 <_cexit>
   140001465:	8b 05 b9 5b 00 00    	mov    0x5bb9(%rip),%eax        # 140007024 <mainret>
   14000146b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001472:	5b                   	pop    %rbx
   140001473:	5e                   	pop    %rsi
   140001474:	5f                   	pop    %rdi
   140001475:	5d                   	pop    %rbp
   140001476:	41 5c                	pop    %r12
   140001478:	41 5d                	pop    %r13
   14000147a:	c3                   	ret    
   14000147b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001480:	48 8b 15 39 30 00 00 	mov    0x3039(%rip),%rdx        # 1400044c0 <.refptr.__xi_z>
   140001487:	48 8b 0d 22 30 00 00 	mov    0x3022(%rip),%rcx        # 1400044b0 <.refptr.__xi_a>
   14000148e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   140001494:	e8 3f 16 00 00       	call   140002ad8 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	89 c1                	mov    %eax,%ecx
   1400014a0:	e8 53 16 00 00       	call   140002af8 <exit>
   1400014a5:	90                   	nop
   1400014a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014ad:	00 00 00 

00000001400014b0 <WinMainCRTStartup>:
   1400014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014b4 <.l_startw>:
   1400014b4:	48 8b 05 65 2f 00 00 	mov    0x2f65(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   1400014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014c1:	e8 ba fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014c6:	90                   	nop

00000001400014c7 <.l_endw>:
   1400014c7:	90                   	nop
   1400014c8:	48 83 c4 28          	add    $0x28,%rsp
   1400014cc:	c3                   	ret    
   1400014cd:	0f 1f 00             	nopl   (%rax)

00000001400014d0 <mainCRTStartup>:
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014d4 <.l_start>:
   1400014d4:	48 8b 05 45 2f 00 00 	mov    0x2f45(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   1400014db:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400014e1:	e8 9a fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014e6:	90                   	nop

00000001400014e7 <.l_end>:
   1400014e7:	90                   	nop
   1400014e8:	48 83 c4 28          	add    $0x28,%rsp
   1400014ec:	c3                   	ret    
   1400014ed:	0f 1f 00             	nopl   (%rax)

00000001400014f0 <atexit>:
   1400014f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014f4:	e8 e7 15 00 00       	call   140002ae0 <_onexit>
   1400014f9:	48 83 f8 01          	cmp    $0x1,%rax
   1400014fd:	19 c0                	sbb    %eax,%eax
   1400014ff:	48 83 c4 28          	add    $0x28,%rsp
   140001503:	c3                   	ret    
   140001504:	90                   	nop
   140001505:	90                   	nop
   140001506:	90                   	nop
   140001507:	90                   	nop
   140001508:	90                   	nop
   140001509:	90                   	nop
   14000150a:	90                   	nop
   14000150b:	90                   	nop
   14000150c:	90                   	nop
   14000150d:	90                   	nop
   14000150e:	90                   	nop
   14000150f:	90                   	nop

0000000140001510 <__gcc_register_frame>:
   140001510:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001520 <__gcc_deregister_frame>
   140001517:	e9 d4 ff ff ff       	jmp    1400014f0 <atexit>
   14000151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001520 <__gcc_deregister_frame>:
   140001520:	c3                   	ret    
   140001521:	90                   	nop
   140001522:	90                   	nop
   140001523:	90                   	nop
   140001524:	90                   	nop
   140001525:	90                   	nop
   140001526:	90                   	nop
   140001527:	90                   	nop
   140001528:	90                   	nop
   140001529:	90                   	nop
   14000152a:	90                   	nop
   14000152b:	90                   	nop
   14000152c:	90                   	nop
   14000152d:	90                   	nop
   14000152e:	90                   	nop
   14000152f:	90                   	nop

0000000140001530 <__cxx_global_var_init>:
   140001530:	48 83 ec 28          	sub    $0x28,%rsp
   140001534:	48 8d 0d 05 5b 00 00 	lea    0x5b05(%rip),%rcx        # 140007040 <_ZStL8__ioinit>
   14000153b:	e8 28 04 00 00       	call   140001968 <_ZNSt8ios_base4InitC1Ev>
   140001540:	48 8d 0d 19 00 00 00 	lea    0x19(%rip),%rcx        # 140001560 <__dtor__ZStL8__ioinit>
   140001547:	e8 a4 ff ff ff       	call   1400014f0 <atexit>
   14000154c:	90                   	nop
   14000154d:	48 83 c4 28          	add    $0x28,%rsp
   140001551:	c3                   	ret    
   140001552:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001559:	00 00 00 
   14000155c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001560 <__dtor__ZStL8__ioinit>:
   140001560:	48 83 ec 28          	sub    $0x28,%rsp
   140001564:	48 8d 0d d5 5a 00 00 	lea    0x5ad5(%rip),%rcx        # 140007040 <_ZStL8__ioinit>
   14000156b:	e8 f0 03 00 00       	call   140001960 <_ZNSt8ios_base4InitD1Ev>
   140001570:	90                   	nop
   140001571:	48 83 c4 28          	add    $0x28,%rsp
   140001575:	c3                   	ret    
   140001576:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000157d:	00 00 00 

0000000140001580 <main>:
   140001580:	55                   	push   %rbp
   140001581:	48 81 ec b0 04 00 00 	sub    $0x4b0,%rsp
   140001588:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   14000158f:	00 
   140001590:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
   140001594:	e8 97 04 00 00       	call   140001a30 <__main>
   140001599:	c7 84 24 ec 01 00 00 	movl   $0x0,0x1ec(%rsp)
   1400015a0:	00 00 00 00 
   1400015a4:	c7 44 24 3c 05 00 00 	movl   $0x5,0x3c(%rsp)
   1400015ab:	00 
   1400015ac:	48 63 44 24 3c       	movslq 0x3c(%rsp),%rax
   1400015b1:	48 89 84 24 f8 01 00 	mov    %rax,0x1f8(%rsp)
   1400015b8:	00 
   1400015b9:	48 8b 84 24 f8 01 00 	mov    0x1f8(%rsp),%rax
   1400015c0:	00 
   1400015c1:	48 89 84 24 18 04 00 	mov    %rax,0x418(%rsp)
   1400015c8:	00 
   1400015c9:	48 89 84 24 10 04 00 	mov    %rax,0x410(%rsp)
   1400015d0:	00 
   1400015d1:	48 89 84 24 08 04 00 	mov    %rax,0x408(%rsp)
   1400015d8:	00 
   1400015d9:	48 89 84 24 00 04 00 	mov    %rax,0x400(%rsp)
   1400015e0:	00 
   1400015e1:	c5 fa 7e 8c 24 08 04 	vmovq  0x408(%rsp),%xmm1
   1400015e8:	00 00 
   1400015ea:	c5 fa 7e 84 24 00 04 	vmovq  0x400(%rsp),%xmm0
   1400015f1:	00 00 
   1400015f3:	c5 f9 6c c1          	vpunpcklqdq %xmm1,%xmm0,%xmm0
   1400015f7:	c5 fa 7e 94 24 18 04 	vmovq  0x418(%rsp),%xmm2
   1400015fe:	00 00 
   140001600:	c5 fa 7e 8c 24 10 04 	vmovq  0x410(%rsp),%xmm1
   140001607:	00 00 
   140001609:	c5 f1 6c ca          	vpunpcklqdq %xmm2,%xmm1,%xmm1
   14000160d:	c5 f9 7f 8c 24 f0 03 	vmovdqa %xmm1,0x3f0(%rsp)
   140001614:	00 00 
   140001616:	c5 f9 7f 84 24 e0 03 	vmovdqa %xmm0,0x3e0(%rsp)
   14000161d:	00 00 
   14000161f:	c5 fc 28 84 24 e0 03 	vmovaps 0x3e0(%rsp),%ymm0
   140001626:	00 00 
   140001628:	c5 fc 29 44 24 60    	vmovaps %ymm0,0x60(%rsp)
   14000162e:	48 c7 84 24 f0 01 00 	movq   $0x1,0x1f0(%rsp)
   140001635:	00 01 00 00 00 
   14000163a:	48 8b 84 24 f0 01 00 	mov    0x1f0(%rsp),%rax
   140001641:	00 
   140001642:	48 89 84 24 58 04 00 	mov    %rax,0x458(%rsp)
   140001649:	00 
   14000164a:	48 89 84 24 50 04 00 	mov    %rax,0x450(%rsp)
   140001651:	00 
   140001652:	48 89 84 24 48 04 00 	mov    %rax,0x448(%rsp)
   140001659:	00 
   14000165a:	48 89 84 24 40 04 00 	mov    %rax,0x440(%rsp)
   140001661:	00 
   140001662:	c5 fa 7e 8c 24 48 04 	vmovq  0x448(%rsp),%xmm1
   140001669:	00 00 
   14000166b:	c5 fa 7e 84 24 40 04 	vmovq  0x440(%rsp),%xmm0
   140001672:	00 00 
   140001674:	c5 f9 6c c1          	vpunpcklqdq %xmm1,%xmm0,%xmm0
   140001678:	c5 fa 7e 94 24 58 04 	vmovq  0x458(%rsp),%xmm2
   14000167f:	00 00 
   140001681:	c5 fa 7e 8c 24 50 04 	vmovq  0x450(%rsp),%xmm1
   140001688:	00 00 
   14000168a:	c5 f1 6c ca          	vpunpcklqdq %xmm2,%xmm1,%xmm1
   14000168e:	c5 f9 7f 8c 24 30 04 	vmovdqa %xmm1,0x430(%rsp)
   140001695:	00 00 
   140001697:	c5 f9 7f 84 24 20 04 	vmovdqa %xmm0,0x420(%rsp)
   14000169e:	00 00 
   1400016a0:	c5 fc 28 84 24 20 04 	vmovaps 0x420(%rsp),%ymm0
   1400016a7:	00 00 
   1400016a9:	c5 fc 29 84 24 80 00 	vmovaps %ymm0,0x80(%rsp)
   1400016b0:	00 00 
   1400016b2:	c5 fd 28 8c 24 c0 01 	vmovapd 0x1c0(%rsp),%ymm1
   1400016b9:	00 00 
   1400016bb:	c5 fd 28 84 24 a0 01 	vmovapd 0x1a0(%rsp),%ymm0
   1400016c2:	00 00 
   1400016c4:	c5 fd 29 8c 24 20 02 	vmovapd %ymm1,0x220(%rsp)
   1400016cb:	00 00 
   1400016cd:	c5 fd 29 84 24 00 02 	vmovapd %ymm0,0x200(%rsp)
   1400016d4:	00 00 
   1400016d6:	c5 fd 28 84 24 20 02 	vmovapd 0x220(%rsp),%ymm0
   1400016dd:	00 00 
   1400016df:	c5 fd 28 8c 24 00 02 	vmovapd 0x200(%rsp),%ymm1
   1400016e6:	00 00 
   1400016e8:	c5 fd 59 c1          	vmulpd %ymm1,%ymm0,%ymm0
   1400016ec:	c5 fd 29 84 24 40 01 	vmovapd %ymm0,0x140(%rsp)
   1400016f3:	00 00 
   1400016f5:	48 b8 00 00 00 00 00 	movabs $0x4000000000000000,%rax
   1400016fc:	00 00 40 
   1400016ff:	48 89 84 24 58 02 00 	mov    %rax,0x258(%rsp)
   140001706:	00 
   140001707:	c5 fb 10 84 24 58 02 	vmovsd 0x258(%rsp),%xmm0
   14000170e:	00 00 
   140001710:	c5 fb 11 84 24 a8 04 	vmovsd %xmm0,0x4a8(%rsp)
   140001717:	00 00 
   140001719:	c5 fb 11 84 24 a0 04 	vmovsd %xmm0,0x4a0(%rsp)
   140001720:	00 00 
   140001722:	c5 fb 11 84 24 98 04 	vmovsd %xmm0,0x498(%rsp)
   140001729:	00 00 
   14000172b:	c5 fb 11 84 24 90 04 	vmovsd %xmm0,0x490(%rsp)
   140001732:	00 00 
   140001734:	c5 fb 10 8c 24 98 04 	vmovsd 0x498(%rsp),%xmm1
   14000173b:	00 00 
   14000173d:	c5 fb 10 84 24 90 04 	vmovsd 0x490(%rsp),%xmm0
   140001744:	00 00 
   140001746:	c5 f9 14 c1          	vunpcklpd %xmm1,%xmm0,%xmm0
   14000174a:	c5 fb 10 94 24 a8 04 	vmovsd 0x4a8(%rsp),%xmm2
   140001751:	00 00 
   140001753:	c5 fb 10 8c 24 a0 04 	vmovsd 0x4a0(%rsp),%xmm1
   14000175a:	00 00 
   14000175c:	c5 f1 14 ca          	vunpcklpd %xmm2,%xmm1,%xmm1
   140001760:	c5 f9 29 8c 24 70 04 	vmovapd %xmm1,0x470(%rsp)
   140001767:	00 00 
   140001769:	c5 f9 29 84 24 60 04 	vmovapd %xmm0,0x460(%rsp)
   140001770:	00 00 
   140001772:	c5 fd 28 84 24 60 04 	vmovapd 0x460(%rsp),%ymm0
   140001779:	00 00 
   14000177b:	c5 fd 29 84 24 e0 00 	vmovapd %ymm0,0xe0(%rsp)
   140001782:	00 00 
   140001784:	c5 fd 28 94 24 40 01 	vmovapd 0x140(%rsp),%ymm2
   14000178b:	00 00 
   14000178d:	c5 fd 28 8c 24 e0 00 	vmovapd 0xe0(%rsp),%ymm1
   140001794:	00 00 
   140001796:	c5 fd 28 84 24 60 01 	vmovapd 0x160(%rsp),%ymm0
   14000179d:	00 00 
   14000179f:	c5 fd 29 94 24 a0 02 	vmovapd %ymm2,0x2a0(%rsp)
   1400017a6:	00 00 
   1400017a8:	c5 fd 29 8c 24 80 02 	vmovapd %ymm1,0x280(%rsp)
   1400017af:	00 00 
   1400017b1:	c5 fd 29 84 24 60 02 	vmovapd %ymm0,0x260(%rsp)
   1400017b8:	00 00 
   1400017ba:	c5 fd 28 8c 24 a0 02 	vmovapd 0x2a0(%rsp),%ymm1
   1400017c1:	00 00 
   1400017c3:	c5 fd 28 84 24 80 02 	vmovapd 0x280(%rsp),%ymm0
   1400017ca:	00 00 
   1400017cc:	c5 fd 28 94 24 60 02 	vmovapd 0x260(%rsp),%ymm2
   1400017d3:	00 00 
   1400017d5:	c4 e2 f5 a8 c2       	vfmadd213pd %ymm2,%ymm1,%ymm0
   1400017da:	c5 fd 29 84 24 20 01 	vmovapd %ymm0,0x120(%rsp)
   1400017e1:	00 00 
   1400017e3:	c5 fd 28 84 24 40 01 	vmovapd 0x140(%rsp),%ymm0
   1400017ea:	00 00 
   1400017ec:	c5 fd 28 8c 24 e0 00 	vmovapd 0xe0(%rsp),%ymm1
   1400017f3:	00 00 
   1400017f5:	c5 fd c2 c1 01       	vcmpltpd %ymm1,%ymm0,%ymm0
   1400017fa:	c5 fc 29 84 24 c0 00 	vmovaps %ymm0,0xc0(%rsp)
   140001801:	00 00 
   140001803:	c5 fc 28 4c 24 60    	vmovaps 0x60(%rsp),%ymm1
   140001809:	c5 fc 28 84 24 a0 00 	vmovaps 0xa0(%rsp),%ymm0
   140001810:	00 00 
   140001812:	c5 fc 29 8c 24 e0 02 	vmovaps %ymm1,0x2e0(%rsp)
   140001819:	00 00 
   14000181b:	c5 fc 29 84 24 c0 02 	vmovaps %ymm0,0x2c0(%rsp)
   140001822:	00 00 
   140001824:	c5 fc 28 84 24 e0 02 	vmovaps 0x2e0(%rsp),%ymm0
   14000182b:	00 00 
   14000182d:	c5 fc 28 8c 24 c0 02 	vmovaps 0x2c0(%rsp),%ymm1
   140001834:	00 00 
   140001836:	c4 e2 7d 37 c1       	vpcmpgtq %ymm1,%ymm0,%ymm0
   14000183b:	c5 fd 7f 44 24 40    	vmovdqa %ymm0,0x40(%rsp)
   140001841:	c5 fd 6f 4c 24 40    	vmovdqa 0x40(%rsp),%ymm1
   140001847:	c5 fd 28 84 24 c0 00 	vmovapd 0xc0(%rsp),%ymm0
   14000184e:	00 00 
   140001850:	c5 fd 29 84 24 40 03 	vmovapd %ymm0,0x340(%rsp)
   140001857:	00 00 
   140001859:	c5 fd 28 84 24 40 03 	vmovapd 0x340(%rsp),%ymm0
   140001860:	00 00 
   140001862:	c5 fd 7f 8c 24 20 03 	vmovdqa %ymm1,0x320(%rsp)
   140001869:	00 00 
   14000186b:	c5 fd 7f 84 24 00 03 	vmovdqa %ymm0,0x300(%rsp)
   140001872:	00 00 
   140001874:	c5 fd 6f 84 24 20 03 	vmovdqa 0x320(%rsp),%ymm0
   14000187b:	00 00 
   14000187d:	c5 fd db 84 24 00 03 	vpand  0x300(%rsp),%ymm0,%ymm0
   140001884:	00 00 
   140001886:	c5 fd 7f 44 24 40    	vmovdqa %ymm0,0x40(%rsp)
   14000188c:	c5 fd 6f 8c 24 a0 00 	vmovdqa 0xa0(%rsp),%ymm1
   140001893:	00 00 
   140001895:	c5 fd 6f 84 24 80 00 	vmovdqa 0x80(%rsp),%ymm0
   14000189c:	00 00 
   14000189e:	c5 fd 7f 8c 24 80 03 	vmovdqa %ymm1,0x380(%rsp)
   1400018a5:	00 00 
   1400018a7:	c5 fd 7f 84 24 60 03 	vmovdqa %ymm0,0x360(%rsp)
   1400018ae:	00 00 
   1400018b0:	c5 fd 6f 84 24 80 03 	vmovdqa 0x380(%rsp),%ymm0
   1400018b7:	00 00 
   1400018b9:	c5 fd d4 84 24 60 03 	vpaddq 0x360(%rsp),%ymm0,%ymm0
   1400018c0:	00 00 
   1400018c2:	c5 fd 7f 84 24 a0 00 	vmovdqa %ymm0,0xa0(%rsp)
   1400018c9:	00 00 
   1400018cb:	c5 fd 6f 44 24 40    	vmovdqa 0x40(%rsp),%ymm0
   1400018d1:	c5 fd 7f 84 24 c0 03 	vmovdqa %ymm0,0x3c0(%rsp)
   1400018d8:	00 00 
   1400018da:	c5 fd 6f 84 24 c0 03 	vmovdqa 0x3c0(%rsp),%ymm0
   1400018e1:	00 00 
   1400018e3:	c5 fd 29 84 24 a0 03 	vmovapd %ymm0,0x3a0(%rsp)
   1400018ea:	00 00 
   1400018ec:	c5 fd 28 84 24 a0 03 	vmovapd 0x3a0(%rsp),%ymm0
   1400018f3:	00 00 
   1400018f5:	c5 fd 50 c0          	vmovmskpd %ymm0,%eax
   1400018f9:	83 f8 00             	cmp    $0x0,%eax
   1400018fc:	0f 8e 05 00 00 00    	jle    140001907 <main+0x387>
   140001902:	e9 9d fc ff ff       	jmp    1400015a4 <main+0x24>
   140001907:	48 8b 0d 72 2a 00 00 	mov    0x2a72(%rip),%rcx        # 140004380 <__fu0__ZSt4cout>
   14000190e:	48 8d 15 eb 26 00 00 	lea    0x26eb(%rip),%rdx        # 140004000 <.rdata>
   140001915:	c5 f8 77             	vzeroupper 
   140001918:	e8 33 00 00 00       	call   140001950 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000191d:	48 89 c1             	mov    %rax,%rcx
   140001920:	48 8d 15 31 00 00 00 	lea    0x31(%rip),%rdx        # 140001958 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001927:	e8 44 00 00 00       	call   140001970 <_ZNSolsEPFRSoS_E>
   14000192c:	8b 84 24 ec 01 00 00 	mov    0x1ec(%rsp),%eax
   140001933:	48 8d a5 30 04 00 00 	lea    0x430(%rbp),%rsp
   14000193a:	5d                   	pop    %rbp
   14000193b:	c3                   	ret    
   14000193c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001940 <_GLOBAL__sub_I_Simd.cpp>:
   140001940:	48 83 ec 28          	sub    $0x28,%rsp
   140001944:	e8 e7 fb ff ff       	call   140001530 <__cxx_global_var_init>
   140001949:	90                   	nop
   14000194a:	48 83 c4 28          	add    $0x28,%rsp
   14000194e:	c3                   	ret    
   14000194f:	90                   	nop

0000000140001950 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   140001950:	ff 25 ba 69 00 00    	jmp    *0x69ba(%rip)        # 140008310 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001956:	90                   	nop
   140001957:	90                   	nop

0000000140001958 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
   140001958:	ff 25 aa 69 00 00    	jmp    *0x69aa(%rip)        # 140008308 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000195e:	90                   	nop
   14000195f:	90                   	nop

0000000140001960 <_ZNSt8ios_base4InitD1Ev>:
   140001960:	ff 25 92 69 00 00    	jmp    *0x6992(%rip)        # 1400082f8 <__imp__ZNSt8ios_base4InitD1Ev>
   140001966:	90                   	nop
   140001967:	90                   	nop

0000000140001968 <_ZNSt8ios_base4InitC1Ev>:
   140001968:	ff 25 82 69 00 00    	jmp    *0x6982(%rip)        # 1400082f0 <__imp__ZNSt8ios_base4InitC1Ev>
   14000196e:	90                   	nop
   14000196f:	90                   	nop

0000000140001970 <_ZNSolsEPFRSoS_E>:
   140001970:	ff 25 72 69 00 00    	jmp    *0x6972(%rip)        # 1400082e8 <__imp__ZNSolsEPFRSoS_E>
   140001976:	90                   	nop
   140001977:	90                   	nop
   140001978:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000197f:	00 

0000000140001980 <__do_global_dtors>:
   140001980:	48 83 ec 28          	sub    $0x28,%rsp
   140001984:	48 8b 05 85 16 00 00 	mov    0x1685(%rip),%rax        # 140003010 <p.0>
   14000198b:	48 8b 00             	mov    (%rax),%rax
   14000198e:	48 85 c0             	test   %rax,%rax
   140001991:	74 22                	je     1400019b5 <__do_global_dtors+0x35>
   140001993:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001998:	ff d0                	call   *%rax
   14000199a:	48 8b 05 6f 16 00 00 	mov    0x166f(%rip),%rax        # 140003010 <p.0>
   1400019a1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400019a5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400019a9:	48 89 15 60 16 00 00 	mov    %rdx,0x1660(%rip)        # 140003010 <p.0>
   1400019b0:	48 85 c0             	test   %rax,%rax
   1400019b3:	75 e3                	jne    140001998 <__do_global_dtors+0x18>
   1400019b5:	48 83 c4 28          	add    $0x28,%rsp
   1400019b9:	c3                   	ret    
   1400019ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400019c0 <__do_global_ctors>:
   1400019c0:	56                   	push   %rsi
   1400019c1:	53                   	push   %rbx
   1400019c2:	48 83 ec 28          	sub    $0x28,%rsp
   1400019c6:	48 8b 15 c3 29 00 00 	mov    0x29c3(%rip),%rdx        # 140004390 <.refptr.__CTOR_LIST__>
   1400019cd:	48 8b 02             	mov    (%rdx),%rax
   1400019d0:	89 c1                	mov    %eax,%ecx
   1400019d2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400019d5:	74 39                	je     140001a10 <__do_global_ctors+0x50>
   1400019d7:	85 c9                	test   %ecx,%ecx
   1400019d9:	74 20                	je     1400019fb <__do_global_ctors+0x3b>
   1400019db:	89 c8                	mov    %ecx,%eax
   1400019dd:	83 e9 01             	sub    $0x1,%ecx
   1400019e0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   1400019e4:	48 29 c8             	sub    %rcx,%rax
   1400019e7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   1400019ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400019f0:	ff 13                	call   *(%rbx)
   1400019f2:	48 83 eb 08          	sub    $0x8,%rbx
   1400019f6:	48 39 f3             	cmp    %rsi,%rbx
   1400019f9:	75 f5                	jne    1400019f0 <__do_global_ctors+0x30>
   1400019fb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001980 <__do_global_dtors>
   140001a02:	48 83 c4 28          	add    $0x28,%rsp
   140001a06:	5b                   	pop    %rbx
   140001a07:	5e                   	pop    %rsi
   140001a08:	e9 e3 fa ff ff       	jmp    1400014f0 <atexit>
   140001a0d:	0f 1f 00             	nopl   (%rax)
   140001a10:	31 c0                	xor    %eax,%eax
   140001a12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001a18:	44 8d 40 01          	lea    0x1(%rax),%r8d
   140001a1c:	89 c1                	mov    %eax,%ecx
   140001a1e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001a23:	4c 89 c0             	mov    %r8,%rax
   140001a26:	75 f0                	jne    140001a18 <__do_global_ctors+0x58>
   140001a28:	eb ad                	jmp    1400019d7 <__do_global_ctors+0x17>
   140001a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001a30 <__main>:
   140001a30:	8b 05 1a 56 00 00    	mov    0x561a(%rip),%eax        # 140007050 <initialized>
   140001a36:	85 c0                	test   %eax,%eax
   140001a38:	74 06                	je     140001a40 <__main+0x10>
   140001a3a:	c3                   	ret    
   140001a3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001a40:	c7 05 06 56 00 00 01 	movl   $0x1,0x5606(%rip)        # 140007050 <initialized>
   140001a47:	00 00 00 
   140001a4a:	e9 71 ff ff ff       	jmp    1400019c0 <__do_global_ctors>
   140001a4f:	90                   	nop

0000000140001a50 <_setargv>:
   140001a50:	31 c0                	xor    %eax,%eax
   140001a52:	c3                   	ret    
   140001a53:	90                   	nop
   140001a54:	90                   	nop
   140001a55:	90                   	nop
   140001a56:	90                   	nop
   140001a57:	90                   	nop
   140001a58:	90                   	nop
   140001a59:	90                   	nop
   140001a5a:	90                   	nop
   140001a5b:	90                   	nop
   140001a5c:	90                   	nop
   140001a5d:	90                   	nop
   140001a5e:	90                   	nop
   140001a5f:	90                   	nop

0000000140001a60 <__dyn_tls_dtor>:
   140001a60:	48 83 ec 28          	sub    $0x28,%rsp
   140001a64:	83 fa 03             	cmp    $0x3,%edx
   140001a67:	74 17                	je     140001a80 <__dyn_tls_dtor+0x20>
   140001a69:	85 d2                	test   %edx,%edx
   140001a6b:	74 13                	je     140001a80 <__dyn_tls_dtor+0x20>
   140001a6d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001a72:	48 83 c4 28          	add    $0x28,%rsp
   140001a76:	c3                   	ret    
   140001a77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001a7e:	00 00 
   140001a80:	e8 9b 0a 00 00       	call   140002520 <__mingw_TLScallback>
   140001a85:	b8 01 00 00 00       	mov    $0x1,%eax
   140001a8a:	48 83 c4 28          	add    $0x28,%rsp
   140001a8e:	c3                   	ret    
   140001a8f:	90                   	nop

0000000140001a90 <__dyn_tls_init>:
   140001a90:	56                   	push   %rsi
   140001a91:	53                   	push   %rbx
   140001a92:	48 83 ec 28          	sub    $0x28,%rsp
   140001a96:	48 8b 05 c3 28 00 00 	mov    0x28c3(%rip),%rax        # 140004360 <.refptr._CRT_MT>
   140001a9d:	83 38 02             	cmpl   $0x2,(%rax)
   140001aa0:	74 06                	je     140001aa8 <__dyn_tls_init+0x18>
   140001aa2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001aa8:	83 fa 02             	cmp    $0x2,%edx
   140001aab:	74 13                	je     140001ac0 <__dyn_tls_init+0x30>
   140001aad:	83 fa 01             	cmp    $0x1,%edx
   140001ab0:	74 4e                	je     140001b00 <__dyn_tls_init+0x70>
   140001ab2:	b8 01 00 00 00       	mov    $0x1,%eax
   140001ab7:	48 83 c4 28          	add    $0x28,%rsp
   140001abb:	5b                   	pop    %rbx
   140001abc:	5e                   	pop    %rsi
   140001abd:	c3                   	ret    
   140001abe:	66 90                	xchg   %ax,%ax
   140001ac0:	48 8d 1d 91 75 00 00 	lea    0x7591(%rip),%rbx        # 140009058 <__xd_z>
   140001ac7:	48 8d 35 8a 75 00 00 	lea    0x758a(%rip),%rsi        # 140009058 <__xd_z>
   140001ace:	48 39 de             	cmp    %rbx,%rsi
   140001ad1:	74 df                	je     140001ab2 <__dyn_tls_init+0x22>
   140001ad3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001ad8:	48 8b 03             	mov    (%rbx),%rax
   140001adb:	48 85 c0             	test   %rax,%rax
   140001ade:	74 02                	je     140001ae2 <__dyn_tls_init+0x52>
   140001ae0:	ff d0                	call   *%rax
   140001ae2:	48 83 c3 08          	add    $0x8,%rbx
   140001ae6:	48 39 de             	cmp    %rbx,%rsi
   140001ae9:	75 ed                	jne    140001ad8 <__dyn_tls_init+0x48>
   140001aeb:	b8 01 00 00 00       	mov    $0x1,%eax
   140001af0:	48 83 c4 28          	add    $0x28,%rsp
   140001af4:	5b                   	pop    %rbx
   140001af5:	5e                   	pop    %rsi
   140001af6:	c3                   	ret    
   140001af7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001afe:	00 00 
   140001b00:	e8 1b 0a 00 00       	call   140002520 <__mingw_TLScallback>
   140001b05:	b8 01 00 00 00       	mov    $0x1,%eax
   140001b0a:	48 83 c4 28          	add    $0x28,%rsp
   140001b0e:	5b                   	pop    %rbx
   140001b0f:	5e                   	pop    %rsi
   140001b10:	c3                   	ret    
   140001b11:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001b18:	00 00 00 00 
   140001b1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001b20 <__tlregdtor>:
   140001b20:	31 c0                	xor    %eax,%eax
   140001b22:	c3                   	ret    
   140001b23:	90                   	nop
   140001b24:	90                   	nop
   140001b25:	90                   	nop
   140001b26:	90                   	nop
   140001b27:	90                   	nop
   140001b28:	90                   	nop
   140001b29:	90                   	nop
   140001b2a:	90                   	nop
   140001b2b:	90                   	nop
   140001b2c:	90                   	nop
   140001b2d:	90                   	nop
   140001b2e:	90                   	nop
   140001b2f:	90                   	nop

0000000140001b30 <_matherr>:
   140001b30:	56                   	push   %rsi
   140001b31:	53                   	push   %rbx
   140001b32:	48 83 ec 78          	sub    $0x78,%rsp
   140001b36:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   140001b3b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140001b40:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140001b46:	83 39 06             	cmpl   $0x6,(%rcx)
   140001b49:	0f 87 cd 00 00 00    	ja     140001c1c <_matherr+0xec>
   140001b4f:	8b 01                	mov    (%rcx),%eax
   140001b51:	48 8d 15 4c 26 00 00 	lea    0x264c(%rip),%rdx        # 1400041a4 <.rdata+0x124>
   140001b58:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001b5c:	48 01 d0             	add    %rdx,%rax
   140001b5f:	ff e0                	jmp    *%rax
   140001b61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001b68:	48 8d 1d 30 25 00 00 	lea    0x2530(%rip),%rbx        # 14000409f <.rdata+0x1f>
   140001b6f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001b75:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   140001b7a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   140001b7f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001b83:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001b88:	e8 f3 0e 00 00       	call   140002a80 <__acrt_iob_func>
   140001b8d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140001b94:	49 89 d8             	mov    %rbx,%r8
   140001b97:	48 8d 15 da 25 00 00 	lea    0x25da(%rip),%rdx        # 140004178 <.rdata+0xf8>
   140001b9e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140001ba4:	48 89 c1             	mov    %rax,%rcx
   140001ba7:	49 89 f1             	mov    %rsi,%r9
   140001baa:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140001bb0:	e8 4b 0f 00 00       	call   140002b00 <fprintf>
   140001bb5:	90                   	nop
   140001bb6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   140001bbb:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   140001bc0:	31 c0                	xor    %eax,%eax
   140001bc2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   140001bc8:	48 83 c4 78          	add    $0x78,%rsp
   140001bcc:	5b                   	pop    %rbx
   140001bcd:	5e                   	pop    %rsi
   140001bce:	c3                   	ret    
   140001bcf:	90                   	nop
   140001bd0:	48 8d 1d a9 24 00 00 	lea    0x24a9(%rip),%rbx        # 140004080 <.rdata>
   140001bd7:	eb 96                	jmp    140001b6f <_matherr+0x3f>
   140001bd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001be0:	48 8d 1d f9 24 00 00 	lea    0x24f9(%rip),%rbx        # 1400040e0 <.rdata+0x60>
   140001be7:	eb 86                	jmp    140001b6f <_matherr+0x3f>
   140001be9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001bf0:	48 8d 1d c9 24 00 00 	lea    0x24c9(%rip),%rbx        # 1400040c0 <.rdata+0x40>
   140001bf7:	e9 73 ff ff ff       	jmp    140001b6f <_matherr+0x3f>
   140001bfc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001c00:	48 8d 1d 29 25 00 00 	lea    0x2529(%rip),%rbx        # 140004130 <.rdata+0xb0>
   140001c07:	e9 63 ff ff ff       	jmp    140001b6f <_matherr+0x3f>
   140001c0c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001c10:	48 8d 1d f1 24 00 00 	lea    0x24f1(%rip),%rbx        # 140004108 <.rdata+0x88>
   140001c17:	e9 53 ff ff ff       	jmp    140001b6f <_matherr+0x3f>
   140001c1c:	48 8d 1d 43 25 00 00 	lea    0x2543(%rip),%rbx        # 140004166 <.rdata+0xe6>
   140001c23:	e9 47 ff ff ff       	jmp    140001b6f <_matherr+0x3f>
   140001c28:	90                   	nop
   140001c29:	90                   	nop
   140001c2a:	90                   	nop
   140001c2b:	90                   	nop
   140001c2c:	90                   	nop
   140001c2d:	90                   	nop
   140001c2e:	90                   	nop
   140001c2f:	90                   	nop

0000000140001c30 <_fpreset>:
   140001c30:	db e3                	fninit 
   140001c32:	c3                   	ret    
   140001c33:	90                   	nop
   140001c34:	90                   	nop
   140001c35:	90                   	nop
   140001c36:	90                   	nop
   140001c37:	90                   	nop
   140001c38:	90                   	nop
   140001c39:	90                   	nop
   140001c3a:	90                   	nop
   140001c3b:	90                   	nop
   140001c3c:	90                   	nop
   140001c3d:	90                   	nop
   140001c3e:	90                   	nop
   140001c3f:	90                   	nop

0000000140001c40 <__report_error>:
   140001c40:	41 54                	push   %r12
   140001c42:	53                   	push   %rbx
   140001c43:	48 83 ec 38          	sub    $0x38,%rsp
   140001c47:	49 89 cc             	mov    %rcx,%r12
   140001c4a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   140001c4f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001c54:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001c59:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   140001c5e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001c63:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001c68:	e8 13 0e 00 00       	call   140002a80 <__acrt_iob_func>
   140001c6d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001c73:	ba 01 00 00 00       	mov    $0x1,%edx
   140001c78:	48 8d 0d 41 25 00 00 	lea    0x2541(%rip),%rcx        # 1400041c0 <.rdata>
   140001c7f:	49 89 c1             	mov    %rax,%r9
   140001c82:	e8 89 0e 00 00       	call   140002b10 <fwrite>
   140001c87:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   140001c8c:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001c91:	e8 ea 0d 00 00       	call   140002a80 <__acrt_iob_func>
   140001c96:	4c 89 e2             	mov    %r12,%rdx
   140001c99:	48 89 c1             	mov    %rax,%rcx
   140001c9c:	49 89 d8             	mov    %rbx,%r8
   140001c9f:	e8 9c 0e 00 00       	call   140002b40 <vfprintf>
   140001ca4:	e8 3f 0e 00 00       	call   140002ae8 <abort>
   140001ca9:	90                   	nop
   140001caa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001cb0 <mark_section_writable>:
   140001cb0:	41 54                	push   %r12
   140001cb2:	56                   	push   %rsi
   140001cb3:	53                   	push   %rbx
   140001cb4:	48 83 ec 50          	sub    $0x50,%rsp
   140001cb8:	48 63 1d f5 53 00 00 	movslq 0x53f5(%rip),%rbx        # 1400070b4 <maxSections>
   140001cbf:	49 89 cc             	mov    %rcx,%r12
   140001cc2:	85 db                	test   %ebx,%ebx
   140001cc4:	0f 8e 16 01 00 00    	jle    140001de0 <mark_section_writable+0x130>
   140001cca:	48 8b 05 e7 53 00 00 	mov    0x53e7(%rip),%rax        # 1400070b8 <the_secs>
   140001cd1:	45 31 c9             	xor    %r9d,%r9d
   140001cd4:	48 83 c0 18          	add    $0x18,%rax
   140001cd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001cdf:	00 
   140001ce0:	4c 8b 00             	mov    (%rax),%r8
   140001ce3:	4d 39 e0             	cmp    %r12,%r8
   140001ce6:	77 13                	ja     140001cfb <mark_section_writable+0x4b>
   140001ce8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140001cec:	8b 52 08             	mov    0x8(%rdx),%edx
   140001cef:	49 01 d0             	add    %rdx,%r8
   140001cf2:	4d 39 c4             	cmp    %r8,%r12
   140001cf5:	0f 82 8a 00 00 00    	jb     140001d85 <mark_section_writable+0xd5>
   140001cfb:	41 83 c1 01          	add    $0x1,%r9d
   140001cff:	48 83 c0 28          	add    $0x28,%rax
   140001d03:	41 39 d9             	cmp    %ebx,%r9d
   140001d06:	75 d8                	jne    140001ce0 <mark_section_writable+0x30>
   140001d08:	4c 89 e1             	mov    %r12,%rcx
   140001d0b:	e8 20 0a 00 00       	call   140002730 <__mingw_GetSectionForAddress>
   140001d10:	48 89 c6             	mov    %rax,%rsi
   140001d13:	48 85 c0             	test   %rax,%rax
   140001d16:	0f 84 e6 00 00 00    	je     140001e02 <mark_section_writable+0x152>
   140001d1c:	48 8b 05 95 53 00 00 	mov    0x5395(%rip),%rax        # 1400070b8 <the_secs>
   140001d23:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   140001d27:	48 c1 e3 03          	shl    $0x3,%rbx
   140001d2b:	48 01 d8             	add    %rbx,%rax
   140001d2e:	48 89 70 20          	mov    %rsi,0x20(%rax)
   140001d32:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001d38:	e8 23 0b 00 00       	call   140002860 <_GetPEImageBase>
   140001d3d:	8b 56 0c             	mov    0xc(%rsi),%edx
   140001d40:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001d46:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   140001d4a:	48 8b 05 67 53 00 00 	mov    0x5367(%rip),%rax        # 1400070b8 <the_secs>
   140001d51:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001d56:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   140001d5b:	ff 15 a7 64 00 00    	call   *0x64a7(%rip)        # 140008208 <__imp_VirtualQuery>
   140001d61:	48 85 c0             	test   %rax,%rax
   140001d64:	0f 84 7d 00 00 00    	je     140001de7 <mark_section_writable+0x137>
   140001d6a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   140001d6e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001d71:	83 e2 bf             	and    $0xffffffbf,%edx
   140001d74:	74 08                	je     140001d7e <mark_section_writable+0xce>
   140001d76:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001d79:	83 e2 fb             	and    $0xfffffffb,%edx
   140001d7c:	75 12                	jne    140001d90 <mark_section_writable+0xe0>
   140001d7e:	83 05 2f 53 00 00 01 	addl   $0x1,0x532f(%rip)        # 1400070b4 <maxSections>
   140001d85:	48 83 c4 50          	add    $0x50,%rsp
   140001d89:	5b                   	pop    %rbx
   140001d8a:	5e                   	pop    %rsi
   140001d8b:	41 5c                	pop    %r12
   140001d8d:	c3                   	ret    
   140001d8e:	66 90                	xchg   %ax,%ax
   140001d90:	83 f8 02             	cmp    $0x2,%eax
   140001d93:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001d98:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140001d9d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001da3:	b8 40 00 00 00       	mov    $0x40,%eax
   140001da8:	44 0f 45 c0          	cmovne %eax,%r8d
   140001dac:	48 03 1d 05 53 00 00 	add    0x5305(%rip),%rbx        # 1400070b8 <the_secs>
   140001db3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140001db7:	49 89 d9             	mov    %rbx,%r9
   140001dba:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   140001dbe:	ff 15 3c 64 00 00    	call   *0x643c(%rip)        # 140008200 <__imp_VirtualProtect>
   140001dc4:	85 c0                	test   %eax,%eax
   140001dc6:	75 b6                	jne    140001d7e <mark_section_writable+0xce>
   140001dc8:	ff 15 fa 63 00 00    	call   *0x63fa(%rip)        # 1400081c8 <__imp_GetLastError>
   140001dce:	48 8d 0d 63 24 00 00 	lea    0x2463(%rip),%rcx        # 140004238 <.rdata+0x78>
   140001dd5:	89 c2                	mov    %eax,%edx
   140001dd7:	e8 64 fe ff ff       	call   140001c40 <__report_error>
   140001ddc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001de0:	31 db                	xor    %ebx,%ebx
   140001de2:	e9 21 ff ff ff       	jmp    140001d08 <mark_section_writable+0x58>
   140001de7:	48 8b 05 ca 52 00 00 	mov    0x52ca(%rip),%rax        # 1400070b8 <the_secs>
   140001dee:	8b 56 08             	mov    0x8(%rsi),%edx
   140001df1:	48 8d 0d 08 24 00 00 	lea    0x2408(%rip),%rcx        # 140004200 <.rdata+0x40>
   140001df8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   140001dfd:	e8 3e fe ff ff       	call   140001c40 <__report_error>
   140001e02:	4c 89 e2             	mov    %r12,%rdx
   140001e05:	48 8d 0d d4 23 00 00 	lea    0x23d4(%rip),%rcx        # 1400041e0 <.rdata+0x20>
   140001e0c:	e8 2f fe ff ff       	call   140001c40 <__report_error>
   140001e11:	90                   	nop
   140001e12:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001e19:	00 00 00 00 
   140001e1d:	0f 1f 00             	nopl   (%rax)

0000000140001e20 <_pei386_runtime_relocator>:
   140001e20:	55                   	push   %rbp
   140001e21:	41 57                	push   %r15
   140001e23:	41 56                	push   %r14
   140001e25:	41 55                	push   %r13
   140001e27:	41 54                	push   %r12
   140001e29:	57                   	push   %rdi
   140001e2a:	56                   	push   %rsi
   140001e2b:	53                   	push   %rbx
   140001e2c:	48 83 ec 48          	sub    $0x48,%rsp
   140001e30:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001e35:	8b 35 75 52 00 00    	mov    0x5275(%rip),%esi        # 1400070b0 <was_init.0>
   140001e3b:	85 f6                	test   %esi,%esi
   140001e3d:	74 11                	je     140001e50 <_pei386_runtime_relocator+0x30>
   140001e3f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001e43:	5b                   	pop    %rbx
   140001e44:	5e                   	pop    %rsi
   140001e45:	5f                   	pop    %rdi
   140001e46:	41 5c                	pop    %r12
   140001e48:	41 5d                	pop    %r13
   140001e4a:	41 5e                	pop    %r14
   140001e4c:	41 5f                	pop    %r15
   140001e4e:	5d                   	pop    %rbp
   140001e4f:	c3                   	ret    
   140001e50:	c7 05 56 52 00 00 01 	movl   $0x1,0x5256(%rip)        # 1400070b0 <was_init.0>
   140001e57:	00 00 00 
   140001e5a:	e8 51 09 00 00       	call   1400027b0 <__mingw_GetSectionCount>
   140001e5f:	48 98                	cltq   
   140001e61:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001e65:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001e6c:	00 
   140001e6d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001e71:	e8 7a 0b 00 00       	call   1400029f0 <___chkstk_ms>
   140001e76:	48 8b 3d 23 25 00 00 	mov    0x2523(%rip),%rdi        # 1400043a0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001e7d:	48 8b 1d 2c 25 00 00 	mov    0x252c(%rip),%rbx        # 1400043b0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001e84:	c7 05 26 52 00 00 00 	movl   $0x0,0x5226(%rip)        # 1400070b4 <maxSections>
   140001e8b:	00 00 00 
   140001e8e:	48 29 c4             	sub    %rax,%rsp
   140001e91:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140001e96:	48 89 05 1b 52 00 00 	mov    %rax,0x521b(%rip)        # 1400070b8 <the_secs>
   140001e9d:	48 89 f8             	mov    %rdi,%rax
   140001ea0:	48 29 d8             	sub    %rbx,%rax
   140001ea3:	48 83 f8 07          	cmp    $0x7,%rax
   140001ea7:	7e 96                	jle    140001e3f <_pei386_runtime_relocator+0x1f>
   140001ea9:	8b 13                	mov    (%rbx),%edx
   140001eab:	48 83 f8 0b          	cmp    $0xb,%rax
   140001eaf:	0f 8f 83 01 00 00    	jg     140002038 <_pei386_runtime_relocator+0x218>
   140001eb5:	8b 03                	mov    (%rbx),%eax
   140001eb7:	85 c0                	test   %eax,%eax
   140001eb9:	0f 85 29 02 00 00    	jne    1400020e8 <_pei386_runtime_relocator+0x2c8>
   140001ebf:	8b 43 04             	mov    0x4(%rbx),%eax
   140001ec2:	85 c0                	test   %eax,%eax
   140001ec4:	0f 85 1e 02 00 00    	jne    1400020e8 <_pei386_runtime_relocator+0x2c8>
   140001eca:	8b 53 08             	mov    0x8(%rbx),%edx
   140001ecd:	83 fa 01             	cmp    $0x1,%edx
   140001ed0:	0f 85 72 02 00 00    	jne    140002148 <_pei386_runtime_relocator+0x328>
   140001ed6:	48 83 c3 0c          	add    $0xc,%rbx
   140001eda:	48 39 fb             	cmp    %rdi,%rbx
   140001edd:	0f 83 5c ff ff ff    	jae    140001e3f <_pei386_runtime_relocator+0x1f>
   140001ee3:	4c 8b 3d e6 24 00 00 	mov    0x24e6(%rip),%r15        # 1400043d0 <.refptr.__image_base__>
   140001eea:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
   140001ef1:	ff ff ff 
   140001ef4:	eb 5d                	jmp    140001f53 <_pei386_runtime_relocator+0x133>
   140001ef6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001efd:	00 00 00 
   140001f00:	41 0f b6 06          	movzbl (%r14),%eax
   140001f04:	49 89 c3             	mov    %rax,%r11
   140001f07:	49 81 cb 00 ff ff ff 	or     $0xffffffffffffff00,%r11
   140001f0e:	84 c0                	test   %al,%al
   140001f10:	49 0f 48 c3          	cmovs  %r11,%rax
   140001f14:	48 29 c8             	sub    %rcx,%rax
   140001f17:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001f1e:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140001f22:	75 17                	jne    140001f3b <_pei386_runtime_relocator+0x11b>
   140001f24:	49 83 fd 80          	cmp    $0xffffffffffffff80,%r13
   140001f28:	0f 8c 06 02 00 00    	jl     140002134 <_pei386_runtime_relocator+0x314>
   140001f2e:	49 81 fd ff 00 00 00 	cmp    $0xff,%r13
   140001f35:	0f 8f f9 01 00 00    	jg     140002134 <_pei386_runtime_relocator+0x314>
   140001f3b:	4c 89 f1             	mov    %r14,%rcx
   140001f3e:	e8 6d fd ff ff       	call   140001cb0 <mark_section_writable>
   140001f43:	45 88 2e             	mov    %r13b,(%r14)
   140001f46:	48 83 c3 0c          	add    $0xc,%rbx
   140001f4a:	48 39 fb             	cmp    %rdi,%rbx
   140001f4d:	0f 83 8d 00 00 00    	jae    140001fe0 <_pei386_runtime_relocator+0x1c0>
   140001f53:	8b 0b                	mov    (%rbx),%ecx
   140001f55:	44 8b 43 08          	mov    0x8(%rbx),%r8d
   140001f59:	44 8b 73 04          	mov    0x4(%rbx),%r14d
   140001f5d:	4c 01 f9             	add    %r15,%rcx
   140001f60:	41 0f b6 d0          	movzbl %r8b,%edx
   140001f64:	4c 8b 09             	mov    (%rcx),%r9
   140001f67:	4d 01 fe             	add    %r15,%r14
   140001f6a:	83 fa 20             	cmp    $0x20,%edx
   140001f6d:	0f 84 25 01 00 00    	je     140002098 <_pei386_runtime_relocator+0x278>
   140001f73:	0f 87 e7 00 00 00    	ja     140002060 <_pei386_runtime_relocator+0x240>
   140001f79:	83 fa 08             	cmp    $0x8,%edx
   140001f7c:	74 82                	je     140001f00 <_pei386_runtime_relocator+0xe0>
   140001f7e:	83 fa 10             	cmp    $0x10,%edx
   140001f81:	0f 85 a1 01 00 00    	jne    140002128 <_pei386_runtime_relocator+0x308>
   140001f87:	41 0f b7 06          	movzwl (%r14),%eax
   140001f8b:	49 89 c3             	mov    %rax,%r11
   140001f8e:	49 81 cb 00 00 ff ff 	or     $0xffffffffffff0000,%r11
   140001f95:	66 85 c0             	test   %ax,%ax
   140001f98:	49 0f 48 c3          	cmovs  %r11,%rax
   140001f9c:	48 29 c8             	sub    %rcx,%rax
   140001f9f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001fa6:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140001faa:	75 1a                	jne    140001fc6 <_pei386_runtime_relocator+0x1a6>
   140001fac:	49 81 fd 00 80 ff ff 	cmp    $0xffffffffffff8000,%r13
   140001fb3:	0f 8c 7b 01 00 00    	jl     140002134 <_pei386_runtime_relocator+0x314>
   140001fb9:	49 81 fd ff ff 00 00 	cmp    $0xffff,%r13
   140001fc0:	0f 8f 6e 01 00 00    	jg     140002134 <_pei386_runtime_relocator+0x314>
   140001fc6:	4c 89 f1             	mov    %r14,%rcx
   140001fc9:	48 83 c3 0c          	add    $0xc,%rbx
   140001fcd:	e8 de fc ff ff       	call   140001cb0 <mark_section_writable>
   140001fd2:	66 45 89 2e          	mov    %r13w,(%r14)
   140001fd6:	48 39 fb             	cmp    %rdi,%rbx
   140001fd9:	0f 82 74 ff ff ff    	jb     140001f53 <_pei386_runtime_relocator+0x133>
   140001fdf:	90                   	nop
   140001fe0:	8b 15 ce 50 00 00    	mov    0x50ce(%rip),%edx        # 1400070b4 <maxSections>
   140001fe6:	85 d2                	test   %edx,%edx
   140001fe8:	0f 8e 51 fe ff ff    	jle    140001e3f <_pei386_runtime_relocator+0x1f>
   140001fee:	48 8b 3d 0b 62 00 00 	mov    0x620b(%rip),%rdi        # 140008200 <__imp_VirtualProtect>
   140001ff5:	31 db                	xor    %ebx,%ebx
   140001ff7:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   140001ffb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002000:	48 8b 05 b1 50 00 00 	mov    0x50b1(%rip),%rax        # 1400070b8 <the_secs>
   140002007:	48 01 d8             	add    %rbx,%rax
   14000200a:	44 8b 00             	mov    (%rax),%r8d
   14000200d:	45 85 c0             	test   %r8d,%r8d
   140002010:	74 0d                	je     14000201f <_pei386_runtime_relocator+0x1ff>
   140002012:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140002016:	48 8b 48 08          	mov    0x8(%rax),%rcx
   14000201a:	4d 89 e1             	mov    %r12,%r9
   14000201d:	ff d7                	call   *%rdi
   14000201f:	83 c6 01             	add    $0x1,%esi
   140002022:	48 83 c3 28          	add    $0x28,%rbx
   140002026:	3b 35 88 50 00 00    	cmp    0x5088(%rip),%esi        # 1400070b4 <maxSections>
   14000202c:	7c d2                	jl     140002000 <_pei386_runtime_relocator+0x1e0>
   14000202e:	e9 0c fe ff ff       	jmp    140001e3f <_pei386_runtime_relocator+0x1f>
   140002033:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002038:	85 d2                	test   %edx,%edx
   14000203a:	0f 85 a8 00 00 00    	jne    1400020e8 <_pei386_runtime_relocator+0x2c8>
   140002040:	8b 43 04             	mov    0x4(%rbx),%eax
   140002043:	89 c2                	mov    %eax,%edx
   140002045:	0b 53 08             	or     0x8(%rbx),%edx
   140002048:	0f 85 74 fe ff ff    	jne    140001ec2 <_pei386_runtime_relocator+0xa2>
   14000204e:	48 83 c3 0c          	add    $0xc,%rbx
   140002052:	e9 5e fe ff ff       	jmp    140001eb5 <_pei386_runtime_relocator+0x95>
   140002057:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000205e:	00 00 
   140002060:	83 fa 40             	cmp    $0x40,%edx
   140002063:	0f 85 bf 00 00 00    	jne    140002128 <_pei386_runtime_relocator+0x308>
   140002069:	49 8b 06             	mov    (%r14),%rax
   14000206c:	48 29 c8             	sub    %rcx,%rax
   14000206f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002076:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   14000207a:	75 09                	jne    140002085 <_pei386_runtime_relocator+0x265>
   14000207c:	4d 85 ed             	test   %r13,%r13
   14000207f:	0f 89 af 00 00 00    	jns    140002134 <_pei386_runtime_relocator+0x314>
   140002085:	4c 89 f1             	mov    %r14,%rcx
   140002088:	e8 23 fc ff ff       	call   140001cb0 <mark_section_writable>
   14000208d:	4d 89 2e             	mov    %r13,(%r14)
   140002090:	e9 b1 fe ff ff       	jmp    140001f46 <_pei386_runtime_relocator+0x126>
   140002095:	0f 1f 00             	nopl   (%rax)
   140002098:	41 8b 06             	mov    (%r14),%eax
   14000209b:	49 89 c2             	mov    %rax,%r10
   14000209e:	4c 09 e0             	or     %r12,%rax
   1400020a1:	45 85 d2             	test   %r10d,%r10d
   1400020a4:	49 0f 49 c2          	cmovns %r10,%rax
   1400020a8:	48 29 c8             	sub    %rcx,%rax
   1400020ab:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   1400020b2:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   1400020b6:	75 19                	jne    1400020d1 <_pei386_runtime_relocator+0x2b1>
   1400020b8:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   1400020bf:	ff ff ff 
   1400020c2:	49 39 c5             	cmp    %rax,%r13
   1400020c5:	7e 6d                	jle    140002134 <_pei386_runtime_relocator+0x314>
   1400020c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400020cc:	49 39 c5             	cmp    %rax,%r13
   1400020cf:	7f 63                	jg     140002134 <_pei386_runtime_relocator+0x314>
   1400020d1:	4c 89 f1             	mov    %r14,%rcx
   1400020d4:	e8 d7 fb ff ff       	call   140001cb0 <mark_section_writable>
   1400020d9:	45 89 2e             	mov    %r13d,(%r14)
   1400020dc:	e9 65 fe ff ff       	jmp    140001f46 <_pei386_runtime_relocator+0x126>
   1400020e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400020e8:	48 39 fb             	cmp    %rdi,%rbx
   1400020eb:	0f 83 4e fd ff ff    	jae    140001e3f <_pei386_runtime_relocator+0x1f>
   1400020f1:	4c 8b 35 d8 22 00 00 	mov    0x22d8(%rip),%r14        # 1400043d0 <.refptr.__image_base__>
   1400020f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400020ff:	00 
   140002100:	44 8b 63 04          	mov    0x4(%rbx),%r12d
   140002104:	44 8b 2b             	mov    (%rbx),%r13d
   140002107:	48 83 c3 08          	add    $0x8,%rbx
   14000210b:	4d 01 f4             	add    %r14,%r12
   14000210e:	45 03 2c 24          	add    (%r12),%r13d
   140002112:	4c 89 e1             	mov    %r12,%rcx
   140002115:	e8 96 fb ff ff       	call   140001cb0 <mark_section_writable>
   14000211a:	45 89 2c 24          	mov    %r13d,(%r12)
   14000211e:	48 39 fb             	cmp    %rdi,%rbx
   140002121:	72 dd                	jb     140002100 <_pei386_runtime_relocator+0x2e0>
   140002123:	e9 b8 fe ff ff       	jmp    140001fe0 <_pei386_runtime_relocator+0x1c0>
   140002128:	48 8d 0d 69 21 00 00 	lea    0x2169(%rip),%rcx        # 140004298 <.rdata+0xd8>
   14000212f:	e8 0c fb ff ff       	call   140001c40 <__report_error>
   140002134:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
   140002139:	4d 89 f0             	mov    %r14,%r8
   14000213c:	48 8d 0d 85 21 00 00 	lea    0x2185(%rip),%rcx        # 1400042c8 <.rdata+0x108>
   140002143:	e8 f8 fa ff ff       	call   140001c40 <__report_error>
   140002148:	48 8d 0d 11 21 00 00 	lea    0x2111(%rip),%rcx        # 140004260 <.rdata+0xa0>
   14000214f:	e8 ec fa ff ff       	call   140001c40 <__report_error>
   140002154:	90                   	nop
   140002155:	90                   	nop
   140002156:	90                   	nop
   140002157:	90                   	nop
   140002158:	90                   	nop
   140002159:	90                   	nop
   14000215a:	90                   	nop
   14000215b:	90                   	nop
   14000215c:	90                   	nop
   14000215d:	90                   	nop
   14000215e:	90                   	nop
   14000215f:	90                   	nop

0000000140002160 <__mingw_raise_matherr>:
   140002160:	48 83 ec 58          	sub    $0x58,%rsp
   140002164:	48 8b 05 55 4f 00 00 	mov    0x4f55(%rip),%rax        # 1400070c0 <stUserMathErr>
   14000216b:	48 85 c0             	test   %rax,%rax
   14000216e:	74 2c                	je     14000219c <__mingw_raise_matherr+0x3c>
   140002170:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140002177:	00 00 
   140002179:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   14000217d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140002182:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140002187:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   14000218d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140002193:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140002199:	ff d0                	call   *%rax
   14000219b:	90                   	nop
   14000219c:	48 83 c4 58          	add    $0x58,%rsp
   1400021a0:	c3                   	ret    
   1400021a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400021a8:	00 00 00 00 
   1400021ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400021b0 <__mingw_setusermatherr>:
   1400021b0:	48 89 0d 09 4f 00 00 	mov    %rcx,0x4f09(%rip)        # 1400070c0 <stUserMathErr>
   1400021b7:	e9 04 09 00 00       	jmp    140002ac0 <__setusermatherr>
   1400021bc:	90                   	nop
   1400021bd:	90                   	nop
   1400021be:	90                   	nop
   1400021bf:	90                   	nop

00000001400021c0 <_gnu_exception_handler>:
   1400021c0:	41 54                	push   %r12
   1400021c2:	48 83 ec 20          	sub    $0x20,%rsp
   1400021c6:	48 8b 11             	mov    (%rcx),%rdx
   1400021c9:	8b 02                	mov    (%rdx),%eax
   1400021cb:	49 89 cc             	mov    %rcx,%r12
   1400021ce:	89 c1                	mov    %eax,%ecx
   1400021d0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   1400021d6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   1400021dc:	0f 84 be 00 00 00    	je     1400022a0 <_gnu_exception_handler+0xe0>
   1400021e2:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   1400021e7:	0f 87 9a 00 00 00    	ja     140002287 <_gnu_exception_handler+0xc7>
   1400021ed:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   1400021f2:	76 44                	jbe    140002238 <_gnu_exception_handler+0x78>
   1400021f4:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   1400021f9:	83 f8 09             	cmp    $0x9,%eax
   1400021fc:	77 2a                	ja     140002228 <_gnu_exception_handler+0x68>
   1400021fe:	48 8d 15 1b 21 00 00 	lea    0x211b(%rip),%rdx        # 140004320 <.rdata>
   140002205:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140002209:	48 01 d0             	add    %rdx,%rax
   14000220c:	ff e0                	jmp    *%rax
   14000220e:	66 90                	xchg   %ax,%ax
   140002210:	ba 01 00 00 00       	mov    $0x1,%edx
   140002215:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000221a:	e8 09 09 00 00       	call   140002b28 <signal>
   14000221f:	e8 0c fa ff ff       	call   140001c30 <_fpreset>
   140002224:	0f 1f 40 00          	nopl   0x0(%rax)
   140002228:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000222d:	48 83 c4 20          	add    $0x20,%rsp
   140002231:	41 5c                	pop    %r12
   140002233:	c3                   	ret    
   140002234:	0f 1f 40 00          	nopl   0x0(%rax)
   140002238:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   14000223d:	0f 84 dd 00 00 00    	je     140002320 <_gnu_exception_handler+0x160>
   140002243:	76 3b                	jbe    140002280 <_gnu_exception_handler+0xc0>
   140002245:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   14000224a:	74 dc                	je     140002228 <_gnu_exception_handler+0x68>
   14000224c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140002251:	75 34                	jne    140002287 <_gnu_exception_handler+0xc7>
   140002253:	31 d2                	xor    %edx,%edx
   140002255:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000225a:	e8 c9 08 00 00       	call   140002b28 <signal>
   14000225f:	48 83 f8 01          	cmp    $0x1,%rax
   140002263:	0f 84 e3 00 00 00    	je     14000234c <_gnu_exception_handler+0x18c>
   140002269:	48 85 c0             	test   %rax,%rax
   14000226c:	74 19                	je     140002287 <_gnu_exception_handler+0xc7>
   14000226e:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002273:	ff d0                	call   *%rax
   140002275:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000227a:	eb b1                	jmp    14000222d <_gnu_exception_handler+0x6d>
   14000227c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002280:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140002285:	74 a1                	je     140002228 <_gnu_exception_handler+0x68>
   140002287:	48 8b 05 52 4e 00 00 	mov    0x4e52(%rip),%rax        # 1400070e0 <__mingw_oldexcpt_handler>
   14000228e:	48 85 c0             	test   %rax,%rax
   140002291:	74 1d                	je     1400022b0 <_gnu_exception_handler+0xf0>
   140002293:	4c 89 e1             	mov    %r12,%rcx
   140002296:	48 83 c4 20          	add    $0x20,%rsp
   14000229a:	41 5c                	pop    %r12
   14000229c:	48 ff e0             	rex.W jmp *%rax
   14000229f:	90                   	nop
   1400022a0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   1400022a4:	0f 85 38 ff ff ff    	jne    1400021e2 <_gnu_exception_handler+0x22>
   1400022aa:	e9 79 ff ff ff       	jmp    140002228 <_gnu_exception_handler+0x68>
   1400022af:	90                   	nop
   1400022b0:	31 c0                	xor    %eax,%eax
   1400022b2:	48 83 c4 20          	add    $0x20,%rsp
   1400022b6:	41 5c                	pop    %r12
   1400022b8:	c3                   	ret    
   1400022b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400022c0:	31 d2                	xor    %edx,%edx
   1400022c2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400022c7:	e8 5c 08 00 00       	call   140002b28 <signal>
   1400022cc:	48 83 f8 01          	cmp    $0x1,%rax
   1400022d0:	0f 84 3a ff ff ff    	je     140002210 <_gnu_exception_handler+0x50>
   1400022d6:	48 85 c0             	test   %rax,%rax
   1400022d9:	74 ac                	je     140002287 <_gnu_exception_handler+0xc7>
   1400022db:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400022e0:	ff d0                	call   *%rax
   1400022e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400022e7:	e9 41 ff ff ff       	jmp    14000222d <_gnu_exception_handler+0x6d>
   1400022ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400022f0:	31 d2                	xor    %edx,%edx
   1400022f2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400022f7:	e8 2c 08 00 00       	call   140002b28 <signal>
   1400022fc:	48 83 f8 01          	cmp    $0x1,%rax
   140002300:	75 d4                	jne    1400022d6 <_gnu_exception_handler+0x116>
   140002302:	ba 01 00 00 00       	mov    $0x1,%edx
   140002307:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000230c:	e8 17 08 00 00       	call   140002b28 <signal>
   140002311:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002316:	e9 12 ff ff ff       	jmp    14000222d <_gnu_exception_handler+0x6d>
   14000231b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002320:	31 d2                	xor    %edx,%edx
   140002322:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002327:	e8 fc 07 00 00       	call   140002b28 <signal>
   14000232c:	48 83 f8 01          	cmp    $0x1,%rax
   140002330:	74 31                	je     140002363 <_gnu_exception_handler+0x1a3>
   140002332:	48 85 c0             	test   %rax,%rax
   140002335:	0f 84 4c ff ff ff    	je     140002287 <_gnu_exception_handler+0xc7>
   14000233b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002340:	ff d0                	call   *%rax
   140002342:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002347:	e9 e1 fe ff ff       	jmp    14000222d <_gnu_exception_handler+0x6d>
   14000234c:	ba 01 00 00 00       	mov    $0x1,%edx
   140002351:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002356:	e8 cd 07 00 00       	call   140002b28 <signal>
   14000235b:	83 c8 ff             	or     $0xffffffff,%eax
   14000235e:	e9 ca fe ff ff       	jmp    14000222d <_gnu_exception_handler+0x6d>
   140002363:	ba 01 00 00 00       	mov    $0x1,%edx
   140002368:	b9 0b 00 00 00       	mov    $0xb,%ecx
   14000236d:	e8 b6 07 00 00       	call   140002b28 <signal>
   140002372:	83 c8 ff             	or     $0xffffffff,%eax
   140002375:	e9 b3 fe ff ff       	jmp    14000222d <_gnu_exception_handler+0x6d>
   14000237a:	90                   	nop
   14000237b:	90                   	nop
   14000237c:	90                   	nop
   14000237d:	90                   	nop
   14000237e:	90                   	nop
   14000237f:	90                   	nop

0000000140002380 <__mingwthr_run_key_dtors.part.0>:
   140002380:	41 55                	push   %r13
   140002382:	41 54                	push   %r12
   140002384:	57                   	push   %rdi
   140002385:	56                   	push   %rsi
   140002386:	53                   	push   %rbx
   140002387:	48 83 ec 20          	sub    $0x20,%rsp
   14000238b:	4c 8d 2d 8e 4d 00 00 	lea    0x4d8e(%rip),%r13        # 140007120 <__mingwthr_cs>
   140002392:	4c 89 e9             	mov    %r13,%rcx
   140002395:	ff 15 25 5e 00 00    	call   *0x5e25(%rip)        # 1400081c0 <__imp_EnterCriticalSection>
   14000239b:	48 8b 1d 5e 4d 00 00 	mov    0x4d5e(%rip),%rbx        # 140007100 <key_dtor_list>
   1400023a2:	48 85 db             	test   %rbx,%rbx
   1400023a5:	74 35                	je     1400023dc <__mingwthr_run_key_dtors.part.0+0x5c>
   1400023a7:	48 8b 3d 4a 5e 00 00 	mov    0x5e4a(%rip),%rdi        # 1400081f8 <__imp_TlsGetValue>
   1400023ae:	48 8b 35 13 5e 00 00 	mov    0x5e13(%rip),%rsi        # 1400081c8 <__imp_GetLastError>
   1400023b5:	0f 1f 00             	nopl   (%rax)
   1400023b8:	8b 0b                	mov    (%rbx),%ecx
   1400023ba:	ff d7                	call   *%rdi
   1400023bc:	49 89 c4             	mov    %rax,%r12
   1400023bf:	ff d6                	call   *%rsi
   1400023c1:	85 c0                	test   %eax,%eax
   1400023c3:	75 0e                	jne    1400023d3 <__mingwthr_run_key_dtors.part.0+0x53>
   1400023c5:	4d 85 e4             	test   %r12,%r12
   1400023c8:	74 09                	je     1400023d3 <__mingwthr_run_key_dtors.part.0+0x53>
   1400023ca:	48 8b 43 08          	mov    0x8(%rbx),%rax
   1400023ce:	4c 89 e1             	mov    %r12,%rcx
   1400023d1:	ff d0                	call   *%rax
   1400023d3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400023d7:	48 85 db             	test   %rbx,%rbx
   1400023da:	75 dc                	jne    1400023b8 <__mingwthr_run_key_dtors.part.0+0x38>
   1400023dc:	4c 89 e9             	mov    %r13,%rcx
   1400023df:	48 83 c4 20          	add    $0x20,%rsp
   1400023e3:	5b                   	pop    %rbx
   1400023e4:	5e                   	pop    %rsi
   1400023e5:	5f                   	pop    %rdi
   1400023e6:	41 5c                	pop    %r12
   1400023e8:	41 5d                	pop    %r13
   1400023ea:	48 ff 25 ef 5d 00 00 	rex.W jmp *0x5def(%rip)        # 1400081e0 <__imp_LeaveCriticalSection>
   1400023f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400023f8:	00 00 00 00 
   1400023fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002400 <___w64_mingwthr_add_key_dtor>:
   140002400:	41 54                	push   %r12
   140002402:	57                   	push   %rdi
   140002403:	56                   	push   %rsi
   140002404:	53                   	push   %rbx
   140002405:	48 83 ec 28          	sub    $0x28,%rsp
   140002409:	8b 05 f9 4c 00 00    	mov    0x4cf9(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   14000240f:	89 cf                	mov    %ecx,%edi
   140002411:	48 89 d6             	mov    %rdx,%rsi
   140002414:	85 c0                	test   %eax,%eax
   140002416:	75 10                	jne    140002428 <___w64_mingwthr_add_key_dtor+0x28>
   140002418:	48 83 c4 28          	add    $0x28,%rsp
   14000241c:	5b                   	pop    %rbx
   14000241d:	5e                   	pop    %rsi
   14000241e:	5f                   	pop    %rdi
   14000241f:	41 5c                	pop    %r12
   140002421:	c3                   	ret    
   140002422:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002428:	ba 18 00 00 00       	mov    $0x18,%edx
   14000242d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002432:	e8 b9 06 00 00       	call   140002af0 <calloc>
   140002437:	48 89 c3             	mov    %rax,%rbx
   14000243a:	48 85 c0             	test   %rax,%rax
   14000243d:	74 3d                	je     14000247c <___w64_mingwthr_add_key_dtor+0x7c>
   14000243f:	4c 8d 25 da 4c 00 00 	lea    0x4cda(%rip),%r12        # 140007120 <__mingwthr_cs>
   140002446:	89 38                	mov    %edi,(%rax)
   140002448:	48 89 70 08          	mov    %rsi,0x8(%rax)
   14000244c:	4c 89 e1             	mov    %r12,%rcx
   14000244f:	ff 15 6b 5d 00 00    	call   *0x5d6b(%rip)        # 1400081c0 <__imp_EnterCriticalSection>
   140002455:	48 8b 05 a4 4c 00 00 	mov    0x4ca4(%rip),%rax        # 140007100 <key_dtor_list>
   14000245c:	4c 89 e1             	mov    %r12,%rcx
   14000245f:	48 89 1d 9a 4c 00 00 	mov    %rbx,0x4c9a(%rip)        # 140007100 <key_dtor_list>
   140002466:	48 89 43 10          	mov    %rax,0x10(%rbx)
   14000246a:	ff 15 70 5d 00 00    	call   *0x5d70(%rip)        # 1400081e0 <__imp_LeaveCriticalSection>
   140002470:	31 c0                	xor    %eax,%eax
   140002472:	48 83 c4 28          	add    $0x28,%rsp
   140002476:	5b                   	pop    %rbx
   140002477:	5e                   	pop    %rsi
   140002478:	5f                   	pop    %rdi
   140002479:	41 5c                	pop    %r12
   14000247b:	c3                   	ret    
   14000247c:	83 c8 ff             	or     $0xffffffff,%eax
   14000247f:	eb 97                	jmp    140002418 <___w64_mingwthr_add_key_dtor+0x18>
   140002481:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002488:	00 00 00 00 
   14000248c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002490 <___w64_mingwthr_remove_key_dtor>:
   140002490:	41 54                	push   %r12
   140002492:	53                   	push   %rbx
   140002493:	48 83 ec 28          	sub    $0x28,%rsp
   140002497:	8b 05 6b 4c 00 00    	mov    0x4c6b(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   14000249d:	89 cb                	mov    %ecx,%ebx
   14000249f:	85 c0                	test   %eax,%eax
   1400024a1:	75 0d                	jne    1400024b0 <___w64_mingwthr_remove_key_dtor+0x20>
   1400024a3:	31 c0                	xor    %eax,%eax
   1400024a5:	48 83 c4 28          	add    $0x28,%rsp
   1400024a9:	5b                   	pop    %rbx
   1400024aa:	41 5c                	pop    %r12
   1400024ac:	c3                   	ret    
   1400024ad:	0f 1f 00             	nopl   (%rax)
   1400024b0:	4c 8d 25 69 4c 00 00 	lea    0x4c69(%rip),%r12        # 140007120 <__mingwthr_cs>
   1400024b7:	4c 89 e1             	mov    %r12,%rcx
   1400024ba:	ff 15 00 5d 00 00    	call   *0x5d00(%rip)        # 1400081c0 <__imp_EnterCriticalSection>
   1400024c0:	48 8b 0d 39 4c 00 00 	mov    0x4c39(%rip),%rcx        # 140007100 <key_dtor_list>
   1400024c7:	48 85 c9             	test   %rcx,%rcx
   1400024ca:	74 27                	je     1400024f3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400024cc:	31 d2                	xor    %edx,%edx
   1400024ce:	eb 0b                	jmp    1400024db <___w64_mingwthr_remove_key_dtor+0x4b>
   1400024d0:	48 89 ca             	mov    %rcx,%rdx
   1400024d3:	48 85 c0             	test   %rax,%rax
   1400024d6:	74 1b                	je     1400024f3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400024d8:	48 89 c1             	mov    %rax,%rcx
   1400024db:	8b 01                	mov    (%rcx),%eax
   1400024dd:	39 d8                	cmp    %ebx,%eax
   1400024df:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400024e3:	75 eb                	jne    1400024d0 <___w64_mingwthr_remove_key_dtor+0x40>
   1400024e5:	48 85 d2             	test   %rdx,%rdx
   1400024e8:	74 26                	je     140002510 <___w64_mingwthr_remove_key_dtor+0x80>
   1400024ea:	48 89 42 10          	mov    %rax,0x10(%rdx)
   1400024ee:	e8 15 06 00 00       	call   140002b08 <free>
   1400024f3:	4c 89 e1             	mov    %r12,%rcx
   1400024f6:	ff 15 e4 5c 00 00    	call   *0x5ce4(%rip)        # 1400081e0 <__imp_LeaveCriticalSection>
   1400024fc:	31 c0                	xor    %eax,%eax
   1400024fe:	48 83 c4 28          	add    $0x28,%rsp
   140002502:	5b                   	pop    %rbx
   140002503:	41 5c                	pop    %r12
   140002505:	c3                   	ret    
   140002506:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000250d:	00 00 00 
   140002510:	48 89 05 e9 4b 00 00 	mov    %rax,0x4be9(%rip)        # 140007100 <key_dtor_list>
   140002517:	eb d5                	jmp    1400024ee <___w64_mingwthr_remove_key_dtor+0x5e>
   140002519:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002520 <__mingw_TLScallback>:
   140002520:	53                   	push   %rbx
   140002521:	48 83 ec 20          	sub    $0x20,%rsp
   140002525:	83 fa 02             	cmp    $0x2,%edx
   140002528:	74 46                	je     140002570 <__mingw_TLScallback+0x50>
   14000252a:	77 2c                	ja     140002558 <__mingw_TLScallback+0x38>
   14000252c:	85 d2                	test   %edx,%edx
   14000252e:	74 50                	je     140002580 <__mingw_TLScallback+0x60>
   140002530:	8b 05 d2 4b 00 00    	mov    0x4bd2(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140002536:	85 c0                	test   %eax,%eax
   140002538:	0f 84 b2 00 00 00    	je     1400025f0 <__mingw_TLScallback+0xd0>
   14000253e:	c7 05 c0 4b 00 00 01 	movl   $0x1,0x4bc0(%rip)        # 140007108 <__mingwthr_cs_init>
   140002545:	00 00 00 
   140002548:	b8 01 00 00 00       	mov    $0x1,%eax
   14000254d:	48 83 c4 20          	add    $0x20,%rsp
   140002551:	5b                   	pop    %rbx
   140002552:	c3                   	ret    
   140002553:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002558:	83 fa 03             	cmp    $0x3,%edx
   14000255b:	75 eb                	jne    140002548 <__mingw_TLScallback+0x28>
   14000255d:	8b 05 a5 4b 00 00    	mov    0x4ba5(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140002563:	85 c0                	test   %eax,%eax
   140002565:	74 e1                	je     140002548 <__mingw_TLScallback+0x28>
   140002567:	e8 14 fe ff ff       	call   140002380 <__mingwthr_run_key_dtors.part.0>
   14000256c:	eb da                	jmp    140002548 <__mingw_TLScallback+0x28>
   14000256e:	66 90                	xchg   %ax,%ax
   140002570:	e8 bb f6 ff ff       	call   140001c30 <_fpreset>
   140002575:	b8 01 00 00 00       	mov    $0x1,%eax
   14000257a:	48 83 c4 20          	add    $0x20,%rsp
   14000257e:	5b                   	pop    %rbx
   14000257f:	c3                   	ret    
   140002580:	8b 05 82 4b 00 00    	mov    0x4b82(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140002586:	85 c0                	test   %eax,%eax
   140002588:	75 56                	jne    1400025e0 <__mingw_TLScallback+0xc0>
   14000258a:	8b 05 78 4b 00 00    	mov    0x4b78(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140002590:	83 f8 01             	cmp    $0x1,%eax
   140002593:	75 b3                	jne    140002548 <__mingw_TLScallback+0x28>
   140002595:	48 8b 1d 64 4b 00 00 	mov    0x4b64(%rip),%rbx        # 140007100 <key_dtor_list>
   14000259c:	48 85 db             	test   %rbx,%rbx
   14000259f:	74 18                	je     1400025b9 <__mingw_TLScallback+0x99>
   1400025a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400025a8:	48 89 d9             	mov    %rbx,%rcx
   1400025ab:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400025af:	e8 54 05 00 00       	call   140002b08 <free>
   1400025b4:	48 85 db             	test   %rbx,%rbx
   1400025b7:	75 ef                	jne    1400025a8 <__mingw_TLScallback+0x88>
   1400025b9:	48 8d 0d 60 4b 00 00 	lea    0x4b60(%rip),%rcx        # 140007120 <__mingwthr_cs>
   1400025c0:	48 c7 05 35 4b 00 00 	movq   $0x0,0x4b35(%rip)        # 140007100 <key_dtor_list>
   1400025c7:	00 00 00 00 
   1400025cb:	c7 05 33 4b 00 00 00 	movl   $0x0,0x4b33(%rip)        # 140007108 <__mingwthr_cs_init>
   1400025d2:	00 00 00 
   1400025d5:	ff 15 dd 5b 00 00    	call   *0x5bdd(%rip)        # 1400081b8 <__IAT_start__>
   1400025db:	e9 68 ff ff ff       	jmp    140002548 <__mingw_TLScallback+0x28>
   1400025e0:	e8 9b fd ff ff       	call   140002380 <__mingwthr_run_key_dtors.part.0>
   1400025e5:	eb a3                	jmp    14000258a <__mingw_TLScallback+0x6a>
   1400025e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400025ee:	00 00 
   1400025f0:	48 8d 0d 29 4b 00 00 	lea    0x4b29(%rip),%rcx        # 140007120 <__mingwthr_cs>
   1400025f7:	ff 15 db 5b 00 00    	call   *0x5bdb(%rip)        # 1400081d8 <__imp_InitializeCriticalSection>
   1400025fd:	e9 3c ff ff ff       	jmp    14000253e <__mingw_TLScallback+0x1e>
   140002602:	90                   	nop
   140002603:	90                   	nop
   140002604:	90                   	nop
   140002605:	90                   	nop
   140002606:	90                   	nop
   140002607:	90                   	nop
   140002608:	90                   	nop
   140002609:	90                   	nop
   14000260a:	90                   	nop
   14000260b:	90                   	nop
   14000260c:	90                   	nop
   14000260d:	90                   	nop
   14000260e:	90                   	nop
   14000260f:	90                   	nop

0000000140002610 <_ValidateImageBase>:
   140002610:	31 c0                	xor    %eax,%eax
   140002612:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002617:	75 0f                	jne    140002628 <_ValidateImageBase+0x18>
   140002619:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000261d:	48 01 d1             	add    %rdx,%rcx
   140002620:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002626:	74 08                	je     140002630 <_ValidateImageBase+0x20>
   140002628:	c3                   	ret    
   140002629:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002630:	31 c0                	xor    %eax,%eax
   140002632:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002638:	0f 94 c0             	sete   %al
   14000263b:	c3                   	ret    
   14000263c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002640 <_FindPESection>:
   140002640:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002644:	48 01 c1             	add    %rax,%rcx
   140002647:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000264b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002650:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002654:	85 c9                	test   %ecx,%ecx
   140002656:	74 2d                	je     140002685 <_FindPESection+0x45>
   140002658:	83 e9 01             	sub    $0x1,%ecx
   14000265b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   14000265f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002664:	0f 1f 40 00          	nopl   0x0(%rax)
   140002668:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   14000266c:	4c 89 c1             	mov    %r8,%rcx
   14000266f:	49 39 d0             	cmp    %rdx,%r8
   140002672:	77 08                	ja     14000267c <_FindPESection+0x3c>
   140002674:	03 48 08             	add    0x8(%rax),%ecx
   140002677:	48 39 d1             	cmp    %rdx,%rcx
   14000267a:	77 0b                	ja     140002687 <_FindPESection+0x47>
   14000267c:	48 83 c0 28          	add    $0x28,%rax
   140002680:	4c 39 c8             	cmp    %r9,%rax
   140002683:	75 e3                	jne    140002668 <_FindPESection+0x28>
   140002685:	31 c0                	xor    %eax,%eax
   140002687:	c3                   	ret    
   140002688:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000268f:	00 

0000000140002690 <_FindPESectionByName>:
   140002690:	41 54                	push   %r12
   140002692:	56                   	push   %rsi
   140002693:	53                   	push   %rbx
   140002694:	48 83 ec 20          	sub    $0x20,%rsp
   140002698:	48 89 cb             	mov    %rcx,%rbx
   14000269b:	e8 90 04 00 00       	call   140002b30 <strlen>
   1400026a0:	48 83 f8 08          	cmp    $0x8,%rax
   1400026a4:	77 7a                	ja     140002720 <_FindPESectionByName+0x90>
   1400026a6:	48 8b 15 23 1d 00 00 	mov    0x1d23(%rip),%rdx        # 1400043d0 <.refptr.__image_base__>
   1400026ad:	45 31 e4             	xor    %r12d,%r12d
   1400026b0:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400026b5:	75 57                	jne    14000270e <_FindPESectionByName+0x7e>
   1400026b7:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   1400026bb:	48 01 d0             	add    %rdx,%rax
   1400026be:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400026c4:	75 48                	jne    14000270e <_FindPESectionByName+0x7e>
   1400026c6:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400026cc:	75 40                	jne    14000270e <_FindPESectionByName+0x7e>
   1400026ce:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   1400026d2:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   1400026d7:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   1400026db:	85 c0                	test   %eax,%eax
   1400026dd:	74 41                	je     140002720 <_FindPESectionByName+0x90>
   1400026df:	83 e8 01             	sub    $0x1,%eax
   1400026e2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400026e6:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   1400026eb:	eb 0c                	jmp    1400026f9 <_FindPESectionByName+0x69>
   1400026ed:	0f 1f 00             	nopl   (%rax)
   1400026f0:	49 83 c4 28          	add    $0x28,%r12
   1400026f4:	49 39 f4             	cmp    %rsi,%r12
   1400026f7:	74 27                	je     140002720 <_FindPESectionByName+0x90>
   1400026f9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   1400026ff:	48 89 da             	mov    %rbx,%rdx
   140002702:	4c 89 e1             	mov    %r12,%rcx
   140002705:	e8 2e 04 00 00       	call   140002b38 <strncmp>
   14000270a:	85 c0                	test   %eax,%eax
   14000270c:	75 e2                	jne    1400026f0 <_FindPESectionByName+0x60>
   14000270e:	4c 89 e0             	mov    %r12,%rax
   140002711:	48 83 c4 20          	add    $0x20,%rsp
   140002715:	5b                   	pop    %rbx
   140002716:	5e                   	pop    %rsi
   140002717:	41 5c                	pop    %r12
   140002719:	c3                   	ret    
   14000271a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002720:	45 31 e4             	xor    %r12d,%r12d
   140002723:	4c 89 e0             	mov    %r12,%rax
   140002726:	48 83 c4 20          	add    $0x20,%rsp
   14000272a:	5b                   	pop    %rbx
   14000272b:	5e                   	pop    %rsi
   14000272c:	41 5c                	pop    %r12
   14000272e:	c3                   	ret    
   14000272f:	90                   	nop

0000000140002730 <__mingw_GetSectionForAddress>:
   140002730:	48 8b 15 99 1c 00 00 	mov    0x1c99(%rip),%rdx        # 1400043d0 <.refptr.__image_base__>
   140002737:	31 c0                	xor    %eax,%eax
   140002739:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000273e:	75 10                	jne    140002750 <__mingw_GetSectionForAddress+0x20>
   140002740:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002744:	49 01 d0             	add    %rdx,%r8
   140002747:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000274e:	74 08                	je     140002758 <__mingw_GetSectionForAddress+0x28>
   140002750:	c3                   	ret    
   140002751:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002758:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000275f:	75 ef                	jne    140002750 <__mingw_GetSectionForAddress+0x20>
   140002761:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002766:	48 29 d1             	sub    %rdx,%rcx
   140002769:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   14000276e:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140002773:	85 d2                	test   %edx,%edx
   140002775:	74 2e                	je     1400027a5 <__mingw_GetSectionForAddress+0x75>
   140002777:	83 ea 01             	sub    $0x1,%edx
   14000277a:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000277e:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002783:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002788:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   14000278c:	4c 89 c2             	mov    %r8,%rdx
   14000278f:	4c 39 c1             	cmp    %r8,%rcx
   140002792:	72 08                	jb     14000279c <__mingw_GetSectionForAddress+0x6c>
   140002794:	03 50 08             	add    0x8(%rax),%edx
   140002797:	48 39 d1             	cmp    %rdx,%rcx
   14000279a:	72 b4                	jb     140002750 <__mingw_GetSectionForAddress+0x20>
   14000279c:	48 83 c0 28          	add    $0x28,%rax
   1400027a0:	4c 39 c8             	cmp    %r9,%rax
   1400027a3:	75 e3                	jne    140002788 <__mingw_GetSectionForAddress+0x58>
   1400027a5:	31 c0                	xor    %eax,%eax
   1400027a7:	c3                   	ret    
   1400027a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400027af:	00 

00000001400027b0 <__mingw_GetSectionCount>:
   1400027b0:	48 8b 05 19 1c 00 00 	mov    0x1c19(%rip),%rax        # 1400043d0 <.refptr.__image_base__>
   1400027b7:	45 31 c0             	xor    %r8d,%r8d
   1400027ba:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400027bf:	75 0f                	jne    1400027d0 <__mingw_GetSectionCount+0x20>
   1400027c1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400027c5:	48 01 d0             	add    %rdx,%rax
   1400027c8:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400027ce:	74 08                	je     1400027d8 <__mingw_GetSectionCount+0x28>
   1400027d0:	44 89 c0             	mov    %r8d,%eax
   1400027d3:	c3                   	ret    
   1400027d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400027d8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400027de:	75 f0                	jne    1400027d0 <__mingw_GetSectionCount+0x20>
   1400027e0:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   1400027e5:	44 89 c0             	mov    %r8d,%eax
   1400027e8:	c3                   	ret    
   1400027e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400027f0 <_FindPESectionExec>:
   1400027f0:	4c 8b 05 d9 1b 00 00 	mov    0x1bd9(%rip),%r8        # 1400043d0 <.refptr.__image_base__>
   1400027f7:	31 c0                	xor    %eax,%eax
   1400027f9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   1400027ff:	75 0f                	jne    140002810 <_FindPESectionExec+0x20>
   140002801:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002805:	4c 01 c2             	add    %r8,%rdx
   140002808:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000280e:	74 08                	je     140002818 <_FindPESectionExec+0x28>
   140002810:	c3                   	ret    
   140002811:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002818:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000281e:	75 f0                	jne    140002810 <_FindPESectionExec+0x20>
   140002820:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002824:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002829:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   14000282d:	85 d2                	test   %edx,%edx
   14000282f:	74 27                	je     140002858 <_FindPESectionExec+0x68>
   140002831:	83 ea 01             	sub    $0x1,%edx
   140002834:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002838:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   14000283d:	0f 1f 00             	nopl   (%rax)
   140002840:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140002844:	74 09                	je     14000284f <_FindPESectionExec+0x5f>
   140002846:	48 85 c9             	test   %rcx,%rcx
   140002849:	74 c5                	je     140002810 <_FindPESectionExec+0x20>
   14000284b:	48 83 e9 01          	sub    $0x1,%rcx
   14000284f:	48 83 c0 28          	add    $0x28,%rax
   140002853:	48 39 d0             	cmp    %rdx,%rax
   140002856:	75 e8                	jne    140002840 <_FindPESectionExec+0x50>
   140002858:	31 c0                	xor    %eax,%eax
   14000285a:	c3                   	ret    
   14000285b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002860 <_GetPEImageBase>:
   140002860:	48 8b 05 69 1b 00 00 	mov    0x1b69(%rip),%rax        # 1400043d0 <.refptr.__image_base__>
   140002867:	45 31 c0             	xor    %r8d,%r8d
   14000286a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000286f:	75 0f                	jne    140002880 <_GetPEImageBase+0x20>
   140002871:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002875:	48 01 c2             	add    %rax,%rdx
   140002878:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000287e:	74 08                	je     140002888 <_GetPEImageBase+0x28>
   140002880:	4c 89 c0             	mov    %r8,%rax
   140002883:	c3                   	ret    
   140002884:	0f 1f 40 00          	nopl   0x0(%rax)
   140002888:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000288e:	4c 0f 44 c0          	cmove  %rax,%r8
   140002892:	4c 89 c0             	mov    %r8,%rax
   140002895:	c3                   	ret    
   140002896:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000289d:	00 00 00 

00000001400028a0 <_IsNonwritableInCurrentImage>:
   1400028a0:	48 8b 15 29 1b 00 00 	mov    0x1b29(%rip),%rdx        # 1400043d0 <.refptr.__image_base__>
   1400028a7:	31 c0                	xor    %eax,%eax
   1400028a9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400028ae:	75 10                	jne    1400028c0 <_IsNonwritableInCurrentImage+0x20>
   1400028b0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400028b4:	49 01 d0             	add    %rdx,%r8
   1400028b7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400028be:	74 08                	je     1400028c8 <_IsNonwritableInCurrentImage+0x28>
   1400028c0:	c3                   	ret    
   1400028c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400028c8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400028cf:	75 ef                	jne    1400028c0 <_IsNonwritableInCurrentImage+0x20>
   1400028d1:	48 29 d1             	sub    %rdx,%rcx
   1400028d4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400028d9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400028de:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400028e3:	45 85 c0             	test   %r8d,%r8d
   1400028e6:	74 d8                	je     1400028c0 <_IsNonwritableInCurrentImage+0x20>
   1400028e8:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   1400028ec:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400028f0:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   1400028f5:	0f 1f 00             	nopl   (%rax)
   1400028f8:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   1400028fc:	4c 89 c0             	mov    %r8,%rax
   1400028ff:	4c 39 c1             	cmp    %r8,%rcx
   140002902:	72 08                	jb     14000290c <_IsNonwritableInCurrentImage+0x6c>
   140002904:	03 42 08             	add    0x8(%rdx),%eax
   140002907:	48 39 c1             	cmp    %rax,%rcx
   14000290a:	72 14                	jb     140002920 <_IsNonwritableInCurrentImage+0x80>
   14000290c:	48 83 c2 28          	add    $0x28,%rdx
   140002910:	4c 39 ca             	cmp    %r9,%rdx
   140002913:	75 e3                	jne    1400028f8 <_IsNonwritableInCurrentImage+0x58>
   140002915:	31 c0                	xor    %eax,%eax
   140002917:	c3                   	ret    
   140002918:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000291f:	00 
   140002920:	8b 42 24             	mov    0x24(%rdx),%eax
   140002923:	f7 d0                	not    %eax
   140002925:	c1 e8 1f             	shr    $0x1f,%eax
   140002928:	c3                   	ret    
   140002929:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002930 <__mingw_enum_import_library_names>:
   140002930:	4c 8b 1d 99 1a 00 00 	mov    0x1a99(%rip),%r11        # 1400043d0 <.refptr.__image_base__>
   140002937:	45 31 c9             	xor    %r9d,%r9d
   14000293a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002940:	75 10                	jne    140002952 <__mingw_enum_import_library_names+0x22>
   140002942:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002946:	4d 01 d8             	add    %r11,%r8
   140002949:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002950:	74 0e                	je     140002960 <__mingw_enum_import_library_names+0x30>
   140002952:	4c 89 c8             	mov    %r9,%rax
   140002955:	c3                   	ret    
   140002956:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000295d:	00 00 00 
   140002960:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002967:	75 e9                	jne    140002952 <__mingw_enum_import_library_names+0x22>
   140002969:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140002970:	85 c0                	test   %eax,%eax
   140002972:	74 de                	je     140002952 <__mingw_enum_import_library_names+0x22>
   140002974:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002979:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   14000297e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002983:	45 85 c0             	test   %r8d,%r8d
   140002986:	74 ca                	je     140002952 <__mingw_enum_import_library_names+0x22>
   140002988:	41 83 e8 01          	sub    $0x1,%r8d
   14000298c:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140002990:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140002995:	0f 1f 00             	nopl   (%rax)
   140002998:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   14000299c:	4d 89 c8             	mov    %r9,%r8
   14000299f:	4c 39 c8             	cmp    %r9,%rax
   1400029a2:	72 09                	jb     1400029ad <__mingw_enum_import_library_names+0x7d>
   1400029a4:	44 03 42 08          	add    0x8(%rdx),%r8d
   1400029a8:	4c 39 c0             	cmp    %r8,%rax
   1400029ab:	72 13                	jb     1400029c0 <__mingw_enum_import_library_names+0x90>
   1400029ad:	48 83 c2 28          	add    $0x28,%rdx
   1400029b1:	49 39 d2             	cmp    %rdx,%r10
   1400029b4:	75 e2                	jne    140002998 <__mingw_enum_import_library_names+0x68>
   1400029b6:	45 31 c9             	xor    %r9d,%r9d
   1400029b9:	4c 89 c8             	mov    %r9,%rax
   1400029bc:	c3                   	ret    
   1400029bd:	0f 1f 00             	nopl   (%rax)
   1400029c0:	4c 01 d8             	add    %r11,%rax
   1400029c3:	eb 0a                	jmp    1400029cf <__mingw_enum_import_library_names+0x9f>
   1400029c5:	0f 1f 00             	nopl   (%rax)
   1400029c8:	83 e9 01             	sub    $0x1,%ecx
   1400029cb:	48 83 c0 14          	add    $0x14,%rax
   1400029cf:	44 8b 40 04          	mov    0x4(%rax),%r8d
   1400029d3:	45 85 c0             	test   %r8d,%r8d
   1400029d6:	75 07                	jne    1400029df <__mingw_enum_import_library_names+0xaf>
   1400029d8:	8b 50 0c             	mov    0xc(%rax),%edx
   1400029db:	85 d2                	test   %edx,%edx
   1400029dd:	74 d7                	je     1400029b6 <__mingw_enum_import_library_names+0x86>
   1400029df:	85 c9                	test   %ecx,%ecx
   1400029e1:	7f e5                	jg     1400029c8 <__mingw_enum_import_library_names+0x98>
   1400029e3:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   1400029e7:	4d 01 d9             	add    %r11,%r9
   1400029ea:	4c 89 c8             	mov    %r9,%rax
   1400029ed:	c3                   	ret    
   1400029ee:	90                   	nop
   1400029ef:	90                   	nop

00000001400029f0 <___chkstk_ms>:
   1400029f0:	51                   	push   %rcx
   1400029f1:	50                   	push   %rax
   1400029f2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400029f8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   1400029fd:	72 19                	jb     140002a18 <___chkstk_ms+0x28>
   1400029ff:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002a06:	48 83 09 00          	orq    $0x0,(%rcx)
   140002a0a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002a10:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002a16:	77 e7                	ja     1400029ff <___chkstk_ms+0xf>
   140002a18:	48 29 c1             	sub    %rax,%rcx
   140002a1b:	48 83 09 00          	orq    $0x0,(%rcx)
   140002a1f:	58                   	pop    %rax
   140002a20:	59                   	pop    %rcx
   140002a21:	c3                   	ret    
   140002a22:	90                   	nop
   140002a23:	90                   	nop
   140002a24:	90                   	nop
   140002a25:	90                   	nop
   140002a26:	90                   	nop
   140002a27:	90                   	nop
   140002a28:	90                   	nop
   140002a29:	90                   	nop
   140002a2a:	90                   	nop
   140002a2b:	90                   	nop
   140002a2c:	90                   	nop
   140002a2d:	90                   	nop
   140002a2e:	90                   	nop
   140002a2f:	90                   	nop

0000000140002a30 <__p__fmode>:
   140002a30:	48 8b 05 d9 19 00 00 	mov    0x19d9(%rip),%rax        # 140004410 <.refptr.__imp__fmode>
   140002a37:	48 8b 00             	mov    (%rax),%rax
   140002a3a:	c3                   	ret    
   140002a3b:	90                   	nop
   140002a3c:	90                   	nop
   140002a3d:	90                   	nop
   140002a3e:	90                   	nop
   140002a3f:	90                   	nop

0000000140002a40 <__p__commode>:
   140002a40:	48 8b 05 b9 19 00 00 	mov    0x19b9(%rip),%rax        # 140004400 <.refptr.__imp__commode>
   140002a47:	48 8b 00             	mov    (%rax),%rax
   140002a4a:	c3                   	ret    
   140002a4b:	90                   	nop
   140002a4c:	90                   	nop
   140002a4d:	90                   	nop
   140002a4e:	90                   	nop
   140002a4f:	90                   	nop

0000000140002a50 <__p__acmdln>:
   140002a50:	48 8b 05 99 19 00 00 	mov    0x1999(%rip),%rax        # 1400043f0 <.refptr.__imp__acmdln>
   140002a57:	48 8b 00             	mov    (%rax),%rax
   140002a5a:	c3                   	ret    
   140002a5b:	90                   	nop
   140002a5c:	90                   	nop
   140002a5d:	90                   	nop
   140002a5e:	90                   	nop
   140002a5f:	90                   	nop

0000000140002a60 <_get_invalid_parameter_handler>:
   140002a60:	48 8b 05 29 47 00 00 	mov    0x4729(%rip),%rax        # 140007190 <handler>
   140002a67:	c3                   	ret    
   140002a68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002a6f:	00 

0000000140002a70 <_set_invalid_parameter_handler>:
   140002a70:	48 89 c8             	mov    %rcx,%rax
   140002a73:	48 87 05 16 47 00 00 	xchg   %rax,0x4716(%rip)        # 140007190 <handler>
   140002a7a:	c3                   	ret    
   140002a7b:	90                   	nop
   140002a7c:	90                   	nop
   140002a7d:	90                   	nop
   140002a7e:	90                   	nop
   140002a7f:	90                   	nop

0000000140002a80 <__acrt_iob_func>:
   140002a80:	53                   	push   %rbx
   140002a81:	48 83 ec 20          	sub    $0x20,%rsp
   140002a85:	89 cb                	mov    %ecx,%ebx
   140002a87:	e8 24 00 00 00       	call   140002ab0 <__iob_func>
   140002a8c:	89 d9                	mov    %ebx,%ecx
   140002a8e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140002a92:	48 c1 e2 04          	shl    $0x4,%rdx
   140002a96:	48 01 d0             	add    %rdx,%rax
   140002a99:	48 83 c4 20          	add    $0x20,%rsp
   140002a9d:	5b                   	pop    %rbx
   140002a9e:	c3                   	ret    
   140002a9f:	90                   	nop

0000000140002aa0 <__C_specific_handler>:
   140002aa0:	ff 25 72 57 00 00    	jmp    *0x5772(%rip)        # 140008218 <__imp___C_specific_handler>
   140002aa6:	90                   	nop
   140002aa7:	90                   	nop

0000000140002aa8 <__getmainargs>:
   140002aa8:	ff 25 72 57 00 00    	jmp    *0x5772(%rip)        # 140008220 <__imp___getmainargs>
   140002aae:	90                   	nop
   140002aaf:	90                   	nop

0000000140002ab0 <__iob_func>:
   140002ab0:	ff 25 7a 57 00 00    	jmp    *0x577a(%rip)        # 140008230 <__imp___iob_func>
   140002ab6:	90                   	nop
   140002ab7:	90                   	nop

0000000140002ab8 <__set_app_type>:
   140002ab8:	ff 25 7a 57 00 00    	jmp    *0x577a(%rip)        # 140008238 <__imp___set_app_type>
   140002abe:	90                   	nop
   140002abf:	90                   	nop

0000000140002ac0 <__setusermatherr>:
   140002ac0:	ff 25 7a 57 00 00    	jmp    *0x577a(%rip)        # 140008240 <__imp___setusermatherr>
   140002ac6:	90                   	nop
   140002ac7:	90                   	nop

0000000140002ac8 <_amsg_exit>:
   140002ac8:	ff 25 82 57 00 00    	jmp    *0x5782(%rip)        # 140008250 <__imp__amsg_exit>
   140002ace:	90                   	nop
   140002acf:	90                   	nop

0000000140002ad0 <_cexit>:
   140002ad0:	ff 25 82 57 00 00    	jmp    *0x5782(%rip)        # 140008258 <__imp__cexit>
   140002ad6:	90                   	nop
   140002ad7:	90                   	nop

0000000140002ad8 <_initterm>:
   140002ad8:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 140008270 <__imp__initterm>
   140002ade:	90                   	nop
   140002adf:	90                   	nop

0000000140002ae0 <_onexit>:
   140002ae0:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 140008278 <__imp__onexit>
   140002ae6:	90                   	nop
   140002ae7:	90                   	nop

0000000140002ae8 <abort>:
   140002ae8:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 140008280 <__imp_abort>
   140002aee:	90                   	nop
   140002aef:	90                   	nop

0000000140002af0 <calloc>:
   140002af0:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 140008288 <__imp_calloc>
   140002af6:	90                   	nop
   140002af7:	90                   	nop

0000000140002af8 <exit>:
   140002af8:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 140008290 <__imp_exit>
   140002afe:	90                   	nop
   140002aff:	90                   	nop

0000000140002b00 <fprintf>:
   140002b00:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 140008298 <__imp_fprintf>
   140002b06:	90                   	nop
   140002b07:	90                   	nop

0000000140002b08 <free>:
   140002b08:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 1400082a0 <__imp_free>
   140002b0e:	90                   	nop
   140002b0f:	90                   	nop

0000000140002b10 <fwrite>:
   140002b10:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 1400082a8 <__imp_fwrite>
   140002b16:	90                   	nop
   140002b17:	90                   	nop

0000000140002b18 <malloc>:
   140002b18:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 1400082b0 <__imp_malloc>
   140002b1e:	90                   	nop
   140002b1f:	90                   	nop

0000000140002b20 <memcpy>:
   140002b20:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 1400082b8 <__imp_memcpy>
   140002b26:	90                   	nop
   140002b27:	90                   	nop

0000000140002b28 <signal>:
   140002b28:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 1400082c0 <__imp_signal>
   140002b2e:	90                   	nop
   140002b2f:	90                   	nop

0000000140002b30 <strlen>:
   140002b30:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 1400082c8 <__imp_strlen>
   140002b36:	90                   	nop
   140002b37:	90                   	nop

0000000140002b38 <strncmp>:
   140002b38:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 1400082d0 <__imp_strncmp>
   140002b3e:	90                   	nop
   140002b3f:	90                   	nop

0000000140002b40 <vfprintf>:
   140002b40:	ff 25 92 57 00 00    	jmp    *0x5792(%rip)        # 1400082d8 <__imp_vfprintf>
   140002b46:	90                   	nop
   140002b47:	90                   	nop
   140002b48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002b4f:	00 

0000000140002b50 <VirtualQuery>:
   140002b50:	ff 25 b2 56 00 00    	jmp    *0x56b2(%rip)        # 140008208 <__imp_VirtualQuery>
   140002b56:	90                   	nop
   140002b57:	90                   	nop

0000000140002b58 <VirtualProtect>:
   140002b58:	ff 25 a2 56 00 00    	jmp    *0x56a2(%rip)        # 140008200 <__imp_VirtualProtect>
   140002b5e:	90                   	nop
   140002b5f:	90                   	nop

0000000140002b60 <TlsGetValue>:
   140002b60:	ff 25 92 56 00 00    	jmp    *0x5692(%rip)        # 1400081f8 <__imp_TlsGetValue>
   140002b66:	90                   	nop
   140002b67:	90                   	nop

0000000140002b68 <Sleep>:
   140002b68:	ff 25 82 56 00 00    	jmp    *0x5682(%rip)        # 1400081f0 <__imp_Sleep>
   140002b6e:	90                   	nop
   140002b6f:	90                   	nop

0000000140002b70 <SetUnhandledExceptionFilter>:
   140002b70:	ff 25 72 56 00 00    	jmp    *0x5672(%rip)        # 1400081e8 <__imp_SetUnhandledExceptionFilter>
   140002b76:	90                   	nop
   140002b77:	90                   	nop

0000000140002b78 <LeaveCriticalSection>:
   140002b78:	ff 25 62 56 00 00    	jmp    *0x5662(%rip)        # 1400081e0 <__imp_LeaveCriticalSection>
   140002b7e:	90                   	nop
   140002b7f:	90                   	nop

0000000140002b80 <InitializeCriticalSection>:
   140002b80:	ff 25 52 56 00 00    	jmp    *0x5652(%rip)        # 1400081d8 <__imp_InitializeCriticalSection>
   140002b86:	90                   	nop
   140002b87:	90                   	nop

0000000140002b88 <GetStartupInfoA>:
   140002b88:	ff 25 42 56 00 00    	jmp    *0x5642(%rip)        # 1400081d0 <__imp_GetStartupInfoA>
   140002b8e:	90                   	nop
   140002b8f:	90                   	nop

0000000140002b90 <GetLastError>:
   140002b90:	ff 25 32 56 00 00    	jmp    *0x5632(%rip)        # 1400081c8 <__imp_GetLastError>
   140002b96:	90                   	nop
   140002b97:	90                   	nop

0000000140002b98 <EnterCriticalSection>:
   140002b98:	ff 25 22 56 00 00    	jmp    *0x5622(%rip)        # 1400081c0 <__imp_EnterCriticalSection>
   140002b9e:	90                   	nop
   140002b9f:	90                   	nop

0000000140002ba0 <DeleteCriticalSection>:
   140002ba0:	ff 25 12 56 00 00    	jmp    *0x5612(%rip)        # 1400081b8 <__IAT_start__>
   140002ba6:	90                   	nop
   140002ba7:	90                   	nop
   140002ba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002baf:	00 

0000000140002bb0 <register_frame_ctor>:
   140002bb0:	e9 5b e9 ff ff       	jmp    140001510 <__gcc_register_frame>
   140002bb5:	90                   	nop
   140002bb6:	90                   	nop
   140002bb7:	90                   	nop
   140002bb8:	90                   	nop
   140002bb9:	90                   	nop
   140002bba:	90                   	nop
   140002bbb:	90                   	nop
   140002bbc:	90                   	nop
   140002bbd:	90                   	nop
   140002bbe:	90                   	nop
   140002bbf:	90                   	nop

0000000140002bc0 <__CTOR_LIST__>:
   140002bc0:	ff                   	(bad)  
   140002bc1:	ff                   	(bad)  
   140002bc2:	ff                   	(bad)  
   140002bc3:	ff                   	(bad)  
   140002bc4:	ff                   	(bad)  
   140002bc5:	ff                   	(bad)  
   140002bc6:	ff                   	(bad)  
   140002bc7:	ff                   	.byte 0xff

0000000140002bc8 <.ctors>:
   140002bc8:	40 19 00             	rex sbb %eax,(%rax)
   140002bcb:	40 01 00             	rex add %eax,(%rax)
	...

0000000140002bd0 <.ctors.65535>:
   140002bd0:	b0 2b                	mov    $0x2b,%al
   140002bd2:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140002be0 <__DTOR_LIST__>:
   140002be0:	ff                   	(bad)  
   140002be1:	ff                   	(bad)  
   140002be2:	ff                   	(bad)  
   140002be3:	ff                   	(bad)  
   140002be4:	ff                   	(bad)  
   140002be5:	ff                   	(bad)  
   140002be6:	ff                   	(bad)  
   140002be7:	ff 00                	incl   (%rax)
   140002be9:	00 00                	add    %al,(%rax)
   140002beb:	00 00                	add    %al,(%rax)
   140002bed:	00 00                	add    %al,(%rax)
	...
