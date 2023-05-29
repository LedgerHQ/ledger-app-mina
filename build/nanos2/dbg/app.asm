
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0002:	b08d      	sub	sp, #52	; 0x34
c0de0004:	b662      	cpsie	i
c0de0006:	f002 f8e3 	bl	c0de21d0 <os_boot>
c0de000a:	4e1f      	ldr	r6, [pc, #124]	; (c0de0088 <main+0x88>)
c0de000c:	f44f 7488 	mov.w	r4, #272	; 0x110
c0de0010:	ad01      	add	r5, sp, #4
c0de0012:	2700      	movs	r7, #0
c0de0014:	eb09 0006 	add.w	r0, r9, r6
c0de0018:	4621      	mov	r1, r4
c0de001a:	f006 fea1 	bl	c0de6d60 <__aeabi_memclr>
c0de001e:	f006 fc35 	bl	c0de688c <ux_stack_push>
c0de0022:	4628      	mov	r0, r5
c0de0024:	f006 feee 	bl	c0de6e04 <setjmp>
c0de0028:	b281      	uxth	r1, r0
c0de002a:	2905      	cmp	r1, #5
c0de002c:	f8ad 0030 	strh.w	r0, [sp, #48]	; 0x30
c0de0030:	d108      	bne.n	c0de0044 <main+0x44>
c0de0032:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0034:	f8ad 7030 	strh.w	r7, [sp, #48]	; 0x30
c0de0038:	f003 fd86 	bl	c0de3b48 <try_context_set>
c0de003c:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de003e:	f003 fd83 	bl	c0de3b48 <try_context_set>
c0de0042:	e7e7      	b.n	c0de0014 <main+0x14>
c0de0044:	b169      	cbz	r1, c0de0062 <main+0x62>
c0de0046:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0048:	2400      	movs	r4, #0
c0de004a:	f8ad 4030 	strh.w	r4, [sp, #48]	; 0x30
c0de004e:	f003 fd7b 	bl	c0de3b48 <try_context_set>
c0de0052:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0054:	f003 fd78 	bl	c0de3b48 <try_context_set>
c0de0058:	f002 f868 	bl	c0de212c <app_exit>
c0de005c:	4620      	mov	r0, r4
c0de005e:	b00d      	add	sp, #52	; 0x34
c0de0060:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0062:	a801      	add	r0, sp, #4
c0de0064:	f003 fd70 	bl	c0de3b48 <try_context_set>
c0de0068:	900b      	str	r0, [sp, #44]	; 0x2c
c0de006a:	f002 f9fd 	bl	c0de2468 <io_seproxyhal_init>
c0de006e:	f002 f87d 	bl	c0de216c <nv_app_state_init>
c0de0072:	2000      	movs	r0, #0
c0de0074:	f005 fad6 	bl	c0de5624 <USB_power>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f005 fad3 	bl	c0de5624 <USB_power>
c0de007e:	f002 f893 	bl	c0de21a8 <ui_idle>
c0de0082:	f001 fc51 	bl	c0de1928 <app_main>
c0de0086:	bf00      	nop
c0de0088:	00000058 	.word	0x00000058

c0de008c <bagl_draw_with_context>:
c0de008c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0090:	b08e      	sub	sp, #56	; 0x38
c0de0092:	f890 b000 	ldrb.w	fp, [r0]
c0de0096:	4604      	mov	r4, r0
c0de0098:	f00b 0a7f 	and.w	sl, fp, #127	; 0x7f
c0de009c:	f1ba 0f05 	cmp.w	sl, #5
c0de00a0:	910d      	str	r1, [sp, #52]	; 0x34
c0de00a2:	920b      	str	r2, [sp, #44]	; 0x2c
c0de00a4:	f000 80b9 	beq.w	c0de021a <bagl_draw_with_context+0x18e>
c0de00a8:	8b20      	ldrh	r0, [r4, #24]
c0de00aa:	4615      	mov	r5, r2
c0de00ac:	f000 fae0 	bl	c0de0670 <bagl_get_font>
c0de00b0:	2800      	cmp	r0, #0
c0de00b2:	f000 80b2 	beq.w	c0de021a <bagl_draw_with_context+0x18e>
c0de00b6:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de00ba:	8920      	ldrh	r0, [r4, #8]
c0de00bc:	f04f 0e00 	mov.w	lr, #0
c0de00c0:	9008      	str	r0, [sp, #32]
c0de00c2:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de00c4:	2800      	cmp	r0, #0
c0de00c6:	f000 8186 	beq.w	c0de03d6 <bagl_draw_with_context+0x34a>
c0de00ca:	2d00      	cmp	r5, #0
c0de00cc:	f000 8183 	beq.w	c0de03d6 <bagl_draw_with_context+0x34a>
c0de00d0:	88e1      	ldrh	r1, [r4, #6]
c0de00d2:	f243 0339 	movw	r3, #12345	; 0x3039
c0de00d6:	3164      	adds	r1, #100	; 0x64
c0de00d8:	b289      	uxth	r1, r1
c0de00da:	8b20      	ldrh	r0, [r4, #24]
c0de00dc:	e9cd 3100 	strd	r3, r1, [sp]
c0de00e0:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de00e2:	b2ea      	uxtb	r2, r5
c0de00e4:	2600      	movs	r6, #0
c0de00e6:	e9cd 1203 	strd	r1, r2, [sp, #12]
c0de00ea:	2100      	movs	r1, #0
c0de00ec:	2200      	movs	r2, #0
c0de00ee:	f243 0339 	movw	r3, #12345	; 0x3039
c0de00f2:	2700      	movs	r7, #0
c0de00f4:	46d0      	mov	r8, sl
c0de00f6:	f8cd c028 	str.w	ip, [sp, #40]	; 0x28
c0de00fa:	9602      	str	r6, [sp, #8]
c0de00fc:	970c      	str	r7, [sp, #48]	; 0x30
c0de00fe:	9605      	str	r6, [sp, #20]
c0de0100:	f000 faf2 	bl	c0de06e8 <bagl_draw_string>
c0de0104:	88e1      	ldrh	r1, [r4, #6]
c0de0106:	2d05      	cmp	r5, #5
c0de0108:	fa1f fa80 	uxth.w	sl, r0
c0de010c:	f8cd b018 	str.w	fp, [sp, #24]
c0de0110:	f0c0 81ac 	bcc.w	c0de046c <bagl_draw_with_context+0x3e0>
c0de0114:	4551      	cmp	r1, sl
c0de0116:	f080 81a9 	bcs.w	c0de046c <bagl_draw_with_context+0x3e0>
c0de011a:	8b20      	ldrh	r0, [r4, #24]
c0de011c:	4aeb      	ldr	r2, [pc, #940]	; (c0de04cc <bagl_draw_with_context+0x440>)
c0de011e:	2600      	movs	r6, #0
c0de0120:	2103      	movs	r1, #3
c0de0122:	447a      	add	r2, pc
c0de0124:	2364      	movs	r3, #100	; 0x64
c0de0126:	f243 0739 	movw	r7, #12345	; 0x3039
c0de012a:	e9cd 7300 	strd	r7, r3, [sp]
c0de012e:	e9cd 6202 	strd	r6, r2, [sp, #8]
c0de0132:	9104      	str	r1, [sp, #16]
c0de0134:	2100      	movs	r1, #0
c0de0136:	2200      	movs	r2, #0
c0de0138:	f243 0339 	movw	r3, #12345	; 0x3039
c0de013c:	9605      	str	r6, [sp, #20]
c0de013e:	f000 fad3 	bl	c0de06e8 <bagl_draw_string>
c0de0142:	9a0d      	ldr	r2, [sp, #52]	; 0x34
c0de0144:	88e1      	ldrh	r1, [r4, #6]
c0de0146:	ea4f 0e55 	mov.w	lr, r5, lsr #1
c0de014a:	ebb6 0f55 	cmp.w	r6, r5, lsr #1
c0de014e:	eb02 0255 	add.w	r2, r2, r5, lsr #1
c0de0152:	920c      	str	r2, [sp, #48]	; 0x30
c0de0154:	f000 818b 	beq.w	c0de046e <bagl_draw_with_context+0x3e2>
c0de0158:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
c0de015c:	458a      	cmp	sl, r1
c0de015e:	f240 8188 	bls.w	c0de0472 <bagl_draw_with_context+0x3e6>
c0de0162:	ebb5 070e 	subs.w	r7, r5, lr
c0de0166:	f000 8184 	beq.w	c0de0472 <bagl_draw_with_context+0x3e6>
c0de016a:	b280      	uxth	r0, r0
c0de016c:	9009      	str	r0, [sp, #36]	; 0x24
c0de016e:	2600      	movs	r6, #0
c0de0170:	f243 0339 	movw	r3, #12345	; 0x3039
c0de0174:	8b20      	ldrh	r0, [r4, #24]
c0de0176:	e9cd 3100 	strd	r3, r1, [sp]
c0de017a:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de017c:	fa5f f28e 	uxtb.w	r2, lr
c0de0180:	f04f 0a00 	mov.w	sl, #0
c0de0184:	e9cd 1203 	strd	r1, r2, [sp, #12]
c0de0188:	2100      	movs	r1, #0
c0de018a:	2200      	movs	r2, #0
c0de018c:	f243 0339 	movw	r3, #12345	; 0x3039
c0de0190:	46f3      	mov	fp, lr
c0de0192:	f8cd a008 	str.w	sl, [sp, #8]
c0de0196:	f8cd a014 	str.w	sl, [sp, #20]
c0de019a:	f000 faa5 	bl	c0de06e8 <bagl_draw_string>
c0de019e:	88e1      	ldrh	r1, [r4, #6]
c0de01a0:	f243 0339 	movw	r3, #12345	; 0x3039
c0de01a4:	b285      	uxth	r5, r0
c0de01a6:	8b20      	ldrh	r0, [r4, #24]
c0de01a8:	e9cd 3100 	strd	r3, r1, [sp]
c0de01ac:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de01ae:	b2fa      	uxtb	r2, r7
c0de01b0:	e9cd 1203 	strd	r1, r2, [sp, #12]
c0de01b4:	2100      	movs	r1, #0
c0de01b6:	2200      	movs	r2, #0
c0de01b8:	f243 0339 	movw	r3, #12345	; 0x3039
c0de01bc:	f8cd a008 	str.w	sl, [sp, #8]
c0de01c0:	f8cd a014 	str.w	sl, [sp, #20]
c0de01c4:	f000 fa90 	bl	c0de06e8 <bagl_draw_string>
c0de01c8:	9909      	ldr	r1, [sp, #36]	; 0x24
c0de01ca:	b280      	uxth	r0, r0
c0de01cc:	186a      	adds	r2, r5, r1
c0de01ce:	88e1      	ldrh	r1, [r4, #6]
c0de01d0:	eb02 0a00 	add.w	sl, r2, r0
c0de01d4:	458a      	cmp	sl, r1
c0de01d6:	f240 8244 	bls.w	c0de0662 <bagl_draw_with_context+0x5d6>
c0de01da:	2e01      	cmp	r6, #1
c0de01dc:	d006      	beq.n	c0de01ec <bagl_draw_with_context+0x160>
c0de01de:	b946      	cbnz	r6, c0de01f2 <bagl_draw_with_context+0x166>
c0de01e0:	46de      	mov	lr, fp
c0de01e2:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
c0de01e6:	f1ab 0e01 	sub.w	lr, fp, #1
c0de01ea:	e005      	b.n	c0de01f8 <bagl_draw_with_context+0x16c>
c0de01ec:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de01ee:	3001      	adds	r0, #1
c0de01f0:	900c      	str	r0, [sp, #48]	; 0x30
c0de01f2:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
c0de01f6:	46de      	mov	lr, fp
c0de01f8:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
c0de01fa:	f1be 0f00 	cmp.w	lr, #0
c0de01fe:	bf18      	it	ne
c0de0200:	458a      	cmpne	sl, r1
c0de0202:	f240 8136 	bls.w	c0de0472 <bagl_draw_with_context+0x3e6>
c0de0206:	e9dd 200c 	ldrd	r2, r0, [sp, #48]	; 0x30
c0de020a:	1a80      	subs	r0, r0, r2
c0de020c:	1947      	adds	r7, r0, r5
c0de020e:	f04f 0001 	mov.w	r0, #1
c0de0212:	ea20 0606 	bic.w	r6, r0, r6
c0de0216:	d1ab      	bne.n	c0de0170 <bagl_draw_with_context+0xe4>
c0de0218:	e12b      	b.n	c0de0472 <bagl_draw_with_context+0x3e6>
c0de021a:	2000      	movs	r0, #0
c0de021c:	900c      	str	r0, [sp, #48]	; 0x30
c0de021e:	2000      	movs	r0, #0
c0de0220:	f04f 0e00 	mov.w	lr, #0
c0de0224:	9008      	str	r0, [sp, #32]
c0de0226:	f04f 0c00 	mov.w	ip, #0
c0de022a:	2000      	movs	r0, #0
c0de022c:	9007      	str	r0, [sp, #28]
c0de022e:	2000      	movs	r0, #0
c0de0230:	9009      	str	r0, [sp, #36]	; 0x24
c0de0232:	88e3      	ldrh	r3, [r4, #6]
c0de0234:	8926      	ldrh	r6, [r4, #8]
c0de0236:	7ae7      	ldrb	r7, [r4, #11]
c0de0238:	0858      	lsrs	r0, r3, #1
c0de023a:	0871      	lsrs	r1, r6, #1
c0de023c:	ebb0 0f56 	cmp.w	r0, r6, lsr #1
c0de0240:	460a      	mov	r2, r1
c0de0242:	bf38      	it	cc
c0de0244:	085a      	lsrcc	r2, r3, #1
c0de0246:	42ba      	cmp	r2, r7
c0de0248:	46b8      	mov	r8, r7
c0de024a:	d803      	bhi.n	c0de0254 <bagl_draw_with_context+0x1c8>
c0de024c:	4288      	cmp	r0, r1
c0de024e:	bf2c      	ite	cs
c0de0250:	4688      	movcs	r8, r1
c0de0252:	4680      	movcc	r8, r0
c0de0254:	f1aa 0001 	sub.w	r0, sl, #1
c0de0258:	2804      	cmp	r0, #4
c0de025a:	d307      	bcc.n	c0de026c <bagl_draw_with_context+0x1e0>
c0de025c:	f1ba 0f06 	cmp.w	sl, #6
c0de0260:	f000 80bc 	beq.w	c0de03dc <bagl_draw_with_context+0x350>
c0de0264:	f1ba 0f07 	cmp.w	sl, #7
c0de0268:	f040 80d0 	bne.w	c0de040c <bagl_draw_with_context+0x380>
c0de026c:	f1ba 0f04 	cmp.w	sl, #4
c0de0270:	bf08      	it	eq
c0de0272:	2f00      	cmpeq	r7, #0
c0de0274:	d00b      	beq.n	c0de028e <bagl_draw_with_context+0x202>
c0de0276:	f1bb 0f81 	cmp.w	fp, #129	; 0x81
c0de027a:	f8cd c028 	str.w	ip, [sp, #40]	; 0x28
c0de027e:	dc0f      	bgt.n	c0de02a0 <bagl_draw_with_context+0x214>
c0de0280:	f1bb 0f02 	cmp.w	fp, #2
c0de0284:	d013      	beq.n	c0de02ae <bagl_draw_with_context+0x222>
c0de0286:	f1bb 0f07 	cmp.w	fp, #7
c0de028a:	d010      	beq.n	c0de02ae <bagl_draw_with_context+0x222>
c0de028c:	e0c1      	b.n	c0de0412 <bagl_draw_with_context+0x386>
c0de028e:	6920      	ldr	r0, [r4, #16]
c0de0290:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de0294:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de0298:	9600      	str	r6, [sp, #0]
c0de029a:	f003 fc95 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de029e:	e0b5      	b.n	c0de040c <bagl_draw_with_context+0x380>
c0de02a0:	f1bb 0f87 	cmp.w	fp, #135	; 0x87
c0de02a4:	d003      	beq.n	c0de02ae <bagl_draw_with_context+0x222>
c0de02a6:	f1bb 0f82 	cmp.w	fp, #130	; 0x82
c0de02aa:	f040 80b2 	bne.w	c0de0412 <bagl_draw_with_context+0x386>
c0de02ae:	6960      	ldr	r0, [r4, #20]
c0de02b0:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de02b4:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de02b8:	f1ba 0f07 	cmp.w	sl, #7
c0de02bc:	bf08      	it	eq
c0de02be:	eba2 020c 	subeq.w	r2, r2, ip
c0de02c2:	9f08      	ldr	r7, [sp, #32]
c0de02c4:	bf08      	it	eq
c0de02c6:	463e      	moveq	r6, r7
c0de02c8:	9600      	str	r6, [sp, #0]
c0de02ca:	4675      	mov	r5, lr
c0de02cc:	f003 fc7c 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de02d0:	46ac      	mov	ip, r5
c0de02d2:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de02d4:	f8dd e028 	ldr.w	lr, [sp, #40]	; 0x28
c0de02d8:	2800      	cmp	r0, #0
c0de02da:	f000 8097 	beq.w	c0de040c <bagl_draw_with_context+0x380>
c0de02de:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de02e0:	2800      	cmp	r0, #0
c0de02e2:	f000 8093 	beq.w	c0de040c <bagl_draw_with_context+0x380>
c0de02e6:	f1ba 0f04 	cmp.w	sl, #4
c0de02ea:	f000 808f 	beq.w	c0de040c <bagl_draw_with_context+0x380>
c0de02ee:	4658      	mov	r0, fp
c0de02f0:	f8d4 8010 	ldr.w	r8, [r4, #16]
c0de02f4:	6962      	ldr	r2, [r4, #20]
c0de02f6:	f00b 007d 	and.w	r0, fp, #125	; 0x7d
c0de02fa:	2801      	cmp	r0, #1
c0de02fc:	d106      	bne.n	c0de030c <bagl_draw_with_context+0x280>
c0de02fe:	7b20      	ldrb	r0, [r4, #12]
c0de0300:	2801      	cmp	r0, #1
c0de0302:	4640      	mov	r0, r8
c0de0304:	bf04      	itt	eq
c0de0306:	4610      	moveq	r0, r2
c0de0308:	4642      	moveq	r2, r8
c0de030a:	4680      	mov	r8, r0
c0de030c:	9e07      	ldr	r6, [sp, #28]
c0de030e:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de0312:	9d09      	ldr	r5, [sp, #36]	; 0x24
c0de0314:	46b3      	mov	fp, r6
c0de0316:	8b20      	ldrh	r0, [r4, #24]
c0de0318:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de031c:	186b      	adds	r3, r5, r1
c0de031e:	f1ba 0f07 	cmp.w	sl, #7
c0de0322:	bf08      	it	eq
c0de0324:	f1ce 0b00 	rsbeq	fp, lr, #0
c0de0328:	88e1      	ldrh	r1, [r4, #6]
c0de032a:	eb0b 0e07 	add.w	lr, fp, r7
c0de032e:	1b49      	subs	r1, r1, r5
c0de0330:	f1ba 0707 	subs.w	r7, sl, #7
c0de0334:	8925      	ldrh	r5, [r4, #8]
c0de0336:	bf18      	it	ne
c0de0338:	4637      	movne	r7, r6
c0de033a:	e9cd e100 	strd	lr, r1, [sp]
c0de033e:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de0340:	1bed      	subs	r5, r5, r7
c0de0342:	2600      	movs	r6, #0
c0de0344:	e9cd 1c03 	strd	r1, ip, [sp, #12]
c0de0348:	4641      	mov	r1, r8
c0de034a:	9502      	str	r5, [sp, #8]
c0de034c:	9605      	str	r6, [sp, #20]
c0de034e:	4615      	mov	r5, r2
c0de0350:	f000 f9ca 	bl	c0de06e8 <bagl_draw_string>
c0de0354:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de0356:	2900      	cmp	r1, #0
c0de0358:	d058      	beq.n	c0de040c <bagl_draw_with_context+0x380>
c0de035a:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de035e:	88e1      	ldrh	r1, [r4, #6]
c0de0360:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
c0de0364:	9508      	str	r5, [sp, #32]
c0de0366:	f8b4 e018 	ldrh.w	lr, [r4, #24]
c0de036a:	b283      	uxth	r3, r0
c0de036c:	eb0b 0002 	add.w	r0, fp, r2
c0de0370:	462a      	mov	r2, r5
c0de0372:	8925      	ldrh	r5, [r4, #8]
c0de0374:	eba1 060a 	sub.w	r6, r1, sl
c0de0378:	49bc      	ldr	r1, [pc, #752]	; (c0de066c <bagl_draw_with_context+0x5e0>)
c0de037a:	1bed      	subs	r5, r5, r7
c0de037c:	4479      	add	r1, pc
c0de037e:	f04f 0c03 	mov.w	ip, #3
c0de0382:	e9cd 0600 	strd	r0, r6, [sp]
c0de0386:	e9cd 5102 	strd	r5, r1, [sp, #8]
c0de038a:	4670      	mov	r0, lr
c0de038c:	4641      	mov	r1, r8
c0de038e:	2600      	movs	r6, #0
c0de0390:	f8cd c010 	str.w	ip, [sp, #16]
c0de0394:	9605      	str	r6, [sp, #20]
c0de0396:	f000 f9a7 	bl	c0de06e8 <bagl_draw_string>
c0de039a:	88e3      	ldrh	r3, [r4, #6]
c0de039c:	8925      	ldrh	r5, [r4, #8]
c0de039e:	f9b4 1004 	ldrsh.w	r1, [r4, #4]
c0de03a2:	eba3 060a 	sub.w	r6, r3, sl
c0de03a6:	b283      	uxth	r3, r0
c0de03a8:	1be8      	subs	r0, r5, r7
c0de03aa:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
c0de03ac:	9d0d      	ldr	r5, [sp, #52]	; 0x34
c0de03ae:	eb0b 0201 	add.w	r2, fp, r1
c0de03b2:	442f      	add	r7, r5
c0de03b4:	9d0c      	ldr	r5, [sp, #48]	; 0x30
c0de03b6:	8b21      	ldrh	r1, [r4, #24]
c0de03b8:	e9cd 2600 	strd	r2, r6, [sp]
c0de03bc:	aa02      	add	r2, sp, #8
c0de03be:	1b7f      	subs	r7, r7, r5
c0de03c0:	c2a1      	stmia	r2!, {r0, r5, r7}
c0de03c2:	9a08      	ldr	r2, [sp, #32]
c0de03c4:	f04f 0c00 	mov.w	ip, #0
c0de03c8:	4608      	mov	r0, r1
c0de03ca:	4641      	mov	r1, r8
c0de03cc:	f8cd c014 	str.w	ip, [sp, #20]
c0de03d0:	f000 f98a 	bl	c0de06e8 <bagl_draw_string>
c0de03d4:	e01a      	b.n	c0de040c <bagl_draw_with_context+0x380>
c0de03d6:	2000      	movs	r0, #0
c0de03d8:	900c      	str	r0, [sp, #48]	; 0x30
c0de03da:	e726      	b.n	c0de022a <bagl_draw_with_context+0x19e>
c0de03dc:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de03e0:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de03e4:	7b23      	ldrb	r3, [r4, #12]
c0de03e6:	6920      	ldr	r0, [r4, #16]
c0de03e8:	4439      	add	r1, r7
c0de03ea:	2b01      	cmp	r3, #1
c0de03ec:	443a      	add	r2, r7
c0de03ee:	d004      	beq.n	c0de03fa <bagl_draw_with_context+0x36e>
c0de03f0:	7aa3      	ldrb	r3, [r4, #10]
c0de03f2:	429f      	cmp	r7, r3
c0de03f4:	d901      	bls.n	c0de03fa <bagl_draw_with_context+0x36e>
c0de03f6:	1afb      	subs	r3, r7, r3
c0de03f8:	e000      	b.n	c0de03fc <bagl_draw_with_context+0x370>
c0de03fa:	2300      	movs	r3, #0
c0de03fc:	6966      	ldr	r6, [r4, #20]
c0de03fe:	25ff      	movs	r5, #255	; 0xff
c0de0400:	e9cd 5300 	strd	r5, r3, [sp]
c0de0404:	463b      	mov	r3, r7
c0de0406:	9602      	str	r6, [sp, #8]
c0de0408:	f000 fa62 	bl	c0de08d0 <bagl_draw_circle_helper>
c0de040c:	b00e      	add	sp, #56	; 0x38
c0de040e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0412:	7b20      	ldrb	r0, [r4, #12]
c0de0414:	f8cd e020 	str.w	lr, [sp, #32]
c0de0418:	2801      	cmp	r0, #1
c0de041a:	d159      	bne.n	c0de04d0 <bagl_draw_with_context+0x444>
c0de041c:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de0420:	6920      	ldr	r0, [r4, #16]
c0de0422:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de0426:	4441      	add	r1, r8
c0de0428:	eba3 0348 	sub.w	r3, r3, r8, lsl #1
c0de042c:	9600      	str	r6, [sp, #0]
c0de042e:	f003 fbcb 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0432:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de0436:	8923      	ldrh	r3, [r4, #8]
c0de0438:	6920      	ldr	r0, [r4, #16]
c0de043a:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de043e:	4442      	add	r2, r8
c0de0440:	eba3 0748 	sub.w	r7, r3, r8, lsl #1
c0de0444:	4643      	mov	r3, r8
c0de0446:	9700      	str	r7, [sp, #0]
c0de0448:	f003 fbbe 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de044c:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
c0de0450:	88e1      	ldrh	r1, [r4, #6]
c0de0452:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de0456:	8927      	ldrh	r7, [r4, #8]
c0de0458:	6920      	ldr	r0, [r4, #16]
c0de045a:	eba2 0208 	sub.w	r2, r2, r8
c0de045e:	4411      	add	r1, r2
c0de0460:	eb08 0203 	add.w	r2, r8, r3
c0de0464:	eba7 0748 	sub.w	r7, r7, r8, lsl #1
c0de0468:	4643      	mov	r3, r8
c0de046a:	e094      	b.n	c0de0596 <bagl_draw_with_context+0x50a>
c0de046c:	46ae      	mov	lr, r5
c0de046e:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
c0de0472:	8b20      	ldrh	r0, [r4, #24]
c0de0474:	f400 4240 	and.w	r2, r0, #49152	; 0xc000
c0de0478:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
c0de047c:	d005      	beq.n	c0de048a <bagl_draw_with_context+0x3fe>
c0de047e:	f5b2 4f80 	cmp.w	r2, #16384	; 0x4000
c0de0482:	d108      	bne.n	c0de0496 <bagl_draw_with_context+0x40a>
c0de0484:	eba1 010a 	sub.w	r1, r1, sl
c0de0488:	e002      	b.n	c0de0490 <bagl_draw_with_context+0x404>
c0de048a:	0849      	lsrs	r1, r1, #1
c0de048c:	eba1 015a 	sub.w	r1, r1, sl, lsr #1
c0de0490:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
c0de0494:	e000      	b.n	c0de0498 <bagl_draw_with_context+0x40c>
c0de0496:	2100      	movs	r1, #0
c0de0498:	f8dd b018 	ldr.w	fp, [sp, #24]
c0de049c:	f400 5040 	and.w	r0, r0, #12288	; 0x3000
c0de04a0:	46c2      	mov	sl, r8
c0de04a2:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
c0de04a6:	9109      	str	r1, [sp, #36]	; 0x24
c0de04a8:	d006      	beq.n	c0de04b8 <bagl_draw_with_context+0x42c>
c0de04aa:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
c0de04ae:	d109      	bne.n	c0de04c4 <bagl_draw_with_context+0x438>
c0de04b0:	8920      	ldrh	r0, [r4, #8]
c0de04b2:	eba0 000c 	sub.w	r0, r0, ip
c0de04b6:	e006      	b.n	c0de04c6 <bagl_draw_with_context+0x43a>
c0de04b8:	8920      	ldrh	r0, [r4, #8]
c0de04ba:	ea6f 015c 	mvn.w	r1, ip, lsr #1
c0de04be:	eb01 0050 	add.w	r0, r1, r0, lsr #1
c0de04c2:	e000      	b.n	c0de04c6 <bagl_draw_with_context+0x43a>
c0de04c4:	2000      	movs	r0, #0
c0de04c6:	9007      	str	r0, [sp, #28]
c0de04c8:	e6b3      	b.n	c0de0232 <bagl_draw_with_context+0x1a6>
c0de04ca:	bf00      	nop
c0de04cc:	00006da2 	.word	0x00006da2
c0de04d0:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de04d4:	6960      	ldr	r0, [r4, #20]
c0de04d6:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de04da:	4441      	add	r1, r8
c0de04dc:	eba3 0348 	sub.w	r3, r3, r8, lsl #1
c0de04e0:	9600      	str	r6, [sp, #0]
c0de04e2:	f003 fb71 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de04e6:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de04ea:	8923      	ldrh	r3, [r4, #8]
c0de04ec:	6960      	ldr	r0, [r4, #20]
c0de04ee:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de04f2:	4442      	add	r2, r8
c0de04f4:	eba3 0748 	sub.w	r7, r3, r8, lsl #1
c0de04f8:	4643      	mov	r3, r8
c0de04fa:	9700      	str	r7, [sp, #0]
c0de04fc:	f003 fb64 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0500:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
c0de0504:	ea6f 0208 	mvn.w	r2, r8
c0de0508:	88e1      	ldrh	r1, [r4, #6]
c0de050a:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de050e:	441a      	add	r2, r3
c0de0510:	8923      	ldrh	r3, [r4, #8]
c0de0512:	6960      	ldr	r0, [r4, #20]
c0de0514:	4411      	add	r1, r2
c0de0516:	eb08 0207 	add.w	r2, r8, r7
c0de051a:	eba3 0748 	sub.w	r7, r3, r8, lsl #1
c0de051e:	4643      	mov	r3, r8
c0de0520:	9700      	str	r7, [sp, #0]
c0de0522:	f003 fb51 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0526:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de052a:	88e3      	ldrh	r3, [r4, #6]
c0de052c:	6920      	ldr	r0, [r4, #16]
c0de052e:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de0532:	7aa7      	ldrb	r7, [r4, #10]
c0de0534:	4441      	add	r1, r8
c0de0536:	eba3 0348 	sub.w	r3, r3, r8, lsl #1
c0de053a:	9700      	str	r7, [sp, #0]
c0de053c:	f003 fb44 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0540:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de0544:	8923      	ldrh	r3, [r4, #8]
c0de0546:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de054a:	441a      	add	r2, r3
c0de054c:	88e3      	ldrh	r3, [r4, #6]
c0de054e:	6920      	ldr	r0, [r4, #16]
c0de0550:	7aa7      	ldrb	r7, [r4, #10]
c0de0552:	4441      	add	r1, r8
c0de0554:	3a01      	subs	r2, #1
c0de0556:	eba3 0348 	sub.w	r3, r3, r8, lsl #1
c0de055a:	9700      	str	r7, [sp, #0]
c0de055c:	f003 fb34 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0560:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de0564:	8927      	ldrh	r7, [r4, #8]
c0de0566:	6920      	ldr	r0, [r4, #16]
c0de0568:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de056c:	7aa3      	ldrb	r3, [r4, #10]
c0de056e:	4442      	add	r2, r8
c0de0570:	eba7 0748 	sub.w	r7, r7, r8, lsl #1
c0de0574:	9700      	str	r7, [sp, #0]
c0de0576:	f003 fb27 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de057a:	88e1      	ldrh	r1, [r4, #6]
c0de057c:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
c0de0580:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de0584:	8927      	ldrh	r7, [r4, #8]
c0de0586:	6920      	ldr	r0, [r4, #16]
c0de0588:	4411      	add	r1, r2
c0de058a:	eb08 0203 	add.w	r2, r8, r3
c0de058e:	7aa3      	ldrb	r3, [r4, #10]
c0de0590:	3901      	subs	r1, #1
c0de0592:	eba7 0748 	sub.w	r7, r7, r8, lsl #1
c0de0596:	9700      	str	r7, [sp, #0]
c0de0598:	f003 fb16 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de059c:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de05a0:	f1b8 0f02 	cmp.w	r8, #2
c0de05a4:	f4ff ae95 	bcc.w	c0de02d2 <bagl_draw_with_context+0x246>
c0de05a8:	7b20      	ldrb	r0, [r4, #12]
c0de05aa:	f8cd b018 	str.w	fp, [sp, #24]
c0de05ae:	2801      	cmp	r0, #1
c0de05b0:	f04f 0b00 	mov.w	fp, #0
c0de05b4:	d004      	beq.n	c0de05c0 <bagl_draw_with_context+0x534>
c0de05b6:	7aa0      	ldrb	r0, [r4, #10]
c0de05b8:	ebb8 0000 	subs.w	r0, r8, r0
c0de05bc:	bf28      	it	cs
c0de05be:	4683      	movcs	fp, r0
c0de05c0:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de05c4:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de05c8:	e9d4 0704 	ldrd	r0, r7, [r4, #16]
c0de05cc:	23c0      	movs	r3, #192	; 0xc0
c0de05ce:	4441      	add	r1, r8
c0de05d0:	4442      	add	r2, r8
c0de05d2:	e9cd 3b00 	strd	r3, fp, [sp]
c0de05d6:	4643      	mov	r3, r8
c0de05d8:	9702      	str	r7, [sp, #8]
c0de05da:	f000 f979 	bl	c0de08d0 <bagl_draw_circle_helper>
c0de05de:	88e1      	ldrh	r1, [r4, #6]
c0de05e0:	7aa2      	ldrb	r2, [r4, #10]
c0de05e2:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
c0de05e6:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de05ea:	6920      	ldr	r0, [r4, #16]
c0de05ec:	4419      	add	r1, r3
c0de05ee:	4442      	add	r2, r8
c0de05f0:	6966      	ldr	r6, [r4, #20]
c0de05f2:	2330      	movs	r3, #48	; 0x30
c0de05f4:	1a89      	subs	r1, r1, r2
c0de05f6:	eb08 0207 	add.w	r2, r8, r7
c0de05fa:	e9cd 3b00 	strd	r3, fp, [sp]
c0de05fe:	4643      	mov	r3, r8
c0de0600:	9602      	str	r6, [sp, #8]
c0de0602:	f000 f965 	bl	c0de08d0 <bagl_draw_circle_helper>
c0de0606:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de060a:	8923      	ldrh	r3, [r4, #8]
c0de060c:	7aa7      	ldrb	r7, [r4, #10]
c0de060e:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de0612:	441a      	add	r2, r3
c0de0614:	eb08 0307 	add.w	r3, r8, r7
c0de0618:	6920      	ldr	r0, [r4, #16]
c0de061a:	6967      	ldr	r7, [r4, #20]
c0de061c:	1ad2      	subs	r2, r2, r3
c0de061e:	230c      	movs	r3, #12
c0de0620:	4441      	add	r1, r8
c0de0622:	e9cd 3b00 	strd	r3, fp, [sp]
c0de0626:	4643      	mov	r3, r8
c0de0628:	9702      	str	r7, [sp, #8]
c0de062a:	f000 f951 	bl	c0de08d0 <bagl_draw_circle_helper>
c0de062e:	88e1      	ldrh	r1, [r4, #6]
c0de0630:	7aa2      	ldrb	r2, [r4, #10]
c0de0632:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
c0de0636:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de063a:	4419      	add	r1, r3
c0de063c:	4442      	add	r2, r8
c0de063e:	8923      	ldrh	r3, [r4, #8]
c0de0640:	1a89      	subs	r1, r1, r2
c0de0642:	1aba      	subs	r2, r7, r2
c0de0644:	6920      	ldr	r0, [r4, #16]
c0de0646:	6967      	ldr	r7, [r4, #20]
c0de0648:	441a      	add	r2, r3
c0de064a:	2303      	movs	r3, #3
c0de064c:	e9cd 3b00 	strd	r3, fp, [sp]
c0de0650:	4643      	mov	r3, r8
c0de0652:	9702      	str	r7, [sp, #8]
c0de0654:	f000 f93c 	bl	c0de08d0 <bagl_draw_circle_helper>
c0de0658:	f8dd b018 	ldr.w	fp, [sp, #24]
c0de065c:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de0660:	e637      	b.n	c0de02d2 <bagl_draw_with_context+0x246>
c0de0662:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
c0de0666:	46de      	mov	lr, fp
c0de0668:	e703      	b.n	c0de0472 <bagl_draw_with_context+0x3e6>
c0de066a:	bf00      	nop
c0de066c:	00006b48 	.word	0x00006b48

c0de0670 <bagl_get_font>:
c0de0670:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0672:	b081      	sub	sp, #4
c0de0674:	490e      	ldr	r1, [pc, #56]	; (c0de06b0 <bagl_get_font+0x40>)
c0de0676:	4e0f      	ldr	r6, [pc, #60]	; (c0de06b4 <bagl_get_font+0x44>)
c0de0678:	4479      	add	r1, pc
c0de067a:	4604      	mov	r4, r0
c0de067c:	6808      	ldr	r0, [r1, #0]
c0de067e:	447e      	add	r6, pc
c0de0680:	f36f 341f 	bfc	r4, #12, #20
c0de0684:	b188      	cbz	r0, c0de06aa <bagl_get_font+0x3a>
c0de0686:	eb06 0180 	add.w	r1, r6, r0, lsl #2
c0de068a:	f851 5c04 	ldr.w	r5, [r1, #-4]
c0de068e:	1e47      	subs	r7, r0, #1
c0de0690:	4628      	mov	r0, r5
c0de0692:	f002 fd6d 	bl	c0de3170 <pic>
c0de0696:	6800      	ldr	r0, [r0, #0]
c0de0698:	42a0      	cmp	r0, r4
c0de069a:	4638      	mov	r0, r7
c0de069c:	d1f2      	bne.n	c0de0684 <bagl_get_font+0x14>
c0de069e:	4628      	mov	r0, r5
c0de06a0:	b001      	add	sp, #4
c0de06a2:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de06a6:	f002 bd63 	b.w	c0de3170 <pic>
c0de06aa:	2000      	movs	r0, #0
c0de06ac:	b001      	add	sp, #4
c0de06ae:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de06b0:	00007bb4 	.word	0x00007bb4
c0de06b4:	00007ba2 	.word	0x00007ba2

c0de06b8 <bagl_compute_line_width>:
c0de06b8:	b580      	push	{r7, lr}
c0de06ba:	b086      	sub	sp, #24
c0de06bc:	469c      	mov	ip, r3
c0de06be:	f04f 0e00 	mov.w	lr, #0
c0de06c2:	f243 0339 	movw	r3, #12345	; 0x3039
c0de06c6:	e9cd 3100 	strd	r3, r1, [sp]
c0de06ca:	e9cd e202 	strd	lr, r2, [sp, #8]
c0de06ce:	2100      	movs	r1, #0
c0de06d0:	2200      	movs	r2, #0
c0de06d2:	f243 0339 	movw	r3, #12345	; 0x3039
c0de06d6:	f8cd e014 	str.w	lr, [sp, #20]
c0de06da:	f8cd c010 	str.w	ip, [sp, #16]
c0de06de:	f000 f803 	bl	c0de06e8 <bagl_draw_string>
c0de06e2:	b280      	uxth	r0, r0
c0de06e4:	b006      	add	sp, #24
c0de06e6:	bd80      	pop	{r7, pc}

c0de06e8 <bagl_draw_string>:
c0de06e8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de06ec:	b0a0      	sub	sp, #128	; 0x80
c0de06ee:	9f28      	ldr	r7, [sp, #160]	; 0xa0
c0de06f0:	f243 0539 	movw	r5, #12345	; 0x3039
c0de06f4:	ea83 0605 	eor.w	r6, r3, r5
c0de06f8:	407d      	eors	r5, r7
c0de06fa:	ea56 0405 	orrs.w	r4, r6, r5
c0de06fe:	4625      	mov	r5, r4
c0de0700:	bf08      	it	eq
c0de0702:	4627      	moveq	r7, r4
c0de0704:	970f      	str	r7, [sp, #60]	; 0x3c
c0de0706:	930b      	str	r3, [sp, #44]	; 0x2c
c0de0708:	bf18      	it	ne
c0de070a:	461d      	movne	r5, r3
c0de070c:	9208      	str	r2, [sp, #32]
c0de070e:	e9cd 2110 	strd	r2, r1, [sp, #64]	; 0x40
c0de0712:	f7ff ffad 	bl	c0de0670 <bagl_get_font>
c0de0716:	2800      	cmp	r0, #0
c0de0718:	f000 80c9 	beq.w	c0de08ae <bagl_draw_string+0x1c6>
c0de071c:	f8dd a0b0 	ldr.w	sl, [sp, #176]	; 0xb0
c0de0720:	4683      	mov	fp, r0
c0de0722:	fab4 f084 	clz	r0, r4
c0de0726:	f1ba 0f00 	cmp.w	sl, #0
c0de072a:	ea4f 1050 	mov.w	r0, r0, lsr #5
c0de072e:	900d      	str	r0, [sp, #52]	; 0x34
c0de0730:	f000 80bf 	beq.w	c0de08b2 <bagl_draw_string+0x1ca>
c0de0734:	e9dd 1029 	ldrd	r1, r0, [sp, #164]	; 0xa4
c0de0738:	f89b 2004 	ldrb.w	r2, [fp, #4]
c0de073c:	4429      	add	r1, r5
c0de073e:	910e      	str	r1, [sp, #56]	; 0x38
c0de0740:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0de0742:	9b2b      	ldr	r3, [sp, #172]	; 0xac
c0de0744:	4408      	add	r0, r1
c0de0746:	9007      	str	r0, [sp, #28]
c0de0748:	2001      	movs	r0, #1
c0de074a:	4090      	lsls	r0, r2
c0de074c:	920a      	str	r2, [sp, #40]	; 0x28
c0de074e:	9009      	str	r0, [sp, #36]	; 0x24
c0de0750:	f813 4b01 	ldrb.w	r4, [r3], #1
c0de0754:	f8bb 1008 	ldrh.w	r1, [fp, #8]
c0de0758:	f89b e005 	ldrb.w	lr, [fp, #5]
c0de075c:	428c      	cmp	r4, r1
c0de075e:	d303      	bcc.n	c0de0768 <bagl_draw_string+0x80>
c0de0760:	f8bb 000a 	ldrh.w	r0, [fp, #10]
c0de0764:	42a0      	cmp	r0, r4
c0de0766:	d20f      	bcs.n	c0de0788 <bagl_draw_string+0xa0>
c0de0768:	2cc0      	cmp	r4, #192	; 0xc0
c0de076a:	d303      	bcc.n	c0de0774 <bagl_draw_string+0x8c>
c0de076c:	f004 043f 	and.w	r4, r4, #63	; 0x3f
c0de0770:	2600      	movs	r6, #0
c0de0772:	e005      	b.n	c0de0780 <bagl_draw_string+0x98>
c0de0774:	b260      	sxtb	r0, r4
c0de0776:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
c0de077a:	dd65      	ble.n	c0de0848 <bagl_draw_string+0x160>
c0de077c:	2600      	movs	r6, #0
c0de077e:	2400      	movs	r4, #0
c0de0780:	f04f 0800 	mov.w	r8, #0
c0de0784:	e01c      	b.n	c0de07c0 <bagl_draw_string+0xd8>
c0de0786:	bf00      	nop
c0de0788:	f8db 0010 	ldr.w	r0, [fp, #16]
c0de078c:	1a67      	subs	r7, r4, r1
c0de078e:	930c      	str	r3, [sp, #48]	; 0x30
c0de0790:	4676      	mov	r6, lr
c0de0792:	f002 fced 	bl	c0de3170 <pic>
c0de0796:	f8db 100c 	ldr.w	r1, [fp, #12]
c0de079a:	4604      	mov	r4, r0
c0de079c:	4608      	mov	r0, r1
c0de079e:	f002 fce7 	bl	c0de3170 <pic>
c0de07a2:	eb00 0087 	add.w	r0, r0, r7, lsl #2
c0de07a6:	8841      	ldrh	r1, [r0, #2]
c0de07a8:	f8db 000c 	ldr.w	r0, [fp, #12]
c0de07ac:	eb04 0801 	add.w	r8, r4, r1
c0de07b0:	f002 fcde 	bl	c0de3170 <pic>
c0de07b4:	46b6      	mov	lr, r6
c0de07b6:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0de07b8:	f810 4027 	ldrb.w	r4, [r0, r7, lsl #2]
c0de07bc:	f89b 6007 	ldrb.w	r6, [fp, #7]
c0de07c0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de07c2:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de07c4:	2800      	cmp	r0, #0
c0de07c6:	eb05 0004 	add.w	r0, r5, r4
c0de07ca:	d005      	beq.n	c0de07d8 <bagl_draw_string+0xf0>
c0de07cc:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de07ce:	b3a9      	cbz	r1, c0de083c <bagl_draw_string+0x154>
c0de07d0:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de07d2:	4288      	cmp	r0, r1
c0de07d4:	d932      	bls.n	c0de083c <bagl_draw_string+0x154>
c0de07d6:	e075      	b.n	c0de08c4 <bagl_draw_string+0x1dc>
c0de07d8:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de07da:	4288      	cmp	r0, r1
c0de07dc:	dd0a      	ble.n	c0de07f4 <bagl_draw_string+0x10c>
c0de07de:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de07e0:	9907      	ldr	r1, [sp, #28]
c0de07e2:	4472      	add	r2, lr
c0de07e4:	eb02 000e 	add.w	r0, r2, lr
c0de07e8:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
c0de07ea:	4288      	cmp	r0, r1
c0de07ec:	4610      	mov	r0, r2
c0de07ee:	920f      	str	r2, [sp, #60]	; 0x3c
c0de07f0:	dd01      	ble.n	c0de07f6 <bagl_draw_string+0x10e>
c0de07f2:	e06b      	b.n	c0de08cc <bagl_draw_string+0x1e4>
c0de07f4:	462f      	mov	r7, r5
c0de07f6:	f1b8 0f00 	cmp.w	r8, #0
c0de07fa:	d014      	beq.n	c0de0826 <bagl_draw_string+0x13e>
c0de07fc:	46b4      	mov	ip, r6
c0de07fe:	9e0a      	ldr	r6, [sp, #40]	; 0x28
c0de0800:	9909      	ldr	r1, [sp, #36]	; 0x24
c0de0802:	fb0e f006 	mul.w	r0, lr, r6
c0de0806:	4360      	muls	r0, r4
c0de0808:	9100      	str	r1, [sp, #0]
c0de080a:	a910      	add	r1, sp, #64	; 0x40
c0de080c:	9101      	str	r1, [sp, #4]
c0de080e:	e9cd 8003 	strd	r8, r0, [sp, #12]
c0de0812:	4638      	mov	r0, r7
c0de0814:	4611      	mov	r1, r2
c0de0816:	4622      	mov	r2, r4
c0de0818:	461d      	mov	r5, r3
c0de081a:	4673      	mov	r3, lr
c0de081c:	9602      	str	r6, [sp, #8]
c0de081e:	4666      	mov	r6, ip
c0de0820:	f003 f9b8 	bl	c0de3b94 <bagl_hal_draw_bitmap_within_rect>
c0de0824:	e007      	b.n	c0de0836 <bagl_draw_string+0x14e>
c0de0826:	9808      	ldr	r0, [sp, #32]
c0de0828:	4639      	mov	r1, r7
c0de082a:	461d      	mov	r5, r3
c0de082c:	4623      	mov	r3, r4
c0de082e:	f8cd e000 	str.w	lr, [sp]
c0de0832:	f003 f9c9 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0836:	19a0      	adds	r0, r4, r6
c0de0838:	462b      	mov	r3, r5
c0de083a:	4438      	add	r0, r7
c0de083c:	f1ba 0a01 	subs.w	sl, sl, #1
c0de0840:	4605      	mov	r5, r0
c0de0842:	f47f af85 	bne.w	c0de0750 <bagl_draw_string+0x68>
c0de0846:	e035      	b.n	c0de08b4 <bagl_draw_string+0x1cc>
c0de0848:	06a0      	lsls	r0, r4, #26
c0de084a:	f04f 000f 	mov.w	r0, #15
c0de084e:	f8cd e018 	str.w	lr, [sp, #24]
c0de0852:	930c      	str	r3, [sp, #48]	; 0x30
c0de0854:	bf58      	it	pl
c0de0856:	200e      	movpl	r0, #14
c0de0858:	f7ff ff0a 	bl	c0de0670 <bagl_get_font>
c0de085c:	b1f0      	cbz	r0, c0de089c <bagl_draw_string+0x1b4>
c0de085e:	4607      	mov	r7, r0
c0de0860:	6900      	ldr	r0, [r0, #16]
c0de0862:	f002 fc85 	bl	c0de3170 <pic>
c0de0866:	68f9      	ldr	r1, [r7, #12]
c0de0868:	4680      	mov	r8, r0
c0de086a:	4608      	mov	r0, r1
c0de086c:	f002 fc80 	bl	c0de3170 <pic>
c0de0870:	f004 041f 	and.w	r4, r4, #31
c0de0874:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de0878:	8841      	ldrh	r1, [r0, #2]
c0de087a:	68f8      	ldr	r0, [r7, #12]
c0de087c:	4488      	add	r8, r1
c0de087e:	f002 fc77 	bl	c0de3170 <pic>
c0de0882:	f810 4024 	ldrb.w	r4, [r0, r4, lsl #2]
c0de0886:	f89b 0006 	ldrb.w	r0, [fp, #6]
c0de088a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de088c:	79b9      	ldrb	r1, [r7, #6]
c0de088e:	f897 e005 	ldrb.w	lr, [r7, #5]
c0de0892:	4410      	add	r0, r2
c0de0894:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0de0896:	1a42      	subs	r2, r0, r1
c0de0898:	2600      	movs	r6, #0
c0de089a:	e792      	b.n	c0de07c2 <bagl_draw_string+0xda>
c0de089c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de089e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0de08a0:	f8dd e018 	ldr.w	lr, [sp, #24]
c0de08a4:	2600      	movs	r6, #0
c0de08a6:	2400      	movs	r4, #0
c0de08a8:	f04f 0800 	mov.w	r8, #0
c0de08ac:	e789      	b.n	c0de07c2 <bagl_draw_string+0xda>
c0de08ae:	2500      	movs	r5, #0
c0de08b0:	e008      	b.n	c0de08c4 <bagl_draw_string+0x1dc>
c0de08b2:	4628      	mov	r0, r5
c0de08b4:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de08b6:	b109      	cbz	r1, c0de08bc <bagl_draw_string+0x1d4>
c0de08b8:	4605      	mov	r5, r0
c0de08ba:	e003      	b.n	c0de08c4 <bagl_draw_string+0x1dc>
c0de08bc:	b280      	uxth	r0, r0
c0de08be:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0de08c0:	ea40 4501 	orr.w	r5, r0, r1, lsl #16
c0de08c4:	4628      	mov	r0, r5
c0de08c6:	b020      	add	sp, #128	; 0x80
c0de08c8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de08cc:	b2a8      	uxth	r0, r5
c0de08ce:	e7f6      	b.n	c0de08be <bagl_draw_string+0x1d6>

c0de08d0 <bagl_draw_circle_helper>:
c0de08d0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de08d4:	b098      	sub	sp, #96	; 0x60
c0de08d6:	9217      	str	r2, [sp, #92]	; 0x5c
c0de08d8:	9a21      	ldr	r2, [sp, #132]	; 0x84
c0de08da:	4607      	mov	r7, r0
c0de08dc:	1a9e      	subs	r6, r3, r2
c0de08de:	2a00      	cmp	r2, #0
c0de08e0:	4610      	mov	r0, r2
c0de08e2:	bf18      	it	ne
c0de08e4:	2001      	movne	r0, #1
c0de08e6:	2500      	movs	r5, #0
c0de08e8:	2e00      	cmp	r6, #0
c0de08ea:	9612      	str	r6, [sp, #72]	; 0x48
c0de08ec:	bfc8      	it	gt
c0de08ee:	2501      	movgt	r5, #1
c0de08f0:	2b00      	cmp	r3, #0
c0de08f2:	9313      	str	r3, [sp, #76]	; 0x4c
c0de08f4:	9116      	str	r1, [sp, #88]	; 0x58
c0de08f6:	f100 81c2 	bmi.w	c0de0c7e <bagl_draw_circle_helper+0x3ae>
c0de08fa:	9e13      	ldr	r6, [sp, #76]	; 0x4c
c0de08fc:	9920      	ldr	r1, [sp, #128]	; 0x80
c0de08fe:	4028      	ands	r0, r5
c0de0900:	9015      	str	r0, [sp, #84]	; 0x54
c0de0902:	f1c6 0001 	rsb	r0, r6, #1
c0de0906:	9011      	str	r0, [sp, #68]	; 0x44
c0de0908:	f001 0001 	and.w	r0, r1, #1
c0de090c:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de090e:	9010      	str	r0, [sp, #64]	; 0x40
c0de0910:	f001 0002 	and.w	r0, r1, #2
c0de0914:	900c      	str	r0, [sp, #48]	; 0x30
c0de0916:	1e58      	subs	r0, r3, #1
c0de0918:	9007      	str	r0, [sp, #28]
c0de091a:	f001 0004 	and.w	r0, r1, #4
c0de091e:	900d      	str	r0, [sp, #52]	; 0x34
c0de0920:	f001 0008 	and.w	r0, r1, #8
c0de0924:	900b      	str	r0, [sp, #44]	; 0x2c
c0de0926:	f001 0010 	and.w	r0, r1, #16
c0de092a:	900f      	str	r0, [sp, #60]	; 0x3c
c0de092c:	f001 0020 	and.w	r0, r1, #32
c0de0930:	900a      	str	r0, [sp, #40]	; 0x28
c0de0932:	f001 0040 	and.w	r0, r1, #64	; 0x40
c0de0936:	900e      	str	r0, [sp, #56]	; 0x38
c0de0938:	f001 0080 	and.w	r0, r1, #128	; 0x80
c0de093c:	9009      	str	r0, [sp, #36]	; 0x24
c0de093e:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de0940:	1b91      	subs	r1, r2, r6
c0de0942:	4410      	add	r0, r2
c0de0944:	1b80      	subs	r0, r0, r6
c0de0946:	9103      	str	r1, [sp, #12]
c0de0948:	f1c3 0101 	rsb	r1, r3, #1
c0de094c:	e9cd 1005 	strd	r1, r0, [sp, #20]
c0de0950:	3001      	adds	r0, #1
c0de0952:	f04f 0b00 	mov.w	fp, #0
c0de0956:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
c0de095a:	f04f 0a01 	mov.w	sl, #1
c0de095e:	f04f 0800 	mov.w	r8, #0
c0de0962:	9004      	str	r0, [sp, #16]
c0de0964:	9708      	str	r7, [sp, #32]
c0de0966:	bf00      	nop
c0de0968:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de096a:	1c4c      	adds	r4, r1, #1
c0de096c:	9114      	str	r1, [sp, #80]	; 0x50
c0de096e:	b928      	cbnz	r0, c0de097c <bagl_draw_circle_helper+0xac>
c0de0970:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de0972:	2800      	cmp	r0, #0
c0de0974:	d053      	beq.n	c0de0a1e <bagl_draw_circle_helper+0x14e>
c0de0976:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de0978:	bb18      	cbnz	r0, c0de09c2 <bagl_draw_circle_helper+0xf2>
c0de097a:	e046      	b.n	c0de0a0a <bagl_draw_circle_helper+0x13a>
c0de097c:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de097e:	b3c8      	cbz	r0, c0de09f4 <bagl_draw_circle_helper+0x124>
c0de0980:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0982:	46a2      	mov	sl, r4
c0de0984:	4408      	add	r0, r1
c0de0986:	1c45      	adds	r5, r0, #1
c0de0988:	9807      	ldr	r0, [sp, #28]
c0de098a:	463c      	mov	r4, r7
c0de098c:	9f16      	ldr	r7, [sp, #88]	; 0x58
c0de098e:	1a33      	subs	r3, r6, r0
c0de0990:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de0992:	f04f 0c01 	mov.w	ip, #1
c0de0996:	4639      	mov	r1, r7
c0de0998:	462a      	mov	r2, r5
c0de099a:	f8cd c000 	str.w	ip, [sp]
c0de099e:	f003 f913 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de09a2:	9905      	ldr	r1, [sp, #20]
c0de09a4:	19f0      	adds	r0, r6, r7
c0de09a6:	4627      	mov	r7, r4
c0de09a8:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de09aa:	4654      	mov	r4, sl
c0de09ac:	f04f 0a01 	mov.w	sl, #1
c0de09b0:	4401      	add	r1, r0
c0de09b2:	4638      	mov	r0, r7
c0de09b4:	462a      	mov	r2, r5
c0de09b6:	f8cd a000 	str.w	sl, [sp]
c0de09ba:	f003 f905 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de09be:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de09c0:	b368      	cbz	r0, c0de0a1e <bagl_draw_circle_helper+0x14e>
c0de09c2:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de09c4:	42b0      	cmp	r0, r6
c0de09c6:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de09c8:	eb06 0500 	add.w	r5, r6, r0
c0de09cc:	d00a      	beq.n	c0de09e4 <bagl_draw_circle_helper+0x114>
c0de09ce:	9803      	ldr	r0, [sp, #12]
c0de09d0:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de09d2:	462a      	mov	r2, r5
c0de09d4:	4408      	add	r0, r1
c0de09d6:	1c83      	adds	r3, r0, #2
c0de09d8:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de09da:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de09dc:	f8cd a000 	str.w	sl, [sp]
c0de09e0:	f003 f8f2 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de09e4:	9806      	ldr	r0, [sp, #24]
c0de09e6:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de09e8:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de09ea:	4408      	add	r0, r1
c0de09ec:	1c81      	adds	r1, r0, #2
c0de09ee:	4638      	mov	r0, r7
c0de09f0:	462a      	mov	r2, r5
c0de09f2:	e010      	b.n	c0de0a16 <bagl_draw_circle_helper+0x146>
c0de09f4:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de09f6:	4633      	mov	r3, r6
c0de09f8:	1842      	adds	r2, r0, r1
c0de09fa:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de09fc:	4638      	mov	r0, r7
c0de09fe:	f8cd a000 	str.w	sl, [sp]
c0de0a02:	f003 f8e1 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0a06:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de0a08:	b148      	cbz	r0, c0de0a1e <bagl_draw_circle_helper+0x14e>
c0de0a0a:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0a0c:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de0a0e:	4430      	add	r0, r6
c0de0a10:	1e42      	subs	r2, r0, #1
c0de0a12:	4638      	mov	r0, r7
c0de0a14:	4623      	mov	r3, r4
c0de0a16:	f8cd a000 	str.w	sl, [sp]
c0de0a1a:	f003 f8d5 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0a1e:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de0a20:	b930      	cbnz	r0, c0de0a30 <bagl_draw_circle_helper+0x160>
c0de0a22:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0a24:	2800      	cmp	r0, #0
c0de0a26:	d05d      	beq.n	c0de0ae4 <bagl_draw_circle_helper+0x214>
c0de0a28:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de0a2a:	bb30      	cbnz	r0, c0de0a7a <bagl_draw_circle_helper+0x1aa>
c0de0a2c:	e038      	b.n	c0de0aa0 <bagl_draw_circle_helper+0x1d0>
c0de0a2e:	bf00      	nop
c0de0a30:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de0a32:	2800      	cmp	r0, #0
c0de0a34:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de0a36:	eba0 0506 	sub.w	r5, r0, r6
c0de0a3a:	d025      	beq.n	c0de0a88 <bagl_draw_circle_helper+0x1b8>
c0de0a3c:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0a3e:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de0a40:	f8dd a01c 	ldr.w	sl, [sp, #28]
c0de0a44:	4408      	add	r0, r1
c0de0a46:	1c47      	adds	r7, r0, #1
c0de0a48:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de0a4a:	f04f 0c01 	mov.w	ip, #1
c0de0a4e:	eba6 030a 	sub.w	r3, r6, sl
c0de0a52:	4629      	mov	r1, r5
c0de0a54:	463a      	mov	r2, r7
c0de0a56:	f8cd c000 	str.w	ip, [sp]
c0de0a5a:	f003 f8b5 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0a5e:	9808      	ldr	r0, [sp, #32]
c0de0a60:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de0a62:	eba5 010a 	sub.w	r1, r5, sl
c0de0a66:	f04f 0a01 	mov.w	sl, #1
c0de0a6a:	463a      	mov	r2, r7
c0de0a6c:	9f08      	ldr	r7, [sp, #32]
c0de0a6e:	f8cd a000 	str.w	sl, [sp]
c0de0a72:	f003 f8a9 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0a76:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0a78:	b3a0      	cbz	r0, c0de0ae4 <bagl_draw_circle_helper+0x214>
c0de0a7a:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de0a7c:	42b0      	cmp	r0, r6
c0de0a7e:	d118      	bne.n	c0de0ab2 <bagl_draw_circle_helper+0x1e2>
c0de0a80:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0a82:	1835      	adds	r5, r6, r0
c0de0a84:	e024      	b.n	c0de0ad0 <bagl_draw_circle_helper+0x200>
c0de0a86:	bf00      	nop
c0de0a88:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0a8a:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de0a8c:	4633      	mov	r3, r6
c0de0a8e:	1842      	adds	r2, r0, r1
c0de0a90:	4638      	mov	r0, r7
c0de0a92:	4629      	mov	r1, r5
c0de0a94:	f8cd a000 	str.w	sl, [sp]
c0de0a98:	f003 f896 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0a9c:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0a9e:	b308      	cbz	r0, c0de0ae4 <bagl_draw_circle_helper+0x214>
c0de0aa0:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de0aa2:	4623      	mov	r3, r4
c0de0aa4:	eb00 010b 	add.w	r1, r0, fp
c0de0aa8:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0aaa:	4430      	add	r0, r6
c0de0aac:	1e42      	subs	r2, r0, #1
c0de0aae:	4638      	mov	r0, r7
c0de0ab0:	e014      	b.n	c0de0adc <bagl_draw_circle_helper+0x20c>
c0de0ab2:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de0ab4:	9a14      	ldr	r2, [sp, #80]	; 0x50
c0de0ab6:	eb00 010b 	add.w	r1, r0, fp
c0de0aba:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0abc:	f8cd a000 	str.w	sl, [sp]
c0de0ac0:	1835      	adds	r5, r6, r0
c0de0ac2:	9803      	ldr	r0, [sp, #12]
c0de0ac4:	4410      	add	r0, r2
c0de0ac6:	1c83      	adds	r3, r0, #2
c0de0ac8:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de0aca:	462a      	mov	r2, r5
c0de0acc:	f003 f87c 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0ad0:	9804      	ldr	r0, [sp, #16]
c0de0ad2:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de0ad4:	eb00 010b 	add.w	r1, r0, fp
c0de0ad8:	4638      	mov	r0, r7
c0de0ada:	462a      	mov	r2, r5
c0de0adc:	f8cd a000 	str.w	sl, [sp]
c0de0ae0:	f003 f872 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0ae4:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de0ae6:	b928      	cbnz	r0, c0de0af4 <bagl_draw_circle_helper+0x224>
c0de0ae8:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0aea:	2800      	cmp	r0, #0
c0de0aec:	d055      	beq.n	c0de0b9a <bagl_draw_circle_helper+0x2ca>
c0de0aee:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de0af0:	bb28      	cbnz	r0, c0de0b3e <bagl_draw_circle_helper+0x26e>
c0de0af2:	e049      	b.n	c0de0b88 <bagl_draw_circle_helper+0x2b8>
c0de0af4:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de0af6:	f8dd a05c 	ldr.w	sl, [sp, #92]	; 0x5c
c0de0afa:	44da      	add	sl, fp
c0de0afc:	b3c0      	cbz	r0, c0de0b70 <bagl_draw_circle_helper+0x2a0>
c0de0afe:	9807      	ldr	r0, [sp, #28]
c0de0b00:	f8cd 8008 	str.w	r8, [sp, #8]
c0de0b04:	46a0      	mov	r8, r4
c0de0b06:	463c      	mov	r4, r7
c0de0b08:	9f16      	ldr	r7, [sp, #88]	; 0x58
c0de0b0a:	1a33      	subs	r3, r6, r0
c0de0b0c:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de0b0e:	4639      	mov	r1, r7
c0de0b10:	4652      	mov	r2, sl
c0de0b12:	2501      	movs	r5, #1
c0de0b14:	9500      	str	r5, [sp, #0]
c0de0b16:	f003 f857 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0b1a:	9905      	ldr	r1, [sp, #20]
c0de0b1c:	19f0      	adds	r0, r6, r7
c0de0b1e:	4627      	mov	r7, r4
c0de0b20:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de0b22:	4644      	mov	r4, r8
c0de0b24:	f8dd 8008 	ldr.w	r8, [sp, #8]
c0de0b28:	4401      	add	r1, r0
c0de0b2a:	4638      	mov	r0, r7
c0de0b2c:	4652      	mov	r2, sl
c0de0b2e:	f04f 0a01 	mov.w	sl, #1
c0de0b32:	f8cd a000 	str.w	sl, [sp]
c0de0b36:	f003 f847 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0b3a:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0b3c:	b368      	cbz	r0, c0de0b9a <bagl_draw_circle_helper+0x2ca>
c0de0b3e:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de0b40:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de0b42:	42b0      	cmp	r0, r6
c0de0b44:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0b46:	eba0 0506 	sub.w	r5, r0, r6
c0de0b4a:	d00a      	beq.n	c0de0b62 <bagl_draw_circle_helper+0x292>
c0de0b4c:	9803      	ldr	r0, [sp, #12]
c0de0b4e:	462a      	mov	r2, r5
c0de0b50:	4408      	add	r0, r1
c0de0b52:	1c83      	adds	r3, r0, #2
c0de0b54:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de0b56:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de0b58:	f8cd a000 	str.w	sl, [sp]
c0de0b5c:	f003 f834 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0b60:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de0b62:	9806      	ldr	r0, [sp, #24]
c0de0b64:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de0b66:	4408      	add	r0, r1
c0de0b68:	1c81      	adds	r1, r0, #2
c0de0b6a:	4638      	mov	r0, r7
c0de0b6c:	462a      	mov	r2, r5
c0de0b6e:	e010      	b.n	c0de0b92 <bagl_draw_circle_helper+0x2c2>
c0de0b70:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de0b72:	4638      	mov	r0, r7
c0de0b74:	4652      	mov	r2, sl
c0de0b76:	4633      	mov	r3, r6
c0de0b78:	f04f 0a01 	mov.w	sl, #1
c0de0b7c:	f8cd a000 	str.w	sl, [sp]
c0de0b80:	f003 f822 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0b84:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0b86:	b140      	cbz	r0, c0de0b9a <bagl_draw_circle_helper+0x2ca>
c0de0b88:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0b8a:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de0b8c:	1b82      	subs	r2, r0, r6
c0de0b8e:	4638      	mov	r0, r7
c0de0b90:	4623      	mov	r3, r4
c0de0b92:	f8cd a000 	str.w	sl, [sp]
c0de0b96:	f003 f817 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0b9a:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de0b9c:	b930      	cbnz	r0, c0de0bac <bagl_draw_circle_helper+0x2dc>
c0de0b9e:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de0ba0:	2800      	cmp	r0, #0
c0de0ba2:	d057      	beq.n	c0de0c54 <bagl_draw_circle_helper+0x384>
c0de0ba4:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de0ba6:	bb18      	cbnz	r0, c0de0bf0 <bagl_draw_circle_helper+0x320>
c0de0ba8:	e033      	b.n	c0de0c12 <bagl_draw_circle_helper+0x342>
c0de0baa:	bf00      	nop
c0de0bac:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de0bae:	1b87      	subs	r7, r0, r6
c0de0bb0:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de0bb2:	2800      	cmp	r0, #0
c0de0bb4:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0bb6:	eb00 050b 	add.w	r5, r0, fp
c0de0bba:	d01f      	beq.n	c0de0bfc <bagl_draw_circle_helper+0x32c>
c0de0bbc:	46a2      	mov	sl, r4
c0de0bbe:	9c07      	ldr	r4, [sp, #28]
c0de0bc0:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de0bc2:	f04f 0c01 	mov.w	ip, #1
c0de0bc6:	1b33      	subs	r3, r6, r4
c0de0bc8:	4639      	mov	r1, r7
c0de0bca:	462a      	mov	r2, r5
c0de0bcc:	f8cd c000 	str.w	ip, [sp]
c0de0bd0:	f002 fffa 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0bd4:	1b39      	subs	r1, r7, r4
c0de0bd6:	9f08      	ldr	r7, [sp, #32]
c0de0bd8:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de0bda:	4654      	mov	r4, sl
c0de0bdc:	f04f 0a01 	mov.w	sl, #1
c0de0be0:	4638      	mov	r0, r7
c0de0be2:	462a      	mov	r2, r5
c0de0be4:	f8cd a000 	str.w	sl, [sp]
c0de0be8:	f002 ffee 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0bec:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de0bee:	b388      	cbz	r0, c0de0c54 <bagl_draw_circle_helper+0x384>
c0de0bf0:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de0bf2:	42b0      	cmp	r0, r6
c0de0bf4:	d115      	bne.n	c0de0c22 <bagl_draw_circle_helper+0x352>
c0de0bf6:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0bf8:	1b85      	subs	r5, r0, r6
c0de0bfa:	e021      	b.n	c0de0c40 <bagl_draw_circle_helper+0x370>
c0de0bfc:	9808      	ldr	r0, [sp, #32]
c0de0bfe:	4639      	mov	r1, r7
c0de0c00:	462a      	mov	r2, r5
c0de0c02:	4633      	mov	r3, r6
c0de0c04:	4607      	mov	r7, r0
c0de0c06:	f8cd a000 	str.w	sl, [sp]
c0de0c0a:	f002 ffdd 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0c0e:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de0c10:	b300      	cbz	r0, c0de0c54 <bagl_draw_circle_helper+0x384>
c0de0c12:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de0c14:	4623      	mov	r3, r4
c0de0c16:	eb00 010b 	add.w	r1, r0, fp
c0de0c1a:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0c1c:	1b82      	subs	r2, r0, r6
c0de0c1e:	4638      	mov	r0, r7
c0de0c20:	e014      	b.n	c0de0c4c <bagl_draw_circle_helper+0x37c>
c0de0c22:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de0c24:	9a14      	ldr	r2, [sp, #80]	; 0x50
c0de0c26:	eb00 010b 	add.w	r1, r0, fp
c0de0c2a:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de0c2c:	f8cd a000 	str.w	sl, [sp]
c0de0c30:	1b85      	subs	r5, r0, r6
c0de0c32:	9803      	ldr	r0, [sp, #12]
c0de0c34:	4410      	add	r0, r2
c0de0c36:	1c83      	adds	r3, r0, #2
c0de0c38:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de0c3a:	462a      	mov	r2, r5
c0de0c3c:	f002 ffc4 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0c40:	9804      	ldr	r0, [sp, #16]
c0de0c42:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de0c44:	eb00 010b 	add.w	r1, r0, fp
c0de0c48:	4638      	mov	r0, r7
c0de0c4a:	462a      	mov	r2, r5
c0de0c4c:	f8cd a000 	str.w	sl, [sp]
c0de0c50:	f002 ffba 	bl	c0de3bc8 <bagl_hal_draw_rect>
c0de0c54:	f108 0801 	add.w	r8, r8, #1
c0de0c58:	9a11      	ldr	r2, [sp, #68]	; 0x44
c0de0c5a:	1e70      	subs	r0, r6, #1
c0de0c5c:	4641      	mov	r1, r8
c0de0c5e:	2a01      	cmp	r2, #1
c0de0c60:	bfac      	ite	ge
c0de0c62:	1a09      	subge	r1, r1, r0
c0de0c64:	4630      	movlt	r0, r6
c0de0c66:	eb02 0141 	add.w	r1, r2, r1, lsl #1
c0de0c6a:	3101      	adds	r1, #1
c0de0c6c:	9111      	str	r1, [sp, #68]	; 0x44
c0de0c6e:	f1ab 0b01 	sub.w	fp, fp, #1
c0de0c72:	4284      	cmp	r4, r0
c0de0c74:	4621      	mov	r1, r4
c0de0c76:	9613      	str	r6, [sp, #76]	; 0x4c
c0de0c78:	4606      	mov	r6, r0
c0de0c7a:	f6ff ae75 	blt.w	c0de0968 <bagl_draw_circle_helper+0x98>
c0de0c7e:	b018      	add	sp, #96	; 0x60
c0de0c80:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de0c84 <bagl_draw_glyph>:
c0de0c84:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0c88:	b088      	sub	sp, #32
c0de0c8a:	460e      	mov	r6, r1
c0de0c8c:	6889      	ldr	r1, [r1, #8]
c0de0c8e:	2902      	cmp	r1, #2
c0de0c90:	d826      	bhi.n	c0de0ce0 <bagl_draw_glyph+0x5c>
c0de0c92:	f9b0 2002 	ldrsh.w	r2, [r0, #2]
c0de0c96:	f9b0 0004 	ldrsh.w	r0, [r0, #4]
c0de0c9a:	9207      	str	r2, [sp, #28]
c0de0c9c:	9006      	str	r0, [sp, #24]
c0de0c9e:	68f0      	ldr	r0, [r6, #12]
c0de0ca0:	2201      	movs	r2, #1
c0de0ca2:	e9d6 7b00 	ldrd	r7, fp, [r6]
c0de0ca6:	fa02 f801 	lsl.w	r8, r2, r1
c0de0caa:	f002 fa61 	bl	c0de3170 <pic>
c0de0cae:	6931      	ldr	r1, [r6, #16]
c0de0cb0:	f8d6 a008 	ldr.w	sl, [r6, #8]
c0de0cb4:	4605      	mov	r5, r0
c0de0cb6:	4608      	mov	r0, r1
c0de0cb8:	f002 fa5a 	bl	c0de3170 <pic>
c0de0cbc:	4604      	mov	r4, r0
c0de0cbe:	68b1      	ldr	r1, [r6, #8]
c0de0cc0:	e9d6 0200 	ldrd	r0, r2, [r6]
c0de0cc4:	465b      	mov	r3, fp
c0de0cc6:	4348      	muls	r0, r1
c0de0cc8:	4350      	muls	r0, r2
c0de0cca:	9004      	str	r0, [sp, #16]
c0de0ccc:	e9dd 1006 	ldrd	r1, r0, [sp, #24]
c0de0cd0:	463a      	mov	r2, r7
c0de0cd2:	e9cd 8500 	strd	r8, r5, [sp]
c0de0cd6:	f8cd a008 	str.w	sl, [sp, #8]
c0de0cda:	9403      	str	r4, [sp, #12]
c0de0cdc:	f002 ff5a 	bl	c0de3b94 <bagl_hal_draw_bitmap_within_rect>
c0de0ce0:	b008      	add	sp, #32
c0de0ce2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de0ce6 <field_copy>:
c0de0ce6:	b580      	push	{r7, lr}
c0de0ce8:	2220      	movs	r2, #32
c0de0cea:	f006 f83e 	bl	c0de6d6a <__aeabi_memmove>
c0de0cee:	bd80      	pop	{r7, pc}

c0de0cf0 <field_add>:
c0de0cf0:	b580      	push	{r7, lr}
c0de0cf2:	b082      	sub	sp, #8
c0de0cf4:	4b06      	ldr	r3, [pc, #24]	; (c0de0d10 <field_add+0x20>)
c0de0cf6:	f04f 0c20 	mov.w	ip, #32
c0de0cfa:	447b      	add	r3, pc
c0de0cfc:	f8cd c000 	str.w	ip, [sp]
c0de0d00:	f000 fc7c 	bl	c0de15fc <cx_math_addm_no_throw>
c0de0d04:	b908      	cbnz	r0, c0de0d0a <field_add+0x1a>
c0de0d06:	b002      	add	sp, #8
c0de0d08:	bd80      	pop	{r7, pc}
c0de0d0a:	f001 fa64 	bl	c0de21d6 <os_longjmp>
c0de0d0e:	bf00      	nop
c0de0d10:	00007536 	.word	0x00007536

c0de0d14 <field_sub>:
c0de0d14:	b580      	push	{r7, lr}
c0de0d16:	b082      	sub	sp, #8
c0de0d18:	4b06      	ldr	r3, [pc, #24]	; (c0de0d34 <field_sub+0x20>)
c0de0d1a:	f04f 0c20 	mov.w	ip, #32
c0de0d1e:	447b      	add	r3, pc
c0de0d20:	f8cd c000 	str.w	ip, [sp]
c0de0d24:	f000 fc7a 	bl	c0de161c <cx_math_subm_no_throw>
c0de0d28:	b908      	cbnz	r0, c0de0d2e <field_sub+0x1a>
c0de0d2a:	b002      	add	sp, #8
c0de0d2c:	bd80      	pop	{r7, pc}
c0de0d2e:	f001 fa52 	bl	c0de21d6 <os_longjmp>
c0de0d32:	bf00      	nop
c0de0d34:	00007512 	.word	0x00007512

c0de0d38 <field_mul>:
c0de0d38:	b580      	push	{r7, lr}
c0de0d3a:	b082      	sub	sp, #8
c0de0d3c:	4b06      	ldr	r3, [pc, #24]	; (c0de0d58 <field_mul+0x20>)
c0de0d3e:	f04f 0c20 	mov.w	ip, #32
c0de0d42:	447b      	add	r3, pc
c0de0d44:	f8cd c000 	str.w	ip, [sp]
c0de0d48:	f000 fc60 	bl	c0de160c <cx_math_multm_no_throw>
c0de0d4c:	b908      	cbnz	r0, c0de0d52 <field_mul+0x1a>
c0de0d4e:	b002      	add	sp, #8
c0de0d50:	bd80      	pop	{r7, pc}
c0de0d52:	f001 fa40 	bl	c0de21d6 <os_longjmp>
c0de0d56:	bf00      	nop
c0de0d58:	000074ee 	.word	0x000074ee

c0de0d5c <field_sq>:
c0de0d5c:	b580      	push	{r7, lr}
c0de0d5e:	b082      	sub	sp, #8
c0de0d60:	4b06      	ldr	r3, [pc, #24]	; (c0de0d7c <field_sq+0x20>)
c0de0d62:	f04f 0c20 	mov.w	ip, #32
c0de0d66:	447b      	add	r3, pc
c0de0d68:	460a      	mov	r2, r1
c0de0d6a:	f8cd c000 	str.w	ip, [sp]
c0de0d6e:	f000 fc4d 	bl	c0de160c <cx_math_multm_no_throw>
c0de0d72:	b908      	cbnz	r0, c0de0d78 <field_sq+0x1c>
c0de0d74:	b002      	add	sp, #8
c0de0d76:	bd80      	pop	{r7, pc}
c0de0d78:	f001 fa2d 	bl	c0de21d6 <os_longjmp>
c0de0d7c:	000074ca 	.word	0x000074ca

c0de0d80 <field_inv>:
c0de0d80:	b580      	push	{r7, lr}
c0de0d82:	4a04      	ldr	r2, [pc, #16]	; (c0de0d94 <field_inv+0x14>)
c0de0d84:	2320      	movs	r3, #32
c0de0d86:	447a      	add	r2, pc
c0de0d88:	f000 fc3c 	bl	c0de1604 <cx_math_invprimem_no_throw>
c0de0d8c:	b900      	cbnz	r0, c0de0d90 <field_inv+0x10>
c0de0d8e:	bd80      	pop	{r7, pc}
c0de0d90:	f001 fa21 	bl	c0de21d6 <os_longjmp>
c0de0d94:	000074aa 	.word	0x000074aa

c0de0d98 <field_pow>:
c0de0d98:	b580      	push	{r7, lr}
c0de0d9a:	b082      	sub	sp, #8
c0de0d9c:	4b07      	ldr	r3, [pc, #28]	; (c0de0dbc <field_pow+0x24>)
c0de0d9e:	f04f 0c20 	mov.w	ip, #32
c0de0da2:	447b      	add	r3, pc
c0de0da4:	9300      	str	r3, [sp, #0]
c0de0da6:	2320      	movs	r3, #32
c0de0da8:	f8cd c004 	str.w	ip, [sp, #4]
c0de0dac:	f000 fc32 	bl	c0de1614 <cx_math_powm_no_throw>
c0de0db0:	b908      	cbnz	r0, c0de0db6 <field_pow+0x1e>
c0de0db2:	b002      	add	sp, #8
c0de0db4:	bd80      	pop	{r7, pc}
c0de0db6:	f001 fa0e 	bl	c0de21d6 <os_longjmp>
c0de0dba:	bf00      	nop
c0de0dbc:	0000748e 	.word	0x0000748e

c0de0dc0 <scalar_add>:
c0de0dc0:	b580      	push	{r7, lr}
c0de0dc2:	b082      	sub	sp, #8
c0de0dc4:	4b06      	ldr	r3, [pc, #24]	; (c0de0de0 <scalar_add+0x20>)
c0de0dc6:	f04f 0c20 	mov.w	ip, #32
c0de0dca:	447b      	add	r3, pc
c0de0dcc:	f8cd c000 	str.w	ip, [sp]
c0de0dd0:	f000 fc14 	bl	c0de15fc <cx_math_addm_no_throw>
c0de0dd4:	b908      	cbnz	r0, c0de0dda <scalar_add+0x1a>
c0de0dd6:	b002      	add	sp, #8
c0de0dd8:	bd80      	pop	{r7, pc}
c0de0dda:	f001 f9fc 	bl	c0de21d6 <os_longjmp>
c0de0dde:	bf00      	nop
c0de0de0:	000074a6 	.word	0x000074a6

c0de0de4 <scalar_mul>:
c0de0de4:	b580      	push	{r7, lr}
c0de0de6:	b082      	sub	sp, #8
c0de0de8:	4b06      	ldr	r3, [pc, #24]	; (c0de0e04 <scalar_mul+0x20>)
c0de0dea:	f04f 0c20 	mov.w	ip, #32
c0de0dee:	447b      	add	r3, pc
c0de0df0:	f8cd c000 	str.w	ip, [sp]
c0de0df4:	f000 fc0a 	bl	c0de160c <cx_math_multm_no_throw>
c0de0df8:	b908      	cbnz	r0, c0de0dfe <scalar_mul+0x1a>
c0de0dfa:	b002      	add	sp, #8
c0de0dfc:	bd80      	pop	{r7, pc}
c0de0dfe:	f001 f9ea 	bl	c0de21d6 <os_longjmp>
c0de0e02:	bf00      	nop
c0de0e04:	00007482 	.word	0x00007482

c0de0e08 <scalar_negate>:
c0de0e08:	b580      	push	{r7, lr}
c0de0e0a:	b082      	sub	sp, #8
c0de0e0c:	460a      	mov	r2, r1
c0de0e0e:	4907      	ldr	r1, [pc, #28]	; (c0de0e2c <scalar_negate+0x24>)
c0de0e10:	4b07      	ldr	r3, [pc, #28]	; (c0de0e30 <scalar_negate+0x28>)
c0de0e12:	f04f 0c20 	mov.w	ip, #32
c0de0e16:	4479      	add	r1, pc
c0de0e18:	447b      	add	r3, pc
c0de0e1a:	f8cd c000 	str.w	ip, [sp]
c0de0e1e:	f000 fbfd 	bl	c0de161c <cx_math_subm_no_throw>
c0de0e22:	b908      	cbnz	r0, c0de0e28 <scalar_negate+0x20>
c0de0e24:	b002      	add	sp, #8
c0de0e26:	bd80      	pop	{r7, pc}
c0de0e28:	f001 f9d5 	bl	c0de21d6 <os_longjmp>
c0de0e2c:	0000747a 	.word	0x0000747a
c0de0e30:	00007458 	.word	0x00007458

c0de0e34 <group_dbl>:
c0de0e34:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0e38:	b0e2      	sub	sp, #392	; 0x188
c0de0e3a:	460e      	mov	r6, r1
c0de0e3c:	f101 0b40 	add.w	fp, r1, #64	; 0x40
c0de0e40:	4939      	ldr	r1, [pc, #228]	; (c0de0f28 <group_dbl+0xf4>)
c0de0e42:	4604      	mov	r4, r0
c0de0e44:	4479      	add	r1, pc
c0de0e46:	4658      	mov	r0, fp
c0de0e48:	2220      	movs	r2, #32
c0de0e4a:	f005 ff9b 	bl	c0de6d84 <memcmp>
c0de0e4e:	2800      	cmp	r0, #0
c0de0e50:	d061      	beq.n	c0de0f16 <group_dbl+0xe2>
c0de0e52:	ad5a      	add	r5, sp, #360	; 0x168
c0de0e54:	f106 0120 	add.w	r1, r6, #32
c0de0e58:	4628      	mov	r0, r5
c0de0e5a:	9101      	str	r1, [sp, #4]
c0de0e5c:	f7ff ff7e 	bl	c0de0d5c <field_sq>
c0de0e60:	af52      	add	r7, sp, #328	; 0x148
c0de0e62:	4638      	mov	r0, r7
c0de0e64:	4631      	mov	r1, r6
c0de0e66:	462a      	mov	r2, r5
c0de0e68:	f7ff ff66 	bl	c0de0d38 <field_mul>
c0de0e6c:	492f      	ldr	r1, [pc, #188]	; (c0de0f2c <group_dbl+0xf8>)
c0de0e6e:	ad4a      	add	r5, sp, #296	; 0x128
c0de0e70:	4479      	add	r1, pc
c0de0e72:	4628      	mov	r0, r5
c0de0e74:	463a      	mov	r2, r7
c0de0e76:	f7ff ff5f 	bl	c0de0d38 <field_mul>
c0de0e7a:	af42      	add	r7, sp, #264	; 0x108
c0de0e7c:	4638      	mov	r0, r7
c0de0e7e:	4631      	mov	r1, r6
c0de0e80:	f7ff ff6c 	bl	c0de0d5c <field_sq>
c0de0e84:	492a      	ldr	r1, [pc, #168]	; (c0de0f30 <group_dbl+0xfc>)
c0de0e86:	ae3a      	add	r6, sp, #232	; 0xe8
c0de0e88:	4479      	add	r1, pc
c0de0e8a:	4630      	mov	r0, r6
c0de0e8c:	463a      	mov	r2, r7
c0de0e8e:	f7ff ff53 	bl	c0de0d38 <field_mul>
c0de0e92:	f10d 08c8 	add.w	r8, sp, #200	; 0xc8
c0de0e96:	4640      	mov	r0, r8
c0de0e98:	4631      	mov	r1, r6
c0de0e9a:	f7ff ff5f 	bl	c0de0d5c <field_sq>
c0de0e9e:	4f25      	ldr	r7, [pc, #148]	; (c0de0f34 <group_dbl+0x100>)
c0de0ea0:	f10d 0aa8 	add.w	sl, sp, #168	; 0xa8
c0de0ea4:	447f      	add	r7, pc
c0de0ea6:	4650      	mov	r0, sl
c0de0ea8:	4639      	mov	r1, r7
c0de0eaa:	462a      	mov	r2, r5
c0de0eac:	f7ff ff44 	bl	c0de0d38 <field_mul>
c0de0eb0:	4620      	mov	r0, r4
c0de0eb2:	4641      	mov	r1, r8
c0de0eb4:	4652      	mov	r2, sl
c0de0eb6:	f7ff ff2d 	bl	c0de0d14 <field_sub>
c0de0eba:	f10d 0888 	add.w	r8, sp, #136	; 0x88
c0de0ebe:	4640      	mov	r0, r8
c0de0ec0:	4629      	mov	r1, r5
c0de0ec2:	4622      	mov	r2, r4
c0de0ec4:	f7ff ff26 	bl	c0de0d14 <field_sub>
c0de0ec8:	ae1a      	add	r6, sp, #104	; 0x68
c0de0eca:	4630      	mov	r0, r6
c0de0ecc:	a95a      	add	r1, sp, #360	; 0x168
c0de0ece:	f7ff ff45 	bl	c0de0d5c <field_sq>
c0de0ed2:	4919      	ldr	r1, [pc, #100]	; (c0de0f38 <group_dbl+0x104>)
c0de0ed4:	ad12      	add	r5, sp, #72	; 0x48
c0de0ed6:	4479      	add	r1, pc
c0de0ed8:	4628      	mov	r0, r5
c0de0eda:	4632      	mov	r2, r6
c0de0edc:	f7ff ff2c 	bl	c0de0d38 <field_mul>
c0de0ee0:	ae0a      	add	r6, sp, #40	; 0x28
c0de0ee2:	4630      	mov	r0, r6
c0de0ee4:	a93a      	add	r1, sp, #232	; 0xe8
c0de0ee6:	4642      	mov	r2, r8
c0de0ee8:	f7ff ff26 	bl	c0de0d38 <field_mul>
c0de0eec:	f104 0020 	add.w	r0, r4, #32
c0de0ef0:	4631      	mov	r1, r6
c0de0ef2:	462a      	mov	r2, r5
c0de0ef4:	f7ff ff0e 	bl	c0de0d14 <field_sub>
c0de0ef8:	ad02      	add	r5, sp, #8
c0de0efa:	9901      	ldr	r1, [sp, #4]
c0de0efc:	4628      	mov	r0, r5
c0de0efe:	465a      	mov	r2, fp
c0de0f00:	f7ff ff1a 	bl	c0de0d38 <field_mul>
c0de0f04:	f104 0040 	add.w	r0, r4, #64	; 0x40
c0de0f08:	4639      	mov	r1, r7
c0de0f0a:	462a      	mov	r2, r5
c0de0f0c:	f7ff ff14 	bl	c0de0d38 <field_mul>
c0de0f10:	b062      	add	sp, #392	; 0x188
c0de0f12:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0f16:	4620      	mov	r0, r4
c0de0f18:	4631      	mov	r1, r6
c0de0f1a:	2260      	movs	r2, #96	; 0x60
c0de0f1c:	f005 ff25 	bl	c0de6d6a <__aeabi_memmove>
c0de0f20:	b062      	add	sp, #392	; 0x188
c0de0f22:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0f26:	bf00      	nop
c0de0f28:	0000740c 	.word	0x0000740c
c0de0f2c:	00007440 	.word	0x00007440
c0de0f30:	00007448 	.word	0x00007448
c0de0f34:	0000744c 	.word	0x0000744c
c0de0f38:	0000743a 	.word	0x0000743a

c0de0f3c <group_add>:
c0de0f3c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0f40:	b0ca      	sub	sp, #296	; 0x128
c0de0f42:	4688      	mov	r8, r1
c0de0f44:	f101 0a40 	add.w	sl, r1, #64	; 0x40
c0de0f48:	4962      	ldr	r1, [pc, #392]	; (c0de10d4 <group_add+0x198>)
c0de0f4a:	4616      	mov	r6, r2
c0de0f4c:	4605      	mov	r5, r0
c0de0f4e:	4479      	add	r1, pc
c0de0f50:	4650      	mov	r0, sl
c0de0f52:	2220      	movs	r2, #32
c0de0f54:	f005 ff16 	bl	c0de6d84 <memcmp>
c0de0f58:	2800      	cmp	r0, #0
c0de0f5a:	f000 80a8 	beq.w	c0de10ae <group_add+0x172>
c0de0f5e:	495e      	ldr	r1, [pc, #376]	; (c0de10d8 <group_add+0x19c>)
c0de0f60:	f106 0440 	add.w	r4, r6, #64	; 0x40
c0de0f64:	4479      	add	r1, pc
c0de0f66:	4620      	mov	r0, r4
c0de0f68:	2220      	movs	r2, #32
c0de0f6a:	f005 ff0b 	bl	c0de6d84 <memcmp>
c0de0f6e:	2800      	cmp	r0, #0
c0de0f70:	f000 80a0 	beq.w	c0de10b4 <group_add+0x178>
c0de0f74:	4640      	mov	r0, r8
c0de0f76:	4631      	mov	r1, r6
c0de0f78:	2220      	movs	r2, #32
c0de0f7a:	f005 ff03 	bl	c0de6d84 <memcmp>
c0de0f7e:	b978      	cbnz	r0, c0de0fa0 <group_add+0x64>
c0de0f80:	f108 0020 	add.w	r0, r8, #32
c0de0f84:	f106 0120 	add.w	r1, r6, #32
c0de0f88:	2220      	movs	r2, #32
c0de0f8a:	f005 fefb 	bl	c0de6d84 <memcmp>
c0de0f8e:	b938      	cbnz	r0, c0de0fa0 <group_add+0x64>
c0de0f90:	4650      	mov	r0, sl
c0de0f92:	4621      	mov	r1, r4
c0de0f94:	2220      	movs	r2, #32
c0de0f96:	f005 fef5 	bl	c0de6d84 <memcmp>
c0de0f9a:	2800      	cmp	r0, #0
c0de0f9c:	f000 8092 	beq.w	c0de10c4 <group_add+0x188>
c0de0fa0:	af42      	add	r7, sp, #264	; 0x108
c0de0fa2:	4638      	mov	r0, r7
c0de0fa4:	4621      	mov	r1, r4
c0de0fa6:	f7ff fed9 	bl	c0de0d5c <field_sq>
c0de0faa:	a83a      	add	r0, sp, #232	; 0xe8
c0de0fac:	4641      	mov	r1, r8
c0de0fae:	463a      	mov	r2, r7
c0de0fb0:	f7ff fec2 	bl	c0de0d38 <field_mul>
c0de0fb4:	f10d 0bc8 	add.w	fp, sp, #200	; 0xc8
c0de0fb8:	4658      	mov	r0, fp
c0de0fba:	4651      	mov	r1, sl
c0de0fbc:	9500      	str	r5, [sp, #0]
c0de0fbe:	f7ff fecd 	bl	c0de0d5c <field_sq>
c0de0fc2:	a82a      	add	r0, sp, #168	; 0xa8
c0de0fc4:	4631      	mov	r1, r6
c0de0fc6:	465a      	mov	r2, fp
c0de0fc8:	f7ff feb6 	bl	c0de0d38 <field_mul>
c0de0fcc:	ad22      	add	r5, sp, #136	; 0x88
c0de0fce:	4628      	mov	r0, r5
c0de0fd0:	4639      	mov	r1, r7
c0de0fd2:	4622      	mov	r2, r4
c0de0fd4:	f7ff feb0 	bl	c0de0d38 <field_mul>
c0de0fd8:	f108 0120 	add.w	r1, r8, #32
c0de0fdc:	a81a      	add	r0, sp, #104	; 0x68
c0de0fde:	462a      	mov	r2, r5
c0de0fe0:	f7ff feaa 	bl	c0de0d38 <field_mul>
c0de0fe4:	4638      	mov	r0, r7
c0de0fe6:	4659      	mov	r1, fp
c0de0fe8:	4652      	mov	r2, sl
c0de0fea:	f7ff fea5 	bl	c0de0d38 <field_mul>
c0de0fee:	9401      	str	r4, [sp, #4]
c0de0ff0:	ac12      	add	r4, sp, #72	; 0x48
c0de0ff2:	f106 0120 	add.w	r1, r6, #32
c0de0ff6:	4620      	mov	r0, r4
c0de0ff8:	463a      	mov	r2, r7
c0de0ffa:	f7ff fe9d 	bl	c0de0d38 <field_mul>
c0de0ffe:	af2a      	add	r7, sp, #168	; 0xa8
c0de1000:	ae3a      	add	r6, sp, #232	; 0xe8
c0de1002:	a80a      	add	r0, sp, #40	; 0x28
c0de1004:	4639      	mov	r1, r7
c0de1006:	4632      	mov	r2, r6
c0de1008:	f7ff fe84 	bl	c0de0d14 <field_sub>
c0de100c:	ad02      	add	r5, sp, #8
c0de100e:	4628      	mov	r0, r5
c0de1010:	4621      	mov	r1, r4
c0de1012:	aa1a      	add	r2, sp, #104	; 0x68
c0de1014:	f7ff fe7e 	bl	c0de0d14 <field_sub>
c0de1018:	4658      	mov	r0, fp
c0de101a:	4631      	mov	r1, r6
c0de101c:	463a      	mov	r2, r7
c0de101e:	f7ff fe67 	bl	c0de0cf0 <field_add>
c0de1022:	f10d 0888 	add.w	r8, sp, #136	; 0x88
c0de1026:	4640      	mov	r0, r8
c0de1028:	4629      	mov	r1, r5
c0de102a:	f7ff fe97 	bl	c0de0d5c <field_sq>
c0de102e:	4638      	mov	r0, r7
c0de1030:	a90a      	add	r1, sp, #40	; 0x28
c0de1032:	f7ff fe93 	bl	c0de0d5c <field_sq>
c0de1036:	4620      	mov	r0, r4
c0de1038:	4659      	mov	r1, fp
c0de103a:	463a      	mov	r2, r7
c0de103c:	463e      	mov	r6, r7
c0de103e:	f7ff fe7b 	bl	c0de0d38 <field_mul>
c0de1042:	9d00      	ldr	r5, [sp, #0]
c0de1044:	4641      	mov	r1, r8
c0de1046:	4628      	mov	r0, r5
c0de1048:	4622      	mov	r2, r4
c0de104a:	f7ff fe63 	bl	c0de0d14 <field_sub>
c0de104e:	af3a      	add	r7, sp, #232	; 0xe8
c0de1050:	4658      	mov	r0, fp
c0de1052:	4639      	mov	r1, r7
c0de1054:	4632      	mov	r2, r6
c0de1056:	465c      	mov	r4, fp
c0de1058:	46b3      	mov	fp, r6
c0de105a:	f7ff fe6d 	bl	c0de0d38 <field_mul>
c0de105e:	4640      	mov	r0, r8
c0de1060:	4621      	mov	r1, r4
c0de1062:	462a      	mov	r2, r5
c0de1064:	f7ff fe56 	bl	c0de0d14 <field_sub>
c0de1068:	ae42      	add	r6, sp, #264	; 0x108
c0de106a:	4630      	mov	r0, r6
c0de106c:	4659      	mov	r1, fp
c0de106e:	aa0a      	add	r2, sp, #40	; 0x28
c0de1070:	f7ff fe62 	bl	c0de0d38 <field_mul>
c0de1074:	ac12      	add	r4, sp, #72	; 0x48
c0de1076:	4620      	mov	r0, r4
c0de1078:	a91a      	add	r1, sp, #104	; 0x68
c0de107a:	4632      	mov	r2, r6
c0de107c:	f7ff fe5c 	bl	c0de0d38 <field_mul>
c0de1080:	4638      	mov	r0, r7
c0de1082:	a902      	add	r1, sp, #8
c0de1084:	4642      	mov	r2, r8
c0de1086:	f7ff fe57 	bl	c0de0d38 <field_mul>
c0de108a:	f105 0020 	add.w	r0, r5, #32
c0de108e:	4639      	mov	r1, r7
c0de1090:	4622      	mov	r2, r4
c0de1092:	f7ff fe3f 	bl	c0de0d14 <field_sub>
c0de1096:	9901      	ldr	r1, [sp, #4]
c0de1098:	4658      	mov	r0, fp
c0de109a:	aa0a      	add	r2, sp, #40	; 0x28
c0de109c:	f7ff fe4c 	bl	c0de0d38 <field_mul>
c0de10a0:	f105 0040 	add.w	r0, r5, #64	; 0x40
c0de10a4:	4651      	mov	r1, sl
c0de10a6:	465a      	mov	r2, fp
c0de10a8:	f7ff fe46 	bl	c0de0d38 <field_mul>
c0de10ac:	e007      	b.n	c0de10be <group_add+0x182>
c0de10ae:	4628      	mov	r0, r5
c0de10b0:	4631      	mov	r1, r6
c0de10b2:	e001      	b.n	c0de10b8 <group_add+0x17c>
c0de10b4:	4628      	mov	r0, r5
c0de10b6:	4641      	mov	r1, r8
c0de10b8:	2260      	movs	r2, #96	; 0x60
c0de10ba:	f005 fe56 	bl	c0de6d6a <__aeabi_memmove>
c0de10be:	b04a      	add	sp, #296	; 0x128
c0de10c0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de10c4:	4628      	mov	r0, r5
c0de10c6:	4641      	mov	r1, r8
c0de10c8:	b04a      	add	sp, #296	; 0x128
c0de10ca:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de10ce:	f7ff beb1 	b.w	c0de0e34 <group_dbl>
c0de10d2:	bf00      	nop
c0de10d4:	00007302 	.word	0x00007302
c0de10d8:	000072ec 	.word	0x000072ec

c0de10dc <group_scalar_mul>:
c0de10dc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de10e0:	b09a      	sub	sp, #104	; 0x68
c0de10e2:	468b      	mov	fp, r1
c0de10e4:	491f      	ldr	r1, [pc, #124]	; (c0de1164 <group_scalar_mul+0x88>)
c0de10e6:	4614      	mov	r4, r2
c0de10e8:	4479      	add	r1, pc
c0de10ea:	2260      	movs	r2, #96	; 0x60
c0de10ec:	4606      	mov	r6, r0
c0de10ee:	f005 fe3a 	bl	c0de6d66 <__aeabi_memcpy>
c0de10f2:	9401      	str	r4, [sp, #4]
c0de10f4:	491c      	ldr	r1, [pc, #112]	; (c0de1168 <group_scalar_mul+0x8c>)
c0de10f6:	f104 0040 	add.w	r0, r4, #64	; 0x40
c0de10fa:	4479      	add	r1, pc
c0de10fc:	2220      	movs	r2, #32
c0de10fe:	f005 fe41 	bl	c0de6d84 <memcmp>
c0de1102:	b358      	cbz	r0, c0de115c <group_scalar_mul+0x80>
c0de1104:	4919      	ldr	r1, [pc, #100]	; (c0de116c <group_scalar_mul+0x90>)
c0de1106:	4658      	mov	r0, fp
c0de1108:	4479      	add	r1, pc
c0de110a:	2220      	movs	r2, #32
c0de110c:	f005 fe3a 	bl	c0de6d84 <memcmp>
c0de1110:	b320      	cbz	r0, c0de115c <group_scalar_mul+0x80>
c0de1112:	2400      	movs	r4, #0
c0de1114:	f04f 0a07 	mov.w	sl, #7
c0de1118:	af02      	add	r7, sp, #8
c0de111a:	bf00      	nop
c0de111c:	08e0      	lsrs	r0, r4, #3
c0de111e:	f81b 5000 	ldrb.w	r5, [fp, r0]
c0de1122:	4638      	mov	r0, r7
c0de1124:	4631      	mov	r1, r6
c0de1126:	ea2a 0804 	bic.w	r8, sl, r4
c0de112a:	f7ff fe83 	bl	c0de0e34 <group_dbl>
c0de112e:	4630      	mov	r0, r6
c0de1130:	4639      	mov	r1, r7
c0de1132:	2260      	movs	r2, #96	; 0x60
c0de1134:	f005 fe17 	bl	c0de6d66 <__aeabi_memcpy>
c0de1138:	fa25 f008 	lsr.w	r0, r5, r8
c0de113c:	07c0      	lsls	r0, r0, #31
c0de113e:	d009      	beq.n	c0de1154 <group_scalar_mul+0x78>
c0de1140:	9a01      	ldr	r2, [sp, #4]
c0de1142:	4638      	mov	r0, r7
c0de1144:	4631      	mov	r1, r6
c0de1146:	f7ff fef9 	bl	c0de0f3c <group_add>
c0de114a:	4630      	mov	r0, r6
c0de114c:	4639      	mov	r1, r7
c0de114e:	2260      	movs	r2, #96	; 0x60
c0de1150:	f005 fe09 	bl	c0de6d66 <__aeabi_memcpy>
c0de1154:	3401      	adds	r4, #1
c0de1156:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
c0de115a:	d1df      	bne.n	c0de111c <group_scalar_mul+0x40>
c0de115c:	b01a      	add	sp, #104	; 0x68
c0de115e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1162:	bf00      	nop
c0de1164:	00007248 	.word	0x00007248
c0de1168:	00007156 	.word	0x00007156
c0de116c:	00007188 	.word	0x00007188

c0de1170 <affine_to_group>:
c0de1170:	b5b0      	push	{r4, r5, r7, lr}
c0de1172:	460d      	mov	r5, r1
c0de1174:	491a      	ldr	r1, [pc, #104]	; (c0de11e0 <affine_to_group+0x70>)
c0de1176:	4604      	mov	r4, r0
c0de1178:	4479      	add	r1, pc
c0de117a:	4628      	mov	r0, r5
c0de117c:	2220      	movs	r2, #32
c0de117e:	f005 fe01 	bl	c0de6d84 <memcmp>
c0de1182:	b938      	cbnz	r0, c0de1194 <affine_to_group+0x24>
c0de1184:	4917      	ldr	r1, [pc, #92]	; (c0de11e4 <affine_to_group+0x74>)
c0de1186:	f105 0020 	add.w	r0, r5, #32
c0de118a:	4479      	add	r1, pc
c0de118c:	2220      	movs	r2, #32
c0de118e:	f005 fdf9 	bl	c0de6d84 <memcmp>
c0de1192:	b1a0      	cbz	r0, c0de11be <affine_to_group+0x4e>
c0de1194:	4620      	mov	r0, r4
c0de1196:	4629      	mov	r1, r5
c0de1198:	2220      	movs	r2, #32
c0de119a:	f005 fde6 	bl	c0de6d6a <__aeabi_memmove>
c0de119e:	f104 0020 	add.w	r0, r4, #32
c0de11a2:	f105 0120 	add.w	r1, r5, #32
c0de11a6:	2220      	movs	r2, #32
c0de11a8:	f005 fddf 	bl	c0de6d6a <__aeabi_memmove>
c0de11ac:	490f      	ldr	r1, [pc, #60]	; (c0de11ec <affine_to_group+0x7c>)
c0de11ae:	f104 0040 	add.w	r0, r4, #64	; 0x40
c0de11b2:	4479      	add	r1, pc
c0de11b4:	2220      	movs	r2, #32
c0de11b6:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de11ba:	f005 bdd4 	b.w	c0de6d66 <__aeabi_memcpy>
c0de11be:	4620      	mov	r0, r4
c0de11c0:	2120      	movs	r1, #32
c0de11c2:	f005 fdcd 	bl	c0de6d60 <__aeabi_memclr>
c0de11c6:	4908      	ldr	r1, [pc, #32]	; (c0de11e8 <affine_to_group+0x78>)
c0de11c8:	f104 0020 	add.w	r0, r4, #32
c0de11cc:	4479      	add	r1, pc
c0de11ce:	2220      	movs	r2, #32
c0de11d0:	f005 fdc9 	bl	c0de6d66 <__aeabi_memcpy>
c0de11d4:	f104 0040 	add.w	r0, r4, #64	; 0x40
c0de11d8:	2120      	movs	r1, #32
c0de11da:	f005 fdc1 	bl	c0de6d60 <__aeabi_memclr>
c0de11de:	bdb0      	pop	{r4, r5, r7, pc}
c0de11e0:	000070d8 	.word	0x000070d8
c0de11e4:	000070c6 	.word	0x000070c6
c0de11e8:	000071c4 	.word	0x000071c4
c0de11ec:	000071de 	.word	0x000071de

c0de11f0 <affine_from_group>:
c0de11f0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de11f4:	b090      	sub	sp, #64	; 0x40
c0de11f6:	460c      	mov	r4, r1
c0de11f8:	f101 0640 	add.w	r6, r1, #64	; 0x40
c0de11fc:	4916      	ldr	r1, [pc, #88]	; (c0de1258 <affine_from_group+0x68>)
c0de11fe:	4605      	mov	r5, r0
c0de1200:	4479      	add	r1, pc
c0de1202:	4630      	mov	r0, r6
c0de1204:	2220      	movs	r2, #32
c0de1206:	f005 fdbd 	bl	c0de6d84 <memcmp>
c0de120a:	b1e8      	cbz	r0, c0de1248 <affine_from_group+0x58>
c0de120c:	af08      	add	r7, sp, #32
c0de120e:	4638      	mov	r0, r7
c0de1210:	4631      	mov	r1, r6
c0de1212:	f7ff fdb5 	bl	c0de0d80 <field_inv>
c0de1216:	f105 0620 	add.w	r6, r5, #32
c0de121a:	4630      	mov	r0, r6
c0de121c:	4639      	mov	r1, r7
c0de121e:	463a      	mov	r2, r7
c0de1220:	f7ff fd8a 	bl	c0de0d38 <field_mul>
c0de1224:	46e8      	mov	r8, sp
c0de1226:	4640      	mov	r0, r8
c0de1228:	4631      	mov	r1, r6
c0de122a:	463a      	mov	r2, r7
c0de122c:	f7ff fd84 	bl	c0de0d38 <field_mul>
c0de1230:	4628      	mov	r0, r5
c0de1232:	4621      	mov	r1, r4
c0de1234:	4632      	mov	r2, r6
c0de1236:	f7ff fd7f 	bl	c0de0d38 <field_mul>
c0de123a:	f104 0120 	add.w	r1, r4, #32
c0de123e:	4630      	mov	r0, r6
c0de1240:	4642      	mov	r2, r8
c0de1242:	f7ff fd79 	bl	c0de0d38 <field_mul>
c0de1246:	e003      	b.n	c0de1250 <affine_from_group+0x60>
c0de1248:	4628      	mov	r0, r5
c0de124a:	2140      	movs	r1, #64	; 0x40
c0de124c:	f005 fd88 	bl	c0de6d60 <__aeabi_memclr>
c0de1250:	b010      	add	sp, #64	; 0x40
c0de1252:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1256:	bf00      	nop
c0de1258:	00007050 	.word	0x00007050

c0de125c <affine_scalar_mul>:
c0de125c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de125e:	b0b1      	sub	sp, #196	; 0xc4
c0de1260:	ae19      	add	r6, sp, #100	; 0x64
c0de1262:	460c      	mov	r4, r1
c0de1264:	4605      	mov	r5, r0
c0de1266:	4630      	mov	r0, r6
c0de1268:	4611      	mov	r1, r2
c0de126a:	f7ff ff81 	bl	c0de1170 <affine_to_group>
c0de126e:	af01      	add	r7, sp, #4
c0de1270:	4638      	mov	r0, r7
c0de1272:	4621      	mov	r1, r4
c0de1274:	4632      	mov	r2, r6
c0de1276:	f7ff ff31 	bl	c0de10dc <group_scalar_mul>
c0de127a:	4628      	mov	r0, r5
c0de127c:	4639      	mov	r1, r7
c0de127e:	f7ff ffb7 	bl	c0de11f0 <affine_from_group>
c0de1282:	b031      	add	sp, #196	; 0xc4
c0de1284:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0de1288 <generate_keypair>:
c0de1288:	b5b0      	push	{r4, r5, r7, lr}
c0de128a:	b086      	sub	sp, #24
c0de128c:	4604      	mov	r4, r0
c0de128e:	4811      	ldr	r0, [pc, #68]	; (c0de12d4 <generate_keypair+0x4c>)
c0de1290:	4a11      	ldr	r2, [pc, #68]	; (c0de12d8 <generate_keypair+0x50>)
c0de1292:	f104 0540 	add.w	r5, r4, #64	; 0x40
c0de1296:	e9cd 0201 	strd	r0, r2, [sp, #4]
c0de129a:	f041 4000 	orr.w	r0, r1, #2147483648	; 0x80000000
c0de129e:	9003      	str	r0, [sp, #12]
c0de12a0:	f04f 0c00 	mov.w	ip, #0
c0de12a4:	a901      	add	r1, sp, #4
c0de12a6:	2021      	movs	r0, #33	; 0x21
c0de12a8:	2205      	movs	r2, #5
c0de12aa:	462b      	mov	r3, r5
c0de12ac:	e9cd cc04 	strd	ip, ip, [sp, #16]
c0de12b0:	f8cd c000 	str.w	ip, [sp]
c0de12b4:	f002 fbcc 	bl	c0de3a50 <os_perso_derive_node_bip32>
c0de12b8:	f894 0040 	ldrb.w	r0, [r4, #64]	; 0x40
c0de12bc:	4629      	mov	r1, r5
c0de12be:	f000 003f 	and.w	r0, r0, #63	; 0x3f
c0de12c2:	f884 0040 	strb.w	r0, [r4, #64]	; 0x40
c0de12c6:	4a05      	ldr	r2, [pc, #20]	; (c0de12dc <generate_keypair+0x54>)
c0de12c8:	4620      	mov	r0, r4
c0de12ca:	447a      	add	r2, pc
c0de12cc:	f7ff ffc6 	bl	c0de125c <affine_scalar_mul>
c0de12d0:	b006      	add	sp, #24
c0de12d2:	bdb0      	pop	{r4, r5, r7, pc}
c0de12d4:	8000002c 	.word	0x8000002c
c0de12d8:	8000312a 	.word	0x8000312a
c0de12dc:	000070e6 	.word	0x000070e6

c0de12e0 <generate_address>:
c0de12e0:	b570      	push	{r4, r5, r6, lr}
c0de12e2:	b09a      	sub	sp, #104	; 0x68
c0de12e4:	2938      	cmp	r1, #56	; 0x38
c0de12e6:	4604      	mov	r4, r0
c0de12e8:	d138      	bne.n	c0de135c <generate_address+0x7c>
c0de12ea:	f240 10cb 	movw	r0, #459	; 0x1cb
c0de12ee:	f8ad 0040 	strh.w	r0, [sp, #64]	; 0x40
c0de12f2:	2001      	movs	r0, #1
c0de12f4:	f88d 0042 	strb.w	r0, [sp, #66]	; 0x42
c0de12f8:	a810      	add	r0, sp, #64	; 0x40
c0de12fa:	3003      	adds	r0, #3
c0de12fc:	211f      	movs	r1, #31
c0de12fe:	bf00      	nop
c0de1300:	5c53      	ldrb	r3, [r2, r1]
c0de1302:	3901      	subs	r1, #1
c0de1304:	1c4e      	adds	r6, r1, #1
c0de1306:	f800 3b01 	strb.w	r3, [r0], #1
c0de130a:	d1f9      	bne.n	c0de1300 <generate_address+0x20>
c0de130c:	f892 003f 	ldrb.w	r0, [r2, #63]	; 0x3f
c0de1310:	ad10      	add	r5, sp, #64	; 0x40
c0de1312:	f000 0001 	and.w	r0, r0, #1
c0de1316:	ae08      	add	r6, sp, #32
c0de1318:	f88d 0063 	strb.w	r0, [sp, #99]	; 0x63
c0de131c:	4628      	mov	r0, r5
c0de131e:	2124      	movs	r1, #36	; 0x24
c0de1320:	4632      	mov	r2, r6
c0de1322:	2320      	movs	r3, #32
c0de1324:	f000 f966 	bl	c0de15f4 <cx_hash_sha256>
c0de1328:	466a      	mov	r2, sp
c0de132a:	4630      	mov	r0, r6
c0de132c:	2120      	movs	r1, #32
c0de132e:	2320      	movs	r3, #32
c0de1330:	f000 f960 	bl	c0de15f4 <cx_hash_sha256>
c0de1334:	9800      	ldr	r0, [sp, #0]
c0de1336:	2128      	movs	r1, #40	; 0x28
c0de1338:	9019      	str	r0, [sp, #100]	; 0x64
c0de133a:	4628      	mov	r0, r5
c0de133c:	4622      	mov	r2, r4
c0de133e:	2338      	movs	r3, #56	; 0x38
c0de1340:	f004 fa0e 	bl	c0de5760 <b58_encode>
c0de1344:	3837      	subs	r0, #55	; 0x37
c0de1346:	fab0 f080 	clz	r0, r0
c0de134a:	f04f 0100 	mov.w	r1, #0
c0de134e:	ea4f 1050 	mov.w	r0, r0, lsr #5
c0de1352:	f884 1037 	strb.w	r1, [r4, #55]	; 0x37
c0de1356:	bf18      	it	ne
c0de1358:	7021      	strbne	r1, [r4, #0]
c0de135a:	e001      	b.n	c0de1360 <generate_address+0x80>
c0de135c:	2000      	movs	r0, #0
c0de135e:	7020      	strb	r0, [r4, #0]
c0de1360:	b01a      	add	sp, #104	; 0x68
c0de1362:	bd70      	pop	{r4, r5, r6, pc}

c0de1364 <validate_address>:
c0de1364:	b5b0      	push	{r4, r5, r7, lr}
c0de1366:	b09a      	sub	sp, #104	; 0x68
c0de1368:	2138      	movs	r1, #56	; 0x38
c0de136a:	4604      	mov	r4, r0
c0de136c:	f005 fd60 	bl	c0de6e30 <strnlen>
c0de1370:	2837      	cmp	r0, #55	; 0x37
c0de1372:	d134      	bne.n	c0de13de <validate_address+0x7a>
c0de1374:	ad10      	add	r5, sp, #64	; 0x40
c0de1376:	4620      	mov	r0, r4
c0de1378:	2137      	movs	r1, #55	; 0x37
c0de137a:	462a      	mov	r2, r5
c0de137c:	2328      	movs	r3, #40	; 0x28
c0de137e:	f004 fa7d 	bl	c0de587c <b58_decode>
c0de1382:	ac08      	add	r4, sp, #32
c0de1384:	4628      	mov	r0, r5
c0de1386:	2124      	movs	r1, #36	; 0x24
c0de1388:	4622      	mov	r2, r4
c0de138a:	2320      	movs	r3, #32
c0de138c:	f000 f932 	bl	c0de15f4 <cx_hash_sha256>
c0de1390:	466a      	mov	r2, sp
c0de1392:	4620      	mov	r0, r4
c0de1394:	2120      	movs	r1, #32
c0de1396:	2320      	movs	r3, #32
c0de1398:	f000 f92c 	bl	c0de15f4 <cx_hash_sha256>
c0de139c:	f89d 0000 	ldrb.w	r0, [sp]
c0de13a0:	f89d 1002 	ldrb.w	r1, [sp, #2]
c0de13a4:	f89d 2003 	ldrb.w	r2, [sp, #3]
c0de13a8:	f89d 3001 	ldrb.w	r3, [sp, #1]
c0de13ac:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de13b0:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
c0de13b4:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de13b8:	f89d 1064 	ldrb.w	r1, [sp, #100]	; 0x64
c0de13bc:	f89d 2066 	ldrb.w	r2, [sp, #102]	; 0x66
c0de13c0:	f89d 3067 	ldrb.w	r3, [sp, #103]	; 0x67
c0de13c4:	f89d 5065 	ldrb.w	r5, [sp, #101]	; 0x65
c0de13c8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de13cc:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de13d0:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de13d4:	1a08      	subs	r0, r1, r0
c0de13d6:	fab0 f080 	clz	r0, r0
c0de13da:	0940      	lsrs	r0, r0, #5
c0de13dc:	e000      	b.n	c0de13e0 <validate_address+0x7c>
c0de13de:	2000      	movs	r0, #0
c0de13e0:	b01a      	add	sp, #104	; 0x68
c0de13e2:	bdb0      	pop	{r4, r5, r7, pc}

c0de13e4 <message_derive>:
c0de13e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de13e8:	f5ad 7d06 	sub.w	sp, sp, #536	; 0x218
c0de13ec:	f50d 7886 	add.w	r8, sp, #268	; 0x10c
c0de13f0:	460f      	mov	r7, r1
c0de13f2:	4604      	mov	r4, r0
c0de13f4:	4640      	mov	r0, r8
c0de13f6:	f44f 7186 	mov.w	r1, #268	; 0x10c
c0de13fa:	461d      	mov	r5, r3
c0de13fc:	4616      	mov	r6, r2
c0de13fe:	f005 fcaf 	bl	c0de6d60 <__aeabi_memclr>
c0de1402:	4640      	mov	r0, r8
c0de1404:	f44f 7186 	mov.w	r1, #268	; 0x10c
c0de1408:	463a      	mov	r2, r7
c0de140a:	4633      	mov	r3, r6
c0de140c:	9500      	str	r5, [sp, #0]
c0de140e:	f002 f8fb 	bl	c0de3608 <roinput_derive_message>
c0de1412:	4605      	mov	r5, r0
c0de1414:	2800      	cmp	r0, #0
c0de1416:	d430      	bmi.n	c0de147a <message_derive+0x96>
c0de1418:	a802      	add	r0, sp, #8
c0de141a:	f44f 7180 	mov.w	r1, #256	; 0x100
c0de141e:	f000 f8d9 	bl	c0de15d4 <cx_blake2b_init_no_throw>
c0de1422:	bb80      	cbnz	r0, c0de1486 <message_derive+0xa2>
c0de1424:	2700      	movs	r7, #0
c0de1426:	a802      	add	r0, sp, #8
c0de1428:	aa43      	add	r2, sp, #268	; 0x10c
c0de142a:	2100      	movs	r1, #0
c0de142c:	462b      	mov	r3, r5
c0de142e:	9700      	str	r7, [sp, #0]
c0de1430:	9701      	str	r7, [sp, #4]
c0de1432:	f000 f8db 	bl	c0de15ec <cx_hash_no_throw>
c0de1436:	bb30      	cbnz	r0, c0de1486 <message_derive+0xa2>
c0de1438:	ae02      	add	r6, sp, #8
c0de143a:	4630      	mov	r0, r6
c0de143c:	f000 f8d2 	bl	c0de15e4 <cx_hash_get_size>
c0de1440:	9f3f      	ldr	r7, [sp, #252]	; 0xfc
c0de1442:	4630      	mov	r0, r6
c0de1444:	2101      	movs	r1, #1
c0de1446:	2200      	movs	r2, #0
c0de1448:	2300      	movs	r3, #0
c0de144a:	9400      	str	r4, [sp, #0]
c0de144c:	9701      	str	r7, [sp, #4]
c0de144e:	f000 f8cd 	bl	c0de15ec <cx_hash_no_throw>
c0de1452:	b9c0      	cbnz	r0, c0de1486 <message_derive+0xa2>
c0de1454:	a802      	add	r0, sp, #8
c0de1456:	f000 f8c5 	bl	c0de15e4 <cx_hash_get_size>
c0de145a:	201f      	movs	r0, #31
c0de145c:	4621      	mov	r1, r4
c0de145e:	bf00      	nop
c0de1460:	780a      	ldrb	r2, [r1, #0]
c0de1462:	5c23      	ldrb	r3, [r4, r0]
c0de1464:	5422      	strb	r2, [r4, r0]
c0de1466:	f801 3b01 	strb.w	r3, [r1], #1
c0de146a:	2810      	cmp	r0, #16
c0de146c:	f1a0 0001 	sub.w	r0, r0, #1
c0de1470:	d8f6      	bhi.n	c0de1460 <message_derive+0x7c>
c0de1472:	7820      	ldrb	r0, [r4, #0]
c0de1474:	f000 003f 	and.w	r0, r0, #63	; 0x3f
c0de1478:	7020      	strb	r0, [r4, #0]
c0de147a:	43e8      	mvns	r0, r5
c0de147c:	0fc0      	lsrs	r0, r0, #31
c0de147e:	f50d 7d06 	add.w	sp, sp, #536	; 0x218
c0de1482:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1486:	f000 fea6 	bl	c0de21d6 <os_longjmp>

c0de148a <message_hash>:
c0de148a:	b570      	push	{r4, r5, r6, lr}
c0de148c:	b0e2      	sub	sp, #392	; 0x188
c0de148e:	461d      	mov	r5, r3
c0de1490:	4613      	mov	r3, r2
c0de1492:	460a      	mov	r2, r1
c0de1494:	4604      	mov	r4, r0
c0de1496:	a81a      	add	r0, sp, #104	; 0x68
c0de1498:	f44f 7190 	mov.w	r1, #288	; 0x120
c0de149c:	9500      	str	r5, [sp, #0]
c0de149e:	f002 f925 	bl	c0de36ec <roinput_hash_message>
c0de14a2:	4605      	mov	r5, r0
c0de14a4:	2800      	cmp	r0, #0
c0de14a6:	d40d      	bmi.n	c0de14c4 <message_hash+0x3a>
c0de14a8:	9966      	ldr	r1, [sp, #408]	; 0x198
c0de14aa:	ae02      	add	r6, sp, #8
c0de14ac:	4630      	mov	r0, r6
c0de14ae:	f001 ff19 	bl	c0de32e4 <poseidon_init>
c0de14b2:	a91a      	add	r1, sp, #104	; 0x68
c0de14b4:	4630      	mov	r0, r6
c0de14b6:	462a      	mov	r2, r5
c0de14b8:	f001 ff26 	bl	c0de3308 <poseidon_update>
c0de14bc:	4620      	mov	r0, r4
c0de14be:	4631      	mov	r1, r6
c0de14c0:	f001 ff61 	bl	c0de3386 <poseidon_digest>
c0de14c4:	43e8      	mvns	r0, r5
c0de14c6:	0fc0      	lsrs	r0, r0, #31
c0de14c8:	b062      	add	sp, #392	; 0x188
c0de14ca:	bd70      	pop	{r4, r5, r6, pc}

c0de14cc <sign>:
c0de14cc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de14d0:	b0ae      	sub	sp, #184	; 0xb8
c0de14d2:	ae02      	add	r6, sp, #8
c0de14d4:	4683      	mov	fp, r0
c0de14d6:	4630      	mov	r0, r6
c0de14d8:	461c      	mov	r4, r3
c0de14da:	4692      	mov	sl, r2
c0de14dc:	460d      	mov	r5, r1
c0de14de:	f005 fc91 	bl	c0de6e04 <setjmp>
c0de14e2:	fa1f f880 	uxth.w	r8, r0
c0de14e6:	f1b8 0f00 	cmp.w	r8, #0
c0de14ea:	f8ad 0034 	strh.w	r0, [sp, #52]	; 0x34
c0de14ee:	d006      	beq.n	c0de14fe <sign+0x32>
c0de14f0:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de14f2:	2100      	movs	r1, #0
c0de14f4:	f8ad 1034 	strh.w	r1, [sp, #52]	; 0x34
c0de14f8:	f002 fb26 	bl	c0de3b48 <try_context_set>
c0de14fc:	e04c      	b.n	c0de1598 <sign+0xcc>
c0de14fe:	a802      	add	r0, sp, #8
c0de1500:	f002 fb22 	bl	c0de3b48 <try_context_set>
c0de1504:	900c      	str	r0, [sp, #48]	; 0x30
c0de1506:	a826      	add	r0, sp, #152	; 0x98
c0de1508:	4629      	mov	r1, r5
c0de150a:	4652      	mov	r2, sl
c0de150c:	4623      	mov	r3, r4
c0de150e:	f7ff ff69 	bl	c0de13e4 <message_derive>
c0de1512:	2800      	cmp	r0, #0
c0de1514:	d059      	beq.n	c0de15ca <sign+0xfe>
c0de1516:	9401      	str	r4, [sp, #4]
c0de1518:	f001 fa26 	bl	c0de2968 <io_seproxyhal_io_heartbeat>
c0de151c:	4a2c      	ldr	r2, [pc, #176]	; (c0de15d0 <sign+0x104>)
c0de151e:	ac16      	add	r4, sp, #88	; 0x58
c0de1520:	ae26      	add	r6, sp, #152	; 0x98
c0de1522:	447a      	add	r2, pc
c0de1524:	4620      	mov	r0, r4
c0de1526:	4631      	mov	r1, r6
c0de1528:	f7ff fe98 	bl	c0de125c <affine_scalar_mul>
c0de152c:	f001 fa1c 	bl	c0de2968 <io_seproxyhal_io_heartbeat>
c0de1530:	2220      	movs	r2, #32
c0de1532:	4658      	mov	r0, fp
c0de1534:	4621      	mov	r1, r4
c0de1536:	f005 fc16 	bl	c0de6d66 <__aeabi_memcpy>
c0de153a:	f89d 0097 	ldrb.w	r0, [sp, #151]	; 0x97
c0de153e:	07c0      	lsls	r0, r0, #31
c0de1540:	d00b      	beq.n	c0de155a <sign+0x8e>
c0de1542:	4630      	mov	r0, r6
c0de1544:	a90e      	add	r1, sp, #56	; 0x38
c0de1546:	46b4      	mov	ip, r6
c0de1548:	c8d8      	ldmia	r0!, {r3, r4, r6, r7}
c0de154a:	460a      	mov	r2, r1
c0de154c:	c2d8      	stmia	r2!, {r3, r4, r6, r7}
c0de154e:	e890 00d8 	ldmia.w	r0, {r3, r4, r6, r7}
c0de1552:	4660      	mov	r0, ip
c0de1554:	c2d8      	stmia	r2!, {r3, r4, r6, r7}
c0de1556:	f7ff fc57 	bl	c0de0e08 <scalar_negate>
c0de155a:	f10b 0720 	add.w	r7, fp, #32
c0de155e:	9c01      	ldr	r4, [sp, #4]
c0de1560:	466e      	mov	r6, sp
c0de1562:	aa16      	add	r2, sp, #88	; 0x58
c0de1564:	4638      	mov	r0, r7
c0de1566:	4629      	mov	r1, r5
c0de1568:	4653      	mov	r3, sl
c0de156a:	6034      	str	r4, [r6, #0]
c0de156c:	f7ff ff8d 	bl	c0de148a <message_hash>
c0de1570:	b358      	cbz	r0, c0de15ca <sign+0xfe>
c0de1572:	f001 f9f9 	bl	c0de2968 <io_seproxyhal_io_heartbeat>
c0de1576:	ac0e      	add	r4, sp, #56	; 0x38
c0de1578:	f105 0240 	add.w	r2, r5, #64	; 0x40
c0de157c:	4620      	mov	r0, r4
c0de157e:	4639      	mov	r1, r7
c0de1580:	f7ff fc30 	bl	c0de0de4 <scalar_mul>
c0de1584:	f001 f9f0 	bl	c0de2968 <io_seproxyhal_io_heartbeat>
c0de1588:	a926      	add	r1, sp, #152	; 0x98
c0de158a:	4638      	mov	r0, r7
c0de158c:	4622      	mov	r2, r4
c0de158e:	f7ff fc17 	bl	c0de0dc0 <scalar_add>
c0de1592:	f001 f9e9 	bl	c0de2968 <io_seproxyhal_io_heartbeat>
c0de1596:	ae02      	add	r6, sp, #8
c0de1598:	f002 facc 	bl	c0de3b34 <try_context_get>
c0de159c:	42b0      	cmp	r0, r6
c0de159e:	d102      	bne.n	c0de15a6 <sign+0xda>
c0de15a0:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de15a2:	f002 fad1 	bl	c0de3b48 <try_context_set>
c0de15a6:	2420      	movs	r4, #32
c0de15a8:	a80e      	add	r0, sp, #56	; 0x38
c0de15aa:	4621      	mov	r1, r4
c0de15ac:	f005 fbe4 	bl	c0de6d78 <explicit_bzero>
c0de15b0:	a826      	add	r0, sp, #152	; 0x98
c0de15b2:	4621      	mov	r1, r4
c0de15b4:	f005 fbe0 	bl	c0de6d78 <explicit_bzero>
c0de15b8:	f8bd 0034 	ldrh.w	r0, [sp, #52]	; 0x34
c0de15bc:	b930      	cbnz	r0, c0de15cc <sign+0x100>
c0de15be:	fab8 f088 	clz	r0, r8
c0de15c2:	0940      	lsrs	r0, r0, #5
c0de15c4:	b02e      	add	sp, #184	; 0xb8
c0de15c6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de15ca:	2002      	movs	r0, #2
c0de15cc:	f000 fe03 	bl	c0de21d6 <os_longjmp>
c0de15d0:	00006e8e 	.word	0x00006e8e

c0de15d4 <cx_blake2b_init_no_throw>:
c0de15d4:	b403      	push	{r0, r1}
c0de15d6:	f04f 001a 	mov.w	r0, #26
c0de15da:	e02b      	b.n	c0de1634 <cx_trampoline_helper>

c0de15dc <cx_crc16_update>:
c0de15dc:	b403      	push	{r0, r1}
c0de15de:	f04f 0026 	mov.w	r0, #38	; 0x26
c0de15e2:	e027      	b.n	c0de1634 <cx_trampoline_helper>

c0de15e4 <cx_hash_get_size>:
c0de15e4:	b403      	push	{r0, r1}
c0de15e6:	f04f 0044 	mov.w	r0, #68	; 0x44
c0de15ea:	e023      	b.n	c0de1634 <cx_trampoline_helper>

c0de15ec <cx_hash_no_throw>:
c0de15ec:	b403      	push	{r0, r1}
c0de15ee:	f04f 0047 	mov.w	r0, #71	; 0x47
c0de15f2:	e01f      	b.n	c0de1634 <cx_trampoline_helper>

c0de15f4 <cx_hash_sha256>:
c0de15f4:	b403      	push	{r0, r1}
c0de15f6:	f04f 0049 	mov.w	r0, #73	; 0x49
c0de15fa:	e01b      	b.n	c0de1634 <cx_trampoline_helper>

c0de15fc <cx_math_addm_no_throw>:
c0de15fc:	b403      	push	{r0, r1}
c0de15fe:	f04f 005a 	mov.w	r0, #90	; 0x5a
c0de1602:	e017      	b.n	c0de1634 <cx_trampoline_helper>

c0de1604 <cx_math_invprimem_no_throw>:
c0de1604:	b403      	push	{r0, r1}
c0de1606:	f04f 005e 	mov.w	r0, #94	; 0x5e
c0de160a:	e013      	b.n	c0de1634 <cx_trampoline_helper>

c0de160c <cx_math_multm_no_throw>:
c0de160c:	b403      	push	{r0, r1}
c0de160e:	f04f 0061 	mov.w	r0, #97	; 0x61
c0de1612:	e00f      	b.n	c0de1634 <cx_trampoline_helper>

c0de1614 <cx_math_powm_no_throw>:
c0de1614:	b403      	push	{r0, r1}
c0de1616:	f04f 0064 	mov.w	r0, #100	; 0x64
c0de161a:	e00b      	b.n	c0de1634 <cx_trampoline_helper>

c0de161c <cx_math_subm_no_throw>:
c0de161c:	b403      	push	{r0, r1}
c0de161e:	f04f 0065 	mov.w	r0, #101	; 0x65
c0de1622:	e007      	b.n	c0de1634 <cx_trampoline_helper>

c0de1624 <cx_rng_no_throw>:
c0de1624:	b403      	push	{r0, r1}
c0de1626:	f04f 006d 	mov.w	r0, #109	; 0x6d
c0de162a:	e003      	b.n	c0de1634 <cx_trampoline_helper>

c0de162c <cx_x448>:
c0de162c:	b403      	push	{r0, r1}
c0de162e:	f04f 0086 	mov.w	r0, #134	; 0x86
c0de1632:	e7ff      	b.n	c0de1634 <cx_trampoline_helper>

c0de1634 <cx_trampoline_helper>:
c0de1634:	4900      	ldr	r1, [pc, #0]	; (c0de1638 <cx_trampoline_helper+0x4>)
c0de1636:	4708      	bx	r1
c0de1638:	00808001 	.word	0x00808001

c0de163c <handle_get_address>:
c0de163c:	b510      	push	{r4, lr}
c0de163e:	2b04      	cmp	r3, #4
c0de1640:	d108      	bne.n	c0de1654 <handle_get_address+0x18>
c0de1642:	9c02      	ldr	r4, [sp, #8]
c0de1644:	4610      	mov	r0, r2
c0de1646:	f000 f873 	bl	c0de1730 <ui_get_address>
c0de164a:	6820      	ldr	r0, [r4, #0]
c0de164c:	f040 0010 	orr.w	r0, r0, #16
c0de1650:	6020      	str	r0, [r4, #0]
c0de1652:	bd10      	pop	{r4, pc}
c0de1654:	2002      	movs	r0, #2
c0de1656:	f000 fdbe 	bl	c0de21d6 <os_longjmp>

c0de165a <ux_get_address_result_flow_address_step_init>:
c0de165a:	b510      	push	{r4, lr}
c0de165c:	4604      	mov	r4, r0
c0de165e:	f000 f805 	bl	c0de166c <gen_address>
c0de1662:	4620      	mov	r0, r4
c0de1664:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1668:	f004 bf3c 	b.w	c0de64e4 <ux_layout_bn_paging_init>

c0de166c <gen_address>:
c0de166c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de166e:	b0a5      	sub	sp, #148	; 0x94
c0de1670:	4e1b      	ldr	r6, [pc, #108]	; (c0de16e0 <gen_address+0x74>)
c0de1672:	4648      	mov	r0, r9
c0de1674:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de1678:	bb68      	cbnz	r0, c0de16d6 <gen_address+0x6a>
c0de167a:	ac19      	add	r4, sp, #100	; 0x64
c0de167c:	4620      	mov	r0, r4
c0de167e:	f005 fbc1 	bl	c0de6e04 <setjmp>
c0de1682:	0401      	lsls	r1, r0, #16
c0de1684:	f8ad 0090 	strh.w	r0, [sp, #144]	; 0x90
c0de1688:	d116      	bne.n	c0de16b8 <gen_address+0x4c>
c0de168a:	a819      	add	r0, sp, #100	; 0x64
c0de168c:	f002 fa5c 	bl	c0de3b48 <try_context_set>
c0de1690:	4914      	ldr	r1, [pc, #80]	; (c0de16e4 <gen_address+0x78>)
c0de1692:	ad01      	add	r5, sp, #4
c0de1694:	f859 1001 	ldr.w	r1, [r9, r1]
c0de1698:	9023      	str	r0, [sp, #140]	; 0x8c
c0de169a:	4628      	mov	r0, r5
c0de169c:	464f      	mov	r7, r9
c0de169e:	f7ff fdf3 	bl	c0de1288 <generate_keypair>
c0de16a2:	4811      	ldr	r0, [pc, #68]	; (c0de16e8 <gen_address+0x7c>)
c0de16a4:	2138      	movs	r1, #56	; 0x38
c0de16a6:	4448      	add	r0, r9
c0de16a8:	462a      	mov	r2, r5
c0de16aa:	f7ff fe19 	bl	c0de12e0 <generate_address>
c0de16ae:	b1a0      	cbz	r0, c0de16da <gen_address+0x6e>
c0de16b0:	2101      	movs	r1, #1
c0de16b2:	4648      	mov	r0, r9
c0de16b4:	f809 1006 	strb.w	r1, [r9, r6]
c0de16b8:	f002 fa3c 	bl	c0de3b34 <try_context_get>
c0de16bc:	42a0      	cmp	r0, r4
c0de16be:	d102      	bne.n	c0de16c6 <gen_address+0x5a>
c0de16c0:	9823      	ldr	r0, [sp, #140]	; 0x8c
c0de16c2:	f002 fa41 	bl	c0de3b48 <try_context_set>
c0de16c6:	a801      	add	r0, sp, #4
c0de16c8:	3040      	adds	r0, #64	; 0x40
c0de16ca:	2120      	movs	r1, #32
c0de16cc:	f005 fb54 	bl	c0de6d78 <explicit_bzero>
c0de16d0:	f8bd 0090 	ldrh.w	r0, [sp, #144]	; 0x90
c0de16d4:	b910      	cbnz	r0, c0de16dc <gen_address+0x70>
c0de16d6:	b025      	add	sp, #148	; 0x94
c0de16d8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de16da:	2002      	movs	r0, #2
c0de16dc:	f000 fd7b 	bl	c0de21d6 <os_longjmp>
c0de16e0:	00000053 	.word	0x00000053
c0de16e4:	00000054 	.word	0x00000054
c0de16e8:	00000000 	.word	0x00000000

c0de16ec <ux_get_address_result_flow_approve_step_validateinit>:
c0de16ec:	b580      	push	{r7, lr}
c0de16ee:	4806      	ldr	r0, [pc, #24]	; (c0de1708 <ux_get_address_result_flow_approve_step_validateinit+0x1c>)
c0de16f0:	4906      	ldr	r1, [pc, #24]	; (c0de170c <ux_get_address_result_flow_approve_step_validateinit+0x20>)
c0de16f2:	4448      	add	r0, r9
c0de16f4:	4449      	add	r1, r9
c0de16f6:	2238      	movs	r2, #56	; 0x38
c0de16f8:	f005 fb35 	bl	c0de6d66 <__aeabi_memcpy>
c0de16fc:	2038      	movs	r0, #56	; 0x38
c0de16fe:	2101      	movs	r1, #1
c0de1700:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de1704:	f000 b856 	b.w	c0de17b4 <sendResponse>
c0de1708:	0000029c 	.word	0x0000029c
c0de170c:	00000000 	.word	0x00000000

c0de1710 <ux_get_address_result_flow_reject_step_validateinit>:
c0de1710:	2000      	movs	r0, #0
c0de1712:	2100      	movs	r1, #0
c0de1714:	f000 b84e 	b.w	c0de17b4 <sendResponse>

c0de1718 <ux_get_address_flow_generate_step_validateinit>:
c0de1718:	4902      	ldr	r1, [pc, #8]	; (c0de1724 <ux_get_address_flow_generate_step_validateinit+0xc>)
c0de171a:	2000      	movs	r0, #0
c0de171c:	4479      	add	r1, pc
c0de171e:	2200      	movs	r2, #0
c0de1720:	f004 bc60 	b.w	c0de5fe4 <ux_flow_init>
c0de1724:	00006d4c 	.word	0x00006d4c

c0de1728 <ux_get_address_flow_cancel_step_validateinit>:
c0de1728:	2000      	movs	r0, #0
c0de172a:	2100      	movs	r1, #0
c0de172c:	f000 b842 	b.w	c0de17b4 <sendResponse>

c0de1730 <ui_get_address>:
c0de1730:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1734:	4918      	ldr	r1, [pc, #96]	; (c0de1798 <ui_get_address+0x68>)
c0de1736:	4b19      	ldr	r3, [pc, #100]	; (c0de179c <ui_get_address+0x6c>)
c0de1738:	2200      	movs	r2, #0
c0de173a:	f809 2001 	strb.w	r2, [r9, r1]
c0de173e:	f809 2003 	strb.w	r2, [r9, r3]
c0de1742:	f004 f91f 	bl	c0de5984 <read_uint32_be>
c0de1746:	4684      	mov	ip, r0
c0de1748:	4815      	ldr	r0, [pc, #84]	; (c0de17a0 <ui_get_address+0x70>)
c0de174a:	4916      	ldr	r1, [pc, #88]	; (c0de17a4 <ui_get_address+0x74>)
c0de174c:	f849 c000 	str.w	ip, [r9, r0]
c0de1750:	4815      	ldr	r0, [pc, #84]	; (c0de17a8 <ui_get_address+0x78>)
c0de1752:	eb09 0801 	add.w	r8, r9, r1
c0de1756:	4478      	add	r0, pc
c0de1758:	c8fc      	ldmia	r0!, {r2, r3, r4, r5, r6, r7}
c0de175a:	4641      	mov	r1, r8
c0de175c:	c1fc      	stmia	r1!, {r2, r3, r4, r5, r6, r7}
c0de175e:	8802      	ldrh	r2, [r0, #0]
c0de1760:	7880      	ldrb	r0, [r0, #2]
c0de1762:	800a      	strh	r2, [r1, #0]
c0de1764:	7088      	strb	r0, [r1, #2]
c0de1766:	f108 000b 	add.w	r0, r8, #11
c0de176a:	2110      	movs	r1, #16
c0de176c:	4662      	mov	r2, ip
c0de176e:	2300      	movs	r3, #0
c0de1770:	f004 f9ca 	bl	c0de5b08 <value_to_string>
c0de1774:	4640      	mov	r0, r8
c0de1776:	f005 fb53 	bl	c0de6e20 <strlen>
c0de177a:	490c      	ldr	r1, [pc, #48]	; (c0de17ac <ui_get_address+0x7c>)
c0de177c:	4440      	add	r0, r8
c0de177e:	4479      	add	r1, pc
c0de1780:	2206      	movs	r2, #6
c0de1782:	f005 faf0 	bl	c0de6d66 <__aeabi_memcpy>
c0de1786:	490a      	ldr	r1, [pc, #40]	; (c0de17b0 <ui_get_address+0x80>)
c0de1788:	2000      	movs	r0, #0
c0de178a:	4479      	add	r1, pc
c0de178c:	2200      	movs	r2, #0
c0de178e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1792:	f004 bc27 	b.w	c0de5fe4 <ux_flow_init>
c0de1796:	bf00      	nop
c0de1798:	00000053 	.word	0x00000053
c0de179c:	00000000 	.word	0x00000000
c0de17a0:	00000054 	.word	0x00000054
c0de17a4:	00000038 	.word	0x00000038
c0de17a8:	00006dca 	.word	0x00006dca
c0de17ac:	00005740 	.word	0x00005740
c0de17b0:	00006d82 	.word	0x00006d82

c0de17b4 <sendResponse>:
c0de17b4:	b580      	push	{r7, lr}
c0de17b6:	f8df c03c 	ldr.w	ip, [pc, #60]	; c0de17f4 <sendResponse+0x40>
c0de17ba:	2269      	movs	r2, #105	; 0x69
c0de17bc:	2900      	cmp	r1, #0
c0de17be:	bf18      	it	ne
c0de17c0:	f06f 026f 	mvnne.w	r2, #111	; 0x6f
c0de17c4:	f100 0e01 	add.w	lr, r0, #1
c0de17c8:	eb09 030c 	add.w	r3, r9, ip
c0de17cc:	541a      	strb	r2, [r3, r0]
c0de17ce:	f06f 027a 	mvn.w	r2, #122	; 0x7a
c0de17d2:	2900      	cmp	r1, #0
c0de17d4:	f100 0002 	add.w	r0, r0, #2
c0de17d8:	fa5f f18e 	uxtb.w	r1, lr
c0de17dc:	bf18      	it	ne
c0de17de:	2200      	movne	r2, #0
c0de17e0:	545a      	strb	r2, [r3, r1]
c0de17e2:	b2c1      	uxtb	r1, r0
c0de17e4:	2020      	movs	r0, #32
c0de17e6:	f000 ff0d 	bl	c0de2604 <io_exchange>
c0de17ea:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de17ee:	f000 bcdb 	b.w	c0de21a8 <ui_idle>
c0de17f2:	bf00      	nop
c0de17f4:	0000029c 	.word	0x0000029c

c0de17f8 <handleApdu>:
c0de17f8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de17fa:	b08f      	sub	sp, #60	; 0x3c
c0de17fc:	ac02      	add	r4, sp, #8
c0de17fe:	4606      	mov	r6, r0
c0de1800:	4620      	mov	r0, r4
c0de1802:	460d      	mov	r5, r1
c0de1804:	920e      	str	r2, [sp, #56]	; 0x38
c0de1806:	f005 fafd 	bl	c0de6e04 <setjmp>
c0de180a:	4607      	mov	r7, r0
c0de180c:	b280      	uxth	r0, r0
c0de180e:	f8ad 7034 	strh.w	r7, [sp, #52]	; 0x34
c0de1812:	b1f0      	cbz	r0, c0de1852 <handleApdu+0x5a>
c0de1814:	2805      	cmp	r0, #5
c0de1816:	d067      	beq.n	c0de18e8 <handleApdu+0xf0>
c0de1818:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de181a:	2100      	movs	r1, #0
c0de181c:	463e      	mov	r6, r7
c0de181e:	f8ad 1034 	strh.w	r1, [sp, #52]	; 0x34
c0de1822:	f002 f991 	bl	c0de3b48 <try_context_set>
c0de1826:	f407 4070 	and.w	r0, r7, #61440	; 0xf000
c0de182a:	f5b0 4f10 	cmp.w	r0, #36864	; 0x9000
c0de182e:	d002      	beq.n	c0de1836 <handleApdu+0x3e>
c0de1830:	f5b0 4fc0 	cmp.w	r0, #24576	; 0x6000
c0de1834:	d146      	bne.n	c0de18c4 <handleApdu+0xcc>
c0de1836:	0a38      	lsrs	r0, r7, #8
c0de1838:	4a3a      	ldr	r2, [pc, #232]	; (c0de1924 <handleApdu+0x12c>)
c0de183a:	4649      	mov	r1, r9
c0de183c:	682b      	ldr	r3, [r5, #0]
c0de183e:	eb09 0102 	add.w	r1, r9, r2
c0de1842:	54c8      	strb	r0, [r1, r3]
c0de1844:	6828      	ldr	r0, [r5, #0]
c0de1846:	4408      	add	r0, r1
c0de1848:	7046      	strb	r6, [r0, #1]
c0de184a:	6828      	ldr	r0, [r5, #0]
c0de184c:	3002      	adds	r0, #2
c0de184e:	6028      	str	r0, [r5, #0]
c0de1850:	e02c      	b.n	c0de18ac <handleApdu+0xb4>
c0de1852:	a802      	add	r0, sp, #8
c0de1854:	f002 f978 	bl	c0de3b48 <try_context_set>
c0de1858:	4932      	ldr	r1, [pc, #200]	; (c0de1924 <handleApdu+0x12c>)
c0de185a:	464a      	mov	r2, r9
c0de185c:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de1860:	900c      	str	r0, [sp, #48]	; 0x30
c0de1862:	2ae0      	cmp	r2, #224	; 0xe0
c0de1864:	d13c      	bne.n	c0de18e0 <handleApdu+0xe8>
c0de1866:	4648      	mov	r0, r9
c0de1868:	eb09 0001 	add.w	r0, r9, r1
c0de186c:	7903      	ldrb	r3, [r0, #4]
c0de186e:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de1870:	1d5a      	adds	r2, r3, #5
c0de1872:	4282      	cmp	r2, r0
c0de1874:	d134      	bne.n	c0de18e0 <handleApdu+0xe8>
c0de1876:	4648      	mov	r0, r9
c0de1878:	eb09 0001 	add.w	r0, r9, r1
c0de187c:	7840      	ldrb	r0, [r0, #1]
c0de187e:	2802      	cmp	r0, #2
c0de1880:	d00b      	beq.n	c0de189a <handleApdu+0xa2>
c0de1882:	2803      	cmp	r0, #3
c0de1884:	d139      	bne.n	c0de18fa <handleApdu+0x102>
c0de1886:	eb09 0201 	add.w	r2, r9, r1
c0de188a:	7890      	ldrb	r0, [r2, #2]
c0de188c:	78d1      	ldrb	r1, [r2, #3]
c0de188e:	466f      	mov	r7, sp
c0de1890:	3205      	adds	r2, #5
c0de1892:	603e      	str	r6, [r7, #0]
c0de1894:	f001 ff97 	bl	c0de37c6 <handle_sign_tx>
c0de1898:	e008      	b.n	c0de18ac <handleApdu+0xb4>
c0de189a:	eb09 0201 	add.w	r2, r9, r1
c0de189e:	7890      	ldrb	r0, [r2, #2]
c0de18a0:	78d1      	ldrb	r1, [r2, #3]
c0de18a2:	466f      	mov	r7, sp
c0de18a4:	3205      	adds	r2, #5
c0de18a6:	603e      	str	r6, [r7, #0]
c0de18a8:	f7ff fec8 	bl	c0de163c <handle_get_address>
c0de18ac:	f002 f942 	bl	c0de3b34 <try_context_get>
c0de18b0:	42a0      	cmp	r0, r4
c0de18b2:	d102      	bne.n	c0de18ba <handleApdu+0xc2>
c0de18b4:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de18b6:	f002 f947 	bl	c0de3b48 <try_context_set>
c0de18ba:	f8bd 0034 	ldrh.w	r0, [sp, #52]	; 0x34
c0de18be:	b988      	cbnz	r0, c0de18e4 <handleApdu+0xec>
c0de18c0:	b00f      	add	sp, #60	; 0x3c
c0de18c2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de18c4:	200d      	movs	r0, #13
c0de18c6:	f360 27df 	bfi	r7, r0, #11, #21
c0de18ca:	0a39      	lsrs	r1, r7, #8
c0de18cc:	f646 0202 	movw	r2, #26626	; 0x6802
c0de18d0:	4608      	mov	r0, r1
c0de18d2:	4297      	cmp	r7, r2
c0de18d4:	d1b0      	bne.n	c0de1838 <handleApdu+0x40>
c0de18d6:	460f      	mov	r7, r1
c0de18d8:	f000 fc66 	bl	c0de21a8 <ui_idle>
c0de18dc:	4638      	mov	r0, r7
c0de18de:	e7ab      	b.n	c0de1838 <handleApdu+0x40>
c0de18e0:	f44f 40dc 	mov.w	r0, #28160	; 0x6e00
c0de18e4:	f000 fc77 	bl	c0de21d6 <os_longjmp>
c0de18e8:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de18ea:	2100      	movs	r1, #0
c0de18ec:	f8ad 1034 	strh.w	r1, [sp, #52]	; 0x34
c0de18f0:	f002 f92a 	bl	c0de3b48 <try_context_set>
c0de18f4:	2005      	movs	r0, #5
c0de18f6:	f000 fc6e 	bl	c0de21d6 <os_longjmp>
c0de18fa:	2801      	cmp	r0, #1
c0de18fc:	d10d      	bne.n	c0de191a <handleApdu+0x122>
c0de18fe:	2201      	movs	r2, #1
c0de1900:	f809 2001 	strb.w	r2, [r9, r1]
c0de1904:	eb09 0001 	add.w	r0, r9, r1
c0de1908:	2100      	movs	r1, #0
c0de190a:	7042      	strb	r2, [r0, #1]
c0de190c:	7081      	strb	r1, [r0, #2]
c0de190e:	2003      	movs	r0, #3
c0de1910:	6028      	str	r0, [r5, #0]
c0de1912:	f44f 4010 	mov.w	r0, #36864	; 0x9000
c0de1916:	f000 fc5e 	bl	c0de21d6 <os_longjmp>
c0de191a:	f44f 40da 	mov.w	r0, #27904	; 0x6d00
c0de191e:	f000 fc5a 	bl	c0de21d6 <os_longjmp>
c0de1922:	bf00      	nop
c0de1924:	0000029c 	.word	0x0000029c

c0de1928 <app_main>:
c0de1928:	b090      	sub	sp, #64	; 0x40
c0de192a:	f8df a100 	ldr.w	sl, [pc, #256]	; c0de1a2c <app_main+0x104>
c0de192e:	2500      	movs	r5, #0
c0de1930:	466c      	mov	r4, sp
c0de1932:	ae0e      	add	r6, sp, #56	; 0x38
c0de1934:	950f      	str	r5, [sp, #60]	; 0x3c
c0de1936:	950e      	str	r5, [sp, #56]	; 0x38
c0de1938:	950d      	str	r5, [sp, #52]	; 0x34
c0de193a:	bf00      	nop
c0de193c:	4620      	mov	r0, r4
c0de193e:	f8ad 5032 	strh.w	r5, [sp, #50]	; 0x32
c0de1942:	f005 fa5f 	bl	c0de6e04 <setjmp>
c0de1946:	fa1f fb80 	uxth.w	fp, r0
c0de194a:	f1bb 0f00 	cmp.w	fp, #0
c0de194e:	f8ad 002c 	strh.w	r0, [sp, #44]	; 0x2c
c0de1952:	d015      	beq.n	c0de1980 <app_main+0x58>
c0de1954:	f1bb 0f05 	cmp.w	fp, #5
c0de1958:	d056      	beq.n	c0de1a08 <app_main+0xe0>
c0de195a:	4607      	mov	r7, r0
c0de195c:	4680      	mov	r8, r0
c0de195e:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de1960:	f8ad 502c 	strh.w	r5, [sp, #44]	; 0x2c
c0de1964:	f002 f8f0 	bl	c0de3b48 <try_context_set>
c0de1968:	f407 4070 	and.w	r0, r7, #61440	; 0xf000
c0de196c:	f5b0 4f10 	cmp.w	r0, #36864	; 0x9000
c0de1970:	d002      	beq.n	c0de1978 <app_main+0x50>
c0de1972:	f5b0 4fc0 	cmp.w	r0, #24576	; 0x6000
c0de1976:	d11e      	bne.n	c0de19b6 <app_main+0x8e>
c0de1978:	f8ad 8032 	strh.w	r8, [sp, #50]	; 0x32
c0de197c:	e020      	b.n	c0de19c0 <app_main+0x98>
c0de197e:	bf00      	nop
c0de1980:	4620      	mov	r0, r4
c0de1982:	f002 f8e1 	bl	c0de3b48 <try_context_set>
c0de1986:	900a      	str	r0, [sp, #40]	; 0x28
c0de1988:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de198a:	900f      	str	r0, [sp, #60]	; 0x3c
c0de198c:	950e      	str	r5, [sp, #56]	; 0x38
c0de198e:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de1990:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0de1992:	b2c0      	uxtb	r0, r0
c0de1994:	b289      	uxth	r1, r1
c0de1996:	f000 fe35 	bl	c0de2604 <io_exchange>
c0de199a:	900f      	str	r0, [sp, #60]	; 0x3c
c0de199c:	950d      	str	r5, [sp, #52]	; 0x34
c0de199e:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de19a0:	b3d8      	cbz	r0, c0de1a1a <app_main+0xf2>
c0de19a2:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de19a4:	f5b0 7f82 	cmp.w	r0, #260	; 0x104
c0de19a8:	d83b      	bhi.n	c0de1a22 <app_main+0xfa>
c0de19aa:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de19ac:	a80d      	add	r0, sp, #52	; 0x34
c0de19ae:	4631      	mov	r1, r6
c0de19b0:	f7ff ff22 	bl	c0de17f8 <handleApdu>
c0de19b4:	e01b      	b.n	c0de19ee <app_main+0xc6>
c0de19b6:	200d      	movs	r0, #13
c0de19b8:	f360 27df 	bfi	r7, r0, #11, #21
c0de19bc:	f8ad 7032 	strh.w	r7, [sp, #50]	; 0x32
c0de19c0:	f5bb 4f10 	cmp.w	fp, #36864	; 0x9000
c0de19c4:	d003      	beq.n	c0de19ce <app_main+0xa6>
c0de19c6:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de19c8:	f020 0010 	bic.w	r0, r0, #16
c0de19cc:	900d      	str	r0, [sp, #52]	; 0x34
c0de19ce:	f8bd 0032 	ldrh.w	r0, [sp, #50]	; 0x32
c0de19d2:	4649      	mov	r1, r9
c0de19d4:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0de19d6:	0a00      	lsrs	r0, r0, #8
c0de19d8:	eb09 010a 	add.w	r1, r9, sl
c0de19dc:	5488      	strb	r0, [r1, r2]
c0de19de:	f8bd 0032 	ldrh.w	r0, [sp, #50]	; 0x32
c0de19e2:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0de19e4:	4411      	add	r1, r2
c0de19e6:	7048      	strb	r0, [r1, #1]
c0de19e8:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de19ea:	3002      	adds	r0, #2
c0de19ec:	900e      	str	r0, [sp, #56]	; 0x38
c0de19ee:	f002 f8a1 	bl	c0de3b34 <try_context_get>
c0de19f2:	42a0      	cmp	r0, r4
c0de19f4:	d102      	bne.n	c0de19fc <app_main+0xd4>
c0de19f6:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de19f8:	f002 f8a6 	bl	c0de3b48 <try_context_set>
c0de19fc:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
c0de1a00:	2800      	cmp	r0, #0
c0de1a02:	d09b      	beq.n	c0de193c <app_main+0x14>
c0de1a04:	f000 fbe7 	bl	c0de21d6 <os_longjmp>
c0de1a08:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de1a0a:	2100      	movs	r1, #0
c0de1a0c:	f8ad 102c 	strh.w	r1, [sp, #44]	; 0x2c
c0de1a10:	f002 f89a 	bl	c0de3b48 <try_context_set>
c0de1a14:	2005      	movs	r0, #5
c0de1a16:	f000 fbde 	bl	c0de21d6 <os_longjmp>
c0de1a1a:	f646 1082 	movw	r0, #27010	; 0x6982
c0de1a1e:	f000 fbda 	bl	c0de21d6 <os_longjmp>
c0de1a22:	f44f 40dc 	mov.w	r0, #28160	; 0x6e00
c0de1a26:	f000 fbd6 	bl	c0de21d6 <os_longjmp>
c0de1a2a:	bf00      	nop
c0de1a2c:	0000029c 	.word	0x0000029c

c0de1a30 <io_seproxyhal_display>:
c0de1a30:	f000 bd5f 	b.w	c0de24f2 <io_seproxyhal_display_default>

c0de1a34 <io_event>:
c0de1a34:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1a36:	b081      	sub	sp, #4
c0de1a38:	f8df 56a0 	ldr.w	r5, [pc, #1696]	; c0de20dc <io_event+0x6a8>
c0de1a3c:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de1a40:	280c      	cmp	r0, #12
c0de1a42:	dd15      	ble.n	c0de1a70 <io_event+0x3c>
c0de1a44:	280d      	cmp	r0, #13
c0de1a46:	f000 8088 	beq.w	c0de1b5a <io_event+0x126>
c0de1a4a:	280e      	cmp	r0, #14
c0de1a4c:	f000 80fb 	beq.w	c0de1c46 <io_event+0x212>
c0de1a50:	2815      	cmp	r0, #21
c0de1a52:	d113      	bne.n	c0de1a7c <io_event+0x48>
c0de1a54:	f8df 0690 	ldr.w	r0, [pc, #1680]	; c0de20e8 <io_event+0x6b4>
c0de1a58:	4448      	add	r0, r9
c0de1a5a:	7980      	ldrb	r0, [r0, #6]
c0de1a5c:	2801      	cmp	r0, #1
c0de1a5e:	d10d      	bne.n	c0de1a7c <io_event+0x48>
c0de1a60:	eb09 0005 	add.w	r0, r9, r5
c0de1a64:	7980      	ldrb	r0, [r0, #6]
c0de1a66:	0700      	lsls	r0, r0, #28
c0de1a68:	d408      	bmi.n	c0de1a7c <io_event+0x48>
c0de1a6a:	2005      	movs	r0, #5
c0de1a6c:	f000 fbb3 	bl	c0de21d6 <os_longjmp>
c0de1a70:	2805      	cmp	r0, #5
c0de1a72:	f000 8157 	beq.w	c0de1d24 <io_event+0x2f0>
c0de1a76:	280c      	cmp	r0, #12
c0de1a78:	f000 8328 	beq.w	c0de20cc <io_event+0x698>
c0de1a7c:	f8df 5660 	ldr.w	r5, [pc, #1632]	; c0de20e0 <io_event+0x6ac>
c0de1a80:	2001      	movs	r0, #1
c0de1a82:	eb09 0405 	add.w	r4, r9, r5
c0de1a86:	f809 0005 	strb.w	r0, [r9, r5]
c0de1a8a:	2600      	movs	r6, #0
c0de1a8c:	4620      	mov	r0, r4
c0de1a8e:	6066      	str	r6, [r4, #4]
c0de1a90:	f001 fffa 	bl	c0de3a88 <os_ux>
c0de1a94:	2004      	movs	r0, #4
c0de1a96:	f002 f865 	bl	c0de3b64 <os_sched_last_status>
c0de1a9a:	2869      	cmp	r0, #105	; 0x69
c0de1a9c:	6060      	str	r0, [r4, #4]
c0de1a9e:	f040 81ba 	bne.w	c0de1e16 <io_event+0x3e2>
c0de1aa2:	f000 fcfb 	bl	c0de249c <io_seproxyhal_init_ux>
c0de1aa6:	f000 fcfb 	bl	c0de24a0 <io_seproxyhal_init_button>
c0de1aaa:	f8df 4638 	ldr.w	r4, [pc, #1592]	; c0de20e4 <io_event+0x6b0>
c0de1aae:	2004      	movs	r0, #4
c0de1ab0:	eb09 0704 	add.w	r7, r9, r4
c0de1ab4:	f8a7 60ca 	strh.w	r6, [r7, #202]	; 0xca
c0de1ab8:	f002 f854 	bl	c0de3b64 <os_sched_last_status>
c0de1abc:	f8d7 10cc 	ldr.w	r1, [r7, #204]	; 0xcc
c0de1ac0:	eb09 0205 	add.w	r2, r9, r5
c0de1ac4:	2900      	cmp	r1, #0
c0de1ac6:	6050      	str	r0, [r2, #4]
c0de1ac8:	f000 8300 	beq.w	c0de20cc <io_event+0x698>
c0de1acc:	2800      	cmp	r0, #0
c0de1ace:	f000 82fd 	beq.w	c0de20cc <io_event+0x698>
c0de1ad2:	2897      	cmp	r0, #151	; 0x97
c0de1ad4:	f000 82fa 	beq.w	c0de20cc <io_event+0x698>
c0de1ad8:	eb09 0004 	add.w	r0, r9, r4
c0de1adc:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de1ae0:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de1ae4:	4281      	cmp	r1, r0
c0de1ae6:	f080 82f1 	bcs.w	c0de20cc <io_event+0x698>
c0de1aea:	f001 ffa5 	bl	c0de3a38 <os_perso_isonboarded>
c0de1aee:	28aa      	cmp	r0, #170	; 0xaa
c0de1af0:	d104      	bne.n	c0de1afc <io_event+0xc8>
c0de1af2:	f001 ffbd 	bl	c0de3a70 <os_global_pin_is_validated>
c0de1af6:	28aa      	cmp	r0, #170	; 0xaa
c0de1af8:	f040 82e8 	bne.w	c0de20cc <io_event+0x698>
c0de1afc:	eb09 0104 	add.w	r1, r9, r4
c0de1b00:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de1b04:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de1b08:	4290      	cmp	r0, r2
c0de1b0a:	f080 817e 	bcs.w	c0de1e0a <io_event+0x3d6>
c0de1b0e:	4601      	mov	r1, r0
c0de1b10:	eb09 0204 	add.w	r2, r9, r4
c0de1b14:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de1b18:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de1b1c:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de1b20:	b13b      	cbz	r3, c0de1b32 <io_event+0xfe>
c0de1b22:	4798      	blx	r3
c0de1b24:	b160      	cbz	r0, c0de1b40 <io_event+0x10c>
c0de1b26:	eb09 0104 	add.w	r1, r9, r4
c0de1b2a:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de1b2e:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de1b32:	b289      	uxth	r1, r1
c0de1b34:	2801      	cmp	r0, #1
c0de1b36:	bf08      	it	eq
c0de1b38:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de1b3c:	f000 fcd9 	bl	c0de24f2 <io_seproxyhal_display_default>
c0de1b40:	eb09 0304 	add.w	r3, r9, r4
c0de1b44:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de1b48:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de1b4c:	1c41      	adds	r1, r0, #1
c0de1b4e:	b288      	uxth	r0, r1
c0de1b50:	4290      	cmp	r0, r2
c0de1b52:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de1b56:	d3db      	bcc.n	c0de1b10 <io_event+0xdc>
c0de1b58:	e157      	b.n	c0de1e0a <io_event+0x3d6>
c0de1b5a:	f8df 5584 	ldr.w	r5, [pc, #1412]	; c0de20e0 <io_event+0x6ac>
c0de1b5e:	2001      	movs	r0, #1
c0de1b60:	f809 0005 	strb.w	r0, [r9, r5]
c0de1b64:	eb09 0405 	add.w	r4, r9, r5
c0de1b68:	2000      	movs	r0, #0
c0de1b6a:	6060      	str	r0, [r4, #4]
c0de1b6c:	4620      	mov	r0, r4
c0de1b6e:	f001 ff8b 	bl	c0de3a88 <os_ux>
c0de1b72:	2004      	movs	r0, #4
c0de1b74:	f001 fff6 	bl	c0de3b64 <os_sched_last_status>
c0de1b78:	2800      	cmp	r0, #0
c0de1b7a:	6060      	str	r0, [r4, #4]
c0de1b7c:	f000 82a6 	beq.w	c0de20cc <io_event+0x698>
c0de1b80:	2897      	cmp	r0, #151	; 0x97
c0de1b82:	f000 82a3 	beq.w	c0de20cc <io_event+0x698>
c0de1b86:	2869      	cmp	r0, #105	; 0x69
c0de1b88:	f040 81fb 	bne.w	c0de1f82 <io_event+0x54e>
c0de1b8c:	f000 fc86 	bl	c0de249c <io_seproxyhal_init_ux>
c0de1b90:	f000 fc86 	bl	c0de24a0 <io_seproxyhal_init_button>
c0de1b94:	f8df 454c 	ldr.w	r4, [pc, #1356]	; c0de20e4 <io_event+0x6b0>
c0de1b98:	2000      	movs	r0, #0
c0de1b9a:	eb09 0604 	add.w	r6, r9, r4
c0de1b9e:	f8a6 00ca 	strh.w	r0, [r6, #202]	; 0xca
c0de1ba2:	2004      	movs	r0, #4
c0de1ba4:	f001 ffde 	bl	c0de3b64 <os_sched_last_status>
c0de1ba8:	f8d6 10cc 	ldr.w	r1, [r6, #204]	; 0xcc
c0de1bac:	eb09 0205 	add.w	r2, r9, r5
c0de1bb0:	2900      	cmp	r1, #0
c0de1bb2:	6050      	str	r0, [r2, #4]
c0de1bb4:	f000 828a 	beq.w	c0de20cc <io_event+0x698>
c0de1bb8:	2800      	cmp	r0, #0
c0de1bba:	f000 8287 	beq.w	c0de20cc <io_event+0x698>
c0de1bbe:	2897      	cmp	r0, #151	; 0x97
c0de1bc0:	f000 8284 	beq.w	c0de20cc <io_event+0x698>
c0de1bc4:	eb09 0004 	add.w	r0, r9, r4
c0de1bc8:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de1bcc:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de1bd0:	4281      	cmp	r1, r0
c0de1bd2:	f080 827b 	bcs.w	c0de20cc <io_event+0x698>
c0de1bd6:	f001 ff2f 	bl	c0de3a38 <os_perso_isonboarded>
c0de1bda:	28aa      	cmp	r0, #170	; 0xaa
c0de1bdc:	d104      	bne.n	c0de1be8 <io_event+0x1b4>
c0de1bde:	f001 ff47 	bl	c0de3a70 <os_global_pin_is_validated>
c0de1be2:	28aa      	cmp	r0, #170	; 0xaa
c0de1be4:	f040 8272 	bne.w	c0de20cc <io_event+0x698>
c0de1be8:	eb09 0104 	add.w	r1, r9, r4
c0de1bec:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de1bf0:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de1bf4:	4290      	cmp	r0, r2
c0de1bf6:	f080 8108 	bcs.w	c0de1e0a <io_event+0x3d6>
c0de1bfa:	4601      	mov	r1, r0
c0de1bfc:	eb09 0204 	add.w	r2, r9, r4
c0de1c00:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de1c04:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de1c08:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de1c0c:	b13b      	cbz	r3, c0de1c1e <io_event+0x1ea>
c0de1c0e:	4798      	blx	r3
c0de1c10:	b160      	cbz	r0, c0de1c2c <io_event+0x1f8>
c0de1c12:	eb09 0104 	add.w	r1, r9, r4
c0de1c16:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de1c1a:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de1c1e:	b289      	uxth	r1, r1
c0de1c20:	2801      	cmp	r0, #1
c0de1c22:	bf08      	it	eq
c0de1c24:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de1c28:	f000 fc63 	bl	c0de24f2 <io_seproxyhal_display_default>
c0de1c2c:	eb09 0304 	add.w	r3, r9, r4
c0de1c30:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de1c34:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de1c38:	1c41      	adds	r1, r0, #1
c0de1c3a:	b288      	uxth	r0, r1
c0de1c3c:	4290      	cmp	r0, r2
c0de1c3e:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de1c42:	d3db      	bcc.n	c0de1bfc <io_event+0x1c8>
c0de1c44:	e0e1      	b.n	c0de1e0a <io_event+0x3d6>
c0de1c46:	f8df 6498 	ldr.w	r6, [pc, #1176]	; c0de20e0 <io_event+0x6ac>
c0de1c4a:	2001      	movs	r0, #1
c0de1c4c:	eb09 0506 	add.w	r5, r9, r6
c0de1c50:	f809 0006 	strb.w	r0, [r9, r6]
c0de1c54:	2700      	movs	r7, #0
c0de1c56:	4628      	mov	r0, r5
c0de1c58:	606f      	str	r7, [r5, #4]
c0de1c5a:	f001 ff15 	bl	c0de3a88 <os_ux>
c0de1c5e:	2004      	movs	r0, #4
c0de1c60:	f001 ff80 	bl	c0de3b64 <os_sched_last_status>
c0de1c64:	2869      	cmp	r0, #105	; 0x69
c0de1c66:	6068      	str	r0, [r5, #4]
c0de1c68:	f040 811f 	bne.w	c0de1eaa <io_event+0x476>
c0de1c6c:	f000 fc16 	bl	c0de249c <io_seproxyhal_init_ux>
c0de1c70:	f000 fc16 	bl	c0de24a0 <io_seproxyhal_init_button>
c0de1c74:	f8df 446c 	ldr.w	r4, [pc, #1132]	; c0de20e4 <io_event+0x6b0>
c0de1c78:	2004      	movs	r0, #4
c0de1c7a:	eb09 0504 	add.w	r5, r9, r4
c0de1c7e:	f8a5 70ca 	strh.w	r7, [r5, #202]	; 0xca
c0de1c82:	f001 ff6f 	bl	c0de3b64 <os_sched_last_status>
c0de1c86:	f8d5 10cc 	ldr.w	r1, [r5, #204]	; 0xcc
c0de1c8a:	eb09 0206 	add.w	r2, r9, r6
c0de1c8e:	2900      	cmp	r1, #0
c0de1c90:	6050      	str	r0, [r2, #4]
c0de1c92:	f000 821b 	beq.w	c0de20cc <io_event+0x698>
c0de1c96:	2800      	cmp	r0, #0
c0de1c98:	f000 8218 	beq.w	c0de20cc <io_event+0x698>
c0de1c9c:	2897      	cmp	r0, #151	; 0x97
c0de1c9e:	f000 8215 	beq.w	c0de20cc <io_event+0x698>
c0de1ca2:	eb09 0004 	add.w	r0, r9, r4
c0de1ca6:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de1caa:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de1cae:	4281      	cmp	r1, r0
c0de1cb0:	f080 820c 	bcs.w	c0de20cc <io_event+0x698>
c0de1cb4:	f001 fec0 	bl	c0de3a38 <os_perso_isonboarded>
c0de1cb8:	28aa      	cmp	r0, #170	; 0xaa
c0de1cba:	d104      	bne.n	c0de1cc6 <io_event+0x292>
c0de1cbc:	f001 fed8 	bl	c0de3a70 <os_global_pin_is_validated>
c0de1cc0:	28aa      	cmp	r0, #170	; 0xaa
c0de1cc2:	f040 8203 	bne.w	c0de20cc <io_event+0x698>
c0de1cc6:	eb09 0104 	add.w	r1, r9, r4
c0de1cca:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de1cce:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de1cd2:	4290      	cmp	r0, r2
c0de1cd4:	f080 8099 	bcs.w	c0de1e0a <io_event+0x3d6>
c0de1cd8:	4601      	mov	r1, r0
c0de1cda:	eb09 0204 	add.w	r2, r9, r4
c0de1cde:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de1ce2:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de1ce6:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de1cea:	b13b      	cbz	r3, c0de1cfc <io_event+0x2c8>
c0de1cec:	4798      	blx	r3
c0de1cee:	b160      	cbz	r0, c0de1d0a <io_event+0x2d6>
c0de1cf0:	eb09 0104 	add.w	r1, r9, r4
c0de1cf4:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de1cf8:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de1cfc:	b289      	uxth	r1, r1
c0de1cfe:	2801      	cmp	r0, #1
c0de1d00:	bf08      	it	eq
c0de1d02:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de1d06:	f000 fbf4 	bl	c0de24f2 <io_seproxyhal_display_default>
c0de1d0a:	eb09 0304 	add.w	r3, r9, r4
c0de1d0e:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de1d12:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de1d16:	1c41      	adds	r1, r0, #1
c0de1d18:	b288      	uxth	r0, r1
c0de1d1a:	4290      	cmp	r0, r2
c0de1d1c:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de1d20:	d3db      	bcc.n	c0de1cda <io_event+0x2a6>
c0de1d22:	e072      	b.n	c0de1e0a <io_event+0x3d6>
c0de1d24:	f8df 63b8 	ldr.w	r6, [pc, #952]	; c0de20e0 <io_event+0x6ac>
c0de1d28:	2001      	movs	r0, #1
c0de1d2a:	f809 0006 	strb.w	r0, [r9, r6]
c0de1d2e:	eb09 0406 	add.w	r4, r9, r6
c0de1d32:	2000      	movs	r0, #0
c0de1d34:	6060      	str	r0, [r4, #4]
c0de1d36:	4620      	mov	r0, r4
c0de1d38:	f001 fea6 	bl	c0de3a88 <os_ux>
c0de1d3c:	2004      	movs	r0, #4
c0de1d3e:	f001 ff11 	bl	c0de3b64 <os_sched_last_status>
c0de1d42:	2800      	cmp	r0, #0
c0de1d44:	6060      	str	r0, [r4, #4]
c0de1d46:	f000 81c1 	beq.w	c0de20cc <io_event+0x698>
c0de1d4a:	2897      	cmp	r0, #151	; 0x97
c0de1d4c:	f000 81be 	beq.w	c0de20cc <io_event+0x698>
c0de1d50:	2869      	cmp	r0, #105	; 0x69
c0de1d52:	f040 815e 	bne.w	c0de2012 <io_event+0x5de>
c0de1d56:	f000 fba1 	bl	c0de249c <io_seproxyhal_init_ux>
c0de1d5a:	f000 fba1 	bl	c0de24a0 <io_seproxyhal_init_button>
c0de1d5e:	4ce1      	ldr	r4, [pc, #900]	; (c0de20e4 <io_event+0x6b0>)
c0de1d60:	2000      	movs	r0, #0
c0de1d62:	eb09 0504 	add.w	r5, r9, r4
c0de1d66:	f8a5 00ca 	strh.w	r0, [r5, #202]	; 0xca
c0de1d6a:	2004      	movs	r0, #4
c0de1d6c:	f001 fefa 	bl	c0de3b64 <os_sched_last_status>
c0de1d70:	f8d5 10cc 	ldr.w	r1, [r5, #204]	; 0xcc
c0de1d74:	eb09 0206 	add.w	r2, r9, r6
c0de1d78:	2900      	cmp	r1, #0
c0de1d7a:	6050      	str	r0, [r2, #4]
c0de1d7c:	f000 81a6 	beq.w	c0de20cc <io_event+0x698>
c0de1d80:	2800      	cmp	r0, #0
c0de1d82:	f000 81a3 	beq.w	c0de20cc <io_event+0x698>
c0de1d86:	2897      	cmp	r0, #151	; 0x97
c0de1d88:	f000 81a0 	beq.w	c0de20cc <io_event+0x698>
c0de1d8c:	eb09 0004 	add.w	r0, r9, r4
c0de1d90:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de1d94:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de1d98:	4281      	cmp	r1, r0
c0de1d9a:	f080 8197 	bcs.w	c0de20cc <io_event+0x698>
c0de1d9e:	f001 fe4b 	bl	c0de3a38 <os_perso_isonboarded>
c0de1da2:	28aa      	cmp	r0, #170	; 0xaa
c0de1da4:	d104      	bne.n	c0de1db0 <io_event+0x37c>
c0de1da6:	f001 fe63 	bl	c0de3a70 <os_global_pin_is_validated>
c0de1daa:	28aa      	cmp	r0, #170	; 0xaa
c0de1dac:	f040 818e 	bne.w	c0de20cc <io_event+0x698>
c0de1db0:	eb09 0104 	add.w	r1, r9, r4
c0de1db4:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de1db8:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de1dbc:	4290      	cmp	r0, r2
c0de1dbe:	d224      	bcs.n	c0de1e0a <io_event+0x3d6>
c0de1dc0:	4601      	mov	r1, r0
c0de1dc2:	eb09 0204 	add.w	r2, r9, r4
c0de1dc6:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de1dca:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de1dce:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de1dd2:	b13b      	cbz	r3, c0de1de4 <io_event+0x3b0>
c0de1dd4:	4798      	blx	r3
c0de1dd6:	b160      	cbz	r0, c0de1df2 <io_event+0x3be>
c0de1dd8:	eb09 0104 	add.w	r1, r9, r4
c0de1ddc:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de1de0:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de1de4:	b289      	uxth	r1, r1
c0de1de6:	2801      	cmp	r0, #1
c0de1de8:	bf08      	it	eq
c0de1dea:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de1dee:	f000 fb80 	bl	c0de24f2 <io_seproxyhal_display_default>
c0de1df2:	eb09 0304 	add.w	r3, r9, r4
c0de1df6:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de1dfa:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de1dfe:	1c41      	adds	r1, r0, #1
c0de1e00:	b288      	uxth	r0, r1
c0de1e02:	4290      	cmp	r0, r2
c0de1e04:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de1e08:	d3db      	bcc.n	c0de1dc2 <io_event+0x38e>
c0de1e0a:	4290      	cmp	r0, r2
c0de1e0c:	f040 815e 	bne.w	c0de20cc <io_event+0x698>
c0de1e10:	f001 feb6 	bl	c0de3b80 <screen_update>
c0de1e14:	e15a      	b.n	c0de20cc <io_event+0x698>
c0de1e16:	4cb3      	ldr	r4, [pc, #716]	; (c0de20e4 <io_event+0x6b0>)
c0de1e18:	eb09 0004 	add.w	r0, r9, r4
c0de1e1c:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de1e20:	2800      	cmp	r0, #0
c0de1e22:	f000 8149 	beq.w	c0de20b8 <io_event+0x684>
c0de1e26:	eb09 0004 	add.w	r0, r9, r4
c0de1e2a:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de1e2e:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de1e32:	4281      	cmp	r1, r0
c0de1e34:	f080 8140 	bcs.w	c0de20b8 <io_event+0x684>
c0de1e38:	f001 fdfe 	bl	c0de3a38 <os_perso_isonboarded>
c0de1e3c:	28aa      	cmp	r0, #170	; 0xaa
c0de1e3e:	d104      	bne.n	c0de1e4a <io_event+0x416>
c0de1e40:	f001 fe16 	bl	c0de3a70 <os_global_pin_is_validated>
c0de1e44:	28aa      	cmp	r0, #170	; 0xaa
c0de1e46:	f040 8137 	bne.w	c0de20b8 <io_event+0x684>
c0de1e4a:	eb09 0104 	add.w	r1, r9, r4
c0de1e4e:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de1e52:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de1e56:	4290      	cmp	r0, r2
c0de1e58:	f080 812a 	bcs.w	c0de20b0 <io_event+0x67c>
c0de1e5c:	4601      	mov	r1, r0
c0de1e5e:	bf00      	nop
c0de1e60:	eb09 0204 	add.w	r2, r9, r4
c0de1e64:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de1e68:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de1e6c:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de1e70:	b13b      	cbz	r3, c0de1e82 <io_event+0x44e>
c0de1e72:	4798      	blx	r3
c0de1e74:	b160      	cbz	r0, c0de1e90 <io_event+0x45c>
c0de1e76:	eb09 0104 	add.w	r1, r9, r4
c0de1e7a:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de1e7e:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de1e82:	b289      	uxth	r1, r1
c0de1e84:	2801      	cmp	r0, #1
c0de1e86:	bf08      	it	eq
c0de1e88:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de1e8c:	f000 fb31 	bl	c0de24f2 <io_seproxyhal_display_default>
c0de1e90:	eb09 0304 	add.w	r3, r9, r4
c0de1e94:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de1e98:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de1e9c:	1c41      	adds	r1, r0, #1
c0de1e9e:	b288      	uxth	r0, r1
c0de1ea0:	4290      	cmp	r0, r2
c0de1ea2:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de1ea6:	d3db      	bcc.n	c0de1e60 <io_event+0x42c>
c0de1ea8:	e102      	b.n	c0de20b0 <io_event+0x67c>
c0de1eaa:	4d8e      	ldr	r5, [pc, #568]	; (c0de20e4 <io_event+0x6b0>)
c0de1eac:	4604      	mov	r4, r0
c0de1eae:	eb09 0005 	add.w	r0, r9, r5
c0de1eb2:	f8d0 00e4 	ldr.w	r0, [r0, #228]	; 0xe4
c0de1eb6:	b1a0      	cbz	r0, c0de1ee2 <io_event+0x4ae>
c0de1eb8:	f1b0 0264 	subs.w	r2, r0, #100	; 0x64
c0de1ebc:	bf38      	it	cc
c0de1ebe:	2200      	movcc	r2, #0
c0de1ec0:	eb09 0105 	add.w	r1, r9, r5
c0de1ec4:	2864      	cmp	r0, #100	; 0x64
c0de1ec6:	f8c1 20e4 	str.w	r2, [r1, #228]	; 0xe4
c0de1eca:	d80a      	bhi.n	c0de1ee2 <io_event+0x4ae>
c0de1ecc:	f8d1 10e0 	ldr.w	r1, [r1, #224]	; 0xe0
c0de1ed0:	b139      	cbz	r1, c0de1ee2 <io_event+0x4ae>
c0de1ed2:	eb09 0005 	add.w	r0, r9, r5
c0de1ed6:	f8d0 20e8 	ldr.w	r2, [r0, #232]	; 0xe8
c0de1eda:	f8c0 20e4 	str.w	r2, [r0, #228]	; 0xe4
c0de1ede:	2000      	movs	r0, #0
c0de1ee0:	4788      	blx	r1
c0de1ee2:	2c00      	cmp	r4, #0
c0de1ee4:	f000 80f2 	beq.w	c0de20cc <io_event+0x698>
c0de1ee8:	2c97      	cmp	r4, #151	; 0x97
c0de1eea:	f000 80ef 	beq.w	c0de20cc <io_event+0x698>
c0de1eee:	eb09 0005 	add.w	r0, r9, r5
c0de1ef2:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de1ef6:	2800      	cmp	r0, #0
c0de1ef8:	d040      	beq.n	c0de1f7c <io_event+0x548>
c0de1efa:	eb09 0005 	add.w	r0, r9, r5
c0de1efe:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de1f02:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de1f06:	4281      	cmp	r1, r0
c0de1f08:	d238      	bcs.n	c0de1f7c <io_event+0x548>
c0de1f0a:	f001 fd95 	bl	c0de3a38 <os_perso_isonboarded>
c0de1f0e:	28aa      	cmp	r0, #170	; 0xaa
c0de1f10:	d103      	bne.n	c0de1f1a <io_event+0x4e6>
c0de1f12:	f001 fdad 	bl	c0de3a70 <os_global_pin_is_validated>
c0de1f16:	28aa      	cmp	r0, #170	; 0xaa
c0de1f18:	d130      	bne.n	c0de1f7c <io_event+0x548>
c0de1f1a:	eb09 0105 	add.w	r1, r9, r5
c0de1f1e:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de1f22:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de1f26:	4290      	cmp	r0, r2
c0de1f28:	d224      	bcs.n	c0de1f74 <io_event+0x540>
c0de1f2a:	4601      	mov	r1, r0
c0de1f2c:	eb09 0205 	add.w	r2, r9, r5
c0de1f30:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de1f34:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de1f38:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de1f3c:	b13b      	cbz	r3, c0de1f4e <io_event+0x51a>
c0de1f3e:	4798      	blx	r3
c0de1f40:	b160      	cbz	r0, c0de1f5c <io_event+0x528>
c0de1f42:	eb09 0105 	add.w	r1, r9, r5
c0de1f46:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de1f4a:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de1f4e:	b289      	uxth	r1, r1
c0de1f50:	2801      	cmp	r0, #1
c0de1f52:	bf08      	it	eq
c0de1f54:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de1f58:	f000 facb 	bl	c0de24f2 <io_seproxyhal_display_default>
c0de1f5c:	eb09 0305 	add.w	r3, r9, r5
c0de1f60:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de1f64:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de1f68:	1c41      	adds	r1, r0, #1
c0de1f6a:	b288      	uxth	r0, r1
c0de1f6c:	4290      	cmp	r0, r2
c0de1f6e:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de1f72:	d3db      	bcc.n	c0de1f2c <io_event+0x4f8>
c0de1f74:	4290      	cmp	r0, r2
c0de1f76:	bf08      	it	eq
c0de1f78:	f001 fe02 	bleq	c0de3b80 <screen_update>
c0de1f7c:	eb09 0005 	add.w	r0, r9, r5
c0de1f80:	e09c      	b.n	c0de20bc <io_event+0x688>
c0de1f82:	4c58      	ldr	r4, [pc, #352]	; (c0de20e4 <io_event+0x6b0>)
c0de1f84:	eb09 0004 	add.w	r0, r9, r4
c0de1f88:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de1f8c:	2800      	cmp	r0, #0
c0de1f8e:	f000 8093 	beq.w	c0de20b8 <io_event+0x684>
c0de1f92:	eb09 0004 	add.w	r0, r9, r4
c0de1f96:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de1f9a:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de1f9e:	4281      	cmp	r1, r0
c0de1fa0:	f080 808a 	bcs.w	c0de20b8 <io_event+0x684>
c0de1fa4:	f001 fd48 	bl	c0de3a38 <os_perso_isonboarded>
c0de1fa8:	28aa      	cmp	r0, #170	; 0xaa
c0de1faa:	d104      	bne.n	c0de1fb6 <io_event+0x582>
c0de1fac:	f001 fd60 	bl	c0de3a70 <os_global_pin_is_validated>
c0de1fb0:	28aa      	cmp	r0, #170	; 0xaa
c0de1fb2:	f040 8081 	bne.w	c0de20b8 <io_event+0x684>
c0de1fb6:	eb09 0104 	add.w	r1, r9, r4
c0de1fba:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de1fbe:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de1fc2:	4290      	cmp	r0, r2
c0de1fc4:	d274      	bcs.n	c0de20b0 <io_event+0x67c>
c0de1fc6:	4601      	mov	r1, r0
c0de1fc8:	eb09 0204 	add.w	r2, r9, r4
c0de1fcc:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de1fd0:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de1fd4:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de1fd8:	b13b      	cbz	r3, c0de1fea <io_event+0x5b6>
c0de1fda:	4798      	blx	r3
c0de1fdc:	b160      	cbz	r0, c0de1ff8 <io_event+0x5c4>
c0de1fde:	eb09 0104 	add.w	r1, r9, r4
c0de1fe2:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de1fe6:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de1fea:	b289      	uxth	r1, r1
c0de1fec:	2801      	cmp	r0, #1
c0de1fee:	bf08      	it	eq
c0de1ff0:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de1ff4:	f000 fa7d 	bl	c0de24f2 <io_seproxyhal_display_default>
c0de1ff8:	eb09 0304 	add.w	r3, r9, r4
c0de1ffc:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de2000:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de2004:	1c41      	adds	r1, r0, #1
c0de2006:	b288      	uxth	r0, r1
c0de2008:	4290      	cmp	r0, r2
c0de200a:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de200e:	d3db      	bcc.n	c0de1fc8 <io_event+0x594>
c0de2010:	e04e      	b.n	c0de20b0 <io_event+0x67c>
c0de2012:	4c34      	ldr	r4, [pc, #208]	; (c0de20e4 <io_event+0x6b0>)
c0de2014:	eb09 0004 	add.w	r0, r9, r4
c0de2018:	f8d0 00dc 	ldr.w	r0, [r0, #220]	; 0xdc
c0de201c:	b128      	cbz	r0, c0de202a <io_event+0x5f6>
c0de201e:	eb09 0105 	add.w	r1, r9, r5
c0de2022:	78c9      	ldrb	r1, [r1, #3]
c0de2024:	0849      	lsrs	r1, r1, #1
c0de2026:	f000 fa8b 	bl	c0de2540 <io_seproxyhal_button_push>
c0de202a:	eb09 0004 	add.w	r0, r9, r4
c0de202e:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de2032:	2800      	cmp	r0, #0
c0de2034:	d040      	beq.n	c0de20b8 <io_event+0x684>
c0de2036:	eb09 0004 	add.w	r0, r9, r4
c0de203a:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de203e:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de2042:	4281      	cmp	r1, r0
c0de2044:	d238      	bcs.n	c0de20b8 <io_event+0x684>
c0de2046:	f001 fcf7 	bl	c0de3a38 <os_perso_isonboarded>
c0de204a:	28aa      	cmp	r0, #170	; 0xaa
c0de204c:	d103      	bne.n	c0de2056 <io_event+0x622>
c0de204e:	f001 fd0f 	bl	c0de3a70 <os_global_pin_is_validated>
c0de2052:	28aa      	cmp	r0, #170	; 0xaa
c0de2054:	d130      	bne.n	c0de20b8 <io_event+0x684>
c0de2056:	eb09 0104 	add.w	r1, r9, r4
c0de205a:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de205e:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de2062:	4290      	cmp	r0, r2
c0de2064:	d224      	bcs.n	c0de20b0 <io_event+0x67c>
c0de2066:	4601      	mov	r1, r0
c0de2068:	eb09 0204 	add.w	r2, r9, r4
c0de206c:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de2070:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de2074:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de2078:	b13b      	cbz	r3, c0de208a <io_event+0x656>
c0de207a:	4798      	blx	r3
c0de207c:	b160      	cbz	r0, c0de2098 <io_event+0x664>
c0de207e:	eb09 0104 	add.w	r1, r9, r4
c0de2082:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de2086:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de208a:	b289      	uxth	r1, r1
c0de208c:	2801      	cmp	r0, #1
c0de208e:	bf08      	it	eq
c0de2090:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de2094:	f000 fa2d 	bl	c0de24f2 <io_seproxyhal_display_default>
c0de2098:	eb09 0304 	add.w	r3, r9, r4
c0de209c:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de20a0:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de20a4:	1c41      	adds	r1, r0, #1
c0de20a6:	b288      	uxth	r0, r1
c0de20a8:	4290      	cmp	r0, r2
c0de20aa:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de20ae:	d3db      	bcc.n	c0de2068 <io_event+0x634>
c0de20b0:	4290      	cmp	r0, r2
c0de20b2:	bf08      	it	eq
c0de20b4:	f001 fd64 	bleq	c0de3b80 <screen_update>
c0de20b8:	eb09 0004 	add.w	r0, r9, r4
c0de20bc:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de20c0:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de20c4:	4281      	cmp	r1, r0
c0de20c6:	bf28      	it	cs
c0de20c8:	f001 fd1c 	blcs	c0de3b04 <io_seph_is_status_sent>
c0de20cc:	f001 fd1a 	bl	c0de3b04 <io_seph_is_status_sent>
c0de20d0:	b908      	cbnz	r0, c0de20d6 <io_event+0x6a2>
c0de20d2:	f000 f887 	bl	c0de21e4 <io_seproxyhal_general_status>
c0de20d6:	2001      	movs	r0, #1
c0de20d8:	b001      	add	sp, #4
c0de20da:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de20dc:	00000170 	.word	0x00000170
c0de20e0:	00000168 	.word	0x00000168
c0de20e4:	00000058 	.word	0x00000058
c0de20e8:	000003f0 	.word	0x000003f0

c0de20ec <io_exchange_al>:
c0de20ec:	b510      	push	{r4, lr}
c0de20ee:	4604      	mov	r4, r0
c0de20f0:	f000 0007 	and.w	r0, r0, #7
c0de20f4:	2801      	cmp	r0, #1
c0de20f6:	d00a      	beq.n	c0de210e <io_exchange_al+0x22>
c0de20f8:	2802      	cmp	r0, #2
c0de20fa:	d111      	bne.n	c0de2120 <io_exchange_al+0x34>
c0de20fc:	480a      	ldr	r0, [pc, #40]	; (c0de2128 <io_exchange_al+0x3c>)
c0de20fe:	4448      	add	r0, r9
c0de2100:	b139      	cbz	r1, c0de2112 <io_exchange_al+0x26>
c0de2102:	f001 fcf3 	bl	c0de3aec <io_seph_send>
c0de2106:	0620      	lsls	r0, r4, #24
c0de2108:	bf48      	it	mi
c0de210a:	f001 fc7f 	blmi	c0de3a0c <halt>
c0de210e:	2000      	movs	r0, #0
c0de2110:	bd10      	pop	{r4, pc}
c0de2112:	f240 1151 	movw	r1, #337	; 0x151
c0de2116:	2200      	movs	r2, #0
c0de2118:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de211c:	f001 bcfc 	b.w	c0de3b18 <io_seph_recv>
c0de2120:	2002      	movs	r0, #2
c0de2122:	f000 f858 	bl	c0de21d6 <os_longjmp>
c0de2126:	bf00      	nop
c0de2128:	0000029c 	.word	0x0000029c

c0de212c <app_exit>:
c0de212c:	b510      	push	{r4, lr}
c0de212e:	b08c      	sub	sp, #48	; 0x30
c0de2130:	466c      	mov	r4, sp
c0de2132:	4620      	mov	r0, r4
c0de2134:	f004 fe66 	bl	c0de6e04 <setjmp>
c0de2138:	0401      	lsls	r1, r0, #16
c0de213a:	f8ad 002c 	strh.w	r0, [sp, #44]	; 0x2c
c0de213e:	d00b      	beq.n	c0de2158 <app_exit+0x2c>
c0de2140:	f001 fcf8 	bl	c0de3b34 <try_context_get>
c0de2144:	42a0      	cmp	r0, r4
c0de2146:	d102      	bne.n	c0de214e <app_exit+0x22>
c0de2148:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de214a:	f001 fcfd 	bl	c0de3b48 <try_context_set>
c0de214e:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
c0de2152:	b940      	cbnz	r0, c0de2166 <app_exit+0x3a>
c0de2154:	b00c      	add	sp, #48	; 0x30
c0de2156:	bd10      	pop	{r4, pc}
c0de2158:	4668      	mov	r0, sp
c0de215a:	f001 fcf5 	bl	c0de3b48 <try_context_set>
c0de215e:	900a      	str	r0, [sp, #40]	; 0x28
c0de2160:	20ff      	movs	r0, #255	; 0xff
c0de2162:	f001 fcb5 	bl	c0de3ad0 <os_sched_exit>
c0de2166:	f000 f836 	bl	c0de21d6 <os_longjmp>
	...

c0de216c <nv_app_state_init>:
c0de216c:	b580      	push	{r7, lr}
c0de216e:	b082      	sub	sp, #8
c0de2170:	4809      	ldr	r0, [pc, #36]	; (c0de2198 <nv_app_state_init+0x2c>)
c0de2172:	4478      	add	r0, pc
c0de2174:	f000 fffc 	bl	c0de3170 <pic>
c0de2178:	7800      	ldrb	r0, [r0, #0]
c0de217a:	2801      	cmp	r0, #1
c0de217c:	d00a      	beq.n	c0de2194 <nv_app_state_init+0x28>
c0de217e:	2001      	movs	r0, #1
c0de2180:	f88d 0004 	strb.w	r0, [sp, #4]
c0de2184:	4805      	ldr	r0, [pc, #20]	; (c0de219c <nv_app_state_init+0x30>)
c0de2186:	4478      	add	r0, pc
c0de2188:	f000 fff2 	bl	c0de3170 <pic>
c0de218c:	a901      	add	r1, sp, #4
c0de218e:	2201      	movs	r2, #1
c0de2190:	f001 fc46 	bl	c0de3a20 <nvm_write>
c0de2194:	b002      	add	sp, #8
c0de2196:	bd80      	pop	{r7, pc}
c0de2198:	00008c8a 	.word	0x00008c8a
c0de219c:	00008c76 	.word	0x00008c76

c0de21a0 <ux_idle_flow_3_step_validateinit>:
c0de21a0:	20ff      	movs	r0, #255	; 0xff
c0de21a2:	f001 fc95 	bl	c0de3ad0 <os_sched_exit>
	...

c0de21a8 <ui_idle>:
c0de21a8:	b580      	push	{r7, lr}
c0de21aa:	4807      	ldr	r0, [pc, #28]	; (c0de21c8 <ui_idle+0x20>)
c0de21ac:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de21b0:	b908      	cbnz	r0, c0de21b6 <ui_idle+0xe>
c0de21b2:	f004 fb6b 	bl	c0de688c <ux_stack_push>
c0de21b6:	4905      	ldr	r1, [pc, #20]	; (c0de21cc <ui_idle+0x24>)
c0de21b8:	2000      	movs	r0, #0
c0de21ba:	4479      	add	r1, pc
c0de21bc:	2200      	movs	r2, #0
c0de21be:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de21c2:	f003 bf0f 	b.w	c0de5fe4 <ux_flow_init>
c0de21c6:	bf00      	nop
c0de21c8:	00000058 	.word	0x00000058
c0de21cc:	00006512 	.word	0x00006512

c0de21d0 <os_boot>:
c0de21d0:	2000      	movs	r0, #0
c0de21d2:	f001 bcb9 	b.w	c0de3b48 <try_context_set>

c0de21d6 <os_longjmp>:
c0de21d6:	4604      	mov	r4, r0
c0de21d8:	f001 fcac 	bl	c0de3b34 <try_context_get>
c0de21dc:	4621      	mov	r1, r4
c0de21de:	f004 fe17 	bl	c0de6e10 <longjmp>
	...

c0de21e4 <io_seproxyhal_general_status>:
c0de21e4:	4802      	ldr	r0, [pc, #8]	; (c0de21f0 <io_seproxyhal_general_status+0xc>)
c0de21e6:	2105      	movs	r1, #5
c0de21e8:	4478      	add	r0, pc
c0de21ea:	f001 bc7f 	b.w	c0de3aec <io_seph_send>
c0de21ee:	bf00      	nop
c0de21f0:	000064f8 	.word	0x000064f8

c0de21f4 <io_seproxyhal_handle_usb_event>:
c0de21f4:	b510      	push	{r4, lr}
c0de21f6:	481c      	ldr	r0, [pc, #112]	; (c0de2268 <io_seproxyhal_handle_usb_event+0x74>)
c0de21f8:	4448      	add	r0, r9
c0de21fa:	78c0      	ldrb	r0, [r0, #3]
c0de21fc:	2803      	cmp	r0, #3
c0de21fe:	dc09      	bgt.n	c0de2214 <io_seproxyhal_handle_usb_event+0x20>
c0de2200:	2801      	cmp	r0, #1
c0de2202:	d012      	beq.n	c0de222a <io_seproxyhal_handle_usb_event+0x36>
c0de2204:	2802      	cmp	r0, #2
c0de2206:	d124      	bne.n	c0de2252 <io_seproxyhal_handle_usb_event+0x5e>
c0de2208:	4818      	ldr	r0, [pc, #96]	; (c0de226c <io_seproxyhal_handle_usb_event+0x78>)
c0de220a:	4448      	add	r0, r9
c0de220c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2210:	f002 bd8c 	b.w	c0de4d2c <USBD_LL_SOF>
c0de2214:	2804      	cmp	r0, #4
c0de2216:	d01d      	beq.n	c0de2254 <io_seproxyhal_handle_usb_event+0x60>
c0de2218:	2808      	cmp	r0, #8
c0de221a:	bf18      	it	ne
c0de221c:	bd10      	popne	{r4, pc}
c0de221e:	4813      	ldr	r0, [pc, #76]	; (c0de226c <io_seproxyhal_handle_usb_event+0x78>)
c0de2220:	4448      	add	r0, r9
c0de2222:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2226:	f002 bd7e 	b.w	c0de4d26 <USBD_LL_Resume>
c0de222a:	4810      	ldr	r0, [pc, #64]	; (c0de226c <io_seproxyhal_handle_usb_event+0x78>)
c0de222c:	2101      	movs	r1, #1
c0de222e:	eb09 0400 	add.w	r4, r9, r0
c0de2232:	4620      	mov	r0, r4
c0de2234:	f002 fd71 	bl	c0de4d1a <USBD_LL_SetSpeed>
c0de2238:	4620      	mov	r0, r4
c0de223a:	f002 fd4f 	bl	c0de4cdc <USBD_LL_Reset>
c0de223e:	480c      	ldr	r0, [pc, #48]	; (c0de2270 <io_seproxyhal_handle_usb_event+0x7c>)
c0de2240:	eb09 0100 	add.w	r1, r9, r0
c0de2244:	7989      	ldrb	r1, [r1, #6]
c0de2246:	b959      	cbnz	r1, c0de2260 <io_seproxyhal_handle_usb_event+0x6c>
c0de2248:	4448      	add	r0, r9
c0de224a:	300c      	adds	r0, #12
c0de224c:	2112      	movs	r1, #18
c0de224e:	f004 fd87 	bl	c0de6d60 <__aeabi_memclr>
c0de2252:	bd10      	pop	{r4, pc}
c0de2254:	4805      	ldr	r0, [pc, #20]	; (c0de226c <io_seproxyhal_handle_usb_event+0x78>)
c0de2256:	4448      	add	r0, r9
c0de2258:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de225c:	f002 bd61 	b.w	c0de4d22 <USBD_LL_Suspend>
c0de2260:	2005      	movs	r0, #5
c0de2262:	f7ff ffb8 	bl	c0de21d6 <os_longjmp>
c0de2266:	bf00      	nop
c0de2268:	00000170 	.word	0x00000170
c0de226c:	00000780 	.word	0x00000780
c0de2270:	000003f0 	.word	0x000003f0

c0de2274 <io_seproxyhal_get_ep_rx_size>:
c0de2274:	f000 007f 	and.w	r0, r0, #127	; 0x7f
c0de2278:	2805      	cmp	r0, #5
c0de227a:	bf84      	itt	hi
c0de227c:	2000      	movhi	r0, #0
c0de227e:	4770      	bxhi	lr
c0de2280:	4902      	ldr	r1, [pc, #8]	; (c0de228c <io_seproxyhal_get_ep_rx_size+0x18>)
c0de2282:	4449      	add	r1, r9
c0de2284:	4408      	add	r0, r1
c0de2286:	7b00      	ldrb	r0, [r0, #12]
c0de2288:	4770      	bx	lr
c0de228a:	bf00      	nop
c0de228c:	000003f0 	.word	0x000003f0

c0de2290 <io_seproxyhal_handle_usb_ep_xfer_event>:
c0de2290:	b580      	push	{r7, lr}
c0de2292:	4a1c      	ldr	r2, [pc, #112]	; (c0de2304 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de2294:	eb09 0102 	add.w	r1, r9, r2
c0de2298:	7908      	ldrb	r0, [r1, #4]
c0de229a:	78c9      	ldrb	r1, [r1, #3]
c0de229c:	2804      	cmp	r0, #4
c0de229e:	f001 017f 	and.w	r1, r1, #127	; 0x7f
c0de22a2:	d00c      	beq.n	c0de22be <io_seproxyhal_handle_usb_ep_xfer_event+0x2e>
c0de22a4:	2802      	cmp	r0, #2
c0de22a6:	d01b      	beq.n	c0de22e0 <io_seproxyhal_handle_usb_ep_xfer_event+0x50>
c0de22a8:	2801      	cmp	r0, #1
c0de22aa:	d118      	bne.n	c0de22de <io_seproxyhal_handle_usb_ep_xfer_event+0x4e>
c0de22ac:	4817      	ldr	r0, [pc, #92]	; (c0de230c <io_seproxyhal_handle_usb_ep_xfer_event+0x7c>)
c0de22ae:	eb09 0102 	add.w	r1, r9, r2
c0de22b2:	4448      	add	r0, r9
c0de22b4:	3106      	adds	r1, #6
c0de22b6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de22ba:	f002 bc1e 	b.w	c0de4afa <USBD_LL_SetupStage>
c0de22be:	2905      	cmp	r1, #5
c0de22c0:	bf88      	it	hi
c0de22c2:	bd80      	pophi	{r7, pc}
c0de22c4:	4810      	ldr	r0, [pc, #64]	; (c0de2308 <io_seproxyhal_handle_usb_ep_xfer_event+0x78>)
c0de22c6:	444a      	add	r2, r9
c0de22c8:	7953      	ldrb	r3, [r2, #5]
c0de22ca:	4448      	add	r0, r9
c0de22cc:	f8df c03c 	ldr.w	ip, [pc, #60]	; c0de230c <io_seproxyhal_handle_usb_ep_xfer_event+0x7c>
c0de22d0:	4408      	add	r0, r1
c0de22d2:	7303      	strb	r3, [r0, #12]
c0de22d4:	eb09 000c 	add.w	r0, r9, ip
c0de22d8:	3206      	adds	r2, #6
c0de22da:	f002 fc3b 	bl	c0de4b54 <USBD_LL_DataOutStage>
c0de22de:	bd80      	pop	{r7, pc}
c0de22e0:	2905      	cmp	r1, #5
c0de22e2:	d8fc      	bhi.n	c0de22de <io_seproxyhal_handle_usb_ep_xfer_event+0x4e>
c0de22e4:	4808      	ldr	r0, [pc, #32]	; (c0de2308 <io_seproxyhal_handle_usb_ep_xfer_event+0x78>)
c0de22e6:	4b09      	ldr	r3, [pc, #36]	; (c0de230c <io_seproxyhal_handle_usb_ep_xfer_event+0x7c>)
c0de22e8:	4448      	add	r0, r9
c0de22ea:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0de22ee:	f04f 0c00 	mov.w	ip, #0
c0de22f2:	444a      	add	r2, r9
c0de22f4:	f8a0 c012 	strh.w	ip, [r0, #18]
c0de22f8:	eb09 0003 	add.w	r0, r9, r3
c0de22fc:	3206      	adds	r2, #6
c0de22fe:	f002 fc7d 	bl	c0de4bfc <USBD_LL_DataInStage>
c0de2302:	bd80      	pop	{r7, pc}
c0de2304:	00000170 	.word	0x00000170
c0de2308:	000003f0 	.word	0x000003f0
c0de230c:	00000780 	.word	0x00000780

c0de2310 <io_usb_send_ep>:
c0de2310:	2aff      	cmp	r2, #255	; 0xff
c0de2312:	bf88      	it	hi
c0de2314:	4770      	bxhi	lr
c0de2316:	b570      	push	{r4, r5, r6, lr}
c0de2318:	4604      	mov	r4, r0
c0de231a:	4812      	ldr	r0, [pc, #72]	; (c0de2364 <io_usb_send_ep+0x54>)
c0de231c:	460e      	mov	r6, r1
c0de231e:	2150      	movs	r1, #80	; 0x50
c0de2320:	f809 1000 	strb.w	r1, [r9, r0]
c0de2324:	4448      	add	r0, r9
c0de2326:	1cd1      	adds	r1, r2, #3
c0de2328:	4615      	mov	r5, r2
c0de232a:	0a0a      	lsrs	r2, r1, #8
c0de232c:	7081      	strb	r1, [r0, #2]
c0de232e:	f044 0180 	orr.w	r1, r4, #128	; 0x80
c0de2332:	70c1      	strb	r1, [r0, #3]
c0de2334:	2120      	movs	r1, #32
c0de2336:	7101      	strb	r1, [r0, #4]
c0de2338:	2106      	movs	r1, #6
c0de233a:	7042      	strb	r2, [r0, #1]
c0de233c:	7145      	strb	r5, [r0, #5]
c0de233e:	f001 fbd5 	bl	c0de3aec <io_seph_send>
c0de2342:	4630      	mov	r0, r6
c0de2344:	4629      	mov	r1, r5
c0de2346:	f001 fbd1 	bl	c0de3aec <io_seph_send>
c0de234a:	4807      	ldr	r0, [pc, #28]	; (c0de2368 <io_usb_send_ep+0x58>)
c0de234c:	f004 017f 	and.w	r1, r4, #127	; 0x7f
c0de2350:	4448      	add	r0, r9
c0de2352:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0de2356:	f44f 61fa 	mov.w	r1, #2000	; 0x7d0
c0de235a:	8241      	strh	r1, [r0, #18]
c0de235c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2360:	4770      	bx	lr
c0de2362:	bf00      	nop
c0de2364:	00000170 	.word	0x00000170
c0de2368:	000003f0 	.word	0x000003f0

c0de236c <io_usb_send_apdu_data>:
c0de236c:	460a      	mov	r2, r1
c0de236e:	4601      	mov	r1, r0
c0de2370:	2082      	movs	r0, #130	; 0x82
c0de2372:	2314      	movs	r3, #20
c0de2374:	f7ff bfcc 	b.w	c0de2310 <io_usb_send_ep>

c0de2378 <io_usb_send_apdu_data_ep0x83>:
c0de2378:	460a      	mov	r2, r1
c0de237a:	4601      	mov	r1, r0
c0de237c:	2083      	movs	r0, #131	; 0x83
c0de237e:	2314      	movs	r3, #20
c0de2380:	f7ff bfc6 	b.w	c0de2310 <io_usb_send_ep>

c0de2384 <io_seproxyhal_handle_event>:
c0de2384:	b580      	push	{r7, lr}
c0de2386:	4935      	ldr	r1, [pc, #212]	; (c0de245c <io_seproxyhal_handle_event+0xd8>)
c0de2388:	eb09 0201 	add.w	r2, r9, r1
c0de238c:	7853      	ldrb	r3, [r2, #1]
c0de238e:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de2392:	7892      	ldrb	r2, [r2, #2]
c0de2394:	280f      	cmp	r0, #15
c0de2396:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de239a:	dd0d      	ble.n	c0de23b8 <io_seproxyhal_handle_event+0x34>
c0de239c:	2810      	cmp	r0, #16
c0de239e:	d014      	beq.n	c0de23ca <io_seproxyhal_handle_event+0x46>
c0de23a0:	2816      	cmp	r0, #22
c0de23a2:	d016      	beq.n	c0de23d2 <io_seproxyhal_handle_event+0x4e>
c0de23a4:	281a      	cmp	r0, #26
c0de23a6:	d14a      	bne.n	c0de243e <io_seproxyhal_handle_event+0xba>
c0de23a8:	eb09 0001 	add.w	r0, r9, r1
c0de23ac:	78c0      	ldrb	r0, [r0, #3]
c0de23ae:	2803      	cmp	r0, #3
c0de23b0:	d145      	bne.n	c0de243e <io_seproxyhal_handle_event+0xba>
c0de23b2:	f004 fa83 	bl	c0de68bc <ux_stack_redisplay>
c0de23b6:	e048      	b.n	c0de244a <io_seproxyhal_handle_event+0xc6>
c0de23b8:	280e      	cmp	r0, #14
c0de23ba:	d024      	beq.n	c0de2406 <io_seproxyhal_handle_event+0x82>
c0de23bc:	280f      	cmp	r0, #15
c0de23be:	d13e      	bne.n	c0de243e <io_seproxyhal_handle_event+0xba>
c0de23c0:	2a01      	cmp	r2, #1
c0de23c2:	d104      	bne.n	c0de23ce <io_seproxyhal_handle_event+0x4a>
c0de23c4:	f7ff ff16 	bl	c0de21f4 <io_seproxyhal_handle_usb_event>
c0de23c8:	e03f      	b.n	c0de244a <io_seproxyhal_handle_event+0xc6>
c0de23ca:	2a03      	cmp	r2, #3
c0de23cc:	d23b      	bcs.n	c0de2446 <io_seproxyhal_handle_event+0xc2>
c0de23ce:	2000      	movs	r0, #0
c0de23d0:	bd80      	pop	{r7, pc}
c0de23d2:	4823      	ldr	r0, [pc, #140]	; (c0de2460 <io_seproxyhal_handle_event+0xdc>)
c0de23d4:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de23d8:	bbbb      	cbnz	r3, c0de244a <io_seproxyhal_handle_event+0xc6>
c0de23da:	eb09 0c00 	add.w	ip, r9, r0
c0de23de:	2306      	movs	r3, #6
c0de23e0:	f88c 3006 	strb.w	r3, [ip, #6]
c0de23e4:	230a      	movs	r3, #10
c0de23e6:	f809 3000 	strb.w	r3, [r9, r0]
c0de23ea:	481e      	ldr	r0, [pc, #120]	; (c0de2464 <io_seproxyhal_handle_event+0xe0>)
c0de23ec:	4449      	add	r1, r9
c0de23ee:	4448      	add	r0, r9
c0de23f0:	3103      	adds	r1, #3
c0de23f2:	f5b2 7f94 	cmp.w	r2, #296	; 0x128
c0de23f6:	bf88      	it	hi
c0de23f8:	f240 1229 	movwhi	r2, #297	; 0x129
c0de23fc:	f8ac 2002 	strh.w	r2, [ip, #2]
c0de2400:	f004 fcb1 	bl	c0de6d66 <__aeabi_memcpy>
c0de2404:	e021      	b.n	c0de244a <io_seproxyhal_handle_event+0xc6>
c0de2406:	f8df c058 	ldr.w	ip, [pc, #88]	; c0de2460 <io_seproxyhal_handle_event+0xdc>
c0de240a:	eb09 010c 	add.w	r1, r9, ip
c0de240e:	688a      	ldr	r2, [r1, #8]
c0de2410:	3264      	adds	r2, #100	; 0x64
c0de2412:	608a      	str	r2, [r1, #8]
c0de2414:	210e      	movs	r1, #14
c0de2416:	bf00      	nop
c0de2418:	eb09 020c 	add.w	r2, r9, ip
c0de241c:	f832 2011 	ldrh.w	r2, [r2, r1, lsl #1]
c0de2420:	b152      	cbz	r2, c0de2438 <io_seproxyhal_handle_event+0xb4>
c0de2422:	4613      	mov	r3, r2
c0de2424:	2a64      	cmp	r2, #100	; 0x64
c0de2426:	bf98      	it	ls
c0de2428:	2364      	movls	r3, #100	; 0x64
c0de242a:	3b64      	subs	r3, #100	; 0x64
c0de242c:	eb09 000c 	add.w	r0, r9, ip
c0de2430:	2a64      	cmp	r2, #100	; 0x64
c0de2432:	f820 3011 	strh.w	r3, [r0, r1, lsl #1]
c0de2436:	d90a      	bls.n	c0de244e <io_seproxyhal_handle_event+0xca>
c0de2438:	3901      	subs	r1, #1
c0de243a:	2908      	cmp	r1, #8
c0de243c:	d1ec      	bne.n	c0de2418 <io_seproxyhal_handle_event+0x94>
c0de243e:	2002      	movs	r0, #2
c0de2440:	f7ff faf8 	bl	c0de1a34 <io_event>
c0de2444:	bd80      	pop	{r7, pc}
c0de2446:	f7ff ff23 	bl	c0de2290 <io_seproxyhal_handle_usb_ep_xfer_event>
c0de244a:	2001      	movs	r0, #1
c0de244c:	bd80      	pop	{r7, pc}
c0de244e:	2000      	movs	r0, #0
c0de2450:	f809 000c 	strb.w	r0, [r9, ip]
c0de2454:	2005      	movs	r0, #5
c0de2456:	f7ff febe 	bl	c0de21d6 <os_longjmp>
c0de245a:	bf00      	nop
c0de245c:	00000170 	.word	0x00000170
c0de2460:	000003f0 	.word	0x000003f0
c0de2464:	0000029c 	.word	0x0000029c

c0de2468 <io_seproxyhal_init>:
c0de2468:	b580      	push	{r7, lr}
c0de246a:	f001 fac4 	bl	c0de39f6 <get_api_level>
c0de246e:	280d      	cmp	r0, #13
c0de2470:	d20d      	bcs.n	c0de248e <io_seproxyhal_init+0x26>
c0de2472:	4808      	ldr	r0, [pc, #32]	; (c0de2494 <io_seproxyhal_init+0x2c>)
c0de2474:	2120      	movs	r1, #32
c0de2476:	4448      	add	r0, r9
c0de2478:	f004 fc72 	bl	c0de6d60 <__aeabi_memclr>
c0de247c:	f000 fb62 	bl	c0de2b44 <io_usb_hid_init>
c0de2480:	4805      	ldr	r0, [pc, #20]	; (c0de2498 <io_seproxyhal_init+0x30>)
c0de2482:	2100      	movs	r1, #0
c0de2484:	f849 1000 	str.w	r1, [r9, r0]
c0de2488:	4448      	add	r0, r9
c0de248a:	6041      	str	r1, [r0, #4]
c0de248c:	bd80      	pop	{r7, pc}
c0de248e:	20ff      	movs	r0, #255	; 0xff
c0de2490:	f001 fb1e 	bl	c0de3ad0 <os_sched_exit>
c0de2494:	000003f0 	.word	0x000003f0
c0de2498:	00000410 	.word	0x00000410

c0de249c <io_seproxyhal_init_ux>:
c0de249c:	4770      	bx	lr
	...

c0de24a0 <io_seproxyhal_init_button>:
c0de24a0:	4803      	ldr	r0, [pc, #12]	; (c0de24b0 <io_seproxyhal_init_button+0x10>)
c0de24a2:	2100      	movs	r1, #0
c0de24a4:	f849 1000 	str.w	r1, [r9, r0]
c0de24a8:	4448      	add	r0, r9
c0de24aa:	6041      	str	r1, [r0, #4]
c0de24ac:	4770      	bx	lr
c0de24ae:	bf00      	nop
c0de24b0:	00000410 	.word	0x00000410

c0de24b4 <io_seproxyhal_display_icon>:
c0de24b4:	b5b0      	push	{r4, r5, r7, lr}
c0de24b6:	b088      	sub	sp, #32
c0de24b8:	4605      	mov	r5, r0
c0de24ba:	4608      	mov	r0, r1
c0de24bc:	f000 fe58 	bl	c0de3170 <pic>
c0de24c0:	b1a8      	cbz	r0, c0de24ee <io_seproxyhal_display_icon+0x3a>
c0de24c2:	4604      	mov	r4, r0
c0de24c4:	6900      	ldr	r0, [r0, #16]
c0de24c6:	b190      	cbz	r0, c0de24ee <io_seproxyhal_display_icon+0x3a>
c0de24c8:	4628      	mov	r0, r5
c0de24ca:	f000 fe51 	bl	c0de3170 <pic>
c0de24ce:	ad01      	add	r5, sp, #4
c0de24d0:	4601      	mov	r1, r0
c0de24d2:	4628      	mov	r0, r5
c0de24d4:	221c      	movs	r2, #28
c0de24d6:	f004 fc46 	bl	c0de6d66 <__aeabi_memcpy>
c0de24da:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de24de:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de24e2:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de24e6:	4628      	mov	r0, r5
c0de24e8:	4621      	mov	r1, r4
c0de24ea:	f7fe fbcb 	bl	c0de0c84 <bagl_draw_glyph>
c0de24ee:	b008      	add	sp, #32
c0de24f0:	bdb0      	pop	{r4, r5, r7, pc}

c0de24f2 <io_seproxyhal_display_default>:
c0de24f2:	b570      	push	{r4, r5, r6, lr}
c0de24f4:	f000 fe3c 	bl	c0de3170 <pic>
c0de24f8:	4604      	mov	r4, r0
c0de24fa:	7801      	ldrb	r1, [r0, #0]
c0de24fc:	69c0      	ldr	r0, [r0, #28]
c0de24fe:	f001 067f 	and.w	r6, r1, #127	; 0x7f
c0de2502:	f000 fe35 	bl	c0de3170 <pic>
c0de2506:	b166      	cbz	r6, c0de2522 <io_seproxyhal_display_default+0x30>
c0de2508:	4605      	mov	r5, r0
c0de250a:	b158      	cbz	r0, c0de2524 <io_seproxyhal_display_default+0x32>
c0de250c:	2e05      	cmp	r6, #5
c0de250e:	d101      	bne.n	c0de2514 <io_seproxyhal_display_default+0x22>
c0de2510:	7ea0      	ldrb	r0, [r4, #26]
c0de2512:	b178      	cbz	r0, c0de2534 <io_seproxyhal_display_default+0x42>
c0de2514:	4628      	mov	r0, r5
c0de2516:	f004 fc83 	bl	c0de6e20 <strlen>
c0de251a:	b282      	uxth	r2, r0
c0de251c:	4620      	mov	r0, r4
c0de251e:	4629      	mov	r1, r5
c0de2520:	e003      	b.n	c0de252a <io_seproxyhal_display_default+0x38>
c0de2522:	bd70      	pop	{r4, r5, r6, pc}
c0de2524:	4620      	mov	r0, r4
c0de2526:	2100      	movs	r1, #0
c0de2528:	2200      	movs	r2, #0
c0de252a:	2300      	movs	r3, #0
c0de252c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2530:	f7fd bdac 	b.w	c0de008c <bagl_draw_with_context>
c0de2534:	4620      	mov	r0, r4
c0de2536:	4629      	mov	r1, r5
c0de2538:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de253c:	f7ff bfba 	b.w	c0de24b4 <io_seproxyhal_display_icon>

c0de2540 <io_seproxyhal_button_push>:
c0de2540:	b1b0      	cbz	r0, c0de2570 <io_seproxyhal_button_push+0x30>
c0de2542:	b510      	push	{r4, lr}
c0de2544:	f8df e064 	ldr.w	lr, [pc, #100]	; c0de25ac <io_seproxyhal_button_push+0x6c>
c0de2548:	4684      	mov	ip, r0
c0de254a:	f859 000e 	ldr.w	r0, [r9, lr]
c0de254e:	460b      	mov	r3, r1
c0de2550:	eb09 010e 	add.w	r1, r9, lr
c0de2554:	6849      	ldr	r1, [r1, #4]
c0de2556:	4298      	cmp	r0, r3
c0de2558:	bf02      	ittt	eq
c0de255a:	3101      	addeq	r1, #1
c0de255c:	eb09 020e 	addeq.w	r2, r9, lr
c0de2560:	6051      	streq	r1, [r2, #4]
c0de2562:	ea40 0003 	orr.w	r0, r0, r3
c0de2566:	b123      	cbz	r3, c0de2572 <io_seproxyhal_button_push+0x32>
c0de2568:	4602      	mov	r2, r0
c0de256a:	f849 000e 	str.w	r0, [r9, lr]
c0de256e:	e008      	b.n	c0de2582 <io_seproxyhal_button_push+0x42>
c0de2570:	4770      	bx	lr
c0de2572:	2200      	movs	r2, #0
c0de2574:	eb09 040e 	add.w	r4, r9, lr
c0de2578:	f849 200e 	str.w	r2, [r9, lr]
c0de257c:	6062      	str	r2, [r4, #4]
c0de257e:	f040 4000 	orr.w	r0, r0, #2147483648	; 0x80000000
c0de2582:	429a      	cmp	r2, r3
c0de2584:	bf1e      	ittt	ne
c0de2586:	eb09 020e 	addne.w	r2, r9, lr
c0de258a:	2300      	movne	r3, #0
c0de258c:	6053      	strne	r3, [r2, #4]
c0de258e:	2908      	cmp	r1, #8
c0de2590:	d308      	bcc.n	c0de25a4 <io_seproxyhal_button_push+0x64>
c0de2592:	4a07      	ldr	r2, [pc, #28]	; (c0de25b0 <io_seproxyhal_button_push+0x70>)
c0de2594:	434a      	muls	r2, r1
c0de2596:	f112 3faa 	cmn.w	r2, #2863311530	; 0xaaaaaaaa
c0de259a:	bf38      	it	cc
c0de259c:	f040 4080 	orrcc.w	r0, r0, #1073741824	; 0x40000000
c0de25a0:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
c0de25a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de25a8:	4760      	bx	ip
c0de25aa:	bf00      	nop
c0de25ac:	00000410 	.word	0x00000410
c0de25b0:	aaaaaaab 	.word	0xaaaaaaab

c0de25b4 <os_io_seproxyhal_get_app_name_and_version>:
c0de25b4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de25b6:	b081      	sub	sp, #4
c0de25b8:	4811      	ldr	r0, [pc, #68]	; (c0de2600 <os_io_seproxyhal_get_app_name_and_version+0x4c>)
c0de25ba:	2501      	movs	r5, #1
c0de25bc:	eb09 0600 	add.w	r6, r9, r0
c0de25c0:	f809 5000 	strb.w	r5, [r9, r0]
c0de25c4:	1cb1      	adds	r1, r6, #2
c0de25c6:	2001      	movs	r0, #1
c0de25c8:	f240 124f 	movw	r2, #335	; 0x14f
c0de25cc:	f001 fa74 	bl	c0de3ab8 <os_registry_get_current_app_tag>
c0de25d0:	1987      	adds	r7, r0, r6
c0de25d2:	4604      	mov	r4, r0
c0de25d4:	7070      	strb	r0, [r6, #1]
c0de25d6:	1cf9      	adds	r1, r7, #3
c0de25d8:	f5c0 72a7 	rsb	r2, r0, #334	; 0x14e
c0de25dc:	2002      	movs	r0, #2
c0de25de:	f001 fa6b 	bl	c0de3ab8 <os_registry_get_current_app_tag>
c0de25e2:	4404      	add	r4, r0
c0de25e4:	4426      	add	r6, r4
c0de25e6:	70b8      	strb	r0, [r7, #2]
c0de25e8:	70f5      	strb	r5, [r6, #3]
c0de25ea:	f001 fa5b 	bl	c0de3aa4 <os_flags>
c0de25ee:	7130      	strb	r0, [r6, #4]
c0de25f0:	2090      	movs	r0, #144	; 0x90
c0de25f2:	2100      	movs	r1, #0
c0de25f4:	7170      	strb	r0, [r6, #5]
c0de25f6:	1de0      	adds	r0, r4, #7
c0de25f8:	71b1      	strb	r1, [r6, #6]
c0de25fa:	b001      	add	sp, #4
c0de25fc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de25fe:	bf00      	nop
c0de2600:	0000029c 	.word	0x0000029c

c0de2604 <io_exchange>:
c0de2604:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2608:	b082      	sub	sp, #8
c0de260a:	4604      	mov	r4, r0
c0de260c:	0740      	lsls	r0, r0, #29
c0de260e:	d006      	beq.n	c0de261e <io_exchange+0x1a>
c0de2610:	b2e0      	uxtb	r0, r4
c0de2612:	b289      	uxth	r1, r1
c0de2614:	b002      	add	sp, #8
c0de2616:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de261a:	f7ff bd67 	b.w	c0de20ec <io_exchange_al>
c0de261e:	48b8      	ldr	r0, [pc, #736]	; (c0de2900 <io_exchange+0x2fc>)
c0de2620:	4db3      	ldr	r5, [pc, #716]	; (c0de28f0 <io_exchange+0x2ec>)
c0de2622:	4eb5      	ldr	r6, [pc, #724]	; (c0de28f8 <io_exchange+0x2f4>)
c0de2624:	f8df 82c4 	ldr.w	r8, [pc, #708]	; c0de28ec <io_exchange+0x2e8>
c0de2628:	4478      	add	r0, pc
c0de262a:	2700      	movs	r7, #0
c0de262c:	46a3      	mov	fp, r4
c0de262e:	9000      	str	r0, [sp, #0]
c0de2630:	0408      	lsls	r0, r1, #16
c0de2632:	f00b 0010 	and.w	r0, fp, #16
c0de2636:	f000 80cc 	beq.w	c0de27d2 <io_exchange+0x1ce>
c0de263a:	2800      	cmp	r0, #0
c0de263c:	f040 80c9 	bne.w	c0de27d2 <io_exchange+0x1ce>
c0de2640:	460e      	mov	r6, r1
c0de2642:	9001      	str	r0, [sp, #4]
c0de2644:	f001 fa5e 	bl	c0de3b04 <io_seph_is_status_sent>
c0de2648:	b150      	cbz	r0, c0de2660 <io_exchange+0x5c>
c0de264a:	eb09 0008 	add.w	r0, r9, r8
c0de264e:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de2652:	2200      	movs	r2, #0
c0de2654:	f001 fa60 	bl	c0de3b18 <io_seph_recv>
c0de2658:	2001      	movs	r0, #1
c0de265a:	f000 f95d 	bl	c0de2918 <os_io_seph_recv_and_process>
c0de265e:	e7f1      	b.n	c0de2644 <io_exchange+0x40>
c0de2660:	eb09 0105 	add.w	r1, r9, r5
c0de2664:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de2668:	6889      	ldr	r1, [r1, #8]
c0de266a:	2809      	cmp	r0, #9
c0de266c:	f501 6afa 	add.w	sl, r1, #2000	; 0x7d0
c0de2670:	dc2c      	bgt.n	c0de26cc <io_exchange+0xc8>
c0de2672:	2807      	cmp	r0, #7
c0de2674:	d034      	beq.n	c0de26e0 <io_exchange+0xdc>
c0de2676:	2809      	cmp	r0, #9
c0de2678:	d16f      	bne.n	c0de275a <io_exchange+0x156>
c0de267a:	489e      	ldr	r0, [pc, #632]	; (c0de28f4 <io_exchange+0x2f0>)
c0de267c:	2100      	movs	r1, #0
c0de267e:	eb09 0700 	add.w	r7, r9, r0
c0de2682:	4638      	mov	r0, r7
c0de2684:	f002 f800 	bl	c0de4688 <u2f_message_set_autoreply_wait_user_presence>
c0de2688:	4638      	mov	r0, r7
c0de268a:	4f9a      	ldr	r7, [pc, #616]	; (c0de28f4 <io_exchange+0x2f0>)
c0de268c:	f001 fd54 	bl	c0de4138 <u2f_message_repliable>
c0de2690:	2800      	cmp	r0, #0
c0de2692:	d141      	bne.n	c0de2718 <io_exchange+0x114>
c0de2694:	489d      	ldr	r0, [pc, #628]	; (c0de290c <io_exchange+0x308>)
c0de2696:	2105      	movs	r1, #5
c0de2698:	4478      	add	r0, pc
c0de269a:	f001 fa27 	bl	c0de3aec <io_seph_send>
c0de269e:	bf00      	nop
c0de26a0:	eb09 0008 	add.w	r0, r9, r8
c0de26a4:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de26a8:	2200      	movs	r2, #0
c0de26aa:	f001 fa35 	bl	c0de3b18 <io_seph_recv>
c0de26ae:	eb09 0005 	add.w	r0, r9, r5
c0de26b2:	6880      	ldr	r0, [r0, #8]
c0de26b4:	4550      	cmp	r0, sl
c0de26b6:	f080 810d 	bcs.w	c0de28d4 <io_exchange+0x2d0>
c0de26ba:	f7ff fe63 	bl	c0de2384 <io_seproxyhal_handle_event>
c0de26be:	f001 fa21 	bl	c0de3b04 <io_seph_is_status_sent>
c0de26c2:	2800      	cmp	r0, #0
c0de26c4:	d1ec      	bne.n	c0de26a0 <io_exchange+0x9c>
c0de26c6:	eb09 0007 	add.w	r0, r9, r7
c0de26ca:	e7df      	b.n	c0de268c <io_exchange+0x88>
c0de26cc:	280a      	cmp	r0, #10
c0de26ce:	d00c      	beq.n	c0de26ea <io_exchange+0xe6>
c0de26d0:	280b      	cmp	r0, #11
c0de26d2:	d145      	bne.n	c0de2760 <io_exchange+0x15c>
c0de26d4:	488c      	ldr	r0, [pc, #560]	; (c0de2908 <io_exchange+0x304>)
c0de26d6:	b2b1      	uxth	r1, r6
c0de26d8:	4478      	add	r0, pc
c0de26da:	f000 fabb 	bl	c0de2c54 <io_usb_hid_send>
c0de26de:	e05e      	b.n	c0de279e <io_exchange+0x19a>
c0de26e0:	9800      	ldr	r0, [sp, #0]
c0de26e2:	b2b1      	uxth	r1, r6
c0de26e4:	f000 fab6 	bl	c0de2c54 <io_usb_hid_send>
c0de26e8:	e059      	b.n	c0de279e <io_exchange+0x19a>
c0de26ea:	b2b7      	uxth	r7, r6
c0de26ec:	f5b7 7fa9 	cmp.w	r7, #338	; 0x152
c0de26f0:	f080 80f6 	bcs.w	c0de28e0 <io_exchange+0x2dc>
c0de26f4:	2053      	movs	r0, #83	; 0x53
c0de26f6:	f809 0008 	strb.w	r0, [r9, r8]
c0de26fa:	eb09 0008 	add.w	r0, r9, r8
c0de26fe:	0a31      	lsrs	r1, r6, #8
c0de2700:	7041      	strb	r1, [r0, #1]
c0de2702:	2103      	movs	r1, #3
c0de2704:	7086      	strb	r6, [r0, #2]
c0de2706:	f001 f9f1 	bl	c0de3aec <io_seph_send>
c0de270a:	487b      	ldr	r0, [pc, #492]	; (c0de28f8 <io_exchange+0x2f4>)
c0de270c:	4639      	mov	r1, r7
c0de270e:	4448      	add	r0, r9
c0de2710:	f001 f9ec 	bl	c0de3aec <io_seph_send>
c0de2714:	2700      	movs	r7, #0
c0de2716:	e046      	b.n	c0de27a6 <io_exchange+0x1a2>
c0de2718:	b2b0      	uxth	r0, r6
c0de271a:	f5b0 7fa5 	cmp.w	r0, #330	; 0x14a
c0de271e:	f200 80df 	bhi.w	c0de28e0 <io_exchange+0x2dc>
c0de2722:	4975      	ldr	r1, [pc, #468]	; (c0de28f8 <io_exchange+0x2f4>)
c0de2724:	2290      	movs	r2, #144	; 0x90
c0de2726:	eb09 0701 	add.w	r7, r9, r1
c0de272a:	1839      	adds	r1, r7, r0
c0de272c:	543a      	strb	r2, [r7, r0]
c0de272e:	2000      	movs	r0, #0
c0de2730:	7048      	strb	r0, [r1, #1]
c0de2732:	1cb0      	adds	r0, r6, #2
c0de2734:	b282      	uxth	r2, r0
c0de2736:	1d78      	adds	r0, r7, #5
c0de2738:	4639      	mov	r1, r7
c0de273a:	f004 fb16 	bl	c0de6d6a <__aeabi_memmove>
c0de273e:	4638      	mov	r0, r7
c0de2740:	2105      	movs	r1, #5
c0de2742:	f004 fb0d 	bl	c0de6d60 <__aeabi_memclr>
c0de2746:	486b      	ldr	r0, [pc, #428]	; (c0de28f4 <io_exchange+0x2f0>)
c0de2748:	1df1      	adds	r1, r6, #7
c0de274a:	4448      	add	r0, r9
c0de274c:	b28b      	uxth	r3, r1
c0de274e:	2183      	movs	r1, #131	; 0x83
c0de2750:	463a      	mov	r2, r7
c0de2752:	2700      	movs	r7, #0
c0de2754:	f001 ffc4 	bl	c0de46e0 <u2f_message_reply>
c0de2758:	e021      	b.n	c0de279e <io_exchange+0x19a>
c0de275a:	2800      	cmp	r0, #0
c0de275c:	f000 80c3 	beq.w	c0de28e6 <io_exchange+0x2e2>
c0de2760:	b2e0      	uxtb	r0, r4
c0de2762:	b2b1      	uxth	r1, r6
c0de2764:	f7ff fcc2 	bl	c0de20ec <io_exchange_al>
c0de2768:	b1c8      	cbz	r0, c0de279e <io_exchange+0x19a>
c0de276a:	e0bc      	b.n	c0de28e6 <io_exchange+0x2e2>
c0de276c:	4868      	ldr	r0, [pc, #416]	; (c0de2910 <io_exchange+0x30c>)
c0de276e:	2105      	movs	r1, #5
c0de2770:	4478      	add	r0, pc
c0de2772:	f001 f9bb 	bl	c0de3aec <io_seph_send>
c0de2776:	bf00      	nop
c0de2778:	eb09 0008 	add.w	r0, r9, r8
c0de277c:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de2780:	2200      	movs	r2, #0
c0de2782:	f001 f9c9 	bl	c0de3b18 <io_seph_recv>
c0de2786:	eb09 0005 	add.w	r0, r9, r5
c0de278a:	6880      	ldr	r0, [r0, #8]
c0de278c:	4550      	cmp	r0, sl
c0de278e:	f080 80a1 	bcs.w	c0de28d4 <io_exchange+0x2d0>
c0de2792:	f7ff fdf7 	bl	c0de2384 <io_seproxyhal_handle_event>
c0de2796:	f001 f9b5 	bl	c0de3b04 <io_seph_is_status_sent>
c0de279a:	2800      	cmp	r0, #0
c0de279c:	d1ec      	bne.n	c0de2778 <io_exchange+0x174>
c0de279e:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de27a2:	2800      	cmp	r0, #0
c0de27a4:	d1e2      	bne.n	c0de276c <io_exchange+0x168>
c0de27a6:	2000      	movs	r0, #0
c0de27a8:	eb09 0105 	add.w	r1, r9, r5
c0de27ac:	06a2      	lsls	r2, r4, #26
c0de27ae:	f809 0005 	strb.w	r0, [r9, r5]
c0de27b2:	7188      	strb	r0, [r1, #6]
c0de27b4:	8048      	strh	r0, [r1, #2]
c0de27b6:	f100 8084 	bmi.w	c0de28c2 <io_exchange+0x2be>
c0de27ba:	4852      	ldr	r0, [pc, #328]	; (c0de2904 <io_exchange+0x300>)
c0de27bc:	2105      	movs	r1, #5
c0de27be:	4478      	add	r0, pc
c0de27c0:	f001 f994 	bl	c0de3aec <io_seph_send>
c0de27c4:	b260      	sxtb	r0, r4
c0de27c6:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
c0de27ca:	4e4b      	ldr	r6, [pc, #300]	; (c0de28f8 <io_exchange+0x2f4>)
c0de27cc:	9801      	ldr	r0, [sp, #4]
c0de27ce:	f340 8084 	ble.w	c0de28da <io_exchange+0x2d6>
c0de27d2:	b938      	cbnz	r0, c0de27e4 <io_exchange+0x1e0>
c0de27d4:	ea5f 604b 	movs.w	r0, fp, lsl #25
c0de27d8:	d477      	bmi.n	c0de28ca <io_exchange+0x2c6>
c0de27da:	eb09 0005 	add.w	r0, r9, r5
c0de27de:	f809 7005 	strb.w	r7, [r9, r5]
c0de27e2:	7187      	strb	r7, [r0, #6]
c0de27e4:	eb09 0005 	add.w	r0, r9, r5
c0de27e8:	8047      	strh	r7, [r0, #2]
c0de27ea:	bf00      	nop
c0de27ec:	4849      	ldr	r0, [pc, #292]	; (c0de2914 <io_exchange+0x310>)
c0de27ee:	2105      	movs	r1, #5
c0de27f0:	4478      	add	r0, pc
c0de27f2:	f001 f97b 	bl	c0de3aec <io_seph_send>
c0de27f6:	eb09 0008 	add.w	r0, r9, r8
c0de27fa:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de27fe:	2200      	movs	r2, #0
c0de2800:	f001 f98a 	bl	c0de3b18 <io_seph_recv>
c0de2804:	2803      	cmp	r0, #3
c0de2806:	d315      	bcc.n	c0de2834 <io_exchange+0x230>
c0de2808:	eb09 0108 	add.w	r1, r9, r8
c0de280c:	784a      	ldrb	r2, [r1, #1]
c0de280e:	7889      	ldrb	r1, [r1, #2]
c0de2810:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de2814:	3103      	adds	r1, #3
c0de2816:	4281      	cmp	r1, r0
c0de2818:	d10c      	bne.n	c0de2834 <io_exchange+0x230>
c0de281a:	f7ff fdb3 	bl	c0de2384 <io_seproxyhal_handle_event>
c0de281e:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de2822:	2800      	cmp	r0, #0
c0de2824:	d0e2      	beq.n	c0de27ec <io_exchange+0x1e8>
c0de2826:	eb09 0005 	add.w	r0, r9, r5
c0de282a:	8840      	ldrh	r0, [r0, #2]
c0de282c:	2800      	cmp	r0, #0
c0de282e:	d0dd      	beq.n	c0de27ec <io_exchange+0x1e8>
c0de2830:	e004      	b.n	c0de283c <io_exchange+0x238>
c0de2832:	bf00      	nop
c0de2834:	f809 7005 	strb.w	r7, [r9, r5]
c0de2838:	e7d4      	b.n	c0de27e4 <io_exchange+0x1e0>
c0de283a:	bf00      	nop
c0de283c:	f001 f8fc 	bl	c0de3a38 <os_perso_isonboarded>
c0de2840:	28aa      	cmp	r0, #170	; 0xaa
c0de2842:	d103      	bne.n	c0de284c <io_exchange+0x248>
c0de2844:	f001 f914 	bl	c0de3a70 <os_global_pin_is_validated>
c0de2848:	28aa      	cmp	r0, #170	; 0xaa
c0de284a:	d127      	bne.n	c0de289c <io_exchange+0x298>
c0de284c:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de2850:	28b0      	cmp	r0, #176	; 0xb0
c0de2852:	d133      	bne.n	c0de28bc <io_exchange+0x2b8>
c0de2854:	eb09 0006 	add.w	r0, r9, r6
c0de2858:	7840      	ldrb	r0, [r0, #1]
c0de285a:	28a7      	cmp	r0, #167	; 0xa7
c0de285c:	d00e      	beq.n	c0de287c <io_exchange+0x278>
c0de285e:	2801      	cmp	r0, #1
c0de2860:	bf01      	itttt	eq
c0de2862:	eb09 0006 	addeq.w	r0, r9, r6
c0de2866:	7881      	ldrbeq	r1, [r0, #2]
c0de2868:	78c0      	ldrbeq	r0, [r0, #3]
c0de286a:	ea50 0001 	orrseq.w	r0, r0, r1
c0de286e:	d125      	bne.n	c0de28bc <io_exchange+0x2b8>
c0de2870:	f7ff fea0 	bl	c0de25b4 <os_io_seproxyhal_get_app_name_and_version>
c0de2874:	4601      	mov	r1, r0
c0de2876:	f004 0407 	and.w	r4, r4, #7
c0de287a:	e019      	b.n	c0de28b0 <io_exchange+0x2ac>
c0de287c:	eb09 0006 	add.w	r0, r9, r6
c0de2880:	7881      	ldrb	r1, [r0, #2]
c0de2882:	78c0      	ldrb	r0, [r0, #3]
c0de2884:	4308      	orrs	r0, r1
c0de2886:	d119      	bne.n	c0de28bc <io_exchange+0x2b8>
c0de2888:	2090      	movs	r0, #144	; 0x90
c0de288a:	f809 0006 	strb.w	r0, [r9, r6]
c0de288e:	eb09 0006 	add.w	r0, r9, r6
c0de2892:	7047      	strb	r7, [r0, #1]
c0de2894:	4819      	ldr	r0, [pc, #100]	; (c0de28fc <io_exchange+0x2f8>)
c0de2896:	f360 04df 	bfi	r4, r0, #3, #29
c0de289a:	e008      	b.n	c0de28ae <io_exchange+0x2aa>
c0de289c:	2055      	movs	r0, #85	; 0x55
c0de289e:	f809 0006 	strb.w	r0, [r9, r6]
c0de28a2:	eb09 0006 	add.w	r0, r9, r6
c0de28a6:	2115      	movs	r1, #21
c0de28a8:	f004 0407 	and.w	r4, r4, #7
c0de28ac:	7041      	strb	r1, [r0, #1]
c0de28ae:	2102      	movs	r1, #2
c0de28b0:	0760      	lsls	r0, r4, #29
c0de28b2:	fa5f fb84 	uxtb.w	fp, r4
c0de28b6:	f43f aebb 	beq.w	c0de2630 <io_exchange+0x2c>
c0de28ba:	e6a9      	b.n	c0de2610 <io_exchange+0xc>
c0de28bc:	eb09 0005 	add.w	r0, r9, r5
c0de28c0:	8840      	ldrh	r0, [r0, #2]
c0de28c2:	b280      	uxth	r0, r0
c0de28c4:	b002      	add	sp, #8
c0de28c6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de28ca:	eb09 0005 	add.w	r0, r9, r5
c0de28ce:	8840      	ldrh	r0, [r0, #2]
c0de28d0:	3805      	subs	r0, #5
c0de28d2:	e7f6      	b.n	c0de28c2 <io_exchange+0x2be>
c0de28d4:	2005      	movs	r0, #5
c0de28d6:	f7ff fc7e 	bl	c0de21d6 <os_longjmp>
c0de28da:	2005      	movs	r0, #5
c0de28dc:	f001 f8f8 	bl	c0de3ad0 <os_sched_exit>
c0de28e0:	2002      	movs	r0, #2
c0de28e2:	f7ff fc78 	bl	c0de21d6 <os_longjmp>
c0de28e6:	2004      	movs	r0, #4
c0de28e8:	f7ff fc75 	bl	c0de21d6 <os_longjmp>
c0de28ec:	00000170 	.word	0x00000170
c0de28f0:	000003f0 	.word	0x000003f0
c0de28f4:	00000418 	.word	0x00000418
c0de28f8:	0000029c 	.word	0x0000029c
c0de28fc:	1ffffff0 	.word	0x1ffffff0
c0de2900:	fffffd41 	.word	0xfffffd41
c0de2904:	00005f22 	.word	0x00005f22
c0de2908:	fffffc9d 	.word	0xfffffc9d
c0de290c:	00006048 	.word	0x00006048
c0de2910:	00005f70 	.word	0x00005f70
c0de2914:	00005ef0 	.word	0x00005ef0

c0de2918 <os_io_seph_recv_and_process>:
c0de2918:	b5b0      	push	{r4, r5, r7, lr}
c0de291a:	4604      	mov	r4, r0
c0de291c:	4811      	ldr	r0, [pc, #68]	; (c0de2964 <os_io_seph_recv_and_process+0x4c>)
c0de291e:	2105      	movs	r1, #5
c0de2920:	4478      	add	r0, pc
c0de2922:	f001 f8e3 	bl	c0de3aec <io_seph_send>
c0de2926:	4d0d      	ldr	r5, [pc, #52]	; (c0de295c <os_io_seph_recv_and_process+0x44>)
c0de2928:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de292c:	eb09 0005 	add.w	r0, r9, r5
c0de2930:	2200      	movs	r2, #0
c0de2932:	f001 f8f1 	bl	c0de3b18 <io_seph_recv>
c0de2936:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de293a:	2815      	cmp	r0, #21
c0de293c:	d808      	bhi.n	c0de2950 <os_io_seph_recv_and_process+0x38>
c0de293e:	2101      	movs	r1, #1
c0de2940:	4a07      	ldr	r2, [pc, #28]	; (c0de2960 <os_io_seph_recv_and_process+0x48>)
c0de2942:	fa01 f000 	lsl.w	r0, r1, r0
c0de2946:	4210      	tst	r0, r2
c0de2948:	d002      	beq.n	c0de2950 <os_io_seph_recv_and_process+0x38>
c0de294a:	b10c      	cbz	r4, c0de2950 <os_io_seph_recv_and_process+0x38>
c0de294c:	2000      	movs	r0, #0
c0de294e:	bdb0      	pop	{r4, r5, r7, pc}
c0de2950:	f7ff fd18 	bl	c0de2384 <io_seproxyhal_handle_event>
c0de2954:	2800      	cmp	r0, #0
c0de2956:	bf18      	it	ne
c0de2958:	2001      	movne	r0, #1
c0de295a:	bdb0      	pop	{r4, r5, r7, pc}
c0de295c:	00000170 	.word	0x00000170
c0de2960:	00207020 	.word	0x00207020
c0de2964:	00005dc0 	.word	0x00005dc0

c0de2968 <io_seproxyhal_io_heartbeat>:
c0de2968:	b510      	push	{r4, lr}
c0de296a:	480d      	ldr	r0, [pc, #52]	; (c0de29a0 <io_seproxyhal_io_heartbeat+0x38>)
c0de296c:	2105      	movs	r1, #5
c0de296e:	4478      	add	r0, pc
c0de2970:	f001 f8bc 	bl	c0de3aec <io_seph_send>
c0de2974:	4c09      	ldr	r4, [pc, #36]	; (c0de299c <io_seproxyhal_io_heartbeat+0x34>)
c0de2976:	bf00      	nop
c0de2978:	eb09 0004 	add.w	r0, r9, r4
c0de297c:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de2980:	2200      	movs	r2, #0
c0de2982:	f001 f8c9 	bl	c0de3b18 <io_seph_recv>
c0de2986:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de298a:	280e      	cmp	r0, #14
c0de298c:	bf18      	it	ne
c0de298e:	f7ff fcf9 	blne	c0de2384 <io_seproxyhal_handle_event>
c0de2992:	f001 f8b7 	bl	c0de3b04 <io_seph_is_status_sent>
c0de2996:	2800      	cmp	r0, #0
c0de2998:	d1ee      	bne.n	c0de2978 <io_seproxyhal_io_heartbeat+0x10>
c0de299a:	bd10      	pop	{r4, pc}
c0de299c:	00000170 	.word	0x00000170
c0de29a0:	00005d72 	.word	0x00005d72

c0de29a4 <io_usb_hid_receive>:
c0de29a4:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de29a8:	b081      	sub	sp, #4
c0de29aa:	f8df a17c 	ldr.w	sl, [pc, #380]	; c0de2b28 <io_usb_hid_receive+0x184>
c0de29ae:	460e      	mov	r6, r1
c0de29b0:	eb09 010a 	add.w	r1, r9, sl
c0de29b4:	4614      	mov	r4, r2
c0de29b6:	428e      	cmp	r6, r1
c0de29b8:	4680      	mov	r8, r0
c0de29ba:	d00e      	beq.n	c0de29da <io_usb_hid_receive+0x36>
c0de29bc:	eb09 070a 	add.w	r7, r9, sl
c0de29c0:	4638      	mov	r0, r7
c0de29c2:	2140      	movs	r1, #64	; 0x40
c0de29c4:	2540      	movs	r5, #64	; 0x40
c0de29c6:	f004 f9cb 	bl	c0de6d60 <__aeabi_memclr>
c0de29ca:	2c40      	cmp	r4, #64	; 0x40
c0de29cc:	bf38      	it	cc
c0de29ce:	4625      	movcc	r5, r4
c0de29d0:	4638      	mov	r0, r7
c0de29d2:	4631      	mov	r1, r6
c0de29d4:	462a      	mov	r2, r5
c0de29d6:	f004 f9c8 	bl	c0de6d6a <__aeabi_memmove>
c0de29da:	eb09 000a 	add.w	r0, r9, sl
c0de29de:	7880      	ldrb	r0, [r0, #2]
c0de29e0:	2801      	cmp	r0, #1
c0de29e2:	dc0b      	bgt.n	c0de29fc <io_usb_hid_receive+0x58>
c0de29e4:	b3b0      	cbz	r0, c0de2a54 <io_usb_hid_receive+0xb0>
c0de29e6:	2801      	cmp	r0, #1
c0de29e8:	f040 8096 	bne.w	c0de2b18 <io_usb_hid_receive+0x174>
c0de29ec:	eb09 040a 	add.w	r4, r9, sl
c0de29f0:	1ce0      	adds	r0, r4, #3
c0de29f2:	2104      	movs	r1, #4
c0de29f4:	f7fe fe16 	bl	c0de1624 <cx_rng_no_throw>
c0de29f8:	4620      	mov	r0, r4
c0de29fa:	e039      	b.n	c0de2a70 <io_usb_hid_receive+0xcc>
c0de29fc:	2802      	cmp	r0, #2
c0de29fe:	d035      	beq.n	c0de2a6c <io_usb_hid_receive+0xc8>
c0de2a00:	2805      	cmp	r0, #5
c0de2a02:	f040 8089 	bne.w	c0de2b18 <io_usb_hid_receive+0x174>
c0de2a06:	eb09 000a 	add.w	r0, r9, sl
c0de2a0a:	4e48      	ldr	r6, [pc, #288]	; (c0de2b2c <io_usb_hid_receive+0x188>)
c0de2a0c:	78c1      	ldrb	r1, [r0, #3]
c0de2a0e:	7900      	ldrb	r0, [r0, #4]
c0de2a10:	f859 2006 	ldr.w	r2, [r9, r6]
c0de2a14:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de2a18:	4282      	cmp	r2, r0
c0de2a1a:	d12b      	bne.n	c0de2a74 <io_usb_hid_receive+0xd0>
c0de2a1c:	f859 0006 	ldr.w	r0, [r9, r6]
c0de2a20:	b3b8      	cbz	r0, c0de2a92 <io_usb_hid_receive+0xee>
c0de2a22:	4943      	ldr	r1, [pc, #268]	; (c0de2b30 <io_usb_hid_receive+0x18c>)
c0de2a24:	1f60      	subs	r0, r4, #5
c0de2a26:	f859 2001 	ldr.w	r2, [r9, r1]
c0de2a2a:	b283      	uxth	r3, r0
c0de2a2c:	429a      	cmp	r2, r3
c0de2a2e:	bf38      	it	cc
c0de2a30:	f859 0001 	ldrcc.w	r0, [r9, r1]
c0de2a34:	b281      	uxth	r1, r0
c0de2a36:	293b      	cmp	r1, #59	; 0x3b
c0de2a38:	493e      	ldr	r1, [pc, #248]	; (c0de2b34 <io_usb_hid_receive+0x190>)
c0de2a3a:	bf28      	it	cs
c0de2a3c:	203b      	movcs	r0, #59	; 0x3b
c0de2a3e:	f859 5001 	ldr.w	r5, [r9, r1]
c0de2a42:	b284      	uxth	r4, r0
c0de2a44:	eb09 000a 	add.w	r0, r9, sl
c0de2a48:	1d41      	adds	r1, r0, #5
c0de2a4a:	4628      	mov	r0, r5
c0de2a4c:	4622      	mov	r2, r4
c0de2a4e:	f004 f98c 	bl	c0de6d6a <__aeabi_memmove>
c0de2a52:	e052      	b.n	c0de2afa <io_usb_hid_receive+0x156>
c0de2a54:	eb09 000a 	add.w	r0, r9, sl
c0de2a58:	2400      	movs	r4, #0
c0de2a5a:	4601      	mov	r1, r0
c0de2a5c:	f801 4f03 	strb.w	r4, [r1, #3]!
c0de2a60:	70cc      	strb	r4, [r1, #3]
c0de2a62:	708c      	strb	r4, [r1, #2]
c0de2a64:	2140      	movs	r1, #64	; 0x40
c0de2a66:	7104      	strb	r4, [r0, #4]
c0de2a68:	47c0      	blx	r8
c0de2a6a:	e004      	b.n	c0de2a76 <io_usb_hid_receive+0xd2>
c0de2a6c:	eb09 000a 	add.w	r0, r9, sl
c0de2a70:	2140      	movs	r1, #64	; 0x40
c0de2a72:	47c0      	blx	r8
c0de2a74:	2400      	movs	r4, #0
c0de2a76:	482d      	ldr	r0, [pc, #180]	; (c0de2b2c <io_usb_hid_receive+0x188>)
c0de2a78:	2100      	movs	r1, #0
c0de2a7a:	f849 1000 	str.w	r1, [r9, r0]
c0de2a7e:	482c      	ldr	r0, [pc, #176]	; (c0de2b30 <io_usb_hid_receive+0x18c>)
c0de2a80:	4a2c      	ldr	r2, [pc, #176]	; (c0de2b34 <io_usb_hid_receive+0x190>)
c0de2a82:	f849 1000 	str.w	r1, [r9, r0]
c0de2a86:	f849 1002 	str.w	r1, [r9, r2]
c0de2a8a:	4620      	mov	r0, r4
c0de2a8c:	b001      	add	sp, #4
c0de2a8e:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de2a92:	eb09 000a 	add.w	r0, r9, sl
c0de2a96:	7941      	ldrb	r1, [r0, #5]
c0de2a98:	7982      	ldrb	r2, [r0, #6]
c0de2a9a:	4827      	ldr	r0, [pc, #156]	; (c0de2b38 <io_usb_hid_receive+0x194>)
c0de2a9c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de2aa0:	f849 1000 	str.w	r1, [r9, r0]
c0de2aa4:	f859 1000 	ldr.w	r1, [r9, r0]
c0de2aa8:	0849      	lsrs	r1, r1, #1
c0de2aaa:	29a8      	cmp	r1, #168	; 0xa8
c0de2aac:	d8e2      	bhi.n	c0de2a74 <io_usb_hid_receive+0xd0>
c0de2aae:	f859 0000 	ldr.w	r0, [r9, r0]
c0de2ab2:	491f      	ldr	r1, [pc, #124]	; (c0de2b30 <io_usb_hid_receive+0x18c>)
c0de2ab4:	eb09 020a 	add.w	r2, r9, sl
c0de2ab8:	f849 0001 	str.w	r0, [r9, r1]
c0de2abc:	f819 000a 	ldrb.w	r0, [r9, sl]
c0de2ac0:	7852      	ldrb	r2, [r2, #1]
c0de2ac2:	4b1e      	ldr	r3, [pc, #120]	; (c0de2b3c <io_usb_hid_receive+0x198>)
c0de2ac4:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
c0de2ac8:	f849 2003 	str.w	r2, [r9, r3]
c0de2acc:	1fe0      	subs	r0, r4, #7
c0de2ace:	f859 2001 	ldr.w	r2, [r9, r1]
c0de2ad2:	b283      	uxth	r3, r0
c0de2ad4:	429a      	cmp	r2, r3
c0de2ad6:	bf38      	it	cc
c0de2ad8:	f859 0001 	ldrcc.w	r0, [r9, r1]
c0de2adc:	b281      	uxth	r1, r0
c0de2ade:	2939      	cmp	r1, #57	; 0x39
c0de2ae0:	4917      	ldr	r1, [pc, #92]	; (c0de2b40 <io_usb_hid_receive+0x19c>)
c0de2ae2:	bf28      	it	cs
c0de2ae4:	2039      	movcs	r0, #57	; 0x39
c0de2ae6:	b284      	uxth	r4, r0
c0de2ae8:	eb09 0501 	add.w	r5, r9, r1
c0de2aec:	eb09 000a 	add.w	r0, r9, sl
c0de2af0:	1dc1      	adds	r1, r0, #7
c0de2af2:	4628      	mov	r0, r5
c0de2af4:	4622      	mov	r2, r4
c0de2af6:	f004 f936 	bl	c0de6d66 <__aeabi_memcpy>
c0de2afa:	490e      	ldr	r1, [pc, #56]	; (c0de2b34 <io_usb_hid_receive+0x190>)
c0de2afc:	1928      	adds	r0, r5, r4
c0de2afe:	4a0c      	ldr	r2, [pc, #48]	; (c0de2b30 <io_usb_hid_receive+0x18c>)
c0de2b00:	f849 0001 	str.w	r0, [r9, r1]
c0de2b04:	f859 0002 	ldr.w	r0, [r9, r2]
c0de2b08:	1b00      	subs	r0, r0, r4
c0de2b0a:	f849 0002 	str.w	r0, [r9, r2]
c0de2b0e:	f859 0006 	ldr.w	r0, [r9, r6]
c0de2b12:	3001      	adds	r0, #1
c0de2b14:	f849 0006 	str.w	r0, [r9, r6]
c0de2b18:	4805      	ldr	r0, [pc, #20]	; (c0de2b30 <io_usb_hid_receive+0x18c>)
c0de2b1a:	f859 0000 	ldr.w	r0, [r9, r0]
c0de2b1e:	b108      	cbz	r0, c0de2b24 <io_usb_hid_receive+0x180>
c0de2b20:	2401      	movs	r4, #1
c0de2b22:	e7b2      	b.n	c0de2a8a <io_usb_hid_receive+0xe6>
c0de2b24:	2402      	movs	r4, #2
c0de2b26:	e7a6      	b.n	c0de2a76 <io_usb_hid_receive+0xd2>
c0de2b28:	0000045c 	.word	0x0000045c
c0de2b2c:	0000049c 	.word	0x0000049c
c0de2b30:	000004a4 	.word	0x000004a4
c0de2b34:	000004a8 	.word	0x000004a8
c0de2b38:	000004a0 	.word	0x000004a0
c0de2b3c:	000004ac 	.word	0x000004ac
c0de2b40:	0000029c 	.word	0x0000029c

c0de2b44 <io_usb_hid_init>:
c0de2b44:	4805      	ldr	r0, [pc, #20]	; (c0de2b5c <io_usb_hid_init+0x18>)
c0de2b46:	2100      	movs	r1, #0
c0de2b48:	f849 1000 	str.w	r1, [r9, r0]
c0de2b4c:	4804      	ldr	r0, [pc, #16]	; (c0de2b60 <io_usb_hid_init+0x1c>)
c0de2b4e:	4a05      	ldr	r2, [pc, #20]	; (c0de2b64 <io_usb_hid_init+0x20>)
c0de2b50:	f849 1000 	str.w	r1, [r9, r0]
c0de2b54:	f849 1002 	str.w	r1, [r9, r2]
c0de2b58:	4770      	bx	lr
c0de2b5a:	bf00      	nop
c0de2b5c:	0000049c 	.word	0x0000049c
c0de2b60:	000004a4 	.word	0x000004a4
c0de2b64:	000004a8 	.word	0x000004a8

c0de2b68 <io_usb_hid_sent>:
c0de2b68:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2b6c:	4e33      	ldr	r6, [pc, #204]	; (c0de2c3c <io_usb_hid_sent+0xd4>)
c0de2b6e:	f8df a0d0 	ldr.w	sl, [pc, #208]	; c0de2c40 <io_usb_hid_sent+0xd8>
c0de2b72:	f859 1006 	ldr.w	r1, [r9, r6]
c0de2b76:	b361      	cbz	r1, c0de2bd2 <io_usb_hid_sent+0x6a>
c0de2b78:	f859 400a 	ldr.w	r4, [r9, sl]
c0de2b7c:	b34c      	cbz	r4, c0de2bd2 <io_usb_hid_sent+0x6a>
c0de2b7e:	f8df 80cc 	ldr.w	r8, [pc, #204]	; c0de2c4c <io_usb_hid_sent+0xe4>
c0de2b82:	4683      	mov	fp, r0
c0de2b84:	eb09 0508 	add.w	r5, r9, r8
c0de2b88:	1d68      	adds	r0, r5, #5
c0de2b8a:	213b      	movs	r1, #59	; 0x3b
c0de2b8c:	f004 f8e8 	bl	c0de6d60 <__aeabi_memclr>
c0de2b90:	482f      	ldr	r0, [pc, #188]	; (c0de2c50 <io_usb_hid_sent+0xe8>)
c0de2b92:	4f2c      	ldr	r7, [pc, #176]	; (c0de2c44 <io_usb_hid_sent+0xdc>)
c0de2b94:	f859 1000 	ldr.w	r1, [r9, r0]
c0de2b98:	0a09      	lsrs	r1, r1, #8
c0de2b9a:	f809 1008 	strb.w	r1, [r9, r8]
c0de2b9e:	f859 0000 	ldr.w	r0, [r9, r0]
c0de2ba2:	7068      	strb	r0, [r5, #1]
c0de2ba4:	2005      	movs	r0, #5
c0de2ba6:	70a8      	strb	r0, [r5, #2]
c0de2ba8:	f859 0007 	ldr.w	r0, [r9, r7]
c0de2bac:	0a00      	lsrs	r0, r0, #8
c0de2bae:	70e8      	strb	r0, [r5, #3]
c0de2bb0:	f859 0007 	ldr.w	r0, [r9, r7]
c0de2bb4:	7128      	strb	r0, [r5, #4]
c0de2bb6:	f859 1007 	ldr.w	r1, [r9, r7]
c0de2bba:	f859 0006 	ldr.w	r0, [r9, r6]
c0de2bbe:	b1a9      	cbz	r1, c0de2bec <io_usb_hid_sent+0x84>
c0de2bc0:	283b      	cmp	r0, #59	; 0x3b
c0de2bc2:	eb09 0008 	add.w	r0, r9, r8
c0de2bc6:	bf94      	ite	ls
c0de2bc8:	f859 5006 	ldrls.w	r5, [r9, r6]
c0de2bcc:	253b      	movhi	r5, #59	; 0x3b
c0de2bce:	3005      	adds	r0, #5
c0de2bd0:	e01b      	b.n	c0de2c0a <io_usb_hid_sent+0xa2>
c0de2bd2:	481c      	ldr	r0, [pc, #112]	; (c0de2c44 <io_usb_hid_sent+0xdc>)
c0de2bd4:	2100      	movs	r1, #0
c0de2bd6:	f849 1000 	str.w	r1, [r9, r0]
c0de2bda:	481b      	ldr	r0, [pc, #108]	; (c0de2c48 <io_usb_hid_sent+0xe0>)
c0de2bdc:	f849 1006 	str.w	r1, [r9, r6]
c0de2be0:	f849 100a 	str.w	r1, [r9, sl]
c0de2be4:	f809 1000 	strb.w	r1, [r9, r0]
c0de2be8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2bec:	2839      	cmp	r0, #57	; 0x39
c0de2bee:	bf94      	ite	ls
c0de2bf0:	f859 5006 	ldrls.w	r5, [r9, r6]
c0de2bf4:	2539      	movhi	r5, #57	; 0x39
c0de2bf6:	f859 0006 	ldr.w	r0, [r9, r6]
c0de2bfa:	eb09 0108 	add.w	r1, r9, r8
c0de2bfe:	0a00      	lsrs	r0, r0, #8
c0de2c00:	7148      	strb	r0, [r1, #5]
c0de2c02:	f859 0006 	ldr.w	r0, [r9, r6]
c0de2c06:	7188      	strb	r0, [r1, #6]
c0de2c08:	1dc8      	adds	r0, r1, #7
c0de2c0a:	4621      	mov	r1, r4
c0de2c0c:	462a      	mov	r2, r5
c0de2c0e:	f004 f8ac 	bl	c0de6d6a <__aeabi_memmove>
c0de2c12:	1960      	adds	r0, r4, r5
c0de2c14:	f849 000a 	str.w	r0, [r9, sl]
c0de2c18:	f859 0006 	ldr.w	r0, [r9, r6]
c0de2c1c:	465b      	mov	r3, fp
c0de2c1e:	1b40      	subs	r0, r0, r5
c0de2c20:	f849 0006 	str.w	r0, [r9, r6]
c0de2c24:	f859 0007 	ldr.w	r0, [r9, r7]
c0de2c28:	2140      	movs	r1, #64	; 0x40
c0de2c2a:	1c42      	adds	r2, r0, #1
c0de2c2c:	eb09 0008 	add.w	r0, r9, r8
c0de2c30:	f849 2007 	str.w	r2, [r9, r7]
c0de2c34:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2c38:	4718      	bx	r3
c0de2c3a:	bf00      	nop
c0de2c3c:	000004a4 	.word	0x000004a4
c0de2c40:	000004a8 	.word	0x000004a8
c0de2c44:	0000049c 	.word	0x0000049c
c0de2c48:	000003f0 	.word	0x000003f0
c0de2c4c:	0000045c 	.word	0x0000045c
c0de2c50:	000004ac 	.word	0x000004ac

c0de2c54 <io_usb_hid_send>:
c0de2c54:	b191      	cbz	r1, c0de2c7c <io_usb_hid_send+0x28>
c0de2c56:	f8df c028 	ldr.w	ip, [pc, #40]	; c0de2c80 <io_usb_hid_send+0x2c>
c0de2c5a:	2300      	movs	r3, #0
c0de2c5c:	4a09      	ldr	r2, [pc, #36]	; (c0de2c84 <io_usb_hid_send+0x30>)
c0de2c5e:	f849 300c 	str.w	r3, [r9, ip]
c0de2c62:	f8df c024 	ldr.w	ip, [pc, #36]	; c0de2c88 <io_usb_hid_send+0x34>
c0de2c66:	444a      	add	r2, r9
c0de2c68:	4b08      	ldr	r3, [pc, #32]	; (c0de2c8c <io_usb_hid_send+0x38>)
c0de2c6a:	f849 200c 	str.w	r2, [r9, ip]
c0de2c6e:	4a08      	ldr	r2, [pc, #32]	; (c0de2c90 <io_usb_hid_send+0x3c>)
c0de2c70:	f849 1003 	str.w	r1, [r9, r3]
c0de2c74:	f849 1002 	str.w	r1, [r9, r2]
c0de2c78:	f7ff bf76 	b.w	c0de2b68 <io_usb_hid_sent>
c0de2c7c:	4770      	bx	lr
c0de2c7e:	bf00      	nop
c0de2c80:	0000049c 	.word	0x0000049c
c0de2c84:	0000029c 	.word	0x0000029c
c0de2c88:	000004a8 	.word	0x000004a8
c0de2c8c:	000004a4 	.word	0x000004a4
c0de2c90:	000004a0 	.word	0x000004a0

c0de2c94 <snprintf>:
c0de2c94:	b081      	sub	sp, #4
c0de2c96:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2c9a:	b089      	sub	sp, #36	; 0x24
c0de2c9c:	2800      	cmp	r0, #0
c0de2c9e:	9311      	str	r3, [sp, #68]	; 0x44
c0de2ca0:	f000 819e 	beq.w	c0de2fe0 <snprintf+0x34c>
c0de2ca4:	460e      	mov	r6, r1
c0de2ca6:	2900      	cmp	r1, #0
c0de2ca8:	f000 819a 	beq.w	c0de2fe0 <snprintf+0x34c>
c0de2cac:	4631      	mov	r1, r6
c0de2cae:	4615      	mov	r5, r2
c0de2cb0:	4680      	mov	r8, r0
c0de2cb2:	f004 f855 	bl	c0de6d60 <__aeabi_memclr>
c0de2cb6:	1e74      	subs	r4, r6, #1
c0de2cb8:	f000 8192 	beq.w	c0de2fe0 <snprintf+0x34c>
c0de2cbc:	7828      	ldrb	r0, [r5, #0]
c0de2cbe:	a911      	add	r1, sp, #68	; 0x44
c0de2cc0:	2800      	cmp	r0, #0
c0de2cc2:	9104      	str	r1, [sp, #16]
c0de2cc4:	f000 818c 	beq.w	c0de2fe0 <snprintf+0x34c>
c0de2cc8:	2700      	movs	r7, #0
c0de2cca:	bf00      	nop
c0de2ccc:	b130      	cbz	r0, c0de2cdc <snprintf+0x48>
c0de2cce:	2825      	cmp	r0, #37	; 0x25
c0de2cd0:	d004      	beq.n	c0de2cdc <snprintf+0x48>
c0de2cd2:	19e8      	adds	r0, r5, r7
c0de2cd4:	7840      	ldrb	r0, [r0, #1]
c0de2cd6:	3701      	adds	r7, #1
c0de2cd8:	e7f8      	b.n	c0de2ccc <snprintf+0x38>
c0de2cda:	bf00      	nop
c0de2cdc:	42a7      	cmp	r7, r4
c0de2cde:	bf28      	it	cs
c0de2ce0:	4627      	movcs	r7, r4
c0de2ce2:	4640      	mov	r0, r8
c0de2ce4:	4629      	mov	r1, r5
c0de2ce6:	463a      	mov	r2, r7
c0de2ce8:	f004 f83f 	bl	c0de6d6a <__aeabi_memmove>
c0de2cec:	1be4      	subs	r4, r4, r7
c0de2cee:	f000 8177 	beq.w	c0de2fe0 <snprintf+0x34c>
c0de2cf2:	5de8      	ldrb	r0, [r5, r7]
c0de2cf4:	44b8      	add	r8, r7
c0de2cf6:	2825      	cmp	r0, #37	; 0x25
c0de2cf8:	443d      	add	r5, r7
c0de2cfa:	f040 815f 	bne.w	c0de2fbc <snprintf+0x328>
c0de2cfe:	3501      	adds	r5, #1
c0de2d00:	f04f 0b00 	mov.w	fp, #0
c0de2d04:	2220      	movs	r2, #32
c0de2d06:	2600      	movs	r6, #0
c0de2d08:	2000      	movs	r0, #0
c0de2d0a:	3501      	adds	r5, #1
c0de2d0c:	f815 1c01 	ldrb.w	r1, [r5, #-1]
c0de2d10:	3501      	adds	r5, #1
c0de2d12:	292d      	cmp	r1, #45	; 0x2d
c0de2d14:	dc12      	bgt.n	c0de2d3c <snprintf+0xa8>
c0de2d16:	f04f 0000 	mov.w	r0, #0
c0de2d1a:	d0f7      	beq.n	c0de2d0c <snprintf+0x78>
c0de2d1c:	2925      	cmp	r1, #37	; 0x25
c0de2d1e:	f000 80e6 	beq.w	c0de2eee <snprintf+0x25a>
c0de2d22:	292a      	cmp	r1, #42	; 0x2a
c0de2d24:	f040 8148 	bne.w	c0de2fb8 <snprintf+0x324>
c0de2d28:	462b      	mov	r3, r5
c0de2d2a:	f813 0d01 	ldrb.w	r0, [r3, #-1]!
c0de2d2e:	2873      	cmp	r0, #115	; 0x73
c0de2d30:	f040 8154 	bne.w	c0de2fdc <snprintf+0x348>
c0de2d34:	9904      	ldr	r1, [sp, #16]
c0de2d36:	2002      	movs	r0, #2
c0de2d38:	461d      	mov	r5, r3
c0de2d3a:	e025      	b.n	c0de2d88 <snprintf+0xf4>
c0de2d3c:	2947      	cmp	r1, #71	; 0x47
c0de2d3e:	dc27      	bgt.n	c0de2d90 <snprintf+0xfc>
c0de2d40:	f1a1 0330 	sub.w	r3, r1, #48	; 0x30
c0de2d44:	2b0a      	cmp	r3, #10
c0de2d46:	d20d      	bcs.n	c0de2d64 <snprintf+0xd0>
c0de2d48:	f081 0330 	eor.w	r3, r1, #48	; 0x30
c0de2d4c:	ea53 030b 	orrs.w	r3, r3, fp
c0de2d50:	eb0b 038b 	add.w	r3, fp, fp, lsl #2
c0de2d54:	eb01 0143 	add.w	r1, r1, r3, lsl #1
c0de2d58:	bf08      	it	eq
c0de2d5a:	2230      	moveq	r2, #48	; 0x30
c0de2d5c:	f1a1 0b30 	sub.w	fp, r1, #48	; 0x30
c0de2d60:	3d01      	subs	r5, #1
c0de2d62:	e7d2      	b.n	c0de2d0a <snprintf+0x76>
c0de2d64:	292e      	cmp	r1, #46	; 0x2e
c0de2d66:	f040 8127 	bne.w	c0de2fb8 <snprintf+0x324>
c0de2d6a:	f815 0c01 	ldrb.w	r0, [r5, #-1]
c0de2d6e:	282a      	cmp	r0, #42	; 0x2a
c0de2d70:	f040 8134 	bne.w	c0de2fdc <snprintf+0x348>
c0de2d74:	7828      	ldrb	r0, [r5, #0]
c0de2d76:	2848      	cmp	r0, #72	; 0x48
c0de2d78:	d004      	beq.n	c0de2d84 <snprintf+0xf0>
c0de2d7a:	2873      	cmp	r0, #115	; 0x73
c0de2d7c:	d002      	beq.n	c0de2d84 <snprintf+0xf0>
c0de2d7e:	2868      	cmp	r0, #104	; 0x68
c0de2d80:	f040 812b 	bne.w	c0de2fda <snprintf+0x346>
c0de2d84:	9904      	ldr	r1, [sp, #16]
c0de2d86:	2001      	movs	r0, #1
c0de2d88:	1d0b      	adds	r3, r1, #4
c0de2d8a:	9304      	str	r3, [sp, #16]
c0de2d8c:	680e      	ldr	r6, [r1, #0]
c0de2d8e:	e7bc      	b.n	c0de2d0a <snprintf+0x76>
c0de2d90:	2967      	cmp	r1, #103	; 0x67
c0de2d92:	dc0c      	bgt.n	c0de2dae <snprintf+0x11a>
c0de2d94:	2962      	cmp	r1, #98	; 0x62
c0de2d96:	dc12      	bgt.n	c0de2dbe <snprintf+0x12a>
c0de2d98:	2948      	cmp	r1, #72	; 0x48
c0de2d9a:	f000 80ac 	beq.w	c0de2ef6 <snprintf+0x262>
c0de2d9e:	2958      	cmp	r1, #88	; 0x58
c0de2da0:	f040 810a 	bne.w	c0de2fb8 <snprintf+0x324>
c0de2da4:	f8cd 800c 	str.w	r8, [sp, #12]
c0de2da8:	f04f 0c01 	mov.w	ip, #1
c0de2dac:	e027      	b.n	c0de2dfe <snprintf+0x16a>
c0de2dae:	2972      	cmp	r1, #114	; 0x72
c0de2db0:	dc1b      	bgt.n	c0de2dea <snprintf+0x156>
c0de2db2:	2968      	cmp	r1, #104	; 0x68
c0de2db4:	f000 80a2 	beq.w	c0de2efc <snprintf+0x268>
c0de2db8:	2970      	cmp	r1, #112	; 0x70
c0de2dba:	d01c      	beq.n	c0de2df6 <snprintf+0x162>
c0de2dbc:	e0fc      	b.n	c0de2fb8 <snprintf+0x324>
c0de2dbe:	2963      	cmp	r1, #99	; 0x63
c0de2dc0:	f000 80a1 	beq.w	c0de2f06 <snprintf+0x272>
c0de2dc4:	2964      	cmp	r1, #100	; 0x64
c0de2dc6:	f040 80f7 	bne.w	c0de2fb8 <snprintf+0x324>
c0de2dca:	9804      	ldr	r0, [sp, #16]
c0de2dcc:	f8cd 800c 	str.w	r8, [sp, #12]
c0de2dd0:	1d01      	adds	r1, r0, #4
c0de2dd2:	9104      	str	r1, [sp, #16]
c0de2dd4:	6800      	ldr	r0, [r0, #0]
c0de2dd6:	2800      	cmp	r0, #0
c0de2dd8:	4607      	mov	r7, r0
c0de2dda:	d500      	bpl.n	c0de2dde <snprintf+0x14a>
c0de2ddc:	4247      	negs	r7, r0
c0de2dde:	0fc0      	lsrs	r0, r0, #31
c0de2de0:	f04f 0c00 	mov.w	ip, #0
c0de2de4:	f04f 080a 	mov.w	r8, #10
c0de2de8:	e010      	b.n	c0de2e0c <snprintf+0x178>
c0de2dea:	2973      	cmp	r1, #115	; 0x73
c0de2dec:	f000 8095 	beq.w	c0de2f1a <snprintf+0x286>
c0de2df0:	2978      	cmp	r1, #120	; 0x78
c0de2df2:	f040 80e1 	bne.w	c0de2fb8 <snprintf+0x324>
c0de2df6:	f04f 0c00 	mov.w	ip, #0
c0de2dfa:	f8cd 800c 	str.w	r8, [sp, #12]
c0de2dfe:	9804      	ldr	r0, [sp, #16]
c0de2e00:	f04f 0810 	mov.w	r8, #16
c0de2e04:	1d01      	adds	r1, r0, #4
c0de2e06:	9104      	str	r1, [sp, #16]
c0de2e08:	6807      	ldr	r7, [r0, #0]
c0de2e0a:	2000      	movs	r0, #0
c0de2e0c:	45b8      	cmp	r8, r7
c0de2e0e:	d902      	bls.n	c0de2e16 <snprintf+0x182>
c0de2e10:	f04f 0a01 	mov.w	sl, #1
c0de2e14:	e00f      	b.n	c0de2e36 <snprintf+0x1a2>
c0de2e16:	f1ab 0301 	sub.w	r3, fp, #1
c0de2e1a:	4641      	mov	r1, r8
c0de2e1c:	468a      	mov	sl, r1
c0de2e1e:	fba8 1601 	umull	r1, r6, r8, r1
c0de2e22:	2e00      	cmp	r6, #0
c0de2e24:	bf18      	it	ne
c0de2e26:	2601      	movne	r6, #1
c0de2e28:	42b9      	cmp	r1, r7
c0de2e2a:	469b      	mov	fp, r3
c0de2e2c:	d803      	bhi.n	c0de2e36 <snprintf+0x1a2>
c0de2e2e:	2e00      	cmp	r6, #0
c0de2e30:	f1ab 0301 	sub.w	r3, fp, #1
c0de2e34:	d0f2      	beq.n	c0de2e1c <snprintf+0x188>
c0de2e36:	2800      	cmp	r0, #0
c0de2e38:	4603      	mov	r3, r0
c0de2e3a:	bf18      	it	ne
c0de2e3c:	f04f 33ff 	movne.w	r3, #4294967295	; 0xffffffff
c0de2e40:	b148      	cbz	r0, c0de2e56 <snprintf+0x1c2>
c0de2e42:	b2d1      	uxtb	r1, r2
c0de2e44:	2930      	cmp	r1, #48	; 0x30
c0de2e46:	d10a      	bne.n	c0de2e5e <snprintf+0x1ca>
c0de2e48:	212d      	movs	r1, #45	; 0x2d
c0de2e4a:	2601      	movs	r6, #1
c0de2e4c:	f04f 0e01 	mov.w	lr, #1
c0de2e50:	f88d 1014 	strb.w	r1, [sp, #20]
c0de2e54:	e006      	b.n	c0de2e64 <snprintf+0x1d0>
c0de2e56:	f04f 0e01 	mov.w	lr, #1
c0de2e5a:	2600      	movs	r6, #0
c0de2e5c:	e002      	b.n	c0de2e64 <snprintf+0x1d0>
c0de2e5e:	2600      	movs	r6, #0
c0de2e60:	f04f 0e00 	mov.w	lr, #0
c0de2e64:	ebab 0000 	sub.w	r0, fp, r0
c0de2e68:	1e81      	subs	r1, r0, #2
c0de2e6a:	290d      	cmp	r1, #13
c0de2e6c:	d811      	bhi.n	c0de2e92 <snprintf+0x1fe>
c0de2e6e:	1e41      	subs	r1, r0, #1
c0de2e70:	d00f      	beq.n	c0de2e92 <snprintf+0x1fe>
c0de2e72:	a805      	add	r0, sp, #20
c0de2e74:	4430      	add	r0, r6
c0de2e76:	b2d2      	uxtb	r2, r2
c0de2e78:	f8cd c008 	str.w	ip, [sp, #8]
c0de2e7c:	e9cd 3e00 	strd	r3, lr, [sp]
c0de2e80:	f003 ff75 	bl	c0de6d6e <__aeabi_memset>
c0de2e84:	9900      	ldr	r1, [sp, #0]
c0de2e86:	eb06 000b 	add.w	r0, r6, fp
c0de2e8a:	e9dd ec01 	ldrd	lr, ip, [sp, #4]
c0de2e8e:	4408      	add	r0, r1
c0de2e90:	1e46      	subs	r6, r0, #1
c0de2e92:	f1be 0f00 	cmp.w	lr, #0
c0de2e96:	a905      	add	r1, sp, #20
c0de2e98:	bf02      	ittt	eq
c0de2e9a:	202d      	moveq	r0, #45	; 0x2d
c0de2e9c:	5588      	strbeq	r0, [r1, r6]
c0de2e9e:	3601      	addeq	r6, #1
c0de2ea0:	f1ba 0f00 	cmp.w	sl, #0
c0de2ea4:	d016      	beq.n	c0de2ed4 <snprintf+0x240>
c0de2ea6:	4a54      	ldr	r2, [pc, #336]	; (c0de2ff8 <snprintf+0x364>)
c0de2ea8:	4854      	ldr	r0, [pc, #336]	; (c0de2ffc <snprintf+0x368>)
c0de2eaa:	447a      	add	r2, pc
c0de2eac:	4478      	add	r0, pc
c0de2eae:	f1bc 0f00 	cmp.w	ip, #0
c0de2eb2:	bf08      	it	eq
c0de2eb4:	4610      	moveq	r0, r2
c0de2eb6:	bf00      	nop
c0de2eb8:	fbb7 f3fa 	udiv	r3, r7, sl
c0de2ebc:	45d0      	cmp	r8, sl
c0de2ebe:	fbb3 f2f8 	udiv	r2, r3, r8
c0de2ec2:	fbba faf8 	udiv	sl, sl, r8
c0de2ec6:	fb02 3218 	mls	r2, r2, r8, r3
c0de2eca:	5c82      	ldrb	r2, [r0, r2]
c0de2ecc:	558a      	strb	r2, [r1, r6]
c0de2ece:	f106 0601 	add.w	r6, r6, #1
c0de2ed2:	d9f1      	bls.n	c0de2eb8 <snprintf+0x224>
c0de2ed4:	42a6      	cmp	r6, r4
c0de2ed6:	bf28      	it	cs
c0de2ed8:	4626      	movcs	r6, r4
c0de2eda:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de2ede:	4632      	mov	r2, r6
c0de2ee0:	4640      	mov	r0, r8
c0de2ee2:	f003 ff42 	bl	c0de6d6a <__aeabi_memmove>
c0de2ee6:	1ba4      	subs	r4, r4, r6
c0de2ee8:	d07a      	beq.n	c0de2fe0 <snprintf+0x34c>
c0de2eea:	44b0      	add	r8, r6
c0de2eec:	e064      	b.n	c0de2fb8 <snprintf+0x324>
c0de2eee:	3c01      	subs	r4, #1
c0de2ef0:	f04f 0025 	mov.w	r0, #37	; 0x25
c0de2ef4:	e00d      	b.n	c0de2f12 <snprintf+0x27e>
c0de2ef6:	4a3e      	ldr	r2, [pc, #248]	; (c0de2ff0 <snprintf+0x35c>)
c0de2ef8:	447a      	add	r2, pc
c0de2efa:	e001      	b.n	c0de2f00 <snprintf+0x26c>
c0de2efc:	4a3d      	ldr	r2, [pc, #244]	; (c0de2ff4 <snprintf+0x360>)
c0de2efe:	447a      	add	r2, pc
c0de2f00:	f04f 0c01 	mov.w	ip, #1
c0de2f04:	e00d      	b.n	c0de2f22 <snprintf+0x28e>
c0de2f06:	9804      	ldr	r0, [sp, #16]
c0de2f08:	3c01      	subs	r4, #1
c0de2f0a:	f100 0104 	add.w	r1, r0, #4
c0de2f0e:	9104      	str	r1, [sp, #16]
c0de2f10:	6800      	ldr	r0, [r0, #0]
c0de2f12:	f808 0b01 	strb.w	r0, [r8], #1
c0de2f16:	d14f      	bne.n	c0de2fb8 <snprintf+0x324>
c0de2f18:	e062      	b.n	c0de2fe0 <snprintf+0x34c>
c0de2f1a:	4a34      	ldr	r2, [pc, #208]	; (c0de2fec <snprintf+0x358>)
c0de2f1c:	f04f 0c00 	mov.w	ip, #0
c0de2f20:	447a      	add	r2, pc
c0de2f22:	9904      	ldr	r1, [sp, #16]
c0de2f24:	b2c0      	uxtb	r0, r0
c0de2f26:	1d0b      	adds	r3, r1, #4
c0de2f28:	9304      	str	r3, [sp, #16]
c0de2f2a:	6809      	ldr	r1, [r1, #0]
c0de2f2c:	2802      	cmp	r0, #2
c0de2f2e:	d040      	beq.n	c0de2fb2 <snprintf+0x31e>
c0de2f30:	2801      	cmp	r0, #1
c0de2f32:	d008      	beq.n	c0de2f46 <snprintf+0x2b2>
c0de2f34:	463e      	mov	r6, r7
c0de2f36:	b930      	cbnz	r0, c0de2f46 <snprintf+0x2b2>
c0de2f38:	2000      	movs	r0, #0
c0de2f3a:	bf00      	nop
c0de2f3c:	5c0b      	ldrb	r3, [r1, r0]
c0de2f3e:	3001      	adds	r0, #1
c0de2f40:	2b00      	cmp	r3, #0
c0de2f42:	d1fb      	bne.n	c0de2f3c <snprintf+0x2a8>
c0de2f44:	1e46      	subs	r6, r0, #1
c0de2f46:	f1bc 0f00 	cmp.w	ip, #0
c0de2f4a:	d01a      	beq.n	c0de2f82 <snprintf+0x2ee>
c0de2f4c:	b3a6      	cbz	r6, c0de2fb8 <snprintf+0x324>
c0de2f4e:	eba4 0046 	sub.w	r0, r4, r6, lsl #1
c0de2f52:	bf00      	nop
c0de2f54:	2c01      	cmp	r4, #1
c0de2f56:	d943      	bls.n	c0de2fe0 <snprintf+0x34c>
c0de2f58:	780b      	ldrb	r3, [r1, #0]
c0de2f5a:	3c02      	subs	r4, #2
c0de2f5c:	ea4f 1713 	mov.w	r7, r3, lsr #4
c0de2f60:	5dd7      	ldrb	r7, [r2, r7]
c0de2f62:	f003 030f 	and.w	r3, r3, #15
c0de2f66:	f888 7000 	strb.w	r7, [r8]
c0de2f6a:	5cd3      	ldrb	r3, [r2, r3]
c0de2f6c:	f888 3001 	strb.w	r3, [r8, #1]
c0de2f70:	d036      	beq.n	c0de2fe0 <snprintf+0x34c>
c0de2f72:	f108 0802 	add.w	r8, r8, #2
c0de2f76:	3e01      	subs	r6, #1
c0de2f78:	f101 0101 	add.w	r1, r1, #1
c0de2f7c:	d1ea      	bne.n	c0de2f54 <snprintf+0x2c0>
c0de2f7e:	4604      	mov	r4, r0
c0de2f80:	e01a      	b.n	c0de2fb8 <snprintf+0x324>
c0de2f82:	42a6      	cmp	r6, r4
c0de2f84:	bf28      	it	cs
c0de2f86:	4626      	movcs	r6, r4
c0de2f88:	4640      	mov	r0, r8
c0de2f8a:	4632      	mov	r2, r6
c0de2f8c:	f003 feed 	bl	c0de6d6a <__aeabi_memmove>
c0de2f90:	1ba4      	subs	r4, r4, r6
c0de2f92:	d025      	beq.n	c0de2fe0 <snprintf+0x34c>
c0de2f94:	4637      	mov	r7, r6
c0de2f96:	45bb      	cmp	fp, r7
c0de2f98:	44b0      	add	r8, r6
c0de2f9a:	d90d      	bls.n	c0de2fb8 <snprintf+0x324>
c0de2f9c:	ebab 0607 	sub.w	r6, fp, r7
c0de2fa0:	42a6      	cmp	r6, r4
c0de2fa2:	bf28      	it	cs
c0de2fa4:	4626      	movcs	r6, r4
c0de2fa6:	4640      	mov	r0, r8
c0de2fa8:	4631      	mov	r1, r6
c0de2faa:	2220      	movs	r2, #32
c0de2fac:	f003 fedf 	bl	c0de6d6e <__aeabi_memset>
c0de2fb0:	e799      	b.n	c0de2ee6 <snprintf+0x252>
c0de2fb2:	7808      	ldrb	r0, [r1, #0]
c0de2fb4:	b130      	cbz	r0, c0de2fc4 <snprintf+0x330>
c0de2fb6:	bf00      	nop
c0de2fb8:	f815 0d01 	ldrb.w	r0, [r5, #-1]!
c0de2fbc:	2800      	cmp	r0, #0
c0de2fbe:	f47f ae83 	bne.w	c0de2cc8 <snprintf+0x34>
c0de2fc2:	e00d      	b.n	c0de2fe0 <snprintf+0x34c>
c0de2fc4:	42a6      	cmp	r6, r4
c0de2fc6:	bf28      	it	cs
c0de2fc8:	4626      	movcs	r6, r4
c0de2fca:	4640      	mov	r0, r8
c0de2fcc:	4631      	mov	r1, r6
c0de2fce:	2220      	movs	r2, #32
c0de2fd0:	f003 fecd 	bl	c0de6d6e <__aeabi_memset>
c0de2fd4:	1ba4      	subs	r4, r4, r6
c0de2fd6:	d1de      	bne.n	c0de2f96 <snprintf+0x302>
c0de2fd8:	e002      	b.n	c0de2fe0 <snprintf+0x34c>
c0de2fda:	202a      	movs	r0, #42	; 0x2a
c0de2fdc:	3d01      	subs	r5, #1
c0de2fde:	e7ed      	b.n	c0de2fbc <snprintf+0x328>
c0de2fe0:	2000      	movs	r0, #0
c0de2fe2:	b009      	add	sp, #36	; 0x24
c0de2fe4:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2fe8:	b001      	add	sp, #4
c0de2fea:	4770      	bx	lr
c0de2fec:	000057c5 	.word	0x000057c5
c0de2ff0:	000057fd 	.word	0x000057fd
c0de2ff4:	000057e7 	.word	0x000057e7
c0de2ff8:	0000583b 	.word	0x0000583b
c0de2ffc:	00005849 	.word	0x00005849

c0de3000 <parse_tx>:
c0de3000:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3004:	29ac      	cmp	r1, #172	; 0xac
c0de3006:	f040 80a7 	bne.w	c0de3158 <parse_tx+0x158>
c0de300a:	461e      	mov	r6, r3
c0de300c:	4614      	mov	r4, r2
c0de300e:	4605      	mov	r5, r0
c0de3010:	f002 fcb8 	bl	c0de5984 <read_uint32_be>
c0de3014:	6060      	str	r0, [r4, #4]
c0de3016:	1d29      	adds	r1, r5, #4
c0de3018:	4630      	mov	r0, r6
c0de301a:	2237      	movs	r2, #55	; 0x37
c0de301c:	f003 fea3 	bl	c0de6d66 <__aeabi_memcpy>
c0de3020:	f04f 0800 	mov.w	r8, #0
c0de3024:	4630      	mov	r0, r6
c0de3026:	f886 8037 	strb.w	r8, [r6, #55]	; 0x37
c0de302a:	f7fe f99b 	bl	c0de1364 <validate_address>
c0de302e:	2800      	cmp	r0, #0
c0de3030:	f000 8092 	beq.w	c0de3158 <parse_tx+0x158>
c0de3034:	f104 0069 	add.w	r0, r4, #105	; 0x69
c0de3038:	4631      	mov	r1, r6
c0de303a:	f002 fdd1 	bl	c0de5be0 <read_public_key_compressed>
c0de303e:	f104 0018 	add.w	r0, r4, #24
c0de3042:	4631      	mov	r1, r6
c0de3044:	f002 fdcc 	bl	c0de5be0 <read_public_key_compressed>
c0de3048:	f106 0738 	add.w	r7, r6, #56	; 0x38
c0de304c:	f105 013b 	add.w	r1, r5, #59	; 0x3b
c0de3050:	4638      	mov	r0, r7
c0de3052:	2237      	movs	r2, #55	; 0x37
c0de3054:	f003 fe87 	bl	c0de6d66 <__aeabi_memcpy>
c0de3058:	4638      	mov	r0, r7
c0de305a:	f886 806f 	strb.w	r8, [r6, #111]	; 0x6f
c0de305e:	f7fe f981 	bl	c0de1364 <validate_address>
c0de3062:	2800      	cmp	r0, #0
c0de3064:	d078      	beq.n	c0de3158 <parse_tx+0x158>
c0de3066:	f104 008a 	add.w	r0, r4, #138	; 0x8a
c0de306a:	4639      	mov	r1, r7
c0de306c:	f002 fdb8 	bl	c0de5be0 <read_public_key_compressed>
c0de3070:	f105 0072 	add.w	r0, r5, #114	; 0x72
c0de3074:	f002 fc91 	bl	c0de599a <read_uint64_be>
c0de3078:	4602      	mov	r2, r0
c0de307a:	460b      	mov	r3, r1
c0de307c:	f106 0070 	add.w	r0, r6, #112	; 0x70
c0de3080:	2120      	movs	r1, #32
c0de3082:	e9c4 232e 	strd	r2, r3, [r4, #184]	; 0xb8
c0de3086:	f002 fc9f 	bl	c0de59c8 <amount_to_string>
c0de308a:	f04f 0800 	mov.w	r8, #0
c0de308e:	2701      	movs	r7, #1
c0de3090:	f105 007a 	add.w	r0, r5, #122	; 0x7a
c0de3094:	e9c4 782c 	strd	r7, r8, [r4, #176]	; 0xb0
c0de3098:	f002 fc7f 	bl	c0de599a <read_uint64_be>
c0de309c:	4602      	mov	r2, r0
c0de309e:	460b      	mov	r3, r1
c0de30a0:	f106 0090 	add.w	r0, r6, #144	; 0x90
c0de30a4:	2120      	movs	r1, #32
c0de30a6:	e9c4 2302 	strd	r2, r3, [r4, #8]
c0de30aa:	f002 fc8d 	bl	c0de59c8 <amount_to_string>
c0de30ae:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de30b2:	e9d4 232e 	ldrd	r2, r3, [r4, #184]	; 0xb8
c0de30b6:	1812      	adds	r2, r2, r0
c0de30b8:	414b      	adcs	r3, r1
c0de30ba:	f158 0000 	adcs.w	r0, r8, #0
c0de30be:	d14b      	bne.n	c0de3158 <parse_tx+0x158>
c0de30c0:	f106 00b0 	add.w	r0, r6, #176	; 0xb0
c0de30c4:	2120      	movs	r1, #32
c0de30c6:	f002 fc7f 	bl	c0de59c8 <amount_to_string>
c0de30ca:	f105 0082 	add.w	r0, r5, #130	; 0x82
c0de30ce:	e9c4 7804 	strd	r7, r8, [r4, #16]
c0de30d2:	f002 fc57 	bl	c0de5984 <read_uint32_be>
c0de30d6:	4602      	mov	r2, r0
c0de30d8:	63e0      	str	r0, [r4, #60]	; 0x3c
c0de30da:	f106 00d0 	add.w	r0, r6, #208	; 0xd0
c0de30de:	2120      	movs	r1, #32
c0de30e0:	2300      	movs	r3, #0
c0de30e2:	f002 fd11 	bl	c0de5b08 <value_to_string>
c0de30e6:	f105 0086 	add.w	r0, r5, #134	; 0x86
c0de30ea:	f002 fc4b 	bl	c0de5984 <read_uint32_be>
c0de30ee:	4602      	mov	r2, r0
c0de30f0:	6420      	str	r0, [r4, #64]	; 0x40
c0de30f2:	f106 00f0 	add.w	r0, r6, #240	; 0xf0
c0de30f6:	2120      	movs	r1, #32
c0de30f8:	2300      	movs	r3, #0
c0de30fa:	f002 fd05 	bl	c0de5b08 <value_to_string>
c0de30fe:	f506 7788 	add.w	r7, r6, #272	; 0x110
c0de3102:	f105 018a 	add.w	r1, r5, #138	; 0x8a
c0de3106:	4638      	mov	r0, r7
c0de3108:	2220      	movs	r2, #32
c0de310a:	f884 80c0 	strb.w	r8, [r4, #192]	; 0xc0
c0de310e:	f003 fe2a 	bl	c0de6d66 <__aeabi_memcpy>
c0de3112:	f104 0044 	add.w	r0, r4, #68	; 0x44
c0de3116:	4639      	mov	r1, r7
c0de3118:	f886 8130 	strb.w	r8, [r6, #304]	; 0x130
c0de311c:	f000 fdbc 	bl	c0de3c98 <transaction_prepare_memo>
c0de3120:	f895 00aa 	ldrb.w	r0, [r5, #170]	; 0xaa
c0de3124:	f040 0104 	orr.w	r1, r0, #4
c0de3128:	2904      	cmp	r1, #4
c0de312a:	f884 0173 	strb.w	r0, [r4, #371]	; 0x173
c0de312e:	d113      	bne.n	c0de3158 <parse_tx+0x158>
c0de3130:	f000 0101 	and.w	r1, r0, #1
c0de3134:	f884 1066 	strb.w	r1, [r4, #102]	; 0x66
c0de3138:	f3c0 0140 	ubfx	r1, r0, #1, #1
c0de313c:	0880      	lsrs	r0, r0, #2
c0de313e:	f884 1067 	strb.w	r1, [r4, #103]	; 0x67
c0de3142:	f884 0068 	strb.w	r0, [r4, #104]	; 0x68
c0de3146:	f895 10ab 	ldrb.w	r1, [r5, #171]	; 0xab
c0de314a:	2000      	movs	r0, #0
c0de314c:	2902      	cmp	r1, #2
c0de314e:	bf38      	it	cc
c0de3150:	2001      	movcc	r0, #1
c0de3152:	7021      	strb	r1, [r4, #0]
c0de3154:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3158:	2000      	movs	r0, #0
c0de315a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de3160 <pic_internal>:
c0de3160:	467a      	mov	r2, pc
c0de3162:	4902      	ldr	r1, [pc, #8]	; (c0de316c <pic_internal+0xc>)
c0de3164:	1cc9      	adds	r1, r1, #3
c0de3166:	1a89      	subs	r1, r1, r2
c0de3168:	1a40      	subs	r0, r0, r1
c0de316a:	4770      	bx	lr
c0de316c:	c0de3161 	.word	0xc0de3161

c0de3170 <pic>:
c0de3170:	490a      	ldr	r1, [pc, #40]	; (c0de319c <pic+0x2c>)
c0de3172:	4281      	cmp	r1, r0
c0de3174:	490a      	ldr	r1, [pc, #40]	; (c0de31a0 <pic+0x30>)
c0de3176:	d806      	bhi.n	c0de3186 <pic+0x16>
c0de3178:	4281      	cmp	r1, r0
c0de317a:	d304      	bcc.n	c0de3186 <pic+0x16>
c0de317c:	b580      	push	{r7, lr}
c0de317e:	f7ff ffef 	bl	c0de3160 <pic_internal>
c0de3182:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de3186:	4907      	ldr	r1, [pc, #28]	; (c0de31a4 <pic+0x34>)
c0de3188:	4288      	cmp	r0, r1
c0de318a:	4a07      	ldr	r2, [pc, #28]	; (c0de31a8 <pic+0x38>)
c0de318c:	d305      	bcc.n	c0de319a <pic+0x2a>
c0de318e:	4290      	cmp	r0, r2
c0de3190:	bf88      	it	hi
c0de3192:	4770      	bxhi	lr
c0de3194:	1a40      	subs	r0, r0, r1
c0de3196:	464a      	mov	r2, r9
c0de3198:	4410      	add	r0, r2
c0de319a:	4770      	bx	lr
c0de319c:	c0de0000 	.word	0xc0de0000
c0de31a0:	c0deb000 	.word	0xc0deb000
c0de31a4:	da7a0000 	.word	0xda7a0000
c0de31a8:	da7a7800 	.word	0xda7a7800

c0de31ac <matrix_mul>:
c0de31ac:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de31b0:	b0a8      	sub	sp, #160	; 0xa0
c0de31b2:	f10d 0840 	add.w	r8, sp, #64	; 0x40
c0de31b6:	460e      	mov	r6, r1
c0de31b8:	4682      	mov	sl, r0
c0de31ba:	4640      	mov	r0, r8
c0de31bc:	2160      	movs	r1, #96	; 0x60
c0de31be:	f003 fddb 	bl	c0de6d78 <explicit_bzero>
c0de31c2:	f04f 0b00 	mov.w	fp, #0
c0de31c6:	af08      	add	r7, sp, #32
c0de31c8:	466d      	mov	r5, sp
c0de31ca:	bf00      	nop
c0de31cc:	eb08 144b 	add.w	r4, r8, fp, lsl #5
c0de31d0:	f04f 0800 	mov.w	r8, #0
c0de31d4:	eb0a 0108 	add.w	r1, sl, r8
c0de31d8:	eb06 0208 	add.w	r2, r6, r8
c0de31dc:	4638      	mov	r0, r7
c0de31de:	f7fd fdab 	bl	c0de0d38 <field_mul>
c0de31e2:	4628      	mov	r0, r5
c0de31e4:	4621      	mov	r1, r4
c0de31e6:	f7fd fd7e 	bl	c0de0ce6 <field_copy>
c0de31ea:	4620      	mov	r0, r4
c0de31ec:	4629      	mov	r1, r5
c0de31ee:	463a      	mov	r2, r7
c0de31f0:	f7fd fd7e 	bl	c0de0cf0 <field_add>
c0de31f4:	f108 0820 	add.w	r8, r8, #32
c0de31f8:	f1b8 0f60 	cmp.w	r8, #96	; 0x60
c0de31fc:	d1ea      	bne.n	c0de31d4 <matrix_mul+0x28>
c0de31fe:	f10b 0b01 	add.w	fp, fp, #1
c0de3202:	f1bb 0f03 	cmp.w	fp, #3
c0de3206:	f106 0660 	add.w	r6, r6, #96	; 0x60
c0de320a:	f10d 0840 	add.w	r8, sp, #64	; 0x40
c0de320e:	d1dd      	bne.n	c0de31cc <matrix_mul+0x20>
c0de3210:	2400      	movs	r4, #0
c0de3212:	bf00      	nop
c0de3214:	eb0a 0004 	add.w	r0, sl, r4
c0de3218:	eb08 0104 	add.w	r1, r8, r4
c0de321c:	f7fd fd63 	bl	c0de0ce6 <field_copy>
c0de3220:	3420      	adds	r4, #32
c0de3222:	2c60      	cmp	r4, #96	; 0x60
c0de3224:	d1f6      	bne.n	c0de3214 <matrix_mul+0x68>
c0de3226:	b028      	add	sp, #160	; 0xa0
c0de3228:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de322c <poseidon_permutation>:
c0de322c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3230:	b08c      	sub	sp, #48	; 0x30
c0de3232:	4604      	mov	r4, r0
c0de3234:	4828      	ldr	r0, [pc, #160]	; (c0de32d8 <poseidon_permutation+0xac>)
c0de3236:	4929      	ldr	r1, [pc, #164]	; (c0de32dc <poseidon_permutation+0xb0>)
c0de3238:	4478      	add	r0, pc
c0de323a:	4479      	add	r1, pc
c0de323c:	9103      	str	r1, [sp, #12]
c0de323e:	4928      	ldr	r1, [pc, #160]	; (c0de32e0 <poseidon_permutation+0xb4>)
c0de3240:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de3244:	f04f 0b00 	mov.w	fp, #0
c0de3248:	ad04      	add	r5, sp, #16
c0de324a:	4479      	add	r1, pc
c0de324c:	4682      	mov	sl, r0
c0de324e:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de3252:	bf00      	nop
c0de3254:	2600      	movs	r6, #0
c0de3256:	bf00      	nop
c0de3258:	19a7      	adds	r7, r4, r6
c0de325a:	4628      	mov	r0, r5
c0de325c:	4639      	mov	r1, r7
c0de325e:	f7fd fd42 	bl	c0de0ce6 <field_copy>
c0de3262:	eb0a 0206 	add.w	r2, sl, r6
c0de3266:	4638      	mov	r0, r7
c0de3268:	4629      	mov	r1, r5
c0de326a:	f7fd fd41 	bl	c0de0cf0 <field_add>
c0de326e:	3620      	adds	r6, #32
c0de3270:	2e60      	cmp	r6, #96	; 0x60
c0de3272:	d1f1      	bne.n	c0de3258 <poseidon_permutation+0x2c>
c0de3274:	2600      	movs	r6, #0
c0de3276:	bf00      	nop
c0de3278:	19a7      	adds	r7, r4, r6
c0de327a:	4628      	mov	r0, r5
c0de327c:	4639      	mov	r1, r7
c0de327e:	f7fd fd32 	bl	c0de0ce6 <field_copy>
c0de3282:	4638      	mov	r0, r7
c0de3284:	4629      	mov	r1, r5
c0de3286:	4642      	mov	r2, r8
c0de3288:	f7fd fd86 	bl	c0de0d98 <field_pow>
c0de328c:	3620      	adds	r6, #32
c0de328e:	2e60      	cmp	r6, #96	; 0x60
c0de3290:	d1f2      	bne.n	c0de3278 <poseidon_permutation+0x4c>
c0de3292:	9902      	ldr	r1, [sp, #8]
c0de3294:	4620      	mov	r0, r4
c0de3296:	f7ff ff89 	bl	c0de31ac <matrix_mul>
c0de329a:	f10b 0b01 	add.w	fp, fp, #1
c0de329e:	f1bb 0f3f 	cmp.w	fp, #63	; 0x3f
c0de32a2:	f10a 0a60 	add.w	sl, sl, #96	; 0x60
c0de32a6:	d1d5      	bne.n	c0de3254 <poseidon_permutation+0x28>
c0de32a8:	f8dd b004 	ldr.w	fp, [sp, #4]
c0de32ac:	2700      	movs	r7, #0
c0de32ae:	ad04      	add	r5, sp, #16
c0de32b0:	19e6      	adds	r6, r4, r7
c0de32b2:	4628      	mov	r0, r5
c0de32b4:	4631      	mov	r1, r6
c0de32b6:	f7fd fd16 	bl	c0de0ce6 <field_copy>
c0de32ba:	eb0b 0007 	add.w	r0, fp, r7
c0de32be:	f500 52bd 	add.w	r2, r0, #6048	; 0x17a0
c0de32c2:	4630      	mov	r0, r6
c0de32c4:	4629      	mov	r1, r5
c0de32c6:	f7fd fd13 	bl	c0de0cf0 <field_add>
c0de32ca:	3720      	adds	r7, #32
c0de32cc:	2f60      	cmp	r7, #96	; 0x60
c0de32ce:	d1ef      	bne.n	c0de32b0 <poseidon_permutation+0x84>
c0de32d0:	b00c      	add	sp, #48	; 0x30
c0de32d2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de32d6:	bf00      	nop
c0de32d8:	000054ed 	.word	0x000054ed
c0de32dc:	000054cb 	.word	0x000054cb
c0de32e0:	00006cdb 	.word	0x00006cdb

c0de32e4 <poseidon_init>:
c0de32e4:	2901      	cmp	r1, #1
c0de32e6:	d005      	beq.n	c0de32f4 <poseidon_init+0x10>
c0de32e8:	b949      	cbnz	r1, c0de32fe <poseidon_init+0x1a>
c0de32ea:	4905      	ldr	r1, [pc, #20]	; (c0de3300 <poseidon_init+0x1c>)
c0de32ec:	2260      	movs	r2, #96	; 0x60
c0de32ee:	4479      	add	r1, pc
c0de32f0:	f003 bd39 	b.w	c0de6d66 <__aeabi_memcpy>
c0de32f4:	4903      	ldr	r1, [pc, #12]	; (c0de3304 <poseidon_init+0x20>)
c0de32f6:	2260      	movs	r2, #96	; 0x60
c0de32f8:	4479      	add	r1, pc
c0de32fa:	f003 bd34 	b.w	c0de6d66 <__aeabi_memcpy>
c0de32fe:	4770      	bx	lr
c0de3300:	00006d5a 	.word	0x00006d5a
c0de3304:	00006db0 	.word	0x00006db0

c0de3308 <poseidon_update>:
c0de3308:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de330c:	b088      	sub	sp, #32
c0de330e:	4688      	mov	r8, r1
c0de3310:	2100      	movs	r1, #0
c0de3312:	4692      	mov	sl, r2
c0de3314:	ebb1 0f52 	cmp.w	r1, r2, lsr #1
c0de3318:	4604      	mov	r4, r0
c0de331a:	d01f      	beq.n	c0de335c <poseidon_update+0x54>
c0de331c:	ea4f 075a 	mov.w	r7, sl, lsr #1
c0de3320:	f104 0b20 	add.w	fp, r4, #32
c0de3324:	466d      	mov	r5, sp
c0de3326:	4646      	mov	r6, r8
c0de3328:	4628      	mov	r0, r5
c0de332a:	4621      	mov	r1, r4
c0de332c:	f7fd fcdb 	bl	c0de0ce6 <field_copy>
c0de3330:	4620      	mov	r0, r4
c0de3332:	4629      	mov	r1, r5
c0de3334:	4632      	mov	r2, r6
c0de3336:	f7fd fcdb 	bl	c0de0cf0 <field_add>
c0de333a:	4628      	mov	r0, r5
c0de333c:	4659      	mov	r1, fp
c0de333e:	f7fd fcd2 	bl	c0de0ce6 <field_copy>
c0de3342:	f106 0220 	add.w	r2, r6, #32
c0de3346:	4658      	mov	r0, fp
c0de3348:	4629      	mov	r1, r5
c0de334a:	f7fd fcd1 	bl	c0de0cf0 <field_add>
c0de334e:	4620      	mov	r0, r4
c0de3350:	f7ff ff6c 	bl	c0de322c <poseidon_permutation>
c0de3354:	3f01      	subs	r7, #1
c0de3356:	f106 0640 	add.w	r6, r6, #64	; 0x40
c0de335a:	d1e5      	bne.n	c0de3328 <poseidon_update+0x20>
c0de335c:	f02a 0601 	bic.w	r6, sl, #1
c0de3360:	4556      	cmp	r6, sl
c0de3362:	d20d      	bcs.n	c0de3380 <poseidon_update+0x78>
c0de3364:	466d      	mov	r5, sp
c0de3366:	4628      	mov	r0, r5
c0de3368:	4621      	mov	r1, r4
c0de336a:	f7fd fcbc 	bl	c0de0ce6 <field_copy>
c0de336e:	eb08 1246 	add.w	r2, r8, r6, lsl #5
c0de3372:	4620      	mov	r0, r4
c0de3374:	4629      	mov	r1, r5
c0de3376:	f7fd fcbb 	bl	c0de0cf0 <field_add>
c0de337a:	4620      	mov	r0, r4
c0de337c:	f7ff ff56 	bl	c0de322c <poseidon_permutation>
c0de3380:	b008      	add	sp, #32
c0de3382:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3386 <poseidon_digest>:
c0de3386:	f7fd bcae 	b.w	c0de0ce6 <field_copy>
	...

c0de338c <roinput_add_field>:
c0de338c:	b510      	push	{r4, lr}
c0de338e:	e9d0 2302 	ldrd	r2, r3, [r0, #8]
c0de3392:	4293      	cmp	r3, r2
c0de3394:	bf08      	it	eq
c0de3396:	bd10      	popeq	{r4, pc}
c0de3398:	f891 c01f 	ldrb.w	ip, [r1, #31]
c0de339c:	6803      	ldr	r3, [r0, #0]
c0de339e:	0152      	lsls	r2, r2, #5
c0de33a0:	f803 c002 	strb.w	ip, [r3, r2]
c0de33a4:	311e      	adds	r1, #30
c0de33a6:	2201      	movs	r2, #1
c0de33a8:	f8d0 c000 	ldr.w	ip, [r0]
c0de33ac:	f8d0 e008 	ldr.w	lr, [r0, #8]
c0de33b0:	f811 4901 	ldrb.w	r4, [r1], #-1
c0de33b4:	eb0c 134e 	add.w	r3, ip, lr, lsl #5
c0de33b8:	549c      	strb	r4, [r3, r2]
c0de33ba:	3201      	adds	r2, #1
c0de33bc:	2a20      	cmp	r2, #32
c0de33be:	d1f3      	bne.n	c0de33a8 <roinput_add_field+0x1c>
c0de33c0:	6881      	ldr	r1, [r0, #8]
c0de33c2:	3101      	adds	r1, #1
c0de33c4:	6081      	str	r1, [r0, #8]
c0de33c6:	bd10      	pop	{r4, pc}

c0de33c8 <roinput_add_bit>:
c0de33c8:	b510      	push	{r4, lr}
c0de33ca:	4604      	mov	r4, r0
c0de33cc:	e9d0 2004 	ldrd	r2, r0, [r0, #16]
c0de33d0:	ebb2 0fc0 	cmp.w	r2, r0, lsl #3
c0de33d4:	bf08      	it	eq
c0de33d6:	bd10      	popeq	{r4, pc}
c0de33d8:	460b      	mov	r3, r1
c0de33da:	6860      	ldr	r0, [r4, #4]
c0de33dc:	4611      	mov	r1, r2
c0de33de:	461a      	mov	r2, r3
c0de33e0:	f002 fbe4 	bl	c0de5bac <packed_bit_array_set>
c0de33e4:	6920      	ldr	r0, [r4, #16]
c0de33e6:	3001      	adds	r0, #1
c0de33e8:	6120      	str	r0, [r4, #16]
c0de33ea:	bd10      	pop	{r4, pc}

c0de33ec <roinput_add_scalar>:
c0de33ec:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de33ee:	b081      	sub	sp, #4
c0de33f0:	4604      	mov	r4, r0
c0de33f2:	e9d0 6004 	ldrd	r6, r0, [r0, #16]
c0de33f6:	ebc6 00c0 	rsb	r0, r6, r0, lsl #3
c0de33fa:	28ff      	cmp	r0, #255	; 0xff
c0de33fc:	d314      	bcc.n	c0de3428 <roinput_add_scalar+0x3c>
c0de33fe:	460d      	mov	r5, r1
c0de3400:	2700      	movs	r7, #0
c0de3402:	bf00      	nop
c0de3404:	eba5 00d7 	sub.w	r0, r5, r7, lsr #3
c0de3408:	7fc0      	ldrb	r0, [r0, #31]
c0de340a:	f007 0107 	and.w	r1, r7, #7
c0de340e:	40c8      	lsrs	r0, r1
c0de3410:	f000 0201 	and.w	r2, r0, #1
c0de3414:	6860      	ldr	r0, [r4, #4]
c0de3416:	19f1      	adds	r1, r6, r7
c0de3418:	f002 fbc8 	bl	c0de5bac <packed_bit_array_set>
c0de341c:	3701      	adds	r7, #1
c0de341e:	2fff      	cmp	r7, #255	; 0xff
c0de3420:	d1f0      	bne.n	c0de3404 <roinput_add_scalar+0x18>
c0de3422:	6920      	ldr	r0, [r4, #16]
c0de3424:	30ff      	adds	r0, #255	; 0xff
c0de3426:	6120      	str	r0, [r4, #16]
c0de3428:	b001      	add	sp, #4
c0de342a:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de342c <roinput_add_bytes>:
c0de342c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3430:	b082      	sub	sp, #8
c0de3432:	4604      	mov	r4, r0
c0de3434:	e9d0 7004 	ldrd	r7, r0, [r0, #16]
c0de3438:	ebc7 00c0 	rsb	r0, r7, r0, lsl #3
c0de343c:	ebb0 0fc2 	cmp.w	r0, r2, lsl #3
c0de3440:	d31d      	bcc.n	c0de347e <roinput_add_bytes+0x52>
c0de3442:	4693      	mov	fp, r2
c0de3444:	ea4f 00c2 	mov.w	r0, r2, lsl #3
c0de3448:	b1ba      	cbz	r2, c0de347a <roinput_add_bytes+0x4e>
c0de344a:	468a      	mov	sl, r1
c0de344c:	2600      	movs	r6, #0
c0de344e:	9001      	str	r0, [sp, #4]
c0de3450:	f81a 8006 	ldrb.w	r8, [sl, r6]
c0de3454:	2500      	movs	r5, #0
c0de3456:	bf00      	nop
c0de3458:	6860      	ldr	r0, [r4, #4]
c0de345a:	fa28 f205 	lsr.w	r2, r8, r5
c0de345e:	1979      	adds	r1, r7, r5
c0de3460:	f002 0201 	and.w	r2, r2, #1
c0de3464:	f002 fba2 	bl	c0de5bac <packed_bit_array_set>
c0de3468:	3501      	adds	r5, #1
c0de346a:	2d08      	cmp	r5, #8
c0de346c:	d1f4      	bne.n	c0de3458 <roinput_add_bytes+0x2c>
c0de346e:	3601      	adds	r6, #1
c0de3470:	455e      	cmp	r6, fp
c0de3472:	442f      	add	r7, r5
c0de3474:	d1ec      	bne.n	c0de3450 <roinput_add_bytes+0x24>
c0de3476:	6927      	ldr	r7, [r4, #16]
c0de3478:	9801      	ldr	r0, [sp, #4]
c0de347a:	4438      	add	r0, r7
c0de347c:	6120      	str	r0, [r4, #16]
c0de347e:	b002      	add	sp, #8
c0de3480:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3484 <roinput_add_uint32>:
c0de3484:	b580      	push	{r7, lr}
c0de3486:	b082      	sub	sp, #8
c0de3488:	2200      	movs	r2, #0
c0de348a:	ab01      	add	r3, sp, #4
c0de348c:	fa21 fc02 	lsr.w	ip, r1, r2
c0de3490:	3208      	adds	r2, #8
c0de3492:	2a20      	cmp	r2, #32
c0de3494:	f803 cb01 	strb.w	ip, [r3], #1
c0de3498:	d1f8      	bne.n	c0de348c <roinput_add_uint32+0x8>
c0de349a:	a901      	add	r1, sp, #4
c0de349c:	2204      	movs	r2, #4
c0de349e:	f7ff ffc5 	bl	c0de342c <roinput_add_bytes>
c0de34a2:	b002      	add	sp, #8
c0de34a4:	bd80      	pop	{r7, pc}
	...

c0de34a8 <roinput_add_uint64>:
c0de34a8:	b510      	push	{r4, lr}
c0de34aa:	b082      	sub	sp, #8
c0de34ac:	2100      	movs	r1, #0
c0de34ae:	46ec      	mov	ip, sp
c0de34b0:	f1c1 0420 	rsb	r4, r1, #32
c0de34b4:	fa22 fe01 	lsr.w	lr, r2, r1
c0de34b8:	fa03 f404 	lsl.w	r4, r3, r4
c0de34bc:	ea4e 0e04 	orr.w	lr, lr, r4
c0de34c0:	f1b1 0420 	subs.w	r4, r1, #32
c0de34c4:	f101 0108 	add.w	r1, r1, #8
c0de34c8:	bf58      	it	pl
c0de34ca:	fa23 fe04 	lsrpl.w	lr, r3, r4
c0de34ce:	2940      	cmp	r1, #64	; 0x40
c0de34d0:	f80c eb01 	strb.w	lr, [ip], #1
c0de34d4:	d1ec      	bne.n	c0de34b0 <roinput_add_uint64+0x8>
c0de34d6:	4669      	mov	r1, sp
c0de34d8:	2208      	movs	r2, #8
c0de34da:	f7ff ffa7 	bl	c0de342c <roinput_add_bytes>
c0de34de:	b002      	add	sp, #8
c0de34e0:	bd10      	pop	{r4, pc}
	...

c0de34e4 <roinput_to_bytes>:
c0de34e4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de34e8:	4688      	mov	r8, r1
c0de34ea:	6889      	ldr	r1, [r1, #8]
c0de34ec:	4682      	mov	sl, r0
c0de34ee:	f04f 0500 	mov.w	r5, #0
c0de34f2:	b1d9      	cbz	r1, c0de352c <roinput_to_bytes+0x48>
c0de34f4:	f04f 0b00 	mov.w	fp, #0
c0de34f8:	f8d8 0000 	ldr.w	r0, [r8]
c0de34fc:	2600      	movs	r6, #0
c0de34fe:	eb00 174b 	add.w	r7, r0, fp, lsl #5
c0de3502:	bf00      	nop
c0de3504:	4638      	mov	r0, r7
c0de3506:	4631      	mov	r1, r6
c0de3508:	19ac      	adds	r4, r5, r6
c0de350a:	f002 fb60 	bl	c0de5bce <packed_bit_array_get>
c0de350e:	4602      	mov	r2, r0
c0de3510:	4650      	mov	r0, sl
c0de3512:	4621      	mov	r1, r4
c0de3514:	f002 fb4a 	bl	c0de5bac <packed_bit_array_set>
c0de3518:	3601      	adds	r6, #1
c0de351a:	2eff      	cmp	r6, #255	; 0xff
c0de351c:	d1f2      	bne.n	c0de3504 <roinput_to_bytes+0x20>
c0de351e:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de3522:	f10b 0b01 	add.w	fp, fp, #1
c0de3526:	4583      	cmp	fp, r0
c0de3528:	4435      	add	r5, r6
c0de352a:	d3e5      	bcc.n	c0de34f8 <roinput_to_bytes+0x14>
c0de352c:	f8d8 0010 	ldr.w	r0, [r8, #16]
c0de3530:	b180      	cbz	r0, c0de3554 <roinput_to_bytes+0x70>
c0de3532:	2600      	movs	r6, #0
c0de3534:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de3538:	4631      	mov	r1, r6
c0de353a:	19ac      	adds	r4, r5, r6
c0de353c:	f002 fb47 	bl	c0de5bce <packed_bit_array_get>
c0de3540:	4602      	mov	r2, r0
c0de3542:	4650      	mov	r0, sl
c0de3544:	4621      	mov	r1, r4
c0de3546:	f002 fb31 	bl	c0de5bac <packed_bit_array_set>
c0de354a:	f8d8 0010 	ldr.w	r0, [r8, #16]
c0de354e:	3601      	adds	r6, #1
c0de3550:	4286      	cmp	r6, r0
c0de3552:	d3ef      	bcc.n	c0de3534 <roinput_to_bytes+0x50>
c0de3554:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3558 <roinput_to_fields>:
c0de3558:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de355c:	b088      	sub	sp, #32
c0de355e:	4614      	mov	r4, r2
c0de3560:	6892      	ldr	r2, [r2, #8]
c0de3562:	428a      	cmp	r2, r1
c0de3564:	d902      	bls.n	c0de356c <roinput_to_fields+0x14>
c0de3566:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
c0de356a:	e049      	b.n	c0de3600 <roinput_to_fields+0xa8>
c0de356c:	b1a2      	cbz	r2, c0de3598 <roinput_to_fields+0x40>
c0de356e:	2600      	movs	r6, #0
c0de3570:	4602      	mov	r2, r0
c0de3572:	2300      	movs	r3, #0
c0de3574:	271f      	movs	r7, #31
c0de3576:	4631      	mov	r1, r6
c0de3578:	6825      	ldr	r5, [r4, #0]
c0de357a:	5c6d      	ldrb	r5, [r5, r1]
c0de357c:	3101      	adds	r1, #1
c0de357e:	55d5      	strb	r5, [r2, r7]
c0de3580:	3f01      	subs	r7, #1
c0de3582:	1c7d      	adds	r5, r7, #1
c0de3584:	d1f8      	bne.n	c0de3578 <roinput_to_fields+0x20>
c0de3586:	f8d4 8008 	ldr.w	r8, [r4, #8]
c0de358a:	3301      	adds	r3, #1
c0de358c:	3620      	adds	r6, #32
c0de358e:	4543      	cmp	r3, r8
c0de3590:	f102 0220 	add.w	r2, r2, #32
c0de3594:	d3ee      	bcc.n	c0de3574 <roinput_to_fields+0x1c>
c0de3596:	e001      	b.n	c0de359c <roinput_to_fields+0x44>
c0de3598:	f04f 0800 	mov.w	r8, #0
c0de359c:	6927      	ldr	r7, [r4, #16]
c0de359e:	b37f      	cbz	r7, c0de3600 <roinput_to_fields+0xa8>
c0de35a0:	eb00 1548 	add.w	r5, r0, r8, lsl #5
c0de35a4:	f04f 0b00 	mov.w	fp, #0
c0de35a8:	46ea      	mov	sl, sp
c0de35aa:	bf00      	nop
c0de35ac:	4650      	mov	r0, sl
c0de35ae:	2120      	movs	r1, #32
c0de35b0:	f003 fbd6 	bl	c0de6d60 <__aeabi_memclr>
c0de35b4:	eba7 060b 	sub.w	r6, r7, fp
c0de35b8:	2efe      	cmp	r6, #254	; 0xfe
c0de35ba:	bf28      	it	cs
c0de35bc:	26fe      	movcs	r6, #254	; 0xfe
c0de35be:	b176      	cbz	r6, c0de35de <roinput_to_fields+0x86>
c0de35c0:	2700      	movs	r7, #0
c0de35c2:	bf00      	nop
c0de35c4:	6860      	ldr	r0, [r4, #4]
c0de35c6:	eb0b 0107 	add.w	r1, fp, r7
c0de35ca:	f002 fb00 	bl	c0de5bce <packed_bit_array_get>
c0de35ce:	4602      	mov	r2, r0
c0de35d0:	4650      	mov	r0, sl
c0de35d2:	4639      	mov	r1, r7
c0de35d4:	f002 faea 	bl	c0de5bac <packed_bit_array_set>
c0de35d8:	3701      	adds	r7, #1
c0de35da:	42be      	cmp	r6, r7
c0de35dc:	d1f2      	bne.n	c0de35c4 <roinput_to_fields+0x6c>
c0de35de:	201f      	movs	r0, #31
c0de35e0:	4651      	mov	r1, sl
c0de35e2:	bf00      	nop
c0de35e4:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de35e8:	542a      	strb	r2, [r5, r0]
c0de35ea:	3801      	subs	r0, #1
c0de35ec:	1c42      	adds	r2, r0, #1
c0de35ee:	d1f9      	bne.n	c0de35e4 <roinput_to_fields+0x8c>
c0de35f0:	6927      	ldr	r7, [r4, #16]
c0de35f2:	44b3      	add	fp, r6
c0de35f4:	f108 0801 	add.w	r8, r8, #1
c0de35f8:	455f      	cmp	r7, fp
c0de35fa:	f105 0520 	add.w	r5, r5, #32
c0de35fe:	d8d5      	bhi.n	c0de35ac <roinput_to_fields+0x54>
c0de3600:	4640      	mov	r0, r8
c0de3602:	b008      	add	sp, #32
c0de3604:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3608 <roinput_derive_message>:
c0de3608:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de360c:	b0ca      	sub	sp, #296	; 0x128
c0de360e:	468b      	mov	fp, r1
c0de3610:	9952      	ldr	r1, [sp, #328]	; 0x148
c0de3612:	4682      	mov	sl, r0
c0de3614:	a821      	add	r0, sp, #132	; 0x84
c0de3616:	f88d 1127 	strb.w	r1, [sp, #295]	; 0x127
c0de361a:	9000      	str	r0, [sp, #0]
c0de361c:	a806      	add	r0, sp, #24
c0de361e:	68d9      	ldr	r1, [r3, #12]
c0de3620:	9001      	str	r0, [sp, #4]
c0de3622:	2005      	movs	r0, #5
c0de3624:	9003      	str	r0, [sp, #12]
c0de3626:	2903      	cmp	r1, #3
c0de3628:	f04f 006c 	mov.w	r0, #108	; 0x6c
c0de362c:	9005      	str	r0, [sp, #20]
c0de362e:	d80a      	bhi.n	c0de3646 <roinput_derive_message+0x3e>
c0de3630:	6958      	ldr	r0, [r3, #20]
c0de3632:	461f      	mov	r7, r3
c0de3634:	284b      	cmp	r0, #75	; 0x4b
c0de3636:	d806      	bhi.n	c0de3646 <roinput_derive_message+0x3e>
c0de3638:	68bc      	ldr	r4, [r7, #8]
c0de363a:	2c05      	cmp	r4, #5
c0de363c:	d803      	bhi.n	c0de3646 <roinput_derive_message+0x3e>
c0de363e:	693d      	ldr	r5, [r7, #16]
c0de3640:	f5b5 7f58 	cmp.w	r5, #864	; 0x360
c0de3644:	d905      	bls.n	c0de3652 <roinput_derive_message+0x4a>
c0de3646:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
c0de364a:	4628      	mov	r0, r5
c0de364c:	b04a      	add	sp, #296	; 0x128
c0de364e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3652:	6839      	ldr	r1, [r7, #0]
c0de3654:	f10d 0884 	add.w	r8, sp, #132	; 0x84
c0de3658:	4616      	mov	r6, r2
c0de365a:	0162      	lsls	r2, r4, #5
c0de365c:	4640      	mov	r0, r8
c0de365e:	f003 fb82 	bl	c0de6d66 <__aeabi_memcpy>
c0de3662:	6879      	ldr	r1, [r7, #4]
c0de3664:	1de8      	adds	r0, r5, #7
c0de3666:	08c2      	lsrs	r2, r0, #3
c0de3668:	a806      	add	r0, sp, #24
c0de366a:	f003 fb7c 	bl	c0de6d66 <__aeabi_memcpy>
c0de366e:	2c05      	cmp	r4, #5
c0de3670:	9402      	str	r4, [sp, #8]
c0de3672:	9504      	str	r5, [sp, #16]
c0de3674:	d018      	beq.n	c0de36a8 <roinput_derive_message+0xa0>
c0de3676:	eb08 1044 	add.w	r0, r8, r4, lsl #5
c0de367a:	211f      	movs	r1, #31
c0de367c:	5c72      	ldrb	r2, [r6, r1]
c0de367e:	3901      	subs	r1, #1
c0de3680:	1c4b      	adds	r3, r1, #1
c0de3682:	f800 2b01 	strb.w	r2, [r0], #1
c0de3686:	d1f9      	bne.n	c0de367c <roinput_derive_message+0x74>
c0de3688:	1c60      	adds	r0, r4, #1
c0de368a:	2805      	cmp	r0, #5
c0de368c:	9002      	str	r0, [sp, #8]
c0de368e:	d00b      	beq.n	c0de36a8 <roinput_derive_message+0xa0>
c0de3690:	eb08 1040 	add.w	r0, r8, r0, lsl #5
c0de3694:	213f      	movs	r1, #63	; 0x3f
c0de3696:	bf00      	nop
c0de3698:	5c72      	ldrb	r2, [r6, r1]
c0de369a:	3901      	subs	r1, #1
c0de369c:	291f      	cmp	r1, #31
c0de369e:	f800 2b01 	strb.w	r2, [r0], #1
c0de36a2:	d1f9      	bne.n	c0de3698 <roinput_derive_message+0x90>
c0de36a4:	1ca0      	adds	r0, r4, #2
c0de36a6:	9002      	str	r0, [sp, #8]
c0de36a8:	f106 0140 	add.w	r1, r6, #64	; 0x40
c0de36ac:	466e      	mov	r6, sp
c0de36ae:	4630      	mov	r0, r6
c0de36b0:	f7ff fe9c 	bl	c0de33ec <roinput_add_scalar>
c0de36b4:	f20d 1127 	addw	r1, sp, #295	; 0x127
c0de36b8:	4630      	mov	r0, r6
c0de36ba:	2201      	movs	r2, #1
c0de36bc:	f7ff feb6 	bl	c0de342c <roinput_add_bytes>
c0de36c0:	9802      	ldr	r0, [sp, #8]
c0de36c2:	9904      	ldr	r1, [sp, #16]
c0de36c4:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
c0de36c8:	4408      	add	r0, r1
c0de36ca:	3007      	adds	r0, #7
c0de36cc:	ebbb 0fd0 	cmp.w	fp, r0, lsr #3
c0de36d0:	d202      	bcs.n	c0de36d8 <roinput_derive_message+0xd0>
c0de36d2:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
c0de36d6:	e004      	b.n	c0de36e2 <roinput_derive_message+0xda>
c0de36d8:	08c5      	lsrs	r5, r0, #3
c0de36da:	4669      	mov	r1, sp
c0de36dc:	4650      	mov	r0, sl
c0de36de:	f7ff ff01 	bl	c0de34e4 <roinput_to_bytes>
c0de36e2:	a806      	add	r0, sp, #24
c0de36e4:	216c      	movs	r1, #108	; 0x6c
c0de36e6:	f003 fb47 	bl	c0de6d78 <explicit_bzero>
c0de36ea:	e7ae      	b.n	c0de364a <roinput_derive_message+0x42>

c0de36ec <roinput_hash_message>:
c0de36ec:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de36f0:	b0ca      	sub	sp, #296	; 0x128
c0de36f2:	9c52      	ldr	r4, [sp, #328]	; 0x148
c0de36f4:	4605      	mov	r5, r0
c0de36f6:	a81a      	add	r0, sp, #104	; 0x68
c0de36f8:	468b      	mov	fp, r1
c0de36fa:	9001      	str	r0, [sp, #4]
c0de36fc:	a807      	add	r0, sp, #28
c0de36fe:	68e1      	ldr	r1, [r4, #12]
c0de3700:	9002      	str	r0, [sp, #8]
c0de3702:	2006      	movs	r0, #6
c0de3704:	9004      	str	r0, [sp, #16]
c0de3706:	2903      	cmp	r1, #3
c0de3708:	f04f 004b 	mov.w	r0, #75	; 0x4b
c0de370c:	9006      	str	r0, [sp, #24]
c0de370e:	d80c      	bhi.n	c0de372a <roinput_hash_message+0x3e>
c0de3710:	6960      	ldr	r0, [r4, #20]
c0de3712:	284b      	cmp	r0, #75	; 0x4b
c0de3714:	d809      	bhi.n	c0de372a <roinput_hash_message+0x3e>
c0de3716:	f8d4 a008 	ldr.w	sl, [r4, #8]
c0de371a:	f1ba 0f06 	cmp.w	sl, #6
c0de371e:	d804      	bhi.n	c0de372a <roinput_hash_message+0x3e>
c0de3720:	f8d4 8010 	ldr.w	r8, [r4, #16]
c0de3724:	f5b8 7f16 	cmp.w	r8, #600	; 0x258
c0de3728:	d904      	bls.n	c0de3734 <roinput_hash_message+0x48>
c0de372a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
c0de372e:	b04a      	add	sp, #296	; 0x128
c0de3730:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3734:	6821      	ldr	r1, [r4, #0]
c0de3736:	4617      	mov	r7, r2
c0de3738:	ea4f 124a 	mov.w	r2, sl, lsl #5
c0de373c:	a81a      	add	r0, sp, #104	; 0x68
c0de373e:	461e      	mov	r6, r3
c0de3740:	f003 fb11 	bl	c0de6d66 <__aeabi_memcpy>
c0de3744:	6861      	ldr	r1, [r4, #4]
c0de3746:	f108 0007 	add.w	r0, r8, #7
c0de374a:	08c2      	lsrs	r2, r0, #3
c0de374c:	a807      	add	r0, sp, #28
c0de374e:	f003 fb0a 	bl	c0de6d66 <__aeabi_memcpy>
c0de3752:	f1ba 0f06 	cmp.w	sl, #6
c0de3756:	f8cd a00c 	str.w	sl, [sp, #12]
c0de375a:	f8cd 8014 	str.w	r8, [sp, #20]
c0de375e:	d02c      	beq.n	c0de37ba <roinput_hash_message+0xce>
c0de3760:	a81a      	add	r0, sp, #104	; 0x68
c0de3762:	4604      	mov	r4, r0
c0de3764:	eb00 104a 	add.w	r0, r0, sl, lsl #5
c0de3768:	211f      	movs	r1, #31
c0de376a:	bf00      	nop
c0de376c:	5c7a      	ldrb	r2, [r7, r1]
c0de376e:	3901      	subs	r1, #1
c0de3770:	1c4b      	adds	r3, r1, #1
c0de3772:	f800 2b01 	strb.w	r2, [r0], #1
c0de3776:	d1f9      	bne.n	c0de376c <roinput_hash_message+0x80>
c0de3778:	f10a 0001 	add.w	r0, sl, #1
c0de377c:	2806      	cmp	r0, #6
c0de377e:	9003      	str	r0, [sp, #12]
c0de3780:	d01b      	beq.n	c0de37ba <roinput_hash_message+0xce>
c0de3782:	4621      	mov	r1, r4
c0de3784:	eb04 1040 	add.w	r0, r4, r0, lsl #5
c0de3788:	213f      	movs	r1, #63	; 0x3f
c0de378a:	bf00      	nop
c0de378c:	5c7a      	ldrb	r2, [r7, r1]
c0de378e:	3901      	subs	r1, #1
c0de3790:	291f      	cmp	r1, #31
c0de3792:	f800 2b01 	strb.w	r2, [r0], #1
c0de3796:	d1f9      	bne.n	c0de378c <roinput_hash_message+0xa0>
c0de3798:	f10a 0002 	add.w	r0, sl, #2
c0de379c:	2806      	cmp	r0, #6
c0de379e:	9003      	str	r0, [sp, #12]
c0de37a0:	d00b      	beq.n	c0de37ba <roinput_hash_message+0xce>
c0de37a2:	eb04 1040 	add.w	r0, r4, r0, lsl #5
c0de37a6:	211f      	movs	r1, #31
c0de37a8:	5c72      	ldrb	r2, [r6, r1]
c0de37aa:	3901      	subs	r1, #1
c0de37ac:	1c4b      	adds	r3, r1, #1
c0de37ae:	f800 2b01 	strb.w	r2, [r0], #1
c0de37b2:	d1f9      	bne.n	c0de37a8 <roinput_hash_message+0xbc>
c0de37b4:	f10a 0003 	add.w	r0, sl, #3
c0de37b8:	9003      	str	r0, [sp, #12]
c0de37ba:	aa01      	add	r2, sp, #4
c0de37bc:	4628      	mov	r0, r5
c0de37be:	4659      	mov	r1, fp
c0de37c0:	f7ff feca 	bl	c0de3558 <roinput_to_fields>
c0de37c4:	e7b3      	b.n	c0de372e <roinput_hash_message+0x42>

c0de37c6 <handle_sign_tx>:
c0de37c6:	b510      	push	{r4, lr}
c0de37c8:	4619      	mov	r1, r3
c0de37ca:	9c02      	ldr	r4, [sp, #8]
c0de37cc:	4610      	mov	r0, r2
c0de37ce:	f000 f88b 	bl	c0de38e8 <ui_sign_tx>
c0de37d2:	6820      	ldr	r0, [r4, #0]
c0de37d4:	f040 0010 	orr.w	r0, r0, #16
c0de37d8:	6020      	str	r0, [r4, #0]
c0de37da:	bd10      	pop	{r4, pc}

c0de37dc <ux_sign_tx_done_flow_done_step_init>:
c0de37dc:	b510      	push	{r4, lr}
c0de37de:	4604      	mov	r4, r0
c0de37e0:	f000 f806 	bl	c0de37f0 <sign_transaction>
c0de37e4:	4620      	mov	r0, r4
c0de37e6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de37ea:	f002 bf6f 	b.w	c0de66cc <ux_layout_pb_init>
	...

c0de37f0 <sign_transaction>:
c0de37f0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de37f4:	b0c8      	sub	sp, #288	; 0x120
c0de37f6:	466c      	mov	r4, sp
c0de37f8:	4620      	mov	r0, r4
c0de37fa:	f003 fb03 	bl	c0de6e04 <setjmp>
c0de37fe:	b286      	uxth	r6, r0
c0de3800:	f8ad 002c 	strh.w	r0, [sp, #44]	; 0x2c
c0de3804:	b136      	cbz	r6, c0de3814 <sign_transaction+0x24>
c0de3806:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de3808:	2100      	movs	r1, #0
c0de380a:	f8ad 102c 	strh.w	r1, [sp, #44]	; 0x2c
c0de380e:	f000 f99b 	bl	c0de3b48 <try_context_set>
c0de3812:	e036      	b.n	c0de3882 <sign_transaction+0x92>
c0de3814:	4668      	mov	r0, sp
c0de3816:	f000 f997 	bl	c0de3b48 <try_context_set>
c0de381a:	f8df 80a8 	ldr.w	r8, [pc, #168]	; c0de38c4 <sign_transaction+0xd4>
c0de381e:	ad0c      	add	r5, sp, #48	; 0x30
c0de3820:	eb09 0108 	add.w	r1, r9, r8
c0de3824:	6849      	ldr	r1, [r1, #4]
c0de3826:	900a      	str	r0, [sp, #40]	; 0x28
c0de3828:	4628      	mov	r0, r5
c0de382a:	f7fd fd2d 	bl	c0de1288 <generate_keypair>
c0de382e:	a83a      	add	r0, sp, #232	; 0xe8
c0de3830:	2138      	movs	r1, #56	; 0x38
c0de3832:	462a      	mov	r2, r5
c0de3834:	f7fd fd54 	bl	c0de12e0 <generate_address>
c0de3838:	2800      	cmp	r0, #0
c0de383a:	d040      	beq.n	c0de38be <sign_transaction+0xce>
c0de383c:	4822      	ldr	r0, [pc, #136]	; (c0de38c8 <sign_transaction+0xd8>)
c0de383e:	2238      	movs	r2, #56	; 0x38
c0de3840:	eb09 0100 	add.w	r1, r9, r0
c0de3844:	a83a      	add	r0, sp, #232	; 0xe8
c0de3846:	f003 fa9d 	bl	c0de6d84 <memcmp>
c0de384a:	bbc0      	cbnz	r0, c0de38be <sign_transaction+0xce>
c0de384c:	eb09 0008 	add.w	r0, r9, r8
c0de3850:	f100 01c8 	add.w	r1, r0, #200	; 0xc8
c0de3854:	9124      	str	r1, [sp, #144]	; 0x90
c0de3856:	2103      	movs	r1, #3
c0de3858:	9127      	str	r1, [sp, #156]	; 0x9c
c0de385a:	f500 7194 	add.w	r1, r0, #296	; 0x128
c0de385e:	9125      	str	r1, [sp, #148]	; 0x94
c0de3860:	214b      	movs	r1, #75	; 0x4b
c0de3862:	ad24      	add	r5, sp, #144	; 0x90
c0de3864:	9129      	str	r1, [sp, #164]	; 0xa4
c0de3866:	f100 0108 	add.w	r1, r0, #8
c0de386a:	4628      	mov	r0, r5
c0de386c:	464f      	mov	r7, r9
c0de386e:	f000 f9bb 	bl	c0de3be8 <transaction_to_roinput>
c0de3872:	f819 3008 	ldrb.w	r3, [r9, r8]
c0de3876:	a82a      	add	r0, sp, #168	; 0xa8
c0de3878:	a90c      	add	r1, sp, #48	; 0x30
c0de387a:	462a      	mov	r2, r5
c0de387c:	f7fd fe26 	bl	c0de14cc <sign>
c0de3880:	b1e8      	cbz	r0, c0de38be <sign_transaction+0xce>
c0de3882:	f000 f957 	bl	c0de3b34 <try_context_get>
c0de3886:	42a0      	cmp	r0, r4
c0de3888:	d102      	bne.n	c0de3890 <sign_transaction+0xa0>
c0de388a:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de388c:	f000 f95c 	bl	c0de3b48 <try_context_set>
c0de3890:	a80c      	add	r0, sp, #48	; 0x30
c0de3892:	3040      	adds	r0, #64	; 0x40
c0de3894:	2120      	movs	r1, #32
c0de3896:	f003 fa6f 	bl	c0de6d78 <explicit_bzero>
c0de389a:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
c0de389e:	b978      	cbnz	r0, c0de38c0 <sign_transaction+0xd0>
c0de38a0:	b96e      	cbnz	r6, c0de38be <sign_transaction+0xce>
c0de38a2:	480a      	ldr	r0, [pc, #40]	; (c0de38cc <sign_transaction+0xdc>)
c0de38a4:	2440      	movs	r4, #64	; 0x40
c0de38a6:	4448      	add	r0, r9
c0de38a8:	a92a      	add	r1, sp, #168	; 0xa8
c0de38aa:	4622      	mov	r2, r4
c0de38ac:	f003 fa5b 	bl	c0de6d66 <__aeabi_memcpy>
c0de38b0:	2101      	movs	r1, #1
c0de38b2:	4620      	mov	r0, r4
c0de38b4:	f7fd ff7e 	bl	c0de17b4 <sendResponse>
c0de38b8:	b048      	add	sp, #288	; 0x120
c0de38ba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de38be:	2002      	movs	r0, #2
c0de38c0:	f7fe fc89 	bl	c0de21d6 <os_longjmp>
c0de38c4:	00000600 	.word	0x00000600
c0de38c8:	000004b0 	.word	0x000004b0
c0de38cc:	0000029c 	.word	0x0000029c

c0de38d0 <ux_sign_tx_flow_approve_step_validateinit>:
c0de38d0:	4902      	ldr	r1, [pc, #8]	; (c0de38dc <ux_sign_tx_flow_approve_step_validateinit+0xc>)
c0de38d2:	2000      	movs	r0, #0
c0de38d4:	4479      	add	r1, pc
c0de38d6:	2200      	movs	r2, #0
c0de38d8:	f002 bb84 	b.w	c0de5fe4 <ux_flow_init>
c0de38dc:	0000684c 	.word	0x0000684c

c0de38e0 <ux_sign_tx_flow_reject_step_validateinit>:
c0de38e0:	2000      	movs	r0, #0
c0de38e2:	2100      	movs	r1, #0
c0de38e4:	f7fd bf66 	b.w	c0de17b4 <sendResponse>

c0de38e8 <ui_sign_tx>:
c0de38e8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de38ea:	b081      	sub	sp, #4
c0de38ec:	4d35      	ldr	r5, [pc, #212]	; (c0de39c4 <ui_sign_tx+0xdc>)
c0de38ee:	4c36      	ldr	r4, [pc, #216]	; (c0de39c8 <ui_sign_tx+0xe0>)
c0de38f0:	eb09 0205 	add.w	r2, r9, r5
c0de38f4:	eb09 0304 	add.w	r3, r9, r4
c0de38f8:	f7ff fb82 	bl	c0de3000 <parse_tx>
c0de38fc:	2800      	cmp	r0, #0
c0de38fe:	d05e      	beq.n	c0de39be <ui_sign_tx+0xd6>
c0de3900:	eb09 0005 	add.w	r0, r9, r5
c0de3904:	f890 6173 	ldrb.w	r6, [r0, #371]	; 0x173
c0de3908:	2e04      	cmp	r6, #4
c0de390a:	d016      	beq.n	c0de393a <ui_sign_tx+0x52>
c0de390c:	bb6e      	cbnz	r6, c0de396a <ui_sign_tx+0x82>
c0de390e:	492f      	ldr	r1, [pc, #188]	; (c0de39cc <ui_sign_tx+0xe4>)
c0de3910:	eb09 0704 	add.w	r7, r9, r4
c0de3914:	f207 1031 	addw	r0, r7, #305	; 0x131
c0de3918:	4479      	add	r1, pc
c0de391a:	220b      	movs	r2, #11
c0de391c:	f003 fa23 	bl	c0de6d66 <__aeabi_memcpy>
c0de3920:	482b      	ldr	r0, [pc, #172]	; (c0de39d0 <ui_sign_tx+0xe8>)
c0de3922:	f507 719e 	add.w	r1, r7, #316	; 0x13c
c0de3926:	4478      	add	r0, pc
c0de3928:	c80c      	ldmia	r0!, {r2, r3}
c0de392a:	8800      	ldrh	r0, [r0, #0]
c0de392c:	c10c      	stmia	r1!, {r2, r3}
c0de392e:	8008      	strh	r0, [r1, #0]
c0de3930:	4928      	ldr	r1, [pc, #160]	; (c0de39d4 <ui_sign_tx+0xec>)
c0de3932:	f507 70a3 	add.w	r0, r7, #326	; 0x146
c0de3936:	4479      	add	r1, pc
c0de3938:	e014      	b.n	c0de3964 <ui_sign_tx+0x7c>
c0de393a:	4927      	ldr	r1, [pc, #156]	; (c0de39d8 <ui_sign_tx+0xf0>)
c0de393c:	eb09 0704 	add.w	r7, r9, r4
c0de3940:	f207 1031 	addw	r0, r7, #305	; 0x131
c0de3944:	4479      	add	r1, pc
c0de3946:	220b      	movs	r2, #11
c0de3948:	f003 fa0d 	bl	c0de6d66 <__aeabi_memcpy>
c0de394c:	4823      	ldr	r0, [pc, #140]	; (c0de39dc <ui_sign_tx+0xf4>)
c0de394e:	f507 719e 	add.w	r1, r7, #316	; 0x13c
c0de3952:	4478      	add	r0, pc
c0de3954:	c80c      	ldmia	r0!, {r2, r3}
c0de3956:	8800      	ldrh	r0, [r0, #0]
c0de3958:	c10c      	stmia	r1!, {r2, r3}
c0de395a:	8008      	strh	r0, [r1, #0]
c0de395c:	4920      	ldr	r1, [pc, #128]	; (c0de39e0 <ui_sign_tx+0xf8>)
c0de395e:	f507 70a3 	add.w	r0, r7, #326	; 0x146
c0de3962:	4479      	add	r1, pc
c0de3964:	2209      	movs	r2, #9
c0de3966:	f003 f9fe 	bl	c0de6d66 <__aeabi_memcpy>
c0de396a:	eb09 0105 	add.w	r1, r9, r5
c0de396e:	6c09      	ldr	r1, [r1, #64]	; 0x40
c0de3970:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de3974:	f1b1 31ff 	subs.w	r1, r1, #4294967295	; 0xffffffff
c0de3978:	eb09 0304 	add.w	r3, r9, r4
c0de397c:	f1a0 0001 	sub.w	r0, r0, #1
c0de3980:	f893 3110 	ldrb.w	r3, [r3, #272]	; 0x110
c0de3984:	bf18      	it	ne
c0de3986:	2101      	movne	r1, #1
c0de3988:	4c16      	ldr	r4, [pc, #88]	; (c0de39e4 <ui_sign_tx+0xfc>)
c0de398a:	fab0 f080 	clz	r0, r0
c0de398e:	1f32      	subs	r2, r6, #4
c0de3990:	0940      	lsrs	r0, r0, #5
c0de3992:	fab2 f282 	clz	r2, r2
c0de3996:	447c      	add	r4, pc
c0de3998:	0952      	lsrs	r2, r2, #5
c0de399a:	eb04 1040 	add.w	r0, r4, r0, lsl #5
c0de399e:	eb00 1002 	add.w	r0, r0, r2, lsl #4
c0de39a2:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de39a6:	2b00      	cmp	r3, #0
c0de39a8:	bf18      	it	ne
c0de39aa:	2301      	movne	r3, #1
c0de39ac:	f850 1023 	ldr.w	r1, [r0, r3, lsl #2]
c0de39b0:	2000      	movs	r0, #0
c0de39b2:	2200      	movs	r2, #0
c0de39b4:	b001      	add	sp, #4
c0de39b6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de39ba:	f002 bb13 	b.w	c0de5fe4 <ux_flow_init>
c0de39be:	2002      	movs	r0, #2
c0de39c0:	f7fe fc09 	bl	c0de21d6 <os_longjmp>
c0de39c4:	00000600 	.word	0x00000600
c0de39c8:	000004b0 	.word	0x000004b0
c0de39cc:	00006ccc 	.word	0x00006ccc
c0de39d0:	00006cca 	.word	0x00006cca
c0de39d4:	00006c56 	.word	0x00006c56
c0de39d8:	00006c30 	.word	0x00006c30
c0de39dc:	00006c46 	.word	0x00006c46
c0de39e0:	00006c1e 	.word	0x00006c1e
c0de39e4:	00006c0e 	.word	0x00006c0e

c0de39e8 <SVC_Call>:
c0de39e8:	df01      	svc	1
c0de39ea:	2900      	cmp	r1, #0
c0de39ec:	d100      	bne.n	c0de39f0 <exception>
c0de39ee:	4770      	bx	lr

c0de39f0 <exception>:
c0de39f0:	4608      	mov	r0, r1
c0de39f2:	f7fe fbf0 	bl	c0de21d6 <os_longjmp>

c0de39f6 <get_api_level>:
c0de39f6:	b580      	push	{r7, lr}
c0de39f8:	b082      	sub	sp, #8
c0de39fa:	2000      	movs	r0, #0
c0de39fc:	e9cd 0000 	strd	r0, r0, [sp]
c0de3a00:	4669      	mov	r1, sp
c0de3a02:	2001      	movs	r0, #1
c0de3a04:	f7ff fff0 	bl	c0de39e8 <SVC_Call>
c0de3a08:	b002      	add	sp, #8
c0de3a0a:	bd80      	pop	{r7, pc}

c0de3a0c <halt>:
c0de3a0c:	b580      	push	{r7, lr}
c0de3a0e:	b082      	sub	sp, #8
c0de3a10:	2000      	movs	r0, #0
c0de3a12:	9001      	str	r0, [sp, #4]
c0de3a14:	4669      	mov	r1, sp
c0de3a16:	2002      	movs	r0, #2
c0de3a18:	f7ff ffe6 	bl	c0de39e8 <SVC_Call>
c0de3a1c:	b002      	add	sp, #8
c0de3a1e:	bd80      	pop	{r7, pc}

c0de3a20 <nvm_write>:
c0de3a20:	b580      	push	{r7, lr}
c0de3a22:	b084      	sub	sp, #16
c0de3a24:	ab01      	add	r3, sp, #4
c0de3a26:	c307      	stmia	r3!, {r0, r1, r2}
c0de3a28:	4802      	ldr	r0, [pc, #8]	; (c0de3a34 <nvm_write+0x14>)
c0de3a2a:	a901      	add	r1, sp, #4
c0de3a2c:	f7ff ffdc 	bl	c0de39e8 <SVC_Call>
c0de3a30:	b004      	add	sp, #16
c0de3a32:	bd80      	pop	{r7, pc}
c0de3a34:	03000003 	.word	0x03000003

c0de3a38 <os_perso_isonboarded>:
c0de3a38:	b580      	push	{r7, lr}
c0de3a3a:	b082      	sub	sp, #8
c0de3a3c:	2000      	movs	r0, #0
c0de3a3e:	9001      	str	r0, [sp, #4]
c0de3a40:	4669      	mov	r1, sp
c0de3a42:	209f      	movs	r0, #159	; 0x9f
c0de3a44:	f7ff ffd0 	bl	c0de39e8 <SVC_Call>
c0de3a48:	b2c0      	uxtb	r0, r0
c0de3a4a:	b002      	add	sp, #8
c0de3a4c:	bd80      	pop	{r7, pc}
	...

c0de3a50 <os_perso_derive_node_bip32>:
c0de3a50:	b580      	push	{r7, lr}
c0de3a52:	b086      	sub	sp, #24
c0de3a54:	f10d 0e04 	add.w	lr, sp, #4
c0de3a58:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de3a5c:	e88e 100f 	stmia.w	lr, {r0, r1, r2, r3, ip}
c0de3a60:	4802      	ldr	r0, [pc, #8]	; (c0de3a6c <os_perso_derive_node_bip32+0x1c>)
c0de3a62:	a901      	add	r1, sp, #4
c0de3a64:	f7ff ffc0 	bl	c0de39e8 <SVC_Call>
c0de3a68:	b006      	add	sp, #24
c0de3a6a:	bd80      	pop	{r7, pc}
c0de3a6c:	05000053 	.word	0x05000053

c0de3a70 <os_global_pin_is_validated>:
c0de3a70:	b580      	push	{r7, lr}
c0de3a72:	b082      	sub	sp, #8
c0de3a74:	2000      	movs	r0, #0
c0de3a76:	9001      	str	r0, [sp, #4]
c0de3a78:	4669      	mov	r1, sp
c0de3a7a:	20a0      	movs	r0, #160	; 0xa0
c0de3a7c:	f7ff ffb4 	bl	c0de39e8 <SVC_Call>
c0de3a80:	b2c0      	uxtb	r0, r0
c0de3a82:	b002      	add	sp, #8
c0de3a84:	bd80      	pop	{r7, pc}
	...

c0de3a88 <os_ux>:
c0de3a88:	b580      	push	{r7, lr}
c0de3a8a:	b082      	sub	sp, #8
c0de3a8c:	9000      	str	r0, [sp, #0]
c0de3a8e:	2000      	movs	r0, #0
c0de3a90:	9001      	str	r0, [sp, #4]
c0de3a92:	4803      	ldr	r0, [pc, #12]	; (c0de3aa0 <os_ux+0x18>)
c0de3a94:	4669      	mov	r1, sp
c0de3a96:	f7ff ffa7 	bl	c0de39e8 <SVC_Call>
c0de3a9a:	b002      	add	sp, #8
c0de3a9c:	bd80      	pop	{r7, pc}
c0de3a9e:	bf00      	nop
c0de3aa0:	01000064 	.word	0x01000064

c0de3aa4 <os_flags>:
c0de3aa4:	b580      	push	{r7, lr}
c0de3aa6:	b082      	sub	sp, #8
c0de3aa8:	2000      	movs	r0, #0
c0de3aaa:	9001      	str	r0, [sp, #4]
c0de3aac:	4669      	mov	r1, sp
c0de3aae:	206a      	movs	r0, #106	; 0x6a
c0de3ab0:	f7ff ff9a 	bl	c0de39e8 <SVC_Call>
c0de3ab4:	b002      	add	sp, #8
c0de3ab6:	bd80      	pop	{r7, pc}

c0de3ab8 <os_registry_get_current_app_tag>:
c0de3ab8:	b580      	push	{r7, lr}
c0de3aba:	b084      	sub	sp, #16
c0de3abc:	ab01      	add	r3, sp, #4
c0de3abe:	c307      	stmia	r3!, {r0, r1, r2}
c0de3ac0:	4802      	ldr	r0, [pc, #8]	; (c0de3acc <os_registry_get_current_app_tag+0x14>)
c0de3ac2:	a901      	add	r1, sp, #4
c0de3ac4:	f7ff ff90 	bl	c0de39e8 <SVC_Call>
c0de3ac8:	b004      	add	sp, #16
c0de3aca:	bd80      	pop	{r7, pc}
c0de3acc:	03000074 	.word	0x03000074

c0de3ad0 <os_sched_exit>:
c0de3ad0:	b082      	sub	sp, #8
c0de3ad2:	9000      	str	r0, [sp, #0]
c0de3ad4:	2000      	movs	r0, #0
c0de3ad6:	9001      	str	r0, [sp, #4]
c0de3ad8:	4803      	ldr	r0, [pc, #12]	; (c0de3ae8 <os_sched_exit+0x18>)
c0de3ada:	4669      	mov	r1, sp
c0de3adc:	f7ff ff84 	bl	c0de39e8 <SVC_Call>
c0de3ae0:	deff      	udf	#255	; 0xff
c0de3ae2:	bf00      	nop
c0de3ae4:	e7fe      	b.n	c0de3ae4 <os_sched_exit+0x14>
c0de3ae6:	bf00      	nop
c0de3ae8:	0100009a 	.word	0x0100009a

c0de3aec <io_seph_send>:
c0de3aec:	b580      	push	{r7, lr}
c0de3aee:	b082      	sub	sp, #8
c0de3af0:	e9cd 0100 	strd	r0, r1, [sp]
c0de3af4:	4802      	ldr	r0, [pc, #8]	; (c0de3b00 <io_seph_send+0x14>)
c0de3af6:	4669      	mov	r1, sp
c0de3af8:	f7ff ff76 	bl	c0de39e8 <SVC_Call>
c0de3afc:	b002      	add	sp, #8
c0de3afe:	bd80      	pop	{r7, pc}
c0de3b00:	02000083 	.word	0x02000083

c0de3b04 <io_seph_is_status_sent>:
c0de3b04:	b580      	push	{r7, lr}
c0de3b06:	b082      	sub	sp, #8
c0de3b08:	2000      	movs	r0, #0
c0de3b0a:	9001      	str	r0, [sp, #4]
c0de3b0c:	4669      	mov	r1, sp
c0de3b0e:	2084      	movs	r0, #132	; 0x84
c0de3b10:	f7ff ff6a 	bl	c0de39e8 <SVC_Call>
c0de3b14:	b002      	add	sp, #8
c0de3b16:	bd80      	pop	{r7, pc}

c0de3b18 <io_seph_recv>:
c0de3b18:	b580      	push	{r7, lr}
c0de3b1a:	b084      	sub	sp, #16
c0de3b1c:	ab01      	add	r3, sp, #4
c0de3b1e:	c307      	stmia	r3!, {r0, r1, r2}
c0de3b20:	4803      	ldr	r0, [pc, #12]	; (c0de3b30 <io_seph_recv+0x18>)
c0de3b22:	a901      	add	r1, sp, #4
c0de3b24:	f7ff ff60 	bl	c0de39e8 <SVC_Call>
c0de3b28:	b280      	uxth	r0, r0
c0de3b2a:	b004      	add	sp, #16
c0de3b2c:	bd80      	pop	{r7, pc}
c0de3b2e:	bf00      	nop
c0de3b30:	03000085 	.word	0x03000085

c0de3b34 <try_context_get>:
c0de3b34:	b580      	push	{r7, lr}
c0de3b36:	b082      	sub	sp, #8
c0de3b38:	2000      	movs	r0, #0
c0de3b3a:	9001      	str	r0, [sp, #4]
c0de3b3c:	4669      	mov	r1, sp
c0de3b3e:	2087      	movs	r0, #135	; 0x87
c0de3b40:	f7ff ff52 	bl	c0de39e8 <SVC_Call>
c0de3b44:	b002      	add	sp, #8
c0de3b46:	bd80      	pop	{r7, pc}

c0de3b48 <try_context_set>:
c0de3b48:	b580      	push	{r7, lr}
c0de3b4a:	b082      	sub	sp, #8
c0de3b4c:	9000      	str	r0, [sp, #0]
c0de3b4e:	2000      	movs	r0, #0
c0de3b50:	9001      	str	r0, [sp, #4]
c0de3b52:	4803      	ldr	r0, [pc, #12]	; (c0de3b60 <try_context_set+0x18>)
c0de3b54:	4669      	mov	r1, sp
c0de3b56:	f7ff ff47 	bl	c0de39e8 <SVC_Call>
c0de3b5a:	b002      	add	sp, #8
c0de3b5c:	bd80      	pop	{r7, pc}
c0de3b5e:	bf00      	nop
c0de3b60:	0100010b 	.word	0x0100010b

c0de3b64 <os_sched_last_status>:
c0de3b64:	b580      	push	{r7, lr}
c0de3b66:	b082      	sub	sp, #8
c0de3b68:	9000      	str	r0, [sp, #0]
c0de3b6a:	2000      	movs	r0, #0
c0de3b6c:	9001      	str	r0, [sp, #4]
c0de3b6e:	4803      	ldr	r0, [pc, #12]	; (c0de3b7c <os_sched_last_status+0x18>)
c0de3b70:	4669      	mov	r1, sp
c0de3b72:	f7ff ff39 	bl	c0de39e8 <SVC_Call>
c0de3b76:	b2c0      	uxtb	r0, r0
c0de3b78:	b002      	add	sp, #8
c0de3b7a:	bd80      	pop	{r7, pc}
c0de3b7c:	0100009c 	.word	0x0100009c

c0de3b80 <screen_update>:
c0de3b80:	b580      	push	{r7, lr}
c0de3b82:	b082      	sub	sp, #8
c0de3b84:	2000      	movs	r0, #0
c0de3b86:	9001      	str	r0, [sp, #4]
c0de3b88:	4669      	mov	r1, sp
c0de3b8a:	207a      	movs	r0, #122	; 0x7a
c0de3b8c:	f7ff ff2c 	bl	c0de39e8 <SVC_Call>
c0de3b90:	b002      	add	sp, #8
c0de3b92:	bd80      	pop	{r7, pc}

c0de3b94 <bagl_hal_draw_bitmap_within_rect>:
c0de3b94:	b570      	push	{r4, r5, r6, lr}
c0de3b96:	b08a      	sub	sp, #40	; 0x28
c0de3b98:	f8dd c048 	ldr.w	ip, [sp, #72]	; 0x48
c0de3b9c:	e9dd 4e10 	ldrd	r4, lr, [sp, #64]	; 0x40
c0de3ba0:	e9dd 650e 	ldrd	r6, r5, [sp, #56]	; 0x38
c0de3ba4:	9001      	str	r0, [sp, #4]
c0de3ba6:	4807      	ldr	r0, [pc, #28]	; (c0de3bc4 <bagl_hal_draw_bitmap_within_rect+0x30>)
c0de3ba8:	9102      	str	r1, [sp, #8]
c0de3baa:	a901      	add	r1, sp, #4
c0de3bac:	9203      	str	r2, [sp, #12]
c0de3bae:	9304      	str	r3, [sp, #16]
c0de3bb0:	9605      	str	r6, [sp, #20]
c0de3bb2:	e9cd 5406 	strd	r5, r4, [sp, #24]
c0de3bb6:	e9cd ec08 	strd	lr, ip, [sp, #32]
c0de3bba:	f7ff ff15 	bl	c0de39e8 <SVC_Call>
c0de3bbe:	b00a      	add	sp, #40	; 0x28
c0de3bc0:	bd70      	pop	{r4, r5, r6, pc}
c0de3bc2:	bf00      	nop
c0de3bc4:	0900007c 	.word	0x0900007c

c0de3bc8 <bagl_hal_draw_rect>:
c0de3bc8:	b580      	push	{r7, lr}
c0de3bca:	b086      	sub	sp, #24
c0de3bcc:	f10d 0e04 	add.w	lr, sp, #4
c0de3bd0:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de3bd4:	e88e 100f 	stmia.w	lr, {r0, r1, r2, r3, ip}
c0de3bd8:	4802      	ldr	r0, [pc, #8]	; (c0de3be4 <bagl_hal_draw_rect+0x1c>)
c0de3bda:	a901      	add	r1, sp, #4
c0de3bdc:	f7ff ff04 	bl	c0de39e8 <SVC_Call>
c0de3be0:	b006      	add	sp, #24
c0de3be2:	bd80      	pop	{r7, pc}
c0de3be4:	0500007d 	.word	0x0500007d

c0de3be8 <transaction_to_roinput>:
c0de3be8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3bea:	b081      	sub	sp, #4
c0de3bec:	460d      	mov	r5, r1
c0de3bee:	2600      	movs	r6, #0
c0de3bf0:	3110      	adds	r1, #16
c0de3bf2:	4604      	mov	r4, r0
c0de3bf4:	6086      	str	r6, [r0, #8]
c0de3bf6:	6106      	str	r6, [r0, #16]
c0de3bf8:	f7ff fbc8 	bl	c0de338c <roinput_add_field>
c0de3bfc:	f105 0161 	add.w	r1, r5, #97	; 0x61
c0de3c00:	4620      	mov	r0, r4
c0de3c02:	f7ff fbc3 	bl	c0de338c <roinput_add_field>
c0de3c06:	f105 0182 	add.w	r1, r5, #130	; 0x82
c0de3c0a:	4620      	mov	r0, r4
c0de3c0c:	f7ff fbbe 	bl	c0de338c <roinput_add_field>
c0de3c10:	e9d5 2300 	ldrd	r2, r3, [r5]
c0de3c14:	4620      	mov	r0, r4
c0de3c16:	f7ff fc47 	bl	c0de34a8 <roinput_add_uint64>
c0de3c1a:	e9d5 2302 	ldrd	r2, r3, [r5, #8]
c0de3c1e:	4620      	mov	r0, r4
c0de3c20:	f7ff fc42 	bl	c0de34a8 <roinput_add_uint64>
c0de3c24:	f895 1030 	ldrb.w	r1, [r5, #48]	; 0x30
c0de3c28:	4620      	mov	r0, r4
c0de3c2a:	f7ff fbcd 	bl	c0de33c8 <roinput_add_bit>
c0de3c2e:	6b69      	ldr	r1, [r5, #52]	; 0x34
c0de3c30:	4620      	mov	r0, r4
c0de3c32:	f7ff fc27 	bl	c0de3484 <roinput_add_uint32>
c0de3c36:	6ba9      	ldr	r1, [r5, #56]	; 0x38
c0de3c38:	4620      	mov	r0, r4
c0de3c3a:	f7ff fc23 	bl	c0de3484 <roinput_add_uint32>
c0de3c3e:	f105 013c 	add.w	r1, r5, #60	; 0x3c
c0de3c42:	4620      	mov	r0, r4
c0de3c44:	2222      	movs	r2, #34	; 0x22
c0de3c46:	f7ff fbf1 	bl	c0de342c <roinput_add_bytes>
c0de3c4a:	f105 075e 	add.w	r7, r5, #94	; 0x5e
c0de3c4e:	bf00      	nop
c0de3c50:	5db9      	ldrb	r1, [r7, r6]
c0de3c52:	4620      	mov	r0, r4
c0de3c54:	f7ff fbb8 	bl	c0de33c8 <roinput_add_bit>
c0de3c58:	3601      	adds	r6, #1
c0de3c5a:	2e03      	cmp	r6, #3
c0de3c5c:	d1f8      	bne.n	c0de3c50 <transaction_to_roinput+0x68>
c0de3c5e:	f895 1081 	ldrb.w	r1, [r5, #129]	; 0x81
c0de3c62:	4620      	mov	r0, r4
c0de3c64:	f7ff fbb0 	bl	c0de33c8 <roinput_add_bit>
c0de3c68:	f895 10a2 	ldrb.w	r1, [r5, #162]	; 0xa2
c0de3c6c:	4620      	mov	r0, r4
c0de3c6e:	f7ff fbab 	bl	c0de33c8 <roinput_add_bit>
c0de3c72:	e9d5 232a 	ldrd	r2, r3, [r5, #168]	; 0xa8
c0de3c76:	4620      	mov	r0, r4
c0de3c78:	f7ff fc16 	bl	c0de34a8 <roinput_add_uint64>
c0de3c7c:	e9d5 232c 	ldrd	r2, r3, [r5, #176]	; 0xb0
c0de3c80:	4620      	mov	r0, r4
c0de3c82:	f7ff fc11 	bl	c0de34a8 <roinput_add_uint64>
c0de3c86:	f895 10b8 	ldrb.w	r1, [r5, #184]	; 0xb8
c0de3c8a:	4620      	mov	r0, r4
c0de3c8c:	b001      	add	sp, #4
c0de3c8e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3c92:	f7ff bb99 	b.w	c0de33c8 <roinput_add_bit>
	...

c0de3c98 <transaction_prepare_memo>:
c0de3c98:	b5b0      	push	{r4, r5, r7, lr}
c0de3c9a:	460d      	mov	r5, r1
c0de3c9c:	4604      	mov	r4, r0
c0de3c9e:	4608      	mov	r0, r1
c0de3ca0:	2120      	movs	r1, #32
c0de3ca2:	f003 f8c5 	bl	c0de6e30 <strnlen>
c0de3ca6:	2101      	movs	r1, #1
c0de3ca8:	7021      	strb	r1, [r4, #0]
c0de3caa:	7060      	strb	r0, [r4, #1]
c0de3cac:	b198      	cbz	r0, c0de3cd6 <transaction_prepare_memo+0x3e>
c0de3cae:	1ca1      	adds	r1, r4, #2
c0de3cb0:	4602      	mov	r2, r0
c0de3cb2:	bf00      	nop
c0de3cb4:	f815 3b01 	ldrb.w	r3, [r5], #1
c0de3cb8:	3a01      	subs	r2, #1
c0de3cba:	f801 3b01 	strb.w	r3, [r1], #1
c0de3cbe:	d1f9      	bne.n	c0de3cb4 <transaction_prepare_memo+0x1c>
c0de3cc0:	1c81      	adds	r1, r0, #2
c0de3cc2:	2921      	cmp	r1, #33	; 0x21
c0de3cc4:	bf88      	it	hi
c0de3cc6:	bdb0      	pophi	{r4, r5, r7, pc}
c0de3cc8:	1862      	adds	r2, r4, r1
c0de3cca:	f1c0 0120 	rsb	r1, r0, #32
c0de3cce:	4610      	mov	r0, r2
c0de3cd0:	f003 f846 	bl	c0de6d60 <__aeabi_memclr>
c0de3cd4:	bdb0      	pop	{r4, r5, r7, pc}
c0de3cd6:	2102      	movs	r1, #2
c0de3cd8:	e7f6      	b.n	c0de3cc8 <transaction_prepare_memo+0x30>
	...

c0de3cdc <u2f_apdu_sign>:
c0de3cdc:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de3ce0:	b081      	sub	sp, #4
c0de3ce2:	f8df 80f0 	ldr.w	r8, [pc, #240]	; c0de3dd4 <u2f_apdu_sign+0xf8>
c0de3ce6:	4604      	mov	r4, r0
c0de3ce8:	f819 2008 	ldrb.w	r2, [r9, r8]
c0de3cec:	b112      	cbz	r2, c0de3cf4 <u2f_apdu_sign+0x18>
c0de3cee:	4a3b      	ldr	r2, [pc, #236]	; (c0de3ddc <u2f_apdu_sign+0x100>)
c0de3cf0:	447a      	add	r2, pc
c0de3cf2:	e00b      	b.n	c0de3d0c <u2f_apdu_sign+0x30>
c0de3cf4:	f8dd a020 	ldr.w	sl, [sp, #32]
c0de3cf8:	f1ba 0f45 	cmp.w	sl, #69	; 0x45
c0de3cfc:	d802      	bhi.n	c0de3d04 <u2f_apdu_sign+0x28>
c0de3cfe:	4a38      	ldr	r2, [pc, #224]	; (c0de3de0 <u2f_apdu_sign+0x104>)
c0de3d00:	447a      	add	r2, pc
c0de3d02:	e003      	b.n	c0de3d0c <u2f_apdu_sign+0x30>
c0de3d04:	2907      	cmp	r1, #7
c0de3d06:	d109      	bne.n	c0de3d1c <u2f_apdu_sign+0x40>
c0de3d08:	4a36      	ldr	r2, [pc, #216]	; (c0de3de4 <u2f_apdu_sign+0x108>)
c0de3d0a:	447a      	add	r2, pc
c0de3d0c:	4620      	mov	r0, r4
c0de3d0e:	2183      	movs	r1, #131	; 0x83
c0de3d10:	2302      	movs	r3, #2
c0de3d12:	b001      	add	sp, #4
c0de3d14:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de3d18:	f000 bce2 	b.w	c0de46e0 <u2f_message_reply>
c0de3d1c:	f893 6040 	ldrb.w	r6, [r3, #64]	; 0x40
c0de3d20:	461d      	mov	r5, r3
c0de3d22:	f106 0041 	add.w	r0, r6, #65	; 0x41
c0de3d26:	4550      	cmp	r0, sl
c0de3d28:	d1e9      	bne.n	c0de3cfe <u2f_apdu_sign+0x22>
c0de3d2a:	b1c6      	cbz	r6, c0de3d5e <u2f_apdu_sign+0x82>
c0de3d2c:	2e05      	cmp	r6, #5
c0de3d2e:	d107      	bne.n	c0de3d40 <u2f_apdu_sign+0x64>
c0de3d30:	492d      	ldr	r1, [pc, #180]	; (c0de3de8 <u2f_apdu_sign+0x10c>)
c0de3d32:	f105 0041 	add.w	r0, r5, #65	; 0x41
c0de3d36:	4479      	add	r1, pc
c0de3d38:	2205      	movs	r2, #5
c0de3d3a:	f003 f823 	bl	c0de6d84 <memcmp>
c0de3d3e:	b360      	cbz	r0, c0de3d9a <u2f_apdu_sign+0xbe>
c0de3d40:	492a      	ldr	r1, [pc, #168]	; (c0de3dec <u2f_apdu_sign+0x110>)
c0de3d42:	f105 0041 	add.w	r0, r5, #65	; 0x41
c0de3d46:	4479      	add	r1, pc
c0de3d48:	2200      	movs	r2, #0
c0de3d4a:	bf00      	nop
c0de3d4c:	f002 0303 	and.w	r3, r2, #3
c0de3d50:	5ccb      	ldrb	r3, [r1, r3]
c0de3d52:	5c87      	ldrb	r7, [r0, r2]
c0de3d54:	407b      	eors	r3, r7
c0de3d56:	5483      	strb	r3, [r0, r2]
c0de3d58:	3201      	adds	r2, #1
c0de3d5a:	4296      	cmp	r6, r2
c0de3d5c:	d1f6      	bne.n	c0de3d4c <u2f_apdu_sign+0x70>
c0de3d5e:	f895 0045 	ldrb.w	r0, [r5, #69]	; 0x45
c0de3d62:	3046      	adds	r0, #70	; 0x46
c0de3d64:	4550      	cmp	r0, sl
c0de3d66:	d115      	bne.n	c0de3d94 <u2f_apdu_sign+0xb8>
c0de3d68:	481b      	ldr	r0, [pc, #108]	; (c0de3dd8 <u2f_apdu_sign+0xfc>)
c0de3d6a:	f105 0141 	add.w	r1, r5, #65	; 0x41
c0de3d6e:	4448      	add	r0, r9
c0de3d70:	4632      	mov	r2, r6
c0de3d72:	f002 fffa 	bl	c0de6d6a <__aeabi_memmove>
c0de3d76:	eb09 0008 	add.w	r0, r9, r8
c0de3d7a:	2107      	movs	r1, #7
c0de3d7c:	2209      	movs	r2, #9
c0de3d7e:	8046      	strh	r6, [r0, #2]
c0de3d80:	7181      	strb	r1, [r0, #6]
c0de3d82:	4620      	mov	r0, r4
c0de3d84:	2101      	movs	r1, #1
c0de3d86:	f809 2008 	strb.w	r2, [r9, r8]
c0de3d8a:	b001      	add	sp, #4
c0de3d8c:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de3d90:	f000 bc7a 	b.w	c0de4688 <u2f_message_set_autoreply_wait_user_presence>
c0de3d94:	4a16      	ldr	r2, [pc, #88]	; (c0de3df0 <u2f_apdu_sign+0x114>)
c0de3d96:	447a      	add	r2, pc
c0de3d98:	e7b8      	b.n	c0de3d0c <u2f_apdu_sign+0x30>
c0de3d9a:	480f      	ldr	r0, [pc, #60]	; (c0de3dd8 <u2f_apdu_sign+0xfc>)
c0de3d9c:	2104      	movs	r1, #4
c0de3d9e:	f809 1000 	strb.w	r1, [r9, r0]
c0de3da2:	eb09 0200 	add.w	r2, r9, r0
c0de3da6:	204f      	movs	r0, #79	; 0x4f
c0de3da8:	7090      	strb	r0, [r2, #2]
c0de3daa:	2042      	movs	r0, #66	; 0x42
c0de3dac:	4613      	mov	r3, r2
c0de3dae:	4617      	mov	r7, r2
c0de3db0:	f803 0f01 	strb.w	r0, [r3, #1]!
c0de3db4:	204c      	movs	r0, #76	; 0x4c
c0de3db6:	2690      	movs	r6, #144	; 0x90
c0de3db8:	2100      	movs	r1, #0
c0de3dba:	70d8      	strb	r0, [r3, #3]
c0de3dbc:	2049      	movs	r0, #73	; 0x49
c0de3dbe:	f807 6f05 	strb.w	r6, [r7, #5]!
c0de3dc2:	7191      	strb	r1, [r2, #6]
c0de3dc4:	7098      	strb	r0, [r3, #2]
c0de3dc6:	70f9      	strb	r1, [r7, #3]
c0de3dc8:	4620      	mov	r0, r4
c0de3dca:	2183      	movs	r1, #131	; 0x83
c0de3dcc:	2309      	movs	r3, #9
c0de3dce:	70be      	strb	r6, [r7, #2]
c0de3dd0:	e79f      	b.n	c0de3d12 <u2f_apdu_sign+0x36>
c0de3dd2:	bf00      	nop
c0de3dd4:	000003f0 	.word	0x000003f0
c0de3dd8:	0000029c 	.word	0x0000029c
c0de3ddc:	0000690d 	.word	0x0000690d
c0de3de0:	000068ff 	.word	0x000068ff
c0de3de4:	000068f7 	.word	0x000068f7
c0de3de8:	000068cd 	.word	0x000068cd
c0de3dec:	000031a8 	.word	0x000031a8
c0de3df0:	00006873 	.word	0x00006873

c0de3df4 <u2f_handle_cmd_init>:
c0de3df4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3df8:	b082      	sub	sp, #8
c0de3dfa:	4604      	mov	r4, r0
c0de3dfc:	4618      	mov	r0, r3
c0de3dfe:	469a      	mov	sl, r3
c0de3e00:	460f      	mov	r7, r1
c0de3e02:	f000 fc31 	bl	c0de4668 <u2f_is_channel_broadcast>
c0de3e06:	9401      	str	r4, [sp, #4]
c0de3e08:	b138      	cbz	r0, c0de3e1a <u2f_handle_cmd_init+0x26>
c0de3e0a:	6820      	ldr	r0, [r4, #0]
c0de3e0c:	1c42      	adds	r2, r0, #1
c0de3e0e:	0a11      	lsrs	r1, r2, #8
c0de3e10:	6022      	str	r2, [r4, #0]
c0de3e12:	0e10      	lsrs	r0, r2, #24
c0de3e14:	ea4f 4e12 	mov.w	lr, r2, lsr #16
c0de3e18:	e011      	b.n	c0de3e3e <u2f_handle_cmd_init+0x4a>
c0de3e1a:	f89a 0000 	ldrb.w	r0, [sl]
c0de3e1e:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de3e22:	f89a 2003 	ldrb.w	r2, [sl, #3]
c0de3e26:	f89a 3001 	ldrb.w	r3, [sl, #1]
c0de3e2a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3e2e:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
c0de3e32:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de3e36:	ea4f 2e10 	mov.w	lr, r0, lsr #8
c0de3e3a:	0c01      	lsrs	r1, r0, #16
c0de3e3c:	0e02      	lsrs	r2, r0, #24
c0de3e3e:	9100      	str	r1, [sp, #0]
c0de3e40:	463e      	mov	r6, r7
c0de3e42:	f816 3f04 	ldrb.w	r3, [r6, #4]!
c0de3e46:	f8df 808c 	ldr.w	r8, [pc, #140]	; c0de3ed4 <u2f_handle_cmd_init+0xe0>
c0de3e4a:	78b4      	ldrb	r4, [r6, #2]
c0de3e4c:	f896 b003 	ldrb.w	fp, [r6, #3]
c0de3e50:	783e      	ldrb	r6, [r7, #0]
c0de3e52:	7879      	ldrb	r1, [r7, #1]
c0de3e54:	797d      	ldrb	r5, [r7, #5]
c0de3e56:	f897 c002 	ldrb.w	ip, [r7, #2]
c0de3e5a:	78ff      	ldrb	r7, [r7, #3]
c0de3e5c:	f809 6008 	strb.w	r6, [r9, r8]
c0de3e60:	eb09 0608 	add.w	r6, r9, r8
c0de3e64:	7071      	strb	r1, [r6, #1]
c0de3e66:	4631      	mov	r1, r6
c0de3e68:	f801 3f04 	strb.w	r3, [r1, #4]!
c0de3e6c:	708c      	strb	r4, [r1, #2]
c0de3e6e:	f881 b003 	strb.w	fp, [r1, #3]
c0de3e72:	0611      	lsls	r1, r2, #24
c0de3e74:	9a00      	ldr	r2, [sp, #0]
c0de3e76:	b2c3      	uxtb	r3, r0
c0de3e78:	f362 4117 	bfi	r1, r2, #16, #8
c0de3e7c:	fa5f f28e 	uxtb.w	r2, lr
c0de3e80:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
c0de3e84:	70f7      	strb	r7, [r6, #3]
c0de3e86:	18d7      	adds	r7, r2, r3
c0de3e88:	4632      	mov	r2, r6
c0de3e8a:	f802 0f08 	strb.w	r0, [r2, #8]!
c0de3e8e:	0c08      	lsrs	r0, r1, #16
c0de3e90:	7090      	strb	r0, [r2, #2]
c0de3e92:	0e08      	lsrs	r0, r1, #24
c0de3e94:	70d0      	strb	r0, [r2, #3]
c0de3e96:	2002      	movs	r0, #2
c0de3e98:	7330      	strb	r0, [r6, #12]
c0de3e9a:	2000      	movs	r0, #0
c0de3e9c:	7370      	strb	r0, [r6, #13]
c0de3e9e:	2101      	movs	r1, #1
c0de3ea0:	73f0      	strb	r0, [r6, #15]
c0de3ea2:	7430      	strb	r0, [r6, #16]
c0de3ea4:	4650      	mov	r0, sl
c0de3ea6:	7175      	strb	r5, [r6, #5]
c0de3ea8:	f886 c002 	strb.w	ip, [r6, #2]
c0de3eac:	f886 e009 	strb.w	lr, [r6, #9]
c0de3eb0:	73b1      	strb	r1, [r6, #14]
c0de3eb2:	f000 fbd9 	bl	c0de4668 <u2f_is_channel_broadcast>
c0de3eb6:	2800      	cmp	r0, #0
c0de3eb8:	bf18      	it	ne
c0de3eba:	f04f 37ff 	movne.w	r7, #4294967295	; 0xffffffff
c0de3ebe:	9801      	ldr	r0, [sp, #4]
c0de3ec0:	2186      	movs	r1, #134	; 0x86
c0de3ec2:	4632      	mov	r2, r6
c0de3ec4:	2311      	movs	r3, #17
c0de3ec6:	6047      	str	r7, [r0, #4]
c0de3ec8:	b002      	add	sp, #8
c0de3eca:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3ece:	f000 bc07 	b.w	c0de46e0 <u2f_message_reply>
c0de3ed2:	bf00      	nop
c0de3ed4:	0000029c 	.word	0x0000029c

c0de3ed8 <u2f_handle_cmd_msg>:
c0de3ed8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3eda:	b081      	sub	sp, #4
c0de3edc:	794e      	ldrb	r6, [r1, #5]
c0de3ede:	798d      	ldrb	r5, [r1, #6]
c0de3ee0:	460b      	mov	r3, r1
c0de3ee2:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de3ee6:	f1a2 0609 	sub.w	r6, r2, #9
c0de3eea:	780f      	ldrb	r7, [r1, #0]
c0de3eec:	f891 c001 	ldrb.w	ip, [r1, #1]
c0de3ef0:	7889      	ldrb	r1, [r1, #2]
c0de3ef2:	b2b4      	uxth	r4, r6
c0de3ef4:	42a5      	cmp	r5, r4
c0de3ef6:	46ae      	mov	lr, r5
c0de3ef8:	d00b      	beq.n	c0de3f12 <u2f_handle_cmd_msg+0x3a>
c0de3efa:	3a07      	subs	r2, #7
c0de3efc:	b294      	uxth	r4, r2
c0de3efe:	42a5      	cmp	r5, r4
c0de3f00:	d007      	beq.n	c0de3f12 <u2f_handle_cmd_msg+0x3a>
c0de3f02:	b2f4      	uxtb	r4, r6
c0de3f04:	42a5      	cmp	r5, r4
c0de3f06:	46b6      	mov	lr, r6
c0de3f08:	d003      	beq.n	c0de3f12 <u2f_handle_cmd_msg+0x3a>
c0de3f0a:	b2d6      	uxtb	r6, r2
c0de3f0c:	42b5      	cmp	r5, r6
c0de3f0e:	4696      	mov	lr, r2
c0de3f10:	d129      	bne.n	c0de3f66 <u2f_handle_cmd_msg+0x8e>
c0de3f12:	b147      	cbz	r7, c0de3f26 <u2f_handle_cmd_msg+0x4e>
c0de3f14:	4a1a      	ldr	r2, [pc, #104]	; (c0de3f80 <u2f_handle_cmd_msg+0xa8>)
c0de3f16:	447a      	add	r2, pc
c0de3f18:	2183      	movs	r1, #131	; 0x83
c0de3f1a:	2302      	movs	r3, #2
c0de3f1c:	b001      	add	sp, #4
c0de3f1e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3f22:	f000 bbdd 	b.w	c0de46e0 <u2f_message_reply>
c0de3f26:	f1bc 0f02 	cmp.w	ip, #2
c0de3f2a:	dc0e      	bgt.n	c0de3f4a <u2f_handle_cmd_msg+0x72>
c0de3f2c:	f1bc 0f01 	cmp.w	ip, #1
c0de3f30:	d01c      	beq.n	c0de3f6c <u2f_handle_cmd_msg+0x94>
c0de3f32:	f1bc 0f02 	cmp.w	ip, #2
c0de3f36:	d113      	bne.n	c0de3f60 <u2f_handle_cmd_msg+0x88>
c0de3f38:	3307      	adds	r3, #7
c0de3f3a:	fa1f f78e 	uxth.w	r7, lr
c0de3f3e:	2200      	movs	r2, #0
c0de3f40:	9700      	str	r7, [sp, #0]
c0de3f42:	f7ff fecb 	bl	c0de3cdc <u2f_apdu_sign>
c0de3f46:	b001      	add	sp, #4
c0de3f48:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3f4a:	f1bc 0f03 	cmp.w	ip, #3
c0de3f4e:	d010      	beq.n	c0de3f72 <u2f_handle_cmd_msg+0x9a>
c0de3f50:	f1bc 0fc1 	cmp.w	ip, #193	; 0xc1
c0de3f54:	d104      	bne.n	c0de3f60 <u2f_handle_cmd_msg+0x88>
c0de3f56:	4a0b      	ldr	r2, [pc, #44]	; (c0de3f84 <u2f_handle_cmd_msg+0xac>)
c0de3f58:	2183      	movs	r1, #131	; 0x83
c0de3f5a:	447a      	add	r2, pc
c0de3f5c:	2304      	movs	r3, #4
c0de3f5e:	e7dd      	b.n	c0de3f1c <u2f_handle_cmd_msg+0x44>
c0de3f60:	4a0b      	ldr	r2, [pc, #44]	; (c0de3f90 <u2f_handle_cmd_msg+0xb8>)
c0de3f62:	447a      	add	r2, pc
c0de3f64:	e7d8      	b.n	c0de3f18 <u2f_handle_cmd_msg+0x40>
c0de3f66:	4a05      	ldr	r2, [pc, #20]	; (c0de3f7c <u2f_handle_cmd_msg+0xa4>)
c0de3f68:	447a      	add	r2, pc
c0de3f6a:	e7d5      	b.n	c0de3f18 <u2f_handle_cmd_msg+0x40>
c0de3f6c:	4a06      	ldr	r2, [pc, #24]	; (c0de3f88 <u2f_handle_cmd_msg+0xb0>)
c0de3f6e:	447a      	add	r2, pc
c0de3f70:	e7d2      	b.n	c0de3f18 <u2f_handle_cmd_msg+0x40>
c0de3f72:	4a06      	ldr	r2, [pc, #24]	; (c0de3f8c <u2f_handle_cmd_msg+0xb4>)
c0de3f74:	2183      	movs	r1, #131	; 0x83
c0de3f76:	447a      	add	r2, pc
c0de3f78:	2308      	movs	r3, #8
c0de3f7a:	e7cf      	b.n	c0de3f1c <u2f_handle_cmd_msg+0x44>
c0de3f7c:	00006697 	.word	0x00006697
c0de3f80:	00006701 	.word	0x00006701
c0de3f84:	000066b9 	.word	0x000066b9
c0de3f88:	0000668d 	.word	0x0000668d
c0de3f8c:	00006695 	.word	0x00006695
c0de3f90:	000066b7 	.word	0x000066b7

c0de3f94 <u2f_message_complete>:
c0de3f94:	69c1      	ldr	r1, [r0, #28]
c0de3f96:	780a      	ldrb	r2, [r1, #0]
c0de3f98:	f891 c001 	ldrb.w	ip, [r1, #1]
c0de3f9c:	788b      	ldrb	r3, [r1, #2]
c0de3f9e:	2a81      	cmp	r2, #129	; 0x81
c0de3fa0:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
c0de3fa4:	d009      	beq.n	c0de3fba <u2f_message_complete+0x26>
c0de3fa6:	2a83      	cmp	r2, #131	; 0x83
c0de3fa8:	d00c      	beq.n	c0de3fc4 <u2f_message_complete+0x30>
c0de3faa:	2a86      	cmp	r2, #134	; 0x86
c0de3fac:	bf18      	it	ne
c0de3fae:	4770      	bxne	lr
c0de3fb0:	3103      	adds	r1, #3
c0de3fb2:	1d03      	adds	r3, r0, #4
c0de3fb4:	2200      	movs	r2, #0
c0de3fb6:	f7ff bf1d 	b.w	c0de3df4 <u2f_handle_cmd_init>
c0de3fba:	1cca      	adds	r2, r1, #3
c0de3fbc:	b29b      	uxth	r3, r3
c0de3fbe:	2181      	movs	r1, #129	; 0x81
c0de3fc0:	f000 bb8e 	b.w	c0de46e0 <u2f_message_reply>
c0de3fc4:	3103      	adds	r1, #3
c0de3fc6:	b29a      	uxth	r2, r3
c0de3fc8:	f7ff bf86 	b.w	c0de3ed8 <u2f_handle_cmd_msg>

c0de3fcc <u2f_io_send>:
c0de3fcc:	2a01      	cmp	r2, #1
c0de3fce:	bf18      	it	ne
c0de3fd0:	4770      	bxne	lr
c0de3fd2:	b5b0      	push	{r4, r5, r7, lr}
c0de3fd4:	460c      	mov	r4, r1
c0de3fd6:	4601      	mov	r1, r0
c0de3fd8:	4809      	ldr	r0, [pc, #36]	; (c0de4000 <u2f_io_send+0x34>)
c0de3fda:	4622      	mov	r2, r4
c0de3fdc:	eb09 0500 	add.w	r5, r9, r0
c0de3fe0:	4628      	mov	r0, r5
c0de3fe2:	f002 fec2 	bl	c0de6d6a <__aeabi_memmove>
c0de3fe6:	1928      	adds	r0, r5, r4
c0de3fe8:	f1c4 0140 	rsb	r1, r4, #64	; 0x40
c0de3fec:	f002 feb8 	bl	c0de6d60 <__aeabi_memclr>
c0de3ff0:	2081      	movs	r0, #129	; 0x81
c0de3ff2:	4629      	mov	r1, r5
c0de3ff4:	2240      	movs	r2, #64	; 0x40
c0de3ff6:	2300      	movs	r3, #0
c0de3ff8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3ffc:	f7fe b988 	b.w	c0de2310 <io_usb_send_ep>
c0de4000:	0000045c 	.word	0x0000045c

c0de4004 <u2f_transport_init>:
c0de4004:	4603      	mov	r3, r0
c0de4006:	2001      	movs	r0, #1
c0de4008:	6018      	str	r0, [r3, #0]
c0de400a:	2000      	movs	r0, #0
c0de400c:	468c      	mov	ip, r1
c0de400e:	60d9      	str	r1, [r3, #12]
c0de4010:	82d8      	strh	r0, [r3, #22]
c0de4012:	7698      	strb	r0, [r3, #26]
c0de4014:	8558      	strh	r0, [r3, #42]	; 0x2a
c0de4016:	8498      	strh	r0, [r3, #36]	; 0x24
c0de4018:	6218      	str	r0, [r3, #32]
c0de401a:	1d18      	adds	r0, r3, #4
c0de401c:	2104      	movs	r1, #4
c0de401e:	821a      	strh	r2, [r3, #16]
c0de4020:	f8c3 c01c 	str.w	ip, [r3, #28]
c0de4024:	f7fd bafe 	b.w	c0de1624 <cx_rng_no_throw>

c0de4028 <u2f_transport_sent>:
c0de4028:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de402c:	b081      	sub	sp, #4
c0de402e:	4604      	mov	r4, r0
c0de4030:	f890 002a 	ldrb.w	r0, [r0, #42]	; 0x2a
c0de4034:	460d      	mov	r5, r1
c0de4036:	b160      	cbz	r0, c0de4052 <u2f_transport_sent+0x2a>
c0de4038:	2801      	cmp	r0, #1
c0de403a:	d006      	beq.n	c0de404a <u2f_transport_sent+0x22>
c0de403c:	f894 0025 	ldrb.w	r0, [r4, #37]	; 0x25
c0de4040:	2806      	cmp	r0, #6
c0de4042:	d102      	bne.n	c0de404a <u2f_transport_sent+0x22>
c0de4044:	f894 002b 	ldrb.w	r0, [r4, #43]	; 0x2b
c0de4048:	b118      	cbz	r0, c0de4052 <u2f_transport_sent+0x2a>
c0de404a:	2000      	movs	r0, #0
c0de404c:	f884 002b 	strb.w	r0, [r4, #43]	; 0x2b
c0de4050:	e03a      	b.n	c0de40c8 <u2f_transport_sent+0xa0>
c0de4052:	4620      	mov	r0, r4
c0de4054:	f810 1f20 	ldrb.w	r1, [r0, #32]!
c0de4058:	2200      	movs	r2, #0
c0de405a:	3903      	subs	r1, #3
c0de405c:	2901      	cmp	r1, #1
c0de405e:	72c2      	strb	r2, [r0, #11]
c0de4060:	d832      	bhi.n	c0de40c8 <u2f_transport_sent+0xa0>
c0de4062:	8ae2      	ldrh	r2, [r4, #22]
c0de4064:	8b23      	ldrh	r3, [r4, #24]
c0de4066:	4293      	cmp	r3, r2
c0de4068:	d91e      	bls.n	c0de40a8 <u2f_transport_sent+0x80>
c0de406a:	7ea1      	ldrb	r1, [r4, #26]
c0de406c:	2001      	movs	r0, #1
c0de406e:	2900      	cmp	r1, #0
c0de4070:	bf08      	it	eq
c0de4072:	2003      	moveq	r0, #3
c0de4074:	1a9e      	subs	r6, r3, r2
c0de4076:	2220      	movs	r2, #32
c0de4078:	2d01      	cmp	r5, #1
c0de407a:	bf08      	it	eq
c0de407c:	3004      	addeq	r0, #4
c0de407e:	bf08      	it	eq
c0de4080:	2240      	moveq	r2, #64	; 0x40
c0de4082:	1a12      	subs	r2, r2, r0
c0de4084:	4296      	cmp	r6, r2
c0de4086:	bfc8      	it	gt
c0de4088:	4616      	movgt	r6, r2
c0de408a:	2d01      	cmp	r5, #1
c0de408c:	d11f      	bne.n	c0de40ce <u2f_transport_sent+0xa6>
c0de408e:	6862      	ldr	r2, [r4, #4]
c0de4090:	4b28      	ldr	r3, [pc, #160]	; (c0de4134 <u2f_transport_sent+0x10c>)
c0de4092:	0e17      	lsrs	r7, r2, #24
c0de4094:	f809 2003 	strb.w	r2, [r9, r3]
c0de4098:	444b      	add	r3, r9
c0de409a:	70df      	strb	r7, [r3, #3]
c0de409c:	0c17      	lsrs	r7, r2, #16
c0de409e:	0a12      	lsrs	r2, r2, #8
c0de40a0:	705a      	strb	r2, [r3, #1]
c0de40a2:	2204      	movs	r2, #4
c0de40a4:	709f      	strb	r7, [r3, #2]
c0de40a6:	e013      	b.n	c0de40d0 <u2f_transport_sent+0xa8>
c0de40a8:	d10e      	bne.n	c0de40c8 <u2f_transport_sent+0xa0>
c0de40aa:	2500      	movs	r5, #0
c0de40ac:	6005      	str	r5, [r0, #0]
c0de40ae:	8085      	strh	r5, [r0, #4]
c0de40b0:	68e0      	ldr	r0, [r4, #12]
c0de40b2:	2104      	movs	r1, #4
c0de40b4:	61e0      	str	r0, [r4, #28]
c0de40b6:	1d20      	adds	r0, r4, #4
c0de40b8:	82e5      	strh	r5, [r4, #22]
c0de40ba:	76a5      	strb	r5, [r4, #26]
c0de40bc:	8565      	strh	r5, [r4, #42]	; 0x2a
c0de40be:	f7fd fab1 	bl	c0de1624 <cx_rng_no_throw>
c0de40c2:	481b      	ldr	r0, [pc, #108]	; (c0de4130 <u2f_transport_sent+0x108>)
c0de40c4:	f809 5000 	strb.w	r5, [r9, r0]
c0de40c8:	b001      	add	sp, #4
c0de40ca:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de40ce:	2200      	movs	r2, #0
c0de40d0:	b109      	cbz	r1, c0de40d6 <u2f_transport_sent+0xae>
c0de40d2:	3901      	subs	r1, #1
c0de40d4:	e00a      	b.n	c0de40ec <u2f_transport_sent+0xc4>
c0de40d6:	4917      	ldr	r1, [pc, #92]	; (c0de4134 <u2f_transport_sent+0x10c>)
c0de40d8:	f894 3040 	ldrb.w	r3, [r4, #64]	; 0x40
c0de40dc:	4449      	add	r1, r9
c0de40de:	548b      	strb	r3, [r1, r2]
c0de40e0:	7e63      	ldrb	r3, [r4, #25]
c0de40e2:	f042 0201 	orr.w	r2, r2, #1
c0de40e6:	548b      	strb	r3, [r1, r2]
c0de40e8:	7e21      	ldrb	r1, [r4, #24]
c0de40ea:	3201      	adds	r2, #1
c0de40ec:	f8df 8044 	ldr.w	r8, [pc, #68]	; c0de4134 <u2f_transport_sent+0x10c>
c0de40f0:	eb06 0a00 	add.w	sl, r6, r0
c0de40f4:	eb09 0308 	add.w	r3, r9, r8
c0de40f8:	5499      	strb	r1, [r3, r2]
c0de40fa:	69e1      	ldr	r1, [r4, #28]
c0de40fc:	b139      	cbz	r1, c0de410e <u2f_transport_sent+0xe6>
c0de40fe:	8ae7      	ldrh	r7, [r4, #22]
c0de4100:	eb09 0308 	add.w	r3, r9, r8
c0de4104:	b2b2      	uxth	r2, r6
c0de4106:	4418      	add	r0, r3
c0de4108:	4439      	add	r1, r7
c0de410a:	f002 fe2e 	bl	c0de6d6a <__aeabi_memmove>
c0de410e:	8ae0      	ldrh	r0, [r4, #22]
c0de4110:	7ea1      	ldrb	r1, [r4, #26]
c0de4112:	4430      	add	r0, r6
c0de4114:	1c4b      	adds	r3, r1, #1
c0de4116:	82e0      	strh	r0, [r4, #22]
c0de4118:	eb09 0008 	add.w	r0, r9, r8
c0de411c:	fa1f f18a 	uxth.w	r1, sl
c0de4120:	462a      	mov	r2, r5
c0de4122:	76a3      	strb	r3, [r4, #26]
c0de4124:	b001      	add	sp, #4
c0de4126:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de412a:	f7ff bf4f 	b.w	c0de3fcc <u2f_io_send>
c0de412e:	bf00      	nop
c0de4130:	000003f0 	.word	0x000003f0
c0de4134:	0000045c 	.word	0x0000045c

c0de4138 <u2f_message_repliable>:
c0de4138:	f890 102a 	ldrb.w	r1, [r0, #42]	; 0x2a
c0de413c:	b169      	cbz	r1, c0de415a <u2f_message_repliable+0x22>
c0de413e:	2901      	cmp	r1, #1
c0de4140:	d009      	beq.n	c0de4156 <u2f_message_repliable+0x1e>
c0de4142:	f890 1025 	ldrb.w	r1, [r0, #37]	; 0x25
c0de4146:	2906      	cmp	r1, #6
c0de4148:	d105      	bne.n	c0de4156 <u2f_message_repliable+0x1e>
c0de414a:	f890 002b 	ldrb.w	r0, [r0, #43]	; 0x2b
c0de414e:	fab0 f080 	clz	r0, r0
c0de4152:	0940      	lsrs	r0, r0, #5
c0de4154:	4770      	bx	lr
c0de4156:	2000      	movs	r0, #0
c0de4158:	4770      	bx	lr
c0de415a:	2001      	movs	r0, #1
c0de415c:	4770      	bx	lr
	...

c0de4160 <u2f_transport_receive_fakeChannel>:
c0de4160:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4162:	b081      	sub	sp, #4
c0de4164:	4607      	mov	r7, r0
c0de4166:	f890 0025 	ldrb.w	r0, [r0, #37]	; 0x25
c0de416a:	2805      	cmp	r0, #5
c0de416c:	d101      	bne.n	c0de4172 <u2f_transport_receive_fakeChannel+0x12>
c0de416e:	2500      	movs	r5, #0
c0de4170:	e092      	b.n	c0de4298 <u2f_transport_receive_fakeChannel+0x138>
c0de4172:	788b      	ldrb	r3, [r1, #2]
c0de4174:	78ce      	ldrb	r6, [r1, #3]
c0de4176:	7808      	ldrb	r0, [r1, #0]
c0de4178:	784d      	ldrb	r5, [r1, #1]
c0de417a:	463c      	mov	r4, r7
c0de417c:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de4180:	f814 6f04 	ldrb.w	r6, [r4, #4]!
c0de4184:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de4188:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de418c:	7863      	ldrb	r3, [r4, #1]
c0de418e:	78a5      	ldrb	r5, [r4, #2]
c0de4190:	78e4      	ldrb	r4, [r4, #3]
c0de4192:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de4196:	ea45 2604 	orr.w	r6, r5, r4, lsl #8
c0de419a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
c0de419e:	4283      	cmp	r3, r0
c0de41a0:	d17d      	bne.n	c0de429e <u2f_transport_receive_fakeChannel+0x13e>
c0de41a2:	8c7e      	ldrh	r6, [r7, #34]	; 0x22
c0de41a4:	460b      	mov	r3, r1
c0de41a6:	f813 0f04 	ldrb.w	r0, [r3, #4]!
c0de41aa:	b196      	cbz	r6, c0de41d2 <u2f_transport_receive_fakeChannel+0x72>
c0de41ac:	f897 3024 	ldrb.w	r3, [r7, #36]	; 0x24
c0de41b0:	4298      	cmp	r0, r3
c0de41b2:	d174      	bne.n	c0de429e <u2f_transport_receive_fakeChannel+0x13e>
c0de41b4:	8b3b      	ldrh	r3, [r7, #24]
c0de41b6:	3a05      	subs	r2, #5
c0de41b8:	1b9b      	subs	r3, r3, r6
c0de41ba:	3001      	adds	r0, #1
c0de41bc:	429a      	cmp	r2, r3
c0de41be:	bfb8      	it	lt
c0de41c0:	4613      	movlt	r3, r2
c0de41c2:	f887 0024 	strb.w	r0, [r7, #36]	; 0x24
c0de41c6:	18f0      	adds	r0, r6, r3
c0de41c8:	8478      	strh	r0, [r7, #34]	; 0x22
c0de41ca:	8d38      	ldrh	r0, [r7, #40]	; 0x28
c0de41cc:	b29a      	uxth	r2, r3
c0de41ce:	3105      	adds	r1, #5
c0de41d0:	e02f      	b.n	c0de4232 <u2f_transport_receive_fakeChannel+0xd2>
c0de41d2:	2888      	cmp	r0, #136	; 0x88
c0de41d4:	d117      	bne.n	c0de4206 <u2f_transport_receive_fakeChannel+0xa6>
c0de41d6:	6879      	ldr	r1, [r7, #4]
c0de41d8:	4834      	ldr	r0, [pc, #208]	; (c0de42ac <u2f_transport_receive_fakeChannel+0x14c>)
c0de41da:	0e0a      	lsrs	r2, r1, #24
c0de41dc:	f809 1000 	strb.w	r1, [r9, r0]
c0de41e0:	4448      	add	r0, r9
c0de41e2:	70c2      	strb	r2, [r0, #3]
c0de41e4:	0c0a      	lsrs	r2, r1, #16
c0de41e6:	0a09      	lsrs	r1, r1, #8
c0de41e8:	7041      	strb	r1, [r0, #1]
c0de41ea:	2188      	movs	r1, #136	; 0x88
c0de41ec:	7101      	strb	r1, [r0, #4]
c0de41ee:	2100      	movs	r1, #0
c0de41f0:	2501      	movs	r5, #1
c0de41f2:	7082      	strb	r2, [r0, #2]
c0de41f4:	7141      	strb	r1, [r0, #5]
c0de41f6:	7181      	strb	r1, [r0, #6]
c0de41f8:	2107      	movs	r1, #7
c0de41fa:	2201      	movs	r2, #1
c0de41fc:	f887 502b 	strb.w	r5, [r7, #43]	; 0x2b
c0de4200:	f7ff fee4 	bl	c0de3fcc <u2f_io_send>
c0de4204:	e048      	b.n	c0de4298 <u2f_transport_receive_fakeChannel+0x138>
c0de4206:	2883      	cmp	r0, #131	; 0x83
c0de4208:	d149      	bne.n	c0de429e <u2f_transport_receive_fakeChannel+0x13e>
c0de420a:	7948      	ldrb	r0, [r1, #5]
c0de420c:	7989      	ldrb	r1, [r1, #6]
c0de420e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4212:	1cc1      	adds	r1, r0, #3
c0de4214:	8b38      	ldrh	r0, [r7, #24]
c0de4216:	b289      	uxth	r1, r1
c0de4218:	4281      	cmp	r1, r0
c0de421a:	d140      	bne.n	c0de429e <u2f_transport_receive_fakeChannel+0x13e>
c0de421c:	1f11      	subs	r1, r2, #4
c0de421e:	4281      	cmp	r1, r0
c0de4220:	bfb8      	it	lt
c0de4222:	4608      	movlt	r0, r1
c0de4224:	2100      	movs	r1, #0
c0de4226:	8478      	strh	r0, [r7, #34]	; 0x22
c0de4228:	f887 1024 	strb.w	r1, [r7, #36]	; 0x24
c0de422c:	b282      	uxth	r2, r0
c0de422e:	2000      	movs	r0, #0
c0de4230:	4619      	mov	r1, r3
c0de4232:	f7fd f9d3 	bl	c0de15dc <cx_crc16_update>
c0de4236:	8c79      	ldrh	r1, [r7, #34]	; 0x22
c0de4238:	8b3a      	ldrh	r2, [r7, #24]
c0de423a:	8538      	strh	r0, [r7, #40]	; 0x28
c0de423c:	4291      	cmp	r1, r2
c0de423e:	d201      	bcs.n	c0de4244 <u2f_transport_receive_fakeChannel+0xe4>
c0de4240:	2501      	movs	r5, #1
c0de4242:	e029      	b.n	c0de4298 <u2f_transport_receive_fakeChannel+0x138>
c0de4244:	8cf9      	ldrh	r1, [r7, #38]	; 0x26
c0de4246:	4288      	cmp	r0, r1
c0de4248:	d129      	bne.n	c0de429e <u2f_transport_receive_fakeChannel+0x13e>
c0de424a:	2006      	movs	r0, #6
c0de424c:	f887 0025 	strb.w	r0, [r7, #37]	; 0x25
c0de4250:	f897 002a 	ldrb.w	r0, [r7, #42]	; 0x2a
c0de4254:	2600      	movs	r6, #0
c0de4256:	2801      	cmp	r0, #1
c0de4258:	f04f 0501 	mov.w	r5, #1
c0de425c:	847e      	strh	r6, [r7, #34]	; 0x22
c0de425e:	d11b      	bne.n	c0de4298 <u2f_transport_receive_fakeChannel+0x138>
c0de4260:	6879      	ldr	r1, [r7, #4]
c0de4262:	4812      	ldr	r0, [pc, #72]	; (c0de42ac <u2f_transport_receive_fakeChannel+0x14c>)
c0de4264:	0e0a      	lsrs	r2, r1, #24
c0de4266:	f809 1000 	strb.w	r1, [r9, r0]
c0de426a:	4448      	add	r0, r9
c0de426c:	70c2      	strb	r2, [r0, #3]
c0de426e:	0c0a      	lsrs	r2, r1, #16
c0de4270:	0a09      	lsrs	r1, r1, #8
c0de4272:	7041      	strb	r1, [r0, #1]
c0de4274:	2183      	movs	r1, #131	; 0x83
c0de4276:	7101      	strb	r1, [r0, #4]
c0de4278:	2102      	movs	r1, #2
c0de427a:	7181      	strb	r1, [r0, #6]
c0de427c:	2169      	movs	r1, #105	; 0x69
c0de427e:	71c1      	strb	r1, [r0, #7]
c0de4280:	2185      	movs	r1, #133	; 0x85
c0de4282:	7082      	strb	r2, [r0, #2]
c0de4284:	7201      	strb	r1, [r0, #8]
c0de4286:	2109      	movs	r1, #9
c0de4288:	2201      	movs	r2, #1
c0de428a:	f887 502b 	strb.w	r5, [r7, #43]	; 0x2b
c0de428e:	7146      	strb	r6, [r0, #5]
c0de4290:	f7ff fe9c 	bl	c0de3fcc <u2f_io_send>
c0de4294:	f887 6025 	strb.w	r6, [r7, #37]	; 0x25
c0de4298:	4628      	mov	r0, r5
c0de429a:	b001      	add	sp, #4
c0de429c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de429e:	2005      	movs	r0, #5
c0de42a0:	f887 0025 	strb.w	r0, [r7, #37]	; 0x25
c0de42a4:	2005      	movs	r0, #5
c0de42a6:	f7fd ff96 	bl	c0de21d6 <os_longjmp>
c0de42aa:	bf00      	nop
c0de42ac:	0000045c 	.word	0x0000045c

c0de42b0 <u2f_transport_received>:
c0de42b0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de42b4:	b082      	sub	sp, #8
c0de42b6:	4604      	mov	r4, r0
c0de42b8:	4606      	mov	r6, r0
c0de42ba:	f814 0f20 	ldrb.w	r0, [r4, #32]!
c0de42be:	2803      	cmp	r0, #3
c0de42c0:	f804 3c18 	strb.w	r3, [r4, #-24]
c0de42c4:	f000 80c9 	beq.w	c0de445a <u2f_transport_received+0x1aa>
c0de42c8:	460f      	mov	r7, r1
c0de42ca:	f896 102a 	ldrb.w	r1, [r6, #42]	; 0x2a
c0de42ce:	4692      	mov	sl, r2
c0de42d0:	b151      	cbz	r1, c0de42e8 <u2f_transport_received+0x38>
c0de42d2:	4630      	mov	r0, r6
c0de42d4:	4639      	mov	r1, r7
c0de42d6:	4652      	mov	r2, sl
c0de42d8:	f7ff ff42 	bl	c0de4160 <u2f_transport_receive_fakeChannel>
c0de42dc:	2800      	cmp	r0, #0
c0de42de:	f000 80bc 	beq.w	c0de445a <u2f_transport_received+0x1aa>
c0de42e2:	b002      	add	sp, #8
c0de42e4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de42e8:	461d      	mov	r5, r3
c0de42ea:	2804      	cmp	r0, #4
c0de42ec:	d10b      	bne.n	c0de4306 <u2f_transport_received+0x56>
c0de42ee:	68f1      	ldr	r1, [r6, #12]
c0de42f0:	2000      	movs	r0, #0
c0de42f2:	82f0      	strh	r0, [r6, #22]
c0de42f4:	76b0      	strb	r0, [r6, #26]
c0de42f6:	8570      	strh	r0, [r6, #42]	; 0x2a
c0de42f8:	6020      	str	r0, [r4, #0]
c0de42fa:	80a0      	strh	r0, [r4, #4]
c0de42fc:	61f1      	str	r1, [r6, #28]
c0de42fe:	1d30      	adds	r0, r6, #4
c0de4300:	2104      	movs	r1, #4
c0de4302:	f7fd f98f 	bl	c0de1624 <cx_rng_no_throw>
c0de4306:	1e68      	subs	r0, r5, #1
c0de4308:	fab0 f080 	clz	r0, r0
c0de430c:	0940      	lsrs	r0, r0, #5
c0de430e:	ea4f 0e80 	mov.w	lr, r0, lsl #2
c0de4312:	f10e 0c01 	add.w	ip, lr, #1
c0de4316:	45d4      	cmp	ip, sl
c0de4318:	d876      	bhi.n	c0de4408 <u2f_transport_received+0x158>
c0de431a:	2d01      	cmp	r5, #1
c0de431c:	d130      	bne.n	c0de4380 <u2f_transport_received+0xd0>
c0de431e:	783a      	ldrb	r2, [r7, #0]
c0de4320:	78bb      	ldrb	r3, [r7, #2]
c0de4322:	78f9      	ldrb	r1, [r7, #3]
c0de4324:	7878      	ldrb	r0, [r7, #1]
c0de4326:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de432a:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de432e:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4332:	4633      	mov	r3, r6
c0de4334:	f843 0f04 	str.w	r0, [r3, #4]!
c0de4338:	4698      	mov	r8, r3
c0de433a:	f838 0f12 	ldrh.w	r0, [r8, #18]!
c0de433e:	b338      	cbz	r0, c0de4390 <u2f_transport_received+0xe0>
c0de4340:	7899      	ldrb	r1, [r3, #2]
c0de4342:	78da      	ldrb	r2, [r3, #3]
c0de4344:	f893 b000 	ldrb.w	fp, [r3]
c0de4348:	785b      	ldrb	r3, [r3, #1]
c0de434a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de434e:	4632      	mov	r2, r6
c0de4350:	ea4b 2b03 	orr.w	fp, fp, r3, lsl #8
c0de4354:	f812 3f12 	ldrb.w	r3, [r2, #18]!
c0de4358:	ea4b 4101 	orr.w	r1, fp, r1, lsl #16
c0de435c:	9101      	str	r1, [sp, #4]
c0de435e:	7851      	ldrb	r1, [r2, #1]
c0de4360:	46c3      	mov	fp, r8
c0de4362:	f892 8002 	ldrb.w	r8, [r2, #2]
c0de4366:	78d2      	ldrb	r2, [r2, #3]
c0de4368:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de436c:	ea48 2202 	orr.w	r2, r8, r2, lsl #8
c0de4370:	4603      	mov	r3, r0
c0de4372:	9801      	ldr	r0, [sp, #4]
c0de4374:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4378:	46d8      	mov	r8, fp
c0de437a:	4281      	cmp	r1, r0
c0de437c:	d108      	bne.n	c0de4390 <u2f_transport_received+0xe0>
c0de437e:	e003      	b.n	c0de4388 <u2f_transport_received+0xd8>
c0de4380:	46b0      	mov	r8, r6
c0de4382:	f838 3f16 	ldrh.w	r3, [r8, #22]!
c0de4386:	b11b      	cbz	r3, c0de4390 <u2f_transport_received+0xe0>
c0de4388:	f817 100e 	ldrb.w	r1, [r7, lr]
c0de438c:	2986      	cmp	r1, #134	; 0x86
c0de438e:	d137      	bne.n	c0de4400 <u2f_transport_received+0x150>
c0de4390:	f04e 0003 	orr.w	r0, lr, #3
c0de4394:	4550      	cmp	r0, sl
c0de4396:	d837      	bhi.n	c0de4408 <u2f_transport_received+0x158>
c0de4398:	f917 200e 	ldrsb.w	r2, [r7, lr]
c0de439c:	f1b2 3fff 	cmp.w	r2, #4294967295	; 0xffffffff
c0de43a0:	dc9f      	bgt.n	c0de42e2 <u2f_transport_received+0x32>
c0de43a2:	7824      	ldrb	r4, [r4, #0]
c0de43a4:	2d01      	cmp	r5, #1
c0de43a6:	b2d3      	uxtb	r3, r2
c0de43a8:	d16f      	bne.n	c0de448a <u2f_transport_received+0x1da>
c0de43aa:	2c01      	cmp	r4, #1
c0de43ac:	d170      	bne.n	c0de4490 <u2f_transport_received+0x1e0>
c0de43ae:	4632      	mov	r2, r6
c0de43b0:	f8cd 8004 	str.w	r8, [sp, #4]
c0de43b4:	f812 8f04 	ldrb.w	r8, [r2, #4]!
c0de43b8:	7894      	ldrb	r4, [r2, #2]
c0de43ba:	78d0      	ldrb	r0, [r2, #3]
c0de43bc:	7851      	ldrb	r1, [r2, #1]
c0de43be:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de43c2:	4614      	mov	r4, r2
c0de43c4:	ea48 2801 	orr.w	r8, r8, r1, lsl #8
c0de43c8:	f814 1f0e 	ldrb.w	r1, [r4, #14]!
c0de43cc:	f892 b00f 	ldrb.w	fp, [r2, #15]
c0de43d0:	ea48 4800 	orr.w	r8, r8, r0, lsl #16
c0de43d4:	78a0      	ldrb	r0, [r4, #2]
c0de43d6:	78e4      	ldrb	r4, [r4, #3]
c0de43d8:	ea41 210b 	orr.w	r1, r1, fp, lsl #8
c0de43dc:	ea40 2004 	orr.w	r0, r0, r4, lsl #8
c0de43e0:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de43e4:	ebb8 0400 	subs.w	r4, r8, r0
c0de43e8:	bf18      	it	ne
c0de43ea:	2401      	movne	r4, #1
c0de43ec:	2b86      	cmp	r3, #134	; 0x86
c0de43ee:	bf18      	it	ne
c0de43f0:	2c00      	cmpne	r4, #0
c0de43f2:	f040 8093 	bne.w	c0de451c <u2f_transport_received+0x26c>
c0de43f6:	f8dd 8004 	ldr.w	r8, [sp, #4]
c0de43fa:	2b86      	cmp	r3, #134	; 0x86
c0de43fc:	d048      	beq.n	c0de4490 <u2f_transport_received+0x1e0>
c0de43fe:	e0cd      	b.n	c0de459c <u2f_transport_received+0x2ec>
c0de4400:	f04e 0002 	orr.w	r0, lr, #2
c0de4404:	4550      	cmp	r0, sl
c0de4406:	d902      	bls.n	c0de440e <u2f_transport_received+0x15e>
c0de4408:	4896      	ldr	r0, [pc, #600]	; (c0de4664 <u2f_transport_received+0x3b4>)
c0de440a:	2185      	movs	r1, #133	; 0x85
c0de440c:	e027      	b.n	c0de445e <u2f_transport_received+0x1ae>
c0de440e:	f896 0021 	ldrb.w	r0, [r6, #33]	; 0x21
c0de4412:	42a8      	cmp	r0, r5
c0de4414:	d14a      	bne.n	c0de44ac <u2f_transport_received+0x1fc>
c0de4416:	7820      	ldrb	r0, [r4, #0]
c0de4418:	2801      	cmp	r0, #1
c0de441a:	d16e      	bne.n	c0de44fa <u2f_transport_received+0x24a>
c0de441c:	2d01      	cmp	r5, #1
c0de441e:	f8cd 8004 	str.w	r8, [sp, #4]
c0de4422:	f040 8095 	bne.w	c0de4550 <u2f_transport_received+0x2a0>
c0de4426:	78b8      	ldrb	r0, [r7, #2]
c0de4428:	78fa      	ldrb	r2, [r7, #3]
c0de442a:	f897 8000 	ldrb.w	r8, [r7]
c0de442e:	787c      	ldrb	r4, [r7, #1]
c0de4430:	ea40 2b02 	orr.w	fp, r0, r2, lsl #8
c0de4434:	4632      	mov	r2, r6
c0de4436:	ea48 2004 	orr.w	r0, r8, r4, lsl #8
c0de443a:	f812 4f04 	ldrb.w	r4, [r2, #4]!
c0de443e:	ea40 480b 	orr.w	r8, r0, fp, lsl #16
c0de4442:	f892 b001 	ldrb.w	fp, [r2, #1]
c0de4446:	7890      	ldrb	r0, [r2, #2]
c0de4448:	78d2      	ldrb	r2, [r2, #3]
c0de444a:	ea44 240b 	orr.w	r4, r4, fp, lsl #8
c0de444e:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de4452:	ea44 4000 	orr.w	r0, r4, r0, lsl #16
c0de4456:	4580      	cmp	r8, r0
c0de4458:	d07a      	beq.n	c0de4550 <u2f_transport_received+0x2a0>
c0de445a:	4882      	ldr	r0, [pc, #520]	; (c0de4664 <u2f_transport_received+0x3b4>)
c0de445c:	2106      	movs	r1, #6
c0de445e:	4448      	add	r0, r9
c0de4460:	f800 1f08 	strb.w	r1, [r0, #8]!
c0de4464:	2104      	movs	r1, #4
c0de4466:	f886 1020 	strb.w	r1, [r6, #32]
c0de446a:	2100      	movs	r1, #0
c0de446c:	76b1      	strb	r1, [r6, #26]
c0de446e:	61f0      	str	r0, [r6, #28]
c0de4470:	2001      	movs	r0, #1
c0de4472:	82f1      	strh	r1, [r6, #22]
c0de4474:	8330      	strh	r0, [r6, #24]
c0de4476:	22bf      	movs	r2, #191	; 0xbf
c0de4478:	7a31      	ldrb	r1, [r6, #8]
c0de447a:	4630      	mov	r0, r6
c0de447c:	f886 2040 	strb.w	r2, [r6, #64]	; 0x40
c0de4480:	b002      	add	sp, #8
c0de4482:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4486:	f7ff bdcf 	b.w	c0de4028 <u2f_transport_sent>
c0de448a:	2c01      	cmp	r4, #1
c0de448c:	f000 8086 	beq.w	c0de459c <u2f_transport_received+0x2ec>
c0de4490:	eb07 000c 	add.w	r0, r7, ip
c0de4494:	f817 100c 	ldrb.w	r1, [r7, ip]
c0de4498:	7840      	ldrb	r0, [r0, #1]
c0de449a:	8a34      	ldrh	r4, [r6, #16]
c0de449c:	ea40 2201 	orr.w	r2, r0, r1, lsl #8
c0de44a0:	1ee0      	subs	r0, r4, #3
c0de44a2:	4290      	cmp	r0, r2
c0de44a4:	da05      	bge.n	c0de44b2 <u2f_transport_received+0x202>
c0de44a6:	486f      	ldr	r0, [pc, #444]	; (c0de4664 <u2f_transport_received+0x3b4>)
c0de44a8:	2103      	movs	r1, #3
c0de44aa:	e7d8      	b.n	c0de445e <u2f_transport_received+0x1ae>
c0de44ac:	486d      	ldr	r0, [pc, #436]	; (c0de4664 <u2f_transport_received+0x3b4>)
c0de44ae:	218d      	movs	r1, #141	; 0x8d
c0de44b0:	e7d5      	b.n	c0de445e <u2f_transport_received+0x1ae>
c0de44b2:	2b81      	cmp	r3, #129	; 0x81
c0de44b4:	d004      	beq.n	c0de44c0 <u2f_transport_received+0x210>
c0de44b6:	2b86      	cmp	r3, #134	; 0x86
c0de44b8:	d076      	beq.n	c0de45a8 <u2f_transport_received+0x2f8>
c0de44ba:	2b83      	cmp	r3, #131	; 0x83
c0de44bc:	f040 80ab 	bne.w	c0de4616 <u2f_transport_received+0x366>
c0de44c0:	2d01      	cmp	r5, #1
c0de44c2:	f040 8081 	bne.w	c0de45c8 <u2f_transport_received+0x318>
c0de44c6:	4631      	mov	r1, r6
c0de44c8:	f811 cf04 	ldrb.w	ip, [r1, #4]!
c0de44cc:	784b      	ldrb	r3, [r1, #1]
c0de44ce:	788c      	ldrb	r4, [r1, #2]
c0de44d0:	78c8      	ldrb	r0, [r1, #3]
c0de44d2:	ea4c 2303 	orr.w	r3, ip, r3, lsl #8
c0de44d6:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de44da:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
c0de44de:	3001      	adds	r0, #1
c0de44e0:	f000 80bd 	beq.w	c0de465e <u2f_transport_received+0x3ae>
c0de44e4:	7808      	ldrb	r0, [r1, #0]
c0de44e6:	788b      	ldrb	r3, [r1, #2]
c0de44e8:	78cc      	ldrb	r4, [r1, #3]
c0de44ea:	7849      	ldrb	r1, [r1, #1]
c0de44ec:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de44f0:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de44f4:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de44f8:	e064      	b.n	c0de45c4 <u2f_transport_received+0x314>
c0de44fa:	2d01      	cmp	r5, #1
c0de44fc:	d14e      	bne.n	c0de459c <u2f_transport_received+0x2ec>
c0de44fe:	68f2      	ldr	r2, [r6, #12]
c0de4500:	2000      	movs	r0, #0
c0de4502:	82f0      	strh	r0, [r6, #22]
c0de4504:	76b0      	strb	r0, [r6, #26]
c0de4506:	8570      	strh	r0, [r6, #42]	; 0x2a
c0de4508:	6020      	str	r0, [r4, #0]
c0de450a:	80a0      	strh	r0, [r4, #4]
c0de450c:	1d30      	adds	r0, r6, #4
c0de450e:	2104      	movs	r1, #4
c0de4510:	61f2      	str	r2, [r6, #28]
c0de4512:	b002      	add	sp, #8
c0de4514:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4518:	f7fd b884 	b.w	c0de1624 <cx_rng_no_throw>
c0de451c:	6811      	ldr	r1, [r2, #0]
c0de451e:	4851      	ldr	r0, [pc, #324]	; (c0de4664 <u2f_transport_received+0x3b4>)
c0de4520:	0e0a      	lsrs	r2, r1, #24
c0de4522:	f809 1000 	strb.w	r1, [r9, r0]
c0de4526:	4448      	add	r0, r9
c0de4528:	70c2      	strb	r2, [r0, #3]
c0de452a:	0c0a      	lsrs	r2, r1, #16
c0de452c:	0a09      	lsrs	r1, r1, #8
c0de452e:	7041      	strb	r1, [r0, #1]
c0de4530:	21bf      	movs	r1, #191	; 0xbf
c0de4532:	7101      	strb	r1, [r0, #4]
c0de4534:	2100      	movs	r1, #0
c0de4536:	7141      	strb	r1, [r0, #5]
c0de4538:	2101      	movs	r1, #1
c0de453a:	2306      	movs	r3, #6
c0de453c:	7082      	strb	r2, [r0, #2]
c0de453e:	7181      	strb	r1, [r0, #6]
c0de4540:	2108      	movs	r1, #8
c0de4542:	2201      	movs	r2, #1
c0de4544:	71c3      	strb	r3, [r0, #7]
c0de4546:	b002      	add	sp, #8
c0de4548:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de454c:	f7ff bd3e 	b.w	c0de3fcc <u2f_io_send>
c0de4550:	7eb0      	ldrb	r0, [r6, #26]
c0de4552:	4281      	cmp	r1, r0
c0de4554:	d122      	bne.n	c0de459c <u2f_transport_received+0x2ec>
c0de4556:	8b30      	ldrh	r0, [r6, #24]
c0de4558:	eb07 010e 	add.w	r1, r7, lr
c0de455c:	ebaa 020c 	sub.w	r2, sl, ip
c0de4560:	1ac7      	subs	r7, r0, r3
c0de4562:	69f0      	ldr	r0, [r6, #28]
c0de4564:	42ba      	cmp	r2, r7
c0de4566:	bfb8      	it	lt
c0de4568:	4617      	movlt	r7, r2
c0de456a:	b2bc      	uxth	r4, r7
c0de456c:	4418      	add	r0, r3
c0de456e:	3101      	adds	r1, #1
c0de4570:	4622      	mov	r2, r4
c0de4572:	f002 fbfa 	bl	c0de6d6a <__aeabi_memmove>
c0de4576:	2d01      	cmp	r5, #1
c0de4578:	d107      	bne.n	c0de458a <u2f_transport_received+0x2da>
c0de457a:	69f1      	ldr	r1, [r6, #28]
c0de457c:	8af2      	ldrh	r2, [r6, #22]
c0de457e:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0de4580:	4411      	add	r1, r2
c0de4582:	4622      	mov	r2, r4
c0de4584:	f7fd f82a 	bl	c0de15dc <cx_crc16_update>
c0de4588:	84f0      	strh	r0, [r6, #38]	; 0x26
c0de458a:	8af0      	ldrh	r0, [r6, #22]
c0de458c:	7eb1      	ldrb	r1, [r6, #26]
c0de458e:	4438      	add	r0, r7
c0de4590:	f8dd 8004 	ldr.w	r8, [sp, #4]
c0de4594:	82f0      	strh	r0, [r6, #22]
c0de4596:	1c48      	adds	r0, r1, #1
c0de4598:	76b0      	strb	r0, [r6, #26]
c0de459a:	e036      	b.n	c0de460a <u2f_transport_received+0x35a>
c0de459c:	4831      	ldr	r0, [pc, #196]	; (c0de4664 <u2f_transport_received+0x3b4>)
c0de459e:	2104      	movs	r1, #4
c0de45a0:	4448      	add	r0, r9
c0de45a2:	f800 1f08 	strb.w	r1, [r0, #8]!
c0de45a6:	e75e      	b.n	c0de4466 <u2f_transport_received+0x1b6>
c0de45a8:	2d01      	cmp	r5, #1
c0de45aa:	d134      	bne.n	c0de4616 <u2f_transport_received+0x366>
c0de45ac:	4630      	mov	r0, r6
c0de45ae:	f810 1f04 	ldrb.w	r1, [r0, #4]!
c0de45b2:	7843      	ldrb	r3, [r0, #1]
c0de45b4:	7884      	ldrb	r4, [r0, #2]
c0de45b6:	78c0      	ldrb	r0, [r0, #3]
c0de45b8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de45bc:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
c0de45c0:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de45c4:	2800      	cmp	r0, #0
c0de45c6:	d04a      	beq.n	c0de465e <u2f_transport_received+0x3ae>
c0de45c8:	1cd4      	adds	r4, r2, #3
c0de45ca:	eb07 010e 	add.w	r1, r7, lr
c0de45ce:	ebaa 000e 	sub.w	r0, sl, lr
c0de45d2:	4627      	mov	r7, r4
c0de45d4:	42a0      	cmp	r0, r4
c0de45d6:	bfb8      	it	lt
c0de45d8:	4607      	movlt	r7, r0
c0de45da:	69f0      	ldr	r0, [r6, #28]
c0de45dc:	fa1f fa87 	uxth.w	sl, r7
c0de45e0:	4652      	mov	r2, sl
c0de45e2:	f002 fbc2 	bl	c0de6d6a <__aeabi_memmove>
c0de45e6:	2d01      	cmp	r5, #1
c0de45e8:	d105      	bne.n	c0de45f6 <u2f_transport_received+0x346>
c0de45ea:	69f1      	ldr	r1, [r6, #28]
c0de45ec:	2000      	movs	r0, #0
c0de45ee:	4652      	mov	r2, sl
c0de45f0:	f7fc fff4 	bl	c0de15dc <cx_crc16_update>
c0de45f4:	84f0      	strh	r0, [r6, #38]	; 0x26
c0de45f6:	6871      	ldr	r1, [r6, #4]
c0de45f8:	2000      	movs	r0, #0
c0de45fa:	76b0      	strb	r0, [r6, #26]
c0de45fc:	0c08      	lsrs	r0, r1, #16
c0de45fe:	82f7      	strh	r7, [r6, #22]
c0de4600:	8334      	strh	r4, [r6, #24]
c0de4602:	f886 5021 	strb.w	r5, [r6, #33]	; 0x21
c0de4606:	8271      	strh	r1, [r6, #18]
c0de4608:	82b0      	strh	r0, [r6, #20]
c0de460a:	f8b8 0000 	ldrh.w	r0, [r8]
c0de460e:	2d01      	cmp	r5, #1
c0de4610:	d10f      	bne.n	c0de4632 <u2f_transport_received+0x382>
c0de4612:	8b31      	ldrh	r1, [r6, #24]
c0de4614:	e012      	b.n	c0de463c <u2f_transport_received+0x38c>
c0de4616:	4813      	ldr	r0, [pc, #76]	; (c0de4664 <u2f_transport_received+0x3b4>)
c0de4618:	2101      	movs	r1, #1
c0de461a:	4448      	add	r0, r9
c0de461c:	2204      	movs	r2, #4
c0de461e:	f800 1f08 	strb.w	r1, [r0, #8]!
c0de4622:	f886 2020 	strb.w	r2, [r6, #32]
c0de4626:	2200      	movs	r2, #0
c0de4628:	76b2      	strb	r2, [r6, #26]
c0de462a:	61f0      	str	r0, [r6, #28]
c0de462c:	82f2      	strh	r2, [r6, #22]
c0de462e:	8331      	strh	r1, [r6, #24]
c0de4630:	e721      	b.n	c0de4476 <u2f_transport_received+0x1c6>
c0de4632:	8b31      	ldrh	r1, [r6, #24]
c0de4634:	1cca      	adds	r2, r1, #3
c0de4636:	4282      	cmp	r2, r0
c0de4638:	f4ff af35 	bcc.w	c0de44a6 <u2f_transport_received+0x1f6>
c0de463c:	4288      	cmp	r0, r1
c0de463e:	d205      	bcs.n	c0de464c <u2f_transport_received+0x39c>
c0de4640:	2000      	movs	r0, #0
c0de4642:	6370      	str	r0, [r6, #52]	; 0x34
c0de4644:	2001      	movs	r0, #1
c0de4646:	f886 0020 	strb.w	r0, [r6, #32]
c0de464a:	e64a      	b.n	c0de42e2 <u2f_transport_received+0x32>
c0de464c:	2102      	movs	r1, #2
c0de464e:	4630      	mov	r0, r6
c0de4650:	f886 1020 	strb.w	r1, [r6, #32]
c0de4654:	b002      	add	sp, #8
c0de4656:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de465a:	f7ff bc9b 	b.w	c0de3f94 <u2f_message_complete>
c0de465e:	4801      	ldr	r0, [pc, #4]	; (c0de4664 <u2f_transport_received+0x3b4>)
c0de4660:	210b      	movs	r1, #11
c0de4662:	e6fc      	b.n	c0de445e <u2f_transport_received+0x1ae>
c0de4664:	0000045c 	.word	0x0000045c

c0de4668 <u2f_is_channel_broadcast>:
c0de4668:	7801      	ldrb	r1, [r0, #0]
c0de466a:	7882      	ldrb	r2, [r0, #2]
c0de466c:	78c3      	ldrb	r3, [r0, #3]
c0de466e:	7840      	ldrb	r0, [r0, #1]
c0de4670:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4674:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4678:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de467c:	3001      	adds	r0, #1
c0de467e:	fab0 f080 	clz	r0, r0
c0de4682:	0940      	lsrs	r0, r0, #5
c0de4684:	4770      	bx	lr
	...

c0de4688 <u2f_message_set_autoreply_wait_user_presence>:
c0de4688:	f890 202a 	ldrb.w	r2, [r0, #42]	; 0x2a
c0de468c:	b1f9      	cbz	r1, c0de46ce <u2f_message_set_autoreply_wait_user_presence+0x46>
c0de468e:	2a00      	cmp	r2, #0
c0de4690:	bf18      	it	ne
c0de4692:	4770      	bxne	lr
c0de4694:	6842      	ldr	r2, [r0, #4]
c0de4696:	4b11      	ldr	r3, [pc, #68]	; (c0de46dc <u2f_message_set_autoreply_wait_user_presence+0x54>)
c0de4698:	f240 1101 	movw	r1, #257	; 0x101
c0de469c:	8541      	strh	r1, [r0, #42]	; 0x2a
c0de469e:	eb09 0003 	add.w	r0, r9, r3
c0de46a2:	0e11      	lsrs	r1, r2, #24
c0de46a4:	70c1      	strb	r1, [r0, #3]
c0de46a6:	0c11      	lsrs	r1, r2, #16
c0de46a8:	7081      	strb	r1, [r0, #2]
c0de46aa:	0a11      	lsrs	r1, r2, #8
c0de46ac:	7041      	strb	r1, [r0, #1]
c0de46ae:	2183      	movs	r1, #131	; 0x83
c0de46b0:	7101      	strb	r1, [r0, #4]
c0de46b2:	2100      	movs	r1, #0
c0de46b4:	7141      	strb	r1, [r0, #5]
c0de46b6:	2102      	movs	r1, #2
c0de46b8:	7181      	strb	r1, [r0, #6]
c0de46ba:	2169      	movs	r1, #105	; 0x69
c0de46bc:	f809 2003 	strb.w	r2, [r9, r3]
c0de46c0:	71c1      	strb	r1, [r0, #7]
c0de46c2:	2385      	movs	r3, #133	; 0x85
c0de46c4:	2109      	movs	r1, #9
c0de46c6:	2201      	movs	r2, #1
c0de46c8:	7203      	strb	r3, [r0, #8]
c0de46ca:	f7ff bc7f 	b.w	c0de3fcc <u2f_io_send>
c0de46ce:	2a01      	cmp	r2, #1
c0de46d0:	bf04      	itt	eq
c0de46d2:	2102      	moveq	r1, #2
c0de46d4:	f880 102a 	strbeq.w	r1, [r0, #42]	; 0x2a
c0de46d8:	4770      	bx	lr
c0de46da:	bf00      	nop
c0de46dc:	0000045c 	.word	0x0000045c

c0de46e0 <u2f_message_reply>:
c0de46e0:	b5b0      	push	{r4, r5, r7, lr}
c0de46e2:	4604      	mov	r4, r0
c0de46e4:	f890 002a 	ldrb.w	r0, [r0, #42]	; 0x2a
c0de46e8:	b148      	cbz	r0, c0de46fe <u2f_message_reply+0x1e>
c0de46ea:	2801      	cmp	r0, #1
c0de46ec:	d006      	beq.n	c0de46fc <u2f_message_reply+0x1c>
c0de46ee:	f894 0025 	ldrb.w	r0, [r4, #37]	; 0x25
c0de46f2:	2806      	cmp	r0, #6
c0de46f4:	d102      	bne.n	c0de46fc <u2f_message_reply+0x1c>
c0de46f6:	f894 002b 	ldrb.w	r0, [r4, #43]	; 0x2b
c0de46fa:	b100      	cbz	r0, c0de46fe <u2f_message_reply+0x1e>
c0de46fc:	bdb0      	pop	{r4, r5, r7, pc}
c0de46fe:	61e2      	str	r2, [r4, #28]
c0de4700:	f894 2021 	ldrb.w	r2, [r4, #33]	; 0x21
c0de4704:	2003      	movs	r0, #3
c0de4706:	f884 0020 	strb.w	r0, [r4, #32]
c0de470a:	2000      	movs	r0, #0
c0de470c:	2a03      	cmp	r2, #3
c0de470e:	76a0      	strb	r0, [r4, #26]
c0de4710:	82e0      	strh	r0, [r4, #22]
c0de4712:	8323      	strh	r3, [r4, #24]
c0de4714:	f884 1040 	strb.w	r1, [r4, #64]	; 0x40
c0de4718:	d112      	bne.n	c0de4740 <u2f_message_reply+0x60>
c0de471a:	4d0c      	ldr	r5, [pc, #48]	; (c0de474c <u2f_message_reply+0x6c>)
c0de471c:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de4720:	2800      	cmp	r0, #0
c0de4722:	bf08      	it	eq
c0de4724:	bdb0      	popeq	{r4, r5, r7, pc}
c0de4726:	4620      	mov	r0, r4
c0de4728:	2103      	movs	r1, #3
c0de472a:	bf00      	nop
c0de472c:	f7ff fc7c 	bl	c0de4028 <u2f_transport_sent>
c0de4730:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de4734:	2800      	cmp	r0, #0
c0de4736:	d0e1      	beq.n	c0de46fc <u2f_message_reply+0x1c>
c0de4738:	f894 1021 	ldrb.w	r1, [r4, #33]	; 0x21
c0de473c:	4620      	mov	r0, r4
c0de473e:	e7f5      	b.n	c0de472c <u2f_message_reply+0x4c>
c0de4740:	4620      	mov	r0, r4
c0de4742:	4611      	mov	r1, r2
c0de4744:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de4748:	f7ff bc6e 	b.w	c0de4028 <u2f_transport_sent>
c0de474c:	000003f0 	.word	0x000003f0

c0de4750 <USBD_LL_Init>:
c0de4750:	4804      	ldr	r0, [pc, #16]	; (c0de4764 <USBD_LL_Init+0x14>)
c0de4752:	2100      	movs	r1, #0
c0de4754:	4a04      	ldr	r2, [pc, #16]	; (c0de4768 <USBD_LL_Init+0x18>)
c0de4756:	f849 1000 	str.w	r1, [r9, r0]
c0de475a:	2000      	movs	r0, #0
c0de475c:	f849 1002 	str.w	r1, [r9, r2]
c0de4760:	4770      	bx	lr
c0de4762:	bf00      	nop
c0de4764:	00000778 	.word	0x00000778
c0de4768:	0000077c 	.word	0x0000077c

c0de476c <USBD_LL_DeInit>:
c0de476c:	b580      	push	{r7, lr}
c0de476e:	4808      	ldr	r0, [pc, #32]	; (c0de4790 <USBD_LL_DeInit+0x24>)
c0de4770:	214f      	movs	r1, #79	; 0x4f
c0de4772:	f809 1000 	strb.w	r1, [r9, r0]
c0de4776:	4448      	add	r0, r9
c0de4778:	2100      	movs	r1, #0
c0de477a:	7041      	strb	r1, [r0, #1]
c0de477c:	2101      	movs	r1, #1
c0de477e:	7081      	strb	r1, [r0, #2]
c0de4780:	2102      	movs	r1, #2
c0de4782:	70c1      	strb	r1, [r0, #3]
c0de4784:	2104      	movs	r1, #4
c0de4786:	f7ff f9b1 	bl	c0de3aec <io_seph_send>
c0de478a:	2000      	movs	r0, #0
c0de478c:	bd80      	pop	{r7, pc}
c0de478e:	bf00      	nop
c0de4790:	00000170 	.word	0x00000170

c0de4794 <USBD_LL_Start>:
c0de4794:	b570      	push	{r4, r5, r6, lr}
c0de4796:	b082      	sub	sp, #8
c0de4798:	2002      	movs	r0, #2
c0de479a:	f88d 0005 	strb.w	r0, [sp, #5]
c0de479e:	2003      	movs	r0, #3
c0de47a0:	f10d 0403 	add.w	r4, sp, #3
c0de47a4:	254f      	movs	r5, #79	; 0x4f
c0de47a6:	2600      	movs	r6, #0
c0de47a8:	f88d 0006 	strb.w	r0, [sp, #6]
c0de47ac:	4620      	mov	r0, r4
c0de47ae:	2105      	movs	r1, #5
c0de47b0:	f88d 5003 	strb.w	r5, [sp, #3]
c0de47b4:	f88d 6004 	strb.w	r6, [sp, #4]
c0de47b8:	f88d 6007 	strb.w	r6, [sp, #7]
c0de47bc:	f7ff f996 	bl	c0de3aec <io_seph_send>
c0de47c0:	2001      	movs	r0, #1
c0de47c2:	f88d 0005 	strb.w	r0, [sp, #5]
c0de47c6:	f88d 0006 	strb.w	r0, [sp, #6]
c0de47ca:	4620      	mov	r0, r4
c0de47cc:	2104      	movs	r1, #4
c0de47ce:	f88d 5003 	strb.w	r5, [sp, #3]
c0de47d2:	f88d 6004 	strb.w	r6, [sp, #4]
c0de47d6:	f7ff f989 	bl	c0de3aec <io_seph_send>
c0de47da:	2000      	movs	r0, #0
c0de47dc:	b002      	add	sp, #8
c0de47de:	bd70      	pop	{r4, r5, r6, pc}

c0de47e0 <USBD_LL_Stop>:
c0de47e0:	b580      	push	{r7, lr}
c0de47e2:	b082      	sub	sp, #8
c0de47e4:	204f      	movs	r0, #79	; 0x4f
c0de47e6:	f88d 0004 	strb.w	r0, [sp, #4]
c0de47ea:	2000      	movs	r0, #0
c0de47ec:	f88d 0005 	strb.w	r0, [sp, #5]
c0de47f0:	2001      	movs	r0, #1
c0de47f2:	f88d 0006 	strb.w	r0, [sp, #6]
c0de47f6:	2002      	movs	r0, #2
c0de47f8:	f88d 0007 	strb.w	r0, [sp, #7]
c0de47fc:	a801      	add	r0, sp, #4
c0de47fe:	2104      	movs	r1, #4
c0de4800:	f7ff f974 	bl	c0de3aec <io_seph_send>
c0de4804:	2000      	movs	r0, #0
c0de4806:	b002      	add	sp, #8
c0de4808:	bd80      	pop	{r7, pc}
	...

c0de480c <USBD_LL_OpenEP>:
c0de480c:	b580      	push	{r7, lr}
c0de480e:	b082      	sub	sp, #8
c0de4810:	481a      	ldr	r0, [pc, #104]	; (c0de487c <USBD_LL_OpenEP+0x70>)
c0de4812:	f04f 0c00 	mov.w	ip, #0
c0de4816:	f849 c000 	str.w	ip, [r9, r0]
c0de481a:	204f      	movs	r0, #79	; 0x4f
c0de481c:	f88d 0000 	strb.w	r0, [sp]
c0de4820:	2005      	movs	r0, #5
c0de4822:	f8df e054 	ldr.w	lr, [pc, #84]	; c0de4878 <USBD_LL_OpenEP+0x6c>
c0de4826:	f88d 0002 	strb.w	r0, [sp, #2]
c0de482a:	2004      	movs	r0, #4
c0de482c:	f88d 0003 	strb.w	r0, [sp, #3]
c0de4830:	2001      	movs	r0, #1
c0de4832:	2a01      	cmp	r2, #1
c0de4834:	f849 c00e 	str.w	ip, [r9, lr]
c0de4838:	f88d c001 	strb.w	ip, [sp, #1]
c0de483c:	f88d 0004 	strb.w	r0, [sp, #4]
c0de4840:	f88d 1005 	strb.w	r1, [sp, #5]
c0de4844:	f88d c006 	strb.w	ip, [sp, #6]
c0de4848:	dc04      	bgt.n	c0de4854 <USBD_LL_OpenEP+0x48>
c0de484a:	b152      	cbz	r2, c0de4862 <USBD_LL_OpenEP+0x56>
c0de484c:	2a01      	cmp	r2, #1
c0de484e:	d10a      	bne.n	c0de4866 <USBD_LL_OpenEP+0x5a>
c0de4850:	2004      	movs	r0, #4
c0de4852:	e006      	b.n	c0de4862 <USBD_LL_OpenEP+0x56>
c0de4854:	2a02      	cmp	r2, #2
c0de4856:	d003      	beq.n	c0de4860 <USBD_LL_OpenEP+0x54>
c0de4858:	2a03      	cmp	r2, #3
c0de485a:	d104      	bne.n	c0de4866 <USBD_LL_OpenEP+0x5a>
c0de485c:	2002      	movs	r0, #2
c0de485e:	e000      	b.n	c0de4862 <USBD_LL_OpenEP+0x56>
c0de4860:	2003      	movs	r0, #3
c0de4862:	f88d 0006 	strb.w	r0, [sp, #6]
c0de4866:	4668      	mov	r0, sp
c0de4868:	2108      	movs	r1, #8
c0de486a:	f88d 3007 	strb.w	r3, [sp, #7]
c0de486e:	f7ff f93d 	bl	c0de3aec <io_seph_send>
c0de4872:	2000      	movs	r0, #0
c0de4874:	b002      	add	sp, #8
c0de4876:	bd80      	pop	{r7, pc}
c0de4878:	00000778 	.word	0x00000778
c0de487c:	0000077c 	.word	0x0000077c

c0de4880 <USBD_LL_StallEP>:
c0de4880:	b510      	push	{r4, lr}
c0de4882:	b082      	sub	sp, #8
c0de4884:	460c      	mov	r4, r1
c0de4886:	2050      	movs	r0, #80	; 0x50
c0de4888:	2103      	movs	r1, #3
c0de488a:	f88d 0002 	strb.w	r0, [sp, #2]
c0de488e:	2000      	movs	r0, #0
c0de4890:	f88d 1004 	strb.w	r1, [sp, #4]
c0de4894:	2140      	movs	r1, #64	; 0x40
c0de4896:	f88d 0003 	strb.w	r0, [sp, #3]
c0de489a:	f88d 1006 	strb.w	r1, [sp, #6]
c0de489e:	f88d 0007 	strb.w	r0, [sp, #7]
c0de48a2:	f10d 0002 	add.w	r0, sp, #2
c0de48a6:	2106      	movs	r1, #6
c0de48a8:	f88d 4005 	strb.w	r4, [sp, #5]
c0de48ac:	f7ff f91e 	bl	c0de3aec <io_seph_send>
c0de48b0:	4a0a      	ldr	r2, [pc, #40]	; (c0de48dc <USBD_LL_StallEP+0x5c>)
c0de48b2:	0623      	lsls	r3, r4, #24
c0de48b4:	4b08      	ldr	r3, [pc, #32]	; (c0de48d8 <USBD_LL_StallEP+0x58>)
c0de48b6:	444a      	add	r2, r9
c0de48b8:	f004 007f 	and.w	r0, r4, #127	; 0x7f
c0de48bc:	f04f 0101 	mov.w	r1, #1
c0de48c0:	bf58      	it	pl
c0de48c2:	eb09 0203 	addpl.w	r2, r9, r3
c0de48c6:	6813      	ldr	r3, [r2, #0]
c0de48c8:	fa01 f000 	lsl.w	r0, r1, r0
c0de48cc:	ea43 0100 	orr.w	r1, r3, r0
c0de48d0:	2000      	movs	r0, #0
c0de48d2:	6011      	str	r1, [r2, #0]
c0de48d4:	b002      	add	sp, #8
c0de48d6:	bd10      	pop	{r4, pc}
c0de48d8:	0000077c 	.word	0x0000077c
c0de48dc:	00000778 	.word	0x00000778

c0de48e0 <USBD_LL_ClearStallEP>:
c0de48e0:	b510      	push	{r4, lr}
c0de48e2:	b082      	sub	sp, #8
c0de48e4:	460c      	mov	r4, r1
c0de48e6:	2050      	movs	r0, #80	; 0x50
c0de48e8:	2103      	movs	r1, #3
c0de48ea:	f88d 0002 	strb.w	r0, [sp, #2]
c0de48ee:	2000      	movs	r0, #0
c0de48f0:	f88d 1004 	strb.w	r1, [sp, #4]
c0de48f4:	2180      	movs	r1, #128	; 0x80
c0de48f6:	f88d 0003 	strb.w	r0, [sp, #3]
c0de48fa:	f88d 1006 	strb.w	r1, [sp, #6]
c0de48fe:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4902:	f10d 0002 	add.w	r0, sp, #2
c0de4906:	2106      	movs	r1, #6
c0de4908:	f88d 4005 	strb.w	r4, [sp, #5]
c0de490c:	f7ff f8ee 	bl	c0de3aec <io_seph_send>
c0de4910:	4a0a      	ldr	r2, [pc, #40]	; (c0de493c <USBD_LL_ClearStallEP+0x5c>)
c0de4912:	0623      	lsls	r3, r4, #24
c0de4914:	4b08      	ldr	r3, [pc, #32]	; (c0de4938 <USBD_LL_ClearStallEP+0x58>)
c0de4916:	444a      	add	r2, r9
c0de4918:	f004 007f 	and.w	r0, r4, #127	; 0x7f
c0de491c:	f04f 0101 	mov.w	r1, #1
c0de4920:	bf58      	it	pl
c0de4922:	eb09 0203 	addpl.w	r2, r9, r3
c0de4926:	6813      	ldr	r3, [r2, #0]
c0de4928:	fa01 f000 	lsl.w	r0, r1, r0
c0de492c:	ea23 0100 	bic.w	r1, r3, r0
c0de4930:	2000      	movs	r0, #0
c0de4932:	6011      	str	r1, [r2, #0]
c0de4934:	b002      	add	sp, #8
c0de4936:	bd10      	pop	{r4, pc}
c0de4938:	0000077c 	.word	0x0000077c
c0de493c:	00000778 	.word	0x00000778

c0de4940 <USBD_LL_IsStallEP>:
c0de4940:	4808      	ldr	r0, [pc, #32]	; (c0de4964 <USBD_LL_IsStallEP+0x24>)
c0de4942:	4a07      	ldr	r2, [pc, #28]	; (c0de4960 <USBD_LL_IsStallEP+0x20>)
c0de4944:	4448      	add	r0, r9
c0de4946:	060b      	lsls	r3, r1, #24
c0de4948:	bf58      	it	pl
c0de494a:	eb09 0002 	addpl.w	r0, r9, r2
c0de494e:	7800      	ldrb	r0, [r0, #0]
c0de4950:	f001 017f 	and.w	r1, r1, #127	; 0x7f
c0de4954:	2201      	movs	r2, #1
c0de4956:	fa02 f101 	lsl.w	r1, r2, r1
c0de495a:	4008      	ands	r0, r1
c0de495c:	4770      	bx	lr
c0de495e:	bf00      	nop
c0de4960:	0000077c 	.word	0x0000077c
c0de4964:	00000778 	.word	0x00000778

c0de4968 <USBD_LL_SetUSBAddress>:
c0de4968:	b580      	push	{r7, lr}
c0de496a:	b082      	sub	sp, #8
c0de496c:	204f      	movs	r0, #79	; 0x4f
c0de496e:	f88d 0003 	strb.w	r0, [sp, #3]
c0de4972:	2000      	movs	r0, #0
c0de4974:	f88d 0004 	strb.w	r0, [sp, #4]
c0de4978:	2002      	movs	r0, #2
c0de497a:	f88d 0005 	strb.w	r0, [sp, #5]
c0de497e:	2003      	movs	r0, #3
c0de4980:	f88d 0006 	strb.w	r0, [sp, #6]
c0de4984:	f88d 1007 	strb.w	r1, [sp, #7]
c0de4988:	f10d 0003 	add.w	r0, sp, #3
c0de498c:	2105      	movs	r1, #5
c0de498e:	f7ff f8ad 	bl	c0de3aec <io_seph_send>
c0de4992:	2000      	movs	r0, #0
c0de4994:	b002      	add	sp, #8
c0de4996:	bd80      	pop	{r7, pc}

c0de4998 <USBD_LL_Transmit>:
c0de4998:	b5b0      	push	{r4, r5, r7, lr}
c0de499a:	b082      	sub	sp, #8
c0de499c:	2050      	movs	r0, #80	; 0x50
c0de499e:	f88d 0002 	strb.w	r0, [sp, #2]
c0de49a2:	1cd8      	adds	r0, r3, #3
c0de49a4:	4615      	mov	r5, r2
c0de49a6:	0a02      	lsrs	r2, r0, #8
c0de49a8:	f88d 0004 	strb.w	r0, [sp, #4]
c0de49ac:	2020      	movs	r0, #32
c0de49ae:	f88d 1005 	strb.w	r1, [sp, #5]
c0de49b2:	f88d 0006 	strb.w	r0, [sp, #6]
c0de49b6:	f10d 0002 	add.w	r0, sp, #2
c0de49ba:	2106      	movs	r1, #6
c0de49bc:	461c      	mov	r4, r3
c0de49be:	f88d 2003 	strb.w	r2, [sp, #3]
c0de49c2:	f88d 3007 	strb.w	r3, [sp, #7]
c0de49c6:	f7ff f891 	bl	c0de3aec <io_seph_send>
c0de49ca:	4628      	mov	r0, r5
c0de49cc:	4621      	mov	r1, r4
c0de49ce:	f7ff f88d 	bl	c0de3aec <io_seph_send>
c0de49d2:	2000      	movs	r0, #0
c0de49d4:	b002      	add	sp, #8
c0de49d6:	bdb0      	pop	{r4, r5, r7, pc}

c0de49d8 <USBD_LL_PrepareReceive>:
c0de49d8:	b580      	push	{r7, lr}
c0de49da:	b082      	sub	sp, #8
c0de49dc:	2050      	movs	r0, #80	; 0x50
c0de49de:	f88d 0002 	strb.w	r0, [sp, #2]
c0de49e2:	2000      	movs	r0, #0
c0de49e4:	f88d 0003 	strb.w	r0, [sp, #3]
c0de49e8:	2003      	movs	r0, #3
c0de49ea:	f88d 0004 	strb.w	r0, [sp, #4]
c0de49ee:	2030      	movs	r0, #48	; 0x30
c0de49f0:	f88d 1005 	strb.w	r1, [sp, #5]
c0de49f4:	f88d 0006 	strb.w	r0, [sp, #6]
c0de49f8:	f10d 0002 	add.w	r0, sp, #2
c0de49fc:	2106      	movs	r1, #6
c0de49fe:	f88d 2007 	strb.w	r2, [sp, #7]
c0de4a02:	f7ff f873 	bl	c0de3aec <io_seph_send>
c0de4a06:	2000      	movs	r0, #0
c0de4a08:	b002      	add	sp, #8
c0de4a0a:	bd80      	pop	{r7, pc}

c0de4a0c <USBD_Init>:
c0de4a0c:	b198      	cbz	r0, c0de4a36 <USBD_Init+0x2a>
c0de4a0e:	b570      	push	{r4, r5, r6, lr}
c0de4a10:	460e      	mov	r6, r1
c0de4a12:	f44f 718a 	mov.w	r1, #276	; 0x114
c0de4a16:	4615      	mov	r5, r2
c0de4a18:	4604      	mov	r4, r0
c0de4a1a:	f002 f9a1 	bl	c0de6d60 <__aeabi_memclr>
c0de4a1e:	b10e      	cbz	r6, c0de4a24 <USBD_Init+0x18>
c0de4a20:	f8c4 60f0 	str.w	r6, [r4, #240]	; 0xf0
c0de4a24:	2001      	movs	r0, #1
c0de4a26:	f884 00dc 	strb.w	r0, [r4, #220]	; 0xdc
c0de4a2a:	4620      	mov	r0, r4
c0de4a2c:	7025      	strb	r5, [r4, #0]
c0de4a2e:	f7ff fe8f 	bl	c0de4750 <USBD_LL_Init>
c0de4a32:	2000      	movs	r0, #0
c0de4a34:	bd70      	pop	{r4, r5, r6, pc}
c0de4a36:	2002      	movs	r0, #2
c0de4a38:	4770      	bx	lr
	...

c0de4a3c <USBD_DeInit>:
c0de4a3c:	b5b0      	push	{r4, r5, r7, lr}
c0de4a3e:	4604      	mov	r4, r0
c0de4a40:	2001      	movs	r0, #1
c0de4a42:	25f4      	movs	r5, #244	; 0xf4
c0de4a44:	f884 00dc 	strb.w	r0, [r4, #220]	; 0xdc
c0de4a48:	5960      	ldr	r0, [r4, r5]
c0de4a4a:	b130      	cbz	r0, c0de4a5a <USBD_DeInit+0x1e>
c0de4a4c:	6840      	ldr	r0, [r0, #4]
c0de4a4e:	f7fe fb8f 	bl	c0de3170 <pic>
c0de4a52:	7921      	ldrb	r1, [r4, #4]
c0de4a54:	4602      	mov	r2, r0
c0de4a56:	4620      	mov	r0, r4
c0de4a58:	4790      	blx	r2
c0de4a5a:	3508      	adds	r5, #8
c0de4a5c:	f5b5 7f86 	cmp.w	r5, #268	; 0x10c
c0de4a60:	d1f2      	bne.n	c0de4a48 <USBD_DeInit+0xc>
c0de4a62:	4620      	mov	r0, r4
c0de4a64:	f7ff febc 	bl	c0de47e0 <USBD_LL_Stop>
c0de4a68:	4620      	mov	r0, r4
c0de4a6a:	f7ff fe7f 	bl	c0de476c <USBD_LL_DeInit>
c0de4a6e:	2000      	movs	r0, #0
c0de4a70:	bdb0      	pop	{r4, r5, r7, pc}

c0de4a72 <USBD_RegisterClassForInterface>:
c0de4a72:	b13a      	cbz	r2, c0de4a84 <USBD_RegisterClassForInterface+0x12>
c0de4a74:	2802      	cmp	r0, #2
c0de4a76:	bf9c      	itt	ls
c0de4a78:	eb01 00c0 	addls.w	r0, r1, r0, lsl #3
c0de4a7c:	f8c0 20f4 	strls.w	r2, [r0, #244]	; 0xf4
c0de4a80:	2000      	movs	r0, #0
c0de4a82:	4770      	bx	lr
c0de4a84:	2002      	movs	r0, #2
c0de4a86:	4770      	bx	lr

c0de4a88 <USBD_Start>:
c0de4a88:	b580      	push	{r7, lr}
c0de4a8a:	f7ff fe83 	bl	c0de4794 <USBD_LL_Start>
c0de4a8e:	2000      	movs	r0, #0
c0de4a90:	bd80      	pop	{r7, pc}
	...

c0de4a94 <USBD_SetClassConfig>:
c0de4a94:	b570      	push	{r4, r5, r6, lr}
c0de4a96:	460c      	mov	r4, r1
c0de4a98:	4605      	mov	r5, r0
c0de4a9a:	2600      	movs	r6, #0
c0de4a9c:	4628      	mov	r0, r5
c0de4a9e:	4631      	mov	r1, r6
c0de4aa0:	f000 f961 	bl	c0de4d66 <usbd_is_valid_intf>
c0de4aa4:	b150      	cbz	r0, c0de4abc <USBD_SetClassConfig+0x28>
c0de4aa6:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0de4aaa:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de4aae:	6800      	ldr	r0, [r0, #0]
c0de4ab0:	f7fe fb5e 	bl	c0de3170 <pic>
c0de4ab4:	4602      	mov	r2, r0
c0de4ab6:	4628      	mov	r0, r5
c0de4ab8:	4621      	mov	r1, r4
c0de4aba:	4790      	blx	r2
c0de4abc:	3601      	adds	r6, #1
c0de4abe:	2e03      	cmp	r6, #3
c0de4ac0:	d1ec      	bne.n	c0de4a9c <USBD_SetClassConfig+0x8>
c0de4ac2:	2000      	movs	r0, #0
c0de4ac4:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de4ac8 <USBD_ClrClassConfig>:
c0de4ac8:	b570      	push	{r4, r5, r6, lr}
c0de4aca:	460c      	mov	r4, r1
c0de4acc:	4605      	mov	r5, r0
c0de4ace:	2600      	movs	r6, #0
c0de4ad0:	4628      	mov	r0, r5
c0de4ad2:	4631      	mov	r1, r6
c0de4ad4:	f000 f947 	bl	c0de4d66 <usbd_is_valid_intf>
c0de4ad8:	b150      	cbz	r0, c0de4af0 <USBD_ClrClassConfig+0x28>
c0de4ada:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0de4ade:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de4ae2:	6840      	ldr	r0, [r0, #4]
c0de4ae4:	f7fe fb44 	bl	c0de3170 <pic>
c0de4ae8:	4602      	mov	r2, r0
c0de4aea:	4628      	mov	r0, r5
c0de4aec:	4621      	mov	r1, r4
c0de4aee:	4790      	blx	r2
c0de4af0:	3601      	adds	r6, #1
c0de4af2:	2e03      	cmp	r6, #3
c0de4af4:	d1ec      	bne.n	c0de4ad0 <USBD_ClrClassConfig+0x8>
c0de4af6:	2000      	movs	r0, #0
c0de4af8:	bd70      	pop	{r4, r5, r6, pc}

c0de4afa <USBD_LL_SetupStage>:
c0de4afa:	b5b0      	push	{r4, r5, r7, lr}
c0de4afc:	f100 05e8 	add.w	r5, r0, #232	; 0xe8
c0de4b00:	4604      	mov	r4, r0
c0de4b02:	4628      	mov	r0, r5
c0de4b04:	f000 fb64 	bl	c0de51d0 <USBD_ParseSetupRequest>
c0de4b08:	f894 00e8 	ldrb.w	r0, [r4, #232]	; 0xe8
c0de4b0c:	2101      	movs	r1, #1
c0de4b0e:	f8b4 20ee 	ldrh.w	r2, [r4, #238]	; 0xee
c0de4b12:	f8c4 10d4 	str.w	r1, [r4, #212]	; 0xd4
c0de4b16:	f000 011f 	and.w	r1, r0, #31
c0de4b1a:	2902      	cmp	r1, #2
c0de4b1c:	f8c4 20d8 	str.w	r2, [r4, #216]	; 0xd8
c0de4b20:	d007      	beq.n	c0de4b32 <USBD_LL_SetupStage+0x38>
c0de4b22:	2901      	cmp	r1, #1
c0de4b24:	d00a      	beq.n	c0de4b3c <USBD_LL_SetupStage+0x42>
c0de4b26:	b971      	cbnz	r1, c0de4b46 <USBD_LL_SetupStage+0x4c>
c0de4b28:	4620      	mov	r0, r4
c0de4b2a:	4629      	mov	r1, r5
c0de4b2c:	f000 f927 	bl	c0de4d7e <USBD_StdDevReq>
c0de4b30:	e00e      	b.n	c0de4b50 <USBD_LL_SetupStage+0x56>
c0de4b32:	4620      	mov	r0, r4
c0de4b34:	4629      	mov	r1, r5
c0de4b36:	f000 facf 	bl	c0de50d8 <USBD_StdEPReq>
c0de4b3a:	e009      	b.n	c0de4b50 <USBD_LL_SetupStage+0x56>
c0de4b3c:	4620      	mov	r0, r4
c0de4b3e:	4629      	mov	r1, r5
c0de4b40:	f000 faa8 	bl	c0de5094 <USBD_StdItfReq>
c0de4b44:	e004      	b.n	c0de4b50 <USBD_LL_SetupStage+0x56>
c0de4b46:	f000 0180 	and.w	r1, r0, #128	; 0x80
c0de4b4a:	4620      	mov	r0, r4
c0de4b4c:	f7ff fe98 	bl	c0de4880 <USBD_LL_StallEP>
c0de4b50:	2000      	movs	r0, #0
c0de4b52:	bdb0      	pop	{r4, r5, r7, pc}

c0de4b54 <USBD_LL_DataOutStage>:
c0de4b54:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4b56:	b081      	sub	sp, #4
c0de4b58:	4615      	mov	r5, r2
c0de4b5a:	4604      	mov	r4, r0
c0de4b5c:	b1e1      	cbz	r1, c0de4b98 <USBD_LL_DataOutStage+0x44>
c0de4b5e:	460e      	mov	r6, r1
c0de4b60:	2700      	movs	r7, #0
c0de4b62:	bf00      	nop
c0de4b64:	4620      	mov	r0, r4
c0de4b66:	4639      	mov	r1, r7
c0de4b68:	f000 f8fd 	bl	c0de4d66 <usbd_is_valid_intf>
c0de4b6c:	b180      	cbz	r0, c0de4b90 <USBD_LL_DataOutStage+0x3c>
c0de4b6e:	eb04 00c7 	add.w	r0, r4, r7, lsl #3
c0de4b72:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de4b76:	6980      	ldr	r0, [r0, #24]
c0de4b78:	b150      	cbz	r0, c0de4b90 <USBD_LL_DataOutStage+0x3c>
c0de4b7a:	f894 10dc 	ldrb.w	r1, [r4, #220]	; 0xdc
c0de4b7e:	2903      	cmp	r1, #3
c0de4b80:	d106      	bne.n	c0de4b90 <USBD_LL_DataOutStage+0x3c>
c0de4b82:	f7fe faf5 	bl	c0de3170 <pic>
c0de4b86:	4603      	mov	r3, r0
c0de4b88:	4620      	mov	r0, r4
c0de4b8a:	4631      	mov	r1, r6
c0de4b8c:	462a      	mov	r2, r5
c0de4b8e:	4798      	blx	r3
c0de4b90:	3701      	adds	r7, #1
c0de4b92:	2f03      	cmp	r7, #3
c0de4b94:	d1e6      	bne.n	c0de4b64 <USBD_LL_DataOutStage+0x10>
c0de4b96:	e02d      	b.n	c0de4bf4 <USBD_LL_DataOutStage+0xa0>
c0de4b98:	f8d4 00d4 	ldr.w	r0, [r4, #212]	; 0xd4
c0de4b9c:	2803      	cmp	r0, #3
c0de4b9e:	d129      	bne.n	c0de4bf4 <USBD_LL_DataOutStage+0xa0>
c0de4ba0:	e9d4 101f 	ldrd	r1, r0, [r4, #124]	; 0x7c
c0de4ba4:	4281      	cmp	r1, r0
c0de4ba6:	d90a      	bls.n	c0de4bbe <USBD_LL_DataOutStage+0x6a>
c0de4ba8:	1a09      	subs	r1, r1, r0
c0de4baa:	67e1      	str	r1, [r4, #124]	; 0x7c
c0de4bac:	4281      	cmp	r1, r0
c0de4bae:	bf38      	it	cc
c0de4bb0:	4608      	movcc	r0, r1
c0de4bb2:	b282      	uxth	r2, r0
c0de4bb4:	4620      	mov	r0, r4
c0de4bb6:	4629      	mov	r1, r5
c0de4bb8:	f000 fdb7 	bl	c0de572a <USBD_CtlContinueRx>
c0de4bbc:	e01a      	b.n	c0de4bf4 <USBD_LL_DataOutStage+0xa0>
c0de4bbe:	2500      	movs	r5, #0
c0de4bc0:	4620      	mov	r0, r4
c0de4bc2:	4629      	mov	r1, r5
c0de4bc4:	f000 f8cf 	bl	c0de4d66 <usbd_is_valid_intf>
c0de4bc8:	b170      	cbz	r0, c0de4be8 <USBD_LL_DataOutStage+0x94>
c0de4bca:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de4bce:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de4bd2:	6900      	ldr	r0, [r0, #16]
c0de4bd4:	b140      	cbz	r0, c0de4be8 <USBD_LL_DataOutStage+0x94>
c0de4bd6:	f894 10dc 	ldrb.w	r1, [r4, #220]	; 0xdc
c0de4bda:	2903      	cmp	r1, #3
c0de4bdc:	d104      	bne.n	c0de4be8 <USBD_LL_DataOutStage+0x94>
c0de4bde:	f7fe fac7 	bl	c0de3170 <pic>
c0de4be2:	4601      	mov	r1, r0
c0de4be4:	4620      	mov	r0, r4
c0de4be6:	4788      	blx	r1
c0de4be8:	3501      	adds	r5, #1
c0de4bea:	2d03      	cmp	r5, #3
c0de4bec:	d1e8      	bne.n	c0de4bc0 <USBD_LL_DataOutStage+0x6c>
c0de4bee:	4620      	mov	r0, r4
c0de4bf0:	f000 fda1 	bl	c0de5736 <USBD_CtlSendStatus>
c0de4bf4:	2000      	movs	r0, #0
c0de4bf6:	b001      	add	sp, #4
c0de4bf8:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0de4bfc <USBD_LL_DataInStage>:
c0de4bfc:	b570      	push	{r4, r5, r6, lr}
c0de4bfe:	4604      	mov	r4, r0
c0de4c00:	b1e1      	cbz	r1, c0de4c3c <USBD_LL_DataInStage+0x40>
c0de4c02:	460d      	mov	r5, r1
c0de4c04:	2600      	movs	r6, #0
c0de4c06:	bf00      	nop
c0de4c08:	4620      	mov	r0, r4
c0de4c0a:	4631      	mov	r1, r6
c0de4c0c:	f000 f8ab 	bl	c0de4d66 <usbd_is_valid_intf>
c0de4c10:	b180      	cbz	r0, c0de4c34 <USBD_LL_DataInStage+0x38>
c0de4c12:	eb04 00c6 	add.w	r0, r4, r6, lsl #3
c0de4c16:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de4c1a:	6940      	ldr	r0, [r0, #20]
c0de4c1c:	b150      	cbz	r0, c0de4c34 <USBD_LL_DataInStage+0x38>
c0de4c1e:	f894 10dc 	ldrb.w	r1, [r4, #220]	; 0xdc
c0de4c22:	2903      	cmp	r1, #3
c0de4c24:	d106      	bne.n	c0de4c34 <USBD_LL_DataInStage+0x38>
c0de4c26:	f7fe faa3 	bl	c0de3170 <pic>
c0de4c2a:	4602      	mov	r2, r0
c0de4c2c:	4620      	mov	r0, r4
c0de4c2e:	4629      	mov	r1, r5
c0de4c30:	4790      	blx	r2
c0de4c32:	bf00      	nop
c0de4c34:	3601      	adds	r6, #1
c0de4c36:	2e03      	cmp	r6, #3
c0de4c38:	d1e6      	bne.n	c0de4c08 <USBD_LL_DataInStage+0xc>
c0de4c3a:	e04c      	b.n	c0de4cd6 <USBD_LL_DataInStage+0xda>
c0de4c3c:	f8d4 00d4 	ldr.w	r0, [r4, #212]	; 0xd4
c0de4c40:	2802      	cmp	r0, #2
c0de4c42:	d141      	bne.n	c0de4cc8 <USBD_LL_DataInStage+0xcc>
c0de4c44:	e9d4 1007 	ldrd	r1, r0, [r4, #28]
c0de4c48:	4281      	cmp	r1, r0
c0de4c4a:	d90b      	bls.n	c0de4c64 <USBD_LL_DataInStage+0x68>
c0de4c4c:	1a0a      	subs	r2, r1, r0
c0de4c4e:	f8d4 1110 	ldr.w	r1, [r4, #272]	; 0x110
c0de4c52:	61e2      	str	r2, [r4, #28]
c0de4c54:	4401      	add	r1, r0
c0de4c56:	b292      	uxth	r2, r2
c0de4c58:	4620      	mov	r0, r4
c0de4c5a:	f8c4 1110 	str.w	r1, [r4, #272]	; 0x110
c0de4c5e:	f000 fd57 	bl	c0de5710 <USBD_CtlContinueSendData>
c0de4c62:	e031      	b.n	c0de4cc8 <USBD_LL_DataInStage+0xcc>
c0de4c64:	b1a0      	cbz	r0, c0de4c90 <USBD_LL_DataInStage+0x94>
c0de4c66:	69a1      	ldr	r1, [r4, #24]
c0de4c68:	4281      	cmp	r1, r0
c0de4c6a:	d311      	bcc.n	c0de4c90 <USBD_LL_DataInStage+0x94>
c0de4c6c:	fbb1 f2f0 	udiv	r2, r1, r0
c0de4c70:	fb02 1010 	mls	r0, r2, r0, r1
c0de4c74:	b960      	cbnz	r0, c0de4c90 <USBD_LL_DataInStage+0x94>
c0de4c76:	f8d4 00d8 	ldr.w	r0, [r4, #216]	; 0xd8
c0de4c7a:	4281      	cmp	r1, r0
c0de4c7c:	d208      	bcs.n	c0de4c90 <USBD_LL_DataInStage+0x94>
c0de4c7e:	4620      	mov	r0, r4
c0de4c80:	2100      	movs	r1, #0
c0de4c82:	2200      	movs	r2, #0
c0de4c84:	2500      	movs	r5, #0
c0de4c86:	f000 fd43 	bl	c0de5710 <USBD_CtlContinueSendData>
c0de4c8a:	f8c4 50d8 	str.w	r5, [r4, #216]	; 0xd8
c0de4c8e:	e01b      	b.n	c0de4cc8 <USBD_LL_DataInStage+0xcc>
c0de4c90:	2500      	movs	r5, #0
c0de4c92:	bf00      	nop
c0de4c94:	4620      	mov	r0, r4
c0de4c96:	4629      	mov	r1, r5
c0de4c98:	f000 f865 	bl	c0de4d66 <usbd_is_valid_intf>
c0de4c9c:	b170      	cbz	r0, c0de4cbc <USBD_LL_DataInStage+0xc0>
c0de4c9e:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de4ca2:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de4ca6:	68c0      	ldr	r0, [r0, #12]
c0de4ca8:	b140      	cbz	r0, c0de4cbc <USBD_LL_DataInStage+0xc0>
c0de4caa:	f894 10dc 	ldrb.w	r1, [r4, #220]	; 0xdc
c0de4cae:	2903      	cmp	r1, #3
c0de4cb0:	d104      	bne.n	c0de4cbc <USBD_LL_DataInStage+0xc0>
c0de4cb2:	f7fe fa5d 	bl	c0de3170 <pic>
c0de4cb6:	4601      	mov	r1, r0
c0de4cb8:	4620      	mov	r0, r4
c0de4cba:	4788      	blx	r1
c0de4cbc:	3501      	adds	r5, #1
c0de4cbe:	2d03      	cmp	r5, #3
c0de4cc0:	d1e8      	bne.n	c0de4c94 <USBD_LL_DataInStage+0x98>
c0de4cc2:	4620      	mov	r0, r4
c0de4cc4:	f000 fd42 	bl	c0de574c <USBD_CtlReceiveStatus>
c0de4cc8:	f894 00e0 	ldrb.w	r0, [r4, #224]	; 0xe0
c0de4ccc:	2801      	cmp	r0, #1
c0de4cce:	bf04      	itt	eq
c0de4cd0:	2000      	moveq	r0, #0
c0de4cd2:	f884 00e0 	strbeq.w	r0, [r4, #224]	; 0xe0
c0de4cd6:	2000      	movs	r0, #0
c0de4cd8:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de4cdc <USBD_LL_Reset>:
c0de4cdc:	b5b0      	push	{r4, r5, r7, lr}
c0de4cde:	4604      	mov	r4, r0
c0de4ce0:	2040      	movs	r0, #64	; 0x40
c0de4ce2:	f8c4 0080 	str.w	r0, [r4, #128]	; 0x80
c0de4ce6:	6220      	str	r0, [r4, #32]
c0de4ce8:	2001      	movs	r0, #1
c0de4cea:	2500      	movs	r5, #0
c0de4cec:	f884 00dc 	strb.w	r0, [r4, #220]	; 0xdc
c0de4cf0:	4620      	mov	r0, r4
c0de4cf2:	4629      	mov	r1, r5
c0de4cf4:	f000 f837 	bl	c0de4d66 <usbd_is_valid_intf>
c0de4cf8:	b150      	cbz	r0, c0de4d10 <USBD_LL_Reset+0x34>
c0de4cfa:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de4cfe:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de4d02:	6840      	ldr	r0, [r0, #4]
c0de4d04:	f7fe fa34 	bl	c0de3170 <pic>
c0de4d08:	7921      	ldrb	r1, [r4, #4]
c0de4d0a:	4602      	mov	r2, r0
c0de4d0c:	4620      	mov	r0, r4
c0de4d0e:	4790      	blx	r2
c0de4d10:	3501      	adds	r5, #1
c0de4d12:	2d03      	cmp	r5, #3
c0de4d14:	d1ec      	bne.n	c0de4cf0 <USBD_LL_Reset+0x14>
c0de4d16:	2000      	movs	r0, #0
c0de4d18:	bdb0      	pop	{r4, r5, r7, pc}

c0de4d1a <USBD_LL_SetSpeed>:
c0de4d1a:	4602      	mov	r2, r0
c0de4d1c:	2000      	movs	r0, #0
c0de4d1e:	7411      	strb	r1, [r2, #16]
c0de4d20:	4770      	bx	lr

c0de4d22 <USBD_LL_Suspend>:
c0de4d22:	2000      	movs	r0, #0
c0de4d24:	4770      	bx	lr

c0de4d26 <USBD_LL_Resume>:
c0de4d26:	2000      	movs	r0, #0
c0de4d28:	4770      	bx	lr
	...

c0de4d2c <USBD_LL_SOF>:
c0de4d2c:	b5b0      	push	{r4, r5, r7, lr}
c0de4d2e:	4604      	mov	r4, r0
c0de4d30:	f890 00dc 	ldrb.w	r0, [r0, #220]	; 0xdc
c0de4d34:	2803      	cmp	r0, #3
c0de4d36:	d114      	bne.n	c0de4d62 <USBD_LL_SOF+0x36>
c0de4d38:	2500      	movs	r5, #0
c0de4d3a:	bf00      	nop
c0de4d3c:	4620      	mov	r0, r4
c0de4d3e:	4629      	mov	r1, r5
c0de4d40:	f000 f811 	bl	c0de4d66 <usbd_is_valid_intf>
c0de4d44:	b150      	cbz	r0, c0de4d5c <USBD_LL_SOF+0x30>
c0de4d46:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de4d4a:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de4d4e:	69c0      	ldr	r0, [r0, #28]
c0de4d50:	b120      	cbz	r0, c0de4d5c <USBD_LL_SOF+0x30>
c0de4d52:	f7fe fa0d 	bl	c0de3170 <pic>
c0de4d56:	4601      	mov	r1, r0
c0de4d58:	4620      	mov	r0, r4
c0de4d5a:	4788      	blx	r1
c0de4d5c:	3501      	adds	r5, #1
c0de4d5e:	2d03      	cmp	r5, #3
c0de4d60:	d1ec      	bne.n	c0de4d3c <USBD_LL_SOF+0x10>
c0de4d62:	2000      	movs	r0, #0
c0de4d64:	bdb0      	pop	{r4, r5, r7, pc}

c0de4d66 <usbd_is_valid_intf>:
c0de4d66:	2902      	cmp	r1, #2
c0de4d68:	bf84      	itt	hi
c0de4d6a:	2000      	movhi	r0, #0
c0de4d6c:	4770      	bxhi	lr
c0de4d6e:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de4d72:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de4d76:	2800      	cmp	r0, #0
c0de4d78:	bf18      	it	ne
c0de4d7a:	2001      	movne	r0, #1
c0de4d7c:	4770      	bx	lr

c0de4d7e <USBD_StdDevReq>:
c0de4d7e:	b580      	push	{r7, lr}
c0de4d80:	784a      	ldrb	r2, [r1, #1]
c0de4d82:	2a04      	cmp	r2, #4
c0de4d84:	dd08      	ble.n	c0de4d98 <USBD_StdDevReq+0x1a>
c0de4d86:	2a07      	cmp	r2, #7
c0de4d88:	dc0e      	bgt.n	c0de4da8 <USBD_StdDevReq+0x2a>
c0de4d8a:	2a05      	cmp	r2, #5
c0de4d8c:	d013      	beq.n	c0de4db6 <USBD_StdDevReq+0x38>
c0de4d8e:	2a06      	cmp	r2, #6
c0de4d90:	d11a      	bne.n	c0de4dc8 <USBD_StdDevReq+0x4a>
c0de4d92:	f000 f820 	bl	c0de4dd6 <USBD_GetDescriptor>
c0de4d96:	e01c      	b.n	c0de4dd2 <USBD_StdDevReq+0x54>
c0de4d98:	b182      	cbz	r2, c0de4dbc <USBD_StdDevReq+0x3e>
c0de4d9a:	2a01      	cmp	r2, #1
c0de4d9c:	d017      	beq.n	c0de4dce <USBD_StdDevReq+0x50>
c0de4d9e:	2a03      	cmp	r2, #3
c0de4da0:	d112      	bne.n	c0de4dc8 <USBD_StdDevReq+0x4a>
c0de4da2:	f000 f92f 	bl	c0de5004 <USBD_SetFeature>
c0de4da6:	e014      	b.n	c0de4dd2 <USBD_StdDevReq+0x54>
c0de4da8:	2a08      	cmp	r2, #8
c0de4daa:	d00a      	beq.n	c0de4dc2 <USBD_StdDevReq+0x44>
c0de4dac:	2a09      	cmp	r2, #9
c0de4dae:	d10b      	bne.n	c0de4dc8 <USBD_StdDevReq+0x4a>
c0de4db0:	f000 f8b6 	bl	c0de4f20 <USBD_SetConfig>
c0de4db4:	e00d      	b.n	c0de4dd2 <USBD_StdDevReq+0x54>
c0de4db6:	f000 f891 	bl	c0de4edc <USBD_SetAddress>
c0de4dba:	e00a      	b.n	c0de4dd2 <USBD_StdDevReq+0x54>
c0de4dbc:	f000 f8fe 	bl	c0de4fbc <USBD_GetStatus>
c0de4dc0:	e007      	b.n	c0de4dd2 <USBD_StdDevReq+0x54>
c0de4dc2:	f000 f8e5 	bl	c0de4f90 <USBD_GetConfig>
c0de4dc6:	e004      	b.n	c0de4dd2 <USBD_StdDevReq+0x54>
c0de4dc8:	f000 fbd8 	bl	c0de557c <USBD_CtlError>
c0de4dcc:	e001      	b.n	c0de4dd2 <USBD_StdDevReq+0x54>
c0de4dce:	f000 f937 	bl	c0de5040 <USBD_ClrFeature>
c0de4dd2:	2000      	movs	r0, #0
c0de4dd4:	bd80      	pop	{r7, pc}

c0de4dd6 <USBD_GetDescriptor>:
c0de4dd6:	b5b0      	push	{r4, r5, r7, lr}
c0de4dd8:	b082      	sub	sp, #8
c0de4dda:	460d      	mov	r5, r1
c0de4ddc:	8849      	ldrh	r1, [r1, #2]
c0de4dde:	4604      	mov	r4, r0
c0de4de0:	0a08      	lsrs	r0, r1, #8
c0de4de2:	2200      	movs	r2, #0
c0de4de4:	2805      	cmp	r0, #5
c0de4de6:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de4dea:	dc12      	bgt.n	c0de4e12 <USBD_GetDescriptor+0x3c>
c0de4dec:	2801      	cmp	r0, #1
c0de4dee:	d01b      	beq.n	c0de4e28 <USBD_GetDescriptor+0x52>
c0de4df0:	2802      	cmp	r0, #2
c0de4df2:	d025      	beq.n	c0de4e40 <USBD_GetDescriptor+0x6a>
c0de4df4:	2803      	cmp	r0, #3
c0de4df6:	d135      	bne.n	c0de4e64 <USBD_GetDescriptor+0x8e>
c0de4df8:	b2c8      	uxtb	r0, r1
c0de4dfa:	2802      	cmp	r0, #2
c0de4dfc:	dc37      	bgt.n	c0de4e6e <USBD_GetDescriptor+0x98>
c0de4dfe:	2800      	cmp	r0, #0
c0de4e00:	d05c      	beq.n	c0de4ebc <USBD_GetDescriptor+0xe6>
c0de4e02:	2801      	cmp	r0, #1
c0de4e04:	d062      	beq.n	c0de4ecc <USBD_GetDescriptor+0xf6>
c0de4e06:	2802      	cmp	r0, #2
c0de4e08:	d12c      	bne.n	c0de4e64 <USBD_GetDescriptor+0x8e>
c0de4e0a:	f8d4 00f0 	ldr.w	r0, [r4, #240]	; 0xf0
c0de4e0e:	68c0      	ldr	r0, [r0, #12]
c0de4e10:	e00d      	b.n	c0de4e2e <USBD_GetDescriptor+0x58>
c0de4e12:	2806      	cmp	r0, #6
c0de4e14:	d01d      	beq.n	c0de4e52 <USBD_GetDescriptor+0x7c>
c0de4e16:	2807      	cmp	r0, #7
c0de4e18:	d022      	beq.n	c0de4e60 <USBD_GetDescriptor+0x8a>
c0de4e1a:	280f      	cmp	r0, #15
c0de4e1c:	d122      	bne.n	c0de4e64 <USBD_GetDescriptor+0x8e>
c0de4e1e:	f8d4 00f0 	ldr.w	r0, [r4, #240]	; 0xf0
c0de4e22:	69c0      	ldr	r0, [r0, #28]
c0de4e24:	b918      	cbnz	r0, c0de4e2e <USBD_GetDescriptor+0x58>
c0de4e26:	e01d      	b.n	c0de4e64 <USBD_GetDescriptor+0x8e>
c0de4e28:	f8d4 00f0 	ldr.w	r0, [r4, #240]	; 0xf0
c0de4e2c:	6800      	ldr	r0, [r0, #0]
c0de4e2e:	f7fe f99f 	bl	c0de3170 <pic>
c0de4e32:	7c23      	ldrb	r3, [r4, #16]
c0de4e34:	4602      	mov	r2, r0
c0de4e36:	f10d 0106 	add.w	r1, sp, #6
c0de4e3a:	4618      	mov	r0, r3
c0de4e3c:	4790      	blx	r2
c0de4e3e:	e02d      	b.n	c0de4e9c <USBD_GetDescriptor+0xc6>
c0de4e40:	f8d4 00f4 	ldr.w	r0, [r4, #244]	; 0xf4
c0de4e44:	b1e8      	cbz	r0, c0de4e82 <USBD_GetDescriptor+0xac>
c0de4e46:	7c21      	ldrb	r1, [r4, #16]
c0de4e48:	2900      	cmp	r1, #0
c0de4e4a:	bf0c      	ite	eq
c0de4e4c:	6a80      	ldreq	r0, [r0, #40]	; 0x28
c0de4e4e:	6ac0      	ldrne	r0, [r0, #44]	; 0x2c
c0de4e50:	e01e      	b.n	c0de4e90 <USBD_GetDescriptor+0xba>
c0de4e52:	7c20      	ldrb	r0, [r4, #16]
c0de4e54:	b930      	cbnz	r0, c0de4e64 <USBD_GetDescriptor+0x8e>
c0de4e56:	f8d4 00f4 	ldr.w	r0, [r4, #244]	; 0xf4
c0de4e5a:	b118      	cbz	r0, c0de4e64 <USBD_GetDescriptor+0x8e>
c0de4e5c:	6b40      	ldr	r0, [r0, #52]	; 0x34
c0de4e5e:	e017      	b.n	c0de4e90 <USBD_GetDescriptor+0xba>
c0de4e60:	7c20      	ldrb	r0, [r4, #16]
c0de4e62:	b180      	cbz	r0, c0de4e86 <USBD_GetDescriptor+0xb0>
c0de4e64:	4620      	mov	r0, r4
c0de4e66:	4629      	mov	r1, r5
c0de4e68:	f000 fb88 	bl	c0de557c <USBD_CtlError>
c0de4e6c:	e024      	b.n	c0de4eb8 <USBD_GetDescriptor+0xe2>
c0de4e6e:	2803      	cmp	r0, #3
c0de4e70:	d028      	beq.n	c0de4ec4 <USBD_GetDescriptor+0xee>
c0de4e72:	2804      	cmp	r0, #4
c0de4e74:	d02e      	beq.n	c0de4ed4 <USBD_GetDescriptor+0xfe>
c0de4e76:	2805      	cmp	r0, #5
c0de4e78:	d1f4      	bne.n	c0de4e64 <USBD_GetDescriptor+0x8e>
c0de4e7a:	f8d4 00f0 	ldr.w	r0, [r4, #240]	; 0xf0
c0de4e7e:	6980      	ldr	r0, [r0, #24]
c0de4e80:	e7d5      	b.n	c0de4e2e <USBD_GetDescriptor+0x58>
c0de4e82:	2100      	movs	r1, #0
c0de4e84:	e00b      	b.n	c0de4e9e <USBD_GetDescriptor+0xc8>
c0de4e86:	f8d4 00f4 	ldr.w	r0, [r4, #244]	; 0xf4
c0de4e8a:	2800      	cmp	r0, #0
c0de4e8c:	d0ea      	beq.n	c0de4e64 <USBD_GetDescriptor+0x8e>
c0de4e8e:	6b00      	ldr	r0, [r0, #48]	; 0x30
c0de4e90:	f7fe f96e 	bl	c0de3170 <pic>
c0de4e94:	4601      	mov	r1, r0
c0de4e96:	f10d 0006 	add.w	r0, sp, #6
c0de4e9a:	4788      	blx	r1
c0de4e9c:	4601      	mov	r1, r0
c0de4e9e:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de4ea2:	b148      	cbz	r0, c0de4eb8 <USBD_GetDescriptor+0xe2>
c0de4ea4:	88ea      	ldrh	r2, [r5, #6]
c0de4ea6:	b13a      	cbz	r2, c0de4eb8 <USBD_GetDescriptor+0xe2>
c0de4ea8:	4290      	cmp	r0, r2
c0de4eaa:	bf38      	it	cc
c0de4eac:	4602      	movcc	r2, r0
c0de4eae:	4620      	mov	r0, r4
c0de4eb0:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de4eb4:	f000 fc18 	bl	c0de56e8 <USBD_CtlSendData>
c0de4eb8:	b002      	add	sp, #8
c0de4eba:	bdb0      	pop	{r4, r5, r7, pc}
c0de4ebc:	f8d4 00f0 	ldr.w	r0, [r4, #240]	; 0xf0
c0de4ec0:	6840      	ldr	r0, [r0, #4]
c0de4ec2:	e7b4      	b.n	c0de4e2e <USBD_GetDescriptor+0x58>
c0de4ec4:	f8d4 00f0 	ldr.w	r0, [r4, #240]	; 0xf0
c0de4ec8:	6900      	ldr	r0, [r0, #16]
c0de4eca:	e7b0      	b.n	c0de4e2e <USBD_GetDescriptor+0x58>
c0de4ecc:	f8d4 00f0 	ldr.w	r0, [r4, #240]	; 0xf0
c0de4ed0:	6880      	ldr	r0, [r0, #8]
c0de4ed2:	e7ac      	b.n	c0de4e2e <USBD_GetDescriptor+0x58>
c0de4ed4:	f8d4 00f0 	ldr.w	r0, [r4, #240]	; 0xf0
c0de4ed8:	6940      	ldr	r0, [r0, #20]
c0de4eda:	e7a8      	b.n	c0de4e2e <USBD_GetDescriptor+0x58>

c0de4edc <USBD_SetAddress>:
c0de4edc:	b5b0      	push	{r4, r5, r7, lr}
c0de4ede:	888a      	ldrh	r2, [r1, #4]
c0de4ee0:	4604      	mov	r4, r0
c0de4ee2:	b92a      	cbnz	r2, c0de4ef0 <USBD_SetAddress+0x14>
c0de4ee4:	88c8      	ldrh	r0, [r1, #6]
c0de4ee6:	b918      	cbnz	r0, c0de4ef0 <USBD_SetAddress+0x14>
c0de4ee8:	f894 00dc 	ldrb.w	r0, [r4, #220]	; 0xdc
c0de4eec:	2803      	cmp	r0, #3
c0de4eee:	d104      	bne.n	c0de4efa <USBD_SetAddress+0x1e>
c0de4ef0:	4620      	mov	r0, r4
c0de4ef2:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de4ef6:	f000 bb41 	b.w	c0de557c <USBD_CtlError>
c0de4efa:	7888      	ldrb	r0, [r1, #2]
c0de4efc:	f000 057f 	and.w	r5, r0, #127	; 0x7f
c0de4f00:	4620      	mov	r0, r4
c0de4f02:	4629      	mov	r1, r5
c0de4f04:	f884 50de 	strb.w	r5, [r4, #222]	; 0xde
c0de4f08:	f7ff fd2e 	bl	c0de4968 <USBD_LL_SetUSBAddress>
c0de4f0c:	4620      	mov	r0, r4
c0de4f0e:	f000 fc12 	bl	c0de5736 <USBD_CtlSendStatus>
c0de4f12:	2d00      	cmp	r5, #0
c0de4f14:	bf0c      	ite	eq
c0de4f16:	2001      	moveq	r0, #1
c0de4f18:	2002      	movne	r0, #2
c0de4f1a:	f884 00dc 	strb.w	r0, [r4, #220]	; 0xdc
c0de4f1e:	bdb0      	pop	{r4, r5, r7, pc}

c0de4f20 <USBD_SetConfig>:
c0de4f20:	b570      	push	{r4, r5, r6, lr}
c0de4f22:	788e      	ldrb	r6, [r1, #2]
c0de4f24:	460d      	mov	r5, r1
c0de4f26:	2e02      	cmp	r6, #2
c0de4f28:	4604      	mov	r4, r0
c0de4f2a:	d21a      	bcs.n	c0de4f62 <USBD_SetConfig+0x42>
c0de4f2c:	f894 00dc 	ldrb.w	r0, [r4, #220]	; 0xdc
c0de4f30:	2803      	cmp	r0, #3
c0de4f32:	d007      	beq.n	c0de4f44 <USBD_SetConfig+0x24>
c0de4f34:	2802      	cmp	r0, #2
c0de4f36:	d114      	bne.n	c0de4f62 <USBD_SetConfig+0x42>
c0de4f38:	b32e      	cbz	r6, c0de4f86 <USBD_SetConfig+0x66>
c0de4f3a:	2003      	movs	r0, #3
c0de4f3c:	6066      	str	r6, [r4, #4]
c0de4f3e:	f884 00dc 	strb.w	r0, [r4, #220]	; 0xdc
c0de4f42:	e008      	b.n	c0de4f56 <USBD_SetConfig+0x36>
c0de4f44:	b19e      	cbz	r6, c0de4f6e <USBD_SetConfig+0x4e>
c0de4f46:	6860      	ldr	r0, [r4, #4]
c0de4f48:	42b0      	cmp	r0, r6
c0de4f4a:	d01c      	beq.n	c0de4f86 <USBD_SetConfig+0x66>
c0de4f4c:	b2c1      	uxtb	r1, r0
c0de4f4e:	4620      	mov	r0, r4
c0de4f50:	f7ff fdba 	bl	c0de4ac8 <USBD_ClrClassConfig>
c0de4f54:	6066      	str	r6, [r4, #4]
c0de4f56:	4620      	mov	r0, r4
c0de4f58:	4631      	mov	r1, r6
c0de4f5a:	f7ff fd9b 	bl	c0de4a94 <USBD_SetClassConfig>
c0de4f5e:	2802      	cmp	r0, #2
c0de4f60:	d111      	bne.n	c0de4f86 <USBD_SetConfig+0x66>
c0de4f62:	4620      	mov	r0, r4
c0de4f64:	4629      	mov	r1, r5
c0de4f66:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de4f6a:	f000 bb07 	b.w	c0de557c <USBD_CtlError>
c0de4f6e:	2002      	movs	r0, #2
c0de4f70:	f884 00dc 	strb.w	r0, [r4, #220]	; 0xdc
c0de4f74:	2000      	movs	r0, #0
c0de4f76:	6060      	str	r0, [r4, #4]
c0de4f78:	4620      	mov	r0, r4
c0de4f7a:	4631      	mov	r1, r6
c0de4f7c:	f7ff fda4 	bl	c0de4ac8 <USBD_ClrClassConfig>
c0de4f80:	4620      	mov	r0, r4
c0de4f82:	f000 fbd8 	bl	c0de5736 <USBD_CtlSendStatus>
c0de4f86:	4620      	mov	r0, r4
c0de4f88:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de4f8c:	f000 bbd3 	b.w	c0de5736 <USBD_CtlSendStatus>

c0de4f90 <USBD_GetConfig>:
c0de4f90:	88ca      	ldrh	r2, [r1, #6]
c0de4f92:	2a01      	cmp	r2, #1
c0de4f94:	bf18      	it	ne
c0de4f96:	f000 baf1 	bne.w	c0de557c <USBD_CtlError>
c0de4f9a:	f890 20dc 	ldrb.w	r2, [r0, #220]	; 0xdc
c0de4f9e:	2a03      	cmp	r2, #3
c0de4fa0:	d006      	beq.n	c0de4fb0 <USBD_GetConfig+0x20>
c0de4fa2:	2a02      	cmp	r2, #2
c0de4fa4:	d108      	bne.n	c0de4fb8 <USBD_GetConfig+0x28>
c0de4fa6:	2200      	movs	r2, #0
c0de4fa8:	4601      	mov	r1, r0
c0de4faa:	f841 2f08 	str.w	r2, [r1, #8]!
c0de4fae:	e000      	b.n	c0de4fb2 <USBD_GetConfig+0x22>
c0de4fb0:	1d01      	adds	r1, r0, #4
c0de4fb2:	2201      	movs	r2, #1
c0de4fb4:	f000 bb98 	b.w	c0de56e8 <USBD_CtlSendData>
c0de4fb8:	f000 bae0 	b.w	c0de557c <USBD_CtlError>

c0de4fbc <USBD_GetStatus>:
c0de4fbc:	b5b0      	push	{r4, r5, r7, lr}
c0de4fbe:	4604      	mov	r4, r0
c0de4fc0:	f890 00dc 	ldrb.w	r0, [r0, #220]	; 0xdc
c0de4fc4:	f000 00fe 	and.w	r0, r0, #254	; 0xfe
c0de4fc8:	2802      	cmp	r0, #2
c0de4fca:	d10d      	bne.n	c0de4fe8 <USBD_GetStatus+0x2c>
c0de4fcc:	2001      	movs	r0, #1
c0de4fce:	4625      	mov	r5, r4
c0de4fd0:	f845 0f0c 	str.w	r0, [r5, #12]!
c0de4fd4:	f8d5 00d8 	ldr.w	r0, [r5, #216]	; 0xd8
c0de4fd8:	b158      	cbz	r0, c0de4ff2 <USBD_GetStatus+0x36>
c0de4fda:	4620      	mov	r0, r4
c0de4fdc:	f000 fbb6 	bl	c0de574c <USBD_CtlReceiveStatus>
c0de4fe0:	68e0      	ldr	r0, [r4, #12]
c0de4fe2:	f040 0302 	orr.w	r3, r0, #2
c0de4fe6:	e005      	b.n	c0de4ff4 <USBD_GetStatus+0x38>
c0de4fe8:	4620      	mov	r0, r4
c0de4fea:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de4fee:	f000 bac5 	b.w	c0de557c <USBD_CtlError>
c0de4ff2:	2303      	movs	r3, #3
c0de4ff4:	4620      	mov	r0, r4
c0de4ff6:	4629      	mov	r1, r5
c0de4ff8:	2202      	movs	r2, #2
c0de4ffa:	60e3      	str	r3, [r4, #12]
c0de4ffc:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5000:	f000 bb72 	b.w	c0de56e8 <USBD_CtlSendData>

c0de5004 <USBD_SetFeature>:
c0de5004:	b5b0      	push	{r4, r5, r7, lr}
c0de5006:	460d      	mov	r5, r1
c0de5008:	8849      	ldrh	r1, [r1, #2]
c0de500a:	2901      	cmp	r1, #1
c0de500c:	bf18      	it	ne
c0de500e:	bdb0      	popne	{r4, r5, r7, pc}
c0de5010:	4604      	mov	r4, r0
c0de5012:	7928      	ldrb	r0, [r5, #4]
c0de5014:	2101      	movs	r1, #1
c0de5016:	2802      	cmp	r0, #2
c0de5018:	f8c4 10e4 	str.w	r1, [r4, #228]	; 0xe4
c0de501c:	d80b      	bhi.n	c0de5036 <USBD_SetFeature+0x32>
c0de501e:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de5022:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de5026:	b130      	cbz	r0, c0de5036 <USBD_SetFeature+0x32>
c0de5028:	6880      	ldr	r0, [r0, #8]
c0de502a:	f7fe f8a1 	bl	c0de3170 <pic>
c0de502e:	4602      	mov	r2, r0
c0de5030:	4620      	mov	r0, r4
c0de5032:	4629      	mov	r1, r5
c0de5034:	4790      	blx	r2
c0de5036:	4620      	mov	r0, r4
c0de5038:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de503c:	f000 bb7b 	b.w	c0de5736 <USBD_CtlSendStatus>

c0de5040 <USBD_ClrFeature>:
c0de5040:	b5b0      	push	{r4, r5, r7, lr}
c0de5042:	4604      	mov	r4, r0
c0de5044:	f890 00dc 	ldrb.w	r0, [r0, #220]	; 0xdc
c0de5048:	460d      	mov	r5, r1
c0de504a:	f000 00fe 	and.w	r0, r0, #254	; 0xfe
c0de504e:	2802      	cmp	r0, #2
c0de5050:	d11a      	bne.n	c0de5088 <USBD_ClrFeature+0x48>
c0de5052:	8868      	ldrh	r0, [r5, #2]
c0de5054:	2801      	cmp	r0, #1
c0de5056:	bf18      	it	ne
c0de5058:	bdb0      	popne	{r4, r5, r7, pc}
c0de505a:	7928      	ldrb	r0, [r5, #4]
c0de505c:	2100      	movs	r1, #0
c0de505e:	2802      	cmp	r0, #2
c0de5060:	f8c4 10e4 	str.w	r1, [r4, #228]	; 0xe4
c0de5064:	d80b      	bhi.n	c0de507e <USBD_ClrFeature+0x3e>
c0de5066:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de506a:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de506e:	b130      	cbz	r0, c0de507e <USBD_ClrFeature+0x3e>
c0de5070:	6880      	ldr	r0, [r0, #8]
c0de5072:	f7fe f87d 	bl	c0de3170 <pic>
c0de5076:	4602      	mov	r2, r0
c0de5078:	4620      	mov	r0, r4
c0de507a:	4629      	mov	r1, r5
c0de507c:	4790      	blx	r2
c0de507e:	4620      	mov	r0, r4
c0de5080:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5084:	f000 bb57 	b.w	c0de5736 <USBD_CtlSendStatus>
c0de5088:	4620      	mov	r0, r4
c0de508a:	4629      	mov	r1, r5
c0de508c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5090:	f000 ba74 	b.w	c0de557c <USBD_CtlError>

c0de5094 <USBD_StdItfReq>:
c0de5094:	b5b0      	push	{r4, r5, r7, lr}
c0de5096:	4604      	mov	r4, r0
c0de5098:	f890 00dc 	ldrb.w	r0, [r0, #220]	; 0xdc
c0de509c:	460d      	mov	r5, r1
c0de509e:	2803      	cmp	r0, #3
c0de50a0:	d114      	bne.n	c0de50cc <USBD_StdItfReq+0x38>
c0de50a2:	7928      	ldrb	r0, [r5, #4]
c0de50a4:	2802      	cmp	r0, #2
c0de50a6:	d811      	bhi.n	c0de50cc <USBD_StdItfReq+0x38>
c0de50a8:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de50ac:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de50b0:	b160      	cbz	r0, c0de50cc <USBD_StdItfReq+0x38>
c0de50b2:	6880      	ldr	r0, [r0, #8]
c0de50b4:	f7fe f85c 	bl	c0de3170 <pic>
c0de50b8:	4602      	mov	r2, r0
c0de50ba:	4620      	mov	r0, r4
c0de50bc:	4629      	mov	r1, r5
c0de50be:	4790      	blx	r2
c0de50c0:	88e8      	ldrh	r0, [r5, #6]
c0de50c2:	b938      	cbnz	r0, c0de50d4 <USBD_StdItfReq+0x40>
c0de50c4:	4620      	mov	r0, r4
c0de50c6:	f000 fb36 	bl	c0de5736 <USBD_CtlSendStatus>
c0de50ca:	e003      	b.n	c0de50d4 <USBD_StdItfReq+0x40>
c0de50cc:	4620      	mov	r0, r4
c0de50ce:	4629      	mov	r1, r5
c0de50d0:	f000 fa54 	bl	c0de557c <USBD_CtlError>
c0de50d4:	2000      	movs	r0, #0
c0de50d6:	bdb0      	pop	{r4, r5, r7, pc}

c0de50d8 <USBD_StdEPReq>:
c0de50d8:	b5b0      	push	{r4, r5, r7, lr}
c0de50da:	b082      	sub	sp, #8
c0de50dc:	460d      	mov	r5, r1
c0de50de:	7909      	ldrb	r1, [r1, #4]
c0de50e0:	4604      	mov	r4, r0
c0de50e2:	f001 027f 	and.w	r2, r1, #127	; 0x7f
c0de50e6:	2a07      	cmp	r2, #7
c0de50e8:	d304      	bcc.n	c0de50f4 <USBD_StdEPReq+0x1c>
c0de50ea:	4620      	mov	r0, r4
c0de50ec:	4629      	mov	r1, r5
c0de50ee:	f000 fa45 	bl	c0de557c <USBD_CtlError>
c0de50f2:	e06a      	b.n	c0de51ca <USBD_StdEPReq+0xf2>
c0de50f4:	2902      	cmp	r1, #2
c0de50f6:	d811      	bhi.n	c0de511c <USBD_StdEPReq+0x44>
c0de50f8:	7828      	ldrb	r0, [r5, #0]
c0de50fa:	f000 0060 	and.w	r0, r0, #96	; 0x60
c0de50fe:	2820      	cmp	r0, #32
c0de5100:	d10c      	bne.n	c0de511c <USBD_StdEPReq+0x44>
c0de5102:	eb04 00c1 	add.w	r0, r4, r1, lsl #3
c0de5106:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de510a:	b138      	cbz	r0, c0de511c <USBD_StdEPReq+0x44>
c0de510c:	6880      	ldr	r0, [r0, #8]
c0de510e:	f7fe f82f 	bl	c0de3170 <pic>
c0de5112:	4602      	mov	r2, r0
c0de5114:	4620      	mov	r0, r4
c0de5116:	4629      	mov	r1, r5
c0de5118:	4790      	blx	r2
c0de511a:	e056      	b.n	c0de51ca <USBD_StdEPReq+0xf2>
c0de511c:	7868      	ldrb	r0, [r5, #1]
c0de511e:	b300      	cbz	r0, c0de5162 <USBD_StdEPReq+0x8a>
c0de5120:	2801      	cmp	r0, #1
c0de5122:	d026      	beq.n	c0de5172 <USBD_StdEPReq+0x9a>
c0de5124:	2803      	cmp	r0, #3
c0de5126:	d150      	bne.n	c0de51ca <USBD_StdEPReq+0xf2>
c0de5128:	f894 00dc 	ldrb.w	r0, [r4, #220]	; 0xdc
c0de512c:	2803      	cmp	r0, #3
c0de512e:	d124      	bne.n	c0de517a <USBD_StdEPReq+0xa2>
c0de5130:	8868      	ldrh	r0, [r5, #2]
c0de5132:	b938      	cbnz	r0, c0de5144 <USBD_StdEPReq+0x6c>
c0de5134:	f041 0080 	orr.w	r0, r1, #128	; 0x80
c0de5138:	2880      	cmp	r0, #128	; 0x80
c0de513a:	d003      	beq.n	c0de5144 <USBD_StdEPReq+0x6c>
c0de513c:	4620      	mov	r0, r4
c0de513e:	f7ff fb9f 	bl	c0de4880 <USBD_LL_StallEP>
c0de5142:	7929      	ldrb	r1, [r5, #4]
c0de5144:	2902      	cmp	r1, #2
c0de5146:	d83d      	bhi.n	c0de51c4 <USBD_StdEPReq+0xec>
c0de5148:	eb04 00c1 	add.w	r0, r4, r1, lsl #3
c0de514c:	f8d0 00f4 	ldr.w	r0, [r0, #244]	; 0xf4
c0de5150:	b3c0      	cbz	r0, c0de51c4 <USBD_StdEPReq+0xec>
c0de5152:	6880      	ldr	r0, [r0, #8]
c0de5154:	f7fe f80c 	bl	c0de3170 <pic>
c0de5158:	4602      	mov	r2, r0
c0de515a:	4620      	mov	r0, r4
c0de515c:	4629      	mov	r1, r5
c0de515e:	4790      	blx	r2
c0de5160:	e030      	b.n	c0de51c4 <USBD_StdEPReq+0xec>
c0de5162:	f894 00dc 	ldrb.w	r0, [r4, #220]	; 0xdc
c0de5166:	2803      	cmp	r0, #3
c0de5168:	d011      	beq.n	c0de518e <USBD_StdEPReq+0xb6>
c0de516a:	2802      	cmp	r0, #2
c0de516c:	d1bd      	bne.n	c0de50ea <USBD_StdEPReq+0x12>
c0de516e:	b952      	cbnz	r2, c0de5186 <USBD_StdEPReq+0xae>
c0de5170:	e02b      	b.n	c0de51ca <USBD_StdEPReq+0xf2>
c0de5172:	f894 00dc 	ldrb.w	r0, [r4, #220]	; 0xdc
c0de5176:	2803      	cmp	r0, #3
c0de5178:	d018      	beq.n	c0de51ac <USBD_StdEPReq+0xd4>
c0de517a:	2802      	cmp	r0, #2
c0de517c:	d1b5      	bne.n	c0de50ea <USBD_StdEPReq+0x12>
c0de517e:	f041 0080 	orr.w	r0, r1, #128	; 0x80
c0de5182:	2880      	cmp	r0, #128	; 0x80
c0de5184:	d021      	beq.n	c0de51ca <USBD_StdEPReq+0xf2>
c0de5186:	4620      	mov	r0, r4
c0de5188:	f7ff fb7a 	bl	c0de4880 <USBD_LL_StallEP>
c0de518c:	e01d      	b.n	c0de51ca <USBD_StdEPReq+0xf2>
c0de518e:	4620      	mov	r0, r4
c0de5190:	f7ff fbd6 	bl	c0de4940 <USBD_LL_IsStallEP>
c0de5194:	2800      	cmp	r0, #0
c0de5196:	bf18      	it	ne
c0de5198:	2001      	movne	r0, #1
c0de519a:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de519e:	f10d 0106 	add.w	r1, sp, #6
c0de51a2:	4620      	mov	r0, r4
c0de51a4:	2202      	movs	r2, #2
c0de51a6:	f000 fa9f 	bl	c0de56e8 <USBD_CtlSendData>
c0de51aa:	e00e      	b.n	c0de51ca <USBD_StdEPReq+0xf2>
c0de51ac:	8868      	ldrh	r0, [r5, #2]
c0de51ae:	b960      	cbnz	r0, c0de51ca <USBD_StdEPReq+0xf2>
c0de51b0:	b142      	cbz	r2, c0de51c4 <USBD_StdEPReq+0xec>
c0de51b2:	4620      	mov	r0, r4
c0de51b4:	f7ff fb94 	bl	c0de48e0 <USBD_LL_ClearStallEP>
c0de51b8:	7928      	ldrb	r0, [r5, #4]
c0de51ba:	2802      	cmp	r0, #2
c0de51bc:	d802      	bhi.n	c0de51c4 <USBD_StdEPReq+0xec>
c0de51be:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de51c2:	e7c3      	b.n	c0de514c <USBD_StdEPReq+0x74>
c0de51c4:	4620      	mov	r0, r4
c0de51c6:	f000 fab6 	bl	c0de5736 <USBD_CtlSendStatus>
c0de51ca:	2000      	movs	r0, #0
c0de51cc:	b002      	add	sp, #8
c0de51ce:	bdb0      	pop	{r4, r5, r7, pc}

c0de51d0 <USBD_ParseSetupRequest>:
c0de51d0:	780a      	ldrb	r2, [r1, #0]
c0de51d2:	7002      	strb	r2, [r0, #0]
c0de51d4:	784a      	ldrb	r2, [r1, #1]
c0de51d6:	7042      	strb	r2, [r0, #1]
c0de51d8:	788a      	ldrb	r2, [r1, #2]
c0de51da:	78cb      	ldrb	r3, [r1, #3]
c0de51dc:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de51e0:	8042      	strh	r2, [r0, #2]
c0de51e2:	790a      	ldrb	r2, [r1, #4]
c0de51e4:	794b      	ldrb	r3, [r1, #5]
c0de51e6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de51ea:	8082      	strh	r2, [r0, #4]
c0de51ec:	798a      	ldrb	r2, [r1, #6]
c0de51ee:	79c9      	ldrb	r1, [r1, #7]
c0de51f0:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de51f4:	80c1      	strh	r1, [r0, #6]
c0de51f6:	4770      	bx	lr

c0de51f8 <USBD_CtlStall>:
c0de51f8:	b510      	push	{r4, lr}
c0de51fa:	2180      	movs	r1, #128	; 0x80
c0de51fc:	4604      	mov	r4, r0
c0de51fe:	f7ff fb3f 	bl	c0de4880 <USBD_LL_StallEP>
c0de5202:	4620      	mov	r0, r4
c0de5204:	2100      	movs	r1, #0
c0de5206:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de520a:	f7ff bb39 	b.w	c0de4880 <USBD_LL_StallEP>

c0de520e <USBD_HID_Setup>:
c0de520e:	b5b0      	push	{r4, r5, r7, lr}
c0de5210:	b082      	sub	sp, #8
c0de5212:	460d      	mov	r5, r1
c0de5214:	7809      	ldrb	r1, [r1, #0]
c0de5216:	4604      	mov	r4, r0
c0de5218:	2000      	movs	r0, #0
c0de521a:	f011 0160 	ands.w	r1, r1, #96	; 0x60
c0de521e:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de5222:	f88d 0005 	strb.w	r0, [sp, #5]
c0de5226:	d010      	beq.n	c0de524a <USBD_HID_Setup+0x3c>
c0de5228:	2920      	cmp	r1, #32
c0de522a:	d13c      	bne.n	c0de52a6 <USBD_HID_Setup+0x98>
c0de522c:	7868      	ldrb	r0, [r5, #1]
c0de522e:	f1a0 010a 	sub.w	r1, r0, #10
c0de5232:	2902      	cmp	r1, #2
c0de5234:	d336      	bcc.n	c0de52a4 <USBD_HID_Setup+0x96>
c0de5236:	2802      	cmp	r0, #2
c0de5238:	d018      	beq.n	c0de526c <USBD_HID_Setup+0x5e>
c0de523a:	2803      	cmp	r0, #3
c0de523c:	d016      	beq.n	c0de526c <USBD_HID_Setup+0x5e>
c0de523e:	4620      	mov	r0, r4
c0de5240:	4629      	mov	r1, r5
c0de5242:	f000 f99b 	bl	c0de557c <USBD_CtlError>
c0de5246:	2002      	movs	r0, #2
c0de5248:	e02d      	b.n	c0de52a6 <USBD_HID_Setup+0x98>
c0de524a:	7868      	ldrb	r0, [r5, #1]
c0de524c:	280b      	cmp	r0, #11
c0de524e:	d012      	beq.n	c0de5276 <USBD_HID_Setup+0x68>
c0de5250:	280a      	cmp	r0, #10
c0de5252:	d00b      	beq.n	c0de526c <USBD_HID_Setup+0x5e>
c0de5254:	2806      	cmp	r0, #6
c0de5256:	d125      	bne.n	c0de52a4 <USBD_HID_Setup+0x96>
c0de5258:	78e8      	ldrb	r0, [r5, #3]
c0de525a:	2821      	cmp	r0, #33	; 0x21
c0de525c:	d00f      	beq.n	c0de527e <USBD_HID_Setup+0x70>
c0de525e:	2822      	cmp	r0, #34	; 0x22
c0de5260:	d11b      	bne.n	c0de529a <USBD_HID_Setup+0x8c>
c0de5262:	f10d 0006 	add.w	r0, sp, #6
c0de5266:	f000 f851 	bl	c0de530c <USBD_HID_GetReportDescriptor_impl>
c0de526a:	e00c      	b.n	c0de5286 <USBD_HID_Setup+0x78>
c0de526c:	f10d 0105 	add.w	r1, sp, #5
c0de5270:	4620      	mov	r0, r4
c0de5272:	2201      	movs	r2, #1
c0de5274:	e014      	b.n	c0de52a0 <USBD_HID_Setup+0x92>
c0de5276:	4620      	mov	r0, r4
c0de5278:	f000 fa5d 	bl	c0de5736 <USBD_CtlSendStatus>
c0de527c:	e012      	b.n	c0de52a4 <USBD_HID_Setup+0x96>
c0de527e:	f10d 0006 	add.w	r0, sp, #6
c0de5282:	f000 f829 	bl	c0de52d8 <USBD_HID_GetHidDescriptor_impl>
c0de5286:	f8bd 3006 	ldrh.w	r3, [sp, #6]
c0de528a:	88ea      	ldrh	r2, [r5, #6]
c0de528c:	4601      	mov	r1, r0
c0de528e:	4293      	cmp	r3, r2
c0de5290:	bf38      	it	cc
c0de5292:	461a      	movcc	r2, r3
c0de5294:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de5298:	e001      	b.n	c0de529e <USBD_HID_Setup+0x90>
c0de529a:	2200      	movs	r2, #0
c0de529c:	2100      	movs	r1, #0
c0de529e:	4620      	mov	r0, r4
c0de52a0:	f000 fa22 	bl	c0de56e8 <USBD_CtlSendData>
c0de52a4:	2000      	movs	r0, #0
c0de52a6:	b002      	add	sp, #8
c0de52a8:	bdb0      	pop	{r4, r5, r7, pc}

c0de52aa <USBD_HID_Init>:
c0de52aa:	b510      	push	{r4, lr}
c0de52ac:	2182      	movs	r1, #130	; 0x82
c0de52ae:	2203      	movs	r2, #3
c0de52b0:	2340      	movs	r3, #64	; 0x40
c0de52b2:	4604      	mov	r4, r0
c0de52b4:	f7ff faaa 	bl	c0de480c <USBD_LL_OpenEP>
c0de52b8:	4620      	mov	r0, r4
c0de52ba:	2102      	movs	r1, #2
c0de52bc:	2203      	movs	r2, #3
c0de52be:	2340      	movs	r3, #64	; 0x40
c0de52c0:	f7ff faa4 	bl	c0de480c <USBD_LL_OpenEP>
c0de52c4:	4620      	mov	r0, r4
c0de52c6:	2102      	movs	r1, #2
c0de52c8:	2240      	movs	r2, #64	; 0x40
c0de52ca:	f7ff fb85 	bl	c0de49d8 <USBD_LL_PrepareReceive>
c0de52ce:	2000      	movs	r0, #0
c0de52d0:	bd10      	pop	{r4, pc}

c0de52d2 <USBD_HID_DeInit>:
c0de52d2:	2000      	movs	r0, #0
c0de52d4:	4770      	bx	lr
	...

c0de52d8 <USBD_HID_GetHidDescriptor_impl>:
c0de52d8:	4909      	ldr	r1, [pc, #36]	; (c0de5300 <USBD_HID_GetHidDescriptor_impl+0x28>)
c0de52da:	4449      	add	r1, r9
c0de52dc:	f891 20ec 	ldrb.w	r2, [r1, #236]	; 0xec
c0de52e0:	4601      	mov	r1, r0
c0de52e2:	2a01      	cmp	r2, #1
c0de52e4:	d004      	beq.n	c0de52f0 <USBD_HID_GetHidDescriptor_impl+0x18>
c0de52e6:	b93a      	cbnz	r2, c0de52f8 <USBD_HID_GetHidDescriptor_impl+0x20>
c0de52e8:	4807      	ldr	r0, [pc, #28]	; (c0de5308 <USBD_HID_GetHidDescriptor_impl+0x30>)
c0de52ea:	2209      	movs	r2, #9
c0de52ec:	4478      	add	r0, pc
c0de52ee:	e005      	b.n	c0de52fc <USBD_HID_GetHidDescriptor_impl+0x24>
c0de52f0:	4804      	ldr	r0, [pc, #16]	; (c0de5304 <USBD_HID_GetHidDescriptor_impl+0x2c>)
c0de52f2:	2209      	movs	r2, #9
c0de52f4:	4478      	add	r0, pc
c0de52f6:	e001      	b.n	c0de52fc <USBD_HID_GetHidDescriptor_impl+0x24>
c0de52f8:	2200      	movs	r2, #0
c0de52fa:	2000      	movs	r0, #0
c0de52fc:	800a      	strh	r2, [r1, #0]
c0de52fe:	4770      	bx	lr
c0de5300:	00000780 	.word	0x00000780
c0de5304:	00005328 	.word	0x00005328
c0de5308:	0000533c 	.word	0x0000533c

c0de530c <USBD_HID_GetReportDescriptor_impl>:
c0de530c:	b5b0      	push	{r4, r5, r7, lr}
c0de530e:	4914      	ldr	r1, [pc, #80]	; (c0de5360 <USBD_HID_GetReportDescriptor_impl+0x54>)
c0de5310:	4604      	mov	r4, r0
c0de5312:	eb09 0201 	add.w	r2, r9, r1
c0de5316:	f892 20ec 	ldrb.w	r2, [r2, #236]	; 0xec
c0de531a:	b1c2      	cbz	r2, c0de534e <USBD_HID_GetReportDescriptor_impl+0x42>
c0de531c:	2a01      	cmp	r2, #1
c0de531e:	d11a      	bne.n	c0de5356 <USBD_HID_GetReportDescriptor_impl+0x4a>
c0de5320:	eb09 0501 	add.w	r5, r9, r1
c0de5324:	4628      	mov	r0, r5
c0de5326:	2181      	movs	r1, #129	; 0x81
c0de5328:	2203      	movs	r2, #3
c0de532a:	2340      	movs	r3, #64	; 0x40
c0de532c:	f7ff fa6e 	bl	c0de480c <USBD_LL_OpenEP>
c0de5330:	4628      	mov	r0, r5
c0de5332:	2101      	movs	r1, #1
c0de5334:	2203      	movs	r2, #3
c0de5336:	2340      	movs	r3, #64	; 0x40
c0de5338:	f7ff fa68 	bl	c0de480c <USBD_LL_OpenEP>
c0de533c:	4628      	mov	r0, r5
c0de533e:	2101      	movs	r1, #1
c0de5340:	2240      	movs	r2, #64	; 0x40
c0de5342:	f7ff fb49 	bl	c0de49d8 <USBD_LL_PrepareReceive>
c0de5346:	4808      	ldr	r0, [pc, #32]	; (c0de5368 <USBD_HID_GetReportDescriptor_impl+0x5c>)
c0de5348:	2122      	movs	r1, #34	; 0x22
c0de534a:	4478      	add	r0, pc
c0de534c:	e005      	b.n	c0de535a <USBD_HID_GetReportDescriptor_impl+0x4e>
c0de534e:	4805      	ldr	r0, [pc, #20]	; (c0de5364 <USBD_HID_GetReportDescriptor_impl+0x58>)
c0de5350:	2122      	movs	r1, #34	; 0x22
c0de5352:	4478      	add	r0, pc
c0de5354:	e001      	b.n	c0de535a <USBD_HID_GetReportDescriptor_impl+0x4e>
c0de5356:	2100      	movs	r1, #0
c0de5358:	2000      	movs	r0, #0
c0de535a:	8021      	strh	r1, [r4, #0]
c0de535c:	bdb0      	pop	{r4, r5, r7, pc}
c0de535e:	bf00      	nop
c0de5360:	00000780 	.word	0x00000780
c0de5364:	00005301 	.word	0x00005301
c0de5368:	000052e7 	.word	0x000052e7

c0de536c <USBD_U2F_Init>:
c0de536c:	b510      	push	{r4, lr}
c0de536e:	2181      	movs	r1, #129	; 0x81
c0de5370:	2203      	movs	r2, #3
c0de5372:	2340      	movs	r3, #64	; 0x40
c0de5374:	4604      	mov	r4, r0
c0de5376:	f7ff fa49 	bl	c0de480c <USBD_LL_OpenEP>
c0de537a:	4620      	mov	r0, r4
c0de537c:	2101      	movs	r1, #1
c0de537e:	2203      	movs	r2, #3
c0de5380:	2340      	movs	r3, #64	; 0x40
c0de5382:	f7ff fa43 	bl	c0de480c <USBD_LL_OpenEP>
c0de5386:	4620      	mov	r0, r4
c0de5388:	2101      	movs	r1, #1
c0de538a:	2240      	movs	r2, #64	; 0x40
c0de538c:	f7ff fb24 	bl	c0de49d8 <USBD_LL_PrepareReceive>
c0de5390:	2000      	movs	r0, #0
c0de5392:	bd10      	pop	{r4, pc}

c0de5394 <USBD_U2F_DataIn_impl>:
c0de5394:	2901      	cmp	r1, #1
c0de5396:	d107      	bne.n	c0de53a8 <USBD_U2F_DataIn_impl+0x14>
c0de5398:	b580      	push	{r7, lr}
c0de539a:	4804      	ldr	r0, [pc, #16]	; (c0de53ac <USBD_U2F_DataIn_impl+0x18>)
c0de539c:	2101      	movs	r1, #1
c0de539e:	4448      	add	r0, r9
c0de53a0:	f7fe fe42 	bl	c0de4028 <u2f_transport_sent>
c0de53a4:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de53a8:	2000      	movs	r0, #0
c0de53aa:	4770      	bx	lr
c0de53ac:	00000418 	.word	0x00000418

c0de53b0 <USBD_U2F_DataOut_impl>:
c0de53b0:	2901      	cmp	r1, #1
c0de53b2:	d112      	bne.n	c0de53da <USBD_U2F_DataOut_impl+0x2a>
c0de53b4:	b510      	push	{r4, lr}
c0de53b6:	4614      	mov	r4, r2
c0de53b8:	2101      	movs	r1, #1
c0de53ba:	2240      	movs	r2, #64	; 0x40
c0de53bc:	f7ff fb0c 	bl	c0de49d8 <USBD_LL_PrepareReceive>
c0de53c0:	2001      	movs	r0, #1
c0de53c2:	f7fc ff57 	bl	c0de2274 <io_seproxyhal_get_ep_rx_size>
c0de53c6:	4906      	ldr	r1, [pc, #24]	; (c0de53e0 <USBD_U2F_DataOut_impl+0x30>)
c0de53c8:	4602      	mov	r2, r0
c0de53ca:	eb09 0001 	add.w	r0, r9, r1
c0de53ce:	4621      	mov	r1, r4
c0de53d0:	2301      	movs	r3, #1
c0de53d2:	f7fe ff6d 	bl	c0de42b0 <u2f_transport_received>
c0de53d6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de53da:	2000      	movs	r0, #0
c0de53dc:	4770      	bx	lr
c0de53de:	bf00      	nop
c0de53e0:	00000418 	.word	0x00000418

c0de53e4 <USBD_HID_DataIn_impl>:
c0de53e4:	2902      	cmp	r1, #2
c0de53e6:	d106      	bne.n	c0de53f6 <USBD_HID_DataIn_impl+0x12>
c0de53e8:	b580      	push	{r7, lr}
c0de53ea:	4804      	ldr	r0, [pc, #16]	; (c0de53fc <USBD_HID_DataIn_impl+0x18>)
c0de53ec:	4478      	add	r0, pc
c0de53ee:	f7fd fbbb 	bl	c0de2b68 <io_usb_hid_sent>
c0de53f2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de53f6:	2000      	movs	r0, #0
c0de53f8:	4770      	bx	lr
c0de53fa:	bf00      	nop
c0de53fc:	ffffcf7d 	.word	0xffffcf7d

c0de5400 <USBD_HID_DataOut_impl>:
c0de5400:	b5b0      	push	{r4, r5, r7, lr}
c0de5402:	2902      	cmp	r1, #2
c0de5404:	d11f      	bne.n	c0de5446 <USBD_HID_DataOut_impl+0x46>
c0de5406:	4614      	mov	r4, r2
c0de5408:	2102      	movs	r1, #2
c0de540a:	2240      	movs	r2, #64	; 0x40
c0de540c:	f7ff fae4 	bl	c0de49d8 <USBD_LL_PrepareReceive>
c0de5410:	4d0e      	ldr	r5, [pc, #56]	; (c0de544c <USBD_HID_DataOut_impl+0x4c>)
c0de5412:	eb09 0005 	add.w	r0, r9, r5
c0de5416:	7980      	ldrb	r0, [r0, #6]
c0de5418:	b9a8      	cbnz	r0, c0de5446 <USBD_HID_DataOut_impl+0x46>
c0de541a:	2002      	movs	r0, #2
c0de541c:	f7fc ff2a 	bl	c0de2274 <io_seproxyhal_get_ep_rx_size>
c0de5420:	4602      	mov	r2, r0
c0de5422:	480c      	ldr	r0, [pc, #48]	; (c0de5454 <USBD_HID_DataOut_impl+0x54>)
c0de5424:	4621      	mov	r1, r4
c0de5426:	4478      	add	r0, pc
c0de5428:	f7fd fabc 	bl	c0de29a4 <io_usb_hid_receive>
c0de542c:	2802      	cmp	r0, #2
c0de542e:	d10a      	bne.n	c0de5446 <USBD_HID_DataOut_impl+0x46>
c0de5430:	2107      	movs	r1, #7
c0de5432:	eb09 0005 	add.w	r0, r9, r5
c0de5436:	f809 1005 	strb.w	r1, [r9, r5]
c0de543a:	2101      	movs	r1, #1
c0de543c:	4a04      	ldr	r2, [pc, #16]	; (c0de5450 <USBD_HID_DataOut_impl+0x50>)
c0de543e:	7181      	strb	r1, [r0, #6]
c0de5440:	f859 1002 	ldr.w	r1, [r9, r2]
c0de5444:	8041      	strh	r1, [r0, #2]
c0de5446:	2000      	movs	r0, #0
c0de5448:	bdb0      	pop	{r4, r5, r7, pc}
c0de544a:	bf00      	nop
c0de544c:	000003f0 	.word	0x000003f0
c0de5450:	000004a0 	.word	0x000004a0
c0de5454:	ffffcf43 	.word	0xffffcf43

c0de5458 <USBD_WEBUSB_Init>:
c0de5458:	b510      	push	{r4, lr}
c0de545a:	2183      	movs	r1, #131	; 0x83
c0de545c:	2203      	movs	r2, #3
c0de545e:	2340      	movs	r3, #64	; 0x40
c0de5460:	4604      	mov	r4, r0
c0de5462:	f7ff f9d3 	bl	c0de480c <USBD_LL_OpenEP>
c0de5466:	4620      	mov	r0, r4
c0de5468:	2103      	movs	r1, #3
c0de546a:	2203      	movs	r2, #3
c0de546c:	2340      	movs	r3, #64	; 0x40
c0de546e:	f7ff f9cd 	bl	c0de480c <USBD_LL_OpenEP>
c0de5472:	4620      	mov	r0, r4
c0de5474:	2103      	movs	r1, #3
c0de5476:	2240      	movs	r2, #64	; 0x40
c0de5478:	f7ff faae 	bl	c0de49d8 <USBD_LL_PrepareReceive>
c0de547c:	2000      	movs	r0, #0
c0de547e:	bd10      	pop	{r4, pc}

c0de5480 <USBD_WEBUSB_DeInit>:
c0de5480:	2000      	movs	r0, #0
c0de5482:	4770      	bx	lr

c0de5484 <USBD_WEBUSB_Setup>:
c0de5484:	2000      	movs	r0, #0
c0de5486:	4770      	bx	lr

c0de5488 <USBD_WEBUSB_DataIn>:
c0de5488:	2903      	cmp	r1, #3
c0de548a:	d106      	bne.n	c0de549a <USBD_WEBUSB_DataIn+0x12>
c0de548c:	b580      	push	{r7, lr}
c0de548e:	4804      	ldr	r0, [pc, #16]	; (c0de54a0 <USBD_WEBUSB_DataIn+0x18>)
c0de5490:	4478      	add	r0, pc
c0de5492:	f7fd fb69 	bl	c0de2b68 <io_usb_hid_sent>
c0de5496:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de549a:	2000      	movs	r0, #0
c0de549c:	4770      	bx	lr
c0de549e:	bf00      	nop
c0de54a0:	ffffcee5 	.word	0xffffcee5

c0de54a4 <USBD_WEBUSB_DataOut>:
c0de54a4:	b5b0      	push	{r4, r5, r7, lr}
c0de54a6:	2903      	cmp	r1, #3
c0de54a8:	d11f      	bne.n	c0de54ea <USBD_WEBUSB_DataOut+0x46>
c0de54aa:	4614      	mov	r4, r2
c0de54ac:	2103      	movs	r1, #3
c0de54ae:	2240      	movs	r2, #64	; 0x40
c0de54b0:	f7ff fa92 	bl	c0de49d8 <USBD_LL_PrepareReceive>
c0de54b4:	4d0e      	ldr	r5, [pc, #56]	; (c0de54f0 <USBD_WEBUSB_DataOut+0x4c>)
c0de54b6:	eb09 0005 	add.w	r0, r9, r5
c0de54ba:	7980      	ldrb	r0, [r0, #6]
c0de54bc:	b9a8      	cbnz	r0, c0de54ea <USBD_WEBUSB_DataOut+0x46>
c0de54be:	2003      	movs	r0, #3
c0de54c0:	f7fc fed8 	bl	c0de2274 <io_seproxyhal_get_ep_rx_size>
c0de54c4:	4602      	mov	r2, r0
c0de54c6:	480c      	ldr	r0, [pc, #48]	; (c0de54f8 <USBD_WEBUSB_DataOut+0x54>)
c0de54c8:	4621      	mov	r1, r4
c0de54ca:	4478      	add	r0, pc
c0de54cc:	f7fd fa6a 	bl	c0de29a4 <io_usb_hid_receive>
c0de54d0:	2802      	cmp	r0, #2
c0de54d2:	d10a      	bne.n	c0de54ea <USBD_WEBUSB_DataOut+0x46>
c0de54d4:	210b      	movs	r1, #11
c0de54d6:	eb09 0005 	add.w	r0, r9, r5
c0de54da:	f809 1005 	strb.w	r1, [r9, r5]
c0de54de:	2105      	movs	r1, #5
c0de54e0:	4a04      	ldr	r2, [pc, #16]	; (c0de54f4 <USBD_WEBUSB_DataOut+0x50>)
c0de54e2:	7181      	strb	r1, [r0, #6]
c0de54e4:	f859 1002 	ldr.w	r1, [r9, r2]
c0de54e8:	8041      	strh	r1, [r0, #2]
c0de54ea:	2000      	movs	r0, #0
c0de54ec:	bdb0      	pop	{r4, r5, r7, pc}
c0de54ee:	bf00      	nop
c0de54f0:	000003f0 	.word	0x000003f0
c0de54f4:	000004a0 	.word	0x000004a0
c0de54f8:	ffffceab 	.word	0xffffceab

c0de54fc <USBD_DeviceDescriptor>:
c0de54fc:	4802      	ldr	r0, [pc, #8]	; (c0de5508 <USBD_DeviceDescriptor+0xc>)
c0de54fe:	2212      	movs	r2, #18
c0de5500:	4478      	add	r0, pc
c0de5502:	800a      	strh	r2, [r1, #0]
c0de5504:	4770      	bx	lr
c0de5506:	bf00      	nop
c0de5508:	000053e8 	.word	0x000053e8

c0de550c <USBD_LangIDStrDescriptor>:
c0de550c:	4802      	ldr	r0, [pc, #8]	; (c0de5518 <USBD_LangIDStrDescriptor+0xc>)
c0de550e:	2204      	movs	r2, #4
c0de5510:	4478      	add	r0, pc
c0de5512:	800a      	strh	r2, [r1, #0]
c0de5514:	4770      	bx	lr
c0de5516:	bf00      	nop
c0de5518:	000053ea 	.word	0x000053ea

c0de551c <USBD_ManufacturerStrDescriptor>:
c0de551c:	4802      	ldr	r0, [pc, #8]	; (c0de5528 <USBD_ManufacturerStrDescriptor+0xc>)
c0de551e:	220e      	movs	r2, #14
c0de5520:	4478      	add	r0, pc
c0de5522:	800a      	strh	r2, [r1, #0]
c0de5524:	4770      	bx	lr
c0de5526:	bf00      	nop
c0de5528:	000053de 	.word	0x000053de

c0de552c <USBD_ProductStrDescriptor>:
c0de552c:	4802      	ldr	r0, [pc, #8]	; (c0de5538 <USBD_ProductStrDescriptor+0xc>)
c0de552e:	2218      	movs	r2, #24
c0de5530:	4478      	add	r0, pc
c0de5532:	800a      	strh	r2, [r1, #0]
c0de5534:	4770      	bx	lr
c0de5536:	bf00      	nop
c0de5538:	000053dc 	.word	0x000053dc

c0de553c <USBD_SerialStrDescriptor>:
c0de553c:	4802      	ldr	r0, [pc, #8]	; (c0de5548 <USBD_SerialStrDescriptor+0xc>)
c0de553e:	220a      	movs	r2, #10
c0de5540:	4478      	add	r0, pc
c0de5542:	800a      	strh	r2, [r1, #0]
c0de5544:	4770      	bx	lr
c0de5546:	bf00      	nop
c0de5548:	000053e4 	.word	0x000053e4

c0de554c <USBD_ConfigStrDescriptor>:
c0de554c:	4802      	ldr	r0, [pc, #8]	; (c0de5558 <USBD_ConfigStrDescriptor+0xc>)
c0de554e:	2218      	movs	r2, #24
c0de5550:	4478      	add	r0, pc
c0de5552:	800a      	strh	r2, [r1, #0]
c0de5554:	4770      	bx	lr
c0de5556:	bf00      	nop
c0de5558:	000053bc 	.word	0x000053bc

c0de555c <USBD_InterfaceStrDescriptor>:
c0de555c:	4802      	ldr	r0, [pc, #8]	; (c0de5568 <USBD_InterfaceStrDescriptor+0xc>)
c0de555e:	2218      	movs	r2, #24
c0de5560:	4478      	add	r0, pc
c0de5562:	800a      	strh	r2, [r1, #0]
c0de5564:	4770      	bx	lr
c0de5566:	bf00      	nop
c0de5568:	000053ac 	.word	0x000053ac

c0de556c <USBD_BOSDescriptor>:
c0de556c:	4802      	ldr	r0, [pc, #8]	; (c0de5578 <USBD_BOSDescriptor+0xc>)
c0de556e:	2239      	movs	r2, #57	; 0x39
c0de5570:	4478      	add	r0, pc
c0de5572:	800a      	strh	r2, [r1, #0]
c0de5574:	4770      	bx	lr
c0de5576:	bf00      	nop
c0de5578:	0000511c 	.word	0x0000511c

c0de557c <USBD_CtlError>:
c0de557c:	b580      	push	{r7, lr}
c0de557e:	f991 2000 	ldrsb.w	r2, [r1]
c0de5582:	f1b2 3fff 	cmp.w	r2, #4294967295	; 0xffffffff
c0de5586:	dd03      	ble.n	c0de5590 <USBD_CtlError+0x14>
c0de5588:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de558c:	f7ff be34 	b.w	c0de51f8 <USBD_CtlStall>
c0de5590:	784a      	ldrb	r2, [r1, #1]
c0de5592:	2a06      	cmp	r2, #6
c0de5594:	d010      	beq.n	c0de55b8 <USBD_CtlError+0x3c>
c0de5596:	2a77      	cmp	r2, #119	; 0x77
c0de5598:	d01a      	beq.n	c0de55d0 <USBD_CtlError+0x54>
c0de559a:	2a1e      	cmp	r2, #30
c0de559c:	d1f4      	bne.n	c0de5588 <USBD_CtlError+0xc>
c0de559e:	888a      	ldrh	r2, [r1, #4]
c0de55a0:	2a02      	cmp	r2, #2
c0de55a2:	d1f1      	bne.n	c0de5588 <USBD_CtlError+0xc>
c0de55a4:	884a      	ldrh	r2, [r1, #2]
c0de55a6:	2a01      	cmp	r2, #1
c0de55a8:	d1ee      	bne.n	c0de5588 <USBD_CtlError+0xc>
c0de55aa:	88ca      	ldrh	r2, [r1, #6]
c0de55ac:	2a17      	cmp	r2, #23
c0de55ae:	bf28      	it	cs
c0de55b0:	2217      	movcs	r2, #23
c0de55b2:	4917      	ldr	r1, [pc, #92]	; (c0de5610 <USBD_CtlError+0x94>)
c0de55b4:	4479      	add	r1, pc
c0de55b6:	e028      	b.n	c0de560a <USBD_CtlError+0x8e>
c0de55b8:	884a      	ldrh	r2, [r1, #2]
c0de55ba:	f240 33ee 	movw	r3, #1006	; 0x3ee
c0de55be:	429a      	cmp	r2, r3
c0de55c0:	d1e2      	bne.n	c0de5588 <USBD_CtlError+0xc>
c0de55c2:	88ca      	ldrh	r2, [r1, #6]
c0de55c4:	2a12      	cmp	r2, #18
c0de55c6:	bf28      	it	cs
c0de55c8:	2212      	movcs	r2, #18
c0de55ca:	4912      	ldr	r1, [pc, #72]	; (c0de5614 <USBD_CtlError+0x98>)
c0de55cc:	4479      	add	r1, pc
c0de55ce:	e01c      	b.n	c0de560a <USBD_CtlError+0x8e>
c0de55d0:	888a      	ldrh	r2, [r1, #4]
c0de55d2:	2a04      	cmp	r2, #4
c0de55d4:	d106      	bne.n	c0de55e4 <USBD_CtlError+0x68>
c0de55d6:	88ca      	ldrh	r2, [r1, #6]
c0de55d8:	2a28      	cmp	r2, #40	; 0x28
c0de55da:	bf28      	it	cs
c0de55dc:	2228      	movcs	r2, #40	; 0x28
c0de55de:	490e      	ldr	r1, [pc, #56]	; (c0de5618 <USBD_CtlError+0x9c>)
c0de55e0:	4479      	add	r1, pc
c0de55e2:	e012      	b.n	c0de560a <USBD_CtlError+0x8e>
c0de55e4:	888a      	ldrh	r2, [r1, #4]
c0de55e6:	2a05      	cmp	r2, #5
c0de55e8:	d106      	bne.n	c0de55f8 <USBD_CtlError+0x7c>
c0de55ea:	88ca      	ldrh	r2, [r1, #6]
c0de55ec:	2a92      	cmp	r2, #146	; 0x92
c0de55ee:	bf28      	it	cs
c0de55f0:	2292      	movcs	r2, #146	; 0x92
c0de55f2:	490a      	ldr	r1, [pc, #40]	; (c0de561c <USBD_CtlError+0xa0>)
c0de55f4:	4479      	add	r1, pc
c0de55f6:	e008      	b.n	c0de560a <USBD_CtlError+0x8e>
c0de55f8:	888a      	ldrh	r2, [r1, #4]
c0de55fa:	2a07      	cmp	r2, #7
c0de55fc:	d1c4      	bne.n	c0de5588 <USBD_CtlError+0xc>
c0de55fe:	88ca      	ldrh	r2, [r1, #6]
c0de5600:	2ab2      	cmp	r2, #178	; 0xb2
c0de5602:	bf28      	it	cs
c0de5604:	22b2      	movcs	r2, #178	; 0xb2
c0de5606:	4906      	ldr	r1, [pc, #24]	; (c0de5620 <USBD_CtlError+0xa4>)
c0de5608:	4479      	add	r1, pc
c0de560a:	f000 f86d 	bl	c0de56e8 <USBD_CtlSendData>
c0de560e:	bd80      	pop	{r7, pc}
c0de5610:	000050c1 	.word	0x000050c1
c0de5614:	0000511c 	.word	0x0000511c
c0de5618:	0000534e 	.word	0x0000534e
c0de561c:	00005106 	.word	0x00005106
c0de5620:	00005184 	.word	0x00005184

c0de5624 <USB_power>:
c0de5624:	b5b0      	push	{r4, r5, r7, lr}
c0de5626:	4d20      	ldr	r5, [pc, #128]	; (c0de56a8 <USB_power+0x84>)
c0de5628:	4604      	mov	r4, r0
c0de562a:	eb09 0005 	add.w	r0, r9, r5
c0de562e:	f44f 718a 	mov.w	r1, #276	; 0x114
c0de5632:	f001 fb95 	bl	c0de6d60 <__aeabi_memclr>
c0de5636:	481d      	ldr	r0, [pc, #116]	; (c0de56ac <USB_power+0x88>)
c0de5638:	2112      	movs	r1, #18
c0de563a:	4448      	add	r0, r9
c0de563c:	300c      	adds	r0, #12
c0de563e:	f001 fb8f 	bl	c0de6d60 <__aeabi_memclr>
c0de5642:	b35c      	cbz	r4, c0de569c <USB_power+0x78>
c0de5644:	eb09 0405 	add.w	r4, r9, r5
c0de5648:	4620      	mov	r0, r4
c0de564a:	f44f 718a 	mov.w	r1, #276	; 0x114
c0de564e:	f001 fb87 	bl	c0de6d60 <__aeabi_memclr>
c0de5652:	4919      	ldr	r1, [pc, #100]	; (c0de56b8 <USB_power+0x94>)
c0de5654:	4620      	mov	r0, r4
c0de5656:	4479      	add	r1, pc
c0de5658:	2200      	movs	r2, #0
c0de565a:	f7ff f9d7 	bl	c0de4a0c <USBD_Init>
c0de565e:	4a17      	ldr	r2, [pc, #92]	; (c0de56bc <USB_power+0x98>)
c0de5660:	2000      	movs	r0, #0
c0de5662:	447a      	add	r2, pc
c0de5664:	4621      	mov	r1, r4
c0de5666:	f7ff fa04 	bl	c0de4a72 <USBD_RegisterClassForInterface>
c0de566a:	4a15      	ldr	r2, [pc, #84]	; (c0de56c0 <USB_power+0x9c>)
c0de566c:	2001      	movs	r0, #1
c0de566e:	447a      	add	r2, pc
c0de5670:	4621      	mov	r1, r4
c0de5672:	f7ff f9fe 	bl	c0de4a72 <USBD_RegisterClassForInterface>
c0de5676:	480e      	ldr	r0, [pc, #56]	; (c0de56b0 <USB_power+0x8c>)
c0de5678:	490e      	ldr	r1, [pc, #56]	; (c0de56b4 <USB_power+0x90>)
c0de567a:	4448      	add	r0, r9
c0de567c:	4449      	add	r1, r9
c0de567e:	f240 1251 	movw	r2, #337	; 0x151
c0de5682:	f7fe fcbf 	bl	c0de4004 <u2f_transport_init>
c0de5686:	4a0f      	ldr	r2, [pc, #60]	; (c0de56c4 <USB_power+0xa0>)
c0de5688:	2002      	movs	r0, #2
c0de568a:	447a      	add	r2, pc
c0de568c:	4621      	mov	r1, r4
c0de568e:	f7ff f9f0 	bl	c0de4a72 <USBD_RegisterClassForInterface>
c0de5692:	4620      	mov	r0, r4
c0de5694:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5698:	f7ff b9f6 	b.w	c0de4a88 <USBD_Start>
c0de569c:	eb09 0005 	add.w	r0, r9, r5
c0de56a0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de56a4:	f7ff b9ca 	b.w	c0de4a3c <USBD_DeInit>
c0de56a8:	00000780 	.word	0x00000780
c0de56ac:	000003f0 	.word	0x000003f0
c0de56b0:	00000418 	.word	0x00000418
c0de56b4:	0000029c 	.word	0x0000029c
c0de56b8:	00005072 	.word	0x00005072
c0de56bc:	000051de 	.word	0x000051de
c0de56c0:	0000520a 	.word	0x0000520a
c0de56c4:	00005226 	.word	0x00005226

c0de56c8 <USBD_GetCfgDesc_impl>:
c0de56c8:	4601      	mov	r1, r0
c0de56ca:	4802      	ldr	r0, [pc, #8]	; (c0de56d4 <USBD_GetCfgDesc_impl+0xc>)
c0de56cc:	2260      	movs	r2, #96	; 0x60
c0de56ce:	4478      	add	r0, pc
c0de56d0:	800a      	strh	r2, [r1, #0]
c0de56d2:	4770      	bx	lr
c0de56d4:	0000528a 	.word	0x0000528a

c0de56d8 <USBD_GetDeviceQualifierDesc_impl>:
c0de56d8:	4601      	mov	r1, r0
c0de56da:	4802      	ldr	r0, [pc, #8]	; (c0de56e4 <USBD_GetDeviceQualifierDesc_impl+0xc>)
c0de56dc:	220a      	movs	r2, #10
c0de56de:	4478      	add	r0, pc
c0de56e0:	800a      	strh	r2, [r1, #0]
c0de56e2:	4770      	bx	lr
c0de56e4:	000052da 	.word	0x000052da

c0de56e8 <USBD_CtlSendData>:
c0de56e8:	b580      	push	{r7, lr}
c0de56ea:	468c      	mov	ip, r1
c0de56ec:	2102      	movs	r1, #2
c0de56ee:	f8c0 10d4 	str.w	r1, [r0, #212]	; 0xd4
c0de56f2:	6a01      	ldr	r1, [r0, #32]
c0de56f4:	e9c0 2206 	strd	r2, r2, [r0, #24]
c0de56f8:	f8c0 c110 	str.w	ip, [r0, #272]	; 0x110
c0de56fc:	4291      	cmp	r1, r2
c0de56fe:	bf88      	it	hi
c0de5700:	4611      	movhi	r1, r2
c0de5702:	b28b      	uxth	r3, r1
c0de5704:	2100      	movs	r1, #0
c0de5706:	4662      	mov	r2, ip
c0de5708:	f7ff f946 	bl	c0de4998 <USBD_LL_Transmit>
c0de570c:	2000      	movs	r0, #0
c0de570e:	bd80      	pop	{r7, pc}

c0de5710 <USBD_CtlContinueSendData>:
c0de5710:	b580      	push	{r7, lr}
c0de5712:	6a03      	ldr	r3, [r0, #32]
c0de5714:	468c      	mov	ip, r1
c0de5716:	4293      	cmp	r3, r2
c0de5718:	bf88      	it	hi
c0de571a:	4613      	movhi	r3, r2
c0de571c:	b29b      	uxth	r3, r3
c0de571e:	2100      	movs	r1, #0
c0de5720:	4662      	mov	r2, ip
c0de5722:	f7ff f939 	bl	c0de4998 <USBD_LL_Transmit>
c0de5726:	2000      	movs	r0, #0
c0de5728:	bd80      	pop	{r7, pc}

c0de572a <USBD_CtlContinueRx>:
c0de572a:	b580      	push	{r7, lr}
c0de572c:	2100      	movs	r1, #0
c0de572e:	f7ff f953 	bl	c0de49d8 <USBD_LL_PrepareReceive>
c0de5732:	2000      	movs	r0, #0
c0de5734:	bd80      	pop	{r7, pc}

c0de5736 <USBD_CtlSendStatus>:
c0de5736:	b580      	push	{r7, lr}
c0de5738:	2104      	movs	r1, #4
c0de573a:	f8c0 10d4 	str.w	r1, [r0, #212]	; 0xd4
c0de573e:	2100      	movs	r1, #0
c0de5740:	2200      	movs	r2, #0
c0de5742:	2300      	movs	r3, #0
c0de5744:	f7ff f928 	bl	c0de4998 <USBD_LL_Transmit>
c0de5748:	2000      	movs	r0, #0
c0de574a:	bd80      	pop	{r7, pc}

c0de574c <USBD_CtlReceiveStatus>:
c0de574c:	b580      	push	{r7, lr}
c0de574e:	2105      	movs	r1, #5
c0de5750:	f8c0 10d4 	str.w	r1, [r0, #212]	; 0xd4
c0de5754:	2100      	movs	r1, #0
c0de5756:	2200      	movs	r2, #0
c0de5758:	f7ff f93e 	bl	c0de49d8 <USBD_LL_PrepareReceive>
c0de575c:	2000      	movs	r0, #0
c0de575e:	bd80      	pop	{r7, pc}

c0de5760 <b58_encode>:
c0de5760:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5764:	b0d6      	sub	sp, #344	; 0x158
c0de5766:	29a4      	cmp	r1, #164	; 0xa4
c0de5768:	d875      	bhi.n	c0de5856 <b58_encode+0xf6>
c0de576a:	468b      	mov	fp, r1
c0de576c:	f10d 08b4 	add.w	r8, sp, #180	; 0xb4
c0de5770:	4614      	mov	r4, r2
c0de5772:	4601      	mov	r1, r0
c0de5774:	4640      	mov	r0, r8
c0de5776:	465a      	mov	r2, fp
c0de5778:	461d      	mov	r5, r3
c0de577a:	f001 faf4 	bl	c0de6d66 <__aeabi_memcpy>
c0de577e:	2000      	movs	r0, #0
c0de5780:	f1bb 0f00 	cmp.w	fp, #0
c0de5784:	d00a      	beq.n	c0de579c <b58_encode+0x3c>
c0de5786:	bf00      	nop
c0de5788:	f818 1000 	ldrb.w	r1, [r8, r0]
c0de578c:	b931      	cbnz	r1, c0de579c <b58_encode+0x3c>
c0de578e:	3001      	adds	r0, #1
c0de5790:	4583      	cmp	fp, r0
c0de5792:	d1f9      	bne.n	c0de5788 <b58_encode+0x28>
c0de5794:	ea4f 0c4b 	mov.w	ip, fp, lsl #1
c0de5798:	4658      	mov	r0, fp
c0de579a:	e03e      	b.n	c0de581a <b58_encode+0xba>
c0de579c:	b2c1      	uxtb	r1, r0
c0de579e:	4559      	cmp	r1, fp
c0de57a0:	ea4f 0c4b 	mov.w	ip, fp, lsl #1
c0de57a4:	d239      	bcs.n	c0de581a <b58_encode+0xba>
c0de57a6:	4b33      	ldr	r3, [pc, #204]	; (c0de5874 <b58_encode+0x114>)
c0de57a8:	e9cd 5402 	strd	r5, r4, [sp, #8]
c0de57ac:	243a      	movs	r4, #58	; 0x3a
c0de57ae:	4605      	mov	r5, r0
c0de57b0:	4662      	mov	r2, ip
c0de57b2:	f8cd c004 	str.w	ip, [sp, #4]
c0de57b6:	bf00      	nop
c0de57b8:	fa5f fe85 	uxtb.w	lr, r5
c0de57bc:	45de      	cmp	lr, fp
c0de57be:	d215      	bcs.n	c0de57ec <b58_encode+0x8c>
c0de57c0:	44f0      	add	r8, lr
c0de57c2:	ebab 0a0e 	sub.w	sl, fp, lr
c0de57c6:	2700      	movs	r7, #0
c0de57c8:	f898 c000 	ldrb.w	ip, [r8]
c0de57cc:	f1ba 0a01 	subs.w	sl, sl, #1
c0de57d0:	ea4c 2707 	orr.w	r7, ip, r7, lsl #8
c0de57d4:	b2be      	uxth	r6, r7
c0de57d6:	fba6 6103 	umull	r6, r1, r6, r3
c0de57da:	ea4f 1151 	mov.w	r1, r1, lsr #5
c0de57de:	fb01 7714 	mls	r7, r1, r4, r7
c0de57e2:	f808 1b01 	strb.w	r1, [r8], #1
c0de57e6:	d1ef      	bne.n	c0de57c8 <b58_encode+0x68>
c0de57e8:	e001      	b.n	c0de57ee <b58_encode+0x8e>
c0de57ea:	bf00      	nop
c0de57ec:	2700      	movs	r7, #0
c0de57ee:	f10d 08b4 	add.w	r8, sp, #180	; 0xb4
c0de57f2:	f818 100e 	ldrb.w	r1, [r8, lr]
c0de57f6:	b2bf      	uxth	r7, r7
c0de57f8:	2900      	cmp	r1, #0
c0de57fa:	bf08      	it	eq
c0de57fc:	3501      	addeq	r5, #1
c0de57fe:	491e      	ldr	r1, [pc, #120]	; (c0de5878 <b58_encode+0x118>)
c0de5800:	b2ee      	uxtb	r6, r5
c0de5802:	4479      	add	r1, pc
c0de5804:	5dcf      	ldrb	r7, [r1, r7]
c0de5806:	3a01      	subs	r2, #1
c0de5808:	b2d1      	uxtb	r1, r2
c0de580a:	455e      	cmp	r6, fp
c0de580c:	ae04      	add	r6, sp, #16
c0de580e:	5477      	strb	r7, [r6, r1]
c0de5810:	d3d2      	bcc.n	c0de57b8 <b58_encode+0x58>
c0de5812:	9c03      	ldr	r4, [sp, #12]
c0de5814:	e9dd c501 	ldrd	ip, r5, [sp, #4]
c0de5818:	e002      	b.n	c0de5820 <b58_encode+0xc0>
c0de581a:	f00c 01fe 	and.w	r1, ip, #254	; 0xfe
c0de581e:	4662      	mov	r2, ip
c0de5820:	458c      	cmp	ip, r1
c0de5822:	d908      	bls.n	c0de5836 <b58_encode+0xd6>
c0de5824:	ab04      	add	r3, sp, #16
c0de5826:	bf00      	nop
c0de5828:	5c59      	ldrb	r1, [r3, r1]
c0de582a:	2931      	cmp	r1, #49	; 0x31
c0de582c:	d103      	bne.n	c0de5836 <b58_encode+0xd6>
c0de582e:	3201      	adds	r2, #1
c0de5830:	b2d1      	uxtb	r1, r2
c0de5832:	458c      	cmp	ip, r1
c0de5834:	d8f8      	bhi.n	c0de5828 <b58_encode+0xc8>
c0de5836:	0601      	lsls	r1, r0, #24
c0de5838:	d008      	beq.n	c0de584c <b58_encode+0xec>
c0de583a:	a904      	add	r1, sp, #16
c0de583c:	2331      	movs	r3, #49	; 0x31
c0de583e:	bf00      	nop
c0de5840:	3801      	subs	r0, #1
c0de5842:	3a01      	subs	r2, #1
c0de5844:	b2d7      	uxtb	r7, r2
c0de5846:	0606      	lsls	r6, r0, #24
c0de5848:	55cb      	strb	r3, [r1, r7]
c0de584a:	d1f9      	bne.n	c0de5840 <b58_encode+0xe0>
c0de584c:	ebac 0002 	sub.w	r0, ip, r2
c0de5850:	b2c6      	uxtb	r6, r0
c0de5852:	42ae      	cmp	r6, r5
c0de5854:	d902      	bls.n	c0de585c <b58_encode+0xfc>
c0de5856:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
c0de585a:	e006      	b.n	c0de586a <b58_encode+0x10a>
c0de585c:	b2d0      	uxtb	r0, r2
c0de585e:	a904      	add	r1, sp, #16
c0de5860:	4401      	add	r1, r0
c0de5862:	4620      	mov	r0, r4
c0de5864:	4632      	mov	r2, r6
c0de5866:	f001 fa7e 	bl	c0de6d66 <__aeabi_memcpy>
c0de586a:	4630      	mov	r0, r6
c0de586c:	b056      	add	sp, #344	; 0x158
c0de586e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5872:	bf00      	nop
c0de5874:	8d3dcb09 	.word	0x8d3dcb09
c0de5878:	000051c0 	.word	0x000051c0

c0de587c <b58_decode>:
c0de587c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5880:	b0d4      	sub	sp, #336	; 0x150
c0de5882:	ac2b      	add	r4, sp, #172	; 0xac
c0de5884:	460e      	mov	r6, r1
c0de5886:	4605      	mov	r5, r0
c0de5888:	4620      	mov	r0, r4
c0de588a:	21a4      	movs	r1, #164	; 0xa4
c0de588c:	4698      	mov	r8, r3
c0de588e:	4617      	mov	r7, r2
c0de5890:	f001 fa66 	bl	c0de6d60 <__aeabi_memclr>
c0de5894:	f10d 0b08 	add.w	fp, sp, #8
c0de5898:	4658      	mov	r0, fp
c0de589a:	21a4      	movs	r1, #164	; 0xa4
c0de589c:	f001 fa60 	bl	c0de6d60 <__aeabi_memclr>
c0de58a0:	1eb0      	subs	r0, r6, #2
c0de58a2:	28a2      	cmp	r0, #162	; 0xa2
c0de58a4:	d905      	bls.n	c0de58b2 <b58_decode+0x36>
c0de58a6:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
c0de58aa:	4620      	mov	r0, r4
c0de58ac:	b054      	add	sp, #336	; 0x150
c0de58ae:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de58b2:	4620      	mov	r0, r4
c0de58b4:	4629      	mov	r1, r5
c0de58b6:	4632      	mov	r2, r6
c0de58b8:	f001 fa55 	bl	c0de6d66 <__aeabi_memcpy>
c0de58bc:	4830      	ldr	r0, [pc, #192]	; (c0de5980 <b58_decode+0x104>)
c0de58be:	2200      	movs	r2, #0
c0de58c0:	4478      	add	r0, pc
c0de58c2:	2100      	movs	r1, #0
c0de58c4:	56ab      	ldrsb	r3, [r5, r2]
c0de58c6:	2b00      	cmp	r3, #0
c0de58c8:	d4ed      	bmi.n	c0de58a6 <b58_decode+0x2a>
c0de58ca:	b2db      	uxtb	r3, r3
c0de58cc:	5cc3      	ldrb	r3, [r0, r3]
c0de58ce:	2bff      	cmp	r3, #255	; 0xff
c0de58d0:	54a3      	strb	r3, [r4, r2]
c0de58d2:	d0e8      	beq.n	c0de58a6 <b58_decode+0x2a>
c0de58d4:	3101      	adds	r1, #1
c0de58d6:	b2ca      	uxtb	r2, r1
c0de58d8:	42b2      	cmp	r2, r6
c0de58da:	d3f3      	bcc.n	c0de58c4 <b58_decode+0x48>
c0de58dc:	f04f 0c00 	mov.w	ip, #0
c0de58e0:	2500      	movs	r5, #0
c0de58e2:	bf00      	nop
c0de58e4:	f814 000c 	ldrb.w	r0, [r4, ip]
c0de58e8:	b920      	cbnz	r0, c0de58f4 <b58_decode+0x78>
c0de58ea:	3501      	adds	r5, #1
c0de58ec:	fa5f fc85 	uxtb.w	ip, r5
c0de58f0:	45b4      	cmp	ip, r6
c0de58f2:	d3f7      	bcc.n	c0de58e4 <b58_decode+0x68>
c0de58f4:	fa5f fe85 	uxtb.w	lr, r5
c0de58f8:	45b6      	cmp	lr, r6
c0de58fa:	e9cd 7800 	strd	r7, r8, [sp]
c0de58fe:	d224      	bcs.n	c0de594a <b58_decode+0xce>
c0de5900:	233a      	movs	r3, #58	; 0x3a
c0de5902:	46b2      	mov	sl, r6
c0de5904:	b2ef      	uxtb	r7, r5
c0de5906:	42b7      	cmp	r7, r6
c0de5908:	d20e      	bcs.n	c0de5928 <b58_decode+0xac>
c0de590a:	f04f 0800 	mov.w	r8, #0
c0de590e:	4629      	mov	r1, r5
c0de5910:	5de0      	ldrb	r0, [r4, r7]
c0de5912:	3101      	adds	r1, #1
c0de5914:	fb08 0003 	mla	r0, r8, r3, r0
c0de5918:	0a02      	lsrs	r2, r0, #8
c0de591a:	55e2      	strb	r2, [r4, r7]
c0de591c:	b2cf      	uxtb	r7, r1
c0de591e:	42b7      	cmp	r7, r6
c0de5920:	fa5f f880 	uxtb.w	r8, r0
c0de5924:	d3f4      	bcc.n	c0de5910 <b58_decode+0x94>
c0de5926:	e000      	b.n	c0de592a <b58_decode+0xae>
c0de5928:	2000      	movs	r0, #0
c0de592a:	f814 100e 	ldrb.w	r1, [r4, lr]
c0de592e:	f1aa 0a01 	sub.w	sl, sl, #1
c0de5932:	2900      	cmp	r1, #0
c0de5934:	bf08      	it	eq
c0de5936:	3501      	addeq	r5, #1
c0de5938:	fa5f fe85 	uxtb.w	lr, r5
c0de593c:	fa5f f78a 	uxtb.w	r7, sl
c0de5940:	45b6      	cmp	lr, r6
c0de5942:	f80b 0007 	strb.w	r0, [fp, r7]
c0de5946:	d3dd      	bcc.n	c0de5904 <b58_decode+0x88>
c0de5948:	e009      	b.n	c0de595e <b58_decode+0xe2>
c0de594a:	b2f7      	uxtb	r7, r6
c0de594c:	46b2      	mov	sl, r6
c0de594e:	e006      	b.n	c0de595e <b58_decode+0xe2>
c0de5950:	f81b 0007 	ldrb.w	r0, [fp, r7]
c0de5954:	b928      	cbnz	r0, c0de5962 <b58_decode+0xe6>
c0de5956:	f10a 0a01 	add.w	sl, sl, #1
c0de595a:	fa5f f78a 	uxtb.w	r7, sl
c0de595e:	42b7      	cmp	r7, r6
c0de5960:	d3f6      	bcc.n	c0de5950 <b58_decode+0xd4>
c0de5962:	ebac 0007 	sub.w	r0, ip, r7
c0de5966:	1984      	adds	r4, r0, r6
c0de5968:	9801      	ldr	r0, [sp, #4]
c0de596a:	4284      	cmp	r4, r0
c0de596c:	dc9b      	bgt.n	c0de58a6 <b58_decode+0x2a>
c0de596e:	eb0b 0007 	add.w	r0, fp, r7
c0de5972:	eba0 010c 	sub.w	r1, r0, ip
c0de5976:	9800      	ldr	r0, [sp, #0]
c0de5978:	4622      	mov	r2, r4
c0de597a:	f001 f9f4 	bl	c0de6d66 <__aeabi_memcpy>
c0de597e:	e794      	b.n	c0de58aa <b58_decode+0x2e>
c0de5980:	0000513c 	.word	0x0000513c

c0de5984 <read_uint32_be>:
c0de5984:	7842      	ldrb	r2, [r0, #1]
c0de5986:	7801      	ldrb	r1, [r0, #0]
c0de5988:	7883      	ldrb	r3, [r0, #2]
c0de598a:	0412      	lsls	r2, r2, #16
c0de598c:	78c0      	ldrb	r0, [r0, #3]
c0de598e:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de5992:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5996:	4408      	add	r0, r1
c0de5998:	4770      	bx	lr

c0de599a <read_uint64_be>:
c0de599a:	7842      	ldrb	r2, [r0, #1]
c0de599c:	f890 c000 	ldrb.w	ip, [r0]
c0de59a0:	7883      	ldrb	r3, [r0, #2]
c0de59a2:	0412      	lsls	r2, r2, #16
c0de59a4:	78c1      	ldrb	r1, [r0, #3]
c0de59a6:	ea42 620c 	orr.w	r2, r2, ip, lsl #24
c0de59aa:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de59ae:	4411      	add	r1, r2
c0de59b0:	7902      	ldrb	r2, [r0, #4]
c0de59b2:	7943      	ldrb	r3, [r0, #5]
c0de59b4:	0612      	lsls	r2, r2, #24
c0de59b6:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de59ba:	7983      	ldrb	r3, [r0, #6]
c0de59bc:	79c0      	ldrb	r0, [r0, #7]
c0de59be:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de59c2:	4410      	add	r0, r2
c0de59c4:	4770      	bx	lr
	...

c0de59c8 <amount_to_string>:
c0de59c8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de59cc:	b082      	sub	sp, #8
c0de59ce:	469b      	mov	fp, r3
c0de59d0:	4690      	mov	r8, r2
c0de59d2:	431a      	orrs	r2, r3
c0de59d4:	9001      	str	r0, [sp, #4]
c0de59d6:	d027      	beq.n	c0de5a28 <amount_to_string+0x60>
c0de59d8:	f04f 0a00 	mov.w	sl, #0
c0de59dc:	2409      	movs	r4, #9
c0de59de:	4646      	mov	r6, r8
c0de59e0:	465d      	mov	r5, fp
c0de59e2:	9100      	str	r1, [sp, #0]
c0de59e4:	4630      	mov	r0, r6
c0de59e6:	4629      	mov	r1, r5
c0de59e8:	220a      	movs	r2, #10
c0de59ea:	2300      	movs	r3, #0
c0de59ec:	f001 f82a 	bl	c0de6a44 <__aeabi_uldivmod>
c0de59f0:	220a      	movs	r2, #10
c0de59f2:	fba0 2302 	umull	r2, r3, r0, r2
c0de59f6:	eb01 0781 	add.w	r7, r1, r1, lsl #2
c0de59fa:	eb03 0347 	add.w	r3, r3, r7, lsl #1
c0de59fe:	1ab2      	subs	r2, r6, r2
c0de5a00:	eb65 0303 	sbc.w	r3, r5, r3
c0de5a04:	431a      	orrs	r2, r3
c0de5a06:	d111      	bne.n	c0de5a2c <amount_to_string+0x64>
c0de5a08:	3c01      	subs	r4, #1
c0de5a0a:	f16a 0a00 	sbc.w	sl, sl, #0
c0de5a0e:	f1b6 020a 	subs.w	r2, r6, #10
c0de5a12:	f175 0200 	sbcs.w	r2, r5, #0
c0de5a16:	f04f 0701 	mov.w	r7, #1
c0de5a1a:	d308      	bcc.n	c0de5a2e <amount_to_string+0x66>
c0de5a1c:	ea54 020a 	orrs.w	r2, r4, sl
c0de5a20:	4606      	mov	r6, r0
c0de5a22:	460d      	mov	r5, r1
c0de5a24:	d1de      	bne.n	c0de59e4 <amount_to_string+0x1c>
c0de5a26:	e002      	b.n	c0de5a2e <amount_to_string+0x66>
c0de5a28:	2701      	movs	r7, #1
c0de5a2a:	e007      	b.n	c0de5a3c <amount_to_string+0x74>
c0de5a2c:	4627      	mov	r7, r4
c0de5a2e:	4835      	ldr	r0, [pc, #212]	; (c0de5b04 <amount_to_string+0x13c>)
c0de5a30:	ebb8 0000 	subs.w	r0, r8, r0
c0de5a34:	f17b 0000 	sbcs.w	r0, fp, #0
c0de5a38:	d202      	bcs.n	c0de5a40 <amount_to_string+0x78>
c0de5a3a:	9900      	ldr	r1, [sp, #0]
c0de5a3c:	2402      	movs	r4, #2
c0de5a3e:	e01c      	b.n	c0de5a7a <amount_to_string+0xb2>
c0de5a40:	4a30      	ldr	r2, [pc, #192]	; (c0de5b04 <amount_to_string+0x13c>)
c0de5a42:	4640      	mov	r0, r8
c0de5a44:	4659      	mov	r1, fp
c0de5a46:	2300      	movs	r3, #0
c0de5a48:	f000 fffc 	bl	c0de6a44 <__aeabi_uldivmod>
c0de5a4c:	4605      	mov	r5, r0
c0de5a4e:	460e      	mov	r6, r1
c0de5a50:	2401      	movs	r4, #1
c0de5a52:	bf00      	nop
c0de5a54:	4628      	mov	r0, r5
c0de5a56:	4631      	mov	r1, r6
c0de5a58:	220a      	movs	r2, #10
c0de5a5a:	2300      	movs	r3, #0
c0de5a5c:	f000 fff2 	bl	c0de6a44 <__aeabi_uldivmod>
c0de5a60:	f1b5 020a 	subs.w	r2, r5, #10
c0de5a64:	f176 0200 	sbcs.w	r2, r6, #0
c0de5a68:	f104 0401 	add.w	r4, r4, #1
c0de5a6c:	4605      	mov	r5, r0
c0de5a6e:	460e      	mov	r6, r1
c0de5a70:	d2f0      	bcs.n	c0de5a54 <amount_to_string+0x8c>
c0de5a72:	9900      	ldr	r1, [sp, #0]
c0de5a74:	2c01      	cmp	r4, #1
c0de5a76:	bf08      	it	eq
c0de5a78:	2402      	moveq	r4, #2
c0de5a7a:	19e0      	adds	r0, r4, r7
c0de5a7c:	1c42      	adds	r2, r0, #1
c0de5a7e:	428a      	cmp	r2, r1
c0de5a80:	d906      	bls.n	c0de5a90 <amount_to_string+0xc8>
c0de5a82:	9901      	ldr	r1, [sp, #4]
c0de5a84:	2000      	movs	r0, #0
c0de5a86:	7008      	strb	r0, [r1, #0]
c0de5a88:	9801      	ldr	r0, [sp, #4]
c0de5a8a:	b002      	add	sp, #8
c0de5a8c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5a90:	9901      	ldr	r1, [sp, #4]
c0de5a92:	2400      	movs	r4, #0
c0de5a94:	180d      	adds	r5, r1, r0
c0de5a96:	540c      	strb	r4, [r1, r0]
c0de5a98:	2001      	movs	r0, #1
c0de5a9a:	260a      	movs	r6, #10
c0de5a9c:	4682      	mov	sl, r0
c0de5a9e:	4640      	mov	r0, r8
c0de5aa0:	4659      	mov	r1, fp
c0de5aa2:	220a      	movs	r2, #10
c0de5aa4:	2300      	movs	r3, #0
c0de5aa6:	f000 ffcd 	bl	c0de6a44 <__aeabi_uldivmod>
c0de5aaa:	fba0 2306 	umull	r2, r3, r0, r6
c0de5aae:	eb01 0781 	add.w	r7, r1, r1, lsl #2
c0de5ab2:	eb03 0347 	add.w	r3, r3, r7, lsl #1
c0de5ab6:	ebb8 0202 	subs.w	r2, r8, r2
c0de5aba:	eb6b 0303 	sbc.w	r3, fp, r3
c0de5abe:	f1ba 0f0a 	cmp.w	sl, #10
c0de5ac2:	d103      	bne.n	c0de5acc <amount_to_string+0x104>
c0de5ac4:	202e      	movs	r0, #46	; 0x2e
c0de5ac6:	f805 0d01 	strb.w	r0, [r5, #-1]!
c0de5aca:	e00f      	b.n	c0de5aec <amount_to_string+0x124>
c0de5acc:	f1aa 0701 	sub.w	r7, sl, #1
c0de5ad0:	468b      	mov	fp, r1
c0de5ad2:	2f07      	cmp	r7, #7
c0de5ad4:	4680      	mov	r8, r0
c0de5ad6:	d804      	bhi.n	c0de5ae2 <amount_to_string+0x11a>
c0de5ad8:	ea52 0003 	orrs.w	r0, r2, r3
c0de5adc:	bf08      	it	eq
c0de5ade:	2c00      	cmpeq	r4, #0
c0de5ae0:	d00d      	beq.n	c0de5afe <amount_to_string+0x136>
c0de5ae2:	f042 0030 	orr.w	r0, r2, #48	; 0x30
c0de5ae6:	f805 0d01 	strb.w	r0, [r5, #-1]!
c0de5aea:	2401      	movs	r4, #1
c0de5aec:	ea58 000b 	orrs.w	r0, r8, fp
c0de5af0:	f10a 0001 	add.w	r0, sl, #1
c0de5af4:	d1d2      	bne.n	c0de5a9c <amount_to_string+0xd4>
c0de5af6:	f1ba 0f0b 	cmp.w	sl, #11
c0de5afa:	d3cf      	bcc.n	c0de5a9c <amount_to_string+0xd4>
c0de5afc:	e7c4      	b.n	c0de5a88 <amount_to_string+0xc0>
c0de5afe:	2400      	movs	r4, #0
c0de5b00:	e7f4      	b.n	c0de5aec <amount_to_string+0x124>
c0de5b02:	bf00      	nop
c0de5b04:	3b9aca00 	.word	0x3b9aca00

c0de5b08 <value_to_string>:
c0de5b08:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5b0c:	b082      	sub	sp, #8
c0de5b0e:	469b      	mov	fp, r3
c0de5b10:	4617      	mov	r7, r2
c0de5b12:	468a      	mov	sl, r1
c0de5b14:	ea52 0103 	orrs.w	r1, r2, r3
c0de5b18:	4680      	mov	r8, r0
c0de5b1a:	d016      	beq.n	c0de5b4a <value_to_string+0x42>
c0de5b1c:	2401      	movs	r4, #1
c0de5b1e:	463d      	mov	r5, r7
c0de5b20:	465e      	mov	r6, fp
c0de5b22:	bf00      	nop
c0de5b24:	4628      	mov	r0, r5
c0de5b26:	4631      	mov	r1, r6
c0de5b28:	220a      	movs	r2, #10
c0de5b2a:	2300      	movs	r3, #0
c0de5b2c:	f000 ff8a 	bl	c0de6a44 <__aeabi_uldivmod>
c0de5b30:	f1b5 020a 	subs.w	r2, r5, #10
c0de5b34:	f176 0200 	sbcs.w	r2, r6, #0
c0de5b38:	f104 0401 	add.w	r4, r4, #1
c0de5b3c:	4605      	mov	r5, r0
c0de5b3e:	460e      	mov	r6, r1
c0de5b40:	d2f0      	bcs.n	c0de5b24 <value_to_string+0x1c>
c0de5b42:	2c01      	cmp	r4, #1
c0de5b44:	bf08      	it	eq
c0de5b46:	2402      	moveq	r4, #2
c0de5b48:	e000      	b.n	c0de5b4c <value_to_string+0x44>
c0de5b4a:	2402      	movs	r4, #2
c0de5b4c:	4554      	cmp	r4, sl
c0de5b4e:	f04f 0500 	mov.w	r5, #0
c0de5b52:	d827      	bhi.n	c0de5ba4 <value_to_string+0x9c>
c0de5b54:	eb08 0004 	add.w	r0, r8, r4
c0de5b58:	f800 5c01 	strb.w	r5, [r0, #-1]
c0de5b5c:	f1a0 0a02 	sub.w	sl, r0, #2
c0de5b60:	2000      	movs	r0, #0
c0de5b62:	f8cd 8004 	str.w	r8, [sp, #4]
c0de5b66:	bf00      	nop
c0de5b68:	4680      	mov	r8, r0
c0de5b6a:	4638      	mov	r0, r7
c0de5b6c:	4659      	mov	r1, fp
c0de5b6e:	220a      	movs	r2, #10
c0de5b70:	2300      	movs	r3, #0
c0de5b72:	465e      	mov	r6, fp
c0de5b74:	463c      	mov	r4, r7
c0de5b76:	f000 ff65 	bl	c0de6a44 <__aeabi_uldivmod>
c0de5b7a:	4607      	mov	r7, r0
c0de5b7c:	eb00 0080 	add.w	r0, r0, r0, lsl #2
c0de5b80:	eba4 0040 	sub.w	r0, r4, r0, lsl #1
c0de5b84:	f040 0030 	orr.w	r0, r0, #48	; 0x30
c0de5b88:	f80a 0008 	strb.w	r0, [sl, r8]
c0de5b8c:	f1d4 0009 	rsbs	r0, r4, #9
c0de5b90:	eb75 0006 	sbcs.w	r0, r5, r6
c0de5b94:	468b      	mov	fp, r1
c0de5b96:	f1a8 0001 	sub.w	r0, r8, #1
c0de5b9a:	d3e5      	bcc.n	c0de5b68 <value_to_string+0x60>
c0de5b9c:	f1b8 0f01 	cmp.w	r8, #1
c0de5ba0:	d0e2      	beq.n	c0de5b68 <value_to_string+0x60>
c0de5ba2:	9d01      	ldr	r5, [sp, #4]
c0de5ba4:	4628      	mov	r0, r5
c0de5ba6:	b002      	add	sp, #8
c0de5ba8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de5bac <packed_bit_array_set>:
c0de5bac:	b5b0      	push	{r4, r5, r7, lr}
c0de5bae:	08cd      	lsrs	r5, r1, #3
c0de5bb0:	f001 0e07 	and.w	lr, r1, #7
c0de5bb4:	f04f 0c01 	mov.w	ip, #1
c0de5bb8:	5d41      	ldrb	r1, [r0, r5]
c0de5bba:	fa0c f30e 	lsl.w	r3, ip, lr
c0de5bbe:	ea21 0403 	bic.w	r4, r1, r3
c0de5bc2:	2a00      	cmp	r2, #0
c0de5bc4:	bf18      	it	ne
c0de5bc6:	ea41 0403 	orrne.w	r4, r1, r3
c0de5bca:	5544      	strb	r4, [r0, r5]
c0de5bcc:	bdb0      	pop	{r4, r5, r7, pc}

c0de5bce <packed_bit_array_get>:
c0de5bce:	08ca      	lsrs	r2, r1, #3
c0de5bd0:	5c80      	ldrb	r0, [r0, r2]
c0de5bd2:	f001 0107 	and.w	r1, r1, #7
c0de5bd6:	40c8      	lsrs	r0, r1
c0de5bd8:	f000 0001 	and.w	r0, r0, #1
c0de5bdc:	4770      	bx	lr
	...

c0de5be0 <read_public_key_compressed>:
c0de5be0:	b570      	push	{r4, r5, r6, lr}
c0de5be2:	b08a      	sub	sp, #40	; 0x28
c0de5be4:	460d      	mov	r5, r1
c0de5be6:	4604      	mov	r4, r0
c0de5be8:	4608      	mov	r0, r1
c0de5bea:	2138      	movs	r1, #56	; 0x38
c0de5bec:	f001 f920 	bl	c0de6e30 <strnlen>
c0de5bf0:	2837      	cmp	r0, #55	; 0x37
c0de5bf2:	d11a      	bne.n	c0de5c2a <read_public_key_compressed+0x4a>
c0de5bf4:	466e      	mov	r6, sp
c0de5bf6:	4630      	mov	r0, r6
c0de5bf8:	2128      	movs	r1, #40	; 0x28
c0de5bfa:	f001 f8b1 	bl	c0de6d60 <__aeabi_memclr>
c0de5bfe:	4628      	mov	r0, r5
c0de5c00:	2137      	movs	r1, #55	; 0x37
c0de5c02:	4632      	mov	r2, r6
c0de5c04:	2328      	movs	r3, #40	; 0x28
c0de5c06:	f7ff fe39 	bl	c0de587c <b58_decode>
c0de5c0a:	1cf0      	adds	r0, r6, #3
c0de5c0c:	211f      	movs	r1, #31
c0de5c0e:	bf00      	nop
c0de5c10:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de5c14:	5462      	strb	r2, [r4, r1]
c0de5c16:	3901      	subs	r1, #1
c0de5c18:	1c4a      	adds	r2, r1, #1
c0de5c1a:	d1f9      	bne.n	c0de5c10 <read_public_key_compressed+0x30>
c0de5c1c:	f89d 0023 	ldrb.w	r0, [sp, #35]	; 0x23
c0de5c20:	2800      	cmp	r0, #0
c0de5c22:	bf18      	it	ne
c0de5c24:	2001      	movne	r0, #1
c0de5c26:	f884 0020 	strb.w	r0, [r4, #32]
c0de5c2a:	b00a      	add	sp, #40	; 0x28
c0de5c2c:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de5c30 <ux_flow_is_first>:
c0de5c30:	4915      	ldr	r1, [pc, #84]	; (c0de5c88 <ux_flow_is_first+0x58>)
c0de5c32:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de5c36:	2801      	cmp	r0, #1
c0de5c38:	d823      	bhi.n	c0de5c82 <ux_flow_is_first+0x52>
c0de5c3a:	3801      	subs	r0, #1
c0de5c3c:	eb09 0201 	add.w	r2, r9, r1
c0de5c40:	eb00 0340 	add.w	r3, r0, r0, lsl #1
c0de5c44:	eb02 0083 	add.w	r0, r2, r3, lsl #2
c0de5c48:	8c80      	ldrh	r0, [r0, #36]	; 0x24
c0de5c4a:	b1d0      	cbz	r0, c0de5c82 <ux_flow_is_first+0x52>
c0de5c4c:	eb09 0201 	add.w	r2, r9, r1
c0de5c50:	eb02 0283 	add.w	r2, r2, r3, lsl #2
c0de5c54:	69d2      	ldr	r2, [r2, #28]
c0de5c56:	b1a2      	cbz	r2, c0de5c82 <ux_flow_is_first+0x52>
c0de5c58:	4449      	add	r1, r9
c0de5c5a:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de5c5e:	8c09      	ldrh	r1, [r1, #32]
c0de5c60:	b929      	cbnz	r1, c0de5c6e <ux_flow_is_first+0x3e>
c0de5c62:	eb02 0380 	add.w	r3, r2, r0, lsl #2
c0de5c66:	f853 3c04 	ldr.w	r3, [r3, #-4]
c0de5c6a:	3303      	adds	r3, #3
c0de5c6c:	d109      	bne.n	c0de5c82 <ux_flow_is_first+0x52>
c0de5c6e:	4281      	cmp	r1, r0
c0de5c70:	d205      	bcs.n	c0de5c7e <ux_flow_is_first+0x4e>
c0de5c72:	eb02 0081 	add.w	r0, r2, r1, lsl #2
c0de5c76:	f850 0c04 	ldr.w	r0, [r0, #-4]
c0de5c7a:	3002      	adds	r0, #2
c0de5c7c:	d001      	beq.n	c0de5c82 <ux_flow_is_first+0x52>
c0de5c7e:	2000      	movs	r0, #0
c0de5c80:	4770      	bx	lr
c0de5c82:	2001      	movs	r0, #1
c0de5c84:	4770      	bx	lr
c0de5c86:	bf00      	nop
c0de5c88:	00000058 	.word	0x00000058

c0de5c8c <ux_flow_is_last>:
c0de5c8c:	4813      	ldr	r0, [pc, #76]	; (c0de5cdc <ux_flow_is_last+0x50>)
c0de5c8e:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de5c92:	2901      	cmp	r1, #1
c0de5c94:	d81f      	bhi.n	c0de5cd6 <ux_flow_is_last+0x4a>
c0de5c96:	3901      	subs	r1, #1
c0de5c98:	eb09 0200 	add.w	r2, r9, r0
c0de5c9c:	eb01 0341 	add.w	r3, r1, r1, lsl #1
c0de5ca0:	eb02 0183 	add.w	r1, r2, r3, lsl #2
c0de5ca4:	8c89      	ldrh	r1, [r1, #36]	; 0x24
c0de5ca6:	b1b1      	cbz	r1, c0de5cd6 <ux_flow_is_last+0x4a>
c0de5ca8:	eb09 0200 	add.w	r2, r9, r0
c0de5cac:	eb02 0283 	add.w	r2, r2, r3, lsl #2
c0de5cb0:	69d2      	ldr	r2, [r2, #28]
c0de5cb2:	b182      	cbz	r2, c0de5cd6 <ux_flow_is_last+0x4a>
c0de5cb4:	4448      	add	r0, r9
c0de5cb6:	eb00 0083 	add.w	r0, r0, r3, lsl #2
c0de5cba:	8c00      	ldrh	r0, [r0, #32]
c0de5cbc:	1e4b      	subs	r3, r1, #1
c0de5cbe:	4283      	cmp	r3, r0
c0de5cc0:	dd09      	ble.n	c0de5cd6 <ux_flow_is_last+0x4a>
c0de5cc2:	3902      	subs	r1, #2
c0de5cc4:	4281      	cmp	r1, r0
c0de5cc6:	dd04      	ble.n	c0de5cd2 <ux_flow_is_last+0x46>
c0de5cc8:	eb02 0080 	add.w	r0, r2, r0, lsl #2
c0de5ccc:	6840      	ldr	r0, [r0, #4]
c0de5cce:	3002      	adds	r0, #2
c0de5cd0:	d001      	beq.n	c0de5cd6 <ux_flow_is_last+0x4a>
c0de5cd2:	2000      	movs	r0, #0
c0de5cd4:	4770      	bx	lr
c0de5cd6:	2001      	movs	r0, #1
c0de5cd8:	4770      	bx	lr
c0de5cda:	bf00      	nop
c0de5cdc:	00000058 	.word	0x00000058

c0de5ce0 <ux_flow_direction>:
c0de5ce0:	480a      	ldr	r0, [pc, #40]	; (c0de5d0c <ux_flow_direction+0x2c>)
c0de5ce2:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de5ce6:	b169      	cbz	r1, c0de5d04 <ux_flow_direction+0x24>
c0de5ce8:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5cec:	4448      	add	r0, r9
c0de5cee:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de5cf2:	8a81      	ldrh	r1, [r0, #20]
c0de5cf4:	8ac0      	ldrh	r0, [r0, #22]
c0de5cf6:	4281      	cmp	r1, r0
c0de5cf8:	d901      	bls.n	c0de5cfe <ux_flow_direction+0x1e>
c0de5cfa:	2001      	movs	r0, #1
c0de5cfc:	e003      	b.n	c0de5d06 <ux_flow_direction+0x26>
c0de5cfe:	d201      	bcs.n	c0de5d04 <ux_flow_direction+0x24>
c0de5d00:	20ff      	movs	r0, #255	; 0xff
c0de5d02:	e000      	b.n	c0de5d06 <ux_flow_direction+0x26>
c0de5d04:	2000      	movs	r0, #0
c0de5d06:	b240      	sxtb	r0, r0
c0de5d08:	4770      	bx	lr
c0de5d0a:	bf00      	nop
c0de5d0c:	00000058 	.word	0x00000058

c0de5d10 <ux_flow_get_current>:
c0de5d10:	4811      	ldr	r0, [pc, #68]	; (c0de5d58 <ux_flow_get_current+0x48>)
c0de5d12:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de5d16:	2901      	cmp	r1, #1
c0de5d18:	d81b      	bhi.n	c0de5d52 <ux_flow_get_current+0x42>
c0de5d1a:	3901      	subs	r1, #1
c0de5d1c:	eb09 0200 	add.w	r2, r9, r0
c0de5d20:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de5d24:	eb02 0281 	add.w	r2, r2, r1, lsl #2
c0de5d28:	8c92      	ldrh	r2, [r2, #36]	; 0x24
c0de5d2a:	b192      	cbz	r2, c0de5d52 <ux_flow_get_current+0x42>
c0de5d2c:	eb09 0300 	add.w	r3, r9, r0
c0de5d30:	eb03 0381 	add.w	r3, r3, r1, lsl #2
c0de5d34:	69db      	ldr	r3, [r3, #28]
c0de5d36:	b163      	cbz	r3, c0de5d52 <ux_flow_get_current+0x42>
c0de5d38:	4448      	add	r0, r9
c0de5d3a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de5d3e:	8c00      	ldrh	r0, [r0, #32]
c0de5d40:	4290      	cmp	r0, r2
c0de5d42:	d206      	bcs.n	c0de5d52 <ux_flow_get_current+0x42>
c0de5d44:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
c0de5d48:	f110 0f04 	cmn.w	r0, #4
c0de5d4c:	bf98      	it	ls
c0de5d4e:	f7fd ba0f 	bls.w	c0de3170 <pic>
c0de5d52:	2000      	movs	r0, #0
c0de5d54:	4770      	bx	lr
c0de5d56:	bf00      	nop
c0de5d58:	00000058 	.word	0x00000058

c0de5d5c <ux_flow_next_internal>:
c0de5d5c:	b570      	push	{r4, r5, r6, lr}
c0de5d5e:	4a21      	ldr	r2, [pc, #132]	; (c0de5de4 <ux_flow_next_internal+0x88>)
c0de5d60:	f819 1002 	ldrb.w	r1, [r9, r2]
c0de5d64:	f1b1 0e01 	subs.w	lr, r1, #1
c0de5d68:	d83b      	bhi.n	c0de5de2 <ux_flow_next_internal+0x86>
c0de5d6a:	eb09 0102 	add.w	r1, r9, r2
c0de5d6e:	eb0e 034e 	add.w	r3, lr, lr, lsl #1
c0de5d72:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de5d76:	8c89      	ldrh	r1, [r1, #36]	; 0x24
c0de5d78:	b399      	cbz	r1, c0de5de2 <ux_flow_next_internal+0x86>
c0de5d7a:	eb09 0502 	add.w	r5, r9, r2
c0de5d7e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
c0de5d82:	69ed      	ldr	r5, [r5, #28]
c0de5d84:	b36d      	cbz	r5, c0de5de2 <ux_flow_next_internal+0x86>
c0de5d86:	2901      	cmp	r1, #1
c0de5d88:	d02b      	beq.n	c0de5de2 <ux_flow_next_internal+0x86>
c0de5d8a:	eb09 0402 	add.w	r4, r9, r2
c0de5d8e:	eb04 0c83 	add.w	ip, r4, r3, lsl #2
c0de5d92:	f83c 4f20 	ldrh.w	r4, [ip, #32]!
c0de5d96:	1e4e      	subs	r6, r1, #1
c0de5d98:	42a6      	cmp	r6, r4
c0de5d9a:	dd22      	ble.n	c0de5de2 <ux_flow_next_internal+0x86>
c0de5d9c:	3902      	subs	r1, #2
c0de5d9e:	42a1      	cmp	r1, r4
c0de5da0:	db11      	blt.n	c0de5dc6 <ux_flow_next_internal+0x6a>
c0de5da2:	eb05 0184 	add.w	r1, r5, r4, lsl #2
c0de5da6:	6849      	ldr	r1, [r1, #4]
c0de5da8:	1c8d      	adds	r5, r1, #2
c0de5daa:	bf08      	it	eq
c0de5dac:	bd70      	popeq	{r4, r5, r6, pc}
c0de5dae:	3103      	adds	r1, #3
c0de5db0:	d109      	bne.n	c0de5dc6 <ux_flow_next_internal+0x6a>
c0de5db2:	eb09 0002 	add.w	r0, r9, r2
c0de5db6:	2100      	movs	r1, #0
c0de5db8:	eb00 0283 	add.w	r2, r0, r3, lsl #2
c0de5dbc:	f8ac 1000 	strh.w	r1, [ip]
c0de5dc0:	4670      	mov	r0, lr
c0de5dc2:	8451      	strh	r1, [r2, #34]	; 0x22
c0de5dc4:	e009      	b.n	c0de5dda <ux_flow_next_internal+0x7e>
c0de5dc6:	eb09 0102 	add.w	r1, r9, r2
c0de5dca:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de5dce:	844c      	strh	r4, [r1, #34]	; 0x22
c0de5dd0:	1c61      	adds	r1, r4, #1
c0de5dd2:	f8ac 1000 	strh.w	r1, [ip]
c0de5dd6:	b120      	cbz	r0, c0de5de2 <ux_flow_next_internal+0x86>
c0de5dd8:	4670      	mov	r0, lr
c0de5dda:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5dde:	f000 b84b 	b.w	c0de5e78 <ux_flow_engine_init_step>
c0de5de2:	bd70      	pop	{r4, r5, r6, pc}
c0de5de4:	00000058 	.word	0x00000058

c0de5de8 <ux_flow_next>:
c0de5de8:	2001      	movs	r0, #1
c0de5dea:	f7ff bfb7 	b.w	c0de5d5c <ux_flow_next_internal>
	...

c0de5df0 <ux_flow_prev>:
c0de5df0:	b510      	push	{r4, lr}
c0de5df2:	4920      	ldr	r1, [pc, #128]	; (c0de5e74 <ux_flow_prev+0x84>)
c0de5df4:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de5df8:	3801      	subs	r0, #1
c0de5dfa:	d812      	bhi.n	c0de5e22 <ux_flow_prev+0x32>
c0de5dfc:	eb09 0301 	add.w	r3, r9, r1
c0de5e00:	eb00 0240 	add.w	r2, r0, r0, lsl #1
c0de5e04:	eb03 0382 	add.w	r3, r3, r2, lsl #2
c0de5e08:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
c0de5e0a:	b153      	cbz	r3, c0de5e22 <ux_flow_prev+0x32>
c0de5e0c:	eb09 0401 	add.w	r4, r9, r1
c0de5e10:	eb04 0482 	add.w	r4, r4, r2, lsl #2
c0de5e14:	f8d4 e01c 	ldr.w	lr, [r4, #28]
c0de5e18:	f1be 0f00 	cmp.w	lr, #0
c0de5e1c:	bf18      	it	ne
c0de5e1e:	2b01      	cmpne	r3, #1
c0de5e20:	d100      	bne.n	c0de5e24 <ux_flow_prev+0x34>
c0de5e22:	bd10      	pop	{r4, pc}
c0de5e24:	eb09 0401 	add.w	r4, r9, r1
c0de5e28:	eb04 0c82 	add.w	ip, r4, r2, lsl #2
c0de5e2c:	f83c 4f20 	ldrh.w	r4, [ip, #32]!
c0de5e30:	b16c      	cbz	r4, c0de5e4e <ux_flow_prev+0x5e>
c0de5e32:	eb0e 0384 	add.w	r3, lr, r4, lsl #2
c0de5e36:	f853 3c04 	ldr.w	r3, [r3, #-4]
c0de5e3a:	3302      	adds	r3, #2
c0de5e3c:	d0f1      	beq.n	c0de5e22 <ux_flow_prev+0x32>
c0de5e3e:	4449      	add	r1, r9
c0de5e40:	eb01 0182 	add.w	r1, r1, r2, lsl #2
c0de5e44:	844c      	strh	r4, [r1, #34]	; 0x22
c0de5e46:	1e61      	subs	r1, r4, #1
c0de5e48:	f8ac 1000 	strh.w	r1, [ip]
c0de5e4c:	e00e      	b.n	c0de5e6c <ux_flow_prev+0x7c>
c0de5e4e:	eb0e 0483 	add.w	r4, lr, r3, lsl #2
c0de5e52:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de5e56:	3403      	adds	r4, #3
c0de5e58:	bf18      	it	ne
c0de5e5a:	bd10      	popne	{r4, pc}
c0de5e5c:	4449      	add	r1, r9
c0de5e5e:	1e9c      	subs	r4, r3, #2
c0de5e60:	3b01      	subs	r3, #1
c0de5e62:	eb01 0182 	add.w	r1, r1, r2, lsl #2
c0de5e66:	f8ac 4000 	strh.w	r4, [ip]
c0de5e6a:	844b      	strh	r3, [r1, #34]	; 0x22
c0de5e6c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de5e70:	f000 b802 	b.w	c0de5e78 <ux_flow_engine_init_step>
c0de5e74:	00000058 	.word	0x00000058

c0de5e78 <ux_flow_engine_init_step>:
c0de5e78:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5e7a:	b081      	sub	sp, #4
c0de5e7c:	491e      	ldr	r1, [pc, #120]	; (c0de5ef8 <ux_flow_engine_init_step+0x80>)
c0de5e7e:	4604      	mov	r4, r0
c0de5e80:	eb09 0001 	add.w	r0, r9, r1
c0de5e84:	eb04 0144 	add.w	r1, r4, r4, lsl #1
c0de5e88:	eb00 0581 	add.w	r5, r0, r1, lsl #2
c0de5e8c:	f855 0f1c 	ldr.w	r0, [r5, #28]!
c0de5e90:	462e      	mov	r6, r5
c0de5e92:	f836 1f04 	ldrh.w	r1, [r6, #4]!
c0de5e96:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de5e9a:	f110 0f04 	cmn.w	r0, #4
c0de5e9e:	bf84      	itt	hi
c0de5ea0:	b001      	addhi	sp, #4
c0de5ea2:	bdf0      	pophi	{r4, r5, r6, r7, pc}
c0de5ea4:	f7fd f964 	bl	c0de3170 <pic>
c0de5ea8:	6829      	ldr	r1, [r5, #0]
c0de5eaa:	8832      	ldrh	r2, [r6, #0]
c0de5eac:	6807      	ldr	r7, [r0, #0]
c0de5eae:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
c0de5eb2:	f7fd f95d 	bl	c0de3170 <pic>
c0de5eb6:	b147      	cbz	r7, c0de5eca <ux_flow_engine_init_step+0x52>
c0de5eb8:	6800      	ldr	r0, [r0, #0]
c0de5eba:	f7fd f959 	bl	c0de3170 <pic>
c0de5ebe:	4601      	mov	r1, r0
c0de5ec0:	4620      	mov	r0, r4
c0de5ec2:	b001      	add	sp, #4
c0de5ec4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5ec8:	4708      	bx	r1
c0de5eca:	6880      	ldr	r0, [r0, #8]
c0de5ecc:	f7fd f950 	bl	c0de3170 <pic>
c0de5ed0:	6829      	ldr	r1, [r5, #0]
c0de5ed2:	8832      	ldrh	r2, [r6, #0]
c0de5ed4:	4605      	mov	r5, r0
c0de5ed6:	f851 1022 	ldr.w	r1, [r1, r2, lsl #2]
c0de5eda:	4608      	mov	r0, r1
c0de5edc:	f7fd f948 	bl	c0de3170 <pic>
c0de5ee0:	6840      	ldr	r0, [r0, #4]
c0de5ee2:	f7fd f945 	bl	c0de3170 <pic>
c0de5ee6:	4602      	mov	r2, r0
c0de5ee8:	4620      	mov	r0, r4
c0de5eea:	4629      	mov	r1, r5
c0de5eec:	b001      	add	sp, #4
c0de5eee:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5ef2:	f000 b877 	b.w	c0de5fe4 <ux_flow_init>
c0de5ef6:	bf00      	nop
c0de5ef8:	00000058 	.word	0x00000058

c0de5efc <ux_flow_validate>:
c0de5efc:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5f00:	b081      	sub	sp, #4
c0de5f02:	4d37      	ldr	r5, [pc, #220]	; (c0de5fe0 <ux_flow_validate+0xe4>)
c0de5f04:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de5f08:	f1b0 0a01 	subs.w	sl, r0, #1
c0de5f0c:	d856      	bhi.n	c0de5fbc <ux_flow_validate+0xc0>
c0de5f0e:	eb09 0005 	add.w	r0, r9, r5
c0de5f12:	eb0a 064a 	add.w	r6, sl, sl, lsl #1
c0de5f16:	eb00 0486 	add.w	r4, r0, r6, lsl #2
c0de5f1a:	f834 0f24 	ldrh.w	r0, [r4, #36]!
c0de5f1e:	2800      	cmp	r0, #0
c0de5f20:	d04c      	beq.n	c0de5fbc <ux_flow_validate+0xc0>
c0de5f22:	eb09 0105 	add.w	r1, r9, r5
c0de5f26:	eb01 0786 	add.w	r7, r1, r6, lsl #2
c0de5f2a:	f857 1f1c 	ldr.w	r1, [r7, #28]!
c0de5f2e:	2900      	cmp	r1, #0
c0de5f30:	d044      	beq.n	c0de5fbc <ux_flow_validate+0xc0>
c0de5f32:	eb09 0205 	add.w	r2, r9, r5
c0de5f36:	eb02 0886 	add.w	r8, r2, r6, lsl #2
c0de5f3a:	f838 2f20 	ldrh.w	r2, [r8, #32]!
c0de5f3e:	4282      	cmp	r2, r0
c0de5f40:	d23c      	bcs.n	c0de5fbc <ux_flow_validate+0xc0>
c0de5f42:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
c0de5f46:	f7fd f913 	bl	c0de3170 <pic>
c0de5f4a:	6880      	ldr	r0, [r0, #8]
c0de5f4c:	b188      	cbz	r0, c0de5f72 <ux_flow_validate+0x76>
c0de5f4e:	6838      	ldr	r0, [r7, #0]
c0de5f50:	f8b8 1000 	ldrh.w	r1, [r8]
c0de5f54:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de5f58:	f7fd f90a 	bl	c0de3170 <pic>
c0de5f5c:	6880      	ldr	r0, [r0, #8]
c0de5f5e:	f7fd f907 	bl	c0de3170 <pic>
c0de5f62:	4601      	mov	r1, r0
c0de5f64:	4650      	mov	r0, sl
c0de5f66:	2200      	movs	r2, #0
c0de5f68:	b001      	add	sp, #4
c0de5f6a:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5f6e:	f000 b839 	b.w	c0de5fe4 <ux_flow_init>
c0de5f72:	8820      	ldrh	r0, [r4, #0]
c0de5f74:	b310      	cbz	r0, c0de5fbc <ux_flow_validate+0xc0>
c0de5f76:	f8b8 2000 	ldrh.w	r2, [r8]
c0de5f7a:	3802      	subs	r0, #2
c0de5f7c:	4290      	cmp	r0, r2
c0de5f7e:	db1d      	blt.n	c0de5fbc <ux_flow_validate+0xc0>
c0de5f80:	6839      	ldr	r1, [r7, #0]
c0de5f82:	eb01 0382 	add.w	r3, r1, r2, lsl #2
c0de5f86:	685b      	ldr	r3, [r3, #4]
c0de5f88:	1cdf      	adds	r7, r3, #3
c0de5f8a:	d01a      	beq.n	c0de5fc2 <ux_flow_validate+0xc6>
c0de5f8c:	3302      	adds	r3, #2
c0de5f8e:	d115      	bne.n	c0de5fbc <ux_flow_validate+0xc0>
c0de5f90:	4613      	mov	r3, r2
c0de5f92:	eb01 0282 	add.w	r2, r1, r2, lsl #2
c0de5f96:	6852      	ldr	r2, [r2, #4]
c0de5f98:	3202      	adds	r2, #2
c0de5f9a:	d105      	bne.n	c0de5fa8 <ux_flow_validate+0xac>
c0de5f9c:	3301      	adds	r3, #1
c0de5f9e:	b29a      	uxth	r2, r3
c0de5fa0:	4290      	cmp	r0, r2
c0de5fa2:	f8a8 3000 	strh.w	r3, [r8]
c0de5fa6:	daf4      	bge.n	c0de5f92 <ux_flow_validate+0x96>
c0de5fa8:	eb09 0005 	add.w	r0, r9, r5
c0de5fac:	eb00 0086 	add.w	r0, r0, r6, lsl #2
c0de5fb0:	8443      	strh	r3, [r0, #34]	; 0x22
c0de5fb2:	1c59      	adds	r1, r3, #1
c0de5fb4:	4650      	mov	r0, sl
c0de5fb6:	f8a8 1000 	strh.w	r1, [r8]
c0de5fba:	e00b      	b.n	c0de5fd4 <ux_flow_validate+0xd8>
c0de5fbc:	b001      	add	sp, #4
c0de5fbe:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de5fc2:	eb09 0005 	add.w	r0, r9, r5
c0de5fc6:	2100      	movs	r1, #0
c0de5fc8:	eb00 0286 	add.w	r2, r0, r6, lsl #2
c0de5fcc:	f8a8 1000 	strh.w	r1, [r8]
c0de5fd0:	4650      	mov	r0, sl
c0de5fd2:	8451      	strh	r1, [r2, #34]	; 0x22
c0de5fd4:	b001      	add	sp, #4
c0de5fd6:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de5fda:	f7ff bf4d 	b.w	c0de5e78 <ux_flow_engine_init_step>
c0de5fde:	bf00      	nop
c0de5fe0:	00000058 	.word	0x00000058

c0de5fe4 <ux_flow_init>:
c0de5fe4:	b570      	push	{r4, r5, r6, lr}
c0de5fe6:	b100      	cbz	r0, c0de5fea <ux_flow_init+0x6>
c0de5fe8:	bd70      	pop	{r4, r5, r6, pc}
c0de5fea:	4e21      	ldr	r6, [pc, #132]	; (c0de6070 <ux_flow_init+0x8c>)
c0de5fec:	460d      	mov	r5, r1
c0de5fee:	eb09 0006 	add.w	r0, r9, r6
c0de5ff2:	3004      	adds	r0, #4
c0de5ff4:	2122      	movs	r1, #34	; 0x22
c0de5ff6:	4614      	mov	r4, r2
c0de5ff8:	f000 feb2 	bl	c0de6d60 <__aeabi_memclr>
c0de5ffc:	2d00      	cmp	r5, #0
c0de5ffe:	d0f3      	beq.n	c0de5fe8 <ux_flow_init+0x4>
c0de6000:	4628      	mov	r0, r5
c0de6002:	f7fd f8b5 	bl	c0de3170 <pic>
c0de6006:	eb09 0206 	add.w	r2, r9, r6
c0de600a:	8c91      	ldrh	r1, [r2, #36]	; 0x24
c0de600c:	61d0      	str	r0, [r2, #28]
c0de600e:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de6012:	3201      	adds	r2, #1
c0de6014:	d009      	beq.n	c0de602a <ux_flow_init+0x46>
c0de6016:	bf00      	nop
c0de6018:	3101      	adds	r1, #1
c0de601a:	b28a      	uxth	r2, r1
c0de601c:	f850 2022 	ldr.w	r2, [r0, r2, lsl #2]
c0de6020:	3201      	adds	r2, #1
c0de6022:	d1f9      	bne.n	c0de6018 <ux_flow_init+0x34>
c0de6024:	eb09 0006 	add.w	r0, r9, r6
c0de6028:	8481      	strh	r1, [r0, #36]	; 0x24
c0de602a:	b1e4      	cbz	r4, c0de6066 <ux_flow_init+0x82>
c0de602c:	4620      	mov	r0, r4
c0de602e:	f7fd f89f 	bl	c0de3170 <pic>
c0de6032:	eb09 0106 	add.w	r1, r9, r6
c0de6036:	69ca      	ldr	r2, [r1, #28]
c0de6038:	8c09      	ldrh	r1, [r1, #32]
c0de603a:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
c0de603e:	1c4a      	adds	r2, r1, #1
c0de6040:	d011      	beq.n	c0de6066 <ux_flow_init+0x82>
c0de6042:	4604      	mov	r4, r0
c0de6044:	4608      	mov	r0, r1
c0de6046:	f7fd f893 	bl	c0de3170 <pic>
c0de604a:	42a0      	cmp	r0, r4
c0de604c:	d00b      	beq.n	c0de6066 <ux_flow_init+0x82>
c0de604e:	eb09 0006 	add.w	r0, r9, r6
c0de6052:	8c02      	ldrh	r2, [r0, #32]
c0de6054:	69c1      	ldr	r1, [r0, #28]
c0de6056:	1c53      	adds	r3, r2, #1
c0de6058:	b29d      	uxth	r5, r3
c0de605a:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
c0de605e:	8442      	strh	r2, [r0, #34]	; 0x22
c0de6060:	1c4a      	adds	r2, r1, #1
c0de6062:	8403      	strh	r3, [r0, #32]
c0de6064:	d1ee      	bne.n	c0de6044 <ux_flow_init+0x60>
c0de6066:	2000      	movs	r0, #0
c0de6068:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de606c:	f7ff bf04 	b.w	c0de5e78 <ux_flow_engine_init_step>
c0de6070:	00000058 	.word	0x00000058

c0de6074 <ux_flow_button_callback>:
c0de6074:	b580      	push	{r7, lr}
c0de6076:	490a      	ldr	r1, [pc, #40]	; (c0de60a0 <ux_flow_button_callback+0x2c>)
c0de6078:	4288      	cmp	r0, r1
c0de607a:	d008      	beq.n	c0de608e <ux_flow_button_callback+0x1a>
c0de607c:	4909      	ldr	r1, [pc, #36]	; (c0de60a4 <ux_flow_button_callback+0x30>)
c0de607e:	4288      	cmp	r0, r1
c0de6080:	d008      	beq.n	c0de6094 <ux_flow_button_callback+0x20>
c0de6082:	4909      	ldr	r1, [pc, #36]	; (c0de60a8 <ux_flow_button_callback+0x34>)
c0de6084:	4288      	cmp	r0, r1
c0de6086:	d108      	bne.n	c0de609a <ux_flow_button_callback+0x26>
c0de6088:	f7ff feb2 	bl	c0de5df0 <ux_flow_prev>
c0de608c:	e005      	b.n	c0de609a <ux_flow_button_callback+0x26>
c0de608e:	f7ff ff35 	bl	c0de5efc <ux_flow_validate>
c0de6092:	e002      	b.n	c0de609a <ux_flow_button_callback+0x26>
c0de6094:	2001      	movs	r0, #1
c0de6096:	f7ff fe61 	bl	c0de5d5c <ux_flow_next_internal>
c0de609a:	2000      	movs	r0, #0
c0de609c:	bd80      	pop	{r7, pc}
c0de609e:	bf00      	nop
c0de60a0:	80000003 	.word	0x80000003
c0de60a4:	80000002 	.word	0x80000002
c0de60a8:	80000001 	.word	0x80000001

c0de60ac <ux_stack_get_step_params>:
c0de60ac:	b510      	push	{r4, lr}
c0de60ae:	b9a8      	cbnz	r0, c0de60dc <ux_stack_get_step_params+0x30>
c0de60b0:	480b      	ldr	r0, [pc, #44]	; (c0de60e0 <ux_stack_get_step_params+0x34>)
c0de60b2:	eb09 0100 	add.w	r1, r9, r0
c0de60b6:	8c8a      	ldrh	r2, [r1, #36]	; 0x24
c0de60b8:	8c09      	ldrh	r1, [r1, #32]
c0de60ba:	4291      	cmp	r1, r2
c0de60bc:	d20e      	bcs.n	c0de60dc <ux_stack_get_step_params+0x30>
c0de60be:	eb09 0400 	add.w	r4, r9, r0
c0de60c2:	69e0      	ldr	r0, [r4, #28]
c0de60c4:	f7fd f854 	bl	c0de3170 <pic>
c0de60c8:	8c21      	ldrh	r1, [r4, #32]
c0de60ca:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de60ce:	f7fd f84f 	bl	c0de3170 <pic>
c0de60d2:	6840      	ldr	r0, [r0, #4]
c0de60d4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de60d8:	f7fd b84a 	b.w	c0de3170 <pic>
c0de60dc:	2000      	movs	r0, #0
c0de60de:	bd10      	pop	{r4, pc}
c0de60e0:	00000058 	.word	0x00000058

c0de60e4 <ux_stack_get_current_step_params>:
c0de60e4:	4802      	ldr	r0, [pc, #8]	; (c0de60f0 <ux_stack_get_current_step_params+0xc>)
c0de60e6:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de60ea:	3801      	subs	r0, #1
c0de60ec:	f7ff bfde 	b.w	c0de60ac <ux_stack_get_step_params>
c0de60f0:	00000058 	.word	0x00000058

c0de60f4 <ux_flow_relayout>:
c0de60f4:	b580      	push	{r7, lr}
c0de60f6:	f7ff fe0b 	bl	c0de5d10 <ux_flow_get_current>
c0de60fa:	b138      	cbz	r0, c0de610c <ux_flow_relayout+0x18>
c0de60fc:	4804      	ldr	r0, [pc, #16]	; (c0de6110 <ux_flow_relayout+0x1c>)
c0de60fe:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6102:	3801      	subs	r0, #1
c0de6104:	f7ff feb8 	bl	c0de5e78 <ux_flow_engine_init_step>
c0de6108:	2001      	movs	r0, #1
c0de610a:	bd80      	pop	{r7, pc}
c0de610c:	2000      	movs	r0, #0
c0de610e:	bd80      	pop	{r7, pc}
c0de6110:	00000058 	.word	0x00000058

c0de6114 <ux_layout_bb_init_common>:
c0de6114:	b510      	push	{r4, lr}
c0de6116:	4604      	mov	r4, r0
c0de6118:	f000 fc22 	bl	c0de6960 <ux_stack_init>
c0de611c:	480a      	ldr	r0, [pc, #40]	; (c0de6148 <ux_layout_bb_init_common+0x34>)
c0de611e:	4a0b      	ldr	r2, [pc, #44]	; (c0de614c <ux_layout_bb_init_common+0x38>)
c0de6120:	4448      	add	r0, r9
c0de6122:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de6126:	447a      	add	r2, pc
c0de6128:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de612c:	2105      	movs	r1, #5
c0de612e:	f8c0 20cc 	str.w	r2, [r0, #204]	; 0xcc
c0de6132:	f880 10d0 	strb.w	r1, [r0, #208]	; 0xd0
c0de6136:	4a06      	ldr	r2, [pc, #24]	; (c0de6150 <ux_layout_bb_init_common+0x3c>)
c0de6138:	2101      	movs	r1, #1
c0de613a:	447a      	add	r2, pc
c0de613c:	f880 10c9 	strb.w	r1, [r0, #201]	; 0xc9
c0de6140:	f8c0 20dc 	str.w	r2, [r0, #220]	; 0xdc
c0de6144:	bd10      	pop	{r4, pc}
c0de6146:	bf00      	nop
c0de6148:	00000058 	.word	0x00000058
c0de614c:	00004956 	.word	0x00004956
c0de6150:	ffffff37 	.word	0xffffff37

c0de6154 <ux_layout_bn_prepro>:
c0de6154:	b580      	push	{r7, lr}
c0de6156:	f000 fb69 	bl	c0de682c <ux_layout_strings_prepro>
c0de615a:	b158      	cbz	r0, c0de6174 <ux_layout_bn_prepro+0x20>
c0de615c:	4906      	ldr	r1, [pc, #24]	; (c0de6178 <ux_layout_bn_prepro+0x24>)
c0de615e:	eb09 0201 	add.w	r2, r9, r1
c0de6162:	f892 20a9 	ldrb.w	r2, [r2, #169]	; 0xa9
c0de6166:	2a11      	cmp	r2, #17
c0de6168:	bf02      	ittt	eq
c0de616a:	4449      	addeq	r1, r9
c0de616c:	f248 020a 	movweq	r2, #32778	; 0x800a
c0de6170:	f8a1 20c0 	strheq.w	r2, [r1, #192]	; 0xc0
c0de6174:	bd80      	pop	{r7, pc}
c0de6176:	bf00      	nop
c0de6178:	00000058 	.word	0x00000058

c0de617c <ux_layout_bn_init>:
c0de617c:	b510      	push	{r4, lr}
c0de617e:	4604      	mov	r4, r0
c0de6180:	f7ff ffc8 	bl	c0de6114 <ux_layout_bb_init_common>
c0de6184:	4807      	ldr	r0, [pc, #28]	; (c0de61a4 <ux_layout_bn_init+0x28>)
c0de6186:	4a08      	ldr	r2, [pc, #32]	; (c0de61a8 <ux_layout_bn_init+0x2c>)
c0de6188:	4448      	add	r0, r9
c0de618a:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de618e:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de6192:	447a      	add	r2, pc
c0de6194:	4620      	mov	r0, r4
c0de6196:	f8c1 20d8 	str.w	r2, [r1, #216]	; 0xd8
c0de619a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de619e:	f000 bbaf 	b.w	c0de6900 <ux_stack_display>
c0de61a2:	bf00      	nop
c0de61a4:	00000058 	.word	0x00000058
c0de61a8:	ffffffbf 	.word	0xffffffbf

c0de61ac <ux_layout_paging_prepro_common>:
c0de61ac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de61b0:	b082      	sub	sp, #8
c0de61b2:	f8df 8148 	ldr.w	r8, [pc, #328]	; c0de62fc <ux_layout_paging_prepro_common+0x150>
c0de61b6:	4606      	mov	r6, r0
c0de61b8:	eb09 0008 	add.w	r0, r9, r8
c0de61bc:	4614      	mov	r4, r2
c0de61be:	460d      	mov	r5, r1
c0de61c0:	30a8      	adds	r0, #168	; 0xa8
c0de61c2:	4631      	mov	r1, r6
c0de61c4:	2220      	movs	r2, #32
c0de61c6:	f000 fdd0 	bl	c0de6d6a <__aeabi_memmove>
c0de61ca:	7870      	ldrb	r0, [r6, #1]
c0de61cc:	2810      	cmp	r0, #16
c0de61ce:	dc20      	bgt.n	c0de6212 <ux_layout_paging_prepro_common+0x66>
c0de61d0:	2801      	cmp	r0, #1
c0de61d2:	d036      	beq.n	c0de6242 <ux_layout_paging_prepro_common+0x96>
c0de61d4:	2802      	cmp	r0, #2
c0de61d6:	d03d      	beq.n	c0de6254 <ux_layout_paging_prepro_common+0xa8>
c0de61d8:	2810      	cmp	r0, #16
c0de61da:	f040 8089 	bne.w	c0de62f0 <ux_layout_paging_prepro_common+0x144>
c0de61de:	2d00      	cmp	r5, #0
c0de61e0:	d045      	beq.n	c0de626e <ux_layout_paging_prepro_common+0xc2>
c0de61e2:	eb09 0608 	add.w	r6, r9, r8
c0de61e6:	68b0      	ldr	r0, [r6, #8]
c0de61e8:	4946      	ldr	r1, [pc, #280]	; (c0de6304 <ux_layout_paging_prepro_common+0x158>)
c0de61ea:	4c47      	ldr	r4, [pc, #284]	; (c0de6308 <ux_layout_paging_prepro_common+0x15c>)
c0de61ec:	2801      	cmp	r0, #1
c0de61ee:	447c      	add	r4, pc
c0de61f0:	4628      	mov	r0, r5
c0de61f2:	4479      	add	r1, pc
c0de61f4:	bf88      	it	hi
c0de61f6:	460c      	movhi	r4, r1
c0de61f8:	f7fc ffba 	bl	c0de3170 <pic>
c0de61fc:	4603      	mov	r3, r0
c0de61fe:	e9d6 0501 	ldrd	r0, r5, [r6, #4]
c0de6202:	2180      	movs	r1, #128	; 0x80
c0de6204:	3001      	adds	r0, #1
c0de6206:	9000      	str	r0, [sp, #0]
c0de6208:	f106 0028 	add.w	r0, r6, #40	; 0x28
c0de620c:	4622      	mov	r2, r4
c0de620e:	9501      	str	r5, [sp, #4]
c0de6210:	e037      	b.n	c0de6282 <ux_layout_paging_prepro_common+0xd6>
c0de6212:	f1a0 0111 	sub.w	r1, r0, #17
c0de6216:	2903      	cmp	r1, #3
c0de6218:	d26a      	bcs.n	c0de62f0 <ux_layout_paging_prepro_common+0x144>
c0de621a:	f000 000f 	and.w	r0, r0, #15
c0de621e:	1e46      	subs	r6, r0, #1
c0de6220:	2e02      	cmp	r6, #2
c0de6222:	d865      	bhi.n	c0de62f0 <ux_layout_paging_prepro_common+0x144>
c0de6224:	eb09 0008 	add.w	r0, r9, r8
c0de6228:	eb00 0046 	add.w	r0, r0, r6, lsl #1
c0de622c:	8a85      	ldrh	r5, [r0, #20]
c0de622e:	2d00      	cmp	r5, #0
c0de6230:	d05e      	beq.n	c0de62f0 <ux_layout_paging_prepro_common+0x144>
c0de6232:	2d7f      	cmp	r5, #127	; 0x7f
c0de6234:	bf28      	it	cs
c0de6236:	257f      	movcs	r5, #127	; 0x7f
c0de6238:	b3bc      	cbz	r4, c0de62aa <ux_layout_paging_prepro_common+0xfe>
c0de623a:	4620      	mov	r0, r4
c0de623c:	f7fc ff98 	bl	c0de3170 <pic>
c0de6240:	e037      	b.n	c0de62b2 <ux_layout_paging_prepro_common+0x106>
c0de6242:	f7ff fcf5 	bl	c0de5c30 <ux_flow_is_first>
c0de6246:	2800      	cmp	r0, #0
c0de6248:	d052      	beq.n	c0de62f0 <ux_layout_paging_prepro_common+0x144>
c0de624a:	eb09 0008 	add.w	r0, r9, r8
c0de624e:	6840      	ldr	r0, [r0, #4]
c0de6250:	b158      	cbz	r0, c0de626a <ux_layout_paging_prepro_common+0xbe>
c0de6252:	e04d      	b.n	c0de62f0 <ux_layout_paging_prepro_common+0x144>
c0de6254:	f7ff fd1a 	bl	c0de5c8c <ux_flow_is_last>
c0de6258:	2800      	cmp	r0, #0
c0de625a:	d049      	beq.n	c0de62f0 <ux_layout_paging_prepro_common+0x144>
c0de625c:	eb09 0008 	add.w	r0, r9, r8
c0de6260:	e9d0 0101 	ldrd	r0, r1, [r0, #4]
c0de6264:	3901      	subs	r1, #1
c0de6266:	4288      	cmp	r0, r1
c0de6268:	d142      	bne.n	c0de62f0 <ux_layout_paging_prepro_common+0x144>
c0de626a:	2000      	movs	r0, #0
c0de626c:	e043      	b.n	c0de62f6 <ux_layout_paging_prepro_common+0x14a>
c0de626e:	eb09 0008 	add.w	r0, r9, r8
c0de6272:	e9d0 1601 	ldrd	r1, r6, [r0, #4]
c0de6276:	4a25      	ldr	r2, [pc, #148]	; (c0de630c <ux_layout_paging_prepro_common+0x160>)
c0de6278:	1c4b      	adds	r3, r1, #1
c0de627a:	3028      	adds	r0, #40	; 0x28
c0de627c:	447a      	add	r2, pc
c0de627e:	2180      	movs	r1, #128	; 0x80
c0de6280:	9600      	str	r6, [sp, #0]
c0de6282:	f7fc fd07 	bl	c0de2c94 <snprintf>
c0de6286:	eb09 0008 	add.w	r0, r9, r8
c0de628a:	491d      	ldr	r1, [pc, #116]	; (c0de6300 <ux_layout_paging_prepro_common+0x154>)
c0de628c:	7b02      	ldrb	r2, [r0, #12]
c0de628e:	3102      	adds	r1, #2
c0de6290:	2aef      	cmp	r2, #239	; 0xef
c0de6292:	bf84      	itt	hi
c0de6294:	f248 0108 	movwhi	r1, #32776	; 0x8008
c0de6298:	f6cf 71ff 	movthi	r1, #65535	; 0xffff
c0de629c:	f8a0 10c0 	strh.w	r1, [r0, #192]	; 0xc0
c0de62a0:	f100 0128 	add.w	r1, r0, #40	; 0x28
c0de62a4:	f8c0 10c4 	str.w	r1, [r0, #196]	; 0xc4
c0de62a8:	e022      	b.n	c0de62f0 <ux_layout_paging_prepro_common+0x144>
c0de62aa:	eb09 0008 	add.w	r0, r9, r8
c0de62ae:	f8d0 010c 	ldr.w	r0, [r0, #268]	; 0x10c
c0de62b2:	eb09 0708 	add.w	r7, r9, r8
c0de62b6:	eb07 0146 	add.w	r1, r7, r6, lsl #1
c0de62ba:	89c9      	ldrh	r1, [r1, #14]
c0de62bc:	4a14      	ldr	r2, [pc, #80]	; (c0de6310 <ux_layout_paging_prepro_common+0x164>)
c0de62be:	f107 0428 	add.w	r4, r7, #40	; 0x28
c0de62c2:	1846      	adds	r6, r0, r1
c0de62c4:	447a      	add	r2, pc
c0de62c6:	4620      	mov	r0, r4
c0de62c8:	2180      	movs	r1, #128	; 0x80
c0de62ca:	462b      	mov	r3, r5
c0de62cc:	9600      	str	r6, [sp, #0]
c0de62ce:	f7fc fce1 	bl	c0de2c94 <snprintf>
c0de62d2:	7b38      	ldrb	r0, [r7, #12]
c0de62d4:	490a      	ldr	r1, [pc, #40]	; (c0de6300 <ux_layout_paging_prepro_common+0x154>)
c0de62d6:	f000 000f 	and.w	r0, r0, #15
c0de62da:	3102      	adds	r1, #2
c0de62dc:	f8c7 40c4 	str.w	r4, [r7, #196]	; 0xc4
c0de62e0:	280f      	cmp	r0, #15
c0de62e2:	bf04      	itt	eq
c0de62e4:	f248 0108 	movweq	r1, #32776	; 0x8008
c0de62e8:	f6cf 71ff 	movteq	r1, #65535	; 0xffff
c0de62ec:	f8a7 10c0 	strh.w	r1, [r7, #192]	; 0xc0
c0de62f0:	eb09 0008 	add.w	r0, r9, r8
c0de62f4:	30a8      	adds	r0, #168	; 0xa8
c0de62f6:	b002      	add	sp, #8
c0de62f8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de62fc:	00000058 	.word	0x00000058
c0de6300:	ffff8008 	.word	0xffff8008
c0de6304:	00000c5a 	.word	0x00000c5a
c0de6308:	00000c94 	.word	0x00000c94
c0de630c:	00000c8a 	.word	0x00000c8a
c0de6310:	00000bab 	.word	0x00000bab

c0de6314 <ux_layout_paging_redisplay_common>:
c0de6314:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6318:	460d      	mov	r5, r1
c0de631a:	4914      	ldr	r1, [pc, #80]	; (c0de636c <ux_layout_paging_redisplay_common+0x58>)
c0de631c:	4690      	mov	r8, r2
c0de631e:	4606      	mov	r6, r0
c0de6320:	eb09 0201 	add.w	r2, r9, r1
c0de6324:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
c0de6328:	eb02 0780 	add.w	r7, r2, r0, lsl #2
c0de632c:	2007      	movs	r0, #7
c0de632e:	4910      	ldr	r1, [pc, #64]	; (c0de6370 <ux_layout_paging_redisplay_common+0x5c>)
c0de6330:	f887 00d0 	strb.w	r0, [r7, #208]	; 0xd0
c0de6334:	2001      	movs	r0, #1
c0de6336:	f887 00c9 	strb.w	r0, [r7, #201]	; 0xc9
c0de633a:	7b10      	ldrb	r0, [r2, #12]
c0de633c:	4479      	add	r1, pc
c0de633e:	f8c7 10cc 	str.w	r1, [r7, #204]	; 0xcc
c0de6342:	f852 1f04 	ldr.w	r1, [r2, #4]!
c0de6346:	0700      	lsls	r0, r0, #28
c0de6348:	461c      	mov	r4, r3
c0de634a:	f04f 0308 	mov.w	r3, #8
c0de634e:	4628      	mov	r0, r5
c0de6350:	bf08      	it	eq
c0de6352:	230a      	moveq	r3, #10
c0de6354:	f000 f8dc 	bl	c0de6510 <ux_layout_paging_compute>
c0de6358:	f8c7 40d8 	str.w	r4, [r7, #216]	; 0xd8
c0de635c:	4630      	mov	r0, r6
c0de635e:	f8c7 80dc 	str.w	r8, [r7, #220]	; 0xdc
c0de6362:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de6366:	f000 bacb 	b.w	c0de6900 <ux_stack_display>
c0de636a:	bf00      	nop
c0de636c:	00000058 	.word	0x00000058
c0de6370:	000047e0 	.word	0x000047e0

c0de6374 <ux_layout_paging_redisplay_by_addr>:
c0de6374:	b510      	push	{r4, lr}
c0de6376:	4604      	mov	r4, r0
c0de6378:	f7ff feb4 	bl	c0de60e4 <ux_stack_get_current_step_params>
c0de637c:	b148      	cbz	r0, c0de6392 <ux_layout_paging_redisplay_by_addr+0x1e>
c0de637e:	6841      	ldr	r1, [r0, #4]
c0de6380:	4a04      	ldr	r2, [pc, #16]	; (c0de6394 <ux_layout_paging_redisplay_by_addr+0x20>)
c0de6382:	4b05      	ldr	r3, [pc, #20]	; (c0de6398 <ux_layout_paging_redisplay_by_addr+0x24>)
c0de6384:	447a      	add	r2, pc
c0de6386:	447b      	add	r3, pc
c0de6388:	4620      	mov	r0, r4
c0de638a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de638e:	f7ff bfc1 	b.w	c0de6314 <ux_layout_paging_redisplay_common>
c0de6392:	bd10      	pop	{r4, pc}
c0de6394:	00000015 	.word	0x00000015
c0de6398:	00000093 	.word	0x00000093

c0de639c <ux_layout_paging_button_callback_by_addr>:
c0de639c:	b580      	push	{r7, lr}
c0de639e:	491b      	ldr	r1, [pc, #108]	; (c0de640c <ux_layout_paging_button_callback_by_addr+0x70>)
c0de63a0:	4288      	cmp	r0, r1
c0de63a2:	d00c      	beq.n	c0de63be <ux_layout_paging_button_callback_by_addr+0x22>
c0de63a4:	491a      	ldr	r1, [pc, #104]	; (c0de6410 <ux_layout_paging_button_callback_by_addr+0x74>)
c0de63a6:	4288      	cmp	r0, r1
c0de63a8:	d016      	beq.n	c0de63d8 <ux_layout_paging_button_callback_by_addr+0x3c>
c0de63aa:	491a      	ldr	r1, [pc, #104]	; (c0de6414 <ux_layout_paging_button_callback_by_addr+0x78>)
c0de63ac:	4288      	cmp	r0, r1
c0de63ae:	d12a      	bne.n	c0de6406 <ux_layout_paging_button_callback_by_addr+0x6a>
c0de63b0:	4819      	ldr	r0, [pc, #100]	; (c0de6418 <ux_layout_paging_button_callback_by_addr+0x7c>)
c0de63b2:	eb09 0100 	add.w	r1, r9, r0
c0de63b6:	6849      	ldr	r1, [r1, #4]
c0de63b8:	b319      	cbz	r1, c0de6402 <ux_layout_paging_button_callback_by_addr+0x66>
c0de63ba:	3901      	subs	r1, #1
c0de63bc:	e018      	b.n	c0de63f0 <ux_layout_paging_button_callback_by_addr+0x54>
c0de63be:	4816      	ldr	r0, [pc, #88]	; (c0de6418 <ux_layout_paging_button_callback_by_addr+0x7c>)
c0de63c0:	eb09 0100 	add.w	r1, r9, r0
c0de63c4:	6889      	ldr	r1, [r1, #8]
c0de63c6:	b121      	cbz	r1, c0de63d2 <ux_layout_paging_button_callback_by_addr+0x36>
c0de63c8:	4448      	add	r0, r9
c0de63ca:	6840      	ldr	r0, [r0, #4]
c0de63cc:	3901      	subs	r1, #1
c0de63ce:	4281      	cmp	r1, r0
c0de63d0:	d119      	bne.n	c0de6406 <ux_layout_paging_button_callback_by_addr+0x6a>
c0de63d2:	f7ff fd93 	bl	c0de5efc <ux_flow_validate>
c0de63d6:	e016      	b.n	c0de6406 <ux_layout_paging_button_callback_by_addr+0x6a>
c0de63d8:	480f      	ldr	r0, [pc, #60]	; (c0de6418 <ux_layout_paging_button_callback_by_addr+0x7c>)
c0de63da:	eb09 0100 	add.w	r1, r9, r0
c0de63de:	e9d1 1201 	ldrd	r1, r2, [r1, #4]
c0de63e2:	3a01      	subs	r2, #1
c0de63e4:	4291      	cmp	r1, r2
c0de63e6:	d102      	bne.n	c0de63ee <ux_layout_paging_button_callback_by_addr+0x52>
c0de63e8:	f7ff fcfe 	bl	c0de5de8 <ux_flow_next>
c0de63ec:	e00b      	b.n	c0de6406 <ux_layout_paging_button_callback_by_addr+0x6a>
c0de63ee:	3101      	adds	r1, #1
c0de63f0:	eb09 0200 	add.w	r2, r9, r0
c0de63f4:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de63f8:	6051      	str	r1, [r2, #4]
c0de63fa:	3801      	subs	r0, #1
c0de63fc:	f7ff ffba 	bl	c0de6374 <ux_layout_paging_redisplay_by_addr>
c0de6400:	e001      	b.n	c0de6406 <ux_layout_paging_button_callback_by_addr+0x6a>
c0de6402:	f7ff fcf5 	bl	c0de5df0 <ux_flow_prev>
c0de6406:	2000      	movs	r0, #0
c0de6408:	bd80      	pop	{r7, pc}
c0de640a:	bf00      	nop
c0de640c:	80000003 	.word	0x80000003
c0de6410:	80000002 	.word	0x80000002
c0de6414:	80000001 	.word	0x80000001
c0de6418:	00000058 	.word	0x00000058

c0de641c <ux_layout_paging_prepro_by_addr>:
c0de641c:	b510      	push	{r4, lr}
c0de641e:	4604      	mov	r4, r0
c0de6420:	f7ff fe60 	bl	c0de60e4 <ux_stack_get_current_step_params>
c0de6424:	b130      	cbz	r0, c0de6434 <ux_layout_paging_prepro_by_addr+0x18>
c0de6426:	e9d0 1200 	ldrd	r1, r2, [r0]
c0de642a:	4620      	mov	r0, r4
c0de642c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6430:	f7ff bebc 	b.w	c0de61ac <ux_layout_paging_prepro_common>
c0de6434:	2000      	movs	r0, #0
c0de6436:	bd10      	pop	{r4, pc}

c0de6438 <ux_layout_paging_init_common>:
c0de6438:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de643c:	b081      	sub	sp, #4
c0de643e:	f8df 809c 	ldr.w	r8, [pc, #156]	; c0de64dc <ux_layout_paging_init_common+0xa4>
c0de6442:	460d      	mov	r5, r1
c0de6444:	eb09 0108 	add.w	r1, r9, r8
c0de6448:	7b0e      	ldrb	r6, [r1, #12]
c0de644a:	4692      	mov	sl, r2
c0de644c:	4604      	mov	r4, r0
c0de644e:	f7ff fc47 	bl	c0de5ce0 <ux_flow_direction>
c0de6452:	2801      	cmp	r0, #1
c0de6454:	d00c      	beq.n	c0de6470 <ux_layout_paging_init_common+0x38>
c0de6456:	3001      	adds	r0, #1
c0de6458:	d110      	bne.n	c0de647c <ux_layout_paging_init_common+0x44>
c0de645a:	eb09 0708 	add.w	r7, r9, r8
c0de645e:	f107 0008 	add.w	r0, r7, #8
c0de6462:	2114      	movs	r1, #20
c0de6464:	f000 fc7c 	bl	c0de6d60 <__aeabi_memclr>
c0de6468:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
c0de646c:	6078      	str	r0, [r7, #4]
c0de646e:	e005      	b.n	c0de647c <ux_layout_paging_init_common+0x44>
c0de6470:	eb09 0008 	add.w	r0, r9, r8
c0de6474:	3004      	adds	r0, #4
c0de6476:	2118      	movs	r1, #24
c0de6478:	f000 fc72 	bl	c0de6d60 <__aeabi_memclr>
c0de647c:	eb09 0708 	add.w	r7, r9, r8
c0de6480:	4620      	mov	r0, r4
c0de6482:	733e      	strb	r6, [r7, #12]
c0de6484:	1d3e      	adds	r6, r7, #4
c0de6486:	f000 fa6b 	bl	c0de6960 <ux_stack_init>
c0de648a:	f8d7 010c 	ldr.w	r0, [r7, #268]	; 0x10c
c0de648e:	2308      	movs	r3, #8
c0de6490:	4328      	orrs	r0, r5
c0de6492:	4813      	ldr	r0, [pc, #76]	; (c0de64e0 <ux_layout_paging_init_common+0xa8>)
c0de6494:	7b39      	ldrb	r1, [r7, #12]
c0de6496:	4478      	add	r0, pc
c0de6498:	bf18      	it	ne
c0de649a:	4628      	movne	r0, r5
c0de649c:	0709      	lsls	r1, r1, #28
c0de649e:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
c0de64a2:	4632      	mov	r2, r6
c0de64a4:	bf08      	it	eq
c0de64a6:	230a      	moveq	r3, #10
c0de64a8:	f000 f832 	bl	c0de6510 <ux_layout_paging_compute>
c0de64ac:	60b8      	str	r0, [r7, #8]
c0de64ae:	b148      	cbz	r0, c0de64c4 <ux_layout_paging_init_common+0x8c>
c0de64b0:	eb09 0108 	add.w	r1, r9, r8
c0de64b4:	6849      	ldr	r1, [r1, #4]
c0de64b6:	3801      	subs	r0, #1
c0de64b8:	4281      	cmp	r1, r0
c0de64ba:	bf84      	itt	hi
c0de64bc:	eb09 0108 	addhi.w	r1, r9, r8
c0de64c0:	6048      	strhi	r0, [r1, #4]
c0de64c2:	e005      	b.n	c0de64d0 <ux_layout_paging_init_common+0x98>
c0de64c4:	eb09 0008 	add.w	r0, r9, r8
c0de64c8:	3004      	adds	r0, #4
c0de64ca:	2118      	movs	r1, #24
c0de64cc:	f000 fc48 	bl	c0de6d60 <__aeabi_memclr>
c0de64d0:	4620      	mov	r0, r4
c0de64d2:	4651      	mov	r1, sl
c0de64d4:	b001      	add	sp, #4
c0de64d6:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de64da:	4708      	bx	r1
c0de64dc:	00000058 	.word	0x00000058
c0de64e0:	00000a52 	.word	0x00000a52

c0de64e4 <ux_layout_bn_paging_init>:
c0de64e4:	b510      	push	{r4, lr}
c0de64e6:	4908      	ldr	r1, [pc, #32]	; (c0de6508 <ux_layout_bn_paging_init+0x24>)
c0de64e8:	4604      	mov	r4, r0
c0de64ea:	eb09 0001 	add.w	r0, r9, r1
c0de64ee:	21f0      	movs	r1, #240	; 0xf0
c0de64f0:	7301      	strb	r1, [r0, #12]
c0de64f2:	4620      	mov	r0, r4
c0de64f4:	f7ff fdda 	bl	c0de60ac <ux_stack_get_step_params>
c0de64f8:	6841      	ldr	r1, [r0, #4]
c0de64fa:	4a04      	ldr	r2, [pc, #16]	; (c0de650c <ux_layout_bn_paging_init+0x28>)
c0de64fc:	4620      	mov	r0, r4
c0de64fe:	447a      	add	r2, pc
c0de6500:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6504:	f7ff bf98 	b.w	c0de6438 <ux_layout_paging_init_common>
c0de6508:	00000058 	.word	0x00000058
c0de650c:	fffffe73 	.word	0xfffffe73

c0de6510 <ux_layout_paging_compute>:
c0de6510:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6514:	b088      	sub	sp, #32
c0de6516:	460e      	mov	r6, r1
c0de6518:	4607      	mov	r7, r0
c0de651a:	f102 000a 	add.w	r0, r2, #10
c0de651e:	210c      	movs	r1, #12
c0de6520:	9307      	str	r3, [sp, #28]
c0de6522:	4614      	mov	r4, r2
c0de6524:	f000 fc1c 	bl	c0de6d60 <__aeabi_memclr>
c0de6528:	1c70      	adds	r0, r6, #1
c0de652a:	9004      	str	r0, [sp, #16]
c0de652c:	d004      	beq.n	c0de6538 <ux_layout_paging_compute+0x28>
c0de652e:	6860      	ldr	r0, [r4, #4]
c0de6530:	42b0      	cmp	r0, r6
c0de6532:	d801      	bhi.n	c0de6538 <ux_layout_paging_compute+0x28>
c0de6534:	2000      	movs	r0, #0
c0de6536:	e095      	b.n	c0de6664 <ux_layout_paging_compute+0x154>
c0de6538:	b127      	cbz	r7, c0de6544 <ux_layout_paging_compute+0x34>
c0de653a:	4638      	mov	r0, r7
c0de653c:	f7fc fe18 	bl	c0de3170 <pic>
c0de6540:	4607      	mov	r7, r0
c0de6542:	e003      	b.n	c0de654c <ux_layout_paging_compute+0x3c>
c0de6544:	4849      	ldr	r0, [pc, #292]	; (c0de666c <ux_layout_paging_compute+0x15c>)
c0de6546:	4448      	add	r0, r9
c0de6548:	f8d0 710c 	ldr.w	r7, [r0, #268]	; 0x10c
c0de654c:	4638      	mov	r0, r7
c0de654e:	f000 fc67 	bl	c0de6e20 <strlen>
c0de6552:	2801      	cmp	r0, #1
c0de6554:	f2c0 8083 	blt.w	c0de665e <ux_layout_paging_compute+0x14e>
c0de6558:	eb07 0b00 	add.w	fp, r7, r0
c0de655c:	2200      	movs	r2, #0
c0de655e:	2300      	movs	r3, #0
c0de6560:	2500      	movs	r5, #0
c0de6562:	9402      	str	r4, [sp, #8]
c0de6564:	4638      	mov	r0, r7
c0de6566:	9701      	str	r7, [sp, #4]
c0de6568:	9603      	str	r6, [sp, #12]
c0de656a:	bf00      	nop
c0de656c:	2600      	movs	r6, #0
c0de656e:	46ba      	mov	sl, r7
c0de6570:	e9cd 3205 	strd	r3, r2, [sp, #20]
c0de6574:	eb07 0806 	add.w	r8, r7, r6
c0de6578:	45d8      	cmp	r8, fp
c0de657a:	d21d      	bcs.n	c0de65b8 <ux_layout_paging_compute+0xa8>
c0de657c:	1c74      	adds	r4, r6, #1
c0de657e:	9807      	ldr	r0, [sp, #28]
c0de6580:	b2e3      	uxtb	r3, r4
c0de6582:	2100      	movs	r1, #0
c0de6584:	463a      	mov	r2, r7
c0de6586:	9500      	str	r5, [sp, #0]
c0de6588:	f7fa f896 	bl	c0de06b8 <bagl_compute_line_width>
c0de658c:	2872      	cmp	r0, #114	; 0x72
c0de658e:	d813      	bhi.n	c0de65b8 <ux_layout_paging_compute+0xa8>
c0de6590:	f898 0000 	ldrb.w	r0, [r8]
c0de6594:	282c      	cmp	r0, #44	; 0x2c
c0de6596:	dc05      	bgt.n	c0de65a4 <ux_layout_paging_compute+0x94>
c0de6598:	280a      	cmp	r0, #10
c0de659a:	d007      	beq.n	c0de65ac <ux_layout_paging_compute+0x9c>
c0de659c:	2820      	cmp	r0, #32
c0de659e:	bf08      	it	eq
c0de65a0:	46c2      	moveq	sl, r8
c0de65a2:	e004      	b.n	c0de65ae <ux_layout_paging_compute+0x9e>
c0de65a4:	285f      	cmp	r0, #95	; 0x5f
c0de65a6:	d001      	beq.n	c0de65ac <ux_layout_paging_compute+0x9c>
c0de65a8:	282d      	cmp	r0, #45	; 0x2d
c0de65aa:	d100      	bne.n	c0de65ae <ux_layout_paging_compute+0x9e>
c0de65ac:	46c2      	mov	sl, r8
c0de65ae:	280a      	cmp	r0, #10
c0de65b0:	4626      	mov	r6, r4
c0de65b2:	d1df      	bne.n	c0de6574 <ux_layout_paging_compute+0x64>
c0de65b4:	e001      	b.n	c0de65ba <ux_layout_paging_compute+0xaa>
c0de65b6:	bf00      	nop
c0de65b8:	4634      	mov	r4, r6
c0de65ba:	1938      	adds	r0, r7, r4
c0de65bc:	4558      	cmp	r0, fp
c0de65be:	d20f      	bcs.n	c0de65e0 <ux_layout_paging_compute+0xd0>
c0de65c0:	b174      	cbz	r4, c0de65e0 <ux_layout_paging_compute+0xd0>
c0de65c2:	45ba      	cmp	sl, r7
c0de65c4:	d00c      	beq.n	c0de65e0 <ux_layout_paging_compute+0xd0>
c0de65c6:	f810 1c01 	ldrb.w	r1, [r0, #-1]
c0de65ca:	292c      	cmp	r1, #44	; 0x2c
c0de65cc:	dc2f      	bgt.n	c0de662e <ux_layout_paging_compute+0x11e>
c0de65ce:	9e03      	ldr	r6, [sp, #12]
c0de65d0:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
c0de65d4:	290a      	cmp	r1, #10
c0de65d6:	d006      	beq.n	c0de65e6 <ux_layout_paging_compute+0xd6>
c0de65d8:	2920      	cmp	r1, #32
c0de65da:	d004      	beq.n	c0de65e6 <ux_layout_paging_compute+0xd6>
c0de65dc:	e02e      	b.n	c0de663c <ux_layout_paging_compute+0x12c>
c0de65de:	bf00      	nop
c0de65e0:	9e03      	ldr	r6, [sp, #12]
c0de65e2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
c0de65e6:	9804      	ldr	r0, [sp, #16]
c0de65e8:	b170      	cbz	r0, c0de6608 <ux_layout_paging_compute+0xf8>
c0de65ea:	42b2      	cmp	r2, r6
c0de65ec:	d10c      	bne.n	c0de6608 <ux_layout_paging_compute+0xf8>
c0de65ee:	9802      	ldr	r0, [sp, #8]
c0de65f0:	6840      	ldr	r0, [r0, #4]
c0de65f2:	42b0      	cmp	r0, r6
c0de65f4:	d908      	bls.n	c0de6608 <ux_layout_paging_compute+0xf8>
c0de65f6:	9801      	ldr	r0, [sp, #4]
c0de65f8:	9902      	ldr	r1, [sp, #8]
c0de65fa:	1a38      	subs	r0, r7, r0
c0de65fc:	eb01 0143 	add.w	r1, r1, r3, lsl #1
c0de6600:	2b01      	cmp	r3, #1
c0de6602:	8148      	strh	r0, [r1, #10]
c0de6604:	820c      	strh	r4, [r1, #16]
c0de6606:	d82a      	bhi.n	c0de665e <ux_layout_paging_compute+0x14e>
c0de6608:	3301      	adds	r3, #1
c0de660a:	4427      	add	r7, r4
c0de660c:	2b02      	cmp	r3, #2
c0de660e:	f04f 0000 	mov.w	r0, #0
c0de6612:	bf88      	it	hi
c0de6614:	2001      	movhi	r0, #1
c0de6616:	455f      	cmp	r7, fp
c0de6618:	f04f 0100 	mov.w	r1, #0
c0de661c:	bf38      	it	cc
c0de661e:	2101      	movcc	r1, #1
c0de6620:	4008      	ands	r0, r1
c0de6622:	bf18      	it	ne
c0de6624:	2300      	movne	r3, #0
c0de6626:	455f      	cmp	r7, fp
c0de6628:	4402      	add	r2, r0
c0de662a:	d39f      	bcc.n	c0de656c <ux_layout_paging_compute+0x5c>
c0de662c:	e019      	b.n	c0de6662 <ux_layout_paging_compute+0x152>
c0de662e:	9e03      	ldr	r6, [sp, #12]
c0de6630:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
c0de6634:	292d      	cmp	r1, #45	; 0x2d
c0de6636:	d0d6      	beq.n	c0de65e6 <ux_layout_paging_compute+0xd6>
c0de6638:	295f      	cmp	r1, #95	; 0x5f
c0de663a:	d0d4      	beq.n	c0de65e6 <ux_layout_paging_compute+0xd6>
c0de663c:	7800      	ldrb	r0, [r0, #0]
c0de663e:	282c      	cmp	r0, #44	; 0x2c
c0de6640:	dc06      	bgt.n	c0de6650 <ux_layout_paging_compute+0x140>
c0de6642:	280a      	cmp	r0, #10
c0de6644:	d0cf      	beq.n	c0de65e6 <ux_layout_paging_compute+0xd6>
c0de6646:	2820      	cmp	r0, #32
c0de6648:	bf18      	it	ne
c0de664a:	ebaa 0407 	subne.w	r4, sl, r7
c0de664e:	e7ca      	b.n	c0de65e6 <ux_layout_paging_compute+0xd6>
c0de6650:	282d      	cmp	r0, #45	; 0x2d
c0de6652:	d0c8      	beq.n	c0de65e6 <ux_layout_paging_compute+0xd6>
c0de6654:	285f      	cmp	r0, #95	; 0x5f
c0de6656:	d0c6      	beq.n	c0de65e6 <ux_layout_paging_compute+0xd6>
c0de6658:	ebaa 0407 	sub.w	r4, sl, r7
c0de665c:	e7c3      	b.n	c0de65e6 <ux_layout_paging_compute+0xd6>
c0de665e:	2001      	movs	r0, #1
c0de6660:	e000      	b.n	c0de6664 <ux_layout_paging_compute+0x154>
c0de6662:	1c50      	adds	r0, r2, #1
c0de6664:	b008      	add	sp, #32
c0de6666:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de666a:	bf00      	nop
c0de666c:	00000058 	.word	0x00000058

c0de6670 <ux_layout_pb_prepro>:
c0de6670:	b570      	push	{r4, r5, r6, lr}
c0de6672:	4605      	mov	r5, r0
c0de6674:	f7ff fd36 	bl	c0de60e4 <ux_stack_get_current_step_params>
c0de6678:	4e13      	ldr	r6, [pc, #76]	; (c0de66c8 <ux_layout_pb_prepro+0x58>)
c0de667a:	4604      	mov	r4, r0
c0de667c:	eb09 0006 	add.w	r0, r9, r6
c0de6680:	30a8      	adds	r0, #168	; 0xa8
c0de6682:	4629      	mov	r1, r5
c0de6684:	2220      	movs	r2, #32
c0de6686:	f000 fb70 	bl	c0de6d6a <__aeabi_memmove>
c0de668a:	7868      	ldrb	r0, [r5, #1]
c0de668c:	280f      	cmp	r0, #15
c0de668e:	dc06      	bgt.n	c0de669e <ux_layout_pb_prepro+0x2e>
c0de6690:	2801      	cmp	r0, #1
c0de6692:	d00a      	beq.n	c0de66aa <ux_layout_pb_prepro+0x3a>
c0de6694:	2802      	cmp	r0, #2
c0de6696:	d112      	bne.n	c0de66be <ux_layout_pb_prepro+0x4e>
c0de6698:	f7ff faf8 	bl	c0de5c8c <ux_flow_is_last>
c0de669c:	e007      	b.n	c0de66ae <ux_layout_pb_prepro+0x3e>
c0de669e:	2810      	cmp	r0, #16
c0de66a0:	d008      	beq.n	c0de66b4 <ux_layout_pb_prepro+0x44>
c0de66a2:	2811      	cmp	r0, #17
c0de66a4:	d10b      	bne.n	c0de66be <ux_layout_pb_prepro+0x4e>
c0de66a6:	6860      	ldr	r0, [r4, #4]
c0de66a8:	e005      	b.n	c0de66b6 <ux_layout_pb_prepro+0x46>
c0de66aa:	f7ff fac1 	bl	c0de5c30 <ux_flow_is_first>
c0de66ae:	b130      	cbz	r0, c0de66be <ux_layout_pb_prepro+0x4e>
c0de66b0:	2000      	movs	r0, #0
c0de66b2:	bd70      	pop	{r4, r5, r6, pc}
c0de66b4:	6820      	ldr	r0, [r4, #0]
c0de66b6:	eb09 0106 	add.w	r1, r9, r6
c0de66ba:	f8c1 00c4 	str.w	r0, [r1, #196]	; 0xc4
c0de66be:	eb09 0006 	add.w	r0, r9, r6
c0de66c2:	30a8      	adds	r0, #168	; 0xa8
c0de66c4:	bd70      	pop	{r4, r5, r6, pc}
c0de66c6:	bf00      	nop
c0de66c8:	00000058 	.word	0x00000058

c0de66cc <ux_layout_pb_init>:
c0de66cc:	b510      	push	{r4, lr}
c0de66ce:	4604      	mov	r4, r0
c0de66d0:	f000 f946 	bl	c0de6960 <ux_stack_init>
c0de66d4:	480e      	ldr	r0, [pc, #56]	; (c0de6710 <ux_layout_pb_init+0x44>)
c0de66d6:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de66da:	4448      	add	r0, r9
c0de66dc:	4a0d      	ldr	r2, [pc, #52]	; (c0de6714 <ux_layout_pb_init+0x48>)
c0de66de:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de66e2:	2005      	movs	r0, #5
c0de66e4:	447a      	add	r2, pc
c0de66e6:	f881 00d0 	strb.w	r0, [r1, #208]	; 0xd0
c0de66ea:	2001      	movs	r0, #1
c0de66ec:	f8c1 20cc 	str.w	r2, [r1, #204]	; 0xcc
c0de66f0:	f881 00c9 	strb.w	r0, [r1, #201]	; 0xc9
c0de66f4:	4808      	ldr	r0, [pc, #32]	; (c0de6718 <ux_layout_pb_init+0x4c>)
c0de66f6:	4a09      	ldr	r2, [pc, #36]	; (c0de671c <ux_layout_pb_init+0x50>)
c0de66f8:	4478      	add	r0, pc
c0de66fa:	447a      	add	r2, pc
c0de66fc:	f8c1 00d8 	str.w	r0, [r1, #216]	; 0xd8
c0de6700:	4620      	mov	r0, r4
c0de6702:	f8c1 20dc 	str.w	r2, [r1, #220]	; 0xdc
c0de6706:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de670a:	f000 b8f9 	b.w	c0de6900 <ux_stack_display>
c0de670e:	bf00      	nop
c0de6710:	00000058 	.word	0x00000058
c0de6714:	00004518 	.word	0x00004518
c0de6718:	ffffff75 	.word	0xffffff75
c0de671c:	fffff977 	.word	0xfffff977

c0de6720 <ux_layout_pbb_prepro>:
c0de6720:	b570      	push	{r4, r5, r6, lr}
c0de6722:	4605      	mov	r5, r0
c0de6724:	f7ff fcde 	bl	c0de60e4 <ux_stack_get_current_step_params>
c0de6728:	4e19      	ldr	r6, [pc, #100]	; (c0de6790 <ux_layout_pbb_prepro+0x70>)
c0de672a:	4604      	mov	r4, r0
c0de672c:	eb09 0006 	add.w	r0, r9, r6
c0de6730:	30a8      	adds	r0, #168	; 0xa8
c0de6732:	4629      	mov	r1, r5
c0de6734:	2220      	movs	r2, #32
c0de6736:	f000 fb18 	bl	c0de6d6a <__aeabi_memmove>
c0de673a:	7868      	ldrb	r0, [r5, #1]
c0de673c:	280f      	cmp	r0, #15
c0de673e:	dc0b      	bgt.n	c0de6758 <ux_layout_pbb_prepro+0x38>
c0de6740:	2801      	cmp	r0, #1
c0de6742:	d018      	beq.n	c0de6776 <ux_layout_pbb_prepro+0x56>
c0de6744:	2802      	cmp	r0, #2
c0de6746:	d019      	beq.n	c0de677c <ux_layout_pbb_prepro+0x5c>
c0de6748:	280f      	cmp	r0, #15
c0de674a:	d11c      	bne.n	c0de6786 <ux_layout_pbb_prepro+0x66>
c0de674c:	6820      	ldr	r0, [r4, #0]
c0de674e:	eb09 0106 	add.w	r1, r9, r6
c0de6752:	f8c1 00c4 	str.w	r0, [r1, #196]	; 0xc4
c0de6756:	e016      	b.n	c0de6786 <ux_layout_pbb_prepro+0x66>
c0de6758:	3810      	subs	r0, #16
c0de675a:	2802      	cmp	r0, #2
c0de675c:	d213      	bcs.n	c0de6786 <ux_layout_pbb_prepro+0x66>
c0de675e:	eb09 0006 	add.w	r0, r9, r6
c0de6762:	f890 10a9 	ldrb.w	r1, [r0, #169]	; 0xa9
c0de6766:	f001 010f 	and.w	r1, r1, #15
c0de676a:	eb04 0181 	add.w	r1, r4, r1, lsl #2
c0de676e:	6849      	ldr	r1, [r1, #4]
c0de6770:	f8c0 10c4 	str.w	r1, [r0, #196]	; 0xc4
c0de6774:	e007      	b.n	c0de6786 <ux_layout_pbb_prepro+0x66>
c0de6776:	f7ff fa5b 	bl	c0de5c30 <ux_flow_is_first>
c0de677a:	e001      	b.n	c0de6780 <ux_layout_pbb_prepro+0x60>
c0de677c:	f7ff fa86 	bl	c0de5c8c <ux_flow_is_last>
c0de6780:	b108      	cbz	r0, c0de6786 <ux_layout_pbb_prepro+0x66>
c0de6782:	2000      	movs	r0, #0
c0de6784:	bd70      	pop	{r4, r5, r6, pc}
c0de6786:	eb09 0006 	add.w	r0, r9, r6
c0de678a:	30a8      	adds	r0, #168	; 0xa8
c0de678c:	bd70      	pop	{r4, r5, r6, pc}
c0de678e:	bf00      	nop
c0de6790:	00000058 	.word	0x00000058

c0de6794 <ux_layout_pbb_init_common>:
c0de6794:	b510      	push	{r4, lr}
c0de6796:	4604      	mov	r4, r0
c0de6798:	f000 f8e2 	bl	c0de6960 <ux_stack_init>
c0de679c:	480a      	ldr	r0, [pc, #40]	; (c0de67c8 <ux_layout_pbb_init_common+0x34>)
c0de679e:	4a0b      	ldr	r2, [pc, #44]	; (c0de67cc <ux_layout_pbb_init_common+0x38>)
c0de67a0:	4448      	add	r0, r9
c0de67a2:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de67a6:	447a      	add	r2, pc
c0de67a8:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de67ac:	2106      	movs	r1, #6
c0de67ae:	f8c0 20cc 	str.w	r2, [r0, #204]	; 0xcc
c0de67b2:	f880 10d0 	strb.w	r1, [r0, #208]	; 0xd0
c0de67b6:	4a06      	ldr	r2, [pc, #24]	; (c0de67d0 <ux_layout_pbb_init_common+0x3c>)
c0de67b8:	2101      	movs	r1, #1
c0de67ba:	447a      	add	r2, pc
c0de67bc:	f880 10c9 	strb.w	r1, [r0, #201]	; 0xc9
c0de67c0:	f8c0 20dc 	str.w	r2, [r0, #220]	; 0xdc
c0de67c4:	bd10      	pop	{r4, pc}
c0de67c6:	bf00      	nop
c0de67c8:	00000058 	.word	0x00000058
c0de67cc:	000044f6 	.word	0x000044f6
c0de67d0:	fffff8b7 	.word	0xfffff8b7

c0de67d4 <ux_layout_pnn_prepro>:
c0de67d4:	b580      	push	{r7, lr}
c0de67d6:	f7ff ffa3 	bl	c0de6720 <ux_layout_pbb_prepro>
c0de67da:	b158      	cbz	r0, c0de67f4 <ux_layout_pnn_prepro+0x20>
c0de67dc:	4906      	ldr	r1, [pc, #24]	; (c0de67f8 <ux_layout_pnn_prepro+0x24>)
c0de67de:	eb09 0201 	add.w	r2, r9, r1
c0de67e2:	f892 20a9 	ldrb.w	r2, [r2, #169]	; 0xa9
c0de67e6:	2a10      	cmp	r2, #16
c0de67e8:	bf22      	ittt	cs
c0de67ea:	4449      	addcs	r1, r9
c0de67ec:	f248 020a 	movwcs	r2, #32778	; 0x800a
c0de67f0:	f8a1 20c0 	strhcs.w	r2, [r1, #192]	; 0xc0
c0de67f4:	bd80      	pop	{r7, pc}
c0de67f6:	bf00      	nop
c0de67f8:	00000058 	.word	0x00000058

c0de67fc <ux_layout_pnn_init>:
c0de67fc:	b510      	push	{r4, lr}
c0de67fe:	4604      	mov	r4, r0
c0de6800:	f7ff ffc8 	bl	c0de6794 <ux_layout_pbb_init_common>
c0de6804:	4807      	ldr	r0, [pc, #28]	; (c0de6824 <ux_layout_pnn_init+0x28>)
c0de6806:	4a08      	ldr	r2, [pc, #32]	; (c0de6828 <ux_layout_pnn_init+0x2c>)
c0de6808:	4448      	add	r0, r9
c0de680a:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de680e:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de6812:	447a      	add	r2, pc
c0de6814:	4620      	mov	r0, r4
c0de6816:	f8c1 20d8 	str.w	r2, [r1, #216]	; 0xd8
c0de681a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de681e:	f000 b86f 	b.w	c0de6900 <ux_stack_display>
c0de6822:	bf00      	nop
c0de6824:	00000058 	.word	0x00000058
c0de6828:	ffffffbf 	.word	0xffffffbf

c0de682c <ux_layout_strings_prepro>:
c0de682c:	b570      	push	{r4, r5, r6, lr}
c0de682e:	4605      	mov	r5, r0
c0de6830:	f7ff fc58 	bl	c0de60e4 <ux_stack_get_current_step_params>
c0de6834:	4e14      	ldr	r6, [pc, #80]	; (c0de6888 <ux_layout_strings_prepro+0x5c>)
c0de6836:	4604      	mov	r4, r0
c0de6838:	eb09 0006 	add.w	r0, r9, r6
c0de683c:	30a8      	adds	r0, #168	; 0xa8
c0de683e:	4629      	mov	r1, r5
c0de6840:	2220      	movs	r2, #32
c0de6842:	f000 fa92 	bl	c0de6d6a <__aeabi_memmove>
c0de6846:	7868      	ldrb	r0, [r5, #1]
c0de6848:	2802      	cmp	r0, #2
c0de684a:	d004      	beq.n	c0de6856 <ux_layout_strings_prepro+0x2a>
c0de684c:	2801      	cmp	r0, #1
c0de684e:	d107      	bne.n	c0de6860 <ux_layout_strings_prepro+0x34>
c0de6850:	f7ff f9ee 	bl	c0de5c30 <ux_flow_is_first>
c0de6854:	e001      	b.n	c0de685a <ux_layout_strings_prepro+0x2e>
c0de6856:	f7ff fa19 	bl	c0de5c8c <ux_flow_is_last>
c0de685a:	b180      	cbz	r0, c0de687e <ux_layout_strings_prepro+0x52>
c0de685c:	2000      	movs	r0, #0
c0de685e:	bd70      	pop	{r4, r5, r6, pc}
c0de6860:	eb09 0006 	add.w	r0, r9, r6
c0de6864:	f890 00a9 	ldrb.w	r0, [r0, #169]	; 0xa9
c0de6868:	f010 0ff0 	tst.w	r0, #240	; 0xf0
c0de686c:	d007      	beq.n	c0de687e <ux_layout_strings_prepro+0x52>
c0de686e:	f000 000f 	and.w	r0, r0, #15
c0de6872:	f854 0020 	ldr.w	r0, [r4, r0, lsl #2]
c0de6876:	eb09 0106 	add.w	r1, r9, r6
c0de687a:	f8c1 00c4 	str.w	r0, [r1, #196]	; 0xc4
c0de687e:	eb09 0006 	add.w	r0, r9, r6
c0de6882:	30a8      	adds	r0, #168	; 0xa8
c0de6884:	bd70      	pop	{r4, r5, r6, pc}
c0de6886:	bf00      	nop
c0de6888:	00000058 	.word	0x00000058

c0de688c <ux_stack_push>:
c0de688c:	b5b0      	push	{r4, r5, r7, lr}
c0de688e:	4c0a      	ldr	r4, [pc, #40]	; (c0de68b8 <ux_stack_push+0x2c>)
c0de6890:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6894:	b968      	cbnz	r0, c0de68b2 <ux_stack_push+0x26>
c0de6896:	eb09 0504 	add.w	r5, r9, r4
c0de689a:	f105 00c8 	add.w	r0, r5, #200	; 0xc8
c0de689e:	2124      	movs	r1, #36	; 0x24
c0de68a0:	f000 fa5e 	bl	c0de6d60 <__aeabi_memclr>
c0de68a4:	2000      	movs	r0, #0
c0de68a6:	e9c5 0007 	strd	r0, r0, [r5, #28]
c0de68aa:	6268      	str	r0, [r5, #36]	; 0x24
c0de68ac:	2001      	movs	r0, #1
c0de68ae:	f809 0004 	strb.w	r0, [r9, r4]
c0de68b2:	3801      	subs	r0, #1
c0de68b4:	bdb0      	pop	{r4, r5, r7, pc}
c0de68b6:	bf00      	nop
c0de68b8:	00000058 	.word	0x00000058

c0de68bc <ux_stack_redisplay>:
c0de68bc:	b580      	push	{r7, lr}
c0de68be:	f7ff fc19 	bl	c0de60f4 <ux_flow_relayout>
c0de68c2:	b100      	cbz	r0, c0de68c6 <ux_stack_redisplay+0xa>
c0de68c4:	bd80      	pop	{r7, pc}
c0de68c6:	480d      	ldr	r0, [pc, #52]	; (c0de68fc <ux_stack_redisplay+0x40>)
c0de68c8:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de68cc:	2901      	cmp	r1, #1
c0de68ce:	d109      	bne.n	c0de68e4 <ux_stack_redisplay+0x28>
c0de68d0:	eb09 0100 	add.w	r1, r9, r0
c0de68d4:	2200      	movs	r2, #0
c0de68d6:	2000      	movs	r0, #0
c0de68d8:	f8a1 20ca 	strh.w	r2, [r1, #202]	; 0xca
c0de68dc:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de68e0:	f000 b80e 	b.w	c0de6900 <ux_stack_display>
c0de68e4:	2900      	cmp	r1, #0
c0de68e6:	d1ed      	bne.n	c0de68c4 <ux_stack_redisplay+0x8>
c0de68e8:	eb09 0100 	add.w	r1, r9, r0
c0de68ec:	7849      	ldrb	r1, [r1, #1]
c0de68ee:	29aa      	cmp	r1, #170	; 0xaa
c0de68f0:	bf02      	ittt	eq
c0de68f2:	4448      	addeq	r0, r9
c0de68f4:	2169      	moveq	r1, #105	; 0x69
c0de68f6:	7041      	strbeq	r1, [r0, #1]
c0de68f8:	bd80      	pop	{r7, pc}
c0de68fa:	bf00      	nop
c0de68fc:	00000058 	.word	0x00000058

c0de6900 <ux_stack_display>:
c0de6900:	b5b0      	push	{r4, r5, r7, lr}
c0de6902:	4d16      	ldr	r5, [pc, #88]	; (c0de695c <ux_stack_display+0x5c>)
c0de6904:	4604      	mov	r4, r0
c0de6906:	f819 1005 	ldrb.w	r1, [r9, r5]
c0de690a:	b199      	cbz	r1, c0de6934 <ux_stack_display+0x34>
c0de690c:	1c60      	adds	r0, r4, #1
c0de690e:	4288      	cmp	r0, r1
c0de6910:	d110      	bne.n	c0de6934 <ux_stack_display+0x34>
c0de6912:	f7fb fdc3 	bl	c0de249c <io_seproxyhal_init_ux>
c0de6916:	eb09 0005 	add.w	r0, r9, r5
c0de691a:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de691e:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de6922:	2200      	movs	r2, #0
c0de6924:	f101 00c8 	add.w	r0, r1, #200	; 0xc8
c0de6928:	f8a1 20ca 	strh.w	r2, [r1, #202]	; 0xca
c0de692c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6930:	f000 b826 	b.w	c0de6980 <ux_stack_display_elements>
c0de6934:	2900      	cmp	r1, #0
c0de6936:	bf18      	it	ne
c0de6938:	2101      	movne	r1, #1
c0de693a:	f1b4 30ff 	subs.w	r0, r4, #4294967295	; 0xffffffff
c0de693e:	bf18      	it	ne
c0de6940:	2001      	movne	r0, #1
c0de6942:	4208      	tst	r0, r1
c0de6944:	bf18      	it	ne
c0de6946:	bdb0      	popne	{r4, r5, r7, pc}
c0de6948:	eb09 0005 	add.w	r0, r9, r5
c0de694c:	7840      	ldrb	r0, [r0, #1]
c0de694e:	28aa      	cmp	r0, #170	; 0xaa
c0de6950:	bf02      	ittt	eq
c0de6952:	eb09 0005 	addeq.w	r0, r9, r5
c0de6956:	2169      	moveq	r1, #105	; 0x69
c0de6958:	7041      	strbeq	r1, [r0, #1]
c0de695a:	bdb0      	pop	{r4, r5, r7, pc}
c0de695c:	00000058 	.word	0x00000058

c0de6960 <ux_stack_init>:
c0de6960:	b510      	push	{r4, lr}
c0de6962:	4604      	mov	r4, r0
c0de6964:	f7fb fd9a 	bl	c0de249c <io_seproxyhal_init_ux>
c0de6968:	b104      	cbz	r4, c0de696c <ux_stack_init+0xc>
c0de696a:	bd10      	pop	{r4, pc}
c0de696c:	4803      	ldr	r0, [pc, #12]	; (c0de697c <ux_stack_init+0x1c>)
c0de696e:	2124      	movs	r1, #36	; 0x24
c0de6970:	4448      	add	r0, r9
c0de6972:	30c8      	adds	r0, #200	; 0xc8
c0de6974:	f000 f9f4 	bl	c0de6d60 <__aeabi_memclr>
c0de6978:	bd10      	pop	{r4, pc}
c0de697a:	bf00      	nop
c0de697c:	00000058 	.word	0x00000058

c0de6980 <ux_stack_display_elements>:
c0de6980:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6984:	b081      	sub	sp, #4
c0de6986:	4604      	mov	r4, r0
c0de6988:	f7fd f856 	bl	c0de3a38 <os_perso_isonboarded>
c0de698c:	28aa      	cmp	r0, #170	; 0xaa
c0de698e:	d103      	bne.n	c0de6998 <ux_stack_display_elements+0x18>
c0de6990:	f7fd f86e 	bl	c0de3a70 <os_global_pin_is_validated>
c0de6994:	28aa      	cmp	r0, #170	; 0xaa
c0de6996:	d14f      	bne.n	c0de6a38 <ux_stack_display_elements+0xb8>
c0de6998:	7860      	ldrb	r0, [r4, #1]
c0de699a:	b3a0      	cbz	r0, c0de6a06 <ux_stack_display_elements+0x86>
c0de699c:	8860      	ldrh	r0, [r4, #2]
c0de699e:	f894 8008 	ldrb.w	r8, [r4, #8]
c0de69a2:	4540      	cmp	r0, r8
c0de69a4:	d231      	bcs.n	c0de6a0a <ux_stack_display_elements+0x8a>
c0de69a6:	f8df a098 	ldr.w	sl, [pc, #152]	; c0de6a40 <ux_stack_display_elements+0xc0>
c0de69aa:	1c47      	adds	r7, r0, #1
c0de69ac:	0146      	lsls	r6, r0, #5
c0de69ae:	bf00      	nop
c0de69b0:	3001      	adds	r0, #1
c0de69b2:	8060      	strh	r0, [r4, #2]
c0de69b4:	f819 000a 	ldrb.w	r0, [r9, sl]
c0de69b8:	6861      	ldr	r1, [r4, #4]
c0de69ba:	eb01 0506 	add.w	r5, r1, r6
c0de69be:	b168      	cbz	r0, c0de69dc <ux_stack_display_elements+0x5c>
c0de69c0:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
c0de69c4:	eb09 010a 	add.w	r1, r9, sl
c0de69c8:	eb01 0080 	add.w	r0, r1, r0, lsl #2
c0de69cc:	f8d0 10b4 	ldr.w	r1, [r0, #180]	; 0xb4
c0de69d0:	b121      	cbz	r1, c0de69dc <ux_stack_display_elements+0x5c>
c0de69d2:	4628      	mov	r0, r5
c0de69d4:	4788      	blx	r1
c0de69d6:	b1a0      	cbz	r0, c0de6a02 <ux_stack_display_elements+0x82>
c0de69d8:	2801      	cmp	r0, #1
c0de69da:	d100      	bne.n	c0de69de <ux_stack_display_elements+0x5e>
c0de69dc:	4628      	mov	r0, r5
c0de69de:	b128      	cbz	r0, c0de69ec <ux_stack_display_elements+0x6c>
c0de69e0:	2801      	cmp	r0, #1
c0de69e2:	bf08      	it	eq
c0de69e4:	4628      	moveq	r0, r5
c0de69e6:	f7fb f823 	bl	c0de1a30 <io_seproxyhal_display>
c0de69ea:	e003      	b.n	c0de69f4 <ux_stack_display_elements+0x74>
c0de69ec:	eb09 000a 	add.w	r0, r9, sl
c0de69f0:	7840      	ldrb	r0, [r0, #1]
c0de69f2:	bb08      	cbnz	r0, c0de6a38 <ux_stack_display_elements+0xb8>
c0de69f4:	7a20      	ldrb	r0, [r4, #8]
c0de69f6:	4287      	cmp	r7, r0
c0de69f8:	d207      	bcs.n	c0de6a0a <ux_stack_display_elements+0x8a>
c0de69fa:	8860      	ldrh	r0, [r4, #2]
c0de69fc:	3701      	adds	r7, #1
c0de69fe:	3620      	adds	r6, #32
c0de6a00:	e7d6      	b.n	c0de69b0 <ux_stack_display_elements+0x30>
c0de6a02:	2000      	movs	r0, #0
c0de6a04:	e7eb      	b.n	c0de69de <ux_stack_display_elements+0x5e>
c0de6a06:	f04f 0800 	mov.w	r8, #0
c0de6a0a:	8860      	ldrh	r0, [r4, #2]
c0de6a0c:	4540      	cmp	r0, r8
c0de6a0e:	d113      	bne.n	c0de6a38 <ux_stack_display_elements+0xb8>
c0de6a10:	f7fd f8b6 	bl	c0de3b80 <screen_update>
c0de6a14:	8860      	ldrh	r0, [r4, #2]
c0de6a16:	68e1      	ldr	r1, [r4, #12]
c0de6a18:	3001      	adds	r0, #1
c0de6a1a:	8060      	strh	r0, [r4, #2]
c0de6a1c:	b119      	cbz	r1, c0de6a26 <ux_stack_display_elements+0xa6>
c0de6a1e:	2000      	movs	r0, #0
c0de6a20:	2500      	movs	r5, #0
c0de6a22:	4788      	blx	r1
c0de6a24:	b120      	cbz	r0, c0de6a30 <ux_stack_display_elements+0xb0>
c0de6a26:	4806      	ldr	r0, [pc, #24]	; (c0de6a40 <ux_stack_display_elements+0xc0>)
c0de6a28:	7821      	ldrb	r1, [r4, #0]
c0de6a2a:	4448      	add	r0, r9
c0de6a2c:	7041      	strb	r1, [r0, #1]
c0de6a2e:	e003      	b.n	c0de6a38 <ux_stack_display_elements+0xb8>
c0de6a30:	4803      	ldr	r0, [pc, #12]	; (c0de6a40 <ux_stack_display_elements+0xc0>)
c0de6a32:	8065      	strh	r5, [r4, #2]
c0de6a34:	4448      	add	r0, r9
c0de6a36:	7045      	strb	r5, [r0, #1]
c0de6a38:	b001      	add	sp, #4
c0de6a3a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de6a3e:	bf00      	nop
c0de6a40:	00000058 	.word	0x00000058

c0de6a44 <__aeabi_uldivmod>:
c0de6a44:	b953      	cbnz	r3, c0de6a5c <__aeabi_uldivmod+0x18>
c0de6a46:	b94a      	cbnz	r2, c0de6a5c <__aeabi_uldivmod+0x18>
c0de6a48:	2900      	cmp	r1, #0
c0de6a4a:	bf08      	it	eq
c0de6a4c:	2800      	cmpeq	r0, #0
c0de6a4e:	bf1c      	itt	ne
c0de6a50:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
c0de6a54:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
c0de6a58:	f000 b80c 	b.w	c0de6a74 <__aeabi_idiv0>
c0de6a5c:	f1ad 0c08 	sub.w	ip, sp, #8
c0de6a60:	e96d ce04 	strd	ip, lr, [sp, #-16]!
c0de6a64:	f000 f808 	bl	c0de6a78 <__udivmoddi4>
c0de6a68:	f8dd e004 	ldr.w	lr, [sp, #4]
c0de6a6c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de6a70:	b004      	add	sp, #16
c0de6a72:	4770      	bx	lr

c0de6a74 <__aeabi_idiv0>:
c0de6a74:	4770      	bx	lr
c0de6a76:	bf00      	nop

c0de6a78 <__udivmoddi4>:
c0de6a78:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
c0de6a7c:	9e09      	ldr	r6, [sp, #36]	; 0x24
c0de6a7e:	460d      	mov	r5, r1
c0de6a80:	4604      	mov	r4, r0
c0de6a82:	460f      	mov	r7, r1
c0de6a84:	2b00      	cmp	r3, #0
c0de6a86:	d147      	bne.n	c0de6b18 <__udivmoddi4+0xa0>
c0de6a88:	428a      	cmp	r2, r1
c0de6a8a:	4694      	mov	ip, r2
c0de6a8c:	d95f      	bls.n	c0de6b4e <__udivmoddi4+0xd6>
c0de6a8e:	fab2 f382 	clz	r3, r2
c0de6a92:	b143      	cbz	r3, c0de6aa6 <__udivmoddi4+0x2e>
c0de6a94:	f1c3 0120 	rsb	r1, r3, #32
c0de6a98:	409f      	lsls	r7, r3
c0de6a9a:	fa02 fc03 	lsl.w	ip, r2, r3
c0de6a9e:	409c      	lsls	r4, r3
c0de6aa0:	fa20 f101 	lsr.w	r1, r0, r1
c0de6aa4:	430f      	orrs	r7, r1
c0de6aa6:	ea4f 451c 	mov.w	r5, ip, lsr #16
c0de6aaa:	fa1f fe8c 	uxth.w	lr, ip
c0de6aae:	0c22      	lsrs	r2, r4, #16
c0de6ab0:	fbb7 f1f5 	udiv	r1, r7, r5
c0de6ab4:	fb05 7711 	mls	r7, r5, r1, r7
c0de6ab8:	fb01 f00e 	mul.w	r0, r1, lr
c0de6abc:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
c0de6ac0:	4290      	cmp	r0, r2
c0de6ac2:	d908      	bls.n	c0de6ad6 <__udivmoddi4+0x5e>
c0de6ac4:	eb1c 0202 	adds.w	r2, ip, r2
c0de6ac8:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
c0de6acc:	d202      	bcs.n	c0de6ad4 <__udivmoddi4+0x5c>
c0de6ace:	4290      	cmp	r0, r2
c0de6ad0:	f200 8134 	bhi.w	c0de6d3c <__udivmoddi4+0x2c4>
c0de6ad4:	4639      	mov	r1, r7
c0de6ad6:	1a12      	subs	r2, r2, r0
c0de6ad8:	b2a4      	uxth	r4, r4
c0de6ada:	fbb2 f0f5 	udiv	r0, r2, r5
c0de6ade:	fb05 2210 	mls	r2, r5, r0, r2
c0de6ae2:	fb00 fe0e 	mul.w	lr, r0, lr
c0de6ae6:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
c0de6aea:	45a6      	cmp	lr, r4
c0de6aec:	d908      	bls.n	c0de6b00 <__udivmoddi4+0x88>
c0de6aee:	eb1c 0404 	adds.w	r4, ip, r4
c0de6af2:	f100 32ff 	add.w	r2, r0, #4294967295	; 0xffffffff
c0de6af6:	d202      	bcs.n	c0de6afe <__udivmoddi4+0x86>
c0de6af8:	45a6      	cmp	lr, r4
c0de6afa:	f200 8119 	bhi.w	c0de6d30 <__udivmoddi4+0x2b8>
c0de6afe:	4610      	mov	r0, r2
c0de6b00:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de6b04:	eba4 040e 	sub.w	r4, r4, lr
c0de6b08:	2100      	movs	r1, #0
c0de6b0a:	b11e      	cbz	r6, c0de6b14 <__udivmoddi4+0x9c>
c0de6b0c:	40dc      	lsrs	r4, r3
c0de6b0e:	2300      	movs	r3, #0
c0de6b10:	e9c6 4300 	strd	r4, r3, [r6]
c0de6b14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
c0de6b18:	428b      	cmp	r3, r1
c0de6b1a:	d908      	bls.n	c0de6b2e <__udivmoddi4+0xb6>
c0de6b1c:	2e00      	cmp	r6, #0
c0de6b1e:	f000 80fb 	beq.w	c0de6d18 <__udivmoddi4+0x2a0>
c0de6b22:	2100      	movs	r1, #0
c0de6b24:	e9c6 0500 	strd	r0, r5, [r6]
c0de6b28:	4608      	mov	r0, r1
c0de6b2a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
c0de6b2e:	fab3 f183 	clz	r1, r3
c0de6b32:	2900      	cmp	r1, #0
c0de6b34:	d14b      	bne.n	c0de6bce <__udivmoddi4+0x156>
c0de6b36:	42ab      	cmp	r3, r5
c0de6b38:	f0c0 80f1 	bcc.w	c0de6d1e <__udivmoddi4+0x2a6>
c0de6b3c:	4282      	cmp	r2, r0
c0de6b3e:	f240 80ee 	bls.w	c0de6d1e <__udivmoddi4+0x2a6>
c0de6b42:	4608      	mov	r0, r1
c0de6b44:	2e00      	cmp	r6, #0
c0de6b46:	d0e5      	beq.n	c0de6b14 <__udivmoddi4+0x9c>
c0de6b48:	e9c6 4700 	strd	r4, r7, [r6]
c0de6b4c:	e7e2      	b.n	c0de6b14 <__udivmoddi4+0x9c>
c0de6b4e:	b902      	cbnz	r2, c0de6b52 <__udivmoddi4+0xda>
c0de6b50:	deff      	udf	#255	; 0xff
c0de6b52:	fab2 f382 	clz	r3, r2
c0de6b56:	2b00      	cmp	r3, #0
c0de6b58:	f040 809d 	bne.w	c0de6c96 <__udivmoddi4+0x21e>
c0de6b5c:	1a8d      	subs	r5, r1, r2
c0de6b5e:	ea4f 4e12 	mov.w	lr, r2, lsr #16
c0de6b62:	b297      	uxth	r7, r2
c0de6b64:	2101      	movs	r1, #1
c0de6b66:	fbb5 f2fe 	udiv	r2, r5, lr
c0de6b6a:	fb0e 5012 	mls	r0, lr, r2, r5
c0de6b6e:	0c25      	lsrs	r5, r4, #16
c0de6b70:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
c0de6b74:	fb07 f002 	mul.w	r0, r7, r2
c0de6b78:	42a8      	cmp	r0, r5
c0de6b7a:	d90f      	bls.n	c0de6b9c <__udivmoddi4+0x124>
c0de6b7c:	eb1c 0505 	adds.w	r5, ip, r5
c0de6b80:	f102 38ff 	add.w	r8, r2, #4294967295	; 0xffffffff
c0de6b84:	bf2c      	ite	cs
c0de6b86:	f04f 0901 	movcs.w	r9, #1
c0de6b8a:	f04f 0900 	movcc.w	r9, #0
c0de6b8e:	42a8      	cmp	r0, r5
c0de6b90:	d903      	bls.n	c0de6b9a <__udivmoddi4+0x122>
c0de6b92:	f1b9 0f00 	cmp.w	r9, #0
c0de6b96:	f000 80ce 	beq.w	c0de6d36 <__udivmoddi4+0x2be>
c0de6b9a:	4642      	mov	r2, r8
c0de6b9c:	1a2d      	subs	r5, r5, r0
c0de6b9e:	b2a4      	uxth	r4, r4
c0de6ba0:	fbb5 f0fe 	udiv	r0, r5, lr
c0de6ba4:	fb0e 5510 	mls	r5, lr, r0, r5
c0de6ba8:	fb00 f707 	mul.w	r7, r0, r7
c0de6bac:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
c0de6bb0:	42a7      	cmp	r7, r4
c0de6bb2:	d908      	bls.n	c0de6bc6 <__udivmoddi4+0x14e>
c0de6bb4:	eb1c 0404 	adds.w	r4, ip, r4
c0de6bb8:	f100 35ff 	add.w	r5, r0, #4294967295	; 0xffffffff
c0de6bbc:	d202      	bcs.n	c0de6bc4 <__udivmoddi4+0x14c>
c0de6bbe:	42a7      	cmp	r7, r4
c0de6bc0:	f200 80b3 	bhi.w	c0de6d2a <__udivmoddi4+0x2b2>
c0de6bc4:	4628      	mov	r0, r5
c0de6bc6:	1be4      	subs	r4, r4, r7
c0de6bc8:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de6bcc:	e79d      	b.n	c0de6b0a <__udivmoddi4+0x92>
c0de6bce:	f1c1 0720 	rsb	r7, r1, #32
c0de6bd2:	408b      	lsls	r3, r1
c0de6bd4:	fa05 f401 	lsl.w	r4, r5, r1
c0de6bd8:	fa22 fc07 	lsr.w	ip, r2, r7
c0de6bdc:	40fd      	lsrs	r5, r7
c0de6bde:	408a      	lsls	r2, r1
c0de6be0:	ea4c 0c03 	orr.w	ip, ip, r3
c0de6be4:	fa20 f307 	lsr.w	r3, r0, r7
c0de6be8:	ea4f 491c 	mov.w	r9, ip, lsr #16
c0de6bec:	431c      	orrs	r4, r3
c0de6bee:	fa1f fe8c 	uxth.w	lr, ip
c0de6bf2:	fa00 f301 	lsl.w	r3, r0, r1
c0de6bf6:	0c20      	lsrs	r0, r4, #16
c0de6bf8:	fbb5 f8f9 	udiv	r8, r5, r9
c0de6bfc:	fb09 5518 	mls	r5, r9, r8, r5
c0de6c00:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
c0de6c04:	fb08 f00e 	mul.w	r0, r8, lr
c0de6c08:	42a8      	cmp	r0, r5
c0de6c0a:	d90f      	bls.n	c0de6c2c <__udivmoddi4+0x1b4>
c0de6c0c:	eb1c 0505 	adds.w	r5, ip, r5
c0de6c10:	f108 3aff 	add.w	sl, r8, #4294967295	; 0xffffffff
c0de6c14:	bf2c      	ite	cs
c0de6c16:	f04f 0b01 	movcs.w	fp, #1
c0de6c1a:	f04f 0b00 	movcc.w	fp, #0
c0de6c1e:	42a8      	cmp	r0, r5
c0de6c20:	d903      	bls.n	c0de6c2a <__udivmoddi4+0x1b2>
c0de6c22:	f1bb 0f00 	cmp.w	fp, #0
c0de6c26:	f000 808c 	beq.w	c0de6d42 <__udivmoddi4+0x2ca>
c0de6c2a:	46d0      	mov	r8, sl
c0de6c2c:	1a2d      	subs	r5, r5, r0
c0de6c2e:	b2a4      	uxth	r4, r4
c0de6c30:	fbb5 f0f9 	udiv	r0, r5, r9
c0de6c34:	fb09 5510 	mls	r5, r9, r0, r5
c0de6c38:	fb00 fe0e 	mul.w	lr, r0, lr
c0de6c3c:	ea44 4505 	orr.w	r5, r4, r5, lsl #16
c0de6c40:	45ae      	cmp	lr, r5
c0de6c42:	d907      	bls.n	c0de6c54 <__udivmoddi4+0x1dc>
c0de6c44:	eb1c 0505 	adds.w	r5, ip, r5
c0de6c48:	f100 34ff 	add.w	r4, r0, #4294967295	; 0xffffffff
c0de6c4c:	d201      	bcs.n	c0de6c52 <__udivmoddi4+0x1da>
c0de6c4e:	45ae      	cmp	lr, r5
c0de6c50:	d87e      	bhi.n	c0de6d50 <__udivmoddi4+0x2d8>
c0de6c52:	4620      	mov	r0, r4
c0de6c54:	ea40 4008 	orr.w	r0, r0, r8, lsl #16
c0de6c58:	eba5 050e 	sub.w	r5, r5, lr
c0de6c5c:	fba0 9802 	umull	r9, r8, r0, r2
c0de6c60:	4545      	cmp	r5, r8
c0de6c62:	464c      	mov	r4, r9
c0de6c64:	46c6      	mov	lr, r8
c0de6c66:	d302      	bcc.n	c0de6c6e <__udivmoddi4+0x1f6>
c0de6c68:	d106      	bne.n	c0de6c78 <__udivmoddi4+0x200>
c0de6c6a:	454b      	cmp	r3, r9
c0de6c6c:	d204      	bcs.n	c0de6c78 <__udivmoddi4+0x200>
c0de6c6e:	3801      	subs	r0, #1
c0de6c70:	ebb9 0402 	subs.w	r4, r9, r2
c0de6c74:	eb68 0e0c 	sbc.w	lr, r8, ip
c0de6c78:	2e00      	cmp	r6, #0
c0de6c7a:	d06f      	beq.n	c0de6d5c <__udivmoddi4+0x2e4>
c0de6c7c:	1b1a      	subs	r2, r3, r4
c0de6c7e:	eb65 050e 	sbc.w	r5, r5, lr
c0de6c82:	fa22 f301 	lsr.w	r3, r2, r1
c0de6c86:	fa05 f707 	lsl.w	r7, r5, r7
c0de6c8a:	40cd      	lsrs	r5, r1
c0de6c8c:	2100      	movs	r1, #0
c0de6c8e:	431f      	orrs	r7, r3
c0de6c90:	e9c6 7500 	strd	r7, r5, [r6]
c0de6c94:	e73e      	b.n	c0de6b14 <__udivmoddi4+0x9c>
c0de6c96:	fa02 fc03 	lsl.w	ip, r2, r3
c0de6c9a:	f1c3 0020 	rsb	r0, r3, #32
c0de6c9e:	fa01 f203 	lsl.w	r2, r1, r3
c0de6ca2:	ea4f 4e1c 	mov.w	lr, ip, lsr #16
c0de6ca6:	40c1      	lsrs	r1, r0
c0de6ca8:	fa24 f500 	lsr.w	r5, r4, r0
c0de6cac:	fa1f f78c 	uxth.w	r7, ip
c0de6cb0:	409c      	lsls	r4, r3
c0de6cb2:	4315      	orrs	r5, r2
c0de6cb4:	fbb1 f0fe 	udiv	r0, r1, lr
c0de6cb8:	0c2a      	lsrs	r2, r5, #16
c0de6cba:	fb0e 1110 	mls	r1, lr, r0, r1
c0de6cbe:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de6cc2:	fb00 f107 	mul.w	r1, r0, r7
c0de6cc6:	4291      	cmp	r1, r2
c0de6cc8:	d90e      	bls.n	c0de6ce8 <__udivmoddi4+0x270>
c0de6cca:	eb1c 0202 	adds.w	r2, ip, r2
c0de6cce:	f100 38ff 	add.w	r8, r0, #4294967295	; 0xffffffff
c0de6cd2:	bf2c      	ite	cs
c0de6cd4:	f04f 0901 	movcs.w	r9, #1
c0de6cd8:	f04f 0900 	movcc.w	r9, #0
c0de6cdc:	4291      	cmp	r1, r2
c0de6cde:	d902      	bls.n	c0de6ce6 <__udivmoddi4+0x26e>
c0de6ce0:	f1b9 0f00 	cmp.w	r9, #0
c0de6ce4:	d031      	beq.n	c0de6d4a <__udivmoddi4+0x2d2>
c0de6ce6:	4640      	mov	r0, r8
c0de6ce8:	1a52      	subs	r2, r2, r1
c0de6cea:	b2ad      	uxth	r5, r5
c0de6cec:	fbb2 f1fe 	udiv	r1, r2, lr
c0de6cf0:	fb0e 2211 	mls	r2, lr, r1, r2
c0de6cf4:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
c0de6cf8:	fb01 f207 	mul.w	r2, r1, r7
c0de6cfc:	42aa      	cmp	r2, r5
c0de6cfe:	d907      	bls.n	c0de6d10 <__udivmoddi4+0x298>
c0de6d00:	eb1c 0505 	adds.w	r5, ip, r5
c0de6d04:	f101 38ff 	add.w	r8, r1, #4294967295	; 0xffffffff
c0de6d08:	d201      	bcs.n	c0de6d0e <__udivmoddi4+0x296>
c0de6d0a:	42aa      	cmp	r2, r5
c0de6d0c:	d823      	bhi.n	c0de6d56 <__udivmoddi4+0x2de>
c0de6d0e:	4641      	mov	r1, r8
c0de6d10:	1aad      	subs	r5, r5, r2
c0de6d12:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0de6d16:	e726      	b.n	c0de6b66 <__udivmoddi4+0xee>
c0de6d18:	4631      	mov	r1, r6
c0de6d1a:	4630      	mov	r0, r6
c0de6d1c:	e6fa      	b.n	c0de6b14 <__udivmoddi4+0x9c>
c0de6d1e:	1a84      	subs	r4, r0, r2
c0de6d20:	eb65 0303 	sbc.w	r3, r5, r3
c0de6d24:	2001      	movs	r0, #1
c0de6d26:	461f      	mov	r7, r3
c0de6d28:	e70c      	b.n	c0de6b44 <__udivmoddi4+0xcc>
c0de6d2a:	4464      	add	r4, ip
c0de6d2c:	3802      	subs	r0, #2
c0de6d2e:	e74a      	b.n	c0de6bc6 <__udivmoddi4+0x14e>
c0de6d30:	4464      	add	r4, ip
c0de6d32:	3802      	subs	r0, #2
c0de6d34:	e6e4      	b.n	c0de6b00 <__udivmoddi4+0x88>
c0de6d36:	3a02      	subs	r2, #2
c0de6d38:	4465      	add	r5, ip
c0de6d3a:	e72f      	b.n	c0de6b9c <__udivmoddi4+0x124>
c0de6d3c:	3902      	subs	r1, #2
c0de6d3e:	4462      	add	r2, ip
c0de6d40:	e6c9      	b.n	c0de6ad6 <__udivmoddi4+0x5e>
c0de6d42:	f1a8 0802 	sub.w	r8, r8, #2
c0de6d46:	4465      	add	r5, ip
c0de6d48:	e770      	b.n	c0de6c2c <__udivmoddi4+0x1b4>
c0de6d4a:	3802      	subs	r0, #2
c0de6d4c:	4462      	add	r2, ip
c0de6d4e:	e7cb      	b.n	c0de6ce8 <__udivmoddi4+0x270>
c0de6d50:	3802      	subs	r0, #2
c0de6d52:	4465      	add	r5, ip
c0de6d54:	e77e      	b.n	c0de6c54 <__udivmoddi4+0x1dc>
c0de6d56:	3902      	subs	r1, #2
c0de6d58:	4465      	add	r5, ip
c0de6d5a:	e7d9      	b.n	c0de6d10 <__udivmoddi4+0x298>
c0de6d5c:	4631      	mov	r1, r6
c0de6d5e:	e6d9      	b.n	c0de6b14 <__udivmoddi4+0x9c>

c0de6d60 <__aeabi_memclr>:
c0de6d60:	2200      	movs	r2, #0
c0de6d62:	f000 b804 	b.w	c0de6d6e <__aeabi_memset>

c0de6d66 <__aeabi_memcpy>:
c0de6d66:	f000 b81d 	b.w	c0de6da4 <memcpy>

c0de6d6a <__aeabi_memmove>:
c0de6d6a:	f000 b828 	b.w	c0de6dbe <memmove>

c0de6d6e <__aeabi_memset>:
c0de6d6e:	4613      	mov	r3, r2
c0de6d70:	460a      	mov	r2, r1
c0de6d72:	4619      	mov	r1, r3
c0de6d74:	f000 b83d 	b.w	c0de6df2 <memset>

c0de6d78 <explicit_bzero>:
c0de6d78:	f000 b800 	b.w	c0de6d7c <bzero>

c0de6d7c <bzero>:
c0de6d7c:	460a      	mov	r2, r1
c0de6d7e:	2100      	movs	r1, #0
c0de6d80:	f000 b837 	b.w	c0de6df2 <memset>

c0de6d84 <memcmp>:
c0de6d84:	3901      	subs	r1, #1
c0de6d86:	4402      	add	r2, r0
c0de6d88:	b510      	push	{r4, lr}
c0de6d8a:	4290      	cmp	r0, r2
c0de6d8c:	d101      	bne.n	c0de6d92 <memcmp+0xe>
c0de6d8e:	2000      	movs	r0, #0
c0de6d90:	e005      	b.n	c0de6d9e <memcmp+0x1a>
c0de6d92:	7803      	ldrb	r3, [r0, #0]
c0de6d94:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de6d98:	42a3      	cmp	r3, r4
c0de6d9a:	d001      	beq.n	c0de6da0 <memcmp+0x1c>
c0de6d9c:	1b18      	subs	r0, r3, r4
c0de6d9e:	bd10      	pop	{r4, pc}
c0de6da0:	3001      	adds	r0, #1
c0de6da2:	e7f2      	b.n	c0de6d8a <memcmp+0x6>

c0de6da4 <memcpy>:
c0de6da4:	440a      	add	r2, r1
c0de6da6:	1e43      	subs	r3, r0, #1
c0de6da8:	4291      	cmp	r1, r2
c0de6daa:	d100      	bne.n	c0de6dae <memcpy+0xa>
c0de6dac:	4770      	bx	lr
c0de6dae:	b510      	push	{r4, lr}
c0de6db0:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de6db4:	4291      	cmp	r1, r2
c0de6db6:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de6dba:	d1f9      	bne.n	c0de6db0 <memcpy+0xc>
c0de6dbc:	bd10      	pop	{r4, pc}

c0de6dbe <memmove>:
c0de6dbe:	4288      	cmp	r0, r1
c0de6dc0:	b510      	push	{r4, lr}
c0de6dc2:	eb01 0402 	add.w	r4, r1, r2
c0de6dc6:	d902      	bls.n	c0de6dce <memmove+0x10>
c0de6dc8:	4284      	cmp	r4, r0
c0de6dca:	4623      	mov	r3, r4
c0de6dcc:	d807      	bhi.n	c0de6dde <memmove+0x20>
c0de6dce:	1e43      	subs	r3, r0, #1
c0de6dd0:	42a1      	cmp	r1, r4
c0de6dd2:	d008      	beq.n	c0de6de6 <memmove+0x28>
c0de6dd4:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de6dd8:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de6ddc:	e7f8      	b.n	c0de6dd0 <memmove+0x12>
c0de6dde:	4402      	add	r2, r0
c0de6de0:	4601      	mov	r1, r0
c0de6de2:	428a      	cmp	r2, r1
c0de6de4:	d100      	bne.n	c0de6de8 <memmove+0x2a>
c0de6de6:	bd10      	pop	{r4, pc}
c0de6de8:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de6dec:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de6df0:	e7f7      	b.n	c0de6de2 <memmove+0x24>

c0de6df2 <memset>:
c0de6df2:	4402      	add	r2, r0
c0de6df4:	4603      	mov	r3, r0
c0de6df6:	4293      	cmp	r3, r2
c0de6df8:	d100      	bne.n	c0de6dfc <memset+0xa>
c0de6dfa:	4770      	bx	lr
c0de6dfc:	f803 1b01 	strb.w	r1, [r3], #1
c0de6e00:	e7f9      	b.n	c0de6df6 <memset+0x4>
	...

c0de6e04 <setjmp>:
c0de6e04:	46ec      	mov	ip, sp
c0de6e06:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de6e0a:	f04f 0000 	mov.w	r0, #0
c0de6e0e:	4770      	bx	lr

c0de6e10 <longjmp>:
c0de6e10:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de6e14:	46e5      	mov	sp, ip
c0de6e16:	0008      	movs	r0, r1
c0de6e18:	bf08      	it	eq
c0de6e1a:	2001      	moveq	r0, #1
c0de6e1c:	4770      	bx	lr
c0de6e1e:	bf00      	nop

c0de6e20 <strlen>:
c0de6e20:	4603      	mov	r3, r0
c0de6e22:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de6e26:	2a00      	cmp	r2, #0
c0de6e28:	d1fb      	bne.n	c0de6e22 <strlen+0x2>
c0de6e2a:	1a18      	subs	r0, r3, r0
c0de6e2c:	3801      	subs	r0, #1
c0de6e2e:	4770      	bx	lr

c0de6e30 <strnlen>:
c0de6e30:	4602      	mov	r2, r0
c0de6e32:	4401      	add	r1, r0
c0de6e34:	b510      	push	{r4, lr}
c0de6e36:	428a      	cmp	r2, r1
c0de6e38:	4613      	mov	r3, r2
c0de6e3a:	d003      	beq.n	c0de6e44 <strnlen+0x14>
c0de6e3c:	781c      	ldrb	r4, [r3, #0]
c0de6e3e:	3201      	adds	r2, #1
c0de6e40:	2c00      	cmp	r4, #0
c0de6e42:	d1f8      	bne.n	c0de6e36 <strnlen+0x6>
c0de6e44:	1a18      	subs	r0, r3, r0
c0de6e46:	bd10      	pop	{r4, pc}
c0de6e48:	7041      	strb	r1, [r0, #1]
c0de6e4a:	7270      	strb	r0, [r6, #9]
c0de6e4c:	766f      	strb	r7, [r5, #25]
c0de6e4e:	0065      	lsls	r5, r4, #1
c0de6e50:	7325      	strb	r5, [r4, #12]
c0de6e52:	2820      	cmp	r0, #32
c0de6e54:	6425      	str	r5, [r4, #64]	; 0x40
c0de6e56:	252f      	movs	r5, #47	; 0x2f
c0de6e58:	2964      	cmp	r1, #100	; 0x64
c0de6e5a:	5600      	ldrsb	r0, [r0, r0]
c0de6e5c:	6c61      	ldr	r1, [r4, #68]	; 0x44
c0de6e5e:	6469      	str	r1, [r5, #68]	; 0x44
c0de6e60:	7520      	strb	r0, [r4, #20]
c0de6e62:	746e      	strb	r6, [r5, #17]
c0de6e64:	6c69      	ldr	r1, [r5, #68]	; 0x44
c0de6e66:	5400      	strb	r0, [r0, r0]
c0de6e68:	6172      	str	r2, [r6, #20]
c0de6e6a:	736e      	strb	r6, [r5, #13]
c0de6e6c:	6361      	str	r1, [r4, #52]	; 0x34
c0de6e6e:	6974      	ldr	r4, [r6, #20]
c0de6e70:	6e6f      	ldr	r7, [r5, #100]	; 0x64
c0de6e72:	2500      	movs	r5, #0
c0de6e74:	2a2e      	cmp	r2, #46	; 0x2e
c0de6e76:	0073      	lsls	r3, r6, #1
c0de6e78:	6552      	str	r2, [r2, #84]	; 0x54
c0de6e7a:	656a      	str	r2, [r5, #84]	; 0x54
c0de6e7c:	7463      	strb	r3, [r4, #17]
c0de6e7e:	4100      	asrs	r0, r0
c0de6e80:	6f6d      	ldr	r5, [r5, #116]	; 0x74
c0de6e82:	6e75      	ldr	r5, [r6, #100]	; 0x64
c0de6e84:	0074      	lsls	r4, r6, #1
c0de6e86:	7325      	strb	r5, [r4, #12]
c0de6e88:	4700      	bx	r0
c0de6e8a:	6e65      	ldr	r5, [r4, #100]	; 0x64
c0de6e8c:	7265      	strb	r5, [r4, #9]
c0de6e8e:	7461      	strb	r1, [r4, #17]
c0de6e90:	0065      	lsls	r5, r4, #1
c0de6e92:	6546      	str	r6, [r0, #84]	; 0x54
c0de6e94:	0065      	lsls	r5, r4, #1
c0de6e96:	6547      	str	r7, [r0, #84]	; 0x54
c0de6e98:	0074      	lsls	r4, r6, #1
c0de6e9a:	6556      	str	r6, [r2, #84]	; 0x54
c0de6e9c:	7372      	strb	r2, [r6, #13]
c0de6e9e:	6f69      	ldr	r1, [r5, #116]	; 0x74
c0de6ea0:	006e      	lsls	r6, r5, #1
c0de6ea2:	7954      	ldrb	r4, [r2, #5]
c0de6ea4:	6570      	str	r0, [r6, #84]	; 0x54
c0de6ea6:	4300      	orrs	r0, r0
c0de6ea8:	6e61      	ldr	r1, [r4, #100]	; 0x64
c0de6eaa:	6563      	str	r3, [r4, #84]	; 0x54
c0de6eac:	006c      	lsls	r4, r5, #1
c0de6eae:	654e      	str	r6, [r1, #84]	; 0x54
c0de6eb0:	7774      	strb	r4, [r6, #29]
c0de6eb2:	726f      	strb	r7, [r5, #9]
c0de6eb4:	006b      	lsls	r3, r5, #1
c0de6eb6:	2e31      	cmp	r6, #49	; 0x31
c0de6eb8:	2e31      	cmp	r6, #49	; 0x31
c0de6eba:	0030      	movs	r0, r6
c0de6ebc:	6f54      	ldr	r4, [r2, #116]	; 0x74
c0de6ebe:	6174      	str	r4, [r6, #20]
c0de6ec0:	006c      	lsls	r4, r5, #1
c0de6ec2:	2f27      	cmp	r7, #39	; 0x27
c0de6ec4:	2f30      	cmp	r7, #48	; 0x30
c0de6ec6:	0030      	movs	r0, r6
c0de6ec8:	2e2e      	cmp	r6, #46	; 0x2e
c0de6eca:	002e      	movs	r6, r5
c0de6ecc:	6574      	str	r4, [r6, #84]	; 0x54
c0de6ece:	7473      	strb	r3, [r6, #17]
c0de6ed0:	656e      	str	r6, [r5, #84]	; 0x54
c0de6ed2:	0074      	lsls	r4, r6, #1
c0de6ed4:	6441      	str	r1, [r0, #68]	; 0x44
c0de6ed6:	7264      	strb	r4, [r4, #9]
c0de6ed8:	7365      	strb	r5, [r4, #13]
c0de6eda:	0073      	lsls	r3, r6, #1
c0de6edc:	7551      	strb	r1, [r2, #21]
c0de6ede:	7469      	strb	r1, [r5, #17]
c0de6ee0:	4400      	add	r0, r0
c0de6ee2:	6e6f      	ldr	r7, [r5, #100]	; 0x64
c0de6ee4:	0065      	lsls	r5, r4, #1
c0de6ee6:	6f4e      	ldr	r6, [r1, #116]	; 0x74
c0de6ee8:	636e      	str	r6, [r5, #52]	; 0x34
c0de6eea:	0065      	lsls	r5, r4, #1
c0de6eec:	5300      	strh	r0, [r0, r4]
c0de6eee:	6769      	str	r1, [r5, #116]	; 0x74
c0de6ef0:	006e      	lsls	r6, r5, #1
c0de6ef2:	4f42      	ldr	r7, [pc, #264]	; (c0de6ffc <bitmapOPEN_SANS_EXTRABOLD_11PX+0xe7>)
c0de6ef4:	4c49      	ldr	r4, [pc, #292]	; (c0de701c <bitmapOPEN_SANS_EXTRABOLD_11PX+0x107>)
c0de6ef6:	6900      	ldr	r0, [r0, #16]
c0de6ef8:	2073      	movs	r0, #115	; 0x73
c0de6efa:	6572      	str	r2, [r6, #84]	; 0x54
c0de6efc:	6461      	str	r1, [r4, #68]	; 0x44
c0de6efe:	0079      	lsls	r1, r7, #1
c0de6f00:	6150      	str	r0, [r2, #20]
c0de6f02:	6874      	ldr	r4, [r6, #4]
c0de6f04:	4d00      	ldr	r5, [pc, #0]	; (c0de6f08 <strnlen+0xd8>)
c0de6f06:	6d65      	ldr	r5, [r4, #84]	; 0x54
c0de6f08:	006f      	lsls	r7, r5, #1
c0de6f0a:	6425      	str	r5, [r4, #64]	; 0x40
c0de6f0c:	252f      	movs	r5, #47	; 0x2f
c0de6f0e:	0064      	lsls	r4, r4, #1
c0de6f10:	694d      	ldr	r5, [r1, #20]
c0de6f12:	616e      	str	r6, [r5, #20]
	...

c0de6f15 <bitmapOPEN_SANS_EXTRABOLD_11PX>:
c0de6f15:	0000 0000 b000 c36d 0006 2d80 0049 0000     ......m....-I...
c0de6f25:	0000 0000 c912 f94f 244b 0012 0000 b788     ......O.K$......
c0de6f35:	0e2c a687 021f 0000 b138 0ac6 f9fb 358d     ,.......8......5
c0de6f45:	c8d6 0001 0000 7800 b0d8 c1c1 3ddb be7b     .......x.....={.
c0de6f55:	0001 0000 04b0 0000 4000 3366 6633 2004     .........@f33f. 
c0de6f65:	cc66 66cc 0002 fed3 079e 0000 0000 c000     f..f............
c0de6f75:	3f30 00c3 0000 0000 c000 001a 0000 0ff0     0?..............
c0de6f85:	0000 0000 06c0 0000 c623 118c 0003 0000     ........#.......
c0de6f95:	663c 6666 6666 3c66 0000 0000 79c6 8618     <ffffff<.....y..
c0de6fa5:	1861 0000 8e00 060d 70c3 3e18 0000 0000     a........p.>....
c0de6fb5:	0c0f 81c6 60c1 001e 0000 3000 3838 3434     .....`.....08844
c0de6fc5:	307e 0030 0000 6780 1e18 6186 001e 0000     ~00....g...a....
c0de6fd5:	0c38 3e04 6666 3c66 0000 0000 0c1f c306     8..>fff<........
c0de6fe5:	3060 000c 0000 3c00 6666 663c 6666 003c     `0.....<ff<fff<.
c0de6ff5:	0000 3c00 6666 7c66 3060 001c 0000 6c00     ...<fff|`0.....l
c0de7005:	06c0 0000 c06c 001a 6000 8666 1861 0000     ....l....`f.a...
c0de7015:	0000 3f00 03f0 0000 0000 c30c 3330 0003     ...?........03..
c0de7025:	c000 6183 018e 0618 0000 e000 98c3 5bdd     ...a...........[
c0de7035:	bd2f 7ef6 e006 0007 0000 3c18 7e3c 7e66     /..~.......<<~f~
c0de7045:	c3e7 0000 0000 cd9f b1e6 6cd9 003e 0000     ...........l>...
c0de7055:	9e00 60c1 1830 3c0c 0000 0000 663e 6666     ...`0..<....>fff
c0de7065:	6666 3e66 0000 8000 1867 619e 1e18 0000     fff>....g..a....
c0de7075:	6f80 9e18 1861 0006 0000 067c 7606 6666     .o..a.....|..vff
c0de7085:	7c66 0000 0000 6666 7e66 6666 6666 0000     f|....fff~ffff..
c0de7095:	6000 6666 0666 8000 c631 6318 b18c 0003     .`fff...1..c....
c0de70a5:	66e6 1e36 363e e666 0000 8000 1861 6186     .f6.>6f.....a..a
c0de70b5:	3e18 0000 7000 e39c e7bc ef3d cd59 766e     .>...p....=.Y.nv
c0de70c5:	0003 0000 0000 399c e6f3 9ecd 733d 00e6     .......9....=s..
c0de70d5:	0000 0000 18f8 6633 98cc 6331 007c 0000     ......3f..1c|...
c0de70e5:	0000 cd9f f366 0c19 0006 0000 f800 3318     ....f..........3
c0de70f5:	cc66 3198 7c63 00c0 0003 1e00 3636 1e36     f..1c|......666.
c0de7105:	3636 0066 0000 6f00 0e18 e787 001e c000     66f....o........
c0de7115:	30cf c30c 0c30 0000 6600 6666 6666 6666     .0..0....fffffff
c0de7125:	003c 0000 3cc0 b3cf 79e7 000c 0000 b398     <....<...y......
c0de7135:	ecdd 3566 71ab 3b87 00d8 0000 0000 c300     ..f5.q.;........
c0de7145:	3c66 3c3c 663c 00c3 0000 b180 c6cd 60c1     f<<<<f.........`
c0de7155:	1830 0000 8000 0c3f 6187 0c38 007f 0000     0.....?..a8.....
c0de7165:	1bc0 8c63 c631 0078 0860 1863 1843 0000     ..c.1.x.`.c.C...
c0de7175:	31e0 18c6 8c63 003d 0600 23c3 0199 0000     .1..c.=....#....
	...
c0de718d:	0000 03f0 0c0c 0000 0000 0000 0000 0000     ................
c0de719d:	c000 f303 66cd 003e 0000 8300 67c1 dbb3     .....f>......g..
c0de71ad:	3e6d 0000 0000 f000 71c6 3c18 0000 1800     m>.......q.<....
c0de71bd:	678c ddbb 3c6c 0000 0000 8000 fe67 0c1f     .g..l<......g...
c0de71cd:	003c 0000 6700 867c 1861 0006 0000 c000     <....g|.a.......
c0de71dd:	b36f 0c79 f1be 07d8 8300 67c1 d9b3 366c     o.y........g..l6
c0de71ed:	0000 6000 6660 0666 8000 c601 6318 318c     ...``ff......c.1
c0de71fd:	0003 c183 f3e6 6c78 0076 0000 6660 6666     ......xlv...`fff
c0de720d:	0006 0000 8000 b676 66d9 6d9b 01b6 0000     ......v..f.m....
c0de721d:	0000 4000 b367 6cd9 0036 0000 0000 6380     ...@g..l6......c
c0de722d:	dfbb 1c6d 0000 0000 c000 b367 6ddb 833e     ..m.......g..m>.
c0de723d:	00c1 0000 67c0 ddbb 3e6c 0c18 0006 ed00     .....g..l>......
c0de724d:	318d 0006 0000 7800 c786 1ec3 0000 9800     .1.....x........
c0de725d:	8c6f 1c31 0000 0000 66c0 d9b3 2e6c 0000     o.1......f..l...
c0de726d:	0000 6000 b36c 38d9 001c 0000 0000 c000     ...`l..8........
c0de727d:	b6cc e7f9 331f 00cc 0000 0000 e000 e36e     .....3........n.
c0de728d:	6c70 0077 0000 0000 6c60 d1b3 1c38 c306     plw.....`l..8...
c0de729d:	0000 fc00 c318 3f18 0000 3380 cec6 8c61     .......?...3..a.
c0de72ad:	0071 c300 0c30 30c3 c30c e030 6318 3738     q...0..0..0..c87
c0de72bd:	1cc6 0000 0000 0f6f 0000 0000 2780 9249     ......o......'I.
c0de72cd:	4924 001e                                    $I...

c0de72d2 <charactersOPEN_SANS_EXTRABOLD_11PX>:
c0de72d2:	0503 0000 0503 0005 0906 000a 0b07 0013     ................
c0de72e2:	0906 001e 0f0a 0027 0e09 0036 0503 0044     ......'...6...D.
c0de72f2:	0604 0049 0604 004f 0906 0055 0906 005e     ..I...O...U...^.
c0de7302:	0503 0067 0604 006c 0503 0072 0805 0077     ..g...l...r...w.
c0de7312:	0c08 007f 0906 008b 0b07 0094 0b07 009f     ................
c0de7322:	0c08 00aa 0906 00b6 0c08 00bf 0b07 00cb     ................
c0de7332:	0c08 00d6 0c08 00e2 0503 00ee 0503 00f3     ................
c0de7342:	0805 00f8 0906 0100 0805 0109 0906 0111     ................
c0de7352:	0f0a 011a 0c08 0129 0b07 0135 0b07 0140     ......)...5...@.
c0de7362:	0c08 014b 0906 0157 0906 0160 0c08 0169     ..K...W...`...i.
c0de7372:	0c08 0175 0604 0181 0805 0187 0c08 018f     ..u.............
c0de7382:	0906 019b 110b 01a4 0e09 01b5 0e09 01c3     ................
c0de7392:	0b07 01d1 0e09 01dc 0c08 01ea 0906 01f6     ................
c0de73a2:	0906 01ff 0c08 0208 0906 0214 110b 021d     ................
c0de73b2:	0c08 022e 0b07 023a 0b07 0245 0805 0250     ......:...E...P.
c0de73c2:	0805 0258 0805 0260 0b07 0268 0906 0273     ..X...`...h...s.
c0de73d2:	0b07 027c 0b07 0287 0b07 0292 0906 029d     ..|.............
c0de73e2:	0b07 02a6 0b07 02b1 0906 02bc 0b07 02c5     ................
c0de73f2:	0b07 02d0 0604 02db 0805 02e1 0b07 02e9     ................
c0de7402:	0604 02f4 0f0a 02fa 0b07 0309 0b07 0314     ................
c0de7412:	0b07 031f 0b07 032a 0805 0335 0906 033d     ......*...5...=.
c0de7422:	0805 0346 0b07 034e 0b07 0359 0f0a 0364     ..F...N...Y...d.
c0de7432:	0b07 0373 0b07 037e 0906 0389 0805 0392     ..s...~.........
c0de7442:	0906 039a 0805 03a3 0906 03ab 0906 03b4     ................
	...

c0de7454 <fontOPEN_SANS_EXTRABOLD_11PX>:
c0de7454:	0008 0000 0c01 0009 0020 007f 72d2 c0de     ........ ....r..
c0de7464:	6f15 c0de                                   .o..

c0de7468 <bitmapOPEN_SANS_LIGHT_16PX>:
	...
c0de7470:	9000 4924 2402 0000 2480 1249 0000 0000     ..$I.$...$I.....
c0de7480:	0000 0000 0000 4000 0902 8822 8ff8 1204     .......@..".....
c0de7490:	11ff 0441 2409 0000 0000 0000 0000 e020     ..A..$........ .
c0de74a0:	20a1 0241 1c05 2070 9241 03c2 0002 0000     . A...p A.......
c0de74b0:	0000 8000 4841 8904 0920 8124 6194 204a     ....AH.. .$..aJ 
c0de74c0:	2409 2441 8488 0060 0000 0000 0000 0000     .$A$..`.........
c0de74d0:	c000 1101 4088 1404 8060 4244 9412 0c40     .....@..`.DB..@.
c0de74e0:	27c3 0000 0000 0000 9000 0024 0000 0000     .'........$.....
c0de74f0:	2440 2222 2222 4422 2000 4442 4444 4444     @$"""""D. BDDDDD
c0de7500:	0022 2010 f040 0287 1105 0000 0000 0000     ".. @...........
	...
c0de7518:	0000 0080 8201 083f 2010 0000 0000 0000     ......?.. ......
	...
c0de7530:	0524 0000 0000 0000 000e 0000 0000 0000     $...............
c0de7540:	0000 0000 0660 0000 2200 0884 4421 1108     ....`...."..!D..
c0de7550:	0000 0000 7000 1110 4824 2090 8241 0904     .....p..$H. A...
c0de7560:	8222 0003 0000 0000 0000 6020 00a0 0201     "......... `....
c0de7570:	0804 2010 8040 0100 0000 0000 0000 7800     ... @..........x
c0de7580:	0108 0402 1008 1010 1010 e010 000f 0000     ................
c0de7590:	0000 0000 0878 0401 0c04 200f 0080 0201     ....x...... ....
c0de75a0:	03e2 0000 0000 0000 0000 3004 0140 4809     ...........0@..H
c0de75b0:	8220 8410 1ff0 0020 0801 0000 0000 0000      ..... .........
c0de75c0:	0000 10f8 4020 8040 600f 0080 1201 03c2     .... @@..`......
c0de75d0:	0000 0000 0000 e000 2030 4020 1e80 8243     ........0  @..C.
c0de75e0:	0904 8422 0007 0000 0000 0000 01fc 0202     ..".............
c0de75f0:	0804 1008 2010 4040 0080 0000 0000 0000     ..... @@........
c0de7600:	7000 1110 8824 0e08 8222 0904 c412 0007     .p..$...".......
c0de7610:	0000 0000 0000 0878 2411 9048 5e30 0080     ......x..$H.0^..
c0de7620:	0101 01c3 0000 0000 0000 0000 0066 6000     ............f..`
c0de7630:	0006 0000 6600 0000 2220 0000 0000 0000     .....f.. "......
c0de7640:	0604 0183 600c 0100 0000 0000 0000 0000     .....`..........
c0de7650:	0000 0000 0000 1fc0 0000 00fe 0000 0000     ................
	...
c0de7668:	1000 00c0 3006 0c18 0004 0000 0000 0000     .....0..........
c0de7678:	0000 0000 080f 0204 1041 0204 4080 0000     ........A....@..
c0de7688:	0000 0000 f800 4180 2010 93c4 2488 4921     .......A. ...$!I
c0de7698:	1248 c492 ee24 0008 0004 0002 001f 0000     H...$...........
c0de76a8:	0000 0000 00c0 0c03 2048 0481 fc21 2408     ........H ..!..$
c0de76b8:	4090 0201 0000 0000 0000 f000 0841 0441     .@..........A.A.
c0de76c8:	c211 2107 1104 1044 7c21 0000 0000 0000     ...!..D.!|......
c0de76d8:	0000 87c0 0100 0802 8020 0200 4008 0200     ........ ....@..
c0de76e8:	01f0 0000 0000 0000 e000 2103 4208 0220     ...........!.B .
c0de76f8:	8811 0440 1022 0841 07c1 0000 0000 0000     ..@.".A.........
c0de7708:	0000 11f8 4020 0080 023f 0804 2010 0fc0     .... @..?.... ..
c0de7718:	0000 0000 0000 fc00 0404 0404 fc04 0404     ................
c0de7728:	0404 0004 0000 0000 0000 083f 0040 2002     ..........?.@.. 
c0de7738:	0200 7c20 2402 0440 4084 03f0 0000 0000     .. |.$@..@......
c0de7748:	0000 0000 2040 4204 0420 2042 43fc 0420     ....@ .B .B .C .
c0de7758:	2042 4204 0420 0002 0000 0000 0000 4440     B .B .........@D
c0de7768:	4444 4444 0004 0000 0204 4081 1020 0408     DDDD.......@ ...
c0de7778:	8102 2040 000c 0000 1208 4222 0282 0a03     ..@ ......"B....
c0de7788:	8824 2110 1044 0000 0000 0000 0400 0404     $..!D...........
c0de7798:	0404 0404 0404 0404 00fc 0000 0000 0000     ................
c0de77a8:	4201 30c0 0c30 850c a142 2850 0924 4249     .B.00...B.P($.IB
c0de77b8:	108c 0423 0008 0000 0000 0000 0000 4000     ..#............@
c0de77c8:	0c20 20c2 4214 2421 2442 4244 0428 3043      .. .B!$B$DB(.C0
c0de77d8:	0204 0000 0000 0000 0000 0f00 4108 0220     .............A .
c0de77e8:	4024 2402 0240 4024 8204 f010 0000 0000     $@.$@.$@........
c0de77f8:	0000 0000 f800 2210 8844 2110 043e 1008     ......."D..!>...
c0de7808:	4020 0000 0000 0000 0000 0f00 4108 0220      @...........A .
c0de7818:	4024 2402 0240 4024 8204 f010 0800 0100     $@.$@.$@........
c0de7828:	0030 0000 f000 0841 0441 4411 1f08 1044     0.....A.A..D..D.
c0de7838:	0841 0441 0001 0000 0000 0000 08f8 2012     A.A............ 
c0de7848:	0040 3007 0080 0201 07e4 0000 0000 0000     @..0............
c0de7858:	3f80 8102 2040 0810 0204 0081 0000 0000     .?..@ ..........
c0de7868:	4000 0420 2042 4204 0420 2042 4204 0420     .@ .B .B .B .B .
c0de7878:	1082 00f0 0000 0000 0000 0000 0602 2414     ...............$
c0de7888:	1048 2211 5044 80a0 0100 0000 0000 0000     H.."DP..........
c0de7898:	4000 2830 090c 2243 4891 9244 2490 0a14     .@0(..C".HD..$..
c0de78a8:	8285 6061 0818 0004 0000 0000 0000 0000     ..a`............
c0de78b8:	0400 2209 0482 0405 2814 1088 1411 0010     ...".....(......
c0de78c8:	0000 0000 0000 4281 2442 1824 1018 1010     .......BB$$.....
c0de78d8:	1010 0000 0000 0000 01fc 0202 0404 0804     ................
c0de78e8:	0808 1010 0fe0 0000 0000 0000 0bc0 8421     ..............!.
c0de78f8:	4210 2108 f084 0000 0820 0821 0421 0421     .B.!.... .!.!.!.
c0de7908:	0001 0000 21e0 1084 0842 8421 7a10 0000     .....!..B.!..z..
c0de7918:	2000 40a0 8441 2088 0041 0000 0000 0000     . .@A.. A.......
	...
c0de7938:	fc00 0001 0800 8020 0000 0000 0000 0000     ...... .........
	...
c0de7954:	0000 403c 4040 427c 6242 005c 0000 0000     ..<@@@|BBb\.....
c0de7964:	0802 8020 7a00 2218 4090 0902 9024 7a21     .. ..z.".@..$.!z
	...
c0de797c:	0000 7800 0204 0202 0202 7804 0000 0000     ...x.......x....
c0de798c:	0000 0401 4010 1178 9026 0240 2409 6110     .....@x.&.@..$.a
c0de799c:	0178 0000 0000 0000 0000 0000 8380 2088     x.............. 
c0de79ac:	fe41 0804 8420 0007 0000 0000 3800 1041     A... ........8A.
c0de79bc:	411f 0410 1041 0004 0000 0000 0000 fc00     .A..A...........
c0de79cc:	4222 2242 043c 7c02 8142 3e43 0200 0804     "BB"<..|B.C>....
c0de79dc:	a010 88c3 4120 0482 1209 0824 0000 0000     .... A....$.....
c0de79ec:	0000 0200 2220 2222 0002 0000 0010 2108     .... """.......!
c0de79fc:	1084 0842 0721 0200 0202 4202 1222 0a0a     ..B.!......B"...
c0de7a0c:	2216 8242 0000 0000 4400 4444 4444 0444     ."B......DDDDDD.
	...
c0de7a24:	3a00 3187 0822 4209 9082 2420 0908 8242     .:.1"..B.. $..B.
c0de7a34:	0010 0000 0000 0000 0000 0000 0000 c3a0     ................
c0de7a44:	2088 8241 0904 2412 0008 0000 0000 0000     . A....$........
c0de7a54:	0000 8000 8883 4120 0482 2209 0382 0000     ...... A..."....
	...
c0de7a6c:	7a00 2218 4090 0902 9024 7a21 2008 0080     .z.".@..$.!z. ..
c0de7a7c:	0002 0000 0000 0000 1178 9026 0240 2409     ........x.&.@..$
c0de7a8c:	6110 0178 1004 0040 0001 0000 ba00 0821     .ax...@.......!.
c0de7a9c:	2082 0208 0000 0000 0000 c000 0813 180c     . ..............
c0de7aac:	0810 01e4 0000 0000 0000 84f1 4210 c108     .............B..
c0de7abc:	0001 0000 0000 0000 4820 2090 8241 0904     ........ H. A...
c0de7acc:	c622 000b 0000 0000 0000 0000 0c10 448a     "..............D
c0de7adc:	0a22 8285 0000 0000 0000 0000 0000 6100     "..............a
c0de7aec:	4628 2462 9249 2944 830c 0810 0001 0000     (Fb$I.D)........
	...
c0de7b04:	4242 1824 1818 4224 0042 0000 0000 0000     BB$...$BB.......
c0de7b14:	1000 8a0c 2244 850a 4082 0810 0003 0000     ....D"...@......
c0de7b24:	e000 4103 0820 4102 03e0 0000 0000 4600     ...A ..A.......F
c0de7b34:	0410 1041 4103 0410 6041 0000 2010 8040     ..A..A..A`... @.
c0de7b44:	0100 0402 1008 4020 0080 0201 0804 0010     ...... @........
c0de7b54:	8000 2041 8208 3020 2082 4208 0018 0000     ..A .. 0. .B....
c0de7b64:	0000 0000 8000 7803 0000 0000 0000 0000     .......x........
c0de7b74:	0000 0000 0000 0fc0 8421 4210 2108 1084     ........!..B.!..
c0de7b84:	0842 fc21 0000 0000 0000 0000               B.!.........

c0de7b90 <charactersOPEN_SANS_LIGHT_16PX>:
c0de7b90:	0904 0000 0703 0009 0e06 0010 170a 001e     ................
c0de7ba0:	1509 0035 1e0d 004a 190b 0068 0703 0081     ..5...J...h.....
c0de7bb0:	0904 0088 0904 0091 1509 009a 1509 00af     ................
c0de7bc0:	0703 00c4 0c05 00cb 0904 00d7 0c05 00e0     ................
c0de7bd0:	1509 00ec 1509 0101 1509 0116 1509 012b     ..............+.
c0de7be0:	190b 0140 1509 0159 1509 016e 1509 0183     ..@...Y...n.....
c0de7bf0:	1509 0198 1509 01ad 0904 01c2 0904 01cb     ................
c0de7c00:	1509 01d4 1509 01e9 1509 01fe 1007 0213     ................
c0de7c10:	200e 0223 170a 0243 170a 025a 170a 0271     . #...C...Z...q.
c0de7c20:	190b 0288 1509 02a1 1208 02b6 1b0c 02c8     ................
c0de7c30:	1b0c 02e3 0904 02fe 1007 0307 1509 0317     ................
c0de7c40:	1208 032c 200e 033e 1b0c 035e 1b0c 0379     ..,.. >...^...y.
c0de7c50:	1509 0394 1b0c 03a9 170a 03c4 1509 03db     ................
c0de7c60:	1007 03f0 1b0c 0400 1509 041b 200e 0430     ............. 0.
c0de7c70:	1509 0450 1208 0465 1509 0477 0c05 048c     ..P...e...w.....
c0de7c80:	0c05 0498 0c05 04a4 1509 04b0 1007 04c5     ................
c0de7c90:	1509 04d5 1208 04ea 170a 04fc 1208 0513     ................
c0de7ca0:	170a 0525 1509 053c 0e06 0551 1208 055f     ..%...<...Q..._.
c0de7cb0:	1509 0571 0904 0586 0c05 058f 1208 059b     ..q.............
c0de7cc0:	0904 05ad 200e 05b6 1509 05d6 1509 05eb     ..... ..........
c0de7cd0:	170a 0600 170a 0617 0e06 062e 1007 063c     ..............<.
c0de7ce0:	0c05 064c 1509 0658 1007 066d 1b0c 067d     ..L...X...m...}.
c0de7cf0:	1208 0698 1007 06aa 1007 06ba 0e06 06ca     ................
c0de7d00:	1509 06d8 0e06 06ed 1509 06fb 170a 0710     ................

c0de7d10 <fontOPEN_SANS_LIGHT_16PX>:
c0de7d10:	0009 0000 1201 000d 0020 007f 7b90 c0de     ........ ....{..
c0de7d20:	7468 c0de                                   ht..

c0de7d24 <bitmapOPEN_SANS_REGULAR_11PX>:
c0de7d24:	0000 0000 9000 0924 0002 0660 0000 0000     ......$...`.....
c0de7d34:	1000 4fc9 fca1 0224 0000 0000 29e0 830a     ...O..$......)..
c0de7d44:	1e61 0000 8c00 50a8 cda1 2a16 c454 0000     a......P...*T...
c0de7d54:	0000 1c00 1212 4a0c 2252 005e 0000 0028     .......JR"^...(.
c0de7d64:	9000 2494 0092 4490 9292 0000 fc41 048c     ...$...D....A...
c0de7d74:	0000 0000 0000 c800 008f 0000 0000 0000     ................
c0de7d84:	0052 0000 0600 0000 0000 0200 8000 2444     R.............D$
c0de7d94:	0122 0000 4923 2492 0c49 0000 a300 0820     "...#I.$I..... .
c0de7da4:	2082 0008 8000 4103 4210 1e08 0000 0380     . .....A.B......
c0de7db4:	0c41 4104 000e 0000 3020 2428 7e24 2020     A..A.... 0($$~  
c0de7dc4:	0000 8000 0827 041e 0e41 0000 2700 9e08     ....'...A....'..
c0de7dd4:	4924 000c 8000 4107 4208 0410 0000 2300     $I.....A.B.....#
c0de7de4:	8c49 4924 000c 0000 4923 0792 0e41 0000     I.$I....#I..A...
c0de7df4:	0400 0200 0000 0004 0052 0000 8621 4081     ........R...!..@
c0de7e04:	0000 0000 0000 e01e 0001 0000 2000 1810     ............. ..
c0de7e14:	0846 0000 c000 8841 0108 0004 0000 43e0     F.....A........C
c0de7e24:	5c90 294a 94a5 027e 01f0 0000 0400 4285     .\J)..~........B
c0de7e34:	f911 4144 0000 0000 489f 11e4 4489 003e     ..DA.....H...D>.
c0de7e44:	0000 9e00 2041 0810 3c0c 0000 0000 423e     ....A ...<....>B
c0de7e54:	4242 4242 3e42 0000 8000 0827 209e 1e08     BBBBB>....'.. ..
c0de7e64:	0000 2f80 8208 082f 0002 0000 027c 0202     .../../.....|...
c0de7e74:	4262 7c42 0000 0000 4242 7e42 4242 4242     bBB|....BBB~BBBB
c0de7e84:	0000 9000 4924 0002 4440 4444 0344 9100     ....$I..@DDDD...
c0de7e94:	6144 4850 4244 0000 8000 0820 2082 3e08     DaPHDB.... .. .>
c0de7ea4:	0000 1800 9866 4a61 2529 4c93 0132 0000     ....f.aJ)%.L2...
c0de7eb4:	0000 4642 4a4a 5252 4262 0000 0000 08f8     ..BFJJRRbB......
c0de7ec4:	2412 9048 4120 007c 0000 0000 488f f224     .$H. A|......H$.
c0de7ed4:	0408 0002 0000 f800 1208 4824 2090 7c41     ..........$H. A|
c0de7ee4:	0040 0001 8f00 2448 48f2 2244 0000 0000     @.....H$.HD"....
c0de7ef4:	0827 0606 0e41 0000 1f00 8102 2040 0810     '...A.......@ ..
c0de7f04:	0000 0000 4242 4242 4242 3c42 0000 8000     ....BBBBBBB<....
c0de7f14:	48a0 a224 2850 0008 0000 c400 9328 4a4c     .H$.P(......(.LJ
c0de7f24:	a529 2114 0084 0000 4000 3128 230c 2149     )..!.....@(1.#I!
c0de7f34:	0000 2840 0c49 2082 0008 8000 2107 2108     ..@(I.. .....!.!
c0de7f44:	1e08 0000 22e0 2222 0e22 2210 4442 0008     ....."""".."BD..
c0de7f54:	4470 4444 0744 c300 5248 0008 0000 0000     pDDDD...HR......
c0de7f64:	0000 0000 7c00 0400 0002 0000 0000 0000     .....|..........
c0de7f74:	0000 9078 4927 001e 0000 c081 1223 4489     ..x.'I......#..D
c0de7f84:	001e 0000 0000 842e 1c10 0000 1000 2788     ...............'
c0de7f94:	8912 3c44 0000 0000 7000 2792 1c08 0000     ..D<.....p.'....
c0de7fa4:	8980 8427 0210 0000 0000 92f8 08e4 185e     ..'...........^.
c0de7fb4:	007a c081 1223 4489 0022 0000 2410 0249     z...#..D"....$I.
c0de7fc4:	4000 4440 4444 8074 4820 a18a 1248 0000     .@@DDDt. H..H...
c0de7fd4:	2490 0249 0000 0000 7780 8922 9224 2248     .$I......w".$.H"
c0de7fe4:	0001 0000 0000 23c0 8912 2244 0000 0000     .......#..D"....
c0de7ff4:	8000 1223 4489 001c 0000 0000 23c0 8912     ..#..D.......#..
c0de8004:	1e44 4081 0000 8000 1227 4489 103c 0408     D..@....'..D<...
c0de8014:	e000 2222 0002 0000 0c27 0e82 0000 f200     ..""....'.......
c0de8024:	2222 000e 0000 2440 8912 3e44 0000 0000     ""....@$..D>....
c0de8034:	8400 2492 0c31 0000 0000 8800 4aa8 2a95     ...$1........J.*
c0de8044:	4422 0000 0000 0000 1248 48c3 0012 0000     "D......H..H....
c0de8054:	8400 2492 0c31 0c41 8000 088f 1f11 0000     ...$1.A.........
c0de8064:	44c0 4224 0c44 8200 0820 2082 8208 3020     .D$BD... .. .. 0
c0de8074:	4222 2224 0003 0000 0606 0000 0000 9f00     "B$"............
c0de8084:	2448 8912 3e44 0000 0000                    H$..D>....

c0de808e <charactersOPEN_SANS_REGULAR_11PX>:
c0de808e:	0503 0000 0503 0005 0604 000a 0b07 0010     ................
c0de809e:	0906 001b 0e09 0024 0c08 0032 0302 003e     ......$...2...>.
c0de80ae:	0503 0041 0503 0046 0906 004b 0906 0054     ..A...F...K...T.
c0de80be:	0503 005d 0604 0062 0503 0068 0604 006d     ..]...b...h...m.
c0de80ce:	0906 0073 0906 007c 0906 0085 0906 008e     ..s...|.........
c0de80de:	0c08 0097 0906 00a3 0906 00ac 0906 00b5     ................
c0de80ee:	0906 00be 0906 00c7 0503 00d0 0503 00d5     ................
c0de80fe:	0906 00da 0906 00e3 0906 00ec 0805 00f5     ................
c0de810e:	0f0a 00fd 0b07 010c 0b07 0117 0b07 0122     ..............".
c0de811e:	0c08 012d 0906 0139 0906 0142 0c08 014b     ..-...9...B...K.
c0de812e:	0c08 0157 0503 0163 0604 0168 0b07 016e     ..W...c...h...n.
c0de813e:	0906 0179 0f0a 0182 0c08 0191 0e09 019d     ..y.............
c0de814e:	0b07 01ab 0e09 01b6 0b07 01c4 0906 01cf     ................
c0de815e:	0b07 01d8 0c08 01e3 0b07 01ef 0f0a 01fa     ................
c0de816e:	0906 0209 0906 0212 0906 021b 0604 0224     ..............$.
c0de817e:	0604 022a 0604 0230 0906 0236 0805 023f     ..*...0...6...?.
c0de818e:	0906 0247 0906 0250 0b07 0259 0805 0264     ..G...P...Y...d.
c0de819e:	0b07 026c 0906 0277 0805 0280 0906 0288     ..l...w.........
c0de81ae:	0b07 0291 0503 029c 0604 02a1 0906 02a7     ................
c0de81be:	0503 02b0 0f0a 02b5 0b07 02c4 0b07 02cf     ................
c0de81ce:	0b07 02da 0b07 02e5 0604 02f0 0805 02f6     ................
c0de81de:	0604 02fe 0b07 0304 0906 030f 0e09 0318     ................
c0de81ee:	0906 0326 0906 032f 0805 0338 0604 0340     ..&.../...8...@.
c0de81fe:	0906 0346 0604 034f 0906 0355 0b07 035e     ..F...O...U...^.
	...

c0de8210 <fontOPEN_SANS_REGULAR_11PX>:
c0de8210:	000a 0000 0c01 0009 0020 007f 808e c0de     ........ .......
c0de8220:	7d24 c0de                                   $}..

c0de8224 <C_bagl_fonts>:
c0de8224:	7454 c0de 7d10 c0de 8210 c0de               Tt...}......

c0de8230 <C_bagl_fonts_count>:
c0de8230:	0003 0000                                   ....

c0de8234 <FIELD_MODULUS>:
c0de8234:	0040 0000 0000 0000 0000 0000 0000 0000     @...............
c0de8244:	4622 fc98 4c09 1bf9 2d99 ed30 0000 0100     "F...L...-0.....

c0de8254 <FIELD_ZERO>:
	...

c0de8274 <GROUP_ORDER>:
c0de8274:	0040 0000 0000 0000 0000 0000 0000 0000     @...............
c0de8284:	4622 fc98 9409 dda8 468c 21eb 0000 0100     "F.......F.!....

c0de8294 <SCALAR_ZERO>:
	...

c0de82b4 <FIELD_FOUR>:
	...
c0de82d0:	0000 0400                                   ....

c0de82d4 <FIELD_THREE>:
	...
c0de82f0:	0000 0300                                   ....

c0de82f4 <FIELD_TWO>:
	...
c0de8310:	0000 0200                                   ....

c0de8314 <FIELD_EIGHT>:
	...
c0de8330:	0000 0800                                   ....

c0de8334 <GROUP_ZERO>:
	...
c0de8370:	0000 0100 0000 0000 0000 0000 0000 0000     ................
	...

c0de8394 <FIELD_ONE>:
	...
c0de83b0:	0000 0100                                   ....

c0de83b4 <AFFINE_ONE>:
	...
c0de83d0:	0000 0100 741b a3b5 120a 7c93 df53 f0a9     .....t.....|S...
c0de83e0:	7863 54ee 658f d45b 3d33 7147 cf19 237a     cx.T.e[.3=Gq..z#
c0de83f0:	edca bb2a                                   ..*.

c0de83f4 <ux_get_address_result_flow_address_step_val>:
c0de83f4:	6ed4 c0de 0000 da7a                         .n....z.

c0de83fc <ux_get_address_result_flow_address_step>:
c0de83fc:	165b c0de 83f4 c0de 0000 0000 0000 0000     [...............

c0de840c <ux_get_address_result_flow_approve_step_validate_step>:
c0de840c:	16ed c0de 0000 0000 0000 0000 0000 0000     ................

c0de841c <ux_get_address_result_flow_approve_step_validate>:
c0de841c:	840c c0de ffff ffff                         ........

c0de8424 <ux_get_address_result_flow_approve_step_val>:
c0de8424:	8624 c0de 6e48 c0de                         $...Hn..

c0de842c <ux_get_address_result_flow_approve_step>:
c0de842c:	66cd c0de 8424 c0de 841c c0de 0000 0000     .f..$...........

c0de843c <ux_get_address_result_flow_reject_step_validate_step>:
c0de843c:	1711 c0de 0000 0000 0000 0000 0000 0000     ................

c0de844c <ux_get_address_result_flow_reject_step_validate>:
c0de844c:	843c c0de ffff ffff                         <.......

c0de8454 <ux_get_address_result_flow_reject_step_val>:
c0de8454:	8564 c0de 6e78 c0de                         d...xn..

c0de845c <ux_get_address_result_flow_reject_step>:
c0de845c:	66cd c0de 8454 c0de 844c c0de 0000 0000     .f..T...L.......

c0de846c <ux_get_address_result_flow>:
c0de846c:	83fc c0de 842c c0de 845c c0de ffff ffff     ....,...\.......

c0de847c <ux_get_address_flow_topic_step_val>:
c0de847c:	85c4 c0de 6e96 c0de 6ed4 c0de               .....n...n..

c0de8488 <ux_get_address_flow_topic_step>:
c0de8488:	67fd c0de 847c c0de 0000 0000 0000 0000     .g..|...........

c0de8498 <ux_get_address_flow_path_step_val>:
c0de8498:	6f00 c0de 0038 da7a                         .o..8.z.

c0de84a0 <ux_get_address_flow_path_step>:
c0de84a0:	64e5 c0de 8498 c0de 0000 0000 0000 0000     .d..............

c0de84b0 <ux_get_address_flow_generate_step_validate_step>:
c0de84b0:	1719 c0de 0000 0000 0000 0000 0000 0000     ................

c0de84c0 <ux_get_address_flow_generate_step_validate>:
c0de84c0:	84b0 c0de ffff ffff                         ........

c0de84c8 <ux_get_address_flow_generate_step_val>:
c0de84c8:	8624 c0de 6e89 c0de                         $....n..

c0de84d0 <ux_get_address_flow_generate_step>:
c0de84d0:	66cd c0de 84c8 c0de 84c0 c0de 0000 0000     .f..............

c0de84e0 <ux_get_address_flow_cancel_step_validate_step>:
c0de84e0:	1729 c0de 0000 0000 0000 0000 0000 0000     )...............

c0de84f0 <ux_get_address_flow_cancel_step_validate>:
c0de84f0:	84e0 c0de ffff ffff                         ........

c0de84f8 <ux_get_address_flow_cancel_step_val>:
c0de84f8:	8564 c0de 6ea7 c0de                         d....n..

c0de8500 <ux_get_address_flow_cancel_step>:
c0de8500:	66cd c0de 84f8 c0de 84f0 c0de 0000 0000     .f..............

c0de8510 <ux_get_address_flow>:
c0de8510:	8488 c0de 84a0 c0de 84d0 c0de 8500 c0de     ................
c0de8520:	ffff ffff                                   ....

c0de8524 <.Lstr>:
c0de8524:	3434 2f27 3231 3835 2736 002f 0000 0000     44'/12586'/.....
	...

c0de8540 <C_Mina_64px_colors>:
c0de8540:	0000 0000 ffff 00ff                         ........

c0de8548 <C_icon_crossmark_bitmap>:
c0de8548:	8000 e601 71c0 3838 fc07 1e00 0780 03f0     .....q88........
c0de8558:	c1ce 38e1 0670 0018 0000 0000               ...8p.......

c0de8564 <C_icon_crossmark>:
c0de8564:	000e 0000 000e 0000 0001 0000 8540 c0de     ............@...
c0de8574:	8548 c0de                                   H...

c0de8578 <C_icon_dashboard_x_bitmap>:
c0de8578:	0000 0000 800c f007 fe03 ffc1 3ff0 03f0     .............?..
c0de8588:	00cc c033 000c 0000 0000 0000               ..3.........

c0de8594 <C_icon_dashboard_x>:
c0de8594:	000e 0000 000e 0000 0001 0000 8540 c0de     ............@...
c0de85a4:	8578 c0de                                   x...

c0de85a8 <C_icon_eye_bitmap>:
c0de85a8:	0000 0000 e01e 1c1f 030e 8c63 6319 0c0c     ..........c..c..
c0de85b8:	8387 807f 0007 0000 0000 0000               ............

c0de85c4 <C_icon_eye>:
c0de85c4:	000e 0000 000e 0000 0001 0000 8540 c0de     ............@...
c0de85d4:	85a8 c0de                                   ....

c0de85d8 <C_icon_left_bitmap>:
c0de85d8:	1248 0842                                   H.B.

c0de85dc <C_icon_left>:
c0de85dc:	0004 0000 0007 0000 0001 0000 8540 c0de     ............@...
c0de85ec:	85d8 c0de                                   ....

c0de85f0 <C_icon_right_bitmap>:
c0de85f0:	8421 0124                                   !.$.

c0de85f4 <C_icon_right>:
c0de85f4:	0004 0000 0007 0000 0001 0000 8540 c0de     ............@...
c0de8604:	85f0 c0de                                   ....

c0de8608 <C_icon_validate_14_bitmap>:
c0de8608:	0000 0000 0000 00c0 0038 e067 1c38 039c     ........8.g.8...
c0de8618:	007e 800f 0001 0000 0000 0000               ~...........

c0de8624 <C_icon_validate_14>:
c0de8624:	000e 0000 000e 0000 0001 0000 8540 c0de     ............@...
c0de8634:	8608 c0de                                   ....

c0de8638 <C_mina_logo_bitmap>:
c0de8638:	0808 1414 2222 2222 2222 2222 2222 2222     ....""""""""""""
c0de8648:	2222 2222 2222 2222 2222 2222 2142 4081     """"""""""""B!.@

c0de8658 <C_mina_logo>:
c0de8658:	0010 0000 0010 0000 0001 0000 8540 c0de     ............@...
c0de8668:	8638 c0de                                   8...

c0de866c <ux_idle_flow_1_step_val>:
c0de866c:	8658 c0de 6f10 c0de 6ef7 c0de               X....o...n..

c0de8678 <ux_idle_flow_1_step>:
c0de8678:	67fd c0de 866c c0de 0000 0000 0000 0000     .g..l...........

c0de8688 <ux_idle_flow_2_step_val>:
c0de8688:	6e9a c0de 6eb6 c0de                         .n...n..

c0de8690 <ux_idle_flow_2_step>:
c0de8690:	617d c0de 8688 c0de 0000 0000 0000 0000     }a..............

c0de86a0 <ux_idle_flow_3_step_validate_step>:
c0de86a0:	21a1 c0de 0000 0000 0000 0000 0000 0000     .!..............

c0de86b0 <ux_idle_flow_3_step_validate>:
c0de86b0:	86a0 c0de ffff ffff                         ........

c0de86b8 <ux_idle_flow_3_step_val>:
c0de86b8:	8594 c0de 6edc c0de                         .....n..

c0de86c0 <ux_idle_flow_3_step>:
c0de86c0:	66cd c0de 86b8 c0de 86b0 c0de 0000 0000     .f..............

c0de86d0 <ux_idle_flow>:
c0de86d0:	8678 c0de 8690 c0de 86c0 c0de fffd ffff     x...............
c0de86e0:	ffff ffff                                   ....

c0de86e4 <seph_io_general_status>:
c0de86e4:	0060 0002                                    `....

c0de86e9 <g_pcHex>:
c0de86e9:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de86f9 <g_pcHex_cap>:
c0de86f9:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de8709 <FIELD_FIVE>:
	...
c0de8725:	0000 0500                                   ....

c0de8729 <round_keys>:
c0de8729:	f902 dada c9bb f891 91d6 62dc a5fe aef8     ...........b....
c0de8739:	b737 fe6e 6951 b0a9 92cc 82a4 cb0c 7853     7.n.Qi........Sx
c0de8749:	8317 c6be 57c3 730a 433c 3d95 8495 29b2     .....W.s<C.=...)
c0de8759:	73a9 367a f129 dad0 b7b0 6586 0b58 e588     .sz6)......eX...
c0de8769:	c028 f61d 6b66 1904 f06c f02a 0739 bb56     (...fk..l.*.9.V.
c0de8779:	eca8 80fe 6e10 563f 7e37 89ad 3457 7b0c     .....n?V7~..W4.{
c0de8789:	d10c ba02 12db be4e 739c 4958 d74b 35fa     ......N..sXIK..5
c0de8799:	8b92 097c bb54 5ff2 f900 f05d 39a6 b492     ..|.T.._..]..9..
c0de87a9:	0f02 3117 f7ee 19b4 400a cfda 7531 c37c     ...1.....@..1u|.
c0de87b9:	d19b 3367 8de1 625f 4147 7b75 7afd d551     ..g3.._bGAu{.zQ.
c0de87c9:	331e ed39 cae4 0403 fdd2 f8ad 094d 0b7d     .39.........M.}.
c0de87d9:	37dd 0a0e a4ea 689d 98db e0fd db8c 52df     .7.....h.......R
c0de87e9:	6f0d 7806 fc38 0aa7 823a f7d8 72ed 5b34     .o.x8...:....r4[
c0de87f9:	880d 92d5 ede2 a02a de3f 83b2 bd71 60ad     ......*.?...q..`
c0de8809:	b93f be17 bf23 c282 39ba 811b 4e70 a7e5     ?...#....9..pN..
c0de8819:	e2aa a7a9 a7e8 4b5d 7856 3bf0 9c72 6f75     ......]KVx.;r.uo
c0de8829:	c733 ac66 438e 4fad 0100 8afe 16a2 5850     3.f..C.O......PX
c0de8839:	01d1 3b5a 8bed f62c a057 19d2 ec51 9569     ..Z;..,.W...Q.i.
c0de8849:	681e fd70 2734 ff83 d694 d430 7aae 1bbe     .hp.4'....0..z..
c0de8859:	987c 539b 123d e03f 0a29 e92f a8af 8db5     |..S=.?.)./.....
c0de8869:	8431 f11a be66 19e1 eba8 1ee6 9a07 962b     1...f.........+.
c0de8879:	e02c 710c 26e0 8494 617a 8c11 3486 dae0     ,..q.&..za...4..
c0de8889:	e21c cb18 cde1 d333 38bd dd02 99e9 fbd1     ......3..8......
c0de8899:	b333 6b80 221b 1f2d 8e48 5665 f616 afd5     3..k."-.H.eV....
c0de88a9:	3733 c172 4642 78fd 072e 8d47 c22c dd3c     37r.BF.x..G.,.<.
c0de88b9:	9d5d 1066 7733 01c0 a876 36f5 c1b6 aad1     ].f.3w..v..6....
c0de88c9:	2504 a4e6 f47a 684e 2c35 0a07 3cc0 e982     .%..z.Nh5,...<..
c0de88d9:	5877 0e63 7693 20e9 857e f2bc 46bc 2019     wXc..v. ~....F. 
c0de88e9:	4338 4233 31a8 1dc7 0496 f0a5 9545 8a30     8C3B.1......E.0.
c0de88f9:	f032 60ed 6fc7 8f3d 5fb7 77b6 2ba3 b66e     2..`.o=.._.w.+n.
c0de8909:	c704 fc93 4d2c 19b3 56f2 8158 eef0 defb     ....,M...VX.....
c0de8919:	66de 0bef 310d 954f 873e 6330 5410 1132     .f...1O.>.0c.T2.
c0de8929:	5c2a 1218 4809 f99b 441a 187f 2977 f1b2     *\...H...D..w)..
c0de8939:	ce44 b8b9 ef25 8a2f 79d9 8f12 ad18 5e10     D...%./..y.....^
c0de8949:	e436 1a78 9f62 e8cf 9d48 28bf a7f6 6a52     6.x.b...H..(..Rj
c0de8959:	e57f 0f64 c1be cfb3 155f e75a f260 416f     ..d....._.Z.`.oA
c0de8969:	4823 d1be 6043 3e72 648c d13f 22f0 15ce     #H..C`r>.d?.."..
c0de8979:	b30f e249 dba5 625f c0fb 0597 3e71 4755     ..I..._b....q>UG
c0de8989:	b311 d071 a9f4 dcd4 8e68 b4e6 5e3d 25d6     ..q.....h...=^.%
c0de8999:	138a a17a c46a 90e1 aef4 05a3 d116 5a3d     ..z.j.........=Z
c0de89a9:	8d29 b837 ec5d 7d2b 8854 9777 2d5b 98e1     ).7.].+}T.w.[-..
c0de89b9:	7e32 3497 cdbd 9aca d21b 7165 fb21 bb8e     2~.4......eq!...
c0de89c9:	e82a 48b1 f53a 5ceb 4a75 a5d6 b219 ce14     *..H:..\uJ......
c0de89d9:	c767 ad72 3775 d6db 1707 2049 4256 431f     g.r.u7....I VB.C
c0de89e9:	301e 2650 801e 2f37 83a5 0a0b 116f f39c     .0P&..7/....o...
c0de89f9:	e4c4 aadd 588f 1053 c4a0 d888 d650 bf53     .....XS.....P.S.
c0de8a09:	281f d4f3 2e24 fe8d 2021 6f1b da28 b1ac     .(..$...! .o(...
c0de8a19:	15d9 bd9c 2abe e626 ca18 9934 de99 5d7c     .....*&...4...|]
c0de8a29:	461d 8e9a b6ee 7775 9e3d 6491 4ac9 a3ed     .F....uw=..d.J..
c0de8a39:	6855 ca1f 87cd 25bd 68fb 818d d56d 3402     Uh.....%.h..m..4
c0de8a49:	d638 d1ec eb01 8b00 d9c3 9f4b 0c84 f568     8.........K...h.
c0de8a59:	11c9 7387 f003 f084 2af7 d504 ae1f ad0e     ...s.....*......
c0de8a69:	653b d1f8 3bd6 c2d4 e911 8a65 90eb 7398     ;e...;....e....s
c0de8a79:	74d0 4bdf bbf8 118b bccd 2eb9 2617 cd57     .t.K.........&W.
c0de8a89:	cf34 f076 6534 1f7b c8a7 6c3b aa8a 659e     4.v.4e{...;l...e
c0de8a99:	6a46 e1ae d4ca d733 9ac0 735c c861 0991     Fj....3...\sa...
c0de8aa9:	4225 14cd d860 4069 2602 d6d2 26c1 81a4     %B..`.i@.&...&..
c0de8ab9:	0424 7ecc 7a00 8573 dd9d fcc6 192e e8c1     $..~.zs.........
c0de8ac9:	c728 0c56 c81e 1742 6892 f3bc 3f81 4b4f     (.V...B..h...?OK
c0de8ad9:	5fe0 e6a6 bb00 6dfb d5ae 62b8 8235 ed05     ._.....m...b5...
c0de8ae9:	5b25 613e 1438 376a 0cf7 f8b9 cef4 ba44     %[>a8.j7......D.
c0de8af9:	7e6d 8fb0 9409 37a5 6fea b8f6 5241 3f58     m~.....7.o..ARX?
c0de8b09:	b634 b13e ec74 4d33 32ae 7f41 c25c f272     4.>.t.3M.2A.\.r.
c0de8b19:	1617 e365 322d 6a3f ba58 9076 57ac 28cc     ..e.-2?jX.v..W.(
c0de8b29:	e035 b6c2 5408 b67a 057f d6ec 1a1f eaea     5....Tz.........
c0de8b39:	13c0 ff9f 34e7 07fa 333c 08ea 1e7d bb1f     .....4..<3..}...
c0de8b49:	1138 9f5c b035 cc3d 1a03 d930 4bbc f91f     8.\.5.=...0..K..
c0de8b59:	3038 e1d9 deed 22d0 5de0 3a84 032f e647     80.....".].:/.G.
c0de8b69:	4903 3e4b 9bea 53d5 0330 e5b3 459a 355f     .IK>...S0....E_5
c0de8b79:	5e3b 83ce 91e7 0334 223a 0a58 6805 5c5b     ;^....4.:"X..h[\
c0de8b89:	3d29 9a81 38c2 33e2 063c 814a 5569 cbcf     )=...8.3<.J.iU..
c0de8b99:	d5f3 a857 7817 515c 4933 03eb 21c7 6eb7     ..W..x\Q3I...!.n
c0de8ba9:	bc29 b2ab 2d3f b809 5b47 1f95 a25b 33bb     )...?-..G[..[..3
c0de8bb9:	ae8d 9411 050b 7157 638b 5ec4 1e6c cac9     ......Wq.c.^l...
c0de8bc9:	6500 4826 54b3 0088 c4e4 a5e9 98be 02e2     .e&H.T..........
c0de8bd9:	3071 3cf8 572b f1e3 a2ee 04ee 4529 9030     q0.<+W......)E0.
c0de8be9:	8712 537b 2482 35e2 1dd9 6677 9e1f 730c     ..{S.$.5..wf...s
c0de8bf9:	d6d3 6773 2785 2669 6e8b 3379 53e7 1891     ..sg.'i&.ny3.S..
c0de8c09:	3c09 5b11 f2b0 1188 a1a7 041c f51e 7f84     .<.[............
c0de8c19:	c14e d71d 4587 fe7f 1697 a9b2 da96 6c3d     N....E........=l
c0de8c29:	3424 dfae 0c50 31e5 ce4c f760 40d5 0171     $4..P..1L.`..@q.
c0de8c39:	3460 d71e 8ffe b2aa d2fc efde 7368 2918     `4..........hs.)
c0de8c49:	9112 e8b3 691b d7a2 1beb 6e56 224e 8ba2     .....i....VnN"..
c0de8c59:	8a2a 13ae 9bdc d56f 140c 47ca 7a89 5f90     *.....o....G.z._
c0de8c69:	2022 3713 626f e383 33e6 96f6 a09e 4176     " .7ob...3....vA
c0de8c79:	7ed5 ee7d 9a49 e8c3 ee81 144e 42d1 9944     .~}.I.....N..BD.
c0de8c89:	0609 147a 7667 20a1 d055 e073 8a32 d4e1     ..z.gv. U.s.2...
c0de8c99:	a483 0dc0 cc89 d810 dc0b 672d f455 89d8     ..........-gU...
c0de8ca9:	403a 21dc f898 690b f10f 9b67 53b0 758c     :@.!...i..g..S.u
c0de8cb9:	d7b3 a018 3928 ce20 398d 2df1 fa9c ab27     ....(9 ..9.-..'.
c0de8cc9:	7615 2853 a889 5ddd bcd7 8442 085f 3bf6     .vS(...]..B._..;
c0de8cd9:	fbac d453 1808 7438 152b e84b 007b 34b9     ..S...8t+.K.{..4
c0de8ce9:	b43d 72ef 8bbd 85d5 ed06 672e 5270 fc0b     =..r.......gpR..
c0de8cf9:	3b13 d053 ea95 20f8 66e4 2885 1d93 ece9     .;S.... .f.(....
c0de8d09:	1e2d 8716 b9b8 393e 988a 1105 6041 167f     -.....>9....A`..
c0de8d19:	c792 d706 6702 1900 ddeb 722b 7a24 bad9     .....g....+r$z..
c0de8d29:	3e32 7696 6bd5 79d5 a406 8f9e 2964 166b     2>.v.k.y....d)k.
c0de8d39:	aba5 5857 107c bd92 3d4f bc9f d548 aabd     ..WX|...O=..H...
c0de8d49:	831b 4509 c40b 0350 bf89 f7c6 af36 7814     ...E..P.....6..x
c0de8d59:	a1d3 c5ea ce3d 4759 7e3d 2e68 57d2 af58     ....=.YG=~h..WX.
c0de8d69:	eb3b 007f 0163 ff55 e539 4b31 baab b06a     ;...c.U.9.1K..j.
c0de8d79:	fd6f 78aa 7a6b 69dd 89e9 9157 05b9 b75b     o..xkz.i..W...[.
c0de8d89:	e51f 0085 14a9 811b acfd f9ed 56fc dba9     .............V..
c0de8d99:	ad74 4b3e cf5a bf78 018f 70cd 0f44 ad3c     t.>KZ.x....pD.<.
c0de8da9:	aa32 dcd1 6f3e bce3 50ac 2c4e d11f d5b1     2...>o...PN,....
c0de8db9:	7cd6 44cc 4953 9545 54ab dced 7536 68b9     .|.DSIE..T..6u.h
c0de8dc9:	a307 f580 ac95 20ad a44e 405f 7768 5e31     ....... N._@hw1^
c0de8dd9:	04d5 80c7 c144 0f8c 7c86 500e 17ca cd21     ....D....|.P..!.
c0de8de9:	fa09 f752 b1ac 9c00 4115 7414 1174 eff2     ..R......A.tt...
c0de8df9:	4809 a7b5 bab2 c79f bf47 97fb ba66 8985     .H......G...f...
c0de8e09:	3528 eed3 aa4c 460b 4e51 1cc4 219f f596     (5..L..FQN...!..
c0de8e19:	aefd 682c 77c4 a410 6e1f 68fd 9c86 6b37     ..,h.w...n.h..7k
c0de8e29:	e214 7cd9 bb0a 2d87 fe8e 5c47 cb9c 09dc     ...|...-..G\....
c0de8e39:	4769 9167 8790 9da5 b546 26a2 29ca 3ab9     iGg.....F..&.).:
c0de8e49:	2207 11e1 903d 4e32 8206 f80f c16d 0d28     ."..=.2N....m.(.
c0de8e59:	3f74 822a a188 308b 6ab2 5ff7 3313 86e0     t?*....0.j._.3..
c0de8e69:	b720 eb8c 0d6e 29f0 432c e8cd 3dd5 bcf0      ...n..),C...=..
c0de8e79:	c720 fcc7 666a bdfd 543f dcd8 bae2 9683      ...jf..?T......
c0de8e89:	e132 9668 a24b 860a d83f 464d 4bb4 2fc8     2.h.K...?.MF.K./
c0de8e99:	51fc ea74 95d5 52f3 bc53 2b97 d08c 31ee     .Qt....RS..+...1
c0de8ea9:	612e 35cd d9d9 f990 71f8 0be9 8976 d809     .a.5.....q..v...
c0de8eb9:	1183 9373 d821 f746 89af 4f49 1b89 d3a4     ..s.!.F...IO....
c0de8ec9:	ed2d 0816 ae93 d032 fb74 0007 13ec 9198     -.....2.t.......
c0de8ed9:	4385 95bf 1c10 4401 4c60 d4c4 9f53 5c8b     .C.....D`L..S..\
c0de8ee9:	5716 e07a be73 2382 352c 2888 2254 4927     .Wz.s..#,5.(T"'I
c0de8ef9:	d8e9 a8e0 bffb 8170 9cee 422b f3a9 e509     ......p...+B....
c0de8f09:	7e18 ba88 cc7c 40df e257 f20f 17e0 7475     .~..|..@W.....ut
c0de8f19:	c3d8 1147 3f91 bdee ab5d 894f f05a d305     ..G..?..].O.Z...
c0de8f29:	600a 41ab 1fc1 fa95 5f60 c157 8d0f b834     .`.A....`_W...4.
c0de8f39:	b700 15d8 5f9e 007b b2a3 5fcb 9120 46a8     ....._{...._ ..F
c0de8f49:	1429 88e1 f773 8e37 10b2 93b4 39ce ac91     )...s.7......9..
c0de8f59:	0898 e9a9 d4a4 101e fc4c ac2b 72ab 17b6     ........L.+..r..
c0de8f69:	c606 1af0 caa8 0a19 950e 9a40 7341 0585     ..........@.As..
c0de8f79:	30c1 cc06 8500 ab34 688a f9eb 1db7 e174     .0....4..h....t.
c0de8f89:	ef28 8c78 1820 e1ea 062c 2fb8 0c19 7ec9     (.x. ...,../...~
c0de8f99:	0c58 3c3d 3056 0685 0b8d d662 c67b af09     X.=<V0....b.{...
c0de8fa9:	d426 1a5b e9a0 8872 1861 56fa 6eb5 df41     &.[...r.a..V.nA.
c0de8fb9:	3a4d 76cc 8516 b2f5 ff61 58d0 1c20 f66a     M:.v....a..X .j.
c0de8fc9:	ec39 e487 5da9 4ed9 3069 17d7 c622 d7d1     9....].Ni0.."...
c0de8fd9:	32df 299f cd37 4815 5d34 b726 d667 ba78     .2.)7..H4]&.g.x.
c0de8fe9:	bf10 fcf0 63c6 9e26 7633 00f4 195d fd4d     .....c&.3v..].M.
c0de8ff9:	eb0f b3c1 e802 ae07 4779 3a65 0f91 edb6     ........yGe:....
c0de9009:	582c a4d0 6e64 ac33 639f 2c3d a788 dbac     ,X..dn3..c=,....
c0de9019:	197a 232c 13aa 13f1 173b ad8f f9ef d93b     z.,#....;.....;.
c0de9029:	5a25 f712 5a50 b781 7b38 afbc 692b 29a0     %Z..PZ..8{..+i.)
c0de9039:	fc83 f0b1 0a76 355a f74a ac77 1b6f b425     ....v.Z5J.w.o.%.
c0de9049:	de1e 410f 8ec9 785a 129c 84e1 a89e 9232     ...A..Zx......2.
c0de9059:	0efa c92e c6e3 0409 0ed4 29a1 9baa 8dfc     ...........)....
c0de9069:	d637 b1dd b058 ee7e 9e15 533f f61d 2914     7...X.~...?S...)
c0de9079:	a79d ea53 7e22 fb2f 70f2 20bc 51b0 ab3b     ..S."~/..p. .Q;.
c0de9089:	f728 e6cf b7a0 756b dbb8 c4ea 033e a19b     (.....ku....>...
c0de9099:	12ea dd6a 0eb9 cad9 1c84 6711 b8c2 d4e6     ..j........g....
c0de90a9:	e132 2ded 09bf 6b02 9f61 9e08 1d04 2806     2..-...ka......(
c0de90b9:	4235 3876 537e 050b ebae 5286 cbf0 c520     5Bv8~S.....R.. .
c0de90c9:	b53d b14e c5d8 6128 eb11 c066 2a2c 88ee     =.N...(a..f.,*..
c0de90d9:	896c 2d1f e666 b935 ee85 5a91 ff0e d95d     l..-f.5....Z..].
c0de90e9:	5c02 8b17 2b22 25b3 5814 cdea 9335 87f1     .\.."+.%.X..5...
c0de90f9:	2016 56ce 2510 33d0 c2c4 35a1 924e e2b2     . .V.%.3...5N...
c0de9109:	1126 44a9 f966 6eef 5f98 2ca7 2d1d bf2f     &..Df..n._.,.-/.
c0de9119:	3c05 b6be 85be c6d1 f34e c257 59d4 54db     .<......N.W..Y.T
c0de9129:	5424 29b4 0134 f72f e878 e5e1 c8c7 fe19     $T.)4./.x.......
c0de9139:	afe2 fa51 59db a72e 25d0 5ec2 2bc9 80e9     ..Q..Y...%.^.+..
c0de9149:	403f 2e09 c686 92ff 9736 f160 2aae daec     ?@......6.`..*..
c0de9159:	0613 4484 f188 2757 7f1e 67b4 8347 33d6     ...D..W'...gG..3
c0de9169:	6016 b2a3 9d59 d067 0831 f39b fb9d d532     .`..Y.g.1.....2.
c0de9179:	c1f7 9cf3 62c7 46c1 d424 3c11 e6b6 9ffe     .....b.F$..<....
c0de9189:	3005 04f1 fb5f 205c f1a9 c694 1b4d baff     .0.._.\ ....M...
c0de9199:	df49 54b7 7441 5a93 7a43 1832 a55b d2e9     I..TAt.ZCz2.[...
c0de91a9:	be24 fe84 b606 dfe3 638f 5bf2 13f8 992b     $........c.[..+.
c0de91b9:	0198 bb22 7bb5 7d42 9ccb 48ce c2e9 2473     .."..{B}...H..s$
c0de91c9:	1705 0922 2e04 06a9 ffe3 a15e 56e8 43c6     ..".......^..V.C
c0de91d9:	f6cb e389 bf63 74cd 5aec 6319 fa60 886d     ....c..t.Z.c`.m.
c0de91e9:	d43c 01ad ceb5 b9cc 65cb 8fac 60f4 9acc     <........e...`..
c0de91f9:	014a dcc3 dfdc eb95 6613 16d3 d123 11c6     J........f..#...
c0de9209:	e914 efc2 ae46 9906 af7b 4759 cf95 2e64     ....F...{.YG..d.
c0de9219:	75e9 ab5a c650 439b 29a7 51f3 aa9e c7c4     .uZ.P..C.).Q....
c0de9229:	ca33 b375 eef0 49e2 79ba 97ab 11f8 f1ad     3.u....I.y......
c0de9239:	a795 591f 4679 f533 6b97 0ea1 cebc f9b3     ...YyF3..k......
c0de9249:	e510 5627 1eef 6290 5aab a3b4 abe7 9fe2     ..'V...b.Z......
c0de9259:	ca01 3e70 9d10 76c5 f466 f1bd 01c4 7a97     ..p>...vf......z
c0de9269:	2d15 82c2 bb05 9f98 fb84 a3e0 4be6 2c25     .-...........K%,
c0de9279:	67a6 ec94 42ac 68c4 2d0a b265 c575 f822     .g...B.h.-e.u.".
c0de9289:	ee28 dd5d efc9 ec49 87a1 9b04 6782 929c     (.]...I......g..
c0de9299:	bea9 e874 b088 c398 56f2 bfce b68e 67a4     ..t......V.....g
c0de92a9:	1a37 f900 1ed5 a593 3da0 7f0b 2b46 3c72     7........=..F+r<
c0de92b9:	d9ff 00bf fd7e 574b d126 8b3b f4e1 6482     ....~.KW&.;....d
c0de92c9:	b72e 5ce7 ba62 7f1d cb03 4e78 a641 edaf     ...\b.....xNA...
c0de92d9:	dabc 2122 9763 c22f 8510 b5b1 c364 896a     .."!c./.....d.j.
c0de92e9:	772a cb9c 9a53 a8b7 6c51 9bad 6b7b 5def     *w..S...Ql..{k.]
c0de92f9:	5d83 a473 929f f656 d2bd 3034 4baa 7661     .]s...V...40.Kav
c0de9309:	1c35 17a4 77a6 4f26 f84d ff29 5ba5 4eff     5....w&OM.)..[.N
c0de9319:	9034 a3de c26d b925 620f faa7 8197 7c63     4...m.%..b....c|
c0de9329:	9a10 85d2 b2b5 de0b 4eb9 97fe c8b1 c0af     .........N......
c0de9339:	4fb8 417b 24d9 9e2e dd58 c5c3 3c09 ae81     .O{A.$..X....<..
c0de9349:	2a08 fdf6 470d 3036 b8b2 bca2 3c9c 496c     .*...G60.....<lI
c0de9359:	695b feaf 6c45 cef7 17e1 c314 c3c3 161d     [i..El..........
c0de9369:	6114 f0c7 cb90 8bda 3925 a294 727c b2a0     .a......%9..|r..
c0de9379:	2899 3adb a4ef a4e4 b28c 5d02 1f61 f88a     .(.:.......]a...
c0de9389:	2e0b 69e9 5d27 3a2a 5cfb c03a 4651 01da     ...i']*:.\:.QF..
c0de9399:	35ee ad89 66d7 2bf2 33e6 be1b 2cd9 f1d0     .5...f.+.3...,..
c0de93a9:	111d a4a5 fd1c 31c7 d7ec 2ee5 c03f 81ea     .......1....?...
c0de93b9:	feb2 bb0b 0128 48d1 5af7 5005 0329 7a00     ....(..H.Z.P)..z
c0de93c9:	9321 376b c909 d2dd f628 aae0 24a2 5a95     !.k7....(....$.Z
c0de93d9:	9bfd 1f41 60d2 2af4 88d9 92d2 390d 1e26     ..A..`.*.....9&.
c0de93e9:	2306 c520 6c54 62fe f617 99db 4d66 60e3     .# .Tl.b....fM.`
c0de93f9:	6fcf e896 c2ec 4d8b 45ba 4f25 0815 92ed     .o.....M.E%O....
c0de9409:	e10d d033 f97a fdbd 3dbb aadf 10b9 2c7d     ..3.z....=....},
c0de9419:	039e 30c6 11bf 59a1 6b21 a02f 0efe 7d66     ...0...Y!k/...f}
c0de9429:	6135 9470 c1e3 dbec 3107 ad7e 6cd2 9863     5ap......1~..lc.
c0de9439:	015d 36bc 5602 1937 791c 65dc 9c35 e1cb     ]..6.V7..y.e5...
c0de9449:	0439 5121 0fc2 18a2 4518 54f3 d674 805b     9.!Q.....E.Tt.[.
c0de9459:	936d 34f6 d548 56a5 7874 61d0 4204 7ea9     m..4H..Vtx.a.B.~
c0de9469:	882f 05df fd74 b697 bcd0 b7eb cf8e 6967     /...t.........gi
c0de9479:	59bd edae 1f45 737d 8d0a 8154 79db 80d6     .Y..E.}s..T..y..
c0de9489:	fe25 a891 0582 69b5 d38b 8730 53cd 2663     %......i..0..Sc&
c0de9499:	4afc ecc8 7e97 07c8 c9ed b71c e42f 9f8a     .J...~....../...
c0de94a9:	171b ad75 2b9c f1a1 ce18 213b 2463 f9af     ..u..+....;!c$..
c0de94b9:	d6a8 6ea1 7475 8757 1a03 e571 9ee4 81e8     ...nutW...q.....
c0de94c9:	a51c 6d35 e121 4552 6df0 68a0 81e5 e421     ..5m!.RE.m.h..!.
c0de94d9:	7a8e b29a b5b6 fe62 b9c7 9d56 0d87 0613     .z....b...V.....
c0de94e9:	af06 914c 1ca1 a552 2ff0 d813 5afe b454     ..L...R../...ZT.
c0de94f9:	1c7c 182c 2b21 af5d aeba 2b1c eebd 4912     |.,.!+]....+...I
c0de9509:	4109 9278 9980 ab2d c86b 323d 89da 378d     .Ax...-.k.=2...7
c0de9519:	269f c51f 0648 77d6 c318 c03e 83db 4a6a     .&..H..w..>...jJ
c0de9529:	6d09 ec4d fda9 9380 560e 2ad6 81df fbe3     .mM......V.*....
c0de9539:	e915 7080 cb41 abdb 03a5 873c 4181 1b21     ...pA.....<..A!.
c0de9549:	3635 947b 712f 4ce9 9966 2674 a642 a2c6     56{./q.Lf.t&B...
c0de9559:	4ac1 1ed8 a810 bdc8 e8a2 f4f6 3a5f 3016     .J.........._:.0
c0de9569:	3320 7176 9dbc 4581 631d c58b d1f2 ae0c      3vq...E.c......
c0de9579:	87d4 3756 933e bcc5 745d e8ae 19a2 8221     ..V7>...]t....!.
c0de9589:	b73e 9c7d fb0a 8cd2 1529 bd9c cbaa 3c19     >.}.....)......<
c0de9599:	541b 2c28 6a4c 5fb4 3cf2 21fa 0aa6 336b     .T(,Lj._.<.!..k3
c0de95a9:	7a3f 4591 fcca 7e9f 3f62 8f0e d7fa a2eb     ?z.E...~b?......
c0de95b9:	ed6c 85e8 2bc9 040f 8f5c 238d 4450 5216     l....+..\..#PD.R
c0de95c9:	0b0a b004 7547 33f0 5884 cf70 774d 609d     ....Gu.3.Xp.Mw.`
c0de95d9:	87dc 8037 3f0c f09f ba1b 8761 9bff b76c     ..7..?....a...l.
c0de95e9:	9805 cd30 d383 e571 e6b9 fa29 2d43 243f     ..0...q...).C-?$
c0de95f9:	0056 be2b 0946 db26 34ec 8c7a a3bf 23f6     V.+.F.&..4z....#
c0de9609:	7d1c a470 5018 60b0 60aa b30f 9688 6e1d     .}p..P.`.`.....n
c0de9619:	91c2 444a 5baf dc27 97f0 664e 6720 8644     ..JD.['...Nf gD.
c0de9629:	bd2f 81b6 909b 2c00 f4ff 872f 7ea3 7e1f     /......,../..~.~
c0de9639:	4980 2874 790f 3b2a c309 84e6 c64e 404c     .It(.y*;....N.L@
c0de9649:	411d a89d 9bb4 3fd7 435f eda8 4bc4 1116     .A.....?_C...K..
c0de9659:	e54a a27a bf51 fa34 6bf8 c358 f26d c88e     J.z.Q.4..kX.m...
c0de9669:	cd2f 738a 62ef c717 f854 ecb6 ac6c 9d92     /..s.b..T...l...
c0de9679:	b622 02ce 0fff 784a a997 1226 01ab 0551     ".....Jx..&...Q.
c0de9689:	a239 eb50 a925 a22e f73b 9a5c f237 4a67     9.P.%...;.\.7.gJ
c0de9699:	a4c0 ca10 8109 3305 44ac 6cca b034 a17c     .......3.D.l4.|.
c0de96a9:	5828 ef55 e95d 2862 db18 7cc8 d0cc a992     (XU.].b(...|....
c0de96b9:	4c8b ab7d a224 46c5 3eb4 5ef8 c1e9 25d9     .L}.$..F.>.^...%
c0de96c9:	f92e b373 eb23 2d9f d5ac 00a6 1402 0991     ..s.#..-........
c0de96d9:	9b66 ff88 e852 4b71 be69 0a77 db8d 90af     f...R.qKi.w.....
c0de96e9:	9211 370f 83c5 cf26 ccab 87ed 3d52 d93c     ...7..&.....R=<.
c0de96f9:	3901 a1c1 5d19 ad0d 514d dcbb cbc1 8cb8     .9...]..MQ......
c0de9709:	0531 197f da1b 1e3f b6b5 6f04 b90b df30     1.....?....o..0.
c0de9719:	7bc9 a58c ea05 daa4 f7a1 d647 1ef2 5217     .{........G....R
c0de9729:	1525 7a4f 6ec7 c8df 9621 7979 e246 e893     %.Oz.n..!.yyF...
c0de9739:	a7c8 88fb 58fa 923f ad9a e50f a80e f397     .....X?.........
c0de9749:	ac17 f6e9 7a36 92c2 db73 8ece d3cc 5875     ....6z..s.....uX
c0de9759:	344c df3a 1714 9b3d 255a b573 11ff 7705     L4:...=.Z%s....w
c0de9769:	fb2e fd03 21ba 267d c201 f609 aad3 c219     .....!}&........
c0de9779:	2258 c4c2 8b66 7427 6a8a 4b58 e425 b888     X"..f.'t.jXK%...
c0de9789:	d01b 3cb4 acf6 6c7b 35d5 c9a6 324e e69c     ...<..{l.5..N2..
c0de9799:	1dbc d658 3fec 80c9 dfd4 9442 634c 099d     ..X..?....B.Lc..
c0de97a9:	ba2b 54db 14fd 4221 d9e5 72da 6e6c c1ff     +..T..!B...rln..
c0de97b9:	6a6e 29dd 7677 6a03 5d24 99d4 f28d 2aa7     nj.)wv.j$].....*
c0de97c9:	1530 cc9e fe49 7e86 adb8 27c0 5f60 8004     0...I..~...'`_..
c0de97d9:	79c0 5aaa 8361 6d05 db6c dbe5 7c82 b986     .y.Za..ml....|..
c0de97e9:	e926 e145 40ec 0425 eda6 d402 301a 56a4     &.E..@%......0.V
c0de97f9:	0c2c 9755 e043 bb89 2ec7 298a f9d2 c8cf     ,.U.C......)....
c0de9809:	0a06 54c0 dba5 d907 b4c3 3b3e 67aa 8b7f     ...T......>;.g..
c0de9819:	c6e1 6459 5b4c ced9 20a2 4d2e 255b 4c8f     ..YdL[... .M[%.L
c0de9829:	4b1e 04a4 70df b2c4 945e 2fdc 0645 ced1     .K...p..^../E...
c0de9839:	ad9a bf21 d9af b208 ac5d 4b88 5b54 6dd9     ..!.....]..KT[.m
c0de9849:	e43e 54d5 6ff5 1237 9c02 3699 7abf e8db     >..T.o7....6.z..
c0de9859:	3397 9245 6b04 4264 23eb 5961 edef c1f7     .3E..kdB.#aY....
c0de9869:	193f 8c0b 41e4 a986 bea0 638c d7cb a3f5     ?....A.....c....
c0de9879:	cf67 4664 314b 2a6b 7027 17d1 1ad1 a4fe     g.dFK1k*'p......
c0de9889:	272f 67f7 f5ed 9a20 bdae d236 7754 cada     /'.g.. ...6.Tw..
c0de9899:	e086 bd32 e4d7 bdc7 052d 004a 99fb c79f     ..2.....-.J.....
c0de98a9:	343e 4504 f2d8 a274 7a41 7bc0 832c a4d6     >4.E..t.Az.{,...
c0de98b9:	4e26 af60 670e 3d19 e047 b043 26a8 c149     &N`..g.=G.C..&I.
c0de98c9:	3a37 fa9d c829 2ba1 ea7a ef71 cf6c 37bf     7:..)..+z.q.l..7
c0de98d9:	931e 71df fbae ebcf 5137 4235 9dd1 9bfd     ...q....7Q5B....
c0de98e9:	f72c 4ffb 348e 0233 5456 7b3c b0e2 e482     ,..O.43.VT<{....
c0de98f9:	189c 1f59 1c6e 5a3a 526c 213f d085 a360     ..Y.n.:ZlR?!..`.
c0de9909:	8711 23d2 5b84 880f 348a ff0d c62c 0bf5     ...#.[...4..,...
c0de9919:	15ac 52f7 8b0f b942 ddae f9d3 5be4 7e69     ...R..B......[i~
c0de9929:	b313 dc7f aa3d 7b81 2c24 7569 13ee a9c2     ....=..{$,iu....
c0de9939:	95b7 dd95 15bc 52bb d3da 165f edaa fb68     .......R.._...h.
c0de9949:	702b 6bdc fa83 01af 62e6 5ffe 8e48 5f69     +p.k.....b._H.i_
c0de9959:	12a9 fb3b 2cb8 3200 1e9b c676 62b2 84a2     ..;..,.2..v..b..
c0de9969:	5b20 ea55 e984 479f 3a9a ed65 1e58 e8ea      [U....G.:e.X...
c0de9979:	77da 3180 3c84 60c1 ff70 16af dd38 5fb5     .w.1.<.`p...8.._
c0de9989:	8c19 b204 f42d e46d 39f1 a6c4 aac4 9f88     ....-.m..9......
c0de9999:	40e1 dee9 7eb9 e5c1 3ed8 ac36 2974 d4d5     .@...~...>6.t)..
c0de99a9:	332e 8d3c 779b b886 fc91 79fe 56ae eab4     .3<..w.....y.V..
c0de99b9:	da8b e6b8 9b4f cec5 f35b 482b 0db2 5de7     ....O...[.+H...]
c0de99c9:	470a 70e5 eab4 9064 bb89 0ba9 15f6 ed40     .G.p..d.......@.
c0de99d9:	5aae 038b f57b 1091 b5fb 32cb 710d 5e59     .Z..{......2.qY^
c0de99e9:	b01e e02c d39e 26c4 fa04 fb93 fa09 e5c1     ..,....&........
c0de99f9:	0bde a566 8767 3022 4480 c1de 6cac d290     ..f.g."0.D...l..
c0de9a09:	c811 e679 20cc 6001 177e b829 dc22 a9fa     ..y.. .`~.)."...
c0de9a19:	c1a4 250a 54d3 02fb f420 5eab 3d9e 64ec     ...%.T.. ..^.=.d
c0de9a29:	b804 f506 40fc 5ef1 3e66 16ac 02ba 3d92     .....@.^f>.....=
c0de9a39:	a297 a5ac eff0 8eea 5589 eba3 28c3 a1cf     .........U...(..
c0de9a49:	673c 811c 1185 524e 1fc2 777b 059d e7b6     <g....NR..{w....
c0de9a59:	3360 7f73 1cd9 53ca 5566 b14e 91c4 0a0d     `3s....SfUN.....
c0de9a69:	c533 96d4 2b65 bd2d 32fd 2381 599d 1cff     3...e+-..2.#.Y..
c0de9a79:	6315 4781 b291 c1af 5e80 dcf9 0bf2 db49     .c.G.....^....I.
c0de9a89:	f026 d647 d2b5 e7b3 d04a 161e 8735 ec7f     &.G.....J...5...
c0de9a99:	243d c215 cf73 079e 3a8f 5203 a760 ef61     =$..s....:.R`.a.
c0de9aa9:	ae17 d735 906c 90b9 2a6e 6483 6078 e101     ..5.l...n*.dx`..
c0de9ab9:	f59e 2f94 db85 ea2e 2677 32c8 4857 5411     .../....w&.2WH.T
c0de9ac9:	1121 41fb 9eb7 d71e 2ab5 74b0 4534 c155     !..A.....*.t4EU.
c0de9ad9:	9f33 ea6d 4cd7 d081 2f2f 7de3 97ad cbbc     3.m..L..//.}....
c0de9ae9:	4635 9808 638a 4d49 2e3d d111 402f 1c98     5F...cIM=.../@..
c0de9af9:	7eee 5e2e 8e43 bb80 972e 2866 8af9 b353     .~.^C.....f(..S.
c0de9b09:	c227 596d de98 d71e addc 1d2c 0694 2daf     '.mY......,....-
c0de9b19:	fc0a 9438 f743 6e70 ad67 ab5d b907 258a     ..8.C.png.]....%
c0de9b29:	e826 782b 77ed 2cfa b07a d8d9 e96f b3b2     &.+x.w.,z...o...
c0de9b39:	c213 c09e 0da2 d931 7c9e 88eb a6b4 891a     ......1..|......
c0de9b49:	9f3c 6389 f989 8c16 21d5 1fe8 4c4c 246e     <..c.....!..LLn$
c0de9b59:	fbdb 6a31 5e68 a4f8 9ea5 1078 1abc 09f9     ..1jh^....x.....
c0de9b69:	fd00 23dd 114b b7d1 f37f 5b59 c974 574a     ...#K.....Y[t.JW
c0de9b79:	b7a9 46ca c605 a426 0ae7 dea1 1e72 c2db     ...F..&.....r...
c0de9b89:	f133 ba3c e9a0 6a19 db78 c9d6 48d3 b727     3.<....jx....H'.
c0de9b99:	744c 379a 37b3 fff5 dfa2 8f7b 3b0e 216c     Lt.7.7....{..;l!
c0de9ba9:	0632 680e 6913 d8e9 9fab dc49 7869 85cd     2..h.i....I.ix..
c0de9bb9:	2c29 c9f1 b108 cdba 75cd fa85 837f d163     ),.......u....c.
c0de9bc9:	c439 6013 21d5 a442 04e3 dadc 1a3b d7b0     9..`.!B.....;...
c0de9bd9:	dcee 09e9 74e0 1962 4f6c 9c45 dc5e 4897     .....tb.lOE.^..H
c0de9be9:	b72c 7a64 d082 0ce7 9e9f 83f8 7115 fb41     ,.dz.........qA.
c0de9bf9:	7365 bf15 6cf8 4227 1887 811b bf6c 35f5     es...l'B....l..5
c0de9c09:	aa10 8fd9 2ac9 2ce6 1172 7243 da40 44d8     .....*.,r.Cr@..D
c0de9c19:	6d41 8f85 6f2b f8f9 8d5b 832a d172 c4c9     Am..+o..[.*.r...
c0de9c29:	e339 cfee a771 29ae f534 cf57 f12a 80ee     9...q..)4.W.*...
c0de9c39:	5497 f2ca 5828 6b81 ea84 4ac7 6e64 4682     .T..(X.k...Jdn.F
c0de9c49:	923f 65e6 834a e9eb dd85 b5ba afe9 c040     ?..eJ.........@.
c0de9c59:	8302 6c53 acd0 c992 0f6e 7cec a222 4fd2     ..Sl....n..|"..O
c0de9c69:	4c1a 4fef 6f36 07a8 b872 945b 9484 c32b     .L.O6o..r.[...+.
c0de9c79:	79b5 3acd a936 25ef 99e7 9a9b 1f9d c923     .y.:6..%......#.
c0de9c89:	e12f 05d6 67af 6042 9eae cf13 ee71 6a8f     /....gB`....q..j
c0de9c99:	eb3b e3f4 4eca bad0 4c39 5e69 259d ab2c     ;....N..9Li^.%,.
c0de9ca9:	5f14 e074 0879 4588 102e 4424 d2c8 e28b     ._t.y..E..$D....
c0de9cb9:	2d19 2c39 c823 691a a635 7b69 3d80 2d5f     .-9,#..i5.i{.=_-
c0de9cc9:	5d29 458c 3d44 0abc 8849 e52d 923c 95a2     )].ED=..I.-.<...
c0de9cd9:	f6b4 ba7c 492c 45a9 f3de f7a9 531d 5d41     ..|.,I.E.....SA]
c0de9ce9:	100f 7e61 f6b0 9591 2e82 1805 06ad c4ef     ..a~............
c0de9cf9:	335d 4ab1 f968 913a ab49 f8b0 b19e 439e     ]3.Jh.:.I......C
c0de9d09:	6c2d 8bf4 9181 2498 6cfb d3bb b125 b64d     -l.....$.l..%.M.
c0de9d19:	d2f4 ed9e b369 9cb4 45dd 53b7 32aa 3ecb     ....i....E.S.2.>
c0de9d29:	692c 551a e919 c8c0 499d 6b6d 2260 c89b     ,i.U.....Imk`"..
c0de9d39:	6452 7345 5fb4 b00f 9a8b b83b 01dd 6fcc     RdEs._....;....o
c0de9d49:	503e 4a34 9edf 1870 4f1e f01d 7db8 29c8     >P4J..p..O...}.)
c0de9d59:	9c39 e29e dbba 132e 17c6 f728 a79d 97e6     9.........(.....
c0de9d69:	5916 511f 44a5 ee64 e9ff 2ac4 1ef2 8c6c     .Y.Q.Dd....*..l.
c0de9d79:	a4c2 9223 1a12 6a1e d4fd 5638 989e 0fd9     ..#....j..8V....
c0de9d89:	4719 0235 ed78 4a8b 9cc2 4888 b36d 9d25     .G5.x..J...Hm.%.
c0de9d99:	0a8c 5e1e 814b 93ef 6cca ea9c 8f8c 7a10     ...^K....l.....z
c0de9da9:	9e3d 325c cc52 dc09 ef78 a180 386f 0c15     =.\2R...x...o8..
c0de9db9:	4479 fbe8 f227 9cf2 cdd5 e43a 2b8b b919     yD..'.....:..+..
c0de9dc9:	3900 c1e7 e087 4fb6 7515 5a7e 0bc9 72f4     .9.....O.u~Z...r
c0de9dd9:	6a9d 62d6 a78e a8b4 4964 e892 0a64 7df6     .j.b....dI..d..}
c0de9de9:	8132 c144 ff2f abac 01ff 077f c826 426f     2.D./.......&.oB
c0de9df9:	aaec 43d7 ff5e 0f27 2746 f043 6e12 befa     ...C^.'.F'C..n..
c0de9e09:	9a28 581a 1deb 07c1 fa17 69c7 08b5 6d15     (..X.......i...m
c0de9e19:	1d58 638b d8ae 69fe e002 cd8b 9edf 9533     X..c...i......3.
c0de9e29:	7b05 cefb 7faa 519d fe10 95b2 2e92 30a7     .{.....Q.......0
c0de9e39:	a706 250b 0553 d67e 3734 ca24 bfc8 a94e     ...%S.~.47$...N.
c0de9e49:	1825 128b 7e75 d881 03e1 d552 b5a6 a640     %...u~....R...@.
c0de9e59:	3717 57b0 34aa b8af 568c a1e6 107f e421     .7.W.4...V....!.
c0de9e69:	6a1a f514 a8b7 4efa 0ad5 2460 bb4f bca4     .j.....N..`$O...
c0de9e79:	7054 cde4 a74c 26a3 aed8 6486 19bc 7e51     Tp..L..&...d..Q~
c0de9e89:	ed06 4452 e6e5 5ce5 7f98 95e9 28cf 6d1e     ..RD...\.....(.m
c0de9e99:	3e87 5087 0fd5 1328 3df1 0966 8f52 8908     .>.P..(..=f.R...
c0de9ea9:	403d 065c 981d 6d7d e724 f805 6173 4985     =@\...}m$...sa.I
c0de9eb9:	948f ee54 1c64 53a2 7331 315e b883 b592     ..T.d..S1s^1....
c0de9ec9:	be1c 5e94 6202 9a5d 0ff4 295a a345 fc11     ...^.b]...Z)E...
c0de9ed9:	2495 e06a ce7c 078c 2677 bc5f fa01 deca     .$j.|...w&_.....
c0de9ee9:	0e01 9927 e001 a0b4 598f 5a0e b644 7b66     ..'......Y.ZD.f{
c0de9ef9:	603e c78b 41d2 911e c690 8a53 6e91 98a2     >`...A....S..n..
c0de9f09:	c21e 1ee8 84ba 52f4 ae7a 3ff4 a92e 3e8d     .......Rz..?...>
c0de9f19:	f8dc 53f7 05c7 4ba5 8453 261c 1d4b 5e8d     ...S...KS..&K..^

c0de9f29 <mds_matrix>:
c0de9f29:	c70b 43bd 0f47 1e27 56dd 7511 9c95 06ad     ...CG.'..V.u....
c0de9f39:	21bb 4fd6 14a3 78a7 3787 e662 b4ff caa5     .!.O...x.7b.....
c0de9f49:	a321 a43b d3eb f4df 650b 6b4a 0c39 8fb2     !.;......eJk9...
c0de9f59:	ca9e 025e 3188 40b9 ea79 b943 1b7f fcff     ..^..1.@y.C.....
c0de9f69:	8531 bdad 32c9 5210 e02a 0ecc 26ab 70cc     1....2.R*....&.p
c0de9f79:	a177 124f f163 4c71 e8dc cde4 3229 b108     w.O.c.qL....)2..
c0de9f89:	4c16 51d4 6538 7025 04ac e342 de5c aa96     .L.Q8e%p..B.\...
c0de9f99:	b24f 864c 3b98 b2b1 62b1 5807 caf5 18f3     O.L..;...b.X....
c0de9fa9:	de25 2716 1aec 5457 c0e9 69db b069 16cc     %..'..WT...ii...
c0de9fb9:	8fa0 2257 1f5c 9dfd 33b8 c2ab f504 2b61     ..W"\....3....a+
c0de9fc9:	691f 930f cc72 a6a3 3045 8946 7c36 0c2e     .i..r...E0F.6|..
c0de9fd9:	3282 c641 d58d ebea be67 f304 6851 4f0a     .2A.....g...Qh.O
c0de9fe9:	c306 4464 a30a cfb6 6117 715d a814 dd7b     ..dD.....a]q..{.
c0de9ff9:	9115 e67e d6c2 84ec 3351 de6a 4aad a7b5     ..~.....Q3j..J..
c0dea009:	0b25 7d79 ca72 bdb6 47cf 0852 e651 e0d9     %.y}r....GR.Q...
c0dea019:	9269 f57f a09c 8c03 fa81 c8b3 ecf2 6122     i............."a
c0dea029:	5725 0f46 6335 3aba c4a6 26a8 86ba 3739     %WF.5c.:...&..97
c0dea039:	2971 efac 252f b189 2d30 8bcc ee61 bfa7     q)../%..0-..a...
c0dea049:	0000                                         ...

c0dea04c <TESTNET_IV>:
c0dea04c:	323e 1837 feb3 3d2a 276a 0789 a2af fca9     >27...*=j'......
c0dea05c:	177d 3d93 f71e 65c6 0750 62b9 c8b8 9253     }..=...eP..b..S.
c0dea06c:	0a37 8b1c 3748 a540 e5cc 0cc5 cb92 b964     7...H7@.......d.
c0dea07c:	af64 487d 24a0 548c 03d1 6a2c e43d 994e     d.}H.$.T..,j=.N.
c0dea08c:	1c07 0333 2df0 1a91 aeff 48fb 719e 514b     ..3..-.....H.qKQ
c0dea09c:	e1d7 318e 2db3 9c83 3dfd 3355 c146 360d     ...1.-...=U3F..6

c0dea0ac <MAINNET_IV>:
c0dea0ac:	c237 ad22 0932 7047 d1db 6437 b0c7 52a0     7.".2.Gp..7d...R
c0dea0bc:	6cfd 0478 3847 4b88 d633 d91d a4a9 9496     .lx.G8.K3.......
c0dea0cc:	b810 53df 1a5d 92de 67db cf28 56f8 f7f1     ...S]....g(..V..
c0dea0dc:	a088 e429 1643 76ad 71d9 5510 9cc6 33d3     ..).C..v.q.U...3
c0dea0ec:	6100 9438 c2aa 50c3 1ec0 8e37 3a01 59d5     .a8....P..7..:.Y
c0dea0fc:	1eb8 dc87 63ed f1d7 6df5 90a9 218a e4e6     .....c...m...!..

c0dea10c <ux_sign_tx_done_flow_done_step_val>:
c0dea10c:	8624 c0de 6ee1 c0de                         $....n..

c0dea114 <ux_sign_tx_done_flow_done_step>:
c0dea114:	37dd c0de a10c c0de 0000 0000 0000 0000     .7..............

c0dea124 <ux_sign_tx_done_flow>:
c0dea124:	a114 c0de ffff ffff                         ........

c0dea12c <ux_sign_tx_flow_topic_step_val>:
c0dea12c:	85c4 c0de 6eed c0de 6e67 c0de               .....n..gn..

c0dea138 <ux_sign_tx_flow_topic_step>:
c0dea138:	67fd c0de a12c c0de 0000 0000 0000 0000     .g..,...........

c0dea148 <ux_sign_tx_flow_network_step_val>:
c0dea148:	6eae c0de 6ecc c0de                         .n...n..

c0dea150 <ux_sign_tx_flow_network_step>:
c0dea150:	617d c0de a148 c0de 0000 0000 0000 0000     }a..H...........

c0dea160 <ux_sign_tx_flow_type_step_val>:
c0dea160:	6ea2 c0de 05e1 da7a                         .n....z.

c0dea168 <ux_sign_tx_flow_type_step>:
c0dea168:	617d c0de a160 c0de 0000 0000 0000 0000     }a..`...........

c0dea178 <ux_sign_tx_flow_from_step_val>:
c0dea178:	05ec da7a 04b0 da7a                         ..z...z.

c0dea180 <ux_sign_tx_flow_from_step>:
c0dea180:	64e5 c0de a178 c0de 0000 0000 0000 0000     .d..x...........

c0dea190 <ux_sign_tx_flow_to_step_val>:
c0dea190:	05f6 da7a 04e8 da7a                         ..z...z.

c0dea198 <ux_sign_tx_flow_to_step>:
c0dea198:	64e5 c0de a190 c0de 0000 0000 0000 0000     .d..............

c0dea1a8 <ux_sign_tx_flow_amount_step_val>:
c0dea1a8:	6e7f c0de 0520 da7a                         .n.. .z.

c0dea1b0 <ux_sign_tx_flow_amount_step>:
c0dea1b0:	617d c0de a1a8 c0de 0000 0000 0000 0000     }a..............

c0dea1c0 <ux_sign_tx_flow_fee_step_val>:
c0dea1c0:	6e92 c0de 0540 da7a                         .n..@.z.

c0dea1c8 <ux_sign_tx_flow_fee_step>:
c0dea1c8:	617d c0de a1c0 c0de 0000 0000 0000 0000     }a..............

c0dea1d8 <ux_sign_tx_flow_total_step_val>:
c0dea1d8:	6ebc c0de 0560 da7a                         .n..`.z.

c0dea1e0 <ux_sign_tx_flow_total_step>:
c0dea1e0:	617d c0de a1d8 c0de 0000 0000 0000 0000     }a..............

c0dea1f0 <ux_sign_tx_flow_nonce_step_val>:
c0dea1f0:	6ee6 c0de 0580 da7a                         .n....z.

c0dea1f8 <ux_sign_tx_flow_nonce_step>:
c0dea1f8:	617d c0de a1f0 c0de 0000 0000 0000 0000     }a..............

c0dea208 <ux_sign_tx_flow_valid_until_step_val>:
c0dea208:	6e5b c0de 05a0 da7a                         [n....z.

c0dea210 <ux_sign_tx_flow_valid_until_step>:
c0dea210:	617d c0de a208 c0de 0000 0000 0000 0000     }a..............

c0dea220 <ux_sign_tx_flow_memo_step_val>:
c0dea220:	6f05 c0de 05c0 da7a                         .o....z.

c0dea228 <ux_sign_tx_flow_memo_step>:
c0dea228:	64e5 c0de a220 c0de 0000 0000 0000 0000     .d.. ...........

c0dea238 <ux_sign_tx_flow_approve_step_validate_step>:
c0dea238:	38d1 c0de 0000 0000 0000 0000 0000 0000     .8..............

c0dea248 <ux_sign_tx_flow_approve_step_validate>:
c0dea248:	a238 c0de ffff ffff                         8.......

c0dea250 <ux_sign_tx_flow_approve_step_val>:
c0dea250:	8624 c0de 6e48 c0de                         $...Hn..

c0dea258 <ux_sign_tx_flow_approve_step>:
c0dea258:	66cd c0de a250 c0de a248 c0de 0000 0000     .f..P...H.......

c0dea268 <ux_sign_tx_flow_reject_step_validate_step>:
c0dea268:	38e1 c0de 0000 0000 0000 0000 0000 0000     .8..............

c0dea278 <ux_sign_tx_flow_reject_step_validate>:
c0dea278:	a268 c0de ffff ffff                         h.......

c0dea280 <ux_sign_tx_flow_reject_step_val>:
c0dea280:	8564 c0de 6e78 c0de                         d...xn..

c0dea288 <ux_sign_tx_flow_reject_step>:
c0dea288:	66cd c0de a280 c0de a278 c0de 0000 0000     .f......x.......

c0dea298 <ux_sign_tx_flow_testnet_payment_0_0>:
c0dea298:	a138 c0de a150 c0de a168 c0de a180 c0de     8...P...h.......
c0dea2a8:	a198 c0de a1b0 c0de a1c8 c0de a1e0 c0de     ................
c0dea2b8:	a1f8 c0de a258 c0de a288 c0de ffff ffff     ....X...........

c0dea2c8 <ux_sign_tx_flow_testnet_payment_0_memo>:
c0dea2c8:	a138 c0de a150 c0de a168 c0de a180 c0de     8...P...h.......
c0dea2d8:	a198 c0de a1b0 c0de a1c8 c0de a1e0 c0de     ................
c0dea2e8:	a1f8 c0de a228 c0de a258 c0de a288 c0de     ....(...X.......
c0dea2f8:	ffff ffff                                   ....

c0dea2fc <ux_sign_tx_flow_testnet_payment_valid_until_0>:
c0dea2fc:	a138 c0de a150 c0de a168 c0de a180 c0de     8...P...h.......
c0dea30c:	a198 c0de a1b0 c0de a1c8 c0de a1e0 c0de     ................
c0dea31c:	a1f8 c0de a210 c0de a258 c0de a288 c0de     ........X.......
c0dea32c:	ffff ffff                                   ....

c0dea330 <ux_sign_tx_flow_testnet_payment_valid_until_memo>:
c0dea330:	a138 c0de a150 c0de a168 c0de a180 c0de     8...P...h.......
c0dea340:	a198 c0de a1b0 c0de a1c8 c0de a1e0 c0de     ................
c0dea350:	a1f8 c0de a210 c0de a228 c0de a258 c0de     ........(...X...
c0dea360:	a288 c0de ffff ffff                         ........

c0dea368 <ux_sign_tx_flow_testnet_delegation_0_0>:
c0dea368:	a138 c0de a150 c0de a168 c0de a180 c0de     8...P...h.......
c0dea378:	a198 c0de a1c8 c0de a1f8 c0de a258 c0de     ............X...
c0dea388:	a288 c0de ffff ffff                         ........

c0dea390 <ux_sign_tx_flow_testnet_delegation_0_memo>:
c0dea390:	a138 c0de a150 c0de a168 c0de a180 c0de     8...P...h.......
c0dea3a0:	a198 c0de a1c8 c0de a1f8 c0de a228 c0de     ............(...
c0dea3b0:	a258 c0de a288 c0de ffff ffff               X...........

c0dea3bc <ux_sign_tx_flow_testnet_delegation_valid_until_0>:
c0dea3bc:	a138 c0de a150 c0de a168 c0de a180 c0de     8...P...h.......
c0dea3cc:	a198 c0de a1c8 c0de a1f8 c0de a210 c0de     ................
c0dea3dc:	a258 c0de a288 c0de ffff ffff               X...........

c0dea3e8 <ux_sign_tx_flow_testnet_delegation_valid_until_memo>:
c0dea3e8:	a138 c0de a150 c0de a168 c0de a180 c0de     8...P...h.......
c0dea3f8:	a198 c0de a1c8 c0de a1f8 c0de a210 c0de     ................
c0dea408:	a228 c0de a258 c0de a288 c0de ffff ffff     (...X...........

c0dea418 <ux_sign_tx_flow_mainnet_payment_0_0>:
c0dea418:	a138 c0de a168 c0de a180 c0de a198 c0de     8...h...........
c0dea428:	a1b0 c0de a1c8 c0de a1e0 c0de a1f8 c0de     ................
c0dea438:	a258 c0de a288 c0de ffff ffff               X...........

c0dea444 <ux_sign_tx_flow_mainnet_payment_0_memo>:
c0dea444:	a138 c0de a168 c0de a180 c0de a198 c0de     8...h...........
c0dea454:	a1b0 c0de a1c8 c0de a1e0 c0de a1f8 c0de     ................
c0dea464:	a228 c0de a258 c0de a288 c0de ffff ffff     (...X...........

c0dea474 <ux_sign_tx_flow_mainnet_payment_valid_until_0>:
c0dea474:	a138 c0de a168 c0de a180 c0de a198 c0de     8...h...........
c0dea484:	a1b0 c0de a1c8 c0de a1e0 c0de a1f8 c0de     ................
c0dea494:	a210 c0de a258 c0de a288 c0de ffff ffff     ....X...........

c0dea4a4 <ux_sign_tx_flow_mainnet_payment_valid_until_memo>:
c0dea4a4:	a138 c0de a168 c0de a180 c0de a198 c0de     8...h...........
c0dea4b4:	a1b0 c0de a1c8 c0de a1e0 c0de a1f8 c0de     ................
c0dea4c4:	a210 c0de a228 c0de a258 c0de a288 c0de     ....(...X.......
c0dea4d4:	ffff ffff                                   ....

c0dea4d8 <ux_sign_tx_flow_mainnet_delegation_0_0>:
c0dea4d8:	a138 c0de a168 c0de a180 c0de a198 c0de     8...h...........
c0dea4e8:	a1c8 c0de a1f8 c0de a258 c0de a288 c0de     ........X.......
c0dea4f8:	ffff ffff                                   ....

c0dea4fc <ux_sign_tx_flow_mainnet_delegation_0_memo>:
c0dea4fc:	a138 c0de a168 c0de a180 c0de a198 c0de     8...h...........
c0dea50c:	a1c8 c0de a1f8 c0de a228 c0de a258 c0de     ........(...X...
c0dea51c:	a288 c0de ffff ffff                         ........

c0dea524 <ux_sign_tx_flow_mainnet_delegation_valid_until_0>:
c0dea524:	a138 c0de a168 c0de a180 c0de a198 c0de     8...h...........
c0dea534:	a1c8 c0de a1f8 c0de a210 c0de a258 c0de     ............X...
c0dea544:	a288 c0de ffff ffff                         ........

c0dea54c <ux_sign_tx_flow_mainnet_delegation_valid_until_memo>:
c0dea54c:	a138 c0de a168 c0de a180 c0de a198 c0de     8...h...........
c0dea55c:	a1c8 c0de a1f8 c0de a210 c0de a228 c0de     ............(...
c0dea56c:	a258 c0de a288 c0de ffff ffff 6544 656c     X...........Dele
c0dea57c:	6167 6974 6e6f 0000 6544 656c 6167 6574     gation..Delegate
c0dea58c:	0000 0000 6552 6563 7669 7265 0000 0000     ....Receiver....
c0dea59c:	6544 656c 6167 6f74 0072 0000               Delegator...

c0dea5a8 <ux_sign_tx_flow>:
c0dea5a8:	a298 c0de a2c8 c0de a2fc c0de a330 c0de     ............0...
c0dea5b8:	a368 c0de a390 c0de a3bc c0de a3e8 c0de     h...............
c0dea5c8:	a418 c0de a444 c0de a474 c0de a4a4 c0de     ....D...t.......
c0dea5d8:	a4d8 c0de a4fc c0de a524 c0de a54c c0de     ........$...L...

c0dea5e8 <.Lstr>:
c0dea5e8:	6150 6d79 6e65 0074 0000 0000               Payment.....

c0dea5f4 <.Lstr.20>:
c0dea5f4:	6553 646e 7265 0000 0000                     Sender.....

c0dea5ff <SW_INTERNAL>:
c0dea5ff:	006f                                        o.

c0dea601 <SW_BUSY>:
c0dea601:	0190                                        ..

c0dea603 <SW_WRONG_LENGTH>:
c0dea603:	0067                                        g.

c0dea605 <SW_PROOF_OF_PRESENCE_REQUIRED>:
c0dea605:	8569                                        i.

c0dea607 <.L.str>:
c0dea607:	d0f1 0000 0000                              ......

c0dea60d <SW_BAD_KEY_HANDLE>:
c0dea60d:	806a                                        j.

c0dea60f <U2F_VERSION>:
c0dea60f:	3255 5f46 3256 0090                         U2F_V2..

c0dea617 <INFO>:
c0dea617:	0901 0090                                   ....

c0dea61b <SW_UNKNOWN_CLASS>:
c0dea61b:	006e                                        n.

c0dea61d <SW_UNKNOWN_INSTRUCTION>:
c0dea61d:	006d                                         m..

c0dea620 <USBD_HID_Desc_fido>:
c0dea620:	2109 0111 0121 2222 0000 0000               .!..!.""....

c0dea62c <USBD_HID_Desc>:
c0dea62c:	2109 0111 0100 2222                          .!...."".

c0dea635 <HID_ReportDesc_fido>:
c0dea635:	d006 09f1 a101 0901 1503 2600 00ff 0875     ...........&..u.
c0dea645:	4095 0881 0409 0015 ff26 7500 9508 9140     .@......&..u..@.
c0dea655:	c008                                        ..

c0dea657 <HID_ReportDesc>:
c0dea657:	a006 09ff a101 0901 1503 2600 00ff 0875     ...........&..u.
c0dea667:	4095 0881 0409 0015 ff26 7500 9508 9140     .@......&..u..@.
c0dea677:	c008                                        ..

c0dea679 <C_webusb_url_descriptor>:
c0dea679:	0317 7701 7777 6c2e 6465 6567 7772 6c61     ...www.ledgerwal
c0dea689:	656c 2e74 6f63                               let.com

c0dea690 <C_usb_bos>:
c0dea690:	0f05 0039 1802 0510 3800 08b6 a934 a009     ..9......8..4...
c0dea6a0:	8b47 a0fd 8876 b615 0065 1e01 1c01 0510     G...v...e.......
c0dea6b0:	df00 dd60 89d8 c745 9c4c 65d2 9e9d 8a64     ..`...E.L..e..d.
c0dea6c0:	009f 0300 b206 7700 0000 0000               .......w....

c0dea6cc <HID_Desc>:
c0dea6cc:	54fd c0de 550d c0de 551d c0de 552d c0de     .T...U...U..-U..
c0dea6dc:	553d c0de 554d c0de 555d c0de 556d c0de     =U..MU..]U..mU..

c0dea6ec <C_winusb_string_descriptor>:
c0dea6ec:	0312 004d 0053 0046 0054 0031 0030 0030     ..M.S.F.T.1.0.0.
c0dea6fc:	0077                                        w.

c0dea6fe <C_winusb_guid>:
c0dea6fe:	0092 0000 0100 0005 0001 0088 0000 0007     ................
c0dea70e:	0000 002a 0044 0065 0076 0069 0063 0065     ..*.D.e.v.i.c.e.
c0dea71e:	0049 006e 0074 0065 0072 0066 0061 0063     I.n.t.e.r.f.a.c.
c0dea72e:	0065 0047 0055 0049 0044 0073 0000 0050     e.G.U.I.D.s...P.
c0dea73e:	0000 007b 0031 0033 0064 0036 0033 0034     ..{.1.3.d.6.3.4.
c0dea74e:	0030 0030 002d 0032 0043 0039 0037 002d     0.0.-.2.C.9.7.-.
c0dea75e:	0030 0030 0030 0034 002d 0030 0030 0030     0.0.0.4.-.0.0.0.
c0dea76e:	0030 002d 0034 0063 0036 0035 0036 0034     0.-.4.c.6.5.6.4.
c0dea77e:	0036 0037 0036 0035 0037 0032 007d 0000     6.7.6.5.7.2.}...
	...

c0dea790 <C_winusb_request_descriptor>:
c0dea790:	000a 0000 0000 0603 00b2 0008 0001 0000     ................
c0dea7a0:	00a8 0008 0002 0002 00a0 0014 0003 4957     ..............WI
c0dea7b0:	554e 4253 0000 0000 0000 0000 0000 0084     NUSB............
c0dea7c0:	0004 0007 002a 0044 0065 0076 0069 0063     ....*.D.e.v.i.c.
c0dea7d0:	0065 0049 006e 0074 0065 0072 0066 0061     e.I.n.t.e.r.f.a.
c0dea7e0:	0063 0065 0047 0055 0049 0044 0073 0000     c.e.G.U.I.D.s...
c0dea7f0:	0050 007b 0043 0045 0038 0030 0039 0032     P.{.C.E.8.0.9.2.
c0dea800:	0036 0034 002d 0034 0042 0032 0034 002d     6.4.-.4.B.2.4.-.
c0dea810:	0034 0045 0038 0031 002d 0041 0038 0042     4.E.8.1.-.A.8.B.
c0dea820:	0032 002d 0035 0037 0045 0044 0030 0031     2.-.5.7.E.D.0.1.
c0dea830:	0044 0035 0038 0030 0045 0031 007d 0000     D.5.8.0.E.1.}...
c0dea840:	0000 0000                                   ....

c0dea844 <USBD_HID>:
c0dea844:	52ab c0de 52d3 c0de 520f c0de 0000 0000     .R...R...R......
c0dea854:	0000 0000 53e5 c0de 5401 c0de 0000 0000     .....S...T......
	...
c0dea86c:	56c9 c0de 56c9 c0de 56c9 c0de 56d9 c0de     .V...V...V...V..

c0dea87c <USBD_U2F>:
c0dea87c:	536d c0de 52d3 c0de 520f c0de 0000 0000     mS...R...R......
c0dea88c:	0000 0000 5395 c0de 53b1 c0de 0000 0000     .....S...S......
	...
c0dea8a4:	56c9 c0de 56c9 c0de 56c9 c0de 56d9 c0de     .V...V...V...V..

c0dea8b4 <USBD_WEBUSB>:
c0dea8b4:	5459 c0de 5481 c0de 5485 c0de 0000 0000     YT...T...T......
c0dea8c4:	0000 0000 5489 c0de 54a5 c0de 0000 0000     .....T...T......
	...
c0dea8dc:	56c9 c0de 56c9 c0de 56c9 c0de 56d9 c0de     .V...V...V...V..

c0dea8ec <USBD_DeviceDesc>:
c0dea8ec:	0112 0210 0000 4000 2c97 5015 0201 0201     .......@.,.P....
c0dea8fc:	0103                                        ..

c0dea8fe <USBD_LangIDDesc>:
c0dea8fe:	0304 0409                                   ....

c0dea902 <USBD_MANUFACTURER_STRING>:
c0dea902:	030e 004c 0065 0064 0067 0065 0072          ..L.e.d.g.e.r.

c0dea910 <USBD_PRODUCT_FS_STRING>:
c0dea910:	0318 004e 0061 006e 006f 0020 0053 0020     ..N.a.n.o. .S. .
c0dea920:	0050 006c 0075 0073                         P.l.u.s.

c0dea928 <USB_SERIAL_STRING>:
c0dea928:	030a 0030 0030 0030 0031                    ..0.0.0.1.

c0dea932 <C_winusb_wcid>:
c0dea932:	0028 0000 0100 0004 0001 0000 0000 0000     (...............
c0dea942:	0102 4957 554e 4253 0000 0000 0000 0000     ..WINUSB........
	...

c0dea95c <USBD_CfgDesc>:
c0dea95c:	0209 0060 0103 c002 0932 0004 0200 0003     ..`.....2.......
c0dea96c:	0200 2109 0111 0100 2222 0700 8205 4003     ...!...."".....@
c0dea97c:	0100 0507 0302 0040 0901 0104 0200 0103     ......@.........
c0dea98c:	0201 2109 0111 0121 2222 0700 8105 4003     ...!..!."".....@
c0dea99c:	0100 0507 0301 0040 0901 0204 0200 ffff     ......@.........
c0dea9ac:	02ff 0507 0383 0040 0701 0305 4003 0100     ......@......@..

c0dea9bc <USBD_DeviceQualifierDesc>:
c0dea9bc:	060a 0200 0000 4000 0001                    .......@..

c0dea9c6 <B58_ALPHABET>:
c0dea9c6:	3231 3433 3635 3837 4139 4342 4544 4746     123456789ABCDEFG
c0dea9d6:	4a48 4c4b 4e4d 5150 5352 5554 5756 5958     HJKLMNPQRSTUVWXY
c0dea9e6:	615a 6362 6564 6766 6968 6b6a 6e6d 706f     Zabcdefghijkmnop
c0dea9f6:	7271 7473 7675 7877 7a79                    qrstuvwxyz

c0deaa00 <BASE58_TABLE>:
c0deaa00:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
c0deaa10:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
c0deaa20:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
c0deaa30:	00ff 0201 0403 0605 0807 ffff ffff ffff     ................
c0deaa40:	09ff 0b0a 0d0c 0f0e ff10 1211 1413 ff15     ................
c0deaa50:	1716 1918 1b1a 1d1c 1f1e ff20 ffff ffff     .......... .....
c0deaa60:	21ff 2322 2524 2726 2928 2b2a 2cff 2e2d     .!"#$%&'()*+.,-.
c0deaa70:	302f 3231 3433 3635 3837 ff39 ffff ffff     /0123456789.....

c0deaa80 <ux_layout_bb_elements>:
c0deaa80:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0deaa90:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0deaaa0:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0deaab0:	ffff 00ff 0000 0000 0000 0000 85dc c0de     ................
c0deaac0:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0deaad0:	ffff 00ff 0000 0000 0000 0000 85f4 c0de     ................
c0deaae0:	1007 0006 001d 0074 0020 0000 0000 0000     ......t. .......
c0deaaf0:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0deab00:	1107 0006 002b 0074 0020 0000 0000 0000     ....+.t. .......
c0deab10:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0deab20 <ux_layout_paging_elements>:
c0deab20:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0deab30:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0deab40:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0deab50:	ffff 00ff 0000 0000 0000 0000 85dc c0de     ................
c0deab60:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0deab70:	ffff 00ff 0000 0000 0000 0000 85f4 c0de     ................
c0deab80:	1007 0000 000f 0080 000c 0000 0000 0000     ................
c0deab90:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0deaba0:	1107 0007 001d 0072 000c 0000 0000 0000     ......r.........
c0deabb0:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0deabc0:	1207 0007 002b 0072 000c 0000 0000 0000     ....+.r.........
c0deabd0:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0deabe0:	1307 0007 0039 0072 000c 0000 0000 0000     ....9.r.........
c0deabf0:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................

c0deac00 <ux_layout_pb_elements>:
c0deac00:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0deac10:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0deac20:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0deac30:	ffff 00ff 0000 0000 0000 0000 85dc c0de     ................
c0deac40:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0deac50:	ffff 00ff 0000 0000 0000 0000 85f4 c0de     ................
c0deac60:	1005 0039 0011 000e 000e 0000 0000 0000     ..9.............
c0deac70:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0deac80:	1107 0000 002c 0080 0020 0000 0000 0000     ....,... .......
c0deac90:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0deaca0 <ux_layout_pbb_elements>:
c0deaca0:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0deacb0:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0deacc0:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0deacd0:	ffff 00ff 0000 0000 0000 0000 85dc c0de     ................
c0deace0:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0deacf0:	ffff 00ff 0000 0000 0000 0000 85f4 c0de     ................
c0dead00:	0f05 0039 000a 000e 000e 0000 0000 0000     ..9.............
c0dead10:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0dead20:	1007 0006 0025 0074 0020 0000 0000 0000     ....%.t. .......
c0dead30:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0dead40:	1107 0006 0033 0074 0020 0000 0000 0000     ....3.t. .......
c0dead50:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0dead60 <_etext>:
	...

c0deae00 <N_storage_real>:
	...
