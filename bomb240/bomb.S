
bomb:	file format elf32-i386


Disassembly of section .init:

00002000 <_init>:
    2000: f3 0f 1e fb                  	endbr32
    2004: 53                           	pushl	%ebx
    2005: 83 ec 08                     	subl	$8, %esp
    2008: e8 23 04 00 00               	calll	0x2430 <__x86.get_pc_thunk.bx>
    200d: 81 c3 5f 4f 00 00            	addl	$20319, %ebx
    2013: 8b 83 88 00 00 00            	movl	136(%ebx), %eax
    2019: 85 c0                        	testl	%eax, %eax
    201b: 74 02                        	je	0x201f <_init+0x1f>
    201d: ff d0                        	calll	*%eax
    201f: 83 c4 08                     	addl	$8, %esp
    2022: 5b                           	popl	%ebx
    2023: c3                           	retl

Disassembly of section .plt:

00002030 <.plt>:
    2030: ff b3 04 00 00 00            	pushl	4(%ebx)
    2036: ff a3 08 00 00 00            	jmpl	*8(%ebx)
    203c: 0f 1f 40 00                  	nopl	(%eax)
    2040: f3 0f 1e fb                  	endbr32
    2044: 68 00 00 00 00               	pushl	$0
    2049: e9 e2 ff ff ff               	jmp	0x2030 <.plt>
    204e: 66 90                        	nop
    2050: f3 0f 1e fb                  	endbr32
    2054: 68 08 00 00 00               	pushl	$8
    2059: e9 d2 ff ff ff               	jmp	0x2030 <.plt>
    205e: 66 90                        	nop
    2060: f3 0f 1e fb                  	endbr32
    2064: 68 10 00 00 00               	pushl	$16
    2069: e9 c2 ff ff ff               	jmp	0x2030 <.plt>
    206e: 66 90                        	nop
    2070: f3 0f 1e fb                  	endbr32
    2074: 68 18 00 00 00               	pushl	$24
    2079: e9 b2 ff ff ff               	jmp	0x2030 <.plt>
    207e: 66 90                        	nop
    2080: f3 0f 1e fb                  	endbr32
    2084: 68 20 00 00 00               	pushl	$32
    2089: e9 a2 ff ff ff               	jmp	0x2030 <.plt>
    208e: 66 90                        	nop
    2090: f3 0f 1e fb                  	endbr32
    2094: 68 28 00 00 00               	pushl	$40
    2099: e9 92 ff ff ff               	jmp	0x2030 <.plt>
    209e: 66 90                        	nop
    20a0: f3 0f 1e fb                  	endbr32
    20a4: 68 30 00 00 00               	pushl	$48
    20a9: e9 82 ff ff ff               	jmp	0x2030 <.plt>
    20ae: 66 90                        	nop
    20b0: f3 0f 1e fb                  	endbr32
    20b4: 68 38 00 00 00               	pushl	$56
    20b9: e9 72 ff ff ff               	jmp	0x2030 <.plt>
    20be: 66 90                        	nop
    20c0: f3 0f 1e fb                  	endbr32
    20c4: 68 40 00 00 00               	pushl	$64
    20c9: e9 62 ff ff ff               	jmp	0x2030 <.plt>
    20ce: 66 90                        	nop
    20d0: f3 0f 1e fb                  	endbr32
    20d4: 68 48 00 00 00               	pushl	$72
    20d9: e9 52 ff ff ff               	jmp	0x2030 <.plt>
    20de: 66 90                        	nop
    20e0: f3 0f 1e fb                  	endbr32
    20e4: 68 50 00 00 00               	pushl	$80
    20e9: e9 42 ff ff ff               	jmp	0x2030 <.plt>
    20ee: 66 90                        	nop
    20f0: f3 0f 1e fb                  	endbr32
    20f4: 68 58 00 00 00               	pushl	$88
    20f9: e9 32 ff ff ff               	jmp	0x2030 <.plt>
    20fe: 66 90                        	nop
    2100: f3 0f 1e fb                  	endbr32
    2104: 68 60 00 00 00               	pushl	$96
    2109: e9 22 ff ff ff               	jmp	0x2030 <.plt>
    210e: 66 90                        	nop
    2110: f3 0f 1e fb                  	endbr32
    2114: 68 68 00 00 00               	pushl	$104
    2119: e9 12 ff ff ff               	jmp	0x2030 <.plt>
    211e: 66 90                        	nop
    2120: f3 0f 1e fb                  	endbr32
    2124: 68 70 00 00 00               	pushl	$112
    2129: e9 02 ff ff ff               	jmp	0x2030 <.plt>
    212e: 66 90                        	nop
    2130: f3 0f 1e fb                  	endbr32
    2134: 68 78 00 00 00               	pushl	$120
    2139: e9 f2 fe ff ff               	jmp	0x2030 <.plt>
    213e: 66 90                        	nop
    2140: f3 0f 1e fb                  	endbr32
    2144: 68 80 00 00 00               	pushl	$128
    2149: e9 e2 fe ff ff               	jmp	0x2030 <.plt>
    214e: 66 90                        	nop
    2150: f3 0f 1e fb                  	endbr32
    2154: 68 88 00 00 00               	pushl	$136
    2159: e9 d2 fe ff ff               	jmp	0x2030 <.plt>
    215e: 66 90                        	nop
    2160: f3 0f 1e fb                  	endbr32
    2164: 68 90 00 00 00               	pushl	$144
    2169: e9 c2 fe ff ff               	jmp	0x2030 <.plt>
    216e: 66 90                        	nop
    2170: f3 0f 1e fb                  	endbr32
    2174: 68 98 00 00 00               	pushl	$152
    2179: e9 b2 fe ff ff               	jmp	0x2030 <.plt>
    217e: 66 90                        	nop
    2180: f3 0f 1e fb                  	endbr32
    2184: 68 a0 00 00 00               	pushl	$160
    2189: e9 a2 fe ff ff               	jmp	0x2030 <.plt>
    218e: 66 90                        	nop
    2190: f3 0f 1e fb                  	endbr32
    2194: 68 a8 00 00 00               	pushl	$168
    2199: e9 92 fe ff ff               	jmp	0x2030 <.plt>
    219e: 66 90                        	nop
    21a0: f3 0f 1e fb                  	endbr32
    21a4: 68 b0 00 00 00               	pushl	$176
    21a9: e9 82 fe ff ff               	jmp	0x2030 <.plt>
    21ae: 66 90                        	nop
    21b0: f3 0f 1e fb                  	endbr32
    21b4: 68 b8 00 00 00               	pushl	$184
    21b9: e9 72 fe ff ff               	jmp	0x2030 <.plt>
    21be: 66 90                        	nop
    21c0: f3 0f 1e fb                  	endbr32
    21c4: 68 c0 00 00 00               	pushl	$192
    21c9: e9 62 fe ff ff               	jmp	0x2030 <.plt>
    21ce: 66 90                        	nop
    21d0: f3 0f 1e fb                  	endbr32
    21d4: 68 c8 00 00 00               	pushl	$200
    21d9: e9 52 fe ff ff               	jmp	0x2030 <.plt>
    21de: 66 90                        	nop
    21e0: f3 0f 1e fb                  	endbr32
    21e4: 68 d0 00 00 00               	pushl	$208
    21e9: e9 42 fe ff ff               	jmp	0x2030 <.plt>
    21ee: 66 90                        	nop
    21f0: f3 0f 1e fb                  	endbr32
    21f4: 68 d8 00 00 00               	pushl	$216
    21f9: e9 32 fe ff ff               	jmp	0x2030 <.plt>
    21fe: 66 90                        	nop
    2200: f3 0f 1e fb                  	endbr32
    2204: 68 e0 00 00 00               	pushl	$224
    2209: e9 22 fe ff ff               	jmp	0x2030 <.plt>
    220e: 66 90                        	nop

Disassembly of section .plt.got:

00002210 <.plt.got>:
    2210: f3 0f 1e fb                  	endbr32
    2214: ff a3 84 00 00 00            	jmpl	*132(%ebx)
    221a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)

Disassembly of section .plt.sec:

00002220 <.plt.sec>:
    2220: f3 0f 1e fb                  	endbr32
    2224: ff a3 0c 00 00 00            	jmpl	*12(%ebx)
    222a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2230: f3 0f 1e fb                  	endbr32
    2234: ff a3 10 00 00 00            	jmpl	*16(%ebx)
    223a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2240: f3 0f 1e fb                  	endbr32
    2244: ff a3 14 00 00 00            	jmpl	*20(%ebx)
    224a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2250: f3 0f 1e fb                  	endbr32
    2254: ff a3 18 00 00 00            	jmpl	*24(%ebx)
    225a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2260: f3 0f 1e fb                  	endbr32
    2264: ff a3 1c 00 00 00            	jmpl	*28(%ebx)
    226a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2270: f3 0f 1e fb                  	endbr32
    2274: ff a3 20 00 00 00            	jmpl	*32(%ebx)
    227a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2280: f3 0f 1e fb                  	endbr32
    2284: ff a3 24 00 00 00            	jmpl	*36(%ebx)
    228a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2290: f3 0f 1e fb                  	endbr32
    2294: ff a3 28 00 00 00            	jmpl	*40(%ebx)
    229a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    22a0: f3 0f 1e fb                  	endbr32
    22a4: ff a3 2c 00 00 00            	jmpl	*44(%ebx)
    22aa: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    22b0: f3 0f 1e fb                  	endbr32
    22b4: ff a3 30 00 00 00            	jmpl	*48(%ebx)
    22ba: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    22c0: f3 0f 1e fb                  	endbr32
    22c4: ff a3 34 00 00 00            	jmpl	*52(%ebx)
    22ca: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    22d0: f3 0f 1e fb                  	endbr32
    22d4: ff a3 38 00 00 00            	jmpl	*56(%ebx)
    22da: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    22e0: f3 0f 1e fb                  	endbr32
    22e4: ff a3 3c 00 00 00            	jmpl	*60(%ebx)
    22ea: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    22f0: f3 0f 1e fb                  	endbr32
    22f4: ff a3 40 00 00 00            	jmpl	*64(%ebx)
    22fa: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2300: f3 0f 1e fb                  	endbr32
    2304: ff a3 44 00 00 00            	jmpl	*68(%ebx)
    230a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2310: f3 0f 1e fb                  	endbr32
    2314: ff a3 48 00 00 00            	jmpl	*72(%ebx)
    231a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2320: f3 0f 1e fb                  	endbr32
    2324: ff a3 4c 00 00 00            	jmpl	*76(%ebx)
    232a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2330: f3 0f 1e fb                  	endbr32
    2334: ff a3 50 00 00 00            	jmpl	*80(%ebx)
    233a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2340: f3 0f 1e fb                  	endbr32
    2344: ff a3 54 00 00 00            	jmpl	*84(%ebx)
    234a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2350: f3 0f 1e fb                  	endbr32
    2354: ff a3 58 00 00 00            	jmpl	*88(%ebx)
    235a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2360: f3 0f 1e fb                  	endbr32
    2364: ff a3 5c 00 00 00            	jmpl	*92(%ebx)
    236a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2370: f3 0f 1e fb                  	endbr32
    2374: ff a3 60 00 00 00            	jmpl	*96(%ebx)
    237a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2380: f3 0f 1e fb                  	endbr32
    2384: ff a3 64 00 00 00            	jmpl	*100(%ebx)
    238a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    2390: f3 0f 1e fb                  	endbr32
    2394: ff a3 68 00 00 00            	jmpl	*104(%ebx)
    239a: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    23a0: f3 0f 1e fb                  	endbr32
    23a4: ff a3 6c 00 00 00            	jmpl	*108(%ebx)
    23aa: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    23b0: f3 0f 1e fb                  	endbr32
    23b4: ff a3 70 00 00 00            	jmpl	*112(%ebx)
    23ba: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    23c0: f3 0f 1e fb                  	endbr32
    23c4: ff a3 74 00 00 00            	jmpl	*116(%ebx)
    23ca: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    23d0: f3 0f 1e fb                  	endbr32
    23d4: ff a3 78 00 00 00            	jmpl	*120(%ebx)
    23da: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)
    23e0: f3 0f 1e fb                  	endbr32
    23e4: ff a3 7c 00 00 00            	jmpl	*124(%ebx)
    23ea: 66 0f 1f 44 00 00            	nopw	(%eax,%eax)

Disassembly of section .text:

000023f0 <_start>:
    23f0: f3 0f 1e fb                  	endbr32
    23f4: 31 ed                        	xorl	%ebp, %ebp
    23f6: 5e                           	popl	%esi
    23f7: 89 e1                        	movl	%esp, %ecx
    23f9: 83 e4 f0                     	andl	$-16, %esp
    23fc: 50                           	pushl	%eax
    23fd: 54                           	pushl	%esp
    23fe: 52                           	pushl	%edx
    23ff: e8 22 00 00 00               	calll	0x2426 <_start+0x36>
    2404: 81 c3 68 4b 00 00            	addl	$19304, %ebx
    240a: 8d 83 94 cd ff ff            	leal	-12908(%ebx), %eax
    2410: 50                           	pushl	%eax
    2411: 8d 83 24 cd ff ff            	leal	-13020(%ebx), %eax
    2417: 50                           	pushl	%eax
    2418: 51                           	pushl	%ecx
    2419: 56                           	pushl	%esi
    241a: ff b3 8c 00 00 00            	pushl	140(%ebx)
    2420: e8 db fe ff ff               	calll	0x2300 <.plt.sec+0xe0>
    2425: f4                           	hlt
    2426: 8b 1c 24                     	movl	(%esp), %ebx
    2429: c3                           	retl
    242a: 66 90                        	nop
    242c: 66 90                        	nop
    242e: 66 90                        	nop

00002430 <__x86.get_pc_thunk.bx>:
    2430: 8b 1c 24                     	movl	(%esp), %ebx
    2433: c3                           	retl
    2434: 66 90                        	nop
    2436: 66 90                        	nop
    2438: 66 90                        	nop
    243a: 66 90                        	nop
    243c: 66 90                        	nop
    243e: 66 90                        	nop

00002440 <deregister_tm_clones>:
    2440: e8 e4 00 00 00               	calll	0x2529 <__x86.get_pc_thunk.dx>
    2445: 81 c2 27 4b 00 00            	addl	$19239, %edx
    244b: 8d 8a d4 07 00 00            	leal	2004(%edx), %ecx
    2451: 8d 82 d4 07 00 00            	leal	2004(%edx), %eax
    2457: 39 c8                        	cmpl	%ecx, %eax
    2459: 74 1d                        	je	0x2478 <deregister_tm_clones+0x38>
    245b: 8b 82 80 00 00 00            	movl	128(%edx), %eax
    2461: 85 c0                        	testl	%eax, %eax
    2463: 74 13                        	je	0x2478 <deregister_tm_clones+0x38>
    2465: 55                           	pushl	%ebp
    2466: 89 e5                        	movl	%esp, %ebp
    2468: 83 ec 14                     	subl	$20, %esp
    246b: 51                           	pushl	%ecx
    246c: ff d0                        	calll	*%eax
    246e: 83 c4 10                     	addl	$16, %esp
    2471: c9                           	leave
    2472: c3                           	retl
    2473: 8d 74 26 00                  	leal	(%esi,%eiz), %esi
    2477: 90                           	nop
    2478: c3                           	retl
    2479: 8d b4 26 00 00 00 00         	leal	(%esi,%eiz), %esi

00002480 <register_tm_clones>:
    2480: e8 a4 00 00 00               	calll	0x2529 <__x86.get_pc_thunk.dx>
    2485: 81 c2 e7 4a 00 00            	addl	$19175, %edx
    248b: 55                           	pushl	%ebp
    248c: 89 e5                        	movl	%esp, %ebp
    248e: 53                           	pushl	%ebx
    248f: 8d 8a d4 07 00 00            	leal	2004(%edx), %ecx
    2495: 8d 82 d4 07 00 00            	leal	2004(%edx), %eax
    249b: 83 ec 04                     	subl	$4, %esp
    249e: 29 c8                        	subl	%ecx, %eax
    24a0: 89 c3                        	movl	%eax, %ebx
    24a2: c1 e8 1f                     	shrl	$31, %eax
    24a5: c1 fb 02                     	sarl	$2, %ebx
    24a8: 01 d8                        	addl	%ebx, %eax
    24aa: d1 f8                        	sarl	%eax
    24ac: 74 14                        	je	0x24c2 <register_tm_clones+0x42>
    24ae: 8b 92 90 00 00 00            	movl	144(%edx), %edx
    24b4: 85 d2                        	testl	%edx, %edx
    24b6: 74 0a                        	je	0x24c2 <register_tm_clones+0x42>
    24b8: 83 ec 08                     	subl	$8, %esp
    24bb: 50                           	pushl	%eax
    24bc: 51                           	pushl	%ecx
    24bd: ff d2                        	calll	*%edx
    24bf: 83 c4 10                     	addl	$16, %esp
    24c2: 8b 5d fc                     	movl	-4(%ebp), %ebx
    24c5: c9                           	leave
    24c6: c3                           	retl
    24c7: 8d b4 26 00 00 00 00         	leal	(%esi,%eiz), %esi
    24ce: 66 90                        	nop

000024d0 <__do_global_dtors_aux>:
    24d0: f3 0f 1e fb                  	endbr32
    24d4: 55                           	pushl	%ebp
    24d5: 89 e5                        	movl	%esp, %ebp
    24d7: 53                           	pushl	%ebx
    24d8: e8 53 ff ff ff               	calll	0x2430 <__x86.get_pc_thunk.bx>
    24dd: 81 c3 8f 4a 00 00            	addl	$19087, %ebx
    24e3: 83 ec 04                     	subl	$4, %esp
    24e6: 80 bb fc 07 00 00 00         	cmpb	$0, 2044(%ebx)
    24ed: 75 27                        	jne	0x2516 <__do_global_dtors_aux+0x46>
    24ef: 8b 83 84 00 00 00            	movl	132(%ebx), %eax
    24f5: 85 c0                        	testl	%eax, %eax
    24f7: 74 11                        	je	0x250a <__do_global_dtors_aux+0x3a>
    24f9: 83 ec 0c                     	subl	$12, %esp
    24fc: ff b3 98 00 00 00            	pushl	152(%ebx)
    2502: e8 09 fd ff ff               	calll	0x2210 <.plt.got>
    2507: 83 c4 10                     	addl	$16, %esp
    250a: e8 31 ff ff ff               	calll	0x2440 <deregister_tm_clones>
    250f: c6 83 fc 07 00 00 01         	movb	$1, 2044(%ebx)
    2516: 8b 5d fc                     	movl	-4(%ebp), %ebx
    2519: c9                           	leave
    251a: c3                           	retl
    251b: 8d 74 26 00                  	leal	(%esi,%eiz), %esi
    251f: 90                           	nop

00002520 <frame_dummy>:
    2520: f3 0f 1e fb                  	endbr32
    2524: e9 57 ff ff ff               	jmp	0x2480 <register_tm_clones>

00002529 <__x86.get_pc_thunk.dx>:
    2529: 8b 14 24                     	movl	(%esp), %edx
    252c: c3                           	retl

0000252d <main>:
    252d: f3 0f 1e fb                  	endbr32
    2531: 8d 4c 24 04                  	leal	4(%esp), %ecx
    2535: 83 e4 f0                     	andl	$-16, %esp
    2538: ff 71 fc                     	pushl	-4(%ecx)
    253b: 55                           	pushl	%ebp
    253c: 89 e5                        	movl	%esp, %ebp
    253e: 53                           	pushl	%ebx
    253f: 51                           	pushl	%ecx
    2540: 8b 01                        	movl	(%ecx), %eax
    2542: 8b 59 04                     	movl	4(%ecx), %ebx
    2545: 83 f8 01                     	cmpl	$1, %eax
    2548: 0f 84 5b 01 00 00            	je	0x26a9 <main+0x17c>
    254e: 83 f8 02                     	cmpl	$2, %eax
    2551: 0f 85 7e 01 00 00            	jne	0x26d5 <main+0x1a8>
    2557: 83 ec 08                     	subl	$8, %esp
    255a: 68 08 40 00 00               	pushl	$16392
    255f: ff 73 04                     	pushl	4(%ebx)
    2562: e8 fc ff ff ff               	calll	0x2563 <main+0x36>
    2567: a3 70 77 00 00               	movl	%eax, 30576
    256c: 83 c4 10                     	addl	$16, %esp
    256f: 85 c0                        	testl	%eax, %eax
    2571: 0f 84 41 01 00 00            	je	0x26b8 <main+0x18b>
    2577: e8 b2 07 00 00               	calll	0x2d2e <initialize_bomb>
    257c: 83 ec 0c                     	subl	$12, %esp
    257f: 68 98 40 00 00               	pushl	$16536
    2584: e8 fc ff ff ff               	calll	0x2585 <main+0x58>
    2589: c7 04 24 d4 40 00 00         	movl	$16596, (%esp)
    2590: e8 fc ff ff ff               	calll	0x2591 <main+0x64>
    2595: e8 63 0a 00 00               	calll	0x2ffd <read_line>
    259a: 89 04 24                     	movl	%eax, (%esp)
    259d: e8 50 01 00 00               	calll	0x26f2 <phase_1>
    25a2: e8 57 0b 00 00               	calll	0x30fe <phase_defused>
    25a7: c7 04 24 00 41 00 00         	movl	$16640, (%esp)
    25ae: e8 fc ff ff ff               	calll	0x25af <main+0x82>
    25b3: e8 45 0a 00 00               	calll	0x2ffd <read_line>
    25b8: 89 04 24                     	movl	%eax, (%esp)
    25bb: e8 96 01 00 00               	calll	0x2756 <phase_2>
    25c0: e8 39 0b 00 00               	calll	0x30fe <phase_defused>
    25c5: c7 04 24 41 40 00 00         	movl	$16449, (%esp)
    25cc: e8 fc ff ff ff               	calll	0x25cd <main+0xa0>
    25d1: e8 27 0a 00 00               	calll	0x2ffd <read_line>
    25d6: 89 04 24                     	movl	%eax, (%esp)
    25d9: e8 9f 01 00 00               	calll	0x277d <phase_3>
    25de: e8 1b 0b 00 00               	calll	0x30fe <phase_defused>
    25e3: c7 04 24 5f 40 00 00         	movl	$16479, (%esp)
    25ea: e8 fc ff ff ff               	calll	0x25eb <main+0xbe>
    25ef: e8 09 0a 00 00               	calll	0x2ffd <read_line>
    25f4: 89 04 24                     	movl	%eax, (%esp)
    25f7: e8 2b 02 00 00               	calll	0x2827 <phase_4>
    25fc: e8 fd 0a 00 00               	calll	0x30fe <phase_defused>
    2601: c7 04 24 2c 41 00 00         	movl	$16684, (%esp)
    2608: e8 fc ff ff ff               	calll	0x2609 <main+0xdc>
    260d: e8 eb 09 00 00               	calll	0x2ffd <read_line>
    2612: 89 04 24                     	movl	%eax, (%esp)
    2615: e8 a1 02 00 00               	calll	0x28bb <phase_5>
    261a: e8 df 0a 00 00               	calll	0x30fe <phase_defused>
    261f: c7 04 24 70 40 00 00         	movl	$16496, (%esp)
    2626: e8 fc ff ff ff               	calll	0x2627 <main+0xfa>
    262b: e8 cd 09 00 00               	calll	0x2ffd <read_line>
    2630: 89 04 24                     	movl	%eax, (%esp)
    2633: e8 42 03 00 00               	calll	0x297a <phase_6>
    2638: e8 c1 0a 00 00               	calll	0x30fe <phase_defused>
    263d: c7 04 24 50 41 00 00         	movl	$16720, (%esp)
    2644: e8 fc ff ff ff               	calll	0x2645 <main+0x118>
    2649: e8 af 09 00 00               	calll	0x2ffd <read_line>
    264e: 89 04 24                     	movl	%eax, (%esp)
    2651: e8 9c 03 00 00               	calll	0x29f2 <phase_7>
    2656: e8 a3 0a 00 00               	calll	0x30fe <phase_defused>
    265b: c7 04 24 70 41 00 00         	movl	$16752, (%esp)
    2662: e8 fc ff ff ff               	calll	0x2663 <main+0x136>
    2667: e8 91 09 00 00               	calll	0x2ffd <read_line>
    266c: 89 04 24                     	movl	%eax, (%esp)
    266f: e8 06 04 00 00               	calll	0x2a7a <phase_8>
    2674: e8 85 0a 00 00               	calll	0x30fe <phase_defused>
    2679: c7 04 24 8e 40 00 00         	movl	$16526, (%esp)
    2680: e8 fc ff ff ff               	calll	0x2681 <main+0x154>
    2685: e8 73 09 00 00               	calll	0x2ffd <read_line>
    268a: 89 04 24                     	movl	%eax, (%esp)
    268d: e8 4c 05 00 00               	calll	0x2bde <phase_9>
    2692: e8 67 0a 00 00               	calll	0x30fe <phase_defused>
    2697: 83 c4 10                     	addl	$16, %esp
    269a: b8 00 00 00 00               	movl	$0, %eax
    269f: 8d 65 f8                     	leal	-8(%ebp), %esp
    26a2: 59                           	popl	%ecx
    26a3: 5b                           	popl	%ebx
    26a4: 5d                           	popl	%ebp
    26a5: 8d 61 fc                     	leal	-4(%ecx), %esp
    26a8: c3                           	retl
    26a9: a1 00 00 00 00               	movl	0, %eax
    26ae: a3 70 77 00 00               	movl	%eax, 30576
    26b3: e9 bf fe ff ff               	jmp	0x2577 <main+0x4a>
    26b8: ff 73 04                     	pushl	4(%ebx)
    26bb: ff 33                        	pushl	(%ebx)
    26bd: 68 0a 40 00 00               	pushl	$16394
    26c2: 6a 01                        	pushl	$1
    26c4: e8 fc ff ff ff               	calll	0x26c5 <main+0x198>
    26c9: c7 04 24 08 00 00 00         	movl	$8, (%esp)
    26d0: e8 fc ff ff ff               	calll	0x26d1 <main+0x1a4>
    26d5: 83 ec 04                     	subl	$4, %esp
    26d8: ff 33                        	pushl	(%ebx)
    26da: 68 27 40 00 00               	pushl	$16423
    26df: 6a 01                        	pushl	$1
    26e1: e8 fc ff ff ff               	calll	0x26e2 <main+0x1b5>
    26e6: c7 04 24 08 00 00 00         	movl	$8, (%esp)

000026f2 <phase_1>:
    26f2: f3 0f 1e fb                  	endbr32
    26f6: 83 ec 20                     	subl	$32, %esp
    26f9: 65 a1 14 00 00 00            	movl	%gs:20, %eax
    26ff: 89 44 24 10                  	movl	%eax, 16(%esp)
    2703: 31 c0                        	xorl	%eax, %eax
    2705: c7 44 24 0c 00 00 00 00      	movl	$0, 12(%esp)
    270d: 8d 44 24 0c                  	leal	12(%esp), %eax
    2711: 50                           	pushl	%eax
    2712: 68 e4 43 00 00               	pushl	$17380
    2717: ff 74 24 2c                  	pushl	44(%esp)
    271b: e8 fc ff ff ff               	calll	0x271c <phase_1+0x2a>
    2720: 83 c4 10                     	addl	$16, %esp
    2723: 83 f8 01                     	cmpl	$1, %eax
    2726: 75 1b                        	jne	0x2743 <phase_1+0x51>
    2728: 81 7c 24 08 26 03 00 00      	cmpl	$806, 8(%esp)
    2730: 75 18                        	jne	0x274a <phase_1+0x58>
    2732: 8b 44 24 0c                  	movl	12(%esp), %eax
    2736: 65 33 05 14 00 00 00         	xorl	%gs:20, %eax
    273d: 75 12                        	jne	0x2751 <phase_1+0x5f>
    273f: 83 c4 1c                     	addl	$28, %esp
    2742: c3                           	retl
    2743: e8 33 08 00 00               	calll	0x2f7b <explode_bomb>
    2748: eb de                        	jmp	0x2728 <phase_1+0x36>
    274a: e8 2c 08 00 00               	calll	0x2f7b <explode_bomb>
    274f: eb e1                        	jmp	0x2732 <phase_1+0x40>
    2751: e8 fc ff ff ff               	calll	0x2752 <phase_1+0x60>

00002756 <phase_2>:
    2756: f3 0f 1e fb                  	endbr32
    275a: 83 ec 14                     	subl	$20, %esp
    275d: 68 98 41 00 00               	pushl	$16792
    2762: ff 74 24 1c                  	pushl	28(%esp)
    2766: e8 67 05 00 00               	calll	0x2cd2 <strings_not_equal>
    276b: 83 c4 10                     	addl	$16, %esp
    276e: 85 c0                        	testl	%eax, %eax
    2770: 75 04                        	jne	0x2776 <phase_2+0x20>
    2772: 83 c4 0c                     	addl	$12, %esp
    2775: c3                           	retl
    2776: e8 00 08 00 00               	calll	0x2f7b <explode_bomb>
    277b: eb f5                        	jmp	0x2772 <phase_2+0x1c>

0000277d <phase_3>:
    277d: f3 0f 1e fb                  	endbr32
    2781: 83 ec 18                     	subl	$24, %esp
    2784: 68 d8 41 00 00               	pushl	$16856
    2789: e8 22 05 00 00               	calll	0x2cb0 <string_length>
    278e: 83 c0 01                     	addl	$1, %eax
    2791: 89 04 24                     	movl	%eax, (%esp)
    2794: e8 fc ff ff ff               	calll	0x2795 <phase_3+0x18>
    2799: c7 00 54 68 65 20            	movl	$543516756, (%eax)
    279f: c7 40 04 72 65 61 6c         	movl	$1818322290, 4(%eax)
    27a6: c7 40 08 20 66 72 69         	movl	$1769104928, 8(%eax)
    27ad: c7 40 0c 65 6e 64 73         	movl	$1935961701, 12(%eax)
    27b4: c7 40 10 20 77 65 72         	movl	$1919252256, 16(%eax)
    27bb: c7 40 14 65 20 74 68         	movl	$1752440933, 20(%eax)
    27c2: c7 40 18 65 20 74 72         	movl	$1920213093, 24(%eax)
    27c9: c7 40 1c 65 61 73 75         	movl	$1970495845, 28(%eax)
    27d0: c7 40 20 72 65 20 77         	movl	$1998611826, 32(%eax)
    27d7: c7 40 24 65 20 66 6f         	movl	$1868963941, 36(%eax)
    27de: c7 40 28 75 6e 64 20         	movl	$543452789, 40(%eax)
    27e5: c7 40 2c 61 6c 6f 6e         	movl	$1852796001, 44(%eax)
    27ec: c7 40 30 67 20 74 68         	movl	$1752440935, 48(%eax)
    27f3: c7 40 34 65 20 77 61         	movl	$1635197029, 52(%eax)
    27fa: 66 c7 40 38 79 2e            	movw	$11897, 56(%eax)
    2800: c6 40 3a 00                  	movb	$0, 58(%eax)
    2804: c6 40 32 68                  	movb	$104, 50(%eax)
    2808: 83 c4 08                     	addl	$8, %esp
    280b: 50                           	pushl	%eax
    280c: ff 74 24 1c                  	pushl	28(%esp)
    2810: e8 bd 04 00 00               	calll	0x2cd2 <strings_not_equal>
    2815: 83 c4 10                     	addl	$16, %esp
    2818: 85 c0                        	testl	%eax, %eax
    281a: 75 04                        	jne	0x2820 <phase_3+0xa3> <It always check jump to the given address(eg: 0x2820) iff strings not equal>
    281c: 83 c4 0c                     	addl	$12, %esp
    281f: c3                           	retl
    2820: e8 56 07 00 00               	calll	0x2f7b <explode_bomb>
    2825: eb f5                        	jmp	0x281c <phase_3+0x9f>

00002827 <phase_4>:
    2827: f3 0f 1e fb                  	endbr32
    282b: 57                           	pushl	%edi
    282c: 56                           	pushl	%esi
    282d: 53                           	pushl	%ebx
    282e: 8b 7c 24 10                  	movl	16(%esp), %edi
    2832: 83 ec 0c                     	subl	$12, %esp
    2835: 57                           	pushl	%edi
    2836: e8 75 04 00 00               	calll	0x2cb0 <string_length>
    283b: 83 c0 01                     	addl	$1, %eax
    283e: 89 04 24                     	movl	%eax, (%esp)
    2841: e8 fc ff ff ff               	calll	0x2842 <phase_4+0x1b>
    2846: 89 c6                        	movl	%eax, %esi
    2848: 83 c4 10                     	addl	$16, %esp
    284b: f6 07 df                     	testb	$-33, (%edi)
    284e: 74 5b                        	je	0x28ab <phase_4+0x84>
    2850: 89 fb                        	movl	%edi, %ebx
    2852: 83 c3 01                     	addl	$1, %ebx
    2855: f6 03 df                     	testb	$-33, (%ebx)
    2858: 75 f8                        	jne	0x2852 <phase_4+0x2b>
    285a: 39 df                        	cmpl	%ebx, %edi
    285c: 74 4f                        	je	0x28ad <phase_4+0x86>
    285e: 89 f2                        	movl	%esi, %edx
    2860: 89 d8                        	movl	%ebx, %eax
    2862: 83 e8 01                     	subl	$1, %eax
    2865: 0f b6 08                     	movzbl	(%eax), %ecx
    2868: 88 0a                        	movb	%cl, (%edx)
    286a: 83 c2 01                     	addl	$1, %edx
    286d: 39 c7                        	cmpl	%eax, %edi
    286f: 75 f1                        	jne	0x2862 <phase_4+0x3b>
    2871: 89 df                        	movl	%ebx, %edi
    2873: 29 c7                        	subl	%eax, %edi
    2875: 89 f8                        	movl	%edi, %eax
    2877: 01 f0                        	addl	%esi, %eax
    2879: 0f b6 13                     	movzbl	(%ebx), %edx
    287c: 84 d2                        	testb	%dl, %dl
    287e: 74 0f                        	je	0x288f <phase_4+0x68>
    2880: 88 10                        	movb	%dl, (%eax)
    2882: 83 c0 01                     	addl	$1, %eax
    2885: 83 c3 01                     	addl	$1, %ebx
    2888: 0f b6 13                     	movzbl	(%ebx), %edx
    288b: 84 d2                        	testb	%dl, %dl
    288d: 75 f1                        	jne	0x2880 <phase_4+0x59>
    288f: c6 00 00                     	movb	$0, (%eax)
    2892: 83 ec 08                     	subl	$8, %esp
    2895: 56                           	pushl	%esi
    2896: 68 98 41 00 00               	pushl	$16792
    289b: e8 32 04 00 00               	calll	0x2cd2 <strings_not_equal>
    28a0: 83 c4 10                     	addl	$16, %esp
    28a3: 85 c0                        	testl	%eax, %eax
    28a5: 75 0d                        	jne	0x28b4 <phase_4+0x8d>
    28a7: 5b                           	popl	%ebx
    28a8: 5e                           	popl	%esi
    28a9: 5f                           	popl	%edi
    28aa: c3                           	retl
    28ab: 89 fb                        	movl	%edi, %ebx
    28ad: e8 c9 06 00 00               	calll	0x2f7b <explode_bomb>
    28b2: eb aa                        	jmp	0x285e <phase_4+0x37>
    28b4: e8 c2 06 00 00               	calll	0x2f7b <explode_bomb>
    28b9: eb ec                        	jmp	0x28a7 <phase_4+0x80>

000028bb <phase_5>:
    28bb: f3 0f 1e fb                  	endbr32
    28bf: 53                           	pushl	%ebx
    28c0: 83 ec 1c                     	subl	$28, %esp
    28c3: 65 a1 14 00 00 00            	movl	%gs:20, %eax
    28c9: 89 44 24 10                  	movl	%eax, 16(%esp)
    28cd: 31 c0                        	xorl	%eax, %eax
    28cf: 8d 44 24 0c                  	leal	12(%esp), %eax
    28d3: 50                           	pushl	%eax
    28d4: 68 e4 43 00 00               	pushl	$17380
    28d9: ff 74 24 2c                  	pushl	44(%esp)
    28dd: e8 fc ff ff ff               	calll	0x28de <phase_5+0x23>
    28e2: 83 c4 10                     	addl	$16, %esp
    28e5: 83 f8 01                     	cmpl	$1, %eax
    28e8: 75 38                        	jne	0x2922 <phase_5+0x67>
    28ea: 8b 5c 24 08                  	movl	8(%esp), %ebx
    28ee: 85 db                        	testl	%ebx, %ebx
    28f0: 7e 37                        	jle	0x2929 <phase_5+0x6e>
    28f2: b8 01 00 00 00               	movl	$1, %eax
    28f7: ba 00 00 00 00               	movl	$0, %edx
    28fc: 8d 0c 40                     	leal	(%eax,%eax,2), %ecx
    28ff: 8d 04 81                     	leal	(%ecx,%eax,4), %eax
    2902: 83 c2 01                     	addl	$1, %edx
    2905: 39 da                        	cmpl	%ebx, %edx
    2907: 75 f3                        	jne	0x28fc <phase_5+0x41>
    2909: 3d 61 09 00 00               	cmpl	$2401, %eax
    290e: 75 19                        	jne	0x2929 <phase_5+0x6e>
    2910: 8b 44 24 0c                  	movl	12(%esp), %eax
    2914: 65 33 05 14 00 00 00         	xorl	%gs:20, %eax
    291b: 75 13                        	jne	0x2930 <phase_5+0x75>
    291d: 83 c4 18                     	addl	$24, %esp
    2920: 5b                           	popl	%ebx
    2921: c3                           	retl
    2922: e8 54 06 00 00               	calll	0x2f7b <explode_bomb>
    2927: eb c1                        	jmp	0x28ea <phase_5+0x2f>
    2929: e8 4d 06 00 00               	calll	0x2f7b <explode_bomb>
    292e: eb e0                        	jmp	0x2910 <phase_5+0x55>
    2930: e8 fc ff ff ff               	calll	0x2931 <phase_5+0x76>

00002935 <func6>:
    2935: f3 0f 1e fb                  	endbr32
    2939: 57                           	pushl	%edi
    293a: 56                           	pushl	%esi
    293b: 53                           	pushl	%ebx
    293c: 8b 5c 24 10                  	movl	16(%esp), %ebx
    2940: 8b 7c 24 14                  	movl	20(%esp), %edi
    2944: b8 00 00 00 00               	movl	$0, %eax
    2949: 85 db                        	testl	%ebx, %ebx
    294b: 7e 29                        	jle	0x2976 <func6+0x41>
    294d: 89 f8                        	movl	%edi, %eax
    294f: 83 fb 01                     	cmpl	$1, %ebx
    2952: 74 22                        	je	0x2976 <func6+0x41>
    2954: 83 ec 08                     	subl	$8, %esp
    2957: 57                           	pushl	%edi
    2958: 8d 43 ff                     	leal	-1(%ebx), %eax
    295b: 50                           	pushl	%eax
    295c: e8 d4 ff ff ff               	calll	0x2935 <func6>
    2961: 83 c4 08                     	addl	$8, %esp
    2964: 8d 34 38                     	leal	(%eax,%edi), %esi
    2967: 57                           	pushl	%edi
    2968: 83 eb 02                     	subl	$2, %ebx
    296b: 53                           	pushl	%ebx
    296c: e8 c4 ff ff ff               	calll	0x2935 <func6>
    2971: 83 c4 10                     	addl	$16, %esp
    2974: 01 f0                        	addl	%esi, %eax
    2976: 5b                           	popl	%ebx
    2977: 5e                           	popl	%esi
    2978: 5f                           	popl	%edi
    2979: c3                           	retl

0000297a <phase_6>:
    297a: f3 0f 1e fb                  	endbr32
    297e: 83 ec 1c                     	subl	$28, %esp
    2981: 65 a1 14 00 00 00            	movl	%gs:20, %eax
    2987: 89 44 24 0c                  	movl	%eax, 12(%esp)
    298b: 31 c0                        	xorl	%eax, %eax
    298d: 8d 44 24 04                  	leal	4(%esp), %eax
    2991: 50                           	pushl	%eax
    2992: 8d 44 24 0c                  	leal	12(%esp), %eax
    2996: 50                           	pushl	%eax
    2997: 68 e1 43 00 00               	pushl	$17377
    299c: ff 74 24 2c                  	pushl	44(%esp)
    29a0: e8 fc ff ff ff               	calll	0x29a1 <phase_6+0x27>
    29a5: 83 c4 10                     	addl	$16, %esp
    29a8: 83 f8 02                     	cmpl	$2, %eax
    29ab: 75 0c                        	jne	0x29b9 <phase_6+0x3f>
    29ad: 8b 44 24 04                  	movl	4(%esp), %eax
    29b1: 83 e8 02                     	subl	$2, %eax
    29b4: 83 f8 02                     	cmpl	$2, %eax
    29b7: 76 05                        	jbe	0x29be <phase_6+0x44>
    29b9: e8 bd 05 00 00               	calll	0x2f7b <explode_bomb>
    29be: 83 ec 08                     	subl	$8, %esp
    29c1: ff 74 24 0c                  	pushl	12(%esp)
    29c5: 6a 09                        	pushl	$9
    29c7: e8 69 ff ff ff               	calll	0x2935 <func6>
    29cc: 83 c4 10                     	addl	$16, %esp
    29cf: 39 44 24 08                  	cmpl	%eax, 8(%esp)
    29d3: 75 11                        	jne	0x29e6 <phase_6+0x6c>
    29d5: 8b 44 24 0c                  	movl	12(%esp), %eax
    29d9: 65 33 05 14 00 00 00         	xorl	%gs:20, %eax
    29e0: 75 0b                        	jne	0x29ed <phase_6+0x73>
    29e2: 83 c4 1c                     	addl	$28, %esp
    29e5: c3                           	retl
    29e6: e8 90 05 00 00               	calll	0x2f7b <explode_bomb>
    29eb: eb e8                        	jmp	0x29d5 <phase_6+0x5b>
    29ed: e8 fc ff ff ff               	calll	0x29ee <phase_6+0x74>

000029f2 <phase_7>:
    29f2: f3 0f 1e fb                  	endbr32
    29f6: 53                           	pushl	%ebx
    29f7: 83 ec 24                     	subl	$36, %esp
    29fa: 8b 5c 24 2c                  	movl	44(%esp), %ebx
    29fe: 65 a1 14 00 00 00            	movl	%gs:20, %eax
    2a04: 89 44 24 18                  	movl	%eax, 24(%esp)
    2a08: 31 c0                        	xorl	%eax, %eax
    2a0a: 53                           	pushl	%ebx
    2a0b: e8 a0 02 00 00               	calll	0x2cb0 <string_length>
    2a10: 83 c4 10                     	addl	$16, %esp
    2a13: 83 f8 06                     	cmpl	$6, %eax
    2a16: 75 4f                        	jne	0x2a67 <phase_7+0x75>
    2a18: b8 00 00 00 00               	movl	$0, %eax
    2a1d: 0f b6 14 03                  	movzbl	(%ebx,%eax), %edx
    2a21: 83 e2 0f                     	andl	$15, %edx
    2a24: 0f b6 92 14 42 00 00         	movzbl	16916(%edx), %edx
    2a2b: 88 54 04 05                  	movb	%dl, 5(%esp,%eax)
    2a2f: 83 c0 01                     	addl	$1, %eax
    2a32: 83 f8 06                     	cmpl	$6, %eax
    2a35: 75 e6                        	jne	0x2a1d <phase_7+0x2b>
    2a37: c6 44 24 0b 00               	movb	$0, 11(%esp)
    2a3c: 83 ec 08                     	subl	$8, %esp
    2a3f: 68 8f 41 00 00               	pushl	$16783
    2a44: 8d 44 24 11                  	leal	17(%esp), %eax
    2a48: 50                           	pushl	%eax
    2a49: e8 84 02 00 00               	calll	0x2cd2 <strings_not_equal>
    2a4e: 83 c4 10                     	addl	$16, %esp
    2a51: 85 c0                        	testl	%eax, %eax
    2a53: 75 19                        	jne	0x2a6e <phase_7+0x7c>
    2a55: 8b 44 24 0c                  	movl	12(%esp), %eax
    2a59: 65 33 05 14 00 00 00         	xorl	%gs:20, %eax
    2a60: 75 13                        	jne	0x2a75 <phase_7+0x83>
    2a62: 83 c4 18                     	addl	$24, %esp
    2a65: 5b                           	popl	%ebx
    2a66: c3                           	retl
    2a67: e8 0f 05 00 00               	calll	0x2f7b <explode_bomb>
    2a6c: eb aa                        	jmp	0x2a18 <phase_7+0x26>
    2a6e: e8 08 05 00 00               	calll	0x2f7b <explode_bomb>
    2a73: eb e0                        	jmp	0x2a55 <phase_7+0x63>
    2a75: e8 fc ff ff ff               	calll	0x2a76 <phase_7+0x84>

00002a7a <phase_8>:
    2a7a: f3 0f 1e fb                  	endbr32
    2a7e: 55                           	pushl	%ebp
    2a7f: 57                           	pushl	%edi
    2a80: 56                           	pushl	%esi
    2a81: 53                           	pushl	%ebx
    2a82: 83 ec 64                     	subl	$100, %esp
    2a85: 65 a1 14 00 00 00            	movl	%gs:20, %eax
    2a8b: 89 44 24 54                  	movl	%eax, 84(%esp)
    2a8f: 31 c0                        	xorl	%eax, %eax
    2a91: 8d 44 24 24                  	leal	36(%esp), %eax
    2a95: 50                           	pushl	%eax
    2a96: ff 74 24 7c                  	pushl	124(%esp)
    2a9a: e8 1f 05 00 00               	calll	0x2fbe <read_six_numbers>
    2a9f: 8d 6c 24 30                  	leal	48(%esp), %ebp
    2aa3: 83 c4 10                     	addl	$16, %esp
    2aa6: c7 44 24 0c 00 00 00 00      	movl	$0, 12(%esp)
    2aae: 8d 7c 24 34                  	leal	52(%esp), %edi
    2ab2: eb 1f                        	jmp	0x2ad3 <phase_8+0x59>
    2ab4: e8 c2 04 00 00               	calll	0x2f7b <explode_bomb>
    2ab9: eb 25                        	jmp	0x2ae0 <phase_8+0x66>
    2abb: 83 c3 04                     	addl	$4, %ebx
    2abe: 39 df                        	cmpl	%ebx, %edi
    2ac0: 74 0e                        	je	0x2ad0 <phase_8+0x56>
    2ac2: 8b 03                        	movl	(%ebx), %eax
    2ac4: 39 46 fc                     	cmpl	%eax, -4(%esi)
    2ac7: 75 f2                        	jne	0x2abb <phase_8+0x41>
    2ac9: e8 ad 04 00 00               	calll	0x2f7b <explode_bomb>
    2ace: eb eb                        	jmp	0x2abb <phase_8+0x41>
    2ad0: 83 c5 04                     	addl	$4, %ebp
    2ad3: 89 ee                        	movl	%ebp, %esi
    2ad5: 8b 45 fc                     	movl	-4(%ebp), %eax
    2ad8: 83 e8 01                     	subl	$1, %eax
    2adb: 83 f8 05                     	cmpl	$5, %eax
    2ade: 77 d4                        	ja	0x2ab4 <phase_8+0x3a>
    2ae0: 83 44 24 0c 01               	addl	$1, 12(%esp)
    2ae5: 8b 44 24 0c                  	movl	12(%esp), %eax
    2ae9: 83 f8 05                     	cmpl	$5, %eax
    2aec: 7f 04                        	jg	0x2af2 <phase_8+0x78>
    2aee: 89 eb                        	movl	%ebp, %ebx
    2af0: eb d0                        	jmp	0x2ac2 <phase_8+0x48>
    2af2: bb 00 00 00 00               	movl	$0, %ebx
    2af7: 89 de                        	movl	%ebx, %esi
    2af9: 8b 4c 9c 1c                  	movl	28(%esp,%ebx,4), %ecx
    2afd: b8 01 00 00 00               	movl	$1, %eax
    2b02: ba d4 70 00 00               	movl	$28884, %edx
    2b07: 83 f9 01                     	cmpl	$1, %ecx
    2b0a: 7e 0a                        	jle	0x2b16 <phase_8+0x9c>
    2b0c: 8b 52 08                     	movl	8(%edx), %edx
    2b0f: 83 c0 01                     	addl	$1, %eax
    2b12: 39 c8                        	cmpl	%ecx, %eax
    2b14: 75 f6                        	jne	0x2b0c <phase_8+0x92>
    2b16: 89 54 b4 34                  	movl	%edx, 52(%esp,%esi,4)
    2b1a: 83 c3 01                     	addl	$1, %ebx
    2b1d: 83 fb 06                     	cmpl	$6, %ebx
    2b20: 75 d5                        	jne	0x2af7 <phase_8+0x7d>
    2b22: 8b 5c 24 34                  	movl	52(%esp), %ebx
    2b26: 8b 44 24 38                  	movl	56(%esp), %eax
    2b2a: 89 43 08                     	movl	%eax, 8(%ebx)
    2b2d: 8b 54 24 3c                  	movl	60(%esp), %edx
    2b31: 89 50 08                     	movl	%edx, 8(%eax)
    2b34: 8b 44 24 40                  	movl	64(%esp), %eax
    2b38: 89 42 08                     	movl	%eax, 8(%edx)
    2b3b: 8b 54 24 44                  	movl	68(%esp), %edx
    2b3f: 89 50 08                     	movl	%edx, 8(%eax)
    2b42: 8b 44 24 48                  	movl	72(%esp), %eax
    2b46: 89 42 08                     	movl	%eax, 8(%edx)
    2b49: c7 40 08 00 00 00 00         	movl	$0, 8(%eax)
    2b50: be 05 00 00 00               	movl	$5, %esi
    2b55: eb 08                        	jmp	0x2b5f <phase_8+0xe5>
    2b57: 8b 5b 08                     	movl	8(%ebx), %ebx
    2b5a: 83 ee 01                     	subl	$1, %esi
    2b5d: 74 10                        	je	0x2b6f <phase_8+0xf5>
    2b5f: 8b 43 08                     	movl	8(%ebx), %eax
    2b62: 8b 00                        	movl	(%eax), %eax
    2b64: 39 03                        	cmpl	%eax, (%ebx)
    2b66: 7d ef                        	jge	0x2b57 <phase_8+0xdd>
    2b68: e8 0e 04 00 00               	calll	0x2f7b <explode_bomb>
    2b6d: eb e8                        	jmp	0x2b57 <phase_8+0xdd>
    2b6f: 8b 44 24 4c                  	movl	76(%esp), %eax
    2b73: 65 33 05 14 00 00 00         	xorl	%gs:20, %eax
    2b7a: 75 08                        	jne	0x2b84 <phase_8+0x10a>
    2b7c: 83 c4 5c                     	addl	$92, %esp
    2b7f: 5b                           	popl	%ebx
    2b80: 5e                           	popl	%esi
    2b81: 5f                           	popl	%edi
    2b82: 5d                           	popl	%ebp
    2b83: c3                           	retl
    2b84: e8 fc ff ff ff               	calll	0x2b85 <phase_8+0x10b>

00002b89 <fun9>:
    2b89: f3 0f 1e fb                  	endbr32
    2b8d: 53                           	pushl	%ebx
    2b8e: 83 ec 08                     	subl	$8, %esp
    2b91: 8b 54 24 10                  	movl	16(%esp), %edx
    2b95: 8b 4c 24 14                  	movl	20(%esp), %ecx
    2b99: 85 d2                        	testl	%edx, %edx
    2b9b: 74 3a                        	je	0x2bd7 <fun9+0x4e>
    2b9d: 8b 1a                        	movl	(%edx), %ebx
    2b9f: 39 cb                        	cmpl	%ecx, %ebx
    2ba1: 7f 0c                        	jg	0x2baf <fun9+0x26>
    2ba3: b8 00 00 00 00               	movl	$0, %eax
    2ba8: 75 18                        	jne	0x2bc2 <fun9+0x39>
    2baa: 83 c4 08                     	addl	$8, %esp
    2bad: 5b                           	popl	%ebx
    2bae: c3                           	retl
    2baf: 83 ec 08                     	subl	$8, %esp
    2bb2: 51                           	pushl	%ecx
    2bb3: ff 72 04                     	pushl	4(%edx)
    2bb6: e8 ce ff ff ff               	calll	0x2b89 <fun9>
    2bbb: 83 c4 10                     	addl	$16, %esp
    2bbe: 01 c0                        	addl	%eax, %eax
    2bc0: eb e8                        	jmp	0x2baa <fun9+0x21>
    2bc2: 83 ec 08                     	subl	$8, %esp
    2bc5: 51                           	pushl	%ecx
    2bc6: ff 72 08                     	pushl	8(%edx)
    2bc9: e8 bb ff ff ff               	calll	0x2b89 <fun9>
    2bce: 83 c4 10                     	addl	$16, %esp
    2bd1: 8d 44 00 01                  	leal	1(%eax,%eax), %eax
    2bd5: eb d3                        	jmp	0x2baa <fun9+0x21>
    2bd7: b8 ff ff ff ff               	movl	$4294967295, %eax
    2bdc: eb cc                        	jmp	0x2baa <fun9+0x21>

00002bde <phase_9>:
    2bde: f3 0f 1e fb                  	endbr32
    2be2: 53                           	pushl	%ebx
    2be3: 83 ec 0c                     	subl	$12, %esp
    2be6: 6a 0a                        	pushl	$10
    2be8: 6a 00                        	pushl	$0
    2bea: ff 74 24 1c                  	pushl	28(%esp)
    2bee: e8 fc ff ff ff               	calll	0x2bef <phase_9+0x11>
    2bf3: 89 c3                        	movl	%eax, %ebx
    2bf5: 8d 40 ff                     	leal	-1(%eax), %eax
    2bf8: 83 c4 10                     	addl	$16, %esp
    2bfb: 3d e8 03 00 00               	cmpl	$1000, %eax
    2c00: 77 1b                        	ja	0x2c1d <phase_9+0x3f>
    2c02: 83 ec 08                     	subl	$8, %esp
    2c05: 53                           	pushl	%ebx
    2c06: 68 20 70 00 00               	pushl	$28704
    2c0b: e8 79 ff ff ff               	calll	0x2b89 <fun9>
    2c10: 83 c4 10                     	addl	$16, %esp
    2c13: 83 f8 06                     	cmpl	$6, %eax
    2c16: 75 0c                        	jne	0x2c24 <phase_9+0x46>
    2c18: 83 c4 08                     	addl	$8, %esp
    2c1b: 5b                           	popl	%ebx
    2c1c: c3                           	retl
    2c1d: e8 59 03 00 00               	calll	0x2f7b <explode_bomb>
    2c22: eb de                        	jmp	0x2c02 <phase_9+0x24>
    2c24: e8 52 03 00 00               	calll	0x2f7b <explode_bomb>
    2c29: eb ed                        	jmp	0x2c18 <phase_9+0x3a>

00002c2b <sig_handler>:
    2c2b: f3 0f 1e fb                  	endbr32
    2c2f: 56                           	pushl	%esi
    2c30: 5e                           	popl	%esi
    2c31: 83 ec 18                     	subl	$24, %esp
    2c34: 68 24 42 00 00               	pushl	$16932
    2c39: e8 fc ff ff ff               	calll	0x2c3a <sig_handler+0xf>
    2c3e: c7 04 24 03 00 00 00         	movl	$3, (%esp)
    2c45: e8 fc ff ff ff               	calll	0x2c46 <sig_handler+0x1b>
    2c4a: 83 c4 08                     	addl	$8, %esp
    2c4d: 68 5d 43 00 00               	pushl	$17245
    2c52: 6a 01                        	pushl	$1
    2c54: e8 fc ff ff ff               	calll	0x2c55 <sig_handler+0x2a>
    2c59: 83 c4 04                     	addl	$4, %esp
    2c5c: ff 35 00 00 00 00            	pushl	0
    2c62: e8 fc ff ff ff               	calll	0x2c63 <sig_handler+0x38>
    2c67: c7 04 24 01 00 00 00         	movl	$1, (%esp)
    2c6e: e8 fc ff ff ff               	calll	0x2c6f <sig_handler+0x44>
    2c73: c7 04 24 65 43 00 00         	movl	$17253, (%esp)
    2c7a: e8 fc ff ff ff               	calll	0x2c7b <sig_handler+0x50>
    2c7f: c7 04 24 10 00 00 00         	movl	$16, (%esp)
    2c86: e8 fc ff ff ff               	calll	0x2c87 <sig_handler+0x5c>

00002c8b <invalid_phase>:
    2c8b: f3 0f 1e fb                  	endbr32
    2c8f: 56                           	pushl	%esi
    2c90: 5e                           	popl	%esi
    2c91: 83 ec 10                     	subl	$16, %esp
    2c94: ff 74 24 14                  	pushl	20(%esp)
    2c98: 68 6d 43 00 00               	pushl	$17261
    2c9d: 6a 01                        	pushl	$1
    2c9f: e8 fc ff ff ff               	calll	0x2ca0 <invalid_phase+0x15>
    2ca4: c7 04 24 08 00 00 00         	movl	$8, (%esp)
    2cab: e8 fc ff ff ff               	calll	0x2cac <invalid_phase+0x21>

00002cb0 <string_length>:
    2cb0: f3 0f 1e fb                  	endbr32
    2cb4: 8b 54 24 04                  	movl	4(%esp), %edx
    2cb8: 80 3a 00                     	cmpb	$0, (%edx)
    2cbb: 74 0f                        	je	0x2ccc <string_length+0x1c>
    2cbd: b8 00 00 00 00               	movl	$0, %eax
    2cc2: 83 c0 01                     	addl	$1, %eax
    2cc5: 80 3c 02 00                  	cmpb	$0, (%edx,%eax)
    2cc9: 75 f7                        	jne	0x2cc2 <string_length+0x12>
    2ccb: c3                           	retl
    2ccc: b8 00 00 00 00               	movl	$0, %eax
    2cd1: c3                           	retl

00002cd2 <strings_not_equal>:
    2cd2: f3 0f 1e fb                  	endbr32
    2cd6: 57                           	pushl	%edi
    2cd7: 56                           	pushl	%esi
    2cd8: 53                           	pushl	%ebx
    2cd9: 8b 5c 24 10                  	movl	16(%esp), %ebx
    2cdd: 8b 74 24 14                  	movl	20(%esp), %esi
    2ce1: 53                           	pushl	%ebx
    2ce2: e8 c9 ff ff ff               	calll	0x2cb0 <string_length>
    2ce7: 89 c7                        	movl	%eax, %edi
    2ce9: 89 34 24                     	movl	%esi, (%esp)
    2cec: e8 bf ff ff ff               	calll	0x2cb0 <string_length>
    2cf1: 83 c4 04                     	addl	$4, %esp
    2cf4: 89 c2                        	movl	%eax, %edx
    2cf6: b8 01 00 00 00               	movl	$1, %eax
    2cfb: 39 d7                        	cmpl	%edx, %edi
    2cfd: 75 2b                        	jne	0x2d2a <strings_not_equal+0x58>
    2cff: 0f b6 03                     	movzbl	(%ebx), %eax
    2d02: 84 c0                        	testb	%al, %al
    2d04: 74 18                        	je	0x2d1e <strings_not_equal+0x4c>
    2d06: 38 06                        	cmpb	%al, (%esi)
    2d08: 75 1b                        	jne	0x2d25 <strings_not_equal+0x53>
    2d0a: 83 c3 01                     	addl	$1, %ebx
    2d0d: 83 c6 01                     	addl	$1, %esi
    2d10: 0f b6 03                     	movzbl	(%ebx), %eax
    2d13: 84 c0                        	testb	%al, %al
    2d15: 75 ef                        	jne	0x2d06 <strings_not_equal+0x34>
    2d17: b8 00 00 00 00               	movl	$0, %eax
    2d1c: eb 0c                        	jmp	0x2d2a <strings_not_equal+0x58>
    2d1e: b8 00 00 00 00               	movl	$0, %eax
    2d23: eb 05                        	jmp	0x2d2a <strings_not_equal+0x58>
    2d25: b8 01 00 00 00               	movl	$1, %eax
    2d2a: 5b                           	popl	%ebx
    2d2b: 5e                           	popl	%esi
    2d2c: 5f                           	popl	%edi
    2d2d: c3                           	retl

00002d2e <initialize_bomb>:
    2d2e: f3 0f 1e fb                  	endbr32
    2d32: 56                           	pushl	%esi
    2d33: 53                           	pushl	%ebx
    2d34: 81 ec 00 10 00 00            	subl	$4096, %esp
    2d3a: 83 0c 24 00                  	orl	$0, (%esp)
    2d3e: 81 ec 00 10 00 00            	subl	$4096, %esp
    2d44: 83 0c 24 00                  	orl	$0, (%esp)
    2d48: 83 ec 5c                     	subl	$92, %esp
    2d4b: 65 a1 14 00 00 00            	movl	%gs:20, %eax
    2d51: 89 84 24 54 20 00 00         	movl	%eax, 8276(%esp)
    2d58: 31 c0                        	xorl	%eax, %eax
    2d5a: 68 2b 2c 00 00               	pushl	$11307
    2d5f: 6a 02                        	pushl	$2
    2d61: e8 fc ff ff ff               	calll	0x2d62 <initialize_bomb+0x34>
    2d66: 83 c4 08                     	addl	$8, %esp
    2d69: 6a 40                        	pushl	$64
    2d6b: 8d 44 24 18                  	leal	24(%esp), %eax
    2d6f: 50                           	pushl	%eax
    2d70: e8 fc ff ff ff               	calll	0x2d71 <initialize_bomb+0x43>
    2d75: 83 c4 10                     	addl	$16, %esp
    2d78: 85 c0                        	testl	%eax, %eax
    2d7a: 75 47                        	jne	0x2dc3 <initialize_bomb+0x95>
    2d7c: 89 c3                        	movl	%eax, %ebx
    2d7e: a1 40 75 00 00               	movl	30016, %eax
    2d83: 8d 74 24 0c                  	leal	12(%esp), %esi
    2d87: 85 c0                        	testl	%eax, %eax
    2d89: 74 1f                        	je	0x2daa <initialize_bomb+0x7c>
    2d8b: 83 ec 08                     	subl	$8, %esp
    2d8e: 56                           	pushl	%esi
    2d8f: 50                           	pushl	%eax
    2d90: e8 fc ff ff ff               	calll	0x2d91 <initialize_bomb+0x63>
    2d95: 83 c4 10                     	addl	$16, %esp
    2d98: 85 c0                        	testl	%eax, %eax
    2d9a: 74 60                        	je	0x2dfc <initialize_bomb+0xce>
    2d9c: 83 c3 01                     	addl	$1, %ebx
    2d9f: 8b 04 9d 40 75 00 00         	movl	30016(,%ebx,4), %eax
    2da6: 85 c0                        	testl	%eax, %eax
    2da8: 75 e1                        	jne	0x2d8b <initialize_bomb+0x5d>
    2daa: 83 ec 0c                     	subl	$12, %esp
    2dad: 68 94 42 00 00               	pushl	$17044
    2db2: e8 fc ff ff ff               	calll	0x2db3 <initialize_bomb+0x85>
    2db7: c7 04 24 08 00 00 00         	movl	$8, (%esp)
    2dbe: e8 fc ff ff ff               	calll	0x2dbf <initialize_bomb+0x91>
    2dc3: 83 ec 0c                     	subl	$12, %esp
    2dc6: 68 5c 42 00 00               	pushl	$16988
    2dcb: e8 fc ff ff ff               	calll	0x2dcc <initialize_bomb+0x9e>
    2dd0: c7 04 24 08 00 00 00         	movl	$8, (%esp)
    2dd7: e8 fc ff ff ff               	calll	0x2dd8 <initialize_bomb+0xaa>
    2ddc: 83 ec 04                     	subl	$4, %esp
    2ddf: 8d 44 24 50                  	leal	80(%esp), %eax
    2de3: 50                           	pushl	%eax
    2de4: 68 7e 43 00 00               	pushl	$17278
    2de9: 6a 01                        	pushl	$1
    2deb: e8 fc ff ff ff               	calll	0x2dec <initialize_bomb+0xbe>
    2df0: c7 04 24 08 00 00 00         	movl	$8, (%esp)
    2df7: e8 fc ff ff ff               	calll	0x2df8 <initialize_bomb+0xca>
    2dfc: 83 ec 0c                     	subl	$12, %esp
    2dff: 8d 44 24 58                  	leal	88(%esp), %eax
    2e03: 50                           	pushl	%eax
    2e04: e8 19 0c 00 00               	calll	0x3a22 <init_driver>
    2e09: 83 c4 10                     	addl	$16, %esp
    2e0c: 85 c0                        	testl	%eax, %eax
    2e0e: 78 cc                        	js	0x2ddc <initialize_bomb+0xae>
    2e10: 8b 84 24 4c 20 00 00         	movl	8268(%esp), %eax
    2e17: 65 33 05 14 00 00 00         	xorl	%gs:20, %eax
    2e1e: 75 09                        	jne	0x2e29 <initialize_bomb+0xfb>
    2e20: 81 c4 54 20 00 00            	addl	$8276, %esp
    2e26: 5b                           	popl	%ebx
    2e27: 5e                           	popl	%esi
    2e28: c3                           	retl
    2e29: e8 fc ff ff ff               	calll	0x2e2a <initialize_bomb+0xfc>

00002e2e <initialize_bomb_solve>:
    2e2e: f3 0f 1e fb                  	endbr32
    2e32: c3                           	retl

00002e33 <blank_line>:
    2e33: f3 0f 1e fb                  	endbr32
    2e37: 56                           	pushl	%esi
    2e38: 53                           	pushl	%ebx
    2e39: 83 ec 04                     	subl	$4, %esp
    2e3c: 8b 74 24 10                  	movl	16(%esp), %esi
    2e40: 0f b6 1e                     	movzbl	(%esi), %ebx
    2e43: 84 db                        	testb	%bl, %bl
    2e45: 74 1b                        	je	0x2e62 <blank_line+0x2f>
    2e47: e8 fc ff ff ff               	calll	0x2e48 <blank_line+0x15>
    2e4c: 83 c6 01                     	addl	$1, %esi
    2e4f: 0f be db                     	movsbl	%bl, %ebx
    2e52: 8b 00                        	movl	(%eax), %eax
    2e54: f6 44 58 01 20               	testb	$32, 1(%eax,%ebx,2)
    2e59: 75 e5                        	jne	0x2e40 <blank_line+0xd>
    2e5b: b8 00 00 00 00               	movl	$0, %eax
    2e60: eb 05                        	jmp	0x2e67 <blank_line+0x34>
    2e62: b8 01 00 00 00               	movl	$1, %eax
    2e67: 83 c4 04                     	addl	$4, %esp
    2e6a: 5b                           	popl	%ebx
    2e6b: 5e                           	popl	%esi
    2e6c: c3                           	retl

00002e6d <skip>:
    2e6d: f3 0f 1e fb                  	endbr32
    2e71: 53                           	pushl	%ebx
    2e72: 83 ec 08                     	subl	$8, %esp
    2e75: 83 ec 04                     	subl	$4, %esp
    2e78: ff 35 70 77 00 00            	pushl	30576
    2e7e: 6a 55                        	pushl	$85
    2e80: 6b 05 6c 77 00 00 55         	imull	$85, 30572, %eax
    2e87: 05 80 77 00 00               	addl	$30592, %eax
    2e8c: 50                           	pushl	%eax
    2e8d: e8 fc ff ff ff               	calll	0x2e8e <skip+0x21>
    2e92: 89 c3                        	movl	%eax, %ebx
    2e94: 83 c4 10                     	addl	$16, %esp
    2e97: 85 c0                        	testl	%eax, %eax
    2e99: 74 10                        	je	0x2eab <skip+0x3e>
    2e9b: 83 ec 0c                     	subl	$12, %esp
    2e9e: 50                           	pushl	%eax
    2e9f: e8 8f ff ff ff               	calll	0x2e33 <blank_line>
    2ea4: 83 c4 10                     	addl	$16, %esp
    2ea7: 85 c0                        	testl	%eax, %eax
    2ea9: 75 ca                        	jne	0x2e75 <skip+0x8>
    2eab: 89 d8                        	movl	%ebx, %eax
    2ead: 83 c4 08                     	addl	$8, %esp
    2eb0: 5b                           	popl	%ebx
    2eb1: c3                           	retl

00002eb2 <send_msg>:
    2eb2: f3 0f 1e fb                  	endbr32
    2eb6: 53                           	pushl	%ebx
    2eb7: 8d 84 24 00 c0 ff ff         	leal	-16384(%esp), %eax
    2ebe: 81 ec 00 10 00 00            	subl	$4096, %esp
    2ec4: 83 0c 24 00                  	orl	$0, (%esp)
    2ec8: 39 c4                        	cmpl	%eax, %esp
    2eca: 75 f2                        	jne	0x2ebe <send_msg+0xc>
    2ecc: 83 ec 18                     	subl	$24, %esp
    2ecf: 65 a1 14 00 00 00            	movl	%gs:20, %eax
    2ed5: 89 84 24 0c 40 00 00         	movl	%eax, 16396(%esp)
    2edc: 31 c0                        	xorl	%eax, %eax
    2ede: 8b 0d 6c 77 00 00            	movl	30572, %ecx
    2ee4: 8d 41 ff                     	leal	-1(%ecx), %eax
    2ee7: 6b c0 55                     	imull	$85, %eax, %eax
    2eea: 05 80 77 00 00               	addl	$30592, %eax
    2eef: 83 bc 24 20 40 00 00 00      	cmpl	$0, 16416(%esp)
    2ef7: ba 98 43 00 00               	movl	$17304, %edx
    2efc: bb a0 43 00 00               	movl	$17312, %ebx
    2f01: 0f 44 d3                     	cmovel	%ebx, %edx
    2f04: 50                           	pushl	%eax
    2f05: 51                           	pushl	%ecx
    2f06: 52                           	pushl	%edx
    2f07: ff 35 20 75 00 00            	pushl	29984
    2f0d: 68 a9 43 00 00               	pushl	$17321
    2f12: 68 00 20 00 00               	pushl	$8192
    2f17: 6a 01                        	pushl	$1
    2f19: 8d 5c 24 28                  	leal	40(%esp), %ebx
    2f1d: 53                           	pushl	%ebx
    2f1e: e8 fc ff ff ff               	calll	0x2f1f <send_msg+0x6d>
    2f23: 83 c4 20                     	addl	$32, %esp
    2f26: 8d 84 24 0c 20 00 00         	leal	8204(%esp), %eax
    2f2d: 50                           	pushl	%eax
    2f2e: 6a 00                        	pushl	$0
    2f30: 53                           	pushl	%ebx
    2f31: 68 20 71 00 00               	pushl	$28960
    2f36: e8 cd 0c 00 00               	calll	0x3c08 <driver_post>
    2f3b: 83 c4 10                     	addl	$16, %esp
    2f3e: 85 c0                        	testl	%eax, %eax
    2f40: 78 18                        	js	0x2f5a <send_msg+0xa8>
    2f42: 8b 84 24 0c 40 00 00         	movl	16396(%esp), %eax
    2f49: 65 33 05 14 00 00 00         	xorl	%gs:20, %eax
    2f50: 75 24                        	jne	0x2f76 <send_msg+0xc4>
    2f52: 81 c4 18 40 00 00            	addl	$16408, %esp
    2f58: 5b                           	popl	%ebx
    2f59: c3                           	retl
    2f5a: 83 ec 0c                     	subl	$12, %esp
    2f5d: 8d 84 24 18 20 00 00         	leal	8216(%esp), %eax
    2f64: 50                           	pushl	%eax
    2f65: e8 fc ff ff ff               	calll	0x2f66 <send_msg+0xb4>
    2f6a: c7 04 24 00 00 00 00         	movl	$0, (%esp)
    2f71: e8 fc ff ff ff               	calll	0x2f72 <send_msg+0xc0>
    2f76: e8 fc ff ff ff               	calll	0x2f77 <send_msg+0xc5>

00002f7b <explode_bomb>:
    2f7b: f3 0f 1e fb                  	endbr32
    2f7f: 56                           	pushl	%esi
    2f80: 5e                           	popl	%esi
    2f81: 83 ec 18                     	subl	$24, %esp
    2f84: 68 b5 43 00 00               	pushl	$17333
    2f89: e8 fc ff ff ff               	calll	0x2f8a <explode_bomb+0xf>
    2f8e: c7 04 24 be 43 00 00         	movl	$17342, (%esp)
    2f95: e8 fc ff ff ff               	calll	0x2f96 <explode_bomb+0x1b>
    2f9a: c7 04 24 00 00 00 00         	movl	$0, (%esp)
    2fa1: e8 0c ff ff ff               	calll	0x2eb2 <send_msg>
    2fa6: c7 04 24 cc 42 00 00         	movl	$17100, (%esp)
    2fad: e8 fc ff ff ff               	calll	0x2fae <explode_bomb+0x33>
    2fb2: c7 04 24 08 00 00 00         	movl	$8, (%esp)
    2fb9: e8 fc ff ff ff               	calll	0x2fba <explode_bomb+0x3f>

00002fbe <read_six_numbers>:
    2fbe: f3 0f 1e fb                  	endbr32
    2fc2: 83 ec 0c                     	subl	$12, %esp
    2fc5: 8b 44 24 14                  	movl	20(%esp), %eax
    2fc9: 8d 50 14                     	leal	20(%eax), %edx
    2fcc: 52                           	pushl	%edx
    2fcd: 8d 50 10                     	leal	16(%eax), %edx
    2fd0: 52                           	pushl	%edx
    2fd1: 8d 50 0c                     	leal	12(%eax), %edx
    2fd4: 52                           	pushl	%edx
    2fd5: 8d 50 08                     	leal	8(%eax), %edx
    2fd8: 52                           	pushl	%edx
    2fd9: 8d 50 04                     	leal	4(%eax), %edx
    2fdc: 52                           	pushl	%edx
    2fdd: 50                           	pushl	%eax
    2fde: 68 d5 43 00 00               	pushl	$17365
    2fe3: ff 74 24 2c                  	pushl	44(%esp)
    2fe7: e8 fc ff ff ff               	calll	0x2fe8 <read_six_numbers+0x2a>
    2fec: 83 c4 20                     	addl	$32, %esp
    2fef: 83 f8 05                     	cmpl	$5, %eax
    2ff2: 7e 04                        	jle	0x2ff8 <read_six_numbers+0x3a>
    2ff4: 83 c4 0c                     	addl	$12, %esp
    2ff7: c3                           	retl
    2ff8: e8 7e ff ff ff               	calll	0x2f7b <explode_bomb>

00002ffd <read_line>:
    2ffd: f3 0f 1e fb                  	endbr32
    3001: 57                           	pushl	%edi
    3002: 56                           	pushl	%esi
    3003: 53                           	pushl	%ebx
    3004: e8 64 fe ff ff               	calll	0x2e6d <skip>
    3009: 85 c0                        	testl	%eax, %eax
    300b: 74 45                        	je	0x3052 <read_line+0x55>
    300d: 8b 15 6c 77 00 00            	movl	30572, %edx
    3013: 6b da 55                     	imull	$85, %edx, %ebx
    3016: 81 c3 80 77 00 00            	addl	$30592, %ebx
    301c: b9 ff ff ff ff               	movl	$4294967295, %ecx
    3021: b8 00 00 00 00               	movl	$0, %eax
    3026: 89 df                        	movl	%ebx, %edi
    3028: f2 ae                        	repne		scasb	%es:(%edi), %al
    302a: f7 d1                        	notl	%ecx
    302c: 83 e9 01                     	subl	$1, %ecx
    302f: 83 f9 53                     	cmpl	$83, %ecx
    3032: 0f 8f 8e 00 00 00            	jg	0x30c6 <read_line+0xc9>
    3038: 6b c2 55                     	imull	$85, %edx, %eax
    303b: c6 84 01 7f 77 00 00 00      	movb	$0, 30591(%ecx,%eax)
    3043: 83 c2 01                     	addl	$1, %edx
    3046: 89 15 6c 77 00 00            	movl	%edx, 30572
    304c: 89 d8                        	movl	%ebx, %eax
    304e: 5b                           	popl	%ebx
    304f: 5e                           	popl	%esi
    3050: 5f                           	popl	%edi
    3051: c3                           	retl
    3052: a1 00 00 00 00               	movl	0, %eax
    3057: 39 05 70 77 00 00            	cmpl	%eax, 30576
    305d: 74 1e                        	je	0x307d <read_line+0x80>
    305f: 83 ec 0c                     	subl	$12, %esp
    3062: 68 05 44 00 00               	pushl	$17413
    3067: e8 fc ff ff ff               	calll	0x3068 <read_line+0x6b>
    306c: 83 c4 10                     	addl	$16, %esp
    306f: 85 c0                        	testl	%eax, %eax
    3071: 74 23                        	je	0x3096 <read_line+0x99>
    3073: 83 ec 0c                     	subl	$12, %esp
    3076: 6a 00                        	pushl	$0
    3078: e8 fc ff ff ff               	calll	0x3079 <read_line+0x7c>
    307d: 83 ec 0c                     	subl	$12, %esp
    3080: 68 e7 43 00 00               	pushl	$17383
    3085: e8 fc ff ff ff               	calll	0x3086 <read_line+0x89>
    308a: c7 04 24 08 00 00 00         	movl	$8, (%esp)
    3091: e8 fc ff ff ff               	calll	0x3092 <read_line+0x95>
    3096: a1 00 00 00 00               	movl	0, %eax
    309b: a3 70 77 00 00               	movl	%eax, 30576
    30a0: e8 c8 fd ff ff               	calll	0x2e6d <skip>
    30a5: 85 c0                        	testl	%eax, %eax
    30a7: 0f 85 60 ff ff ff            	jne	0x300d <read_line+0x10>
    30ad: 83 ec 0c                     	subl	$12, %esp
    30b0: 68 e7 43 00 00               	pushl	$17383
    30b5: e8 fc ff ff ff               	calll	0x30b6 <read_line+0xb9>
    30ba: c7 04 24 00 00 00 00         	movl	$0, (%esp)
    30c1: e8 fc ff ff ff               	calll	0x30c2 <read_line+0xc5>
    30c6: 83 ec 0c                     	subl	$12, %esp
    30c9: 68 10 44 00 00               	pushl	$17424
    30ce: e8 fc ff ff ff               	calll	0x30cf <read_line+0xd2>
    30d3: a1 6c 77 00 00               	movl	30572, %eax
    30d8: 8d 50 01                     	leal	1(%eax), %edx
    30db: 89 15 6c 77 00 00            	movl	%edx, 30572
    30e1: 6b c0 55                     	imull	$85, %eax, %eax
    30e4: 05 80 77 00 00               	addl	$30592, %eax
    30e9: ba 2b 44 00 00               	movl	$17451, %edx
    30ee: b9 04 00 00 00               	movl	$4, %ecx
    30f3: 89 c7                        	movl	%eax, %edi
    30f5: 89 d6                        	movl	%edx, %esi
    30f7: f3 a5                        	rep		movsl	(%esi), %es:(%edi)
    30f9: e8 7d fe ff ff               	calll	0x2f7b <explode_bomb>

000030fe <phase_defused>:
    30fe: f3 0f 1e fb                  	endbr32
    3102: 83 ec 18                     	subl	$24, %esp
    3105: 6a 01                        	pushl	$1
    3107: e8 a6 fd ff ff               	calll	0x2eb2 <send_msg>
    310c: 83 c4 10                     	addl	$16, %esp
    310f: 83 3d 6c 77 00 00 09         	cmpl	$9, 30572
    3116: 74 04                        	je	0x311c <phase_defused+0x1e>
    3118: 83 c4 0c                     	addl	$12, %esp
    311b: c3                           	retl
    311c: 83 ec 0c                     	subl	$12, %esp
    311f: 68 f0 42 00 00               	pushl	$17136
    3124: e8 fc ff ff ff               	calll	0x3125 <phase_defused+0x27>
    3129: c7 04 24 1c 43 00 00         	movl	$17180, (%esp)
    3130: e8 fc ff ff ff               	calll	0x3131 <phase_defused+0x33>
    3135: 83 c4 10                     	addl	$16, %esp
    3138: eb de                        	jmp	0x3118 <phase_defused+0x1a>

0000313a <sigalrm_handler>:
    313a: f3 0f 1e fb                  	endbr32
    313e: 56                           	pushl	%esi
    313f: 5e                           	popl	%esi
    3140: 83 ec 0c                     	subl	$12, %esp
    3143: 6a 00                        	pushl	$0
    3145: 68 b4 46 00 00               	pushl	$18100
    314a: 6a 01                        	pushl	$1
    314c: ff 35 00 00 00 00            	pushl	0
    3152: e8 fc ff ff ff               	calll	0x3153 <sigalrm_handler+0x19>
    3157: c7 04 24 01 00 00 00         	movl	$1, (%esp)
    315e: e8 fc ff ff ff               	calll	0x315f <sigalrm_handler+0x25>

00003163 <rio_readlineb>:
    3163: 55                           	pushl	%ebp
    3164: 57                           	pushl	%edi
    3165: 56                           	pushl	%esi
    3166: 53                           	pushl	%ebx
    3167: 83 ec 1c                     	subl	$28, %esp
    316a: 89 d6                        	movl	%edx, %esi
    316c: 83 f9 01                     	cmpl	$1, %ecx
    316f: 76 7e                        	jbe	0x31ef <rio_readlineb+0x8c>
    3171: 89 c3                        	movl	%eax, %ebx
    3173: 8d 44 0a ff                  	leal	-1(%edx,%ecx), %eax
    3177: 89 44 24 0c                  	movl	%eax, 12(%esp)
    317b: bd 01 00 00 00               	movl	$1, %ebp
    3180: 8d 7b 0c                     	leal	12(%ebx), %edi
    3183: eb 4f                        	jmp	0x31d4 <rio_readlineb+0x71>
    3185: e8 fc ff ff ff               	calll	0x3186 <rio_readlineb+0x23>
    318a: 83 38 04                     	cmpl	$4, (%eax)
    318d: 75 4e                        	jne	0x31dd <rio_readlineb+0x7a>
    318f: 83 ec 04                     	subl	$4, %esp
    3192: 68 00 20 00 00               	pushl	$8192
    3197: 57                           	pushl	%edi
    3198: ff 33                        	pushl	(%ebx)
    319a: e8 fc ff ff ff               	calll	0x319b <rio_readlineb+0x38>
    319f: 89 43 04                     	movl	%eax, 4(%ebx)
    31a2: 83 c4 10                     	addl	$16, %esp
    31a5: 85 c0                        	testl	%eax, %eax
    31a7: 78 dc                        	js	0x3185 <rio_readlineb+0x22>
    31a9: 74 37                        	je	0x31e2 <rio_readlineb+0x7f>
    31ab: 89 7b 08                     	movl	%edi, 8(%ebx)
    31ae: 8b 53 08                     	movl	8(%ebx), %edx
    31b1: 0f b6 0a                     	movzbl	(%edx), %ecx
    31b4: 83 c2 01                     	addl	$1, %edx
    31b7: 89 53 08                     	movl	%edx, 8(%ebx)
    31ba: 83 e8 01                     	subl	$1, %eax
    31bd: 89 43 04                     	movl	%eax, 4(%ebx)
    31c0: 83 c6 01                     	addl	$1, %esi
    31c3: 88 4e ff                     	movb	%cl, -1(%esi)
    31c6: 80 f9 0a                     	cmpb	$10, %cl
    31c9: 74 2f                        	je	0x31fa <rio_readlineb+0x97>
    31cb: 83 c5 01                     	addl	$1, %ebp
    31ce: 3b 74 24 0c                  	cmpl	12(%esp), %esi
    31d2: 74 22                        	je	0x31f6 <rio_readlineb+0x93>
    31d4: 8b 43 04                     	movl	4(%ebx), %eax
    31d7: 85 c0                        	testl	%eax, %eax
    31d9: 7e b4                        	jle	0x318f <rio_readlineb+0x2c>
    31db: eb d1                        	jmp	0x31ae <rio_readlineb+0x4b>
    31dd: b8 ff ff ff ff               	movl	$4294967295, %eax
    31e2: 85 c0                        	testl	%eax, %eax
    31e4: 75 21                        	jne	0x3207 <rio_readlineb+0xa4>
    31e6: 83 fd 01                     	cmpl	$1, %ebp
    31e9: 75 0f                        	jne	0x31fa <rio_readlineb+0x97>
    31eb: 89 c5                        	movl	%eax, %ebp
    31ed: eb 0e                        	jmp	0x31fd <rio_readlineb+0x9a>
    31ef: bd 01 00 00 00               	movl	$1, %ebp
    31f4: eb 04                        	jmp	0x31fa <rio_readlineb+0x97>
    31f6: 8b 74 24 0c                  	movl	12(%esp), %esi
    31fa: c6 06 00                     	movb	$0, (%esi)
    31fd: 89 e8                        	movl	%ebp, %eax
    31ff: 83 c4 1c                     	addl	$28, %esp
    3202: 5b                           	popl	%ebx
    3203: 5e                           	popl	%esi
    3204: 5f                           	popl	%edi
    3205: 5d                           	popl	%ebp
    3206: c3                           	retl
    3207: bd ff ff ff ff               	movl	$4294967295, %ebp
    320c: eb ef                        	jmp	0x31fd <rio_readlineb+0x9a>

0000320e <submitr>:
    320e: f3 0f 1e fb                  	endbr32
    3212: 55                           	pushl	%ebp
    3213: 57                           	pushl	%edi
    3214: 56                           	pushl	%esi
    3215: 53                           	pushl	%ebx
    3216: 8d 84 24 00 60 ff ff         	leal	-40960(%esp), %eax
    321d: 81 ec 00 10 00 00            	subl	$4096, %esp
    3223: 83 0c 24 00                  	orl	$0, (%esp)
    3227: 39 c4                        	cmpl	%eax, %esp
    3229: 75 f2                        	jne	0x321d <submitr+0xf>
    322b: 83 ec 60                     	subl	$96, %esp
    322e: 8b 9c 24 74 a0 00 00         	movl	41076(%esp), %ebx
    3235: 8b 84 24 7c a0 00 00         	movl	41084(%esp), %eax
    323c: 89 44 24 10                  	movl	%eax, 16(%esp)
    3240: 8b 84 24 80 a0 00 00         	movl	41088(%esp), %eax
    3247: 89 44 24 14                  	movl	%eax, 20(%esp)
    324b: 8b 84 24 84 a0 00 00         	movl	41092(%esp), %eax
    3252: 89 44 24 18                  	movl	%eax, 24(%esp)
    3256: 8b ac 24 88 a0 00 00         	movl	41096(%esp), %ebp
    325d: 8b 84 24 8c a0 00 00         	movl	41100(%esp), %eax
    3264: 89 44 24 1c                  	movl	%eax, 28(%esp)
    3268: 65 a1 14 00 00 00            	movl	%gs:20, %eax
    326e: 89 84 24 50 a0 00 00         	movl	%eax, 41040(%esp)
    3275: 31 c0                        	xorl	%eax, %eax
    3277: c7 44 24 30 00 00 00 00      	movl	$0, 48(%esp)
    327f: 6a 00                        	pushl	$0
    3281: 6a 01                        	pushl	$1
    3283: 6a 02                        	pushl	$2
    3285: e8 fc ff ff ff               	calll	0x3286 <submitr+0x78>
    328a: 89 44 24 18                  	movl	%eax, 24(%esp)
    328e: 83 c4 10                     	addl	$16, %esp
    3291: 85 c0                        	testl	%eax, %eax
    3293: 0f 88 ff 00 00 00            	js	0x3398 <submitr+0x18a>
    3299: 83 ec 0c                     	subl	$12, %esp
    329c: 53                           	pushl	%ebx
    329d: e8 fc ff ff ff               	calll	0x329e <submitr+0x90>
    32a2: 83 c4 10                     	addl	$16, %esp
    32a5: 85 c0                        	testl	%eax, %eax
    32a7: 0f 84 3d 01 00 00            	je	0x33ea <submitr+0x1dc>
    32ad: 8d 5c 24 30                  	leal	48(%esp), %ebx
    32b1: c7 44 24 30 00 00 00 00      	movl	$0, 48(%esp)
    32b9: c7 44 24 34 00 00 00 00      	movl	$0, 52(%esp)
    32c1: c7 44 24 38 00 00 00 00      	movl	$0, 56(%esp)
    32c9: c7 44 24 3c 00 00 00 00      	movl	$0, 60(%esp)
    32d1: 66 c7 44 24 30 02 00         	movw	$2, 48(%esp)
    32d8: 6a 0c                        	pushl	$12
    32da: ff 70 0c                     	pushl	12(%eax)
    32dd: 8b 40 10                     	movl	16(%eax), %eax
    32e0: ff 30                        	pushl	(%eax)
    32e2: 8d 44 24 40                  	leal	64(%esp), %eax
    32e6: 50                           	pushl	%eax
    32e7: e8 fc ff ff ff               	calll	0x32e8 <submitr+0xda>
    32ec: 0f b7 84 24 84 a0 00 00      	movzwl	41092(%esp), %eax
    32f4: 66 c1 c0 08                  	rolw	$8, %ax
    32f8: 66 89 44 24 42               	movw	%ax, 66(%esp)
    32fd: 83 c4 0c                     	addl	$12, %esp
    3300: 6a 10                        	pushl	$16
    3302: 53                           	pushl	%ebx
    3303: ff 74 24 14                  	pushl	20(%esp)
    3307: e8 fc ff ff ff               	calll	0x3308 <submitr+0xfa>
    330c: 83 c4 10                     	addl	$16, %esp
    330f: 85 c0                        	testl	%eax, %eax
    3311: 0f 88 46 01 00 00            	js	0x345d <submitr+0x24f>
    3317: be ff ff ff ff               	movl	$4294967295, %esi
    331c: b8 00 00 00 00               	movl	$0, %eax
    3321: 89 f1                        	movl	%esi, %ecx
    3323: 89 ef                        	movl	%ebp, %edi
    3325: f2 ae                        	repne		scasb	%es:(%edi), %al
    3327: 89 cb                        	movl	%ecx, %ebx
    3329: f7 d3                        	notl	%ebx
    332b: 89 f1                        	movl	%esi, %ecx
    332d: 8b 7c 24 0c                  	movl	12(%esp), %edi
    3331: f2 ae                        	repne		scasb	%es:(%edi), %al
    3333: 89 4c 24 1c                  	movl	%ecx, 28(%esp)
    3337: 89 f1                        	movl	%esi, %ecx
    3339: 8b 7c 24 10                  	movl	16(%esp), %edi
    333d: f2 ae                        	repne		scasb	%es:(%edi), %al
    333f: 89 ca                        	movl	%ecx, %edx
    3341: f7 d2                        	notl	%edx
    3343: 89 f1                        	movl	%esi, %ecx
    3345: 8b 7c 24 14                  	movl	20(%esp), %edi
    3349: f2 ae                        	repne		scasb	%es:(%edi), %al
    334b: 2b 54 24 1c                  	subl	28(%esp), %edx
    334f: 29 ca                        	subl	%ecx, %edx
    3351: 8d 44 5b fd                  	leal	-3(%ebx,%ebx,2), %eax
    3355: 8d 44 02 7b                  	leal	123(%edx,%eax), %eax
    3359: 3d 00 20 00 00               	cmpl	$8192, %eax
    335e: 0f 87 5e 01 00 00            	ja	0x34c2 <submitr+0x2b4>
    3364: 8d 94 24 4c 40 00 00         	leal	16460(%esp), %edx
    336b: b9 00 08 00 00               	movl	$2048, %ecx
    3370: b8 00 00 00 00               	movl	$0, %eax
    3375: 89 d7                        	movl	%edx, %edi
    3377: f3 ab                        	rep		stosl	%eax, %es:(%edi)
    3379: b9 ff ff ff ff               	movl	$4294967295, %ecx
    337e: 89 ef                        	movl	%ebp, %edi
    3380: f2 ae                        	repne		scasb	%es:(%edi), %al
    3382: f7 d1                        	notl	%ecx
    3384: 89 cf                        	movl	%ecx, %edi
    3386: 83 ef 01                     	subl	$1, %edi
    3389: 0f 84 df 04 00 00            	je	0x386e <submitr+0x660>
    338f: 89 eb                        	movl	%ebp, %ebx
    3391: 89 d6                        	movl	%edx, %esi
    3393: e9 c4 01 00 00               	jmp	0x355c <submitr+0x34e>
    3398: 8b 44 24 18                  	movl	24(%esp), %eax
    339c: c7 00 45 72 72 6f            	movl	$1869771333, (%eax)
    33a2: c7 40 04 72 3a 20 43         	movl	$1126185586, 4(%eax)
    33a9: c7 40 08 6c 69 65 6e         	movl	$1852139884, 8(%eax)
    33b0: c7 40 0c 74 20 75 6e         	movl	$1853169780, 12(%eax)
    33b7: c7 40 10 61 62 6c 65         	movl	$1701601889, 16(%eax)
    33be: c7 40 14 20 74 6f 20         	movl	$544175136, 20(%eax)
    33c5: c7 40 18 63 72 65 61         	movl	$1634038371, 24(%eax)
    33cc: c7 40 1c 74 65 20 73         	movl	$1931502964, 28(%eax)
    33d3: c7 40 20 6f 63 6b 65         	movl	$1701536623, 32(%eax)
    33da: 66 c7 40 24 74 00            	movw	$116, 36(%eax)
    33e0: b8 ff ff ff ff               	movl	$4294967295, %eax
    33e5: e9 37 03 00 00               	jmp	0x3721 <submitr+0x513>
    33ea: 8b 44 24 18                  	movl	24(%esp), %eax
    33ee: c7 00 45 72 72 6f            	movl	$1869771333, (%eax)
    33f4: c7 40 04 72 3a 20 44         	movl	$1142962802, 4(%eax)
    33fb: c7 40 08 4e 53 20 69         	movl	$1763726158, 8(%eax)
    3402: c7 40 0c 73 20 75 6e         	movl	$1853169779, 12(%eax)
    3409: c7 40 10 61 62 6c 65         	movl	$1701601889, 16(%eax)
    3410: c7 40 14 20 74 6f 20         	movl	$544175136, 20(%eax)
    3417: c7 40 18 72 65 73 6f         	movl	$1869833586, 24(%eax)
    341e: c7 40 1c 6c 76 65 20         	movl	$543520364, 28(%eax)
    3425: c7 40 20 73 65 72 76         	movl	$1987208563, 32(%eax)
    342c: c7 40 24 65 72 20 61         	movl	$1629516389, 36(%eax)
    3433: c7 40 28 64 64 72 65         	movl	$1701995620, 40(%eax)
    343a: 66 c7 40 2c 73 73            	movw	$29555, 44(%eax)
    3440: c6 40 2e 00                  	movb	$0, 46(%eax)
    3444: 83 ec 0c                     	subl	$12, %esp
    3447: ff 74 24 14                  	pushl	20(%esp)
    344b: e8 fc ff ff ff               	calll	0x344c <submitr+0x23e>
    3450: 83 c4 10                     	addl	$16, %esp
    3453: b8 ff ff ff ff               	movl	$4294967295, %eax
    3458: e9 c4 02 00 00               	jmp	0x3721 <submitr+0x513>
    345d: 8b 44 24 18                  	movl	24(%esp), %eax
    3461: c7 00 45 72 72 6f            	movl	$1869771333, (%eax)
    3467: c7 40 04 72 3a 20 55         	movl	$1428175474, 4(%eax)
    346e: c7 40 08 6e 61 62 6c         	movl	$1818386798, 8(%eax)
    3475: c7 40 0c 65 20 74 6f         	movl	$1869881445, 12(%eax)
    347c: c7 40 10 20 63 6f 6e         	movl	$1852793632, 16(%eax)
    3483: c7 40 14 6e 65 63 74         	movl	$1952671086, 20(%eax)
    348a: c7 40 18 20 74 6f 20         	movl	$544175136, 24(%eax)
    3491: c7 40 1c 74 68 65 20         	movl	$543516788, 28(%eax)
    3498: c7 40 20 73 65 72 76         	movl	$1987208563, 32(%eax)
    349f: 66 c7 40 24 65 72            	movw	$29285, 36(%eax)
    34a5: c6 40 26 00                  	movb	$0, 38(%eax)
    34a9: 83 ec 0c                     	subl	$12, %esp
    34ac: ff 74 24 14                  	pushl	20(%esp)
    34b0: e8 fc ff ff ff               	calll	0x34b1 <submitr+0x2a3>
    34b5: 83 c4 10                     	addl	$16, %esp
    34b8: b8 ff ff ff ff               	movl	$4294967295, %eax
    34bd: e9 5f 02 00 00               	jmp	0x3721 <submitr+0x513>
    34c2: 8b 44 24 18                  	movl	24(%esp), %eax
    34c6: c7 00 45 72 72 6f            	movl	$1869771333, (%eax)
    34cc: c7 40 04 72 3a 20 52         	movl	$1377843826, 4(%eax)
    34d3: c7 40 08 65 73 75 6c         	movl	$1819636581, 8(%eax)
    34da: c7 40 0c 74 20 73 74         	movl	$1953702004, 12(%eax)
    34e1: c7 40 10 72 69 6e 67         	movl	$1735289202, 16(%eax)
    34e8: c7 40 14 20 74 6f 6f         	movl	$1869575200, 20(%eax)
    34ef: c7 40 18 20 6c 61 72         	movl	$1918987296, 24(%eax)
    34f6: c7 40 1c 67 65 2e 20         	movl	$539911527, 28(%eax)
    34fd: c7 40 20 49 6e 63 72         	movl	$1919118921, 32(%eax)
    3504: c7 40 24 65 61 73 65         	movl	$1702060389, 36(%eax)
    350b: c7 40 28 20 53 55 42         	movl	$1112888096, 40(%eax)
    3512: c7 40 2c 4d 49 54 52         	movl	$1381255501, 44(%eax)
    3519: c7 40 30 5f 4d 41 58         	movl	$1480674655, 48(%eax)
    3520: c7 40 34 42 55 46 00         	movl	$4609346, 52(%eax)
    3527: 83 ec 0c                     	subl	$12, %esp
    352a: ff 74 24 14                  	pushl	20(%esp)
    352e: e8 fc ff ff ff               	calll	0x352f <submitr+0x321>
    3533: 83 c4 10                     	addl	$16, %esp
    3536: b8 ff ff ff ff               	movl	$4294967295, %eax
    353b: e9 e1 01 00 00               	jmp	0x3721 <submitr+0x513>
    3540: 3c 5f                        	cmpb	$95, %al
    3542: 0f 85 82 00 00 00            	jne	0x35ca <submitr+0x3bc>
    3548: 88 06                        	movb	%al, (%esi)
    354a: 8d 76 01                     	leal	1(%esi), %esi
    354d: 83 c3 01                     	addl	$1, %ebx
    3550: 8d 44 3d 00                  	leal	(%ebp,%edi), %eax
    3554: 39 c3                        	cmpl	%eax, %ebx
    3556: 0f 84 12 03 00 00            	je	0x386e <submitr+0x660>
    355c: 0f b6 03                     	movzbl	(%ebx), %eax
    355f: 8d 50 d6                     	leal	-42(%eax), %edx
    3562: 80 fa 0f                     	cmpb	$15, %dl
    3565: 77 d9                        	ja	0x3540 <submitr+0x332>
    3567: b9 d9 ff 00 00               	movl	$65497, %ecx
    356c: 0f a3 d1                     	btl	%edx, %ecx
    356f: 72 d7                        	jb	0x3548 <submitr+0x33a>
    3571: 3c 5f                        	cmpb	$95, %al
    3573: 74 d3                        	je	0x3548 <submitr+0x33a>
    3575: 8d 50 e0                     	leal	-32(%eax), %edx
    3578: 80 fa 5f                     	cmpb	$95, %dl
    357b: 76 08                        	jbe	0x3585 <submitr+0x377>
    357d: 3c 09                        	cmpb	$9, %al
    357f: 0f 85 a2 02 00 00            	jne	0x3827 <submitr+0x619>
    3585: 83 ec 0c                     	subl	$12, %esp
    3588: 0f b6 c0                     	movzbl	%al, %eax
    358b: 50                           	pushl	%eax
    358c: 68 be 47 00 00               	pushl	$18366
    3591: 6a 08                        	pushl	$8
    3593: 6a 01                        	pushl	$1
    3595: 8d 84 24 68 80 00 00         	leal	32872(%esp), %eax
    359c: 50                           	pushl	%eax
    359d: e8 fc ff ff ff               	calll	0x359e <submitr+0x390>
    35a2: 0f b6 84 24 6c 80 00 00      	movzbl	32876(%esp), %eax
    35aa: 88 06                        	movb	%al, (%esi)
    35ac: 0f b6 84 24 6d 80 00 00      	movzbl	32877(%esp), %eax
    35b4: 88 46 01                     	movb	%al, 1(%esi)
    35b7: 0f b6 84 24 6e 80 00 00      	movzbl	32878(%esp), %eax
    35bf: 88 46 02                     	movb	%al, 2(%esi)
    35c2: 83 c4 20                     	addl	$32, %esp
    35c5: 8d 76 03                     	leal	3(%esi), %esi
    35c8: eb 83                        	jmp	0x354d <submitr+0x33f>
    35ca: 89 c2                        	movl	%eax, %edx
    35cc: 83 e2 df                     	andl	$-33, %edx
    35cf: 83 ea 41                     	subl	$65, %edx
    35d2: 80 fa 19                     	cmpb	$25, %dl
    35d5: 0f 86 6d ff ff ff            	jbe	0x3548 <submitr+0x33a>
    35db: 3c 20                        	cmpb	$32, %al
    35dd: 75 96                        	jne	0x3575 <submitr+0x367>
    35df: c6 06 2b                     	movb	$43, (%esi)
    35e2: 8d 76 01                     	leal	1(%esi), %esi
    35e5: e9 63 ff ff ff               	jmp	0x354d <submitr+0x33f>
    35ea: 01 c6                        	addl	%eax, %esi
    35ec: 29 c3                        	subl	%eax, %ebx
    35ee: 0f 84 d3 02 00 00            	je	0x38c7 <submitr+0x6b9>
    35f4: 83 ec 04                     	subl	$4, %esp
    35f7: 53                           	pushl	%ebx
    35f8: 56                           	pushl	%esi
    35f9: 57                           	pushl	%edi
    35fa: e8 fc ff ff ff               	calll	0x35fb <submitr+0x3ed>
    35ff: 83 c4 10                     	addl	$16, %esp
    3602: 85 c0                        	testl	%eax, %eax
    3604: 7f e4                        	jg	0x35ea <submitr+0x3dc>
    3606: e8 fc ff ff ff               	calll	0x3607 <submitr+0x3f9>
    360b: 83 38 04                     	cmpl	$4, (%eax)
    360e: 0f 85 aa 01 00 00            	jne	0x37be <submitr+0x5b0>
    3614: 89 e8                        	movl	%ebp, %eax
    3616: eb d2                        	jmp	0x35ea <submitr+0x3dc>
    3618: 8b 44 24 18                  	movl	24(%esp), %eax
    361c: c7 00 45 72 72 6f            	movl	$1869771333, (%eax)
    3622: c7 40 04 72 3a 20 43         	movl	$1126185586, 4(%eax)
    3629: c7 40 08 6c 69 65 6e         	movl	$1852139884, 8(%eax)
    3630: c7 40 0c 74 20 75 6e         	movl	$1853169780, 12(%eax)
    3637: c7 40 10 61 62 6c 65         	movl	$1701601889, 16(%eax)
    363e: c7 40 14 20 74 6f 20         	movl	$544175136, 20(%eax)
    3645: c7 40 18 72 65 61 64         	movl	$1684104562, 24(%eax)
    364c: c7 40 1c 20 66 69 72         	movl	$1919510048, 28(%eax)
    3653: c7 40 20 73 74 20 68         	movl	$1746957427, 32(%eax)
    365a: c7 40 24 65 61 64 65         	movl	$1701077349, 36(%eax)
    3661: c7 40 28 72 20 66 72         	movl	$1919295602, 40(%eax)
    3668: c7 40 2c 6f 6d 20 73         	movl	$1931505007, 44(%eax)
    366f: c7 40 30 65 72 76 65         	movl	$1702261349, 48(%eax)
    3676: 66 c7 40 34 72 00            	movw	$114, 52(%eax)
    367c: 83 ec 0c                     	subl	$12, %esp
    367f: ff 74 24 14                  	pushl	20(%esp)
    3683: e8 fc ff ff ff               	calll	0x3684 <submitr+0x476>
    3688: 83 c4 10                     	addl	$16, %esp
    368b: b8 ff ff ff ff               	movl	$4294967295, %eax
    3690: e9 8c 00 00 00               	jmp	0x3721 <submitr+0x513>
    3695: 83 ec 08                     	subl	$8, %esp
    3698: 8d 94 24 54 80 00 00         	leal	32852(%esp), %edx
    369f: 52                           	pushl	%edx
    36a0: 50                           	pushl	%eax
    36a1: 68 d8 46 00 00               	pushl	$18136
    36a6: 6a ff                        	pushl	$-1
    36a8: 6a 01                        	pushl	$1
    36aa: ff 74 24 34                  	pushl	52(%esp)
    36ae: e8 fc ff ff ff               	calll	0x36af <submitr+0x4a1>
    36b3: 83 c4 14                     	addl	$20, %esp
    36b6: ff 74 24 14                  	pushl	20(%esp)
    36ba: e8 fc ff ff ff               	calll	0x36bb <submitr+0x4ad>
    36bf: 83 c4 10                     	addl	$16, %esp
    36c2: b8 ff ff ff ff               	movl	$4294967295, %eax
    36c7: eb 58                        	jmp	0x3721 <submitr+0x513>
    36c9: b9 00 20 00 00               	movl	$8192, %ecx
    36ce: 8d 94 24 4c 20 00 00         	leal	8268(%esp), %edx
    36d5: 8d 44 24 40                  	leal	64(%esp), %eax
    36d9: e8 85 fa ff ff               	calll	0x3163 <rio_readlineb>
    36de: 85 c0                        	testl	%eax, %eax
    36e0: 7e 5e                        	jle	0x3740 <submitr+0x532>
    36e2: 83 ec 08                     	subl	$8, %esp
    36e5: 8d 84 24 54 20 00 00         	leal	8276(%esp), %eax
    36ec: 50                           	pushl	%eax
    36ed: 8b 74 24 24                  	movl	36(%esp), %esi
    36f1: 56                           	pushl	%esi
    36f2: e8 fc ff ff ff               	calll	0x36f3 <submitr+0x4e5>
    36f7: 83 c4 04                     	addl	$4, %esp
    36fa: ff 74 24 14                  	pushl	20(%esp)
    36fe: e8 fc ff ff ff               	calll	0x36ff <submitr+0x4f1>
    3703: bf d9 47 00 00               	movl	$18393, %edi
    3708: b9 03 00 00 00               	movl	$3, %ecx
    370d: f3 a6                        	rep		cmpsb	%es:(%edi), (%esi)
    370f: 0f 97 c0                     	seta	%al
    3712: 1c 00                        	sbbb	$0, %al
    3714: 83 c4 10                     	addl	$16, %esp
    3717: 84 c0                        	testb	%al, %al
    3719: 0f 95 c0                     	setne	%al
    371c: 0f b6 c0                     	movzbl	%al, %eax
    371f: f7 d8                        	negl	%eax
    3721: 8b bc 24 4c a0 00 00         	movl	41036(%esp), %edi
    3728: 65 33 3d 14 00 00 00         	xorl	%gs:20, %edi
    372f: 0f 85 ad 02 00 00            	jne	0x39e2 <submitr+0x7d4>
    3735: 81 c4 5c a0 00 00            	addl	$41052, %esp
    373b: 5b                           	popl	%ebx
    373c: 5e                           	popl	%esi
    373d: 5f                           	popl	%edi
    373e: 5d                           	popl	%ebp
    373f: c3                           	retl
    3740: 8b 44 24 18                  	movl	24(%esp), %eax
    3744: c7 00 45 72 72 6f            	movl	$1869771333, (%eax)
    374a: c7 40 04 72 3a 20 43         	movl	$1126185586, 4(%eax)
    3751: c7 40 08 6c 69 65 6e         	movl	$1852139884, 8(%eax)
    3758: c7 40 0c 74 20 75 6e         	movl	$1853169780, 12(%eax)
    375f: c7 40 10 61 62 6c 65         	movl	$1701601889, 16(%eax)
    3766: c7 40 14 20 74 6f 20         	movl	$544175136, 20(%eax)
    376d: c7 40 18 72 65 61 64         	movl	$1684104562, 24(%eax)
    3774: c7 40 1c 20 73 74 61         	movl	$1635021600, 28(%eax)
    377b: c7 40 20 74 75 73 20         	movl	$544437620, 32(%eax)
    3782: c7 40 24 6d 65 73 73         	movl	$1936942445, 36(%eax)
    3789: c7 40 28 61 67 65 20         	movl	$543516513, 40(%eax)
    3790: c7 40 2c 66 72 6f 6d         	movl	$1836020326, 44(%eax)
    3797: c7 40 30 20 73 65 72         	movl	$1919251232, 48(%eax)
    379e: c7 40 34 76 65 72 00         	movl	$7497078, 52(%eax)
    37a5: 83 ec 0c                     	subl	$12, %esp
    37a8: ff 74 24 14                  	pushl	20(%esp)
    37ac: e8 fc ff ff ff               	calll	0x37ad <submitr+0x59f>
    37b1: 83 c4 10                     	addl	$16, %esp
    37b4: b8 ff ff ff ff               	movl	$4294967295, %eax
    37b9: e9 63 ff ff ff               	jmp	0x3721 <submitr+0x513>
    37be: 8b 44 24 18                  	movl	24(%esp), %eax
    37c2: c7 00 45 72 72 6f            	movl	$1869771333, (%eax)
    37c8: c7 40 04 72 3a 20 43         	movl	$1126185586, 4(%eax)
    37cf: c7 40 08 6c 69 65 6e         	movl	$1852139884, 8(%eax)
    37d6: c7 40 0c 74 20 75 6e         	movl	$1853169780, 12(%eax)
    37dd: c7 40 10 61 62 6c 65         	movl	$1701601889, 16(%eax)
    37e4: c7 40 14 20 74 6f 20         	movl	$544175136, 20(%eax)
    37eb: c7 40 18 77 72 69 74         	movl	$1953067639, 24(%eax)
    37f2: c7 40 1c 65 20 74 6f         	movl	$1869881445, 28(%eax)
    37f9: c7 40 20 20 74 68 65         	movl	$1701344288, 32(%eax)
    3800: c7 40 24 20 73 65 72         	movl	$1919251232, 36(%eax)
    3807: c7 40 28 76 65 72 00         	movl	$7497078, 40(%eax)
    380e: 83 ec 0c                     	subl	$12, %esp
    3811: ff 74 24 14                  	pushl	20(%esp)
    3815: e8 fc ff ff ff               	calll	0x3816 <submitr+0x608>
    381a: 83 c4 10                     	addl	$16, %esp
    381d: b8 ff ff ff ff               	movl	$4294967295, %eax
    3822: e9 fa fe ff ff               	jmp	0x3721 <submitr+0x513>
    3827: a1 08 47 00 00               	movl	18184, %eax
    382c: 8b 7c 24 18                  	movl	24(%esp), %edi
    3830: 89 07                        	movl	%eax, (%edi)
    3832: a1 47 47 00 00               	movl	18247, %eax
    3837: 89 47 3f                     	movl	%eax, 63(%edi)
    383a: 89 f8                        	movl	%edi, %eax
    383c: 8d 7f 04                     	leal	4(%edi), %edi
    383f: 83 e7 fc                     	andl	$-4, %edi
    3842: 29 f8                        	subl	%edi, %eax
    3844: be 08 47 00 00               	movl	$18184, %esi
    3849: 29 c6                        	subl	%eax, %esi
    384b: 83 c0 43                     	addl	$67, %eax
    384e: c1 e8 02                     	shrl	$2, %eax
    3851: 89 c1                        	movl	%eax, %ecx
    3853: f3 a5                        	rep		movsl	(%esi), %es:(%edi)
    3855: 83 ec 0c                     	subl	$12, %esp
    3858: ff 74 24 14                  	pushl	20(%esp)
    385c: e8 fc ff ff ff               	calll	0x385d <submitr+0x64f>
    3861: 83 c4 10                     	addl	$16, %esp
    3864: b8 ff ff ff ff               	movl	$4294967295, %eax
    3869: e9 b3 fe ff ff               	jmp	0x3721 <submitr+0x513>
    386e: 8d 84 24 4c 40 00 00         	leal	16460(%esp), %eax
    3875: 50                           	pushl	%eax
    3876: ff 74 24 18                  	pushl	24(%esp)
    387a: ff 74 24 18                  	pushl	24(%esp)
    387e: ff 74 24 18                  	pushl	24(%esp)
    3882: 68 4c 47 00 00               	pushl	$18252
    3887: 68 00 20 00 00               	pushl	$8192
    388c: 6a 01                        	pushl	$1
    388e: 8d bc 24 68 20 00 00         	leal	8296(%esp), %edi
    3895: 57                           	pushl	%edi
    3896: e8 fc ff ff ff               	calll	0x3897 <submitr+0x689>
    389b: b9 ff ff ff ff               	movl	$4294967295, %ecx
    38a0: b8 00 00 00 00               	movl	$0, %eax
    38a5: f2 ae                        	repne		scasb	%es:(%edi), %al
    38a7: f7 d1                        	notl	%ecx
    38a9: 83 c4 20                     	addl	$32, %esp
    38ac: 8d b4 24 4c 20 00 00         	leal	8268(%esp), %esi
    38b3: bd 00 00 00 00               	movl	$0, %ebp
    38b8: 89 cb                        	movl	%ecx, %ebx
    38ba: 83 eb 01                     	subl	$1, %ebx
    38bd: 8b 7c 24 08                  	movl	8(%esp), %edi
    38c1: 0f 85 2d fd ff ff            	jne	0x35f4 <submitr+0x3e6>
    38c7: 8b 44 24 08                  	movl	8(%esp), %eax
    38cb: 89 44 24 40                  	movl	%eax, 64(%esp)
    38cf: c7 44 24 44 00 00 00 00      	movl	$0, 68(%esp)
    38d7: 8d 44 24 4c                  	leal	76(%esp), %eax
    38db: 89 44 24 48                  	movl	%eax, 72(%esp)
    38df: b9 00 20 00 00               	movl	$8192, %ecx
    38e4: 8d 94 24 4c 20 00 00         	leal	8268(%esp), %edx
    38eb: 8d 44 24 40                  	leal	64(%esp), %eax
    38ef: e8 6f f8 ff ff               	calll	0x3163 <rio_readlineb>
    38f4: 85 c0                        	testl	%eax, %eax
    38f6: 0f 8e 1c fd ff ff            	jle	0x3618 <submitr+0x40a>
    38fc: 83 ec 0c                     	subl	$12, %esp
    38ff: 8d 84 24 58 80 00 00         	leal	32856(%esp), %eax
    3906: 50                           	pushl	%eax
    3907: 8d 44 24 3c                  	leal	60(%esp), %eax
    390b: 50                           	pushl	%eax
    390c: 8d 84 24 60 60 00 00         	leal	24672(%esp), %eax
    3913: 50                           	pushl	%eax
    3914: 68 c5 47 00 00               	pushl	$18373
    3919: 8d 84 24 68 20 00 00         	leal	8296(%esp), %eax
    3920: 50                           	pushl	%eax
    3921: e8 fc ff ff ff               	calll	0x3922 <submitr+0x714>
    3926: 8b 44 24 4c                  	movl	76(%esp), %eax
    392a: 83 c4 20                     	addl	$32, %esp
    392d: 3d c8 00 00 00               	cmpl	$200, %eax
    3932: 0f 85 5d fd ff ff            	jne	0x3695 <submitr+0x487>
    3938: 8d 9c 24 4c 20 00 00         	leal	8268(%esp), %ebx
    393f: bf d6 47 00 00               	movl	$18390, %edi
    3944: b9 03 00 00 00               	movl	$3, %ecx
    3949: 89 de                        	movl	%ebx, %esi
    394b: f3 a6                        	rep		cmpsb	%es:(%edi), (%esi)
    394d: 0f 97 c0                     	seta	%al
    3950: 1c 00                        	sbbb	$0, %al
    3952: 84 c0                        	testb	%al, %al
    3954: 0f 84 6f fd ff ff            	je	0x36c9 <submitr+0x4bb>
    395a: b9 00 20 00 00               	movl	$8192, %ecx
    395f: 89 da                        	movl	%ebx, %edx
    3961: 8d 44 24 40                  	leal	64(%esp), %eax
    3965: e8 f9 f7 ff ff               	calll	0x3163 <rio_readlineb>
    396a: 85 c0                        	testl	%eax, %eax
    396c: 7f d1                        	jg	0x393f <submitr+0x731>
    396e: 8b 44 24 18                  	movl	24(%esp), %eax
    3972: c7 00 45 72 72 6f            	movl	$1869771333, (%eax)
    3978: c7 40 04 72 3a 20 43         	movl	$1126185586, 4(%eax)
    397f: c7 40 08 6c 69 65 6e         	movl	$1852139884, 8(%eax)
    3986: c7 40 0c 74 20 75 6e         	movl	$1853169780, 12(%eax)
    398d: c7 40 10 61 62 6c 65         	movl	$1701601889, 16(%eax)
    3994: c7 40 14 20 74 6f 20         	movl	$544175136, 20(%eax)
    399b: c7 40 18 72 65 61 64         	movl	$1684104562, 24(%eax)
    39a2: c7 40 1c 20 68 65 61         	movl	$1634035744, 28(%eax)
    39a9: c7 40 20 64 65 72 73         	movl	$1936876900, 32(%eax)
    39b0: c7 40 24 20 66 72 6f         	movl	$1869768224, 36(%eax)
    39b7: c7 40 28 6d 20 73 65         	movl	$1702043757, 40(%eax)
    39be: c7 40 2c 72 76 65 72         	movl	$1919252082, 44(%eax)
    39c5: c6 40 30 00                  	movb	$0, 48(%eax)
    39c9: 83 ec 0c                     	subl	$12, %esp
    39cc: ff 74 24 14                  	pushl	20(%esp)
    39d0: e8 fc ff ff ff               	calll	0x39d1 <submitr+0x7c3>
    39d5: 83 c4 10                     	addl	$16, %esp
    39d8: b8 ff ff ff ff               	movl	$4294967295, %eax
    39dd: e9 3f fd ff ff               	jmp	0x3721 <submitr+0x513>
    39e2: e8 fc ff ff ff               	calll	0x39e3 <submitr+0x7d5>

000039e7 <init_timeout>:
    39e7: f3 0f 1e fb                  	endbr32
    39eb: 53                           	pushl	%ebx
    39ec: 83 ec 08                     	subl	$8, %esp
    39ef: 8b 5c 24 10                  	movl	16(%esp), %ebx
    39f3: 85 db                        	testl	%ebx, %ebx
    39f5: 75 05                        	jne	0x39fc <init_timeout+0x15>
    39f7: 83 c4 08                     	addl	$8, %esp
    39fa: 5b                           	popl	%ebx
    39fb: c3                           	retl
    39fc: 83 ec 08                     	subl	$8, %esp
    39ff: 68 3a 31 00 00               	pushl	$12602
    3a04: 6a 0e                        	pushl	$14
    3a06: e8 fc ff ff ff               	calll	0x3a07 <init_timeout+0x20>
    3a0b: 85 db                        	testl	%ebx, %ebx
    3a0d: b8 00 00 00 00               	movl	$0, %eax
    3a12: 0f 48 d8                     	cmovsl	%eax, %ebx
    3a15: 89 1c 24                     	movl	%ebx, (%esp)
    3a18: e8 fc ff ff ff               	calll	0x3a19 <init_timeout+0x32>
    3a1d: 83 c4 10                     	addl	$16, %esp
    3a20: eb d5                        	jmp	0x39f7 <init_timeout+0x10>

00003a22 <init_driver>:
    3a22: f3 0f 1e fb                  	endbr32
    3a26: 57                           	pushl	%edi
    3a27: 56                           	pushl	%esi
    3a28: 53                           	pushl	%ebx
    3a29: 83 ec 28                     	subl	$40, %esp
    3a2c: 8b 74 24 38                  	movl	56(%esp), %esi
    3a30: 65 a1 14 00 00 00            	movl	%gs:20, %eax
    3a36: 89 44 24 24                  	movl	%eax, 36(%esp)
    3a3a: 31 c0                        	xorl	%eax, %eax
    3a3c: 6a 01                        	pushl	$1
    3a3e: 6a 0d                        	pushl	$13
    3a40: e8 fc ff ff ff               	calll	0x3a41 <init_driver+0x1f>
    3a45: 83 c4 08                     	addl	$8, %esp
    3a48: 6a 01                        	pushl	$1
    3a4a: 6a 1d                        	pushl	$29
    3a4c: e8 fc ff ff ff               	calll	0x3a4d <init_driver+0x2b>
    3a51: 83 c4 08                     	addl	$8, %esp
    3a54: 6a 01                        	pushl	$1
    3a56: 6a 1d                        	pushl	$29
    3a58: e8 fc ff ff ff               	calll	0x3a59 <init_driver+0x37>
    3a5d: 83 c4 0c                     	addl	$12, %esp
    3a60: 6a 00                        	pushl	$0
    3a62: 6a 01                        	pushl	$1
    3a64: 6a 02                        	pushl	$2
    3a66: e8 fc ff ff ff               	calll	0x3a67 <init_driver+0x45>
    3a6b: 83 c4 10                     	addl	$16, %esp
    3a6e: 85 c0                        	testl	%eax, %eax
    3a70: 0f 88 a9 00 00 00            	js	0x3b1f <init_driver+0xfd>
    3a76: 89 c3                        	movl	%eax, %ebx
    3a78: 83 ec 0c                     	subl	$12, %esp
    3a7b: 68 dc 47 00 00               	pushl	$18396
    3a80: e8 fc ff ff ff               	calll	0x3a81 <init_driver+0x5f>
    3a85: 83 c4 10                     	addl	$16, %esp
    3a88: 85 c0                        	testl	%eax, %eax
    3a8a: 0f 84 da 00 00 00            	je	0x3b6a <init_driver+0x148>
    3a90: 8d 7c 24 0c                  	leal	12(%esp), %edi
    3a94: c7 44 24 0c 00 00 00 00      	movl	$0, 12(%esp)
    3a9c: c7 44 24 10 00 00 00 00      	movl	$0, 16(%esp)
    3aa4: c7 44 24 14 00 00 00 00      	movl	$0, 20(%esp)
    3aac: c7 44 24 18 00 00 00 00      	movl	$0, 24(%esp)
    3ab4: 66 c7 44 24 0c 02 00         	movw	$2, 12(%esp)
    3abb: 6a 0c                        	pushl	$12
    3abd: ff 70 0c                     	pushl	12(%eax)
    3ac0: 8b 40 10                     	movl	16(%eax), %eax
    3ac3: ff 30                        	pushl	(%eax)
    3ac5: 8d 44 24 1c                  	leal	28(%esp), %eax
    3ac9: 50                           	pushl	%eax
    3aca: e8 fc ff ff ff               	calll	0x3acb <init_driver+0xa9>
    3acf: 66 c7 44 24 1e 3b 6c         	movw	$27707, 30(%esp)
    3ad6: 83 c4 0c                     	addl	$12, %esp
    3ad9: 6a 10                        	pushl	$16
    3adb: 57                           	pushl	%edi
    3adc: 53                           	pushl	%ebx
    3add: e8 fc ff ff ff               	calll	0x3ade <init_driver+0xbc>
    3ae2: 83 c4 10                     	addl	$16, %esp
    3ae5: 85 c0                        	testl	%eax, %eax
    3ae7: 0f 88 e9 00 00 00            	js	0x3bd6 <init_driver+0x1b4>
    3aed: 83 ec 0c                     	subl	$12, %esp
    3af0: 53                           	pushl	%ebx
    3af1: e8 fc ff ff ff               	calll	0x3af2 <init_driver+0xd0>
    3af6: 66 c7 06 4f 4b               	movw	$19279, (%esi)
    3afb: c6 46 02 00                  	movb	$0, 2(%esi)
    3aff: 83 c4 10                     	addl	$16, %esp
    3b02: b8 00 00 00 00               	movl	$0, %eax
    3b07: 8b 54 24 1c                  	movl	28(%esp), %edx
    3b0b: 65 33 15 14 00 00 00         	xorl	%gs:20, %edx
    3b12: 0f 85 eb 00 00 00            	jne	0x3c03 <init_driver+0x1e1>
    3b18: 83 c4 20                     	addl	$32, %esp
    3b1b: 5b                           	popl	%ebx
    3b1c: 5e                           	popl	%esi
    3b1d: 5f                           	popl	%edi
    3b1e: c3                           	retl
    3b1f: c7 06 45 72 72 6f            	movl	$1869771333, (%esi)
    3b25: c7 46 04 72 3a 20 43         	movl	$1126185586, 4(%esi)
    3b2c: c7 46 08 6c 69 65 6e         	movl	$1852139884, 8(%esi)
    3b33: c7 46 0c 74 20 75 6e         	movl	$1853169780, 12(%esi)
    3b3a: c7 46 10 61 62 6c 65         	movl	$1701601889, 16(%esi)
    3b41: c7 46 14 20 74 6f 20         	movl	$544175136, 20(%esi)
    3b48: c7 46 18 63 72 65 61         	movl	$1634038371, 24(%esi)
    3b4f: c7 46 1c 74 65 20 73         	movl	$1931502964, 28(%esi)
    3b56: c7 46 20 6f 63 6b 65         	movl	$1701536623, 32(%esi)
    3b5d: 66 c7 46 24 74 00            	movw	$116, 36(%esi)
    3b63: b8 ff ff ff ff               	movl	$4294967295, %eax
    3b68: eb 9d                        	jmp	0x3b07 <init_driver+0xe5>
    3b6a: c7 06 45 72 72 6f            	movl	$1869771333, (%esi)
    3b70: c7 46 04 72 3a 20 44         	movl	$1142962802, 4(%esi)
    3b77: c7 46 08 4e 53 20 69         	movl	$1763726158, 8(%esi)
    3b7e: c7 46 0c 73 20 75 6e         	movl	$1853169779, 12(%esi)
    3b85: c7 46 10 61 62 6c 65         	movl	$1701601889, 16(%esi)
    3b8c: c7 46 14 20 74 6f 20         	movl	$544175136, 20(%esi)
    3b93: c7 46 18 72 65 73 6f         	movl	$1869833586, 24(%esi)
    3b9a: c7 46 1c 6c 76 65 20         	movl	$543520364, 28(%esi)
    3ba1: c7 46 20 73 65 72 76         	movl	$1987208563, 32(%esi)
    3ba8: c7 46 24 65 72 20 61         	movl	$1629516389, 36(%esi)
    3baf: c7 46 28 64 64 72 65         	movl	$1701995620, 40(%esi)
    3bb6: 66 c7 46 2c 73 73            	movw	$29555, 44(%esi)
    3bbc: c6 46 2e 00                  	movb	$0, 46(%esi)
    3bc0: 83 ec 0c                     	subl	$12, %esp
    3bc3: 53                           	pushl	%ebx
    3bc4: e8 fc ff ff ff               	calll	0x3bc5 <init_driver+0x1a3>
    3bc9: 83 c4 10                     	addl	$16, %esp
    3bcc: b8 ff ff ff ff               	movl	$4294967295, %eax
    3bd1: e9 31 ff ff ff               	jmp	0x3b07 <init_driver+0xe5>
    3bd6: 83 ec 0c                     	subl	$12, %esp
    3bd9: 68 dc 47 00 00               	pushl	$18396
    3bde: 68 98 47 00 00               	pushl	$18328
    3be3: 6a ff                        	pushl	$-1
    3be5: 6a 01                        	pushl	$1
    3be7: 56                           	pushl	%esi
    3be8: e8 fc ff ff ff               	calll	0x3be9 <init_driver+0x1c7>
    3bed: 83 c4 14                     	addl	$20, %esp
    3bf0: 53                           	pushl	%ebx
    3bf1: e8 fc ff ff ff               	calll	0x3bf2 <init_driver+0x1d0>
    3bf6: 83 c4 10                     	addl	$16, %esp
    3bf9: b8 ff ff ff ff               	movl	$4294967295, %eax
    3bfe: e9 04 ff ff ff               	jmp	0x3b07 <init_driver+0xe5>
    3c03: e8 fc ff ff ff               	calll	0x3c04 <init_driver+0x1e2>

00003c08 <driver_post>:
    3c08: f3 0f 1e fb                  	endbr32
    3c0c: 53                           	pushl	%ebx
    3c0d: 83 ec 08                     	subl	$8, %esp
    3c10: 8b 54 24 10                  	movl	16(%esp), %edx
    3c14: 8b 44 24 18                  	movl	24(%esp), %eax
    3c18: 8b 5c 24 1c                  	movl	28(%esp), %ebx
    3c1c: 85 c0                        	testl	%eax, %eax
    3c1e: 75 17                        	jne	0x3c37 <driver_post+0x2f>
    3c20: 85 d2                        	testl	%edx, %edx
    3c22: 74 05                        	je	0x3c29 <driver_post+0x21>
    3c24: 80 3a 00                     	cmpb	$0, (%edx)
    3c27: 75 34                        	jne	0x3c5d <driver_post+0x55>
    3c29: 66 c7 03 4f 4b               	movw	$19279, (%ebx)
    3c2e: c6 43 02 00                  	movb	$0, 2(%ebx)
    3c32: 83 c4 08                     	addl	$8, %esp
    3c35: 5b                           	popl	%ebx
    3c36: c3                           	retl
    3c37: 83 ec 04                     	subl	$4, %esp
    3c3a: ff 74 24 18                  	pushl	24(%esp)
    3c3e: 68 f1 47 00 00               	pushl	$18417
    3c43: 6a 01                        	pushl	$1
    3c45: e8 fc ff ff ff               	calll	0x3c46 <driver_post+0x3e>
    3c4a: 66 c7 03 4f 4b               	movw	$19279, (%ebx)
    3c4f: c6 43 02 00                  	movb	$0, 2(%ebx)
    3c53: 83 c4 10                     	addl	$16, %esp
    3c56: b8 00 00 00 00               	movl	$0, %eax
    3c5b: eb d5                        	jmp	0x3c32 <driver_post+0x2a>
    3c5d: 83 ec 04                     	subl	$4, %esp
    3c60: 53                           	pushl	%ebx
    3c61: ff 74 24 1c                  	pushl	28(%esp)
    3c65: 68 08 48 00 00               	pushl	$18440
    3c6a: 52                           	pushl	%edx
    3c6b: 68 17 48 00 00               	pushl	$18455
    3c70: 68 6c 3b 00 00               	pushl	$15212
    3c75: 68 dc 47 00 00               	pushl	$18396
    3c7a: e8 8f f5 ff ff               	calll	0x320e <submitr>
    3c7f: 83 c4 20                     	addl	$32, %esp
    3c82: eb ae                        	jmp	0x3c32 <driver_post+0x2a>
    3c84: 66 90                        	nop
    3c86: 66 90                        	nop
    3c88: 66 90                        	nop
    3c8a: 66 90                        	nop
    3c8c: 66 90                        	nop
    3c8e: 66 90                        	nop

00003c90 <__libc_csu_init>:
    3c90: f3 0f 1e fb                  	endbr32
    3c94: 55                           	pushl	%ebp
    3c95: e8 6b 00 00 00               	calll	0x3d05 <__x86.get_pc_thunk.bp>
    3c9a: 81 c5 d2 32 00 00            	addl	$13010, %ebp
    3ca0: 57                           	pushl	%edi
    3ca1: 56                           	pushl	%esi
    3ca2: 53                           	pushl	%ebx
    3ca3: 83 ec 0c                     	subl	$12, %esp
    3ca6: 89 eb                        	movl	%ebp, %ebx
    3ca8: 8b 7c 24 28                  	movl	40(%esp), %edi
    3cac: e8 4f e3 ff ff               	calll	0x2000 <_init>
    3cb1: 8d 9d fc fe ff ff            	leal	-260(%ebp), %ebx
    3cb7: 8d 85 f8 fe ff ff            	leal	-264(%ebp), %eax
    3cbd: 29 c3                        	subl	%eax, %ebx
    3cbf: c1 fb 02                     	sarl	$2, %ebx
    3cc2: 74 29                        	je	0x3ced <__libc_csu_init+0x5d>
    3cc4: 31 f6                        	xorl	%esi, %esi
    3cc6: 8d b4 26 00 00 00 00         	leal	(%esi,%eiz), %esi
    3ccd: 8d 76 00                     	leal	(%esi), %esi
    3cd0: 83 ec 04                     	subl	$4, %esp
    3cd3: 57                           	pushl	%edi
    3cd4: ff 74 24 2c                  	pushl	44(%esp)
    3cd8: ff 74 24 2c                  	pushl	44(%esp)
    3cdc: ff 94 b5 f8 fe ff ff         	calll	*-264(%ebp,%esi,4)
    3ce3: 83 c6 01                     	addl	$1, %esi
    3ce6: 83 c4 10                     	addl	$16, %esp
    3ce9: 39 f3                        	cmpl	%esi, %ebx
    3ceb: 75 e3                        	jne	0x3cd0 <__libc_csu_init+0x40>
    3ced: 83 c4 0c                     	addl	$12, %esp
    3cf0: 5b                           	popl	%ebx
    3cf1: 5e                           	popl	%esi
    3cf2: 5f                           	popl	%edi
    3cf3: 5d                           	popl	%ebp
    3cf4: c3                           	retl
    3cf5: 8d b4 26 00 00 00 00         	leal	(%esi,%eiz), %esi
    3cfc: 8d 74 26 00                  	leal	(%esi,%eiz), %esi

00003d00 <__libc_csu_fini>:
    3d00: f3 0f 1e fb                  	endbr32
    3d04: c3                           	retl

00003d05 <__x86.get_pc_thunk.bp>:
    3d05: 8b 2c 24                     	movl	(%esp), %ebp
    3d08: c3                           	retl

Disassembly of section .fini:

00003d0c <_fini>:
    3d0c: f3 0f 1e fb                  	endbr32
    3d10: 53                           	pushl	%ebx
    3d11: 83 ec 08                     	subl	$8, %esp
    3d14: e8 17 e7 ff ff               	calll	0x2430 <__x86.get_pc_thunk.bx>
    3d19: 81 c3 53 32 00 00            	addl	$12883, %ebx
    3d1f: 83 c4 08                     	addl	$8, %esp
    3d22: 5b                           	popl	%ebx
    3d23: c3                           	retl
