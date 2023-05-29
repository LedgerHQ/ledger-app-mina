
build/nanox/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b5b0      	push	{r4, r5, r7, lr}
c0de0002:	b08c      	sub	sp, #48	; 0x30
c0de0004:	b662      	cpsie	i
c0de0006:	f003 fe29 	bl	c0de3c5c <os_boot>
c0de000a:	4d28      	ldr	r5, [pc, #160]	; (c0de00ac <main+0xac>)
c0de000c:	4648      	mov	r0, r9
c0de000e:	1940      	adds	r0, r0, r5
c0de0010:	2145      	movs	r1, #69	; 0x45
c0de0012:	0089      	lsls	r1, r1, #2
c0de0014:	f008 fca2 	bl	c0de895c <__aeabi_memclr>
c0de0018:	f008 f9de 	bl	c0de83d8 <ux_stack_push>
c0de001c:	466c      	mov	r4, sp
c0de001e:	4620      	mov	r0, r4
c0de0020:	f008 fdea 	bl	c0de8bf8 <setjmp>
c0de0024:	85a0      	strh	r0, [r4, #44]	; 0x2c
c0de0026:	b280      	uxth	r0, r0
c0de0028:	2805      	cmp	r0, #5
c0de002a:	d109      	bne.n	c0de0040 <main+0x40>
c0de002c:	4668      	mov	r0, sp
c0de002e:	2100      	movs	r1, #0
c0de0030:	8581      	strh	r1, [r0, #44]	; 0x2c
c0de0032:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0034:	f005 fb3c 	bl	c0de56b0 <try_context_set>
c0de0038:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de003a:	f005 fb39 	bl	c0de56b0 <try_context_set>
c0de003e:	e7e5      	b.n	c0de000c <main+0xc>
c0de0040:	2800      	cmp	r0, #0
c0de0042:	d00d      	beq.n	c0de0060 <main+0x60>
c0de0044:	4668      	mov	r0, sp
c0de0046:	2400      	movs	r4, #0
c0de0048:	8584      	strh	r4, [r0, #44]	; 0x2c
c0de004a:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de004c:	f005 fb30 	bl	c0de56b0 <try_context_set>
c0de0050:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0052:	f005 fb2d 	bl	c0de56b0 <try_context_set>
c0de0056:	f003 fdaf 	bl	c0de3bb8 <app_exit>
c0de005a:	4620      	mov	r0, r4
c0de005c:	b00c      	add	sp, #48	; 0x30
c0de005e:	bdb0      	pop	{r4, r5, r7, pc}
c0de0060:	4668      	mov	r0, sp
c0de0062:	f005 fb25 	bl	c0de56b0 <try_context_set>
c0de0066:	900a      	str	r0, [sp, #40]	; 0x28
c0de0068:	f003 ff6a 	bl	c0de3f40 <io_seproxyhal_init>
c0de006c:	f003 fdc4 	bl	c0de3bf8 <nv_app_state_init>
c0de0070:	2400      	movs	r4, #0
c0de0072:	4620      	mov	r0, r4
c0de0074:	f007 f876 	bl	c0de7164 <USB_power>
c0de0078:	2501      	movs	r5, #1
c0de007a:	4628      	mov	r0, r5
c0de007c:	f007 f872 	bl	c0de7164 <USB_power>
c0de0080:	f003 fdd8 	bl	c0de3c34 <ui_idle>
c0de0084:	2006      	movs	r0, #6
c0de0086:	4621      	mov	r1, r4
c0de0088:	4622      	mov	r2, r4
c0de008a:	f005 fabf 	bl	c0de560c <os_setting_get>
c0de008e:	4908      	ldr	r1, [pc, #32]	; (c0de00b0 <main+0xb0>)
c0de0090:	464a      	mov	r2, r9
c0de0092:	1851      	adds	r1, r2, r1
c0de0094:	6208      	str	r0, [r1, #32]
c0de0096:	4620      	mov	r0, r4
c0de0098:	4621      	mov	r1, r4
c0de009a:	f002 fe6d 	bl	c0de2d78 <BLE_power>
c0de009e:	4628      	mov	r0, r5
c0de00a0:	4621      	mov	r1, r4
c0de00a2:	f002 fe69 	bl	c0de2d78 <BLE_power>
c0de00a6:	f003 f93d 	bl	c0de3324 <app_main>
c0de00aa:	46c0      	nop			; (mov r8, r8)
c0de00ac:	0000005c 	.word	0x0000005c
c0de00b0:	00000684 	.word	0x00000684

c0de00b4 <bagl_draw_with_context>:
c0de00b4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de00b6:	b097      	sub	sp, #92	; 0x5c
c0de00b8:	4615      	mov	r5, r2
c0de00ba:	9116      	str	r1, [sp, #88]	; 0x58
c0de00bc:	4604      	mov	r4, r0
c0de00be:	7801      	ldrb	r1, [r0, #0]
c0de00c0:	207f      	movs	r0, #127	; 0x7f
c0de00c2:	910e      	str	r1, [sp, #56]	; 0x38
c0de00c4:	4008      	ands	r0, r1
c0de00c6:	2100      	movs	r1, #0
c0de00c8:	9015      	str	r0, [sp, #84]	; 0x54
c0de00ca:	2805      	cmp	r0, #5
c0de00cc:	460f      	mov	r7, r1
c0de00ce:	460b      	mov	r3, r1
c0de00d0:	460a      	mov	r2, r1
c0de00d2:	460e      	mov	r6, r1
c0de00d4:	9114      	str	r1, [sp, #80]	; 0x50
c0de00d6:	9511      	str	r5, [sp, #68]	; 0x44
c0de00d8:	d100      	bne.n	c0de00dc <bagl_draw_with_context+0x28>
c0de00da:	e0db      	b.n	c0de0294 <bagl_draw_with_context+0x1e0>
c0de00dc:	8b20      	ldrh	r0, [r4, #24]
c0de00de:	f000 fad1 	bl	c0de0684 <bagl_get_font>
c0de00e2:	2800      	cmp	r0, #0
c0de00e4:	d100      	bne.n	c0de00e8 <bagl_draw_with_context+0x34>
c0de00e6:	e095      	b.n	c0de0214 <bagl_draw_with_context+0x160>
c0de00e8:	8923      	ldrh	r3, [r4, #8]
c0de00ea:	7982      	ldrb	r2, [r0, #6]
c0de00ec:	2100      	movs	r1, #0
c0de00ee:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de00f0:	2800      	cmp	r0, #0
c0de00f2:	d100      	bne.n	c0de00f6 <bagl_draw_with_context+0x42>
c0de00f4:	e093      	b.n	c0de021e <bagl_draw_with_context+0x16a>
c0de00f6:	2d00      	cmp	r5, #0
c0de00f8:	d100      	bne.n	c0de00fc <bagl_draw_with_context+0x48>
c0de00fa:	e090      	b.n	c0de021e <bagl_draw_with_context+0x16a>
c0de00fc:	9310      	str	r3, [sp, #64]	; 0x40
c0de00fe:	920f      	str	r2, [sp, #60]	; 0x3c
c0de0100:	8b20      	ldrh	r0, [r4, #24]
c0de0102:	88e1      	ldrh	r1, [r4, #6]
c0de0104:	2700      	movs	r7, #0
c0de0106:	9705      	str	r7, [sp, #20]
c0de0108:	b2ea      	uxtb	r2, r5
c0de010a:	9204      	str	r2, [sp, #16]
c0de010c:	9a16      	ldr	r2, [sp, #88]	; 0x58
c0de010e:	9203      	str	r2, [sp, #12]
c0de0110:	9702      	str	r7, [sp, #8]
c0de0112:	4bec      	ldr	r3, [pc, #944]	; (c0de04c4 <bagl_draw_with_context+0x410>)
c0de0114:	9300      	str	r3, [sp, #0]
c0de0116:	3164      	adds	r1, #100	; 0x64
c0de0118:	b289      	uxth	r1, r1
c0de011a:	9101      	str	r1, [sp, #4]
c0de011c:	4639      	mov	r1, r7
c0de011e:	463a      	mov	r2, r7
c0de0120:	f000 faea 	bl	c0de06f8 <bagl_draw_string>
c0de0124:	b280      	uxth	r0, r0
c0de0126:	88e1      	ldrh	r1, [r4, #6]
c0de0128:	2d05      	cmp	r5, #5
c0de012a:	9712      	str	r7, [sp, #72]	; 0x48
c0de012c:	900d      	str	r0, [sp, #52]	; 0x34
c0de012e:	d37a      	bcc.n	c0de0226 <bagl_draw_with_context+0x172>
c0de0130:	4281      	cmp	r1, r0
c0de0132:	d278      	bcs.n	c0de0226 <bagl_draw_with_context+0x172>
c0de0134:	8b20      	ldrh	r0, [r4, #24]
c0de0136:	9014      	str	r0, [sp, #80]	; 0x50
c0de0138:	2600      	movs	r6, #0
c0de013a:	2003      	movs	r0, #3
c0de013c:	4ae2      	ldr	r2, [pc, #904]	; (c0de04c8 <bagl_draw_with_context+0x414>)
c0de013e:	447a      	add	r2, pc
c0de0140:	2364      	movs	r3, #100	; 0x64
c0de0142:	49e0      	ldr	r1, [pc, #896]	; (c0de04c4 <bagl_draw_with_context+0x410>)
c0de0144:	af00      	add	r7, sp, #0
c0de0146:	c74a      	stmia	r7!, {r1, r3, r6}
c0de0148:	9203      	str	r2, [sp, #12]
c0de014a:	9004      	str	r0, [sp, #16]
c0de014c:	9605      	str	r6, [sp, #20]
c0de014e:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de0150:	4631      	mov	r1, r6
c0de0152:	4632      	mov	r2, r6
c0de0154:	4bdb      	ldr	r3, [pc, #876]	; (c0de04c4 <bagl_draw_with_context+0x410>)
c0de0156:	f000 facf 	bl	c0de06f8 <bagl_draw_string>
c0de015a:	086b      	lsrs	r3, r5, #1
c0de015c:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de015e:	18ca      	adds	r2, r1, r3
c0de0160:	88e1      	ldrh	r1, [r4, #6]
c0de0162:	2b00      	cmp	r3, #0
c0de0164:	d061      	beq.n	c0de022a <bagl_draw_with_context+0x176>
c0de0166:	9014      	str	r0, [sp, #80]	; 0x50
c0de0168:	4608      	mov	r0, r1
c0de016a:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de016c:	4281      	cmp	r1, r0
c0de016e:	4601      	mov	r1, r0
c0de0170:	d95b      	bls.n	c0de022a <bagl_draw_with_context+0x176>
c0de0172:	1aed      	subs	r5, r5, r3
c0de0174:	d059      	beq.n	c0de022a <bagl_draw_with_context+0x176>
c0de0176:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de0178:	b280      	uxth	r0, r0
c0de017a:	900c      	str	r0, [sp, #48]	; 0x30
c0de017c:	9614      	str	r6, [sp, #80]	; 0x50
c0de017e:	4617      	mov	r7, r2
c0de0180:	8b20      	ldrh	r0, [r4, #24]
c0de0182:	9313      	str	r3, [sp, #76]	; 0x4c
c0de0184:	b2da      	uxtb	r2, r3
c0de0186:	4bcf      	ldr	r3, [pc, #828]	; (c0de04c4 <bagl_draw_with_context+0x410>)
c0de0188:	9300      	str	r3, [sp, #0]
c0de018a:	9101      	str	r1, [sp, #4]
c0de018c:	9602      	str	r6, [sp, #8]
c0de018e:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de0190:	9103      	str	r1, [sp, #12]
c0de0192:	9204      	str	r2, [sp, #16]
c0de0194:	9605      	str	r6, [sp, #20]
c0de0196:	4631      	mov	r1, r6
c0de0198:	4632      	mov	r2, r6
c0de019a:	f000 faad 	bl	c0de06f8 <bagl_draw_string>
c0de019e:	8b21      	ldrh	r1, [r4, #24]
c0de01a0:	88e2      	ldrh	r2, [r4, #6]
c0de01a2:	b2eb      	uxtb	r3, r5
c0de01a4:	4dc7      	ldr	r5, [pc, #796]	; (c0de04c4 <bagl_draw_with_context+0x410>)
c0de01a6:	9500      	str	r5, [sp, #0]
c0de01a8:	9201      	str	r2, [sp, #4]
c0de01aa:	9602      	str	r6, [sp, #8]
c0de01ac:	463d      	mov	r5, r7
c0de01ae:	9703      	str	r7, [sp, #12]
c0de01b0:	9304      	str	r3, [sp, #16]
c0de01b2:	9605      	str	r6, [sp, #20]
c0de01b4:	b287      	uxth	r7, r0
c0de01b6:	4608      	mov	r0, r1
c0de01b8:	4631      	mov	r1, r6
c0de01ba:	4632      	mov	r2, r6
c0de01bc:	4bc1      	ldr	r3, [pc, #772]	; (c0de04c4 <bagl_draw_with_context+0x410>)
c0de01be:	f000 fa9b 	bl	c0de06f8 <bagl_draw_string>
c0de01c2:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de01c4:	1879      	adds	r1, r7, r1
c0de01c6:	b280      	uxth	r0, r0
c0de01c8:	1808      	adds	r0, r1, r0
c0de01ca:	88e1      	ldrh	r1, [r4, #6]
c0de01cc:	4288      	cmp	r0, r1
c0de01ce:	900d      	str	r0, [sp, #52]	; 0x34
c0de01d0:	d800      	bhi.n	c0de01d4 <bagl_draw_with_context+0x120>
c0de01d2:	e252      	b.n	c0de067a <bagl_draw_with_context+0x5c6>
c0de01d4:	9a14      	ldr	r2, [sp, #80]	; 0x50
c0de01d6:	2a01      	cmp	r2, #1
c0de01d8:	d005      	beq.n	c0de01e6 <bagl_draw_with_context+0x132>
c0de01da:	2a00      	cmp	r2, #0
c0de01dc:	d106      	bne.n	c0de01ec <bagl_draw_with_context+0x138>
c0de01de:	9b13      	ldr	r3, [sp, #76]	; 0x4c
c0de01e0:	1e5b      	subs	r3, r3, #1
c0de01e2:	462f      	mov	r7, r5
c0de01e4:	e004      	b.n	c0de01f0 <bagl_draw_with_context+0x13c>
c0de01e6:	462f      	mov	r7, r5
c0de01e8:	1c6f      	adds	r7, r5, #1
c0de01ea:	e000      	b.n	c0de01ee <bagl_draw_with_context+0x13a>
c0de01ec:	462f      	mov	r7, r5
c0de01ee:	9b13      	ldr	r3, [sp, #76]	; 0x4c
c0de01f0:	2b00      	cmp	r3, #0
c0de01f2:	d01b      	beq.n	c0de022c <bagl_draw_with_context+0x178>
c0de01f4:	4288      	cmp	r0, r1
c0de01f6:	d919      	bls.n	c0de022c <bagl_draw_with_context+0x178>
c0de01f8:	2001      	movs	r0, #1
c0de01fa:	4390      	bics	r0, r2
c0de01fc:	9a16      	ldr	r2, [sp, #88]	; 0x58
c0de01fe:	1bd2      	subs	r2, r2, r7
c0de0200:	460d      	mov	r5, r1
c0de0202:	4619      	mov	r1, r3
c0de0204:	9b11      	ldr	r3, [sp, #68]	; 0x44
c0de0206:	18d2      	adds	r2, r2, r3
c0de0208:	460b      	mov	r3, r1
c0de020a:	4629      	mov	r1, r5
c0de020c:	4615      	mov	r5, r2
c0de020e:	9014      	str	r0, [sp, #80]	; 0x50
c0de0210:	d1b6      	bne.n	c0de0180 <bagl_draw_with_context+0xcc>
c0de0212:	e00b      	b.n	c0de022c <bagl_draw_with_context+0x178>
c0de0214:	2100      	movs	r1, #0
c0de0216:	460f      	mov	r7, r1
c0de0218:	460b      	mov	r3, r1
c0de021a:	460a      	mov	r2, r1
c0de021c:	e000      	b.n	c0de0220 <bagl_draw_with_context+0x16c>
c0de021e:	460f      	mov	r7, r1
c0de0220:	460e      	mov	r6, r1
c0de0222:	9114      	str	r1, [sp, #80]	; 0x50
c0de0224:	e036      	b.n	c0de0294 <bagl_draw_with_context+0x1e0>
c0de0226:	462b      	mov	r3, r5
c0de0228:	e000      	b.n	c0de022c <bagl_draw_with_context+0x178>
c0de022a:	4617      	mov	r7, r2
c0de022c:	9313      	str	r3, [sp, #76]	; 0x4c
c0de022e:	2303      	movs	r3, #3
c0de0230:	039d      	lsls	r5, r3, #14
c0de0232:	8b20      	ldrh	r0, [r4, #24]
c0de0234:	4005      	ands	r5, r0
c0de0236:	2201      	movs	r2, #1
c0de0238:	03d6      	lsls	r6, r2, #15
c0de023a:	42b5      	cmp	r5, r6
c0de023c:	d00b      	beq.n	c0de0256 <bagl_draw_with_context+0x1a2>
c0de023e:	0396      	lsls	r6, r2, #14
c0de0240:	42b5      	cmp	r5, r6
c0de0242:	9e12      	ldr	r6, [sp, #72]	; 0x48
c0de0244:	9614      	str	r6, [sp, #80]	; 0x50
c0de0246:	d10f      	bne.n	c0de0268 <bagl_draw_with_context+0x1b4>
c0de0248:	460d      	mov	r5, r1
c0de024a:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de024c:	1a6d      	subs	r5, r5, r1
c0de024e:	17e9      	asrs	r1, r5, #31
c0de0250:	438d      	bics	r5, r1
c0de0252:	9514      	str	r5, [sp, #80]	; 0x50
c0de0254:	e008      	b.n	c0de0268 <bagl_draw_with_context+0x1b4>
c0de0256:	460e      	mov	r6, r1
c0de0258:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de025a:	084d      	lsrs	r5, r1, #1
c0de025c:	0871      	lsrs	r1, r6, #1
c0de025e:	1b4d      	subs	r5, r1, r5
c0de0260:	17e9      	asrs	r1, r5, #31
c0de0262:	438d      	bics	r5, r1
c0de0264:	9514      	str	r5, [sp, #80]	; 0x50
c0de0266:	9e12      	ldr	r6, [sp, #72]	; 0x48
c0de0268:	0319      	lsls	r1, r3, #12
c0de026a:	4008      	ands	r0, r1
c0de026c:	0351      	lsls	r1, r2, #13
c0de026e:	4288      	cmp	r0, r1
c0de0270:	d006      	beq.n	c0de0280 <bagl_draw_with_context+0x1cc>
c0de0272:	0311      	lsls	r1, r2, #12
c0de0274:	4288      	cmp	r0, r1
c0de0276:	d10a      	bne.n	c0de028e <bagl_draw_with_context+0x1da>
c0de0278:	8920      	ldrh	r0, [r4, #8]
c0de027a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de027c:	1a86      	subs	r6, r0, r2
c0de027e:	e007      	b.n	c0de0290 <bagl_draw_with_context+0x1dc>
c0de0280:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de0282:	0850      	lsrs	r0, r2, #1
c0de0284:	43c0      	mvns	r0, r0
c0de0286:	8921      	ldrh	r1, [r4, #8]
c0de0288:	0849      	lsrs	r1, r1, #1
c0de028a:	180e      	adds	r6, r1, r0
c0de028c:	e000      	b.n	c0de0290 <bagl_draw_with_context+0x1dc>
c0de028e:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de0290:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0de0292:	9b10      	ldr	r3, [sp, #64]	; 0x40
c0de0294:	9310      	str	r3, [sp, #64]	; 0x40
c0de0296:	9113      	str	r1, [sp, #76]	; 0x4c
c0de0298:	970d      	str	r7, [sp, #52]	; 0x34
c0de029a:	920f      	str	r2, [sp, #60]	; 0x3c
c0de029c:	9612      	str	r6, [sp, #72]	; 0x48
c0de029e:	88e3      	ldrh	r3, [r4, #6]
c0de02a0:	0858      	lsrs	r0, r3, #1
c0de02a2:	8927      	ldrh	r7, [r4, #8]
c0de02a4:	0879      	lsrs	r1, r7, #1
c0de02a6:	4288      	cmp	r0, r1
c0de02a8:	4602      	mov	r2, r0
c0de02aa:	d300      	bcc.n	c0de02ae <bagl_draw_with_context+0x1fa>
c0de02ac:	460a      	mov	r2, r1
c0de02ae:	7ae6      	ldrb	r6, [r4, #11]
c0de02b0:	42b2      	cmp	r2, r6
c0de02b2:	4632      	mov	r2, r6
c0de02b4:	9d15      	ldr	r5, [sp, #84]	; 0x54
c0de02b6:	d804      	bhi.n	c0de02c2 <bagl_draw_with_context+0x20e>
c0de02b8:	4288      	cmp	r0, r1
c0de02ba:	d201      	bcs.n	c0de02c0 <bagl_draw_with_context+0x20c>
c0de02bc:	4602      	mov	r2, r0
c0de02be:	e000      	b.n	c0de02c2 <bagl_draw_with_context+0x20e>
c0de02c0:	460a      	mov	r2, r1
c0de02c2:	1e68      	subs	r0, r5, #1
c0de02c4:	2804      	cmp	r0, #4
c0de02c6:	d304      	bcc.n	c0de02d2 <bagl_draw_with_context+0x21e>
c0de02c8:	2d06      	cmp	r5, #6
c0de02ca:	d04a      	beq.n	c0de0362 <bagl_draw_with_context+0x2ae>
c0de02cc:	2d07      	cmp	r5, #7
c0de02ce:	d000      	beq.n	c0de02d2 <bagl_draw_with_context+0x21e>
c0de02d0:	e0cc      	b.n	c0de046c <bagl_draw_with_context+0x3b8>
c0de02d2:	2d04      	cmp	r5, #4
c0de02d4:	d10a      	bne.n	c0de02ec <bagl_draw_with_context+0x238>
c0de02d6:	2e00      	cmp	r6, #0
c0de02d8:	d108      	bne.n	c0de02ec <bagl_draw_with_context+0x238>
c0de02da:	2004      	movs	r0, #4
c0de02dc:	5e22      	ldrsh	r2, [r4, r0]
c0de02de:	2002      	movs	r0, #2
c0de02e0:	5e21      	ldrsh	r1, [r4, r0]
c0de02e2:	6920      	ldr	r0, [r4, #16]
c0de02e4:	9700      	str	r7, [sp, #0]
c0de02e6:	f005 fa21 	bl	c0de572c <bagl_hal_draw_rect>
c0de02ea:	e0bf      	b.n	c0de046c <bagl_draw_with_context+0x3b8>
c0de02ec:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de02ee:	2881      	cmp	r0, #129	; 0x81
c0de02f0:	dc04      	bgt.n	c0de02fc <bagl_draw_with_context+0x248>
c0de02f2:	2802      	cmp	r0, #2
c0de02f4:	d007      	beq.n	c0de0306 <bagl_draw_with_context+0x252>
c0de02f6:	2807      	cmp	r0, #7
c0de02f8:	d005      	beq.n	c0de0306 <bagl_draw_with_context+0x252>
c0de02fa:	e0b9      	b.n	c0de0470 <bagl_draw_with_context+0x3bc>
c0de02fc:	2887      	cmp	r0, #135	; 0x87
c0de02fe:	d002      	beq.n	c0de0306 <bagl_draw_with_context+0x252>
c0de0300:	2882      	cmp	r0, #130	; 0x82
c0de0302:	d000      	beq.n	c0de0306 <bagl_draw_with_context+0x252>
c0de0304:	e0b4      	b.n	c0de0470 <bagl_draw_with_context+0x3bc>
c0de0306:	2d07      	cmp	r5, #7
c0de0308:	d000      	beq.n	c0de030c <bagl_draw_with_context+0x258>
c0de030a:	9710      	str	r7, [sp, #64]	; 0x40
c0de030c:	2002      	movs	r0, #2
c0de030e:	5e21      	ldrsh	r1, [r4, r0]
c0de0310:	2004      	movs	r0, #4
c0de0312:	5e22      	ldrsh	r2, [r4, r0]
c0de0314:	6960      	ldr	r0, [r4, #20]
c0de0316:	9e10      	ldr	r6, [sp, #64]	; 0x40
c0de0318:	9600      	str	r6, [sp, #0]
c0de031a:	2d07      	cmp	r5, #7
c0de031c:	d101      	bne.n	c0de0322 <bagl_draw_with_context+0x26e>
c0de031e:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
c0de0320:	1b52      	subs	r2, r2, r5
c0de0322:	9d11      	ldr	r5, [sp, #68]	; 0x44
c0de0324:	f005 fa02 	bl	c0de572c <bagl_hal_draw_rect>
c0de0328:	2d00      	cmp	r5, #0
c0de032a:	9915      	ldr	r1, [sp, #84]	; 0x54
c0de032c:	d100      	bne.n	c0de0330 <bagl_draw_with_context+0x27c>
c0de032e:	e09d      	b.n	c0de046c <bagl_draw_with_context+0x3b8>
c0de0330:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de0332:	2800      	cmp	r0, #0
c0de0334:	d100      	bne.n	c0de0338 <bagl_draw_with_context+0x284>
c0de0336:	e099      	b.n	c0de046c <bagl_draw_with_context+0x3b8>
c0de0338:	2904      	cmp	r1, #4
c0de033a:	d100      	bne.n	c0de033e <bagl_draw_with_context+0x28a>
c0de033c:	e096      	b.n	c0de046c <bagl_draw_with_context+0x3b8>
c0de033e:	207d      	movs	r0, #125	; 0x7d
c0de0340:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de0342:	4001      	ands	r1, r0
c0de0344:	6922      	ldr	r2, [r4, #16]
c0de0346:	6960      	ldr	r0, [r4, #20]
c0de0348:	2901      	cmp	r1, #1
c0de034a:	d122      	bne.n	c0de0392 <bagl_draw_with_context+0x2de>
c0de034c:	7b21      	ldrb	r1, [r4, #12]
c0de034e:	2901      	cmp	r1, #1
c0de0350:	4613      	mov	r3, r2
c0de0352:	d000      	beq.n	c0de0356 <bagl_draw_with_context+0x2a2>
c0de0354:	4603      	mov	r3, r0
c0de0356:	9310      	str	r3, [sp, #64]	; 0x40
c0de0358:	2901      	cmp	r1, #1
c0de035a:	d000      	beq.n	c0de035e <bagl_draw_with_context+0x2aa>
c0de035c:	4610      	mov	r0, r2
c0de035e:	900e      	str	r0, [sp, #56]	; 0x38
c0de0360:	e019      	b.n	c0de0396 <bagl_draw_with_context+0x2e2>
c0de0362:	2004      	movs	r0, #4
c0de0364:	5e20      	ldrsh	r0, [r4, r0]
c0de0366:	1982      	adds	r2, r0, r6
c0de0368:	2002      	movs	r0, #2
c0de036a:	5e20      	ldrsh	r0, [r4, r0]
c0de036c:	1981      	adds	r1, r0, r6
c0de036e:	6920      	ldr	r0, [r4, #16]
c0de0370:	7b25      	ldrb	r5, [r4, #12]
c0de0372:	2300      	movs	r3, #0
c0de0374:	2d01      	cmp	r5, #1
c0de0376:	d003      	beq.n	c0de0380 <bagl_draw_with_context+0x2cc>
c0de0378:	7aa5      	ldrb	r5, [r4, #10]
c0de037a:	42ae      	cmp	r6, r5
c0de037c:	d900      	bls.n	c0de0380 <bagl_draw_with_context+0x2cc>
c0de037e:	1b73      	subs	r3, r6, r5
c0de0380:	6964      	ldr	r4, [r4, #20]
c0de0382:	25ff      	movs	r5, #255	; 0xff
c0de0384:	9500      	str	r5, [sp, #0]
c0de0386:	9301      	str	r3, [sp, #4]
c0de0388:	9402      	str	r4, [sp, #8]
c0de038a:	4633      	mov	r3, r6
c0de038c:	f000 fa9a 	bl	c0de08c4 <bagl_draw_circle_helper>
c0de0390:	e06c      	b.n	c0de046c <bagl_draw_with_context+0x3b8>
c0de0392:	920e      	str	r2, [sp, #56]	; 0x38
c0de0394:	9010      	str	r0, [sp, #64]	; 0x40
c0de0396:	2002      	movs	r0, #2
c0de0398:	5e20      	ldrsh	r0, [r4, r0]
c0de039a:	900b      	str	r0, [sp, #44]	; 0x2c
c0de039c:	2004      	movs	r0, #4
c0de039e:	900c      	str	r0, [sp, #48]	; 0x30
c0de03a0:	5e22      	ldrsh	r2, [r4, r0]
c0de03a2:	8b20      	ldrh	r0, [r4, #24]
c0de03a4:	88e3      	ldrh	r3, [r4, #6]
c0de03a6:	8925      	ldrh	r5, [r4, #8]
c0de03a8:	2600      	movs	r6, #0
c0de03aa:	9f16      	ldr	r7, [sp, #88]	; 0x58
c0de03ac:	9703      	str	r7, [sp, #12]
c0de03ae:	9f13      	ldr	r7, [sp, #76]	; 0x4c
c0de03b0:	9704      	str	r7, [sp, #16]
c0de03b2:	9605      	str	r6, [sp, #20]
c0de03b4:	9f15      	ldr	r7, [sp, #84]	; 0x54
c0de03b6:	2f07      	cmp	r7, #7
c0de03b8:	d000      	beq.n	c0de03bc <bagl_draw_with_context+0x308>
c0de03ba:	9e12      	ldr	r6, [sp, #72]	; 0x48
c0de03bc:	1bad      	subs	r5, r5, r6
c0de03be:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de03c0:	1a5b      	subs	r3, r3, r1
c0de03c2:	9301      	str	r3, [sp, #4]
c0de03c4:	9502      	str	r5, [sp, #8]
c0de03c6:	2f07      	cmp	r7, #7
c0de03c8:	d001      	beq.n	c0de03ce <bagl_draw_with_context+0x31a>
c0de03ca:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de03cc:	e001      	b.n	c0de03d2 <bagl_draw_with_context+0x31e>
c0de03ce:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
c0de03d0:	425b      	negs	r3, r3
c0de03d2:	9f0e      	ldr	r7, [sp, #56]	; 0x38
c0de03d4:	9d10      	ldr	r5, [sp, #64]	; 0x40
c0de03d6:	9312      	str	r3, [sp, #72]	; 0x48
c0de03d8:	189a      	adds	r2, r3, r2
c0de03da:	9200      	str	r2, [sp, #0]
c0de03dc:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de03de:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
c0de03e0:	188b      	adds	r3, r1, r2
c0de03e2:	4639      	mov	r1, r7
c0de03e4:	462a      	mov	r2, r5
c0de03e6:	f000 f987 	bl	c0de06f8 <bagl_draw_string>
c0de03ea:	4602      	mov	r2, r0
c0de03ec:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de03ee:	2800      	cmp	r0, #0
c0de03f0:	d03c      	beq.n	c0de046c <bagl_draw_with_context+0x3b8>
c0de03f2:	9510      	str	r5, [sp, #64]	; 0x40
c0de03f4:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de03f6:	920f      	str	r2, [sp, #60]	; 0x3c
c0de03f8:	5e22      	ldrsh	r2, [r4, r0]
c0de03fa:	8b20      	ldrh	r0, [r4, #24]
c0de03fc:	9013      	str	r0, [sp, #76]	; 0x4c
c0de03fe:	88e3      	ldrh	r3, [r4, #6]
c0de0400:	970e      	str	r7, [sp, #56]	; 0x38
c0de0402:	8920      	ldrh	r0, [r4, #8]
c0de0404:	2100      	movs	r1, #0
c0de0406:	9115      	str	r1, [sp, #84]	; 0x54
c0de0408:	2503      	movs	r5, #3
c0de040a:	950b      	str	r5, [sp, #44]	; 0x2c
c0de040c:	4d9c      	ldr	r5, [pc, #624]	; (c0de0680 <bagl_draw_with_context+0x5cc>)
c0de040e:	447d      	add	r5, pc
c0de0410:	950a      	str	r5, [sp, #40]	; 0x28
c0de0412:	1b85      	subs	r5, r0, r6
c0de0414:	9814      	ldr	r0, [sp, #80]	; 0x50
c0de0416:	1a1b      	subs	r3, r3, r0
c0de0418:	9812      	ldr	r0, [sp, #72]	; 0x48
c0de041a:	1882      	adds	r2, r0, r2
c0de041c:	a800      	add	r0, sp, #0
c0de041e:	c02c      	stmia	r0!, {r2, r3, r5}
c0de0420:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0422:	9003      	str	r0, [sp, #12]
c0de0424:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0426:	9004      	str	r0, [sp, #16]
c0de0428:	9105      	str	r1, [sp, #20]
c0de042a:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de042c:	b283      	uxth	r3, r0
c0de042e:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de0430:	4639      	mov	r1, r7
c0de0432:	9a10      	ldr	r2, [sp, #64]	; 0x40
c0de0434:	f000 f960 	bl	c0de06f8 <bagl_draw_string>
c0de0438:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de043a:	5e62      	ldrsh	r2, [r4, r1]
c0de043c:	8b21      	ldrh	r1, [r4, #24]
c0de043e:	88e3      	ldrh	r3, [r4, #6]
c0de0440:	8924      	ldrh	r4, [r4, #8]
c0de0442:	9d11      	ldr	r5, [sp, #68]	; 0x44
c0de0444:	9f16      	ldr	r7, [sp, #88]	; 0x58
c0de0446:	19ed      	adds	r5, r5, r7
c0de0448:	9f0d      	ldr	r7, [sp, #52]	; 0x34
c0de044a:	1bed      	subs	r5, r5, r7
c0de044c:	1ba4      	subs	r4, r4, r6
c0de044e:	9e14      	ldr	r6, [sp, #80]	; 0x50
c0de0450:	1b9b      	subs	r3, r3, r6
c0de0452:	9e12      	ldr	r6, [sp, #72]	; 0x48
c0de0454:	18b2      	adds	r2, r6, r2
c0de0456:	ae00      	add	r6, sp, #0
c0de0458:	c69c      	stmia	r6!, {r2, r3, r4, r7}
c0de045a:	9504      	str	r5, [sp, #16]
c0de045c:	9a15      	ldr	r2, [sp, #84]	; 0x54
c0de045e:	9205      	str	r2, [sp, #20]
c0de0460:	b283      	uxth	r3, r0
c0de0462:	4608      	mov	r0, r1
c0de0464:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de0466:	9a10      	ldr	r2, [sp, #64]	; 0x40
c0de0468:	f000 f946 	bl	c0de06f8 <bagl_draw_string>
c0de046c:	b017      	add	sp, #92	; 0x5c
c0de046e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0470:	9210      	str	r2, [sp, #64]	; 0x40
c0de0472:	7b20      	ldrb	r0, [r4, #12]
c0de0474:	2801      	cmp	r0, #1
c0de0476:	d129      	bne.n	c0de04cc <bagl_draw_with_context+0x418>
c0de0478:	2004      	movs	r0, #4
c0de047a:	900c      	str	r0, [sp, #48]	; 0x30
c0de047c:	5e22      	ldrsh	r2, [r4, r0]
c0de047e:	2502      	movs	r5, #2
c0de0480:	5f61      	ldrsh	r1, [r4, r5]
c0de0482:	6920      	ldr	r0, [r4, #16]
c0de0484:	9700      	str	r7, [sp, #0]
c0de0486:	9e10      	ldr	r6, [sp, #64]	; 0x40
c0de0488:	1871      	adds	r1, r6, r1
c0de048a:	0077      	lsls	r7, r6, #1
c0de048c:	1bdb      	subs	r3, r3, r7
c0de048e:	f005 f94d 	bl	c0de572c <bagl_hal_draw_rect>
c0de0492:	5f61      	ldrsh	r1, [r4, r5]
c0de0494:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de0496:	5e22      	ldrsh	r2, [r4, r0]
c0de0498:	8920      	ldrh	r0, [r4, #8]
c0de049a:	1bc3      	subs	r3, r0, r7
c0de049c:	6920      	ldr	r0, [r4, #16]
c0de049e:	9300      	str	r3, [sp, #0]
c0de04a0:	18b2      	adds	r2, r6, r2
c0de04a2:	4633      	mov	r3, r6
c0de04a4:	f005 f942 	bl	c0de572c <bagl_hal_draw_rect>
c0de04a8:	5f61      	ldrsh	r1, [r4, r5]
c0de04aa:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de04ac:	5e22      	ldrsh	r2, [r4, r0]
c0de04ae:	8920      	ldrh	r0, [r4, #8]
c0de04b0:	1bc3      	subs	r3, r0, r7
c0de04b2:	6920      	ldr	r0, [r4, #16]
c0de04b4:	88e5      	ldrh	r5, [r4, #6]
c0de04b6:	9300      	str	r3, [sp, #0]
c0de04b8:	18b2      	adds	r2, r6, r2
c0de04ba:	1b89      	subs	r1, r1, r6
c0de04bc:	1949      	adds	r1, r1, r5
c0de04be:	4633      	mov	r3, r6
c0de04c0:	e06b      	b.n	c0de059a <bagl_draw_with_context+0x4e6>
c0de04c2:	46c0      	nop			; (mov r8, r8)
c0de04c4:	00003039 	.word	0x00003039
c0de04c8:	00008c03 	.word	0x00008c03
c0de04cc:	2004      	movs	r0, #4
c0de04ce:	900c      	str	r0, [sp, #48]	; 0x30
c0de04d0:	5e22      	ldrsh	r2, [r4, r0]
c0de04d2:	2002      	movs	r0, #2
c0de04d4:	900b      	str	r0, [sp, #44]	; 0x2c
c0de04d6:	5e21      	ldrsh	r1, [r4, r0]
c0de04d8:	6960      	ldr	r0, [r4, #20]
c0de04da:	9700      	str	r7, [sp, #0]
c0de04dc:	9e10      	ldr	r6, [sp, #64]	; 0x40
c0de04de:	1871      	adds	r1, r6, r1
c0de04e0:	0075      	lsls	r5, r6, #1
c0de04e2:	1b5b      	subs	r3, r3, r5
c0de04e4:	462f      	mov	r7, r5
c0de04e6:	f005 f921 	bl	c0de572c <bagl_hal_draw_rect>
c0de04ea:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
c0de04ec:	5f61      	ldrsh	r1, [r4, r5]
c0de04ee:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de04f0:	5e22      	ldrsh	r2, [r4, r0]
c0de04f2:	8920      	ldrh	r0, [r4, #8]
c0de04f4:	1bc3      	subs	r3, r0, r7
c0de04f6:	970a      	str	r7, [sp, #40]	; 0x28
c0de04f8:	6960      	ldr	r0, [r4, #20]
c0de04fa:	9300      	str	r3, [sp, #0]
c0de04fc:	18b2      	adds	r2, r6, r2
c0de04fe:	4633      	mov	r3, r6
c0de0500:	f005 f914 	bl	c0de572c <bagl_hal_draw_rect>
c0de0504:	5f61      	ldrsh	r1, [r4, r5]
c0de0506:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de0508:	5e22      	ldrsh	r2, [r4, r0]
c0de050a:	8920      	ldrh	r0, [r4, #8]
c0de050c:	1bc3      	subs	r3, r0, r7
c0de050e:	6960      	ldr	r0, [r4, #20]
c0de0510:	88e5      	ldrh	r5, [r4, #6]
c0de0512:	9300      	str	r3, [sp, #0]
c0de0514:	18b2      	adds	r2, r6, r2
c0de0516:	43f3      	mvns	r3, r6
c0de0518:	18c9      	adds	r1, r1, r3
c0de051a:	1949      	adds	r1, r1, r5
c0de051c:	4633      	mov	r3, r6
c0de051e:	f005 f905 	bl	c0de572c <bagl_hal_draw_rect>
c0de0522:	9d0c      	ldr	r5, [sp, #48]	; 0x30
c0de0524:	5f60      	ldrsh	r0, [r4, r5]
c0de0526:	9009      	str	r0, [sp, #36]	; 0x24
c0de0528:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
c0de052a:	5fe1      	ldrsh	r1, [r4, r7]
c0de052c:	6922      	ldr	r2, [r4, #16]
c0de052e:	88e3      	ldrh	r3, [r4, #6]
c0de0530:	7aa0      	ldrb	r0, [r4, #10]
c0de0532:	9000      	str	r0, [sp, #0]
c0de0534:	1871      	adds	r1, r6, r1
c0de0536:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0538:	1a1b      	subs	r3, r3, r0
c0de053a:	4610      	mov	r0, r2
c0de053c:	9a09      	ldr	r2, [sp, #36]	; 0x24
c0de053e:	f005 f8f5 	bl	c0de572c <bagl_hal_draw_rect>
c0de0542:	5f60      	ldrsh	r0, [r4, r5]
c0de0544:	9009      	str	r0, [sp, #36]	; 0x24
c0de0546:	463d      	mov	r5, r7
c0de0548:	5fe1      	ldrsh	r1, [r4, r7]
c0de054a:	6920      	ldr	r0, [r4, #16]
c0de054c:	9008      	str	r0, [sp, #32]
c0de054e:	8922      	ldrh	r2, [r4, #8]
c0de0550:	88e3      	ldrh	r3, [r4, #6]
c0de0552:	7aa0      	ldrb	r0, [r4, #10]
c0de0554:	9000      	str	r0, [sp, #0]
c0de0556:	1871      	adds	r1, r6, r1
c0de0558:	9f0a      	ldr	r7, [sp, #40]	; 0x28
c0de055a:	1bdb      	subs	r3, r3, r7
c0de055c:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de055e:	1880      	adds	r0, r0, r2
c0de0560:	1e42      	subs	r2, r0, #1
c0de0562:	9808      	ldr	r0, [sp, #32]
c0de0564:	f005 f8e2 	bl	c0de572c <bagl_hal_draw_rect>
c0de0568:	5f60      	ldrsh	r0, [r4, r5]
c0de056a:	9009      	str	r0, [sp, #36]	; 0x24
c0de056c:	9d0c      	ldr	r5, [sp, #48]	; 0x30
c0de056e:	5f62      	ldrsh	r2, [r4, r5]
c0de0570:	8920      	ldrh	r0, [r4, #8]
c0de0572:	1bc1      	subs	r1, r0, r7
c0de0574:	7aa3      	ldrb	r3, [r4, #10]
c0de0576:	6920      	ldr	r0, [r4, #16]
c0de0578:	9100      	str	r1, [sp, #0]
c0de057a:	18b2      	adds	r2, r6, r2
c0de057c:	9909      	ldr	r1, [sp, #36]	; 0x24
c0de057e:	f005 f8d5 	bl	c0de572c <bagl_hal_draw_rect>
c0de0582:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0584:	5e21      	ldrsh	r1, [r4, r0]
c0de0586:	5f62      	ldrsh	r2, [r4, r5]
c0de0588:	8920      	ldrh	r0, [r4, #8]
c0de058a:	1bc5      	subs	r5, r0, r7
c0de058c:	7aa3      	ldrb	r3, [r4, #10]
c0de058e:	6920      	ldr	r0, [r4, #16]
c0de0590:	88e7      	ldrh	r7, [r4, #6]
c0de0592:	9500      	str	r5, [sp, #0]
c0de0594:	18b2      	adds	r2, r6, r2
c0de0596:	19c9      	adds	r1, r1, r7
c0de0598:	1e49      	subs	r1, r1, #1
c0de059a:	f005 f8c7 	bl	c0de572c <bagl_hal_draw_rect>
c0de059e:	2e02      	cmp	r6, #2
c0de05a0:	9d11      	ldr	r5, [sp, #68]	; 0x44
c0de05a2:	d200      	bcs.n	c0de05a6 <bagl_draw_with_context+0x4f2>
c0de05a4:	e6c0      	b.n	c0de0328 <bagl_draw_with_context+0x274>
c0de05a6:	7b20      	ldrb	r0, [r4, #12]
c0de05a8:	2801      	cmp	r0, #1
c0de05aa:	d002      	beq.n	c0de05b2 <bagl_draw_with_context+0x4fe>
c0de05ac:	7aa0      	ldrb	r0, [r4, #10]
c0de05ae:	1a30      	subs	r0, r6, r0
c0de05b0:	d200      	bcs.n	c0de05b4 <bagl_draw_with_context+0x500>
c0de05b2:	2000      	movs	r0, #0
c0de05b4:	900c      	str	r0, [sp, #48]	; 0x30
c0de05b6:	2004      	movs	r0, #4
c0de05b8:	900a      	str	r0, [sp, #40]	; 0x28
c0de05ba:	5e22      	ldrsh	r2, [r4, r0]
c0de05bc:	2002      	movs	r0, #2
c0de05be:	5e21      	ldrsh	r1, [r4, r0]
c0de05c0:	4607      	mov	r7, r0
c0de05c2:	900b      	str	r0, [sp, #44]	; 0x2c
c0de05c4:	6920      	ldr	r0, [r4, #16]
c0de05c6:	6963      	ldr	r3, [r4, #20]
c0de05c8:	25c0      	movs	r5, #192	; 0xc0
c0de05ca:	9500      	str	r5, [sp, #0]
c0de05cc:	9e0c      	ldr	r6, [sp, #48]	; 0x30
c0de05ce:	9601      	str	r6, [sp, #4]
c0de05d0:	9302      	str	r3, [sp, #8]
c0de05d2:	9d10      	ldr	r5, [sp, #64]	; 0x40
c0de05d4:	1869      	adds	r1, r5, r1
c0de05d6:	18aa      	adds	r2, r5, r2
c0de05d8:	462b      	mov	r3, r5
c0de05da:	f000 f973 	bl	c0de08c4 <bagl_draw_circle_helper>
c0de05de:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de05e0:	5e20      	ldrsh	r0, [r4, r0]
c0de05e2:	9009      	str	r0, [sp, #36]	; 0x24
c0de05e4:	5fe0      	ldrsh	r0, [r4, r7]
c0de05e6:	9007      	str	r0, [sp, #28]
c0de05e8:	6920      	ldr	r0, [r4, #16]
c0de05ea:	9008      	str	r0, [sp, #32]
c0de05ec:	6963      	ldr	r3, [r4, #20]
c0de05ee:	88e1      	ldrh	r1, [r4, #6]
c0de05f0:	7aa0      	ldrb	r0, [r4, #10]
c0de05f2:	2230      	movs	r2, #48	; 0x30
c0de05f4:	9200      	str	r2, [sp, #0]
c0de05f6:	9601      	str	r6, [sp, #4]
c0de05f8:	4637      	mov	r7, r6
c0de05fa:	960c      	str	r6, [sp, #48]	; 0x30
c0de05fc:	9302      	str	r3, [sp, #8]
c0de05fe:	1828      	adds	r0, r5, r0
c0de0600:	9a07      	ldr	r2, [sp, #28]
c0de0602:	1851      	adds	r1, r2, r1
c0de0604:	1a09      	subs	r1, r1, r0
c0de0606:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de0608:	182a      	adds	r2, r5, r0
c0de060a:	9808      	ldr	r0, [sp, #32]
c0de060c:	462b      	mov	r3, r5
c0de060e:	f000 f959 	bl	c0de08c4 <bagl_draw_circle_helper>
c0de0612:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0614:	5e20      	ldrsh	r0, [r4, r0]
c0de0616:	9009      	str	r0, [sp, #36]	; 0x24
c0de0618:	9e0a      	ldr	r6, [sp, #40]	; 0x28
c0de061a:	5fa0      	ldrsh	r0, [r4, r6]
c0de061c:	9007      	str	r0, [sp, #28]
c0de061e:	6920      	ldr	r0, [r4, #16]
c0de0620:	9008      	str	r0, [sp, #32]
c0de0622:	6963      	ldr	r3, [r4, #20]
c0de0624:	8922      	ldrh	r2, [r4, #8]
c0de0626:	7aa0      	ldrb	r0, [r4, #10]
c0de0628:	210c      	movs	r1, #12
c0de062a:	9100      	str	r1, [sp, #0]
c0de062c:	9701      	str	r7, [sp, #4]
c0de062e:	9302      	str	r3, [sp, #8]
c0de0630:	1828      	adds	r0, r5, r0
c0de0632:	9907      	ldr	r1, [sp, #28]
c0de0634:	1889      	adds	r1, r1, r2
c0de0636:	1a0a      	subs	r2, r1, r0
c0de0638:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de063a:	1829      	adds	r1, r5, r0
c0de063c:	9808      	ldr	r0, [sp, #32]
c0de063e:	462b      	mov	r3, r5
c0de0640:	f000 f940 	bl	c0de08c4 <bagl_draw_circle_helper>
c0de0644:	5fa0      	ldrsh	r0, [r4, r6]
c0de0646:	900a      	str	r0, [sp, #40]	; 0x28
c0de0648:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de064a:	5e21      	ldrsh	r1, [r4, r0]
c0de064c:	6920      	ldr	r0, [r4, #16]
c0de064e:	900b      	str	r0, [sp, #44]	; 0x2c
c0de0650:	6963      	ldr	r3, [r4, #20]
c0de0652:	8920      	ldrh	r0, [r4, #8]
c0de0654:	88e6      	ldrh	r6, [r4, #6]
c0de0656:	7aa7      	ldrb	r7, [r4, #10]
c0de0658:	2203      	movs	r2, #3
c0de065a:	9200      	str	r2, [sp, #0]
c0de065c:	9a0c      	ldr	r2, [sp, #48]	; 0x30
c0de065e:	9201      	str	r2, [sp, #4]
c0de0660:	9302      	str	r3, [sp, #8]
c0de0662:	19ea      	adds	r2, r5, r7
c0de0664:	1989      	adds	r1, r1, r6
c0de0666:	1a89      	subs	r1, r1, r2
c0de0668:	9b0a      	ldr	r3, [sp, #40]	; 0x28
c0de066a:	1a9a      	subs	r2, r3, r2
c0de066c:	1812      	adds	r2, r2, r0
c0de066e:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0670:	462b      	mov	r3, r5
c0de0672:	f000 f927 	bl	c0de08c4 <bagl_draw_circle_helper>
c0de0676:	9d11      	ldr	r5, [sp, #68]	; 0x44
c0de0678:	e656      	b.n	c0de0328 <bagl_draw_with_context+0x274>
c0de067a:	462f      	mov	r7, r5
c0de067c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
c0de067e:	e5d5      	b.n	c0de022c <bagl_draw_with_context+0x178>
c0de0680:	00008933 	.word	0x00008933

c0de0684 <bagl_get_font>:
c0de0684:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0686:	b081      	sub	sp, #4
c0de0688:	4d0e      	ldr	r5, [pc, #56]	; (c0de06c4 <bagl_get_font+0x40>)
c0de068a:	4005      	ands	r5, r0
c0de068c:	480e      	ldr	r0, [pc, #56]	; (c0de06c8 <bagl_get_font+0x44>)
c0de068e:	4478      	add	r0, pc
c0de0690:	6801      	ldr	r1, [r0, #0]
c0de0692:	0088      	lsls	r0, r1, #2
c0de0694:	4a0d      	ldr	r2, [pc, #52]	; (c0de06cc <bagl_get_font+0x48>)
c0de0696:	447a      	add	r2, pc
c0de0698:	1880      	adds	r0, r0, r2
c0de069a:	1f00      	subs	r0, r0, #4
c0de069c:	1c4e      	adds	r6, r1, #1
c0de069e:	1e76      	subs	r6, r6, #1
c0de06a0:	d00c      	beq.n	c0de06bc <bagl_get_font+0x38>
c0de06a2:	1f07      	subs	r7, r0, #4
c0de06a4:	6804      	ldr	r4, [r0, #0]
c0de06a6:	4620      	mov	r0, r4
c0de06a8:	f004 fb16 	bl	c0de4cd8 <pic>
c0de06ac:	6800      	ldr	r0, [r0, #0]
c0de06ae:	42a8      	cmp	r0, r5
c0de06b0:	4638      	mov	r0, r7
c0de06b2:	d1f4      	bne.n	c0de069e <bagl_get_font+0x1a>
c0de06b4:	4620      	mov	r0, r4
c0de06b6:	f004 fb0f 	bl	c0de4cd8 <pic>
c0de06ba:	e000      	b.n	c0de06be <bagl_get_font+0x3a>
c0de06bc:	2000      	movs	r0, #0
c0de06be:	b001      	add	sp, #4
c0de06c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de06c2:	46c0      	nop			; (mov r8, r8)
c0de06c4:	00000fff 	.word	0x00000fff
c0de06c8:	00009a1a 	.word	0x00009a1a
c0de06cc:	00009a06 	.word	0x00009a06

c0de06d0 <bagl_compute_line_width>:
c0de06d0:	b510      	push	{r4, lr}
c0de06d2:	b086      	sub	sp, #24
c0de06d4:	2400      	movs	r4, #0
c0de06d6:	9405      	str	r4, [sp, #20]
c0de06d8:	9304      	str	r3, [sp, #16]
c0de06da:	9203      	str	r2, [sp, #12]
c0de06dc:	9402      	str	r4, [sp, #8]
c0de06de:	9101      	str	r1, [sp, #4]
c0de06e0:	4b04      	ldr	r3, [pc, #16]	; (c0de06f4 <bagl_compute_line_width+0x24>)
c0de06e2:	9300      	str	r3, [sp, #0]
c0de06e4:	4621      	mov	r1, r4
c0de06e6:	4622      	mov	r2, r4
c0de06e8:	f000 f806 	bl	c0de06f8 <bagl_draw_string>
c0de06ec:	b280      	uxth	r0, r0
c0de06ee:	b006      	add	sp, #24
c0de06f0:	bd10      	pop	{r4, pc}
c0de06f2:	46c0      	nop			; (mov r8, r8)
c0de06f4:	00003039 	.word	0x00003039

c0de06f8 <bagl_draw_string>:
c0de06f8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de06fa:	b0a3      	sub	sp, #140	; 0x8c
c0de06fc:	461f      	mov	r7, r3
c0de06fe:	9114      	str	r1, [sp, #80]	; 0x50
c0de0700:	9208      	str	r2, [sp, #32]
c0de0702:	9213      	str	r2, [sp, #76]	; 0x4c
c0de0704:	496e      	ldr	r1, [pc, #440]	; (c0de08c0 <bagl_draw_string+0x1c8>)
c0de0706:	9b28      	ldr	r3, [sp, #160]	; 0xa0
c0de0708:	461a      	mov	r2, r3
c0de070a:	404a      	eors	r2, r1
c0de070c:	4079      	eors	r1, r7
c0de070e:	4311      	orrs	r1, r2
c0de0710:	424a      	negs	r2, r1
c0de0712:	414a      	adcs	r2, r1
c0de0714:	920f      	str	r2, [sp, #60]	; 0x3c
c0de0716:	2900      	cmp	r1, #0
c0de0718:	970b      	str	r7, [sp, #44]	; 0x2c
c0de071a:	d100      	bne.n	c0de071e <bagl_draw_string+0x26>
c0de071c:	460f      	mov	r7, r1
c0de071e:	2900      	cmp	r1, #0
c0de0720:	d100      	bne.n	c0de0724 <bagl_draw_string+0x2c>
c0de0722:	460b      	mov	r3, r1
c0de0724:	461c      	mov	r4, r3
c0de0726:	f7ff ffad 	bl	c0de0684 <bagl_get_font>
c0de072a:	2800      	cmp	r0, #0
c0de072c:	d100      	bne.n	c0de0730 <bagl_draw_string+0x38>
c0de072e:	e0b6      	b.n	c0de089e <bagl_draw_string+0x1a6>
c0de0730:	9d2c      	ldr	r5, [sp, #176]	; 0xb0
c0de0732:	2d00      	cmp	r5, #0
c0de0734:	d100      	bne.n	c0de0738 <bagl_draw_string+0x40>
c0de0736:	e0b4      	b.n	c0de08a2 <bagl_draw_string+0x1aa>
c0de0738:	4602      	mov	r2, r0
c0de073a:	9e2b      	ldr	r6, [sp, #172]	; 0xac
c0de073c:	982a      	ldr	r0, [sp, #168]	; 0xa8
c0de073e:	9929      	ldr	r1, [sp, #164]	; 0xa4
c0de0740:	4623      	mov	r3, r4
c0de0742:	1820      	adds	r0, r4, r0
c0de0744:	9007      	str	r0, [sp, #28]
c0de0746:	1878      	adds	r0, r7, r1
c0de0748:	900d      	str	r0, [sp, #52]	; 0x34
c0de074a:	7910      	ldrb	r0, [r2, #4]
c0de074c:	2101      	movs	r1, #1
c0de074e:	900a      	str	r0, [sp, #40]	; 0x28
c0de0750:	4081      	lsls	r1, r0
c0de0752:	9109      	str	r1, [sp, #36]	; 0x24
c0de0754:	920e      	str	r2, [sp, #56]	; 0x38
c0de0756:	8910      	ldrh	r0, [r2, #8]
c0de0758:	7951      	ldrb	r1, [r2, #5]
c0de075a:	9111      	str	r1, [sp, #68]	; 0x44
c0de075c:	7834      	ldrb	r4, [r6, #0]
c0de075e:	4284      	cmp	r4, r0
c0de0760:	9512      	str	r5, [sp, #72]	; 0x48
c0de0762:	d302      	bcc.n	c0de076a <bagl_draw_string+0x72>
c0de0764:	8951      	ldrh	r1, [r2, #10]
c0de0766:	42a1      	cmp	r1, r4
c0de0768:	d20d      	bcs.n	c0de0786 <bagl_draw_string+0x8e>
c0de076a:	09a0      	lsrs	r0, r4, #6
c0de076c:	2803      	cmp	r0, #3
c0de076e:	d303      	bcc.n	c0de0778 <bagl_draw_string+0x80>
c0de0770:	203f      	movs	r0, #63	; 0x3f
c0de0772:	4004      	ands	r4, r0
c0de0774:	2100      	movs	r1, #0
c0de0776:	e004      	b.n	c0de0782 <bagl_draw_string+0x8a>
c0de0778:	b260      	sxtb	r0, r4
c0de077a:	2100      	movs	r1, #0
c0de077c:	2800      	cmp	r0, #0
c0de077e:	d45f      	bmi.n	c0de0840 <bagl_draw_string+0x148>
c0de0780:	460c      	mov	r4, r1
c0de0782:	9110      	str	r1, [sp, #64]	; 0x40
c0de0784:	e017      	b.n	c0de07b6 <bagl_draw_string+0xbe>
c0de0786:	1a20      	subs	r0, r4, r0
c0de0788:	0084      	lsls	r4, r0, #2
c0de078a:	6910      	ldr	r0, [r2, #16]
c0de078c:	930c      	str	r3, [sp, #48]	; 0x30
c0de078e:	463d      	mov	r5, r7
c0de0790:	4617      	mov	r7, r2
c0de0792:	f004 faa1 	bl	c0de4cd8 <pic>
c0de0796:	9010      	str	r0, [sp, #64]	; 0x40
c0de0798:	68f8      	ldr	r0, [r7, #12]
c0de079a:	f004 fa9d 	bl	c0de4cd8 <pic>
c0de079e:	1900      	adds	r0, r0, r4
c0de07a0:	8840      	ldrh	r0, [r0, #2]
c0de07a2:	9910      	ldr	r1, [sp, #64]	; 0x40
c0de07a4:	1808      	adds	r0, r1, r0
c0de07a6:	9010      	str	r0, [sp, #64]	; 0x40
c0de07a8:	68f8      	ldr	r0, [r7, #12]
c0de07aa:	f004 fa95 	bl	c0de4cd8 <pic>
c0de07ae:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0de07b0:	5d04      	ldrb	r4, [r0, r4]
c0de07b2:	79f9      	ldrb	r1, [r7, #7]
c0de07b4:	462f      	mov	r7, r5
c0de07b6:	461a      	mov	r2, r3
c0de07b8:	463d      	mov	r5, r7
c0de07ba:	193f      	adds	r7, r7, r4
c0de07bc:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de07be:	2800      	cmp	r0, #0
c0de07c0:	d006      	beq.n	c0de07d0 <bagl_draw_string+0xd8>
c0de07c2:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de07c4:	2800      	cmp	r0, #0
c0de07c6:	d027      	beq.n	c0de0818 <bagl_draw_string+0x120>
c0de07c8:	4287      	cmp	r7, r0
c0de07ca:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0de07cc:	d933      	bls.n	c0de0836 <bagl_draw_string+0x13e>
c0de07ce:	e071      	b.n	c0de08b4 <bagl_draw_string+0x1bc>
c0de07d0:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de07d2:	4287      	cmp	r7, r0
c0de07d4:	dd09      	ble.n	c0de07ea <bagl_draw_string+0xf2>
c0de07d6:	460f      	mov	r7, r1
c0de07d8:	9811      	ldr	r0, [sp, #68]	; 0x44
c0de07da:	181b      	adds	r3, r3, r0
c0de07dc:	1818      	adds	r0, r3, r0
c0de07de:	9907      	ldr	r1, [sp, #28]
c0de07e0:	4288      	cmp	r0, r1
c0de07e2:	dc6a      	bgt.n	c0de08ba <bagl_draw_string+0x1c2>
c0de07e4:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
c0de07e6:	461a      	mov	r2, r3
c0de07e8:	4639      	mov	r1, r7
c0de07ea:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de07ec:	2800      	cmp	r0, #0
c0de07ee:	910c      	str	r1, [sp, #48]	; 0x30
c0de07f0:	d014      	beq.n	c0de081c <bagl_draw_string+0x124>
c0de07f2:	9003      	str	r0, [sp, #12]
c0de07f4:	990a      	ldr	r1, [sp, #40]	; 0x28
c0de07f6:	9102      	str	r1, [sp, #8]
c0de07f8:	a813      	add	r0, sp, #76	; 0x4c
c0de07fa:	9001      	str	r0, [sp, #4]
c0de07fc:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de07fe:	9000      	str	r0, [sp, #0]
c0de0800:	461f      	mov	r7, r3
c0de0802:	9b11      	ldr	r3, [sp, #68]	; 0x44
c0de0804:	4618      	mov	r0, r3
c0de0806:	4348      	muls	r0, r1
c0de0808:	4360      	muls	r0, r4
c0de080a:	9004      	str	r0, [sp, #16]
c0de080c:	4628      	mov	r0, r5
c0de080e:	4611      	mov	r1, r2
c0de0810:	4622      	mov	r2, r4
c0de0812:	f004 ff73 	bl	c0de56fc <bagl_hal_draw_bitmap_within_rect>
c0de0816:	e009      	b.n	c0de082c <bagl_draw_string+0x134>
c0de0818:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0de081a:	e00c      	b.n	c0de0836 <bagl_draw_string+0x13e>
c0de081c:	9811      	ldr	r0, [sp, #68]	; 0x44
c0de081e:	9000      	str	r0, [sp, #0]
c0de0820:	9808      	ldr	r0, [sp, #32]
c0de0822:	4629      	mov	r1, r5
c0de0824:	461f      	mov	r7, r3
c0de0826:	4623      	mov	r3, r4
c0de0828:	f004 ff80 	bl	c0de572c <bagl_hal_draw_rect>
c0de082c:	463b      	mov	r3, r7
c0de082e:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0de0830:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de0832:	1820      	adds	r0, r4, r0
c0de0834:	1947      	adds	r7, r0, r5
c0de0836:	1c76      	adds	r6, r6, #1
c0de0838:	9d12      	ldr	r5, [sp, #72]	; 0x48
c0de083a:	1e6d      	subs	r5, r5, #1
c0de083c:	d18b      	bne.n	c0de0756 <bagl_draw_string+0x5e>
c0de083e:	e031      	b.n	c0de08a4 <bagl_draw_string+0x1ac>
c0de0840:	06a0      	lsls	r0, r4, #26
c0de0842:	9706      	str	r7, [sp, #24]
c0de0844:	461f      	mov	r7, r3
c0de0846:	d501      	bpl.n	c0de084c <bagl_draw_string+0x154>
c0de0848:	200f      	movs	r0, #15
c0de084a:	e000      	b.n	c0de084e <bagl_draw_string+0x156>
c0de084c:	200e      	movs	r0, #14
c0de084e:	f7ff ff19 	bl	c0de0684 <bagl_get_font>
c0de0852:	2800      	cmp	r0, #0
c0de0854:	d01c      	beq.n	c0de0890 <bagl_draw_string+0x198>
c0de0856:	4605      	mov	r5, r0
c0de0858:	6900      	ldr	r0, [r0, #16]
c0de085a:	f004 fa3d 	bl	c0de4cd8 <pic>
c0de085e:	9011      	str	r0, [sp, #68]	; 0x44
c0de0860:	68e8      	ldr	r0, [r5, #12]
c0de0862:	f004 fa39 	bl	c0de4cd8 <pic>
c0de0866:	06e1      	lsls	r1, r4, #27
c0de0868:	0e4c      	lsrs	r4, r1, #25
c0de086a:	1900      	adds	r0, r0, r4
c0de086c:	8840      	ldrh	r0, [r0, #2]
c0de086e:	9911      	ldr	r1, [sp, #68]	; 0x44
c0de0870:	1808      	adds	r0, r1, r0
c0de0872:	9010      	str	r0, [sp, #64]	; 0x40
c0de0874:	68e8      	ldr	r0, [r5, #12]
c0de0876:	f004 fa2f 	bl	c0de4cd8 <pic>
c0de087a:	5d04      	ldrb	r4, [r0, r4]
c0de087c:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de087e:	7980      	ldrb	r0, [r0, #6]
c0de0880:	463b      	mov	r3, r7
c0de0882:	1838      	adds	r0, r7, r0
c0de0884:	79a9      	ldrb	r1, [r5, #6]
c0de0886:	1a42      	subs	r2, r0, r1
c0de0888:	7968      	ldrb	r0, [r5, #5]
c0de088a:	9011      	str	r0, [sp, #68]	; 0x44
c0de088c:	2100      	movs	r1, #0
c0de088e:	e004      	b.n	c0de089a <bagl_draw_string+0x1a2>
c0de0890:	2100      	movs	r1, #0
c0de0892:	460c      	mov	r4, r1
c0de0894:	9110      	str	r1, [sp, #64]	; 0x40
c0de0896:	463b      	mov	r3, r7
c0de0898:	463a      	mov	r2, r7
c0de089a:	9f06      	ldr	r7, [sp, #24]
c0de089c:	e78c      	b.n	c0de07b8 <bagl_draw_string+0xc0>
c0de089e:	2500      	movs	r5, #0
c0de08a0:	e008      	b.n	c0de08b4 <bagl_draw_string+0x1bc>
c0de08a2:	4623      	mov	r3, r4
c0de08a4:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de08a6:	2800      	cmp	r0, #0
c0de08a8:	d001      	beq.n	c0de08ae <bagl_draw_string+0x1b6>
c0de08aa:	463d      	mov	r5, r7
c0de08ac:	e002      	b.n	c0de08b4 <bagl_draw_string+0x1bc>
c0de08ae:	b2b8      	uxth	r0, r7
c0de08b0:	0419      	lsls	r1, r3, #16
c0de08b2:	180d      	adds	r5, r1, r0
c0de08b4:	4628      	mov	r0, r5
c0de08b6:	b023      	add	sp, #140	; 0x8c
c0de08b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de08ba:	b2a8      	uxth	r0, r5
c0de08bc:	e7f8      	b.n	c0de08b0 <bagl_draw_string+0x1b8>
c0de08be:	46c0      	nop			; (mov r8, r8)
c0de08c0:	00003039 	.word	0x00003039

c0de08c4 <bagl_draw_circle_helper>:
c0de08c4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de08c6:	b09d      	sub	sp, #116	; 0x74
c0de08c8:	921b      	str	r2, [sp, #108]	; 0x6c
c0de08ca:	911a      	str	r1, [sp, #104]	; 0x68
c0de08cc:	4606      	mov	r6, r0
c0de08ce:	9823      	ldr	r0, [sp, #140]	; 0x8c
c0de08d0:	1e41      	subs	r1, r0, #1
c0de08d2:	4602      	mov	r2, r0
c0de08d4:	418a      	sbcs	r2, r1
c0de08d6:	9218      	str	r2, [sp, #96]	; 0x60
c0de08d8:	9313      	str	r3, [sp, #76]	; 0x4c
c0de08da:	1a19      	subs	r1, r3, r0
c0de08dc:	9112      	str	r1, [sp, #72]	; 0x48
c0de08de:	2900      	cmp	r1, #0
c0de08e0:	dc01      	bgt.n	c0de08e6 <bagl_draw_circle_helper+0x22>
c0de08e2:	2100      	movs	r1, #0
c0de08e4:	e000      	b.n	c0de08e8 <bagl_draw_circle_helper+0x24>
c0de08e6:	2101      	movs	r1, #1
c0de08e8:	9a13      	ldr	r2, [sp, #76]	; 0x4c
c0de08ea:	2a00      	cmp	r2, #0
c0de08ec:	d500      	bpl.n	c0de08f0 <bagl_draw_circle_helper+0x2c>
c0de08ee:	e1c0      	b.n	c0de0c72 <bagl_draw_circle_helper+0x3ae>
c0de08f0:	9a18      	ldr	r2, [sp, #96]	; 0x60
c0de08f2:	400a      	ands	r2, r1
c0de08f4:	9218      	str	r2, [sp, #96]	; 0x60
c0de08f6:	9924      	ldr	r1, [sp, #144]	; 0x90
c0de08f8:	9110      	str	r1, [sp, #64]	; 0x40
c0de08fa:	9922      	ldr	r1, [sp, #136]	; 0x88
c0de08fc:	9f13      	ldr	r7, [sp, #76]	; 0x4c
c0de08fe:	1bc2      	subs	r2, r0, r7
c0de0900:	9203      	str	r2, [sp, #12]
c0de0902:	2280      	movs	r2, #128	; 0x80
c0de0904:	400a      	ands	r2, r1
c0de0906:	920a      	str	r2, [sp, #40]	; 0x28
c0de0908:	2240      	movs	r2, #64	; 0x40
c0de090a:	400a      	ands	r2, r1
c0de090c:	920d      	str	r2, [sp, #52]	; 0x34
c0de090e:	2220      	movs	r2, #32
c0de0910:	400a      	ands	r2, r1
c0de0912:	9209      	str	r2, [sp, #36]	; 0x24
c0de0914:	2210      	movs	r2, #16
c0de0916:	400a      	ands	r2, r1
c0de0918:	920c      	str	r2, [sp, #48]	; 0x30
c0de091a:	2208      	movs	r2, #8
c0de091c:	400a      	ands	r2, r1
c0de091e:	9208      	str	r2, [sp, #32]
c0de0920:	2204      	movs	r2, #4
c0de0922:	400a      	ands	r2, r1
c0de0924:	920b      	str	r2, [sp, #44]	; 0x2c
c0de0926:	2301      	movs	r3, #1
c0de0928:	9a12      	ldr	r2, [sp, #72]	; 0x48
c0de092a:	1a9c      	subs	r4, r3, r2
c0de092c:	9406      	str	r4, [sp, #24]
c0de092e:	2402      	movs	r4, #2
c0de0930:	400c      	ands	r4, r1
c0de0932:	9407      	str	r4, [sp, #28]
c0de0934:	4019      	ands	r1, r3
c0de0936:	910e      	str	r1, [sp, #56]	; 0x38
c0de0938:	931c      	str	r3, [sp, #112]	; 0x70
c0de093a:	1bdc      	subs	r4, r3, r7
c0de093c:	991a      	ldr	r1, [sp, #104]	; 0x68
c0de093e:	1840      	adds	r0, r0, r1
c0de0940:	1bc0      	subs	r0, r0, r7
c0de0942:	9005      	str	r0, [sp, #20]
c0de0944:	1c40      	adds	r0, r0, #1
c0de0946:	9004      	str	r0, [sp, #16]
c0de0948:	2500      	movs	r5, #0
c0de094a:	43e9      	mvns	r1, r5
c0de094c:	1e50      	subs	r0, r2, #1
c0de094e:	900f      	str	r0, [sp, #60]	; 0x3c
c0de0950:	9516      	str	r5, [sp, #88]	; 0x58
c0de0952:	9611      	str	r6, [sp, #68]	; 0x44
c0de0954:	1c48      	adds	r0, r1, #1
c0de0956:	9017      	str	r0, [sp, #92]	; 0x5c
c0de0958:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de095a:	2800      	cmp	r0, #0
c0de095c:	9519      	str	r5, [sp, #100]	; 0x64
c0de095e:	9115      	str	r1, [sp, #84]	; 0x54
c0de0960:	9414      	str	r4, [sp, #80]	; 0x50
c0de0962:	d106      	bne.n	c0de0972 <bagl_draw_circle_helper+0xae>
c0de0964:	9807      	ldr	r0, [sp, #28]
c0de0966:	2800      	cmp	r0, #0
c0de0968:	d055      	beq.n	c0de0a16 <bagl_draw_circle_helper+0x152>
c0de096a:	9818      	ldr	r0, [sp, #96]	; 0x60
c0de096c:	2800      	cmp	r0, #0
c0de096e:	d11f      	bne.n	c0de09b0 <bagl_draw_circle_helper+0xec>
c0de0970:	e047      	b.n	c0de0a02 <bagl_draw_circle_helper+0x13e>
c0de0972:	9818      	ldr	r0, [sp, #96]	; 0x60
c0de0974:	2800      	cmp	r0, #0
c0de0976:	d038      	beq.n	c0de09ea <bagl_draw_circle_helper+0x126>
c0de0978:	9c1c      	ldr	r4, [sp, #112]	; 0x70
c0de097a:	9400      	str	r4, [sp, #0]
c0de097c:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de097e:	1a3b      	subs	r3, r7, r0
c0de0980:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0982:	1840      	adds	r0, r0, r1
c0de0984:	1c45      	adds	r5, r0, #1
c0de0986:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de0988:	9e1a      	ldr	r6, [sp, #104]	; 0x68
c0de098a:	4631      	mov	r1, r6
c0de098c:	462a      	mov	r2, r5
c0de098e:	f004 fecd 	bl	c0de572c <bagl_hal_draw_rect>
c0de0992:	9400      	str	r4, [sp, #0]
c0de0994:	9c14      	ldr	r4, [sp, #80]	; 0x50
c0de0996:	19b8      	adds	r0, r7, r6
c0de0998:	9e11      	ldr	r6, [sp, #68]	; 0x44
c0de099a:	9906      	ldr	r1, [sp, #24]
c0de099c:	1841      	adds	r1, r0, r1
c0de099e:	4630      	mov	r0, r6
c0de09a0:	462a      	mov	r2, r5
c0de09a2:	9d19      	ldr	r5, [sp, #100]	; 0x64
c0de09a4:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de09a6:	f004 fec1 	bl	c0de572c <bagl_hal_draw_rect>
c0de09aa:	9807      	ldr	r0, [sp, #28]
c0de09ac:	2800      	cmp	r0, #0
c0de09ae:	d032      	beq.n	c0de0a16 <bagl_draw_circle_helper+0x152>
c0de09b0:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de09b2:	183d      	adds	r5, r7, r0
c0de09b4:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de09b6:	42b8      	cmp	r0, r7
c0de09b8:	d00a      	beq.n	c0de09d0 <bagl_draw_circle_helper+0x10c>
c0de09ba:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de09bc:	9000      	str	r0, [sp, #0]
c0de09be:	9803      	ldr	r0, [sp, #12]
c0de09c0:	9915      	ldr	r1, [sp, #84]	; 0x54
c0de09c2:	1840      	adds	r0, r0, r1
c0de09c4:	1c83      	adds	r3, r0, #2
c0de09c6:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de09c8:	991a      	ldr	r1, [sp, #104]	; 0x68
c0de09ca:	462a      	mov	r2, r5
c0de09cc:	f004 feae 	bl	c0de572c <bagl_hal_draw_rect>
c0de09d0:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de09d2:	9000      	str	r0, [sp, #0]
c0de09d4:	9805      	ldr	r0, [sp, #20]
c0de09d6:	9915      	ldr	r1, [sp, #84]	; 0x54
c0de09d8:	1840      	adds	r0, r0, r1
c0de09da:	1c81      	adds	r1, r0, #2
c0de09dc:	4630      	mov	r0, r6
c0de09de:	462a      	mov	r2, r5
c0de09e0:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de09e2:	f004 fea3 	bl	c0de572c <bagl_hal_draw_rect>
c0de09e6:	9d19      	ldr	r5, [sp, #100]	; 0x64
c0de09e8:	e015      	b.n	c0de0a16 <bagl_draw_circle_helper+0x152>
c0de09ea:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de09ec:	9000      	str	r0, [sp, #0]
c0de09ee:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de09f0:	1842      	adds	r2, r0, r1
c0de09f2:	4630      	mov	r0, r6
c0de09f4:	991a      	ldr	r1, [sp, #104]	; 0x68
c0de09f6:	463b      	mov	r3, r7
c0de09f8:	f004 fe98 	bl	c0de572c <bagl_hal_draw_rect>
c0de09fc:	9807      	ldr	r0, [sp, #28]
c0de09fe:	2800      	cmp	r0, #0
c0de0a00:	d009      	beq.n	c0de0a16 <bagl_draw_circle_helper+0x152>
c0de0a02:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0a04:	9000      	str	r0, [sp, #0]
c0de0a06:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0a08:	1838      	adds	r0, r7, r0
c0de0a0a:	1e42      	subs	r2, r0, #1
c0de0a0c:	4630      	mov	r0, r6
c0de0a0e:	991a      	ldr	r1, [sp, #104]	; 0x68
c0de0a10:	9b17      	ldr	r3, [sp, #92]	; 0x5c
c0de0a12:	f004 fe8b 	bl	c0de572c <bagl_hal_draw_rect>
c0de0a16:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de0a18:	2800      	cmp	r0, #0
c0de0a1a:	d106      	bne.n	c0de0a2a <bagl_draw_circle_helper+0x166>
c0de0a1c:	9808      	ldr	r0, [sp, #32]
c0de0a1e:	2800      	cmp	r0, #0
c0de0a20:	d05a      	beq.n	c0de0ad8 <bagl_draw_circle_helper+0x214>
c0de0a22:	9818      	ldr	r0, [sp, #96]	; 0x60
c0de0a24:	2800      	cmp	r0, #0
c0de0a26:	d11f      	bne.n	c0de0a68 <bagl_draw_circle_helper+0x1a4>
c0de0a28:	e033      	b.n	c0de0a92 <bagl_draw_circle_helper+0x1ce>
c0de0a2a:	981a      	ldr	r0, [sp, #104]	; 0x68
c0de0a2c:	1bc5      	subs	r5, r0, r7
c0de0a2e:	9818      	ldr	r0, [sp, #96]	; 0x60
c0de0a30:	2800      	cmp	r0, #0
c0de0a32:	d020      	beq.n	c0de0a76 <bagl_draw_circle_helper+0x1b2>
c0de0a34:	9c1c      	ldr	r4, [sp, #112]	; 0x70
c0de0a36:	9400      	str	r4, [sp, #0]
c0de0a38:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
c0de0a3a:	1bbb      	subs	r3, r7, r6
c0de0a3c:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0a3e:	9915      	ldr	r1, [sp, #84]	; 0x54
c0de0a40:	1840      	adds	r0, r0, r1
c0de0a42:	1c42      	adds	r2, r0, #1
c0de0a44:	9202      	str	r2, [sp, #8]
c0de0a46:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de0a48:	4629      	mov	r1, r5
c0de0a4a:	f004 fe6f 	bl	c0de572c <bagl_hal_draw_rect>
c0de0a4e:	9400      	str	r4, [sp, #0]
c0de0a50:	9c14      	ldr	r4, [sp, #80]	; 0x50
c0de0a52:	1ba9      	subs	r1, r5, r6
c0de0a54:	9811      	ldr	r0, [sp, #68]	; 0x44
c0de0a56:	9a02      	ldr	r2, [sp, #8]
c0de0a58:	9e11      	ldr	r6, [sp, #68]	; 0x44
c0de0a5a:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de0a5c:	f004 fe66 	bl	c0de572c <bagl_hal_draw_rect>
c0de0a60:	9808      	ldr	r0, [sp, #32]
c0de0a62:	2800      	cmp	r0, #0
c0de0a64:	9d19      	ldr	r5, [sp, #100]	; 0x64
c0de0a66:	d037      	beq.n	c0de0ad8 <bagl_draw_circle_helper+0x214>
c0de0a68:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de0a6a:	42b8      	cmp	r0, r7
c0de0a6c:	d11b      	bne.n	c0de0aa6 <bagl_draw_circle_helper+0x1e2>
c0de0a6e:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0a70:	183e      	adds	r6, r7, r0
c0de0a72:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0a74:	e027      	b.n	c0de0ac6 <bagl_draw_circle_helper+0x202>
c0de0a76:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0a78:	9000      	str	r0, [sp, #0]
c0de0a7a:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0a7c:	9915      	ldr	r1, [sp, #84]	; 0x54
c0de0a7e:	1842      	adds	r2, r0, r1
c0de0a80:	4630      	mov	r0, r6
c0de0a82:	4629      	mov	r1, r5
c0de0a84:	463b      	mov	r3, r7
c0de0a86:	f004 fe51 	bl	c0de572c <bagl_hal_draw_rect>
c0de0a8a:	9808      	ldr	r0, [sp, #32]
c0de0a8c:	2800      	cmp	r0, #0
c0de0a8e:	9d19      	ldr	r5, [sp, #100]	; 0x64
c0de0a90:	d022      	beq.n	c0de0ad8 <bagl_draw_circle_helper+0x214>
c0de0a92:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0a94:	9000      	str	r0, [sp, #0]
c0de0a96:	981a      	ldr	r0, [sp, #104]	; 0x68
c0de0a98:	1941      	adds	r1, r0, r5
c0de0a9a:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0a9c:	1838      	adds	r0, r7, r0
c0de0a9e:	1e42      	subs	r2, r0, #1
c0de0aa0:	4630      	mov	r0, r6
c0de0aa2:	9b17      	ldr	r3, [sp, #92]	; 0x5c
c0de0aa4:	e016      	b.n	c0de0ad4 <bagl_draw_circle_helper+0x210>
c0de0aa6:	9c1c      	ldr	r4, [sp, #112]	; 0x70
c0de0aa8:	9400      	str	r4, [sp, #0]
c0de0aaa:	981a      	ldr	r0, [sp, #104]	; 0x68
c0de0aac:	1941      	adds	r1, r0, r5
c0de0aae:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0ab0:	183e      	adds	r6, r7, r0
c0de0ab2:	9803      	ldr	r0, [sp, #12]
c0de0ab4:	9a15      	ldr	r2, [sp, #84]	; 0x54
c0de0ab6:	1880      	adds	r0, r0, r2
c0de0ab8:	1c83      	adds	r3, r0, #2
c0de0aba:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de0abc:	4632      	mov	r2, r6
c0de0abe:	f004 fe35 	bl	c0de572c <bagl_hal_draw_rect>
c0de0ac2:	4620      	mov	r0, r4
c0de0ac4:	9c14      	ldr	r4, [sp, #80]	; 0x50
c0de0ac6:	9000      	str	r0, [sp, #0]
c0de0ac8:	9804      	ldr	r0, [sp, #16]
c0de0aca:	1941      	adds	r1, r0, r5
c0de0acc:	9811      	ldr	r0, [sp, #68]	; 0x44
c0de0ace:	4632      	mov	r2, r6
c0de0ad0:	4606      	mov	r6, r0
c0de0ad2:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de0ad4:	f004 fe2a 	bl	c0de572c <bagl_hal_draw_rect>
c0de0ad8:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de0ada:	2800      	cmp	r0, #0
c0de0adc:	d106      	bne.n	c0de0aec <bagl_draw_circle_helper+0x228>
c0de0ade:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de0ae0:	2800      	cmp	r0, #0
c0de0ae2:	d053      	beq.n	c0de0b8c <bagl_draw_circle_helper+0x2c8>
c0de0ae4:	9818      	ldr	r0, [sp, #96]	; 0x60
c0de0ae6:	2800      	cmp	r0, #0
c0de0ae8:	d11e      	bne.n	c0de0b28 <bagl_draw_circle_helper+0x264>
c0de0aea:	e046      	b.n	c0de0b7a <bagl_draw_circle_helper+0x2b6>
c0de0aec:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0aee:	1945      	adds	r5, r0, r5
c0de0af0:	9818      	ldr	r0, [sp, #96]	; 0x60
c0de0af2:	2800      	cmp	r0, #0
c0de0af4:	d035      	beq.n	c0de0b62 <bagl_draw_circle_helper+0x29e>
c0de0af6:	9c1c      	ldr	r4, [sp, #112]	; 0x70
c0de0af8:	9400      	str	r4, [sp, #0]
c0de0afa:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de0afc:	1a3b      	subs	r3, r7, r0
c0de0afe:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de0b00:	9e1a      	ldr	r6, [sp, #104]	; 0x68
c0de0b02:	4631      	mov	r1, r6
c0de0b04:	462a      	mov	r2, r5
c0de0b06:	f004 fe11 	bl	c0de572c <bagl_hal_draw_rect>
c0de0b0a:	9400      	str	r4, [sp, #0]
c0de0b0c:	9c14      	ldr	r4, [sp, #80]	; 0x50
c0de0b0e:	19b8      	adds	r0, r7, r6
c0de0b10:	9e11      	ldr	r6, [sp, #68]	; 0x44
c0de0b12:	9906      	ldr	r1, [sp, #24]
c0de0b14:	1841      	adds	r1, r0, r1
c0de0b16:	4630      	mov	r0, r6
c0de0b18:	462a      	mov	r2, r5
c0de0b1a:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de0b1c:	f004 fe06 	bl	c0de572c <bagl_hal_draw_rect>
c0de0b20:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de0b22:	2800      	cmp	r0, #0
c0de0b24:	9d19      	ldr	r5, [sp, #100]	; 0x64
c0de0b26:	d031      	beq.n	c0de0b8c <bagl_draw_circle_helper+0x2c8>
c0de0b28:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0b2a:	1bc5      	subs	r5, r0, r7
c0de0b2c:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de0b2e:	42b8      	cmp	r0, r7
c0de0b30:	9915      	ldr	r1, [sp, #84]	; 0x54
c0de0b32:	d00a      	beq.n	c0de0b4a <bagl_draw_circle_helper+0x286>
c0de0b34:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0b36:	9000      	str	r0, [sp, #0]
c0de0b38:	9803      	ldr	r0, [sp, #12]
c0de0b3a:	1840      	adds	r0, r0, r1
c0de0b3c:	1c83      	adds	r3, r0, #2
c0de0b3e:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de0b40:	991a      	ldr	r1, [sp, #104]	; 0x68
c0de0b42:	462a      	mov	r2, r5
c0de0b44:	f004 fdf2 	bl	c0de572c <bagl_hal_draw_rect>
c0de0b48:	9915      	ldr	r1, [sp, #84]	; 0x54
c0de0b4a:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0b4c:	9000      	str	r0, [sp, #0]
c0de0b4e:	9805      	ldr	r0, [sp, #20]
c0de0b50:	1840      	adds	r0, r0, r1
c0de0b52:	1c81      	adds	r1, r0, #2
c0de0b54:	4630      	mov	r0, r6
c0de0b56:	462a      	mov	r2, r5
c0de0b58:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de0b5a:	f004 fde7 	bl	c0de572c <bagl_hal_draw_rect>
c0de0b5e:	9d19      	ldr	r5, [sp, #100]	; 0x64
c0de0b60:	e014      	b.n	c0de0b8c <bagl_draw_circle_helper+0x2c8>
c0de0b62:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0b64:	9000      	str	r0, [sp, #0]
c0de0b66:	4630      	mov	r0, r6
c0de0b68:	991a      	ldr	r1, [sp, #104]	; 0x68
c0de0b6a:	462a      	mov	r2, r5
c0de0b6c:	463b      	mov	r3, r7
c0de0b6e:	f004 fddd 	bl	c0de572c <bagl_hal_draw_rect>
c0de0b72:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de0b74:	2800      	cmp	r0, #0
c0de0b76:	9d19      	ldr	r5, [sp, #100]	; 0x64
c0de0b78:	d008      	beq.n	c0de0b8c <bagl_draw_circle_helper+0x2c8>
c0de0b7a:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0b7c:	9000      	str	r0, [sp, #0]
c0de0b7e:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0b80:	1bc2      	subs	r2, r0, r7
c0de0b82:	4630      	mov	r0, r6
c0de0b84:	991a      	ldr	r1, [sp, #104]	; 0x68
c0de0b86:	9b17      	ldr	r3, [sp, #92]	; 0x5c
c0de0b88:	f004 fdd0 	bl	c0de572c <bagl_hal_draw_rect>
c0de0b8c:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de0b8e:	2800      	cmp	r0, #0
c0de0b90:	d106      	bne.n	c0de0ba0 <bagl_draw_circle_helper+0x2dc>
c0de0b92:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0b94:	2800      	cmp	r0, #0
c0de0b96:	d056      	beq.n	c0de0c46 <bagl_draw_circle_helper+0x382>
c0de0b98:	9818      	ldr	r0, [sp, #96]	; 0x60
c0de0b9a:	2800      	cmp	r0, #0
c0de0b9c:	d11e      	bne.n	c0de0bdc <bagl_draw_circle_helper+0x318>
c0de0b9e:	e031      	b.n	c0de0c04 <bagl_draw_circle_helper+0x340>
c0de0ba0:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0ba2:	1945      	adds	r5, r0, r5
c0de0ba4:	981a      	ldr	r0, [sp, #104]	; 0x68
c0de0ba6:	1bc6      	subs	r6, r0, r7
c0de0ba8:	9818      	ldr	r0, [sp, #96]	; 0x60
c0de0baa:	2800      	cmp	r0, #0
c0de0bac:	d01d      	beq.n	c0de0bea <bagl_draw_circle_helper+0x326>
c0de0bae:	9c1c      	ldr	r4, [sp, #112]	; 0x70
c0de0bb0:	9400      	str	r4, [sp, #0]
c0de0bb2:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de0bb4:	1a3b      	subs	r3, r7, r0
c0de0bb6:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de0bb8:	4631      	mov	r1, r6
c0de0bba:	462a      	mov	r2, r5
c0de0bbc:	f004 fdb6 	bl	c0de572c <bagl_hal_draw_rect>
c0de0bc0:	9400      	str	r4, [sp, #0]
c0de0bc2:	9c14      	ldr	r4, [sp, #80]	; 0x50
c0de0bc4:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de0bc6:	1a31      	subs	r1, r6, r0
c0de0bc8:	9e11      	ldr	r6, [sp, #68]	; 0x44
c0de0bca:	4630      	mov	r0, r6
c0de0bcc:	462a      	mov	r2, r5
c0de0bce:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de0bd0:	f004 fdac 	bl	c0de572c <bagl_hal_draw_rect>
c0de0bd4:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0bd6:	2800      	cmp	r0, #0
c0de0bd8:	9d19      	ldr	r5, [sp, #100]	; 0x64
c0de0bda:	d034      	beq.n	c0de0c46 <bagl_draw_circle_helper+0x382>
c0de0bdc:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de0bde:	42b8      	cmp	r0, r7
c0de0be0:	d119      	bne.n	c0de0c16 <bagl_draw_circle_helper+0x352>
c0de0be2:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0be4:	1bc2      	subs	r2, r0, r7
c0de0be6:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0be8:	e026      	b.n	c0de0c38 <bagl_draw_circle_helper+0x374>
c0de0bea:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0bec:	9000      	str	r0, [sp, #0]
c0de0bee:	9811      	ldr	r0, [sp, #68]	; 0x44
c0de0bf0:	4631      	mov	r1, r6
c0de0bf2:	4606      	mov	r6, r0
c0de0bf4:	462a      	mov	r2, r5
c0de0bf6:	463b      	mov	r3, r7
c0de0bf8:	f004 fd98 	bl	c0de572c <bagl_hal_draw_rect>
c0de0bfc:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0bfe:	2800      	cmp	r0, #0
c0de0c00:	9d19      	ldr	r5, [sp, #100]	; 0x64
c0de0c02:	d020      	beq.n	c0de0c46 <bagl_draw_circle_helper+0x382>
c0de0c04:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0c06:	9000      	str	r0, [sp, #0]
c0de0c08:	981a      	ldr	r0, [sp, #104]	; 0x68
c0de0c0a:	1941      	adds	r1, r0, r5
c0de0c0c:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0c0e:	1bc2      	subs	r2, r0, r7
c0de0c10:	4630      	mov	r0, r6
c0de0c12:	9b17      	ldr	r3, [sp, #92]	; 0x5c
c0de0c14:	e015      	b.n	c0de0c42 <bagl_draw_circle_helper+0x37e>
c0de0c16:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0c18:	9000      	str	r0, [sp, #0]
c0de0c1a:	981a      	ldr	r0, [sp, #104]	; 0x68
c0de0c1c:	1941      	adds	r1, r0, r5
c0de0c1e:	981b      	ldr	r0, [sp, #108]	; 0x6c
c0de0c20:	1bc4      	subs	r4, r0, r7
c0de0c22:	9803      	ldr	r0, [sp, #12]
c0de0c24:	9a15      	ldr	r2, [sp, #84]	; 0x54
c0de0c26:	1880      	adds	r0, r0, r2
c0de0c28:	1c83      	adds	r3, r0, #2
c0de0c2a:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de0c2c:	4622      	mov	r2, r4
c0de0c2e:	f004 fd7d 	bl	c0de572c <bagl_hal_draw_rect>
c0de0c32:	4622      	mov	r2, r4
c0de0c34:	981c      	ldr	r0, [sp, #112]	; 0x70
c0de0c36:	9c14      	ldr	r4, [sp, #80]	; 0x50
c0de0c38:	9000      	str	r0, [sp, #0]
c0de0c3a:	9804      	ldr	r0, [sp, #16]
c0de0c3c:	1941      	adds	r1, r0, r5
c0de0c3e:	4630      	mov	r0, r6
c0de0c40:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de0c42:	f004 fd73 	bl	c0de572c <bagl_hal_draw_rect>
c0de0c46:	1e79      	subs	r1, r7, #1
c0de0c48:	2c01      	cmp	r4, #1
c0de0c4a:	4638      	mov	r0, r7
c0de0c4c:	db00      	blt.n	c0de0c50 <bagl_draw_circle_helper+0x38c>
c0de0c4e:	4608      	mov	r0, r1
c0de0c50:	9a16      	ldr	r2, [sp, #88]	; 0x58
c0de0c52:	1c52      	adds	r2, r2, #1
c0de0c54:	2c01      	cmp	r4, #1
c0de0c56:	9216      	str	r2, [sp, #88]	; 0x58
c0de0c58:	db01      	blt.n	c0de0c5e <bagl_draw_circle_helper+0x39a>
c0de0c5a:	9a16      	ldr	r2, [sp, #88]	; 0x58
c0de0c5c:	1a52      	subs	r2, r2, r1
c0de0c5e:	0051      	lsls	r1, r2, #1
c0de0c60:	1861      	adds	r1, r4, r1
c0de0c62:	1c4c      	adds	r4, r1, #1
c0de0c64:	1e6d      	subs	r5, r5, #1
c0de0c66:	9917      	ldr	r1, [sp, #92]	; 0x5c
c0de0c68:	4281      	cmp	r1, r0
c0de0c6a:	9713      	str	r7, [sp, #76]	; 0x4c
c0de0c6c:	4607      	mov	r7, r0
c0de0c6e:	da00      	bge.n	c0de0c72 <bagl_draw_circle_helper+0x3ae>
c0de0c70:	e670      	b.n	c0de0954 <bagl_draw_circle_helper+0x90>
c0de0c72:	b01d      	add	sp, #116	; 0x74
c0de0c74:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de0c76 <bagl_draw_glyph>:
c0de0c76:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0c78:	b089      	sub	sp, #36	; 0x24
c0de0c7a:	688e      	ldr	r6, [r1, #8]
c0de0c7c:	2e02      	cmp	r6, #2
c0de0c7e:	d820      	bhi.n	c0de0cc2 <bagl_draw_glyph+0x4c>
c0de0c80:	460c      	mov	r4, r1
c0de0c82:	2104      	movs	r1, #4
c0de0c84:	5e41      	ldrsh	r1, [r0, r1]
c0de0c86:	9108      	str	r1, [sp, #32]
c0de0c88:	2102      	movs	r1, #2
c0de0c8a:	5e40      	ldrsh	r0, [r0, r1]
c0de0c8c:	9005      	str	r0, [sp, #20]
c0de0c8e:	6820      	ldr	r0, [r4, #0]
c0de0c90:	9006      	str	r0, [sp, #24]
c0de0c92:	6860      	ldr	r0, [r4, #4]
c0de0c94:	9007      	str	r0, [sp, #28]
c0de0c96:	68e0      	ldr	r0, [r4, #12]
c0de0c98:	f004 f81e 	bl	c0de4cd8 <pic>
c0de0c9c:	4605      	mov	r5, r0
c0de0c9e:	68a7      	ldr	r7, [r4, #8]
c0de0ca0:	6920      	ldr	r0, [r4, #16]
c0de0ca2:	f004 f819 	bl	c0de4cd8 <pic>
c0de0ca6:	cc0e      	ldmia	r4!, {r1, r2, r3}
c0de0ca8:	2401      	movs	r4, #1
c0de0caa:	40b4      	lsls	r4, r6
c0de0cac:	434b      	muls	r3, r1
c0de0cae:	4353      	muls	r3, r2
c0de0cb0:	a900      	add	r1, sp, #0
c0de0cb2:	c1b0      	stmia	r1!, {r4, r5, r7}
c0de0cb4:	9003      	str	r0, [sp, #12]
c0de0cb6:	9304      	str	r3, [sp, #16]
c0de0cb8:	9908      	ldr	r1, [sp, #32]
c0de0cba:	ab05      	add	r3, sp, #20
c0de0cbc:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de0cbe:	f004 fd1d 	bl	c0de56fc <bagl_hal_draw_bitmap_within_rect>
c0de0cc2:	b009      	add	sp, #36	; 0x24
c0de0cc4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0cc6:	d4d4      	bmi.n	c0de0c72 <bagl_draw_circle_helper+0x3ae>

c0de0cc8 <aci_gap_set_non_discoverable>:
c0de0cc8:	b570      	push	{r4, r5, r6, lr}
c0de0cca:	b088      	sub	sp, #32
c0de0ccc:	ae01      	add	r6, sp, #4
c0de0cce:	2400      	movs	r4, #0
c0de0cd0:	7034      	strb	r4, [r6, #0]
c0de0cd2:	ad02      	add	r5, sp, #8
c0de0cd4:	2218      	movs	r2, #24
c0de0cd6:	4628      	mov	r0, r5
c0de0cd8:	4621      	mov	r1, r4
c0de0cda:	f003 ff1f 	bl	c0de4b1c <Osal_MemSet>
c0de0cde:	2001      	movs	r0, #1
c0de0ce0:	9007      	str	r0, [sp, #28]
c0de0ce2:	9606      	str	r6, [sp, #24]
c0de0ce4:	4806      	ldr	r0, [pc, #24]	; (c0de0d00 <aci_gap_set_non_discoverable+0x38>)
c0de0ce6:	9002      	str	r0, [sp, #8]
c0de0ce8:	4628      	mov	r0, r5
c0de0cea:	4621      	mov	r1, r4
c0de0cec:	f002 f820 	bl	c0de2d30 <hci_send_req>
c0de0cf0:	2800      	cmp	r0, #0
c0de0cf2:	d401      	bmi.n	c0de0cf8 <aci_gap_set_non_discoverable+0x30>
c0de0cf4:	9801      	ldr	r0, [sp, #4]
c0de0cf6:	e000      	b.n	c0de0cfa <aci_gap_set_non_discoverable+0x32>
c0de0cf8:	43e0      	mvns	r0, r4
c0de0cfa:	b2c0      	uxtb	r0, r0
c0de0cfc:	b008      	add	sp, #32
c0de0cfe:	bd70      	pop	{r4, r5, r6, pc}
c0de0d00:	0081003f 	.word	0x0081003f

c0de0d04 <aci_gap_set_discoverable>:
c0de0d04:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0d06:	b0cf      	sub	sp, #316	; 0x13c
c0de0d08:	0a15      	lsrs	r5, r2, #8
c0de0d0a:	ac04      	add	r4, sp, #16
c0de0d0c:	7125      	strb	r5, [r4, #4]
c0de0d0e:	70e2      	strb	r2, [r4, #3]
c0de0d10:	0a0a      	lsrs	r2, r1, #8
c0de0d12:	70a2      	strb	r2, [r4, #2]
c0de0d14:	7061      	strb	r1, [r4, #1]
c0de0d16:	9d55      	ldr	r5, [sp, #340]	; 0x154
c0de0d18:	71e5      	strb	r5, [r4, #7]
c0de0d1a:	9954      	ldr	r1, [sp, #336]	; 0x150
c0de0d1c:	71a1      	strb	r1, [r4, #6]
c0de0d1e:	7163      	strb	r3, [r4, #5]
c0de0d20:	7020      	strb	r0, [r4, #0]
c0de0d22:	a903      	add	r1, sp, #12
c0de0d24:	9102      	str	r1, [sp, #8]
c0de0d26:	2000      	movs	r0, #0
c0de0d28:	9001      	str	r0, [sp, #4]
c0de0d2a:	7008      	strb	r0, [r1, #0]
c0de0d2c:	4627      	mov	r7, r4
c0de0d2e:	3708      	adds	r7, #8
c0de0d30:	9956      	ldr	r1, [sp, #344]	; 0x158
c0de0d32:	4638      	mov	r0, r7
c0de0d34:	462a      	mov	r2, r5
c0de0d36:	f003 feeb 	bl	c0de4b10 <Osal_MemCpy>
c0de0d3a:	9e57      	ldr	r6, [sp, #348]	; 0x15c
c0de0d3c:	557e      	strb	r6, [r7, r5]
c0de0d3e:	1978      	adds	r0, r7, r5
c0de0d40:	1c47      	adds	r7, r0, #1
c0de0d42:	9958      	ldr	r1, [sp, #352]	; 0x160
c0de0d44:	4638      	mov	r0, r7
c0de0d46:	4632      	mov	r2, r6
c0de0d48:	f003 fee2 	bl	c0de4b10 <Osal_MemCpy>
c0de0d4c:	9859      	ldr	r0, [sp, #356]	; 0x164
c0de0d4e:	55b8      	strb	r0, [r7, r6]
c0de0d50:	19b9      	adds	r1, r7, r6
c0de0d52:	9a5a      	ldr	r2, [sp, #360]	; 0x168
c0de0d54:	0a13      	lsrs	r3, r2, #8
c0de0d56:	70cb      	strb	r3, [r1, #3]
c0de0d58:	708a      	strb	r2, [r1, #2]
c0de0d5a:	0a00      	lsrs	r0, r0, #8
c0de0d5c:	7048      	strb	r0, [r1, #1]
c0de0d5e:	a849      	add	r0, sp, #292	; 0x124
c0de0d60:	9000      	str	r0, [sp, #0]
c0de0d62:	2218      	movs	r2, #24
c0de0d64:	9f01      	ldr	r7, [sp, #4]
c0de0d66:	4639      	mov	r1, r7
c0de0d68:	f003 fed8 	bl	c0de4b1c <Osal_MemSet>
c0de0d6c:	2001      	movs	r0, #1
c0de0d6e:	904e      	str	r0, [sp, #312]	; 0x138
c0de0d70:	9802      	ldr	r0, [sp, #8]
c0de0d72:	904d      	str	r0, [sp, #308]	; 0x134
c0de0d74:	19a8      	adds	r0, r5, r6
c0de0d76:	300d      	adds	r0, #13
c0de0d78:	904c      	str	r0, [sp, #304]	; 0x130
c0de0d7a:	944b      	str	r4, [sp, #300]	; 0x12c
c0de0d7c:	4806      	ldr	r0, [pc, #24]	; (c0de0d98 <aci_gap_set_discoverable+0x94>)
c0de0d7e:	9049      	str	r0, [sp, #292]	; 0x124
c0de0d80:	9800      	ldr	r0, [sp, #0]
c0de0d82:	4639      	mov	r1, r7
c0de0d84:	f001 ffd4 	bl	c0de2d30 <hci_send_req>
c0de0d88:	2800      	cmp	r0, #0
c0de0d8a:	d401      	bmi.n	c0de0d90 <aci_gap_set_discoverable+0x8c>
c0de0d8c:	9803      	ldr	r0, [sp, #12]
c0de0d8e:	e000      	b.n	c0de0d92 <aci_gap_set_discoverable+0x8e>
c0de0d90:	43f8      	mvns	r0, r7
c0de0d92:	b2c0      	uxtb	r0, r0
c0de0d94:	b04f      	add	sp, #316	; 0x13c
c0de0d96:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0d98:	0083003f 	.word	0x0083003f

c0de0d9c <aci_gap_set_io_capability>:
c0de0d9c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0d9e:	b0cd      	sub	sp, #308	; 0x134
c0de0da0:	ae02      	add	r6, sp, #8
c0de0da2:	7030      	strb	r0, [r6, #0]
c0de0da4:	af01      	add	r7, sp, #4
c0de0da6:	2400      	movs	r4, #0
c0de0da8:	703c      	strb	r4, [r7, #0]
c0de0daa:	ad47      	add	r5, sp, #284	; 0x11c
c0de0dac:	2218      	movs	r2, #24
c0de0dae:	4628      	mov	r0, r5
c0de0db0:	4621      	mov	r1, r4
c0de0db2:	f003 feb3 	bl	c0de4b1c <Osal_MemSet>
c0de0db6:	2001      	movs	r0, #1
c0de0db8:	904c      	str	r0, [sp, #304]	; 0x130
c0de0dba:	974b      	str	r7, [sp, #300]	; 0x12c
c0de0dbc:	904a      	str	r0, [sp, #296]	; 0x128
c0de0dbe:	9649      	str	r6, [sp, #292]	; 0x124
c0de0dc0:	4806      	ldr	r0, [pc, #24]	; (c0de0ddc <aci_gap_set_io_capability+0x40>)
c0de0dc2:	9047      	str	r0, [sp, #284]	; 0x11c
c0de0dc4:	4628      	mov	r0, r5
c0de0dc6:	4621      	mov	r1, r4
c0de0dc8:	f001 ffb2 	bl	c0de2d30 <hci_send_req>
c0de0dcc:	2800      	cmp	r0, #0
c0de0dce:	d401      	bmi.n	c0de0dd4 <aci_gap_set_io_capability+0x38>
c0de0dd0:	9801      	ldr	r0, [sp, #4]
c0de0dd2:	e000      	b.n	c0de0dd6 <aci_gap_set_io_capability+0x3a>
c0de0dd4:	43e0      	mvns	r0, r4
c0de0dd6:	b2c0      	uxtb	r0, r0
c0de0dd8:	b04d      	add	sp, #308	; 0x134
c0de0dda:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0ddc:	0085003f 	.word	0x0085003f

c0de0de0 <aci_gap_set_authentication_requirement>:
c0de0de0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0de2:	b0cd      	sub	sp, #308	; 0x134
c0de0de4:	9c55      	ldr	r4, [sp, #340]	; 0x154
c0de0de6:	0e25      	lsrs	r5, r4, #24
c0de0de8:	ae02      	add	r6, sp, #8
c0de0dea:	72b5      	strb	r5, [r6, #10]
c0de0dec:	0c25      	lsrs	r5, r4, #16
c0de0dee:	7275      	strb	r5, [r6, #9]
c0de0df0:	0a25      	lsrs	r5, r4, #8
c0de0df2:	7235      	strb	r5, [r6, #8]
c0de0df4:	71f4      	strb	r4, [r6, #7]
c0de0df6:	9c56      	ldr	r4, [sp, #344]	; 0x158
c0de0df8:	72f4      	strb	r4, [r6, #11]
c0de0dfa:	9c54      	ldr	r4, [sp, #336]	; 0x150
c0de0dfc:	71b4      	strb	r4, [r6, #6]
c0de0dfe:	9c53      	ldr	r4, [sp, #332]	; 0x14c
c0de0e00:	7174      	strb	r4, [r6, #5]
c0de0e02:	9c52      	ldr	r4, [sp, #328]	; 0x148
c0de0e04:	7134      	strb	r4, [r6, #4]
c0de0e06:	70f3      	strb	r3, [r6, #3]
c0de0e08:	70b2      	strb	r2, [r6, #2]
c0de0e0a:	7071      	strb	r1, [r6, #1]
c0de0e0c:	7030      	strb	r0, [r6, #0]
c0de0e0e:	af01      	add	r7, sp, #4
c0de0e10:	2400      	movs	r4, #0
c0de0e12:	703c      	strb	r4, [r7, #0]
c0de0e14:	ad47      	add	r5, sp, #284	; 0x11c
c0de0e16:	2218      	movs	r2, #24
c0de0e18:	4628      	mov	r0, r5
c0de0e1a:	4621      	mov	r1, r4
c0de0e1c:	f003 fe7e 	bl	c0de4b1c <Osal_MemSet>
c0de0e20:	2001      	movs	r0, #1
c0de0e22:	904c      	str	r0, [sp, #304]	; 0x130
c0de0e24:	974b      	str	r7, [sp, #300]	; 0x12c
c0de0e26:	200c      	movs	r0, #12
c0de0e28:	904a      	str	r0, [sp, #296]	; 0x128
c0de0e2a:	9649      	str	r6, [sp, #292]	; 0x124
c0de0e2c:	4806      	ldr	r0, [pc, #24]	; (c0de0e48 <aci_gap_set_authentication_requirement+0x68>)
c0de0e2e:	9047      	str	r0, [sp, #284]	; 0x11c
c0de0e30:	4628      	mov	r0, r5
c0de0e32:	4621      	mov	r1, r4
c0de0e34:	f001 ff7c 	bl	c0de2d30 <hci_send_req>
c0de0e38:	2800      	cmp	r0, #0
c0de0e3a:	d401      	bmi.n	c0de0e40 <aci_gap_set_authentication_requirement+0x60>
c0de0e3c:	9801      	ldr	r0, [sp, #4]
c0de0e3e:	e000      	b.n	c0de0e42 <aci_gap_set_authentication_requirement+0x62>
c0de0e40:	43e0      	mvns	r0, r4
c0de0e42:	b2c0      	uxtb	r0, r0
c0de0e44:	b04d      	add	sp, #308	; 0x134
c0de0e46:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0e48:	0086003f 	.word	0x0086003f

c0de0e4c <aci_gap_pass_key_resp>:
c0de0e4c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0e4e:	b0cd      	sub	sp, #308	; 0x134
c0de0e50:	0c0a      	lsrs	r2, r1, #16
c0de0e52:	ae02      	add	r6, sp, #8
c0de0e54:	80b2      	strh	r2, [r6, #4]
c0de0e56:	8071      	strh	r1, [r6, #2]
c0de0e58:	8030      	strh	r0, [r6, #0]
c0de0e5a:	af01      	add	r7, sp, #4
c0de0e5c:	2400      	movs	r4, #0
c0de0e5e:	703c      	strb	r4, [r7, #0]
c0de0e60:	ad47      	add	r5, sp, #284	; 0x11c
c0de0e62:	2218      	movs	r2, #24
c0de0e64:	4628      	mov	r0, r5
c0de0e66:	4621      	mov	r1, r4
c0de0e68:	f003 fe58 	bl	c0de4b1c <Osal_MemSet>
c0de0e6c:	2001      	movs	r0, #1
c0de0e6e:	904c      	str	r0, [sp, #304]	; 0x130
c0de0e70:	974b      	str	r7, [sp, #300]	; 0x12c
c0de0e72:	2006      	movs	r0, #6
c0de0e74:	904a      	str	r0, [sp, #296]	; 0x128
c0de0e76:	9649      	str	r6, [sp, #292]	; 0x124
c0de0e78:	4806      	ldr	r0, [pc, #24]	; (c0de0e94 <aci_gap_pass_key_resp+0x48>)
c0de0e7a:	9047      	str	r0, [sp, #284]	; 0x11c
c0de0e7c:	4628      	mov	r0, r5
c0de0e7e:	4621      	mov	r1, r4
c0de0e80:	f001 ff56 	bl	c0de2d30 <hci_send_req>
c0de0e84:	2800      	cmp	r0, #0
c0de0e86:	d401      	bmi.n	c0de0e8c <aci_gap_pass_key_resp+0x40>
c0de0e88:	9801      	ldr	r0, [sp, #4]
c0de0e8a:	e000      	b.n	c0de0e8e <aci_gap_pass_key_resp+0x42>
c0de0e8c:	43e0      	mvns	r0, r4
c0de0e8e:	b2c0      	uxtb	r0, r0
c0de0e90:	b04d      	add	sp, #308	; 0x134
c0de0e92:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0e94:	0088003f 	.word	0x0088003f

c0de0e98 <aci_gap_init>:
c0de0e98:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0e9a:	b0d1      	sub	sp, #324	; 0x144
c0de0e9c:	9300      	str	r3, [sp, #0]
c0de0e9e:	9201      	str	r2, [sp, #4]
c0de0ea0:	9102      	str	r1, [sp, #8]
c0de0ea2:	4604      	mov	r4, r0
c0de0ea4:	a804      	add	r0, sp, #16
c0de0ea6:	9003      	str	r0, [sp, #12]
c0de0ea8:	2600      	movs	r6, #0
c0de0eaa:	2707      	movs	r7, #7
c0de0eac:	4631      	mov	r1, r6
c0de0eae:	463a      	mov	r2, r7
c0de0eb0:	f003 fe34 	bl	c0de4b1c <Osal_MemSet>
c0de0eb4:	ad06      	add	r5, sp, #24
c0de0eb6:	9801      	ldr	r0, [sp, #4]
c0de0eb8:	70a8      	strb	r0, [r5, #2]
c0de0eba:	9802      	ldr	r0, [sp, #8]
c0de0ebc:	7068      	strb	r0, [r5, #1]
c0de0ebe:	702c      	strb	r4, [r5, #0]
c0de0ec0:	ac4b      	add	r4, sp, #300	; 0x12c
c0de0ec2:	2218      	movs	r2, #24
c0de0ec4:	4620      	mov	r0, r4
c0de0ec6:	4631      	mov	r1, r6
c0de0ec8:	f003 fe28 	bl	c0de4b1c <Osal_MemSet>
c0de0ecc:	9750      	str	r7, [sp, #320]	; 0x140
c0de0ece:	9f03      	ldr	r7, [sp, #12]
c0de0ed0:	974f      	str	r7, [sp, #316]	; 0x13c
c0de0ed2:	2003      	movs	r0, #3
c0de0ed4:	904e      	str	r0, [sp, #312]	; 0x138
c0de0ed6:	954d      	str	r5, [sp, #308]	; 0x134
c0de0ed8:	4811      	ldr	r0, [pc, #68]	; (c0de0f20 <aci_gap_init+0x88>)
c0de0eda:	904b      	str	r0, [sp, #300]	; 0x12c
c0de0edc:	4620      	mov	r0, r4
c0de0ede:	4631      	mov	r1, r6
c0de0ee0:	f001 ff26 	bl	c0de2d30 <hci_send_req>
c0de0ee4:	2800      	cmp	r0, #0
c0de0ee6:	d418      	bmi.n	c0de0f1a <aci_gap_init+0x82>
c0de0ee8:	a804      	add	r0, sp, #16
c0de0eea:	7800      	ldrb	r0, [r0, #0]
c0de0eec:	2800      	cmp	r0, #0
c0de0eee:	d115      	bne.n	c0de0f1c <aci_gap_init+0x84>
c0de0ef0:	1c78      	adds	r0, r7, #1
c0de0ef2:	9957      	ldr	r1, [sp, #348]	; 0x15c
c0de0ef4:	9a56      	ldr	r2, [sp, #344]	; 0x158
c0de0ef6:	7803      	ldrb	r3, [r0, #0]
c0de0ef8:	7844      	ldrb	r4, [r0, #1]
c0de0efa:	0224      	lsls	r4, r4, #8
c0de0efc:	18e3      	adds	r3, r4, r3
c0de0efe:	9c00      	ldr	r4, [sp, #0]
c0de0f00:	8023      	strh	r3, [r4, #0]
c0de0f02:	7883      	ldrb	r3, [r0, #2]
c0de0f04:	78c4      	ldrb	r4, [r0, #3]
c0de0f06:	0224      	lsls	r4, r4, #8
c0de0f08:	18e3      	adds	r3, r4, r3
c0de0f0a:	8013      	strh	r3, [r2, #0]
c0de0f0c:	7902      	ldrb	r2, [r0, #4]
c0de0f0e:	7940      	ldrb	r0, [r0, #5]
c0de0f10:	0200      	lsls	r0, r0, #8
c0de0f12:	1880      	adds	r0, r0, r2
c0de0f14:	8008      	strh	r0, [r1, #0]
c0de0f16:	4630      	mov	r0, r6
c0de0f18:	e000      	b.n	c0de0f1c <aci_gap_init+0x84>
c0de0f1a:	20ff      	movs	r0, #255	; 0xff
c0de0f1c:	b051      	add	sp, #324	; 0x144
c0de0f1e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0f20:	008a003f 	.word	0x008a003f

c0de0f24 <aci_gap_update_adv_data>:
c0de0f24:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0f26:	b0cd      	sub	sp, #308	; 0x134
c0de0f28:	4605      	mov	r5, r0
c0de0f2a:	af02      	add	r7, sp, #8
c0de0f2c:	7038      	strb	r0, [r7, #0]
c0de0f2e:	a801      	add	r0, sp, #4
c0de0f30:	9000      	str	r0, [sp, #0]
c0de0f32:	2400      	movs	r4, #0
c0de0f34:	7004      	strb	r4, [r0, #0]
c0de0f36:	1c78      	adds	r0, r7, #1
c0de0f38:	462a      	mov	r2, r5
c0de0f3a:	f003 fde9 	bl	c0de4b10 <Osal_MemCpy>
c0de0f3e:	ae47      	add	r6, sp, #284	; 0x11c
c0de0f40:	2218      	movs	r2, #24
c0de0f42:	4630      	mov	r0, r6
c0de0f44:	4621      	mov	r1, r4
c0de0f46:	f003 fde9 	bl	c0de4b1c <Osal_MemSet>
c0de0f4a:	2001      	movs	r0, #1
c0de0f4c:	904c      	str	r0, [sp, #304]	; 0x130
c0de0f4e:	9800      	ldr	r0, [sp, #0]
c0de0f50:	904b      	str	r0, [sp, #300]	; 0x12c
c0de0f52:	1c68      	adds	r0, r5, #1
c0de0f54:	904a      	str	r0, [sp, #296]	; 0x128
c0de0f56:	9749      	str	r7, [sp, #292]	; 0x124
c0de0f58:	4806      	ldr	r0, [pc, #24]	; (c0de0f74 <aci_gap_update_adv_data+0x50>)
c0de0f5a:	9047      	str	r0, [sp, #284]	; 0x11c
c0de0f5c:	4630      	mov	r0, r6
c0de0f5e:	4621      	mov	r1, r4
c0de0f60:	f001 fee6 	bl	c0de2d30 <hci_send_req>
c0de0f64:	2800      	cmp	r0, #0
c0de0f66:	d401      	bmi.n	c0de0f6c <aci_gap_update_adv_data+0x48>
c0de0f68:	9801      	ldr	r0, [sp, #4]
c0de0f6a:	e000      	b.n	c0de0f6e <aci_gap_update_adv_data+0x4a>
c0de0f6c:	43e0      	mvns	r0, r4
c0de0f6e:	b2c0      	uxtb	r0, r0
c0de0f70:	b04d      	add	sp, #308	; 0x134
c0de0f72:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0f74:	008e003f 	.word	0x008e003f

c0de0f78 <aci_gap_clear_security_db>:
c0de0f78:	b570      	push	{r4, r5, r6, lr}
c0de0f7a:	b088      	sub	sp, #32
c0de0f7c:	ae01      	add	r6, sp, #4
c0de0f7e:	2400      	movs	r4, #0
c0de0f80:	7034      	strb	r4, [r6, #0]
c0de0f82:	ad02      	add	r5, sp, #8
c0de0f84:	2218      	movs	r2, #24
c0de0f86:	4628      	mov	r0, r5
c0de0f88:	4621      	mov	r1, r4
c0de0f8a:	f003 fdc7 	bl	c0de4b1c <Osal_MemSet>
c0de0f8e:	2001      	movs	r0, #1
c0de0f90:	9007      	str	r0, [sp, #28]
c0de0f92:	9606      	str	r6, [sp, #24]
c0de0f94:	4806      	ldr	r0, [pc, #24]	; (c0de0fb0 <aci_gap_clear_security_db+0x38>)
c0de0f96:	9002      	str	r0, [sp, #8]
c0de0f98:	4628      	mov	r0, r5
c0de0f9a:	4621      	mov	r1, r4
c0de0f9c:	f001 fec8 	bl	c0de2d30 <hci_send_req>
c0de0fa0:	2800      	cmp	r0, #0
c0de0fa2:	d401      	bmi.n	c0de0fa8 <aci_gap_clear_security_db+0x30>
c0de0fa4:	9801      	ldr	r0, [sp, #4]
c0de0fa6:	e000      	b.n	c0de0faa <aci_gap_clear_security_db+0x32>
c0de0fa8:	43e0      	mvns	r0, r4
c0de0faa:	b2c0      	uxtb	r0, r0
c0de0fac:	b008      	add	sp, #32
c0de0fae:	bd70      	pop	{r4, r5, r6, pc}
c0de0fb0:	0094003f 	.word	0x0094003f

c0de0fb4 <aci_gap_numeric_comparison_value_confirm_yesno>:
c0de0fb4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0fb6:	b0cd      	sub	sp, #308	; 0x134
c0de0fb8:	ae02      	add	r6, sp, #8
c0de0fba:	70b1      	strb	r1, [r6, #2]
c0de0fbc:	8030      	strh	r0, [r6, #0]
c0de0fbe:	af01      	add	r7, sp, #4
c0de0fc0:	2400      	movs	r4, #0
c0de0fc2:	703c      	strb	r4, [r7, #0]
c0de0fc4:	ad47      	add	r5, sp, #284	; 0x11c
c0de0fc6:	2218      	movs	r2, #24
c0de0fc8:	4628      	mov	r0, r5
c0de0fca:	4621      	mov	r1, r4
c0de0fcc:	f003 fda6 	bl	c0de4b1c <Osal_MemSet>
c0de0fd0:	2001      	movs	r0, #1
c0de0fd2:	904c      	str	r0, [sp, #304]	; 0x130
c0de0fd4:	974b      	str	r7, [sp, #300]	; 0x12c
c0de0fd6:	2003      	movs	r0, #3
c0de0fd8:	904a      	str	r0, [sp, #296]	; 0x128
c0de0fda:	9649      	str	r6, [sp, #292]	; 0x124
c0de0fdc:	4806      	ldr	r0, [pc, #24]	; (c0de0ff8 <aci_gap_numeric_comparison_value_confirm_yesno+0x44>)
c0de0fde:	9047      	str	r0, [sp, #284]	; 0x11c
c0de0fe0:	4628      	mov	r0, r5
c0de0fe2:	4621      	mov	r1, r4
c0de0fe4:	f001 fea4 	bl	c0de2d30 <hci_send_req>
c0de0fe8:	2800      	cmp	r0, #0
c0de0fea:	d401      	bmi.n	c0de0ff0 <aci_gap_numeric_comparison_value_confirm_yesno+0x3c>
c0de0fec:	9801      	ldr	r0, [sp, #4]
c0de0fee:	e000      	b.n	c0de0ff2 <aci_gap_numeric_comparison_value_confirm_yesno+0x3e>
c0de0ff0:	43e0      	mvns	r0, r4
c0de0ff2:	b2c0      	uxtb	r0, r0
c0de0ff4:	b04d      	add	sp, #308	; 0x134
c0de0ff6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0ff8:	00a5003f 	.word	0x00a5003f

c0de0ffc <aci_gatt_init>:
c0de0ffc:	b570      	push	{r4, r5, r6, lr}
c0de0ffe:	b088      	sub	sp, #32
c0de1000:	ae01      	add	r6, sp, #4
c0de1002:	2400      	movs	r4, #0
c0de1004:	7034      	strb	r4, [r6, #0]
c0de1006:	ad02      	add	r5, sp, #8
c0de1008:	2218      	movs	r2, #24
c0de100a:	4628      	mov	r0, r5
c0de100c:	4621      	mov	r1, r4
c0de100e:	f003 fd85 	bl	c0de4b1c <Osal_MemSet>
c0de1012:	2001      	movs	r0, #1
c0de1014:	9007      	str	r0, [sp, #28]
c0de1016:	9606      	str	r6, [sp, #24]
c0de1018:	4806      	ldr	r0, [pc, #24]	; (c0de1034 <aci_gatt_init+0x38>)
c0de101a:	9002      	str	r0, [sp, #8]
c0de101c:	4628      	mov	r0, r5
c0de101e:	4621      	mov	r1, r4
c0de1020:	f001 fe86 	bl	c0de2d30 <hci_send_req>
c0de1024:	2800      	cmp	r0, #0
c0de1026:	d401      	bmi.n	c0de102c <aci_gatt_init+0x30>
c0de1028:	9801      	ldr	r0, [sp, #4]
c0de102a:	e000      	b.n	c0de102e <aci_gatt_init+0x32>
c0de102c:	43e0      	mvns	r0, r4
c0de102e:	b2c0      	uxtb	r0, r0
c0de1030:	b008      	add	sp, #32
c0de1032:	bd70      	pop	{r4, r5, r6, pc}
c0de1034:	0101003f 	.word	0x0101003f

c0de1038 <aci_gatt_add_service>:
c0de1038:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de103a:	b0cf      	sub	sp, #316	; 0x13c
c0de103c:	9301      	str	r3, [sp, #4]
c0de103e:	9202      	str	r2, [sp, #8]
c0de1040:	460f      	mov	r7, r1
c0de1042:	4606      	mov	r6, r0
c0de1044:	a803      	add	r0, sp, #12
c0de1046:	2100      	movs	r1, #0
c0de1048:	2403      	movs	r4, #3
c0de104a:	4622      	mov	r2, r4
c0de104c:	f003 fd66 	bl	c0de4b1c <Osal_MemSet>
c0de1050:	a804      	add	r0, sp, #16
c0de1052:	7006      	strb	r6, [r0, #0]
c0de1054:	1eb1      	subs	r1, r6, #2
c0de1056:	424a      	negs	r2, r1
c0de1058:	414a      	adcs	r2, r1
c0de105a:	2502      	movs	r5, #2
c0de105c:	2e01      	cmp	r6, #1
c0de105e:	4629      	mov	r1, r5
c0de1060:	d000      	beq.n	c0de1064 <aci_gatt_add_service+0x2c>
c0de1062:	0111      	lsls	r1, r2, #4
c0de1064:	2e01      	cmp	r6, #1
c0de1066:	d002      	beq.n	c0de106e <aci_gatt_add_service+0x36>
c0de1068:	2e02      	cmp	r6, #2
c0de106a:	d12d      	bne.n	c0de10c8 <aci_gatt_add_service+0x90>
c0de106c:	2510      	movs	r5, #16
c0de106e:	1c40      	adds	r0, r0, #1
c0de1070:	1846      	adds	r6, r0, r1
c0de1072:	4639      	mov	r1, r7
c0de1074:	462a      	mov	r2, r5
c0de1076:	f003 fd4b 	bl	c0de4b10 <Osal_MemCpy>
c0de107a:	9801      	ldr	r0, [sp, #4]
c0de107c:	7070      	strb	r0, [r6, #1]
c0de107e:	9802      	ldr	r0, [sp, #8]
c0de1080:	7030      	strb	r0, [r6, #0]
c0de1082:	af49      	add	r7, sp, #292	; 0x124
c0de1084:	2600      	movs	r6, #0
c0de1086:	2218      	movs	r2, #24
c0de1088:	4638      	mov	r0, r7
c0de108a:	4631      	mov	r1, r6
c0de108c:	f003 fd46 	bl	c0de4b1c <Osal_MemSet>
c0de1090:	944e      	str	r4, [sp, #312]	; 0x138
c0de1092:	a803      	add	r0, sp, #12
c0de1094:	904d      	str	r0, [sp, #308]	; 0x134
c0de1096:	1ce8      	adds	r0, r5, #3
c0de1098:	904c      	str	r0, [sp, #304]	; 0x130
c0de109a:	a804      	add	r0, sp, #16
c0de109c:	904b      	str	r0, [sp, #300]	; 0x12c
c0de109e:	480d      	ldr	r0, [pc, #52]	; (c0de10d4 <aci_gatt_add_service+0x9c>)
c0de10a0:	9049      	str	r0, [sp, #292]	; 0x124
c0de10a2:	4638      	mov	r0, r7
c0de10a4:	4631      	mov	r1, r6
c0de10a6:	f001 fe43 	bl	c0de2d30 <hci_send_req>
c0de10aa:	2800      	cmp	r0, #0
c0de10ac:	d40e      	bmi.n	c0de10cc <aci_gatt_add_service+0x94>
c0de10ae:	a803      	add	r0, sp, #12
c0de10b0:	7800      	ldrb	r0, [r0, #0]
c0de10b2:	2800      	cmp	r0, #0
c0de10b4:	d10b      	bne.n	c0de10ce <aci_gatt_add_service+0x96>
c0de10b6:	9854      	ldr	r0, [sp, #336]	; 0x150
c0de10b8:	a903      	add	r1, sp, #12
c0de10ba:	784a      	ldrb	r2, [r1, #1]
c0de10bc:	7889      	ldrb	r1, [r1, #2]
c0de10be:	0209      	lsls	r1, r1, #8
c0de10c0:	1889      	adds	r1, r1, r2
c0de10c2:	8001      	strh	r1, [r0, #0]
c0de10c4:	4630      	mov	r0, r6
c0de10c6:	e002      	b.n	c0de10ce <aci_gatt_add_service+0x96>
c0de10c8:	2047      	movs	r0, #71	; 0x47
c0de10ca:	e000      	b.n	c0de10ce <aci_gatt_add_service+0x96>
c0de10cc:	20ff      	movs	r0, #255	; 0xff
c0de10ce:	b04f      	add	sp, #316	; 0x13c
c0de10d0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de10d2:	46c0      	nop			; (mov r8, r8)
c0de10d4:	0102003f 	.word	0x0102003f

c0de10d8 <aci_gatt_add_char>:
c0de10d8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de10da:	b0d3      	sub	sp, #332	; 0x14c
c0de10dc:	461d      	mov	r5, r3
c0de10de:	9206      	str	r2, [sp, #24]
c0de10e0:	460f      	mov	r7, r1
c0de10e2:	4606      	mov	r6, r0
c0de10e4:	a807      	add	r0, sp, #28
c0de10e6:	2100      	movs	r1, #0
c0de10e8:	2403      	movs	r4, #3
c0de10ea:	4622      	mov	r2, r4
c0de10ec:	f003 fd16 	bl	c0de4b1c <Osal_MemSet>
c0de10f0:	a808      	add	r0, sp, #32
c0de10f2:	7087      	strb	r7, [r0, #2]
c0de10f4:	8006      	strh	r6, [r0, #0]
c0de10f6:	1eb9      	subs	r1, r7, #2
c0de10f8:	424a      	negs	r2, r1
c0de10fa:	414a      	adcs	r2, r1
c0de10fc:	2602      	movs	r6, #2
c0de10fe:	2f01      	cmp	r7, #1
c0de1100:	4631      	mov	r1, r6
c0de1102:	d000      	beq.n	c0de1106 <aci_gatt_add_char+0x2e>
c0de1104:	0111      	lsls	r1, r2, #4
c0de1106:	2f01      	cmp	r7, #1
c0de1108:	d002      	beq.n	c0de1110 <aci_gatt_add_char+0x38>
c0de110a:	2f02      	cmp	r7, #2
c0de110c:	d140      	bne.n	c0de1190 <aci_gatt_add_char+0xb8>
c0de110e:	2610      	movs	r6, #16
c0de1110:	1cc0      	adds	r0, r0, #3
c0de1112:	1847      	adds	r7, r0, r1
c0de1114:	995c      	ldr	r1, [sp, #368]	; 0x170
c0de1116:	9101      	str	r1, [sp, #4]
c0de1118:	9405      	str	r4, [sp, #20]
c0de111a:	9c5b      	ldr	r4, [sp, #364]	; 0x16c
c0de111c:	995a      	ldr	r1, [sp, #360]	; 0x168
c0de111e:	9102      	str	r1, [sp, #8]
c0de1120:	9959      	ldr	r1, [sp, #356]	; 0x164
c0de1122:	9103      	str	r1, [sp, #12]
c0de1124:	9958      	ldr	r1, [sp, #352]	; 0x160
c0de1126:	9104      	str	r1, [sp, #16]
c0de1128:	9906      	ldr	r1, [sp, #24]
c0de112a:	4632      	mov	r2, r6
c0de112c:	f003 fcf0 	bl	c0de4b10 <Osal_MemCpy>
c0de1130:	0a28      	lsrs	r0, r5, #8
c0de1132:	7078      	strb	r0, [r7, #1]
c0de1134:	703d      	strb	r5, [r7, #0]
c0de1136:	9801      	ldr	r0, [sp, #4]
c0de1138:	71b8      	strb	r0, [r7, #6]
c0de113a:	717c      	strb	r4, [r7, #5]
c0de113c:	9802      	ldr	r0, [sp, #8]
c0de113e:	7138      	strb	r0, [r7, #4]
c0de1140:	9803      	ldr	r0, [sp, #12]
c0de1142:	70f8      	strb	r0, [r7, #3]
c0de1144:	9804      	ldr	r0, [sp, #16]
c0de1146:	70b8      	strb	r0, [r7, #2]
c0de1148:	af4d      	add	r7, sp, #308	; 0x134
c0de114a:	2500      	movs	r5, #0
c0de114c:	2218      	movs	r2, #24
c0de114e:	4638      	mov	r0, r7
c0de1150:	4629      	mov	r1, r5
c0de1152:	f003 fce3 	bl	c0de4b1c <Osal_MemSet>
c0de1156:	9805      	ldr	r0, [sp, #20]
c0de1158:	9052      	str	r0, [sp, #328]	; 0x148
c0de115a:	a807      	add	r0, sp, #28
c0de115c:	9051      	str	r0, [sp, #324]	; 0x144
c0de115e:	360a      	adds	r6, #10
c0de1160:	9650      	str	r6, [sp, #320]	; 0x140
c0de1162:	a808      	add	r0, sp, #32
c0de1164:	904f      	str	r0, [sp, #316]	; 0x13c
c0de1166:	480d      	ldr	r0, [pc, #52]	; (c0de119c <aci_gatt_add_char+0xc4>)
c0de1168:	904d      	str	r0, [sp, #308]	; 0x134
c0de116a:	4638      	mov	r0, r7
c0de116c:	4629      	mov	r1, r5
c0de116e:	f001 fddf 	bl	c0de2d30 <hci_send_req>
c0de1172:	2800      	cmp	r0, #0
c0de1174:	d40e      	bmi.n	c0de1194 <aci_gatt_add_char+0xbc>
c0de1176:	a807      	add	r0, sp, #28
c0de1178:	7800      	ldrb	r0, [r0, #0]
c0de117a:	2800      	cmp	r0, #0
c0de117c:	d10b      	bne.n	c0de1196 <aci_gatt_add_char+0xbe>
c0de117e:	985d      	ldr	r0, [sp, #372]	; 0x174
c0de1180:	a907      	add	r1, sp, #28
c0de1182:	784a      	ldrb	r2, [r1, #1]
c0de1184:	7889      	ldrb	r1, [r1, #2]
c0de1186:	0209      	lsls	r1, r1, #8
c0de1188:	1889      	adds	r1, r1, r2
c0de118a:	8001      	strh	r1, [r0, #0]
c0de118c:	4628      	mov	r0, r5
c0de118e:	e002      	b.n	c0de1196 <aci_gatt_add_char+0xbe>
c0de1190:	2047      	movs	r0, #71	; 0x47
c0de1192:	e000      	b.n	c0de1196 <aci_gatt_add_char+0xbe>
c0de1194:	20ff      	movs	r0, #255	; 0xff
c0de1196:	b053      	add	sp, #332	; 0x14c
c0de1198:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de119a:	46c0      	nop			; (mov r8, r8)
c0de119c:	0104003f 	.word	0x0104003f

c0de11a0 <aci_gatt_update_char_value>:
c0de11a0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de11a2:	b0cd      	sub	sp, #308	; 0x134
c0de11a4:	461d      	mov	r5, r3
c0de11a6:	af02      	add	r7, sp, #8
c0de11a8:	717b      	strb	r3, [r7, #5]
c0de11aa:	713a      	strb	r2, [r7, #4]
c0de11ac:	8079      	strh	r1, [r7, #2]
c0de11ae:	8038      	strh	r0, [r7, #0]
c0de11b0:	a801      	add	r0, sp, #4
c0de11b2:	9000      	str	r0, [sp, #0]
c0de11b4:	2400      	movs	r4, #0
c0de11b6:	7004      	strb	r4, [r0, #0]
c0de11b8:	1db8      	adds	r0, r7, #6
c0de11ba:	9952      	ldr	r1, [sp, #328]	; 0x148
c0de11bc:	461a      	mov	r2, r3
c0de11be:	f003 fca7 	bl	c0de4b10 <Osal_MemCpy>
c0de11c2:	ae47      	add	r6, sp, #284	; 0x11c
c0de11c4:	2218      	movs	r2, #24
c0de11c6:	4630      	mov	r0, r6
c0de11c8:	4621      	mov	r1, r4
c0de11ca:	f003 fca7 	bl	c0de4b1c <Osal_MemSet>
c0de11ce:	2001      	movs	r0, #1
c0de11d0:	904c      	str	r0, [sp, #304]	; 0x130
c0de11d2:	9800      	ldr	r0, [sp, #0]
c0de11d4:	904b      	str	r0, [sp, #300]	; 0x12c
c0de11d6:	1da8      	adds	r0, r5, #6
c0de11d8:	904a      	str	r0, [sp, #296]	; 0x128
c0de11da:	9749      	str	r7, [sp, #292]	; 0x124
c0de11dc:	4806      	ldr	r0, [pc, #24]	; (c0de11f8 <aci_gatt_update_char_value+0x58>)
c0de11de:	9047      	str	r0, [sp, #284]	; 0x11c
c0de11e0:	4630      	mov	r0, r6
c0de11e2:	4621      	mov	r1, r4
c0de11e4:	f001 fda4 	bl	c0de2d30 <hci_send_req>
c0de11e8:	2800      	cmp	r0, #0
c0de11ea:	d401      	bmi.n	c0de11f0 <aci_gatt_update_char_value+0x50>
c0de11ec:	9801      	ldr	r0, [sp, #4]
c0de11ee:	e000      	b.n	c0de11f2 <aci_gatt_update_char_value+0x52>
c0de11f0:	43e0      	mvns	r0, r4
c0de11f2:	b2c0      	uxtb	r0, r0
c0de11f4:	b04d      	add	sp, #308	; 0x134
c0de11f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de11f8:	0106003f 	.word	0x0106003f

c0de11fc <aci_gatt_exchange_config>:
c0de11fc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de11fe:	b0cd      	sub	sp, #308	; 0x134
c0de1200:	ae02      	add	r6, sp, #8
c0de1202:	8030      	strh	r0, [r6, #0]
c0de1204:	af01      	add	r7, sp, #4
c0de1206:	2400      	movs	r4, #0
c0de1208:	703c      	strb	r4, [r7, #0]
c0de120a:	ad47      	add	r5, sp, #284	; 0x11c
c0de120c:	2218      	movs	r2, #24
c0de120e:	4628      	mov	r0, r5
c0de1210:	4621      	mov	r1, r4
c0de1212:	f003 fc83 	bl	c0de4b1c <Osal_MemSet>
c0de1216:	2001      	movs	r0, #1
c0de1218:	904c      	str	r0, [sp, #304]	; 0x130
c0de121a:	974b      	str	r7, [sp, #300]	; 0x12c
c0de121c:	2002      	movs	r0, #2
c0de121e:	904a      	str	r0, [sp, #296]	; 0x128
c0de1220:	9649      	str	r6, [sp, #292]	; 0x124
c0de1222:	200f      	movs	r0, #15
c0de1224:	9048      	str	r0, [sp, #288]	; 0x120
c0de1226:	4807      	ldr	r0, [pc, #28]	; (c0de1244 <aci_gatt_exchange_config+0x48>)
c0de1228:	9047      	str	r0, [sp, #284]	; 0x11c
c0de122a:	4628      	mov	r0, r5
c0de122c:	4621      	mov	r1, r4
c0de122e:	f001 fd7f 	bl	c0de2d30 <hci_send_req>
c0de1232:	2800      	cmp	r0, #0
c0de1234:	d401      	bmi.n	c0de123a <aci_gatt_exchange_config+0x3e>
c0de1236:	9801      	ldr	r0, [sp, #4]
c0de1238:	e000      	b.n	c0de123c <aci_gatt_exchange_config+0x40>
c0de123a:	43e0      	mvns	r0, r4
c0de123c:	b2c0      	uxtb	r0, r0
c0de123e:	b04d      	add	sp, #308	; 0x134
c0de1240:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1242:	46c0      	nop			; (mov r8, r8)
c0de1244:	010b003f 	.word	0x010b003f

c0de1248 <aci_gatt_confirm_indication>:
c0de1248:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de124a:	b0cd      	sub	sp, #308	; 0x134
c0de124c:	ae02      	add	r6, sp, #8
c0de124e:	8030      	strh	r0, [r6, #0]
c0de1250:	af01      	add	r7, sp, #4
c0de1252:	2400      	movs	r4, #0
c0de1254:	703c      	strb	r4, [r7, #0]
c0de1256:	ad47      	add	r5, sp, #284	; 0x11c
c0de1258:	2218      	movs	r2, #24
c0de125a:	4628      	mov	r0, r5
c0de125c:	4621      	mov	r1, r4
c0de125e:	f003 fc5d 	bl	c0de4b1c <Osal_MemSet>
c0de1262:	2001      	movs	r0, #1
c0de1264:	904c      	str	r0, [sp, #304]	; 0x130
c0de1266:	974b      	str	r7, [sp, #300]	; 0x12c
c0de1268:	2002      	movs	r0, #2
c0de126a:	904a      	str	r0, [sp, #296]	; 0x128
c0de126c:	9649      	str	r6, [sp, #292]	; 0x124
c0de126e:	4807      	ldr	r0, [pc, #28]	; (c0de128c <aci_gatt_confirm_indication+0x44>)
c0de1270:	9047      	str	r0, [sp, #284]	; 0x11c
c0de1272:	4628      	mov	r0, r5
c0de1274:	4621      	mov	r1, r4
c0de1276:	f001 fd5b 	bl	c0de2d30 <hci_send_req>
c0de127a:	2800      	cmp	r0, #0
c0de127c:	d401      	bmi.n	c0de1282 <aci_gatt_confirm_indication+0x3a>
c0de127e:	9801      	ldr	r0, [sp, #4]
c0de1280:	e000      	b.n	c0de1284 <aci_gatt_confirm_indication+0x3c>
c0de1282:	43e0      	mvns	r0, r4
c0de1284:	b2c0      	uxtb	r0, r0
c0de1286:	b04d      	add	sp, #308	; 0x134
c0de1288:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de128a:	46c0      	nop			; (mov r8, r8)
c0de128c:	0125003f 	.word	0x0125003f

c0de1290 <aci_gatt_write_resp>:
c0de1290:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1292:	b0cd      	sub	sp, #308	; 0x134
c0de1294:	af02      	add	r7, sp, #8
c0de1296:	9d52      	ldr	r5, [sp, #328]	; 0x148
c0de1298:	71bd      	strb	r5, [r7, #6]
c0de129a:	717b      	strb	r3, [r7, #5]
c0de129c:	713a      	strb	r2, [r7, #4]
c0de129e:	8079      	strh	r1, [r7, #2]
c0de12a0:	8038      	strh	r0, [r7, #0]
c0de12a2:	a801      	add	r0, sp, #4
c0de12a4:	9000      	str	r0, [sp, #0]
c0de12a6:	2400      	movs	r4, #0
c0de12a8:	7004      	strb	r4, [r0, #0]
c0de12aa:	1df8      	adds	r0, r7, #7
c0de12ac:	9953      	ldr	r1, [sp, #332]	; 0x14c
c0de12ae:	462a      	mov	r2, r5
c0de12b0:	f003 fc2e 	bl	c0de4b10 <Osal_MemCpy>
c0de12b4:	ae47      	add	r6, sp, #284	; 0x11c
c0de12b6:	2218      	movs	r2, #24
c0de12b8:	4630      	mov	r0, r6
c0de12ba:	4621      	mov	r1, r4
c0de12bc:	f003 fc2e 	bl	c0de4b1c <Osal_MemSet>
c0de12c0:	2001      	movs	r0, #1
c0de12c2:	904c      	str	r0, [sp, #304]	; 0x130
c0de12c4:	9800      	ldr	r0, [sp, #0]
c0de12c6:	904b      	str	r0, [sp, #300]	; 0x12c
c0de12c8:	1de8      	adds	r0, r5, #7
c0de12ca:	904a      	str	r0, [sp, #296]	; 0x128
c0de12cc:	9749      	str	r7, [sp, #292]	; 0x124
c0de12ce:	4807      	ldr	r0, [pc, #28]	; (c0de12ec <aci_gatt_write_resp+0x5c>)
c0de12d0:	9047      	str	r0, [sp, #284]	; 0x11c
c0de12d2:	4630      	mov	r0, r6
c0de12d4:	4621      	mov	r1, r4
c0de12d6:	f001 fd2b 	bl	c0de2d30 <hci_send_req>
c0de12da:	2800      	cmp	r0, #0
c0de12dc:	d401      	bmi.n	c0de12e2 <aci_gatt_write_resp+0x52>
c0de12de:	9801      	ldr	r0, [sp, #4]
c0de12e0:	e000      	b.n	c0de12e4 <aci_gatt_write_resp+0x54>
c0de12e2:	43e0      	mvns	r0, r4
c0de12e4:	b2c0      	uxtb	r0, r0
c0de12e6:	b04d      	add	sp, #308	; 0x134
c0de12e8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de12ea:	46c0      	nop			; (mov r8, r8)
c0de12ec:	0126003f 	.word	0x0126003f

c0de12f0 <aci_hal_write_config_data>:
c0de12f0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de12f2:	b0cd      	sub	sp, #308	; 0x134
c0de12f4:	460d      	mov	r5, r1
c0de12f6:	af02      	add	r7, sp, #8
c0de12f8:	7079      	strb	r1, [r7, #1]
c0de12fa:	7038      	strb	r0, [r7, #0]
c0de12fc:	a801      	add	r0, sp, #4
c0de12fe:	9000      	str	r0, [sp, #0]
c0de1300:	2400      	movs	r4, #0
c0de1302:	7004      	strb	r4, [r0, #0]
c0de1304:	1cb8      	adds	r0, r7, #2
c0de1306:	4611      	mov	r1, r2
c0de1308:	462a      	mov	r2, r5
c0de130a:	f003 fc01 	bl	c0de4b10 <Osal_MemCpy>
c0de130e:	ae47      	add	r6, sp, #284	; 0x11c
c0de1310:	2218      	movs	r2, #24
c0de1312:	4630      	mov	r0, r6
c0de1314:	4621      	mov	r1, r4
c0de1316:	f003 fc01 	bl	c0de4b1c <Osal_MemSet>
c0de131a:	2001      	movs	r0, #1
c0de131c:	904c      	str	r0, [sp, #304]	; 0x130
c0de131e:	9800      	ldr	r0, [sp, #0]
c0de1320:	904b      	str	r0, [sp, #300]	; 0x12c
c0de1322:	1ca8      	adds	r0, r5, #2
c0de1324:	904a      	str	r0, [sp, #296]	; 0x128
c0de1326:	9749      	str	r7, [sp, #292]	; 0x124
c0de1328:	4806      	ldr	r0, [pc, #24]	; (c0de1344 <aci_hal_write_config_data+0x54>)
c0de132a:	9047      	str	r0, [sp, #284]	; 0x11c
c0de132c:	4630      	mov	r0, r6
c0de132e:	4621      	mov	r1, r4
c0de1330:	f001 fcfe 	bl	c0de2d30 <hci_send_req>
c0de1334:	2800      	cmp	r0, #0
c0de1336:	d401      	bmi.n	c0de133c <aci_hal_write_config_data+0x4c>
c0de1338:	9801      	ldr	r0, [sp, #4]
c0de133a:	e000      	b.n	c0de133e <aci_hal_write_config_data+0x4e>
c0de133c:	43e0      	mvns	r0, r4
c0de133e:	b2c0      	uxtb	r0, r0
c0de1340:	b04d      	add	sp, #308	; 0x134
c0de1342:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1344:	000c003f 	.word	0x000c003f

c0de1348 <aci_hal_set_tx_power_level>:
c0de1348:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de134a:	b0cd      	sub	sp, #308	; 0x134
c0de134c:	ae02      	add	r6, sp, #8
c0de134e:	7071      	strb	r1, [r6, #1]
c0de1350:	7030      	strb	r0, [r6, #0]
c0de1352:	af01      	add	r7, sp, #4
c0de1354:	2400      	movs	r4, #0
c0de1356:	703c      	strb	r4, [r7, #0]
c0de1358:	ad47      	add	r5, sp, #284	; 0x11c
c0de135a:	2218      	movs	r2, #24
c0de135c:	4628      	mov	r0, r5
c0de135e:	4621      	mov	r1, r4
c0de1360:	f003 fbdc 	bl	c0de4b1c <Osal_MemSet>
c0de1364:	2001      	movs	r0, #1
c0de1366:	904c      	str	r0, [sp, #304]	; 0x130
c0de1368:	974b      	str	r7, [sp, #300]	; 0x12c
c0de136a:	2002      	movs	r0, #2
c0de136c:	904a      	str	r0, [sp, #296]	; 0x128
c0de136e:	9649      	str	r6, [sp, #292]	; 0x124
c0de1370:	4806      	ldr	r0, [pc, #24]	; (c0de138c <aci_hal_set_tx_power_level+0x44>)
c0de1372:	9047      	str	r0, [sp, #284]	; 0x11c
c0de1374:	4628      	mov	r0, r5
c0de1376:	4621      	mov	r1, r4
c0de1378:	f001 fcda 	bl	c0de2d30 <hci_send_req>
c0de137c:	2800      	cmp	r0, #0
c0de137e:	d401      	bmi.n	c0de1384 <aci_hal_set_tx_power_level+0x3c>
c0de1380:	9801      	ldr	r0, [sp, #4]
c0de1382:	e000      	b.n	c0de1386 <aci_hal_set_tx_power_level+0x3e>
c0de1384:	43e0      	mvns	r0, r4
c0de1386:	b2c0      	uxtb	r0, r0
c0de1388:	b04d      	add	sp, #308	; 0x134
c0de138a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de138c:	000f003f 	.word	0x000f003f

c0de1390 <hci_reset>:
c0de1390:	b570      	push	{r4, r5, r6, lr}
c0de1392:	b088      	sub	sp, #32
c0de1394:	ae01      	add	r6, sp, #4
c0de1396:	2400      	movs	r4, #0
c0de1398:	7034      	strb	r4, [r6, #0]
c0de139a:	ad02      	add	r5, sp, #8
c0de139c:	2218      	movs	r2, #24
c0de139e:	4628      	mov	r0, r5
c0de13a0:	4621      	mov	r1, r4
c0de13a2:	f003 fbbb 	bl	c0de4b1c <Osal_MemSet>
c0de13a6:	2001      	movs	r0, #1
c0de13a8:	9007      	str	r0, [sp, #28]
c0de13aa:	9606      	str	r6, [sp, #24]
c0de13ac:	4806      	ldr	r0, [pc, #24]	; (c0de13c8 <hci_reset+0x38>)
c0de13ae:	9002      	str	r0, [sp, #8]
c0de13b0:	4628      	mov	r0, r5
c0de13b2:	4621      	mov	r1, r4
c0de13b4:	f001 fcbc 	bl	c0de2d30 <hci_send_req>
c0de13b8:	2800      	cmp	r0, #0
c0de13ba:	d401      	bmi.n	c0de13c0 <hci_reset+0x30>
c0de13bc:	9801      	ldr	r0, [sp, #4]
c0de13be:	e000      	b.n	c0de13c2 <hci_reset+0x32>
c0de13c0:	43e0      	mvns	r0, r4
c0de13c2:	b2c0      	uxtb	r0, r0
c0de13c4:	b008      	add	sp, #32
c0de13c6:	bd70      	pop	{r4, r5, r6, pc}
c0de13c8:	00030003 	.word	0x00030003

c0de13cc <hci_le_set_scan_response_data>:
c0de13cc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de13ce:	b0cd      	sub	sp, #308	; 0x134
c0de13d0:	ae02      	add	r6, sp, #8
c0de13d2:	7030      	strb	r0, [r6, #0]
c0de13d4:	af01      	add	r7, sp, #4
c0de13d6:	2400      	movs	r4, #0
c0de13d8:	703c      	strb	r4, [r7, #0]
c0de13da:	1c70      	adds	r0, r6, #1
c0de13dc:	221f      	movs	r2, #31
c0de13de:	f003 fb97 	bl	c0de4b10 <Osal_MemCpy>
c0de13e2:	ad47      	add	r5, sp, #284	; 0x11c
c0de13e4:	2218      	movs	r2, #24
c0de13e6:	4628      	mov	r0, r5
c0de13e8:	4621      	mov	r1, r4
c0de13ea:	f003 fb97 	bl	c0de4b1c <Osal_MemSet>
c0de13ee:	2001      	movs	r0, #1
c0de13f0:	904c      	str	r0, [sp, #304]	; 0x130
c0de13f2:	974b      	str	r7, [sp, #300]	; 0x12c
c0de13f4:	2020      	movs	r0, #32
c0de13f6:	904a      	str	r0, [sp, #296]	; 0x128
c0de13f8:	9649      	str	r6, [sp, #292]	; 0x124
c0de13fa:	4807      	ldr	r0, [pc, #28]	; (c0de1418 <hci_le_set_scan_response_data+0x4c>)
c0de13fc:	9047      	str	r0, [sp, #284]	; 0x11c
c0de13fe:	4628      	mov	r0, r5
c0de1400:	4621      	mov	r1, r4
c0de1402:	f001 fc95 	bl	c0de2d30 <hci_send_req>
c0de1406:	2800      	cmp	r0, #0
c0de1408:	d401      	bmi.n	c0de140e <hci_le_set_scan_response_data+0x42>
c0de140a:	9801      	ldr	r0, [sp, #4]
c0de140c:	e000      	b.n	c0de1410 <hci_le_set_scan_response_data+0x44>
c0de140e:	43e0      	mvns	r0, r4
c0de1410:	b2c0      	uxtb	r0, r0
c0de1412:	b04d      	add	sp, #308	; 0x134
c0de1414:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1416:	46c0      	nop			; (mov r8, r8)
c0de1418:	00090008 	.word	0x00090008

c0de141c <field_copy>:
c0de141c:	b580      	push	{r7, lr}
c0de141e:	2220      	movs	r2, #32
c0de1420:	f007 faa6 	bl	c0de8970 <__aeabi_memmove>
c0de1424:	bd80      	pop	{r7, pc}
c0de1426:	d4d4      	bmi.n	c0de13d2 <hci_le_set_scan_response_data+0x6>

c0de1428 <field_add>:
c0de1428:	b580      	push	{r7, lr}
c0de142a:	b082      	sub	sp, #8
c0de142c:	2320      	movs	r3, #32
c0de142e:	9300      	str	r3, [sp, #0]
c0de1430:	4b04      	ldr	r3, [pc, #16]	; (c0de1444 <field_add+0x1c>)
c0de1432:	447b      	add	r3, pc
c0de1434:	f000 fc7e 	bl	c0de1d34 <cx_math_addm_no_throw>
c0de1438:	2800      	cmp	r0, #0
c0de143a:	d101      	bne.n	c0de1440 <field_add+0x18>
c0de143c:	b002      	add	sp, #8
c0de143e:	bd80      	pop	{r7, pc}
c0de1440:	f002 fc11 	bl	c0de3c66 <os_longjmp>
c0de1444:	00008c7a 	.word	0x00008c7a

c0de1448 <field_sub>:
c0de1448:	b580      	push	{r7, lr}
c0de144a:	b082      	sub	sp, #8
c0de144c:	2320      	movs	r3, #32
c0de144e:	9300      	str	r3, [sp, #0]
c0de1450:	4b04      	ldr	r3, [pc, #16]	; (c0de1464 <field_sub+0x1c>)
c0de1452:	447b      	add	r3, pc
c0de1454:	f000 fc86 	bl	c0de1d64 <cx_math_subm_no_throw>
c0de1458:	2800      	cmp	r0, #0
c0de145a:	d101      	bne.n	c0de1460 <field_sub+0x18>
c0de145c:	b002      	add	sp, #8
c0de145e:	bd80      	pop	{r7, pc}
c0de1460:	f002 fc01 	bl	c0de3c66 <os_longjmp>
c0de1464:	00008c5a 	.word	0x00008c5a

c0de1468 <field_mul>:
c0de1468:	b580      	push	{r7, lr}
c0de146a:	b082      	sub	sp, #8
c0de146c:	2320      	movs	r3, #32
c0de146e:	9300      	str	r3, [sp, #0]
c0de1470:	4b04      	ldr	r3, [pc, #16]	; (c0de1484 <field_mul+0x1c>)
c0de1472:	447b      	add	r3, pc
c0de1474:	f000 fc6a 	bl	c0de1d4c <cx_math_multm_no_throw>
c0de1478:	2800      	cmp	r0, #0
c0de147a:	d101      	bne.n	c0de1480 <field_mul+0x18>
c0de147c:	b002      	add	sp, #8
c0de147e:	bd80      	pop	{r7, pc}
c0de1480:	f002 fbf1 	bl	c0de3c66 <os_longjmp>
c0de1484:	00008c3a 	.word	0x00008c3a

c0de1488 <field_sq>:
c0de1488:	b580      	push	{r7, lr}
c0de148a:	b082      	sub	sp, #8
c0de148c:	2220      	movs	r2, #32
c0de148e:	9200      	str	r2, [sp, #0]
c0de1490:	4b05      	ldr	r3, [pc, #20]	; (c0de14a8 <field_sq+0x20>)
c0de1492:	447b      	add	r3, pc
c0de1494:	460a      	mov	r2, r1
c0de1496:	f000 fc59 	bl	c0de1d4c <cx_math_multm_no_throw>
c0de149a:	2800      	cmp	r0, #0
c0de149c:	d101      	bne.n	c0de14a2 <field_sq+0x1a>
c0de149e:	b002      	add	sp, #8
c0de14a0:	bd80      	pop	{r7, pc}
c0de14a2:	f002 fbe0 	bl	c0de3c66 <os_longjmp>
c0de14a6:	46c0      	nop			; (mov r8, r8)
c0de14a8:	00008c1a 	.word	0x00008c1a

c0de14ac <field_inv>:
c0de14ac:	b580      	push	{r7, lr}
c0de14ae:	4a05      	ldr	r2, [pc, #20]	; (c0de14c4 <field_inv+0x18>)
c0de14b0:	447a      	add	r2, pc
c0de14b2:	2320      	movs	r3, #32
c0de14b4:	f000 fc44 	bl	c0de1d40 <cx_math_invprimem_no_throw>
c0de14b8:	2800      	cmp	r0, #0
c0de14ba:	d100      	bne.n	c0de14be <field_inv+0x12>
c0de14bc:	bd80      	pop	{r7, pc}
c0de14be:	f002 fbd2 	bl	c0de3c66 <os_longjmp>
c0de14c2:	46c0      	nop			; (mov r8, r8)
c0de14c4:	00008bfc 	.word	0x00008bfc

c0de14c8 <field_pow>:
c0de14c8:	b510      	push	{r4, lr}
c0de14ca:	b082      	sub	sp, #8
c0de14cc:	2320      	movs	r3, #32
c0de14ce:	4c06      	ldr	r4, [pc, #24]	; (c0de14e8 <field_pow+0x20>)
c0de14d0:	447c      	add	r4, pc
c0de14d2:	9400      	str	r4, [sp, #0]
c0de14d4:	9301      	str	r3, [sp, #4]
c0de14d6:	f000 fc3f 	bl	c0de1d58 <cx_math_powm_no_throw>
c0de14da:	2800      	cmp	r0, #0
c0de14dc:	d101      	bne.n	c0de14e2 <field_pow+0x1a>
c0de14de:	b002      	add	sp, #8
c0de14e0:	bd10      	pop	{r4, pc}
c0de14e2:	f002 fbc0 	bl	c0de3c66 <os_longjmp>
c0de14e6:	46c0      	nop			; (mov r8, r8)
c0de14e8:	00008bdc 	.word	0x00008bdc

c0de14ec <scalar_add>:
c0de14ec:	b580      	push	{r7, lr}
c0de14ee:	b082      	sub	sp, #8
c0de14f0:	2320      	movs	r3, #32
c0de14f2:	9300      	str	r3, [sp, #0]
c0de14f4:	4b04      	ldr	r3, [pc, #16]	; (c0de1508 <scalar_add+0x1c>)
c0de14f6:	447b      	add	r3, pc
c0de14f8:	f000 fc1c 	bl	c0de1d34 <cx_math_addm_no_throw>
c0de14fc:	2800      	cmp	r0, #0
c0de14fe:	d101      	bne.n	c0de1504 <scalar_add+0x18>
c0de1500:	b002      	add	sp, #8
c0de1502:	bd80      	pop	{r7, pc}
c0de1504:	f002 fbaf 	bl	c0de3c66 <os_longjmp>
c0de1508:	00008bf6 	.word	0x00008bf6

c0de150c <scalar_mul>:
c0de150c:	b580      	push	{r7, lr}
c0de150e:	b082      	sub	sp, #8
c0de1510:	2320      	movs	r3, #32
c0de1512:	9300      	str	r3, [sp, #0]
c0de1514:	4b04      	ldr	r3, [pc, #16]	; (c0de1528 <scalar_mul+0x1c>)
c0de1516:	447b      	add	r3, pc
c0de1518:	f000 fc18 	bl	c0de1d4c <cx_math_multm_no_throw>
c0de151c:	2800      	cmp	r0, #0
c0de151e:	d101      	bne.n	c0de1524 <scalar_mul+0x18>
c0de1520:	b002      	add	sp, #8
c0de1522:	bd80      	pop	{r7, pc}
c0de1524:	f002 fb9f 	bl	c0de3c66 <os_longjmp>
c0de1528:	00008bd6 	.word	0x00008bd6

c0de152c <scalar_negate>:
c0de152c:	b580      	push	{r7, lr}
c0de152e:	b082      	sub	sp, #8
c0de1530:	460a      	mov	r2, r1
c0de1532:	2120      	movs	r1, #32
c0de1534:	9100      	str	r1, [sp, #0]
c0de1536:	4906      	ldr	r1, [pc, #24]	; (c0de1550 <scalar_negate+0x24>)
c0de1538:	4479      	add	r1, pc
c0de153a:	4b06      	ldr	r3, [pc, #24]	; (c0de1554 <scalar_negate+0x28>)
c0de153c:	447b      	add	r3, pc
c0de153e:	f000 fc11 	bl	c0de1d64 <cx_math_subm_no_throw>
c0de1542:	2800      	cmp	r0, #0
c0de1544:	d101      	bne.n	c0de154a <scalar_negate+0x1e>
c0de1546:	b002      	add	sp, #8
c0de1548:	bd80      	pop	{r7, pc}
c0de154a:	f002 fb8c 	bl	c0de3c66 <os_longjmp>
c0de154e:	46c0      	nop			; (mov r8, r8)
c0de1550:	00008bd4 	.word	0x00008bd4
c0de1554:	00008bb0 	.word	0x00008bb0

c0de1558 <group_dbl>:
c0de1558:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de155a:	b0e5      	sub	sp, #404	; 0x194
c0de155c:	460e      	mov	r6, r1
c0de155e:	4604      	mov	r4, r0
c0de1560:	460d      	mov	r5, r1
c0de1562:	3540      	adds	r5, #64	; 0x40
c0de1564:	4937      	ldr	r1, [pc, #220]	; (c0de1644 <group_dbl+0xec>)
c0de1566:	4479      	add	r1, pc
c0de1568:	2220      	movs	r2, #32
c0de156a:	4628      	mov	r0, r5
c0de156c:	f007 fa16 	bl	c0de899c <memcmp>
c0de1570:	2800      	cmp	r0, #0
c0de1572:	d05f      	beq.n	c0de1634 <group_dbl+0xdc>
c0de1574:	4631      	mov	r1, r6
c0de1576:	3120      	adds	r1, #32
c0de1578:	9104      	str	r1, [sp, #16]
c0de157a:	af5d      	add	r7, sp, #372	; 0x174
c0de157c:	9701      	str	r7, [sp, #4]
c0de157e:	4638      	mov	r0, r7
c0de1580:	f7ff ff82 	bl	c0de1488 <field_sq>
c0de1584:	9503      	str	r5, [sp, #12]
c0de1586:	ad55      	add	r5, sp, #340	; 0x154
c0de1588:	4628      	mov	r0, r5
c0de158a:	4631      	mov	r1, r6
c0de158c:	463a      	mov	r2, r7
c0de158e:	f7ff ff6b 	bl	c0de1468 <field_mul>
c0de1592:	af4d      	add	r7, sp, #308	; 0x134
c0de1594:	492c      	ldr	r1, [pc, #176]	; (c0de1648 <group_dbl+0xf0>)
c0de1596:	4479      	add	r1, pc
c0de1598:	4638      	mov	r0, r7
c0de159a:	462a      	mov	r2, r5
c0de159c:	f7ff ff64 	bl	c0de1468 <field_mul>
c0de15a0:	ad45      	add	r5, sp, #276	; 0x114
c0de15a2:	4628      	mov	r0, r5
c0de15a4:	4631      	mov	r1, r6
c0de15a6:	f7ff ff6f 	bl	c0de1488 <field_sq>
c0de15aa:	ae3d      	add	r6, sp, #244	; 0xf4
c0de15ac:	9600      	str	r6, [sp, #0]
c0de15ae:	4927      	ldr	r1, [pc, #156]	; (c0de164c <group_dbl+0xf4>)
c0de15b0:	4479      	add	r1, pc
c0de15b2:	4630      	mov	r0, r6
c0de15b4:	462a      	mov	r2, r5
c0de15b6:	f7ff ff57 	bl	c0de1468 <field_mul>
c0de15ba:	ad35      	add	r5, sp, #212	; 0xd4
c0de15bc:	4628      	mov	r0, r5
c0de15be:	4631      	mov	r1, r6
c0de15c0:	f7ff ff62 	bl	c0de1488 <field_sq>
c0de15c4:	ae2d      	add	r6, sp, #180	; 0xb4
c0de15c6:	4922      	ldr	r1, [pc, #136]	; (c0de1650 <group_dbl+0xf8>)
c0de15c8:	4479      	add	r1, pc
c0de15ca:	9102      	str	r1, [sp, #8]
c0de15cc:	4630      	mov	r0, r6
c0de15ce:	463a      	mov	r2, r7
c0de15d0:	f7ff ff4a 	bl	c0de1468 <field_mul>
c0de15d4:	4620      	mov	r0, r4
c0de15d6:	4629      	mov	r1, r5
c0de15d8:	4632      	mov	r2, r6
c0de15da:	f7ff ff35 	bl	c0de1448 <field_sub>
c0de15de:	ae25      	add	r6, sp, #148	; 0x94
c0de15e0:	4630      	mov	r0, r6
c0de15e2:	4639      	mov	r1, r7
c0de15e4:	4622      	mov	r2, r4
c0de15e6:	f7ff ff2f 	bl	c0de1448 <field_sub>
c0de15ea:	ad1d      	add	r5, sp, #116	; 0x74
c0de15ec:	4628      	mov	r0, r5
c0de15ee:	9901      	ldr	r1, [sp, #4]
c0de15f0:	f7ff ff4a 	bl	c0de1488 <field_sq>
c0de15f4:	af15      	add	r7, sp, #84	; 0x54
c0de15f6:	4917      	ldr	r1, [pc, #92]	; (c0de1654 <group_dbl+0xfc>)
c0de15f8:	4479      	add	r1, pc
c0de15fa:	4638      	mov	r0, r7
c0de15fc:	462a      	mov	r2, r5
c0de15fe:	f7ff ff33 	bl	c0de1468 <field_mul>
c0de1602:	ad0d      	add	r5, sp, #52	; 0x34
c0de1604:	4628      	mov	r0, r5
c0de1606:	9900      	ldr	r1, [sp, #0]
c0de1608:	4632      	mov	r2, r6
c0de160a:	f7ff ff2d 	bl	c0de1468 <field_mul>
c0de160e:	4620      	mov	r0, r4
c0de1610:	3020      	adds	r0, #32
c0de1612:	4629      	mov	r1, r5
c0de1614:	463a      	mov	r2, r7
c0de1616:	f7ff ff17 	bl	c0de1448 <field_sub>
c0de161a:	ad05      	add	r5, sp, #20
c0de161c:	4628      	mov	r0, r5
c0de161e:	9904      	ldr	r1, [sp, #16]
c0de1620:	9a03      	ldr	r2, [sp, #12]
c0de1622:	f7ff ff21 	bl	c0de1468 <field_mul>
c0de1626:	3440      	adds	r4, #64	; 0x40
c0de1628:	4620      	mov	r0, r4
c0de162a:	9902      	ldr	r1, [sp, #8]
c0de162c:	462a      	mov	r2, r5
c0de162e:	f7ff ff1b 	bl	c0de1468 <field_mul>
c0de1632:	e004      	b.n	c0de163e <group_dbl+0xe6>
c0de1634:	2260      	movs	r2, #96	; 0x60
c0de1636:	4620      	mov	r0, r4
c0de1638:	4631      	mov	r1, r6
c0de163a:	f007 f999 	bl	c0de8970 <__aeabi_memmove>
c0de163e:	b065      	add	sp, #404	; 0x194
c0de1640:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1642:	46c0      	nop			; (mov r8, r8)
c0de1644:	00008b66 	.word	0x00008b66
c0de1648:	00008b96 	.word	0x00008b96
c0de164c:	00008b9c 	.word	0x00008b9c
c0de1650:	00008ba4 	.word	0x00008ba4
c0de1654:	00008b94 	.word	0x00008b94

c0de1658 <group_add>:
c0de1658:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de165a:	b0d5      	sub	sp, #340	; 0x154
c0de165c:	4617      	mov	r7, r2
c0de165e:	460d      	mov	r5, r1
c0de1660:	900c      	str	r0, [sp, #48]	; 0x30
c0de1662:	460e      	mov	r6, r1
c0de1664:	3640      	adds	r6, #64	; 0x40
c0de1666:	4965      	ldr	r1, [pc, #404]	; (c0de17fc <group_add+0x1a4>)
c0de1668:	4479      	add	r1, pc
c0de166a:	2220      	movs	r2, #32
c0de166c:	4630      	mov	r0, r6
c0de166e:	f007 f995 	bl	c0de899c <memcmp>
c0de1672:	2800      	cmp	r0, #0
c0de1674:	d100      	bne.n	c0de1678 <group_add+0x20>
c0de1676:	e0b0      	b.n	c0de17da <group_add+0x182>
c0de1678:	4638      	mov	r0, r7
c0de167a:	3040      	adds	r0, #64	; 0x40
c0de167c:	4960      	ldr	r1, [pc, #384]	; (c0de1800 <group_add+0x1a8>)
c0de167e:	4479      	add	r1, pc
c0de1680:	2220      	movs	r2, #32
c0de1682:	900b      	str	r0, [sp, #44]	; 0x2c
c0de1684:	f007 f98a 	bl	c0de899c <memcmp>
c0de1688:	2800      	cmp	r0, #0
c0de168a:	d100      	bne.n	c0de168e <group_add+0x36>
c0de168c:	e0a9      	b.n	c0de17e2 <group_add+0x18a>
c0de168e:	2220      	movs	r2, #32
c0de1690:	4628      	mov	r0, r5
c0de1692:	4639      	mov	r1, r7
c0de1694:	f007 f982 	bl	c0de899c <memcmp>
c0de1698:	2800      	cmp	r0, #0
c0de169a:	d110      	bne.n	c0de16be <group_add+0x66>
c0de169c:	4628      	mov	r0, r5
c0de169e:	3020      	adds	r0, #32
c0de16a0:	4639      	mov	r1, r7
c0de16a2:	3120      	adds	r1, #32
c0de16a4:	2220      	movs	r2, #32
c0de16a6:	f007 f979 	bl	c0de899c <memcmp>
c0de16aa:	2800      	cmp	r0, #0
c0de16ac:	d107      	bne.n	c0de16be <group_add+0x66>
c0de16ae:	2220      	movs	r2, #32
c0de16b0:	4630      	mov	r0, r6
c0de16b2:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0de16b4:	f007 f972 	bl	c0de899c <memcmp>
c0de16b8:	2800      	cmp	r0, #0
c0de16ba:	d100      	bne.n	c0de16be <group_add+0x66>
c0de16bc:	e098      	b.n	c0de17f0 <group_add+0x198>
c0de16be:	ac4d      	add	r4, sp, #308	; 0x134
c0de16c0:	4620      	mov	r0, r4
c0de16c2:	9406      	str	r4, [sp, #24]
c0de16c4:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0de16c6:	f7ff fedf 	bl	c0de1488 <field_sq>
c0de16ca:	a845      	add	r0, sp, #276	; 0x114
c0de16cc:	9005      	str	r0, [sp, #20]
c0de16ce:	4629      	mov	r1, r5
c0de16d0:	4622      	mov	r2, r4
c0de16d2:	f7ff fec9 	bl	c0de1468 <field_mul>
c0de16d6:	9608      	str	r6, [sp, #32]
c0de16d8:	ac3d      	add	r4, sp, #244	; 0xf4
c0de16da:	9409      	str	r4, [sp, #36]	; 0x24
c0de16dc:	4620      	mov	r0, r4
c0de16de:	4631      	mov	r1, r6
c0de16e0:	f7ff fed2 	bl	c0de1488 <field_sq>
c0de16e4:	a835      	add	r0, sp, #212	; 0xd4
c0de16e6:	9004      	str	r0, [sp, #16]
c0de16e8:	4639      	mov	r1, r7
c0de16ea:	4622      	mov	r2, r4
c0de16ec:	f7ff febc 	bl	c0de1468 <field_mul>
c0de16f0:	ae2d      	add	r6, sp, #180	; 0xb4
c0de16f2:	4630      	mov	r0, r6
c0de16f4:	9603      	str	r6, [sp, #12]
c0de16f6:	9c06      	ldr	r4, [sp, #24]
c0de16f8:	4621      	mov	r1, r4
c0de16fa:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
c0de16fc:	f7ff feb4 	bl	c0de1468 <field_mul>
c0de1700:	3520      	adds	r5, #32
c0de1702:	a825      	add	r0, sp, #148	; 0x94
c0de1704:	9007      	str	r0, [sp, #28]
c0de1706:	4629      	mov	r1, r5
c0de1708:	4632      	mov	r2, r6
c0de170a:	f7ff fead 	bl	c0de1468 <field_mul>
c0de170e:	4620      	mov	r0, r4
c0de1710:	9909      	ldr	r1, [sp, #36]	; 0x24
c0de1712:	9a08      	ldr	r2, [sp, #32]
c0de1714:	f7ff fea8 	bl	c0de1468 <field_mul>
c0de1718:	3720      	adds	r7, #32
c0de171a:	ae1d      	add	r6, sp, #116	; 0x74
c0de171c:	4630      	mov	r0, r6
c0de171e:	4639      	mov	r1, r7
c0de1720:	4622      	mov	r2, r4
c0de1722:	f7ff fea1 	bl	c0de1468 <field_mul>
c0de1726:	a815      	add	r0, sp, #84	; 0x54
c0de1728:	900a      	str	r0, [sp, #40]	; 0x28
c0de172a:	9c04      	ldr	r4, [sp, #16]
c0de172c:	4621      	mov	r1, r4
c0de172e:	9f05      	ldr	r7, [sp, #20]
c0de1730:	463a      	mov	r2, r7
c0de1732:	f7ff fe89 	bl	c0de1448 <field_sub>
c0de1736:	ad0d      	add	r5, sp, #52	; 0x34
c0de1738:	4628      	mov	r0, r5
c0de173a:	9502      	str	r5, [sp, #8]
c0de173c:	4631      	mov	r1, r6
c0de173e:	9a07      	ldr	r2, [sp, #28]
c0de1740:	f7ff fe82 	bl	c0de1448 <field_sub>
c0de1744:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de1746:	4639      	mov	r1, r7
c0de1748:	4622      	mov	r2, r4
c0de174a:	f7ff fe6d 	bl	c0de1428 <field_add>
c0de174e:	9f03      	ldr	r7, [sp, #12]
c0de1750:	4638      	mov	r0, r7
c0de1752:	4629      	mov	r1, r5
c0de1754:	f7ff fe98 	bl	c0de1488 <field_sq>
c0de1758:	4620      	mov	r0, r4
c0de175a:	990a      	ldr	r1, [sp, #40]	; 0x28
c0de175c:	f7ff fe94 	bl	c0de1488 <field_sq>
c0de1760:	4630      	mov	r0, r6
c0de1762:	4635      	mov	r5, r6
c0de1764:	9601      	str	r6, [sp, #4]
c0de1766:	9e09      	ldr	r6, [sp, #36]	; 0x24
c0de1768:	4631      	mov	r1, r6
c0de176a:	4622      	mov	r2, r4
c0de176c:	f7ff fe7c 	bl	c0de1468 <field_mul>
c0de1770:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de1772:	4639      	mov	r1, r7
c0de1774:	462a      	mov	r2, r5
c0de1776:	f7ff fe67 	bl	c0de1448 <field_sub>
c0de177a:	4630      	mov	r0, r6
c0de177c:	9d05      	ldr	r5, [sp, #20]
c0de177e:	4629      	mov	r1, r5
c0de1780:	4622      	mov	r2, r4
c0de1782:	f7ff fe71 	bl	c0de1468 <field_mul>
c0de1786:	4638      	mov	r0, r7
c0de1788:	4631      	mov	r1, r6
c0de178a:	9e0c      	ldr	r6, [sp, #48]	; 0x30
c0de178c:	4632      	mov	r2, r6
c0de178e:	f7ff fe5b 	bl	c0de1448 <field_sub>
c0de1792:	9f06      	ldr	r7, [sp, #24]
c0de1794:	4638      	mov	r0, r7
c0de1796:	4621      	mov	r1, r4
c0de1798:	9a0a      	ldr	r2, [sp, #40]	; 0x28
c0de179a:	f7ff fe65 	bl	c0de1468 <field_mul>
c0de179e:	9c01      	ldr	r4, [sp, #4]
c0de17a0:	4620      	mov	r0, r4
c0de17a2:	9907      	ldr	r1, [sp, #28]
c0de17a4:	463a      	mov	r2, r7
c0de17a6:	f7ff fe5f 	bl	c0de1468 <field_mul>
c0de17aa:	4628      	mov	r0, r5
c0de17ac:	9902      	ldr	r1, [sp, #8]
c0de17ae:	9a03      	ldr	r2, [sp, #12]
c0de17b0:	f7ff fe5a 	bl	c0de1468 <field_mul>
c0de17b4:	4630      	mov	r0, r6
c0de17b6:	3020      	adds	r0, #32
c0de17b8:	4629      	mov	r1, r5
c0de17ba:	4622      	mov	r2, r4
c0de17bc:	f7ff fe44 	bl	c0de1448 <field_sub>
c0de17c0:	9c04      	ldr	r4, [sp, #16]
c0de17c2:	4620      	mov	r0, r4
c0de17c4:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0de17c6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
c0de17c8:	f7ff fe4e 	bl	c0de1468 <field_mul>
c0de17cc:	3640      	adds	r6, #64	; 0x40
c0de17ce:	4630      	mov	r0, r6
c0de17d0:	9908      	ldr	r1, [sp, #32]
c0de17d2:	4622      	mov	r2, r4
c0de17d4:	f7ff fe48 	bl	c0de1468 <field_mul>
c0de17d8:	e008      	b.n	c0de17ec <group_add+0x194>
c0de17da:	2260      	movs	r2, #96	; 0x60
c0de17dc:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de17de:	4639      	mov	r1, r7
c0de17e0:	e002      	b.n	c0de17e8 <group_add+0x190>
c0de17e2:	2260      	movs	r2, #96	; 0x60
c0de17e4:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de17e6:	4629      	mov	r1, r5
c0de17e8:	f007 f8c2 	bl	c0de8970 <__aeabi_memmove>
c0de17ec:	b055      	add	sp, #340	; 0x154
c0de17ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de17f0:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de17f2:	4629      	mov	r1, r5
c0de17f4:	f7ff feb0 	bl	c0de1558 <group_dbl>
c0de17f8:	e7f8      	b.n	c0de17ec <group_add+0x194>
c0de17fa:	46c0      	nop			; (mov r8, r8)
c0de17fc:	00008a64 	.word	0x00008a64
c0de1800:	00008a4e 	.word	0x00008a4e

c0de1804 <group_scalar_mul>:
c0de1804:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1806:	b09b      	sub	sp, #108	; 0x6c
c0de1808:	4614      	mov	r4, r2
c0de180a:	460d      	mov	r5, r1
c0de180c:	4606      	mov	r6, r0
c0de180e:	491e      	ldr	r1, [pc, #120]	; (c0de1888 <group_scalar_mul+0x84>)
c0de1810:	4479      	add	r1, pc
c0de1812:	2260      	movs	r2, #96	; 0x60
c0de1814:	f007 f8a8 	bl	c0de8968 <__aeabi_memcpy>
c0de1818:	9401      	str	r4, [sp, #4]
c0de181a:	3440      	adds	r4, #64	; 0x40
c0de181c:	491b      	ldr	r1, [pc, #108]	; (c0de188c <group_scalar_mul+0x88>)
c0de181e:	4479      	add	r1, pc
c0de1820:	2220      	movs	r2, #32
c0de1822:	4620      	mov	r0, r4
c0de1824:	f007 f8ba 	bl	c0de899c <memcmp>
c0de1828:	2800      	cmp	r0, #0
c0de182a:	d02b      	beq.n	c0de1884 <group_scalar_mul+0x80>
c0de182c:	4918      	ldr	r1, [pc, #96]	; (c0de1890 <group_scalar_mul+0x8c>)
c0de182e:	4479      	add	r1, pc
c0de1830:	2220      	movs	r2, #32
c0de1832:	4628      	mov	r0, r5
c0de1834:	f007 f8b2 	bl	c0de899c <memcmp>
c0de1838:	2800      	cmp	r0, #0
c0de183a:	d023      	beq.n	c0de1884 <group_scalar_mul+0x80>
c0de183c:	2400      	movs	r4, #0
c0de183e:	9502      	str	r5, [sp, #8]
c0de1840:	08e0      	lsrs	r0, r4, #3
c0de1842:	5c2d      	ldrb	r5, [r5, r0]
c0de1844:	af03      	add	r7, sp, #12
c0de1846:	4638      	mov	r0, r7
c0de1848:	4631      	mov	r1, r6
c0de184a:	f7ff fe85 	bl	c0de1558 <group_dbl>
c0de184e:	2260      	movs	r2, #96	; 0x60
c0de1850:	4630      	mov	r0, r6
c0de1852:	4639      	mov	r1, r7
c0de1854:	f007 f888 	bl	c0de8968 <__aeabi_memcpy>
c0de1858:	2007      	movs	r0, #7
c0de185a:	43a0      	bics	r0, r4
c0de185c:	40c5      	lsrs	r5, r0
c0de185e:	07e8      	lsls	r0, r5, #31
c0de1860:	d00a      	beq.n	c0de1878 <group_scalar_mul+0x74>
c0de1862:	af03      	add	r7, sp, #12
c0de1864:	4638      	mov	r0, r7
c0de1866:	4631      	mov	r1, r6
c0de1868:	9a01      	ldr	r2, [sp, #4]
c0de186a:	f7ff fef5 	bl	c0de1658 <group_add>
c0de186e:	2260      	movs	r2, #96	; 0x60
c0de1870:	4630      	mov	r0, r6
c0de1872:	4639      	mov	r1, r7
c0de1874:	f007 f878 	bl	c0de8968 <__aeabi_memcpy>
c0de1878:	1c64      	adds	r4, r4, #1
c0de187a:	2001      	movs	r0, #1
c0de187c:	0200      	lsls	r0, r0, #8
c0de187e:	4284      	cmp	r4, r0
c0de1880:	9d02      	ldr	r5, [sp, #8]
c0de1882:	d1dd      	bne.n	c0de1840 <group_scalar_mul+0x3c>
c0de1884:	b01b      	add	sp, #108	; 0x6c
c0de1886:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1888:	0000899c 	.word	0x0000899c
c0de188c:	000088ae 	.word	0x000088ae
c0de1890:	000088de 	.word	0x000088de

c0de1894 <affine_to_group>:
c0de1894:	b570      	push	{r4, r5, r6, lr}
c0de1896:	460d      	mov	r5, r1
c0de1898:	4604      	mov	r4, r0
c0de189a:	491c      	ldr	r1, [pc, #112]	; (c0de190c <affine_to_group+0x78>)
c0de189c:	4479      	add	r1, pc
c0de189e:	2220      	movs	r2, #32
c0de18a0:	4628      	mov	r0, r5
c0de18a2:	f007 f87b 	bl	c0de899c <memcmp>
c0de18a6:	2800      	cmp	r0, #0
c0de18a8:	d108      	bne.n	c0de18bc <affine_to_group+0x28>
c0de18aa:	4628      	mov	r0, r5
c0de18ac:	3020      	adds	r0, #32
c0de18ae:	4918      	ldr	r1, [pc, #96]	; (c0de1910 <affine_to_group+0x7c>)
c0de18b0:	4479      	add	r1, pc
c0de18b2:	2220      	movs	r2, #32
c0de18b4:	f007 f872 	bl	c0de899c <memcmp>
c0de18b8:	2800      	cmp	r0, #0
c0de18ba:	d014      	beq.n	c0de18e6 <affine_to_group+0x52>
c0de18bc:	2620      	movs	r6, #32
c0de18be:	4620      	mov	r0, r4
c0de18c0:	4629      	mov	r1, r5
c0de18c2:	4632      	mov	r2, r6
c0de18c4:	f007 f854 	bl	c0de8970 <__aeabi_memmove>
c0de18c8:	4620      	mov	r0, r4
c0de18ca:	3020      	adds	r0, #32
c0de18cc:	3520      	adds	r5, #32
c0de18ce:	4629      	mov	r1, r5
c0de18d0:	4632      	mov	r2, r6
c0de18d2:	f007 f84d 	bl	c0de8970 <__aeabi_memmove>
c0de18d6:	3440      	adds	r4, #64	; 0x40
c0de18d8:	490f      	ldr	r1, [pc, #60]	; (c0de1918 <affine_to_group+0x84>)
c0de18da:	4479      	add	r1, pc
c0de18dc:	4620      	mov	r0, r4
c0de18de:	4632      	mov	r2, r6
c0de18e0:	f007 f842 	bl	c0de8968 <__aeabi_memcpy>
c0de18e4:	bd70      	pop	{r4, r5, r6, pc}
c0de18e6:	2520      	movs	r5, #32
c0de18e8:	4620      	mov	r0, r4
c0de18ea:	4629      	mov	r1, r5
c0de18ec:	f007 f836 	bl	c0de895c <__aeabi_memclr>
c0de18f0:	4620      	mov	r0, r4
c0de18f2:	3020      	adds	r0, #32
c0de18f4:	4907      	ldr	r1, [pc, #28]	; (c0de1914 <affine_to_group+0x80>)
c0de18f6:	4479      	add	r1, pc
c0de18f8:	462a      	mov	r2, r5
c0de18fa:	f007 f835 	bl	c0de8968 <__aeabi_memcpy>
c0de18fe:	3440      	adds	r4, #64	; 0x40
c0de1900:	4620      	mov	r0, r4
c0de1902:	4629      	mov	r1, r5
c0de1904:	f007 f82a 	bl	c0de895c <__aeabi_memclr>
c0de1908:	bd70      	pop	{r4, r5, r6, pc}
c0de190a:	46c0      	nop			; (mov r8, r8)
c0de190c:	00008830 	.word	0x00008830
c0de1910:	0000881c 	.word	0x0000881c
c0de1914:	00008916 	.word	0x00008916
c0de1918:	00008932 	.word	0x00008932

c0de191c <affine_from_group>:
c0de191c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de191e:	b091      	sub	sp, #68	; 0x44
c0de1920:	460c      	mov	r4, r1
c0de1922:	4605      	mov	r5, r0
c0de1924:	460e      	mov	r6, r1
c0de1926:	3640      	adds	r6, #64	; 0x40
c0de1928:	4916      	ldr	r1, [pc, #88]	; (c0de1984 <affine_from_group+0x68>)
c0de192a:	4479      	add	r1, pc
c0de192c:	2220      	movs	r2, #32
c0de192e:	4630      	mov	r0, r6
c0de1930:	f007 f834 	bl	c0de899c <memcmp>
c0de1934:	2800      	cmp	r0, #0
c0de1936:	d01e      	beq.n	c0de1976 <affine_from_group+0x5a>
c0de1938:	af09      	add	r7, sp, #36	; 0x24
c0de193a:	4638      	mov	r0, r7
c0de193c:	4631      	mov	r1, r6
c0de193e:	f7ff fdb5 	bl	c0de14ac <field_inv>
c0de1942:	462e      	mov	r6, r5
c0de1944:	3620      	adds	r6, #32
c0de1946:	4630      	mov	r0, r6
c0de1948:	4639      	mov	r1, r7
c0de194a:	463a      	mov	r2, r7
c0de194c:	f7ff fd8c 	bl	c0de1468 <field_mul>
c0de1950:	9500      	str	r5, [sp, #0]
c0de1952:	ad01      	add	r5, sp, #4
c0de1954:	4628      	mov	r0, r5
c0de1956:	4631      	mov	r1, r6
c0de1958:	463a      	mov	r2, r7
c0de195a:	f7ff fd85 	bl	c0de1468 <field_mul>
c0de195e:	9800      	ldr	r0, [sp, #0]
c0de1960:	4621      	mov	r1, r4
c0de1962:	4632      	mov	r2, r6
c0de1964:	f7ff fd80 	bl	c0de1468 <field_mul>
c0de1968:	3420      	adds	r4, #32
c0de196a:	4630      	mov	r0, r6
c0de196c:	4621      	mov	r1, r4
c0de196e:	462a      	mov	r2, r5
c0de1970:	f7ff fd7a 	bl	c0de1468 <field_mul>
c0de1974:	e003      	b.n	c0de197e <affine_from_group+0x62>
c0de1976:	2140      	movs	r1, #64	; 0x40
c0de1978:	4628      	mov	r0, r5
c0de197a:	f006 ffef 	bl	c0de895c <__aeabi_memclr>
c0de197e:	b011      	add	sp, #68	; 0x44
c0de1980:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1982:	46c0      	nop			; (mov r8, r8)
c0de1984:	000087a2 	.word	0x000087a2

c0de1988 <affine_scalar_mul>:
c0de1988:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de198a:	b0b1      	sub	sp, #196	; 0xc4
c0de198c:	460c      	mov	r4, r1
c0de198e:	4605      	mov	r5, r0
c0de1990:	ae19      	add	r6, sp, #100	; 0x64
c0de1992:	4630      	mov	r0, r6
c0de1994:	4611      	mov	r1, r2
c0de1996:	f7ff ff7d 	bl	c0de1894 <affine_to_group>
c0de199a:	af01      	add	r7, sp, #4
c0de199c:	4638      	mov	r0, r7
c0de199e:	4621      	mov	r1, r4
c0de19a0:	4632      	mov	r2, r6
c0de19a2:	f7ff ff2f 	bl	c0de1804 <group_scalar_mul>
c0de19a6:	4628      	mov	r0, r5
c0de19a8:	4639      	mov	r1, r7
c0de19aa:	f7ff ffb7 	bl	c0de191c <affine_from_group>
c0de19ae:	b031      	add	sp, #196	; 0xc4
c0de19b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de19b2:	d4d4      	bmi.n	c0de195e <affine_from_group+0x42>

c0de19b4 <generate_keypair>:
c0de19b4:	b5b0      	push	{r4, r5, r7, lr}
c0de19b6:	b086      	sub	sp, #24
c0de19b8:	4604      	mov	r4, r0
c0de19ba:	2000      	movs	r0, #0
c0de19bc:	9005      	str	r0, [sp, #20]
c0de19be:	9004      	str	r0, [sp, #16]
c0de19c0:	4a0e      	ldr	r2, [pc, #56]	; (c0de19fc <generate_keypair+0x48>)
c0de19c2:	9202      	str	r2, [sp, #8]
c0de19c4:	2201      	movs	r2, #1
c0de19c6:	07d2      	lsls	r2, r2, #31
c0de19c8:	4311      	orrs	r1, r2
c0de19ca:	9103      	str	r1, [sp, #12]
c0de19cc:	322c      	adds	r2, #44	; 0x2c
c0de19ce:	9201      	str	r2, [sp, #4]
c0de19d0:	9000      	str	r0, [sp, #0]
c0de19d2:	4625      	mov	r5, r4
c0de19d4:	3540      	adds	r5, #64	; 0x40
c0de19d6:	2021      	movs	r0, #33	; 0x21
c0de19d8:	a901      	add	r1, sp, #4
c0de19da:	2205      	movs	r2, #5
c0de19dc:	462b      	mov	r3, r5
c0de19de:	f003 fdd5 	bl	c0de558c <os_perso_derive_node_bip32>
c0de19e2:	2040      	movs	r0, #64	; 0x40
c0de19e4:	5c21      	ldrb	r1, [r4, r0]
c0de19e6:	223f      	movs	r2, #63	; 0x3f
c0de19e8:	400a      	ands	r2, r1
c0de19ea:	5422      	strb	r2, [r4, r0]
c0de19ec:	4a04      	ldr	r2, [pc, #16]	; (c0de1a00 <generate_keypair+0x4c>)
c0de19ee:	447a      	add	r2, pc
c0de19f0:	4620      	mov	r0, r4
c0de19f2:	4629      	mov	r1, r5
c0de19f4:	f7ff ffc8 	bl	c0de1988 <affine_scalar_mul>
c0de19f8:	b006      	add	sp, #24
c0de19fa:	bdb0      	pop	{r4, r5, r7, pc}
c0de19fc:	8000312a 	.word	0x8000312a
c0de1a00:	0000883e 	.word	0x0000883e

c0de1a04 <generate_address>:
c0de1a04:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1a06:	b09b      	sub	sp, #108	; 0x6c
c0de1a08:	4604      	mov	r4, r0
c0de1a0a:	2938      	cmp	r1, #56	; 0x38
c0de1a0c:	d137      	bne.n	c0de1a7e <generate_address+0x7a>
c0de1a0e:	ab11      	add	r3, sp, #68	; 0x44
c0de1a10:	2001      	movs	r0, #1
c0de1a12:	7098      	strb	r0, [r3, #2]
c0de1a14:	21ff      	movs	r1, #255	; 0xff
c0de1a16:	31cc      	adds	r1, #204	; 0xcc
c0de1a18:	8019      	strh	r1, [r3, #0]
c0de1a1a:	4611      	mov	r1, r2
c0de1a1c:	311f      	adds	r1, #31
c0de1a1e:	1cdb      	adds	r3, r3, #3
c0de1a20:	2500      	movs	r5, #0
c0de1a22:	780e      	ldrb	r6, [r1, #0]
c0de1a24:	555e      	strb	r6, [r3, r5]
c0de1a26:	1e49      	subs	r1, r1, #1
c0de1a28:	1c6d      	adds	r5, r5, #1
c0de1a2a:	2d20      	cmp	r5, #32
c0de1a2c:	d1f9      	bne.n	c0de1a22 <generate_address+0x1e>
c0de1a2e:	213f      	movs	r1, #63	; 0x3f
c0de1a30:	5c51      	ldrb	r1, [r2, r1]
c0de1a32:	4001      	ands	r1, r0
c0de1a34:	2023      	movs	r0, #35	; 0x23
c0de1a36:	ad11      	add	r5, sp, #68	; 0x44
c0de1a38:	5429      	strb	r1, [r5, r0]
c0de1a3a:	2124      	movs	r1, #36	; 0x24
c0de1a3c:	ae09      	add	r6, sp, #36	; 0x24
c0de1a3e:	2720      	movs	r7, #32
c0de1a40:	4628      	mov	r0, r5
c0de1a42:	4632      	mov	r2, r6
c0de1a44:	463b      	mov	r3, r7
c0de1a46:	f000 f96f 	bl	c0de1d28 <cx_hash_sha256>
c0de1a4a:	aa01      	add	r2, sp, #4
c0de1a4c:	4630      	mov	r0, r6
c0de1a4e:	4639      	mov	r1, r7
c0de1a50:	463b      	mov	r3, r7
c0de1a52:	f000 f969 	bl	c0de1d28 <cx_hash_sha256>
c0de1a56:	9801      	ldr	r0, [sp, #4]
c0de1a58:	901a      	str	r0, [sp, #104]	; 0x68
c0de1a5a:	2128      	movs	r1, #40	; 0x28
c0de1a5c:	2338      	movs	r3, #56	; 0x38
c0de1a5e:	4628      	mov	r0, r5
c0de1a60:	4622      	mov	r2, r4
c0de1a62:	f005 fc25 	bl	c0de72b0 <b58_encode>
c0de1a66:	4601      	mov	r1, r0
c0de1a68:	2037      	movs	r0, #55	; 0x37
c0de1a6a:	2200      	movs	r2, #0
c0de1a6c:	5422      	strb	r2, [r4, r0]
c0de1a6e:	460b      	mov	r3, r1
c0de1a70:	3b37      	subs	r3, #55	; 0x37
c0de1a72:	4258      	negs	r0, r3
c0de1a74:	4158      	adcs	r0, r3
c0de1a76:	2937      	cmp	r1, #55	; 0x37
c0de1a78:	d003      	beq.n	c0de1a82 <generate_address+0x7e>
c0de1a7a:	7022      	strb	r2, [r4, #0]
c0de1a7c:	e001      	b.n	c0de1a82 <generate_address+0x7e>
c0de1a7e:	2000      	movs	r0, #0
c0de1a80:	7020      	strb	r0, [r4, #0]
c0de1a82:	b01b      	add	sp, #108	; 0x6c
c0de1a84:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de1a86 <validate_address>:
c0de1a86:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1a88:	b09b      	sub	sp, #108	; 0x6c
c0de1a8a:	4605      	mov	r5, r0
c0de1a8c:	2138      	movs	r1, #56	; 0x38
c0de1a8e:	f007 f901 	bl	c0de8c94 <strnlen>
c0de1a92:	2837      	cmp	r0, #55	; 0x37
c0de1a94:	d130      	bne.n	c0de1af8 <validate_address+0x72>
c0de1a96:	2137      	movs	r1, #55	; 0x37
c0de1a98:	ac11      	add	r4, sp, #68	; 0x44
c0de1a9a:	2328      	movs	r3, #40	; 0x28
c0de1a9c:	4628      	mov	r0, r5
c0de1a9e:	4622      	mov	r2, r4
c0de1aa0:	f005 fc8a 	bl	c0de73b8 <b58_decode>
c0de1aa4:	2124      	movs	r1, #36	; 0x24
c0de1aa6:	9100      	str	r1, [sp, #0]
c0de1aa8:	ae09      	add	r6, sp, #36	; 0x24
c0de1aaa:	2720      	movs	r7, #32
c0de1aac:	4620      	mov	r0, r4
c0de1aae:	4632      	mov	r2, r6
c0de1ab0:	463b      	mov	r3, r7
c0de1ab2:	f000 f939 	bl	c0de1d28 <cx_hash_sha256>
c0de1ab6:	ad01      	add	r5, sp, #4
c0de1ab8:	4630      	mov	r0, r6
c0de1aba:	4639      	mov	r1, r7
c0de1abc:	462a      	mov	r2, r5
c0de1abe:	463b      	mov	r3, r7
c0de1ac0:	f000 f932 	bl	c0de1d28 <cx_hash_sha256>
c0de1ac4:	7828      	ldrb	r0, [r5, #0]
c0de1ac6:	7869      	ldrb	r1, [r5, #1]
c0de1ac8:	0209      	lsls	r1, r1, #8
c0de1aca:	1808      	adds	r0, r1, r0
c0de1acc:	78a9      	ldrb	r1, [r5, #2]
c0de1ace:	78ea      	ldrb	r2, [r5, #3]
c0de1ad0:	0212      	lsls	r2, r2, #8
c0de1ad2:	1851      	adds	r1, r2, r1
c0de1ad4:	0409      	lsls	r1, r1, #16
c0de1ad6:	1808      	adds	r0, r1, r0
c0de1ad8:	9900      	ldr	r1, [sp, #0]
c0de1ada:	5c61      	ldrb	r1, [r4, r1]
c0de1adc:	3424      	adds	r4, #36	; 0x24
c0de1ade:	7862      	ldrb	r2, [r4, #1]
c0de1ae0:	0212      	lsls	r2, r2, #8
c0de1ae2:	1851      	adds	r1, r2, r1
c0de1ae4:	78a2      	ldrb	r2, [r4, #2]
c0de1ae6:	78e3      	ldrb	r3, [r4, #3]
c0de1ae8:	021b      	lsls	r3, r3, #8
c0de1aea:	189a      	adds	r2, r3, r2
c0de1aec:	0412      	lsls	r2, r2, #16
c0de1aee:	1851      	adds	r1, r2, r1
c0de1af0:	1a09      	subs	r1, r1, r0
c0de1af2:	4248      	negs	r0, r1
c0de1af4:	4148      	adcs	r0, r1
c0de1af6:	e000      	b.n	c0de1afa <validate_address+0x74>
c0de1af8:	2000      	movs	r0, #0
c0de1afa:	b01b      	add	sp, #108	; 0x6c
c0de1afc:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de1afe <message_derive>:
c0de1afe:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1b00:	b0ff      	sub	sp, #508	; 0x1fc
c0de1b02:	b088      	sub	sp, #32
c0de1b04:	461f      	mov	r7, r3
c0de1b06:	9203      	str	r2, [sp, #12]
c0de1b08:	460e      	mov	r6, r1
c0de1b0a:	4604      	mov	r4, r0
c0de1b0c:	2043      	movs	r0, #67	; 0x43
c0de1b0e:	0081      	lsls	r1, r0, #2
c0de1b10:	ad44      	add	r5, sp, #272	; 0x110
c0de1b12:	4628      	mov	r0, r5
c0de1b14:	f006 ff22 	bl	c0de895c <__aeabi_memclr>
c0de1b18:	9700      	str	r7, [sp, #0]
c0de1b1a:	2001      	movs	r0, #1
c0de1b1c:	0207      	lsls	r7, r0, #8
c0de1b1e:	4639      	mov	r1, r7
c0de1b20:	310c      	adds	r1, #12
c0de1b22:	4628      	mov	r0, r5
c0de1b24:	4632      	mov	r2, r6
c0de1b26:	9b03      	ldr	r3, [sp, #12]
c0de1b28:	f003 fb04 	bl	c0de5134 <roinput_derive_message>
c0de1b2c:	4605      	mov	r5, r0
c0de1b2e:	2800      	cmp	r0, #0
c0de1b30:	d431      	bmi.n	c0de1b96 <message_derive+0x98>
c0de1b32:	a804      	add	r0, sp, #16
c0de1b34:	4639      	mov	r1, r7
c0de1b36:	f000 f8d9 	bl	c0de1cec <cx_blake2b_init_no_throw>
c0de1b3a:	2800      	cmp	r0, #0
c0de1b3c:	d130      	bne.n	c0de1ba0 <message_derive+0xa2>
c0de1b3e:	2100      	movs	r1, #0
c0de1b40:	9100      	str	r1, [sp, #0]
c0de1b42:	9101      	str	r1, [sp, #4]
c0de1b44:	a804      	add	r0, sp, #16
c0de1b46:	aa44      	add	r2, sp, #272	; 0x110
c0de1b48:	462b      	mov	r3, r5
c0de1b4a:	f000 f8e7 	bl	c0de1d1c <cx_hash_no_throw>
c0de1b4e:	2800      	cmp	r0, #0
c0de1b50:	d126      	bne.n	c0de1ba0 <message_derive+0xa2>
c0de1b52:	ae04      	add	r6, sp, #16
c0de1b54:	4630      	mov	r0, r6
c0de1b56:	f000 f8db 	bl	c0de1d10 <cx_hash_get_size>
c0de1b5a:	9841      	ldr	r0, [sp, #260]	; 0x104
c0de1b5c:	9400      	str	r4, [sp, #0]
c0de1b5e:	9001      	str	r0, [sp, #4]
c0de1b60:	2101      	movs	r1, #1
c0de1b62:	2200      	movs	r2, #0
c0de1b64:	4630      	mov	r0, r6
c0de1b66:	4613      	mov	r3, r2
c0de1b68:	f000 f8d8 	bl	c0de1d1c <cx_hash_no_throw>
c0de1b6c:	2800      	cmp	r0, #0
c0de1b6e:	d117      	bne.n	c0de1ba0 <message_derive+0xa2>
c0de1b70:	a804      	add	r0, sp, #16
c0de1b72:	f000 f8cd 	bl	c0de1d10 <cx_hash_get_size>
c0de1b76:	2020      	movs	r0, #32
c0de1b78:	4621      	mov	r1, r4
c0de1b7a:	1822      	adds	r2, r4, r0
c0de1b7c:	1e52      	subs	r2, r2, #1
c0de1b7e:	7813      	ldrb	r3, [r2, #0]
c0de1b80:	780e      	ldrb	r6, [r1, #0]
c0de1b82:	7016      	strb	r6, [r2, #0]
c0de1b84:	700b      	strb	r3, [r1, #0]
c0de1b86:	1c49      	adds	r1, r1, #1
c0de1b88:	1e40      	subs	r0, r0, #1
c0de1b8a:	2810      	cmp	r0, #16
c0de1b8c:	d8f5      	bhi.n	c0de1b7a <message_derive+0x7c>
c0de1b8e:	7820      	ldrb	r0, [r4, #0]
c0de1b90:	213f      	movs	r1, #63	; 0x3f
c0de1b92:	4001      	ands	r1, r0
c0de1b94:	7021      	strb	r1, [r4, #0]
c0de1b96:	43e8      	mvns	r0, r5
c0de1b98:	0fc0      	lsrs	r0, r0, #31
c0de1b9a:	b07f      	add	sp, #508	; 0x1fc
c0de1b9c:	b008      	add	sp, #32
c0de1b9e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1ba0:	f002 f861 	bl	c0de3c66 <os_longjmp>

c0de1ba4 <message_hash>:
c0de1ba4:	b570      	push	{r4, r5, r6, lr}
c0de1ba6:	b0e2      	sub	sp, #392	; 0x188
c0de1ba8:	4615      	mov	r5, r2
c0de1baa:	460a      	mov	r2, r1
c0de1bac:	4604      	mov	r4, r0
c0de1bae:	9300      	str	r3, [sp, #0]
c0de1bb0:	2009      	movs	r0, #9
c0de1bb2:	0141      	lsls	r1, r0, #5
c0de1bb4:	a81a      	add	r0, sp, #104	; 0x68
c0de1bb6:	462b      	mov	r3, r5
c0de1bb8:	f003 fb31 	bl	c0de521e <roinput_hash_message>
c0de1bbc:	4605      	mov	r5, r0
c0de1bbe:	2800      	cmp	r0, #0
c0de1bc0:	d40d      	bmi.n	c0de1bde <message_hash+0x3a>
c0de1bc2:	9966      	ldr	r1, [sp, #408]	; 0x198
c0de1bc4:	ae02      	add	r6, sp, #8
c0de1bc6:	4630      	mov	r0, r6
c0de1bc8:	f003 f932 	bl	c0de4e30 <poseidon_init>
c0de1bcc:	a91a      	add	r1, sp, #104	; 0x68
c0de1bce:	4630      	mov	r0, r6
c0de1bd0:	462a      	mov	r2, r5
c0de1bd2:	f003 f93f 	bl	c0de4e54 <poseidon_update>
c0de1bd6:	4620      	mov	r0, r4
c0de1bd8:	4631      	mov	r1, r6
c0de1bda:	f003 f97a 	bl	c0de4ed2 <poseidon_digest>
c0de1bde:	43e8      	mvns	r0, r5
c0de1be0:	0fc0      	lsrs	r0, r0, #31
c0de1be2:	b062      	add	sp, #392	; 0x188
c0de1be4:	bd70      	pop	{r4, r5, r6, pc}
c0de1be6:	d4d4      	bmi.n	c0de1b92 <message_derive+0x94>

c0de1be8 <sign>:
c0de1be8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1bea:	b0b3      	sub	sp, #204	; 0xcc
c0de1bec:	461f      	mov	r7, r3
c0de1bee:	4616      	mov	r6, r2
c0de1bf0:	9105      	str	r1, [sp, #20]
c0de1bf2:	4604      	mov	r4, r0
c0de1bf4:	ad07      	add	r5, sp, #28
c0de1bf6:	4628      	mov	r0, r5
c0de1bf8:	f006 fffe 	bl	c0de8bf8 <setjmp>
c0de1bfc:	85a8      	strh	r0, [r5, #44]	; 0x2c
c0de1bfe:	b285      	uxth	r5, r0
c0de1c00:	2d00      	cmp	r5, #0
c0de1c02:	d006      	beq.n	c0de1c12 <sign+0x2a>
c0de1c04:	a807      	add	r0, sp, #28
c0de1c06:	2100      	movs	r1, #0
c0de1c08:	8581      	strh	r1, [r0, #44]	; 0x2c
c0de1c0a:	9811      	ldr	r0, [sp, #68]	; 0x44
c0de1c0c:	f003 fd50 	bl	c0de56b0 <try_context_set>
c0de1c10:	e04e      	b.n	c0de1cb0 <sign+0xc8>
c0de1c12:	9403      	str	r4, [sp, #12]
c0de1c14:	463c      	mov	r4, r7
c0de1c16:	a807      	add	r0, sp, #28
c0de1c18:	f003 fd4a 	bl	c0de56b0 <try_context_set>
c0de1c1c:	9011      	str	r0, [sp, #68]	; 0x44
c0de1c1e:	a82b      	add	r0, sp, #172	; 0xac
c0de1c20:	9905      	ldr	r1, [sp, #20]
c0de1c22:	4632      	mov	r2, r6
c0de1c24:	463b      	mov	r3, r7
c0de1c26:	f7ff ff6a 	bl	c0de1afe <message_derive>
c0de1c2a:	2800      	cmp	r0, #0
c0de1c2c:	d059      	beq.n	c0de1ce2 <sign+0xfa>
c0de1c2e:	9604      	str	r6, [sp, #16]
c0de1c30:	f002 fc2a 	bl	c0de4488 <io_seproxyhal_io_heartbeat>
c0de1c34:	af1b      	add	r7, sp, #108	; 0x6c
c0de1c36:	a92b      	add	r1, sp, #172	; 0xac
c0de1c38:	4a2b      	ldr	r2, [pc, #172]	; (c0de1ce8 <sign+0x100>)
c0de1c3a:	447a      	add	r2, pc
c0de1c3c:	4638      	mov	r0, r7
c0de1c3e:	f7ff fea3 	bl	c0de1988 <affine_scalar_mul>
c0de1c42:	f002 fc21 	bl	c0de4488 <io_seproxyhal_io_heartbeat>
c0de1c46:	2220      	movs	r2, #32
c0de1c48:	9e03      	ldr	r6, [sp, #12]
c0de1c4a:	4630      	mov	r0, r6
c0de1c4c:	4639      	mov	r1, r7
c0de1c4e:	f006 fe8b 	bl	c0de8968 <__aeabi_memcpy>
c0de1c52:	203f      	movs	r0, #63	; 0x3f
c0de1c54:	5c38      	ldrb	r0, [r7, r0]
c0de1c56:	07c0      	lsls	r0, r0, #31
c0de1c58:	d00e      	beq.n	c0de1c78 <sign+0x90>
c0de1c5a:	a82b      	add	r0, sp, #172	; 0xac
c0de1c5c:	a913      	add	r1, sp, #76	; 0x4c
c0de1c5e:	460a      	mov	r2, r1
c0de1c60:	4603      	mov	r3, r0
c0de1c62:	9506      	str	r5, [sp, #24]
c0de1c64:	9402      	str	r4, [sp, #8]
c0de1c66:	cbf0      	ldmia	r3!, {r4, r5, r6, r7}
c0de1c68:	c2f0      	stmia	r2!, {r4, r5, r6, r7}
c0de1c6a:	cbf0      	ldmia	r3!, {r4, r5, r6, r7}
c0de1c6c:	c2f0      	stmia	r2!, {r4, r5, r6, r7}
c0de1c6e:	9c02      	ldr	r4, [sp, #8]
c0de1c70:	9e03      	ldr	r6, [sp, #12]
c0de1c72:	9d06      	ldr	r5, [sp, #24]
c0de1c74:	f7ff fc5a 	bl	c0de152c <scalar_negate>
c0de1c78:	9400      	str	r4, [sp, #0]
c0de1c7a:	3620      	adds	r6, #32
c0de1c7c:	aa1b      	add	r2, sp, #108	; 0x6c
c0de1c7e:	4630      	mov	r0, r6
c0de1c80:	9905      	ldr	r1, [sp, #20]
c0de1c82:	9b04      	ldr	r3, [sp, #16]
c0de1c84:	f7ff ff8e 	bl	c0de1ba4 <message_hash>
c0de1c88:	2800      	cmp	r0, #0
c0de1c8a:	d02a      	beq.n	c0de1ce2 <sign+0xfa>
c0de1c8c:	f002 fbfc 	bl	c0de4488 <io_seproxyhal_io_heartbeat>
c0de1c90:	9a05      	ldr	r2, [sp, #20]
c0de1c92:	3240      	adds	r2, #64	; 0x40
c0de1c94:	ac13      	add	r4, sp, #76	; 0x4c
c0de1c96:	4620      	mov	r0, r4
c0de1c98:	4631      	mov	r1, r6
c0de1c9a:	f7ff fc37 	bl	c0de150c <scalar_mul>
c0de1c9e:	f002 fbf3 	bl	c0de4488 <io_seproxyhal_io_heartbeat>
c0de1ca2:	a92b      	add	r1, sp, #172	; 0xac
c0de1ca4:	4630      	mov	r0, r6
c0de1ca6:	4622      	mov	r2, r4
c0de1ca8:	f7ff fc20 	bl	c0de14ec <scalar_add>
c0de1cac:	f002 fbec 	bl	c0de4488 <io_seproxyhal_io_heartbeat>
c0de1cb0:	f003 fcf4 	bl	c0de569c <try_context_get>
c0de1cb4:	a907      	add	r1, sp, #28
c0de1cb6:	4288      	cmp	r0, r1
c0de1cb8:	d102      	bne.n	c0de1cc0 <sign+0xd8>
c0de1cba:	9811      	ldr	r0, [sp, #68]	; 0x44
c0de1cbc:	f003 fcf8 	bl	c0de56b0 <try_context_set>
c0de1cc0:	a813      	add	r0, sp, #76	; 0x4c
c0de1cc2:	2420      	movs	r4, #32
c0de1cc4:	4621      	mov	r1, r4
c0de1cc6:	f006 fe5f 	bl	c0de8988 <explicit_bzero>
c0de1cca:	a82b      	add	r0, sp, #172	; 0xac
c0de1ccc:	4621      	mov	r1, r4
c0de1cce:	f006 fe5b 	bl	c0de8988 <explicit_bzero>
c0de1cd2:	a807      	add	r0, sp, #28
c0de1cd4:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0de1cd6:	2800      	cmp	r0, #0
c0de1cd8:	d104      	bne.n	c0de1ce4 <sign+0xfc>
c0de1cda:	4268      	negs	r0, r5
c0de1cdc:	4168      	adcs	r0, r5
c0de1cde:	b033      	add	sp, #204	; 0xcc
c0de1ce0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1ce2:	2002      	movs	r0, #2
c0de1ce4:	f001 ffbf 	bl	c0de3c66 <os_longjmp>
c0de1ce8:	000085f2 	.word	0x000085f2

c0de1cec <cx_blake2b_init_no_throw>:
c0de1cec:	b403      	push	{r0, r1}
c0de1cee:	4801      	ldr	r0, [pc, #4]	; (c0de1cf4 <cx_blake2b_init_no_throw+0x8>)
c0de1cf0:	e04d      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1cf2:	0000      	.short	0x0000
c0de1cf4:	0000001a 	.word	0x0000001a

c0de1cf8 <cx_crc16>:
c0de1cf8:	b403      	push	{r0, r1}
c0de1cfa:	4801      	ldr	r0, [pc, #4]	; (c0de1d00 <cx_crc16+0x8>)
c0de1cfc:	e047      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1cfe:	0000      	.short	0x0000
c0de1d00:	00000025 	.word	0x00000025

c0de1d04 <cx_crc16_update>:
c0de1d04:	b403      	push	{r0, r1}
c0de1d06:	4801      	ldr	r0, [pc, #4]	; (c0de1d0c <cx_crc16_update+0x8>)
c0de1d08:	e041      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1d0a:	0000      	.short	0x0000
c0de1d0c:	00000026 	.word	0x00000026

c0de1d10 <cx_hash_get_size>:
c0de1d10:	b403      	push	{r0, r1}
c0de1d12:	4801      	ldr	r0, [pc, #4]	; (c0de1d18 <cx_hash_get_size+0x8>)
c0de1d14:	e03b      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1d16:	0000      	.short	0x0000
c0de1d18:	00000044 	.word	0x00000044

c0de1d1c <cx_hash_no_throw>:
c0de1d1c:	b403      	push	{r0, r1}
c0de1d1e:	4801      	ldr	r0, [pc, #4]	; (c0de1d24 <cx_hash_no_throw+0x8>)
c0de1d20:	e035      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1d22:	0000      	.short	0x0000
c0de1d24:	00000047 	.word	0x00000047

c0de1d28 <cx_hash_sha256>:
c0de1d28:	b403      	push	{r0, r1}
c0de1d2a:	4801      	ldr	r0, [pc, #4]	; (c0de1d30 <cx_hash_sha256+0x8>)
c0de1d2c:	e02f      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1d2e:	0000      	.short	0x0000
c0de1d30:	00000049 	.word	0x00000049

c0de1d34 <cx_math_addm_no_throw>:
c0de1d34:	b403      	push	{r0, r1}
c0de1d36:	4801      	ldr	r0, [pc, #4]	; (c0de1d3c <cx_math_addm_no_throw+0x8>)
c0de1d38:	e029      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1d3a:	0000      	.short	0x0000
c0de1d3c:	0000005a 	.word	0x0000005a

c0de1d40 <cx_math_invprimem_no_throw>:
c0de1d40:	b403      	push	{r0, r1}
c0de1d42:	4801      	ldr	r0, [pc, #4]	; (c0de1d48 <cx_math_invprimem_no_throw+0x8>)
c0de1d44:	e023      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1d46:	0000      	.short	0x0000
c0de1d48:	0000005e 	.word	0x0000005e

c0de1d4c <cx_math_multm_no_throw>:
c0de1d4c:	b403      	push	{r0, r1}
c0de1d4e:	4801      	ldr	r0, [pc, #4]	; (c0de1d54 <cx_math_multm_no_throw+0x8>)
c0de1d50:	e01d      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1d52:	0000      	.short	0x0000
c0de1d54:	00000061 	.word	0x00000061

c0de1d58 <cx_math_powm_no_throw>:
c0de1d58:	b403      	push	{r0, r1}
c0de1d5a:	4801      	ldr	r0, [pc, #4]	; (c0de1d60 <cx_math_powm_no_throw+0x8>)
c0de1d5c:	e017      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1d5e:	0000      	.short	0x0000
c0de1d60:	00000064 	.word	0x00000064

c0de1d64 <cx_math_subm_no_throw>:
c0de1d64:	b403      	push	{r0, r1}
c0de1d66:	4801      	ldr	r0, [pc, #4]	; (c0de1d6c <cx_math_subm_no_throw+0x8>)
c0de1d68:	e011      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1d6a:	0000      	.short	0x0000
c0de1d6c:	00000065 	.word	0x00000065

c0de1d70 <cx_rng_no_throw>:
c0de1d70:	b403      	push	{r0, r1}
c0de1d72:	4801      	ldr	r0, [pc, #4]	; (c0de1d78 <cx_rng_no_throw+0x8>)
c0de1d74:	e00b      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1d76:	0000      	.short	0x0000
c0de1d78:	0000006d 	.word	0x0000006d

c0de1d7c <cx_rng_u32_range_func>:
c0de1d7c:	b403      	push	{r0, r1}
c0de1d7e:	4801      	ldr	r0, [pc, #4]	; (c0de1d84 <cx_rng_u32_range_func+0x8>)
c0de1d80:	e005      	b.n	c0de1d8e <cx_trampoline_helper>
c0de1d82:	0000      	.short	0x0000
c0de1d84:	00000071 	.word	0x00000071

c0de1d88 <cx_x448>:
c0de1d88:	b403      	push	{r0, r1}
c0de1d8a:	4802      	ldr	r0, [pc, #8]	; (c0de1d94 <cx_trampoline_helper+0x6>)
c0de1d8c:	e7ff      	b.n	c0de1d8e <cx_trampoline_helper>

c0de1d8e <cx_trampoline_helper>:
c0de1d8e:	4902      	ldr	r1, [pc, #8]	; (c0de1d98 <cx_trampoline_helper+0xa>)
c0de1d90:	4708      	bx	r1
c0de1d92:	0000      	.short	0x0000
c0de1d94:	00000086 	.word	0x00000086
c0de1d98:	00210001 	.word	0x00210001

c0de1d9c <handle_get_address>:
c0de1d9c:	b510      	push	{r4, lr}
c0de1d9e:	2b04      	cmp	r3, #4
c0de1da0:	d108      	bne.n	c0de1db4 <handle_get_address+0x18>
c0de1da2:	9c02      	ldr	r4, [sp, #8]
c0de1da4:	4610      	mov	r0, r2
c0de1da6:	f000 f87b 	bl	c0de1ea0 <ui_get_address>
c0de1daa:	6820      	ldr	r0, [r4, #0]
c0de1dac:	2110      	movs	r1, #16
c0de1dae:	4301      	orrs	r1, r0
c0de1db0:	6021      	str	r1, [r4, #0]
c0de1db2:	bd10      	pop	{r4, pc}
c0de1db4:	2002      	movs	r0, #2
c0de1db6:	f001 ff56 	bl	c0de3c66 <os_longjmp>

c0de1dba <ux_get_address_result_flow_address_step_init>:
c0de1dba:	b510      	push	{r4, lr}
c0de1dbc:	4604      	mov	r4, r0
c0de1dbe:	f000 f805 	bl	c0de1dcc <gen_address>
c0de1dc2:	4620      	mov	r0, r4
c0de1dc4:	f006 f92c 	bl	c0de8020 <ux_layout_bn_paging_init>
c0de1dc8:	bd10      	pop	{r4, pc}
c0de1dca:	d4d4      	bmi.n	c0de1d76 <cx_rng_no_throw+0x6>

c0de1dcc <gen_address>:
c0de1dcc:	b570      	push	{r4, r5, r6, lr}
c0de1dce:	b0a4      	sub	sp, #144	; 0x90
c0de1dd0:	4d1b      	ldr	r5, [pc, #108]	; (c0de1e40 <gen_address+0x74>)
c0de1dd2:	4648      	mov	r0, r9
c0de1dd4:	5d40      	ldrb	r0, [r0, r5]
c0de1dd6:	2800      	cmp	r0, #0
c0de1dd8:	d12d      	bne.n	c0de1e36 <gen_address+0x6a>
c0de1dda:	ac18      	add	r4, sp, #96	; 0x60
c0de1ddc:	4620      	mov	r0, r4
c0de1dde:	f006 ff0b 	bl	c0de8bf8 <setjmp>
c0de1de2:	85a0      	strh	r0, [r4, #44]	; 0x2c
c0de1de4:	0400      	lsls	r0, r0, #16
c0de1de6:	d115      	bne.n	c0de1e14 <gen_address+0x48>
c0de1de8:	a818      	add	r0, sp, #96	; 0x60
c0de1dea:	f003 fc61 	bl	c0de56b0 <try_context_set>
c0de1dee:	9022      	str	r0, [sp, #136]	; 0x88
c0de1df0:	4814      	ldr	r0, [pc, #80]	; (c0de1e44 <gen_address+0x78>)
c0de1df2:	464e      	mov	r6, r9
c0de1df4:	5831      	ldr	r1, [r6, r0]
c0de1df6:	466c      	mov	r4, sp
c0de1df8:	4620      	mov	r0, r4
c0de1dfa:	f7ff fddb 	bl	c0de19b4 <generate_keypair>
c0de1dfe:	4812      	ldr	r0, [pc, #72]	; (c0de1e48 <gen_address+0x7c>)
c0de1e00:	1830      	adds	r0, r6, r0
c0de1e02:	2138      	movs	r1, #56	; 0x38
c0de1e04:	4622      	mov	r2, r4
c0de1e06:	f7ff fdfd 	bl	c0de1a04 <generate_address>
c0de1e0a:	2800      	cmp	r0, #0
c0de1e0c:	d015      	beq.n	c0de1e3a <gen_address+0x6e>
c0de1e0e:	4648      	mov	r0, r9
c0de1e10:	2101      	movs	r1, #1
c0de1e12:	5541      	strb	r1, [r0, r5]
c0de1e14:	f003 fc42 	bl	c0de569c <try_context_get>
c0de1e18:	a918      	add	r1, sp, #96	; 0x60
c0de1e1a:	4288      	cmp	r0, r1
c0de1e1c:	d102      	bne.n	c0de1e24 <gen_address+0x58>
c0de1e1e:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de1e20:	f003 fc46 	bl	c0de56b0 <try_context_set>
c0de1e24:	4668      	mov	r0, sp
c0de1e26:	3040      	adds	r0, #64	; 0x40
c0de1e28:	2120      	movs	r1, #32
c0de1e2a:	f006 fdad 	bl	c0de8988 <explicit_bzero>
c0de1e2e:	a818      	add	r0, sp, #96	; 0x60
c0de1e30:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0de1e32:	2800      	cmp	r0, #0
c0de1e34:	d102      	bne.n	c0de1e3c <gen_address+0x70>
c0de1e36:	b024      	add	sp, #144	; 0x90
c0de1e38:	bd70      	pop	{r4, r5, r6, pc}
c0de1e3a:	2002      	movs	r0, #2
c0de1e3c:	f001 ff13 	bl	c0de3c66 <os_longjmp>
c0de1e40:	00000057 	.word	0x00000057
c0de1e44:	00000058 	.word	0x00000058
c0de1e48:	00000004 	.word	0x00000004

c0de1e4c <ux_get_address_result_flow_approve_step_validateinit>:
c0de1e4c:	b510      	push	{r4, lr}
c0de1e4e:	4807      	ldr	r0, [pc, #28]	; (c0de1e6c <ux_get_address_result_flow_approve_step_validateinit+0x20>)
c0de1e50:	4649      	mov	r1, r9
c0de1e52:	1808      	adds	r0, r1, r0
c0de1e54:	4a06      	ldr	r2, [pc, #24]	; (c0de1e70 <ux_get_address_result_flow_approve_step_validateinit+0x24>)
c0de1e56:	1889      	adds	r1, r1, r2
c0de1e58:	2438      	movs	r4, #56	; 0x38
c0de1e5a:	4622      	mov	r2, r4
c0de1e5c:	f006 fd84 	bl	c0de8968 <__aeabi_memcpy>
c0de1e60:	2101      	movs	r1, #1
c0de1e62:	4620      	mov	r0, r4
c0de1e64:	f000 f85c 	bl	c0de1f20 <sendResponse>
c0de1e68:	bd10      	pop	{r4, pc}
c0de1e6a:	46c0      	nop			; (mov r8, r8)
c0de1e6c:	00000530 	.word	0x00000530
c0de1e70:	00000004 	.word	0x00000004

c0de1e74 <ux_get_address_result_flow_reject_step_validateinit>:
c0de1e74:	b580      	push	{r7, lr}
c0de1e76:	2000      	movs	r0, #0
c0de1e78:	4601      	mov	r1, r0
c0de1e7a:	f000 f851 	bl	c0de1f20 <sendResponse>
c0de1e7e:	bd80      	pop	{r7, pc}

c0de1e80 <ux_get_address_flow_generate_step_validateinit>:
c0de1e80:	b580      	push	{r7, lr}
c0de1e82:	4903      	ldr	r1, [pc, #12]	; (c0de1e90 <ux_get_address_flow_generate_step_validateinit+0x10>)
c0de1e84:	4479      	add	r1, pc
c0de1e86:	2000      	movs	r0, #0
c0de1e88:	4602      	mov	r2, r0
c0de1e8a:	f005 fe47 	bl	c0de7b1c <ux_flow_init>
c0de1e8e:	bd80      	pop	{r7, pc}
c0de1e90:	00008460 	.word	0x00008460

c0de1e94 <ux_get_address_flow_cancel_step_validateinit>:
c0de1e94:	b580      	push	{r7, lr}
c0de1e96:	2000      	movs	r0, #0
c0de1e98:	4601      	mov	r1, r0
c0de1e9a:	f000 f841 	bl	c0de1f20 <sendResponse>
c0de1e9e:	bd80      	pop	{r7, pc}

c0de1ea0 <ui_get_address>:
c0de1ea0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1ea2:	b081      	sub	sp, #4
c0de1ea4:	4917      	ldr	r1, [pc, #92]	; (c0de1f04 <ui_get_address+0x64>)
c0de1ea6:	464d      	mov	r5, r9
c0de1ea8:	2400      	movs	r4, #0
c0de1eaa:	546c      	strb	r4, [r5, r1]
c0de1eac:	4916      	ldr	r1, [pc, #88]	; (c0de1f08 <ui_get_address+0x68>)
c0de1eae:	546c      	strb	r4, [r5, r1]
c0de1eb0:	f005 fb04 	bl	c0de74bc <read_uint32_be>
c0de1eb4:	4602      	mov	r2, r0
c0de1eb6:	4815      	ldr	r0, [pc, #84]	; (c0de1f0c <ui_get_address+0x6c>)
c0de1eb8:	502a      	str	r2, [r5, r0]
c0de1eba:	4815      	ldr	r0, [pc, #84]	; (c0de1f10 <ui_get_address+0x70>)
c0de1ebc:	182d      	adds	r5, r5, r0
c0de1ebe:	4815      	ldr	r0, [pc, #84]	; (c0de1f14 <ui_get_address+0x74>)
c0de1ec0:	4478      	add	r0, pc
c0de1ec2:	4629      	mov	r1, r5
c0de1ec4:	c8c8      	ldmia	r0!, {r3, r6, r7}
c0de1ec6:	c1c8      	stmia	r1!, {r3, r6, r7}
c0de1ec8:	c8c8      	ldmia	r0!, {r3, r6, r7}
c0de1eca:	c1c8      	stmia	r1!, {r3, r6, r7}
c0de1ecc:	8803      	ldrh	r3, [r0, #0]
c0de1ece:	800b      	strh	r3, [r1, #0]
c0de1ed0:	7880      	ldrb	r0, [r0, #2]
c0de1ed2:	7088      	strb	r0, [r1, #2]
c0de1ed4:	4628      	mov	r0, r5
c0de1ed6:	300b      	adds	r0, #11
c0de1ed8:	2110      	movs	r1, #16
c0de1eda:	4623      	mov	r3, r4
c0de1edc:	f005 fbc0 	bl	c0de7660 <value_to_string>
c0de1ee0:	4628      	mov	r0, r5
c0de1ee2:	f006 fea3 	bl	c0de8c2c <strlen>
c0de1ee6:	1828      	adds	r0, r5, r0
c0de1ee8:	490b      	ldr	r1, [pc, #44]	; (c0de1f18 <ui_get_address+0x78>)
c0de1eea:	4479      	add	r1, pc
c0de1eec:	2206      	movs	r2, #6
c0de1eee:	f006 fd3b 	bl	c0de8968 <__aeabi_memcpy>
c0de1ef2:	490a      	ldr	r1, [pc, #40]	; (c0de1f1c <ui_get_address+0x7c>)
c0de1ef4:	4479      	add	r1, pc
c0de1ef6:	4620      	mov	r0, r4
c0de1ef8:	4622      	mov	r2, r4
c0de1efa:	f005 fe0f 	bl	c0de7b1c <ux_flow_init>
c0de1efe:	b001      	add	sp, #4
c0de1f00:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1f02:	46c0      	nop			; (mov r8, r8)
c0de1f04:	00000004 	.word	0x00000004
c0de1f08:	00000057 	.word	0x00000057
c0de1f0c:	00000058 	.word	0x00000058
c0de1f10:	0000003c 	.word	0x0000003c
c0de1f14:	000084dc 	.word	0x000084dc
c0de1f18:	00006e51 	.word	0x00006e51
c0de1f1c:	00008494 	.word	0x00008494

c0de1f20 <sendResponse>:
c0de1f20:	b510      	push	{r4, lr}
c0de1f22:	2900      	cmp	r1, #0
c0de1f24:	d102      	bne.n	c0de1f2c <sendResponse+0xc>
c0de1f26:	227a      	movs	r2, #122	; 0x7a
c0de1f28:	43d3      	mvns	r3, r2
c0de1f2a:	e000      	b.n	c0de1f2e <sendResponse+0xe>
c0de1f2c:	2300      	movs	r3, #0
c0de1f2e:	4a0a      	ldr	r2, [pc, #40]	; (c0de1f58 <sendResponse+0x38>)
c0de1f30:	464c      	mov	r4, r9
c0de1f32:	18a2      	adds	r2, r4, r2
c0de1f34:	1c44      	adds	r4, r0, #1
c0de1f36:	b2e4      	uxtb	r4, r4
c0de1f38:	5513      	strb	r3, [r2, r4]
c0de1f3a:	2900      	cmp	r1, #0
c0de1f3c:	d101      	bne.n	c0de1f42 <sendResponse+0x22>
c0de1f3e:	2169      	movs	r1, #105	; 0x69
c0de1f40:	e001      	b.n	c0de1f46 <sendResponse+0x26>
c0de1f42:	216f      	movs	r1, #111	; 0x6f
c0de1f44:	43c9      	mvns	r1, r1
c0de1f46:	5411      	strb	r1, [r2, r0]
c0de1f48:	1c80      	adds	r0, r0, #2
c0de1f4a:	b2c1      	uxtb	r1, r0
c0de1f4c:	2020      	movs	r0, #32
c0de1f4e:	f002 f8db 	bl	c0de4108 <io_exchange>
c0de1f52:	f001 fe6f 	bl	c0de3c34 <ui_idle>
c0de1f56:	bd10      	pop	{r4, pc}
c0de1f58:	00000530 	.word	0x00000530

c0de1f5c <LEDGER_BLE_init>:
c0de1f5c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1f5e:	b085      	sub	sp, #20
c0de1f60:	4825      	ldr	r0, [pc, #148]	; (c0de1ff8 <LEDGER_BLE_init+0x9c>)
c0de1f62:	4649      	mov	r1, r9
c0de1f64:	1808      	adds	r0, r1, r0
c0de1f66:	2600      	movs	r6, #0
c0de1f68:	84c6      	strh	r6, [r0, #38]	; 0x26
c0de1f6a:	4f24      	ldr	r7, [pc, #144]	; (c0de1ffc <LEDGER_BLE_init+0xa0>)
c0de1f6c:	19c8      	adds	r0, r1, r7
c0de1f6e:	2455      	movs	r4, #85	; 0x55
c0de1f70:	5d05      	ldrb	r5, [r0, r4]
c0de1f72:	211b      	movs	r1, #27
c0de1f74:	0109      	lsls	r1, r1, #4
c0de1f76:	f006 fcf1 	bl	c0de895c <__aeabi_memclr>
c0de1f7a:	2dc1      	cmp	r5, #193	; 0xc1
c0de1f7c:	d103      	bne.n	c0de1f86 <LEDGER_BLE_init+0x2a>
c0de1f7e:	4648      	mov	r0, r9
c0de1f80:	19c0      	adds	r0, r0, r7
c0de1f82:	21c1      	movs	r1, #193	; 0xc1
c0de1f84:	5501      	strb	r1, [r0, r4]
c0de1f86:	9603      	str	r6, [sp, #12]
c0de1f88:	9602      	str	r6, [sp, #8]
c0de1f8a:	ad02      	add	r5, sp, #8
c0de1f8c:	2108      	movs	r1, #8
c0de1f8e:	4628      	mov	r0, r5
c0de1f90:	f003 fb30 	bl	c0de55f4 <os_serial>
c0de1f94:	9601      	str	r6, [sp, #4]
c0de1f96:	2604      	movs	r6, #4
c0de1f98:	4628      	mov	r0, r5
c0de1f9a:	4631      	mov	r1, r6
c0de1f9c:	f7ff feac 	bl	c0de1cf8 <cx_crc16>
c0de1fa0:	464c      	mov	r4, r9
c0de1fa2:	19e7      	adds	r7, r4, r7
c0de1fa4:	75f8      	strb	r0, [r7, #23]
c0de1fa6:	0a00      	lsrs	r0, r0, #8
c0de1fa8:	7638      	strb	r0, [r7, #24]
c0de1faa:	1d28      	adds	r0, r5, #4
c0de1fac:	4631      	mov	r1, r6
c0de1fae:	f7ff fea3 	bl	c0de1cf8 <cx_crc16>
c0de1fb2:	9e01      	ldr	r6, [sp, #4]
c0de1fb4:	4911      	ldr	r1, [pc, #68]	; (c0de1ffc <LEDGER_BLE_init+0xa0>)
c0de1fb6:	5466      	strb	r6, [r4, r1]
c0de1fb8:	21de      	movs	r1, #222	; 0xde
c0de1fba:	83b9      	strh	r1, [r7, #28]
c0de1fbc:	21f1      	movs	r1, #241	; 0xf1
c0de1fbe:	76f9      	strb	r1, [r7, #27]
c0de1fc0:	7678      	strb	r0, [r7, #25]
c0de1fc2:	0a00      	lsrs	r0, r0, #8
c0de1fc4:	76b8      	strb	r0, [r7, #26]
c0de1fc6:	480e      	ldr	r0, [pc, #56]	; (c0de2000 <LEDGER_BLE_init+0xa4>)
c0de1fc8:	8438      	strh	r0, [r7, #32]
c0de1fca:	480e      	ldr	r0, [pc, #56]	; (c0de2004 <LEDGER_BLE_init+0xa8>)
c0de1fcc:	1825      	adds	r5, r4, r0
c0de1fce:	21c0      	movs	r1, #192	; 0xc0
c0de1fd0:	4628      	mov	r0, r5
c0de1fd2:	f006 fcc3 	bl	c0de895c <__aeabi_memclr>
c0de1fd6:	20ff      	movs	r0, #255	; 0xff
c0de1fd8:	3052      	adds	r0, #82	; 0x52
c0de1fda:	21b0      	movs	r1, #176	; 0xb0
c0de1fdc:	5268      	strh	r0, [r5, r1]
c0de1fde:	375a      	adds	r7, #90	; 0x5a
c0de1fe0:	20ac      	movs	r0, #172	; 0xac
c0de1fe2:	502f      	str	r7, [r5, r0]
c0de1fe4:	4628      	mov	r0, r5
c0de1fe6:	f001 f80d 	bl	c0de3004 <LEDGER_PROTOCOL_init>
c0de1fea:	4630      	mov	r0, r6
c0de1fec:	4631      	mov	r1, r6
c0de1fee:	4632      	mov	r2, r6
c0de1ff0:	f000 f80a 	bl	c0de2008 <init_mngr>
c0de1ff4:	b005      	add	sp, #20
c0de1ff6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1ff8:	00000684 	.word	0x00000684
c0de1ffc:	00000190 	.word	0x00000190
c0de2000:	0000ffff 	.word	0x0000ffff
c0de2004:	00000340 	.word	0x00000340

c0de2008 <init_mngr>:
c0de2008:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de200a:	b087      	sub	sp, #28
c0de200c:	4604      	mov	r4, r0
c0de200e:	4db4      	ldr	r5, [pc, #720]	; (c0de22e0 <init_mngr+0x2d8>)
c0de2010:	4648      	mov	r0, r9
c0de2012:	1940      	adds	r0, r0, r5
c0de2014:	8c00      	ldrh	r0, [r0, #32]
c0de2016:	4eb3      	ldr	r6, [pc, #716]	; (c0de22e4 <init_mngr+0x2dc>)
c0de2018:	42b0      	cmp	r0, r6
c0de201a:	d002      	beq.n	c0de2022 <init_mngr+0x1a>
c0de201c:	42a0      	cmp	r0, r4
c0de201e:	d000      	beq.n	c0de2022 <init_mngr+0x1a>
c0de2020:	e098      	b.n	c0de2154 <init_mngr+0x14c>
c0de2022:	4648      	mov	r0, r9
c0de2024:	1940      	adds	r0, r0, r5
c0de2026:	7f40      	ldrb	r0, [r0, #29]
c0de2028:	2800      	cmp	r0, #0
c0de202a:	d01f      	beq.n	c0de206c <init_mngr+0x64>
c0de202c:	2a06      	cmp	r2, #6
c0de202e:	d324      	bcc.n	c0de207a <init_mngr+0x72>
c0de2030:	2804      	cmp	r0, #4
c0de2032:	d122      	bne.n	c0de207a <init_mngr+0x72>
c0de2034:	4648      	mov	r0, r9
c0de2036:	1940      	adds	r0, r0, r5
c0de2038:	784a      	ldrb	r2, [r1, #1]
c0de203a:	788b      	ldrb	r3, [r1, #2]
c0de203c:	021b      	lsls	r3, r3, #8
c0de203e:	189a      	adds	r2, r3, r2
c0de2040:	8442      	strh	r2, [r0, #34]	; 0x22
c0de2042:	78ca      	ldrb	r2, [r1, #3]
c0de2044:	790b      	ldrb	r3, [r1, #4]
c0de2046:	021b      	lsls	r3, r3, #8
c0de2048:	189a      	adds	r2, r3, r2
c0de204a:	8482      	strh	r2, [r0, #36]	; 0x24
c0de204c:	794a      	ldrb	r2, [r1, #5]
c0de204e:	7989      	ldrb	r1, [r1, #6]
c0de2050:	2305      	movs	r3, #5
c0de2052:	7743      	strb	r3, [r0, #29]
c0de2054:	0209      	lsls	r1, r1, #8
c0de2056:	1889      	adds	r1, r1, r2
c0de2058:	84c1      	strh	r1, [r0, #38]	; 0x26
c0de205a:	4648      	mov	r0, r9
c0de205c:	1940      	adds	r0, r0, r5
c0de205e:	49a3      	ldr	r1, [pc, #652]	; (c0de22ec <init_mngr+0x2e4>)
c0de2060:	3179      	adds	r1, #121	; 0x79
c0de2062:	8401      	strh	r1, [r0, #32]
c0de2064:	2001      	movs	r0, #1
c0de2066:	f7fe fe99 	bl	c0de0d9c <aci_gap_set_io_capability>
c0de206a:	e073      	b.n	c0de2154 <init_mngr+0x14c>
c0de206c:	4648      	mov	r0, r9
c0de206e:	1940      	adds	r0, r0, r5
c0de2070:	2101      	movs	r1, #1
c0de2072:	7741      	strb	r1, [r0, #29]
c0de2074:	f7ff f98c 	bl	c0de1390 <hci_reset>
c0de2078:	e06c      	b.n	c0de2154 <init_mngr+0x14c>
c0de207a:	2a02      	cmp	r2, #2
c0de207c:	d321      	bcc.n	c0de20c2 <init_mngr+0xba>
c0de207e:	2807      	cmp	r0, #7
c0de2080:	d11f      	bne.n	c0de20c2 <init_mngr+0xba>
c0de2082:	4648      	mov	r0, r9
c0de2084:	1940      	adds	r0, r0, r5
c0de2086:	784a      	ldrb	r2, [r1, #1]
c0de2088:	7889      	ldrb	r1, [r1, #2]
c0de208a:	0209      	lsls	r1, r1, #8
c0de208c:	1889      	adds	r1, r1, r2
c0de208e:	224c      	movs	r2, #76	; 0x4c
c0de2090:	5281      	strh	r1, [r0, r2]
c0de2092:	2108      	movs	r1, #8
c0de2094:	7741      	strb	r1, [r0, #29]
c0de2096:	4648      	mov	r0, r9
c0de2098:	1941      	adds	r1, r0, r5
c0de209a:	4894      	ldr	r0, [pc, #592]	; (c0de22ec <init_mngr+0x2e4>)
c0de209c:	30f8      	adds	r0, #248	; 0xf8
c0de209e:	8408      	strh	r0, [r1, #32]
c0de20a0:	204c      	movs	r0, #76	; 0x4c
c0de20a2:	5a08      	ldrh	r0, [r1, r0]
c0de20a4:	314e      	adds	r1, #78	; 0x4e
c0de20a6:	2201      	movs	r2, #1
c0de20a8:	2310      	movs	r3, #16
c0de20aa:	2400      	movs	r4, #0
c0de20ac:	2508      	movs	r5, #8
c0de20ae:	9300      	str	r3, [sp, #0]
c0de20b0:	9501      	str	r5, [sp, #4]
c0de20b2:	9402      	str	r4, [sp, #8]
c0de20b4:	9303      	str	r3, [sp, #12]
c0de20b6:	9204      	str	r2, [sp, #16]
c0de20b8:	9105      	str	r1, [sp, #20]
c0de20ba:	2102      	movs	r1, #2
c0de20bc:	4a8c      	ldr	r2, [pc, #560]	; (c0de22f0 <init_mngr+0x2e8>)
c0de20be:	447a      	add	r2, pc
c0de20c0:	e045      	b.n	c0de214e <init_mngr+0x146>
c0de20c2:	2a02      	cmp	r2, #2
c0de20c4:	d320      	bcc.n	c0de2108 <init_mngr+0x100>
c0de20c6:	2808      	cmp	r0, #8
c0de20c8:	d11e      	bne.n	c0de2108 <init_mngr+0x100>
c0de20ca:	4648      	mov	r0, r9
c0de20cc:	1940      	adds	r0, r0, r5
c0de20ce:	784a      	ldrb	r2, [r1, #1]
c0de20d0:	7889      	ldrb	r1, [r1, #2]
c0de20d2:	0209      	lsls	r1, r1, #8
c0de20d4:	1889      	adds	r1, r1, r2
c0de20d6:	224e      	movs	r2, #78	; 0x4e
c0de20d8:	5281      	strh	r1, [r0, r2]
c0de20da:	2109      	movs	r1, #9
c0de20dc:	7741      	strb	r1, [r0, #29]
c0de20de:	4648      	mov	r0, r9
c0de20e0:	1942      	adds	r2, r0, r5
c0de20e2:	4882      	ldr	r0, [pc, #520]	; (c0de22ec <init_mngr+0x2e4>)
c0de20e4:	30f8      	adds	r0, #248	; 0xf8
c0de20e6:	8410      	strh	r0, [r2, #32]
c0de20e8:	204c      	movs	r0, #76	; 0x4c
c0de20ea:	5a10      	ldrh	r0, [r2, r0]
c0de20ec:	3250      	adds	r2, #80	; 0x50
c0de20ee:	2301      	movs	r3, #1
c0de20f0:	2410      	movs	r4, #16
c0de20f2:	2102      	movs	r1, #2
c0de20f4:	2508      	movs	r5, #8
c0de20f6:	9500      	str	r5, [sp, #0]
c0de20f8:	9501      	str	r5, [sp, #4]
c0de20fa:	9102      	str	r1, [sp, #8]
c0de20fc:	9403      	str	r4, [sp, #12]
c0de20fe:	9304      	str	r3, [sp, #16]
c0de2100:	9205      	str	r2, [sp, #20]
c0de2102:	4a7d      	ldr	r2, [pc, #500]	; (c0de22f8 <init_mngr+0x2f0>)
c0de2104:	447a      	add	r2, pc
c0de2106:	e022      	b.n	c0de214e <init_mngr+0x146>
c0de2108:	2a02      	cmp	r2, #2
c0de210a:	d325      	bcc.n	c0de2158 <init_mngr+0x150>
c0de210c:	2809      	cmp	r0, #9
c0de210e:	d123      	bne.n	c0de2158 <init_mngr+0x150>
c0de2110:	4648      	mov	r0, r9
c0de2112:	1940      	adds	r0, r0, r5
c0de2114:	784a      	ldrb	r2, [r1, #1]
c0de2116:	7889      	ldrb	r1, [r1, #2]
c0de2118:	0209      	lsls	r1, r1, #8
c0de211a:	1889      	adds	r1, r1, r2
c0de211c:	2250      	movs	r2, #80	; 0x50
c0de211e:	5281      	strh	r1, [r0, r2]
c0de2120:	210a      	movs	r1, #10
c0de2122:	7741      	strb	r1, [r0, #29]
c0de2124:	4648      	mov	r0, r9
c0de2126:	1941      	adds	r1, r0, r5
c0de2128:	4870      	ldr	r0, [pc, #448]	; (c0de22ec <init_mngr+0x2e4>)
c0de212a:	30f8      	adds	r0, #248	; 0xf8
c0de212c:	8408      	strh	r0, [r1, #32]
c0de212e:	204c      	movs	r0, #76	; 0x4c
c0de2130:	5a08      	ldrh	r0, [r1, r0]
c0de2132:	3152      	adds	r1, #82	; 0x52
c0de2134:	2201      	movs	r2, #1
c0de2136:	2310      	movs	r3, #16
c0de2138:	2408      	movs	r4, #8
c0de213a:	2504      	movs	r5, #4
c0de213c:	9500      	str	r5, [sp, #0]
c0de213e:	9401      	str	r4, [sp, #4]
c0de2140:	9202      	str	r2, [sp, #8]
c0de2142:	9303      	str	r3, [sp, #12]
c0de2144:	9204      	str	r2, [sp, #16]
c0de2146:	9105      	str	r1, [sp, #20]
c0de2148:	2102      	movs	r1, #2
c0de214a:	4a6a      	ldr	r2, [pc, #424]	; (c0de22f4 <init_mngr+0x2ec>)
c0de214c:	447a      	add	r2, pc
c0de214e:	239c      	movs	r3, #156	; 0x9c
c0de2150:	f7fe ffc2 	bl	c0de10d8 <aci_gatt_add_char>
c0de2154:	b007      	add	sp, #28
c0de2156:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de2158:	2a02      	cmp	r2, #2
c0de215a:	d315      	bcc.n	c0de2188 <init_mngr+0x180>
c0de215c:	280a      	cmp	r0, #10
c0de215e:	d113      	bne.n	c0de2188 <init_mngr+0x180>
c0de2160:	4648      	mov	r0, r9
c0de2162:	1940      	adds	r0, r0, r5
c0de2164:	784a      	ldrb	r2, [r1, #1]
c0de2166:	7889      	ldrb	r1, [r1, #2]
c0de2168:	0209      	lsls	r1, r1, #8
c0de216a:	1889      	adds	r1, r1, r2
c0de216c:	2252      	movs	r2, #82	; 0x52
c0de216e:	5281      	strh	r1, [r0, r2]
c0de2170:	210b      	movs	r1, #11
c0de2172:	7741      	strb	r1, [r0, #29]
c0de2174:	4648      	mov	r0, r9
c0de2176:	1940      	adds	r0, r0, r5
c0de2178:	495c      	ldr	r1, [pc, #368]	; (c0de22ec <init_mngr+0x2e4>)
c0de217a:	1cc9      	adds	r1, r1, #3
c0de217c:	8401      	strh	r1, [r0, #32]
c0de217e:	2001      	movs	r0, #1
c0de2180:	2107      	movs	r1, #7
c0de2182:	f7ff f8e1 	bl	c0de1348 <aci_hal_set_tx_power_level>
c0de2186:	e7e5      	b.n	c0de2154 <init_mngr+0x14c>
c0de2188:	280c      	cmp	r0, #12
c0de218a:	d112      	bne.n	c0de21b2 <init_mngr+0x1aa>
c0de218c:	2006      	movs	r0, #6
c0de218e:	2100      	movs	r1, #0
c0de2190:	460a      	mov	r2, r1
c0de2192:	f003 fa3b 	bl	c0de560c <os_setting_get>
c0de2196:	4241      	negs	r1, r0
c0de2198:	4141      	adcs	r1, r0
c0de219a:	4648      	mov	r0, r9
c0de219c:	1947      	adds	r7, r0, r5
c0de219e:	77f9      	strb	r1, [r7, #31]
c0de21a0:	4620      	mov	r0, r4
c0de21a2:	f000 fdef 	bl	c0de2d84 <configure_advertising_mngr>
c0de21a6:	7fb8      	ldrb	r0, [r7, #30]
c0de21a8:	2805      	cmp	r0, #5
c0de21aa:	d1d3      	bne.n	c0de2154 <init_mngr+0x14c>
c0de21ac:	4648      	mov	r0, r9
c0de21ae:	1940      	adds	r0, r0, r5
c0de21b0:	7f40      	ldrb	r0, [r0, #29]
c0de21b2:	4649      	mov	r1, r9
c0de21b4:	1949      	adds	r1, r1, r5
c0de21b6:	1c42      	adds	r2, r0, #1
c0de21b8:	774a      	strb	r2, [r1, #29]
c0de21ba:	2805      	cmp	r0, #5
c0de21bc:	dd08      	ble.n	c0de21d0 <init_mngr+0x1c8>
c0de21be:	2808      	cmp	r0, #8
c0de21c0:	dd17      	ble.n	c0de21f2 <init_mngr+0x1ea>
c0de21c2:	280a      	cmp	r0, #10
c0de21c4:	dc37      	bgt.n	c0de2236 <init_mngr+0x22e>
c0de21c6:	2809      	cmp	r0, #9
c0de21c8:	d0ac      	beq.n	c0de2124 <init_mngr+0x11c>
c0de21ca:	280a      	cmp	r0, #10
c0de21cc:	d0d2      	beq.n	c0de2174 <init_mngr+0x16c>
c0de21ce:	e7c1      	b.n	c0de2154 <init_mngr+0x14c>
c0de21d0:	2802      	cmp	r0, #2
c0de21d2:	dc16      	bgt.n	c0de2202 <init_mngr+0x1fa>
c0de21d4:	2800      	cmp	r0, #0
c0de21d6:	d100      	bne.n	c0de21da <init_mngr+0x1d2>
c0de21d8:	e74c      	b.n	c0de2074 <init_mngr+0x6c>
c0de21da:	2801      	cmp	r0, #1
c0de21dc:	d063      	beq.n	c0de22a6 <init_mngr+0x29e>
c0de21de:	2802      	cmp	r0, #2
c0de21e0:	d1b8      	bne.n	c0de2154 <init_mngr+0x14c>
c0de21e2:	4648      	mov	r0, r9
c0de21e4:	1940      	adds	r0, r0, r5
c0de21e6:	4941      	ldr	r1, [pc, #260]	; (c0de22ec <init_mngr+0x2e4>)
c0de21e8:	31f5      	adds	r1, #245	; 0xf5
c0de21ea:	8401      	strh	r1, [r0, #32]
c0de21ec:	f7fe ff06 	bl	c0de0ffc <aci_gatt_init>
c0de21f0:	e7b0      	b.n	c0de2154 <init_mngr+0x14c>
c0de21f2:	2806      	cmp	r0, #6
c0de21f4:	d037      	beq.n	c0de2266 <init_mngr+0x25e>
c0de21f6:	2807      	cmp	r0, #7
c0de21f8:	d100      	bne.n	c0de21fc <init_mngr+0x1f4>
c0de21fa:	e74c      	b.n	c0de2096 <init_mngr+0x8e>
c0de21fc:	2808      	cmp	r0, #8
c0de21fe:	d1a9      	bne.n	c0de2154 <init_mngr+0x14c>
c0de2200:	e76d      	b.n	c0de20de <init_mngr+0xd6>
c0de2202:	2803      	cmp	r0, #3
c0de2204:	d059      	beq.n	c0de22ba <init_mngr+0x2b2>
c0de2206:	2804      	cmp	r0, #4
c0de2208:	d100      	bne.n	c0de220c <init_mngr+0x204>
c0de220a:	e726      	b.n	c0de205a <init_mngr+0x52>
c0de220c:	2805      	cmp	r0, #5
c0de220e:	d1a1      	bne.n	c0de2154 <init_mngr+0x14c>
c0de2210:	4648      	mov	r0, r9
c0de2212:	1940      	adds	r0, r0, r5
c0de2214:	4935      	ldr	r1, [pc, #212]	; (c0de22ec <init_mngr+0x2e4>)
c0de2216:	317a      	adds	r1, #122	; 0x7a
c0de2218:	8401      	strh	r1, [r0, #32]
c0de221a:	2001      	movs	r0, #1
c0de221c:	2300      	movs	r3, #0
c0de221e:	2110      	movs	r1, #16
c0de2220:	2208      	movs	r2, #8
c0de2222:	9200      	str	r2, [sp, #0]
c0de2224:	9101      	str	r1, [sp, #4]
c0de2226:	9002      	str	r0, [sp, #8]
c0de2228:	9303      	str	r3, [sp, #12]
c0de222a:	9004      	str	r0, [sp, #16]
c0de222c:	4601      	mov	r1, r0
c0de222e:	4602      	mov	r2, r0
c0de2230:	f7fe fdd6 	bl	c0de0de0 <aci_gap_set_authentication_requirement>
c0de2234:	e78e      	b.n	c0de2154 <init_mngr+0x14c>
c0de2236:	280b      	cmp	r0, #11
c0de2238:	d024      	beq.n	c0de2284 <init_mngr+0x27c>
c0de223a:	280c      	cmp	r0, #12
c0de223c:	d18a      	bne.n	c0de2154 <init_mngr+0x14c>
c0de223e:	4648      	mov	r0, r9
c0de2240:	1941      	adds	r1, r0, r5
c0de2242:	2055      	movs	r0, #85	; 0x55
c0de2244:	5c09      	ldrb	r1, [r1, r0]
c0de2246:	29c1      	cmp	r1, #193	; 0xc1
c0de2248:	d105      	bne.n	c0de2256 <init_mngr+0x24e>
c0de224a:	4649      	mov	r1, r9
c0de224c:	1949      	adds	r1, r1, r5
c0de224e:	2200      	movs	r2, #0
c0de2250:	540a      	strb	r2, [r1, r0]
c0de2252:	f7fe fe91 	bl	c0de0f78 <aci_gap_clear_security_db>
c0de2256:	4648      	mov	r0, r9
c0de2258:	2101      	movs	r1, #1
c0de225a:	5541      	strb	r1, [r0, r5]
c0de225c:	4a22      	ldr	r2, [pc, #136]	; (c0de22e8 <init_mngr+0x2e0>)
c0de225e:	1880      	adds	r0, r0, r2
c0de2260:	2224      	movs	r2, #36	; 0x24
c0de2262:	5481      	strb	r1, [r0, r2]
c0de2264:	e776      	b.n	c0de2154 <init_mngr+0x14c>
c0de2266:	4648      	mov	r0, r9
c0de2268:	1940      	adds	r0, r0, r5
c0de226a:	4920      	ldr	r1, [pc, #128]	; (c0de22ec <init_mngr+0x2e4>)
c0de226c:	31f6      	adds	r1, #246	; 0xf6
c0de226e:	8401      	strh	r1, [r0, #32]
c0de2270:	304c      	adds	r0, #76	; 0x4c
c0de2272:	9000      	str	r0, [sp, #0]
c0de2274:	2002      	movs	r0, #2
c0de2276:	4921      	ldr	r1, [pc, #132]	; (c0de22fc <init_mngr+0x2f4>)
c0de2278:	4479      	add	r1, pc
c0de227a:	2201      	movs	r2, #1
c0de227c:	2309      	movs	r3, #9
c0de227e:	f7fe fedb 	bl	c0de1038 <aci_gatt_add_service>
c0de2282:	e767      	b.n	c0de2154 <init_mngr+0x14c>
c0de2284:	4648      	mov	r0, r9
c0de2286:	1945      	adds	r5, r0, r5
c0de2288:	2400      	movs	r4, #0
c0de228a:	77ac      	strb	r4, [r5, #30]
c0de228c:	842e      	strh	r6, [r5, #32]
c0de228e:	2006      	movs	r0, #6
c0de2290:	4621      	mov	r1, r4
c0de2292:	4622      	mov	r2, r4
c0de2294:	f003 f9ba 	bl	c0de560c <os_setting_get>
c0de2298:	4241      	negs	r1, r0
c0de229a:	4141      	adcs	r1, r0
c0de229c:	77e9      	strb	r1, [r5, #31]
c0de229e:	4620      	mov	r0, r4
c0de22a0:	f000 fd70 	bl	c0de2d84 <configure_advertising_mngr>
c0de22a4:	e756      	b.n	c0de2154 <init_mngr+0x14c>
c0de22a6:	4648      	mov	r0, r9
c0de22a8:	1942      	adds	r2, r0, r5
c0de22aa:	4810      	ldr	r0, [pc, #64]	; (c0de22ec <init_mngr+0x2e4>)
c0de22ac:	8410      	strh	r0, [r2, #32]
c0de22ae:	3217      	adds	r2, #23
c0de22b0:	202e      	movs	r0, #46	; 0x2e
c0de22b2:	2106      	movs	r1, #6
c0de22b4:	f7ff f81c 	bl	c0de12f0 <aci_hal_write_config_data>
c0de22b8:	e74c      	b.n	c0de2154 <init_mngr+0x14c>
c0de22ba:	4648      	mov	r0, r9
c0de22bc:	1943      	adds	r3, r0, r5
c0de22be:	480b      	ldr	r0, [pc, #44]	; (c0de22ec <init_mngr+0x2e4>)
c0de22c0:	307e      	adds	r0, #126	; 0x7e
c0de22c2:	8418      	strh	r0, [r3, #32]
c0de22c4:	4618      	mov	r0, r3
c0de22c6:	3026      	adds	r0, #38	; 0x26
c0de22c8:	4619      	mov	r1, r3
c0de22ca:	3124      	adds	r1, #36	; 0x24
c0de22cc:	9100      	str	r1, [sp, #0]
c0de22ce:	9001      	str	r0, [sp, #4]
c0de22d0:	3322      	adds	r3, #34	; 0x22
c0de22d2:	2001      	movs	r0, #1
c0de22d4:	2100      	movs	r1, #0
c0de22d6:	2214      	movs	r2, #20
c0de22d8:	f7fe fdde 	bl	c0de0e98 <aci_gap_init>
c0de22dc:	e73a      	b.n	c0de2154 <init_mngr+0x14c>
c0de22de:	46c0      	nop			; (mov r8, r8)
c0de22e0:	00000190 	.word	0x00000190
c0de22e4:	0000ffff 	.word	0x0000ffff
c0de22e8:	00000684 	.word	0x00000684
c0de22ec:	fffffc0c 	.word	0xfffffc0c
c0de22f0:	00008436 	.word	0x00008436
c0de22f4:	000083c8 	.word	0x000083c8
c0de22f8:	00008400 	.word	0x00008400
c0de22fc:	0000826c 	.word	0x0000826c

c0de2300 <LEDGER_BLE_send>:
c0de2300:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2302:	b081      	sub	sp, #4
c0de2304:	4c24      	ldr	r4, [pc, #144]	; (c0de2398 <LEDGER_BLE_send+0x98>)
c0de2306:	23ff      	movs	r3, #255	; 0xff
c0de2308:	2902      	cmp	r1, #2
c0de230a:	d11f      	bne.n	c0de234c <LEDGER_BLE_send+0x4c>
c0de230c:	464a      	mov	r2, r9
c0de230e:	1912      	adds	r2, r2, r4
c0de2310:	461d      	mov	r5, r3
c0de2312:	35ac      	adds	r5, #172	; 0xac
c0de2314:	5d52      	ldrb	r2, [r2, r5]
c0de2316:	2a00      	cmp	r2, #0
c0de2318:	d018      	beq.n	c0de234c <LEDGER_BLE_send+0x4c>
c0de231a:	4920      	ldr	r1, [pc, #128]	; (c0de239c <LEDGER_BLE_send+0x9c>)
c0de231c:	464a      	mov	r2, r9
c0de231e:	2500      	movs	r5, #0
c0de2320:	5455      	strb	r5, [r2, r1]
c0de2322:	1911      	adds	r1, r2, r4
c0de2324:	246b      	movs	r4, #107	; 0x6b
c0de2326:	00a4      	lsls	r4, r4, #2
c0de2328:	2502      	movs	r5, #2
c0de232a:	550d      	strb	r5, [r1, r4]
c0de232c:	33ae      	adds	r3, #174	; 0xae
c0de232e:	7804      	ldrb	r4, [r0, #0]
c0de2330:	54cc      	strb	r4, [r1, r3]
c0de2332:	18c9      	adds	r1, r1, r3
c0de2334:	7843      	ldrb	r3, [r0, #1]
c0de2336:	704b      	strb	r3, [r1, #1]
c0de2338:	4919      	ldr	r1, [pc, #100]	; (c0de23a0 <LEDGER_BLE_send+0xa0>)
c0de233a:	1851      	adds	r1, r2, r1
c0de233c:	22b6      	movs	r2, #182	; 0xb6
c0de233e:	5a89      	ldrh	r1, [r1, r2]
c0de2340:	2900      	cmp	r1, #0
c0de2342:	d026      	beq.n	c0de2392 <LEDGER_BLE_send+0x92>
c0de2344:	2102      	movs	r1, #2
c0de2346:	f000 ff05 	bl	c0de3154 <LEDGER_PROTOCOL_tx>
c0de234a:	e020      	b.n	c0de238e <LEDGER_BLE_send+0x8e>
c0de234c:	464a      	mov	r2, r9
c0de234e:	1912      	adds	r2, r2, r4
c0de2350:	256b      	movs	r5, #107	; 0x6b
c0de2352:	00ad      	lsls	r5, r5, #2
c0de2354:	5d52      	ldrb	r2, [r2, r5]
c0de2356:	2a00      	cmp	r2, #0
c0de2358:	d00f      	beq.n	c0de237a <LEDGER_BLE_send+0x7a>
c0de235a:	464e      	mov	r6, r9
c0de235c:	1936      	adds	r6, r6, r4
c0de235e:	33ae      	adds	r3, #174	; 0xae
c0de2360:	18f7      	adds	r7, r6, r3
c0de2362:	787f      	ldrb	r7, [r7, #1]
c0de2364:	5cf6      	ldrb	r6, [r6, r3]
c0de2366:	0236      	lsls	r6, r6, #8
c0de2368:	19f6      	adds	r6, r6, r7
c0de236a:	2709      	movs	r7, #9
c0de236c:	033f      	lsls	r7, r7, #12
c0de236e:	42be      	cmp	r6, r7
c0de2370:	d003      	beq.n	c0de237a <LEDGER_BLE_send+0x7a>
c0de2372:	4648      	mov	r0, r9
c0de2374:	1900      	adds	r0, r0, r4
c0de2376:	18c0      	adds	r0, r0, r3
c0de2378:	4611      	mov	r1, r2
c0de237a:	f000 feeb 	bl	c0de3154 <LEDGER_PROTOCOL_tx>
c0de237e:	4648      	mov	r0, r9
c0de2380:	1900      	adds	r0, r0, r4
c0de2382:	2100      	movs	r1, #0
c0de2384:	5541      	strb	r1, [r0, r5]
c0de2386:	2156      	movs	r1, #86	; 0x56
c0de2388:	5c40      	ldrb	r0, [r0, r1]
c0de238a:	2800      	cmp	r0, #0
c0de238c:	d101      	bne.n	c0de2392 <LEDGER_BLE_send+0x92>
c0de238e:	f000 f809 	bl	c0de23a4 <notify_chunk>
c0de2392:	b001      	add	sp, #4
c0de2394:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de2396:	46c0      	nop			; (mov r8, r8)
c0de2398:	00000190 	.word	0x00000190
c0de239c:	00000684 	.word	0x00000684
c0de23a0:	00000340 	.word	0x00000340

c0de23a4 <notify_chunk>:
c0de23a4:	b5b0      	push	{r4, r5, r7, lr}
c0de23a6:	b082      	sub	sp, #8
c0de23a8:	4b0b      	ldr	r3, [pc, #44]	; (c0de23d8 <notify_chunk+0x34>)
c0de23aa:	4648      	mov	r0, r9
c0de23ac:	18c0      	adds	r0, r0, r3
c0de23ae:	21a8      	movs	r1, #168	; 0xa8
c0de23b0:	5c42      	ldrb	r2, [r0, r1]
c0de23b2:	2a02      	cmp	r2, #2
c0de23b4:	d30e      	bcc.n	c0de23d4 <notify_chunk+0x30>
c0de23b6:	4809      	ldr	r0, [pc, #36]	; (c0de23dc <notify_chunk+0x38>)
c0de23b8:	464c      	mov	r4, r9
c0de23ba:	1820      	adds	r0, r4, r0
c0de23bc:	214e      	movs	r1, #78	; 0x4e
c0de23be:	5a41      	ldrh	r1, [r0, r1]
c0de23c0:	254c      	movs	r5, #76	; 0x4c
c0de23c2:	5b40      	ldrh	r0, [r0, r5]
c0de23c4:	18e3      	adds	r3, r4, r3
c0de23c6:	330c      	adds	r3, #12
c0de23c8:	9300      	str	r3, [sp, #0]
c0de23ca:	1e92      	subs	r2, r2, #2
c0de23cc:	b2d3      	uxtb	r3, r2
c0de23ce:	2200      	movs	r2, #0
c0de23d0:	f7fe fee6 	bl	c0de11a0 <aci_gatt_update_char_value>
c0de23d4:	b002      	add	sp, #8
c0de23d6:	bdb0      	pop	{r4, r5, r7, pc}
c0de23d8:	00000340 	.word	0x00000340
c0de23dc:	00000190 	.word	0x00000190

c0de23e0 <LEDGER_BLE_receive>:
c0de23e0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de23e2:	b08d      	sub	sp, #52	; 0x34
c0de23e4:	49f5      	ldr	r1, [pc, #980]	; (c0de27bc <LEDGER_BLE_receive+0x3dc>)
c0de23e6:	4648      	mov	r0, r9
c0de23e8:	1840      	adds	r0, r0, r1
c0de23ea:	78c0      	ldrb	r0, [r0, #3]
c0de23ec:	2804      	cmp	r0, #4
c0de23ee:	d000      	beq.n	c0de23f2 <LEDGER_BLE_receive+0x12>
c0de23f0:	e324      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de23f2:	4648      	mov	r0, r9
c0de23f4:	1840      	adds	r0, r0, r1
c0de23f6:	7900      	ldrb	r0, [r0, #4]
c0de23f8:	280d      	cmp	r0, #13
c0de23fa:	dd51      	ble.n	c0de24a0 <LEDGER_BLE_receive+0xc0>
c0de23fc:	280e      	cmp	r0, #14
c0de23fe:	d06a      	beq.n	c0de24d6 <LEDGER_BLE_receive+0xf6>
c0de2400:	283e      	cmp	r0, #62	; 0x3e
c0de2402:	d100      	bne.n	c0de2406 <LEDGER_BLE_receive+0x26>
c0de2404:	e080      	b.n	c0de2508 <LEDGER_BLE_receive+0x128>
c0de2406:	28ff      	cmp	r0, #255	; 0xff
c0de2408:	d000      	beq.n	c0de240c <LEDGER_BLE_receive+0x2c>
c0de240a:	e317      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de240c:	4648      	mov	r0, r9
c0de240e:	1840      	adds	r0, r0, r1
c0de2410:	7942      	ldrb	r2, [r0, #5]
c0de2412:	2a04      	cmp	r2, #4
c0de2414:	d200      	bcs.n	c0de2418 <LEDGER_BLE_receive+0x38>
c0de2416:	e311      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2418:	464b      	mov	r3, r9
c0de241a:	1858      	adds	r0, r3, r1
c0de241c:	7a04      	ldrb	r4, [r0, #8]
c0de241e:	7a40      	ldrb	r0, [r0, #9]
c0de2420:	0200      	lsls	r0, r0, #8
c0de2422:	1900      	adds	r0, r0, r4
c0de2424:	4ee6      	ldr	r6, [pc, #920]	; (c0de27c0 <LEDGER_BLE_receive+0x3e0>)
c0de2426:	199b      	adds	r3, r3, r6
c0de2428:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
c0de242a:	4298      	cmp	r0, r3
c0de242c:	d000      	beq.n	c0de2430 <LEDGER_BLE_receive+0x50>
c0de242e:	e305      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2430:	464b      	mov	r3, r9
c0de2432:	185b      	adds	r3, r3, r1
c0de2434:	799c      	ldrb	r4, [r3, #6]
c0de2436:	79db      	ldrb	r3, [r3, #7]
c0de2438:	021b      	lsls	r3, r3, #8
c0de243a:	191b      	adds	r3, r3, r4
c0de243c:	b29b      	uxth	r3, r3
c0de243e:	4ce1      	ldr	r4, [pc, #900]	; (c0de27c4 <LEDGER_BLE_receive+0x3e4>)
c0de2440:	42a3      	cmp	r3, r4
c0de2442:	dd00      	ble.n	c0de2446 <LEDGER_BLE_receive+0x66>
c0de2444:	e0da      	b.n	c0de25fc <LEDGER_BLE_receive+0x21c>
c0de2446:	2581      	movs	r5, #129	; 0x81
c0de2448:	00ed      	lsls	r5, r5, #3
c0de244a:	42ab      	cmp	r3, r5
c0de244c:	dd00      	ble.n	c0de2450 <LEDGER_BLE_receive+0x70>
c0de244e:	e175      	b.n	c0de273c <LEDGER_BLE_receive+0x35c>
c0de2450:	48dd      	ldr	r0, [pc, #884]	; (c0de27c8 <LEDGER_BLE_receive+0x3e8>)
c0de2452:	4283      	cmp	r3, r0
c0de2454:	d100      	bne.n	c0de2458 <LEDGER_BLE_receive+0x78>
c0de2456:	e269      	b.n	c0de292c <LEDGER_BLE_receive+0x54c>
c0de2458:	48dc      	ldr	r0, [pc, #880]	; (c0de27cc <LEDGER_BLE_receive+0x3ec>)
c0de245a:	4283      	cmp	r3, r0
c0de245c:	d000      	beq.n	c0de2460 <LEDGER_BLE_receive+0x80>
c0de245e:	e2ed      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2460:	2500      	movs	r5, #0
c0de2462:	49db      	ldr	r1, [pc, #876]	; (c0de27d0 <LEDGER_BLE_receive+0x3f0>)
c0de2464:	4adb      	ldr	r2, [pc, #876]	; (c0de27d4 <LEDGER_BLE_receive+0x3f4>)
c0de2466:	447a      	add	r2, pc
c0de2468:	4628      	mov	r0, r5
c0de246a:	f7ff fc87 	bl	c0de1d7c <cx_rng_u32_range_func>
c0de246e:	464f      	mov	r7, r9
c0de2470:	19be      	adds	r6, r7, r6
c0de2472:	2148      	movs	r1, #72	; 0x48
c0de2474:	5270      	strh	r0, [r6, r1]
c0de2476:	ac05      	add	r4, sp, #20
c0de2478:	7225      	strb	r5, [r4, #8]
c0de247a:	2506      	movs	r5, #6
c0de247c:	9508      	str	r5, [sp, #32]
c0de247e:	b283      	uxth	r3, r0
c0de2480:	4620      	mov	r0, r4
c0de2482:	3010      	adds	r0, #16
c0de2484:	2110      	movs	r1, #16
c0de2486:	4ad4      	ldr	r2, [pc, #848]	; (c0de27d8 <LEDGER_BLE_receive+0x3f8>)
c0de2488:	447a      	add	r2, pc
c0de248a:	f002 f979 	bl	c0de4780 <snprintf>
c0de248e:	48d3      	ldr	r0, [pc, #844]	; (c0de27dc <LEDGER_BLE_receive+0x3fc>)
c0de2490:	49d3      	ldr	r1, [pc, #844]	; (c0de27e0 <LEDGER_BLE_receive+0x400>)
c0de2492:	4479      	add	r1, pc
c0de2494:	5039      	str	r1, [r7, r0]
c0de2496:	204a      	movs	r0, #74	; 0x4a
c0de2498:	2101      	movs	r1, #1
c0de249a:	5431      	strb	r1, [r6, r0]
c0de249c:	7025      	strb	r5, [r4, #0]
c0de249e:	e281      	b.n	c0de29a4 <LEDGER_BLE_receive+0x5c4>
c0de24a0:	2805      	cmp	r0, #5
c0de24a2:	d05b      	beq.n	c0de255c <LEDGER_BLE_receive+0x17c>
c0de24a4:	2808      	cmp	r0, #8
c0de24a6:	d000      	beq.n	c0de24aa <LEDGER_BLE_receive+0xca>
c0de24a8:	e2c8      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de24aa:	464a      	mov	r2, r9
c0de24ac:	1850      	adds	r0, r2, r1
c0de24ae:	79c3      	ldrb	r3, [r0, #7]
c0de24b0:	7a00      	ldrb	r0, [r0, #8]
c0de24b2:	0200      	lsls	r0, r0, #8
c0de24b4:	18c3      	adds	r3, r0, r3
c0de24b6:	48c2      	ldr	r0, [pc, #776]	; (c0de27c0 <LEDGER_BLE_receive+0x3e0>)
c0de24b8:	1812      	adds	r2, r2, r0
c0de24ba:	8d52      	ldrh	r2, [r2, #42]	; 0x2a
c0de24bc:	4293      	cmp	r3, r2
c0de24be:	d000      	beq.n	c0de24c2 <LEDGER_BLE_receive+0xe2>
c0de24c0:	e2bc      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de24c2:	464a      	mov	r2, r9
c0de24c4:	1851      	adds	r1, r2, r1
c0de24c6:	7a49      	ldrb	r1, [r1, #9]
c0de24c8:	2900      	cmp	r1, #0
c0de24ca:	d070      	beq.n	c0de25ae <LEDGER_BLE_receive+0x1ce>
c0de24cc:	4649      	mov	r1, r9
c0de24ce:	1808      	adds	r0, r1, r0
c0de24d0:	2146      	movs	r1, #70	; 0x46
c0de24d2:	2201      	movs	r2, #1
c0de24d4:	e06f      	b.n	c0de25b6 <LEDGER_BLE_receive+0x1d6>
c0de24d6:	4648      	mov	r0, r9
c0de24d8:	1840      	adds	r0, r0, r1
c0de24da:	7942      	ldrb	r2, [r0, #5]
c0de24dc:	2a03      	cmp	r2, #3
c0de24de:	d200      	bcs.n	c0de24e2 <LEDGER_BLE_receive+0x102>
c0de24e0:	e2ac      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de24e2:	464c      	mov	r4, r9
c0de24e4:	1860      	adds	r0, r4, r1
c0de24e6:	79c3      	ldrb	r3, [r0, #7]
c0de24e8:	7a00      	ldrb	r0, [r0, #8]
c0de24ea:	0200      	lsls	r0, r0, #8
c0de24ec:	18c3      	adds	r3, r0, r3
c0de24ee:	48b4      	ldr	r0, [pc, #720]	; (c0de27c0 <LEDGER_BLE_receive+0x3e0>)
c0de24f0:	5c24      	ldrb	r4, [r4, r0]
c0de24f2:	2c02      	cmp	r4, #2
c0de24f4:	d061      	beq.n	c0de25ba <LEDGER_BLE_receive+0x1da>
c0de24f6:	2c00      	cmp	r4, #0
c0de24f8:	d163      	bne.n	c0de25c2 <LEDGER_BLE_receive+0x1e2>
c0de24fa:	4648      	mov	r0, r9
c0de24fc:	1841      	adds	r1, r0, r1
c0de24fe:	3109      	adds	r1, #9
c0de2500:	b298      	uxth	r0, r3
c0de2502:	f7ff fd81 	bl	c0de2008 <init_mngr>
c0de2506:	e299      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2508:	4648      	mov	r0, r9
c0de250a:	1840      	adds	r0, r0, r1
c0de250c:	7940      	ldrb	r0, [r0, #5]
c0de250e:	2800      	cmp	r0, #0
c0de2510:	d100      	bne.n	c0de2514 <LEDGER_BLE_receive+0x134>
c0de2512:	e293      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2514:	4648      	mov	r0, r9
c0de2516:	1840      	adds	r0, r0, r1
c0de2518:	7980      	ldrb	r0, [r0, #6]
c0de251a:	2806      	cmp	r0, #6
c0de251c:	dc2b      	bgt.n	c0de2576 <LEDGER_BLE_receive+0x196>
c0de251e:	2801      	cmp	r0, #1
c0de2520:	d100      	bne.n	c0de2524 <LEDGER_BLE_receive+0x144>
c0de2522:	e086      	b.n	c0de2632 <LEDGER_BLE_receive+0x252>
c0de2524:	2803      	cmp	r0, #3
c0de2526:	d000      	beq.n	c0de252a <LEDGER_BLE_receive+0x14a>
c0de2528:	e288      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de252a:	464a      	mov	r2, r9
c0de252c:	1850      	adds	r0, r2, r1
c0de252e:	7a01      	ldrb	r1, [r0, #8]
c0de2530:	7a43      	ldrb	r3, [r0, #9]
c0de2532:	021b      	lsls	r3, r3, #8
c0de2534:	1859      	adds	r1, r3, r1
c0de2536:	4ba2      	ldr	r3, [pc, #648]	; (c0de27c0 <LEDGER_BLE_receive+0x3e0>)
c0de2538:	18d2      	adds	r2, r2, r3
c0de253a:	8551      	strh	r1, [r2, #42]	; 0x2a
c0de253c:	7a81      	ldrb	r1, [r0, #10]
c0de253e:	7ac3      	ldrb	r3, [r0, #11]
c0de2540:	021b      	lsls	r3, r3, #8
c0de2542:	1859      	adds	r1, r3, r1
c0de2544:	8691      	strh	r1, [r2, #52]	; 0x34
c0de2546:	7b01      	ldrb	r1, [r0, #12]
c0de2548:	7b43      	ldrb	r3, [r0, #13]
c0de254a:	021b      	lsls	r3, r3, #8
c0de254c:	1859      	adds	r1, r3, r1
c0de254e:	86d1      	strh	r1, [r2, #54]	; 0x36
c0de2550:	7b81      	ldrb	r1, [r0, #14]
c0de2552:	7bc0      	ldrb	r0, [r0, #15]
c0de2554:	0200      	lsls	r0, r0, #8
c0de2556:	1840      	adds	r0, r0, r1
c0de2558:	8710      	strh	r0, [r2, #56]	; 0x38
c0de255a:	e26f      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de255c:	4898      	ldr	r0, [pc, #608]	; (c0de27c0 <LEDGER_BLE_receive+0x3e0>)
c0de255e:	4649      	mov	r1, r9
c0de2560:	1808      	adds	r0, r1, r0
c0de2562:	2128      	movs	r1, #40	; 0x28
c0de2564:	2200      	movs	r2, #0
c0de2566:	5442      	strb	r2, [r0, r1]
c0de2568:	43d1      	mvns	r1, r2
c0de256a:	8541      	strh	r1, [r0, #42]	; 0x2a
c0de256c:	302a      	adds	r0, #42	; 0x2a
c0de256e:	7702      	strb	r2, [r0, #28]
c0de2570:	f000 fb4a 	bl	c0de2c08 <start_advertising>
c0de2574:	e262      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2576:	2807      	cmp	r0, #7
c0de2578:	d100      	bne.n	c0de257c <LEDGER_BLE_receive+0x19c>
c0de257a:	e095      	b.n	c0de26a8 <LEDGER_BLE_receive+0x2c8>
c0de257c:	280c      	cmp	r0, #12
c0de257e:	d000      	beq.n	c0de2582 <LEDGER_BLE_receive+0x1a2>
c0de2580:	e25c      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2582:	464a      	mov	r2, r9
c0de2584:	1850      	adds	r0, r2, r1
c0de2586:	7a03      	ldrb	r3, [r0, #8]
c0de2588:	7a40      	ldrb	r0, [r0, #9]
c0de258a:	0200      	lsls	r0, r0, #8
c0de258c:	18c3      	adds	r3, r0, r3
c0de258e:	488c      	ldr	r0, [pc, #560]	; (c0de27c0 <LEDGER_BLE_receive+0x3e0>)
c0de2590:	1812      	adds	r2, r2, r0
c0de2592:	8d52      	ldrh	r2, [r2, #42]	; 0x2a
c0de2594:	4293      	cmp	r3, r2
c0de2596:	d000      	beq.n	c0de259a <LEDGER_BLE_receive+0x1ba>
c0de2598:	e250      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de259a:	464a      	mov	r2, r9
c0de259c:	1810      	adds	r0, r2, r0
c0de259e:	1851      	adds	r1, r2, r1
c0de25a0:	7a8a      	ldrb	r2, [r1, #10]
c0de25a2:	233b      	movs	r3, #59	; 0x3b
c0de25a4:	54c2      	strb	r2, [r0, r3]
c0de25a6:	7ac9      	ldrb	r1, [r1, #11]
c0de25a8:	223c      	movs	r2, #60	; 0x3c
c0de25aa:	5481      	strb	r1, [r0, r2]
c0de25ac:	e246      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de25ae:	4649      	mov	r1, r9
c0de25b0:	1808      	adds	r0, r1, r0
c0de25b2:	2146      	movs	r1, #70	; 0x46
c0de25b4:	2200      	movs	r2, #0
c0de25b6:	5442      	strb	r2, [r0, r1]
c0de25b8:	e240      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de25ba:	b298      	uxth	r0, r3
c0de25bc:	f000 fbe2 	bl	c0de2d84 <configure_advertising_mngr>
c0de25c0:	e23c      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de25c2:	b299      	uxth	r1, r3
c0de25c4:	4a87      	ldr	r2, [pc, #540]	; (c0de27e4 <LEDGER_BLE_receive+0x404>)
c0de25c6:	4291      	cmp	r1, r2
c0de25c8:	dd00      	ble.n	c0de25cc <LEDGER_BLE_receive+0x1ec>
c0de25ca:	e094      	b.n	c0de26f6 <LEDGER_BLE_receive+0x316>
c0de25cc:	4a86      	ldr	r2, [pc, #536]	; (c0de27e8 <LEDGER_BLE_receive+0x408>)
c0de25ce:	4291      	cmp	r1, r2
c0de25d0:	d003      	beq.n	c0de25da <LEDGER_BLE_receive+0x1fa>
c0de25d2:	4a86      	ldr	r2, [pc, #536]	; (c0de27ec <LEDGER_BLE_receive+0x40c>)
c0de25d4:	4291      	cmp	r1, r2
c0de25d6:	d000      	beq.n	c0de25da <LEDGER_BLE_receive+0x1fa>
c0de25d8:	e230      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de25da:	4c85      	ldr	r4, [pc, #532]	; (c0de27f0 <LEDGER_BLE_receive+0x410>)
c0de25dc:	464a      	mov	r2, r9
c0de25de:	1911      	adds	r1, r2, r4
c0de25e0:	2327      	movs	r3, #39	; 0x27
c0de25e2:	5cc9      	ldrb	r1, [r1, r3]
c0de25e4:	1812      	adds	r2, r2, r0
c0de25e6:	8d52      	ldrh	r2, [r2, #42]	; 0x2a
c0de25e8:	4b82      	ldr	r3, [pc, #520]	; (c0de27f4 <LEDGER_BLE_receive+0x414>)
c0de25ea:	429a      	cmp	r2, r3
c0de25ec:	d100      	bne.n	c0de25f0 <LEDGER_BLE_receive+0x210>
c0de25ee:	e1e2      	b.n	c0de29b6 <LEDGER_BLE_receive+0x5d6>
c0de25f0:	2900      	cmp	r1, #0
c0de25f2:	d100      	bne.n	c0de25f6 <LEDGER_BLE_receive+0x216>
c0de25f4:	e21e      	b.n	c0de2a34 <LEDGER_BLE_receive+0x654>
c0de25f6:	f7ff fcb1 	bl	c0de1f5c <LEDGER_BLE_init>
c0de25fa:	e21b      	b.n	c0de2a34 <LEDGER_BLE_receive+0x654>
c0de25fc:	4c7e      	ldr	r4, [pc, #504]	; (c0de27f8 <LEDGER_BLE_receive+0x418>)
c0de25fe:	42a3      	cmp	r3, r4
c0de2600:	dd00      	ble.n	c0de2604 <LEDGER_BLE_receive+0x224>
c0de2602:	e107      	b.n	c0de2814 <LEDGER_BLE_receive+0x434>
c0de2604:	487d      	ldr	r0, [pc, #500]	; (c0de27fc <LEDGER_BLE_receive+0x41c>)
c0de2606:	4283      	cmp	r3, r0
c0de2608:	d100      	bne.n	c0de260c <LEDGER_BLE_receive+0x22c>
c0de260a:	e1a7      	b.n	c0de295c <LEDGER_BLE_receive+0x57c>
c0de260c:	487c      	ldr	r0, [pc, #496]	; (c0de2800 <LEDGER_BLE_receive+0x420>)
c0de260e:	4283      	cmp	r3, r0
c0de2610:	d000      	beq.n	c0de2614 <LEDGER_BLE_receive+0x234>
c0de2612:	e213      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2614:	487b      	ldr	r0, [pc, #492]	; (c0de2804 <LEDGER_BLE_receive+0x424>)
c0de2616:	464a      	mov	r2, r9
c0de2618:	1810      	adds	r0, r2, r0
c0de261a:	23bc      	movs	r3, #188	; 0xbc
c0de261c:	2401      	movs	r4, #1
c0de261e:	54c4      	strb	r4, [r0, r3]
c0de2620:	1851      	adds	r1, r2, r1
c0de2622:	7a8a      	ldrb	r2, [r1, #10]
c0de2624:	7ac9      	ldrb	r1, [r1, #11]
c0de2626:	0209      	lsls	r1, r1, #8
c0de2628:	1889      	adds	r1, r1, r2
c0de262a:	1e49      	subs	r1, r1, #1
c0de262c:	22ba      	movs	r2, #186	; 0xba
c0de262e:	5281      	strh	r1, [r0, r2]
c0de2630:	e204      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2632:	4863      	ldr	r0, [pc, #396]	; (c0de27c0 <LEDGER_BLE_receive+0x3e0>)
c0de2634:	464e      	mov	r6, r9
c0de2636:	1834      	adds	r4, r6, r0
c0de2638:	1875      	adds	r5, r6, r1
c0de263a:	7aa8      	ldrb	r0, [r5, #10]
c0de263c:	212c      	movs	r1, #44	; 0x2c
c0de263e:	5460      	strb	r0, [r4, r1]
c0de2640:	7ae8      	ldrb	r0, [r5, #11]
c0de2642:	212d      	movs	r1, #45	; 0x2d
c0de2644:	5460      	strb	r0, [r4, r1]
c0de2646:	7a28      	ldrb	r0, [r5, #8]
c0de2648:	7a69      	ldrb	r1, [r5, #9]
c0de264a:	0209      	lsls	r1, r1, #8
c0de264c:	1808      	adds	r0, r1, r0
c0de264e:	8560      	strh	r0, [r4, #42]	; 0x2a
c0de2650:	4620      	mov	r0, r4
c0de2652:	302e      	adds	r0, #46	; 0x2e
c0de2654:	4629      	mov	r1, r5
c0de2656:	310c      	adds	r1, #12
c0de2658:	2206      	movs	r2, #6
c0de265a:	f006 f985 	bl	c0de8968 <__aeabi_memcpy>
c0de265e:	21ff      	movs	r1, #255	; 0xff
c0de2660:	31ac      	adds	r1, #172	; 0xac
c0de2662:	2000      	movs	r0, #0
c0de2664:	5460      	strb	r0, [r4, r1]
c0de2666:	4967      	ldr	r1, [pc, #412]	; (c0de2804 <LEDGER_BLE_receive+0x424>)
c0de2668:	1871      	adds	r1, r6, r1
c0de266a:	22ba      	movs	r2, #186	; 0xba
c0de266c:	2316      	movs	r3, #22
c0de266e:	528b      	strh	r3, [r1, r2]
c0de2670:	2254      	movs	r2, #84	; 0x54
c0de2672:	54a0      	strb	r0, [r4, r2]
c0de2674:	2228      	movs	r2, #40	; 0x28
c0de2676:	54a0      	strb	r0, [r4, r2]
c0de2678:	22bc      	movs	r2, #188	; 0xbc
c0de267a:	5488      	strb	r0, [r1, r2]
c0de267c:	7e29      	ldrb	r1, [r5, #24]
c0de267e:	223a      	movs	r2, #58	; 0x3a
c0de2680:	54a1      	strb	r1, [r4, r2]
c0de2682:	4621      	mov	r1, r4
c0de2684:	312a      	adds	r1, #42	; 0x2a
c0de2686:	7708      	strb	r0, [r1, #28]
c0de2688:	7ca8      	ldrb	r0, [r5, #18]
c0de268a:	7ce9      	ldrb	r1, [r5, #19]
c0de268c:	0209      	lsls	r1, r1, #8
c0de268e:	1808      	adds	r0, r1, r0
c0de2690:	86a0      	strh	r0, [r4, #52]	; 0x34
c0de2692:	7d28      	ldrb	r0, [r5, #20]
c0de2694:	7d69      	ldrb	r1, [r5, #21]
c0de2696:	0209      	lsls	r1, r1, #8
c0de2698:	1808      	adds	r0, r1, r0
c0de269a:	86e0      	strh	r0, [r4, #54]	; 0x36
c0de269c:	7da8      	ldrb	r0, [r5, #22]
c0de269e:	7de9      	ldrb	r1, [r5, #23]
c0de26a0:	0209      	lsls	r1, r1, #8
c0de26a2:	1808      	adds	r0, r1, r0
c0de26a4:	8720      	strh	r0, [r4, #56]	; 0x38
c0de26a6:	e1c9      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de26a8:	4648      	mov	r0, r9
c0de26aa:	1842      	adds	r2, r0, r1
c0de26ac:	79d3      	ldrb	r3, [r2, #7]
c0de26ae:	7a12      	ldrb	r2, [r2, #8]
c0de26b0:	0212      	lsls	r2, r2, #8
c0de26b2:	18d3      	adds	r3, r2, r3
c0de26b4:	4a42      	ldr	r2, [pc, #264]	; (c0de27c0 <LEDGER_BLE_receive+0x3e0>)
c0de26b6:	1880      	adds	r0, r0, r2
c0de26b8:	8d40      	ldrh	r0, [r0, #42]	; 0x2a
c0de26ba:	4283      	cmp	r3, r0
c0de26bc:	d000      	beq.n	c0de26c0 <LEDGER_BLE_receive+0x2e0>
c0de26be:	e1bd      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de26c0:	464b      	mov	r3, r9
c0de26c2:	1858      	adds	r0, r3, r1
c0de26c4:	7ac1      	ldrb	r1, [r0, #11]
c0de26c6:	7b04      	ldrb	r4, [r0, #12]
c0de26c8:	0224      	lsls	r4, r4, #8
c0de26ca:	1864      	adds	r4, r4, r1
c0de26cc:	1899      	adds	r1, r3, r2
c0de26ce:	2240      	movs	r2, #64	; 0x40
c0de26d0:	528c      	strh	r4, [r1, r2]
c0de26d2:	7b42      	ldrb	r2, [r0, #13]
c0de26d4:	7b83      	ldrb	r3, [r0, #14]
c0de26d6:	021b      	lsls	r3, r3, #8
c0de26d8:	189a      	adds	r2, r3, r2
c0de26da:	2342      	movs	r3, #66	; 0x42
c0de26dc:	52ca      	strh	r2, [r1, r3]
c0de26de:	7bc2      	ldrb	r2, [r0, #15]
c0de26e0:	7c03      	ldrb	r3, [r0, #16]
c0de26e2:	021b      	lsls	r3, r3, #8
c0de26e4:	189a      	adds	r2, r3, r2
c0de26e6:	2344      	movs	r3, #68	; 0x44
c0de26e8:	52ca      	strh	r2, [r1, r3]
c0de26ea:	7a42      	ldrb	r2, [r0, #9]
c0de26ec:	7a80      	ldrb	r0, [r0, #10]
c0de26ee:	0200      	lsls	r0, r0, #8
c0de26f0:	1880      	adds	r0, r0, r2
c0de26f2:	87c8      	strh	r0, [r1, #62]	; 0x3e
c0de26f4:	e1a2      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de26f6:	4a44      	ldr	r2, [pc, #272]	; (c0de2808 <LEDGER_BLE_receive+0x428>)
c0de26f8:	4291      	cmp	r1, r2
c0de26fa:	d100      	bne.n	c0de26fe <LEDGER_BLE_receive+0x31e>
c0de26fc:	e0ec      	b.n	c0de28d8 <LEDGER_BLE_receive+0x4f8>
c0de26fe:	4a43      	ldr	r2, [pc, #268]	; (c0de280c <LEDGER_BLE_receive+0x42c>)
c0de2700:	4291      	cmp	r1, r2
c0de2702:	d000      	beq.n	c0de2706 <LEDGER_BLE_receive+0x326>
c0de2704:	e19a      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2706:	4649      	mov	r1, r9
c0de2708:	180a      	adds	r2, r1, r0
c0de270a:	2156      	movs	r1, #86	; 0x56
c0de270c:	5c52      	ldrb	r2, [r2, r1]
c0de270e:	2a00      	cmp	r2, #0
c0de2710:	d100      	bne.n	c0de2714 <LEDGER_BLE_receive+0x334>
c0de2712:	e193      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2714:	464a      	mov	r2, r9
c0de2716:	1810      	adds	r0, r2, r0
c0de2718:	2300      	movs	r3, #0
c0de271a:	5443      	strb	r3, [r0, r1]
c0de271c:	4839      	ldr	r0, [pc, #228]	; (c0de2804 <LEDGER_BLE_receive+0x424>)
c0de271e:	1810      	adds	r0, r2, r0
c0de2720:	21a8      	movs	r1, #168	; 0xa8
c0de2722:	5c40      	ldrb	r0, [r0, r1]
c0de2724:	2802      	cmp	r0, #2
c0de2726:	d200      	bcs.n	c0de272a <LEDGER_BLE_receive+0x34a>
c0de2728:	e188      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de272a:	4831      	ldr	r0, [pc, #196]	; (c0de27f0 <LEDGER_BLE_receive+0x410>)
c0de272c:	4649      	mov	r1, r9
c0de272e:	1808      	adds	r0, r1, r0
c0de2730:	217d      	movs	r1, #125	; 0x7d
c0de2732:	0109      	lsls	r1, r1, #4
c0de2734:	83c1      	strh	r1, [r0, #30]
c0de2736:	f7ff fe35 	bl	c0de23a4 <notify_chunk>
c0de273a:	e17f      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de273c:	4d34      	ldr	r5, [pc, #208]	; (c0de2810 <LEDGER_BLE_receive+0x430>)
c0de273e:	42ab      	cmp	r3, r5
c0de2740:	d100      	bne.n	c0de2744 <LEDGER_BLE_receive+0x364>
c0de2742:	e10e      	b.n	c0de2962 <LEDGER_BLE_receive+0x582>
c0de2744:	42a3      	cmp	r3, r4
c0de2746:	d000      	beq.n	c0de274a <LEDGER_BLE_receive+0x36a>
c0de2748:	e178      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de274a:	1f13      	subs	r3, r2, #4
c0de274c:	b29b      	uxth	r3, r3
c0de274e:	2b06      	cmp	r3, #6
c0de2750:	d200      	bcs.n	c0de2754 <LEDGER_BLE_receive+0x374>
c0de2752:	e173      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2754:	464d      	mov	r5, r9
c0de2756:	186e      	adds	r6, r5, r1
c0de2758:	7bb3      	ldrb	r3, [r6, #14]
c0de275a:	7bf4      	ldrb	r4, [r6, #15]
c0de275c:	0224      	lsls	r4, r4, #8
c0de275e:	18e4      	adds	r4, r4, r3
c0de2760:	7ab3      	ldrb	r3, [r6, #10]
c0de2762:	7af7      	ldrb	r7, [r6, #11]
c0de2764:	023f      	lsls	r7, r7, #8
c0de2766:	18fb      	adds	r3, r7, r3
c0de2768:	7b37      	ldrb	r7, [r6, #12]
c0de276a:	7b76      	ldrb	r6, [r6, #13]
c0de276c:	0236      	lsls	r6, r6, #8
c0de276e:	19f6      	adds	r6, r6, r7
c0de2770:	d000      	beq.n	c0de2774 <LEDGER_BLE_receive+0x394>
c0de2772:	e165      	b.n	c0de2a40 <LEDGER_BLE_receive+0x660>
c0de2774:	2c02      	cmp	r4, #2
c0de2776:	d000      	beq.n	c0de277a <LEDGER_BLE_receive+0x39a>
c0de2778:	e162      	b.n	c0de2a40 <LEDGER_BLE_receive+0x660>
c0de277a:	4e11      	ldr	r6, [pc, #68]	; (c0de27c0 <LEDGER_BLE_receive+0x3e0>)
c0de277c:	19ad      	adds	r5, r5, r6
c0de277e:	264e      	movs	r6, #78	; 0x4e
c0de2780:	5bad      	ldrh	r5, [r5, r6]
c0de2782:	1cad      	adds	r5, r5, #2
c0de2784:	429d      	cmp	r5, r3
c0de2786:	d000      	beq.n	c0de278a <LEDGER_BLE_receive+0x3aa>
c0de2788:	e15a      	b.n	c0de2a40 <LEDGER_BLE_receive+0x660>
c0de278a:	464a      	mov	r2, r9
c0de278c:	1851      	adds	r1, r2, r1
c0de278e:	7c0a      	ldrb	r2, [r1, #16]
c0de2790:	7c49      	ldrb	r1, [r1, #17]
c0de2792:	0209      	lsls	r1, r1, #8
c0de2794:	1889      	adds	r1, r1, r2
c0de2796:	4a0a      	ldr	r2, [pc, #40]	; (c0de27c0 <LEDGER_BLE_receive+0x3e0>)
c0de2798:	d100      	bne.n	c0de279c <LEDGER_BLE_receive+0x3bc>
c0de279a:	e1d4      	b.n	c0de2b46 <LEDGER_BLE_receive+0x766>
c0de279c:	4649      	mov	r1, r9
c0de279e:	188a      	adds	r2, r1, r2
c0de27a0:	2354      	movs	r3, #84	; 0x54
c0de27a2:	2401      	movs	r4, #1
c0de27a4:	54d4      	strb	r4, [r2, r3]
c0de27a6:	4a17      	ldr	r2, [pc, #92]	; (c0de2804 <LEDGER_BLE_receive+0x424>)
c0de27a8:	1889      	adds	r1, r1, r2
c0de27aa:	22bc      	movs	r2, #188	; 0xbc
c0de27ac:	5c89      	ldrb	r1, [r1, r2]
c0de27ae:	2900      	cmp	r1, #0
c0de27b0:	d000      	beq.n	c0de27b4 <LEDGER_BLE_receive+0x3d4>
c0de27b2:	e143      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de27b4:	f7fe fd22 	bl	c0de11fc <aci_gatt_exchange_config>
c0de27b8:	e140      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de27ba:	46c0      	nop			; (mov r8, r8)
c0de27bc:	00000404 	.word	0x00000404
c0de27c0:	00000190 	.word	0x00000190
c0de27c4:	00000c01 	.word	0x00000c01
c0de27c8:	00000401 	.word	0x00000401
c0de27cc:	00000402 	.word	0x00000402
c0de27d0:	000f4240 	.word	0x000f4240
c0de27d4:	00000a67 	.word	0x00000a67
c0de27d8:	0000683c 	.word	0x0000683c
c0de27dc:	0000073c 	.word	0x0000073c
c0de27e0:	00000a4f 	.word	0x00000a4f
c0de27e4:	0000fd05 	.word	0x0000fd05
c0de27e8:	0000fc81 	.word	0x0000fc81
c0de27ec:	0000fc83 	.word	0x0000fc83
c0de27f0:	00000684 	.word	0x00000684
c0de27f4:	0000ffff 	.word	0x0000ffff
c0de27f8:	00000c0d 	.word	0x00000c0d
c0de27fc:	00000c02 	.word	0x00000c02
c0de2800:	00000c03 	.word	0x00000c03
c0de2804:	00000340 	.word	0x00000340
c0de2808:	0000fd06 	.word	0x0000fd06
c0de280c:	0000fd26 	.word	0x0000fd26
c0de2810:	00000409 	.word	0x00000409
c0de2814:	4cf4      	ldr	r4, [pc, #976]	; (c0de2be8 <LEDGER_BLE_receive+0x808>)
c0de2816:	42a3      	cmp	r3, r4
c0de2818:	d100      	bne.n	c0de281c <LEDGER_BLE_receive+0x43c>
c0de281a:	e0c9      	b.n	c0de29b0 <LEDGER_BLE_receive+0x5d0>
c0de281c:	4cf3      	ldr	r4, [pc, #972]	; (c0de2bec <LEDGER_BLE_receive+0x80c>)
c0de281e:	42a3      	cmp	r3, r4
c0de2820:	d000      	beq.n	c0de2824 <LEDGER_BLE_receive+0x444>
c0de2822:	e10b      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2824:	1f13      	subs	r3, r2, #4
c0de2826:	b29b      	uxth	r3, r3
c0de2828:	2b03      	cmp	r3, #3
c0de282a:	d200      	bcs.n	c0de282e <LEDGER_BLE_receive+0x44e>
c0de282c:	e106      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de282e:	464c      	mov	r4, r9
c0de2830:	19a3      	adds	r3, r4, r6
c0de2832:	2556      	movs	r5, #86	; 0x56
c0de2834:	2701      	movs	r7, #1
c0de2836:	555f      	strb	r7, [r3, r5]
c0de2838:	1865      	adds	r5, r4, r1
c0de283a:	7aac      	ldrb	r4, [r5, #10]
c0de283c:	7aee      	ldrb	r6, [r5, #11]
c0de283e:	0236      	lsls	r6, r6, #8
c0de2840:	1934      	adds	r4, r6, r4
c0de2842:	b2a4      	uxth	r4, r4
c0de2844:	7b2d      	ldrb	r5, [r5, #12]
c0de2846:	2d00      	cmp	r5, #0
c0de2848:	d100      	bne.n	c0de284c <LEDGER_BLE_receive+0x46c>
c0de284a:	e156      	b.n	c0de2afa <LEDGER_BLE_receive+0x71a>
c0de284c:	2646      	movs	r6, #70	; 0x46
c0de284e:	5d9e      	ldrb	r6, [r3, r6]
c0de2850:	2e00      	cmp	r6, #0
c0de2852:	d100      	bne.n	c0de2856 <LEDGER_BLE_receive+0x476>
c0de2854:	e151      	b.n	c0de2afa <LEDGER_BLE_receive+0x71a>
c0de2856:	2654      	movs	r6, #84	; 0x54
c0de2858:	5d9e      	ldrb	r6, [r3, r6]
c0de285a:	2e00      	cmp	r6, #0
c0de285c:	d100      	bne.n	c0de2860 <LEDGER_BLE_receive+0x480>
c0de285e:	e14c      	b.n	c0de2afa <LEDGER_BLE_receive+0x71a>
c0de2860:	2650      	movs	r6, #80	; 0x50
c0de2862:	5b9b      	ldrh	r3, [r3, r6]
c0de2864:	1c5b      	adds	r3, r3, #1
c0de2866:	42a3      	cmp	r3, r4
c0de2868:	d000      	beq.n	c0de286c <LEDGER_BLE_receive+0x48c>
c0de286a:	e146      	b.n	c0de2afa <LEDGER_BLE_receive+0x71a>
c0de286c:	9704      	str	r7, [sp, #16]
c0de286e:	464f      	mov	r7, r9
c0de2870:	187e      	adds	r6, r7, r1
c0de2872:	20f1      	movs	r0, #241	; 0xf1
c0de2874:	7330      	strb	r0, [r6, #12]
c0de2876:	20de      	movs	r0, #222	; 0xde
c0de2878:	72f0      	strb	r0, [r6, #11]
c0de287a:	4630      	mov	r0, r6
c0de287c:	300b      	adds	r0, #11
c0de287e:	1f51      	subs	r1, r2, #5
c0de2880:	b289      	uxth	r1, r1
c0de2882:	f000 fbcb 	bl	c0de301c <LEDGER_PROTOCOL_rx>
c0de2886:	48d6      	ldr	r0, [pc, #856]	; (c0de2be0 <LEDGER_BLE_receive+0x800>)
c0de2888:	1838      	adds	r0, r7, r0
c0de288a:	8d40      	ldrh	r0, [r0, #42]	; 0x2a
c0de288c:	360d      	adds	r6, #13
c0de288e:	9500      	str	r5, [sp, #0]
c0de2890:	9601      	str	r6, [sp, #4]
c0de2892:	2500      	movs	r5, #0
c0de2894:	4621      	mov	r1, r4
c0de2896:	462a      	mov	r2, r5
c0de2898:	462b      	mov	r3, r5
c0de289a:	f7fe fcf9 	bl	c0de1290 <aci_gatt_write_resp>
c0de289e:	48d1      	ldr	r0, [pc, #836]	; (c0de2be4 <LEDGER_BLE_receive+0x804>)
c0de28a0:	1839      	adds	r1, r7, r0
c0de28a2:	26b2      	movs	r6, #178	; 0xb2
c0de28a4:	5d89      	ldrb	r1, [r1, r6]
c0de28a6:	2902      	cmp	r1, #2
c0de28a8:	d000      	beq.n	c0de28ac <LEDGER_BLE_receive+0x4cc>
c0de28aa:	e0c7      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de28ac:	464f      	mov	r7, r9
c0de28ae:	183c      	adds	r4, r7, r0
c0de28b0:	20b6      	movs	r0, #182	; 0xb6
c0de28b2:	9003      	str	r0, [sp, #12]
c0de28b4:	5a22      	ldrh	r2, [r4, r0]
c0de28b6:	9202      	str	r2, [sp, #8]
c0de28b8:	20ac      	movs	r0, #172	; 0xac
c0de28ba:	5821      	ldr	r1, [r4, r0]
c0de28bc:	48cc      	ldr	r0, [pc, #816]	; (c0de2bf0 <LEDGER_BLE_receive+0x810>)
c0de28be:	1838      	adds	r0, r7, r0
c0de28c0:	f006 f852 	bl	c0de8968 <__aeabi_memcpy>
c0de28c4:	9803      	ldr	r0, [sp, #12]
c0de28c6:	5225      	strh	r5, [r4, r0]
c0de28c8:	55a5      	strb	r5, [r4, r6]
c0de28ca:	48ca      	ldr	r0, [pc, #808]	; (c0de2bf4 <LEDGER_BLE_receive+0x814>)
c0de28cc:	9904      	ldr	r1, [sp, #16]
c0de28ce:	5439      	strb	r1, [r7, r0]
c0de28d0:	1838      	adds	r0, r7, r0
c0de28d2:	9902      	ldr	r1, [sp, #8]
c0de28d4:	8041      	strh	r1, [r0, #2]
c0de28d6:	e0a5      	b.n	c0de2a24 <LEDGER_BLE_receive+0x644>
c0de28d8:	4bc2      	ldr	r3, [pc, #776]	; (c0de2be4 <LEDGER_BLE_receive+0x804>)
c0de28da:	4649      	mov	r1, r9
c0de28dc:	18ca      	adds	r2, r1, r3
c0de28de:	24a8      	movs	r4, #168	; 0xa8
c0de28e0:	2500      	movs	r5, #0
c0de28e2:	5515      	strb	r5, [r2, r4]
c0de28e4:	1808      	adds	r0, r1, r0
c0de28e6:	21ff      	movs	r1, #255	; 0xff
c0de28e8:	31ac      	adds	r1, #172	; 0xac
c0de28ea:	5c40      	ldrb	r0, [r0, r1]
c0de28ec:	2800      	cmp	r0, #0
c0de28ee:	d07f      	beq.n	c0de29f0 <LEDGER_BLE_receive+0x610>
c0de28f0:	4648      	mov	r0, r9
c0de28f2:	18c0      	adds	r0, r0, r3
c0de28f4:	27b6      	movs	r7, #182	; 0xb6
c0de28f6:	5bc4      	ldrh	r4, [r0, r7]
c0de28f8:	2c00      	cmp	r4, #0
c0de28fa:	d100      	bne.n	c0de28fe <LEDGER_BLE_receive+0x51e>
c0de28fc:	e08f      	b.n	c0de2a1e <LEDGER_BLE_receive+0x63e>
c0de28fe:	21b2      	movs	r1, #178	; 0xb2
c0de2900:	5c40      	ldrb	r0, [r0, r1]
c0de2902:	2802      	cmp	r0, #2
c0de2904:	d000      	beq.n	c0de2908 <LEDGER_BLE_receive+0x528>
c0de2906:	e08a      	b.n	c0de2a1e <LEDGER_BLE_receive+0x63e>
c0de2908:	464e      	mov	r6, r9
c0de290a:	18f1      	adds	r1, r6, r3
c0de290c:	9104      	str	r1, [sp, #16]
c0de290e:	20ac      	movs	r0, #172	; 0xac
c0de2910:	5809      	ldr	r1, [r1, r0]
c0de2912:	48b7      	ldr	r0, [pc, #732]	; (c0de2bf0 <LEDGER_BLE_receive+0x810>)
c0de2914:	1830      	adds	r0, r6, r0
c0de2916:	4622      	mov	r2, r4
c0de2918:	f006 f826 	bl	c0de8968 <__aeabi_memcpy>
c0de291c:	48b5      	ldr	r0, [pc, #724]	; (c0de2bf4 <LEDGER_BLE_receive+0x814>)
c0de291e:	2101      	movs	r1, #1
c0de2920:	5431      	strb	r1, [r6, r0]
c0de2922:	9904      	ldr	r1, [sp, #16]
c0de2924:	53cd      	strh	r5, [r1, r7]
c0de2926:	1830      	adds	r0, r6, r0
c0de2928:	8044      	strh	r4, [r0, #2]
c0de292a:	e078      	b.n	c0de2a1e <LEDGER_BLE_receive+0x63e>
c0de292c:	4648      	mov	r0, r9
c0de292e:	1840      	adds	r0, r0, r1
c0de2930:	7a80      	ldrb	r0, [r0, #10]
c0de2932:	2802      	cmp	r0, #2
c0de2934:	d04e      	beq.n	c0de29d4 <LEDGER_BLE_receive+0x5f4>
c0de2936:	2801      	cmp	r0, #1
c0de2938:	d100      	bne.n	c0de293c <LEDGER_BLE_receive+0x55c>
c0de293a:	e0ed      	b.n	c0de2b18 <LEDGER_BLE_receive+0x738>
c0de293c:	2800      	cmp	r0, #0
c0de293e:	d149      	bne.n	c0de29d4 <LEDGER_BLE_receive+0x5f4>
c0de2940:	4648      	mov	r0, r9
c0de2942:	1980      	adds	r0, r0, r6
c0de2944:	214a      	movs	r1, #74	; 0x4a
c0de2946:	5c40      	ldrb	r0, [r0, r1]
c0de2948:	2800      	cmp	r0, #0
c0de294a:	d100      	bne.n	c0de294e <LEDGER_BLE_receive+0x56e>
c0de294c:	e0f7      	b.n	c0de2b3e <LEDGER_BLE_receive+0x75e>
c0de294e:	48ab      	ldr	r0, [pc, #684]	; (c0de2bfc <LEDGER_BLE_receive+0x81c>)
c0de2950:	4649      	mov	r1, r9
c0de2952:	2200      	movs	r2, #0
c0de2954:	500a      	str	r2, [r1, r0]
c0de2956:	a805      	add	r0, sp, #20
c0de2958:	2104      	movs	r1, #4
c0de295a:	e0e9      	b.n	c0de2b30 <LEDGER_BLE_receive+0x750>
c0de295c:	f7ff fafe 	bl	c0de1f5c <LEDGER_BLE_init>
c0de2960:	e06c      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2962:	464d      	mov	r5, r9
c0de2964:	1868      	adds	r0, r5, r1
c0de2966:	7a81      	ldrb	r1, [r0, #10]
c0de2968:	7ac2      	ldrb	r2, [r0, #11]
c0de296a:	7b03      	ldrb	r3, [r0, #12]
c0de296c:	7b40      	ldrb	r0, [r0, #13]
c0de296e:	ac05      	add	r4, sp, #20
c0de2970:	2701      	movs	r7, #1
c0de2972:	7227      	strb	r7, [r4, #8]
c0de2974:	2606      	movs	r6, #6
c0de2976:	9608      	str	r6, [sp, #32]
c0de2978:	0600      	lsls	r0, r0, #24
c0de297a:	041b      	lsls	r3, r3, #16
c0de297c:	1818      	adds	r0, r3, r0
c0de297e:	0212      	lsls	r2, r2, #8
c0de2980:	1880      	adds	r0, r0, r2
c0de2982:	1843      	adds	r3, r0, r1
c0de2984:	4620      	mov	r0, r4
c0de2986:	3010      	adds	r0, #16
c0de2988:	2110      	movs	r1, #16
c0de298a:	4a9d      	ldr	r2, [pc, #628]	; (c0de2c00 <LEDGER_BLE_receive+0x820>)
c0de298c:	447a      	add	r2, pc
c0de298e:	f001 fef7 	bl	c0de4780 <snprintf>
c0de2992:	489a      	ldr	r0, [pc, #616]	; (c0de2bfc <LEDGER_BLE_receive+0x81c>)
c0de2994:	499b      	ldr	r1, [pc, #620]	; (c0de2c04 <LEDGER_BLE_receive+0x824>)
c0de2996:	4479      	add	r1, pc
c0de2998:	5029      	str	r1, [r5, r0]
c0de299a:	4891      	ldr	r0, [pc, #580]	; (c0de2be0 <LEDGER_BLE_receive+0x800>)
c0de299c:	1828      	adds	r0, r5, r0
c0de299e:	214a      	movs	r1, #74	; 0x4a
c0de29a0:	5447      	strb	r7, [r0, r1]
c0de29a2:	7026      	strb	r6, [r4, #0]
c0de29a4:	2018      	movs	r0, #24
c0de29a6:	9006      	str	r0, [sp, #24]
c0de29a8:	4620      	mov	r0, r4
c0de29aa:	f002 fe0b 	bl	c0de55c4 <os_ux>
c0de29ae:	e045      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de29b0:	f7fe fc4a 	bl	c0de1248 <aci_gatt_confirm_indication>
c0de29b4:	e042      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de29b6:	2900      	cmp	r1, #0
c0de29b8:	d037      	beq.n	c0de2a2a <LEDGER_BLE_receive+0x64a>
c0de29ba:	4649      	mov	r1, r9
c0de29bc:	1808      	adds	r0, r1, r0
c0de29be:	2228      	movs	r2, #40	; 0x28
c0de29c0:	2300      	movs	r3, #0
c0de29c2:	5483      	strb	r3, [r0, r2]
c0de29c4:	1908      	adds	r0, r1, r4
c0de29c6:	2125      	movs	r1, #37	; 0x25
c0de29c8:	5c40      	ldrb	r0, [r0, r1]
c0de29ca:	2800      	cmp	r0, #0
c0de29cc:	d032      	beq.n	c0de2a34 <LEDGER_BLE_receive+0x654>
c0de29ce:	f000 f91b 	bl	c0de2c08 <start_advertising>
c0de29d2:	e02f      	b.n	c0de2a34 <LEDGER_BLE_receive+0x654>
c0de29d4:	4648      	mov	r0, r9
c0de29d6:	1980      	adds	r0, r0, r6
c0de29d8:	214a      	movs	r1, #74	; 0x4a
c0de29da:	5c40      	ldrb	r0, [r0, r1]
c0de29dc:	2800      	cmp	r0, #0
c0de29de:	d100      	bne.n	c0de29e2 <LEDGER_BLE_receive+0x602>
c0de29e0:	e0ad      	b.n	c0de2b3e <LEDGER_BLE_receive+0x75e>
c0de29e2:	4886      	ldr	r0, [pc, #536]	; (c0de2bfc <LEDGER_BLE_receive+0x81c>)
c0de29e4:	4649      	mov	r1, r9
c0de29e6:	2200      	movs	r2, #0
c0de29e8:	500a      	str	r2, [r1, r0]
c0de29ea:	a805      	add	r0, sp, #20
c0de29ec:	2106      	movs	r1, #6
c0de29ee:	e09f      	b.n	c0de2b30 <LEDGER_BLE_receive+0x750>
c0de29f0:	4648      	mov	r0, r9
c0de29f2:	58c0      	ldr	r0, [r0, r3]
c0de29f4:	2800      	cmp	r0, #0
c0de29f6:	d00b      	beq.n	c0de2a10 <LEDGER_BLE_receive+0x630>
c0de29f8:	2000      	movs	r0, #0
c0de29fa:	4601      	mov	r1, r0
c0de29fc:	461e      	mov	r6, r3
c0de29fe:	f000 fba9 	bl	c0de3154 <LEDGER_PROTOCOL_tx>
c0de2a02:	f7ff fccf 	bl	c0de23a4 <notify_chunk>
c0de2a06:	4633      	mov	r3, r6
c0de2a08:	4648      	mov	r0, r9
c0de2a0a:	5980      	ldr	r0, [r0, r6]
c0de2a0c:	2800      	cmp	r0, #0
c0de2a0e:	d106      	bne.n	c0de2a1e <LEDGER_BLE_receive+0x63e>
c0de2a10:	4878      	ldr	r0, [pc, #480]	; (c0de2bf4 <LEDGER_BLE_receive+0x814>)
c0de2a12:	4649      	mov	r1, r9
c0de2a14:	540d      	strb	r5, [r1, r0]
c0de2a16:	18ca      	adds	r2, r1, r3
c0de2a18:	5515      	strb	r5, [r2, r4]
c0de2a1a:	1808      	adds	r0, r1, r0
c0de2a1c:	83c5      	strh	r5, [r0, #30]
c0de2a1e:	4875      	ldr	r0, [pc, #468]	; (c0de2bf4 <LEDGER_BLE_receive+0x814>)
c0de2a20:	4649      	mov	r1, r9
c0de2a22:	1808      	adds	r0, r1, r0
c0de2a24:	2102      	movs	r1, #2
c0de2a26:	7181      	strb	r1, [r0, #6]
c0de2a28:	e008      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2a2a:	4649      	mov	r1, r9
c0de2a2c:	1808      	adds	r0, r1, r0
c0de2a2e:	2128      	movs	r1, #40	; 0x28
c0de2a30:	2201      	movs	r2, #1
c0de2a32:	5442      	strb	r2, [r0, r1]
c0de2a34:	4648      	mov	r0, r9
c0de2a36:	1900      	adds	r0, r0, r4
c0de2a38:	2100      	movs	r1, #0
c0de2a3a:	84c1      	strh	r1, [r0, #38]	; 0x26
c0de2a3c:	b00d      	add	sp, #52	; 0x34
c0de2a3e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de2a40:	2c00      	cmp	r4, #0
c0de2a42:	4e67      	ldr	r6, [pc, #412]	; (c0de2be0 <LEDGER_BLE_receive+0x800>)
c0de2a44:	d0fa      	beq.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2a46:	4648      	mov	r0, r9
c0de2a48:	1980      	adds	r0, r0, r6
c0de2a4a:	2446      	movs	r4, #70	; 0x46
c0de2a4c:	5d04      	ldrb	r4, [r0, r4]
c0de2a4e:	2c00      	cmp	r4, #0
c0de2a50:	d0f4      	beq.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2a52:	2454      	movs	r4, #84	; 0x54
c0de2a54:	5d04      	ldrb	r4, [r0, r4]
c0de2a56:	2c00      	cmp	r4, #0
c0de2a58:	d0f0      	beq.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2a5a:	2452      	movs	r4, #82	; 0x52
c0de2a5c:	5b00      	ldrh	r0, [r0, r4]
c0de2a5e:	1c40      	adds	r0, r0, #1
c0de2a60:	4298      	cmp	r0, r3
c0de2a62:	d1eb      	bne.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2a64:	464c      	mov	r4, r9
c0de2a66:	1860      	adds	r0, r4, r1
c0de2a68:	21f1      	movs	r1, #241	; 0xf1
c0de2a6a:	73c1      	strb	r1, [r0, #15]
c0de2a6c:	21de      	movs	r1, #222	; 0xde
c0de2a6e:	7381      	strb	r1, [r0, #14]
c0de2a70:	300e      	adds	r0, #14
c0de2a72:	3a08      	subs	r2, #8
c0de2a74:	b291      	uxth	r1, r2
c0de2a76:	f000 fad1 	bl	c0de301c <LEDGER_PROTOCOL_rx>
c0de2a7a:	4a5a      	ldr	r2, [pc, #360]	; (c0de2be4 <LEDGER_BLE_receive+0x804>)
c0de2a7c:	18a1      	adds	r1, r4, r2
c0de2a7e:	25b2      	movs	r5, #178	; 0xb2
c0de2a80:	5d49      	ldrb	r1, [r1, r5]
c0de2a82:	2902      	cmp	r1, #2
c0de2a84:	d163      	bne.n	c0de2b4e <LEDGER_BLE_receive+0x76e>
c0de2a86:	4633      	mov	r3, r6
c0de2a88:	464e      	mov	r6, r9
c0de2a8a:	22ff      	movs	r2, #255	; 0xff
c0de2a8c:	4611      	mov	r1, r2
c0de2a8e:	31ac      	adds	r1, #172	; 0xac
c0de2a90:	4858      	ldr	r0, [pc, #352]	; (c0de2bf4 <LEDGER_BLE_receive+0x814>)
c0de2a92:	1834      	adds	r4, r6, r0
c0de2a94:	2028      	movs	r0, #40	; 0x28
c0de2a96:	9004      	str	r0, [sp, #16]
c0de2a98:	5c24      	ldrb	r4, [r4, r0]
c0de2a9a:	2c00      	cmp	r4, #0
c0de2a9c:	d00d      	beq.n	c0de2aba <LEDGER_BLE_receive+0x6da>
c0de2a9e:	18f6      	adds	r6, r6, r3
c0de2aa0:	5c76      	ldrb	r6, [r6, r1]
c0de2aa2:	2e00      	cmp	r6, #0
c0de2aa4:	d109      	bne.n	c0de2aba <LEDGER_BLE_receive+0x6da>
c0de2aa6:	464e      	mov	r6, r9
c0de2aa8:	18f6      	adds	r6, r6, r3
c0de2aaa:	27d7      	movs	r7, #215	; 0xd7
c0de2aac:	007f      	lsls	r7, r7, #1
c0de2aae:	2000      	movs	r0, #0
c0de2ab0:	55f0      	strb	r0, [r6, r7]
c0de2ab2:	206b      	movs	r0, #107	; 0x6b
c0de2ab4:	0080      	lsls	r0, r0, #2
c0de2ab6:	4f50      	ldr	r7, [pc, #320]	; (c0de2bf8 <LEDGER_BLE_receive+0x818>)
c0de2ab8:	5237      	strh	r7, [r6, r0]
c0de2aba:	4648      	mov	r0, r9
c0de2abc:	18c0      	adds	r0, r0, r3
c0de2abe:	5444      	strb	r4, [r0, r1]
c0de2ac0:	2c00      	cmp	r4, #0
c0de2ac2:	d056      	beq.n	c0de2b72 <LEDGER_BLE_receive+0x792>
c0de2ac4:	4648      	mov	r0, r9
c0de2ac6:	18c0      	adds	r0, r0, r3
c0de2ac8:	32ae      	adds	r2, #174	; 0xae
c0de2aca:	1884      	adds	r4, r0, r2
c0de2acc:	7864      	ldrb	r4, [r4, #1]
c0de2ace:	5c80      	ldrb	r0, [r0, r2]
c0de2ad0:	0200      	lsls	r0, r0, #8
c0de2ad2:	1900      	adds	r0, r0, r4
c0de2ad4:	2409      	movs	r4, #9
c0de2ad6:	0324      	lsls	r4, r4, #12
c0de2ad8:	42a0      	cmp	r0, r4
c0de2ada:	d15f      	bne.n	c0de2b9c <LEDGER_BLE_receive+0x7bc>
c0de2adc:	4648      	mov	r0, r9
c0de2ade:	18c0      	adds	r0, r0, r3
c0de2ae0:	216b      	movs	r1, #107	; 0x6b
c0de2ae2:	008c      	lsls	r4, r1, #2
c0de2ae4:	5d01      	ldrb	r1, [r0, r4]
c0de2ae6:	2900      	cmp	r1, #0
c0de2ae8:	d0a8      	beq.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2aea:	4648      	mov	r0, r9
c0de2aec:	18c5      	adds	r5, r0, r3
c0de2aee:	18a8      	adds	r0, r5, r2
c0de2af0:	f000 fb30 	bl	c0de3154 <LEDGER_PROTOCOL_tx>
c0de2af4:	2000      	movs	r0, #0
c0de2af6:	5528      	strb	r0, [r5, r4]
c0de2af8:	e61d      	b.n	c0de2736 <LEDGER_BLE_receive+0x356>
c0de2afa:	4a3a      	ldr	r2, [pc, #232]	; (c0de2be4 <LEDGER_BLE_receive+0x804>)
c0de2afc:	464b      	mov	r3, r9
c0de2afe:	189e      	adds	r6, r3, r2
c0de2b00:	27a8      	movs	r7, #168	; 0xa8
c0de2b02:	2200      	movs	r2, #0
c0de2b04:	55f2      	strb	r2, [r6, r7]
c0de2b06:	1859      	adds	r1, r3, r1
c0de2b08:	310d      	adds	r1, #13
c0de2b0a:	9500      	str	r5, [sp, #0]
c0de2b0c:	9101      	str	r1, [sp, #4]
c0de2b0e:	4621      	mov	r1, r4
c0de2b10:	4613      	mov	r3, r2
c0de2b12:	f7fe fbbd 	bl	c0de1290 <aci_gatt_write_resp>
c0de2b16:	e791      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2b18:	4648      	mov	r0, r9
c0de2b1a:	1980      	adds	r0, r0, r6
c0de2b1c:	214a      	movs	r1, #74	; 0x4a
c0de2b1e:	5c40      	ldrb	r0, [r0, r1]
c0de2b20:	2800      	cmp	r0, #0
c0de2b22:	d00c      	beq.n	c0de2b3e <LEDGER_BLE_receive+0x75e>
c0de2b24:	4835      	ldr	r0, [pc, #212]	; (c0de2bfc <LEDGER_BLE_receive+0x81c>)
c0de2b26:	4649      	mov	r1, r9
c0de2b28:	2200      	movs	r2, #0
c0de2b2a:	500a      	str	r2, [r1, r0]
c0de2b2c:	a805      	add	r0, sp, #20
c0de2b2e:	2105      	movs	r1, #5
c0de2b30:	7201      	strb	r1, [r0, #8]
c0de2b32:	2107      	movs	r1, #7
c0de2b34:	7001      	strb	r1, [r0, #0]
c0de2b36:	2101      	movs	r1, #1
c0de2b38:	9106      	str	r1, [sp, #24]
c0de2b3a:	f002 fd43 	bl	c0de55c4 <os_ux>
c0de2b3e:	4648      	mov	r0, r9
c0de2b40:	1980      	adds	r0, r0, r6
c0de2b42:	214a      	movs	r1, #74	; 0x4a
c0de2b44:	e536      	b.n	c0de25b4 <LEDGER_BLE_receive+0x1d4>
c0de2b46:	4648      	mov	r0, r9
c0de2b48:	1880      	adds	r0, r0, r2
c0de2b4a:	2154      	movs	r1, #84	; 0x54
c0de2b4c:	e532      	b.n	c0de25b4 <LEDGER_BLE_receive+0x1d4>
c0de2b4e:	4648      	mov	r0, r9
c0de2b50:	1880      	adds	r0, r0, r2
c0de2b52:	21a8      	movs	r1, #168	; 0xa8
c0de2b54:	5c40      	ldrb	r0, [r0, r1]
c0de2b56:	2802      	cmp	r0, #2
c0de2b58:	d200      	bcs.n	c0de2b5c <LEDGER_BLE_receive+0x77c>
c0de2b5a:	e76f      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2b5c:	4c25      	ldr	r4, [pc, #148]	; (c0de2bf4 <LEDGER_BLE_receive+0x814>)
c0de2b5e:	464d      	mov	r5, r9
c0de2b60:	1928      	adds	r0, r5, r4
c0de2b62:	217d      	movs	r1, #125	; 0x7d
c0de2b64:	0109      	lsls	r1, r1, #4
c0de2b66:	83c1      	strh	r1, [r0, #30]
c0de2b68:	f7ff fc1c 	bl	c0de23a4 <notify_chunk>
c0de2b6c:	2001      	movs	r0, #1
c0de2b6e:	5528      	strb	r0, [r5, r4]
c0de2b70:	e764      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2b72:	464e      	mov	r6, r9
c0de2b74:	481b      	ldr	r0, [pc, #108]	; (c0de2be4 <LEDGER_BLE_receive+0x804>)
c0de2b76:	1837      	adds	r7, r6, r0
c0de2b78:	24b6      	movs	r4, #182	; 0xb6
c0de2b7a:	5b3a      	ldrh	r2, [r7, r4]
c0de2b7c:	9204      	str	r2, [sp, #16]
c0de2b7e:	20ac      	movs	r0, #172	; 0xac
c0de2b80:	5839      	ldr	r1, [r7, r0]
c0de2b82:	481b      	ldr	r0, [pc, #108]	; (c0de2bf0 <LEDGER_BLE_receive+0x810>)
c0de2b84:	1830      	adds	r0, r6, r0
c0de2b86:	f005 feef 	bl	c0de8968 <__aeabi_memcpy>
c0de2b8a:	2001      	movs	r0, #1
c0de2b8c:	4919      	ldr	r1, [pc, #100]	; (c0de2bf4 <LEDGER_BLE_receive+0x814>)
c0de2b8e:	5470      	strb	r0, [r6, r1]
c0de2b90:	2000      	movs	r0, #0
c0de2b92:	5338      	strh	r0, [r7, r4]
c0de2b94:	5578      	strb	r0, [r7, r5]
c0de2b96:	1870      	adds	r0, r6, r1
c0de2b98:	9904      	ldr	r1, [sp, #16]
c0de2b9a:	e69b      	b.n	c0de28d4 <LEDGER_BLE_receive+0x4f4>
c0de2b9c:	464f      	mov	r7, r9
c0de2b9e:	18f8      	adds	r0, r7, r3
c0de2ba0:	2400      	movs	r4, #0
c0de2ba2:	5444      	strb	r4, [r0, r1]
c0de2ba4:	4813      	ldr	r0, [pc, #76]	; (c0de2bf4 <LEDGER_BLE_receive+0x814>)
c0de2ba6:	1839      	adds	r1, r7, r0
c0de2ba8:	9103      	str	r1, [sp, #12]
c0de2baa:	9804      	ldr	r0, [sp, #16]
c0de2bac:	540c      	strb	r4, [r1, r0]
c0de2bae:	480d      	ldr	r0, [pc, #52]	; (c0de2be4 <LEDGER_BLE_receive+0x804>)
c0de2bb0:	183e      	adds	r6, r7, r0
c0de2bb2:	20ac      	movs	r0, #172	; 0xac
c0de2bb4:	5831      	ldr	r1, [r6, r0]
c0de2bb6:	20b6      	movs	r0, #182	; 0xb6
c0de2bb8:	9004      	str	r0, [sp, #16]
c0de2bba:	5a32      	ldrh	r2, [r6, r0]
c0de2bbc:	9202      	str	r2, [sp, #8]
c0de2bbe:	480c      	ldr	r0, [pc, #48]	; (c0de2bf0 <LEDGER_BLE_receive+0x810>)
c0de2bc0:	1838      	adds	r0, r7, r0
c0de2bc2:	f005 fed1 	bl	c0de8968 <__aeabi_memcpy>
c0de2bc6:	2001      	movs	r0, #1
c0de2bc8:	490a      	ldr	r1, [pc, #40]	; (c0de2bf4 <LEDGER_BLE_receive+0x814>)
c0de2bca:	5478      	strb	r0, [r7, r1]
c0de2bcc:	9804      	ldr	r0, [sp, #16]
c0de2bce:	5234      	strh	r4, [r6, r0]
c0de2bd0:	5574      	strb	r4, [r6, r5]
c0de2bd2:	9903      	ldr	r1, [sp, #12]
c0de2bd4:	9802      	ldr	r0, [sp, #8]
c0de2bd6:	8048      	strh	r0, [r1, #2]
c0de2bd8:	2002      	movs	r0, #2
c0de2bda:	7188      	strb	r0, [r1, #6]
c0de2bdc:	e72e      	b.n	c0de2a3c <LEDGER_BLE_receive+0x65c>
c0de2bde:	46c0      	nop			; (mov r8, r8)
c0de2be0:	00000190 	.word	0x00000190
c0de2be4:	00000340 	.word	0x00000340
c0de2be8:	00000c0e 	.word	0x00000c0e
c0de2bec:	00000c13 	.word	0x00000c13
c0de2bf0:	00000530 	.word	0x00000530
c0de2bf4:	00000684 	.word	0x00000684
c0de2bf8:	00009002 	.word	0x00009002
c0de2bfc:	0000073c 	.word	0x0000073c
c0de2c00:	00006338 	.word	0x00006338
c0de2c04:	000005e3 	.word	0x000005e3

c0de2c08 <start_advertising>:
c0de2c08:	b5b0      	push	{r4, r5, r7, lr}
c0de2c0a:	4811      	ldr	r0, [pc, #68]	; (c0de2c50 <start_advertising+0x48>)
c0de2c0c:	4649      	mov	r1, r9
c0de2c0e:	180a      	adds	r2, r1, r0
c0de2c10:	2125      	movs	r1, #37	; 0x25
c0de2c12:	5c52      	ldrb	r2, [r2, r1]
c0de2c14:	2a00      	cmp	r2, #0
c0de2c16:	d004      	beq.n	c0de2c22 <start_advertising+0x1a>
c0de2c18:	464a      	mov	r2, r9
c0de2c1a:	1812      	adds	r2, r2, r0
c0de2c1c:	2000      	movs	r0, #0
c0de2c1e:	5450      	strb	r0, [r2, r1]
c0de2c20:	e000      	b.n	c0de2c24 <start_advertising+0x1c>
c0de2c22:	2003      	movs	r0, #3
c0de2c24:	490b      	ldr	r1, [pc, #44]	; (c0de2c54 <start_advertising+0x4c>)
c0de2c26:	464a      	mov	r2, r9
c0de2c28:	2302      	movs	r3, #2
c0de2c2a:	5453      	strb	r3, [r2, r1]
c0de2c2c:	1855      	adds	r5, r2, r1
c0de2c2e:	490a      	ldr	r1, [pc, #40]	; (c0de2c58 <start_advertising+0x50>)
c0de2c30:	8429      	strh	r1, [r5, #32]
c0de2c32:	77a8      	strb	r0, [r5, #30]
c0de2c34:	2006      	movs	r0, #6
c0de2c36:	2400      	movs	r4, #0
c0de2c38:	4621      	mov	r1, r4
c0de2c3a:	4622      	mov	r2, r4
c0de2c3c:	f002 fce6 	bl	c0de560c <os_setting_get>
c0de2c40:	4241      	negs	r1, r0
c0de2c42:	4141      	adcs	r1, r0
c0de2c44:	77e9      	strb	r1, [r5, #31]
c0de2c46:	4620      	mov	r0, r4
c0de2c48:	f000 f89c 	bl	c0de2d84 <configure_advertising_mngr>
c0de2c4c:	bdb0      	pop	{r4, r5, r7, pc}
c0de2c4e:	46c0      	nop			; (mov r8, r8)
c0de2c50:	00000684 	.word	0x00000684
c0de2c54:	00000190 	.word	0x00000190
c0de2c58:	0000ffff 	.word	0x0000ffff

c0de2c5c <LEDGER_BLE_enable_advertising>:
c0de2c5c:	b580      	push	{r7, lr}
c0de2c5e:	490a      	ldr	r1, [pc, #40]	; (c0de2c88 <LEDGER_BLE_enable_advertising+0x2c>)
c0de2c60:	464a      	mov	r2, r9
c0de2c62:	1852      	adds	r2, r2, r1
c0de2c64:	2324      	movs	r3, #36	; 0x24
c0de2c66:	5cd2      	ldrb	r2, [r2, r3]
c0de2c68:	2a00      	cmp	r2, #0
c0de2c6a:	d00c      	beq.n	c0de2c86 <LEDGER_BLE_enable_advertising+0x2a>
c0de2c6c:	4242      	negs	r2, r0
c0de2c6e:	4142      	adcs	r2, r0
c0de2c70:	464b      	mov	r3, r9
c0de2c72:	1859      	adds	r1, r3, r1
c0de2c74:	2327      	movs	r3, #39	; 0x27
c0de2c76:	54ca      	strb	r2, [r1, r3]
c0de2c78:	1e42      	subs	r2, r0, #1
c0de2c7a:	4603      	mov	r3, r0
c0de2c7c:	4193      	sbcs	r3, r2
c0de2c7e:	2226      	movs	r2, #38	; 0x26
c0de2c80:	548b      	strb	r3, [r1, r2]
c0de2c82:	f000 f803 	bl	c0de2c8c <advertising_enable>
c0de2c86:	bd80      	pop	{r7, pc}
c0de2c88:	00000684 	.word	0x00000684

c0de2c8c <advertising_enable>:
c0de2c8c:	b570      	push	{r4, r5, r6, lr}
c0de2c8e:	b090      	sub	sp, #64	; 0x40
c0de2c90:	2800      	cmp	r0, #0
c0de2c92:	d027      	beq.n	c0de2ce4 <advertising_enable+0x58>
c0de2c94:	4815      	ldr	r0, [pc, #84]	; (c0de2cec <advertising_enable+0x60>)
c0de2c96:	4649      	mov	r1, r9
c0de2c98:	180e      	adds	r6, r1, r0
c0de2c9a:	1c74      	adds	r4, r6, #1
c0de2c9c:	2115      	movs	r1, #21
c0de2c9e:	4620      	mov	r0, r4
c0de2ca0:	f005 fe5c 	bl	c0de895c <__aeabi_memclr>
c0de2ca4:	200b      	movs	r0, #11
c0de2ca6:	2214      	movs	r2, #20
c0de2ca8:	4621      	mov	r1, r4
c0de2caa:	f002 fcaf 	bl	c0de560c <os_setting_get>
c0de2cae:	4605      	mov	r5, r0
c0de2cb0:	75b0      	strb	r0, [r6, #22]
c0de2cb2:	ae08      	add	r6, sp, #32
c0de2cb4:	2009      	movs	r0, #9
c0de2cb6:	7030      	strb	r0, [r6, #0]
c0de2cb8:	b2ea      	uxtb	r2, r5
c0de2cba:	1c70      	adds	r0, r6, #1
c0de2cbc:	4621      	mov	r1, r4
c0de2cbe:	f005 fe53 	bl	c0de8968 <__aeabi_memcpy>
c0de2cc2:	2118      	movs	r1, #24
c0de2cc4:	220c      	movs	r2, #12
c0de2cc6:	2000      	movs	r0, #0
c0de2cc8:	1c6b      	adds	r3, r5, #1
c0de2cca:	b2db      	uxtb	r3, r3
c0de2ccc:	ac00      	add	r4, sp, #0
c0de2cce:	c449      	stmia	r4!, {r0, r3, r6}
c0de2cd0:	9003      	str	r0, [sp, #12]
c0de2cd2:	9004      	str	r0, [sp, #16]
c0de2cd4:	9205      	str	r2, [sp, #20]
c0de2cd6:	9106      	str	r1, [sp, #24]
c0de2cd8:	2130      	movs	r1, #48	; 0x30
c0de2cda:	2260      	movs	r2, #96	; 0x60
c0de2cdc:	2301      	movs	r3, #1
c0de2cde:	f7fe f811 	bl	c0de0d04 <aci_gap_set_discoverable>
c0de2ce2:	e001      	b.n	c0de2ce8 <advertising_enable+0x5c>
c0de2ce4:	f7fd fff0 	bl	c0de0cc8 <aci_gap_set_non_discoverable>
c0de2ce8:	b010      	add	sp, #64	; 0x40
c0de2cea:	bd70      	pop	{r4, r5, r6, pc}
c0de2cec:	00000190 	.word	0x00000190

c0de2cf0 <LEDGER_BLE_reset_pairings>:
c0de2cf0:	b580      	push	{r7, lr}
c0de2cf2:	480c      	ldr	r0, [pc, #48]	; (c0de2d24 <LEDGER_BLE_reset_pairings+0x34>)
c0de2cf4:	4649      	mov	r1, r9
c0de2cf6:	1808      	adds	r0, r1, r0
c0de2cf8:	2124      	movs	r1, #36	; 0x24
c0de2cfa:	5c40      	ldrb	r0, [r0, r1]
c0de2cfc:	2800      	cmp	r0, #0
c0de2cfe:	d010      	beq.n	c0de2d22 <LEDGER_BLE_reset_pairings+0x32>
c0de2d00:	4809      	ldr	r0, [pc, #36]	; (c0de2d28 <LEDGER_BLE_reset_pairings+0x38>)
c0de2d02:	4649      	mov	r1, r9
c0de2d04:	1809      	adds	r1, r1, r0
c0de2d06:	8d49      	ldrh	r1, [r1, #42]	; 0x2a
c0de2d08:	4a08      	ldr	r2, [pc, #32]	; (c0de2d2c <LEDGER_BLE_reset_pairings+0x3c>)
c0de2d0a:	4291      	cmp	r1, r2
c0de2d0c:	d007      	beq.n	c0de2d1e <LEDGER_BLE_reset_pairings+0x2e>
c0de2d0e:	4649      	mov	r1, r9
c0de2d10:	1808      	adds	r0, r1, r0
c0de2d12:	2155      	movs	r1, #85	; 0x55
c0de2d14:	22c1      	movs	r2, #193	; 0xc1
c0de2d16:	5442      	strb	r2, [r0, r1]
c0de2d18:	f7ff f920 	bl	c0de1f5c <LEDGER_BLE_init>
c0de2d1c:	bd80      	pop	{r7, pc}
c0de2d1e:	f7fe f92b 	bl	c0de0f78 <aci_gap_clear_security_db>
c0de2d22:	bd80      	pop	{r7, pc}
c0de2d24:	00000684 	.word	0x00000684
c0de2d28:	00000190 	.word	0x00000190
c0de2d2c:	0000ffff 	.word	0x0000ffff

c0de2d30 <hci_send_req>:
c0de2d30:	b5b0      	push	{r4, r5, r7, lr}
c0de2d32:	4604      	mov	r4, r0
c0de2d34:	8800      	ldrh	r0, [r0, #0]
c0de2d36:	490f      	ldr	r1, [pc, #60]	; (c0de2d74 <hci_send_req+0x44>)
c0de2d38:	464a      	mov	r2, r9
c0de2d3a:	2338      	movs	r3, #56	; 0x38
c0de2d3c:	5453      	strb	r3, [r2, r1]
c0de2d3e:	1855      	adds	r5, r2, r1
c0de2d40:	8861      	ldrh	r1, [r4, #2]
c0de2d42:	7129      	strb	r1, [r5, #4]
c0de2d44:	68e2      	ldr	r2, [r4, #12]
c0de2d46:	1c93      	adds	r3, r2, #2
c0de2d48:	70ab      	strb	r3, [r5, #2]
c0de2d4a:	0a1b      	lsrs	r3, r3, #8
c0de2d4c:	706b      	strb	r3, [r5, #1]
c0de2d4e:	2303      	movs	r3, #3
c0de2d50:	021b      	lsls	r3, r3, #8
c0de2d52:	400b      	ands	r3, r1
c0de2d54:	0280      	lsls	r0, r0, #10
c0de2d56:	18c0      	adds	r0, r0, r3
c0de2d58:	0a00      	lsrs	r0, r0, #8
c0de2d5a:	70e8      	strb	r0, [r5, #3]
c0de2d5c:	1d68      	adds	r0, r5, #5
c0de2d5e:	68a1      	ldr	r1, [r4, #8]
c0de2d60:	f005 fe06 	bl	c0de8970 <__aeabi_memmove>
c0de2d64:	89a0      	ldrh	r0, [r4, #12]
c0de2d66:	1d40      	adds	r0, r0, #5
c0de2d68:	b281      	uxth	r1, r0
c0de2d6a:	4628      	mov	r0, r5
c0de2d6c:	f002 fc72 	bl	c0de5654 <io_seph_send>
c0de2d70:	2000      	movs	r0, #0
c0de2d72:	bdb0      	pop	{r4, r5, r7, pc}
c0de2d74:	00000404 	.word	0x00000404

c0de2d78 <BLE_power>:
c0de2d78:	b580      	push	{r7, lr}
c0de2d7a:	2800      	cmp	r0, #0
c0de2d7c:	d001      	beq.n	c0de2d82 <BLE_power+0xa>
c0de2d7e:	f7ff f8ed 	bl	c0de1f5c <LEDGER_BLE_init>
c0de2d82:	bd80      	pop	{r7, pc}

c0de2d84 <configure_advertising_mngr>:
c0de2d84:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2d86:	b089      	sub	sp, #36	; 0x24
c0de2d88:	4d4c      	ldr	r5, [pc, #304]	; (c0de2ebc <configure_advertising_mngr+0x138>)
c0de2d8a:	4649      	mov	r1, r9
c0de2d8c:	1949      	adds	r1, r1, r5
c0de2d8e:	8c0a      	ldrh	r2, [r1, #32]
c0de2d90:	494b      	ldr	r1, [pc, #300]	; (c0de2ec0 <configure_advertising_mngr+0x13c>)
c0de2d92:	428a      	cmp	r2, r1
c0de2d94:	d003      	beq.n	c0de2d9e <configure_advertising_mngr+0x1a>
c0de2d96:	4282      	cmp	r2, r0
c0de2d98:	d001      	beq.n	c0de2d9e <configure_advertising_mngr+0x1a>
c0de2d9a:	b009      	add	sp, #36	; 0x24
c0de2d9c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de2d9e:	4648      	mov	r0, r9
c0de2da0:	1940      	adds	r0, r0, r5
c0de2da2:	7f80      	ldrb	r0, [r0, #30]
c0de2da4:	2804      	cmp	r0, #4
c0de2da6:	d006      	beq.n	c0de2db6 <configure_advertising_mngr+0x32>
c0de2da8:	2800      	cmp	r0, #0
c0de2daa:	d13c      	bne.n	c0de2e26 <configure_advertising_mngr+0xa2>
c0de2dac:	464a      	mov	r2, r9
c0de2dae:	1952      	adds	r2, r2, r5
c0de2db0:	8551      	strh	r1, [r2, #42]	; 0x2a
c0de2db2:	2100      	movs	r1, #0
c0de2db4:	e000      	b.n	c0de2db8 <configure_advertising_mngr+0x34>
c0de2db6:	2101      	movs	r1, #1
c0de2db8:	464a      	mov	r2, r9
c0de2dba:	1952      	adds	r2, r2, r5
c0de2dbc:	2328      	movs	r3, #40	; 0x28
c0de2dbe:	54d1      	strb	r1, [r2, r3]
c0de2dc0:	1c41      	adds	r1, r0, #1
c0de2dc2:	7791      	strb	r1, [r2, #30]
c0de2dc4:	b2c8      	uxtb	r0, r1
c0de2dc6:	2802      	cmp	r0, #2
c0de2dc8:	dc21      	bgt.n	c0de2e0e <configure_advertising_mngr+0x8a>
c0de2dca:	2801      	cmp	r0, #1
c0de2dcc:	d041      	beq.n	c0de2e52 <configure_advertising_mngr+0xce>
c0de2dce:	2802      	cmp	r0, #2
c0de2dd0:	d137      	bne.n	c0de2e42 <configure_advertising_mngr+0xbe>
c0de2dd2:	ac01      	add	r4, sp, #4
c0de2dd4:	2006      	movs	r0, #6
c0de2dd6:	7060      	strb	r0, [r4, #1]
c0de2dd8:	2011      	movs	r0, #17
c0de2dda:	7020      	strb	r0, [r4, #0]
c0de2ddc:	1ca0      	adds	r0, r4, #2
c0de2dde:	493b      	ldr	r1, [pc, #236]	; (c0de2ecc <configure_advertising_mngr+0x148>)
c0de2de0:	4479      	add	r1, pc
c0de2de2:	2210      	movs	r2, #16
c0de2de4:	f005 fdc0 	bl	c0de8968 <__aeabi_memcpy>
c0de2de8:	2100      	movs	r1, #0
c0de2dea:	75e1      	strb	r1, [r4, #23]
c0de2dec:	2018      	movs	r0, #24
c0de2dee:	75a0      	strb	r0, [r4, #22]
c0de2df0:	7561      	strb	r1, [r4, #21]
c0de2df2:	210c      	movs	r1, #12
c0de2df4:	7521      	strb	r1, [r4, #20]
c0de2df6:	2112      	movs	r1, #18
c0de2df8:	74e1      	strb	r1, [r4, #19]
c0de2dfa:	2105      	movs	r1, #5
c0de2dfc:	74a1      	strb	r1, [r4, #18]
c0de2dfe:	4649      	mov	r1, r9
c0de2e00:	1949      	adds	r1, r1, r5
c0de2e02:	4a31      	ldr	r2, [pc, #196]	; (c0de2ec8 <configure_advertising_mngr+0x144>)
c0de2e04:	840a      	strh	r2, [r1, #32]
c0de2e06:	4621      	mov	r1, r4
c0de2e08:	f7fe fae0 	bl	c0de13cc <hci_le_set_scan_response_data>
c0de2e0c:	e7c5      	b.n	c0de2d9a <configure_advertising_mngr+0x16>
c0de2e0e:	2803      	cmp	r0, #3
c0de2e10:	d045      	beq.n	c0de2e9e <configure_advertising_mngr+0x11a>
c0de2e12:	2804      	cmp	r0, #4
c0de2e14:	d115      	bne.n	c0de2e42 <configure_advertising_mngr+0xbe>
c0de2e16:	4648      	mov	r0, r9
c0de2e18:	1940      	adds	r0, r0, r5
c0de2e1a:	492a      	ldr	r1, [pc, #168]	; (c0de2ec4 <configure_advertising_mngr+0x140>)
c0de2e1c:	8401      	strh	r1, [r0, #32]
c0de2e1e:	2001      	movs	r0, #1
c0de2e20:	f7ff ff34 	bl	c0de2c8c <advertising_enable>
c0de2e24:	e7b9      	b.n	c0de2d9a <configure_advertising_mngr+0x16>
c0de2e26:	4649      	mov	r1, r9
c0de2e28:	194a      	adds	r2, r1, r5
c0de2e2a:	1c41      	adds	r1, r0, #1
c0de2e2c:	7791      	strb	r1, [r2, #30]
c0de2e2e:	b2cb      	uxtb	r3, r1
c0de2e30:	2b04      	cmp	r3, #4
c0de2e32:	d1c7      	bne.n	c0de2dc4 <configure_advertising_mngr+0x40>
c0de2e34:	7fd2      	ldrb	r2, [r2, #31]
c0de2e36:	2a00      	cmp	r2, #0
c0de2e38:	d1c4      	bne.n	c0de2dc4 <configure_advertising_mngr+0x40>
c0de2e3a:	4649      	mov	r1, r9
c0de2e3c:	1949      	adds	r1, r1, r5
c0de2e3e:	1c80      	adds	r0, r0, #2
c0de2e40:	7788      	strb	r0, [r1, #30]
c0de2e42:	4648      	mov	r0, r9
c0de2e44:	5d40      	ldrb	r0, [r0, r5]
c0de2e46:	2802      	cmp	r0, #2
c0de2e48:	d1a7      	bne.n	c0de2d9a <configure_advertising_mngr+0x16>
c0de2e4a:	4648      	mov	r0, r9
c0de2e4c:	2101      	movs	r1, #1
c0de2e4e:	5541      	strb	r1, [r0, r5]
c0de2e50:	e7a3      	b.n	c0de2d9a <configure_advertising_mngr+0x16>
c0de2e52:	ac01      	add	r4, sp, #4
c0de2e54:	2006      	movs	r0, #6
c0de2e56:	70a0      	strb	r0, [r4, #2]
c0de2e58:	2081      	movs	r0, #129	; 0x81
c0de2e5a:	0040      	lsls	r0, r0, #1
c0de2e5c:	8020      	strh	r0, [r4, #0]
c0de2e5e:	4648      	mov	r0, r9
c0de2e60:	1947      	adds	r7, r0, r5
c0de2e62:	1c7d      	adds	r5, r7, #1
c0de2e64:	2115      	movs	r1, #21
c0de2e66:	4628      	mov	r0, r5
c0de2e68:	f005 fd78 	bl	c0de895c <__aeabi_memclr>
c0de2e6c:	200b      	movs	r0, #11
c0de2e6e:	2214      	movs	r2, #20
c0de2e70:	4629      	mov	r1, r5
c0de2e72:	f002 fbcb 	bl	c0de560c <os_setting_get>
c0de2e76:	4606      	mov	r6, r0
c0de2e78:	75b8      	strb	r0, [r7, #22]
c0de2e7a:	2009      	movs	r0, #9
c0de2e7c:	7120      	strb	r0, [r4, #4]
c0de2e7e:	1c70      	adds	r0, r6, #1
c0de2e80:	70e0      	strb	r0, [r4, #3]
c0de2e82:	b2f2      	uxtb	r2, r6
c0de2e84:	1d60      	adds	r0, r4, #5
c0de2e86:	4629      	mov	r1, r5
c0de2e88:	f005 fd6e 	bl	c0de8968 <__aeabi_memcpy>
c0de2e8c:	480d      	ldr	r0, [pc, #52]	; (c0de2ec4 <configure_advertising_mngr+0x140>)
c0de2e8e:	300b      	adds	r0, #11
c0de2e90:	8438      	strh	r0, [r7, #32]
c0de2e92:	1d70      	adds	r0, r6, #5
c0de2e94:	b2c0      	uxtb	r0, r0
c0de2e96:	4621      	mov	r1, r4
c0de2e98:	f7fe f844 	bl	c0de0f24 <aci_gap_update_adv_data>
c0de2e9c:	e77d      	b.n	c0de2d9a <configure_advertising_mngr+0x16>
c0de2e9e:	4648      	mov	r0, r9
c0de2ea0:	1942      	adds	r2, r0, r5
c0de2ea2:	4808      	ldr	r0, [pc, #32]	; (c0de2ec4 <configure_advertising_mngr+0x140>)
c0de2ea4:	3083      	adds	r0, #131	; 0x83
c0de2ea6:	8410      	strh	r0, [r2, #32]
c0de2ea8:	7d93      	ldrb	r3, [r2, #22]
c0de2eaa:	8c91      	ldrh	r1, [r2, #36]	; 0x24
c0de2eac:	8c50      	ldrh	r0, [r2, #34]	; 0x22
c0de2eae:	1c52      	adds	r2, r2, #1
c0de2eb0:	9200      	str	r2, [sp, #0]
c0de2eb2:	2200      	movs	r2, #0
c0de2eb4:	f7fe f974 	bl	c0de11a0 <aci_gatt_update_char_value>
c0de2eb8:	e76f      	b.n	c0de2d9a <configure_advertising_mngr+0x16>
c0de2eba:	46c0      	nop			; (mov r8, r8)
c0de2ebc:	00000190 	.word	0x00000190
c0de2ec0:	0000ffff 	.word	0x0000ffff
c0de2ec4:	fffffc83 	.word	0xfffffc83
c0de2ec8:	00002009 	.word	0x00002009
c0de2ecc:	00007704 	.word	0x00007704

c0de2ed0 <cx_rng_u32>:
c0de2ed0:	b580      	push	{r7, lr}
c0de2ed2:	b082      	sub	sp, #8
c0de2ed4:	a801      	add	r0, sp, #4
c0de2ed6:	2104      	movs	r1, #4
c0de2ed8:	f7fe ff4a 	bl	c0de1d70 <cx_rng_no_throw>
c0de2edc:	9801      	ldr	r0, [sp, #4]
c0de2ede:	b002      	add	sp, #8
c0de2ee0:	bd80      	pop	{r7, pc}
c0de2ee2:	d4d4      	bmi.n	c0de2e8e <configure_advertising_mngr+0x10a>

c0de2ee4 <rsp_user_pairing_passkey>:
c0de2ee4:	b510      	push	{r4, lr}
c0de2ee6:	b088      	sub	sp, #32
c0de2ee8:	4c20      	ldr	r4, [pc, #128]	; (c0de2f6c <rsp_user_pairing_passkey+0x88>)
c0de2eea:	28aa      	cmp	r0, #170	; 0xaa
c0de2eec:	d117      	bne.n	c0de2f1e <rsp_user_pairing_passkey+0x3a>
c0de2eee:	4648      	mov	r0, r9
c0de2ef0:	1900      	adds	r0, r0, r4
c0de2ef2:	214a      	movs	r1, #74	; 0x4a
c0de2ef4:	5c40      	ldrb	r0, [r0, r1]
c0de2ef6:	2800      	cmp	r0, #0
c0de2ef8:	d00c      	beq.n	c0de2f14 <rsp_user_pairing_passkey+0x30>
c0de2efa:	481d      	ldr	r0, [pc, #116]	; (c0de2f70 <rsp_user_pairing_passkey+0x8c>)
c0de2efc:	4649      	mov	r1, r9
c0de2efe:	2200      	movs	r2, #0
c0de2f00:	500a      	str	r2, [r1, r0]
c0de2f02:	4668      	mov	r0, sp
c0de2f04:	2103      	movs	r1, #3
c0de2f06:	7201      	strb	r1, [r0, #8]
c0de2f08:	2107      	movs	r1, #7
c0de2f0a:	7001      	strb	r1, [r0, #0]
c0de2f0c:	2101      	movs	r1, #1
c0de2f0e:	9101      	str	r1, [sp, #4]
c0de2f10:	f002 fb58 	bl	c0de55c4 <os_ux>
c0de2f14:	4648      	mov	r0, r9
c0de2f16:	1900      	adds	r0, r0, r4
c0de2f18:	2148      	movs	r1, #72	; 0x48
c0de2f1a:	5a40      	ldrh	r0, [r0, r1]
c0de2f1c:	e01c      	b.n	c0de2f58 <rsp_user_pairing_passkey+0x74>
c0de2f1e:	4648      	mov	r0, r9
c0de2f20:	1900      	adds	r0, r0, r4
c0de2f22:	214a      	movs	r1, #74	; 0x4a
c0de2f24:	5c40      	ldrb	r0, [r0, r1]
c0de2f26:	2800      	cmp	r0, #0
c0de2f28:	d00c      	beq.n	c0de2f44 <rsp_user_pairing_passkey+0x60>
c0de2f2a:	4811      	ldr	r0, [pc, #68]	; (c0de2f70 <rsp_user_pairing_passkey+0x8c>)
c0de2f2c:	4649      	mov	r1, r9
c0de2f2e:	2200      	movs	r2, #0
c0de2f30:	500a      	str	r2, [r1, r0]
c0de2f32:	4668      	mov	r0, sp
c0de2f34:	2102      	movs	r1, #2
c0de2f36:	7201      	strb	r1, [r0, #8]
c0de2f38:	2107      	movs	r1, #7
c0de2f3a:	7001      	strb	r1, [r0, #0]
c0de2f3c:	2101      	movs	r1, #1
c0de2f3e:	9101      	str	r1, [sp, #4]
c0de2f40:	f002 fb40 	bl	c0de55c4 <os_ux>
c0de2f44:	2000      	movs	r0, #0
c0de2f46:	490b      	ldr	r1, [pc, #44]	; (c0de2f74 <rsp_user_pairing_passkey+0x90>)
c0de2f48:	4a0b      	ldr	r2, [pc, #44]	; (c0de2f78 <rsp_user_pairing_passkey+0x94>)
c0de2f4a:	447a      	add	r2, pc
c0de2f4c:	f7fe ff16 	bl	c0de1d7c <cx_rng_u32_range_func>
c0de2f50:	4649      	mov	r1, r9
c0de2f52:	1909      	adds	r1, r1, r4
c0de2f54:	2248      	movs	r2, #72	; 0x48
c0de2f56:	5288      	strh	r0, [r1, r2]
c0de2f58:	4904      	ldr	r1, [pc, #16]	; (c0de2f6c <rsp_user_pairing_passkey+0x88>)
c0de2f5a:	464a      	mov	r2, r9
c0de2f5c:	1851      	adds	r1, r2, r1
c0de2f5e:	8d4a      	ldrh	r2, [r1, #42]	; 0x2a
c0de2f60:	b281      	uxth	r1, r0
c0de2f62:	4610      	mov	r0, r2
c0de2f64:	f7fd ff72 	bl	c0de0e4c <aci_gap_pass_key_resp>
c0de2f68:	b008      	add	sp, #32
c0de2f6a:	bd10      	pop	{r4, pc}
c0de2f6c:	00000190 	.word	0x00000190
c0de2f70:	0000073c 	.word	0x0000073c
c0de2f74:	000f4240 	.word	0x000f4240
c0de2f78:	ffffff83 	.word	0xffffff83

c0de2f7c <rsp_user_pairing_numeric_comparison>:
c0de2f7c:	b510      	push	{r4, lr}
c0de2f7e:	b088      	sub	sp, #32
c0de2f80:	2897      	cmp	r0, #151	; 0x97
c0de2f82:	d019      	beq.n	c0de2fb8 <rsp_user_pairing_numeric_comparison+0x3c>
c0de2f84:	4c1d      	ldr	r4, [pc, #116]	; (c0de2ffc <rsp_user_pairing_numeric_comparison+0x80>)
c0de2f86:	28aa      	cmp	r0, #170	; 0xaa
c0de2f88:	d11e      	bne.n	c0de2fc8 <rsp_user_pairing_numeric_comparison+0x4c>
c0de2f8a:	4648      	mov	r0, r9
c0de2f8c:	1900      	adds	r0, r0, r4
c0de2f8e:	214a      	movs	r1, #74	; 0x4a
c0de2f90:	5c40      	ldrb	r0, [r0, r1]
c0de2f92:	2800      	cmp	r0, #0
c0de2f94:	d00b      	beq.n	c0de2fae <rsp_user_pairing_numeric_comparison+0x32>
c0de2f96:	481a      	ldr	r0, [pc, #104]	; (c0de3000 <rsp_user_pairing_numeric_comparison+0x84>)
c0de2f98:	4649      	mov	r1, r9
c0de2f9a:	2200      	movs	r2, #0
c0de2f9c:	500a      	str	r2, [r1, r0]
c0de2f9e:	4668      	mov	r0, sp
c0de2fa0:	7202      	strb	r2, [r0, #8]
c0de2fa2:	2107      	movs	r1, #7
c0de2fa4:	7001      	strb	r1, [r0, #0]
c0de2fa6:	2101      	movs	r1, #1
c0de2fa8:	9101      	str	r1, [sp, #4]
c0de2faa:	f002 fb0b 	bl	c0de55c4 <os_ux>
c0de2fae:	4648      	mov	r0, r9
c0de2fb0:	1900      	adds	r0, r0, r4
c0de2fb2:	8d40      	ldrh	r0, [r0, #42]	; 0x2a
c0de2fb4:	2101      	movs	r1, #1
c0de2fb6:	e01d      	b.n	c0de2ff4 <rsp_user_pairing_numeric_comparison+0x78>
c0de2fb8:	4810      	ldr	r0, [pc, #64]	; (c0de2ffc <rsp_user_pairing_numeric_comparison+0x80>)
c0de2fba:	4649      	mov	r1, r9
c0de2fbc:	1808      	adds	r0, r1, r0
c0de2fbe:	224a      	movs	r2, #74	; 0x4a
c0de2fc0:	2100      	movs	r1, #0
c0de2fc2:	5481      	strb	r1, [r0, r2]
c0de2fc4:	8d40      	ldrh	r0, [r0, #42]	; 0x2a
c0de2fc6:	e015      	b.n	c0de2ff4 <rsp_user_pairing_numeric_comparison+0x78>
c0de2fc8:	4648      	mov	r0, r9
c0de2fca:	1900      	adds	r0, r0, r4
c0de2fcc:	214a      	movs	r1, #74	; 0x4a
c0de2fce:	5c40      	ldrb	r0, [r0, r1]
c0de2fd0:	2800      	cmp	r0, #0
c0de2fd2:	d00b      	beq.n	c0de2fec <rsp_user_pairing_numeric_comparison+0x70>
c0de2fd4:	480a      	ldr	r0, [pc, #40]	; (c0de3000 <rsp_user_pairing_numeric_comparison+0x84>)
c0de2fd6:	4649      	mov	r1, r9
c0de2fd8:	2200      	movs	r2, #0
c0de2fda:	500a      	str	r2, [r1, r0]
c0de2fdc:	4668      	mov	r0, sp
c0de2fde:	2101      	movs	r1, #1
c0de2fe0:	7201      	strb	r1, [r0, #8]
c0de2fe2:	2207      	movs	r2, #7
c0de2fe4:	7002      	strb	r2, [r0, #0]
c0de2fe6:	9101      	str	r1, [sp, #4]
c0de2fe8:	f002 faec 	bl	c0de55c4 <os_ux>
c0de2fec:	4648      	mov	r0, r9
c0de2fee:	1900      	adds	r0, r0, r4
c0de2ff0:	8d40      	ldrh	r0, [r0, #42]	; 0x2a
c0de2ff2:	2100      	movs	r1, #0
c0de2ff4:	f7fd ffde 	bl	c0de0fb4 <aci_gap_numeric_comparison_value_confirm_yesno>
c0de2ff8:	b008      	add	sp, #32
c0de2ffa:	bd10      	pop	{r4, pc}
c0de2ffc:	00000190 	.word	0x00000190
c0de3000:	0000073c 	.word	0x0000073c

c0de3004 <LEDGER_PROTOCOL_init>:
c0de3004:	21b2      	movs	r1, #178	; 0xb2
c0de3006:	2200      	movs	r2, #0
c0de3008:	5442      	strb	r2, [r0, r1]
c0de300a:	4903      	ldr	r1, [pc, #12]	; (c0de3018 <LEDGER_PROTOCOL_init+0x14>)
c0de300c:	464b      	mov	r3, r9
c0de300e:	5058      	str	r0, [r3, r1]
c0de3010:	30b2      	adds	r0, #178	; 0xb2
c0de3012:	8042      	strh	r2, [r0, #2]
c0de3014:	4770      	bx	lr
c0de3016:	46c0      	nop			; (mov r8, r8)
c0de3018:	00000400 	.word	0x00000400

c0de301c <LEDGER_PROTOCOL_rx>:
c0de301c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de301e:	b081      	sub	sp, #4
c0de3020:	2800      	cmp	r0, #0
c0de3022:	d058      	beq.n	c0de30d6 <LEDGER_PROTOCOL_rx+0xba>
c0de3024:	2903      	cmp	r1, #3
c0de3026:	d356      	bcc.n	c0de30d6 <LEDGER_PROTOCOL_rx+0xba>
c0de3028:	4604      	mov	r4, r0
c0de302a:	9100      	str	r1, [sp, #0]
c0de302c:	4848      	ldr	r0, [pc, #288]	; (c0de3150 <LEDGER_PROTOCOL_rx+0x134>)
c0de302e:	4649      	mov	r1, r9
c0de3030:	580d      	ldr	r5, [r1, r0]
c0de3032:	462e      	mov	r6, r5
c0de3034:	360a      	adds	r6, #10
c0de3036:	279e      	movs	r7, #158	; 0x9e
c0de3038:	4630      	mov	r0, r6
c0de303a:	4639      	mov	r1, r7
c0de303c:	f005 fc8e 	bl	c0de895c <__aeabi_memclr>
c0de3040:	7820      	ldrb	r0, [r4, #0]
c0de3042:	7861      	ldrb	r1, [r4, #1]
c0de3044:	0209      	lsls	r1, r1, #8
c0de3046:	1808      	adds	r0, r1, r0
c0de3048:	8168      	strh	r0, [r5, #10]
c0de304a:	462b      	mov	r3, r5
c0de304c:	33a8      	adds	r3, #168	; 0xa8
c0de304e:	78a0      	ldrb	r0, [r4, #2]
c0de3050:	2801      	cmp	r0, #1
c0de3052:	dd10      	ble.n	c0de3076 <LEDGER_PROTOCOL_rx+0x5a>
c0de3054:	2802      	cmp	r0, #2
c0de3056:	d017      	beq.n	c0de3088 <LEDGER_PROTOCOL_rx+0x6c>
c0de3058:	2805      	cmp	r0, #5
c0de305a:	d01f      	beq.n	c0de309c <LEDGER_PROTOCOL_rx+0x80>
c0de305c:	2808      	cmp	r0, #8
c0de305e:	d13a      	bne.n	c0de30d6 <LEDGER_PROTOCOL_rx+0xba>
c0de3060:	2001      	movs	r0, #1
c0de3062:	7428      	strb	r0, [r5, #16]
c0de3064:	2000      	movs	r0, #0
c0de3066:	81e8      	strh	r0, [r5, #14]
c0de3068:	2008      	movs	r0, #8
c0de306a:	81a8      	strh	r0, [r5, #12]
c0de306c:	7018      	strb	r0, [r3, #0]
c0de306e:	7c98      	ldrb	r0, [r3, #18]
c0de3070:	1e80      	subs	r0, r0, #2
c0de3072:	7468      	strb	r0, [r5, #17]
c0de3074:	e02f      	b.n	c0de30d6 <LEDGER_PROTOCOL_rx+0xba>
c0de3076:	2800      	cmp	r0, #0
c0de3078:	d023      	beq.n	c0de30c2 <LEDGER_PROTOCOL_rx+0xa6>
c0de307a:	2801      	cmp	r0, #1
c0de307c:	d12b      	bne.n	c0de30d6 <LEDGER_PROTOCOL_rx+0xba>
c0de307e:	2003      	movs	r0, #3
c0de3080:	7018      	strb	r0, [r3, #0]
c0de3082:	2001      	movs	r0, #1
c0de3084:	7328      	strb	r0, [r5, #12]
c0de3086:	e026      	b.n	c0de30d6 <LEDGER_PROTOCOL_rx+0xba>
c0de3088:	9a00      	ldr	r2, [sp, #0]
c0de308a:	2a9e      	cmp	r2, #158	; 0x9e
c0de308c:	d300      	bcc.n	c0de3090 <LEDGER_PROTOCOL_rx+0x74>
c0de308e:	463a      	mov	r2, r7
c0de3090:	701a      	strb	r2, [r3, #0]
c0de3092:	4630      	mov	r0, r6
c0de3094:	4621      	mov	r1, r4
c0de3096:	f005 fc67 	bl	c0de8968 <__aeabi_memcpy>
c0de309a:	e01c      	b.n	c0de30d6 <LEDGER_PROTOCOL_rx+0xba>
c0de309c:	9d00      	ldr	r5, [sp, #0]
c0de309e:	1ee8      	subs	r0, r5, #3
c0de30a0:	b281      	uxth	r1, r0
c0de30a2:	2902      	cmp	r1, #2
c0de30a4:	d30a      	bcc.n	c0de30bc <LEDGER_PROTOCOL_rx+0xa0>
c0de30a6:	7920      	ldrb	r0, [r4, #4]
c0de30a8:	78e2      	ldrb	r2, [r4, #3]
c0de30aa:	0212      	lsls	r2, r2, #8
c0de30ac:	1810      	adds	r0, r2, r0
c0de30ae:	899a      	ldrh	r2, [r3, #12]
c0de30b0:	4290      	cmp	r0, r2
c0de30b2:	d103      	bne.n	c0de30bc <LEDGER_PROTOCOL_rx+0xa0>
c0de30b4:	2903      	cmp	r1, #3
c0de30b6:	d810      	bhi.n	c0de30da <LEDGER_PROTOCOL_rx+0xbe>
c0de30b8:	2800      	cmp	r0, #0
c0de30ba:	d10e      	bne.n	c0de30da <LEDGER_PROTOCOL_rx+0xbe>
c0de30bc:	2000      	movs	r0, #0
c0de30be:	7298      	strb	r0, [r3, #10]
c0de30c0:	e009      	b.n	c0de30d6 <LEDGER_PROTOCOL_rx+0xba>
c0de30c2:	4628      	mov	r0, r5
c0de30c4:	300d      	adds	r0, #13
c0de30c6:	2100      	movs	r1, #0
c0de30c8:	70c1      	strb	r1, [r0, #3]
c0de30ca:	7081      	strb	r1, [r0, #2]
c0de30cc:	7041      	strb	r1, [r0, #1]
c0de30ce:	7001      	strb	r1, [r0, #0]
c0de30d0:	7329      	strb	r1, [r5, #12]
c0de30d2:	2007      	movs	r0, #7
c0de30d4:	7018      	strb	r0, [r3, #0]
c0de30d6:	b001      	add	sp, #4
c0de30d8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de30da:	2800      	cmp	r0, #0
c0de30dc:	d005      	beq.n	c0de30ea <LEDGER_PROTOCOL_rx+0xce>
c0de30de:	89d8      	ldrh	r0, [r3, #14]
c0de30e0:	461e      	mov	r6, r3
c0de30e2:	8a1b      	ldrh	r3, [r3, #16]
c0de30e4:	1f6d      	subs	r5, r5, #5
c0de30e6:	1d61      	adds	r1, r4, #5
c0de30e8:	e014      	b.n	c0de3114 <LEDGER_PROTOCOL_rx+0xf8>
c0de30ea:	2001      	movs	r0, #1
c0de30ec:	7298      	strb	r0, [r3, #10]
c0de30ee:	79a0      	ldrb	r0, [r4, #6]
c0de30f0:	7961      	ldrb	r1, [r4, #5]
c0de30f2:	0209      	lsls	r1, r1, #8
c0de30f4:	1808      	adds	r0, r1, r0
c0de30f6:	81d8      	strh	r0, [r3, #14]
c0de30f8:	b281      	uxth	r1, r0
c0de30fa:	891a      	ldrh	r2, [r3, #8]
c0de30fc:	4291      	cmp	r1, r2
c0de30fe:	d903      	bls.n	c0de3108 <LEDGER_PROTOCOL_rx+0xec>
c0de3100:	2000      	movs	r0, #0
c0de3102:	7298      	strb	r0, [r3, #10]
c0de3104:	81d8      	strh	r0, [r3, #14]
c0de3106:	e7e6      	b.n	c0de30d6 <LEDGER_PROTOCOL_rx+0xba>
c0de3108:	4619      	mov	r1, r3
c0de310a:	2300      	movs	r3, #0
c0de310c:	460e      	mov	r6, r1
c0de310e:	820b      	strh	r3, [r1, #16]
c0de3110:	1fed      	subs	r5, r5, #7
c0de3112:	1de1      	adds	r1, r4, #7
c0de3114:	b2aa      	uxth	r2, r5
c0de3116:	18d2      	adds	r2, r2, r3
c0de3118:	b284      	uxth	r4, r0
c0de311a:	42a2      	cmp	r2, r4
c0de311c:	d900      	bls.n	c0de3120 <LEDGER_PROTOCOL_rx+0x104>
c0de311e:	1ac5      	subs	r5, r0, r3
c0de3120:	b2aa      	uxth	r2, r5
c0de3122:	6870      	ldr	r0, [r6, #4]
c0de3124:	18c0      	adds	r0, r0, r3
c0de3126:	f005 fc1f 	bl	c0de8968 <__aeabi_memcpy>
c0de312a:	4632      	mov	r2, r6
c0de312c:	8a30      	ldrh	r0, [r6, #16]
c0de312e:	1828      	adds	r0, r5, r0
c0de3130:	8230      	strh	r0, [r6, #16]
c0de3132:	b280      	uxth	r0, r0
c0de3134:	89f1      	ldrh	r1, [r6, #14]
c0de3136:	4288      	cmp	r0, r1
c0de3138:	d103      	bne.n	c0de3142 <LEDGER_PROTOCOL_rx+0x126>
c0de313a:	2002      	movs	r0, #2
c0de313c:	7290      	strb	r0, [r2, #10]
c0de313e:	2000      	movs	r0, #0
c0de3140:	e003      	b.n	c0de314a <LEDGER_PROTOCOL_rx+0x12e>
c0de3142:	2001      	movs	r0, #1
c0de3144:	7290      	strb	r0, [r2, #10]
c0de3146:	8990      	ldrh	r0, [r2, #12]
c0de3148:	1c40      	adds	r0, r0, #1
c0de314a:	8190      	strh	r0, [r2, #12]
c0de314c:	e7c3      	b.n	c0de30d6 <LEDGER_PROTOCOL_rx+0xba>
c0de314e:	46c0      	nop			; (mov r8, r8)
c0de3150:	00000400 	.word	0x00000400

c0de3154 <LEDGER_PROTOCOL_tx>:
c0de3154:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3156:	b085      	sub	sp, #20
c0de3158:	4b25      	ldr	r3, [pc, #148]	; (c0de31f0 <LEDGER_PROTOCOL_tx+0x9c>)
c0de315a:	464a      	mov	r2, r9
c0de315c:	58d5      	ldr	r5, [r2, r3]
c0de315e:	2800      	cmp	r0, #0
c0de3160:	d008      	beq.n	c0de3174 <LEDGER_PROTOCOL_tx+0x20>
c0de3162:	80a9      	strh	r1, [r5, #4]
c0de3164:	9004      	str	r0, [sp, #16]
c0de3166:	6028      	str	r0, [r5, #0]
c0de3168:	1da8      	adds	r0, r5, #6
c0de316a:	21a2      	movs	r1, #162	; 0xa2
c0de316c:	f005 fbf6 	bl	c0de895c <__aeabi_memclr>
c0de3170:	2100      	movs	r1, #0
c0de3172:	e004      	b.n	c0de317e <LEDGER_PROTOCOL_tx+0x2a>
c0de3174:	6828      	ldr	r0, [r5, #0]
c0de3176:	2800      	cmp	r0, #0
c0de3178:	d037      	beq.n	c0de31ea <LEDGER_PROTOCOL_tx+0x96>
c0de317a:	9004      	str	r0, [sp, #16]
c0de317c:	88e9      	ldrh	r1, [r5, #6]
c0de317e:	462b      	mov	r3, r5
c0de3180:	33a8      	adds	r3, #168	; 0xa8
c0de3182:	73a9      	strb	r1, [r5, #14]
c0de3184:	2405      	movs	r4, #5
c0de3186:	732c      	strb	r4, [r5, #12]
c0de3188:	0a08      	lsrs	r0, r1, #8
c0de318a:	7368      	strb	r0, [r5, #13]
c0de318c:	88aa      	ldrh	r2, [r5, #4]
c0de318e:	9103      	str	r1, [sp, #12]
c0de3190:	2900      	cmp	r1, #0
c0de3192:	d103      	bne.n	c0de319c <LEDGER_PROTOCOL_tx+0x48>
c0de3194:	742a      	strb	r2, [r5, #16]
c0de3196:	0a10      	lsrs	r0, r2, #8
c0de3198:	73e8      	strb	r0, [r5, #15]
c0de319a:	2407      	movs	r4, #7
c0de319c:	9201      	str	r2, [sp, #4]
c0de319e:	18a6      	adds	r6, r4, r2
c0de31a0:	8a5a      	ldrh	r2, [r3, #18]
c0de31a2:	892f      	ldrh	r7, [r5, #8]
c0de31a4:	18b9      	adds	r1, r7, r2
c0de31a6:	1928      	adds	r0, r5, r4
c0de31a8:	300a      	adds	r0, #10
c0de31aa:	9602      	str	r6, [sp, #8]
c0de31ac:	428e      	cmp	r6, r1
c0de31ae:	d20d      	bcs.n	c0de31cc <LEDGER_PROTOCOL_tx+0x78>
c0de31b0:	9904      	ldr	r1, [sp, #16]
c0de31b2:	19c9      	adds	r1, r1, r7
c0de31b4:	9e01      	ldr	r6, [sp, #4]
c0de31b6:	1bf2      	subs	r2, r6, r7
c0de31b8:	461c      	mov	r4, r3
c0de31ba:	f005 fbd5 	bl	c0de8968 <__aeabi_memcpy>
c0de31be:	4622      	mov	r2, r4
c0de31c0:	812e      	strh	r6, [r5, #8]
c0de31c2:	2000      	movs	r0, #0
c0de31c4:	6028      	str	r0, [r5, #0]
c0de31c6:	9802      	ldr	r0, [sp, #8]
c0de31c8:	1bc0      	subs	r0, r0, r7
c0de31ca:	e00d      	b.n	c0de31e8 <LEDGER_PROTOCOL_tx+0x94>
c0de31cc:	9904      	ldr	r1, [sp, #16]
c0de31ce:	19c9      	adds	r1, r1, r7
c0de31d0:	1b12      	subs	r2, r2, r4
c0de31d2:	461e      	mov	r6, r3
c0de31d4:	f005 fbc8 	bl	c0de8968 <__aeabi_memcpy>
c0de31d8:	4632      	mov	r2, r6
c0de31da:	9803      	ldr	r0, [sp, #12]
c0de31dc:	1c40      	adds	r0, r0, #1
c0de31de:	80e8      	strh	r0, [r5, #6]
c0de31e0:	8a70      	ldrh	r0, [r6, #18]
c0de31e2:	1b01      	subs	r1, r0, r4
c0de31e4:	19c9      	adds	r1, r1, r7
c0de31e6:	8129      	strh	r1, [r5, #8]
c0de31e8:	7010      	strb	r0, [r2, #0]
c0de31ea:	b005      	add	sp, #20
c0de31ec:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de31ee:	46c0      	nop			; (mov r8, r8)
c0de31f0:	00000400 	.word	0x00000400

c0de31f4 <handleApdu>:
c0de31f4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de31f6:	b08f      	sub	sp, #60	; 0x3c
c0de31f8:	460c      	mov	r4, r1
c0de31fa:	4605      	mov	r5, r0
c0de31fc:	920e      	str	r2, [sp, #56]	; 0x38
c0de31fe:	af02      	add	r7, sp, #8
c0de3200:	4638      	mov	r0, r7
c0de3202:	f005 fcf9 	bl	c0de8bf8 <setjmp>
c0de3206:	4606      	mov	r6, r0
c0de3208:	85b8      	strh	r0, [r7, #44]	; 0x2c
c0de320a:	b280      	uxth	r0, r0
c0de320c:	2800      	cmp	r0, #0
c0de320e:	d020      	beq.n	c0de3252 <handleApdu+0x5e>
c0de3210:	2805      	cmp	r0, #5
c0de3212:	d067      	beq.n	c0de32e4 <handleApdu+0xf0>
c0de3214:	4635      	mov	r5, r6
c0de3216:	a802      	add	r0, sp, #8
c0de3218:	2100      	movs	r1, #0
c0de321a:	8581      	strh	r1, [r0, #44]	; 0x2c
c0de321c:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de321e:	f002 fa47 	bl	c0de56b0 <try_context_set>
c0de3222:	200f      	movs	r0, #15
c0de3224:	0300      	lsls	r0, r0, #12
c0de3226:	4030      	ands	r0, r6
c0de3228:	2109      	movs	r1, #9
c0de322a:	0309      	lsls	r1, r1, #12
c0de322c:	4288      	cmp	r0, r1
c0de322e:	d003      	beq.n	c0de3238 <handleApdu+0x44>
c0de3230:	2103      	movs	r1, #3
c0de3232:	0349      	lsls	r1, r1, #13
c0de3234:	4288      	cmp	r0, r1
c0de3236:	d142      	bne.n	c0de32be <handleApdu+0xca>
c0de3238:	0a30      	lsrs	r0, r6, #8
c0de323a:	4938      	ldr	r1, [pc, #224]	; (c0de331c <handleApdu+0x128>)
c0de323c:	464a      	mov	r2, r9
c0de323e:	1851      	adds	r1, r2, r1
c0de3240:	6822      	ldr	r2, [r4, #0]
c0de3242:	5488      	strb	r0, [r1, r2]
c0de3244:	6820      	ldr	r0, [r4, #0]
c0de3246:	1840      	adds	r0, r0, r1
c0de3248:	7045      	strb	r5, [r0, #1]
c0de324a:	6820      	ldr	r0, [r4, #0]
c0de324c:	1c80      	adds	r0, r0, #2
c0de324e:	6020      	str	r0, [r4, #0]
c0de3250:	e027      	b.n	c0de32a2 <handleApdu+0xae>
c0de3252:	a802      	add	r0, sp, #8
c0de3254:	f002 fa2c 	bl	c0de56b0 <try_context_set>
c0de3258:	900c      	str	r0, [sp, #48]	; 0x30
c0de325a:	4830      	ldr	r0, [pc, #192]	; (c0de331c <handleApdu+0x128>)
c0de325c:	4649      	mov	r1, r9
c0de325e:	5c09      	ldrb	r1, [r1, r0]
c0de3260:	29e0      	cmp	r1, #224	; 0xe0
c0de3262:	d13b      	bne.n	c0de32dc <handleApdu+0xe8>
c0de3264:	4649      	mov	r1, r9
c0de3266:	1809      	adds	r1, r1, r0
c0de3268:	790b      	ldrb	r3, [r1, #4]
c0de326a:	1d59      	adds	r1, r3, #5
c0de326c:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0de326e:	4291      	cmp	r1, r2
c0de3270:	d134      	bne.n	c0de32dc <handleApdu+0xe8>
c0de3272:	4649      	mov	r1, r9
c0de3274:	1809      	adds	r1, r1, r0
c0de3276:	7849      	ldrb	r1, [r1, #1]
c0de3278:	2902      	cmp	r1, #2
c0de327a:	d00a      	beq.n	c0de3292 <handleApdu+0x9e>
c0de327c:	2903      	cmp	r1, #3
c0de327e:	d13a      	bne.n	c0de32f6 <handleApdu+0x102>
c0de3280:	4649      	mov	r1, r9
c0de3282:	180a      	adds	r2, r1, r0
c0de3284:	78d1      	ldrb	r1, [r2, #3]
c0de3286:	7890      	ldrb	r0, [r2, #2]
c0de3288:	9500      	str	r5, [sp, #0]
c0de328a:	1d52      	adds	r2, r2, #5
c0de328c:	f002 f835 	bl	c0de52fa <handle_sign_tx>
c0de3290:	e007      	b.n	c0de32a2 <handleApdu+0xae>
c0de3292:	4649      	mov	r1, r9
c0de3294:	180a      	adds	r2, r1, r0
c0de3296:	78d1      	ldrb	r1, [r2, #3]
c0de3298:	7890      	ldrb	r0, [r2, #2]
c0de329a:	9500      	str	r5, [sp, #0]
c0de329c:	1d52      	adds	r2, r2, #5
c0de329e:	f7fe fd7d 	bl	c0de1d9c <handle_get_address>
c0de32a2:	f002 f9fb 	bl	c0de569c <try_context_get>
c0de32a6:	a902      	add	r1, sp, #8
c0de32a8:	4288      	cmp	r0, r1
c0de32aa:	d102      	bne.n	c0de32b2 <handleApdu+0xbe>
c0de32ac:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de32ae:	f002 f9ff 	bl	c0de56b0 <try_context_set>
c0de32b2:	a802      	add	r0, sp, #8
c0de32b4:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0de32b6:	2800      	cmp	r0, #0
c0de32b8:	d112      	bne.n	c0de32e0 <handleApdu+0xec>
c0de32ba:	b00f      	add	sp, #60	; 0x3c
c0de32bc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de32be:	4818      	ldr	r0, [pc, #96]	; (c0de3320 <handleApdu+0x12c>)
c0de32c0:	4006      	ands	r6, r0
c0de32c2:	200d      	movs	r0, #13
c0de32c4:	02c0      	lsls	r0, r0, #11
c0de32c6:	1831      	adds	r1, r6, r0
c0de32c8:	0a0e      	lsrs	r6, r1, #8
c0de32ca:	1c80      	adds	r0, r0, #2
c0de32cc:	4632      	mov	r2, r6
c0de32ce:	4281      	cmp	r1, r0
c0de32d0:	4630      	mov	r0, r6
c0de32d2:	d1b2      	bne.n	c0de323a <handleApdu+0x46>
c0de32d4:	f000 fcae 	bl	c0de3c34 <ui_idle>
c0de32d8:	4630      	mov	r0, r6
c0de32da:	e7ae      	b.n	c0de323a <handleApdu+0x46>
c0de32dc:	2037      	movs	r0, #55	; 0x37
c0de32de:	0240      	lsls	r0, r0, #9
c0de32e0:	f000 fcc1 	bl	c0de3c66 <os_longjmp>
c0de32e4:	a802      	add	r0, sp, #8
c0de32e6:	2100      	movs	r1, #0
c0de32e8:	8581      	strh	r1, [r0, #44]	; 0x2c
c0de32ea:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de32ec:	f002 f9e0 	bl	c0de56b0 <try_context_set>
c0de32f0:	2005      	movs	r0, #5
c0de32f2:	f000 fcb8 	bl	c0de3c66 <os_longjmp>
c0de32f6:	2901      	cmp	r1, #1
c0de32f8:	d10c      	bne.n	c0de3314 <handleApdu+0x120>
c0de32fa:	4649      	mov	r1, r9
c0de32fc:	2201      	movs	r2, #1
c0de32fe:	540a      	strb	r2, [r1, r0]
c0de3300:	1808      	adds	r0, r1, r0
c0de3302:	2100      	movs	r1, #0
c0de3304:	7081      	strb	r1, [r0, #2]
c0de3306:	7042      	strb	r2, [r0, #1]
c0de3308:	2003      	movs	r0, #3
c0de330a:	6020      	str	r0, [r4, #0]
c0de330c:	2009      	movs	r0, #9
c0de330e:	0300      	lsls	r0, r0, #12
c0de3310:	f000 fca9 	bl	c0de3c66 <os_longjmp>
c0de3314:	206d      	movs	r0, #109	; 0x6d
c0de3316:	0200      	lsls	r0, r0, #8
c0de3318:	f000 fca5 	bl	c0de3c66 <os_longjmp>
c0de331c:	00000530 	.word	0x00000530
c0de3320:	000007ff 	.word	0x000007ff

c0de3324 <app_main>:
c0de3324:	b090      	sub	sp, #64	; 0x40
c0de3326:	2600      	movs	r6, #0
c0de3328:	960f      	str	r6, [sp, #60]	; 0x3c
c0de332a:	960e      	str	r6, [sp, #56]	; 0x38
c0de332c:	960d      	str	r6, [sp, #52]	; 0x34
c0de332e:	a80c      	add	r0, sp, #48	; 0x30
c0de3330:	8006      	strh	r6, [r0, #0]
c0de3332:	466d      	mov	r5, sp
c0de3334:	4628      	mov	r0, r5
c0de3336:	f005 fc5f 	bl	c0de8bf8 <setjmp>
c0de333a:	85a8      	strh	r0, [r5, #44]	; 0x2c
c0de333c:	b285      	uxth	r5, r0
c0de333e:	2d00      	cmp	r5, #0
c0de3340:	d016      	beq.n	c0de3370 <app_main+0x4c>
c0de3342:	2d05      	cmp	r5, #5
c0de3344:	d05a      	beq.n	c0de33fc <app_main+0xd8>
c0de3346:	4604      	mov	r4, r0
c0de3348:	4607      	mov	r7, r0
c0de334a:	4668      	mov	r0, sp
c0de334c:	8586      	strh	r6, [r0, #44]	; 0x2c
c0de334e:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de3350:	f002 f9ae 	bl	c0de56b0 <try_context_set>
c0de3354:	200f      	movs	r0, #15
c0de3356:	0301      	lsls	r1, r0, #12
c0de3358:	4021      	ands	r1, r4
c0de335a:	2009      	movs	r0, #9
c0de335c:	0300      	lsls	r0, r0, #12
c0de335e:	4281      	cmp	r1, r0
c0de3360:	d003      	beq.n	c0de336a <app_main+0x46>
c0de3362:	2203      	movs	r2, #3
c0de3364:	0352      	lsls	r2, r2, #13
c0de3366:	4291      	cmp	r1, r2
c0de3368:	d11f      	bne.n	c0de33aa <app_main+0x86>
c0de336a:	a90c      	add	r1, sp, #48	; 0x30
c0de336c:	800f      	strh	r7, [r1, #0]
c0de336e:	e023      	b.n	c0de33b8 <app_main+0x94>
c0de3370:	4668      	mov	r0, sp
c0de3372:	f002 f99d 	bl	c0de56b0 <try_context_set>
c0de3376:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de3378:	910f      	str	r1, [sp, #60]	; 0x3c
c0de337a:	960e      	str	r6, [sp, #56]	; 0x38
c0de337c:	900a      	str	r0, [sp, #40]	; 0x28
c0de337e:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de3380:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0de3382:	b2c0      	uxtb	r0, r0
c0de3384:	b289      	uxth	r1, r1
c0de3386:	f000 febf 	bl	c0de4108 <io_exchange>
c0de338a:	900f      	str	r0, [sp, #60]	; 0x3c
c0de338c:	960d      	str	r6, [sp, #52]	; 0x34
c0de338e:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de3390:	2800      	cmp	r0, #0
c0de3392:	d03b      	beq.n	c0de340c <app_main+0xe8>
c0de3394:	20ff      	movs	r0, #255	; 0xff
c0de3396:	3006      	adds	r0, #6
c0de3398:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0de339a:	4281      	cmp	r1, r0
c0de339c:	d239      	bcs.n	c0de3412 <app_main+0xee>
c0de339e:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de33a0:	a80d      	add	r0, sp, #52	; 0x34
c0de33a2:	a90e      	add	r1, sp, #56	; 0x38
c0de33a4:	f7ff ff26 	bl	c0de31f4 <handleApdu>
c0de33a8:	e01a      	b.n	c0de33e0 <app_main+0xbc>
c0de33aa:	491d      	ldr	r1, [pc, #116]	; (c0de3420 <app_main+0xfc>)
c0de33ac:	400c      	ands	r4, r1
c0de33ae:	210d      	movs	r1, #13
c0de33b0:	02c9      	lsls	r1, r1, #11
c0de33b2:	1861      	adds	r1, r4, r1
c0de33b4:	aa0c      	add	r2, sp, #48	; 0x30
c0de33b6:	8011      	strh	r1, [r2, #0]
c0de33b8:	4285      	cmp	r5, r0
c0de33ba:	d003      	beq.n	c0de33c4 <app_main+0xa0>
c0de33bc:	2010      	movs	r0, #16
c0de33be:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de33c0:	4381      	bics	r1, r0
c0de33c2:	910d      	str	r1, [sp, #52]	; 0x34
c0de33c4:	4648      	mov	r0, r9
c0de33c6:	4917      	ldr	r1, [pc, #92]	; (c0de3424 <app_main+0x100>)
c0de33c8:	1840      	adds	r0, r0, r1
c0de33ca:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de33cc:	0a09      	lsrs	r1, r1, #8
c0de33ce:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0de33d0:	5481      	strb	r1, [r0, r2]
c0de33d2:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de33d4:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0de33d6:	1810      	adds	r0, r2, r0
c0de33d8:	7041      	strb	r1, [r0, #1]
c0de33da:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de33dc:	1c80      	adds	r0, r0, #2
c0de33de:	900e      	str	r0, [sp, #56]	; 0x38
c0de33e0:	f002 f95c 	bl	c0de569c <try_context_get>
c0de33e4:	4669      	mov	r1, sp
c0de33e6:	4288      	cmp	r0, r1
c0de33e8:	d102      	bne.n	c0de33f0 <app_main+0xcc>
c0de33ea:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de33ec:	f002 f960 	bl	c0de56b0 <try_context_set>
c0de33f0:	4668      	mov	r0, sp
c0de33f2:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0de33f4:	2800      	cmp	r0, #0
c0de33f6:	d09a      	beq.n	c0de332e <app_main+0xa>
c0de33f8:	f000 fc35 	bl	c0de3c66 <os_longjmp>
c0de33fc:	4668      	mov	r0, sp
c0de33fe:	8586      	strh	r6, [r0, #44]	; 0x2c
c0de3400:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de3402:	f002 f955 	bl	c0de56b0 <try_context_set>
c0de3406:	2005      	movs	r0, #5
c0de3408:	f000 fc2d 	bl	c0de3c66 <os_longjmp>
c0de340c:	4803      	ldr	r0, [pc, #12]	; (c0de341c <app_main+0xf8>)
c0de340e:	f000 fc2a 	bl	c0de3c66 <os_longjmp>
c0de3412:	2037      	movs	r0, #55	; 0x37
c0de3414:	0240      	lsls	r0, r0, #9
c0de3416:	f000 fc26 	bl	c0de3c66 <os_longjmp>
c0de341a:	46c0      	nop			; (mov r8, r8)
c0de341c:	00006982 	.word	0x00006982
c0de3420:	000007ff 	.word	0x000007ff
c0de3424:	00000530 	.word	0x00000530

c0de3428 <io_seproxyhal_display>:
c0de3428:	b580      	push	{r7, lr}
c0de342a:	f000 fde0 	bl	c0de3fee <io_seproxyhal_display_default>
c0de342e:	bd80      	pop	{r7, pc}

c0de3430 <io_event>:
c0de3430:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3432:	b081      	sub	sp, #4
c0de3434:	4ddb      	ldr	r5, [pc, #876]	; (c0de37a4 <io_event+0x374>)
c0de3436:	4648      	mov	r0, r9
c0de3438:	5d40      	ldrb	r0, [r0, r5]
c0de343a:	280c      	cmp	r0, #12
c0de343c:	dd13      	ble.n	c0de3466 <io_event+0x36>
c0de343e:	280d      	cmp	r0, #13
c0de3440:	d03a      	beq.n	c0de34b8 <io_event+0x88>
c0de3442:	280e      	cmp	r0, #14
c0de3444:	d05d      	beq.n	c0de3502 <io_event+0xd2>
c0de3446:	2815      	cmp	r0, #21
c0de3448:	d112      	bne.n	c0de3470 <io_event+0x40>
c0de344a:	48d7      	ldr	r0, [pc, #860]	; (c0de37a8 <io_event+0x378>)
c0de344c:	4649      	mov	r1, r9
c0de344e:	1808      	adds	r0, r1, r0
c0de3450:	7980      	ldrb	r0, [r0, #6]
c0de3452:	2801      	cmp	r0, #1
c0de3454:	d10c      	bne.n	c0de3470 <io_event+0x40>
c0de3456:	4648      	mov	r0, r9
c0de3458:	1940      	adds	r0, r0, r5
c0de345a:	7980      	ldrb	r0, [r0, #6]
c0de345c:	0700      	lsls	r0, r0, #28
c0de345e:	d407      	bmi.n	c0de3470 <io_event+0x40>
c0de3460:	2005      	movs	r0, #5
c0de3462:	f000 fc00 	bl	c0de3c66 <os_longjmp>
c0de3466:	2805      	cmp	r0, #5
c0de3468:	d071      	beq.n	c0de354e <io_event+0x11e>
c0de346a:	280c      	cmp	r0, #12
c0de346c:	d100      	bne.n	c0de3470 <io_event+0x40>
c0de346e:	e369      	b.n	c0de3b44 <io_event+0x714>
c0de3470:	49fc      	ldr	r1, [pc, #1008]	; (c0de3864 <io_event+0x434>)
c0de3472:	464d      	mov	r5, r9
c0de3474:	2001      	movs	r0, #1
c0de3476:	5468      	strb	r0, [r5, r1]
c0de3478:	186c      	adds	r4, r5, r1
c0de347a:	2700      	movs	r7, #0
c0de347c:	6067      	str	r7, [r4, #4]
c0de347e:	4620      	mov	r0, r4
c0de3480:	f002 f8a0 	bl	c0de55c4 <os_ux>
c0de3484:	2007      	movs	r0, #7
c0de3486:	f002 f921 	bl	c0de56cc <os_sched_last_status>
c0de348a:	6060      	str	r0, [r4, #4]
c0de348c:	4cf6      	ldr	r4, [pc, #984]	; (c0de3868 <io_event+0x438>)
c0de348e:	5929      	ldr	r1, [r5, r4]
c0de3490:	2900      	cmp	r1, #0
c0de3492:	d100      	bne.n	c0de3496 <io_event+0x66>
c0de3494:	e084      	b.n	c0de35a0 <io_event+0x170>
c0de3496:	2006      	movs	r0, #6
c0de3498:	f002 f958 	bl	c0de574c <os_ux_get_status>
c0de349c:	2800      	cmp	r0, #0
c0de349e:	d07b      	beq.n	c0de3598 <io_event+0x168>
c0de34a0:	464d      	mov	r5, r9
c0de34a2:	592e      	ldr	r6, [r5, r4]
c0de34a4:	512f      	str	r7, [r5, r4]
c0de34a6:	2006      	movs	r0, #6
c0de34a8:	f002 f950 	bl	c0de574c <os_ux_get_status>
c0de34ac:	47b0      	blx	r6
c0de34ae:	48ed      	ldr	r0, [pc, #948]	; (c0de3864 <io_event+0x434>)
c0de34b0:	1828      	adds	r0, r5, r0
c0de34b2:	2169      	movs	r1, #105	; 0x69
c0de34b4:	6041      	str	r1, [r0, #4]
c0de34b6:	e075      	b.n	c0de35a4 <io_event+0x174>
c0de34b8:	4eea      	ldr	r6, [pc, #936]	; (c0de3864 <io_event+0x434>)
c0de34ba:	464d      	mov	r5, r9
c0de34bc:	2001      	movs	r0, #1
c0de34be:	55a8      	strb	r0, [r5, r6]
c0de34c0:	19ac      	adds	r4, r5, r6
c0de34c2:	2700      	movs	r7, #0
c0de34c4:	6067      	str	r7, [r4, #4]
c0de34c6:	4620      	mov	r0, r4
c0de34c8:	f002 f87c 	bl	c0de55c4 <os_ux>
c0de34cc:	2007      	movs	r0, #7
c0de34ce:	f002 f8fd 	bl	c0de56cc <os_sched_last_status>
c0de34d2:	6060      	str	r0, [r4, #4]
c0de34d4:	4ce4      	ldr	r4, [pc, #912]	; (c0de3868 <io_event+0x438>)
c0de34d6:	5929      	ldr	r1, [r5, r4]
c0de34d8:	2900      	cmp	r1, #0
c0de34da:	d100      	bne.n	c0de34de <io_event+0xae>
c0de34dc:	e100      	b.n	c0de36e0 <io_event+0x2b0>
c0de34de:	2006      	movs	r0, #6
c0de34e0:	f002 f934 	bl	c0de574c <os_ux_get_status>
c0de34e4:	2800      	cmp	r0, #0
c0de34e6:	d100      	bne.n	c0de34ea <io_event+0xba>
c0de34e8:	e0f7      	b.n	c0de36da <io_event+0x2aa>
c0de34ea:	464d      	mov	r5, r9
c0de34ec:	592e      	ldr	r6, [r5, r4]
c0de34ee:	512f      	str	r7, [r5, r4]
c0de34f0:	2006      	movs	r0, #6
c0de34f2:	f002 f92b 	bl	c0de574c <os_ux_get_status>
c0de34f6:	47b0      	blx	r6
c0de34f8:	4eda      	ldr	r6, [pc, #872]	; (c0de3864 <io_event+0x434>)
c0de34fa:	19a8      	adds	r0, r5, r6
c0de34fc:	2169      	movs	r1, #105	; 0x69
c0de34fe:	6041      	str	r1, [r0, #4]
c0de3500:	e0f7      	b.n	c0de36f2 <io_event+0x2c2>
c0de3502:	49d8      	ldr	r1, [pc, #864]	; (c0de3864 <io_event+0x434>)
c0de3504:	464f      	mov	r7, r9
c0de3506:	2001      	movs	r0, #1
c0de3508:	5478      	strb	r0, [r7, r1]
c0de350a:	187d      	adds	r5, r7, r1
c0de350c:	2600      	movs	r6, #0
c0de350e:	606e      	str	r6, [r5, #4]
c0de3510:	4628      	mov	r0, r5
c0de3512:	f002 f857 	bl	c0de55c4 <os_ux>
c0de3516:	2007      	movs	r0, #7
c0de3518:	f002 f8d8 	bl	c0de56cc <os_sched_last_status>
c0de351c:	4604      	mov	r4, r0
c0de351e:	6068      	str	r0, [r5, #4]
c0de3520:	4dd1      	ldr	r5, [pc, #836]	; (c0de3868 <io_event+0x438>)
c0de3522:	5978      	ldr	r0, [r7, r5]
c0de3524:	2800      	cmp	r0, #0
c0de3526:	d100      	bne.n	c0de352a <io_event+0xfa>
c0de3528:	e144      	b.n	c0de37b4 <io_event+0x384>
c0de352a:	2006      	movs	r0, #6
c0de352c:	f002 f90e 	bl	c0de574c <os_ux_get_status>
c0de3530:	2800      	cmp	r0, #0
c0de3532:	d100      	bne.n	c0de3536 <io_event+0x106>
c0de3534:	e13a      	b.n	c0de37ac <io_event+0x37c>
c0de3536:	464c      	mov	r4, r9
c0de3538:	5967      	ldr	r7, [r4, r5]
c0de353a:	5166      	str	r6, [r4, r5]
c0de353c:	2006      	movs	r0, #6
c0de353e:	f002 f905 	bl	c0de574c <os_ux_get_status>
c0de3542:	47b8      	blx	r7
c0de3544:	48c7      	ldr	r0, [pc, #796]	; (c0de3864 <io_event+0x434>)
c0de3546:	1820      	adds	r0, r4, r0
c0de3548:	2169      	movs	r1, #105	; 0x69
c0de354a:	6041      	str	r1, [r0, #4]
c0de354c:	e134      	b.n	c0de37b8 <io_event+0x388>
c0de354e:	49c5      	ldr	r1, [pc, #788]	; (c0de3864 <io_event+0x434>)
c0de3550:	464e      	mov	r6, r9
c0de3552:	2001      	movs	r0, #1
c0de3554:	5470      	strb	r0, [r6, r1]
c0de3556:	1874      	adds	r4, r6, r1
c0de3558:	2700      	movs	r7, #0
c0de355a:	6067      	str	r7, [r4, #4]
c0de355c:	4620      	mov	r0, r4
c0de355e:	f002 f831 	bl	c0de55c4 <os_ux>
c0de3562:	2007      	movs	r0, #7
c0de3564:	f002 f8b2 	bl	c0de56cc <os_sched_last_status>
c0de3568:	6060      	str	r0, [r4, #4]
c0de356a:	4cbf      	ldr	r4, [pc, #764]	; (c0de3868 <io_event+0x438>)
c0de356c:	5931      	ldr	r1, [r6, r4]
c0de356e:	2900      	cmp	r1, #0
c0de3570:	d100      	bne.n	c0de3574 <io_event+0x144>
c0de3572:	e0b0      	b.n	c0de36d6 <io_event+0x2a6>
c0de3574:	2006      	movs	r0, #6
c0de3576:	f002 f8e9 	bl	c0de574c <os_ux_get_status>
c0de357a:	2800      	cmp	r0, #0
c0de357c:	d100      	bne.n	c0de3580 <io_event+0x150>
c0de357e:	e1da      	b.n	c0de3936 <io_event+0x506>
c0de3580:	464d      	mov	r5, r9
c0de3582:	592e      	ldr	r6, [r5, r4]
c0de3584:	512f      	str	r7, [r5, r4]
c0de3586:	2006      	movs	r0, #6
c0de3588:	f002 f8e0 	bl	c0de574c <os_ux_get_status>
c0de358c:	47b0      	blx	r6
c0de358e:	4ab5      	ldr	r2, [pc, #724]	; (c0de3864 <io_event+0x434>)
c0de3590:	18a8      	adds	r0, r5, r2
c0de3592:	2169      	movs	r1, #105	; 0x69
c0de3594:	6041      	str	r1, [r0, #4]
c0de3596:	e1db      	b.n	c0de3950 <io_event+0x520>
c0de3598:	4648      	mov	r0, r9
c0de359a:	49b2      	ldr	r1, [pc, #712]	; (c0de3864 <io_event+0x434>)
c0de359c:	1840      	adds	r0, r0, r1
c0de359e:	6840      	ldr	r0, [r0, #4]
c0de35a0:	2869      	cmp	r0, #105	; 0x69
c0de35a2:	d155      	bne.n	c0de3650 <io_event+0x220>
c0de35a4:	48b1      	ldr	r0, [pc, #708]	; (c0de386c <io_event+0x43c>)
c0de35a6:	464e      	mov	r6, r9
c0de35a8:	1834      	adds	r4, r6, r0
c0de35aa:	f000 fcf5 	bl	c0de3f98 <io_seproxyhal_init_ux>
c0de35ae:	f000 fcf5 	bl	c0de3f9c <io_seproxyhal_init_button>
c0de35b2:	25ce      	movs	r5, #206	; 0xce
c0de35b4:	5367      	strh	r7, [r4, r5]
c0de35b6:	48ab      	ldr	r0, [pc, #684]	; (c0de3864 <io_event+0x434>)
c0de35b8:	1836      	adds	r6, r6, r0
c0de35ba:	2007      	movs	r0, #7
c0de35bc:	f002 f886 	bl	c0de56cc <os_sched_last_status>
c0de35c0:	6070      	str	r0, [r6, #4]
c0de35c2:	26d0      	movs	r6, #208	; 0xd0
c0de35c4:	59a1      	ldr	r1, [r4, r6]
c0de35c6:	2900      	cmp	r1, #0
c0de35c8:	d100      	bne.n	c0de35cc <io_event+0x19c>
c0de35ca:	e2bb      	b.n	c0de3b44 <io_event+0x714>
c0de35cc:	2800      	cmp	r0, #0
c0de35ce:	d100      	bne.n	c0de35d2 <io_event+0x1a2>
c0de35d0:	e2b8      	b.n	c0de3b44 <io_event+0x714>
c0de35d2:	2897      	cmp	r0, #151	; 0x97
c0de35d4:	d100      	bne.n	c0de35d8 <io_event+0x1a8>
c0de35d6:	e2b5      	b.n	c0de3b44 <io_event+0x714>
c0de35d8:	4648      	mov	r0, r9
c0de35da:	49a4      	ldr	r1, [pc, #656]	; (c0de386c <io_event+0x43c>)
c0de35dc:	1840      	adds	r0, r0, r1
c0de35de:	27d4      	movs	r7, #212	; 0xd4
c0de35e0:	5dc1      	ldrb	r1, [r0, r7]
c0de35e2:	5b40      	ldrh	r0, [r0, r5]
c0de35e4:	4288      	cmp	r0, r1
c0de35e6:	d300      	bcc.n	c0de35ea <io_event+0x1ba>
c0de35e8:	e2ac      	b.n	c0de3b44 <io_event+0x714>
c0de35ea:	f001 ffc3 	bl	c0de5574 <os_perso_isonboarded>
c0de35ee:	28aa      	cmp	r0, #170	; 0xaa
c0de35f0:	d104      	bne.n	c0de35fc <io_event+0x1cc>
c0de35f2:	f001 ffdb 	bl	c0de55ac <os_global_pin_is_validated>
c0de35f6:	28aa      	cmp	r0, #170	; 0xaa
c0de35f8:	d000      	beq.n	c0de35fc <io_event+0x1cc>
c0de35fa:	e2a3      	b.n	c0de3b44 <io_event+0x714>
c0de35fc:	4648      	mov	r0, r9
c0de35fe:	4c9b      	ldr	r4, [pc, #620]	; (c0de386c <io_event+0x43c>)
c0de3600:	1900      	adds	r0, r0, r4
c0de3602:	5dc2      	ldrb	r2, [r0, r7]
c0de3604:	5b41      	ldrh	r1, [r0, r5]
c0de3606:	4291      	cmp	r1, r2
c0de3608:	d300      	bcc.n	c0de360c <io_event+0x1dc>
c0de360a:	e286      	b.n	c0de3b1a <io_event+0x6ea>
c0de360c:	4608      	mov	r0, r1
c0de360e:	464a      	mov	r2, r9
c0de3610:	1912      	adds	r2, r2, r4
c0de3612:	23dc      	movs	r3, #220	; 0xdc
c0de3614:	58d3      	ldr	r3, [r2, r3]
c0de3616:	5992      	ldr	r2, [r2, r6]
c0de3618:	0140      	lsls	r0, r0, #5
c0de361a:	1810      	adds	r0, r2, r0
c0de361c:	2b00      	cmp	r3, #0
c0de361e:	d006      	beq.n	c0de362e <io_event+0x1fe>
c0de3620:	4798      	blx	r3
c0de3622:	2800      	cmp	r0, #0
c0de3624:	d00a      	beq.n	c0de363c <io_event+0x20c>
c0de3626:	4649      	mov	r1, r9
c0de3628:	190a      	adds	r2, r1, r4
c0de362a:	5b51      	ldrh	r1, [r2, r5]
c0de362c:	5992      	ldr	r2, [r2, r6]
c0de362e:	2801      	cmp	r0, #1
c0de3630:	d102      	bne.n	c0de3638 <io_event+0x208>
c0de3632:	b288      	uxth	r0, r1
c0de3634:	0140      	lsls	r0, r0, #5
c0de3636:	1810      	adds	r0, r2, r0
c0de3638:	f000 fcd9 	bl	c0de3fee <io_seproxyhal_display_default>
c0de363c:	4648      	mov	r0, r9
c0de363e:	1900      	adds	r0, r0, r4
c0de3640:	5b41      	ldrh	r1, [r0, r5]
c0de3642:	1c49      	adds	r1, r1, #1
c0de3644:	5341      	strh	r1, [r0, r5]
c0de3646:	5dc2      	ldrb	r2, [r0, r7]
c0de3648:	b288      	uxth	r0, r1
c0de364a:	4290      	cmp	r0, r2
c0de364c:	d3df      	bcc.n	c0de360e <io_event+0x1de>
c0de364e:	e265      	b.n	c0de3b1c <io_event+0x6ec>
c0de3650:	4c86      	ldr	r4, [pc, #536]	; (c0de386c <io_event+0x43c>)
c0de3652:	4648      	mov	r0, r9
c0de3654:	1900      	adds	r0, r0, r4
c0de3656:	25d0      	movs	r5, #208	; 0xd0
c0de3658:	5940      	ldr	r0, [r0, r5]
c0de365a:	2800      	cmp	r0, #0
c0de365c:	d100      	bne.n	c0de3660 <io_event+0x230>
c0de365e:	e267      	b.n	c0de3b30 <io_event+0x700>
c0de3660:	4648      	mov	r0, r9
c0de3662:	1900      	adds	r0, r0, r4
c0de3664:	26d4      	movs	r6, #212	; 0xd4
c0de3666:	5d81      	ldrb	r1, [r0, r6]
c0de3668:	27ce      	movs	r7, #206	; 0xce
c0de366a:	5bc0      	ldrh	r0, [r0, r7]
c0de366c:	4288      	cmp	r0, r1
c0de366e:	d300      	bcc.n	c0de3672 <io_event+0x242>
c0de3670:	e25e      	b.n	c0de3b30 <io_event+0x700>
c0de3672:	f001 ff7f 	bl	c0de5574 <os_perso_isonboarded>
c0de3676:	28aa      	cmp	r0, #170	; 0xaa
c0de3678:	d104      	bne.n	c0de3684 <io_event+0x254>
c0de367a:	f001 ff97 	bl	c0de55ac <os_global_pin_is_validated>
c0de367e:	28aa      	cmp	r0, #170	; 0xaa
c0de3680:	d000      	beq.n	c0de3684 <io_event+0x254>
c0de3682:	e255      	b.n	c0de3b30 <io_event+0x700>
c0de3684:	4648      	mov	r0, r9
c0de3686:	1900      	adds	r0, r0, r4
c0de3688:	5d82      	ldrb	r2, [r0, r6]
c0de368a:	5bc1      	ldrh	r1, [r0, r7]
c0de368c:	4291      	cmp	r1, r2
c0de368e:	d300      	bcc.n	c0de3692 <io_event+0x262>
c0de3690:	e249      	b.n	c0de3b26 <io_event+0x6f6>
c0de3692:	4608      	mov	r0, r1
c0de3694:	464a      	mov	r2, r9
c0de3696:	1912      	adds	r2, r2, r4
c0de3698:	23dc      	movs	r3, #220	; 0xdc
c0de369a:	58d3      	ldr	r3, [r2, r3]
c0de369c:	5952      	ldr	r2, [r2, r5]
c0de369e:	0140      	lsls	r0, r0, #5
c0de36a0:	1810      	adds	r0, r2, r0
c0de36a2:	2b00      	cmp	r3, #0
c0de36a4:	d006      	beq.n	c0de36b4 <io_event+0x284>
c0de36a6:	4798      	blx	r3
c0de36a8:	2800      	cmp	r0, #0
c0de36aa:	d00a      	beq.n	c0de36c2 <io_event+0x292>
c0de36ac:	4649      	mov	r1, r9
c0de36ae:	190a      	adds	r2, r1, r4
c0de36b0:	5bd1      	ldrh	r1, [r2, r7]
c0de36b2:	5952      	ldr	r2, [r2, r5]
c0de36b4:	2801      	cmp	r0, #1
c0de36b6:	d102      	bne.n	c0de36be <io_event+0x28e>
c0de36b8:	b288      	uxth	r0, r1
c0de36ba:	0140      	lsls	r0, r0, #5
c0de36bc:	1810      	adds	r0, r2, r0
c0de36be:	f000 fc96 	bl	c0de3fee <io_seproxyhal_display_default>
c0de36c2:	4648      	mov	r0, r9
c0de36c4:	1900      	adds	r0, r0, r4
c0de36c6:	5bc1      	ldrh	r1, [r0, r7]
c0de36c8:	1c49      	adds	r1, r1, #1
c0de36ca:	53c1      	strh	r1, [r0, r7]
c0de36cc:	5d82      	ldrb	r2, [r0, r6]
c0de36ce:	b288      	uxth	r0, r1
c0de36d0:	4290      	cmp	r0, r2
c0de36d2:	d3df      	bcc.n	c0de3694 <io_event+0x264>
c0de36d4:	e228      	b.n	c0de3b28 <io_event+0x6f8>
c0de36d6:	4a63      	ldr	r2, [pc, #396]	; (c0de3864 <io_event+0x434>)
c0de36d8:	e131      	b.n	c0de393e <io_event+0x50e>
c0de36da:	4648      	mov	r0, r9
c0de36dc:	1980      	adds	r0, r0, r6
c0de36de:	6840      	ldr	r0, [r0, #4]
c0de36e0:	2800      	cmp	r0, #0
c0de36e2:	d100      	bne.n	c0de36e6 <io_event+0x2b6>
c0de36e4:	e22e      	b.n	c0de3b44 <io_event+0x714>
c0de36e6:	2897      	cmp	r0, #151	; 0x97
c0de36e8:	d100      	bne.n	c0de36ec <io_event+0x2bc>
c0de36ea:	e22b      	b.n	c0de3b44 <io_event+0x714>
c0de36ec:	2869      	cmp	r0, #105	; 0x69
c0de36ee:	d000      	beq.n	c0de36f2 <io_event+0x2c2>
c0de36f0:	e187      	b.n	c0de3a02 <io_event+0x5d2>
c0de36f2:	485e      	ldr	r0, [pc, #376]	; (c0de386c <io_event+0x43c>)
c0de36f4:	4635      	mov	r5, r6
c0de36f6:	464e      	mov	r6, r9
c0de36f8:	1834      	adds	r4, r6, r0
c0de36fa:	f000 fc4d 	bl	c0de3f98 <io_seproxyhal_init_ux>
c0de36fe:	f000 fc4d 	bl	c0de3f9c <io_seproxyhal_init_button>
c0de3702:	20ce      	movs	r0, #206	; 0xce
c0de3704:	9000      	str	r0, [sp, #0]
c0de3706:	5227      	strh	r7, [r4, r0]
c0de3708:	1976      	adds	r6, r6, r5
c0de370a:	2007      	movs	r0, #7
c0de370c:	f001 ffde 	bl	c0de56cc <os_sched_last_status>
c0de3710:	6070      	str	r0, [r6, #4]
c0de3712:	26d0      	movs	r6, #208	; 0xd0
c0de3714:	59a1      	ldr	r1, [r4, r6]
c0de3716:	2900      	cmp	r1, #0
c0de3718:	d100      	bne.n	c0de371c <io_event+0x2ec>
c0de371a:	e213      	b.n	c0de3b44 <io_event+0x714>
c0de371c:	2800      	cmp	r0, #0
c0de371e:	d100      	bne.n	c0de3722 <io_event+0x2f2>
c0de3720:	e210      	b.n	c0de3b44 <io_event+0x714>
c0de3722:	2897      	cmp	r0, #151	; 0x97
c0de3724:	d100      	bne.n	c0de3728 <io_event+0x2f8>
c0de3726:	e20d      	b.n	c0de3b44 <io_event+0x714>
c0de3728:	4648      	mov	r0, r9
c0de372a:	4950      	ldr	r1, [pc, #320]	; (c0de386c <io_event+0x43c>)
c0de372c:	1840      	adds	r0, r0, r1
c0de372e:	27d4      	movs	r7, #212	; 0xd4
c0de3730:	5dc1      	ldrb	r1, [r0, r7]
c0de3732:	9a00      	ldr	r2, [sp, #0]
c0de3734:	5a80      	ldrh	r0, [r0, r2]
c0de3736:	4288      	cmp	r0, r1
c0de3738:	d300      	bcc.n	c0de373c <io_event+0x30c>
c0de373a:	e203      	b.n	c0de3b44 <io_event+0x714>
c0de373c:	f001 ff1a 	bl	c0de5574 <os_perso_isonboarded>
c0de3740:	28aa      	cmp	r0, #170	; 0xaa
c0de3742:	d104      	bne.n	c0de374e <io_event+0x31e>
c0de3744:	f001 ff32 	bl	c0de55ac <os_global_pin_is_validated>
c0de3748:	28aa      	cmp	r0, #170	; 0xaa
c0de374a:	d000      	beq.n	c0de374e <io_event+0x31e>
c0de374c:	e1fa      	b.n	c0de3b44 <io_event+0x714>
c0de374e:	4648      	mov	r0, r9
c0de3750:	4c46      	ldr	r4, [pc, #280]	; (c0de386c <io_event+0x43c>)
c0de3752:	1900      	adds	r0, r0, r4
c0de3754:	5dc2      	ldrb	r2, [r0, r7]
c0de3756:	9d00      	ldr	r5, [sp, #0]
c0de3758:	5b41      	ldrh	r1, [r0, r5]
c0de375a:	4291      	cmp	r1, r2
c0de375c:	d300      	bcc.n	c0de3760 <io_event+0x330>
c0de375e:	e1dc      	b.n	c0de3b1a <io_event+0x6ea>
c0de3760:	4608      	mov	r0, r1
c0de3762:	464a      	mov	r2, r9
c0de3764:	1912      	adds	r2, r2, r4
c0de3766:	23dc      	movs	r3, #220	; 0xdc
c0de3768:	58d3      	ldr	r3, [r2, r3]
c0de376a:	5992      	ldr	r2, [r2, r6]
c0de376c:	0140      	lsls	r0, r0, #5
c0de376e:	1810      	adds	r0, r2, r0
c0de3770:	2b00      	cmp	r3, #0
c0de3772:	d006      	beq.n	c0de3782 <io_event+0x352>
c0de3774:	4798      	blx	r3
c0de3776:	2800      	cmp	r0, #0
c0de3778:	d00a      	beq.n	c0de3790 <io_event+0x360>
c0de377a:	4649      	mov	r1, r9
c0de377c:	190a      	adds	r2, r1, r4
c0de377e:	5b51      	ldrh	r1, [r2, r5]
c0de3780:	5992      	ldr	r2, [r2, r6]
c0de3782:	2801      	cmp	r0, #1
c0de3784:	d102      	bne.n	c0de378c <io_event+0x35c>
c0de3786:	b288      	uxth	r0, r1
c0de3788:	0140      	lsls	r0, r0, #5
c0de378a:	1810      	adds	r0, r2, r0
c0de378c:	f000 fc2f 	bl	c0de3fee <io_seproxyhal_display_default>
c0de3790:	4648      	mov	r0, r9
c0de3792:	1900      	adds	r0, r0, r4
c0de3794:	5b41      	ldrh	r1, [r0, r5]
c0de3796:	1c49      	adds	r1, r1, #1
c0de3798:	5341      	strh	r1, [r0, r5]
c0de379a:	5dc2      	ldrb	r2, [r0, r7]
c0de379c:	b288      	uxth	r0, r1
c0de379e:	4290      	cmp	r0, r2
c0de37a0:	d3df      	bcc.n	c0de3762 <io_event+0x332>
c0de37a2:	e1bb      	b.n	c0de3b1c <io_event+0x6ec>
c0de37a4:	00000404 	.word	0x00000404
c0de37a8:	00000684 	.word	0x00000684
c0de37ac:	4648      	mov	r0, r9
c0de37ae:	49ee      	ldr	r1, [pc, #952]	; (c0de3b68 <io_event+0x738>)
c0de37b0:	1840      	adds	r0, r0, r1
c0de37b2:	6844      	ldr	r4, [r0, #4]
c0de37b4:	2c69      	cmp	r4, #105	; 0x69
c0de37b6:	d15b      	bne.n	c0de3870 <io_event+0x440>
c0de37b8:	48ec      	ldr	r0, [pc, #944]	; (c0de3b6c <io_event+0x73c>)
c0de37ba:	464c      	mov	r4, r9
c0de37bc:	1827      	adds	r7, r4, r0
c0de37be:	f000 fbeb 	bl	c0de3f98 <io_seproxyhal_init_ux>
c0de37c2:	f000 fbeb 	bl	c0de3f9c <io_seproxyhal_init_button>
c0de37c6:	25ce      	movs	r5, #206	; 0xce
c0de37c8:	537e      	strh	r6, [r7, r5]
c0de37ca:	48e7      	ldr	r0, [pc, #924]	; (c0de3b68 <io_event+0x738>)
c0de37cc:	1824      	adds	r4, r4, r0
c0de37ce:	2007      	movs	r0, #7
c0de37d0:	f001 ff7c 	bl	c0de56cc <os_sched_last_status>
c0de37d4:	6060      	str	r0, [r4, #4]
c0de37d6:	26d0      	movs	r6, #208	; 0xd0
c0de37d8:	59b9      	ldr	r1, [r7, r6]
c0de37da:	2900      	cmp	r1, #0
c0de37dc:	d100      	bne.n	c0de37e0 <io_event+0x3b0>
c0de37de:	e1b1      	b.n	c0de3b44 <io_event+0x714>
c0de37e0:	2800      	cmp	r0, #0
c0de37e2:	d100      	bne.n	c0de37e6 <io_event+0x3b6>
c0de37e4:	e1ae      	b.n	c0de3b44 <io_event+0x714>
c0de37e6:	2897      	cmp	r0, #151	; 0x97
c0de37e8:	d100      	bne.n	c0de37ec <io_event+0x3bc>
c0de37ea:	e1ab      	b.n	c0de3b44 <io_event+0x714>
c0de37ec:	4648      	mov	r0, r9
c0de37ee:	49df      	ldr	r1, [pc, #892]	; (c0de3b6c <io_event+0x73c>)
c0de37f0:	1840      	adds	r0, r0, r1
c0de37f2:	27d4      	movs	r7, #212	; 0xd4
c0de37f4:	5dc1      	ldrb	r1, [r0, r7]
c0de37f6:	5b40      	ldrh	r0, [r0, r5]
c0de37f8:	4288      	cmp	r0, r1
c0de37fa:	d300      	bcc.n	c0de37fe <io_event+0x3ce>
c0de37fc:	e1a2      	b.n	c0de3b44 <io_event+0x714>
c0de37fe:	f001 feb9 	bl	c0de5574 <os_perso_isonboarded>
c0de3802:	28aa      	cmp	r0, #170	; 0xaa
c0de3804:	d104      	bne.n	c0de3810 <io_event+0x3e0>
c0de3806:	f001 fed1 	bl	c0de55ac <os_global_pin_is_validated>
c0de380a:	28aa      	cmp	r0, #170	; 0xaa
c0de380c:	d000      	beq.n	c0de3810 <io_event+0x3e0>
c0de380e:	e199      	b.n	c0de3b44 <io_event+0x714>
c0de3810:	4648      	mov	r0, r9
c0de3812:	4cd6      	ldr	r4, [pc, #856]	; (c0de3b6c <io_event+0x73c>)
c0de3814:	1900      	adds	r0, r0, r4
c0de3816:	5dc2      	ldrb	r2, [r0, r7]
c0de3818:	5b41      	ldrh	r1, [r0, r5]
c0de381a:	4291      	cmp	r1, r2
c0de381c:	d300      	bcc.n	c0de3820 <io_event+0x3f0>
c0de381e:	e17c      	b.n	c0de3b1a <io_event+0x6ea>
c0de3820:	4608      	mov	r0, r1
c0de3822:	464a      	mov	r2, r9
c0de3824:	1912      	adds	r2, r2, r4
c0de3826:	23dc      	movs	r3, #220	; 0xdc
c0de3828:	58d3      	ldr	r3, [r2, r3]
c0de382a:	5992      	ldr	r2, [r2, r6]
c0de382c:	0140      	lsls	r0, r0, #5
c0de382e:	1810      	adds	r0, r2, r0
c0de3830:	2b00      	cmp	r3, #0
c0de3832:	d006      	beq.n	c0de3842 <io_event+0x412>
c0de3834:	4798      	blx	r3
c0de3836:	2800      	cmp	r0, #0
c0de3838:	d00a      	beq.n	c0de3850 <io_event+0x420>
c0de383a:	4649      	mov	r1, r9
c0de383c:	190a      	adds	r2, r1, r4
c0de383e:	5b51      	ldrh	r1, [r2, r5]
c0de3840:	5992      	ldr	r2, [r2, r6]
c0de3842:	2801      	cmp	r0, #1
c0de3844:	d102      	bne.n	c0de384c <io_event+0x41c>
c0de3846:	b288      	uxth	r0, r1
c0de3848:	0140      	lsls	r0, r0, #5
c0de384a:	1810      	adds	r0, r2, r0
c0de384c:	f000 fbcf 	bl	c0de3fee <io_seproxyhal_display_default>
c0de3850:	4648      	mov	r0, r9
c0de3852:	1900      	adds	r0, r0, r4
c0de3854:	5b41      	ldrh	r1, [r0, r5]
c0de3856:	1c49      	adds	r1, r1, #1
c0de3858:	5341      	strh	r1, [r0, r5]
c0de385a:	5dc2      	ldrb	r2, [r0, r7]
c0de385c:	b288      	uxth	r0, r1
c0de385e:	4290      	cmp	r0, r2
c0de3860:	d3df      	bcc.n	c0de3822 <io_event+0x3f2>
c0de3862:	e15b      	b.n	c0de3b1c <io_event+0x6ec>
c0de3864:	00000170 	.word	0x00000170
c0de3868:	0000073c 	.word	0x0000073c
c0de386c:	0000005c 	.word	0x0000005c
c0de3870:	4dbe      	ldr	r5, [pc, #760]	; (c0de3b6c <io_event+0x73c>)
c0de3872:	4648      	mov	r0, r9
c0de3874:	1941      	adds	r1, r0, r5
c0de3876:	20e8      	movs	r0, #232	; 0xe8
c0de3878:	5809      	ldr	r1, [r1, r0]
c0de387a:	2900      	cmp	r1, #0
c0de387c:	d013      	beq.n	c0de38a6 <io_event+0x476>
c0de387e:	460a      	mov	r2, r1
c0de3880:	3a64      	subs	r2, #100	; 0x64
c0de3882:	d200      	bcs.n	c0de3886 <io_event+0x456>
c0de3884:	4632      	mov	r2, r6
c0de3886:	464b      	mov	r3, r9
c0de3888:	195b      	adds	r3, r3, r5
c0de388a:	501a      	str	r2, [r3, r0]
c0de388c:	2964      	cmp	r1, #100	; 0x64
c0de388e:	d80a      	bhi.n	c0de38a6 <io_event+0x476>
c0de3890:	21e4      	movs	r1, #228	; 0xe4
c0de3892:	5859      	ldr	r1, [r3, r1]
c0de3894:	2900      	cmp	r1, #0
c0de3896:	d006      	beq.n	c0de38a6 <io_event+0x476>
c0de3898:	464a      	mov	r2, r9
c0de389a:	1952      	adds	r2, r2, r5
c0de389c:	23ec      	movs	r3, #236	; 0xec
c0de389e:	58d3      	ldr	r3, [r2, r3]
c0de38a0:	5013      	str	r3, [r2, r0]
c0de38a2:	2000      	movs	r0, #0
c0de38a4:	4788      	blx	r1
c0de38a6:	2c00      	cmp	r4, #0
c0de38a8:	d100      	bne.n	c0de38ac <io_event+0x47c>
c0de38aa:	e14b      	b.n	c0de3b44 <io_event+0x714>
c0de38ac:	2c97      	cmp	r4, #151	; 0x97
c0de38ae:	d100      	bne.n	c0de38b2 <io_event+0x482>
c0de38b0:	e148      	b.n	c0de3b44 <io_event+0x714>
c0de38b2:	4648      	mov	r0, r9
c0de38b4:	1940      	adds	r0, r0, r5
c0de38b6:	24d0      	movs	r4, #208	; 0xd0
c0de38b8:	5900      	ldr	r0, [r0, r4]
c0de38ba:	2800      	cmp	r0, #0
c0de38bc:	d100      	bne.n	c0de38c0 <io_event+0x490>
c0de38be:	e14f      	b.n	c0de3b60 <io_event+0x730>
c0de38c0:	4648      	mov	r0, r9
c0de38c2:	1940      	adds	r0, r0, r5
c0de38c4:	26d4      	movs	r6, #212	; 0xd4
c0de38c6:	5d81      	ldrb	r1, [r0, r6]
c0de38c8:	27ce      	movs	r7, #206	; 0xce
c0de38ca:	5bc0      	ldrh	r0, [r0, r7]
c0de38cc:	4288      	cmp	r0, r1
c0de38ce:	d300      	bcc.n	c0de38d2 <io_event+0x4a2>
c0de38d0:	e146      	b.n	c0de3b60 <io_event+0x730>
c0de38d2:	f001 fe4f 	bl	c0de5574 <os_perso_isonboarded>
c0de38d6:	28aa      	cmp	r0, #170	; 0xaa
c0de38d8:	d104      	bne.n	c0de38e4 <io_event+0x4b4>
c0de38da:	f001 fe67 	bl	c0de55ac <os_global_pin_is_validated>
c0de38de:	28aa      	cmp	r0, #170	; 0xaa
c0de38e0:	d000      	beq.n	c0de38e4 <io_event+0x4b4>
c0de38e2:	e13d      	b.n	c0de3b60 <io_event+0x730>
c0de38e4:	4648      	mov	r0, r9
c0de38e6:	1940      	adds	r0, r0, r5
c0de38e8:	5d82      	ldrb	r2, [r0, r6]
c0de38ea:	5bc1      	ldrh	r1, [r0, r7]
c0de38ec:	4291      	cmp	r1, r2
c0de38ee:	d300      	bcc.n	c0de38f2 <io_event+0x4c2>
c0de38f0:	e131      	b.n	c0de3b56 <io_event+0x726>
c0de38f2:	4608      	mov	r0, r1
c0de38f4:	464a      	mov	r2, r9
c0de38f6:	1952      	adds	r2, r2, r5
c0de38f8:	23dc      	movs	r3, #220	; 0xdc
c0de38fa:	58d3      	ldr	r3, [r2, r3]
c0de38fc:	5912      	ldr	r2, [r2, r4]
c0de38fe:	0140      	lsls	r0, r0, #5
c0de3900:	1810      	adds	r0, r2, r0
c0de3902:	2b00      	cmp	r3, #0
c0de3904:	d006      	beq.n	c0de3914 <io_event+0x4e4>
c0de3906:	4798      	blx	r3
c0de3908:	2800      	cmp	r0, #0
c0de390a:	d00a      	beq.n	c0de3922 <io_event+0x4f2>
c0de390c:	4649      	mov	r1, r9
c0de390e:	194a      	adds	r2, r1, r5
c0de3910:	5bd1      	ldrh	r1, [r2, r7]
c0de3912:	5912      	ldr	r2, [r2, r4]
c0de3914:	2801      	cmp	r0, #1
c0de3916:	d102      	bne.n	c0de391e <io_event+0x4ee>
c0de3918:	b288      	uxth	r0, r1
c0de391a:	0140      	lsls	r0, r0, #5
c0de391c:	1810      	adds	r0, r2, r0
c0de391e:	f000 fb66 	bl	c0de3fee <io_seproxyhal_display_default>
c0de3922:	4648      	mov	r0, r9
c0de3924:	1940      	adds	r0, r0, r5
c0de3926:	5bc1      	ldrh	r1, [r0, r7]
c0de3928:	1c49      	adds	r1, r1, #1
c0de392a:	53c1      	strh	r1, [r0, r7]
c0de392c:	5d82      	ldrb	r2, [r0, r6]
c0de392e:	b288      	uxth	r0, r1
c0de3930:	4290      	cmp	r0, r2
c0de3932:	d3df      	bcc.n	c0de38f4 <io_event+0x4c4>
c0de3934:	e110      	b.n	c0de3b58 <io_event+0x728>
c0de3936:	4648      	mov	r0, r9
c0de3938:	4a8b      	ldr	r2, [pc, #556]	; (c0de3b68 <io_event+0x738>)
c0de393a:	1880      	adds	r0, r0, r2
c0de393c:	6840      	ldr	r0, [r0, #4]
c0de393e:	2800      	cmp	r0, #0
c0de3940:	d100      	bne.n	c0de3944 <io_event+0x514>
c0de3942:	e0ff      	b.n	c0de3b44 <io_event+0x714>
c0de3944:	2897      	cmp	r0, #151	; 0x97
c0de3946:	d100      	bne.n	c0de394a <io_event+0x51a>
c0de3948:	e0fc      	b.n	c0de3b44 <io_event+0x714>
c0de394a:	2869      	cmp	r0, #105	; 0x69
c0de394c:	d000      	beq.n	c0de3950 <io_event+0x520>
c0de394e:	e099      	b.n	c0de3a84 <io_event+0x654>
c0de3950:	4886      	ldr	r0, [pc, #536]	; (c0de3b6c <io_event+0x73c>)
c0de3952:	464e      	mov	r6, r9
c0de3954:	1834      	adds	r4, r6, r0
c0de3956:	4615      	mov	r5, r2
c0de3958:	f000 fb1e 	bl	c0de3f98 <io_seproxyhal_init_ux>
c0de395c:	f000 fb1e 	bl	c0de3f9c <io_seproxyhal_init_button>
c0de3960:	20ce      	movs	r0, #206	; 0xce
c0de3962:	9000      	str	r0, [sp, #0]
c0de3964:	5227      	strh	r7, [r4, r0]
c0de3966:	1976      	adds	r6, r6, r5
c0de3968:	2007      	movs	r0, #7
c0de396a:	f001 feaf 	bl	c0de56cc <os_sched_last_status>
c0de396e:	6070      	str	r0, [r6, #4]
c0de3970:	26d0      	movs	r6, #208	; 0xd0
c0de3972:	59a1      	ldr	r1, [r4, r6]
c0de3974:	2900      	cmp	r1, #0
c0de3976:	d100      	bne.n	c0de397a <io_event+0x54a>
c0de3978:	e0e4      	b.n	c0de3b44 <io_event+0x714>
c0de397a:	2800      	cmp	r0, #0
c0de397c:	d100      	bne.n	c0de3980 <io_event+0x550>
c0de397e:	e0e1      	b.n	c0de3b44 <io_event+0x714>
c0de3980:	2897      	cmp	r0, #151	; 0x97
c0de3982:	d100      	bne.n	c0de3986 <io_event+0x556>
c0de3984:	e0de      	b.n	c0de3b44 <io_event+0x714>
c0de3986:	4648      	mov	r0, r9
c0de3988:	4978      	ldr	r1, [pc, #480]	; (c0de3b6c <io_event+0x73c>)
c0de398a:	1840      	adds	r0, r0, r1
c0de398c:	27d4      	movs	r7, #212	; 0xd4
c0de398e:	5dc1      	ldrb	r1, [r0, r7]
c0de3990:	9a00      	ldr	r2, [sp, #0]
c0de3992:	5a80      	ldrh	r0, [r0, r2]
c0de3994:	4288      	cmp	r0, r1
c0de3996:	d300      	bcc.n	c0de399a <io_event+0x56a>
c0de3998:	e0d4      	b.n	c0de3b44 <io_event+0x714>
c0de399a:	f001 fdeb 	bl	c0de5574 <os_perso_isonboarded>
c0de399e:	28aa      	cmp	r0, #170	; 0xaa
c0de39a0:	d104      	bne.n	c0de39ac <io_event+0x57c>
c0de39a2:	f001 fe03 	bl	c0de55ac <os_global_pin_is_validated>
c0de39a6:	28aa      	cmp	r0, #170	; 0xaa
c0de39a8:	d000      	beq.n	c0de39ac <io_event+0x57c>
c0de39aa:	e0cb      	b.n	c0de3b44 <io_event+0x714>
c0de39ac:	4648      	mov	r0, r9
c0de39ae:	4c6f      	ldr	r4, [pc, #444]	; (c0de3b6c <io_event+0x73c>)
c0de39b0:	1900      	adds	r0, r0, r4
c0de39b2:	5dc2      	ldrb	r2, [r0, r7]
c0de39b4:	9d00      	ldr	r5, [sp, #0]
c0de39b6:	5b41      	ldrh	r1, [r0, r5]
c0de39b8:	4291      	cmp	r1, r2
c0de39ba:	d300      	bcc.n	c0de39be <io_event+0x58e>
c0de39bc:	e0ad      	b.n	c0de3b1a <io_event+0x6ea>
c0de39be:	4608      	mov	r0, r1
c0de39c0:	464a      	mov	r2, r9
c0de39c2:	1912      	adds	r2, r2, r4
c0de39c4:	23dc      	movs	r3, #220	; 0xdc
c0de39c6:	58d3      	ldr	r3, [r2, r3]
c0de39c8:	5992      	ldr	r2, [r2, r6]
c0de39ca:	0140      	lsls	r0, r0, #5
c0de39cc:	1810      	adds	r0, r2, r0
c0de39ce:	2b00      	cmp	r3, #0
c0de39d0:	d006      	beq.n	c0de39e0 <io_event+0x5b0>
c0de39d2:	4798      	blx	r3
c0de39d4:	2800      	cmp	r0, #0
c0de39d6:	d00a      	beq.n	c0de39ee <io_event+0x5be>
c0de39d8:	4649      	mov	r1, r9
c0de39da:	190a      	adds	r2, r1, r4
c0de39dc:	5b51      	ldrh	r1, [r2, r5]
c0de39de:	5992      	ldr	r2, [r2, r6]
c0de39e0:	2801      	cmp	r0, #1
c0de39e2:	d102      	bne.n	c0de39ea <io_event+0x5ba>
c0de39e4:	b288      	uxth	r0, r1
c0de39e6:	0140      	lsls	r0, r0, #5
c0de39e8:	1810      	adds	r0, r2, r0
c0de39ea:	f000 fb00 	bl	c0de3fee <io_seproxyhal_display_default>
c0de39ee:	4648      	mov	r0, r9
c0de39f0:	1900      	adds	r0, r0, r4
c0de39f2:	5b41      	ldrh	r1, [r0, r5]
c0de39f4:	1c49      	adds	r1, r1, #1
c0de39f6:	5341      	strh	r1, [r0, r5]
c0de39f8:	5dc2      	ldrb	r2, [r0, r7]
c0de39fa:	b288      	uxth	r0, r1
c0de39fc:	4290      	cmp	r0, r2
c0de39fe:	d3df      	bcc.n	c0de39c0 <io_event+0x590>
c0de3a00:	e08c      	b.n	c0de3b1c <io_event+0x6ec>
c0de3a02:	4c5a      	ldr	r4, [pc, #360]	; (c0de3b6c <io_event+0x73c>)
c0de3a04:	4648      	mov	r0, r9
c0de3a06:	1900      	adds	r0, r0, r4
c0de3a08:	25d0      	movs	r5, #208	; 0xd0
c0de3a0a:	5940      	ldr	r0, [r0, r5]
c0de3a0c:	2800      	cmp	r0, #0
c0de3a0e:	d100      	bne.n	c0de3a12 <io_event+0x5e2>
c0de3a10:	e08e      	b.n	c0de3b30 <io_event+0x700>
c0de3a12:	4648      	mov	r0, r9
c0de3a14:	1900      	adds	r0, r0, r4
c0de3a16:	26d4      	movs	r6, #212	; 0xd4
c0de3a18:	5d81      	ldrb	r1, [r0, r6]
c0de3a1a:	27ce      	movs	r7, #206	; 0xce
c0de3a1c:	5bc0      	ldrh	r0, [r0, r7]
c0de3a1e:	4288      	cmp	r0, r1
c0de3a20:	d300      	bcc.n	c0de3a24 <io_event+0x5f4>
c0de3a22:	e085      	b.n	c0de3b30 <io_event+0x700>
c0de3a24:	f001 fda6 	bl	c0de5574 <os_perso_isonboarded>
c0de3a28:	28aa      	cmp	r0, #170	; 0xaa
c0de3a2a:	d103      	bne.n	c0de3a34 <io_event+0x604>
c0de3a2c:	f001 fdbe 	bl	c0de55ac <os_global_pin_is_validated>
c0de3a30:	28aa      	cmp	r0, #170	; 0xaa
c0de3a32:	d17d      	bne.n	c0de3b30 <io_event+0x700>
c0de3a34:	4648      	mov	r0, r9
c0de3a36:	1900      	adds	r0, r0, r4
c0de3a38:	5d82      	ldrb	r2, [r0, r6]
c0de3a3a:	5bc1      	ldrh	r1, [r0, r7]
c0de3a3c:	4291      	cmp	r1, r2
c0de3a3e:	d272      	bcs.n	c0de3b26 <io_event+0x6f6>
c0de3a40:	4608      	mov	r0, r1
c0de3a42:	464a      	mov	r2, r9
c0de3a44:	1912      	adds	r2, r2, r4
c0de3a46:	23dc      	movs	r3, #220	; 0xdc
c0de3a48:	58d3      	ldr	r3, [r2, r3]
c0de3a4a:	5952      	ldr	r2, [r2, r5]
c0de3a4c:	0140      	lsls	r0, r0, #5
c0de3a4e:	1810      	adds	r0, r2, r0
c0de3a50:	2b00      	cmp	r3, #0
c0de3a52:	d006      	beq.n	c0de3a62 <io_event+0x632>
c0de3a54:	4798      	blx	r3
c0de3a56:	2800      	cmp	r0, #0
c0de3a58:	d00a      	beq.n	c0de3a70 <io_event+0x640>
c0de3a5a:	4649      	mov	r1, r9
c0de3a5c:	190a      	adds	r2, r1, r4
c0de3a5e:	5bd1      	ldrh	r1, [r2, r7]
c0de3a60:	5952      	ldr	r2, [r2, r5]
c0de3a62:	2801      	cmp	r0, #1
c0de3a64:	d102      	bne.n	c0de3a6c <io_event+0x63c>
c0de3a66:	b288      	uxth	r0, r1
c0de3a68:	0140      	lsls	r0, r0, #5
c0de3a6a:	1810      	adds	r0, r2, r0
c0de3a6c:	f000 fabf 	bl	c0de3fee <io_seproxyhal_display_default>
c0de3a70:	4648      	mov	r0, r9
c0de3a72:	1900      	adds	r0, r0, r4
c0de3a74:	5bc1      	ldrh	r1, [r0, r7]
c0de3a76:	1c49      	adds	r1, r1, #1
c0de3a78:	53c1      	strh	r1, [r0, r7]
c0de3a7a:	5d82      	ldrb	r2, [r0, r6]
c0de3a7c:	b288      	uxth	r0, r1
c0de3a7e:	4290      	cmp	r0, r2
c0de3a80:	d3df      	bcc.n	c0de3a42 <io_event+0x612>
c0de3a82:	e051      	b.n	c0de3b28 <io_event+0x6f8>
c0de3a84:	4c39      	ldr	r4, [pc, #228]	; (c0de3b6c <io_event+0x73c>)
c0de3a86:	4648      	mov	r0, r9
c0de3a88:	1900      	adds	r0, r0, r4
c0de3a8a:	21e0      	movs	r1, #224	; 0xe0
c0de3a8c:	5840      	ldr	r0, [r0, r1]
c0de3a8e:	2800      	cmp	r0, #0
c0de3a90:	d005      	beq.n	c0de3a9e <io_event+0x66e>
c0de3a92:	4649      	mov	r1, r9
c0de3a94:	1949      	adds	r1, r1, r5
c0de3a96:	78c9      	ldrb	r1, [r1, #3]
c0de3a98:	0849      	lsrs	r1, r1, #1
c0de3a9a:	f000 fad1 	bl	c0de4040 <io_seproxyhal_button_push>
c0de3a9e:	4648      	mov	r0, r9
c0de3aa0:	1900      	adds	r0, r0, r4
c0de3aa2:	25d0      	movs	r5, #208	; 0xd0
c0de3aa4:	5940      	ldr	r0, [r0, r5]
c0de3aa6:	2800      	cmp	r0, #0
c0de3aa8:	d042      	beq.n	c0de3b30 <io_event+0x700>
c0de3aaa:	4648      	mov	r0, r9
c0de3aac:	1900      	adds	r0, r0, r4
c0de3aae:	26d4      	movs	r6, #212	; 0xd4
c0de3ab0:	5d81      	ldrb	r1, [r0, r6]
c0de3ab2:	27ce      	movs	r7, #206	; 0xce
c0de3ab4:	5bc0      	ldrh	r0, [r0, r7]
c0de3ab6:	4288      	cmp	r0, r1
c0de3ab8:	d23a      	bcs.n	c0de3b30 <io_event+0x700>
c0de3aba:	f001 fd5b 	bl	c0de5574 <os_perso_isonboarded>
c0de3abe:	28aa      	cmp	r0, #170	; 0xaa
c0de3ac0:	d103      	bne.n	c0de3aca <io_event+0x69a>
c0de3ac2:	f001 fd73 	bl	c0de55ac <os_global_pin_is_validated>
c0de3ac6:	28aa      	cmp	r0, #170	; 0xaa
c0de3ac8:	d132      	bne.n	c0de3b30 <io_event+0x700>
c0de3aca:	4648      	mov	r0, r9
c0de3acc:	1900      	adds	r0, r0, r4
c0de3ace:	5d82      	ldrb	r2, [r0, r6]
c0de3ad0:	5bc1      	ldrh	r1, [r0, r7]
c0de3ad2:	4291      	cmp	r1, r2
c0de3ad4:	d227      	bcs.n	c0de3b26 <io_event+0x6f6>
c0de3ad6:	4608      	mov	r0, r1
c0de3ad8:	464a      	mov	r2, r9
c0de3ada:	1912      	adds	r2, r2, r4
c0de3adc:	23dc      	movs	r3, #220	; 0xdc
c0de3ade:	58d3      	ldr	r3, [r2, r3]
c0de3ae0:	5952      	ldr	r2, [r2, r5]
c0de3ae2:	0140      	lsls	r0, r0, #5
c0de3ae4:	1810      	adds	r0, r2, r0
c0de3ae6:	2b00      	cmp	r3, #0
c0de3ae8:	d006      	beq.n	c0de3af8 <io_event+0x6c8>
c0de3aea:	4798      	blx	r3
c0de3aec:	2800      	cmp	r0, #0
c0de3aee:	d00a      	beq.n	c0de3b06 <io_event+0x6d6>
c0de3af0:	4649      	mov	r1, r9
c0de3af2:	190a      	adds	r2, r1, r4
c0de3af4:	5bd1      	ldrh	r1, [r2, r7]
c0de3af6:	5952      	ldr	r2, [r2, r5]
c0de3af8:	2801      	cmp	r0, #1
c0de3afa:	d102      	bne.n	c0de3b02 <io_event+0x6d2>
c0de3afc:	b288      	uxth	r0, r1
c0de3afe:	0140      	lsls	r0, r0, #5
c0de3b00:	1810      	adds	r0, r2, r0
c0de3b02:	f000 fa74 	bl	c0de3fee <io_seproxyhal_display_default>
c0de3b06:	4648      	mov	r0, r9
c0de3b08:	1900      	adds	r0, r0, r4
c0de3b0a:	5bc1      	ldrh	r1, [r0, r7]
c0de3b0c:	1c49      	adds	r1, r1, #1
c0de3b0e:	53c1      	strh	r1, [r0, r7]
c0de3b10:	5d82      	ldrb	r2, [r0, r6]
c0de3b12:	b288      	uxth	r0, r1
c0de3b14:	4290      	cmp	r0, r2
c0de3b16:	d3df      	bcc.n	c0de3ad8 <io_event+0x6a8>
c0de3b18:	e006      	b.n	c0de3b28 <io_event+0x6f8>
c0de3b1a:	4608      	mov	r0, r1
c0de3b1c:	4290      	cmp	r0, r2
c0de3b1e:	d111      	bne.n	c0de3b44 <io_event+0x714>
c0de3b20:	f001 fde2 	bl	c0de56e8 <screen_update>
c0de3b24:	e00e      	b.n	c0de3b44 <io_event+0x714>
c0de3b26:	4608      	mov	r0, r1
c0de3b28:	4290      	cmp	r0, r2
c0de3b2a:	d101      	bne.n	c0de3b30 <io_event+0x700>
c0de3b2c:	f001 fddc 	bl	c0de56e8 <screen_update>
c0de3b30:	4648      	mov	r0, r9
c0de3b32:	1900      	adds	r0, r0, r4
c0de3b34:	21d4      	movs	r1, #212	; 0xd4
c0de3b36:	5c41      	ldrb	r1, [r0, r1]
c0de3b38:	22ce      	movs	r2, #206	; 0xce
c0de3b3a:	5a80      	ldrh	r0, [r0, r2]
c0de3b3c:	4288      	cmp	r0, r1
c0de3b3e:	d301      	bcc.n	c0de3b44 <io_event+0x714>
c0de3b40:	f001 fd94 	bl	c0de566c <io_seph_is_status_sent>
c0de3b44:	f001 fd92 	bl	c0de566c <io_seph_is_status_sent>
c0de3b48:	2800      	cmp	r0, #0
c0de3b4a:	d101      	bne.n	c0de3b50 <io_event+0x720>
c0de3b4c:	f000 f892 	bl	c0de3c74 <io_seproxyhal_general_status>
c0de3b50:	2001      	movs	r0, #1
c0de3b52:	b001      	add	sp, #4
c0de3b54:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3b56:	4608      	mov	r0, r1
c0de3b58:	4290      	cmp	r0, r2
c0de3b5a:	d101      	bne.n	c0de3b60 <io_event+0x730>
c0de3b5c:	f001 fdc4 	bl	c0de56e8 <screen_update>
c0de3b60:	4648      	mov	r0, r9
c0de3b62:	1940      	adds	r0, r0, r5
c0de3b64:	e7e6      	b.n	c0de3b34 <io_event+0x704>
c0de3b66:	46c0      	nop			; (mov r8, r8)
c0de3b68:	00000170 	.word	0x00000170
c0de3b6c:	0000005c 	.word	0x0000005c

c0de3b70 <io_exchange_al>:
c0de3b70:	b5b0      	push	{r4, r5, r7, lr}
c0de3b72:	4605      	mov	r5, r0
c0de3b74:	2007      	movs	r0, #7
c0de3b76:	4028      	ands	r0, r5
c0de3b78:	2400      	movs	r4, #0
c0de3b7a:	2801      	cmp	r0, #1
c0de3b7c:	d015      	beq.n	c0de3baa <io_exchange_al+0x3a>
c0de3b7e:	2802      	cmp	r0, #2
c0de3b80:	d115      	bne.n	c0de3bae <io_exchange_al+0x3e>
c0de3b82:	480c      	ldr	r0, [pc, #48]	; (c0de3bb4 <io_exchange_al+0x44>)
c0de3b84:	2900      	cmp	r1, #0
c0de3b86:	d008      	beq.n	c0de3b9a <io_exchange_al+0x2a>
c0de3b88:	464a      	mov	r2, r9
c0de3b8a:	1810      	adds	r0, r2, r0
c0de3b8c:	f001 fd62 	bl	c0de5654 <io_seph_send>
c0de3b90:	0628      	lsls	r0, r5, #24
c0de3b92:	d50a      	bpl.n	c0de3baa <io_exchange_al+0x3a>
c0de3b94:	f001 fcd8 	bl	c0de5548 <halt>
c0de3b98:	e007      	b.n	c0de3baa <io_exchange_al+0x3a>
c0de3b9a:	4649      	mov	r1, r9
c0de3b9c:	1808      	adds	r0, r1, r0
c0de3b9e:	21ff      	movs	r1, #255	; 0xff
c0de3ba0:	3152      	adds	r1, #82	; 0x52
c0de3ba2:	2200      	movs	r2, #0
c0de3ba4:	f001 fd6c 	bl	c0de5680 <io_seph_recv>
c0de3ba8:	4604      	mov	r4, r0
c0de3baa:	4620      	mov	r0, r4
c0de3bac:	bdb0      	pop	{r4, r5, r7, pc}
c0de3bae:	2002      	movs	r0, #2
c0de3bb0:	f000 f859 	bl	c0de3c66 <os_longjmp>
c0de3bb4:	00000530 	.word	0x00000530

c0de3bb8 <app_exit>:
c0de3bb8:	b510      	push	{r4, lr}
c0de3bba:	b08c      	sub	sp, #48	; 0x30
c0de3bbc:	466c      	mov	r4, sp
c0de3bbe:	4620      	mov	r0, r4
c0de3bc0:	f005 f81a 	bl	c0de8bf8 <setjmp>
c0de3bc4:	85a0      	strh	r0, [r4, #44]	; 0x2c
c0de3bc6:	0400      	lsls	r0, r0, #16
c0de3bc8:	d00d      	beq.n	c0de3be6 <app_exit+0x2e>
c0de3bca:	f001 fd67 	bl	c0de569c <try_context_get>
c0de3bce:	4669      	mov	r1, sp
c0de3bd0:	4288      	cmp	r0, r1
c0de3bd2:	d102      	bne.n	c0de3bda <app_exit+0x22>
c0de3bd4:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de3bd6:	f001 fd6b 	bl	c0de56b0 <try_context_set>
c0de3bda:	4668      	mov	r0, sp
c0de3bdc:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0de3bde:	2800      	cmp	r0, #0
c0de3be0:	d108      	bne.n	c0de3bf4 <app_exit+0x3c>
c0de3be2:	b00c      	add	sp, #48	; 0x30
c0de3be4:	bd10      	pop	{r4, pc}
c0de3be6:	4668      	mov	r0, sp
c0de3be8:	f001 fd62 	bl	c0de56b0 <try_context_set>
c0de3bec:	900a      	str	r0, [sp, #40]	; 0x28
c0de3bee:	20ff      	movs	r0, #255	; 0xff
c0de3bf0:	f001 fd24 	bl	c0de563c <os_sched_exit>
c0de3bf4:	f000 f837 	bl	c0de3c66 <os_longjmp>

c0de3bf8 <nv_app_state_init>:
c0de3bf8:	b5b0      	push	{r4, r5, r7, lr}
c0de3bfa:	b082      	sub	sp, #8
c0de3bfc:	4809      	ldr	r0, [pc, #36]	; (c0de3c24 <nv_app_state_init+0x2c>)
c0de3bfe:	4478      	add	r0, pc
c0de3c00:	f001 f86a 	bl	c0de4cd8 <pic>
c0de3c04:	7800      	ldrb	r0, [r0, #0]
c0de3c06:	2801      	cmp	r0, #1
c0de3c08:	d00a      	beq.n	c0de3c20 <nv_app_state_init+0x28>
c0de3c0a:	ac01      	add	r4, sp, #4
c0de3c0c:	2501      	movs	r5, #1
c0de3c0e:	7025      	strb	r5, [r4, #0]
c0de3c10:	4805      	ldr	r0, [pc, #20]	; (c0de3c28 <nv_app_state_init+0x30>)
c0de3c12:	4478      	add	r0, pc
c0de3c14:	f001 f860 	bl	c0de4cd8 <pic>
c0de3c18:	4621      	mov	r1, r4
c0de3c1a:	462a      	mov	r2, r5
c0de3c1c:	f001 fc9e 	bl	c0de555c <nvm_write>
c0de3c20:	b002      	add	sp, #8
c0de3c22:	bdb0      	pop	{r4, r5, r7, pc}
c0de3c24:	000090fe 	.word	0x000090fe
c0de3c28:	000090ea 	.word	0x000090ea

c0de3c2c <ux_idle_flow_3_step_validateinit>:
c0de3c2c:	20ff      	movs	r0, #255	; 0xff
c0de3c2e:	f001 fd05 	bl	c0de563c <os_sched_exit>
c0de3c32:	d4d4      	bmi.n	c0de3bde <app_exit+0x26>

c0de3c34 <ui_idle>:
c0de3c34:	b580      	push	{r7, lr}
c0de3c36:	4807      	ldr	r0, [pc, #28]	; (c0de3c54 <ui_idle+0x20>)
c0de3c38:	4649      	mov	r1, r9
c0de3c3a:	5c08      	ldrb	r0, [r1, r0]
c0de3c3c:	2800      	cmp	r0, #0
c0de3c3e:	d101      	bne.n	c0de3c44 <ui_idle+0x10>
c0de3c40:	f004 fbca 	bl	c0de83d8 <ux_stack_push>
c0de3c44:	4904      	ldr	r1, [pc, #16]	; (c0de3c58 <ui_idle+0x24>)
c0de3c46:	4479      	add	r1, pc
c0de3c48:	2000      	movs	r0, #0
c0de3c4a:	4602      	mov	r2, r0
c0de3c4c:	f003 ff66 	bl	c0de7b1c <ux_flow_init>
c0de3c50:	bd80      	pop	{r7, pc}
c0de3c52:	46c0      	nop			; (mov r8, r8)
c0de3c54:	0000005c 	.word	0x0000005c
c0de3c58:	00006942 	.word	0x00006942

c0de3c5c <os_boot>:
c0de3c5c:	b580      	push	{r7, lr}
c0de3c5e:	2000      	movs	r0, #0
c0de3c60:	f001 fd26 	bl	c0de56b0 <try_context_set>
c0de3c64:	bd80      	pop	{r7, pc}

c0de3c66 <os_longjmp>:
c0de3c66:	4604      	mov	r4, r0
c0de3c68:	f001 fd18 	bl	c0de569c <try_context_get>
c0de3c6c:	4621      	mov	r1, r4
c0de3c6e:	f004 ffcf 	bl	c0de8c10 <longjmp>
c0de3c72:	d4d4      	bmi.n	c0de3c1e <nv_app_state_init+0x26>

c0de3c74 <io_seproxyhal_general_status>:
c0de3c74:	b580      	push	{r7, lr}
c0de3c76:	4803      	ldr	r0, [pc, #12]	; (c0de3c84 <io_seproxyhal_general_status+0x10>)
c0de3c78:	4478      	add	r0, pc
c0de3c7a:	2105      	movs	r1, #5
c0de3c7c:	f001 fcea 	bl	c0de5654 <io_seph_send>
c0de3c80:	bd80      	pop	{r7, pc}
c0de3c82:	46c0      	nop			; (mov r8, r8)
c0de3c84:	00006924 	.word	0x00006924

c0de3c88 <io_seproxyhal_handle_usb_event>:
c0de3c88:	b5b0      	push	{r4, r5, r7, lr}
c0de3c8a:	481c      	ldr	r0, [pc, #112]	; (c0de3cfc <io_seproxyhal_handle_usb_event+0x74>)
c0de3c8c:	4649      	mov	r1, r9
c0de3c8e:	1808      	adds	r0, r1, r0
c0de3c90:	78c0      	ldrb	r0, [r0, #3]
c0de3c92:	2803      	cmp	r0, #3
c0de3c94:	dc09      	bgt.n	c0de3caa <io_seproxyhal_handle_usb_event+0x22>
c0de3c96:	2801      	cmp	r0, #1
c0de3c98:	d011      	beq.n	c0de3cbe <io_seproxyhal_handle_usb_event+0x36>
c0de3c9a:	2802      	cmp	r0, #2
c0de3c9c:	d12a      	bne.n	c0de3cf4 <io_seproxyhal_handle_usb_event+0x6c>
c0de3c9e:	4818      	ldr	r0, [pc, #96]	; (c0de3d00 <io_seproxyhal_handle_usb_event+0x78>)
c0de3ca0:	4649      	mov	r1, r9
c0de3ca2:	1808      	adds	r0, r1, r0
c0de3ca4:	f002 fdda 	bl	c0de685c <USBD_LL_SOF>
c0de3ca8:	bdb0      	pop	{r4, r5, r7, pc}
c0de3caa:	2804      	cmp	r0, #4
c0de3cac:	d01d      	beq.n	c0de3cea <io_seproxyhal_handle_usb_event+0x62>
c0de3cae:	2808      	cmp	r0, #8
c0de3cb0:	d120      	bne.n	c0de3cf4 <io_seproxyhal_handle_usb_event+0x6c>
c0de3cb2:	4813      	ldr	r0, [pc, #76]	; (c0de3d00 <io_seproxyhal_handle_usb_event+0x78>)
c0de3cb4:	4649      	mov	r1, r9
c0de3cb6:	1808      	adds	r0, r1, r0
c0de3cb8:	f002 fdce 	bl	c0de6858 <USBD_LL_Resume>
c0de3cbc:	bdb0      	pop	{r4, r5, r7, pc}
c0de3cbe:	4810      	ldr	r0, [pc, #64]	; (c0de3d00 <io_seproxyhal_handle_usb_event+0x78>)
c0de3cc0:	464d      	mov	r5, r9
c0de3cc2:	182c      	adds	r4, r5, r0
c0de3cc4:	2101      	movs	r1, #1
c0de3cc6:	4620      	mov	r0, r4
c0de3cc8:	f002 fdc1 	bl	c0de684e <USBD_LL_SetSpeed>
c0de3ccc:	4620      	mov	r0, r4
c0de3cce:	f002 fd9f 	bl	c0de6810 <USBD_LL_Reset>
c0de3cd2:	480c      	ldr	r0, [pc, #48]	; (c0de3d04 <io_seproxyhal_handle_usb_event+0x7c>)
c0de3cd4:	1829      	adds	r1, r5, r0
c0de3cd6:	7989      	ldrb	r1, [r1, #6]
c0de3cd8:	2900      	cmp	r1, #0
c0de3cda:	d10c      	bne.n	c0de3cf6 <io_seproxyhal_handle_usb_event+0x6e>
c0de3cdc:	4649      	mov	r1, r9
c0de3cde:	1808      	adds	r0, r1, r0
c0de3ce0:	300c      	adds	r0, #12
c0de3ce2:	2112      	movs	r1, #18
c0de3ce4:	f004 fe3a 	bl	c0de895c <__aeabi_memclr>
c0de3ce8:	bdb0      	pop	{r4, r5, r7, pc}
c0de3cea:	4805      	ldr	r0, [pc, #20]	; (c0de3d00 <io_seproxyhal_handle_usb_event+0x78>)
c0de3cec:	4649      	mov	r1, r9
c0de3cee:	1808      	adds	r0, r1, r0
c0de3cf0:	f002 fdb0 	bl	c0de6854 <USBD_LL_Suspend>
c0de3cf4:	bdb0      	pop	{r4, r5, r7, pc}
c0de3cf6:	2005      	movs	r0, #5
c0de3cf8:	f7ff ffb5 	bl	c0de3c66 <os_longjmp>
c0de3cfc:	00000404 	.word	0x00000404
c0de3d00:	00000a28 	.word	0x00000a28
c0de3d04:	00000684 	.word	0x00000684

c0de3d08 <io_seproxyhal_get_ep_rx_size>:
c0de3d08:	217f      	movs	r1, #127	; 0x7f
c0de3d0a:	4001      	ands	r1, r0
c0de3d0c:	2905      	cmp	r1, #5
c0de3d0e:	d805      	bhi.n	c0de3d1c <io_seproxyhal_get_ep_rx_size+0x14>
c0de3d10:	4803      	ldr	r0, [pc, #12]	; (c0de3d20 <io_seproxyhal_get_ep_rx_size+0x18>)
c0de3d12:	464a      	mov	r2, r9
c0de3d14:	1810      	adds	r0, r2, r0
c0de3d16:	1840      	adds	r0, r0, r1
c0de3d18:	7b00      	ldrb	r0, [r0, #12]
c0de3d1a:	4770      	bx	lr
c0de3d1c:	2000      	movs	r0, #0
c0de3d1e:	4770      	bx	lr
c0de3d20:	00000684 	.word	0x00000684

c0de3d24 <io_seproxyhal_handle_usb_ep_xfer_event>:
c0de3d24:	b510      	push	{r4, lr}
c0de3d26:	4a1a      	ldr	r2, [pc, #104]	; (c0de3d90 <io_seproxyhal_handle_usb_ep_xfer_event+0x6c>)
c0de3d28:	4648      	mov	r0, r9
c0de3d2a:	1880      	adds	r0, r0, r2
c0de3d2c:	78c3      	ldrb	r3, [r0, #3]
c0de3d2e:	217f      	movs	r1, #127	; 0x7f
c0de3d30:	4019      	ands	r1, r3
c0de3d32:	7900      	ldrb	r0, [r0, #4]
c0de3d34:	2804      	cmp	r0, #4
c0de3d36:	d01b      	beq.n	c0de3d70 <io_seproxyhal_handle_usb_ep_xfer_event+0x4c>
c0de3d38:	2802      	cmp	r0, #2
c0de3d3a:	d009      	beq.n	c0de3d50 <io_seproxyhal_handle_usb_ep_xfer_event+0x2c>
c0de3d3c:	2801      	cmp	r0, #1
c0de3d3e:	d125      	bne.n	c0de3d8c <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de3d40:	4815      	ldr	r0, [pc, #84]	; (c0de3d98 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de3d42:	4649      	mov	r1, r9
c0de3d44:	1808      	adds	r0, r1, r0
c0de3d46:	1889      	adds	r1, r1, r2
c0de3d48:	1d89      	adds	r1, r1, #6
c0de3d4a:	f002 fc6f 	bl	c0de662c <USBD_LL_SetupStage>
c0de3d4e:	bd10      	pop	{r4, pc}
c0de3d50:	2905      	cmp	r1, #5
c0de3d52:	d81b      	bhi.n	c0de3d8c <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de3d54:	480f      	ldr	r0, [pc, #60]	; (c0de3d94 <io_seproxyhal_handle_usb_ep_xfer_event+0x70>)
c0de3d56:	464b      	mov	r3, r9
c0de3d58:	1818      	adds	r0, r3, r0
c0de3d5a:	004c      	lsls	r4, r1, #1
c0de3d5c:	1900      	adds	r0, r0, r4
c0de3d5e:	2400      	movs	r4, #0
c0de3d60:	8244      	strh	r4, [r0, #18]
c0de3d62:	480d      	ldr	r0, [pc, #52]	; (c0de3d98 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de3d64:	1818      	adds	r0, r3, r0
c0de3d66:	189a      	adds	r2, r3, r2
c0de3d68:	1d92      	adds	r2, r2, #6
c0de3d6a:	f002 fce3 	bl	c0de6734 <USBD_LL_DataInStage>
c0de3d6e:	bd10      	pop	{r4, pc}
c0de3d70:	2905      	cmp	r1, #5
c0de3d72:	d80b      	bhi.n	c0de3d8c <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de3d74:	4807      	ldr	r0, [pc, #28]	; (c0de3d94 <io_seproxyhal_handle_usb_ep_xfer_event+0x70>)
c0de3d76:	464b      	mov	r3, r9
c0de3d78:	1818      	adds	r0, r3, r0
c0de3d7a:	1840      	adds	r0, r0, r1
c0de3d7c:	189a      	adds	r2, r3, r2
c0de3d7e:	7954      	ldrb	r4, [r2, #5]
c0de3d80:	7304      	strb	r4, [r0, #12]
c0de3d82:	4805      	ldr	r0, [pc, #20]	; (c0de3d98 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de3d84:	1818      	adds	r0, r3, r0
c0de3d86:	1d92      	adds	r2, r2, #6
c0de3d88:	f002 fc7e 	bl	c0de6688 <USBD_LL_DataOutStage>
c0de3d8c:	bd10      	pop	{r4, pc}
c0de3d8e:	46c0      	nop			; (mov r8, r8)
c0de3d90:	00000404 	.word	0x00000404
c0de3d94:	00000684 	.word	0x00000684
c0de3d98:	00000a28 	.word	0x00000a28

c0de3d9c <io_usb_send_ep>:
c0de3d9c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3d9e:	b081      	sub	sp, #4
c0de3da0:	2aff      	cmp	r2, #255	; 0xff
c0de3da2:	d820      	bhi.n	c0de3de6 <io_usb_send_ep+0x4a>
c0de3da4:	4615      	mov	r5, r2
c0de3da6:	460e      	mov	r6, r1
c0de3da8:	4604      	mov	r4, r0
c0de3daa:	4810      	ldr	r0, [pc, #64]	; (c0de3dec <io_usb_send_ep+0x50>)
c0de3dac:	464f      	mov	r7, r9
c0de3dae:	2150      	movs	r1, #80	; 0x50
c0de3db0:	5439      	strb	r1, [r7, r0]
c0de3db2:	1838      	adds	r0, r7, r0
c0de3db4:	7142      	strb	r2, [r0, #5]
c0de3db6:	2120      	movs	r1, #32
c0de3db8:	7101      	strb	r1, [r0, #4]
c0de3dba:	2180      	movs	r1, #128	; 0x80
c0de3dbc:	4321      	orrs	r1, r4
c0de3dbe:	70c1      	strb	r1, [r0, #3]
c0de3dc0:	1cd1      	adds	r1, r2, #3
c0de3dc2:	7081      	strb	r1, [r0, #2]
c0de3dc4:	0a09      	lsrs	r1, r1, #8
c0de3dc6:	7041      	strb	r1, [r0, #1]
c0de3dc8:	2106      	movs	r1, #6
c0de3dca:	f001 fc43 	bl	c0de5654 <io_seph_send>
c0de3dce:	4630      	mov	r0, r6
c0de3dd0:	4629      	mov	r1, r5
c0de3dd2:	f001 fc3f 	bl	c0de5654 <io_seph_send>
c0de3dd6:	4806      	ldr	r0, [pc, #24]	; (c0de3df0 <io_usb_send_ep+0x54>)
c0de3dd8:	1838      	adds	r0, r7, r0
c0de3dda:	0661      	lsls	r1, r4, #25
c0de3ddc:	0e09      	lsrs	r1, r1, #24
c0de3dde:	1840      	adds	r0, r0, r1
c0de3de0:	217d      	movs	r1, #125	; 0x7d
c0de3de2:	0109      	lsls	r1, r1, #4
c0de3de4:	8241      	strh	r1, [r0, #18]
c0de3de6:	b001      	add	sp, #4
c0de3de8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3dea:	46c0      	nop			; (mov r8, r8)
c0de3dec:	00000404 	.word	0x00000404
c0de3df0:	00000684 	.word	0x00000684

c0de3df4 <io_usb_send_apdu_data>:
c0de3df4:	b580      	push	{r7, lr}
c0de3df6:	460a      	mov	r2, r1
c0de3df8:	4601      	mov	r1, r0
c0de3dfa:	2082      	movs	r0, #130	; 0x82
c0de3dfc:	2314      	movs	r3, #20
c0de3dfe:	f7ff ffcd 	bl	c0de3d9c <io_usb_send_ep>
c0de3e02:	bd80      	pop	{r7, pc}

c0de3e04 <io_usb_send_apdu_data_ep0x83>:
c0de3e04:	b580      	push	{r7, lr}
c0de3e06:	460a      	mov	r2, r1
c0de3e08:	4601      	mov	r1, r0
c0de3e0a:	2083      	movs	r0, #131	; 0x83
c0de3e0c:	2314      	movs	r3, #20
c0de3e0e:	f7ff ffc5 	bl	c0de3d9c <io_usb_send_ep>
c0de3e12:	bd80      	pop	{r7, pc}

c0de3e14 <io_seproxyhal_handle_event>:
c0de3e14:	b5b0      	push	{r4, r5, r7, lr}
c0de3e16:	4947      	ldr	r1, [pc, #284]	; (c0de3f34 <io_seproxyhal_handle_event+0x120>)
c0de3e18:	4648      	mov	r0, r9
c0de3e1a:	1842      	adds	r2, r0, r1
c0de3e1c:	7893      	ldrb	r3, [r2, #2]
c0de3e1e:	7852      	ldrb	r2, [r2, #1]
c0de3e20:	0212      	lsls	r2, r2, #8
c0de3e22:	18d2      	adds	r2, r2, r3
c0de3e24:	5c40      	ldrb	r0, [r0, r1]
c0de3e26:	2815      	cmp	r0, #21
c0de3e28:	dc0a      	bgt.n	c0de3e40 <io_seproxyhal_handle_event+0x2c>
c0de3e2a:	280e      	cmp	r0, #14
c0de3e2c:	d01c      	beq.n	c0de3e68 <io_seproxyhal_handle_event+0x54>
c0de3e2e:	280f      	cmp	r0, #15
c0de3e30:	d047      	beq.n	c0de3ec2 <io_seproxyhal_handle_event+0xae>
c0de3e32:	2810      	cmp	r0, #16
c0de3e34:	d140      	bne.n	c0de3eb8 <io_seproxyhal_handle_event+0xa4>
c0de3e36:	2a03      	cmp	r2, #3
c0de3e38:	d365      	bcc.n	c0de3f06 <io_seproxyhal_handle_event+0xf2>
c0de3e3a:	f7ff ff73 	bl	c0de3d24 <io_seproxyhal_handle_usb_ep_xfer_event>
c0de3e3e:	e060      	b.n	c0de3f02 <io_seproxyhal_handle_event+0xee>
c0de3e40:	2816      	cmp	r0, #22
c0de3e42:	d043      	beq.n	c0de3ecc <io_seproxyhal_handle_event+0xb8>
c0de3e44:	2818      	cmp	r0, #24
c0de3e46:	d05a      	beq.n	c0de3efe <io_seproxyhal_handle_event+0xea>
c0de3e48:	281a      	cmp	r0, #26
c0de3e4a:	d135      	bne.n	c0de3eb8 <io_seproxyhal_handle_event+0xa4>
c0de3e4c:	4648      	mov	r0, r9
c0de3e4e:	1840      	adds	r0, r0, r1
c0de3e50:	78c0      	ldrb	r0, [r0, #3]
c0de3e52:	2801      	cmp	r0, #1
c0de3e54:	dc5a      	bgt.n	c0de3f0c <io_seproxyhal_handle_event+0xf8>
c0de3e56:	2800      	cmp	r0, #0
c0de3e58:	d05f      	beq.n	c0de3f1a <io_seproxyhal_handle_event+0x106>
c0de3e5a:	2801      	cmp	r0, #1
c0de3e5c:	d12c      	bne.n	c0de3eb8 <io_seproxyhal_handle_event+0xa4>
c0de3e5e:	2401      	movs	r4, #1
c0de3e60:	4620      	mov	r0, r4
c0de3e62:	f7fe fefb 	bl	c0de2c5c <LEDGER_BLE_enable_advertising>
c0de3e66:	e04f      	b.n	c0de3f08 <io_seproxyhal_handle_event+0xf4>
c0de3e68:	4833      	ldr	r0, [pc, #204]	; (c0de3f38 <io_seproxyhal_handle_event+0x124>)
c0de3e6a:	4649      	mov	r1, r9
c0de3e6c:	1809      	adds	r1, r1, r0
c0de3e6e:	688a      	ldr	r2, [r1, #8]
c0de3e70:	3264      	adds	r2, #100	; 0x64
c0de3e72:	608a      	str	r2, [r1, #8]
c0de3e74:	211c      	movs	r1, #28
c0de3e76:	464a      	mov	r2, r9
c0de3e78:	1812      	adds	r2, r2, r0
c0de3e7a:	5a52      	ldrh	r2, [r2, r1]
c0de3e7c:	2a00      	cmp	r2, #0
c0de3e7e:	d009      	beq.n	c0de3e94 <io_seproxyhal_handle_event+0x80>
c0de3e80:	464b      	mov	r3, r9
c0de3e82:	181b      	adds	r3, r3, r0
c0de3e84:	2a64      	cmp	r2, #100	; 0x64
c0de3e86:	4614      	mov	r4, r2
c0de3e88:	d800      	bhi.n	c0de3e8c <io_seproxyhal_handle_event+0x78>
c0de3e8a:	2464      	movs	r4, #100	; 0x64
c0de3e8c:	3c64      	subs	r4, #100	; 0x64
c0de3e8e:	525c      	strh	r4, [r3, r1]
c0de3e90:	2a64      	cmp	r2, #100	; 0x64
c0de3e92:	d949      	bls.n	c0de3f28 <io_seproxyhal_handle_event+0x114>
c0de3e94:	1e89      	subs	r1, r1, #2
c0de3e96:	2910      	cmp	r1, #16
c0de3e98:	d1ed      	bne.n	c0de3e76 <io_seproxyhal_handle_event+0x62>
c0de3e9a:	4649      	mov	r1, r9
c0de3e9c:	1809      	adds	r1, r1, r0
c0de3e9e:	8bc9      	ldrh	r1, [r1, #30]
c0de3ea0:	2900      	cmp	r1, #0
c0de3ea2:	d009      	beq.n	c0de3eb8 <io_seproxyhal_handle_event+0xa4>
c0de3ea4:	464a      	mov	r2, r9
c0de3ea6:	1812      	adds	r2, r2, r0
c0de3ea8:	2964      	cmp	r1, #100	; 0x64
c0de3eaa:	460b      	mov	r3, r1
c0de3eac:	d800      	bhi.n	c0de3eb0 <io_seproxyhal_handle_event+0x9c>
c0de3eae:	2364      	movs	r3, #100	; 0x64
c0de3eb0:	3b64      	subs	r3, #100	; 0x64
c0de3eb2:	83d3      	strh	r3, [r2, #30]
c0de3eb4:	2964      	cmp	r1, #100	; 0x64
c0de3eb6:	d937      	bls.n	c0de3f28 <io_seproxyhal_handle_event+0x114>
c0de3eb8:	2002      	movs	r0, #2
c0de3eba:	f7ff fab9 	bl	c0de3430 <io_event>
c0de3ebe:	4604      	mov	r4, r0
c0de3ec0:	e022      	b.n	c0de3f08 <io_seproxyhal_handle_event+0xf4>
c0de3ec2:	2a01      	cmp	r2, #1
c0de3ec4:	d11f      	bne.n	c0de3f06 <io_seproxyhal_handle_event+0xf2>
c0de3ec6:	f7ff fedf 	bl	c0de3c88 <io_seproxyhal_handle_usb_event>
c0de3eca:	e01a      	b.n	c0de3f02 <io_seproxyhal_handle_event+0xee>
c0de3ecc:	481a      	ldr	r0, [pc, #104]	; (c0de3f38 <io_seproxyhal_handle_event+0x124>)
c0de3ece:	464b      	mov	r3, r9
c0de3ed0:	5c1b      	ldrb	r3, [r3, r0]
c0de3ed2:	2401      	movs	r4, #1
c0de3ed4:	2b00      	cmp	r3, #0
c0de3ed6:	d117      	bne.n	c0de3f08 <io_seproxyhal_handle_event+0xf4>
c0de3ed8:	464b      	mov	r3, r9
c0de3eda:	250a      	movs	r5, #10
c0de3edc:	541d      	strb	r5, [r3, r0]
c0de3ede:	1818      	adds	r0, r3, r0
c0de3ee0:	2506      	movs	r5, #6
c0de3ee2:	7185      	strb	r5, [r0, #6]
c0de3ee4:	25ff      	movs	r5, #255	; 0xff
c0de3ee6:	352a      	adds	r5, #42	; 0x2a
c0de3ee8:	42aa      	cmp	r2, r5
c0de3eea:	d300      	bcc.n	c0de3eee <io_seproxyhal_handle_event+0xda>
c0de3eec:	462a      	mov	r2, r5
c0de3eee:	8042      	strh	r2, [r0, #2]
c0de3ef0:	4812      	ldr	r0, [pc, #72]	; (c0de3f3c <io_seproxyhal_handle_event+0x128>)
c0de3ef2:	1818      	adds	r0, r3, r0
c0de3ef4:	1859      	adds	r1, r3, r1
c0de3ef6:	1cc9      	adds	r1, r1, #3
c0de3ef8:	f004 fd36 	bl	c0de8968 <__aeabi_memcpy>
c0de3efc:	e004      	b.n	c0de3f08 <io_seproxyhal_handle_event+0xf4>
c0de3efe:	f7fe fa6f 	bl	c0de23e0 <LEDGER_BLE_receive>
c0de3f02:	2401      	movs	r4, #1
c0de3f04:	e000      	b.n	c0de3f08 <io_seproxyhal_handle_event+0xf4>
c0de3f06:	2400      	movs	r4, #0
c0de3f08:	4620      	mov	r0, r4
c0de3f0a:	bdb0      	pop	{r4, r5, r7, pc}
c0de3f0c:	2802      	cmp	r0, #2
c0de3f0e:	d008      	beq.n	c0de3f22 <io_seproxyhal_handle_event+0x10e>
c0de3f10:	2803      	cmp	r0, #3
c0de3f12:	d1d1      	bne.n	c0de3eb8 <io_seproxyhal_handle_event+0xa4>
c0de3f14:	f004 fa78 	bl	c0de8408 <ux_stack_redisplay>
c0de3f18:	e7f3      	b.n	c0de3f02 <io_seproxyhal_handle_event+0xee>
c0de3f1a:	2000      	movs	r0, #0
c0de3f1c:	f7fe fe9e 	bl	c0de2c5c <LEDGER_BLE_enable_advertising>
c0de3f20:	e7ef      	b.n	c0de3f02 <io_seproxyhal_handle_event+0xee>
c0de3f22:	f7fe fee5 	bl	c0de2cf0 <LEDGER_BLE_reset_pairings>
c0de3f26:	e7ec      	b.n	c0de3f02 <io_seproxyhal_handle_event+0xee>
c0de3f28:	4649      	mov	r1, r9
c0de3f2a:	2200      	movs	r2, #0
c0de3f2c:	540a      	strb	r2, [r1, r0]
c0de3f2e:	2005      	movs	r0, #5
c0de3f30:	f7ff fe99 	bl	c0de3c66 <os_longjmp>
c0de3f34:	00000404 	.word	0x00000404
c0de3f38:	00000684 	.word	0x00000684
c0de3f3c:	00000530 	.word	0x00000530

c0de3f40 <io_seproxyhal_init>:
c0de3f40:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3f42:	b081      	sub	sp, #4
c0de3f44:	f001 faf5 	bl	c0de5532 <get_api_level>
c0de3f48:	280d      	cmp	r0, #13
c0de3f4a:	d21b      	bcs.n	c0de3f84 <io_seproxyhal_init+0x44>
c0de3f4c:	4811      	ldr	r0, [pc, #68]	; (c0de3f94 <io_seproxyhal_init+0x54>)
c0de3f4e:	4478      	add	r0, pc
c0de3f50:	2104      	movs	r1, #4
c0de3f52:	f001 fb7f 	bl	c0de5654 <io_seph_send>
c0de3f56:	480d      	ldr	r0, [pc, #52]	; (c0de3f8c <io_seproxyhal_init+0x4c>)
c0de3f58:	464d      	mov	r5, r9
c0de3f5a:	182c      	adds	r4, r5, r0
c0de3f5c:	6a27      	ldr	r7, [r4, #32]
c0de3f5e:	212c      	movs	r1, #44	; 0x2c
c0de3f60:	4620      	mov	r0, r4
c0de3f62:	f004 fcfb 	bl	c0de895c <__aeabi_memclr>
c0de3f66:	2600      	movs	r6, #0
c0de3f68:	4808      	ldr	r0, [pc, #32]	; (c0de3f8c <io_seproxyhal_init+0x4c>)
c0de3f6a:	542e      	strb	r6, [r5, r0]
c0de3f6c:	60a6      	str	r6, [r4, #8]
c0de3f6e:	71a6      	strb	r6, [r4, #6]
c0de3f70:	8066      	strh	r6, [r4, #2]
c0de3f72:	6227      	str	r7, [r4, #32]
c0de3f74:	f000 fb6a 	bl	c0de464c <io_usb_hid_init>
c0de3f78:	4805      	ldr	r0, [pc, #20]	; (c0de3f90 <io_seproxyhal_init+0x50>)
c0de3f7a:	502e      	str	r6, [r5, r0]
c0de3f7c:	1828      	adds	r0, r5, r0
c0de3f7e:	6046      	str	r6, [r0, #4]
c0de3f80:	b001      	add	sp, #4
c0de3f82:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3f84:	20ff      	movs	r0, #255	; 0xff
c0de3f86:	f001 fb59 	bl	c0de563c <os_sched_exit>
c0de3f8a:	46c0      	nop			; (mov r8, r8)
c0de3f8c:	00000684 	.word	0x00000684
c0de3f90:	000006b0 	.word	0x000006b0
c0de3f94:	00006653 	.word	0x00006653

c0de3f98 <io_seproxyhal_init_ux>:
c0de3f98:	4770      	bx	lr
c0de3f9a:	d4d4      	bmi.n	c0de3f46 <io_seproxyhal_init+0x6>

c0de3f9c <io_seproxyhal_init_button>:
c0de3f9c:	4803      	ldr	r0, [pc, #12]	; (c0de3fac <io_seproxyhal_init_button+0x10>)
c0de3f9e:	4649      	mov	r1, r9
c0de3fa0:	2200      	movs	r2, #0
c0de3fa2:	500a      	str	r2, [r1, r0]
c0de3fa4:	1808      	adds	r0, r1, r0
c0de3fa6:	6042      	str	r2, [r0, #4]
c0de3fa8:	4770      	bx	lr
c0de3faa:	46c0      	nop			; (mov r8, r8)
c0de3fac:	000006b0 	.word	0x000006b0

c0de3fb0 <io_seproxyhal_display_icon>:
c0de3fb0:	b5b0      	push	{r4, r5, r7, lr}
c0de3fb2:	b088      	sub	sp, #32
c0de3fb4:	4605      	mov	r5, r0
c0de3fb6:	4608      	mov	r0, r1
c0de3fb8:	f000 fe8e 	bl	c0de4cd8 <pic>
c0de3fbc:	2800      	cmp	r0, #0
c0de3fbe:	d014      	beq.n	c0de3fea <io_seproxyhal_display_icon+0x3a>
c0de3fc0:	4604      	mov	r4, r0
c0de3fc2:	6900      	ldr	r0, [r0, #16]
c0de3fc4:	2800      	cmp	r0, #0
c0de3fc6:	d010      	beq.n	c0de3fea <io_seproxyhal_display_icon+0x3a>
c0de3fc8:	4628      	mov	r0, r5
c0de3fca:	f000 fe85 	bl	c0de4cd8 <pic>
c0de3fce:	4601      	mov	r1, r0
c0de3fd0:	ad01      	add	r5, sp, #4
c0de3fd2:	221c      	movs	r2, #28
c0de3fd4:	4628      	mov	r0, r5
c0de3fd6:	f004 fcc7 	bl	c0de8968 <__aeabi_memcpy>
c0de3fda:	6820      	ldr	r0, [r4, #0]
c0de3fdc:	80e8      	strh	r0, [r5, #6]
c0de3fde:	6860      	ldr	r0, [r4, #4]
c0de3fe0:	8128      	strh	r0, [r5, #8]
c0de3fe2:	4628      	mov	r0, r5
c0de3fe4:	4621      	mov	r1, r4
c0de3fe6:	f7fc fe46 	bl	c0de0c76 <bagl_draw_glyph>
c0de3fea:	b008      	add	sp, #32
c0de3fec:	bdb0      	pop	{r4, r5, r7, pc}

c0de3fee <io_seproxyhal_display_default>:
c0de3fee:	b570      	push	{r4, r5, r6, lr}
c0de3ff0:	f000 fe72 	bl	c0de4cd8 <pic>
c0de3ff4:	4604      	mov	r4, r0
c0de3ff6:	7800      	ldrb	r0, [r0, #0]
c0de3ff8:	267f      	movs	r6, #127	; 0x7f
c0de3ffa:	4006      	ands	r6, r0
c0de3ffc:	69e0      	ldr	r0, [r4, #28]
c0de3ffe:	f000 fe6b 	bl	c0de4cd8 <pic>
c0de4002:	2e00      	cmp	r6, #0
c0de4004:	d015      	beq.n	c0de4032 <io_seproxyhal_display_default+0x44>
c0de4006:	4605      	mov	r5, r0
c0de4008:	2800      	cmp	r0, #0
c0de400a:	d00c      	beq.n	c0de4026 <io_seproxyhal_display_default+0x38>
c0de400c:	2e05      	cmp	r6, #5
c0de400e:	d102      	bne.n	c0de4016 <io_seproxyhal_display_default+0x28>
c0de4010:	7ea0      	ldrb	r0, [r4, #26]
c0de4012:	2800      	cmp	r0, #0
c0de4014:	d00e      	beq.n	c0de4034 <io_seproxyhal_display_default+0x46>
c0de4016:	4628      	mov	r0, r5
c0de4018:	f004 fe08 	bl	c0de8c2c <strlen>
c0de401c:	b282      	uxth	r2, r0
c0de401e:	2300      	movs	r3, #0
c0de4020:	4620      	mov	r0, r4
c0de4022:	4629      	mov	r1, r5
c0de4024:	e003      	b.n	c0de402e <io_seproxyhal_display_default+0x40>
c0de4026:	2100      	movs	r1, #0
c0de4028:	4620      	mov	r0, r4
c0de402a:	460a      	mov	r2, r1
c0de402c:	460b      	mov	r3, r1
c0de402e:	f7fc f841 	bl	c0de00b4 <bagl_draw_with_context>
c0de4032:	bd70      	pop	{r4, r5, r6, pc}
c0de4034:	4620      	mov	r0, r4
c0de4036:	4629      	mov	r1, r5
c0de4038:	f7ff ffba 	bl	c0de3fb0 <io_seproxyhal_display_icon>
c0de403c:	bd70      	pop	{r4, r5, r6, pc}
c0de403e:	d4d4      	bmi.n	c0de3fea <io_seproxyhal_display_icon+0x3a>

c0de4040 <io_seproxyhal_button_push>:
c0de4040:	b570      	push	{r4, r5, r6, lr}
c0de4042:	2800      	cmp	r0, #0
c0de4044:	d02e      	beq.n	c0de40a4 <io_seproxyhal_button_push+0x64>
c0de4046:	460b      	mov	r3, r1
c0de4048:	4602      	mov	r2, r0
c0de404a:	4c17      	ldr	r4, [pc, #92]	; (c0de40a8 <io_seproxyhal_button_push+0x68>)
c0de404c:	4649      	mov	r1, r9
c0de404e:	5908      	ldr	r0, [r1, r4]
c0de4050:	1909      	adds	r1, r1, r4
c0de4052:	6849      	ldr	r1, [r1, #4]
c0de4054:	4298      	cmp	r0, r3
c0de4056:	d103      	bne.n	c0de4060 <io_seproxyhal_button_push+0x20>
c0de4058:	464d      	mov	r5, r9
c0de405a:	192d      	adds	r5, r5, r4
c0de405c:	1c49      	adds	r1, r1, #1
c0de405e:	6069      	str	r1, [r5, #4]
c0de4060:	4318      	orrs	r0, r3
c0de4062:	2b00      	cmp	r3, #0
c0de4064:	d003      	beq.n	c0de406e <io_seproxyhal_button_push+0x2e>
c0de4066:	464d      	mov	r5, r9
c0de4068:	5128      	str	r0, [r5, r4]
c0de406a:	4605      	mov	r5, r0
c0de406c:	e007      	b.n	c0de407e <io_seproxyhal_button_push+0x3e>
c0de406e:	464e      	mov	r6, r9
c0de4070:	2500      	movs	r5, #0
c0de4072:	5135      	str	r5, [r6, r4]
c0de4074:	1936      	adds	r6, r6, r4
c0de4076:	6075      	str	r5, [r6, #4]
c0de4078:	4e0c      	ldr	r6, [pc, #48]	; (c0de40ac <io_seproxyhal_button_push+0x6c>)
c0de407a:	1c76      	adds	r6, r6, #1
c0de407c:	4330      	orrs	r0, r6
c0de407e:	429d      	cmp	r5, r3
c0de4080:	d003      	beq.n	c0de408a <io_seproxyhal_button_push+0x4a>
c0de4082:	464b      	mov	r3, r9
c0de4084:	191b      	adds	r3, r3, r4
c0de4086:	2400      	movs	r4, #0
c0de4088:	605c      	str	r4, [r3, #4]
c0de408a:	2908      	cmp	r1, #8
c0de408c:	d309      	bcc.n	c0de40a2 <io_seproxyhal_button_push+0x62>
c0de408e:	4c08      	ldr	r4, [pc, #32]	; (c0de40b0 <io_seproxyhal_button_push+0x70>)
c0de4090:	434c      	muls	r4, r1
c0de4092:	2301      	movs	r3, #1
c0de4094:	4d07      	ldr	r5, [pc, #28]	; (c0de40b4 <io_seproxyhal_button_push+0x74>)
c0de4096:	42ac      	cmp	r4, r5
c0de4098:	d201      	bcs.n	c0de409e <io_seproxyhal_button_push+0x5e>
c0de409a:	079c      	lsls	r4, r3, #30
c0de409c:	4320      	orrs	r0, r4
c0de409e:	07db      	lsls	r3, r3, #31
c0de40a0:	4398      	bics	r0, r3
c0de40a2:	4790      	blx	r2
c0de40a4:	bd70      	pop	{r4, r5, r6, pc}
c0de40a6:	46c0      	nop			; (mov r8, r8)
c0de40a8:	000006b0 	.word	0x000006b0
c0de40ac:	7fffffff 	.word	0x7fffffff
c0de40b0:	aaaaaaab 	.word	0xaaaaaaab
c0de40b4:	55555556 	.word	0x55555556

c0de40b8 <os_io_seproxyhal_get_app_name_and_version>:
c0de40b8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de40ba:	b081      	sub	sp, #4
c0de40bc:	4a11      	ldr	r2, [pc, #68]	; (c0de4104 <os_io_seproxyhal_get_app_name_and_version+0x4c>)
c0de40be:	4649      	mov	r1, r9
c0de40c0:	2001      	movs	r0, #1
c0de40c2:	9000      	str	r0, [sp, #0]
c0de40c4:	5488      	strb	r0, [r1, r2]
c0de40c6:	188e      	adds	r6, r1, r2
c0de40c8:	1cb1      	adds	r1, r6, #2
c0de40ca:	22a7      	movs	r2, #167	; 0xa7
c0de40cc:	0057      	lsls	r7, r2, #1
c0de40ce:	1c7a      	adds	r2, r7, #1
c0de40d0:	f001 faa8 	bl	c0de5624 <os_registry_get_current_app_tag>
c0de40d4:	4605      	mov	r5, r0
c0de40d6:	7070      	strb	r0, [r6, #1]
c0de40d8:	1984      	adds	r4, r0, r6
c0de40da:	1ce1      	adds	r1, r4, #3
c0de40dc:	1a3a      	subs	r2, r7, r0
c0de40de:	2002      	movs	r0, #2
c0de40e0:	f001 faa0 	bl	c0de5624 <os_registry_get_current_app_tag>
c0de40e4:	70a0      	strb	r0, [r4, #2]
c0de40e6:	182c      	adds	r4, r5, r0
c0de40e8:	19a5      	adds	r5, r4, r6
c0de40ea:	9800      	ldr	r0, [sp, #0]
c0de40ec:	70e8      	strb	r0, [r5, #3]
c0de40ee:	f001 fa77 	bl	c0de55e0 <os_flags>
c0de40f2:	2100      	movs	r1, #0
c0de40f4:	71a9      	strb	r1, [r5, #6]
c0de40f6:	2190      	movs	r1, #144	; 0x90
c0de40f8:	7169      	strb	r1, [r5, #5]
c0de40fa:	7128      	strb	r0, [r5, #4]
c0de40fc:	1de0      	adds	r0, r4, #7
c0de40fe:	b001      	add	sp, #4
c0de4100:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4102:	46c0      	nop			; (mov r8, r8)
c0de4104:	00000530 	.word	0x00000530

c0de4108 <io_exchange>:
c0de4108:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de410a:	b085      	sub	sp, #20
c0de410c:	460a      	mov	r2, r1
c0de410e:	4606      	mov	r6, r0
c0de4110:	0740      	lsls	r0, r0, #29
c0de4112:	d005      	beq.n	c0de4120 <io_exchange+0x18>
c0de4114:	4635      	mov	r5, r6
c0de4116:	b2e8      	uxtb	r0, r5
c0de4118:	b291      	uxth	r1, r2
c0de411a:	f7ff fd29 	bl	c0de3b70 <io_exchange_al>
c0de411e:	e16a      	b.n	c0de43f6 <io_exchange+0x2ee>
c0de4120:	204b      	movs	r0, #75	; 0x4b
c0de4122:	0084      	lsls	r4, r0, #2
c0de4124:	4fbc      	ldr	r7, [pc, #752]	; (c0de4418 <io_exchange+0x310>)
c0de4126:	4635      	mov	r5, r6
c0de4128:	2110      	movs	r1, #16
c0de412a:	4031      	ands	r1, r6
c0de412c:	0410      	lsls	r0, r2, #16
c0de412e:	9504      	str	r5, [sp, #16]
c0de4130:	d100      	bne.n	c0de4134 <io_exchange+0x2c>
c0de4132:	e0e2      	b.n	c0de42fa <io_exchange+0x1f2>
c0de4134:	2900      	cmp	r1, #0
c0de4136:	d000      	beq.n	c0de413a <io_exchange+0x32>
c0de4138:	e0df      	b.n	c0de42fa <io_exchange+0x1f2>
c0de413a:	9203      	str	r2, [sp, #12]
c0de413c:	9102      	str	r1, [sp, #8]
c0de413e:	f001 fa95 	bl	c0de566c <io_seph_is_status_sent>
c0de4142:	2800      	cmp	r0, #0
c0de4144:	4db3      	ldr	r5, [pc, #716]	; (c0de4414 <io_exchange+0x30c>)
c0de4146:	d00c      	beq.n	c0de4162 <io_exchange+0x5a>
c0de4148:	4648      	mov	r0, r9
c0de414a:	1940      	adds	r0, r0, r5
c0de414c:	2200      	movs	r2, #0
c0de414e:	4621      	mov	r1, r4
c0de4150:	f001 fa96 	bl	c0de5680 <io_seph_recv>
c0de4154:	2001      	movs	r0, #1
c0de4156:	f000 f971 	bl	c0de443c <os_io_seph_recv_and_process>
c0de415a:	f001 fa87 	bl	c0de566c <io_seph_is_status_sent>
c0de415e:	2800      	cmp	r0, #0
c0de4160:	d1f2      	bne.n	c0de4148 <io_exchange+0x40>
c0de4162:	4649      	mov	r1, r9
c0de4164:	5dc8      	ldrb	r0, [r1, r7]
c0de4166:	19c9      	adds	r1, r1, r7
c0de4168:	6889      	ldr	r1, [r1, #8]
c0de416a:	227d      	movs	r2, #125	; 0x7d
c0de416c:	0112      	lsls	r2, r2, #4
c0de416e:	188d      	adds	r5, r1, r2
c0de4170:	2808      	cmp	r0, #8
c0de4172:	dd0d      	ble.n	c0de4190 <io_exchange+0x88>
c0de4174:	2809      	cmp	r0, #9
c0de4176:	9a03      	ldr	r2, [sp, #12]
c0de4178:	d015      	beq.n	c0de41a6 <io_exchange+0x9e>
c0de417a:	280a      	cmp	r0, #10
c0de417c:	d03c      	beq.n	c0de41f8 <io_exchange+0xf0>
c0de417e:	280b      	cmp	r0, #11
c0de4180:	d000      	beq.n	c0de4184 <io_exchange+0x7c>
c0de4182:	e081      	b.n	c0de4288 <io_exchange+0x180>
c0de4184:	b291      	uxth	r1, r2
c0de4186:	48a9      	ldr	r0, [pc, #676]	; (c0de442c <io_exchange+0x324>)
c0de4188:	4478      	add	r0, pc
c0de418a:	f000 fadd 	bl	c0de4748 <io_usb_hid_send>
c0de418e:	e09c      	b.n	c0de42ca <io_exchange+0x1c2>
c0de4190:	2801      	cmp	r0, #1
c0de4192:	9a03      	ldr	r2, [sp, #12]
c0de4194:	d048      	beq.n	c0de4228 <io_exchange+0x120>
c0de4196:	2807      	cmp	r0, #7
c0de4198:	d173      	bne.n	c0de4282 <io_exchange+0x17a>
c0de419a:	b291      	uxth	r1, r2
c0de419c:	48a2      	ldr	r0, [pc, #648]	; (c0de4428 <io_exchange+0x320>)
c0de419e:	4478      	add	r0, pc
c0de41a0:	f000 fad2 	bl	c0de4748 <io_usb_hid_send>
c0de41a4:	e091      	b.n	c0de42ca <io_exchange+0x1c2>
c0de41a6:	4648      	mov	r0, r9
c0de41a8:	499c      	ldr	r1, [pc, #624]	; (c0de441c <io_exchange+0x314>)
c0de41aa:	1847      	adds	r7, r0, r1
c0de41ac:	2100      	movs	r1, #0
c0de41ae:	4638      	mov	r0, r7
c0de41b0:	9101      	str	r1, [sp, #4]
c0de41b2:	f002 f83b 	bl	c0de622c <u2f_message_set_autoreply_wait_user_presence>
c0de41b6:	4638      	mov	r0, r7
c0de41b8:	f001 fd80 	bl	c0de5cbc <u2f_message_repliable>
c0de41bc:	2800      	cmp	r0, #0
c0de41be:	d13a      	bne.n	c0de4236 <io_exchange+0x12e>
c0de41c0:	489b      	ldr	r0, [pc, #620]	; (c0de4430 <io_exchange+0x328>)
c0de41c2:	4478      	add	r0, pc
c0de41c4:	2105      	movs	r1, #5
c0de41c6:	f001 fa45 	bl	c0de5654 <io_seph_send>
c0de41ca:	464f      	mov	r7, r9
c0de41cc:	4891      	ldr	r0, [pc, #580]	; (c0de4414 <io_exchange+0x30c>)
c0de41ce:	1838      	adds	r0, r7, r0
c0de41d0:	2200      	movs	r2, #0
c0de41d2:	4621      	mov	r1, r4
c0de41d4:	f001 fa54 	bl	c0de5680 <io_seph_recv>
c0de41d8:	488f      	ldr	r0, [pc, #572]	; (c0de4418 <io_exchange+0x310>)
c0de41da:	1838      	adds	r0, r7, r0
c0de41dc:	6880      	ldr	r0, [r0, #8]
c0de41de:	42a8      	cmp	r0, r5
c0de41e0:	d300      	bcc.n	c0de41e4 <io_exchange+0xdc>
c0de41e2:	e10b      	b.n	c0de43fc <io_exchange+0x2f4>
c0de41e4:	f7ff fe16 	bl	c0de3e14 <io_seproxyhal_handle_event>
c0de41e8:	f001 fa40 	bl	c0de566c <io_seph_is_status_sent>
c0de41ec:	2800      	cmp	r0, #0
c0de41ee:	d1ec      	bne.n	c0de41ca <io_exchange+0xc2>
c0de41f0:	4648      	mov	r0, r9
c0de41f2:	498a      	ldr	r1, [pc, #552]	; (c0de441c <io_exchange+0x314>)
c0de41f4:	1840      	adds	r0, r0, r1
c0de41f6:	e7df      	b.n	c0de41b8 <io_exchange+0xb0>
c0de41f8:	4620      	mov	r0, r4
c0de41fa:	3025      	adds	r0, #37	; 0x25
c0de41fc:	b291      	uxth	r1, r2
c0de41fe:	9101      	str	r1, [sp, #4]
c0de4200:	4281      	cmp	r1, r0
c0de4202:	d900      	bls.n	c0de4206 <io_exchange+0xfe>
c0de4204:	e100      	b.n	c0de4408 <io_exchange+0x300>
c0de4206:	464d      	mov	r5, r9
c0de4208:	2053      	movs	r0, #83	; 0x53
c0de420a:	4982      	ldr	r1, [pc, #520]	; (c0de4414 <io_exchange+0x30c>)
c0de420c:	5468      	strb	r0, [r5, r1]
c0de420e:	1868      	adds	r0, r5, r1
c0de4210:	7082      	strb	r2, [r0, #2]
c0de4212:	0a11      	lsrs	r1, r2, #8
c0de4214:	7041      	strb	r1, [r0, #1]
c0de4216:	2103      	movs	r1, #3
c0de4218:	f001 fa1c 	bl	c0de5654 <io_seph_send>
c0de421c:	4880      	ldr	r0, [pc, #512]	; (c0de4420 <io_exchange+0x318>)
c0de421e:	1828      	adds	r0, r5, r0
c0de4220:	9901      	ldr	r1, [sp, #4]
c0de4222:	f001 fa17 	bl	c0de5654 <io_seph_send>
c0de4226:	e054      	b.n	c0de42d2 <io_exchange+0x1ca>
c0de4228:	4648      	mov	r0, r9
c0de422a:	497d      	ldr	r1, [pc, #500]	; (c0de4420 <io_exchange+0x318>)
c0de422c:	1840      	adds	r0, r0, r1
c0de422e:	b291      	uxth	r1, r2
c0de4230:	f7fe f866 	bl	c0de2300 <LEDGER_BLE_send>
c0de4234:	e049      	b.n	c0de42ca <io_exchange+0x1c2>
c0de4236:	4621      	mov	r1, r4
c0de4238:	311e      	adds	r1, #30
c0de423a:	9a03      	ldr	r2, [sp, #12]
c0de423c:	b290      	uxth	r0, r2
c0de423e:	4288      	cmp	r0, r1
c0de4240:	d900      	bls.n	c0de4244 <io_exchange+0x13c>
c0de4242:	e0e1      	b.n	c0de4408 <io_exchange+0x300>
c0de4244:	464b      	mov	r3, r9
c0de4246:	9300      	str	r3, [sp, #0]
c0de4248:	4975      	ldr	r1, [pc, #468]	; (c0de4420 <io_exchange+0x318>)
c0de424a:	185f      	adds	r7, r3, r1
c0de424c:	2190      	movs	r1, #144	; 0x90
c0de424e:	5439      	strb	r1, [r7, r0]
c0de4250:	1838      	adds	r0, r7, r0
c0de4252:	9901      	ldr	r1, [sp, #4]
c0de4254:	7041      	strb	r1, [r0, #1]
c0de4256:	1d78      	adds	r0, r7, #5
c0de4258:	1c91      	adds	r1, r2, #2
c0de425a:	b28a      	uxth	r2, r1
c0de425c:	4639      	mov	r1, r7
c0de425e:	f004 fb87 	bl	c0de8970 <__aeabi_memmove>
c0de4262:	2105      	movs	r1, #5
c0de4264:	4638      	mov	r0, r7
c0de4266:	f004 fb79 	bl	c0de895c <__aeabi_memclr>
c0de426a:	486c      	ldr	r0, [pc, #432]	; (c0de441c <io_exchange+0x314>)
c0de426c:	9900      	ldr	r1, [sp, #0]
c0de426e:	1808      	adds	r0, r1, r0
c0de4270:	9903      	ldr	r1, [sp, #12]
c0de4272:	1dc9      	adds	r1, r1, #7
c0de4274:	b28b      	uxth	r3, r1
c0de4276:	2183      	movs	r1, #131	; 0x83
c0de4278:	463a      	mov	r2, r7
c0de427a:	f002 f805 	bl	c0de6288 <u2f_message_reply>
c0de427e:	4f66      	ldr	r7, [pc, #408]	; (c0de4418 <io_exchange+0x310>)
c0de4280:	e023      	b.n	c0de42ca <io_exchange+0x1c2>
c0de4282:	2800      	cmp	r0, #0
c0de4284:	d100      	bne.n	c0de4288 <io_exchange+0x180>
c0de4286:	e0c2      	b.n	c0de440e <io_exchange+0x306>
c0de4288:	9804      	ldr	r0, [sp, #16]
c0de428a:	b2c0      	uxtb	r0, r0
c0de428c:	b291      	uxth	r1, r2
c0de428e:	f7ff fc6f 	bl	c0de3b70 <io_exchange_al>
c0de4292:	2800      	cmp	r0, #0
c0de4294:	d019      	beq.n	c0de42ca <io_exchange+0x1c2>
c0de4296:	e0ba      	b.n	c0de440e <io_exchange+0x306>
c0de4298:	4866      	ldr	r0, [pc, #408]	; (c0de4434 <io_exchange+0x32c>)
c0de429a:	4478      	add	r0, pc
c0de429c:	2105      	movs	r1, #5
c0de429e:	f001 f9d9 	bl	c0de5654 <io_seph_send>
c0de42a2:	464f      	mov	r7, r9
c0de42a4:	485b      	ldr	r0, [pc, #364]	; (c0de4414 <io_exchange+0x30c>)
c0de42a6:	1838      	adds	r0, r7, r0
c0de42a8:	2200      	movs	r2, #0
c0de42aa:	4621      	mov	r1, r4
c0de42ac:	f001 f9e8 	bl	c0de5680 <io_seph_recv>
c0de42b0:	4859      	ldr	r0, [pc, #356]	; (c0de4418 <io_exchange+0x310>)
c0de42b2:	1838      	adds	r0, r7, r0
c0de42b4:	4f58      	ldr	r7, [pc, #352]	; (c0de4418 <io_exchange+0x310>)
c0de42b6:	6880      	ldr	r0, [r0, #8]
c0de42b8:	42a8      	cmp	r0, r5
c0de42ba:	d300      	bcc.n	c0de42be <io_exchange+0x1b6>
c0de42bc:	e09e      	b.n	c0de43fc <io_exchange+0x2f4>
c0de42be:	f7ff fda9 	bl	c0de3e14 <io_seproxyhal_handle_event>
c0de42c2:	f001 f9d3 	bl	c0de566c <io_seph_is_status_sent>
c0de42c6:	2800      	cmp	r0, #0
c0de42c8:	d1eb      	bne.n	c0de42a2 <io_exchange+0x19a>
c0de42ca:	4648      	mov	r0, r9
c0de42cc:	5dc0      	ldrb	r0, [r0, r7]
c0de42ce:	2800      	cmp	r0, #0
c0de42d0:	d1e2      	bne.n	c0de4298 <io_exchange+0x190>
c0de42d2:	4649      	mov	r1, r9
c0de42d4:	2000      	movs	r0, #0
c0de42d6:	55c8      	strb	r0, [r1, r7]
c0de42d8:	19c9      	adds	r1, r1, r7
c0de42da:	7188      	strb	r0, [r1, #6]
c0de42dc:	8048      	strh	r0, [r1, #2]
c0de42de:	9d04      	ldr	r5, [sp, #16]
c0de42e0:	06a9      	lsls	r1, r5, #26
c0de42e2:	d500      	bpl.n	c0de42e6 <io_exchange+0x1de>
c0de42e4:	e087      	b.n	c0de43f6 <io_exchange+0x2ee>
c0de42e6:	484f      	ldr	r0, [pc, #316]	; (c0de4424 <io_exchange+0x31c>)
c0de42e8:	4478      	add	r0, pc
c0de42ea:	2105      	movs	r1, #5
c0de42ec:	f001 f9b2 	bl	c0de5654 <io_seph_send>
c0de42f0:	b268      	sxtb	r0, r5
c0de42f2:	2800      	cmp	r0, #0
c0de42f4:	9902      	ldr	r1, [sp, #8]
c0de42f6:	d500      	bpl.n	c0de42fa <io_exchange+0x1f2>
c0de42f8:	e083      	b.n	c0de4402 <io_exchange+0x2fa>
c0de42fa:	2900      	cmp	r1, #0
c0de42fc:	d106      	bne.n	c0de430c <io_exchange+0x204>
c0de42fe:	0670      	lsls	r0, r6, #25
c0de4300:	d475      	bmi.n	c0de43ee <io_exchange+0x2e6>
c0de4302:	4648      	mov	r0, r9
c0de4304:	2100      	movs	r1, #0
c0de4306:	55c1      	strb	r1, [r0, r7]
c0de4308:	19c0      	adds	r0, r0, r7
c0de430a:	7181      	strb	r1, [r0, #6]
c0de430c:	4648      	mov	r0, r9
c0de430e:	19c0      	adds	r0, r0, r7
c0de4310:	2100      	movs	r1, #0
c0de4312:	8041      	strh	r1, [r0, #2]
c0de4314:	4848      	ldr	r0, [pc, #288]	; (c0de4438 <io_exchange+0x330>)
c0de4316:	4478      	add	r0, pc
c0de4318:	2105      	movs	r1, #5
c0de431a:	f001 f99b 	bl	c0de5654 <io_seph_send>
c0de431e:	4648      	mov	r0, r9
c0de4320:	4e3c      	ldr	r6, [pc, #240]	; (c0de4414 <io_exchange+0x30c>)
c0de4322:	1980      	adds	r0, r0, r6
c0de4324:	2500      	movs	r5, #0
c0de4326:	4621      	mov	r1, r4
c0de4328:	462a      	mov	r2, r5
c0de432a:	f001 f9a9 	bl	c0de5680 <io_seph_recv>
c0de432e:	2803      	cmp	r0, #3
c0de4330:	d313      	bcc.n	c0de435a <io_exchange+0x252>
c0de4332:	4649      	mov	r1, r9
c0de4334:	1989      	adds	r1, r1, r6
c0de4336:	788a      	ldrb	r2, [r1, #2]
c0de4338:	7849      	ldrb	r1, [r1, #1]
c0de433a:	0209      	lsls	r1, r1, #8
c0de433c:	1889      	adds	r1, r1, r2
c0de433e:	1cc9      	adds	r1, r1, #3
c0de4340:	4281      	cmp	r1, r0
c0de4342:	d10a      	bne.n	c0de435a <io_exchange+0x252>
c0de4344:	f7ff fd66 	bl	c0de3e14 <io_seproxyhal_handle_event>
c0de4348:	4648      	mov	r0, r9
c0de434a:	5dc1      	ldrb	r1, [r0, r7]
c0de434c:	19c0      	adds	r0, r0, r7
c0de434e:	2900      	cmp	r1, #0
c0de4350:	d0e0      	beq.n	c0de4314 <io_exchange+0x20c>
c0de4352:	8840      	ldrh	r0, [r0, #2]
c0de4354:	2800      	cmp	r0, #0
c0de4356:	d0dd      	beq.n	c0de4314 <io_exchange+0x20c>
c0de4358:	e002      	b.n	c0de4360 <io_exchange+0x258>
c0de435a:	4648      	mov	r0, r9
c0de435c:	55c5      	strb	r5, [r0, r7]
c0de435e:	e7d5      	b.n	c0de430c <io_exchange+0x204>
c0de4360:	f001 f908 	bl	c0de5574 <os_perso_isonboarded>
c0de4364:	28aa      	cmp	r0, #170	; 0xaa
c0de4366:	d103      	bne.n	c0de4370 <io_exchange+0x268>
c0de4368:	f001 f920 	bl	c0de55ac <os_global_pin_is_validated>
c0de436c:	28aa      	cmp	r0, #170	; 0xaa
c0de436e:	d12a      	bne.n	c0de43c6 <io_exchange+0x2be>
c0de4370:	4648      	mov	r0, r9
c0de4372:	4a2b      	ldr	r2, [pc, #172]	; (c0de4420 <io_exchange+0x318>)
c0de4374:	5c80      	ldrb	r0, [r0, r2]
c0de4376:	28b0      	cmp	r0, #176	; 0xb0
c0de4378:	d135      	bne.n	c0de43e6 <io_exchange+0x2de>
c0de437a:	4648      	mov	r0, r9
c0de437c:	1880      	adds	r0, r0, r2
c0de437e:	7840      	ldrb	r0, [r0, #1]
c0de4380:	28a7      	cmp	r0, #167	; 0xa7
c0de4382:	d00e      	beq.n	c0de43a2 <io_exchange+0x29a>
c0de4384:	2801      	cmp	r0, #1
c0de4386:	d12e      	bne.n	c0de43e6 <io_exchange+0x2de>
c0de4388:	4648      	mov	r0, r9
c0de438a:	1880      	adds	r0, r0, r2
c0de438c:	7881      	ldrb	r1, [r0, #2]
c0de438e:	78c0      	ldrb	r0, [r0, #3]
c0de4390:	4308      	orrs	r0, r1
c0de4392:	d128      	bne.n	c0de43e6 <io_exchange+0x2de>
c0de4394:	2007      	movs	r0, #7
c0de4396:	9d04      	ldr	r5, [sp, #16]
c0de4398:	4005      	ands	r5, r0
c0de439a:	f7ff fe8d 	bl	c0de40b8 <os_io_seproxyhal_get_app_name_and_version>
c0de439e:	4602      	mov	r2, r0
c0de43a0:	e01c      	b.n	c0de43dc <io_exchange+0x2d4>
c0de43a2:	4648      	mov	r0, r9
c0de43a4:	1880      	adds	r0, r0, r2
c0de43a6:	7881      	ldrb	r1, [r0, #2]
c0de43a8:	78c0      	ldrb	r0, [r0, #3]
c0de43aa:	4308      	orrs	r0, r1
c0de43ac:	d11b      	bne.n	c0de43e6 <io_exchange+0x2de>
c0de43ae:	4648      	mov	r0, r9
c0de43b0:	2190      	movs	r1, #144	; 0x90
c0de43b2:	5481      	strb	r1, [r0, r2]
c0de43b4:	1880      	adds	r0, r0, r2
c0de43b6:	7045      	strb	r5, [r0, #1]
c0de43b8:	2007      	movs	r0, #7
c0de43ba:	9d04      	ldr	r5, [sp, #16]
c0de43bc:	4005      	ands	r5, r0
c0de43be:	207f      	movs	r0, #127	; 0x7f
c0de43c0:	43c0      	mvns	r0, r0
c0de43c2:	182d      	adds	r5, r5, r0
c0de43c4:	e009      	b.n	c0de43da <io_exchange+0x2d2>
c0de43c6:	4648      	mov	r0, r9
c0de43c8:	2155      	movs	r1, #85	; 0x55
c0de43ca:	4a15      	ldr	r2, [pc, #84]	; (c0de4420 <io_exchange+0x318>)
c0de43cc:	5481      	strb	r1, [r0, r2]
c0de43ce:	1880      	adds	r0, r0, r2
c0de43d0:	2115      	movs	r1, #21
c0de43d2:	7041      	strb	r1, [r0, #1]
c0de43d4:	2007      	movs	r0, #7
c0de43d6:	9d04      	ldr	r5, [sp, #16]
c0de43d8:	4005      	ands	r5, r0
c0de43da:	2202      	movs	r2, #2
c0de43dc:	b2ee      	uxtb	r6, r5
c0de43de:	0768      	lsls	r0, r5, #29
c0de43e0:	d100      	bne.n	c0de43e4 <io_exchange+0x2dc>
c0de43e2:	e6a1      	b.n	c0de4128 <io_exchange+0x20>
c0de43e4:	e697      	b.n	c0de4116 <io_exchange+0xe>
c0de43e6:	4648      	mov	r0, r9
c0de43e8:	19c0      	adds	r0, r0, r7
c0de43ea:	8840      	ldrh	r0, [r0, #2]
c0de43ec:	e003      	b.n	c0de43f6 <io_exchange+0x2ee>
c0de43ee:	4648      	mov	r0, r9
c0de43f0:	19c0      	adds	r0, r0, r7
c0de43f2:	8840      	ldrh	r0, [r0, #2]
c0de43f4:	1f40      	subs	r0, r0, #5
c0de43f6:	b280      	uxth	r0, r0
c0de43f8:	b005      	add	sp, #20
c0de43fa:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de43fc:	2005      	movs	r0, #5
c0de43fe:	f7ff fc32 	bl	c0de3c66 <os_longjmp>
c0de4402:	2005      	movs	r0, #5
c0de4404:	f001 f91a 	bl	c0de563c <os_sched_exit>
c0de4408:	2002      	movs	r0, #2
c0de440a:	f7ff fc2c 	bl	c0de3c66 <os_longjmp>
c0de440e:	2004      	movs	r0, #4
c0de4410:	f7ff fc29 	bl	c0de3c66 <os_longjmp>
c0de4414:	00000404 	.word	0x00000404
c0de4418:	00000684 	.word	0x00000684
c0de441c:	000006b8 	.word	0x000006b8
c0de4420:	00000530 	.word	0x00000530
c0de4424:	000062b4 	.word	0x000062b4
c0de4428:	fffffc53 	.word	0xfffffc53
c0de442c:	fffffc79 	.word	0xfffffc79
c0de4430:	000063da 	.word	0x000063da
c0de4434:	00006302 	.word	0x00006302
c0de4438:	00006286 	.word	0x00006286

c0de443c <os_io_seph_recv_and_process>:
c0de443c:	b570      	push	{r4, r5, r6, lr}
c0de443e:	4604      	mov	r4, r0
c0de4440:	4810      	ldr	r0, [pc, #64]	; (c0de4484 <os_io_seph_recv_and_process+0x48>)
c0de4442:	4478      	add	r0, pc
c0de4444:	2105      	movs	r1, #5
c0de4446:	f001 f905 	bl	c0de5654 <io_seph_send>
c0de444a:	4d0c      	ldr	r5, [pc, #48]	; (c0de447c <os_io_seph_recv_and_process+0x40>)
c0de444c:	464e      	mov	r6, r9
c0de444e:	1970      	adds	r0, r6, r5
c0de4450:	214b      	movs	r1, #75	; 0x4b
c0de4452:	0089      	lsls	r1, r1, #2
c0de4454:	2200      	movs	r2, #0
c0de4456:	f001 f913 	bl	c0de5680 <io_seph_recv>
c0de445a:	5d70      	ldrb	r0, [r6, r5]
c0de445c:	2815      	cmp	r0, #21
c0de445e:	d808      	bhi.n	c0de4472 <os_io_seph_recv_and_process+0x36>
c0de4460:	2101      	movs	r1, #1
c0de4462:	4081      	lsls	r1, r0
c0de4464:	4806      	ldr	r0, [pc, #24]	; (c0de4480 <os_io_seph_recv_and_process+0x44>)
c0de4466:	4201      	tst	r1, r0
c0de4468:	d003      	beq.n	c0de4472 <os_io_seph_recv_and_process+0x36>
c0de446a:	2c00      	cmp	r4, #0
c0de446c:	d001      	beq.n	c0de4472 <os_io_seph_recv_and_process+0x36>
c0de446e:	2000      	movs	r0, #0
c0de4470:	bd70      	pop	{r4, r5, r6, pc}
c0de4472:	f7ff fccf 	bl	c0de3e14 <io_seproxyhal_handle_event>
c0de4476:	1e41      	subs	r1, r0, #1
c0de4478:	4188      	sbcs	r0, r1
c0de447a:	bd70      	pop	{r4, r5, r6, pc}
c0de447c:	00000404 	.word	0x00000404
c0de4480:	00207020 	.word	0x00207020
c0de4484:	0000615a 	.word	0x0000615a

c0de4488 <io_seproxyhal_io_heartbeat>:
c0de4488:	b5b0      	push	{r4, r5, r7, lr}
c0de448a:	480c      	ldr	r0, [pc, #48]	; (c0de44bc <io_seproxyhal_io_heartbeat+0x34>)
c0de448c:	4478      	add	r0, pc
c0de448e:	2105      	movs	r1, #5
c0de4490:	f001 f8e0 	bl	c0de5654 <io_seph_send>
c0de4494:	4c08      	ldr	r4, [pc, #32]	; (c0de44b8 <io_seproxyhal_io_heartbeat+0x30>)
c0de4496:	464d      	mov	r5, r9
c0de4498:	1928      	adds	r0, r5, r4
c0de449a:	214b      	movs	r1, #75	; 0x4b
c0de449c:	0089      	lsls	r1, r1, #2
c0de449e:	2200      	movs	r2, #0
c0de44a0:	f001 f8ee 	bl	c0de5680 <io_seph_recv>
c0de44a4:	5d28      	ldrb	r0, [r5, r4]
c0de44a6:	280e      	cmp	r0, #14
c0de44a8:	d001      	beq.n	c0de44ae <io_seproxyhal_io_heartbeat+0x26>
c0de44aa:	f7ff fcb3 	bl	c0de3e14 <io_seproxyhal_handle_event>
c0de44ae:	f001 f8dd 	bl	c0de566c <io_seph_is_status_sent>
c0de44b2:	2800      	cmp	r0, #0
c0de44b4:	d1f0      	bne.n	c0de4498 <io_seproxyhal_io_heartbeat+0x10>
c0de44b6:	bdb0      	pop	{r4, r5, r7, pc}
c0de44b8:	00000404 	.word	0x00000404
c0de44bc:	00006110 	.word	0x00006110

c0de44c0 <io_usb_hid_receive>:
c0de44c0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de44c2:	b081      	sub	sp, #4
c0de44c4:	9200      	str	r2, [sp, #0]
c0de44c6:	4605      	mov	r5, r0
c0de44c8:	4b59      	ldr	r3, [pc, #356]	; (c0de4630 <io_usb_hid_receive+0x170>)
c0de44ca:	4648      	mov	r0, r9
c0de44cc:	18c0      	adds	r0, r0, r3
c0de44ce:	4281      	cmp	r1, r0
c0de44d0:	d012      	beq.n	c0de44f8 <io_usb_hid_receive+0x38>
c0de44d2:	460e      	mov	r6, r1
c0de44d4:	462c      	mov	r4, r5
c0de44d6:	4648      	mov	r0, r9
c0de44d8:	18c7      	adds	r7, r0, r3
c0de44da:	2540      	movs	r5, #64	; 0x40
c0de44dc:	4638      	mov	r0, r7
c0de44de:	4629      	mov	r1, r5
c0de44e0:	f004 fa3c 	bl	c0de895c <__aeabi_memclr>
c0de44e4:	9a00      	ldr	r2, [sp, #0]
c0de44e6:	2a40      	cmp	r2, #64	; 0x40
c0de44e8:	d300      	bcc.n	c0de44ec <io_usb_hid_receive+0x2c>
c0de44ea:	462a      	mov	r2, r5
c0de44ec:	4638      	mov	r0, r7
c0de44ee:	4631      	mov	r1, r6
c0de44f0:	f004 fa3e 	bl	c0de8970 <__aeabi_memmove>
c0de44f4:	4b4e      	ldr	r3, [pc, #312]	; (c0de4630 <io_usb_hid_receive+0x170>)
c0de44f6:	4625      	mov	r5, r4
c0de44f8:	4648      	mov	r0, r9
c0de44fa:	18c0      	adds	r0, r0, r3
c0de44fc:	7880      	ldrb	r0, [r0, #2]
c0de44fe:	2801      	cmp	r0, #1
c0de4500:	dc0c      	bgt.n	c0de451c <io_usb_hid_receive+0x5c>
c0de4502:	2800      	cmp	r0, #0
c0de4504:	d038      	beq.n	c0de4578 <io_usb_hid_receive+0xb8>
c0de4506:	2801      	cmp	r0, #1
c0de4508:	d17f      	bne.n	c0de460a <io_usb_hid_receive+0x14a>
c0de450a:	4648      	mov	r0, r9
c0de450c:	18c4      	adds	r4, r0, r3
c0de450e:	1ce0      	adds	r0, r4, #3
c0de4510:	2104      	movs	r1, #4
c0de4512:	f7fd fc2d 	bl	c0de1d70 <cx_rng_no_throw>
c0de4516:	2140      	movs	r1, #64	; 0x40
c0de4518:	4620      	mov	r0, r4
c0de451a:	e03a      	b.n	c0de4592 <io_usb_hid_receive+0xd2>
c0de451c:	2802      	cmp	r0, #2
c0de451e:	d035      	beq.n	c0de458c <io_usb_hid_receive+0xcc>
c0de4520:	2805      	cmp	r0, #5
c0de4522:	d172      	bne.n	c0de460a <io_usb_hid_receive+0x14a>
c0de4524:	4648      	mov	r0, r9
c0de4526:	18c1      	adds	r1, r0, r3
c0de4528:	790a      	ldrb	r2, [r1, #4]
c0de452a:	78c9      	ldrb	r1, [r1, #3]
c0de452c:	0209      	lsls	r1, r1, #8
c0de452e:	1889      	adds	r1, r1, r2
c0de4530:	4f40      	ldr	r7, [pc, #256]	; (c0de4634 <io_usb_hid_receive+0x174>)
c0de4532:	59c0      	ldr	r0, [r0, r7]
c0de4534:	2600      	movs	r6, #0
c0de4536:	4288      	cmp	r0, r1
c0de4538:	d16f      	bne.n	c0de461a <io_usb_hid_receive+0x15a>
c0de453a:	4648      	mov	r0, r9
c0de453c:	59c0      	ldr	r0, [r0, r7]
c0de453e:	2800      	cmp	r0, #0
c0de4540:	d02a      	beq.n	c0de4598 <io_usb_hid_receive+0xd8>
c0de4542:	461d      	mov	r5, r3
c0de4544:	9800      	ldr	r0, [sp, #0]
c0de4546:	1f40      	subs	r0, r0, #5
c0de4548:	493b      	ldr	r1, [pc, #236]	; (c0de4638 <io_usb_hid_receive+0x178>)
c0de454a:	464a      	mov	r2, r9
c0de454c:	5852      	ldr	r2, [r2, r1]
c0de454e:	b283      	uxth	r3, r0
c0de4550:	429a      	cmp	r2, r3
c0de4552:	d201      	bcs.n	c0de4558 <io_usb_hid_receive+0x98>
c0de4554:	4648      	mov	r0, r9
c0de4556:	5840      	ldr	r0, [r0, r1]
c0de4558:	b281      	uxth	r1, r0
c0de455a:	293b      	cmp	r1, #59	; 0x3b
c0de455c:	462a      	mov	r2, r5
c0de455e:	d300      	bcc.n	c0de4562 <io_usb_hid_receive+0xa2>
c0de4560:	203b      	movs	r0, #59	; 0x3b
c0de4562:	b284      	uxth	r4, r0
c0de4564:	4835      	ldr	r0, [pc, #212]	; (c0de463c <io_usb_hid_receive+0x17c>)
c0de4566:	4649      	mov	r1, r9
c0de4568:	580d      	ldr	r5, [r1, r0]
c0de456a:	1888      	adds	r0, r1, r2
c0de456c:	1d41      	adds	r1, r0, #5
c0de456e:	4628      	mov	r0, r5
c0de4570:	4622      	mov	r2, r4
c0de4572:	f004 f9fd 	bl	c0de8970 <__aeabi_memmove>
c0de4576:	e03d      	b.n	c0de45f4 <io_usb_hid_receive+0x134>
c0de4578:	4648      	mov	r0, r9
c0de457a:	18c0      	adds	r0, r0, r3
c0de457c:	2600      	movs	r6, #0
c0de457e:	7186      	strb	r6, [r0, #6]
c0de4580:	7146      	strb	r6, [r0, #5]
c0de4582:	7106      	strb	r6, [r0, #4]
c0de4584:	70c6      	strb	r6, [r0, #3]
c0de4586:	2140      	movs	r1, #64	; 0x40
c0de4588:	47a8      	blx	r5
c0de458a:	e046      	b.n	c0de461a <io_usb_hid_receive+0x15a>
c0de458c:	4648      	mov	r0, r9
c0de458e:	18c0      	adds	r0, r0, r3
c0de4590:	2140      	movs	r1, #64	; 0x40
c0de4592:	47a8      	blx	r5
c0de4594:	2600      	movs	r6, #0
c0de4596:	e040      	b.n	c0de461a <io_usb_hid_receive+0x15a>
c0de4598:	4649      	mov	r1, r9
c0de459a:	18c8      	adds	r0, r1, r3
c0de459c:	7982      	ldrb	r2, [r0, #6]
c0de459e:	7940      	ldrb	r0, [r0, #5]
c0de45a0:	0200      	lsls	r0, r0, #8
c0de45a2:	1882      	adds	r2, r0, r2
c0de45a4:	4826      	ldr	r0, [pc, #152]	; (c0de4640 <io_usb_hid_receive+0x180>)
c0de45a6:	500a      	str	r2, [r1, r0]
c0de45a8:	5809      	ldr	r1, [r1, r0]
c0de45aa:	0849      	lsrs	r1, r1, #1
c0de45ac:	29a8      	cmp	r1, #168	; 0xa8
c0de45ae:	d834      	bhi.n	c0de461a <io_usb_hid_receive+0x15a>
c0de45b0:	4649      	mov	r1, r9
c0de45b2:	580a      	ldr	r2, [r1, r0]
c0de45b4:	4820      	ldr	r0, [pc, #128]	; (c0de4638 <io_usb_hid_receive+0x178>)
c0de45b6:	500a      	str	r2, [r1, r0]
c0de45b8:	18ca      	adds	r2, r1, r3
c0de45ba:	7852      	ldrb	r2, [r2, #1]
c0de45bc:	461e      	mov	r6, r3
c0de45be:	5ccb      	ldrb	r3, [r1, r3]
c0de45c0:	021b      	lsls	r3, r3, #8
c0de45c2:	189a      	adds	r2, r3, r2
c0de45c4:	4b1f      	ldr	r3, [pc, #124]	; (c0de4644 <io_usb_hid_receive+0x184>)
c0de45c6:	50ca      	str	r2, [r1, r3]
c0de45c8:	580a      	ldr	r2, [r1, r0]
c0de45ca:	9900      	ldr	r1, [sp, #0]
c0de45cc:	1fc9      	subs	r1, r1, #7
c0de45ce:	b28b      	uxth	r3, r1
c0de45d0:	429a      	cmp	r2, r3
c0de45d2:	d201      	bcs.n	c0de45d8 <io_usb_hid_receive+0x118>
c0de45d4:	4649      	mov	r1, r9
c0de45d6:	5809      	ldr	r1, [r1, r0]
c0de45d8:	b288      	uxth	r0, r1
c0de45da:	2839      	cmp	r0, #57	; 0x39
c0de45dc:	d300      	bcc.n	c0de45e0 <io_usb_hid_receive+0x120>
c0de45de:	2139      	movs	r1, #57	; 0x39
c0de45e0:	b28c      	uxth	r4, r1
c0de45e2:	4819      	ldr	r0, [pc, #100]	; (c0de4648 <io_usb_hid_receive+0x188>)
c0de45e4:	4649      	mov	r1, r9
c0de45e6:	180d      	adds	r5, r1, r0
c0de45e8:	1988      	adds	r0, r1, r6
c0de45ea:	1dc1      	adds	r1, r0, #7
c0de45ec:	4628      	mov	r0, r5
c0de45ee:	4622      	mov	r2, r4
c0de45f0:	f004 f9ba 	bl	c0de8968 <__aeabi_memcpy>
c0de45f4:	4810      	ldr	r0, [pc, #64]	; (c0de4638 <io_usb_hid_receive+0x178>)
c0de45f6:	4649      	mov	r1, r9
c0de45f8:	580a      	ldr	r2, [r1, r0]
c0de45fa:	1b12      	subs	r2, r2, r4
c0de45fc:	500a      	str	r2, [r1, r0]
c0de45fe:	1928      	adds	r0, r5, r4
c0de4600:	4a0e      	ldr	r2, [pc, #56]	; (c0de463c <io_usb_hid_receive+0x17c>)
c0de4602:	5088      	str	r0, [r1, r2]
c0de4604:	59c8      	ldr	r0, [r1, r7]
c0de4606:	1c40      	adds	r0, r0, #1
c0de4608:	51c8      	str	r0, [r1, r7]
c0de460a:	480b      	ldr	r0, [pc, #44]	; (c0de4638 <io_usb_hid_receive+0x178>)
c0de460c:	4649      	mov	r1, r9
c0de460e:	5808      	ldr	r0, [r1, r0]
c0de4610:	2800      	cmp	r0, #0
c0de4612:	d001      	beq.n	c0de4618 <io_usb_hid_receive+0x158>
c0de4614:	2601      	movs	r6, #1
c0de4616:	e008      	b.n	c0de462a <io_usb_hid_receive+0x16a>
c0de4618:	2602      	movs	r6, #2
c0de461a:	4806      	ldr	r0, [pc, #24]	; (c0de4634 <io_usb_hid_receive+0x174>)
c0de461c:	4649      	mov	r1, r9
c0de461e:	2200      	movs	r2, #0
c0de4620:	500a      	str	r2, [r1, r0]
c0de4622:	4806      	ldr	r0, [pc, #24]	; (c0de463c <io_usb_hid_receive+0x17c>)
c0de4624:	500a      	str	r2, [r1, r0]
c0de4626:	4804      	ldr	r0, [pc, #16]	; (c0de4638 <io_usb_hid_receive+0x178>)
c0de4628:	500a      	str	r2, [r1, r0]
c0de462a:	4630      	mov	r0, r6
c0de462c:	b001      	add	sp, #4
c0de462e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4630:	000006fc 	.word	0x000006fc
c0de4634:	00000740 	.word	0x00000740
c0de4638:	00000748 	.word	0x00000748
c0de463c:	0000074c 	.word	0x0000074c
c0de4640:	00000744 	.word	0x00000744
c0de4644:	00000750 	.word	0x00000750
c0de4648:	00000530 	.word	0x00000530

c0de464c <io_usb_hid_init>:
c0de464c:	4804      	ldr	r0, [pc, #16]	; (c0de4660 <io_usb_hid_init+0x14>)
c0de464e:	4649      	mov	r1, r9
c0de4650:	2200      	movs	r2, #0
c0de4652:	500a      	str	r2, [r1, r0]
c0de4654:	4803      	ldr	r0, [pc, #12]	; (c0de4664 <io_usb_hid_init+0x18>)
c0de4656:	500a      	str	r2, [r1, r0]
c0de4658:	4803      	ldr	r0, [pc, #12]	; (c0de4668 <io_usb_hid_init+0x1c>)
c0de465a:	500a      	str	r2, [r1, r0]
c0de465c:	4770      	bx	lr
c0de465e:	46c0      	nop			; (mov r8, r8)
c0de4660:	00000740 	.word	0x00000740
c0de4664:	0000074c 	.word	0x0000074c
c0de4668:	00000748 	.word	0x00000748

c0de466c <io_usb_hid_sent>:
c0de466c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de466e:	b083      	sub	sp, #12
c0de4670:	4b2f      	ldr	r3, [pc, #188]	; (c0de4730 <io_usb_hid_sent+0xc4>)
c0de4672:	4649      	mov	r1, r9
c0de4674:	58ca      	ldr	r2, [r1, r3]
c0de4676:	4c2f      	ldr	r4, [pc, #188]	; (c0de4734 <io_usb_hid_sent+0xc8>)
c0de4678:	5909      	ldr	r1, [r1, r4]
c0de467a:	2900      	cmp	r1, #0
c0de467c:	d029      	beq.n	c0de46d2 <io_usb_hid_sent+0x66>
c0de467e:	2a00      	cmp	r2, #0
c0de4680:	d027      	beq.n	c0de46d2 <io_usb_hid_sent+0x66>
c0de4682:	9201      	str	r2, [sp, #4]
c0de4684:	9002      	str	r0, [sp, #8]
c0de4686:	4d2e      	ldr	r5, [pc, #184]	; (c0de4740 <io_usb_hid_sent+0xd4>)
c0de4688:	464f      	mov	r7, r9
c0de468a:	197c      	adds	r4, r7, r5
c0de468c:	1d60      	adds	r0, r4, #5
c0de468e:	263b      	movs	r6, #59	; 0x3b
c0de4690:	4631      	mov	r1, r6
c0de4692:	f004 f963 	bl	c0de895c <__aeabi_memclr>
c0de4696:	482b      	ldr	r0, [pc, #172]	; (c0de4744 <io_usb_hid_sent+0xd8>)
c0de4698:	5839      	ldr	r1, [r7, r0]
c0de469a:	0a09      	lsrs	r1, r1, #8
c0de469c:	462a      	mov	r2, r5
c0de469e:	5579      	strb	r1, [r7, r5]
c0de46a0:	2105      	movs	r1, #5
c0de46a2:	70a1      	strb	r1, [r4, #2]
c0de46a4:	5838      	ldr	r0, [r7, r0]
c0de46a6:	7060      	strb	r0, [r4, #1]
c0de46a8:	4923      	ldr	r1, [pc, #140]	; (c0de4738 <io_usb_hid_sent+0xcc>)
c0de46aa:	5878      	ldr	r0, [r7, r1]
c0de46ac:	0a00      	lsrs	r0, r0, #8
c0de46ae:	70e0      	strb	r0, [r4, #3]
c0de46b0:	5878      	ldr	r0, [r7, r1]
c0de46b2:	7120      	strb	r0, [r4, #4]
c0de46b4:	4c1f      	ldr	r4, [pc, #124]	; (c0de4734 <io_usb_hid_sent+0xc8>)
c0de46b6:	5879      	ldr	r1, [r7, r1]
c0de46b8:	5938      	ldr	r0, [r7, r4]
c0de46ba:	2900      	cmp	r1, #0
c0de46bc:	d012      	beq.n	c0de46e4 <io_usb_hid_sent+0x78>
c0de46be:	283b      	cmp	r0, #59	; 0x3b
c0de46c0:	d801      	bhi.n	c0de46c6 <io_usb_hid_sent+0x5a>
c0de46c2:	4648      	mov	r0, r9
c0de46c4:	5906      	ldr	r6, [r0, r4]
c0de46c6:	4648      	mov	r0, r9
c0de46c8:	4617      	mov	r7, r2
c0de46ca:	1880      	adds	r0, r0, r2
c0de46cc:	1d40      	adds	r0, r0, #5
c0de46ce:	9d01      	ldr	r5, [sp, #4]
c0de46d0:	e018      	b.n	c0de4704 <io_usb_hid_sent+0x98>
c0de46d2:	4819      	ldr	r0, [pc, #100]	; (c0de4738 <io_usb_hid_sent+0xcc>)
c0de46d4:	4649      	mov	r1, r9
c0de46d6:	2200      	movs	r2, #0
c0de46d8:	500a      	str	r2, [r1, r0]
c0de46da:	50ca      	str	r2, [r1, r3]
c0de46dc:	4817      	ldr	r0, [pc, #92]	; (c0de473c <io_usb_hid_sent+0xd0>)
c0de46de:	540a      	strb	r2, [r1, r0]
c0de46e0:	510a      	str	r2, [r1, r4]
c0de46e2:	e022      	b.n	c0de472a <io_usb_hid_sent+0xbe>
c0de46e4:	2839      	cmp	r0, #57	; 0x39
c0de46e6:	4617      	mov	r7, r2
c0de46e8:	9d01      	ldr	r5, [sp, #4]
c0de46ea:	d901      	bls.n	c0de46f0 <io_usb_hid_sent+0x84>
c0de46ec:	2639      	movs	r6, #57	; 0x39
c0de46ee:	e001      	b.n	c0de46f4 <io_usb_hid_sent+0x88>
c0de46f0:	4648      	mov	r0, r9
c0de46f2:	5906      	ldr	r6, [r0, r4]
c0de46f4:	4648      	mov	r0, r9
c0de46f6:	19c1      	adds	r1, r0, r7
c0de46f8:	5902      	ldr	r2, [r0, r4]
c0de46fa:	0a12      	lsrs	r2, r2, #8
c0de46fc:	714a      	strb	r2, [r1, #5]
c0de46fe:	5900      	ldr	r0, [r0, r4]
c0de4700:	7188      	strb	r0, [r1, #6]
c0de4702:	1dc8      	adds	r0, r1, #7
c0de4704:	4629      	mov	r1, r5
c0de4706:	4632      	mov	r2, r6
c0de4708:	f004 f932 	bl	c0de8970 <__aeabi_memmove>
c0de470c:	9a02      	ldr	r2, [sp, #8]
c0de470e:	4b08      	ldr	r3, [pc, #32]	; (c0de4730 <io_usb_hid_sent+0xc4>)
c0de4710:	4648      	mov	r0, r9
c0de4712:	5901      	ldr	r1, [r0, r4]
c0de4714:	1b89      	subs	r1, r1, r6
c0de4716:	5101      	str	r1, [r0, r4]
c0de4718:	19a9      	adds	r1, r5, r6
c0de471a:	50c1      	str	r1, [r0, r3]
c0de471c:	4b06      	ldr	r3, [pc, #24]	; (c0de4738 <io_usb_hid_sent+0xcc>)
c0de471e:	58c1      	ldr	r1, [r0, r3]
c0de4720:	1c49      	adds	r1, r1, #1
c0de4722:	50c1      	str	r1, [r0, r3]
c0de4724:	19c0      	adds	r0, r0, r7
c0de4726:	2140      	movs	r1, #64	; 0x40
c0de4728:	4790      	blx	r2
c0de472a:	b003      	add	sp, #12
c0de472c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de472e:	46c0      	nop			; (mov r8, r8)
c0de4730:	0000074c 	.word	0x0000074c
c0de4734:	00000748 	.word	0x00000748
c0de4738:	00000740 	.word	0x00000740
c0de473c:	00000684 	.word	0x00000684
c0de4740:	000006fc 	.word	0x000006fc
c0de4744:	00000750 	.word	0x00000750

c0de4748 <io_usb_hid_send>:
c0de4748:	b510      	push	{r4, lr}
c0de474a:	2900      	cmp	r1, #0
c0de474c:	d00d      	beq.n	c0de476a <io_usb_hid_send+0x22>
c0de474e:	4a07      	ldr	r2, [pc, #28]	; (c0de476c <io_usb_hid_send+0x24>)
c0de4750:	464b      	mov	r3, r9
c0de4752:	2400      	movs	r4, #0
c0de4754:	509c      	str	r4, [r3, r2]
c0de4756:	4a06      	ldr	r2, [pc, #24]	; (c0de4770 <io_usb_hid_send+0x28>)
c0de4758:	5099      	str	r1, [r3, r2]
c0de475a:	4a06      	ldr	r2, [pc, #24]	; (c0de4774 <io_usb_hid_send+0x2c>)
c0de475c:	189a      	adds	r2, r3, r2
c0de475e:	4c06      	ldr	r4, [pc, #24]	; (c0de4778 <io_usb_hid_send+0x30>)
c0de4760:	511a      	str	r2, [r3, r4]
c0de4762:	4a06      	ldr	r2, [pc, #24]	; (c0de477c <io_usb_hid_send+0x34>)
c0de4764:	5099      	str	r1, [r3, r2]
c0de4766:	f7ff ff81 	bl	c0de466c <io_usb_hid_sent>
c0de476a:	bd10      	pop	{r4, pc}
c0de476c:	00000740 	.word	0x00000740
c0de4770:	00000748 	.word	0x00000748
c0de4774:	00000530 	.word	0x00000530
c0de4778:	0000074c 	.word	0x0000074c
c0de477c:	00000744 	.word	0x00000744

c0de4780 <snprintf>:
c0de4780:	b081      	sub	sp, #4
c0de4782:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4784:	b090      	sub	sp, #64	; 0x40
c0de4786:	9315      	str	r3, [sp, #84]	; 0x54
c0de4788:	2800      	cmp	r0, #0
c0de478a:	d100      	bne.n	c0de478e <snprintf+0xe>
c0de478c:	e1af      	b.n	c0de4aee <snprintf+0x36e>
c0de478e:	460d      	mov	r5, r1
c0de4790:	2900      	cmp	r1, #0
c0de4792:	d100      	bne.n	c0de4796 <snprintf+0x16>
c0de4794:	e1ab      	b.n	c0de4aee <snprintf+0x36e>
c0de4796:	4614      	mov	r4, r2
c0de4798:	4606      	mov	r6, r0
c0de479a:	4629      	mov	r1, r5
c0de479c:	f004 f8de 	bl	c0de895c <__aeabi_memclr>
c0de47a0:	1e6f      	subs	r7, r5, #1
c0de47a2:	d100      	bne.n	c0de47a6 <snprintf+0x26>
c0de47a4:	e1a3      	b.n	c0de4aee <snprintf+0x36e>
c0de47a6:	a815      	add	r0, sp, #84	; 0x54
c0de47a8:	900b      	str	r0, [sp, #44]	; 0x2c
c0de47aa:	7821      	ldrb	r1, [r4, #0]
c0de47ac:	2900      	cmp	r1, #0
c0de47ae:	d100      	bne.n	c0de47b2 <snprintf+0x32>
c0de47b0:	e19d      	b.n	c0de4aee <snprintf+0x36e>
c0de47b2:	4630      	mov	r0, r6
c0de47b4:	2201      	movs	r2, #1
c0de47b6:	9206      	str	r2, [sp, #24]
c0de47b8:	2600      	movs	r6, #0
c0de47ba:	2900      	cmp	r1, #0
c0de47bc:	d005      	beq.n	c0de47ca <snprintf+0x4a>
c0de47be:	2925      	cmp	r1, #37	; 0x25
c0de47c0:	d003      	beq.n	c0de47ca <snprintf+0x4a>
c0de47c2:	19a1      	adds	r1, r4, r6
c0de47c4:	7849      	ldrb	r1, [r1, #1]
c0de47c6:	1c76      	adds	r6, r6, #1
c0de47c8:	e7f7      	b.n	c0de47ba <snprintf+0x3a>
c0de47ca:	42be      	cmp	r6, r7
c0de47cc:	d300      	bcc.n	c0de47d0 <snprintf+0x50>
c0de47ce:	463e      	mov	r6, r7
c0de47d0:	4605      	mov	r5, r0
c0de47d2:	4621      	mov	r1, r4
c0de47d4:	4632      	mov	r2, r6
c0de47d6:	f004 f8cb 	bl	c0de8970 <__aeabi_memmove>
c0de47da:	1bbf      	subs	r7, r7, r6
c0de47dc:	9709      	str	r7, [sp, #36]	; 0x24
c0de47de:	d100      	bne.n	c0de47e2 <snprintf+0x62>
c0de47e0:	e185      	b.n	c0de4aee <snprintf+0x36e>
c0de47e2:	19a8      	adds	r0, r5, r6
c0de47e4:	5da1      	ldrb	r1, [r4, r6]
c0de47e6:	19a4      	adds	r4, r4, r6
c0de47e8:	2925      	cmp	r1, #37	; 0x25
c0de47ea:	d000      	beq.n	c0de47ee <snprintf+0x6e>
c0de47ec:	e17b      	b.n	c0de4ae6 <snprintf+0x366>
c0de47ee:	9007      	str	r0, [sp, #28]
c0de47f0:	1c64      	adds	r4, r4, #1
c0de47f2:	2000      	movs	r0, #0
c0de47f4:	2320      	movs	r3, #32
c0de47f6:	4607      	mov	r7, r0
c0de47f8:	9008      	str	r0, [sp, #32]
c0de47fa:	7821      	ldrb	r1, [r4, #0]
c0de47fc:	1c64      	adds	r4, r4, #1
c0de47fe:	2200      	movs	r2, #0
c0de4800:	292d      	cmp	r1, #45	; 0x2d
c0de4802:	dc0d      	bgt.n	c0de4820 <snprintf+0xa0>
c0de4804:	4610      	mov	r0, r2
c0de4806:	d0f8      	beq.n	c0de47fa <snprintf+0x7a>
c0de4808:	2925      	cmp	r1, #37	; 0x25
c0de480a:	d100      	bne.n	c0de480e <snprintf+0x8e>
c0de480c:	e0e0      	b.n	c0de49d0 <snprintf+0x250>
c0de480e:	292a      	cmp	r1, #42	; 0x2a
c0de4810:	d000      	beq.n	c0de4814 <snprintf+0x94>
c0de4812:	e152      	b.n	c0de4aba <snprintf+0x33a>
c0de4814:	7821      	ldrb	r1, [r4, #0]
c0de4816:	2973      	cmp	r1, #115	; 0x73
c0de4818:	d000      	beq.n	c0de481c <snprintf+0x9c>
c0de481a:	e163      	b.n	c0de4ae4 <snprintf+0x364>
c0de481c:	2002      	movs	r0, #2
c0de481e:	e028      	b.n	c0de4872 <snprintf+0xf2>
c0de4820:	2947      	cmp	r1, #71	; 0x47
c0de4822:	dc2b      	bgt.n	c0de487c <snprintf+0xfc>
c0de4824:	460a      	mov	r2, r1
c0de4826:	3a30      	subs	r2, #48	; 0x30
c0de4828:	2a0a      	cmp	r2, #10
c0de482a:	d211      	bcs.n	c0de4850 <snprintf+0xd0>
c0de482c:	970a      	str	r7, [sp, #40]	; 0x28
c0de482e:	461f      	mov	r7, r3
c0de4830:	2230      	movs	r2, #48	; 0x30
c0de4832:	460b      	mov	r3, r1
c0de4834:	4053      	eors	r3, r2
c0de4836:	9d08      	ldr	r5, [sp, #32]
c0de4838:	432b      	orrs	r3, r5
c0de483a:	d000      	beq.n	c0de483e <snprintf+0xbe>
c0de483c:	463a      	mov	r2, r7
c0de483e:	230a      	movs	r3, #10
c0de4840:	9d08      	ldr	r5, [sp, #32]
c0de4842:	436b      	muls	r3, r5
c0de4844:	1859      	adds	r1, r3, r1
c0de4846:	3930      	subs	r1, #48	; 0x30
c0de4848:	9108      	str	r1, [sp, #32]
c0de484a:	4613      	mov	r3, r2
c0de484c:	9f0a      	ldr	r7, [sp, #40]	; 0x28
c0de484e:	e7d4      	b.n	c0de47fa <snprintf+0x7a>
c0de4850:	292e      	cmp	r1, #46	; 0x2e
c0de4852:	d000      	beq.n	c0de4856 <snprintf+0xd6>
c0de4854:	e131      	b.n	c0de4aba <snprintf+0x33a>
c0de4856:	7821      	ldrb	r1, [r4, #0]
c0de4858:	292a      	cmp	r1, #42	; 0x2a
c0de485a:	d000      	beq.n	c0de485e <snprintf+0xde>
c0de485c:	e142      	b.n	c0de4ae4 <snprintf+0x364>
c0de485e:	7860      	ldrb	r0, [r4, #1]
c0de4860:	2848      	cmp	r0, #72	; 0x48
c0de4862:	d004      	beq.n	c0de486e <snprintf+0xee>
c0de4864:	2873      	cmp	r0, #115	; 0x73
c0de4866:	d002      	beq.n	c0de486e <snprintf+0xee>
c0de4868:	2868      	cmp	r0, #104	; 0x68
c0de486a:	d000      	beq.n	c0de486e <snprintf+0xee>
c0de486c:	e139      	b.n	c0de4ae2 <snprintf+0x362>
c0de486e:	1c64      	adds	r4, r4, #1
c0de4870:	2001      	movs	r0, #1
c0de4872:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0de4874:	1d0a      	adds	r2, r1, #4
c0de4876:	920b      	str	r2, [sp, #44]	; 0x2c
c0de4878:	680f      	ldr	r7, [r1, #0]
c0de487a:	e7be      	b.n	c0de47fa <snprintf+0x7a>
c0de487c:	2967      	cmp	r1, #103	; 0x67
c0de487e:	dc09      	bgt.n	c0de4894 <snprintf+0x114>
c0de4880:	2962      	cmp	r1, #98	; 0x62
c0de4882:	dc0f      	bgt.n	c0de48a4 <snprintf+0x124>
c0de4884:	2948      	cmp	r1, #72	; 0x48
c0de4886:	d100      	bne.n	c0de488a <snprintf+0x10a>
c0de4888:	e0a4      	b.n	c0de49d4 <snprintf+0x254>
c0de488a:	2958      	cmp	r1, #88	; 0x58
c0de488c:	d000      	beq.n	c0de4890 <snprintf+0x110>
c0de488e:	e114      	b.n	c0de4aba <snprintf+0x33a>
c0de4890:	2001      	movs	r0, #1
c0de4892:	e020      	b.n	c0de48d6 <snprintf+0x156>
c0de4894:	2972      	cmp	r1, #114	; 0x72
c0de4896:	dc17      	bgt.n	c0de48c8 <snprintf+0x148>
c0de4898:	2968      	cmp	r1, #104	; 0x68
c0de489a:	d100      	bne.n	c0de489e <snprintf+0x11e>
c0de489c:	e09e      	b.n	c0de49dc <snprintf+0x25c>
c0de489e:	2970      	cmp	r1, #112	; 0x70
c0de48a0:	d018      	beq.n	c0de48d4 <snprintf+0x154>
c0de48a2:	e10a      	b.n	c0de4aba <snprintf+0x33a>
c0de48a4:	2963      	cmp	r1, #99	; 0x63
c0de48a6:	d100      	bne.n	c0de48aa <snprintf+0x12a>
c0de48a8:	e09d      	b.n	c0de49e6 <snprintf+0x266>
c0de48aa:	2964      	cmp	r1, #100	; 0x64
c0de48ac:	d000      	beq.n	c0de48b0 <snprintf+0x130>
c0de48ae:	e104      	b.n	c0de4aba <snprintf+0x33a>
c0de48b0:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de48b2:	1d01      	adds	r1, r0, #4
c0de48b4:	910b      	str	r1, [sp, #44]	; 0x2c
c0de48b6:	6800      	ldr	r0, [r0, #0]
c0de48b8:	17c1      	asrs	r1, r0, #31
c0de48ba:	1842      	adds	r2, r0, r1
c0de48bc:	404a      	eors	r2, r1
c0de48be:	0fc1      	lsrs	r1, r0, #31
c0de48c0:	2000      	movs	r0, #0
c0de48c2:	9002      	str	r0, [sp, #8]
c0de48c4:	270a      	movs	r7, #10
c0de48c6:	e00d      	b.n	c0de48e4 <snprintf+0x164>
c0de48c8:	2973      	cmp	r1, #115	; 0x73
c0de48ca:	d100      	bne.n	c0de48ce <snprintf+0x14e>
c0de48cc:	e097      	b.n	c0de49fe <snprintf+0x27e>
c0de48ce:	2978      	cmp	r1, #120	; 0x78
c0de48d0:	d000      	beq.n	c0de48d4 <snprintf+0x154>
c0de48d2:	e0f2      	b.n	c0de4aba <snprintf+0x33a>
c0de48d4:	2000      	movs	r0, #0
c0de48d6:	9002      	str	r0, [sp, #8]
c0de48d8:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de48da:	1d01      	adds	r1, r0, #4
c0de48dc:	910b      	str	r1, [sp, #44]	; 0x2c
c0de48de:	6802      	ldr	r2, [r0, #0]
c0de48e0:	2100      	movs	r1, #0
c0de48e2:	2710      	movs	r7, #16
c0de48e4:	9e08      	ldr	r6, [sp, #32]
c0de48e6:	920a      	str	r2, [sp, #40]	; 0x28
c0de48e8:	4297      	cmp	r7, r2
c0de48ea:	9303      	str	r3, [sp, #12]
c0de48ec:	9104      	str	r1, [sp, #16]
c0de48ee:	d901      	bls.n	c0de48f4 <snprintf+0x174>
c0de48f0:	2501      	movs	r5, #1
c0de48f2:	e011      	b.n	c0de4918 <snprintf+0x198>
c0de48f4:	1e72      	subs	r2, r6, #1
c0de48f6:	4638      	mov	r0, r7
c0de48f8:	4605      	mov	r5, r0
c0de48fa:	4616      	mov	r6, r2
c0de48fc:	2100      	movs	r1, #0
c0de48fe:	4638      	mov	r0, r7
c0de4900:	462a      	mov	r2, r5
c0de4902:	460b      	mov	r3, r1
c0de4904:	f003 ff04 	bl	c0de8710 <__aeabi_lmul>
c0de4908:	1e4a      	subs	r2, r1, #1
c0de490a:	4191      	sbcs	r1, r2
c0de490c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
c0de490e:	4290      	cmp	r0, r2
c0de4910:	d802      	bhi.n	c0de4918 <snprintf+0x198>
c0de4912:	1e72      	subs	r2, r6, #1
c0de4914:	2900      	cmp	r1, #0
c0de4916:	d0ef      	beq.n	c0de48f8 <snprintf+0x178>
c0de4918:	9608      	str	r6, [sp, #32]
c0de491a:	2600      	movs	r6, #0
c0de491c:	9904      	ldr	r1, [sp, #16]
c0de491e:	2900      	cmp	r1, #0
c0de4920:	9405      	str	r4, [sp, #20]
c0de4922:	d101      	bne.n	c0de4928 <snprintf+0x1a8>
c0de4924:	9101      	str	r1, [sp, #4]
c0de4926:	e001      	b.n	c0de492c <snprintf+0x1ac>
c0de4928:	43f0      	mvns	r0, r6
c0de492a:	9001      	str	r0, [sp, #4]
c0de492c:	9b03      	ldr	r3, [sp, #12]
c0de492e:	9808      	ldr	r0, [sp, #32]
c0de4930:	1a40      	subs	r0, r0, r1
c0de4932:	2900      	cmp	r1, #0
c0de4934:	9c06      	ldr	r4, [sp, #24]
c0de4936:	d009      	beq.n	c0de494c <snprintf+0x1cc>
c0de4938:	b2d9      	uxtb	r1, r3
c0de493a:	2600      	movs	r6, #0
c0de493c:	2930      	cmp	r1, #48	; 0x30
c0de493e:	4634      	mov	r4, r6
c0de4940:	d104      	bne.n	c0de494c <snprintf+0x1cc>
c0de4942:	a90c      	add	r1, sp, #48	; 0x30
c0de4944:	222d      	movs	r2, #45	; 0x2d
c0de4946:	700a      	strb	r2, [r1, #0]
c0de4948:	2601      	movs	r6, #1
c0de494a:	9c06      	ldr	r4, [sp, #24]
c0de494c:	1e81      	subs	r1, r0, #2
c0de494e:	290d      	cmp	r1, #13
c0de4950:	d80b      	bhi.n	c0de496a <snprintf+0x1ea>
c0de4952:	1e41      	subs	r1, r0, #1
c0de4954:	d009      	beq.n	c0de496a <snprintf+0x1ea>
c0de4956:	a80c      	add	r0, sp, #48	; 0x30
c0de4958:	1980      	adds	r0, r0, r6
c0de495a:	b2da      	uxtb	r2, r3
c0de495c:	f004 f80c 	bl	c0de8978 <__aeabi_memset>
c0de4960:	9808      	ldr	r0, [sp, #32]
c0de4962:	1830      	adds	r0, r6, r0
c0de4964:	9901      	ldr	r1, [sp, #4]
c0de4966:	1840      	adds	r0, r0, r1
c0de4968:	1e46      	subs	r6, r0, #1
c0de496a:	2c00      	cmp	r4, #0
c0de496c:	d103      	bne.n	c0de4976 <snprintf+0x1f6>
c0de496e:	a80c      	add	r0, sp, #48	; 0x30
c0de4970:	212d      	movs	r1, #45	; 0x2d
c0de4972:	5581      	strb	r1, [r0, r6]
c0de4974:	1c76      	adds	r6, r6, #1
c0de4976:	2d00      	cmp	r5, #0
c0de4978:	d01a      	beq.n	c0de49b0 <snprintf+0x230>
c0de497a:	463c      	mov	r4, r7
c0de497c:	9802      	ldr	r0, [sp, #8]
c0de497e:	2800      	cmp	r0, #0
c0de4980:	d002      	beq.n	c0de4988 <snprintf+0x208>
c0de4982:	4f62      	ldr	r7, [pc, #392]	; (c0de4b0c <snprintf+0x38c>)
c0de4984:	447f      	add	r7, pc
c0de4986:	e001      	b.n	c0de498c <snprintf+0x20c>
c0de4988:	4f5f      	ldr	r7, [pc, #380]	; (c0de4b08 <snprintf+0x388>)
c0de498a:	447f      	add	r7, pc
c0de498c:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de498e:	4629      	mov	r1, r5
c0de4990:	f003 fe06 	bl	c0de85a0 <__udivsi3>
c0de4994:	4621      	mov	r1, r4
c0de4996:	f003 fe89 	bl	c0de86ac <__aeabi_uidivmod>
c0de499a:	5c78      	ldrb	r0, [r7, r1]
c0de499c:	a90c      	add	r1, sp, #48	; 0x30
c0de499e:	5588      	strb	r0, [r1, r6]
c0de49a0:	4628      	mov	r0, r5
c0de49a2:	4621      	mov	r1, r4
c0de49a4:	f003 fdfc 	bl	c0de85a0 <__udivsi3>
c0de49a8:	1c76      	adds	r6, r6, #1
c0de49aa:	42ac      	cmp	r4, r5
c0de49ac:	4605      	mov	r5, r0
c0de49ae:	d9ed      	bls.n	c0de498c <snprintf+0x20c>
c0de49b0:	9c09      	ldr	r4, [sp, #36]	; 0x24
c0de49b2:	42a6      	cmp	r6, r4
c0de49b4:	d300      	bcc.n	c0de49b8 <snprintf+0x238>
c0de49b6:	4626      	mov	r6, r4
c0de49b8:	a90c      	add	r1, sp, #48	; 0x30
c0de49ba:	9d07      	ldr	r5, [sp, #28]
c0de49bc:	4628      	mov	r0, r5
c0de49be:	4632      	mov	r2, r6
c0de49c0:	f003 ffd6 	bl	c0de8970 <__aeabi_memmove>
c0de49c4:	1ba7      	subs	r7, r4, r6
c0de49c6:	9c05      	ldr	r4, [sp, #20]
c0de49c8:	d100      	bne.n	c0de49cc <snprintf+0x24c>
c0de49ca:	e090      	b.n	c0de4aee <snprintf+0x36e>
c0de49cc:	19a8      	adds	r0, r5, r6
c0de49ce:	e076      	b.n	c0de4abe <snprintf+0x33e>
c0de49d0:	2025      	movs	r0, #37	; 0x25
c0de49d2:	e00c      	b.n	c0de49ee <snprintf+0x26e>
c0de49d4:	4625      	mov	r5, r4
c0de49d6:	4a4a      	ldr	r2, [pc, #296]	; (c0de4b00 <snprintf+0x380>)
c0de49d8:	447a      	add	r2, pc
c0de49da:	e002      	b.n	c0de49e2 <snprintf+0x262>
c0de49dc:	4625      	mov	r5, r4
c0de49de:	4a49      	ldr	r2, [pc, #292]	; (c0de4b04 <snprintf+0x384>)
c0de49e0:	447a      	add	r2, pc
c0de49e2:	9b06      	ldr	r3, [sp, #24]
c0de49e4:	e00f      	b.n	c0de4a06 <snprintf+0x286>
c0de49e6:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de49e8:	1d01      	adds	r1, r0, #4
c0de49ea:	910b      	str	r1, [sp, #44]	; 0x2c
c0de49ec:	6800      	ldr	r0, [r0, #0]
c0de49ee:	9907      	ldr	r1, [sp, #28]
c0de49f0:	7008      	strb	r0, [r1, #0]
c0de49f2:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de49f4:	1e40      	subs	r0, r0, #1
c0de49f6:	9009      	str	r0, [sp, #36]	; 0x24
c0de49f8:	d079      	beq.n	c0de4aee <snprintf+0x36e>
c0de49fa:	1c48      	adds	r0, r1, #1
c0de49fc:	e05e      	b.n	c0de4abc <snprintf+0x33c>
c0de49fe:	4625      	mov	r5, r4
c0de4a00:	4a3e      	ldr	r2, [pc, #248]	; (c0de4afc <snprintf+0x37c>)
c0de4a02:	447a      	add	r2, pc
c0de4a04:	2300      	movs	r3, #0
c0de4a06:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0de4a08:	1d0c      	adds	r4, r1, #4
c0de4a0a:	940b      	str	r4, [sp, #44]	; 0x2c
c0de4a0c:	b2c0      	uxtb	r0, r0
c0de4a0e:	6809      	ldr	r1, [r1, #0]
c0de4a10:	2802      	cmp	r0, #2
c0de4a12:	d04e      	beq.n	c0de4ab2 <snprintf+0x332>
c0de4a14:	2801      	cmp	r0, #1
c0de4a16:	462c      	mov	r4, r5
c0de4a18:	d00a      	beq.n	c0de4a30 <snprintf+0x2b0>
c0de4a1a:	2800      	cmp	r0, #0
c0de4a1c:	4637      	mov	r7, r6
c0de4a1e:	d107      	bne.n	c0de4a30 <snprintf+0x2b0>
c0de4a20:	4625      	mov	r5, r4
c0de4a22:	2000      	movs	r0, #0
c0de4a24:	5c0c      	ldrb	r4, [r1, r0]
c0de4a26:	1c40      	adds	r0, r0, #1
c0de4a28:	2c00      	cmp	r4, #0
c0de4a2a:	d1fb      	bne.n	c0de4a24 <snprintf+0x2a4>
c0de4a2c:	1e47      	subs	r7, r0, #1
c0de4a2e:	462c      	mov	r4, r5
c0de4a30:	2b00      	cmp	r3, #0
c0de4a32:	d01e      	beq.n	c0de4a72 <snprintf+0x2f2>
c0de4a34:	2f00      	cmp	r7, #0
c0de4a36:	d040      	beq.n	c0de4aba <snprintf+0x33a>
c0de4a38:	0078      	lsls	r0, r7, #1
c0de4a3a:	9b09      	ldr	r3, [sp, #36]	; 0x24
c0de4a3c:	1a18      	subs	r0, r3, r0
c0de4a3e:	9b09      	ldr	r3, [sp, #36]	; 0x24
c0de4a40:	2b01      	cmp	r3, #1
c0de4a42:	9e07      	ldr	r6, [sp, #28]
c0de4a44:	d953      	bls.n	c0de4aee <snprintf+0x36e>
c0de4a46:	780b      	ldrb	r3, [r1, #0]
c0de4a48:	4625      	mov	r5, r4
c0de4a4a:	091c      	lsrs	r4, r3, #4
c0de4a4c:	5d14      	ldrb	r4, [r2, r4]
c0de4a4e:	7034      	strb	r4, [r6, #0]
c0de4a50:	240f      	movs	r4, #15
c0de4a52:	401c      	ands	r4, r3
c0de4a54:	5d13      	ldrb	r3, [r2, r4]
c0de4a56:	7073      	strb	r3, [r6, #1]
c0de4a58:	9b09      	ldr	r3, [sp, #36]	; 0x24
c0de4a5a:	1e9b      	subs	r3, r3, #2
c0de4a5c:	9309      	str	r3, [sp, #36]	; 0x24
c0de4a5e:	d046      	beq.n	c0de4aee <snprintf+0x36e>
c0de4a60:	462c      	mov	r4, r5
c0de4a62:	1cb6      	adds	r6, r6, #2
c0de4a64:	9607      	str	r6, [sp, #28]
c0de4a66:	1c49      	adds	r1, r1, #1
c0de4a68:	1e7f      	subs	r7, r7, #1
c0de4a6a:	d1e8      	bne.n	c0de4a3e <snprintf+0x2be>
c0de4a6c:	4607      	mov	r7, r0
c0de4a6e:	9807      	ldr	r0, [sp, #28]
c0de4a70:	e025      	b.n	c0de4abe <snprintf+0x33e>
c0de4a72:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de4a74:	4287      	cmp	r7, r0
c0de4a76:	463e      	mov	r6, r7
c0de4a78:	d301      	bcc.n	c0de4a7e <snprintf+0x2fe>
c0de4a7a:	4606      	mov	r6, r0
c0de4a7c:	4607      	mov	r7, r0
c0de4a7e:	9d07      	ldr	r5, [sp, #28]
c0de4a80:	4628      	mov	r0, r5
c0de4a82:	4632      	mov	r2, r6
c0de4a84:	f003 ff74 	bl	c0de8970 <__aeabi_memmove>
c0de4a88:	9909      	ldr	r1, [sp, #36]	; 0x24
c0de4a8a:	1b89      	subs	r1, r1, r6
c0de4a8c:	d02f      	beq.n	c0de4aee <snprintf+0x36e>
c0de4a8e:	19e8      	adds	r0, r5, r7
c0de4a90:	9a08      	ldr	r2, [sp, #32]
c0de4a92:	42b2      	cmp	r2, r6
c0de4a94:	d915      	bls.n	c0de4ac2 <snprintf+0x342>
c0de4a96:	1b95      	subs	r5, r2, r6
c0de4a98:	460f      	mov	r7, r1
c0de4a9a:	428d      	cmp	r5, r1
c0de4a9c:	d300      	bcc.n	c0de4aa0 <snprintf+0x320>
c0de4a9e:	463d      	mov	r5, r7
c0de4aa0:	2220      	movs	r2, #32
c0de4aa2:	4606      	mov	r6, r0
c0de4aa4:	4629      	mov	r1, r5
c0de4aa6:	f003 ff67 	bl	c0de8978 <__aeabi_memset>
c0de4aaa:	1b7f      	subs	r7, r7, r5
c0de4aac:	d01f      	beq.n	c0de4aee <snprintf+0x36e>
c0de4aae:	1970      	adds	r0, r6, r5
c0de4ab0:	e005      	b.n	c0de4abe <snprintf+0x33e>
c0de4ab2:	7808      	ldrb	r0, [r1, #0]
c0de4ab4:	2800      	cmp	r0, #0
c0de4ab6:	462c      	mov	r4, r5
c0de4ab8:	d005      	beq.n	c0de4ac6 <snprintf+0x346>
c0de4aba:	9807      	ldr	r0, [sp, #28]
c0de4abc:	9f09      	ldr	r7, [sp, #36]	; 0x24
c0de4abe:	7821      	ldrb	r1, [r4, #0]
c0de4ac0:	e012      	b.n	c0de4ae8 <snprintf+0x368>
c0de4ac2:	460f      	mov	r7, r1
c0de4ac4:	e7fb      	b.n	c0de4abe <snprintf+0x33e>
c0de4ac6:	9909      	ldr	r1, [sp, #36]	; 0x24
c0de4ac8:	428f      	cmp	r7, r1
c0de4aca:	d300      	bcc.n	c0de4ace <snprintf+0x34e>
c0de4acc:	460f      	mov	r7, r1
c0de4ace:	2220      	movs	r2, #32
c0de4ad0:	9d07      	ldr	r5, [sp, #28]
c0de4ad2:	4628      	mov	r0, r5
c0de4ad4:	4639      	mov	r1, r7
c0de4ad6:	f003 ff4f 	bl	c0de8978 <__aeabi_memset>
c0de4ada:	9909      	ldr	r1, [sp, #36]	; 0x24
c0de4adc:	1bc9      	subs	r1, r1, r7
c0de4ade:	d1d6      	bne.n	c0de4a8e <snprintf+0x30e>
c0de4ae0:	e005      	b.n	c0de4aee <snprintf+0x36e>
c0de4ae2:	212a      	movs	r1, #42	; 0x2a
c0de4ae4:	9807      	ldr	r0, [sp, #28]
c0de4ae6:	9f09      	ldr	r7, [sp, #36]	; 0x24
c0de4ae8:	2900      	cmp	r1, #0
c0de4aea:	d000      	beq.n	c0de4aee <snprintf+0x36e>
c0de4aec:	e664      	b.n	c0de47b8 <snprintf+0x38>
c0de4aee:	2000      	movs	r0, #0
c0de4af0:	b010      	add	sp, #64	; 0x40
c0de4af2:	bcf0      	pop	{r4, r5, r6, r7}
c0de4af4:	bc02      	pop	{r1}
c0de4af6:	b001      	add	sp, #4
c0de4af8:	4708      	bx	r1
c0de4afa:	46c0      	nop			; (mov r8, r8)
c0de4afc:	00005ba3 	.word	0x00005ba3
c0de4b00:	00005bdd 	.word	0x00005bdd
c0de4b04:	00005bc5 	.word	0x00005bc5
c0de4b08:	00005c1b 	.word	0x00005c1b
c0de4b0c:	00005c31 	.word	0x00005c31

c0de4b10 <Osal_MemCpy>:
c0de4b10:	b510      	push	{r4, lr}
c0de4b12:	4604      	mov	r4, r0
c0de4b14:	f003 ff28 	bl	c0de8968 <__aeabi_memcpy>
c0de4b18:	4620      	mov	r0, r4
c0de4b1a:	bd10      	pop	{r4, pc}

c0de4b1c <Osal_MemSet>:
c0de4b1c:	b510      	push	{r4, lr}
c0de4b1e:	4613      	mov	r3, r2
c0de4b20:	4604      	mov	r4, r0
c0de4b22:	b2ca      	uxtb	r2, r1
c0de4b24:	4619      	mov	r1, r3
c0de4b26:	f003 ff27 	bl	c0de8978 <__aeabi_memset>
c0de4b2a:	4620      	mov	r0, r4
c0de4b2c:	bd10      	pop	{r4, pc}

c0de4b2e <parse_tx>:
c0de4b2e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4b30:	b087      	sub	sp, #28
c0de4b32:	9206      	str	r2, [sp, #24]
c0de4b34:	29ac      	cmp	r1, #172	; 0xac
c0de4b36:	d000      	beq.n	c0de4b3a <parse_tx+0xc>
c0de4b38:	e0c2      	b.n	c0de4cc0 <parse_tx+0x192>
c0de4b3a:	461d      	mov	r5, r3
c0de4b3c:	4607      	mov	r7, r0
c0de4b3e:	461c      	mov	r4, r3
c0de4b40:	3437      	adds	r4, #55	; 0x37
c0de4b42:	f002 fcbb 	bl	c0de74bc <read_uint32_be>
c0de4b46:	9906      	ldr	r1, [sp, #24]
c0de4b48:	6048      	str	r0, [r1, #4]
c0de4b4a:	1d39      	adds	r1, r7, #4
c0de4b4c:	2237      	movs	r2, #55	; 0x37
c0de4b4e:	4628      	mov	r0, r5
c0de4b50:	f003 ff0a 	bl	c0de8968 <__aeabi_memcpy>
c0de4b54:	2000      	movs	r0, #0
c0de4b56:	7020      	strb	r0, [r4, #0]
c0de4b58:	4604      	mov	r4, r0
c0de4b5a:	4628      	mov	r0, r5
c0de4b5c:	f7fc ff93 	bl	c0de1a86 <validate_address>
c0de4b60:	2800      	cmp	r0, #0
c0de4b62:	d100      	bne.n	c0de4b66 <parse_tx+0x38>
c0de4b64:	e0ac      	b.n	c0de4cc0 <parse_tx+0x192>
c0de4b66:	9405      	str	r4, [sp, #20]
c0de4b68:	462c      	mov	r4, r5
c0de4b6a:	346f      	adds	r4, #111	; 0x6f
c0de4b6c:	9e06      	ldr	r6, [sp, #24]
c0de4b6e:	4630      	mov	r0, r6
c0de4b70:	3069      	adds	r0, #105	; 0x69
c0de4b72:	4629      	mov	r1, r5
c0de4b74:	f002 fddc 	bl	c0de7730 <read_public_key_compressed>
c0de4b78:	4630      	mov	r0, r6
c0de4b7a:	3018      	adds	r0, #24
c0de4b7c:	4629      	mov	r1, r5
c0de4b7e:	f002 fdd7 	bl	c0de7730 <read_public_key_compressed>
c0de4b82:	462e      	mov	r6, r5
c0de4b84:	3638      	adds	r6, #56	; 0x38
c0de4b86:	4639      	mov	r1, r7
c0de4b88:	313b      	adds	r1, #59	; 0x3b
c0de4b8a:	2237      	movs	r2, #55	; 0x37
c0de4b8c:	4630      	mov	r0, r6
c0de4b8e:	f003 feeb 	bl	c0de8968 <__aeabi_memcpy>
c0de4b92:	9805      	ldr	r0, [sp, #20]
c0de4b94:	7020      	strb	r0, [r4, #0]
c0de4b96:	4630      	mov	r0, r6
c0de4b98:	f7fc ff75 	bl	c0de1a86 <validate_address>
c0de4b9c:	2800      	cmp	r0, #0
c0de4b9e:	d100      	bne.n	c0de4ba2 <parse_tx+0x74>
c0de4ba0:	e08e      	b.n	c0de4cc0 <parse_tx+0x192>
c0de4ba2:	9806      	ldr	r0, [sp, #24]
c0de4ba4:	4604      	mov	r4, r0
c0de4ba6:	34b0      	adds	r4, #176	; 0xb0
c0de4ba8:	308a      	adds	r0, #138	; 0x8a
c0de4baa:	4631      	mov	r1, r6
c0de4bac:	f002 fdc0 	bl	c0de7730 <read_public_key_compressed>
c0de4bb0:	4638      	mov	r0, r7
c0de4bb2:	3072      	adds	r0, #114	; 0x72
c0de4bb4:	f002 fc8d 	bl	c0de74d2 <read_uint64_be>
c0de4bb8:	4602      	mov	r2, r0
c0de4bba:	460b      	mov	r3, r1
c0de4bbc:	60a0      	str	r0, [r4, #8]
c0de4bbe:	60e1      	str	r1, [r4, #12]
c0de4bc0:	4628      	mov	r0, r5
c0de4bc2:	3070      	adds	r0, #112	; 0x70
c0de4bc4:	2120      	movs	r1, #32
c0de4bc6:	9103      	str	r1, [sp, #12]
c0de4bc8:	f002 fc9a 	bl	c0de7500 <amount_to_string>
c0de4bcc:	2001      	movs	r0, #1
c0de4bce:	9004      	str	r0, [sp, #16]
c0de4bd0:	6020      	str	r0, [r4, #0]
c0de4bd2:	9805      	ldr	r0, [sp, #20]
c0de4bd4:	6060      	str	r0, [r4, #4]
c0de4bd6:	4638      	mov	r0, r7
c0de4bd8:	307a      	adds	r0, #122	; 0x7a
c0de4bda:	f002 fc7a 	bl	c0de74d2 <read_uint64_be>
c0de4bde:	4602      	mov	r2, r0
c0de4be0:	460b      	mov	r3, r1
c0de4be2:	9e06      	ldr	r6, [sp, #24]
c0de4be4:	60b0      	str	r0, [r6, #8]
c0de4be6:	60f1      	str	r1, [r6, #12]
c0de4be8:	4628      	mov	r0, r5
c0de4bea:	3090      	adds	r0, #144	; 0x90
c0de4bec:	9903      	ldr	r1, [sp, #12]
c0de4bee:	f002 fc87 	bl	c0de7500 <amount_to_string>
c0de4bf2:	68a0      	ldr	r0, [r4, #8]
c0de4bf4:	68e1      	ldr	r1, [r4, #12]
c0de4bf6:	68b2      	ldr	r2, [r6, #8]
c0de4bf8:	68f3      	ldr	r3, [r6, #12]
c0de4bfa:	1812      	adds	r2, r2, r0
c0de4bfc:	414b      	adcs	r3, r1
c0de4bfe:	9805      	ldr	r0, [sp, #20]
c0de4c00:	4140      	adcs	r0, r0
c0de4c02:	d15d      	bne.n	c0de4cc0 <parse_tx+0x192>
c0de4c04:	20ff      	movs	r0, #255	; 0xff
c0de4c06:	3074      	adds	r0, #116	; 0x74
c0de4c08:	9c06      	ldr	r4, [sp, #24]
c0de4c0a:	1820      	adds	r0, r4, r0
c0de4c0c:	9003      	str	r0, [sp, #12]
c0de4c0e:	4620      	mov	r0, r4
c0de4c10:	30c0      	adds	r0, #192	; 0xc0
c0de4c12:	9001      	str	r0, [sp, #4]
c0de4c14:	4638      	mov	r0, r7
c0de4c16:	30aa      	adds	r0, #170	; 0xaa
c0de4c18:	9002      	str	r0, [sp, #8]
c0de4c1a:	4628      	mov	r0, r5
c0de4c1c:	30b0      	adds	r0, #176	; 0xb0
c0de4c1e:	2620      	movs	r6, #32
c0de4c20:	4631      	mov	r1, r6
c0de4c22:	f002 fc6d 	bl	c0de7500 <amount_to_string>
c0de4c26:	9804      	ldr	r0, [sp, #16]
c0de4c28:	6120      	str	r0, [r4, #16]
c0de4c2a:	9805      	ldr	r0, [sp, #20]
c0de4c2c:	6160      	str	r0, [r4, #20]
c0de4c2e:	4638      	mov	r0, r7
c0de4c30:	3082      	adds	r0, #130	; 0x82
c0de4c32:	f002 fc43 	bl	c0de74bc <read_uint32_be>
c0de4c36:	4602      	mov	r2, r0
c0de4c38:	63e0      	str	r0, [r4, #60]	; 0x3c
c0de4c3a:	4628      	mov	r0, r5
c0de4c3c:	30d0      	adds	r0, #208	; 0xd0
c0de4c3e:	4631      	mov	r1, r6
c0de4c40:	9600      	str	r6, [sp, #0]
c0de4c42:	9b05      	ldr	r3, [sp, #20]
c0de4c44:	f002 fd0c 	bl	c0de7660 <value_to_string>
c0de4c48:	4638      	mov	r0, r7
c0de4c4a:	3086      	adds	r0, #134	; 0x86
c0de4c4c:	f002 fc36 	bl	c0de74bc <read_uint32_be>
c0de4c50:	4602      	mov	r2, r0
c0de4c52:	6420      	str	r0, [r4, #64]	; 0x40
c0de4c54:	4628      	mov	r0, r5
c0de4c56:	30f0      	adds	r0, #240	; 0xf0
c0de4c58:	4631      	mov	r1, r6
c0de4c5a:	9b05      	ldr	r3, [sp, #20]
c0de4c5c:	f002 fd00 	bl	c0de7660 <value_to_string>
c0de4c60:	9805      	ldr	r0, [sp, #20]
c0de4c62:	9901      	ldr	r1, [sp, #4]
c0de4c64:	7008      	strb	r0, [r1, #0]
c0de4c66:	2011      	movs	r0, #17
c0de4c68:	0100      	lsls	r0, r0, #4
c0de4c6a:	182e      	adds	r6, r5, r0
c0de4c6c:	378a      	adds	r7, #138	; 0x8a
c0de4c6e:	4630      	mov	r0, r6
c0de4c70:	4639      	mov	r1, r7
c0de4c72:	9f02      	ldr	r7, [sp, #8]
c0de4c74:	9a00      	ldr	r2, [sp, #0]
c0de4c76:	f003 fe77 	bl	c0de8968 <__aeabi_memcpy>
c0de4c7a:	2013      	movs	r0, #19
c0de4c7c:	0100      	lsls	r0, r0, #4
c0de4c7e:	9905      	ldr	r1, [sp, #20]
c0de4c80:	5429      	strb	r1, [r5, r0]
c0de4c82:	4620      	mov	r0, r4
c0de4c84:	9c05      	ldr	r4, [sp, #20]
c0de4c86:	3044      	adds	r0, #68	; 0x44
c0de4c88:	4631      	mov	r1, r6
c0de4c8a:	f000 fdc9 	bl	c0de5820 <transaction_prepare_memo>
c0de4c8e:	7838      	ldrb	r0, [r7, #0]
c0de4c90:	9903      	ldr	r1, [sp, #12]
c0de4c92:	7008      	strb	r0, [r1, #0]
c0de4c94:	2104      	movs	r1, #4
c0de4c96:	4301      	orrs	r1, r0
c0de4c98:	2904      	cmp	r1, #4
c0de4c9a:	d111      	bne.n	c0de4cc0 <parse_tx+0x192>
c0de4c9c:	9b06      	ldr	r3, [sp, #24]
c0de4c9e:	4619      	mov	r1, r3
c0de4ca0:	3166      	adds	r1, #102	; 0x66
c0de4ca2:	0882      	lsrs	r2, r0, #2
c0de4ca4:	708a      	strb	r2, [r1, #2]
c0de4ca6:	0782      	lsls	r2, r0, #30
c0de4ca8:	9d04      	ldr	r5, [sp, #16]
c0de4caa:	4028      	ands	r0, r5
c0de4cac:	7008      	strb	r0, [r1, #0]
c0de4cae:	0fd0      	lsrs	r0, r2, #31
c0de4cb0:	7048      	strb	r0, [r1, #1]
c0de4cb2:	7878      	ldrb	r0, [r7, #1]
c0de4cb4:	7018      	strb	r0, [r3, #0]
c0de4cb6:	2802      	cmp	r0, #2
c0de4cb8:	d300      	bcc.n	c0de4cbc <parse_tx+0x18e>
c0de4cba:	9404      	str	r4, [sp, #16]
c0de4cbc:	9804      	ldr	r0, [sp, #16]
c0de4cbe:	e000      	b.n	c0de4cc2 <parse_tx+0x194>
c0de4cc0:	2000      	movs	r0, #0
c0de4cc2:	b007      	add	sp, #28
c0de4cc4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4cc6:	d4d4      	bmi.n	c0de4c72 <parse_tx+0x144>

c0de4cc8 <pic_internal>:
c0de4cc8:	467a      	mov	r2, pc
c0de4cca:	4902      	ldr	r1, [pc, #8]	; (c0de4cd4 <pic_internal+0xc>)
c0de4ccc:	1cc9      	adds	r1, r1, #3
c0de4cce:	1a89      	subs	r1, r1, r2
c0de4cd0:	1a40      	subs	r0, r0, r1
c0de4cd2:	4770      	bx	lr
c0de4cd4:	c0de4cc9 	.word	0xc0de4cc9

c0de4cd8 <pic>:
c0de4cd8:	b580      	push	{r7, lr}
c0de4cda:	4a09      	ldr	r2, [pc, #36]	; (c0de4d00 <pic+0x28>)
c0de4cdc:	4909      	ldr	r1, [pc, #36]	; (c0de4d04 <pic+0x2c>)
c0de4cde:	4282      	cmp	r2, r0
c0de4ce0:	d803      	bhi.n	c0de4cea <pic+0x12>
c0de4ce2:	4281      	cmp	r1, r0
c0de4ce4:	d301      	bcc.n	c0de4cea <pic+0x12>
c0de4ce6:	f7ff ffef 	bl	c0de4cc8 <pic_internal>
c0de4cea:	4907      	ldr	r1, [pc, #28]	; (c0de4d08 <pic+0x30>)
c0de4cec:	4a07      	ldr	r2, [pc, #28]	; (c0de4d0c <pic+0x34>)
c0de4cee:	4288      	cmp	r0, r1
c0de4cf0:	d304      	bcc.n	c0de4cfc <pic+0x24>
c0de4cf2:	4290      	cmp	r0, r2
c0de4cf4:	d802      	bhi.n	c0de4cfc <pic+0x24>
c0de4cf6:	1a40      	subs	r0, r0, r1
c0de4cf8:	4649      	mov	r1, r9
c0de4cfa:	1808      	adds	r0, r1, r0
c0de4cfc:	bd80      	pop	{r7, pc}
c0de4cfe:	46c0      	nop			; (mov r8, r8)
c0de4d00:	c0de0000 	.word	0xc0de0000
c0de4d04:	c0dece00 	.word	0xc0dece00
c0de4d08:	da7a0000 	.word	0xda7a0000
c0de4d0c:	da7a7800 	.word	0xda7a7800

c0de4d10 <matrix_mul>:
c0de4d10:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4d12:	b0ad      	sub	sp, #180	; 0xb4
c0de4d14:	460c      	mov	r4, r1
c0de4d16:	4606      	mov	r6, r0
c0de4d18:	a815      	add	r0, sp, #84	; 0x54
c0de4d1a:	2160      	movs	r1, #96	; 0x60
c0de4d1c:	f003 fe34 	bl	c0de8988 <explicit_bzero>
c0de4d20:	2000      	movs	r0, #0
c0de4d22:	9000      	str	r0, [sp, #0]
c0de4d24:	9602      	str	r6, [sp, #8]
c0de4d26:	9001      	str	r0, [sp, #4]
c0de4d28:	0140      	lsls	r0, r0, #5
c0de4d2a:	a915      	add	r1, sp, #84	; 0x54
c0de4d2c:	1808      	adds	r0, r1, r0
c0de4d2e:	9003      	str	r0, [sp, #12]
c0de4d30:	9d00      	ldr	r5, [sp, #0]
c0de4d32:	9404      	str	r4, [sp, #16]
c0de4d34:	1971      	adds	r1, r6, r5
c0de4d36:	1962      	adds	r2, r4, r5
c0de4d38:	af0d      	add	r7, sp, #52	; 0x34
c0de4d3a:	4638      	mov	r0, r7
c0de4d3c:	f7fc fb94 	bl	c0de1468 <field_mul>
c0de4d40:	ac05      	add	r4, sp, #20
c0de4d42:	4620      	mov	r0, r4
c0de4d44:	9e03      	ldr	r6, [sp, #12]
c0de4d46:	4631      	mov	r1, r6
c0de4d48:	f7fc fb68 	bl	c0de141c <field_copy>
c0de4d4c:	4630      	mov	r0, r6
c0de4d4e:	4621      	mov	r1, r4
c0de4d50:	9c04      	ldr	r4, [sp, #16]
c0de4d52:	463a      	mov	r2, r7
c0de4d54:	9e02      	ldr	r6, [sp, #8]
c0de4d56:	f7fc fb67 	bl	c0de1428 <field_add>
c0de4d5a:	3520      	adds	r5, #32
c0de4d5c:	2d60      	cmp	r5, #96	; 0x60
c0de4d5e:	d1e9      	bne.n	c0de4d34 <matrix_mul+0x24>
c0de4d60:	3460      	adds	r4, #96	; 0x60
c0de4d62:	9801      	ldr	r0, [sp, #4]
c0de4d64:	1c40      	adds	r0, r0, #1
c0de4d66:	2803      	cmp	r0, #3
c0de4d68:	d1dd      	bne.n	c0de4d26 <matrix_mul+0x16>
c0de4d6a:	2400      	movs	r4, #0
c0de4d6c:	1930      	adds	r0, r6, r4
c0de4d6e:	a915      	add	r1, sp, #84	; 0x54
c0de4d70:	1909      	adds	r1, r1, r4
c0de4d72:	f7fc fb53 	bl	c0de141c <field_copy>
c0de4d76:	3420      	adds	r4, #32
c0de4d78:	2c60      	cmp	r4, #96	; 0x60
c0de4d7a:	d1f7      	bne.n	c0de4d6c <matrix_mul+0x5c>
c0de4d7c:	b02d      	add	sp, #180	; 0xb4
c0de4d7e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de4d80 <poseidon_permutation>:
c0de4d80:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4d82:	b08d      	sub	sp, #52	; 0x34
c0de4d84:	9004      	str	r0, [sp, #16]
c0de4d86:	2000      	movs	r0, #0
c0de4d88:	4c25      	ldr	r4, [pc, #148]	; (c0de4e20 <poseidon_permutation+0xa0>)
c0de4d8a:	447c      	add	r4, pc
c0de4d8c:	9001      	str	r0, [sp, #4]
c0de4d8e:	9002      	str	r0, [sp, #8]
c0de4d90:	9f01      	ldr	r7, [sp, #4]
c0de4d92:	9804      	ldr	r0, [sp, #16]
c0de4d94:	19c5      	adds	r5, r0, r7
c0de4d96:	ae05      	add	r6, sp, #20
c0de4d98:	4630      	mov	r0, r6
c0de4d9a:	4629      	mov	r1, r5
c0de4d9c:	f7fc fb3e 	bl	c0de141c <field_copy>
c0de4da0:	19e2      	adds	r2, r4, r7
c0de4da2:	4628      	mov	r0, r5
c0de4da4:	4631      	mov	r1, r6
c0de4da6:	f7fc fb3f 	bl	c0de1428 <field_add>
c0de4daa:	3720      	adds	r7, #32
c0de4dac:	2f60      	cmp	r7, #96	; 0x60
c0de4dae:	d1f0      	bne.n	c0de4d92 <poseidon_permutation+0x12>
c0de4db0:	9403      	str	r4, [sp, #12]
c0de4db2:	2700      	movs	r7, #0
c0de4db4:	9c04      	ldr	r4, [sp, #16]
c0de4db6:	19e5      	adds	r5, r4, r7
c0de4db8:	ae05      	add	r6, sp, #20
c0de4dba:	4630      	mov	r0, r6
c0de4dbc:	4629      	mov	r1, r5
c0de4dbe:	f7fc fb2d 	bl	c0de141c <field_copy>
c0de4dc2:	4a18      	ldr	r2, [pc, #96]	; (c0de4e24 <poseidon_permutation+0xa4>)
c0de4dc4:	447a      	add	r2, pc
c0de4dc6:	4628      	mov	r0, r5
c0de4dc8:	4631      	mov	r1, r6
c0de4dca:	f7fc fb7d 	bl	c0de14c8 <field_pow>
c0de4dce:	3720      	adds	r7, #32
c0de4dd0:	2f60      	cmp	r7, #96	; 0x60
c0de4dd2:	d1f0      	bne.n	c0de4db6 <poseidon_permutation+0x36>
c0de4dd4:	4914      	ldr	r1, [pc, #80]	; (c0de4e28 <poseidon_permutation+0xa8>)
c0de4dd6:	4479      	add	r1, pc
c0de4dd8:	4620      	mov	r0, r4
c0de4dda:	f7ff ff99 	bl	c0de4d10 <matrix_mul>
c0de4dde:	9c03      	ldr	r4, [sp, #12]
c0de4de0:	3460      	adds	r4, #96	; 0x60
c0de4de2:	9802      	ldr	r0, [sp, #8]
c0de4de4:	1c40      	adds	r0, r0, #1
c0de4de6:	283f      	cmp	r0, #63	; 0x3f
c0de4de8:	d1d1      	bne.n	c0de4d8e <poseidon_permutation+0xe>
c0de4dea:	205f      	movs	r0, #95	; 0x5f
c0de4dec:	43c7      	mvns	r7, r0
c0de4dee:	480f      	ldr	r0, [pc, #60]	; (c0de4e2c <poseidon_permutation+0xac>)
c0de4df0:	4478      	add	r0, pc
c0de4df2:	9003      	str	r0, [sp, #12]
c0de4df4:	9c04      	ldr	r4, [sp, #16]
c0de4df6:	19e5      	adds	r5, r4, r7
c0de4df8:	3560      	adds	r5, #96	; 0x60
c0de4dfa:	ae05      	add	r6, sp, #20
c0de4dfc:	4630      	mov	r0, r6
c0de4dfe:	4629      	mov	r1, r5
c0de4e00:	f7fc fb0c 	bl	c0de141c <field_copy>
c0de4e04:	9803      	ldr	r0, [sp, #12]
c0de4e06:	19c0      	adds	r0, r0, r7
c0de4e08:	2103      	movs	r1, #3
c0de4e0a:	02c9      	lsls	r1, r1, #11
c0de4e0c:	1842      	adds	r2, r0, r1
c0de4e0e:	4628      	mov	r0, r5
c0de4e10:	4631      	mov	r1, r6
c0de4e12:	f7fc fb09 	bl	c0de1428 <field_add>
c0de4e16:	3720      	adds	r7, #32
c0de4e18:	d1ed      	bne.n	c0de4df6 <poseidon_permutation+0x76>
c0de4e1a:	b00d      	add	sp, #52	; 0x34
c0de4e1c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4e1e:	46c0      	nop			; (mov r8, r8)
c0de4e20:	0000585b 	.word	0x0000585b
c0de4e24:	00005801 	.word	0x00005801
c0de4e28:	0000700f 	.word	0x0000700f
c0de4e2c:	000057f5 	.word	0x000057f5

c0de4e30 <poseidon_init>:
c0de4e30:	b580      	push	{r7, lr}
c0de4e32:	2901      	cmp	r1, #1
c0de4e34:	d004      	beq.n	c0de4e40 <poseidon_init+0x10>
c0de4e36:	2900      	cmp	r1, #0
c0de4e38:	d107      	bne.n	c0de4e4a <poseidon_init+0x1a>
c0de4e3a:	4904      	ldr	r1, [pc, #16]	; (c0de4e4c <poseidon_init+0x1c>)
c0de4e3c:	4479      	add	r1, pc
c0de4e3e:	e001      	b.n	c0de4e44 <poseidon_init+0x14>
c0de4e40:	4903      	ldr	r1, [pc, #12]	; (c0de4e50 <poseidon_init+0x20>)
c0de4e42:	4479      	add	r1, pc
c0de4e44:	2260      	movs	r2, #96	; 0x60
c0de4e46:	f003 fd8f 	bl	c0de8968 <__aeabi_memcpy>
c0de4e4a:	bd80      	pop	{r7, pc}
c0de4e4c:	000070cc 	.word	0x000070cc
c0de4e50:	00007126 	.word	0x00007126

c0de4e54 <poseidon_update>:
c0de4e54:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4e56:	b08d      	sub	sp, #52	; 0x34
c0de4e58:	9102      	str	r1, [sp, #8]
c0de4e5a:	4604      	mov	r4, r0
c0de4e5c:	9201      	str	r2, [sp, #4]
c0de4e5e:	0857      	lsrs	r7, r2, #1
c0de4e60:	d020      	beq.n	c0de4ea4 <poseidon_update+0x50>
c0de4e62:	4620      	mov	r0, r4
c0de4e64:	3020      	adds	r0, #32
c0de4e66:	9004      	str	r0, [sp, #16]
c0de4e68:	9d02      	ldr	r5, [sp, #8]
c0de4e6a:	9403      	str	r4, [sp, #12]
c0de4e6c:	ae05      	add	r6, sp, #20
c0de4e6e:	4630      	mov	r0, r6
c0de4e70:	4621      	mov	r1, r4
c0de4e72:	f7fc fad3 	bl	c0de141c <field_copy>
c0de4e76:	4620      	mov	r0, r4
c0de4e78:	4631      	mov	r1, r6
c0de4e7a:	462a      	mov	r2, r5
c0de4e7c:	f7fc fad4 	bl	c0de1428 <field_add>
c0de4e80:	4630      	mov	r0, r6
c0de4e82:	9c04      	ldr	r4, [sp, #16]
c0de4e84:	4621      	mov	r1, r4
c0de4e86:	f7fc fac9 	bl	c0de141c <field_copy>
c0de4e8a:	462a      	mov	r2, r5
c0de4e8c:	3220      	adds	r2, #32
c0de4e8e:	4620      	mov	r0, r4
c0de4e90:	9c03      	ldr	r4, [sp, #12]
c0de4e92:	4631      	mov	r1, r6
c0de4e94:	f7fc fac8 	bl	c0de1428 <field_add>
c0de4e98:	4620      	mov	r0, r4
c0de4e9a:	f7ff ff71 	bl	c0de4d80 <poseidon_permutation>
c0de4e9e:	3540      	adds	r5, #64	; 0x40
c0de4ea0:	1e7f      	subs	r7, r7, #1
c0de4ea2:	d1e3      	bne.n	c0de4e6c <poseidon_update+0x18>
c0de4ea4:	2001      	movs	r0, #1
c0de4ea6:	9901      	ldr	r1, [sp, #4]
c0de4ea8:	460e      	mov	r6, r1
c0de4eaa:	4386      	bics	r6, r0
c0de4eac:	428e      	cmp	r6, r1
c0de4eae:	d20e      	bcs.n	c0de4ece <poseidon_update+0x7a>
c0de4eb0:	ad05      	add	r5, sp, #20
c0de4eb2:	4628      	mov	r0, r5
c0de4eb4:	4621      	mov	r1, r4
c0de4eb6:	f7fc fab1 	bl	c0de141c <field_copy>
c0de4eba:	0170      	lsls	r0, r6, #5
c0de4ebc:	9902      	ldr	r1, [sp, #8]
c0de4ebe:	180a      	adds	r2, r1, r0
c0de4ec0:	4620      	mov	r0, r4
c0de4ec2:	4629      	mov	r1, r5
c0de4ec4:	f7fc fab0 	bl	c0de1428 <field_add>
c0de4ec8:	4620      	mov	r0, r4
c0de4eca:	f7ff ff59 	bl	c0de4d80 <poseidon_permutation>
c0de4ece:	b00d      	add	sp, #52	; 0x34
c0de4ed0:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de4ed2 <poseidon_digest>:
c0de4ed2:	b580      	push	{r7, lr}
c0de4ed4:	f7fc faa2 	bl	c0de141c <field_copy>
c0de4ed8:	bd80      	pop	{r7, pc}

c0de4eda <roinput_add_field>:
c0de4eda:	b510      	push	{r4, lr}
c0de4edc:	6882      	ldr	r2, [r0, #8]
c0de4ede:	68c3      	ldr	r3, [r0, #12]
c0de4ee0:	4293      	cmp	r3, r2
c0de4ee2:	d012      	beq.n	c0de4f0a <roinput_add_field+0x30>
c0de4ee4:	6803      	ldr	r3, [r0, #0]
c0de4ee6:	7fcc      	ldrb	r4, [r1, #31]
c0de4ee8:	0152      	lsls	r2, r2, #5
c0de4eea:	549c      	strb	r4, [r3, r2]
c0de4eec:	311e      	adds	r1, #30
c0de4eee:	2201      	movs	r2, #1
c0de4ef0:	6803      	ldr	r3, [r0, #0]
c0de4ef2:	6884      	ldr	r4, [r0, #8]
c0de4ef4:	0164      	lsls	r4, r4, #5
c0de4ef6:	191b      	adds	r3, r3, r4
c0de4ef8:	780c      	ldrb	r4, [r1, #0]
c0de4efa:	549c      	strb	r4, [r3, r2]
c0de4efc:	1e49      	subs	r1, r1, #1
c0de4efe:	1c52      	adds	r2, r2, #1
c0de4f00:	2a20      	cmp	r2, #32
c0de4f02:	d1f5      	bne.n	c0de4ef0 <roinput_add_field+0x16>
c0de4f04:	6881      	ldr	r1, [r0, #8]
c0de4f06:	1c49      	adds	r1, r1, #1
c0de4f08:	6081      	str	r1, [r0, #8]
c0de4f0a:	bd10      	pop	{r4, pc}

c0de4f0c <roinput_add_bit>:
c0de4f0c:	b510      	push	{r4, lr}
c0de4f0e:	460a      	mov	r2, r1
c0de4f10:	4604      	mov	r4, r0
c0de4f12:	6901      	ldr	r1, [r0, #16]
c0de4f14:	6940      	ldr	r0, [r0, #20]
c0de4f16:	00c0      	lsls	r0, r0, #3
c0de4f18:	4281      	cmp	r1, r0
c0de4f1a:	d005      	beq.n	c0de4f28 <roinput_add_bit+0x1c>
c0de4f1c:	6860      	ldr	r0, [r4, #4]
c0de4f1e:	f002 fbf1 	bl	c0de7704 <packed_bit_array_set>
c0de4f22:	6920      	ldr	r0, [r4, #16]
c0de4f24:	1c40      	adds	r0, r0, #1
c0de4f26:	6120      	str	r0, [r4, #16]
c0de4f28:	bd10      	pop	{r4, pc}

c0de4f2a <roinput_add_scalar>:
c0de4f2a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4f2c:	b081      	sub	sp, #4
c0de4f2e:	4604      	mov	r4, r0
c0de4f30:	6906      	ldr	r6, [r0, #16]
c0de4f32:	6940      	ldr	r0, [r0, #20]
c0de4f34:	00c0      	lsls	r0, r0, #3
c0de4f36:	1b80      	subs	r0, r0, r6
c0de4f38:	28ff      	cmp	r0, #255	; 0xff
c0de4f3a:	d313      	bcc.n	c0de4f64 <roinput_add_scalar+0x3a>
c0de4f3c:	460d      	mov	r5, r1
c0de4f3e:	2700      	movs	r7, #0
c0de4f40:	2007      	movs	r0, #7
c0de4f42:	4038      	ands	r0, r7
c0de4f44:	08f9      	lsrs	r1, r7, #3
c0de4f46:	1a69      	subs	r1, r5, r1
c0de4f48:	7fc9      	ldrb	r1, [r1, #31]
c0de4f4a:	40c1      	lsrs	r1, r0
c0de4f4c:	2201      	movs	r2, #1
c0de4f4e:	400a      	ands	r2, r1
c0de4f50:	19f1      	adds	r1, r6, r7
c0de4f52:	6860      	ldr	r0, [r4, #4]
c0de4f54:	f002 fbd6 	bl	c0de7704 <packed_bit_array_set>
c0de4f58:	1c7f      	adds	r7, r7, #1
c0de4f5a:	2fff      	cmp	r7, #255	; 0xff
c0de4f5c:	d1f0      	bne.n	c0de4f40 <roinput_add_scalar+0x16>
c0de4f5e:	6920      	ldr	r0, [r4, #16]
c0de4f60:	30ff      	adds	r0, #255	; 0xff
c0de4f62:	6120      	str	r0, [r4, #16]
c0de4f64:	b001      	add	sp, #4
c0de4f66:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de4f68 <roinput_add_bytes>:
c0de4f68:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4f6a:	b085      	sub	sp, #20
c0de4f6c:	9103      	str	r1, [sp, #12]
c0de4f6e:	4604      	mov	r4, r0
c0de4f70:	6907      	ldr	r7, [r0, #16]
c0de4f72:	6940      	ldr	r0, [r0, #20]
c0de4f74:	00c0      	lsls	r0, r0, #3
c0de4f76:	1bc0      	subs	r0, r0, r7
c0de4f78:	00d1      	lsls	r1, r2, #3
c0de4f7a:	4288      	cmp	r0, r1
c0de4f7c:	d31f      	bcc.n	c0de4fbe <roinput_add_bytes+0x56>
c0de4f7e:	2a00      	cmp	r2, #0
c0de4f80:	d01b      	beq.n	c0de4fba <roinput_add_bytes+0x52>
c0de4f82:	9100      	str	r1, [sp, #0]
c0de4f84:	2000      	movs	r0, #0
c0de4f86:	9001      	str	r0, [sp, #4]
c0de4f88:	4601      	mov	r1, r0
c0de4f8a:	9202      	str	r2, [sp, #8]
c0de4f8c:	9803      	ldr	r0, [sp, #12]
c0de4f8e:	9104      	str	r1, [sp, #16]
c0de4f90:	5c46      	ldrb	r6, [r0, r1]
c0de4f92:	9d01      	ldr	r5, [sp, #4]
c0de4f94:	1979      	adds	r1, r7, r5
c0de4f96:	4630      	mov	r0, r6
c0de4f98:	40e8      	lsrs	r0, r5
c0de4f9a:	2201      	movs	r2, #1
c0de4f9c:	4002      	ands	r2, r0
c0de4f9e:	6860      	ldr	r0, [r4, #4]
c0de4fa0:	f002 fbb0 	bl	c0de7704 <packed_bit_array_set>
c0de4fa4:	1c6d      	adds	r5, r5, #1
c0de4fa6:	2d08      	cmp	r5, #8
c0de4fa8:	d1f4      	bne.n	c0de4f94 <roinput_add_bytes+0x2c>
c0de4faa:	197f      	adds	r7, r7, r5
c0de4fac:	9904      	ldr	r1, [sp, #16]
c0de4fae:	1c49      	adds	r1, r1, #1
c0de4fb0:	9a02      	ldr	r2, [sp, #8]
c0de4fb2:	4291      	cmp	r1, r2
c0de4fb4:	d1ea      	bne.n	c0de4f8c <roinput_add_bytes+0x24>
c0de4fb6:	6927      	ldr	r7, [r4, #16]
c0de4fb8:	9900      	ldr	r1, [sp, #0]
c0de4fba:	1878      	adds	r0, r7, r1
c0de4fbc:	6120      	str	r0, [r4, #16]
c0de4fbe:	b005      	add	sp, #20
c0de4fc0:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de4fc2 <roinput_add_uint32>:
c0de4fc2:	b510      	push	{r4, lr}
c0de4fc4:	b082      	sub	sp, #8
c0de4fc6:	2200      	movs	r2, #0
c0de4fc8:	ab01      	add	r3, sp, #4
c0de4fca:	460c      	mov	r4, r1
c0de4fcc:	40d4      	lsrs	r4, r2
c0de4fce:	701c      	strb	r4, [r3, #0]
c0de4fd0:	1c5b      	adds	r3, r3, #1
c0de4fd2:	3208      	adds	r2, #8
c0de4fd4:	2a20      	cmp	r2, #32
c0de4fd6:	d1f8      	bne.n	c0de4fca <roinput_add_uint32+0x8>
c0de4fd8:	a901      	add	r1, sp, #4
c0de4fda:	2204      	movs	r2, #4
c0de4fdc:	f7ff ffc4 	bl	c0de4f68 <roinput_add_bytes>
c0de4fe0:	b002      	add	sp, #8
c0de4fe2:	bd10      	pop	{r4, pc}

c0de4fe4 <roinput_add_uint64>:
c0de4fe4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4fe6:	b083      	sub	sp, #12
c0de4fe8:	461d      	mov	r5, r3
c0de4fea:	4616      	mov	r6, r2
c0de4fec:	9000      	str	r0, [sp, #0]
c0de4fee:	2700      	movs	r7, #0
c0de4ff0:	ac01      	add	r4, sp, #4
c0de4ff2:	4630      	mov	r0, r6
c0de4ff4:	4629      	mov	r1, r5
c0de4ff6:	463a      	mov	r2, r7
c0de4ff8:	f003 fb5e 	bl	c0de86b8 <__aeabi_llsr>
c0de4ffc:	7020      	strb	r0, [r4, #0]
c0de4ffe:	1c64      	adds	r4, r4, #1
c0de5000:	3708      	adds	r7, #8
c0de5002:	2f40      	cmp	r7, #64	; 0x40
c0de5004:	d1f5      	bne.n	c0de4ff2 <roinput_add_uint64+0xe>
c0de5006:	a901      	add	r1, sp, #4
c0de5008:	2208      	movs	r2, #8
c0de500a:	9800      	ldr	r0, [sp, #0]
c0de500c:	f7ff ffac 	bl	c0de4f68 <roinput_add_bytes>
c0de5010:	b003      	add	sp, #12
c0de5012:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de5014 <roinput_to_bytes>:
c0de5014:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5016:	b083      	sub	sp, #12
c0de5018:	460f      	mov	r7, r1
c0de501a:	4605      	mov	r5, r0
c0de501c:	6888      	ldr	r0, [r1, #8]
c0de501e:	2800      	cmp	r0, #0
c0de5020:	d01f      	beq.n	c0de5062 <roinput_to_bytes+0x4e>
c0de5022:	2100      	movs	r1, #0
c0de5024:	4608      	mov	r0, r1
c0de5026:	9100      	str	r1, [sp, #0]
c0de5028:	460a      	mov	r2, r1
c0de502a:	9701      	str	r7, [sp, #4]
c0de502c:	4604      	mov	r4, r0
c0de502e:	9202      	str	r2, [sp, #8]
c0de5030:	0150      	lsls	r0, r2, #5
c0de5032:	6839      	ldr	r1, [r7, #0]
c0de5034:	180f      	adds	r7, r1, r0
c0de5036:	9e00      	ldr	r6, [sp, #0]
c0de5038:	4638      	mov	r0, r7
c0de503a:	4631      	mov	r1, r6
c0de503c:	f002 fb70 	bl	c0de7720 <packed_bit_array_get>
c0de5040:	4602      	mov	r2, r0
c0de5042:	19a1      	adds	r1, r4, r6
c0de5044:	4628      	mov	r0, r5
c0de5046:	f002 fb5d 	bl	c0de7704 <packed_bit_array_set>
c0de504a:	1c76      	adds	r6, r6, #1
c0de504c:	2eff      	cmp	r6, #255	; 0xff
c0de504e:	d1f3      	bne.n	c0de5038 <roinput_to_bytes+0x24>
c0de5050:	19a0      	adds	r0, r4, r6
c0de5052:	9a02      	ldr	r2, [sp, #8]
c0de5054:	1c52      	adds	r2, r2, #1
c0de5056:	9f01      	ldr	r7, [sp, #4]
c0de5058:	68b9      	ldr	r1, [r7, #8]
c0de505a:	428a      	cmp	r2, r1
c0de505c:	d3e6      	bcc.n	c0de502c <roinput_to_bytes+0x18>
c0de505e:	19a4      	adds	r4, r4, r6
c0de5060:	e000      	b.n	c0de5064 <roinput_to_bytes+0x50>
c0de5062:	2400      	movs	r4, #0
c0de5064:	6938      	ldr	r0, [r7, #16]
c0de5066:	2800      	cmp	r0, #0
c0de5068:	d00d      	beq.n	c0de5086 <roinput_to_bytes+0x72>
c0de506a:	2600      	movs	r6, #0
c0de506c:	6878      	ldr	r0, [r7, #4]
c0de506e:	4631      	mov	r1, r6
c0de5070:	f002 fb56 	bl	c0de7720 <packed_bit_array_get>
c0de5074:	4602      	mov	r2, r0
c0de5076:	19a1      	adds	r1, r4, r6
c0de5078:	4628      	mov	r0, r5
c0de507a:	f002 fb43 	bl	c0de7704 <packed_bit_array_set>
c0de507e:	1c76      	adds	r6, r6, #1
c0de5080:	6938      	ldr	r0, [r7, #16]
c0de5082:	4286      	cmp	r6, r0
c0de5084:	d3f2      	bcc.n	c0de506c <roinput_to_bytes+0x58>
c0de5086:	b003      	add	sp, #12
c0de5088:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de508a <roinput_to_fields>:
c0de508a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de508c:	b08b      	sub	sp, #44	; 0x2c
c0de508e:	4614      	mov	r4, r2
c0de5090:	6892      	ldr	r2, [r2, #8]
c0de5092:	2700      	movs	r7, #0
c0de5094:	43fb      	mvns	r3, r7
c0de5096:	428a      	cmp	r2, r1
c0de5098:	d901      	bls.n	c0de509e <roinput_to_fields+0x14>
c0de509a:	461f      	mov	r7, r3
c0de509c:	e047      	b.n	c0de512e <roinput_to_fields+0xa4>
c0de509e:	9300      	str	r3, [sp, #0]
c0de50a0:	2a00      	cmp	r2, #0
c0de50a2:	d011      	beq.n	c0de50c8 <roinput_to_fields+0x3e>
c0de50a4:	2100      	movs	r1, #0
c0de50a6:	4602      	mov	r2, r0
c0de50a8:	460b      	mov	r3, r1
c0de50aa:	251f      	movs	r5, #31
c0de50ac:	460e      	mov	r6, r1
c0de50ae:	6827      	ldr	r7, [r4, #0]
c0de50b0:	5dbf      	ldrb	r7, [r7, r6]
c0de50b2:	5557      	strb	r7, [r2, r5]
c0de50b4:	1c76      	adds	r6, r6, #1
c0de50b6:	1e6d      	subs	r5, r5, #1
c0de50b8:	1c6f      	adds	r7, r5, #1
c0de50ba:	d3f8      	bcc.n	c0de50ae <roinput_to_fields+0x24>
c0de50bc:	3220      	adds	r2, #32
c0de50be:	3120      	adds	r1, #32
c0de50c0:	68a7      	ldr	r7, [r4, #8]
c0de50c2:	1c5b      	adds	r3, r3, #1
c0de50c4:	42bb      	cmp	r3, r7
c0de50c6:	d3f0      	bcc.n	c0de50aa <roinput_to_fields+0x20>
c0de50c8:	6926      	ldr	r6, [r4, #16]
c0de50ca:	2e00      	cmp	r6, #0
c0de50cc:	d02f      	beq.n	c0de512e <roinput_to_fields+0xa4>
c0de50ce:	0179      	lsls	r1, r7, #5
c0de50d0:	1840      	adds	r0, r0, r1
c0de50d2:	301f      	adds	r0, #31
c0de50d4:	9002      	str	r0, [sp, #8]
c0de50d6:	2500      	movs	r5, #0
c0de50d8:	9701      	str	r7, [sp, #4]
c0de50da:	a803      	add	r0, sp, #12
c0de50dc:	2120      	movs	r1, #32
c0de50de:	f003 fc3d 	bl	c0de895c <__aeabi_memclr>
c0de50e2:	1b77      	subs	r7, r6, r5
c0de50e4:	2ffe      	cmp	r7, #254	; 0xfe
c0de50e6:	d300      	bcc.n	c0de50ea <roinput_to_fields+0x60>
c0de50e8:	27fe      	movs	r7, #254	; 0xfe
c0de50ea:	2f00      	cmp	r7, #0
c0de50ec:	d00c      	beq.n	c0de5108 <roinput_to_fields+0x7e>
c0de50ee:	2600      	movs	r6, #0
c0de50f0:	19a9      	adds	r1, r5, r6
c0de50f2:	6860      	ldr	r0, [r4, #4]
c0de50f4:	f002 fb14 	bl	c0de7720 <packed_bit_array_get>
c0de50f8:	4602      	mov	r2, r0
c0de50fa:	a803      	add	r0, sp, #12
c0de50fc:	4631      	mov	r1, r6
c0de50fe:	f002 fb01 	bl	c0de7704 <packed_bit_array_set>
c0de5102:	1c76      	adds	r6, r6, #1
c0de5104:	42b7      	cmp	r7, r6
c0de5106:	d1f3      	bne.n	c0de50f0 <roinput_to_fields+0x66>
c0de5108:	2000      	movs	r0, #0
c0de510a:	9e02      	ldr	r6, [sp, #8]
c0de510c:	4631      	mov	r1, r6
c0de510e:	9b00      	ldr	r3, [sp, #0]
c0de5110:	aa03      	add	r2, sp, #12
c0de5112:	5c12      	ldrb	r2, [r2, r0]
c0de5114:	700a      	strb	r2, [r1, #0]
c0de5116:	18c9      	adds	r1, r1, r3
c0de5118:	1c40      	adds	r0, r0, #1
c0de511a:	2820      	cmp	r0, #32
c0de511c:	d1f8      	bne.n	c0de5110 <roinput_to_fields+0x86>
c0de511e:	197d      	adds	r5, r7, r5
c0de5120:	3620      	adds	r6, #32
c0de5122:	9602      	str	r6, [sp, #8]
c0de5124:	6926      	ldr	r6, [r4, #16]
c0de5126:	9f01      	ldr	r7, [sp, #4]
c0de5128:	1c7f      	adds	r7, r7, #1
c0de512a:	42ae      	cmp	r6, r5
c0de512c:	d8d4      	bhi.n	c0de50d8 <roinput_to_fields+0x4e>
c0de512e:	4638      	mov	r0, r7
c0de5130:	b00b      	add	sp, #44	; 0x2c
c0de5132:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de5134 <roinput_derive_message>:
c0de5134:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5136:	b0d1      	sub	sp, #324	; 0x144
c0de5138:	461d      	mov	r5, r3
c0de513a:	4617      	mov	r7, r2
c0de513c:	aa50      	add	r2, sp, #320	; 0x140
c0de513e:	9b56      	ldr	r3, [sp, #344]	; 0x158
c0de5140:	7013      	strb	r3, [r2, #0]
c0de5142:	226c      	movs	r2, #108	; 0x6c
c0de5144:	920c      	str	r2, [sp, #48]	; 0x30
c0de5146:	2205      	movs	r2, #5
c0de5148:	920a      	str	r2, [sp, #40]	; 0x28
c0de514a:	aa0d      	add	r2, sp, #52	; 0x34
c0de514c:	9208      	str	r2, [sp, #32]
c0de514e:	aa28      	add	r2, sp, #160	; 0xa0
c0de5150:	9207      	str	r2, [sp, #28]
c0de5152:	2600      	movs	r6, #0
c0de5154:	43f4      	mvns	r4, r6
c0de5156:	68ea      	ldr	r2, [r5, #12]
c0de5158:	2a03      	cmp	r2, #3
c0de515a:	d85d      	bhi.n	c0de5218 <roinput_derive_message+0xe4>
c0de515c:	696a      	ldr	r2, [r5, #20]
c0de515e:	2a4b      	cmp	r2, #75	; 0x4b
c0de5160:	d85a      	bhi.n	c0de5218 <roinput_derive_message+0xe4>
c0de5162:	68ab      	ldr	r3, [r5, #8]
c0de5164:	2b05      	cmp	r3, #5
c0de5166:	d857      	bhi.n	c0de5218 <roinput_derive_message+0xe4>
c0de5168:	9406      	str	r4, [sp, #24]
c0de516a:	692c      	ldr	r4, [r5, #16]
c0de516c:	221b      	movs	r2, #27
c0de516e:	0152      	lsls	r2, r2, #5
c0de5170:	9405      	str	r4, [sp, #20]
c0de5172:	4294      	cmp	r4, r2
c0de5174:	d901      	bls.n	c0de517a <roinput_derive_message+0x46>
c0de5176:	9c06      	ldr	r4, [sp, #24]
c0de5178:	e04e      	b.n	c0de5218 <roinput_derive_message+0xe4>
c0de517a:	9104      	str	r1, [sp, #16]
c0de517c:	9002      	str	r0, [sp, #8]
c0de517e:	6829      	ldr	r1, [r5, #0]
c0de5180:	015a      	lsls	r2, r3, #5
c0de5182:	a828      	add	r0, sp, #160	; 0xa0
c0de5184:	9201      	str	r2, [sp, #4]
c0de5186:	9303      	str	r3, [sp, #12]
c0de5188:	f003 fbee 	bl	c0de8968 <__aeabi_memcpy>
c0de518c:	6869      	ldr	r1, [r5, #4]
c0de518e:	9c05      	ldr	r4, [sp, #20]
c0de5190:	1de0      	adds	r0, r4, #7
c0de5192:	08c2      	lsrs	r2, r0, #3
c0de5194:	a80d      	add	r0, sp, #52	; 0x34
c0de5196:	f003 fbe7 	bl	c0de8968 <__aeabi_memcpy>
c0de519a:	9b03      	ldr	r3, [sp, #12]
c0de519c:	940b      	str	r4, [sp, #44]	; 0x2c
c0de519e:	9309      	str	r3, [sp, #36]	; 0x24
c0de51a0:	2b05      	cmp	r3, #5
c0de51a2:	9c06      	ldr	r4, [sp, #24]
c0de51a4:	d01a      	beq.n	c0de51dc <roinput_derive_message+0xa8>
c0de51a6:	a828      	add	r0, sp, #160	; 0xa0
c0de51a8:	9901      	ldr	r1, [sp, #4]
c0de51aa:	1840      	adds	r0, r0, r1
c0de51ac:	4639      	mov	r1, r7
c0de51ae:	311f      	adds	r1, #31
c0de51b0:	780a      	ldrb	r2, [r1, #0]
c0de51b2:	5582      	strb	r2, [r0, r6]
c0de51b4:	1e49      	subs	r1, r1, #1
c0de51b6:	1c76      	adds	r6, r6, #1
c0de51b8:	2e20      	cmp	r6, #32
c0de51ba:	d1f9      	bne.n	c0de51b0 <roinput_derive_message+0x7c>
c0de51bc:	1c58      	adds	r0, r3, #1
c0de51be:	9009      	str	r0, [sp, #36]	; 0x24
c0de51c0:	2805      	cmp	r0, #5
c0de51c2:	d00b      	beq.n	c0de51dc <roinput_derive_message+0xa8>
c0de51c4:	0140      	lsls	r0, r0, #5
c0de51c6:	a928      	add	r1, sp, #160	; 0xa0
c0de51c8:	1808      	adds	r0, r1, r0
c0de51ca:	213f      	movs	r1, #63	; 0x3f
c0de51cc:	5c7a      	ldrb	r2, [r7, r1]
c0de51ce:	7002      	strb	r2, [r0, #0]
c0de51d0:	1e49      	subs	r1, r1, #1
c0de51d2:	1c40      	adds	r0, r0, #1
c0de51d4:	291f      	cmp	r1, #31
c0de51d6:	d1f9      	bne.n	c0de51cc <roinput_derive_message+0x98>
c0de51d8:	1c98      	adds	r0, r3, #2
c0de51da:	9009      	str	r0, [sp, #36]	; 0x24
c0de51dc:	3740      	adds	r7, #64	; 0x40
c0de51de:	ad07      	add	r5, sp, #28
c0de51e0:	4628      	mov	r0, r5
c0de51e2:	4639      	mov	r1, r7
c0de51e4:	f7ff fea1 	bl	c0de4f2a <roinput_add_scalar>
c0de51e8:	a950      	add	r1, sp, #320	; 0x140
c0de51ea:	2201      	movs	r2, #1
c0de51ec:	4628      	mov	r0, r5
c0de51ee:	f7ff febb 	bl	c0de4f68 <roinput_add_bytes>
c0de51f2:	20ff      	movs	r0, #255	; 0xff
c0de51f4:	9909      	ldr	r1, [sp, #36]	; 0x24
c0de51f6:	4341      	muls	r1, r0
c0de51f8:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de51fa:	1840      	adds	r0, r0, r1
c0de51fc:	1dc0      	adds	r0, r0, #7
c0de51fe:	08c5      	lsrs	r5, r0, #3
c0de5200:	9804      	ldr	r0, [sp, #16]
c0de5202:	42a8      	cmp	r0, r5
c0de5204:	d304      	bcc.n	c0de5210 <roinput_derive_message+0xdc>
c0de5206:	a907      	add	r1, sp, #28
c0de5208:	9802      	ldr	r0, [sp, #8]
c0de520a:	f7ff ff03 	bl	c0de5014 <roinput_to_bytes>
c0de520e:	462c      	mov	r4, r5
c0de5210:	a80d      	add	r0, sp, #52	; 0x34
c0de5212:	216c      	movs	r1, #108	; 0x6c
c0de5214:	f003 fbb8 	bl	c0de8988 <explicit_bzero>
c0de5218:	4620      	mov	r0, r4
c0de521a:	b051      	add	sp, #324	; 0x144
c0de521c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de521e <roinput_hash_message>:
c0de521e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5220:	b0d1      	sub	sp, #324	; 0x144
c0de5222:	461f      	mov	r7, r3
c0de5224:	9207      	str	r2, [sp, #28]
c0de5226:	4606      	mov	r6, r0
c0de5228:	234b      	movs	r3, #75	; 0x4b
c0de522a:	930d      	str	r3, [sp, #52]	; 0x34
c0de522c:	2206      	movs	r2, #6
c0de522e:	920b      	str	r2, [sp, #44]	; 0x2c
c0de5230:	aa0e      	add	r2, sp, #56	; 0x38
c0de5232:	9209      	str	r2, [sp, #36]	; 0x24
c0de5234:	aa21      	add	r2, sp, #132	; 0x84
c0de5236:	9208      	str	r2, [sp, #32]
c0de5238:	2500      	movs	r5, #0
c0de523a:	43e8      	mvns	r0, r5
c0de523c:	9c56      	ldr	r4, [sp, #344]	; 0x158
c0de523e:	68e2      	ldr	r2, [r4, #12]
c0de5240:	2a03      	cmp	r2, #3
c0de5242:	d858      	bhi.n	c0de52f6 <roinput_hash_message+0xd8>
c0de5244:	6962      	ldr	r2, [r4, #20]
c0de5246:	2a4b      	cmp	r2, #75	; 0x4b
c0de5248:	d855      	bhi.n	c0de52f6 <roinput_hash_message+0xd8>
c0de524a:	68a2      	ldr	r2, [r4, #8]
c0de524c:	2a06      	cmp	r2, #6
c0de524e:	d852      	bhi.n	c0de52f6 <roinput_hash_message+0xd8>
c0de5250:	9604      	str	r6, [sp, #16]
c0de5252:	9005      	str	r0, [sp, #20]
c0de5254:	6926      	ldr	r6, [r4, #16]
c0de5256:	9606      	str	r6, [sp, #24]
c0de5258:	00d8      	lsls	r0, r3, #3
c0de525a:	9e06      	ldr	r6, [sp, #24]
c0de525c:	4286      	cmp	r6, r0
c0de525e:	d901      	bls.n	c0de5264 <roinput_hash_message+0x46>
c0de5260:	9805      	ldr	r0, [sp, #20]
c0de5262:	e048      	b.n	c0de52f6 <roinput_hash_message+0xd8>
c0de5264:	9101      	str	r1, [sp, #4]
c0de5266:	6821      	ldr	r1, [r4, #0]
c0de5268:	0150      	lsls	r0, r2, #5
c0de526a:	9002      	str	r0, [sp, #8]
c0de526c:	a821      	add	r0, sp, #132	; 0x84
c0de526e:	9203      	str	r2, [sp, #12]
c0de5270:	9a02      	ldr	r2, [sp, #8]
c0de5272:	f003 fb79 	bl	c0de8968 <__aeabi_memcpy>
c0de5276:	6861      	ldr	r1, [r4, #4]
c0de5278:	9c06      	ldr	r4, [sp, #24]
c0de527a:	1de0      	adds	r0, r4, #7
c0de527c:	08c2      	lsrs	r2, r0, #3
c0de527e:	a80e      	add	r0, sp, #56	; 0x38
c0de5280:	f003 fb72 	bl	c0de8968 <__aeabi_memcpy>
c0de5284:	9903      	ldr	r1, [sp, #12]
c0de5286:	9804      	ldr	r0, [sp, #16]
c0de5288:	940c      	str	r4, [sp, #48]	; 0x30
c0de528a:	910a      	str	r1, [sp, #40]	; 0x28
c0de528c:	2906      	cmp	r1, #6
c0de528e:	9c07      	ldr	r4, [sp, #28]
c0de5290:	9e05      	ldr	r6, [sp, #20]
c0de5292:	d02c      	beq.n	c0de52ee <roinput_hash_message+0xd0>
c0de5294:	a921      	add	r1, sp, #132	; 0x84
c0de5296:	9a02      	ldr	r2, [sp, #8]
c0de5298:	188b      	adds	r3, r1, r2
c0de529a:	4621      	mov	r1, r4
c0de529c:	311f      	adds	r1, #31
c0de529e:	780a      	ldrb	r2, [r1, #0]
c0de52a0:	555a      	strb	r2, [r3, r5]
c0de52a2:	1e49      	subs	r1, r1, #1
c0de52a4:	1c6d      	adds	r5, r5, #1
c0de52a6:	2d20      	cmp	r5, #32
c0de52a8:	d1f9      	bne.n	c0de529e <roinput_hash_message+0x80>
c0de52aa:	9903      	ldr	r1, [sp, #12]
c0de52ac:	1c49      	adds	r1, r1, #1
c0de52ae:	910a      	str	r1, [sp, #40]	; 0x28
c0de52b0:	2906      	cmp	r1, #6
c0de52b2:	d01c      	beq.n	c0de52ee <roinput_hash_message+0xd0>
c0de52b4:	014a      	lsls	r2, r1, #5
c0de52b6:	a921      	add	r1, sp, #132	; 0x84
c0de52b8:	188b      	adds	r3, r1, r2
c0de52ba:	213f      	movs	r1, #63	; 0x3f
c0de52bc:	5c62      	ldrb	r2, [r4, r1]
c0de52be:	701a      	strb	r2, [r3, #0]
c0de52c0:	1e49      	subs	r1, r1, #1
c0de52c2:	1c5b      	adds	r3, r3, #1
c0de52c4:	291f      	cmp	r1, #31
c0de52c6:	d1f9      	bne.n	c0de52bc <roinput_hash_message+0x9e>
c0de52c8:	9903      	ldr	r1, [sp, #12]
c0de52ca:	1c89      	adds	r1, r1, #2
c0de52cc:	910a      	str	r1, [sp, #40]	; 0x28
c0de52ce:	2906      	cmp	r1, #6
c0de52d0:	d00d      	beq.n	c0de52ee <roinput_hash_message+0xd0>
c0de52d2:	014a      	lsls	r2, r1, #5
c0de52d4:	a921      	add	r1, sp, #132	; 0x84
c0de52d6:	188b      	adds	r3, r1, r2
c0de52d8:	371f      	adds	r7, #31
c0de52da:	2100      	movs	r1, #0
c0de52dc:	783a      	ldrb	r2, [r7, #0]
c0de52de:	545a      	strb	r2, [r3, r1]
c0de52e0:	19bf      	adds	r7, r7, r6
c0de52e2:	1c49      	adds	r1, r1, #1
c0de52e4:	2920      	cmp	r1, #32
c0de52e6:	d1f9      	bne.n	c0de52dc <roinput_hash_message+0xbe>
c0de52e8:	9903      	ldr	r1, [sp, #12]
c0de52ea:	1cc9      	adds	r1, r1, #3
c0de52ec:	910a      	str	r1, [sp, #40]	; 0x28
c0de52ee:	aa08      	add	r2, sp, #32
c0de52f0:	9901      	ldr	r1, [sp, #4]
c0de52f2:	f7ff feca 	bl	c0de508a <roinput_to_fields>
c0de52f6:	b051      	add	sp, #324	; 0x144
c0de52f8:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de52fa <handle_sign_tx>:
c0de52fa:	b580      	push	{r7, lr}
c0de52fc:	4619      	mov	r1, r3
c0de52fe:	4610      	mov	r0, r2
c0de5300:	f000 f890 	bl	c0de5424 <ui_sign_tx>
c0de5304:	9802      	ldr	r0, [sp, #8]
c0de5306:	6801      	ldr	r1, [r0, #0]
c0de5308:	2210      	movs	r2, #16
c0de530a:	430a      	orrs	r2, r1
c0de530c:	6002      	str	r2, [r0, #0]
c0de530e:	bd80      	pop	{r7, pc}

c0de5310 <ux_sign_tx_done_flow_done_step_init>:
c0de5310:	b510      	push	{r4, lr}
c0de5312:	4604      	mov	r4, r0
c0de5314:	f000 f804 	bl	c0de5320 <sign_transaction>
c0de5318:	4620      	mov	r0, r4
c0de531a:	f002 ff7d 	bl	c0de8218 <ux_layout_pb_init>
c0de531e:	bd10      	pop	{r4, pc}

c0de5320 <sign_transaction>:
c0de5320:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5322:	b0c9      	sub	sp, #292	; 0x124
c0de5324:	ac01      	add	r4, sp, #4
c0de5326:	4620      	mov	r0, r4
c0de5328:	f003 fc66 	bl	c0de8bf8 <setjmp>
c0de532c:	85a0      	strh	r0, [r4, #44]	; 0x2c
c0de532e:	b285      	uxth	r5, r0
c0de5330:	2d00      	cmp	r5, #0
c0de5332:	d006      	beq.n	c0de5342 <sign_transaction+0x22>
c0de5334:	a801      	add	r0, sp, #4
c0de5336:	2100      	movs	r1, #0
c0de5338:	8581      	strh	r1, [r0, #44]	; 0x2c
c0de533a:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de533c:	f000 f9b8 	bl	c0de56b0 <try_context_set>
c0de5340:	e035      	b.n	c0de53ae <sign_transaction+0x8e>
c0de5342:	a801      	add	r0, sp, #4
c0de5344:	f000 f9b4 	bl	c0de56b0 <try_context_set>
c0de5348:	900b      	str	r0, [sp, #44]	; 0x2c
c0de534a:	4e2b      	ldr	r6, [pc, #172]	; (c0de53f8 <sign_transaction+0xd8>)
c0de534c:	4648      	mov	r0, r9
c0de534e:	1980      	adds	r0, r0, r6
c0de5350:	6841      	ldr	r1, [r0, #4]
c0de5352:	ac0d      	add	r4, sp, #52	; 0x34
c0de5354:	4620      	mov	r0, r4
c0de5356:	f7fc fb2d 	bl	c0de19b4 <generate_keypair>
c0de535a:	a83b      	add	r0, sp, #236	; 0xec
c0de535c:	2138      	movs	r1, #56	; 0x38
c0de535e:	4622      	mov	r2, r4
c0de5360:	f7fc fb50 	bl	c0de1a04 <generate_address>
c0de5364:	2800      	cmp	r0, #0
c0de5366:	d043      	beq.n	c0de53f0 <sign_transaction+0xd0>
c0de5368:	4824      	ldr	r0, [pc, #144]	; (c0de53fc <sign_transaction+0xdc>)
c0de536a:	4649      	mov	r1, r9
c0de536c:	1809      	adds	r1, r1, r0
c0de536e:	a83b      	add	r0, sp, #236	; 0xec
c0de5370:	2238      	movs	r2, #56	; 0x38
c0de5372:	f003 fb13 	bl	c0de899c <memcmp>
c0de5376:	2800      	cmp	r0, #0
c0de5378:	d13a      	bne.n	c0de53f0 <sign_transaction+0xd0>
c0de537a:	2003      	movs	r0, #3
c0de537c:	9028      	str	r0, [sp, #160]	; 0xa0
c0de537e:	204b      	movs	r0, #75	; 0x4b
c0de5380:	902a      	str	r0, [sp, #168]	; 0xa8
c0de5382:	464f      	mov	r7, r9
c0de5384:	19b9      	adds	r1, r7, r6
c0de5386:	4608      	mov	r0, r1
c0de5388:	30c8      	adds	r0, #200	; 0xc8
c0de538a:	9025      	str	r0, [sp, #148]	; 0x94
c0de538c:	2025      	movs	r0, #37	; 0x25
c0de538e:	00c0      	lsls	r0, r0, #3
c0de5390:	1808      	adds	r0, r1, r0
c0de5392:	9026      	str	r0, [sp, #152]	; 0x98
c0de5394:	3108      	adds	r1, #8
c0de5396:	ac25      	add	r4, sp, #148	; 0x94
c0de5398:	4620      	mov	r0, r4
c0de539a:	f000 f9e5 	bl	c0de5768 <transaction_to_roinput>
c0de539e:	5dbb      	ldrb	r3, [r7, r6]
c0de53a0:	a82b      	add	r0, sp, #172	; 0xac
c0de53a2:	a90d      	add	r1, sp, #52	; 0x34
c0de53a4:	4622      	mov	r2, r4
c0de53a6:	f7fc fc1f 	bl	c0de1be8 <sign>
c0de53aa:	2800      	cmp	r0, #0
c0de53ac:	d020      	beq.n	c0de53f0 <sign_transaction+0xd0>
c0de53ae:	f000 f975 	bl	c0de569c <try_context_get>
c0de53b2:	a901      	add	r1, sp, #4
c0de53b4:	4288      	cmp	r0, r1
c0de53b6:	d102      	bne.n	c0de53be <sign_transaction+0x9e>
c0de53b8:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de53ba:	f000 f979 	bl	c0de56b0 <try_context_set>
c0de53be:	a80d      	add	r0, sp, #52	; 0x34
c0de53c0:	3040      	adds	r0, #64	; 0x40
c0de53c2:	2120      	movs	r1, #32
c0de53c4:	f003 fae0 	bl	c0de8988 <explicit_bzero>
c0de53c8:	a801      	add	r0, sp, #4
c0de53ca:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0de53cc:	2800      	cmp	r0, #0
c0de53ce:	d110      	bne.n	c0de53f2 <sign_transaction+0xd2>
c0de53d0:	2d00      	cmp	r5, #0
c0de53d2:	d10d      	bne.n	c0de53f0 <sign_transaction+0xd0>
c0de53d4:	480a      	ldr	r0, [pc, #40]	; (c0de5400 <sign_transaction+0xe0>)
c0de53d6:	4649      	mov	r1, r9
c0de53d8:	1808      	adds	r0, r1, r0
c0de53da:	a92b      	add	r1, sp, #172	; 0xac
c0de53dc:	2440      	movs	r4, #64	; 0x40
c0de53de:	4622      	mov	r2, r4
c0de53e0:	f003 fac2 	bl	c0de8968 <__aeabi_memcpy>
c0de53e4:	2101      	movs	r1, #1
c0de53e6:	4620      	mov	r0, r4
c0de53e8:	f7fc fd9a 	bl	c0de1f20 <sendResponse>
c0de53ec:	b049      	add	sp, #292	; 0x124
c0de53ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de53f0:	2002      	movs	r0, #2
c0de53f2:	f7fe fc38 	bl	c0de3c66 <os_longjmp>
c0de53f6:	46c0      	nop			; (mov r8, r8)
c0de53f8:	000008a8 	.word	0x000008a8
c0de53fc:	00000754 	.word	0x00000754
c0de5400:	00000530 	.word	0x00000530

c0de5404 <ux_sign_tx_flow_approve_step_validateinit>:
c0de5404:	b580      	push	{r7, lr}
c0de5406:	4903      	ldr	r1, [pc, #12]	; (c0de5414 <ux_sign_tx_flow_approve_step_validateinit+0x10>)
c0de5408:	4479      	add	r1, pc
c0de540a:	2000      	movs	r0, #0
c0de540c:	4602      	mov	r2, r0
c0de540e:	f002 fb85 	bl	c0de7b1c <ux_flow_init>
c0de5412:	bd80      	pop	{r7, pc}
c0de5414:	00006bd8 	.word	0x00006bd8

c0de5418 <ux_sign_tx_flow_reject_step_validateinit>:
c0de5418:	b580      	push	{r7, lr}
c0de541a:	2000      	movs	r0, #0
c0de541c:	4601      	mov	r1, r0
c0de541e:	f7fc fd7f 	bl	c0de1f20 <sendResponse>
c0de5422:	bd80      	pop	{r7, pc}

c0de5424 <ui_sign_tx>:
c0de5424:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5426:	b081      	sub	sp, #4
c0de5428:	4d35      	ldr	r5, [pc, #212]	; (c0de5500 <ui_sign_tx+0xdc>)
c0de542a:	464b      	mov	r3, r9
c0de542c:	195a      	adds	r2, r3, r5
c0de542e:	4c35      	ldr	r4, [pc, #212]	; (c0de5504 <ui_sign_tx+0xe0>)
c0de5430:	191b      	adds	r3, r3, r4
c0de5432:	f7ff fb7c 	bl	c0de4b2e <parse_tx>
c0de5436:	2800      	cmp	r0, #0
c0de5438:	d05f      	beq.n	c0de54fa <ui_sign_tx+0xd6>
c0de543a:	4648      	mov	r0, r9
c0de543c:	1941      	adds	r1, r0, r5
c0de543e:	20ff      	movs	r0, #255	; 0xff
c0de5440:	4602      	mov	r2, r0
c0de5442:	3274      	adds	r2, #116	; 0x74
c0de5444:	5c8e      	ldrb	r6, [r1, r2]
c0de5446:	2e04      	cmp	r6, #4
c0de5448:	d019      	beq.n	c0de547e <ui_sign_tx+0x5a>
c0de544a:	2e00      	cmp	r6, #0
c0de544c:	d131      	bne.n	c0de54b2 <ui_sign_tx+0x8e>
c0de544e:	4649      	mov	r1, r9
c0de5450:	190f      	adds	r7, r1, r4
c0de5452:	3032      	adds	r0, #50	; 0x32
c0de5454:	1838      	adds	r0, r7, r0
c0de5456:	492c      	ldr	r1, [pc, #176]	; (c0de5508 <ui_sign_tx+0xe4>)
c0de5458:	4479      	add	r1, pc
c0de545a:	220b      	movs	r2, #11
c0de545c:	f003 fa84 	bl	c0de8968 <__aeabi_memcpy>
c0de5460:	204f      	movs	r0, #79	; 0x4f
c0de5462:	0080      	lsls	r0, r0, #2
c0de5464:	1838      	adds	r0, r7, r0
c0de5466:	4929      	ldr	r1, [pc, #164]	; (c0de550c <ui_sign_tx+0xe8>)
c0de5468:	4479      	add	r1, pc
c0de546a:	c90c      	ldmia	r1!, {r2, r3}
c0de546c:	c00c      	stmia	r0!, {r2, r3}
c0de546e:	8809      	ldrh	r1, [r1, #0]
c0de5470:	8001      	strh	r1, [r0, #0]
c0de5472:	20a3      	movs	r0, #163	; 0xa3
c0de5474:	0040      	lsls	r0, r0, #1
c0de5476:	1838      	adds	r0, r7, r0
c0de5478:	4925      	ldr	r1, [pc, #148]	; (c0de5510 <ui_sign_tx+0xec>)
c0de547a:	4479      	add	r1, pc
c0de547c:	e016      	b.n	c0de54ac <ui_sign_tx+0x88>
c0de547e:	4649      	mov	r1, r9
c0de5480:	190f      	adds	r7, r1, r4
c0de5482:	3032      	adds	r0, #50	; 0x32
c0de5484:	1838      	adds	r0, r7, r0
c0de5486:	4923      	ldr	r1, [pc, #140]	; (c0de5514 <ui_sign_tx+0xf0>)
c0de5488:	4479      	add	r1, pc
c0de548a:	220b      	movs	r2, #11
c0de548c:	f003 fa6c 	bl	c0de8968 <__aeabi_memcpy>
c0de5490:	204f      	movs	r0, #79	; 0x4f
c0de5492:	0080      	lsls	r0, r0, #2
c0de5494:	1838      	adds	r0, r7, r0
c0de5496:	4920      	ldr	r1, [pc, #128]	; (c0de5518 <ui_sign_tx+0xf4>)
c0de5498:	4479      	add	r1, pc
c0de549a:	c90c      	ldmia	r1!, {r2, r3}
c0de549c:	c00c      	stmia	r0!, {r2, r3}
c0de549e:	8809      	ldrh	r1, [r1, #0]
c0de54a0:	8001      	strh	r1, [r0, #0]
c0de54a2:	20a3      	movs	r0, #163	; 0xa3
c0de54a4:	0040      	lsls	r0, r0, #1
c0de54a6:	1838      	adds	r0, r7, r0
c0de54a8:	491c      	ldr	r1, [pc, #112]	; (c0de551c <ui_sign_tx+0xf8>)
c0de54aa:	4479      	add	r1, pc
c0de54ac:	2209      	movs	r2, #9
c0de54ae:	f003 fa5b 	bl	c0de8968 <__aeabi_memcpy>
c0de54b2:	4649      	mov	r1, r9
c0de54b4:	5d48      	ldrb	r0, [r1, r5]
c0de54b6:	1e40      	subs	r0, r0, #1
c0de54b8:	4242      	negs	r2, r0
c0de54ba:	4142      	adcs	r2, r0
c0de54bc:	0150      	lsls	r0, r2, #5
c0de54be:	4a18      	ldr	r2, [pc, #96]	; (c0de5520 <ui_sign_tx+0xfc>)
c0de54c0:	447a      	add	r2, pc
c0de54c2:	1810      	adds	r0, r2, r0
c0de54c4:	1f32      	subs	r2, r6, #4
c0de54c6:	4253      	negs	r3, r2
c0de54c8:	4153      	adcs	r3, r2
c0de54ca:	011a      	lsls	r2, r3, #4
c0de54cc:	1882      	adds	r2, r0, r2
c0de54ce:	1948      	adds	r0, r1, r5
c0de54d0:	6c03      	ldr	r3, [r0, #64]	; 0x40
c0de54d2:	2000      	movs	r0, #0
c0de54d4:	43c5      	mvns	r5, r0
c0de54d6:	1b5b      	subs	r3, r3, r5
c0de54d8:	1e5d      	subs	r5, r3, #1
c0de54da:	41ab      	sbcs	r3, r5
c0de54dc:	00db      	lsls	r3, r3, #3
c0de54de:	18d2      	adds	r2, r2, r3
c0de54e0:	1909      	adds	r1, r1, r4
c0de54e2:	2311      	movs	r3, #17
c0de54e4:	011b      	lsls	r3, r3, #4
c0de54e6:	5cc9      	ldrb	r1, [r1, r3]
c0de54e8:	1e4b      	subs	r3, r1, #1
c0de54ea:	4199      	sbcs	r1, r3
c0de54ec:	0089      	lsls	r1, r1, #2
c0de54ee:	5851      	ldr	r1, [r2, r1]
c0de54f0:	4602      	mov	r2, r0
c0de54f2:	f002 fb13 	bl	c0de7b1c <ux_flow_init>
c0de54f6:	b001      	add	sp, #4
c0de54f8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de54fa:	2002      	movs	r0, #2
c0de54fc:	f7fe fbb3 	bl	c0de3c66 <os_longjmp>
c0de5500:	000008a8 	.word	0x000008a8
c0de5504:	00000754 	.word	0x00000754
c0de5508:	0000704c 	.word	0x0000704c
c0de550c:	00007048 	.word	0x00007048
c0de5510:	00006fd2 	.word	0x00006fd2
c0de5514:	00006fac 	.word	0x00006fac
c0de5518:	00006fc0 	.word	0x00006fc0
c0de551c:	00006f96 	.word	0x00006f96
c0de5520:	00006fa4 	.word	0x00006fa4

c0de5524 <SVC_Call>:
c0de5524:	df01      	svc	1
c0de5526:	2900      	cmp	r1, #0
c0de5528:	d100      	bne.n	c0de552c <exception>
c0de552a:	4770      	bx	lr

c0de552c <exception>:
c0de552c:	4608      	mov	r0, r1
c0de552e:	f7fe fb9a 	bl	c0de3c66 <os_longjmp>

c0de5532 <get_api_level>:
c0de5532:	b580      	push	{r7, lr}
c0de5534:	b082      	sub	sp, #8
c0de5536:	2000      	movs	r0, #0
c0de5538:	9001      	str	r0, [sp, #4]
c0de553a:	9000      	str	r0, [sp, #0]
c0de553c:	2001      	movs	r0, #1
c0de553e:	4669      	mov	r1, sp
c0de5540:	f7ff fff0 	bl	c0de5524 <SVC_Call>
c0de5544:	b002      	add	sp, #8
c0de5546:	bd80      	pop	{r7, pc}

c0de5548 <halt>:
c0de5548:	b580      	push	{r7, lr}
c0de554a:	b082      	sub	sp, #8
c0de554c:	2000      	movs	r0, #0
c0de554e:	9001      	str	r0, [sp, #4]
c0de5550:	2002      	movs	r0, #2
c0de5552:	4669      	mov	r1, sp
c0de5554:	f7ff ffe6 	bl	c0de5524 <SVC_Call>
c0de5558:	b002      	add	sp, #8
c0de555a:	bd80      	pop	{r7, pc}

c0de555c <nvm_write>:
c0de555c:	b580      	push	{r7, lr}
c0de555e:	b084      	sub	sp, #16
c0de5560:	ab01      	add	r3, sp, #4
c0de5562:	c307      	stmia	r3!, {r0, r1, r2}
c0de5564:	4802      	ldr	r0, [pc, #8]	; (c0de5570 <nvm_write+0x14>)
c0de5566:	a901      	add	r1, sp, #4
c0de5568:	f7ff ffdc 	bl	c0de5524 <SVC_Call>
c0de556c:	b004      	add	sp, #16
c0de556e:	bd80      	pop	{r7, pc}
c0de5570:	03000003 	.word	0x03000003

c0de5574 <os_perso_isonboarded>:
c0de5574:	b580      	push	{r7, lr}
c0de5576:	b082      	sub	sp, #8
c0de5578:	2000      	movs	r0, #0
c0de557a:	9001      	str	r0, [sp, #4]
c0de557c:	209f      	movs	r0, #159	; 0x9f
c0de557e:	4669      	mov	r1, sp
c0de5580:	f7ff ffd0 	bl	c0de5524 <SVC_Call>
c0de5584:	b2c0      	uxtb	r0, r0
c0de5586:	b002      	add	sp, #8
c0de5588:	bd80      	pop	{r7, pc}
c0de558a:	d4d4      	bmi.n	c0de5536 <get_api_level+0x4>

c0de558c <os_perso_derive_node_bip32>:
c0de558c:	b510      	push	{r4, lr}
c0de558e:	b086      	sub	sp, #24
c0de5590:	9c08      	ldr	r4, [sp, #32]
c0de5592:	9405      	str	r4, [sp, #20]
c0de5594:	9304      	str	r3, [sp, #16]
c0de5596:	9203      	str	r2, [sp, #12]
c0de5598:	9102      	str	r1, [sp, #8]
c0de559a:	9001      	str	r0, [sp, #4]
c0de559c:	4802      	ldr	r0, [pc, #8]	; (c0de55a8 <os_perso_derive_node_bip32+0x1c>)
c0de559e:	a901      	add	r1, sp, #4
c0de55a0:	f7ff ffc0 	bl	c0de5524 <SVC_Call>
c0de55a4:	b006      	add	sp, #24
c0de55a6:	bd10      	pop	{r4, pc}
c0de55a8:	05000053 	.word	0x05000053

c0de55ac <os_global_pin_is_validated>:
c0de55ac:	b580      	push	{r7, lr}
c0de55ae:	b082      	sub	sp, #8
c0de55b0:	2000      	movs	r0, #0
c0de55b2:	9001      	str	r0, [sp, #4]
c0de55b4:	20a0      	movs	r0, #160	; 0xa0
c0de55b6:	4669      	mov	r1, sp
c0de55b8:	f7ff ffb4 	bl	c0de5524 <SVC_Call>
c0de55bc:	b2c0      	uxtb	r0, r0
c0de55be:	b002      	add	sp, #8
c0de55c0:	bd80      	pop	{r7, pc}
c0de55c2:	d4d4      	bmi.n	c0de556e <nvm_write+0x12>

c0de55c4 <os_ux>:
c0de55c4:	b580      	push	{r7, lr}
c0de55c6:	b082      	sub	sp, #8
c0de55c8:	2100      	movs	r1, #0
c0de55ca:	9101      	str	r1, [sp, #4]
c0de55cc:	9000      	str	r0, [sp, #0]
c0de55ce:	4803      	ldr	r0, [pc, #12]	; (c0de55dc <os_ux+0x18>)
c0de55d0:	4669      	mov	r1, sp
c0de55d2:	f7ff ffa7 	bl	c0de5524 <SVC_Call>
c0de55d6:	b002      	add	sp, #8
c0de55d8:	bd80      	pop	{r7, pc}
c0de55da:	46c0      	nop			; (mov r8, r8)
c0de55dc:	01000064 	.word	0x01000064

c0de55e0 <os_flags>:
c0de55e0:	b580      	push	{r7, lr}
c0de55e2:	b082      	sub	sp, #8
c0de55e4:	2000      	movs	r0, #0
c0de55e6:	9001      	str	r0, [sp, #4]
c0de55e8:	206a      	movs	r0, #106	; 0x6a
c0de55ea:	4669      	mov	r1, sp
c0de55ec:	f7ff ff9a 	bl	c0de5524 <SVC_Call>
c0de55f0:	b002      	add	sp, #8
c0de55f2:	bd80      	pop	{r7, pc}

c0de55f4 <os_serial>:
c0de55f4:	b580      	push	{r7, lr}
c0de55f6:	b082      	sub	sp, #8
c0de55f8:	9101      	str	r1, [sp, #4]
c0de55fa:	9000      	str	r0, [sp, #0]
c0de55fc:	4802      	ldr	r0, [pc, #8]	; (c0de5608 <os_serial+0x14>)
c0de55fe:	4669      	mov	r1, sp
c0de5600:	f7ff ff90 	bl	c0de5524 <SVC_Call>
c0de5604:	b002      	add	sp, #8
c0de5606:	bd80      	pop	{r7, pc}
c0de5608:	0200006c 	.word	0x0200006c

c0de560c <os_setting_get>:
c0de560c:	b580      	push	{r7, lr}
c0de560e:	b084      	sub	sp, #16
c0de5610:	ab01      	add	r3, sp, #4
c0de5612:	c307      	stmia	r3!, {r0, r1, r2}
c0de5614:	4802      	ldr	r0, [pc, #8]	; (c0de5620 <os_setting_get+0x14>)
c0de5616:	a901      	add	r1, sp, #4
c0de5618:	f7ff ff84 	bl	c0de5524 <SVC_Call>
c0de561c:	b004      	add	sp, #16
c0de561e:	bd80      	pop	{r7, pc}
c0de5620:	03000070 	.word	0x03000070

c0de5624 <os_registry_get_current_app_tag>:
c0de5624:	b580      	push	{r7, lr}
c0de5626:	b084      	sub	sp, #16
c0de5628:	ab01      	add	r3, sp, #4
c0de562a:	c307      	stmia	r3!, {r0, r1, r2}
c0de562c:	4802      	ldr	r0, [pc, #8]	; (c0de5638 <os_registry_get_current_app_tag+0x14>)
c0de562e:	a901      	add	r1, sp, #4
c0de5630:	f7ff ff78 	bl	c0de5524 <SVC_Call>
c0de5634:	b004      	add	sp, #16
c0de5636:	bd80      	pop	{r7, pc}
c0de5638:	03000074 	.word	0x03000074

c0de563c <os_sched_exit>:
c0de563c:	b082      	sub	sp, #8
c0de563e:	2100      	movs	r1, #0
c0de5640:	9101      	str	r1, [sp, #4]
c0de5642:	9000      	str	r0, [sp, #0]
c0de5644:	4802      	ldr	r0, [pc, #8]	; (c0de5650 <os_sched_exit+0x14>)
c0de5646:	4669      	mov	r1, sp
c0de5648:	f7ff ff6c 	bl	c0de5524 <SVC_Call>
c0de564c:	deff      	udf	#255	; 0xff
c0de564e:	e7fe      	b.n	c0de564e <os_sched_exit+0x12>
c0de5650:	0100009a 	.word	0x0100009a

c0de5654 <io_seph_send>:
c0de5654:	b580      	push	{r7, lr}
c0de5656:	b082      	sub	sp, #8
c0de5658:	9101      	str	r1, [sp, #4]
c0de565a:	9000      	str	r0, [sp, #0]
c0de565c:	4802      	ldr	r0, [pc, #8]	; (c0de5668 <io_seph_send+0x14>)
c0de565e:	4669      	mov	r1, sp
c0de5660:	f7ff ff60 	bl	c0de5524 <SVC_Call>
c0de5664:	b002      	add	sp, #8
c0de5666:	bd80      	pop	{r7, pc}
c0de5668:	02000083 	.word	0x02000083

c0de566c <io_seph_is_status_sent>:
c0de566c:	b580      	push	{r7, lr}
c0de566e:	b082      	sub	sp, #8
c0de5670:	2000      	movs	r0, #0
c0de5672:	9001      	str	r0, [sp, #4]
c0de5674:	2084      	movs	r0, #132	; 0x84
c0de5676:	4669      	mov	r1, sp
c0de5678:	f7ff ff54 	bl	c0de5524 <SVC_Call>
c0de567c:	b002      	add	sp, #8
c0de567e:	bd80      	pop	{r7, pc}

c0de5680 <io_seph_recv>:
c0de5680:	b580      	push	{r7, lr}
c0de5682:	b084      	sub	sp, #16
c0de5684:	ab01      	add	r3, sp, #4
c0de5686:	c307      	stmia	r3!, {r0, r1, r2}
c0de5688:	4803      	ldr	r0, [pc, #12]	; (c0de5698 <io_seph_recv+0x18>)
c0de568a:	a901      	add	r1, sp, #4
c0de568c:	f7ff ff4a 	bl	c0de5524 <SVC_Call>
c0de5690:	b280      	uxth	r0, r0
c0de5692:	b004      	add	sp, #16
c0de5694:	bd80      	pop	{r7, pc}
c0de5696:	46c0      	nop			; (mov r8, r8)
c0de5698:	03000085 	.word	0x03000085

c0de569c <try_context_get>:
c0de569c:	b580      	push	{r7, lr}
c0de569e:	b082      	sub	sp, #8
c0de56a0:	2000      	movs	r0, #0
c0de56a2:	9001      	str	r0, [sp, #4]
c0de56a4:	2087      	movs	r0, #135	; 0x87
c0de56a6:	4669      	mov	r1, sp
c0de56a8:	f7ff ff3c 	bl	c0de5524 <SVC_Call>
c0de56ac:	b002      	add	sp, #8
c0de56ae:	bd80      	pop	{r7, pc}

c0de56b0 <try_context_set>:
c0de56b0:	b580      	push	{r7, lr}
c0de56b2:	b082      	sub	sp, #8
c0de56b4:	2100      	movs	r1, #0
c0de56b6:	9101      	str	r1, [sp, #4]
c0de56b8:	9000      	str	r0, [sp, #0]
c0de56ba:	4803      	ldr	r0, [pc, #12]	; (c0de56c8 <try_context_set+0x18>)
c0de56bc:	4669      	mov	r1, sp
c0de56be:	f7ff ff31 	bl	c0de5524 <SVC_Call>
c0de56c2:	b002      	add	sp, #8
c0de56c4:	bd80      	pop	{r7, pc}
c0de56c6:	46c0      	nop			; (mov r8, r8)
c0de56c8:	0100010b 	.word	0x0100010b

c0de56cc <os_sched_last_status>:
c0de56cc:	b580      	push	{r7, lr}
c0de56ce:	b082      	sub	sp, #8
c0de56d0:	2100      	movs	r1, #0
c0de56d2:	9101      	str	r1, [sp, #4]
c0de56d4:	9000      	str	r0, [sp, #0]
c0de56d6:	4803      	ldr	r0, [pc, #12]	; (c0de56e4 <os_sched_last_status+0x18>)
c0de56d8:	4669      	mov	r1, sp
c0de56da:	f7ff ff23 	bl	c0de5524 <SVC_Call>
c0de56de:	b2c0      	uxtb	r0, r0
c0de56e0:	b002      	add	sp, #8
c0de56e2:	bd80      	pop	{r7, pc}
c0de56e4:	0100009c 	.word	0x0100009c

c0de56e8 <screen_update>:
c0de56e8:	b580      	push	{r7, lr}
c0de56ea:	b082      	sub	sp, #8
c0de56ec:	2000      	movs	r0, #0
c0de56ee:	9001      	str	r0, [sp, #4]
c0de56f0:	207a      	movs	r0, #122	; 0x7a
c0de56f2:	4669      	mov	r1, sp
c0de56f4:	f7ff ff16 	bl	c0de5524 <SVC_Call>
c0de56f8:	b002      	add	sp, #8
c0de56fa:	bd80      	pop	{r7, pc}

c0de56fc <bagl_hal_draw_bitmap_within_rect>:
c0de56fc:	b510      	push	{r4, lr}
c0de56fe:	b08a      	sub	sp, #40	; 0x28
c0de5700:	9c10      	ldr	r4, [sp, #64]	; 0x40
c0de5702:	9409      	str	r4, [sp, #36]	; 0x24
c0de5704:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
c0de5706:	9408      	str	r4, [sp, #32]
c0de5708:	9c0e      	ldr	r4, [sp, #56]	; 0x38
c0de570a:	9407      	str	r4, [sp, #28]
c0de570c:	9c0d      	ldr	r4, [sp, #52]	; 0x34
c0de570e:	9406      	str	r4, [sp, #24]
c0de5710:	9c0c      	ldr	r4, [sp, #48]	; 0x30
c0de5712:	9405      	str	r4, [sp, #20]
c0de5714:	9304      	str	r3, [sp, #16]
c0de5716:	9203      	str	r2, [sp, #12]
c0de5718:	9102      	str	r1, [sp, #8]
c0de571a:	9001      	str	r0, [sp, #4]
c0de571c:	4802      	ldr	r0, [pc, #8]	; (c0de5728 <bagl_hal_draw_bitmap_within_rect+0x2c>)
c0de571e:	a901      	add	r1, sp, #4
c0de5720:	f7ff ff00 	bl	c0de5524 <SVC_Call>
c0de5724:	b00a      	add	sp, #40	; 0x28
c0de5726:	bd10      	pop	{r4, pc}
c0de5728:	0900007c 	.word	0x0900007c

c0de572c <bagl_hal_draw_rect>:
c0de572c:	b510      	push	{r4, lr}
c0de572e:	b086      	sub	sp, #24
c0de5730:	9c08      	ldr	r4, [sp, #32]
c0de5732:	9405      	str	r4, [sp, #20]
c0de5734:	9304      	str	r3, [sp, #16]
c0de5736:	9203      	str	r2, [sp, #12]
c0de5738:	9102      	str	r1, [sp, #8]
c0de573a:	9001      	str	r0, [sp, #4]
c0de573c:	4802      	ldr	r0, [pc, #8]	; (c0de5748 <bagl_hal_draw_rect+0x1c>)
c0de573e:	a901      	add	r1, sp, #4
c0de5740:	f7ff fef0 	bl	c0de5524 <SVC_Call>
c0de5744:	b006      	add	sp, #24
c0de5746:	bd10      	pop	{r4, pc}
c0de5748:	0500007d 	.word	0x0500007d

c0de574c <os_ux_get_status>:
c0de574c:	b580      	push	{r7, lr}
c0de574e:	b084      	sub	sp, #16
c0de5750:	2100      	movs	r1, #0
c0de5752:	9102      	str	r1, [sp, #8]
c0de5754:	9001      	str	r0, [sp, #4]
c0de5756:	4803      	ldr	r0, [pc, #12]	; (c0de5764 <os_ux_get_status+0x18>)
c0de5758:	a901      	add	r1, sp, #4
c0de575a:	f7ff fee3 	bl	c0de5524 <SVC_Call>
c0de575e:	b004      	add	sp, #16
c0de5760:	bd80      	pop	{r7, pc}
c0de5762:	46c0      	nop			; (mov r8, r8)
c0de5764:	01000135 	.word	0x01000135

c0de5768 <transaction_to_roinput>:
c0de5768:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de576a:	b083      	sub	sp, #12
c0de576c:	460d      	mov	r5, r1
c0de576e:	4604      	mov	r4, r0
c0de5770:	2000      	movs	r0, #0
c0de5772:	6120      	str	r0, [r4, #16]
c0de5774:	60a0      	str	r0, [r4, #8]
c0de5776:	3110      	adds	r1, #16
c0de5778:	4620      	mov	r0, r4
c0de577a:	f7ff fbae 	bl	c0de4eda <roinput_add_field>
c0de577e:	4629      	mov	r1, r5
c0de5780:	3161      	adds	r1, #97	; 0x61
c0de5782:	4620      	mov	r0, r4
c0de5784:	f7ff fba9 	bl	c0de4eda <roinput_add_field>
c0de5788:	4629      	mov	r1, r5
c0de578a:	3182      	adds	r1, #130	; 0x82
c0de578c:	4620      	mov	r0, r4
c0de578e:	f7ff fba4 	bl	c0de4eda <roinput_add_field>
c0de5792:	cd0c      	ldmia	r5!, {r2, r3}
c0de5794:	4620      	mov	r0, r4
c0de5796:	3d08      	subs	r5, #8
c0de5798:	f7ff fc24 	bl	c0de4fe4 <roinput_add_uint64>
c0de579c:	68aa      	ldr	r2, [r5, #8]
c0de579e:	68eb      	ldr	r3, [r5, #12]
c0de57a0:	4620      	mov	r0, r4
c0de57a2:	f7ff fc1f 	bl	c0de4fe4 <roinput_add_uint64>
c0de57a6:	2030      	movs	r0, #48	; 0x30
c0de57a8:	5c29      	ldrb	r1, [r5, r0]
c0de57aa:	4620      	mov	r0, r4
c0de57ac:	f7ff fbae 	bl	c0de4f0c <roinput_add_bit>
c0de57b0:	6b69      	ldr	r1, [r5, #52]	; 0x34
c0de57b2:	4620      	mov	r0, r4
c0de57b4:	f7ff fc05 	bl	c0de4fc2 <roinput_add_uint32>
c0de57b8:	6ba9      	ldr	r1, [r5, #56]	; 0x38
c0de57ba:	4620      	mov	r0, r4
c0de57bc:	f7ff fc01 	bl	c0de4fc2 <roinput_add_uint32>
c0de57c0:	4629      	mov	r1, r5
c0de57c2:	313c      	adds	r1, #60	; 0x3c
c0de57c4:	2222      	movs	r2, #34	; 0x22
c0de57c6:	4620      	mov	r0, r4
c0de57c8:	f7ff fbce 	bl	c0de4f68 <roinput_add_bytes>
c0de57cc:	4628      	mov	r0, r5
c0de57ce:	3081      	adds	r0, #129	; 0x81
c0de57d0:	9001      	str	r0, [sp, #4]
c0de57d2:	4628      	mov	r0, r5
c0de57d4:	30a2      	adds	r0, #162	; 0xa2
c0de57d6:	9002      	str	r0, [sp, #8]
c0de57d8:	462e      	mov	r6, r5
c0de57da:	36a8      	adds	r6, #168	; 0xa8
c0de57dc:	275e      	movs	r7, #94	; 0x5e
c0de57de:	5de9      	ldrb	r1, [r5, r7]
c0de57e0:	4620      	mov	r0, r4
c0de57e2:	f7ff fb93 	bl	c0de4f0c <roinput_add_bit>
c0de57e6:	1c7f      	adds	r7, r7, #1
c0de57e8:	2f61      	cmp	r7, #97	; 0x61
c0de57ea:	d1f8      	bne.n	c0de57de <transaction_to_roinput+0x76>
c0de57ec:	9801      	ldr	r0, [sp, #4]
c0de57ee:	7801      	ldrb	r1, [r0, #0]
c0de57f0:	4620      	mov	r0, r4
c0de57f2:	f7ff fb8b 	bl	c0de4f0c <roinput_add_bit>
c0de57f6:	9802      	ldr	r0, [sp, #8]
c0de57f8:	7801      	ldrb	r1, [r0, #0]
c0de57fa:	4620      	mov	r0, r4
c0de57fc:	f7ff fb86 	bl	c0de4f0c <roinput_add_bit>
c0de5800:	ce0c      	ldmia	r6!, {r2, r3}
c0de5802:	4620      	mov	r0, r4
c0de5804:	3e08      	subs	r6, #8
c0de5806:	f7ff fbed 	bl	c0de4fe4 <roinput_add_uint64>
c0de580a:	68b2      	ldr	r2, [r6, #8]
c0de580c:	68f3      	ldr	r3, [r6, #12]
c0de580e:	4620      	mov	r0, r4
c0de5810:	f7ff fbe8 	bl	c0de4fe4 <roinput_add_uint64>
c0de5814:	7c31      	ldrb	r1, [r6, #16]
c0de5816:	4620      	mov	r0, r4
c0de5818:	f7ff fb78 	bl	c0de4f0c <roinput_add_bit>
c0de581c:	b003      	add	sp, #12
c0de581e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de5820 <transaction_prepare_memo>:
c0de5820:	b570      	push	{r4, r5, r6, lr}
c0de5822:	460e      	mov	r6, r1
c0de5824:	4604      	mov	r4, r0
c0de5826:	2520      	movs	r5, #32
c0de5828:	4608      	mov	r0, r1
c0de582a:	4629      	mov	r1, r5
c0de582c:	f003 fa32 	bl	c0de8c94 <strnlen>
c0de5830:	7060      	strb	r0, [r4, #1]
c0de5832:	2101      	movs	r1, #1
c0de5834:	7021      	strb	r1, [r4, #0]
c0de5836:	2800      	cmp	r0, #0
c0de5838:	d00b      	beq.n	c0de5852 <transaction_prepare_memo+0x32>
c0de583a:	1ca1      	adds	r1, r4, #2
c0de583c:	4602      	mov	r2, r0
c0de583e:	7833      	ldrb	r3, [r6, #0]
c0de5840:	700b      	strb	r3, [r1, #0]
c0de5842:	1c76      	adds	r6, r6, #1
c0de5844:	1c49      	adds	r1, r1, #1
c0de5846:	1e52      	subs	r2, r2, #1
c0de5848:	d1f9      	bne.n	c0de583e <transaction_prepare_memo+0x1e>
c0de584a:	1c81      	adds	r1, r0, #2
c0de584c:	2921      	cmp	r1, #33	; 0x21
c0de584e:	d901      	bls.n	c0de5854 <transaction_prepare_memo+0x34>
c0de5850:	bd70      	pop	{r4, r5, r6, pc}
c0de5852:	2102      	movs	r1, #2
c0de5854:	1862      	adds	r2, r4, r1
c0de5856:	1a29      	subs	r1, r5, r0
c0de5858:	4610      	mov	r0, r2
c0de585a:	f003 f87f 	bl	c0de895c <__aeabi_memclr>
c0de585e:	bd70      	pop	{r4, r5, r6, pc}

c0de5860 <u2f_apdu_sign>:
c0de5860:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5862:	b083      	sub	sp, #12
c0de5864:	4604      	mov	r4, r0
c0de5866:	4a3a      	ldr	r2, [pc, #232]	; (c0de5950 <u2f_apdu_sign+0xf0>)
c0de5868:	4648      	mov	r0, r9
c0de586a:	5c80      	ldrb	r0, [r0, r2]
c0de586c:	2800      	cmp	r0, #0
c0de586e:	d003      	beq.n	c0de5878 <u2f_apdu_sign+0x18>
c0de5870:	2183      	movs	r1, #131	; 0x83
c0de5872:	4a39      	ldr	r2, [pc, #228]	; (c0de5958 <u2f_apdu_sign+0xf8>)
c0de5874:	447a      	add	r2, pc
c0de5876:	e00b      	b.n	c0de5890 <u2f_apdu_sign+0x30>
c0de5878:	9a08      	ldr	r2, [sp, #32]
c0de587a:	2a45      	cmp	r2, #69	; 0x45
c0de587c:	d803      	bhi.n	c0de5886 <u2f_apdu_sign+0x26>
c0de587e:	2183      	movs	r1, #131	; 0x83
c0de5880:	4a36      	ldr	r2, [pc, #216]	; (c0de595c <u2f_apdu_sign+0xfc>)
c0de5882:	447a      	add	r2, pc
c0de5884:	e004      	b.n	c0de5890 <u2f_apdu_sign+0x30>
c0de5886:	2907      	cmp	r1, #7
c0de5888:	d108      	bne.n	c0de589c <u2f_apdu_sign+0x3c>
c0de588a:	2183      	movs	r1, #131	; 0x83
c0de588c:	4a34      	ldr	r2, [pc, #208]	; (c0de5960 <u2f_apdu_sign+0x100>)
c0de588e:	447a      	add	r2, pc
c0de5890:	2302      	movs	r3, #2
c0de5892:	4620      	mov	r0, r4
c0de5894:	f000 fcf8 	bl	c0de6288 <u2f_message_reply>
c0de5898:	b003      	add	sp, #12
c0de589a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de589c:	461d      	mov	r5, r3
c0de589e:	4619      	mov	r1, r3
c0de58a0:	3140      	adds	r1, #64	; 0x40
c0de58a2:	780e      	ldrb	r6, [r1, #0]
c0de58a4:	4630      	mov	r0, r6
c0de58a6:	3041      	adds	r0, #65	; 0x41
c0de58a8:	4290      	cmp	r0, r2
c0de58aa:	d1e8      	bne.n	c0de587e <u2f_apdu_sign+0x1e>
c0de58ac:	9101      	str	r1, [sp, #4]
c0de58ae:	9202      	str	r2, [sp, #8]
c0de58b0:	2e00      	cmp	r6, #0
c0de58b2:	d018      	beq.n	c0de58e6 <u2f_apdu_sign+0x86>
c0de58b4:	2e05      	cmp	r6, #5
c0de58b6:	d108      	bne.n	c0de58ca <u2f_apdu_sign+0x6a>
c0de58b8:	4628      	mov	r0, r5
c0de58ba:	3041      	adds	r0, #65	; 0x41
c0de58bc:	4929      	ldr	r1, [pc, #164]	; (c0de5964 <u2f_apdu_sign+0x104>)
c0de58be:	4479      	add	r1, pc
c0de58c0:	2205      	movs	r2, #5
c0de58c2:	f003 f86b 	bl	c0de899c <memcmp>
c0de58c6:	2800      	cmp	r0, #0
c0de58c8:	d02b      	beq.n	c0de5922 <u2f_apdu_sign+0xc2>
c0de58ca:	4628      	mov	r0, r5
c0de58cc:	3041      	adds	r0, #65	; 0x41
c0de58ce:	2100      	movs	r1, #0
c0de58d0:	4a25      	ldr	r2, [pc, #148]	; (c0de5968 <u2f_apdu_sign+0x108>)
c0de58d2:	447a      	add	r2, pc
c0de58d4:	5c43      	ldrb	r3, [r0, r1]
c0de58d6:	2703      	movs	r7, #3
c0de58d8:	400f      	ands	r7, r1
c0de58da:	5dd7      	ldrb	r7, [r2, r7]
c0de58dc:	405f      	eors	r7, r3
c0de58de:	5447      	strb	r7, [r0, r1]
c0de58e0:	1c49      	adds	r1, r1, #1
c0de58e2:	428e      	cmp	r6, r1
c0de58e4:	d1f6      	bne.n	c0de58d4 <u2f_apdu_sign+0x74>
c0de58e6:	9801      	ldr	r0, [sp, #4]
c0de58e8:	7940      	ldrb	r0, [r0, #5]
c0de58ea:	3046      	adds	r0, #70	; 0x46
c0de58ec:	9902      	ldr	r1, [sp, #8]
c0de58ee:	4288      	cmp	r0, r1
c0de58f0:	d113      	bne.n	c0de591a <u2f_apdu_sign+0xba>
c0de58f2:	4818      	ldr	r0, [pc, #96]	; (c0de5954 <u2f_apdu_sign+0xf4>)
c0de58f4:	464f      	mov	r7, r9
c0de58f6:	1838      	adds	r0, r7, r0
c0de58f8:	3541      	adds	r5, #65	; 0x41
c0de58fa:	4629      	mov	r1, r5
c0de58fc:	4632      	mov	r2, r6
c0de58fe:	f003 f837 	bl	c0de8970 <__aeabi_memmove>
c0de5902:	2009      	movs	r0, #9
c0de5904:	4912      	ldr	r1, [pc, #72]	; (c0de5950 <u2f_apdu_sign+0xf0>)
c0de5906:	5478      	strb	r0, [r7, r1]
c0de5908:	1878      	adds	r0, r7, r1
c0de590a:	2107      	movs	r1, #7
c0de590c:	7181      	strb	r1, [r0, #6]
c0de590e:	8046      	strh	r6, [r0, #2]
c0de5910:	2101      	movs	r1, #1
c0de5912:	4620      	mov	r0, r4
c0de5914:	f000 fc8a 	bl	c0de622c <u2f_message_set_autoreply_wait_user_presence>
c0de5918:	e7be      	b.n	c0de5898 <u2f_apdu_sign+0x38>
c0de591a:	2183      	movs	r1, #131	; 0x83
c0de591c:	4a13      	ldr	r2, [pc, #76]	; (c0de596c <u2f_apdu_sign+0x10c>)
c0de591e:	447a      	add	r2, pc
c0de5920:	e7b6      	b.n	c0de5890 <u2f_apdu_sign+0x30>
c0de5922:	480c      	ldr	r0, [pc, #48]	; (c0de5954 <u2f_apdu_sign+0xf4>)
c0de5924:	4649      	mov	r1, r9
c0de5926:	2204      	movs	r2, #4
c0de5928:	540a      	strb	r2, [r1, r0]
c0de592a:	180a      	adds	r2, r1, r0
c0de592c:	2000      	movs	r0, #0
c0de592e:	7210      	strb	r0, [r2, #8]
c0de5930:	2190      	movs	r1, #144	; 0x90
c0de5932:	71d1      	strb	r1, [r2, #7]
c0de5934:	7190      	strb	r0, [r2, #6]
c0de5936:	7151      	strb	r1, [r2, #5]
c0de5938:	204c      	movs	r0, #76	; 0x4c
c0de593a:	7110      	strb	r0, [r2, #4]
c0de593c:	2049      	movs	r0, #73	; 0x49
c0de593e:	70d0      	strb	r0, [r2, #3]
c0de5940:	204f      	movs	r0, #79	; 0x4f
c0de5942:	7090      	strb	r0, [r2, #2]
c0de5944:	2042      	movs	r0, #66	; 0x42
c0de5946:	7050      	strb	r0, [r2, #1]
c0de5948:	2183      	movs	r1, #131	; 0x83
c0de594a:	2309      	movs	r3, #9
c0de594c:	e7a1      	b.n	c0de5892 <u2f_apdu_sign+0x32>
c0de594e:	46c0      	nop			; (mov r8, r8)
c0de5950:	00000684 	.word	0x00000684
c0de5954:	00000530 	.word	0x00000530
c0de5958:	00006c49 	.word	0x00006c49
c0de595c:	00006c3d 	.word	0x00006c3d
c0de5960:	00006c33 	.word	0x00006c33
c0de5964:	00006c05 	.word	0x00006c05
c0de5968:	00003499 	.word	0x00003499
c0de596c:	00006bab 	.word	0x00006bab

c0de5970 <u2f_handle_cmd_init>:
c0de5970:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5972:	b089      	sub	sp, #36	; 0x24
c0de5974:	461c      	mov	r4, r3
c0de5976:	460e      	mov	r6, r1
c0de5978:	4605      	mov	r5, r0
c0de597a:	4618      	mov	r0, r3
c0de597c:	f000 fc48 	bl	c0de6210 <u2f_is_channel_broadcast>
c0de5980:	2800      	cmp	r0, #0
c0de5982:	9506      	str	r5, [sp, #24]
c0de5984:	9404      	str	r4, [sp, #16]
c0de5986:	d009      	beq.n	c0de599c <u2f_handle_cmd_init+0x2c>
c0de5988:	6828      	ldr	r0, [r5, #0]
c0de598a:	1c44      	adds	r4, r0, #1
c0de598c:	602c      	str	r4, [r5, #0]
c0de598e:	0a20      	lsrs	r0, r4, #8
c0de5990:	9007      	str	r0, [sp, #28]
c0de5992:	0c20      	lsrs	r0, r4, #16
c0de5994:	9008      	str	r0, [sp, #32]
c0de5996:	0e20      	lsrs	r0, r4, #24
c0de5998:	9005      	str	r0, [sp, #20]
c0de599a:	e00f      	b.n	c0de59bc <u2f_handle_cmd_init+0x4c>
c0de599c:	7820      	ldrb	r0, [r4, #0]
c0de599e:	7861      	ldrb	r1, [r4, #1]
c0de59a0:	0209      	lsls	r1, r1, #8
c0de59a2:	1808      	adds	r0, r1, r0
c0de59a4:	78a1      	ldrb	r1, [r4, #2]
c0de59a6:	78e2      	ldrb	r2, [r4, #3]
c0de59a8:	0212      	lsls	r2, r2, #8
c0de59aa:	1851      	adds	r1, r2, r1
c0de59ac:	0409      	lsls	r1, r1, #16
c0de59ae:	1808      	adds	r0, r1, r0
c0de59b0:	0e04      	lsrs	r4, r0, #24
c0de59b2:	0c01      	lsrs	r1, r0, #16
c0de59b4:	9107      	str	r1, [sp, #28]
c0de59b6:	9005      	str	r0, [sp, #20]
c0de59b8:	0a00      	lsrs	r0, r0, #8
c0de59ba:	9008      	str	r0, [sp, #32]
c0de59bc:	7870      	ldrb	r0, [r6, #1]
c0de59be:	9003      	str	r0, [sp, #12]
c0de59c0:	78f0      	ldrb	r0, [r6, #3]
c0de59c2:	9002      	str	r0, [sp, #8]
c0de59c4:	78b0      	ldrb	r0, [r6, #2]
c0de59c6:	9001      	str	r0, [sp, #4]
c0de59c8:	7973      	ldrb	r3, [r6, #5]
c0de59ca:	7932      	ldrb	r2, [r6, #4]
c0de59cc:	79f1      	ldrb	r1, [r6, #7]
c0de59ce:	79b5      	ldrb	r5, [r6, #6]
c0de59d0:	7836      	ldrb	r6, [r6, #0]
c0de59d2:	4f1c      	ldr	r7, [pc, #112]	; (c0de5a44 <u2f_handle_cmd_init+0xd4>)
c0de59d4:	4648      	mov	r0, r9
c0de59d6:	55c6      	strb	r6, [r0, r7]
c0de59d8:	19c6      	adds	r6, r0, r7
c0de59da:	2700      	movs	r7, #0
c0de59dc:	7377      	strb	r7, [r6, #13]
c0de59de:	2001      	movs	r0, #1
c0de59e0:	73b0      	strb	r0, [r6, #14]
c0de59e2:	73f7      	strb	r7, [r6, #15]
c0de59e4:	7437      	strb	r7, [r6, #16]
c0de59e6:	71b5      	strb	r5, [r6, #6]
c0de59e8:	71f1      	strb	r1, [r6, #7]
c0de59ea:	7132      	strb	r2, [r6, #4]
c0de59ec:	7173      	strb	r3, [r6, #5]
c0de59ee:	9801      	ldr	r0, [sp, #4]
c0de59f0:	70b0      	strb	r0, [r6, #2]
c0de59f2:	9802      	ldr	r0, [sp, #8]
c0de59f4:	70f0      	strb	r0, [r6, #3]
c0de59f6:	9803      	ldr	r0, [sp, #12]
c0de59f8:	7070      	strb	r0, [r6, #1]
c0de59fa:	9807      	ldr	r0, [sp, #28]
c0de59fc:	72b0      	strb	r0, [r6, #10]
c0de59fe:	72f4      	strb	r4, [r6, #11]
c0de5a00:	9d05      	ldr	r5, [sp, #20]
c0de5a02:	7235      	strb	r5, [r6, #8]
c0de5a04:	9808      	ldr	r0, [sp, #32]
c0de5a06:	7270      	strb	r0, [r6, #9]
c0de5a08:	2002      	movs	r0, #2
c0de5a0a:	7330      	strb	r0, [r6, #12]
c0de5a0c:	9804      	ldr	r0, [sp, #16]
c0de5a0e:	f000 fbff 	bl	c0de6210 <u2f_is_channel_broadcast>
c0de5a12:	2800      	cmp	r0, #0
c0de5a14:	d10b      	bne.n	c0de5a2e <u2f_handle_cmd_init+0xbe>
c0de5a16:	0620      	lsls	r0, r4, #24
c0de5a18:	9907      	ldr	r1, [sp, #28]
c0de5a1a:	0609      	lsls	r1, r1, #24
c0de5a1c:	0a09      	lsrs	r1, r1, #8
c0de5a1e:	1808      	adds	r0, r1, r0
c0de5a20:	9908      	ldr	r1, [sp, #32]
c0de5a22:	0609      	lsls	r1, r1, #24
c0de5a24:	0c09      	lsrs	r1, r1, #16
c0de5a26:	1840      	adds	r0, r0, r1
c0de5a28:	b2e9      	uxtb	r1, r5
c0de5a2a:	1841      	adds	r1, r0, r1
c0de5a2c:	e000      	b.n	c0de5a30 <u2f_handle_cmd_init+0xc0>
c0de5a2e:	43f9      	mvns	r1, r7
c0de5a30:	9806      	ldr	r0, [sp, #24]
c0de5a32:	6041      	str	r1, [r0, #4]
c0de5a34:	2186      	movs	r1, #134	; 0x86
c0de5a36:	2311      	movs	r3, #17
c0de5a38:	4632      	mov	r2, r6
c0de5a3a:	f000 fc25 	bl	c0de6288 <u2f_message_reply>
c0de5a3e:	b009      	add	sp, #36	; 0x24
c0de5a40:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5a42:	46c0      	nop			; (mov r8, r8)
c0de5a44:	00000530 	.word	0x00000530

c0de5a48 <u2f_handle_cmd_msg>:
c0de5a48:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5a4a:	b083      	sub	sp, #12
c0de5a4c:	798b      	ldrb	r3, [r1, #6]
c0de5a4e:	794c      	ldrb	r4, [r1, #5]
c0de5a50:	0224      	lsls	r4, r4, #8
c0de5a52:	18e7      	adds	r7, r4, r3
c0de5a54:	788b      	ldrb	r3, [r1, #2]
c0de5a56:	9302      	str	r3, [sp, #8]
c0de5a58:	784b      	ldrb	r3, [r1, #1]
c0de5a5a:	780e      	ldrb	r6, [r1, #0]
c0de5a5c:	4615      	mov	r5, r2
c0de5a5e:	3d09      	subs	r5, #9
c0de5a60:	b2ac      	uxth	r4, r5
c0de5a62:	42a7      	cmp	r7, r4
c0de5a64:	d003      	beq.n	c0de5a6e <u2f_handle_cmd_msg+0x26>
c0de5a66:	1fd2      	subs	r2, r2, #7
c0de5a68:	b294      	uxth	r4, r2
c0de5a6a:	42a7      	cmp	r7, r4
c0de5a6c:	d118      	bne.n	c0de5aa0 <u2f_handle_cmd_msg+0x58>
c0de5a6e:	463d      	mov	r5, r7
c0de5a70:	2e00      	cmp	r6, #0
c0de5a72:	d007      	beq.n	c0de5a84 <u2f_handle_cmd_msg+0x3c>
c0de5a74:	2183      	movs	r1, #131	; 0x83
c0de5a76:	4a1b      	ldr	r2, [pc, #108]	; (c0de5ae4 <u2f_handle_cmd_msg+0x9c>)
c0de5a78:	447a      	add	r2, pc
c0de5a7a:	2302      	movs	r3, #2
c0de5a7c:	f000 fc04 	bl	c0de6288 <u2f_message_reply>
c0de5a80:	b003      	add	sp, #12
c0de5a82:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5a84:	2b02      	cmp	r3, #2
c0de5a86:	dc16      	bgt.n	c0de5ab6 <u2f_handle_cmd_msg+0x6e>
c0de5a88:	2b01      	cmp	r3, #1
c0de5a8a:	d021      	beq.n	c0de5ad0 <u2f_handle_cmd_msg+0x88>
c0de5a8c:	2b02      	cmp	r3, #2
c0de5a8e:	d11b      	bne.n	c0de5ac8 <u2f_handle_cmd_msg+0x80>
c0de5a90:	b2aa      	uxth	r2, r5
c0de5a92:	9200      	str	r2, [sp, #0]
c0de5a94:	1dcb      	adds	r3, r1, #7
c0de5a96:	2200      	movs	r2, #0
c0de5a98:	9902      	ldr	r1, [sp, #8]
c0de5a9a:	f7ff fee1 	bl	c0de5860 <u2f_apdu_sign>
c0de5a9e:	e7ef      	b.n	c0de5a80 <u2f_handle_cmd_msg+0x38>
c0de5aa0:	b2ec      	uxtb	r4, r5
c0de5aa2:	42a7      	cmp	r7, r4
c0de5aa4:	d0e4      	beq.n	c0de5a70 <u2f_handle_cmd_msg+0x28>
c0de5aa6:	b2d4      	uxtb	r4, r2
c0de5aa8:	42a7      	cmp	r7, r4
c0de5aaa:	4615      	mov	r5, r2
c0de5aac:	d0e0      	beq.n	c0de5a70 <u2f_handle_cmd_msg+0x28>
c0de5aae:	2183      	movs	r1, #131	; 0x83
c0de5ab0:	4a0d      	ldr	r2, [pc, #52]	; (c0de5ae8 <u2f_handle_cmd_msg+0xa0>)
c0de5ab2:	447a      	add	r2, pc
c0de5ab4:	e7e1      	b.n	c0de5a7a <u2f_handle_cmd_msg+0x32>
c0de5ab6:	2b03      	cmp	r3, #3
c0de5ab8:	d00e      	beq.n	c0de5ad8 <u2f_handle_cmd_msg+0x90>
c0de5aba:	2bc1      	cmp	r3, #193	; 0xc1
c0de5abc:	d104      	bne.n	c0de5ac8 <u2f_handle_cmd_msg+0x80>
c0de5abe:	2183      	movs	r1, #131	; 0x83
c0de5ac0:	4a0a      	ldr	r2, [pc, #40]	; (c0de5aec <u2f_handle_cmd_msg+0xa4>)
c0de5ac2:	447a      	add	r2, pc
c0de5ac4:	2304      	movs	r3, #4
c0de5ac6:	e7d9      	b.n	c0de5a7c <u2f_handle_cmd_msg+0x34>
c0de5ac8:	2183      	movs	r1, #131	; 0x83
c0de5aca:	4a0b      	ldr	r2, [pc, #44]	; (c0de5af8 <u2f_handle_cmd_msg+0xb0>)
c0de5acc:	447a      	add	r2, pc
c0de5ace:	e7d4      	b.n	c0de5a7a <u2f_handle_cmd_msg+0x32>
c0de5ad0:	2183      	movs	r1, #131	; 0x83
c0de5ad2:	4a07      	ldr	r2, [pc, #28]	; (c0de5af0 <u2f_handle_cmd_msg+0xa8>)
c0de5ad4:	447a      	add	r2, pc
c0de5ad6:	e7d0      	b.n	c0de5a7a <u2f_handle_cmd_msg+0x32>
c0de5ad8:	2183      	movs	r1, #131	; 0x83
c0de5ada:	4a06      	ldr	r2, [pc, #24]	; (c0de5af4 <u2f_handle_cmd_msg+0xac>)
c0de5adc:	447a      	add	r2, pc
c0de5ade:	2308      	movs	r3, #8
c0de5ae0:	e7cc      	b.n	c0de5a7c <u2f_handle_cmd_msg+0x34>
c0de5ae2:	46c0      	nop			; (mov r8, r8)
c0de5ae4:	00006a5f 	.word	0x00006a5f
c0de5ae8:	00006a0d 	.word	0x00006a0d
c0de5aec:	00006a11 	.word	0x00006a11
c0de5af0:	000069e7 	.word	0x000069e7
c0de5af4:	000069ef 	.word	0x000069ef
c0de5af8:	00006a0d 	.word	0x00006a0d

c0de5afc <u2f_message_complete>:
c0de5afc:	b580      	push	{r7, lr}
c0de5afe:	69c1      	ldr	r1, [r0, #28]
c0de5b00:	788a      	ldrb	r2, [r1, #2]
c0de5b02:	784b      	ldrb	r3, [r1, #1]
c0de5b04:	021b      	lsls	r3, r3, #8
c0de5b06:	189b      	adds	r3, r3, r2
c0de5b08:	780a      	ldrb	r2, [r1, #0]
c0de5b0a:	2a81      	cmp	r2, #129	; 0x81
c0de5b0c:	d009      	beq.n	c0de5b22 <u2f_message_complete+0x26>
c0de5b0e:	2a83      	cmp	r2, #131	; 0x83
c0de5b10:	d00d      	beq.n	c0de5b2e <u2f_message_complete+0x32>
c0de5b12:	2a86      	cmp	r2, #134	; 0x86
c0de5b14:	d10f      	bne.n	c0de5b36 <u2f_message_complete+0x3a>
c0de5b16:	1cc9      	adds	r1, r1, #3
c0de5b18:	1d03      	adds	r3, r0, #4
c0de5b1a:	2200      	movs	r2, #0
c0de5b1c:	f7ff ff28 	bl	c0de5970 <u2f_handle_cmd_init>
c0de5b20:	bd80      	pop	{r7, pc}
c0de5b22:	1cca      	adds	r2, r1, #3
c0de5b24:	b29b      	uxth	r3, r3
c0de5b26:	2181      	movs	r1, #129	; 0x81
c0de5b28:	f000 fbae 	bl	c0de6288 <u2f_message_reply>
c0de5b2c:	bd80      	pop	{r7, pc}
c0de5b2e:	1cc9      	adds	r1, r1, #3
c0de5b30:	b29a      	uxth	r2, r3
c0de5b32:	f7ff ff89 	bl	c0de5a48 <u2f_handle_cmd_msg>
c0de5b36:	bd80      	pop	{r7, pc}

c0de5b38 <u2f_io_send>:
c0de5b38:	b570      	push	{r4, r5, r6, lr}
c0de5b3a:	460c      	mov	r4, r1
c0de5b3c:	4601      	mov	r1, r0
c0de5b3e:	2a03      	cmp	r2, #3
c0de5b40:	d014      	beq.n	c0de5b6c <u2f_io_send+0x34>
c0de5b42:	2a01      	cmp	r2, #1
c0de5b44:	d116      	bne.n	c0de5b74 <u2f_io_send+0x3c>
c0de5b46:	480c      	ldr	r0, [pc, #48]	; (c0de5b78 <u2f_io_send+0x40>)
c0de5b48:	464a      	mov	r2, r9
c0de5b4a:	1815      	adds	r5, r2, r0
c0de5b4c:	4628      	mov	r0, r5
c0de5b4e:	4622      	mov	r2, r4
c0de5b50:	f002 ff0e 	bl	c0de8970 <__aeabi_memmove>
c0de5b54:	2640      	movs	r6, #64	; 0x40
c0de5b56:	1b31      	subs	r1, r6, r4
c0de5b58:	1928      	adds	r0, r5, r4
c0de5b5a:	f002 feff 	bl	c0de895c <__aeabi_memclr>
c0de5b5e:	2081      	movs	r0, #129	; 0x81
c0de5b60:	2300      	movs	r3, #0
c0de5b62:	4629      	mov	r1, r5
c0de5b64:	4632      	mov	r2, r6
c0de5b66:	f7fe f919 	bl	c0de3d9c <io_usb_send_ep>
c0de5b6a:	bd70      	pop	{r4, r5, r6, pc}
c0de5b6c:	4608      	mov	r0, r1
c0de5b6e:	4621      	mov	r1, r4
c0de5b70:	f7fc fbc6 	bl	c0de2300 <LEDGER_BLE_send>
c0de5b74:	bd70      	pop	{r4, r5, r6, pc}
c0de5b76:	46c0      	nop			; (mov r8, r8)
c0de5b78:	000006fc 	.word	0x000006fc

c0de5b7c <u2f_transport_init>:
c0de5b7c:	b580      	push	{r7, lr}
c0de5b7e:	2300      	movs	r3, #0
c0de5b80:	7683      	strb	r3, [r0, #26]
c0de5b82:	82c3      	strh	r3, [r0, #22]
c0de5b84:	8202      	strh	r2, [r0, #16]
c0de5b86:	60c1      	str	r1, [r0, #12]
c0de5b88:	2201      	movs	r2, #1
c0de5b8a:	6002      	str	r2, [r0, #0]
c0de5b8c:	8543      	strh	r3, [r0, #42]	; 0x2a
c0de5b8e:	8483      	strh	r3, [r0, #36]	; 0x24
c0de5b90:	61c1      	str	r1, [r0, #28]
c0de5b92:	6203      	str	r3, [r0, #32]
c0de5b94:	1d00      	adds	r0, r0, #4
c0de5b96:	2104      	movs	r1, #4
c0de5b98:	f7fc f8ea 	bl	c0de1d70 <cx_rng_no_throw>
c0de5b9c:	bd80      	pop	{r7, pc}
c0de5b9e:	d4d4      	bmi.n	c0de5b4a <u2f_io_send+0x12>

c0de5ba0 <u2f_transport_sent>:
c0de5ba0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5ba2:	b081      	sub	sp, #4
c0de5ba4:	460d      	mov	r5, r1
c0de5ba6:	4604      	mov	r4, r0
c0de5ba8:	202a      	movs	r0, #42	; 0x2a
c0de5baa:	5c21      	ldrb	r1, [r4, r0]
c0de5bac:	4620      	mov	r0, r4
c0de5bae:	3020      	adds	r0, #32
c0de5bb0:	2900      	cmp	r1, #0
c0de5bb2:	d00a      	beq.n	c0de5bca <u2f_transport_sent+0x2a>
c0de5bb4:	2901      	cmp	r1, #1
c0de5bb6:	d005      	beq.n	c0de5bc4 <u2f_transport_sent+0x24>
c0de5bb8:	7941      	ldrb	r1, [r0, #5]
c0de5bba:	2906      	cmp	r1, #6
c0de5bbc:	d102      	bne.n	c0de5bc4 <u2f_transport_sent+0x24>
c0de5bbe:	7ac1      	ldrb	r1, [r0, #11]
c0de5bc0:	2900      	cmp	r1, #0
c0de5bc2:	d002      	beq.n	c0de5bca <u2f_transport_sent+0x2a>
c0de5bc4:	2100      	movs	r1, #0
c0de5bc6:	72c1      	strb	r1, [r0, #11]
c0de5bc8:	e071      	b.n	c0de5cae <u2f_transport_sent+0x10e>
c0de5bca:	2600      	movs	r6, #0
c0de5bcc:	72c6      	strb	r6, [r0, #11]
c0de5bce:	7801      	ldrb	r1, [r0, #0]
c0de5bd0:	1ec9      	subs	r1, r1, #3
c0de5bd2:	2901      	cmp	r1, #1
c0de5bd4:	d86b      	bhi.n	c0de5cae <u2f_transport_sent+0x10e>
c0de5bd6:	8b22      	ldrh	r2, [r4, #24]
c0de5bd8:	8ae3      	ldrh	r3, [r4, #22]
c0de5bda:	429a      	cmp	r2, r3
c0de5bdc:	d905      	bls.n	c0de5bea <u2f_transport_sent+0x4a>
c0de5bde:	7ea0      	ldrb	r0, [r4, #26]
c0de5be0:	9000      	str	r0, [sp, #0]
c0de5be2:	2800      	cmp	r0, #0
c0de5be4:	d011      	beq.n	c0de5c0a <u2f_transport_sent+0x6a>
c0de5be6:	2001      	movs	r0, #1
c0de5be8:	e010      	b.n	c0de5c0c <u2f_transport_sent+0x6c>
c0de5bea:	d160      	bne.n	c0de5cae <u2f_transport_sent+0x10e>
c0de5bec:	76a6      	strb	r6, [r4, #26]
c0de5bee:	82e6      	strh	r6, [r4, #22]
c0de5bf0:	8146      	strh	r6, [r0, #10]
c0de5bf2:	6006      	str	r6, [r0, #0]
c0de5bf4:	8086      	strh	r6, [r0, #4]
c0de5bf6:	68e0      	ldr	r0, [r4, #12]
c0de5bf8:	61e0      	str	r0, [r4, #28]
c0de5bfa:	1d20      	adds	r0, r4, #4
c0de5bfc:	2104      	movs	r1, #4
c0de5bfe:	f7fc f8b7 	bl	c0de1d70 <cx_rng_no_throw>
c0de5c02:	482c      	ldr	r0, [pc, #176]	; (c0de5cb4 <u2f_transport_sent+0x114>)
c0de5c04:	4649      	mov	r1, r9
c0de5c06:	540e      	strb	r6, [r1, r0]
c0de5c08:	e051      	b.n	c0de5cae <u2f_transport_sent+0x10e>
c0de5c0a:	2003      	movs	r0, #3
c0de5c0c:	1e6f      	subs	r7, r5, #1
c0de5c0e:	4279      	negs	r1, r7
c0de5c10:	4179      	adcs	r1, r7
c0de5c12:	0089      	lsls	r1, r1, #2
c0de5c14:	1840      	adds	r0, r0, r1
c0de5c16:	2d01      	cmp	r5, #1
c0de5c18:	d001      	beq.n	c0de5c1e <u2f_transport_sent+0x7e>
c0de5c1a:	2720      	movs	r7, #32
c0de5c1c:	e000      	b.n	c0de5c20 <u2f_transport_sent+0x80>
c0de5c1e:	2740      	movs	r7, #64	; 0x40
c0de5c20:	1a3f      	subs	r7, r7, r0
c0de5c22:	1ad2      	subs	r2, r2, r3
c0de5c24:	42ba      	cmp	r2, r7
c0de5c26:	dc00      	bgt.n	c0de5c2a <u2f_transport_sent+0x8a>
c0de5c28:	4617      	mov	r7, r2
c0de5c2a:	2d01      	cmp	r5, #1
c0de5c2c:	d10b      	bne.n	c0de5c46 <u2f_transport_sent+0xa6>
c0de5c2e:	6861      	ldr	r1, [r4, #4]
c0de5c30:	4a21      	ldr	r2, [pc, #132]	; (c0de5cb8 <u2f_transport_sent+0x118>)
c0de5c32:	464b      	mov	r3, r9
c0de5c34:	5499      	strb	r1, [r3, r2]
c0de5c36:	189a      	adds	r2, r3, r2
c0de5c38:	0e0b      	lsrs	r3, r1, #24
c0de5c3a:	70d3      	strb	r3, [r2, #3]
c0de5c3c:	0c0b      	lsrs	r3, r1, #16
c0de5c3e:	7093      	strb	r3, [r2, #2]
c0de5c40:	0a09      	lsrs	r1, r1, #8
c0de5c42:	7051      	strb	r1, [r2, #1]
c0de5c44:	2604      	movs	r6, #4
c0de5c46:	9900      	ldr	r1, [sp, #0]
c0de5c48:	2900      	cmp	r1, #0
c0de5c4a:	d001      	beq.n	c0de5c50 <u2f_transport_sent+0xb0>
c0de5c4c:	1e49      	subs	r1, r1, #1
c0de5c4e:	e00c      	b.n	c0de5c6a <u2f_transport_sent+0xca>
c0de5c50:	4621      	mov	r1, r4
c0de5c52:	3140      	adds	r1, #64	; 0x40
c0de5c54:	4a18      	ldr	r2, [pc, #96]	; (c0de5cb8 <u2f_transport_sent+0x118>)
c0de5c56:	464b      	mov	r3, r9
c0de5c58:	189a      	adds	r2, r3, r2
c0de5c5a:	7809      	ldrb	r1, [r1, #0]
c0de5c5c:	5591      	strb	r1, [r2, r6]
c0de5c5e:	2101      	movs	r1, #1
c0de5c60:	4331      	orrs	r1, r6
c0de5c62:	7e63      	ldrb	r3, [r4, #25]
c0de5c64:	5453      	strb	r3, [r2, r1]
c0de5c66:	1c4e      	adds	r6, r1, #1
c0de5c68:	7e21      	ldrb	r1, [r4, #24]
c0de5c6a:	183b      	adds	r3, r7, r0
c0de5c6c:	9000      	str	r0, [sp, #0]
c0de5c6e:	4812      	ldr	r0, [pc, #72]	; (c0de5cb8 <u2f_transport_sent+0x118>)
c0de5c70:	464a      	mov	r2, r9
c0de5c72:	1812      	adds	r2, r2, r0
c0de5c74:	5591      	strb	r1, [r2, r6]
c0de5c76:	69e1      	ldr	r1, [r4, #28]
c0de5c78:	2900      	cmp	r1, #0
c0de5c7a:	d00b      	beq.n	c0de5c94 <u2f_transport_sent+0xf4>
c0de5c7c:	b2ba      	uxth	r2, r7
c0de5c7e:	461e      	mov	r6, r3
c0de5c80:	464b      	mov	r3, r9
c0de5c82:	480d      	ldr	r0, [pc, #52]	; (c0de5cb8 <u2f_transport_sent+0x118>)
c0de5c84:	181b      	adds	r3, r3, r0
c0de5c86:	9800      	ldr	r0, [sp, #0]
c0de5c88:	1818      	adds	r0, r3, r0
c0de5c8a:	8ae3      	ldrh	r3, [r4, #22]
c0de5c8c:	18c9      	adds	r1, r1, r3
c0de5c8e:	f002 fe6f 	bl	c0de8970 <__aeabi_memmove>
c0de5c92:	4633      	mov	r3, r6
c0de5c94:	8ae0      	ldrh	r0, [r4, #22]
c0de5c96:	19c0      	adds	r0, r0, r7
c0de5c98:	82e0      	strh	r0, [r4, #22]
c0de5c9a:	7ea0      	ldrb	r0, [r4, #26]
c0de5c9c:	1c40      	adds	r0, r0, #1
c0de5c9e:	76a0      	strb	r0, [r4, #26]
c0de5ca0:	4648      	mov	r0, r9
c0de5ca2:	4905      	ldr	r1, [pc, #20]	; (c0de5cb8 <u2f_transport_sent+0x118>)
c0de5ca4:	1840      	adds	r0, r0, r1
c0de5ca6:	b299      	uxth	r1, r3
c0de5ca8:	462a      	mov	r2, r5
c0de5caa:	f7ff ff45 	bl	c0de5b38 <u2f_io_send>
c0de5cae:	b001      	add	sp, #4
c0de5cb0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5cb2:	46c0      	nop			; (mov r8, r8)
c0de5cb4:	00000684 	.word	0x00000684
c0de5cb8:	000006fc 	.word	0x000006fc

c0de5cbc <u2f_message_repliable>:
c0de5cbc:	212a      	movs	r1, #42	; 0x2a
c0de5cbe:	5c41      	ldrb	r1, [r0, r1]
c0de5cc0:	2900      	cmp	r1, #0
c0de5cc2:	d00b      	beq.n	c0de5cdc <u2f_message_repliable+0x20>
c0de5cc4:	2901      	cmp	r1, #1
c0de5cc6:	d007      	beq.n	c0de5cd8 <u2f_message_repliable+0x1c>
c0de5cc8:	3025      	adds	r0, #37	; 0x25
c0de5cca:	7801      	ldrb	r1, [r0, #0]
c0de5ccc:	2906      	cmp	r1, #6
c0de5cce:	d103      	bne.n	c0de5cd8 <u2f_message_repliable+0x1c>
c0de5cd0:	7981      	ldrb	r1, [r0, #6]
c0de5cd2:	4248      	negs	r0, r1
c0de5cd4:	4148      	adcs	r0, r1
c0de5cd6:	4770      	bx	lr
c0de5cd8:	2000      	movs	r0, #0
c0de5cda:	4770      	bx	lr
c0de5cdc:	2001      	movs	r0, #1
c0de5cde:	4770      	bx	lr

c0de5ce0 <u2f_transport_receive_fakeChannel>:
c0de5ce0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5ce2:	b081      	sub	sp, #4
c0de5ce4:	4604      	mov	r4, r0
c0de5ce6:	2025      	movs	r0, #37	; 0x25
c0de5ce8:	5c20      	ldrb	r0, [r4, r0]
c0de5cea:	2805      	cmp	r0, #5
c0de5cec:	d101      	bne.n	c0de5cf2 <u2f_transport_receive_fakeChannel+0x12>
c0de5cee:	2500      	movs	r5, #0
c0de5cf0:	e085      	b.n	c0de5dfe <u2f_transport_receive_fakeChannel+0x11e>
c0de5cf2:	4626      	mov	r6, r4
c0de5cf4:	3624      	adds	r6, #36	; 0x24
c0de5cf6:	7808      	ldrb	r0, [r1, #0]
c0de5cf8:	784b      	ldrb	r3, [r1, #1]
c0de5cfa:	021b      	lsls	r3, r3, #8
c0de5cfc:	1818      	adds	r0, r3, r0
c0de5cfe:	788b      	ldrb	r3, [r1, #2]
c0de5d00:	78cd      	ldrb	r5, [r1, #3]
c0de5d02:	022d      	lsls	r5, r5, #8
c0de5d04:	18eb      	adds	r3, r5, r3
c0de5d06:	041b      	lsls	r3, r3, #16
c0de5d08:	1818      	adds	r0, r3, r0
c0de5d0a:	7923      	ldrb	r3, [r4, #4]
c0de5d0c:	7965      	ldrb	r5, [r4, #5]
c0de5d0e:	022d      	lsls	r5, r5, #8
c0de5d10:	18eb      	adds	r3, r5, r3
c0de5d12:	79a5      	ldrb	r5, [r4, #6]
c0de5d14:	79e7      	ldrb	r7, [r4, #7]
c0de5d16:	023f      	lsls	r7, r7, #8
c0de5d18:	197d      	adds	r5, r7, r5
c0de5d1a:	042d      	lsls	r5, r5, #16
c0de5d1c:	18eb      	adds	r3, r5, r3
c0de5d1e:	4283      	cmp	r3, r0
c0de5d20:	d170      	bne.n	c0de5e04 <u2f_transport_receive_fakeChannel+0x124>
c0de5d22:	790b      	ldrb	r3, [r1, #4]
c0de5d24:	8c60      	ldrh	r0, [r4, #34]	; 0x22
c0de5d26:	2800      	cmp	r0, #0
c0de5d28:	d010      	beq.n	c0de5d4c <u2f_transport_receive_fakeChannel+0x6c>
c0de5d2a:	7835      	ldrb	r5, [r6, #0]
c0de5d2c:	42ab      	cmp	r3, r5
c0de5d2e:	d169      	bne.n	c0de5e04 <u2f_transport_receive_fakeChannel+0x124>
c0de5d30:	1c5b      	adds	r3, r3, #1
c0de5d32:	7033      	strb	r3, [r6, #0]
c0de5d34:	8b23      	ldrh	r3, [r4, #24]
c0de5d36:	1a1b      	subs	r3, r3, r0
c0de5d38:	1f52      	subs	r2, r2, #5
c0de5d3a:	429a      	cmp	r2, r3
c0de5d3c:	db00      	blt.n	c0de5d40 <u2f_transport_receive_fakeChannel+0x60>
c0de5d3e:	461a      	mov	r2, r3
c0de5d40:	1880      	adds	r0, r0, r2
c0de5d42:	8460      	strh	r0, [r4, #34]	; 0x22
c0de5d44:	b292      	uxth	r2, r2
c0de5d46:	8d20      	ldrh	r0, [r4, #40]	; 0x28
c0de5d48:	1d49      	adds	r1, r1, #5
c0de5d4a:	e02c      	b.n	c0de5da6 <u2f_transport_receive_fakeChannel+0xc6>
c0de5d4c:	2b88      	cmp	r3, #136	; 0x88
c0de5d4e:	d116      	bne.n	c0de5d7e <u2f_transport_receive_fakeChannel+0x9e>
c0de5d50:	2501      	movs	r5, #1
c0de5d52:	71f5      	strb	r5, [r6, #7]
c0de5d54:	6861      	ldr	r1, [r4, #4]
c0de5d56:	482d      	ldr	r0, [pc, #180]	; (c0de5e0c <u2f_transport_receive_fakeChannel+0x12c>)
c0de5d58:	464a      	mov	r2, r9
c0de5d5a:	5411      	strb	r1, [r2, r0]
c0de5d5c:	1810      	adds	r0, r2, r0
c0de5d5e:	2200      	movs	r2, #0
c0de5d60:	7182      	strb	r2, [r0, #6]
c0de5d62:	7142      	strb	r2, [r0, #5]
c0de5d64:	2288      	movs	r2, #136	; 0x88
c0de5d66:	7102      	strb	r2, [r0, #4]
c0de5d68:	0e0a      	lsrs	r2, r1, #24
c0de5d6a:	70c2      	strb	r2, [r0, #3]
c0de5d6c:	0c0a      	lsrs	r2, r1, #16
c0de5d6e:	7082      	strb	r2, [r0, #2]
c0de5d70:	0a09      	lsrs	r1, r1, #8
c0de5d72:	7041      	strb	r1, [r0, #1]
c0de5d74:	2107      	movs	r1, #7
c0de5d76:	462a      	mov	r2, r5
c0de5d78:	f7ff fede 	bl	c0de5b38 <u2f_io_send>
c0de5d7c:	e03f      	b.n	c0de5dfe <u2f_transport_receive_fakeChannel+0x11e>
c0de5d7e:	2b83      	cmp	r3, #131	; 0x83
c0de5d80:	d140      	bne.n	c0de5e04 <u2f_transport_receive_fakeChannel+0x124>
c0de5d82:	7988      	ldrb	r0, [r1, #6]
c0de5d84:	794b      	ldrb	r3, [r1, #5]
c0de5d86:	021b      	lsls	r3, r3, #8
c0de5d88:	1818      	adds	r0, r3, r0
c0de5d8a:	1cc0      	adds	r0, r0, #3
c0de5d8c:	8b23      	ldrh	r3, [r4, #24]
c0de5d8e:	b280      	uxth	r0, r0
c0de5d90:	4298      	cmp	r0, r3
c0de5d92:	d137      	bne.n	c0de5e04 <u2f_transport_receive_fakeChannel+0x124>
c0de5d94:	1d09      	adds	r1, r1, #4
c0de5d96:	2000      	movs	r0, #0
c0de5d98:	7030      	strb	r0, [r6, #0]
c0de5d9a:	1f12      	subs	r2, r2, #4
c0de5d9c:	429a      	cmp	r2, r3
c0de5d9e:	db00      	blt.n	c0de5da2 <u2f_transport_receive_fakeChannel+0xc2>
c0de5da0:	461a      	mov	r2, r3
c0de5da2:	8462      	strh	r2, [r4, #34]	; 0x22
c0de5da4:	b292      	uxth	r2, r2
c0de5da6:	f7fb ffad 	bl	c0de1d04 <cx_crc16_update>
c0de5daa:	8520      	strh	r0, [r4, #40]	; 0x28
c0de5dac:	8b21      	ldrh	r1, [r4, #24]
c0de5dae:	8c62      	ldrh	r2, [r4, #34]	; 0x22
c0de5db0:	2501      	movs	r5, #1
c0de5db2:	428a      	cmp	r2, r1
c0de5db4:	d323      	bcc.n	c0de5dfe <u2f_transport_receive_fakeChannel+0x11e>
c0de5db6:	8ce1      	ldrh	r1, [r4, #38]	; 0x26
c0de5db8:	4288      	cmp	r0, r1
c0de5dba:	d123      	bne.n	c0de5e04 <u2f_transport_receive_fakeChannel+0x124>
c0de5dbc:	2700      	movs	r7, #0
c0de5dbe:	8467      	strh	r7, [r4, #34]	; 0x22
c0de5dc0:	2006      	movs	r0, #6
c0de5dc2:	7070      	strb	r0, [r6, #1]
c0de5dc4:	79b0      	ldrb	r0, [r6, #6]
c0de5dc6:	2801      	cmp	r0, #1
c0de5dc8:	d119      	bne.n	c0de5dfe <u2f_transport_receive_fakeChannel+0x11e>
c0de5dca:	2201      	movs	r2, #1
c0de5dcc:	71f2      	strb	r2, [r6, #7]
c0de5dce:	6861      	ldr	r1, [r4, #4]
c0de5dd0:	480e      	ldr	r0, [pc, #56]	; (c0de5e0c <u2f_transport_receive_fakeChannel+0x12c>)
c0de5dd2:	464b      	mov	r3, r9
c0de5dd4:	5419      	strb	r1, [r3, r0]
c0de5dd6:	1818      	adds	r0, r3, r0
c0de5dd8:	2385      	movs	r3, #133	; 0x85
c0de5dda:	7203      	strb	r3, [r0, #8]
c0de5ddc:	2369      	movs	r3, #105	; 0x69
c0de5dde:	71c3      	strb	r3, [r0, #7]
c0de5de0:	2302      	movs	r3, #2
c0de5de2:	7183      	strb	r3, [r0, #6]
c0de5de4:	7147      	strb	r7, [r0, #5]
c0de5de6:	2383      	movs	r3, #131	; 0x83
c0de5de8:	7103      	strb	r3, [r0, #4]
c0de5dea:	0e0b      	lsrs	r3, r1, #24
c0de5dec:	70c3      	strb	r3, [r0, #3]
c0de5dee:	0c0b      	lsrs	r3, r1, #16
c0de5df0:	7083      	strb	r3, [r0, #2]
c0de5df2:	0a09      	lsrs	r1, r1, #8
c0de5df4:	7041      	strb	r1, [r0, #1]
c0de5df6:	2109      	movs	r1, #9
c0de5df8:	f7ff fe9e 	bl	c0de5b38 <u2f_io_send>
c0de5dfc:	7077      	strb	r7, [r6, #1]
c0de5dfe:	4628      	mov	r0, r5
c0de5e00:	b001      	add	sp, #4
c0de5e02:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5e04:	2005      	movs	r0, #5
c0de5e06:	7070      	strb	r0, [r6, #1]
c0de5e08:	f7fd ff2d 	bl	c0de3c66 <os_longjmp>
c0de5e0c:	000006fc 	.word	0x000006fc

c0de5e10 <u2f_transport_received>:
c0de5e10:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5e12:	b089      	sub	sp, #36	; 0x24
c0de5e14:	461d      	mov	r5, r3
c0de5e16:	4604      	mov	r4, r0
c0de5e18:	7203      	strb	r3, [r0, #8]
c0de5e1a:	2020      	movs	r0, #32
c0de5e1c:	5c20      	ldrb	r0, [r4, r0]
c0de5e1e:	4627      	mov	r7, r4
c0de5e20:	3720      	adds	r7, #32
c0de5e22:	4623      	mov	r3, r4
c0de5e24:	3340      	adds	r3, #64	; 0x40
c0de5e26:	2803      	cmp	r0, #3
c0de5e28:	d110      	bne.n	c0de5e4c <u2f_transport_received+0x3c>
c0de5e2a:	48f8      	ldr	r0, [pc, #992]	; (c0de620c <u2f_transport_received+0x3fc>)
c0de5e2c:	4649      	mov	r1, r9
c0de5e2e:	1808      	adds	r0, r1, r0
c0de5e30:	2106      	movs	r1, #6
c0de5e32:	7201      	strb	r1, [r0, #8]
c0de5e34:	2100      	movs	r1, #0
c0de5e36:	76a1      	strb	r1, [r4, #26]
c0de5e38:	2201      	movs	r2, #1
c0de5e3a:	8322      	strh	r2, [r4, #24]
c0de5e3c:	82e1      	strh	r1, [r4, #22]
c0de5e3e:	3008      	adds	r0, #8
c0de5e40:	61e0      	str	r0, [r4, #28]
c0de5e42:	2004      	movs	r0, #4
c0de5e44:	7038      	strb	r0, [r7, #0]
c0de5e46:	20bf      	movs	r0, #191	; 0xbf
c0de5e48:	7018      	strb	r0, [r3, #0]
c0de5e4a:	e0d2      	b.n	c0de5ff2 <u2f_transport_received+0x1e2>
c0de5e4c:	460e      	mov	r6, r1
c0de5e4e:	9308      	str	r3, [sp, #32]
c0de5e50:	4623      	mov	r3, r4
c0de5e52:	3312      	adds	r3, #18
c0de5e54:	7e19      	ldrb	r1, [r3, #24]
c0de5e56:	2900      	cmp	r1, #0
c0de5e58:	d00b      	beq.n	c0de5e72 <u2f_transport_received+0x62>
c0de5e5a:	4620      	mov	r0, r4
c0de5e5c:	4631      	mov	r1, r6
c0de5e5e:	f7ff ff3f 	bl	c0de5ce0 <u2f_transport_receive_fakeChannel>
c0de5e62:	2800      	cmp	r0, #0
c0de5e64:	d000      	beq.n	c0de5e68 <u2f_transport_received+0x58>
c0de5e66:	e0c8      	b.n	c0de5ffa <u2f_transport_received+0x1ea>
c0de5e68:	48e8      	ldr	r0, [pc, #928]	; (c0de620c <u2f_transport_received+0x3fc>)
c0de5e6a:	4649      	mov	r1, r9
c0de5e6c:	1808      	adds	r0, r1, r0
c0de5e6e:	2106      	movs	r1, #6
c0de5e70:	e0b2      	b.n	c0de5fd8 <u2f_transport_received+0x1c8>
c0de5e72:	2804      	cmp	r0, #4
c0de5e74:	d115      	bne.n	c0de5ea2 <u2f_transport_received+0x92>
c0de5e76:	2000      	movs	r0, #0
c0de5e78:	76a0      	strb	r0, [r4, #26]
c0de5e7a:	82e0      	strh	r0, [r4, #22]
c0de5e7c:	8318      	strh	r0, [r3, #24]
c0de5e7e:	6038      	str	r0, [r7, #0]
c0de5e80:	80b8      	strh	r0, [r7, #4]
c0de5e82:	68e0      	ldr	r0, [r4, #12]
c0de5e84:	61e0      	str	r0, [r4, #28]
c0de5e86:	1d20      	adds	r0, r4, #4
c0de5e88:	2104      	movs	r1, #4
c0de5e8a:	9607      	str	r6, [sp, #28]
c0de5e8c:	9706      	str	r7, [sp, #24]
c0de5e8e:	462f      	mov	r7, r5
c0de5e90:	4615      	mov	r5, r2
c0de5e92:	461e      	mov	r6, r3
c0de5e94:	f7fb ff6c 	bl	c0de1d70 <cx_rng_no_throw>
c0de5e98:	4633      	mov	r3, r6
c0de5e9a:	462a      	mov	r2, r5
c0de5e9c:	463d      	mov	r5, r7
c0de5e9e:	9f06      	ldr	r7, [sp, #24]
c0de5ea0:	9e07      	ldr	r6, [sp, #28]
c0de5ea2:	1e68      	subs	r0, r5, #1
c0de5ea4:	4241      	negs	r1, r0
c0de5ea6:	4141      	adcs	r1, r0
c0de5ea8:	0088      	lsls	r0, r1, #2
c0de5eaa:	1c41      	adds	r1, r0, #1
c0de5eac:	4291      	cmp	r1, r2
c0de5eae:	d900      	bls.n	c0de5eb2 <u2f_transport_received+0xa2>
c0de5eb0:	e08e      	b.n	c0de5fd0 <u2f_transport_received+0x1c0>
c0de5eb2:	9105      	str	r1, [sp, #20]
c0de5eb4:	9307      	str	r3, [sp, #28]
c0de5eb6:	9206      	str	r2, [sp, #24]
c0de5eb8:	2d01      	cmp	r5, #1
c0de5eba:	d12b      	bne.n	c0de5f14 <u2f_transport_received+0x104>
c0de5ebc:	7832      	ldrb	r2, [r6, #0]
c0de5ebe:	7873      	ldrb	r3, [r6, #1]
c0de5ec0:	021b      	lsls	r3, r3, #8
c0de5ec2:	189a      	adds	r2, r3, r2
c0de5ec4:	78b3      	ldrb	r3, [r6, #2]
c0de5ec6:	78f1      	ldrb	r1, [r6, #3]
c0de5ec8:	0209      	lsls	r1, r1, #8
c0de5eca:	18c9      	adds	r1, r1, r3
c0de5ecc:	0409      	lsls	r1, r1, #16
c0de5ece:	1889      	adds	r1, r1, r2
c0de5ed0:	6061      	str	r1, [r4, #4]
c0de5ed2:	8ae2      	ldrh	r2, [r4, #22]
c0de5ed4:	4621      	mov	r1, r4
c0de5ed6:	3116      	adds	r1, #22
c0de5ed8:	9104      	str	r1, [sp, #16]
c0de5eda:	2a00      	cmp	r2, #0
c0de5edc:	d024      	beq.n	c0de5f28 <u2f_transport_received+0x118>
c0de5ede:	9203      	str	r2, [sp, #12]
c0de5ee0:	1d21      	adds	r1, r4, #4
c0de5ee2:	780b      	ldrb	r3, [r1, #0]
c0de5ee4:	784a      	ldrb	r2, [r1, #1]
c0de5ee6:	0212      	lsls	r2, r2, #8
c0de5ee8:	18d2      	adds	r2, r2, r3
c0de5eea:	788b      	ldrb	r3, [r1, #2]
c0de5eec:	78c9      	ldrb	r1, [r1, #3]
c0de5eee:	0209      	lsls	r1, r1, #8
c0de5ef0:	18c9      	adds	r1, r1, r3
c0de5ef2:	0409      	lsls	r1, r1, #16
c0de5ef4:	1889      	adds	r1, r1, r2
c0de5ef6:	9102      	str	r1, [sp, #8]
c0de5ef8:	7ca2      	ldrb	r2, [r4, #18]
c0de5efa:	7ce3      	ldrb	r3, [r4, #19]
c0de5efc:	021b      	lsls	r3, r3, #8
c0de5efe:	189a      	adds	r2, r3, r2
c0de5f00:	7d23      	ldrb	r3, [r4, #20]
c0de5f02:	7d61      	ldrb	r1, [r4, #21]
c0de5f04:	0209      	lsls	r1, r1, #8
c0de5f06:	18c9      	adds	r1, r1, r3
c0de5f08:	0409      	lsls	r1, r1, #16
c0de5f0a:	1889      	adds	r1, r1, r2
c0de5f0c:	9a02      	ldr	r2, [sp, #8]
c0de5f0e:	4291      	cmp	r1, r2
c0de5f10:	d10a      	bne.n	c0de5f28 <u2f_transport_received+0x118>
c0de5f12:	e006      	b.n	c0de5f22 <u2f_transport_received+0x112>
c0de5f14:	8ae2      	ldrh	r2, [r4, #22]
c0de5f16:	4621      	mov	r1, r4
c0de5f18:	3116      	adds	r1, #22
c0de5f1a:	9104      	str	r1, [sp, #16]
c0de5f1c:	9203      	str	r2, [sp, #12]
c0de5f1e:	2a00      	cmp	r2, #0
c0de5f20:	d002      	beq.n	c0de5f28 <u2f_transport_received+0x118>
c0de5f22:	5c33      	ldrb	r3, [r6, r0]
c0de5f24:	2b86      	cmp	r3, #134	; 0x86
c0de5f26:	d14e      	bne.n	c0de5fc6 <u2f_transport_received+0x1b6>
c0de5f28:	2203      	movs	r2, #3
c0de5f2a:	4601      	mov	r1, r0
c0de5f2c:	4311      	orrs	r1, r2
c0de5f2e:	9b06      	ldr	r3, [sp, #24]
c0de5f30:	4299      	cmp	r1, r3
c0de5f32:	d84d      	bhi.n	c0de5fd0 <u2f_transport_received+0x1c0>
c0de5f34:	5633      	ldrsb	r3, [r6, r0]
c0de5f36:	2b00      	cmp	r3, #0
c0de5f38:	d55f      	bpl.n	c0de5ffa <u2f_transport_received+0x1ea>
c0de5f3a:	b2d9      	uxtb	r1, r3
c0de5f3c:	9103      	str	r1, [sp, #12]
c0de5f3e:	783b      	ldrb	r3, [r7, #0]
c0de5f40:	2d01      	cmp	r5, #1
c0de5f42:	d000      	beq.n	c0de5f46 <u2f_transport_received+0x136>
c0de5f44:	e0a6      	b.n	c0de6094 <u2f_transport_received+0x284>
c0de5f46:	2b01      	cmp	r3, #1
c0de5f48:	9905      	ldr	r1, [sp, #20]
c0de5f4a:	d000      	beq.n	c0de5f4e <u2f_transport_received+0x13e>
c0de5f4c:	e0a5      	b.n	c0de609a <u2f_transport_received+0x28a>
c0de5f4e:	7ca1      	ldrb	r1, [r4, #18]
c0de5f50:	7ce3      	ldrb	r3, [r4, #19]
c0de5f52:	021b      	lsls	r3, r3, #8
c0de5f54:	1859      	adds	r1, r3, r1
c0de5f56:	9102      	str	r1, [sp, #8]
c0de5f58:	7d23      	ldrb	r3, [r4, #20]
c0de5f5a:	7d61      	ldrb	r1, [r4, #21]
c0de5f5c:	0209      	lsls	r1, r1, #8
c0de5f5e:	18c9      	adds	r1, r1, r3
c0de5f60:	0409      	lsls	r1, r1, #16
c0de5f62:	9b02      	ldr	r3, [sp, #8]
c0de5f64:	18c9      	adds	r1, r1, r3
c0de5f66:	9102      	str	r1, [sp, #8]
c0de5f68:	7923      	ldrb	r3, [r4, #4]
c0de5f6a:	7961      	ldrb	r1, [r4, #5]
c0de5f6c:	0209      	lsls	r1, r1, #8
c0de5f6e:	18c9      	adds	r1, r1, r3
c0de5f70:	9101      	str	r1, [sp, #4]
c0de5f72:	79a3      	ldrb	r3, [r4, #6]
c0de5f74:	79e1      	ldrb	r1, [r4, #7]
c0de5f76:	0209      	lsls	r1, r1, #8
c0de5f78:	18c9      	adds	r1, r1, r3
c0de5f7a:	0409      	lsls	r1, r1, #16
c0de5f7c:	9b01      	ldr	r3, [sp, #4]
c0de5f7e:	18c9      	adds	r1, r1, r3
c0de5f80:	9b02      	ldr	r3, [sp, #8]
c0de5f82:	1acb      	subs	r3, r1, r3
c0de5f84:	1e59      	subs	r1, r3, #1
c0de5f86:	418b      	sbcs	r3, r1
c0de5f88:	9903      	ldr	r1, [sp, #12]
c0de5f8a:	2986      	cmp	r1, #134	; 0x86
c0de5f8c:	d100      	bne.n	c0de5f90 <u2f_transport_received+0x180>
c0de5f8e:	e0cd      	b.n	c0de612c <u2f_transport_received+0x31c>
c0de5f90:	2b00      	cmp	r3, #0
c0de5f92:	d100      	bne.n	c0de5f96 <u2f_transport_received+0x186>
c0de5f94:	e0ca      	b.n	c0de612c <u2f_transport_received+0x31c>
c0de5f96:	1d20      	adds	r0, r4, #4
c0de5f98:	6801      	ldr	r1, [r0, #0]
c0de5f9a:	489c      	ldr	r0, [pc, #624]	; (c0de620c <u2f_transport_received+0x3fc>)
c0de5f9c:	464a      	mov	r2, r9
c0de5f9e:	5411      	strb	r1, [r2, r0]
c0de5fa0:	1810      	adds	r0, r2, r0
c0de5fa2:	2206      	movs	r2, #6
c0de5fa4:	71c2      	strb	r2, [r0, #7]
c0de5fa6:	2201      	movs	r2, #1
c0de5fa8:	7182      	strb	r2, [r0, #6]
c0de5faa:	2300      	movs	r3, #0
c0de5fac:	7143      	strb	r3, [r0, #5]
c0de5fae:	23bf      	movs	r3, #191	; 0xbf
c0de5fb0:	7103      	strb	r3, [r0, #4]
c0de5fb2:	0e0b      	lsrs	r3, r1, #24
c0de5fb4:	70c3      	strb	r3, [r0, #3]
c0de5fb6:	0c0b      	lsrs	r3, r1, #16
c0de5fb8:	7083      	strb	r3, [r0, #2]
c0de5fba:	0a09      	lsrs	r1, r1, #8
c0de5fbc:	7041      	strb	r1, [r0, #1]
c0de5fbe:	2108      	movs	r1, #8
c0de5fc0:	f7ff fdba 	bl	c0de5b38 <u2f_io_send>
c0de5fc4:	e019      	b.n	c0de5ffa <u2f_transport_received+0x1ea>
c0de5fc6:	2102      	movs	r1, #2
c0de5fc8:	4301      	orrs	r1, r0
c0de5fca:	9a06      	ldr	r2, [sp, #24]
c0de5fcc:	4291      	cmp	r1, r2
c0de5fce:	d916      	bls.n	c0de5ffe <u2f_transport_received+0x1ee>
c0de5fd0:	488e      	ldr	r0, [pc, #568]	; (c0de620c <u2f_transport_received+0x3fc>)
c0de5fd2:	4649      	mov	r1, r9
c0de5fd4:	1808      	adds	r0, r1, r0
c0de5fd6:	2185      	movs	r1, #133	; 0x85
c0de5fd8:	7201      	strb	r1, [r0, #8]
c0de5fda:	2100      	movs	r1, #0
c0de5fdc:	76a1      	strb	r1, [r4, #26]
c0de5fde:	2201      	movs	r2, #1
c0de5fe0:	8322      	strh	r2, [r4, #24]
c0de5fe2:	82e1      	strh	r1, [r4, #22]
c0de5fe4:	3008      	adds	r0, #8
c0de5fe6:	61e0      	str	r0, [r4, #28]
c0de5fe8:	2004      	movs	r0, #4
c0de5fea:	7038      	strb	r0, [r7, #0]
c0de5fec:	20bf      	movs	r0, #191	; 0xbf
c0de5fee:	9908      	ldr	r1, [sp, #32]
c0de5ff0:	7008      	strb	r0, [r1, #0]
c0de5ff2:	7a21      	ldrb	r1, [r4, #8]
c0de5ff4:	4620      	mov	r0, r4
c0de5ff6:	f7ff fdd3 	bl	c0de5ba0 <u2f_transport_sent>
c0de5ffa:	b009      	add	sp, #36	; 0x24
c0de5ffc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5ffe:	9907      	ldr	r1, [sp, #28]
c0de6000:	7bc9      	ldrb	r1, [r1, #15]
c0de6002:	42a9      	cmp	r1, r5
c0de6004:	d158      	bne.n	c0de60b8 <u2f_transport_received+0x2a8>
c0de6006:	7839      	ldrb	r1, [r7, #0]
c0de6008:	2901      	cmp	r1, #1
c0de600a:	d17f      	bne.n	c0de610c <u2f_transport_received+0x2fc>
c0de600c:	9607      	str	r6, [sp, #28]
c0de600e:	2d01      	cmp	r5, #1
c0de6010:	d11a      	bne.n	c0de6048 <u2f_transport_received+0x238>
c0de6012:	7921      	ldrb	r1, [r4, #4]
c0de6014:	7962      	ldrb	r2, [r4, #5]
c0de6016:	0212      	lsls	r2, r2, #8
c0de6018:	1851      	adds	r1, r2, r1
c0de601a:	79a2      	ldrb	r2, [r4, #6]
c0de601c:	79e6      	ldrb	r6, [r4, #7]
c0de601e:	0236      	lsls	r6, r6, #8
c0de6020:	18b2      	adds	r2, r6, r2
c0de6022:	0412      	lsls	r2, r2, #16
c0de6024:	1851      	adds	r1, r2, r1
c0de6026:	9102      	str	r1, [sp, #8]
c0de6028:	9907      	ldr	r1, [sp, #28]
c0de602a:	780a      	ldrb	r2, [r1, #0]
c0de602c:	784e      	ldrb	r6, [r1, #1]
c0de602e:	0236      	lsls	r6, r6, #8
c0de6030:	18b2      	adds	r2, r6, r2
c0de6032:	788e      	ldrb	r6, [r1, #2]
c0de6034:	78c9      	ldrb	r1, [r1, #3]
c0de6036:	0209      	lsls	r1, r1, #8
c0de6038:	1989      	adds	r1, r1, r6
c0de603a:	0409      	lsls	r1, r1, #16
c0de603c:	1889      	adds	r1, r1, r2
c0de603e:	9a06      	ldr	r2, [sp, #24]
c0de6040:	9e02      	ldr	r6, [sp, #8]
c0de6042:	42b1      	cmp	r1, r6
c0de6044:	d000      	beq.n	c0de6048 <u2f_transport_received+0x238>
c0de6046:	e70f      	b.n	c0de5e68 <u2f_transport_received+0x58>
c0de6048:	7ea1      	ldrb	r1, [r4, #26]
c0de604a:	428b      	cmp	r3, r1
c0de604c:	d172      	bne.n	c0de6134 <u2f_transport_received+0x324>
c0de604e:	9907      	ldr	r1, [sp, #28]
c0de6050:	180b      	adds	r3, r1, r0
c0de6052:	9805      	ldr	r0, [sp, #20]
c0de6054:	1a16      	subs	r6, r2, r0
c0de6056:	8b20      	ldrh	r0, [r4, #24]
c0de6058:	9903      	ldr	r1, [sp, #12]
c0de605a:	1a40      	subs	r0, r0, r1
c0de605c:	4286      	cmp	r6, r0
c0de605e:	db00      	blt.n	c0de6062 <u2f_transport_received+0x252>
c0de6060:	4606      	mov	r6, r0
c0de6062:	b2b2      	uxth	r2, r6
c0de6064:	69e0      	ldr	r0, [r4, #28]
c0de6066:	9903      	ldr	r1, [sp, #12]
c0de6068:	1840      	adds	r0, r0, r1
c0de606a:	1c59      	adds	r1, r3, #1
c0de606c:	9207      	str	r2, [sp, #28]
c0de606e:	f002 fc7f 	bl	c0de8970 <__aeabi_memmove>
c0de6072:	2d01      	cmp	r5, #1
c0de6074:	d107      	bne.n	c0de6086 <u2f_transport_received+0x276>
c0de6076:	8ae0      	ldrh	r0, [r4, #22]
c0de6078:	69e1      	ldr	r1, [r4, #28]
c0de607a:	1809      	adds	r1, r1, r0
c0de607c:	8ce0      	ldrh	r0, [r4, #38]	; 0x26
c0de607e:	9a07      	ldr	r2, [sp, #28]
c0de6080:	f7fb fe40 	bl	c0de1d04 <cx_crc16_update>
c0de6084:	84e0      	strh	r0, [r4, #38]	; 0x26
c0de6086:	8ae0      	ldrh	r0, [r4, #22]
c0de6088:	1980      	adds	r0, r0, r6
c0de608a:	82e0      	strh	r0, [r4, #22]
c0de608c:	7ea0      	ldrb	r0, [r4, #26]
c0de608e:	1c40      	adds	r0, r0, #1
c0de6090:	76a0      	strb	r0, [r4, #26]
c0de6092:	e08e      	b.n	c0de61b2 <u2f_transport_received+0x3a2>
c0de6094:	2b01      	cmp	r3, #1
c0de6096:	9905      	ldr	r1, [sp, #20]
c0de6098:	d04c      	beq.n	c0de6134 <u2f_transport_received+0x324>
c0de609a:	460b      	mov	r3, r1
c0de609c:	1871      	adds	r1, r6, r1
c0de609e:	7849      	ldrb	r1, [r1, #1]
c0de60a0:	5cf3      	ldrb	r3, [r6, r3]
c0de60a2:	021b      	lsls	r3, r3, #8
c0de60a4:	1859      	adds	r1, r3, r1
c0de60a6:	8a23      	ldrh	r3, [r4, #16]
c0de60a8:	1edb      	subs	r3, r3, #3
c0de60aa:	428b      	cmp	r3, r1
c0de60ac:	da09      	bge.n	c0de60c2 <u2f_transport_received+0x2b2>
c0de60ae:	4857      	ldr	r0, [pc, #348]	; (c0de620c <u2f_transport_received+0x3fc>)
c0de60b0:	4649      	mov	r1, r9
c0de60b2:	1808      	adds	r0, r1, r0
c0de60b4:	7202      	strb	r2, [r0, #8]
c0de60b6:	e790      	b.n	c0de5fda <u2f_transport_received+0x1ca>
c0de60b8:	4854      	ldr	r0, [pc, #336]	; (c0de620c <u2f_transport_received+0x3fc>)
c0de60ba:	4649      	mov	r1, r9
c0de60bc:	1808      	adds	r0, r1, r0
c0de60be:	218d      	movs	r1, #141	; 0x8d
c0de60c0:	e78a      	b.n	c0de5fd8 <u2f_transport_received+0x1c8>
c0de60c2:	9a03      	ldr	r2, [sp, #12]
c0de60c4:	2a81      	cmp	r2, #129	; 0x81
c0de60c6:	d003      	beq.n	c0de60d0 <u2f_transport_received+0x2c0>
c0de60c8:	2a86      	cmp	r2, #134	; 0x86
c0de60ca:	d041      	beq.n	c0de6150 <u2f_transport_received+0x340>
c0de60cc:	2a83      	cmp	r2, #131	; 0x83
c0de60ce:	d177      	bne.n	c0de61c0 <u2f_transport_received+0x3b0>
c0de60d0:	2d01      	cmp	r5, #1
c0de60d2:	d14c      	bne.n	c0de616e <u2f_transport_received+0x35e>
c0de60d4:	7922      	ldrb	r2, [r4, #4]
c0de60d6:	7963      	ldrb	r3, [r4, #5]
c0de60d8:	021b      	lsls	r3, r3, #8
c0de60da:	189a      	adds	r2, r3, r2
c0de60dc:	9205      	str	r2, [sp, #20]
c0de60de:	79a3      	ldrb	r3, [r4, #6]
c0de60e0:	79e2      	ldrb	r2, [r4, #7]
c0de60e2:	0212      	lsls	r2, r2, #8
c0de60e4:	18d2      	adds	r2, r2, r3
c0de60e6:	0412      	lsls	r2, r2, #16
c0de60e8:	9b05      	ldr	r3, [sp, #20]
c0de60ea:	18d2      	adds	r2, r2, r3
c0de60ec:	1c52      	adds	r2, r2, #1
c0de60ee:	d100      	bne.n	c0de60f2 <u2f_transport_received+0x2e2>
c0de60f0:	e086      	b.n	c0de6200 <u2f_transport_received+0x3f0>
c0de60f2:	1d22      	adds	r2, r4, #4
c0de60f4:	9203      	str	r2, [sp, #12]
c0de60f6:	7813      	ldrb	r3, [r2, #0]
c0de60f8:	9305      	str	r3, [sp, #20]
c0de60fa:	7853      	ldrb	r3, [r2, #1]
c0de60fc:	021b      	lsls	r3, r3, #8
c0de60fe:	9a05      	ldr	r2, [sp, #20]
c0de6100:	189b      	adds	r3, r3, r2
c0de6102:	9305      	str	r3, [sp, #20]
c0de6104:	9a03      	ldr	r2, [sp, #12]
c0de6106:	7893      	ldrb	r3, [r2, #2]
c0de6108:	78d2      	ldrb	r2, [r2, #3]
c0de610a:	e02a      	b.n	c0de6162 <u2f_transport_received+0x352>
c0de610c:	2d01      	cmp	r5, #1
c0de610e:	d111      	bne.n	c0de6134 <u2f_transport_received+0x324>
c0de6110:	2000      	movs	r0, #0
c0de6112:	76a0      	strb	r0, [r4, #26]
c0de6114:	82e0      	strh	r0, [r4, #22]
c0de6116:	9907      	ldr	r1, [sp, #28]
c0de6118:	8308      	strh	r0, [r1, #24]
c0de611a:	6038      	str	r0, [r7, #0]
c0de611c:	80b8      	strh	r0, [r7, #4]
c0de611e:	68e0      	ldr	r0, [r4, #12]
c0de6120:	61e0      	str	r0, [r4, #28]
c0de6122:	1d20      	adds	r0, r4, #4
c0de6124:	2104      	movs	r1, #4
c0de6126:	f7fb fe23 	bl	c0de1d70 <cx_rng_no_throw>
c0de612a:	e766      	b.n	c0de5ffa <u2f_transport_received+0x1ea>
c0de612c:	9903      	ldr	r1, [sp, #12]
c0de612e:	2986      	cmp	r1, #134	; 0x86
c0de6130:	9905      	ldr	r1, [sp, #20]
c0de6132:	d0b2      	beq.n	c0de609a <u2f_transport_received+0x28a>
c0de6134:	4835      	ldr	r0, [pc, #212]	; (c0de620c <u2f_transport_received+0x3fc>)
c0de6136:	4649      	mov	r1, r9
c0de6138:	1808      	adds	r0, r1, r0
c0de613a:	2104      	movs	r1, #4
c0de613c:	7201      	strb	r1, [r0, #8]
c0de613e:	2200      	movs	r2, #0
c0de6140:	76a2      	strb	r2, [r4, #26]
c0de6142:	2301      	movs	r3, #1
c0de6144:	8323      	strh	r3, [r4, #24]
c0de6146:	82e2      	strh	r2, [r4, #22]
c0de6148:	3008      	adds	r0, #8
c0de614a:	61e0      	str	r0, [r4, #28]
c0de614c:	7039      	strb	r1, [r7, #0]
c0de614e:	e74d      	b.n	c0de5fec <u2f_transport_received+0x1dc>
c0de6150:	2d01      	cmp	r5, #1
c0de6152:	d135      	bne.n	c0de61c0 <u2f_transport_received+0x3b0>
c0de6154:	7922      	ldrb	r2, [r4, #4]
c0de6156:	7963      	ldrb	r3, [r4, #5]
c0de6158:	021b      	lsls	r3, r3, #8
c0de615a:	189a      	adds	r2, r3, r2
c0de615c:	9205      	str	r2, [sp, #20]
c0de615e:	79a3      	ldrb	r3, [r4, #6]
c0de6160:	79e2      	ldrb	r2, [r4, #7]
c0de6162:	0212      	lsls	r2, r2, #8
c0de6164:	18d2      	adds	r2, r2, r3
c0de6166:	0412      	lsls	r2, r2, #16
c0de6168:	9b05      	ldr	r3, [sp, #20]
c0de616a:	18d2      	adds	r2, r2, r3
c0de616c:	d048      	beq.n	c0de6200 <u2f_transport_received+0x3f0>
c0de616e:	1832      	adds	r2, r6, r0
c0de6170:	9205      	str	r2, [sp, #20]
c0de6172:	9b06      	ldr	r3, [sp, #24]
c0de6174:	1a1e      	subs	r6, r3, r0
c0de6176:	1cc8      	adds	r0, r1, #3
c0de6178:	4286      	cmp	r6, r0
c0de617a:	db00      	blt.n	c0de617e <u2f_transport_received+0x36e>
c0de617c:	4606      	mov	r6, r0
c0de617e:	9006      	str	r0, [sp, #24]
c0de6180:	b2b2      	uxth	r2, r6
c0de6182:	69e0      	ldr	r0, [r4, #28]
c0de6184:	9905      	ldr	r1, [sp, #20]
c0de6186:	9205      	str	r2, [sp, #20]
c0de6188:	f002 fbf2 	bl	c0de8970 <__aeabi_memmove>
c0de618c:	2d01      	cmp	r5, #1
c0de618e:	d105      	bne.n	c0de619c <u2f_transport_received+0x38c>
c0de6190:	69e1      	ldr	r1, [r4, #28]
c0de6192:	2000      	movs	r0, #0
c0de6194:	9a05      	ldr	r2, [sp, #20]
c0de6196:	f7fb fdb5 	bl	c0de1d04 <cx_crc16_update>
c0de619a:	84e0      	strh	r0, [r4, #38]	; 0x26
c0de619c:	9806      	ldr	r0, [sp, #24]
c0de619e:	8320      	strh	r0, [r4, #24]
c0de61a0:	82e6      	strh	r6, [r4, #22]
c0de61a2:	9907      	ldr	r1, [sp, #28]
c0de61a4:	73cd      	strb	r5, [r1, #15]
c0de61a6:	2000      	movs	r0, #0
c0de61a8:	76a0      	strb	r0, [r4, #26]
c0de61aa:	6860      	ldr	r0, [r4, #4]
c0de61ac:	8008      	strh	r0, [r1, #0]
c0de61ae:	0c00      	lsrs	r0, r0, #16
c0de61b0:	8048      	strh	r0, [r1, #2]
c0de61b2:	9804      	ldr	r0, [sp, #16]
c0de61b4:	8800      	ldrh	r0, [r0, #0]
c0de61b6:	2d01      	cmp	r5, #1
c0de61b8:	9b08      	ldr	r3, [sp, #32]
c0de61ba:	d10b      	bne.n	c0de61d4 <u2f_transport_received+0x3c4>
c0de61bc:	8b21      	ldrh	r1, [r4, #24]
c0de61be:	e012      	b.n	c0de61e6 <u2f_transport_received+0x3d6>
c0de61c0:	4812      	ldr	r0, [pc, #72]	; (c0de620c <u2f_transport_received+0x3fc>)
c0de61c2:	4649      	mov	r1, r9
c0de61c4:	1808      	adds	r0, r1, r0
c0de61c6:	2101      	movs	r1, #1
c0de61c8:	7201      	strb	r1, [r0, #8]
c0de61ca:	2200      	movs	r2, #0
c0de61cc:	76a2      	strb	r2, [r4, #26]
c0de61ce:	8321      	strh	r1, [r4, #24]
c0de61d0:	82e2      	strh	r2, [r4, #22]
c0de61d2:	e707      	b.n	c0de5fe4 <u2f_transport_received+0x1d4>
c0de61d4:	8b21      	ldrh	r1, [r4, #24]
c0de61d6:	1cca      	adds	r2, r1, #3
c0de61d8:	4282      	cmp	r2, r0
c0de61da:	d204      	bcs.n	c0de61e6 <u2f_transport_received+0x3d6>
c0de61dc:	480b      	ldr	r0, [pc, #44]	; (c0de620c <u2f_transport_received+0x3fc>)
c0de61de:	4649      	mov	r1, r9
c0de61e0:	1808      	adds	r0, r1, r0
c0de61e2:	2103      	movs	r1, #3
c0de61e4:	e625      	b.n	c0de5e32 <u2f_transport_received+0x22>
c0de61e6:	4288      	cmp	r0, r1
c0de61e8:	d204      	bcs.n	c0de61f4 <u2f_transport_received+0x3e4>
c0de61ea:	2001      	movs	r0, #1
c0de61ec:	7038      	strb	r0, [r7, #0]
c0de61ee:	2000      	movs	r0, #0
c0de61f0:	6360      	str	r0, [r4, #52]	; 0x34
c0de61f2:	e702      	b.n	c0de5ffa <u2f_transport_received+0x1ea>
c0de61f4:	2002      	movs	r0, #2
c0de61f6:	7038      	strb	r0, [r7, #0]
c0de61f8:	4620      	mov	r0, r4
c0de61fa:	f7ff fc7f 	bl	c0de5afc <u2f_message_complete>
c0de61fe:	e6fc      	b.n	c0de5ffa <u2f_transport_received+0x1ea>
c0de6200:	4802      	ldr	r0, [pc, #8]	; (c0de620c <u2f_transport_received+0x3fc>)
c0de6202:	4649      	mov	r1, r9
c0de6204:	1808      	adds	r0, r1, r0
c0de6206:	210b      	movs	r1, #11
c0de6208:	e6e6      	b.n	c0de5fd8 <u2f_transport_received+0x1c8>
c0de620a:	46c0      	nop			; (mov r8, r8)
c0de620c:	000006fc 	.word	0x000006fc

c0de6210 <u2f_is_channel_broadcast>:
c0de6210:	7801      	ldrb	r1, [r0, #0]
c0de6212:	7842      	ldrb	r2, [r0, #1]
c0de6214:	0212      	lsls	r2, r2, #8
c0de6216:	1851      	adds	r1, r2, r1
c0de6218:	7882      	ldrb	r2, [r0, #2]
c0de621a:	78c0      	ldrb	r0, [r0, #3]
c0de621c:	0200      	lsls	r0, r0, #8
c0de621e:	1880      	adds	r0, r0, r2
c0de6220:	0400      	lsls	r0, r0, #16
c0de6222:	1840      	adds	r0, r0, r1
c0de6224:	1c41      	adds	r1, r0, #1
c0de6226:	4248      	negs	r0, r1
c0de6228:	4148      	adcs	r0, r1
c0de622a:	4770      	bx	lr

c0de622c <u2f_message_set_autoreply_wait_user_presence>:
c0de622c:	b580      	push	{r7, lr}
c0de622e:	222a      	movs	r2, #42	; 0x2a
c0de6230:	5c83      	ldrb	r3, [r0, r2]
c0de6232:	4602      	mov	r2, r0
c0de6234:	322a      	adds	r2, #42	; 0x2a
c0de6236:	2900      	cmp	r1, #0
c0de6238:	d002      	beq.n	c0de6240 <u2f_message_set_autoreply_wait_user_presence+0x14>
c0de623a:	2b00      	cmp	r3, #0
c0de623c:	d005      	beq.n	c0de624a <u2f_message_set_autoreply_wait_user_presence+0x1e>
c0de623e:	bd80      	pop	{r7, pc}
c0de6240:	2b01      	cmp	r3, #1
c0de6242:	d1fc      	bne.n	c0de623e <u2f_message_set_autoreply_wait_user_presence+0x12>
c0de6244:	2002      	movs	r0, #2
c0de6246:	7010      	strb	r0, [r2, #0]
c0de6248:	bd80      	pop	{r7, pc}
c0de624a:	21ff      	movs	r1, #255	; 0xff
c0de624c:	3102      	adds	r1, #2
c0de624e:	8011      	strh	r1, [r2, #0]
c0de6250:	6841      	ldr	r1, [r0, #4]
c0de6252:	480c      	ldr	r0, [pc, #48]	; (c0de6284 <u2f_message_set_autoreply_wait_user_presence+0x58>)
c0de6254:	464a      	mov	r2, r9
c0de6256:	5411      	strb	r1, [r2, r0]
c0de6258:	1810      	adds	r0, r2, r0
c0de625a:	0e0a      	lsrs	r2, r1, #24
c0de625c:	70c2      	strb	r2, [r0, #3]
c0de625e:	0c0a      	lsrs	r2, r1, #16
c0de6260:	7082      	strb	r2, [r0, #2]
c0de6262:	0a09      	lsrs	r1, r1, #8
c0de6264:	7041      	strb	r1, [r0, #1]
c0de6266:	2185      	movs	r1, #133	; 0x85
c0de6268:	7201      	strb	r1, [r0, #8]
c0de626a:	2169      	movs	r1, #105	; 0x69
c0de626c:	71c1      	strb	r1, [r0, #7]
c0de626e:	2102      	movs	r1, #2
c0de6270:	7181      	strb	r1, [r0, #6]
c0de6272:	2100      	movs	r1, #0
c0de6274:	7141      	strb	r1, [r0, #5]
c0de6276:	2183      	movs	r1, #131	; 0x83
c0de6278:	7101      	strb	r1, [r0, #4]
c0de627a:	2109      	movs	r1, #9
c0de627c:	2201      	movs	r2, #1
c0de627e:	f7ff fc5b 	bl	c0de5b38 <u2f_io_send>
c0de6282:	bd80      	pop	{r7, pc}
c0de6284:	000006fc 	.word	0x000006fc

c0de6288 <u2f_message_reply>:
c0de6288:	b570      	push	{r4, r5, r6, lr}
c0de628a:	4604      	mov	r4, r0
c0de628c:	202a      	movs	r0, #42	; 0x2a
c0de628e:	5c20      	ldrb	r0, [r4, r0]
c0de6290:	4625      	mov	r5, r4
c0de6292:	3520      	adds	r5, #32
c0de6294:	2800      	cmp	r0, #0
c0de6296:	d007      	beq.n	c0de62a8 <u2f_message_reply+0x20>
c0de6298:	2801      	cmp	r0, #1
c0de629a:	d021      	beq.n	c0de62e0 <u2f_message_reply+0x58>
c0de629c:	7968      	ldrb	r0, [r5, #5]
c0de629e:	2806      	cmp	r0, #6
c0de62a0:	d11e      	bne.n	c0de62e0 <u2f_message_reply+0x58>
c0de62a2:	7ae8      	ldrb	r0, [r5, #11]
c0de62a4:	2800      	cmp	r0, #0
c0de62a6:	d11b      	bne.n	c0de62e0 <u2f_message_reply+0x58>
c0de62a8:	4620      	mov	r0, r4
c0de62aa:	3040      	adds	r0, #64	; 0x40
c0de62ac:	61e2      	str	r2, [r4, #28]
c0de62ae:	2200      	movs	r2, #0
c0de62b0:	76a2      	strb	r2, [r4, #26]
c0de62b2:	2603      	movs	r6, #3
c0de62b4:	702e      	strb	r6, [r5, #0]
c0de62b6:	8323      	strh	r3, [r4, #24]
c0de62b8:	82e2      	strh	r2, [r4, #22]
c0de62ba:	7001      	strb	r1, [r0, #0]
c0de62bc:	7869      	ldrb	r1, [r5, #1]
c0de62be:	2903      	cmp	r1, #3
c0de62c0:	d10f      	bne.n	c0de62e2 <u2f_message_reply+0x5a>
c0de62c2:	4e0a      	ldr	r6, [pc, #40]	; (c0de62ec <u2f_message_reply+0x64>)
c0de62c4:	4648      	mov	r0, r9
c0de62c6:	5d80      	ldrb	r0, [r0, r6]
c0de62c8:	2800      	cmp	r0, #0
c0de62ca:	d009      	beq.n	c0de62e0 <u2f_message_reply+0x58>
c0de62cc:	2103      	movs	r1, #3
c0de62ce:	4620      	mov	r0, r4
c0de62d0:	f7ff fc66 	bl	c0de5ba0 <u2f_transport_sent>
c0de62d4:	4648      	mov	r0, r9
c0de62d6:	5d80      	ldrb	r0, [r0, r6]
c0de62d8:	2800      	cmp	r0, #0
c0de62da:	d001      	beq.n	c0de62e0 <u2f_message_reply+0x58>
c0de62dc:	7869      	ldrb	r1, [r5, #1]
c0de62de:	e7f6      	b.n	c0de62ce <u2f_message_reply+0x46>
c0de62e0:	bd70      	pop	{r4, r5, r6, pc}
c0de62e2:	4620      	mov	r0, r4
c0de62e4:	f7ff fc5c 	bl	c0de5ba0 <u2f_transport_sent>
c0de62e8:	bd70      	pop	{r4, r5, r6, pc}
c0de62ea:	46c0      	nop			; (mov r8, r8)
c0de62ec:	00000684 	.word	0x00000684

c0de62f0 <USBD_LL_Init>:
c0de62f0:	4903      	ldr	r1, [pc, #12]	; (c0de6300 <USBD_LL_Init+0x10>)
c0de62f2:	464a      	mov	r2, r9
c0de62f4:	2000      	movs	r0, #0
c0de62f6:	5050      	str	r0, [r2, r1]
c0de62f8:	4902      	ldr	r1, [pc, #8]	; (c0de6304 <USBD_LL_Init+0x14>)
c0de62fa:	5050      	str	r0, [r2, r1]
c0de62fc:	4770      	bx	lr
c0de62fe:	46c0      	nop			; (mov r8, r8)
c0de6300:	00000a24 	.word	0x00000a24
c0de6304:	00000a20 	.word	0x00000a20

c0de6308 <USBD_LL_DeInit>:
c0de6308:	b510      	push	{r4, lr}
c0de630a:	4808      	ldr	r0, [pc, #32]	; (c0de632c <USBD_LL_DeInit+0x24>)
c0de630c:	4649      	mov	r1, r9
c0de630e:	224f      	movs	r2, #79	; 0x4f
c0de6310:	540a      	strb	r2, [r1, r0]
c0de6312:	1808      	adds	r0, r1, r0
c0de6314:	2102      	movs	r1, #2
c0de6316:	70c1      	strb	r1, [r0, #3]
c0de6318:	2101      	movs	r1, #1
c0de631a:	7081      	strb	r1, [r0, #2]
c0de631c:	2400      	movs	r4, #0
c0de631e:	7044      	strb	r4, [r0, #1]
c0de6320:	2104      	movs	r1, #4
c0de6322:	f7ff f997 	bl	c0de5654 <io_seph_send>
c0de6326:	4620      	mov	r0, r4
c0de6328:	bd10      	pop	{r4, pc}
c0de632a:	46c0      	nop			; (mov r8, r8)
c0de632c:	00000404 	.word	0x00000404

c0de6330 <USBD_LL_Start>:
c0de6330:	b570      	push	{r4, r5, r6, lr}
c0de6332:	b082      	sub	sp, #8
c0de6334:	466d      	mov	r5, sp
c0de6336:	2400      	movs	r4, #0
c0de6338:	712c      	strb	r4, [r5, #4]
c0de633a:	2003      	movs	r0, #3
c0de633c:	70e8      	strb	r0, [r5, #3]
c0de633e:	2002      	movs	r0, #2
c0de6340:	70a8      	strb	r0, [r5, #2]
c0de6342:	706c      	strb	r4, [r5, #1]
c0de6344:	264f      	movs	r6, #79	; 0x4f
c0de6346:	702e      	strb	r6, [r5, #0]
c0de6348:	2105      	movs	r1, #5
c0de634a:	4628      	mov	r0, r5
c0de634c:	f7ff f982 	bl	c0de5654 <io_seph_send>
c0de6350:	2001      	movs	r0, #1
c0de6352:	70e8      	strb	r0, [r5, #3]
c0de6354:	70a8      	strb	r0, [r5, #2]
c0de6356:	706c      	strb	r4, [r5, #1]
c0de6358:	702e      	strb	r6, [r5, #0]
c0de635a:	2104      	movs	r1, #4
c0de635c:	4628      	mov	r0, r5
c0de635e:	f7ff f979 	bl	c0de5654 <io_seph_send>
c0de6362:	4620      	mov	r0, r4
c0de6364:	b002      	add	sp, #8
c0de6366:	bd70      	pop	{r4, r5, r6, pc}

c0de6368 <USBD_LL_Stop>:
c0de6368:	b510      	push	{r4, lr}
c0de636a:	b082      	sub	sp, #8
c0de636c:	a801      	add	r0, sp, #4
c0de636e:	2102      	movs	r1, #2
c0de6370:	70c1      	strb	r1, [r0, #3]
c0de6372:	2101      	movs	r1, #1
c0de6374:	7081      	strb	r1, [r0, #2]
c0de6376:	2400      	movs	r4, #0
c0de6378:	7044      	strb	r4, [r0, #1]
c0de637a:	214f      	movs	r1, #79	; 0x4f
c0de637c:	7001      	strb	r1, [r0, #0]
c0de637e:	2104      	movs	r1, #4
c0de6380:	f7ff f968 	bl	c0de5654 <io_seph_send>
c0de6384:	4620      	mov	r0, r4
c0de6386:	b002      	add	sp, #8
c0de6388:	bd10      	pop	{r4, pc}
c0de638a:	d4d4      	bmi.n	c0de6336 <USBD_LL_Start+0x6>

c0de638c <USBD_LL_OpenEP>:
c0de638c:	b570      	push	{r4, r5, r6, lr}
c0de638e:	b082      	sub	sp, #8
c0de6390:	4815      	ldr	r0, [pc, #84]	; (c0de63e8 <USBD_LL_OpenEP+0x5c>)
c0de6392:	464c      	mov	r4, r9
c0de6394:	2500      	movs	r5, #0
c0de6396:	5025      	str	r5, [r4, r0]
c0de6398:	4814      	ldr	r0, [pc, #80]	; (c0de63ec <USBD_LL_OpenEP+0x60>)
c0de639a:	5025      	str	r5, [r4, r0]
c0de639c:	466c      	mov	r4, sp
c0de639e:	71a5      	strb	r5, [r4, #6]
c0de63a0:	7161      	strb	r1, [r4, #5]
c0de63a2:	2001      	movs	r0, #1
c0de63a4:	7120      	strb	r0, [r4, #4]
c0de63a6:	2104      	movs	r1, #4
c0de63a8:	70e1      	strb	r1, [r4, #3]
c0de63aa:	2605      	movs	r6, #5
c0de63ac:	70a6      	strb	r6, [r4, #2]
c0de63ae:	7065      	strb	r5, [r4, #1]
c0de63b0:	254f      	movs	r5, #79	; 0x4f
c0de63b2:	7025      	strb	r5, [r4, #0]
c0de63b4:	2a01      	cmp	r2, #1
c0de63b6:	dc05      	bgt.n	c0de63c4 <USBD_LL_OpenEP+0x38>
c0de63b8:	2a00      	cmp	r2, #0
c0de63ba:	d00a      	beq.n	c0de63d2 <USBD_LL_OpenEP+0x46>
c0de63bc:	2a01      	cmp	r2, #1
c0de63be:	d10a      	bne.n	c0de63d6 <USBD_LL_OpenEP+0x4a>
c0de63c0:	4608      	mov	r0, r1
c0de63c2:	e006      	b.n	c0de63d2 <USBD_LL_OpenEP+0x46>
c0de63c4:	2a02      	cmp	r2, #2
c0de63c6:	d003      	beq.n	c0de63d0 <USBD_LL_OpenEP+0x44>
c0de63c8:	2a03      	cmp	r2, #3
c0de63ca:	d104      	bne.n	c0de63d6 <USBD_LL_OpenEP+0x4a>
c0de63cc:	2002      	movs	r0, #2
c0de63ce:	e000      	b.n	c0de63d2 <USBD_LL_OpenEP+0x46>
c0de63d0:	2003      	movs	r0, #3
c0de63d2:	4669      	mov	r1, sp
c0de63d4:	7188      	strb	r0, [r1, #6]
c0de63d6:	4668      	mov	r0, sp
c0de63d8:	71c3      	strb	r3, [r0, #7]
c0de63da:	2108      	movs	r1, #8
c0de63dc:	f7ff f93a 	bl	c0de5654 <io_seph_send>
c0de63e0:	2000      	movs	r0, #0
c0de63e2:	b002      	add	sp, #8
c0de63e4:	bd70      	pop	{r4, r5, r6, pc}
c0de63e6:	46c0      	nop			; (mov r8, r8)
c0de63e8:	00000a20 	.word	0x00000a20
c0de63ec:	00000a24 	.word	0x00000a24

c0de63f0 <USBD_LL_StallEP>:
c0de63f0:	b5b0      	push	{r4, r5, r7, lr}
c0de63f2:	b082      	sub	sp, #8
c0de63f4:	460d      	mov	r5, r1
c0de63f6:	4668      	mov	r0, sp
c0de63f8:	2400      	movs	r4, #0
c0de63fa:	7144      	strb	r4, [r0, #5]
c0de63fc:	2140      	movs	r1, #64	; 0x40
c0de63fe:	7101      	strb	r1, [r0, #4]
c0de6400:	70c5      	strb	r5, [r0, #3]
c0de6402:	2103      	movs	r1, #3
c0de6404:	7081      	strb	r1, [r0, #2]
c0de6406:	7044      	strb	r4, [r0, #1]
c0de6408:	2150      	movs	r1, #80	; 0x50
c0de640a:	7001      	strb	r1, [r0, #0]
c0de640c:	2106      	movs	r1, #6
c0de640e:	f7ff f921 	bl	c0de5654 <io_seph_send>
c0de6412:	4648      	mov	r0, r9
c0de6414:	0629      	lsls	r1, r5, #24
c0de6416:	d501      	bpl.n	c0de641c <USBD_LL_StallEP+0x2c>
c0de6418:	4907      	ldr	r1, [pc, #28]	; (c0de6438 <USBD_LL_StallEP+0x48>)
c0de641a:	e000      	b.n	c0de641e <USBD_LL_StallEP+0x2e>
c0de641c:	4905      	ldr	r1, [pc, #20]	; (c0de6434 <USBD_LL_StallEP+0x44>)
c0de641e:	1840      	adds	r0, r0, r1
c0de6420:	6801      	ldr	r1, [r0, #0]
c0de6422:	227f      	movs	r2, #127	; 0x7f
c0de6424:	4015      	ands	r5, r2
c0de6426:	2201      	movs	r2, #1
c0de6428:	40aa      	lsls	r2, r5
c0de642a:	430a      	orrs	r2, r1
c0de642c:	6002      	str	r2, [r0, #0]
c0de642e:	4620      	mov	r0, r4
c0de6430:	b002      	add	sp, #8
c0de6432:	bdb0      	pop	{r4, r5, r7, pc}
c0de6434:	00000a24 	.word	0x00000a24
c0de6438:	00000a20 	.word	0x00000a20

c0de643c <USBD_LL_ClearStallEP>:
c0de643c:	b5b0      	push	{r4, r5, r7, lr}
c0de643e:	b082      	sub	sp, #8
c0de6440:	460d      	mov	r5, r1
c0de6442:	4668      	mov	r0, sp
c0de6444:	2400      	movs	r4, #0
c0de6446:	7144      	strb	r4, [r0, #5]
c0de6448:	2180      	movs	r1, #128	; 0x80
c0de644a:	7101      	strb	r1, [r0, #4]
c0de644c:	70c5      	strb	r5, [r0, #3]
c0de644e:	2103      	movs	r1, #3
c0de6450:	7081      	strb	r1, [r0, #2]
c0de6452:	7044      	strb	r4, [r0, #1]
c0de6454:	2150      	movs	r1, #80	; 0x50
c0de6456:	7001      	strb	r1, [r0, #0]
c0de6458:	2106      	movs	r1, #6
c0de645a:	f7ff f8fb 	bl	c0de5654 <io_seph_send>
c0de645e:	4648      	mov	r0, r9
c0de6460:	0629      	lsls	r1, r5, #24
c0de6462:	d501      	bpl.n	c0de6468 <USBD_LL_ClearStallEP+0x2c>
c0de6464:	4907      	ldr	r1, [pc, #28]	; (c0de6484 <USBD_LL_ClearStallEP+0x48>)
c0de6466:	e000      	b.n	c0de646a <USBD_LL_ClearStallEP+0x2e>
c0de6468:	4905      	ldr	r1, [pc, #20]	; (c0de6480 <USBD_LL_ClearStallEP+0x44>)
c0de646a:	1840      	adds	r0, r0, r1
c0de646c:	6801      	ldr	r1, [r0, #0]
c0de646e:	227f      	movs	r2, #127	; 0x7f
c0de6470:	4015      	ands	r5, r2
c0de6472:	2201      	movs	r2, #1
c0de6474:	40aa      	lsls	r2, r5
c0de6476:	4391      	bics	r1, r2
c0de6478:	6001      	str	r1, [r0, #0]
c0de647a:	4620      	mov	r0, r4
c0de647c:	b002      	add	sp, #8
c0de647e:	bdb0      	pop	{r4, r5, r7, pc}
c0de6480:	00000a24 	.word	0x00000a24
c0de6484:	00000a20 	.word	0x00000a20

c0de6488 <USBD_LL_IsStallEP>:
c0de6488:	4648      	mov	r0, r9
c0de648a:	060a      	lsls	r2, r1, #24
c0de648c:	d501      	bpl.n	c0de6492 <USBD_LL_IsStallEP+0xa>
c0de648e:	4a06      	ldr	r2, [pc, #24]	; (c0de64a8 <USBD_LL_IsStallEP+0x20>)
c0de6490:	e000      	b.n	c0de6494 <USBD_LL_IsStallEP+0xc>
c0de6492:	4a04      	ldr	r2, [pc, #16]	; (c0de64a4 <USBD_LL_IsStallEP+0x1c>)
c0de6494:	1880      	adds	r0, r0, r2
c0de6496:	7802      	ldrb	r2, [r0, #0]
c0de6498:	207f      	movs	r0, #127	; 0x7f
c0de649a:	4001      	ands	r1, r0
c0de649c:	2001      	movs	r0, #1
c0de649e:	4088      	lsls	r0, r1
c0de64a0:	4010      	ands	r0, r2
c0de64a2:	4770      	bx	lr
c0de64a4:	00000a24 	.word	0x00000a24
c0de64a8:	00000a20 	.word	0x00000a20

c0de64ac <USBD_LL_SetUSBAddress>:
c0de64ac:	b510      	push	{r4, lr}
c0de64ae:	b082      	sub	sp, #8
c0de64b0:	4668      	mov	r0, sp
c0de64b2:	7101      	strb	r1, [r0, #4]
c0de64b4:	2103      	movs	r1, #3
c0de64b6:	70c1      	strb	r1, [r0, #3]
c0de64b8:	2102      	movs	r1, #2
c0de64ba:	7081      	strb	r1, [r0, #2]
c0de64bc:	2400      	movs	r4, #0
c0de64be:	7044      	strb	r4, [r0, #1]
c0de64c0:	214f      	movs	r1, #79	; 0x4f
c0de64c2:	7001      	strb	r1, [r0, #0]
c0de64c4:	2105      	movs	r1, #5
c0de64c6:	f7ff f8c5 	bl	c0de5654 <io_seph_send>
c0de64ca:	4620      	mov	r0, r4
c0de64cc:	b002      	add	sp, #8
c0de64ce:	bd10      	pop	{r4, pc}

c0de64d0 <USBD_LL_Transmit>:
c0de64d0:	b5b0      	push	{r4, r5, r7, lr}
c0de64d2:	b082      	sub	sp, #8
c0de64d4:	461c      	mov	r4, r3
c0de64d6:	4615      	mov	r5, r2
c0de64d8:	4668      	mov	r0, sp
c0de64da:	7143      	strb	r3, [r0, #5]
c0de64dc:	2220      	movs	r2, #32
c0de64de:	7102      	strb	r2, [r0, #4]
c0de64e0:	70c1      	strb	r1, [r0, #3]
c0de64e2:	2150      	movs	r1, #80	; 0x50
c0de64e4:	7001      	strb	r1, [r0, #0]
c0de64e6:	1cd9      	adds	r1, r3, #3
c0de64e8:	7081      	strb	r1, [r0, #2]
c0de64ea:	0a09      	lsrs	r1, r1, #8
c0de64ec:	7041      	strb	r1, [r0, #1]
c0de64ee:	2106      	movs	r1, #6
c0de64f0:	f7ff f8b0 	bl	c0de5654 <io_seph_send>
c0de64f4:	4628      	mov	r0, r5
c0de64f6:	4621      	mov	r1, r4
c0de64f8:	f7ff f8ac 	bl	c0de5654 <io_seph_send>
c0de64fc:	2000      	movs	r0, #0
c0de64fe:	b002      	add	sp, #8
c0de6500:	bdb0      	pop	{r4, r5, r7, pc}

c0de6502 <USBD_LL_PrepareReceive>:
c0de6502:	b510      	push	{r4, lr}
c0de6504:	b082      	sub	sp, #8
c0de6506:	4668      	mov	r0, sp
c0de6508:	7142      	strb	r2, [r0, #5]
c0de650a:	2230      	movs	r2, #48	; 0x30
c0de650c:	7102      	strb	r2, [r0, #4]
c0de650e:	70c1      	strb	r1, [r0, #3]
c0de6510:	2103      	movs	r1, #3
c0de6512:	7081      	strb	r1, [r0, #2]
c0de6514:	2400      	movs	r4, #0
c0de6516:	7044      	strb	r4, [r0, #1]
c0de6518:	2150      	movs	r1, #80	; 0x50
c0de651a:	7001      	strb	r1, [r0, #0]
c0de651c:	2106      	movs	r1, #6
c0de651e:	f7ff f899 	bl	c0de5654 <io_seph_send>
c0de6522:	4620      	mov	r0, r4
c0de6524:	b002      	add	sp, #8
c0de6526:	bd10      	pop	{r4, pc}

c0de6528 <USBD_Init>:
c0de6528:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de652a:	b081      	sub	sp, #4
c0de652c:	2800      	cmp	r0, #0
c0de652e:	d014      	beq.n	c0de655a <USBD_Init+0x32>
c0de6530:	4615      	mov	r5, r2
c0de6532:	460e      	mov	r6, r1
c0de6534:	4604      	mov	r4, r0
c0de6536:	4607      	mov	r7, r0
c0de6538:	37dc      	adds	r7, #220	; 0xdc
c0de653a:	2045      	movs	r0, #69	; 0x45
c0de653c:	0081      	lsls	r1, r0, #2
c0de653e:	4620      	mov	r0, r4
c0de6540:	f002 fa0c 	bl	c0de895c <__aeabi_memclr>
c0de6544:	2e00      	cmp	r6, #0
c0de6546:	d000      	beq.n	c0de654a <USBD_Init+0x22>
c0de6548:	617e      	str	r6, [r7, #20]
c0de654a:	7025      	strb	r5, [r4, #0]
c0de654c:	2001      	movs	r0, #1
c0de654e:	7038      	strb	r0, [r7, #0]
c0de6550:	4620      	mov	r0, r4
c0de6552:	f7ff fecd 	bl	c0de62f0 <USBD_LL_Init>
c0de6556:	2000      	movs	r0, #0
c0de6558:	e000      	b.n	c0de655c <USBD_Init+0x34>
c0de655a:	2002      	movs	r0, #2
c0de655c:	b001      	add	sp, #4
c0de655e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6560 <USBD_DeInit>:
c0de6560:	b5b0      	push	{r4, r5, r7, lr}
c0de6562:	4604      	mov	r4, r0
c0de6564:	20dc      	movs	r0, #220	; 0xdc
c0de6566:	2101      	movs	r1, #1
c0de6568:	5421      	strb	r1, [r4, r0]
c0de656a:	2017      	movs	r0, #23
c0de656c:	43c5      	mvns	r5, r0
c0de656e:	1960      	adds	r0, r4, r5
c0de6570:	2143      	movs	r1, #67	; 0x43
c0de6572:	0089      	lsls	r1, r1, #2
c0de6574:	5840      	ldr	r0, [r0, r1]
c0de6576:	2800      	cmp	r0, #0
c0de6578:	d006      	beq.n	c0de6588 <USBD_DeInit+0x28>
c0de657a:	6840      	ldr	r0, [r0, #4]
c0de657c:	f7fe fbac 	bl	c0de4cd8 <pic>
c0de6580:	4602      	mov	r2, r0
c0de6582:	7921      	ldrb	r1, [r4, #4]
c0de6584:	4620      	mov	r0, r4
c0de6586:	4790      	blx	r2
c0de6588:	3508      	adds	r5, #8
c0de658a:	d1f0      	bne.n	c0de656e <USBD_DeInit+0xe>
c0de658c:	4620      	mov	r0, r4
c0de658e:	f7ff feeb 	bl	c0de6368 <USBD_LL_Stop>
c0de6592:	4620      	mov	r0, r4
c0de6594:	f7ff feb8 	bl	c0de6308 <USBD_LL_DeInit>
c0de6598:	2000      	movs	r0, #0
c0de659a:	bdb0      	pop	{r4, r5, r7, pc}

c0de659c <USBD_RegisterClassForInterface>:
c0de659c:	2a00      	cmp	r2, #0
c0de659e:	d008      	beq.n	c0de65b2 <USBD_RegisterClassForInterface+0x16>
c0de65a0:	4603      	mov	r3, r0
c0de65a2:	2000      	movs	r0, #0
c0de65a4:	2b02      	cmp	r3, #2
c0de65a6:	d803      	bhi.n	c0de65b0 <USBD_RegisterClassForInterface+0x14>
c0de65a8:	00db      	lsls	r3, r3, #3
c0de65aa:	18c9      	adds	r1, r1, r3
c0de65ac:	23f4      	movs	r3, #244	; 0xf4
c0de65ae:	50ca      	str	r2, [r1, r3]
c0de65b0:	4770      	bx	lr
c0de65b2:	2002      	movs	r0, #2
c0de65b4:	4770      	bx	lr

c0de65b6 <USBD_Start>:
c0de65b6:	b580      	push	{r7, lr}
c0de65b8:	f7ff feba 	bl	c0de6330 <USBD_LL_Start>
c0de65bc:	2000      	movs	r0, #0
c0de65be:	bd80      	pop	{r7, pc}

c0de65c0 <USBD_SetClassConfig>:
c0de65c0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de65c2:	b081      	sub	sp, #4
c0de65c4:	460c      	mov	r4, r1
c0de65c6:	4605      	mov	r5, r0
c0de65c8:	2600      	movs	r6, #0
c0de65ca:	27f4      	movs	r7, #244	; 0xf4
c0de65cc:	4628      	mov	r0, r5
c0de65ce:	4631      	mov	r1, r6
c0de65d0:	f000 f961 	bl	c0de6896 <usbd_is_valid_intf>
c0de65d4:	2800      	cmp	r0, #0
c0de65d6:	d007      	beq.n	c0de65e8 <USBD_SetClassConfig+0x28>
c0de65d8:	59e8      	ldr	r0, [r5, r7]
c0de65da:	6800      	ldr	r0, [r0, #0]
c0de65dc:	f7fe fb7c 	bl	c0de4cd8 <pic>
c0de65e0:	4602      	mov	r2, r0
c0de65e2:	4628      	mov	r0, r5
c0de65e4:	4621      	mov	r1, r4
c0de65e6:	4790      	blx	r2
c0de65e8:	3708      	adds	r7, #8
c0de65ea:	1c76      	adds	r6, r6, #1
c0de65ec:	2e03      	cmp	r6, #3
c0de65ee:	d1ed      	bne.n	c0de65cc <USBD_SetClassConfig+0xc>
c0de65f0:	2000      	movs	r0, #0
c0de65f2:	b001      	add	sp, #4
c0de65f4:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de65f6 <USBD_ClrClassConfig>:
c0de65f6:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de65f8:	b081      	sub	sp, #4
c0de65fa:	460c      	mov	r4, r1
c0de65fc:	4605      	mov	r5, r0
c0de65fe:	2600      	movs	r6, #0
c0de6600:	27f4      	movs	r7, #244	; 0xf4
c0de6602:	4628      	mov	r0, r5
c0de6604:	4631      	mov	r1, r6
c0de6606:	f000 f946 	bl	c0de6896 <usbd_is_valid_intf>
c0de660a:	2800      	cmp	r0, #0
c0de660c:	d007      	beq.n	c0de661e <USBD_ClrClassConfig+0x28>
c0de660e:	59e8      	ldr	r0, [r5, r7]
c0de6610:	6840      	ldr	r0, [r0, #4]
c0de6612:	f7fe fb61 	bl	c0de4cd8 <pic>
c0de6616:	4602      	mov	r2, r0
c0de6618:	4628      	mov	r0, r5
c0de661a:	4621      	mov	r1, r4
c0de661c:	4790      	blx	r2
c0de661e:	3708      	adds	r7, #8
c0de6620:	1c76      	adds	r6, r6, #1
c0de6622:	2e03      	cmp	r6, #3
c0de6624:	d1ed      	bne.n	c0de6602 <USBD_ClrClassConfig+0xc>
c0de6626:	2000      	movs	r0, #0
c0de6628:	b001      	add	sp, #4
c0de662a:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de662c <USBD_LL_SetupStage>:
c0de662c:	b570      	push	{r4, r5, r6, lr}
c0de662e:	4604      	mov	r4, r0
c0de6630:	4606      	mov	r6, r0
c0de6632:	36d4      	adds	r6, #212	; 0xd4
c0de6634:	4635      	mov	r5, r6
c0de6636:	3514      	adds	r5, #20
c0de6638:	4628      	mov	r0, r5
c0de663a:	f000 fb63 	bl	c0de6d04 <USBD_ParseSetupRequest>
c0de663e:	20d4      	movs	r0, #212	; 0xd4
c0de6640:	2101      	movs	r1, #1
c0de6642:	5021      	str	r1, [r4, r0]
c0de6644:	20ee      	movs	r0, #238	; 0xee
c0de6646:	5a20      	ldrh	r0, [r4, r0]
c0de6648:	6070      	str	r0, [r6, #4]
c0de664a:	7d31      	ldrb	r1, [r6, #20]
c0de664c:	201f      	movs	r0, #31
c0de664e:	4008      	ands	r0, r1
c0de6650:	2802      	cmp	r0, #2
c0de6652:	d008      	beq.n	c0de6666 <USBD_LL_SetupStage+0x3a>
c0de6654:	2801      	cmp	r0, #1
c0de6656:	d00b      	beq.n	c0de6670 <USBD_LL_SetupStage+0x44>
c0de6658:	2800      	cmp	r0, #0
c0de665a:	d10e      	bne.n	c0de667a <USBD_LL_SetupStage+0x4e>
c0de665c:	4620      	mov	r0, r4
c0de665e:	4629      	mov	r1, r5
c0de6660:	f000 f924 	bl	c0de68ac <USBD_StdDevReq>
c0de6664:	e00e      	b.n	c0de6684 <USBD_LL_SetupStage+0x58>
c0de6666:	4620      	mov	r0, r4
c0de6668:	4629      	mov	r1, r5
c0de666a:	f000 fac8 	bl	c0de6bfe <USBD_StdEPReq>
c0de666e:	e009      	b.n	c0de6684 <USBD_LL_SetupStage+0x58>
c0de6670:	4620      	mov	r0, r4
c0de6672:	4629      	mov	r1, r5
c0de6674:	f000 fa9f 	bl	c0de6bb6 <USBD_StdItfReq>
c0de6678:	e004      	b.n	c0de6684 <USBD_LL_SetupStage+0x58>
c0de667a:	2080      	movs	r0, #128	; 0x80
c0de667c:	4001      	ands	r1, r0
c0de667e:	4620      	mov	r0, r4
c0de6680:	f7ff feb6 	bl	c0de63f0 <USBD_LL_StallEP>
c0de6684:	2000      	movs	r0, #0
c0de6686:	bd70      	pop	{r4, r5, r6, pc}

c0de6688 <USBD_LL_DataOutStage>:
c0de6688:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de668a:	b083      	sub	sp, #12
c0de668c:	9202      	str	r2, [sp, #8]
c0de668e:	4604      	mov	r4, r0
c0de6690:	4606      	mov	r6, r0
c0de6692:	36dc      	adds	r6, #220	; 0xdc
c0de6694:	9101      	str	r1, [sp, #4]
c0de6696:	2900      	cmp	r1, #0
c0de6698:	d01a      	beq.n	c0de66d0 <USBD_LL_DataOutStage+0x48>
c0de669a:	2700      	movs	r7, #0
c0de669c:	25f4      	movs	r5, #244	; 0xf4
c0de669e:	4620      	mov	r0, r4
c0de66a0:	4639      	mov	r1, r7
c0de66a2:	f000 f8f8 	bl	c0de6896 <usbd_is_valid_intf>
c0de66a6:	2800      	cmp	r0, #0
c0de66a8:	d00d      	beq.n	c0de66c6 <USBD_LL_DataOutStage+0x3e>
c0de66aa:	5960      	ldr	r0, [r4, r5]
c0de66ac:	6980      	ldr	r0, [r0, #24]
c0de66ae:	2800      	cmp	r0, #0
c0de66b0:	d009      	beq.n	c0de66c6 <USBD_LL_DataOutStage+0x3e>
c0de66b2:	7831      	ldrb	r1, [r6, #0]
c0de66b4:	2903      	cmp	r1, #3
c0de66b6:	d106      	bne.n	c0de66c6 <USBD_LL_DataOutStage+0x3e>
c0de66b8:	f7fe fb0e 	bl	c0de4cd8 <pic>
c0de66bc:	4603      	mov	r3, r0
c0de66be:	4620      	mov	r0, r4
c0de66c0:	9901      	ldr	r1, [sp, #4]
c0de66c2:	9a02      	ldr	r2, [sp, #8]
c0de66c4:	4798      	blx	r3
c0de66c6:	3508      	adds	r5, #8
c0de66c8:	1c7f      	adds	r7, r7, #1
c0de66ca:	2f03      	cmp	r7, #3
c0de66cc:	d1e7      	bne.n	c0de669e <USBD_LL_DataOutStage+0x16>
c0de66ce:	e02e      	b.n	c0de672e <USBD_LL_DataOutStage+0xa6>
c0de66d0:	4620      	mov	r0, r4
c0de66d2:	3080      	adds	r0, #128	; 0x80
c0de66d4:	6d41      	ldr	r1, [r0, #84]	; 0x54
c0de66d6:	2903      	cmp	r1, #3
c0de66d8:	d129      	bne.n	c0de672e <USBD_LL_DataOutStage+0xa6>
c0de66da:	6800      	ldr	r0, [r0, #0]
c0de66dc:	6fe1      	ldr	r1, [r4, #124]	; 0x7c
c0de66de:	4281      	cmp	r1, r0
c0de66e0:	d90a      	bls.n	c0de66f8 <USBD_LL_DataOutStage+0x70>
c0de66e2:	1a09      	subs	r1, r1, r0
c0de66e4:	67e1      	str	r1, [r4, #124]	; 0x7c
c0de66e6:	4281      	cmp	r1, r0
c0de66e8:	d300      	bcc.n	c0de66ec <USBD_LL_DataOutStage+0x64>
c0de66ea:	4601      	mov	r1, r0
c0de66ec:	b28a      	uxth	r2, r1
c0de66ee:	4620      	mov	r0, r4
c0de66f0:	9902      	ldr	r1, [sp, #8]
c0de66f2:	f000 fdbf 	bl	c0de7274 <USBD_CtlContinueRx>
c0de66f6:	e01a      	b.n	c0de672e <USBD_LL_DataOutStage+0xa6>
c0de66f8:	2500      	movs	r5, #0
c0de66fa:	27f4      	movs	r7, #244	; 0xf4
c0de66fc:	4620      	mov	r0, r4
c0de66fe:	4629      	mov	r1, r5
c0de6700:	f000 f8c9 	bl	c0de6896 <usbd_is_valid_intf>
c0de6704:	2800      	cmp	r0, #0
c0de6706:	d00b      	beq.n	c0de6720 <USBD_LL_DataOutStage+0x98>
c0de6708:	59e0      	ldr	r0, [r4, r7]
c0de670a:	6900      	ldr	r0, [r0, #16]
c0de670c:	2800      	cmp	r0, #0
c0de670e:	d007      	beq.n	c0de6720 <USBD_LL_DataOutStage+0x98>
c0de6710:	7831      	ldrb	r1, [r6, #0]
c0de6712:	2903      	cmp	r1, #3
c0de6714:	d104      	bne.n	c0de6720 <USBD_LL_DataOutStage+0x98>
c0de6716:	f7fe fadf 	bl	c0de4cd8 <pic>
c0de671a:	4601      	mov	r1, r0
c0de671c:	4620      	mov	r0, r4
c0de671e:	4788      	blx	r1
c0de6720:	3708      	adds	r7, #8
c0de6722:	1c6d      	adds	r5, r5, #1
c0de6724:	2d03      	cmp	r5, #3
c0de6726:	d1e9      	bne.n	c0de66fc <USBD_LL_DataOutStage+0x74>
c0de6728:	4620      	mov	r0, r4
c0de672a:	f000 fdaa 	bl	c0de7282 <USBD_CtlSendStatus>
c0de672e:	2000      	movs	r0, #0
c0de6730:	b003      	add	sp, #12
c0de6732:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6734 <USBD_LL_DataInStage>:
c0de6734:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6736:	b081      	sub	sp, #4
c0de6738:	4604      	mov	r4, r0
c0de673a:	4607      	mov	r7, r0
c0de673c:	37d4      	adds	r7, #212	; 0xd4
c0de673e:	9100      	str	r1, [sp, #0]
c0de6740:	2900      	cmp	r1, #0
c0de6742:	d01a      	beq.n	c0de677a <USBD_LL_DataInStage+0x46>
c0de6744:	463d      	mov	r5, r7
c0de6746:	2600      	movs	r6, #0
c0de6748:	27f4      	movs	r7, #244	; 0xf4
c0de674a:	4620      	mov	r0, r4
c0de674c:	4631      	mov	r1, r6
c0de674e:	f000 f8a2 	bl	c0de6896 <usbd_is_valid_intf>
c0de6752:	2800      	cmp	r0, #0
c0de6754:	d00c      	beq.n	c0de6770 <USBD_LL_DataInStage+0x3c>
c0de6756:	59e0      	ldr	r0, [r4, r7]
c0de6758:	6940      	ldr	r0, [r0, #20]
c0de675a:	2800      	cmp	r0, #0
c0de675c:	d008      	beq.n	c0de6770 <USBD_LL_DataInStage+0x3c>
c0de675e:	7a29      	ldrb	r1, [r5, #8]
c0de6760:	2903      	cmp	r1, #3
c0de6762:	d105      	bne.n	c0de6770 <USBD_LL_DataInStage+0x3c>
c0de6764:	f7fe fab8 	bl	c0de4cd8 <pic>
c0de6768:	4602      	mov	r2, r0
c0de676a:	4620      	mov	r0, r4
c0de676c:	9900      	ldr	r1, [sp, #0]
c0de676e:	4790      	blx	r2
c0de6770:	3708      	adds	r7, #8
c0de6772:	1c76      	adds	r6, r6, #1
c0de6774:	2e03      	cmp	r6, #3
c0de6776:	d1e8      	bne.n	c0de674a <USBD_LL_DataInStage+0x16>
c0de6778:	e047      	b.n	c0de680a <USBD_LL_DataInStage+0xd6>
c0de677a:	6838      	ldr	r0, [r7, #0]
c0de677c:	2802      	cmp	r0, #2
c0de677e:	d13e      	bne.n	c0de67fe <USBD_LL_DataInStage+0xca>
c0de6780:	69e0      	ldr	r0, [r4, #28]
c0de6782:	6a25      	ldr	r5, [r4, #32]
c0de6784:	42a8      	cmp	r0, r5
c0de6786:	d909      	bls.n	c0de679c <USBD_LL_DataInStage+0x68>
c0de6788:	1b40      	subs	r0, r0, r5
c0de678a:	61e0      	str	r0, [r4, #28]
c0de678c:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
c0de678e:	1949      	adds	r1, r1, r5
c0de6790:	63f9      	str	r1, [r7, #60]	; 0x3c
c0de6792:	b282      	uxth	r2, r0
c0de6794:	4620      	mov	r0, r4
c0de6796:	f000 fd5f 	bl	c0de7258 <USBD_CtlContinueSendData>
c0de679a:	e030      	b.n	c0de67fe <USBD_LL_DataInStage+0xca>
c0de679c:	2d00      	cmp	r5, #0
c0de679e:	d013      	beq.n	c0de67c8 <USBD_LL_DataInStage+0x94>
c0de67a0:	69a6      	ldr	r6, [r4, #24]
c0de67a2:	4630      	mov	r0, r6
c0de67a4:	4629      	mov	r1, r5
c0de67a6:	f001 ff81 	bl	c0de86ac <__aeabi_uidivmod>
c0de67aa:	42ae      	cmp	r6, r5
c0de67ac:	d30c      	bcc.n	c0de67c8 <USBD_LL_DataInStage+0x94>
c0de67ae:	2900      	cmp	r1, #0
c0de67b0:	d10a      	bne.n	c0de67c8 <USBD_LL_DataInStage+0x94>
c0de67b2:	6878      	ldr	r0, [r7, #4]
c0de67b4:	4286      	cmp	r6, r0
c0de67b6:	d207      	bcs.n	c0de67c8 <USBD_LL_DataInStage+0x94>
c0de67b8:	2500      	movs	r5, #0
c0de67ba:	4620      	mov	r0, r4
c0de67bc:	4629      	mov	r1, r5
c0de67be:	462a      	mov	r2, r5
c0de67c0:	f000 fd4a 	bl	c0de7258 <USBD_CtlContinueSendData>
c0de67c4:	607d      	str	r5, [r7, #4]
c0de67c6:	e01a      	b.n	c0de67fe <USBD_LL_DataInStage+0xca>
c0de67c8:	2500      	movs	r5, #0
c0de67ca:	26f4      	movs	r6, #244	; 0xf4
c0de67cc:	4620      	mov	r0, r4
c0de67ce:	4629      	mov	r1, r5
c0de67d0:	f000 f861 	bl	c0de6896 <usbd_is_valid_intf>
c0de67d4:	2800      	cmp	r0, #0
c0de67d6:	d00b      	beq.n	c0de67f0 <USBD_LL_DataInStage+0xbc>
c0de67d8:	59a0      	ldr	r0, [r4, r6]
c0de67da:	68c0      	ldr	r0, [r0, #12]
c0de67dc:	2800      	cmp	r0, #0
c0de67de:	d007      	beq.n	c0de67f0 <USBD_LL_DataInStage+0xbc>
c0de67e0:	7a39      	ldrb	r1, [r7, #8]
c0de67e2:	2903      	cmp	r1, #3
c0de67e4:	d104      	bne.n	c0de67f0 <USBD_LL_DataInStage+0xbc>
c0de67e6:	f7fe fa77 	bl	c0de4cd8 <pic>
c0de67ea:	4601      	mov	r1, r0
c0de67ec:	4620      	mov	r0, r4
c0de67ee:	4788      	blx	r1
c0de67f0:	3608      	adds	r6, #8
c0de67f2:	1c6d      	adds	r5, r5, #1
c0de67f4:	2d03      	cmp	r5, #3
c0de67f6:	d1e9      	bne.n	c0de67cc <USBD_LL_DataInStage+0x98>
c0de67f8:	4620      	mov	r0, r4
c0de67fa:	f000 fd4e 	bl	c0de729a <USBD_CtlReceiveStatus>
c0de67fe:	7b38      	ldrb	r0, [r7, #12]
c0de6800:	2801      	cmp	r0, #1
c0de6802:	d102      	bne.n	c0de680a <USBD_LL_DataInStage+0xd6>
c0de6804:	4639      	mov	r1, r7
c0de6806:	2000      	movs	r0, #0
c0de6808:	7338      	strb	r0, [r7, #12]
c0de680a:	2000      	movs	r0, #0
c0de680c:	b001      	add	sp, #4
c0de680e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6810 <USBD_LL_Reset>:
c0de6810:	b570      	push	{r4, r5, r6, lr}
c0de6812:	4604      	mov	r4, r0
c0de6814:	20dc      	movs	r0, #220	; 0xdc
c0de6816:	2101      	movs	r1, #1
c0de6818:	5421      	strb	r1, [r4, r0]
c0de681a:	2080      	movs	r0, #128	; 0x80
c0de681c:	2140      	movs	r1, #64	; 0x40
c0de681e:	5021      	str	r1, [r4, r0]
c0de6820:	6221      	str	r1, [r4, #32]
c0de6822:	2500      	movs	r5, #0
c0de6824:	26f4      	movs	r6, #244	; 0xf4
c0de6826:	4620      	mov	r0, r4
c0de6828:	4629      	mov	r1, r5
c0de682a:	f000 f834 	bl	c0de6896 <usbd_is_valid_intf>
c0de682e:	2800      	cmp	r0, #0
c0de6830:	d007      	beq.n	c0de6842 <USBD_LL_Reset+0x32>
c0de6832:	59a0      	ldr	r0, [r4, r6]
c0de6834:	6840      	ldr	r0, [r0, #4]
c0de6836:	f7fe fa4f 	bl	c0de4cd8 <pic>
c0de683a:	4602      	mov	r2, r0
c0de683c:	7921      	ldrb	r1, [r4, #4]
c0de683e:	4620      	mov	r0, r4
c0de6840:	4790      	blx	r2
c0de6842:	3608      	adds	r6, #8
c0de6844:	1c6d      	adds	r5, r5, #1
c0de6846:	2d03      	cmp	r5, #3
c0de6848:	d1ed      	bne.n	c0de6826 <USBD_LL_Reset+0x16>
c0de684a:	2000      	movs	r0, #0
c0de684c:	bd70      	pop	{r4, r5, r6, pc}

c0de684e <USBD_LL_SetSpeed>:
c0de684e:	7401      	strb	r1, [r0, #16]
c0de6850:	2000      	movs	r0, #0
c0de6852:	4770      	bx	lr

c0de6854 <USBD_LL_Suspend>:
c0de6854:	2000      	movs	r0, #0
c0de6856:	4770      	bx	lr

c0de6858 <USBD_LL_Resume>:
c0de6858:	2000      	movs	r0, #0
c0de685a:	4770      	bx	lr

c0de685c <USBD_LL_SOF>:
c0de685c:	b570      	push	{r4, r5, r6, lr}
c0de685e:	4604      	mov	r4, r0
c0de6860:	20dc      	movs	r0, #220	; 0xdc
c0de6862:	5c20      	ldrb	r0, [r4, r0]
c0de6864:	2803      	cmp	r0, #3
c0de6866:	d114      	bne.n	c0de6892 <USBD_LL_SOF+0x36>
c0de6868:	2500      	movs	r5, #0
c0de686a:	26f4      	movs	r6, #244	; 0xf4
c0de686c:	4620      	mov	r0, r4
c0de686e:	4629      	mov	r1, r5
c0de6870:	f000 f811 	bl	c0de6896 <usbd_is_valid_intf>
c0de6874:	2800      	cmp	r0, #0
c0de6876:	d008      	beq.n	c0de688a <USBD_LL_SOF+0x2e>
c0de6878:	59a0      	ldr	r0, [r4, r6]
c0de687a:	69c0      	ldr	r0, [r0, #28]
c0de687c:	2800      	cmp	r0, #0
c0de687e:	d004      	beq.n	c0de688a <USBD_LL_SOF+0x2e>
c0de6880:	f7fe fa2a 	bl	c0de4cd8 <pic>
c0de6884:	4601      	mov	r1, r0
c0de6886:	4620      	mov	r0, r4
c0de6888:	4788      	blx	r1
c0de688a:	3608      	adds	r6, #8
c0de688c:	1c6d      	adds	r5, r5, #1
c0de688e:	2d03      	cmp	r5, #3
c0de6890:	d1ec      	bne.n	c0de686c <USBD_LL_SOF+0x10>
c0de6892:	2000      	movs	r0, #0
c0de6894:	bd70      	pop	{r4, r5, r6, pc}

c0de6896 <usbd_is_valid_intf>:
c0de6896:	2902      	cmp	r1, #2
c0de6898:	d806      	bhi.n	c0de68a8 <usbd_is_valid_intf+0x12>
c0de689a:	00c9      	lsls	r1, r1, #3
c0de689c:	1840      	adds	r0, r0, r1
c0de689e:	21f4      	movs	r1, #244	; 0xf4
c0de68a0:	5840      	ldr	r0, [r0, r1]
c0de68a2:	1e41      	subs	r1, r0, #1
c0de68a4:	4188      	sbcs	r0, r1
c0de68a6:	4770      	bx	lr
c0de68a8:	2000      	movs	r0, #0
c0de68aa:	4770      	bx	lr

c0de68ac <USBD_StdDevReq>:
c0de68ac:	b580      	push	{r7, lr}
c0de68ae:	784a      	ldrb	r2, [r1, #1]
c0de68b0:	2a04      	cmp	r2, #4
c0de68b2:	dd08      	ble.n	c0de68c6 <USBD_StdDevReq+0x1a>
c0de68b4:	2a07      	cmp	r2, #7
c0de68b6:	dc0f      	bgt.n	c0de68d8 <USBD_StdDevReq+0x2c>
c0de68b8:	2a05      	cmp	r2, #5
c0de68ba:	d014      	beq.n	c0de68e6 <USBD_StdDevReq+0x3a>
c0de68bc:	2a06      	cmp	r2, #6
c0de68be:	d11b      	bne.n	c0de68f8 <USBD_StdDevReq+0x4c>
c0de68c0:	f000 f821 	bl	c0de6906 <USBD_GetDescriptor>
c0de68c4:	e01d      	b.n	c0de6902 <USBD_StdDevReq+0x56>
c0de68c6:	2a00      	cmp	r2, #0
c0de68c8:	d010      	beq.n	c0de68ec <USBD_StdDevReq+0x40>
c0de68ca:	2a01      	cmp	r2, #1
c0de68cc:	d017      	beq.n	c0de68fe <USBD_StdDevReq+0x52>
c0de68ce:	2a03      	cmp	r2, #3
c0de68d0:	d112      	bne.n	c0de68f8 <USBD_StdDevReq+0x4c>
c0de68d2:	f000 f92a 	bl	c0de6b2a <USBD_SetFeature>
c0de68d6:	e014      	b.n	c0de6902 <USBD_StdDevReq+0x56>
c0de68d8:	2a08      	cmp	r2, #8
c0de68da:	d00a      	beq.n	c0de68f2 <USBD_StdDevReq+0x46>
c0de68dc:	2a09      	cmp	r2, #9
c0de68de:	d10b      	bne.n	c0de68f8 <USBD_StdDevReq+0x4c>
c0de68e0:	f000 f8b1 	bl	c0de6a46 <USBD_SetConfig>
c0de68e4:	e00d      	b.n	c0de6902 <USBD_StdDevReq+0x56>
c0de68e6:	f000 f88b 	bl	c0de6a00 <USBD_SetAddress>
c0de68ea:	e00a      	b.n	c0de6902 <USBD_StdDevReq+0x56>
c0de68ec:	f000 f8f9 	bl	c0de6ae2 <USBD_GetStatus>
c0de68f0:	e007      	b.n	c0de6902 <USBD_StdDevReq+0x56>
c0de68f2:	f000 f8df 	bl	c0de6ab4 <USBD_GetConfig>
c0de68f6:	e004      	b.n	c0de6902 <USBD_StdDevReq+0x56>
c0de68f8:	f000 fbe0 	bl	c0de70bc <USBD_CtlError>
c0de68fc:	e001      	b.n	c0de6902 <USBD_StdDevReq+0x56>
c0de68fe:	f000 f931 	bl	c0de6b64 <USBD_ClrFeature>
c0de6902:	2000      	movs	r0, #0
c0de6904:	bd80      	pop	{r7, pc}

c0de6906 <USBD_GetDescriptor>:
c0de6906:	b5b0      	push	{r4, r5, r7, lr}
c0de6908:	b082      	sub	sp, #8
c0de690a:	460d      	mov	r5, r1
c0de690c:	4604      	mov	r4, r0
c0de690e:	a801      	add	r0, sp, #4
c0de6910:	2100      	movs	r1, #0
c0de6912:	8001      	strh	r1, [r0, #0]
c0de6914:	4620      	mov	r0, r4
c0de6916:	30f0      	adds	r0, #240	; 0xf0
c0de6918:	886b      	ldrh	r3, [r5, #2]
c0de691a:	0a1a      	lsrs	r2, r3, #8
c0de691c:	2a05      	cmp	r2, #5
c0de691e:	dc11      	bgt.n	c0de6944 <USBD_GetDescriptor+0x3e>
c0de6920:	2a01      	cmp	r2, #1
c0de6922:	d01a      	beq.n	c0de695a <USBD_GetDescriptor+0x54>
c0de6924:	2a02      	cmp	r2, #2
c0de6926:	d021      	beq.n	c0de696c <USBD_GetDescriptor+0x66>
c0de6928:	2a03      	cmp	r2, #3
c0de692a:	d132      	bne.n	c0de6992 <USBD_GetDescriptor+0x8c>
c0de692c:	b2d9      	uxtb	r1, r3
c0de692e:	2902      	cmp	r1, #2
c0de6930:	dc34      	bgt.n	c0de699c <USBD_GetDescriptor+0x96>
c0de6932:	2900      	cmp	r1, #0
c0de6934:	d058      	beq.n	c0de69e8 <USBD_GetDescriptor+0xe2>
c0de6936:	2901      	cmp	r1, #1
c0de6938:	d05c      	beq.n	c0de69f4 <USBD_GetDescriptor+0xee>
c0de693a:	2902      	cmp	r1, #2
c0de693c:	d129      	bne.n	c0de6992 <USBD_GetDescriptor+0x8c>
c0de693e:	6800      	ldr	r0, [r0, #0]
c0de6940:	68c0      	ldr	r0, [r0, #12]
c0de6942:	e00c      	b.n	c0de695e <USBD_GetDescriptor+0x58>
c0de6944:	2a06      	cmp	r2, #6
c0de6946:	d019      	beq.n	c0de697c <USBD_GetDescriptor+0x76>
c0de6948:	2a07      	cmp	r2, #7
c0de694a:	d01f      	beq.n	c0de698c <USBD_GetDescriptor+0x86>
c0de694c:	2a0f      	cmp	r2, #15
c0de694e:	d120      	bne.n	c0de6992 <USBD_GetDescriptor+0x8c>
c0de6950:	6800      	ldr	r0, [r0, #0]
c0de6952:	69c0      	ldr	r0, [r0, #28]
c0de6954:	2800      	cmp	r0, #0
c0de6956:	d102      	bne.n	c0de695e <USBD_GetDescriptor+0x58>
c0de6958:	e01b      	b.n	c0de6992 <USBD_GetDescriptor+0x8c>
c0de695a:	6800      	ldr	r0, [r0, #0]
c0de695c:	6800      	ldr	r0, [r0, #0]
c0de695e:	f7fe f9bb 	bl	c0de4cd8 <pic>
c0de6962:	4602      	mov	r2, r0
c0de6964:	7c20      	ldrb	r0, [r4, #16]
c0de6966:	a901      	add	r1, sp, #4
c0de6968:	4790      	blx	r2
c0de696a:	e02b      	b.n	c0de69c4 <USBD_GetDescriptor+0xbe>
c0de696c:	6840      	ldr	r0, [r0, #4]
c0de696e:	2800      	cmp	r0, #0
c0de6970:	d029      	beq.n	c0de69c6 <USBD_GetDescriptor+0xc0>
c0de6972:	7c21      	ldrb	r1, [r4, #16]
c0de6974:	2900      	cmp	r1, #0
c0de6976:	d01f      	beq.n	c0de69b8 <USBD_GetDescriptor+0xb2>
c0de6978:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
c0de697a:	e01e      	b.n	c0de69ba <USBD_GetDescriptor+0xb4>
c0de697c:	7c21      	ldrb	r1, [r4, #16]
c0de697e:	2900      	cmp	r1, #0
c0de6980:	d107      	bne.n	c0de6992 <USBD_GetDescriptor+0x8c>
c0de6982:	6840      	ldr	r0, [r0, #4]
c0de6984:	2800      	cmp	r0, #0
c0de6986:	d004      	beq.n	c0de6992 <USBD_GetDescriptor+0x8c>
c0de6988:	6b40      	ldr	r0, [r0, #52]	; 0x34
c0de698a:	e016      	b.n	c0de69ba <USBD_GetDescriptor+0xb4>
c0de698c:	7c21      	ldrb	r1, [r4, #16]
c0de698e:	2900      	cmp	r1, #0
c0de6990:	d00d      	beq.n	c0de69ae <USBD_GetDescriptor+0xa8>
c0de6992:	4620      	mov	r0, r4
c0de6994:	4629      	mov	r1, r5
c0de6996:	f000 fb91 	bl	c0de70bc <USBD_CtlError>
c0de699a:	e023      	b.n	c0de69e4 <USBD_GetDescriptor+0xde>
c0de699c:	2903      	cmp	r1, #3
c0de699e:	d026      	beq.n	c0de69ee <USBD_GetDescriptor+0xe8>
c0de69a0:	2904      	cmp	r1, #4
c0de69a2:	d02a      	beq.n	c0de69fa <USBD_GetDescriptor+0xf4>
c0de69a4:	2905      	cmp	r1, #5
c0de69a6:	d1f4      	bne.n	c0de6992 <USBD_GetDescriptor+0x8c>
c0de69a8:	6800      	ldr	r0, [r0, #0]
c0de69aa:	6980      	ldr	r0, [r0, #24]
c0de69ac:	e7d7      	b.n	c0de695e <USBD_GetDescriptor+0x58>
c0de69ae:	6840      	ldr	r0, [r0, #4]
c0de69b0:	2800      	cmp	r0, #0
c0de69b2:	d0ee      	beq.n	c0de6992 <USBD_GetDescriptor+0x8c>
c0de69b4:	6b00      	ldr	r0, [r0, #48]	; 0x30
c0de69b6:	e000      	b.n	c0de69ba <USBD_GetDescriptor+0xb4>
c0de69b8:	6a80      	ldr	r0, [r0, #40]	; 0x28
c0de69ba:	f7fe f98d 	bl	c0de4cd8 <pic>
c0de69be:	4601      	mov	r1, r0
c0de69c0:	a801      	add	r0, sp, #4
c0de69c2:	4788      	blx	r1
c0de69c4:	4601      	mov	r1, r0
c0de69c6:	a801      	add	r0, sp, #4
c0de69c8:	8802      	ldrh	r2, [r0, #0]
c0de69ca:	2a00      	cmp	r2, #0
c0de69cc:	d00a      	beq.n	c0de69e4 <USBD_GetDescriptor+0xde>
c0de69ce:	88e8      	ldrh	r0, [r5, #6]
c0de69d0:	2800      	cmp	r0, #0
c0de69d2:	d007      	beq.n	c0de69e4 <USBD_GetDescriptor+0xde>
c0de69d4:	4282      	cmp	r2, r0
c0de69d6:	d300      	bcc.n	c0de69da <USBD_GetDescriptor+0xd4>
c0de69d8:	4602      	mov	r2, r0
c0de69da:	a801      	add	r0, sp, #4
c0de69dc:	8002      	strh	r2, [r0, #0]
c0de69de:	4620      	mov	r0, r4
c0de69e0:	f000 fc24 	bl	c0de722c <USBD_CtlSendData>
c0de69e4:	b002      	add	sp, #8
c0de69e6:	bdb0      	pop	{r4, r5, r7, pc}
c0de69e8:	6800      	ldr	r0, [r0, #0]
c0de69ea:	6840      	ldr	r0, [r0, #4]
c0de69ec:	e7b7      	b.n	c0de695e <USBD_GetDescriptor+0x58>
c0de69ee:	6800      	ldr	r0, [r0, #0]
c0de69f0:	6900      	ldr	r0, [r0, #16]
c0de69f2:	e7b4      	b.n	c0de695e <USBD_GetDescriptor+0x58>
c0de69f4:	6800      	ldr	r0, [r0, #0]
c0de69f6:	6880      	ldr	r0, [r0, #8]
c0de69f8:	e7b1      	b.n	c0de695e <USBD_GetDescriptor+0x58>
c0de69fa:	6800      	ldr	r0, [r0, #0]
c0de69fc:	6940      	ldr	r0, [r0, #20]
c0de69fe:	e7ae      	b.n	c0de695e <USBD_GetDescriptor+0x58>

c0de6a00 <USBD_SetAddress>:
c0de6a00:	b570      	push	{r4, r5, r6, lr}
c0de6a02:	4604      	mov	r4, r0
c0de6a04:	8888      	ldrh	r0, [r1, #4]
c0de6a06:	2800      	cmp	r0, #0
c0de6a08:	d107      	bne.n	c0de6a1a <USBD_SetAddress+0x1a>
c0de6a0a:	88c8      	ldrh	r0, [r1, #6]
c0de6a0c:	2800      	cmp	r0, #0
c0de6a0e:	d104      	bne.n	c0de6a1a <USBD_SetAddress+0x1a>
c0de6a10:	4626      	mov	r6, r4
c0de6a12:	36dc      	adds	r6, #220	; 0xdc
c0de6a14:	7830      	ldrb	r0, [r6, #0]
c0de6a16:	2803      	cmp	r0, #3
c0de6a18:	d103      	bne.n	c0de6a22 <USBD_SetAddress+0x22>
c0de6a1a:	4620      	mov	r0, r4
c0de6a1c:	f000 fb4e 	bl	c0de70bc <USBD_CtlError>
c0de6a20:	bd70      	pop	{r4, r5, r6, pc}
c0de6a22:	7888      	ldrb	r0, [r1, #2]
c0de6a24:	257f      	movs	r5, #127	; 0x7f
c0de6a26:	4005      	ands	r5, r0
c0de6a28:	70b5      	strb	r5, [r6, #2]
c0de6a2a:	4620      	mov	r0, r4
c0de6a2c:	4629      	mov	r1, r5
c0de6a2e:	f7ff fd3d 	bl	c0de64ac <USBD_LL_SetUSBAddress>
c0de6a32:	4620      	mov	r0, r4
c0de6a34:	f000 fc25 	bl	c0de7282 <USBD_CtlSendStatus>
c0de6a38:	2d00      	cmp	r5, #0
c0de6a3a:	d001      	beq.n	c0de6a40 <USBD_SetAddress+0x40>
c0de6a3c:	2002      	movs	r0, #2
c0de6a3e:	e000      	b.n	c0de6a42 <USBD_SetAddress+0x42>
c0de6a40:	2001      	movs	r0, #1
c0de6a42:	7030      	strb	r0, [r6, #0]
c0de6a44:	bd70      	pop	{r4, r5, r6, pc}

c0de6a46 <USBD_SetConfig>:
c0de6a46:	b570      	push	{r4, r5, r6, lr}
c0de6a48:	460d      	mov	r5, r1
c0de6a4a:	4604      	mov	r4, r0
c0de6a4c:	788e      	ldrb	r6, [r1, #2]
c0de6a4e:	2e02      	cmp	r6, #2
c0de6a50:	d21c      	bcs.n	c0de6a8c <USBD_SetConfig+0x46>
c0de6a52:	20dc      	movs	r0, #220	; 0xdc
c0de6a54:	5c21      	ldrb	r1, [r4, r0]
c0de6a56:	4620      	mov	r0, r4
c0de6a58:	30dc      	adds	r0, #220	; 0xdc
c0de6a5a:	2903      	cmp	r1, #3
c0de6a5c:	d006      	beq.n	c0de6a6c <USBD_SetConfig+0x26>
c0de6a5e:	2902      	cmp	r1, #2
c0de6a60:	d114      	bne.n	c0de6a8c <USBD_SetConfig+0x46>
c0de6a62:	2e00      	cmp	r6, #0
c0de6a64:	d022      	beq.n	c0de6aac <USBD_SetConfig+0x66>
c0de6a66:	2103      	movs	r1, #3
c0de6a68:	7001      	strb	r1, [r0, #0]
c0de6a6a:	e008      	b.n	c0de6a7e <USBD_SetConfig+0x38>
c0de6a6c:	2e00      	cmp	r6, #0
c0de6a6e:	d012      	beq.n	c0de6a96 <USBD_SetConfig+0x50>
c0de6a70:	6860      	ldr	r0, [r4, #4]
c0de6a72:	42b0      	cmp	r0, r6
c0de6a74:	d01a      	beq.n	c0de6aac <USBD_SetConfig+0x66>
c0de6a76:	b2c1      	uxtb	r1, r0
c0de6a78:	4620      	mov	r0, r4
c0de6a7a:	f7ff fdbc 	bl	c0de65f6 <USBD_ClrClassConfig>
c0de6a7e:	6066      	str	r6, [r4, #4]
c0de6a80:	4620      	mov	r0, r4
c0de6a82:	4631      	mov	r1, r6
c0de6a84:	f7ff fd9c 	bl	c0de65c0 <USBD_SetClassConfig>
c0de6a88:	2802      	cmp	r0, #2
c0de6a8a:	d10f      	bne.n	c0de6aac <USBD_SetConfig+0x66>
c0de6a8c:	4620      	mov	r0, r4
c0de6a8e:	4629      	mov	r1, r5
c0de6a90:	f000 fb14 	bl	c0de70bc <USBD_CtlError>
c0de6a94:	bd70      	pop	{r4, r5, r6, pc}
c0de6a96:	2100      	movs	r1, #0
c0de6a98:	6061      	str	r1, [r4, #4]
c0de6a9a:	2102      	movs	r1, #2
c0de6a9c:	7001      	strb	r1, [r0, #0]
c0de6a9e:	4620      	mov	r0, r4
c0de6aa0:	4631      	mov	r1, r6
c0de6aa2:	f7ff fda8 	bl	c0de65f6 <USBD_ClrClassConfig>
c0de6aa6:	4620      	mov	r0, r4
c0de6aa8:	f000 fbeb 	bl	c0de7282 <USBD_CtlSendStatus>
c0de6aac:	4620      	mov	r0, r4
c0de6aae:	f000 fbe8 	bl	c0de7282 <USBD_CtlSendStatus>
c0de6ab2:	bd70      	pop	{r4, r5, r6, pc}

c0de6ab4 <USBD_GetConfig>:
c0de6ab4:	b580      	push	{r7, lr}
c0de6ab6:	88ca      	ldrh	r2, [r1, #6]
c0de6ab8:	2a01      	cmp	r2, #1
c0de6aba:	d10a      	bne.n	c0de6ad2 <USBD_GetConfig+0x1e>
c0de6abc:	22dc      	movs	r2, #220	; 0xdc
c0de6abe:	5c82      	ldrb	r2, [r0, r2]
c0de6ac0:	2a03      	cmp	r2, #3
c0de6ac2:	d009      	beq.n	c0de6ad8 <USBD_GetConfig+0x24>
c0de6ac4:	2a02      	cmp	r2, #2
c0de6ac6:	d104      	bne.n	c0de6ad2 <USBD_GetConfig+0x1e>
c0de6ac8:	2100      	movs	r1, #0
c0de6aca:	6081      	str	r1, [r0, #8]
c0de6acc:	4601      	mov	r1, r0
c0de6ace:	3108      	adds	r1, #8
c0de6ad0:	e003      	b.n	c0de6ada <USBD_GetConfig+0x26>
c0de6ad2:	f000 faf3 	bl	c0de70bc <USBD_CtlError>
c0de6ad6:	bd80      	pop	{r7, pc}
c0de6ad8:	1d01      	adds	r1, r0, #4
c0de6ada:	2201      	movs	r2, #1
c0de6adc:	f000 fba6 	bl	c0de722c <USBD_CtlSendData>
c0de6ae0:	bd80      	pop	{r7, pc}

c0de6ae2 <USBD_GetStatus>:
c0de6ae2:	b5b0      	push	{r4, r5, r7, lr}
c0de6ae4:	4604      	mov	r4, r0
c0de6ae6:	20dc      	movs	r0, #220	; 0xdc
c0de6ae8:	5c20      	ldrb	r0, [r4, r0]
c0de6aea:	22fe      	movs	r2, #254	; 0xfe
c0de6aec:	4002      	ands	r2, r0
c0de6aee:	2a02      	cmp	r2, #2
c0de6af0:	d10f      	bne.n	c0de6b12 <USBD_GetStatus+0x30>
c0de6af2:	4620      	mov	r0, r4
c0de6af4:	30dc      	adds	r0, #220	; 0xdc
c0de6af6:	2101      	movs	r1, #1
c0de6af8:	60e1      	str	r1, [r4, #12]
c0de6afa:	4625      	mov	r5, r4
c0de6afc:	350c      	adds	r5, #12
c0de6afe:	6880      	ldr	r0, [r0, #8]
c0de6b00:	2800      	cmp	r0, #0
c0de6b02:	d00a      	beq.n	c0de6b1a <USBD_GetStatus+0x38>
c0de6b04:	4620      	mov	r0, r4
c0de6b06:	f000 fbc8 	bl	c0de729a <USBD_CtlReceiveStatus>
c0de6b0a:	68e1      	ldr	r1, [r4, #12]
c0de6b0c:	2002      	movs	r0, #2
c0de6b0e:	4308      	orrs	r0, r1
c0de6b10:	e004      	b.n	c0de6b1c <USBD_GetStatus+0x3a>
c0de6b12:	4620      	mov	r0, r4
c0de6b14:	f000 fad2 	bl	c0de70bc <USBD_CtlError>
c0de6b18:	bdb0      	pop	{r4, r5, r7, pc}
c0de6b1a:	2003      	movs	r0, #3
c0de6b1c:	60e0      	str	r0, [r4, #12]
c0de6b1e:	2202      	movs	r2, #2
c0de6b20:	4620      	mov	r0, r4
c0de6b22:	4629      	mov	r1, r5
c0de6b24:	f000 fb82 	bl	c0de722c <USBD_CtlSendData>
c0de6b28:	bdb0      	pop	{r4, r5, r7, pc}

c0de6b2a <USBD_SetFeature>:
c0de6b2a:	b5b0      	push	{r4, r5, r7, lr}
c0de6b2c:	4604      	mov	r4, r0
c0de6b2e:	8848      	ldrh	r0, [r1, #2]
c0de6b30:	2801      	cmp	r0, #1
c0de6b32:	d116      	bne.n	c0de6b62 <USBD_SetFeature+0x38>
c0de6b34:	460d      	mov	r5, r1
c0de6b36:	20e4      	movs	r0, #228	; 0xe4
c0de6b38:	2101      	movs	r1, #1
c0de6b3a:	5021      	str	r1, [r4, r0]
c0de6b3c:	7928      	ldrb	r0, [r5, #4]
c0de6b3e:	2802      	cmp	r0, #2
c0de6b40:	d80c      	bhi.n	c0de6b5c <USBD_SetFeature+0x32>
c0de6b42:	00c0      	lsls	r0, r0, #3
c0de6b44:	1820      	adds	r0, r4, r0
c0de6b46:	21f4      	movs	r1, #244	; 0xf4
c0de6b48:	5840      	ldr	r0, [r0, r1]
c0de6b4a:	2800      	cmp	r0, #0
c0de6b4c:	d006      	beq.n	c0de6b5c <USBD_SetFeature+0x32>
c0de6b4e:	6880      	ldr	r0, [r0, #8]
c0de6b50:	f7fe f8c2 	bl	c0de4cd8 <pic>
c0de6b54:	4602      	mov	r2, r0
c0de6b56:	4620      	mov	r0, r4
c0de6b58:	4629      	mov	r1, r5
c0de6b5a:	4790      	blx	r2
c0de6b5c:	4620      	mov	r0, r4
c0de6b5e:	f000 fb90 	bl	c0de7282 <USBD_CtlSendStatus>
c0de6b62:	bdb0      	pop	{r4, r5, r7, pc}

c0de6b64 <USBD_ClrFeature>:
c0de6b64:	b5b0      	push	{r4, r5, r7, lr}
c0de6b66:	460d      	mov	r5, r1
c0de6b68:	4604      	mov	r4, r0
c0de6b6a:	20dc      	movs	r0, #220	; 0xdc
c0de6b6c:	5c20      	ldrb	r0, [r4, r0]
c0de6b6e:	21fe      	movs	r1, #254	; 0xfe
c0de6b70:	4001      	ands	r1, r0
c0de6b72:	2902      	cmp	r1, #2
c0de6b74:	d11a      	bne.n	c0de6bac <USBD_ClrFeature+0x48>
c0de6b76:	8868      	ldrh	r0, [r5, #2]
c0de6b78:	2801      	cmp	r0, #1
c0de6b7a:	d11b      	bne.n	c0de6bb4 <USBD_ClrFeature+0x50>
c0de6b7c:	4620      	mov	r0, r4
c0de6b7e:	30dc      	adds	r0, #220	; 0xdc
c0de6b80:	2100      	movs	r1, #0
c0de6b82:	6081      	str	r1, [r0, #8]
c0de6b84:	7928      	ldrb	r0, [r5, #4]
c0de6b86:	2802      	cmp	r0, #2
c0de6b88:	d80c      	bhi.n	c0de6ba4 <USBD_ClrFeature+0x40>
c0de6b8a:	00c0      	lsls	r0, r0, #3
c0de6b8c:	1820      	adds	r0, r4, r0
c0de6b8e:	21f4      	movs	r1, #244	; 0xf4
c0de6b90:	5840      	ldr	r0, [r0, r1]
c0de6b92:	2800      	cmp	r0, #0
c0de6b94:	d006      	beq.n	c0de6ba4 <USBD_ClrFeature+0x40>
c0de6b96:	6880      	ldr	r0, [r0, #8]
c0de6b98:	f7fe f89e 	bl	c0de4cd8 <pic>
c0de6b9c:	4602      	mov	r2, r0
c0de6b9e:	4620      	mov	r0, r4
c0de6ba0:	4629      	mov	r1, r5
c0de6ba2:	4790      	blx	r2
c0de6ba4:	4620      	mov	r0, r4
c0de6ba6:	f000 fb6c 	bl	c0de7282 <USBD_CtlSendStatus>
c0de6baa:	bdb0      	pop	{r4, r5, r7, pc}
c0de6bac:	4620      	mov	r0, r4
c0de6bae:	4629      	mov	r1, r5
c0de6bb0:	f000 fa84 	bl	c0de70bc <USBD_CtlError>
c0de6bb4:	bdb0      	pop	{r4, r5, r7, pc}

c0de6bb6 <USBD_StdItfReq>:
c0de6bb6:	b5b0      	push	{r4, r5, r7, lr}
c0de6bb8:	460d      	mov	r5, r1
c0de6bba:	4604      	mov	r4, r0
c0de6bbc:	20dc      	movs	r0, #220	; 0xdc
c0de6bbe:	5c20      	ldrb	r0, [r4, r0]
c0de6bc0:	2803      	cmp	r0, #3
c0de6bc2:	d116      	bne.n	c0de6bf2 <USBD_StdItfReq+0x3c>
c0de6bc4:	7928      	ldrb	r0, [r5, #4]
c0de6bc6:	2802      	cmp	r0, #2
c0de6bc8:	d813      	bhi.n	c0de6bf2 <USBD_StdItfReq+0x3c>
c0de6bca:	00c0      	lsls	r0, r0, #3
c0de6bcc:	1820      	adds	r0, r4, r0
c0de6bce:	21f4      	movs	r1, #244	; 0xf4
c0de6bd0:	5840      	ldr	r0, [r0, r1]
c0de6bd2:	2800      	cmp	r0, #0
c0de6bd4:	d00d      	beq.n	c0de6bf2 <USBD_StdItfReq+0x3c>
c0de6bd6:	6880      	ldr	r0, [r0, #8]
c0de6bd8:	f7fe f87e 	bl	c0de4cd8 <pic>
c0de6bdc:	4602      	mov	r2, r0
c0de6bde:	4620      	mov	r0, r4
c0de6be0:	4629      	mov	r1, r5
c0de6be2:	4790      	blx	r2
c0de6be4:	88e8      	ldrh	r0, [r5, #6]
c0de6be6:	2800      	cmp	r0, #0
c0de6be8:	d107      	bne.n	c0de6bfa <USBD_StdItfReq+0x44>
c0de6bea:	4620      	mov	r0, r4
c0de6bec:	f000 fb49 	bl	c0de7282 <USBD_CtlSendStatus>
c0de6bf0:	e003      	b.n	c0de6bfa <USBD_StdItfReq+0x44>
c0de6bf2:	4620      	mov	r0, r4
c0de6bf4:	4629      	mov	r1, r5
c0de6bf6:	f000 fa61 	bl	c0de70bc <USBD_CtlError>
c0de6bfa:	2000      	movs	r0, #0
c0de6bfc:	bdb0      	pop	{r4, r5, r7, pc}

c0de6bfe <USBD_StdEPReq>:
c0de6bfe:	b5b0      	push	{r4, r5, r7, lr}
c0de6c00:	b082      	sub	sp, #8
c0de6c02:	460d      	mov	r5, r1
c0de6c04:	4604      	mov	r4, r0
c0de6c06:	7909      	ldrb	r1, [r1, #4]
c0de6c08:	207f      	movs	r0, #127	; 0x7f
c0de6c0a:	4008      	ands	r0, r1
c0de6c0c:	2807      	cmp	r0, #7
c0de6c0e:	d304      	bcc.n	c0de6c1a <USBD_StdEPReq+0x1c>
c0de6c10:	4620      	mov	r0, r4
c0de6c12:	4629      	mov	r1, r5
c0de6c14:	f000 fa52 	bl	c0de70bc <USBD_CtlError>
c0de6c18:	e071      	b.n	c0de6cfe <USBD_StdEPReq+0x100>
c0de6c1a:	2902      	cmp	r1, #2
c0de6c1c:	d812      	bhi.n	c0de6c44 <USBD_StdEPReq+0x46>
c0de6c1e:	782a      	ldrb	r2, [r5, #0]
c0de6c20:	2360      	movs	r3, #96	; 0x60
c0de6c22:	4013      	ands	r3, r2
c0de6c24:	2b20      	cmp	r3, #32
c0de6c26:	d10d      	bne.n	c0de6c44 <USBD_StdEPReq+0x46>
c0de6c28:	00ca      	lsls	r2, r1, #3
c0de6c2a:	18a2      	adds	r2, r4, r2
c0de6c2c:	23f4      	movs	r3, #244	; 0xf4
c0de6c2e:	58d2      	ldr	r2, [r2, r3]
c0de6c30:	2a00      	cmp	r2, #0
c0de6c32:	d007      	beq.n	c0de6c44 <USBD_StdEPReq+0x46>
c0de6c34:	6890      	ldr	r0, [r2, #8]
c0de6c36:	f7fe f84f 	bl	c0de4cd8 <pic>
c0de6c3a:	4602      	mov	r2, r0
c0de6c3c:	4620      	mov	r0, r4
c0de6c3e:	4629      	mov	r1, r5
c0de6c40:	4790      	blx	r2
c0de6c42:	e05c      	b.n	c0de6cfe <USBD_StdEPReq+0x100>
c0de6c44:	786a      	ldrb	r2, [r5, #1]
c0de6c46:	2a00      	cmp	r2, #0
c0de6c48:	d00a      	beq.n	c0de6c60 <USBD_StdEPReq+0x62>
c0de6c4a:	2a01      	cmp	r2, #1
c0de6c4c:	d011      	beq.n	c0de6c72 <USBD_StdEPReq+0x74>
c0de6c4e:	2a03      	cmp	r2, #3
c0de6c50:	d155      	bne.n	c0de6cfe <USBD_StdEPReq+0x100>
c0de6c52:	20dc      	movs	r0, #220	; 0xdc
c0de6c54:	5c20      	ldrb	r0, [r4, r0]
c0de6c56:	2803      	cmp	r0, #3
c0de6c58:	d01a      	beq.n	c0de6c90 <USBD_StdEPReq+0x92>
c0de6c5a:	2802      	cmp	r0, #2
c0de6c5c:	d00f      	beq.n	c0de6c7e <USBD_StdEPReq+0x80>
c0de6c5e:	e7d7      	b.n	c0de6c10 <USBD_StdEPReq+0x12>
c0de6c60:	22dc      	movs	r2, #220	; 0xdc
c0de6c62:	5ca2      	ldrb	r2, [r4, r2]
c0de6c64:	2a03      	cmp	r2, #3
c0de6c66:	d02e      	beq.n	c0de6cc6 <USBD_StdEPReq+0xc8>
c0de6c68:	2a02      	cmp	r2, #2
c0de6c6a:	d1d1      	bne.n	c0de6c10 <USBD_StdEPReq+0x12>
c0de6c6c:	2800      	cmp	r0, #0
c0de6c6e:	d10b      	bne.n	c0de6c88 <USBD_StdEPReq+0x8a>
c0de6c70:	e045      	b.n	c0de6cfe <USBD_StdEPReq+0x100>
c0de6c72:	22dc      	movs	r2, #220	; 0xdc
c0de6c74:	5ca2      	ldrb	r2, [r4, r2]
c0de6c76:	2a03      	cmp	r2, #3
c0de6c78:	d031      	beq.n	c0de6cde <USBD_StdEPReq+0xe0>
c0de6c7a:	2a02      	cmp	r2, #2
c0de6c7c:	d1c8      	bne.n	c0de6c10 <USBD_StdEPReq+0x12>
c0de6c7e:	2080      	movs	r0, #128	; 0x80
c0de6c80:	460a      	mov	r2, r1
c0de6c82:	4302      	orrs	r2, r0
c0de6c84:	2a80      	cmp	r2, #128	; 0x80
c0de6c86:	d03a      	beq.n	c0de6cfe <USBD_StdEPReq+0x100>
c0de6c88:	4620      	mov	r0, r4
c0de6c8a:	f7ff fbb1 	bl	c0de63f0 <USBD_LL_StallEP>
c0de6c8e:	e036      	b.n	c0de6cfe <USBD_StdEPReq+0x100>
c0de6c90:	8868      	ldrh	r0, [r5, #2]
c0de6c92:	2800      	cmp	r0, #0
c0de6c94:	d107      	bne.n	c0de6ca6 <USBD_StdEPReq+0xa8>
c0de6c96:	2080      	movs	r0, #128	; 0x80
c0de6c98:	4308      	orrs	r0, r1
c0de6c9a:	2880      	cmp	r0, #128	; 0x80
c0de6c9c:	d003      	beq.n	c0de6ca6 <USBD_StdEPReq+0xa8>
c0de6c9e:	4620      	mov	r0, r4
c0de6ca0:	f7ff fba6 	bl	c0de63f0 <USBD_LL_StallEP>
c0de6ca4:	7929      	ldrb	r1, [r5, #4]
c0de6ca6:	2902      	cmp	r1, #2
c0de6ca8:	d826      	bhi.n	c0de6cf8 <USBD_StdEPReq+0xfa>
c0de6caa:	00c8      	lsls	r0, r1, #3
c0de6cac:	1820      	adds	r0, r4, r0
c0de6cae:	21f4      	movs	r1, #244	; 0xf4
c0de6cb0:	5840      	ldr	r0, [r0, r1]
c0de6cb2:	2800      	cmp	r0, #0
c0de6cb4:	d020      	beq.n	c0de6cf8 <USBD_StdEPReq+0xfa>
c0de6cb6:	6880      	ldr	r0, [r0, #8]
c0de6cb8:	f7fe f80e 	bl	c0de4cd8 <pic>
c0de6cbc:	4602      	mov	r2, r0
c0de6cbe:	4620      	mov	r0, r4
c0de6cc0:	4629      	mov	r1, r5
c0de6cc2:	4790      	blx	r2
c0de6cc4:	e018      	b.n	c0de6cf8 <USBD_StdEPReq+0xfa>
c0de6cc6:	4620      	mov	r0, r4
c0de6cc8:	f7ff fbde 	bl	c0de6488 <USBD_LL_IsStallEP>
c0de6ccc:	1e41      	subs	r1, r0, #1
c0de6cce:	4188      	sbcs	r0, r1
c0de6cd0:	a901      	add	r1, sp, #4
c0de6cd2:	8008      	strh	r0, [r1, #0]
c0de6cd4:	2202      	movs	r2, #2
c0de6cd6:	4620      	mov	r0, r4
c0de6cd8:	f000 faa8 	bl	c0de722c <USBD_CtlSendData>
c0de6cdc:	e00f      	b.n	c0de6cfe <USBD_StdEPReq+0x100>
c0de6cde:	886a      	ldrh	r2, [r5, #2]
c0de6ce0:	2a00      	cmp	r2, #0
c0de6ce2:	d10c      	bne.n	c0de6cfe <USBD_StdEPReq+0x100>
c0de6ce4:	2800      	cmp	r0, #0
c0de6ce6:	d007      	beq.n	c0de6cf8 <USBD_StdEPReq+0xfa>
c0de6ce8:	4620      	mov	r0, r4
c0de6cea:	f7ff fba7 	bl	c0de643c <USBD_LL_ClearStallEP>
c0de6cee:	7928      	ldrb	r0, [r5, #4]
c0de6cf0:	2802      	cmp	r0, #2
c0de6cf2:	d801      	bhi.n	c0de6cf8 <USBD_StdEPReq+0xfa>
c0de6cf4:	00c0      	lsls	r0, r0, #3
c0de6cf6:	e7d9      	b.n	c0de6cac <USBD_StdEPReq+0xae>
c0de6cf8:	4620      	mov	r0, r4
c0de6cfa:	f000 fac2 	bl	c0de7282 <USBD_CtlSendStatus>
c0de6cfe:	2000      	movs	r0, #0
c0de6d00:	b002      	add	sp, #8
c0de6d02:	bdb0      	pop	{r4, r5, r7, pc}

c0de6d04 <USBD_ParseSetupRequest>:
c0de6d04:	780a      	ldrb	r2, [r1, #0]
c0de6d06:	7002      	strb	r2, [r0, #0]
c0de6d08:	784a      	ldrb	r2, [r1, #1]
c0de6d0a:	7042      	strb	r2, [r0, #1]
c0de6d0c:	788a      	ldrb	r2, [r1, #2]
c0de6d0e:	78cb      	ldrb	r3, [r1, #3]
c0de6d10:	021b      	lsls	r3, r3, #8
c0de6d12:	189a      	adds	r2, r3, r2
c0de6d14:	8042      	strh	r2, [r0, #2]
c0de6d16:	790a      	ldrb	r2, [r1, #4]
c0de6d18:	794b      	ldrb	r3, [r1, #5]
c0de6d1a:	021b      	lsls	r3, r3, #8
c0de6d1c:	189a      	adds	r2, r3, r2
c0de6d1e:	8082      	strh	r2, [r0, #4]
c0de6d20:	798a      	ldrb	r2, [r1, #6]
c0de6d22:	79c9      	ldrb	r1, [r1, #7]
c0de6d24:	0209      	lsls	r1, r1, #8
c0de6d26:	1889      	adds	r1, r1, r2
c0de6d28:	80c1      	strh	r1, [r0, #6]
c0de6d2a:	4770      	bx	lr

c0de6d2c <USBD_CtlStall>:
c0de6d2c:	b510      	push	{r4, lr}
c0de6d2e:	4604      	mov	r4, r0
c0de6d30:	2180      	movs	r1, #128	; 0x80
c0de6d32:	f7ff fb5d 	bl	c0de63f0 <USBD_LL_StallEP>
c0de6d36:	2100      	movs	r1, #0
c0de6d38:	4620      	mov	r0, r4
c0de6d3a:	f7ff fb59 	bl	c0de63f0 <USBD_LL_StallEP>
c0de6d3e:	bd10      	pop	{r4, pc}

c0de6d40 <USBD_HID_Setup>:
c0de6d40:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6d42:	b083      	sub	sp, #12
c0de6d44:	460e      	mov	r6, r1
c0de6d46:	4605      	mov	r5, r0
c0de6d48:	a802      	add	r0, sp, #8
c0de6d4a:	2400      	movs	r4, #0
c0de6d4c:	8004      	strh	r4, [r0, #0]
c0de6d4e:	a801      	add	r0, sp, #4
c0de6d50:	7004      	strb	r4, [r0, #0]
c0de6d52:	7809      	ldrb	r1, [r1, #0]
c0de6d54:	2060      	movs	r0, #96	; 0x60
c0de6d56:	4008      	ands	r0, r1
c0de6d58:	d010      	beq.n	c0de6d7c <USBD_HID_Setup+0x3c>
c0de6d5a:	2820      	cmp	r0, #32
c0de6d5c:	d137      	bne.n	c0de6dce <USBD_HID_Setup+0x8e>
c0de6d5e:	7870      	ldrb	r0, [r6, #1]
c0de6d60:	4601      	mov	r1, r0
c0de6d62:	390a      	subs	r1, #10
c0de6d64:	2902      	cmp	r1, #2
c0de6d66:	d332      	bcc.n	c0de6dce <USBD_HID_Setup+0x8e>
c0de6d68:	2802      	cmp	r0, #2
c0de6d6a:	d01b      	beq.n	c0de6da4 <USBD_HID_Setup+0x64>
c0de6d6c:	2803      	cmp	r0, #3
c0de6d6e:	d019      	beq.n	c0de6da4 <USBD_HID_Setup+0x64>
c0de6d70:	4628      	mov	r0, r5
c0de6d72:	4631      	mov	r1, r6
c0de6d74:	f000 f9a2 	bl	c0de70bc <USBD_CtlError>
c0de6d78:	2402      	movs	r4, #2
c0de6d7a:	e028      	b.n	c0de6dce <USBD_HID_Setup+0x8e>
c0de6d7c:	7870      	ldrb	r0, [r6, #1]
c0de6d7e:	280b      	cmp	r0, #11
c0de6d80:	d013      	beq.n	c0de6daa <USBD_HID_Setup+0x6a>
c0de6d82:	280a      	cmp	r0, #10
c0de6d84:	d00e      	beq.n	c0de6da4 <USBD_HID_Setup+0x64>
c0de6d86:	2806      	cmp	r0, #6
c0de6d88:	d121      	bne.n	c0de6dce <USBD_HID_Setup+0x8e>
c0de6d8a:	78f0      	ldrb	r0, [r6, #3]
c0de6d8c:	2400      	movs	r4, #0
c0de6d8e:	2821      	cmp	r0, #33	; 0x21
c0de6d90:	d00f      	beq.n	c0de6db2 <USBD_HID_Setup+0x72>
c0de6d92:	2822      	cmp	r0, #34	; 0x22
c0de6d94:	4622      	mov	r2, r4
c0de6d96:	4621      	mov	r1, r4
c0de6d98:	d116      	bne.n	c0de6dc8 <USBD_HID_Setup+0x88>
c0de6d9a:	af02      	add	r7, sp, #8
c0de6d9c:	4638      	mov	r0, r7
c0de6d9e:	f000 f851 	bl	c0de6e44 <USBD_HID_GetReportDescriptor_impl>
c0de6da2:	e00a      	b.n	c0de6dba <USBD_HID_Setup+0x7a>
c0de6da4:	a901      	add	r1, sp, #4
c0de6da6:	2201      	movs	r2, #1
c0de6da8:	e00e      	b.n	c0de6dc8 <USBD_HID_Setup+0x88>
c0de6daa:	4628      	mov	r0, r5
c0de6dac:	f000 fa69 	bl	c0de7282 <USBD_CtlSendStatus>
c0de6db0:	e00d      	b.n	c0de6dce <USBD_HID_Setup+0x8e>
c0de6db2:	af02      	add	r7, sp, #8
c0de6db4:	4638      	mov	r0, r7
c0de6db6:	f000 f829 	bl	c0de6e0c <USBD_HID_GetHidDescriptor_impl>
c0de6dba:	4601      	mov	r1, r0
c0de6dbc:	883a      	ldrh	r2, [r7, #0]
c0de6dbe:	88f0      	ldrh	r0, [r6, #6]
c0de6dc0:	4282      	cmp	r2, r0
c0de6dc2:	d300      	bcc.n	c0de6dc6 <USBD_HID_Setup+0x86>
c0de6dc4:	4602      	mov	r2, r0
c0de6dc6:	803a      	strh	r2, [r7, #0]
c0de6dc8:	4628      	mov	r0, r5
c0de6dca:	f000 fa2f 	bl	c0de722c <USBD_CtlSendData>
c0de6dce:	4620      	mov	r0, r4
c0de6dd0:	b003      	add	sp, #12
c0de6dd2:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6dd4 <USBD_HID_Init>:
c0de6dd4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6dd6:	b081      	sub	sp, #4
c0de6dd8:	4604      	mov	r4, r0
c0de6dda:	2182      	movs	r1, #130	; 0x82
c0de6ddc:	2603      	movs	r6, #3
c0de6dde:	2540      	movs	r5, #64	; 0x40
c0de6de0:	4632      	mov	r2, r6
c0de6de2:	462b      	mov	r3, r5
c0de6de4:	f7ff fad2 	bl	c0de638c <USBD_LL_OpenEP>
c0de6de8:	2702      	movs	r7, #2
c0de6dea:	4620      	mov	r0, r4
c0de6dec:	4639      	mov	r1, r7
c0de6dee:	4632      	mov	r2, r6
c0de6df0:	462b      	mov	r3, r5
c0de6df2:	f7ff facb 	bl	c0de638c <USBD_LL_OpenEP>
c0de6df6:	4620      	mov	r0, r4
c0de6df8:	4639      	mov	r1, r7
c0de6dfa:	462a      	mov	r2, r5
c0de6dfc:	f7ff fb81 	bl	c0de6502 <USBD_LL_PrepareReceive>
c0de6e00:	2000      	movs	r0, #0
c0de6e02:	b001      	add	sp, #4
c0de6e04:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6e06 <USBD_HID_DeInit>:
c0de6e06:	2000      	movs	r0, #0
c0de6e08:	4770      	bx	lr
c0de6e0a:	d4d4      	bmi.n	c0de6db6 <USBD_HID_Setup+0x76>

c0de6e0c <USBD_HID_GetHidDescriptor_impl>:
c0de6e0c:	490a      	ldr	r1, [pc, #40]	; (c0de6e38 <USBD_HID_GetHidDescriptor_impl+0x2c>)
c0de6e0e:	464a      	mov	r2, r9
c0de6e10:	1851      	adds	r1, r2, r1
c0de6e12:	22ec      	movs	r2, #236	; 0xec
c0de6e14:	5c89      	ldrb	r1, [r1, r2]
c0de6e16:	2209      	movs	r2, #9
c0de6e18:	2901      	cmp	r1, #1
c0de6e1a:	d004      	beq.n	c0de6e26 <USBD_HID_GetHidDescriptor_impl+0x1a>
c0de6e1c:	2900      	cmp	r1, #0
c0de6e1e:	d105      	bne.n	c0de6e2c <USBD_HID_GetHidDescriptor_impl+0x20>
c0de6e20:	4907      	ldr	r1, [pc, #28]	; (c0de6e40 <USBD_HID_GetHidDescriptor_impl+0x34>)
c0de6e22:	4479      	add	r1, pc
c0de6e24:	e004      	b.n	c0de6e30 <USBD_HID_GetHidDescriptor_impl+0x24>
c0de6e26:	4905      	ldr	r1, [pc, #20]	; (c0de6e3c <USBD_HID_GetHidDescriptor_impl+0x30>)
c0de6e28:	4479      	add	r1, pc
c0de6e2a:	e001      	b.n	c0de6e30 <USBD_HID_GetHidDescriptor_impl+0x24>
c0de6e2c:	2200      	movs	r2, #0
c0de6e2e:	4611      	mov	r1, r2
c0de6e30:	8002      	strh	r2, [r0, #0]
c0de6e32:	4608      	mov	r0, r1
c0de6e34:	4770      	bx	lr
c0de6e36:	46c0      	nop			; (mov r8, r8)
c0de6e38:	00000a28 	.word	0x00000a28
c0de6e3c:	000056b4 	.word	0x000056b4
c0de6e40:	000056c6 	.word	0x000056c6

c0de6e44 <USBD_HID_GetReportDescriptor_impl>:
c0de6e44:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6e46:	b083      	sub	sp, #12
c0de6e48:	4603      	mov	r3, r0
c0de6e4a:	4816      	ldr	r0, [pc, #88]	; (c0de6ea4 <USBD_HID_GetReportDescriptor_impl+0x60>)
c0de6e4c:	4649      	mov	r1, r9
c0de6e4e:	1809      	adds	r1, r1, r0
c0de6e50:	22ec      	movs	r2, #236	; 0xec
c0de6e52:	5c89      	ldrb	r1, [r1, r2]
c0de6e54:	2722      	movs	r7, #34	; 0x22
c0de6e56:	2900      	cmp	r1, #0
c0de6e58:	d01c      	beq.n	c0de6e94 <USBD_HID_GetReportDescriptor_impl+0x50>
c0de6e5a:	2901      	cmp	r1, #1
c0de6e5c:	d11d      	bne.n	c0de6e9a <USBD_HID_GetReportDescriptor_impl+0x56>
c0de6e5e:	4649      	mov	r1, r9
c0de6e60:	180d      	adds	r5, r1, r0
c0de6e62:	2181      	movs	r1, #129	; 0x81
c0de6e64:	2203      	movs	r2, #3
c0de6e66:	9201      	str	r2, [sp, #4]
c0de6e68:	2640      	movs	r6, #64	; 0x40
c0de6e6a:	4628      	mov	r0, r5
c0de6e6c:	9302      	str	r3, [sp, #8]
c0de6e6e:	4633      	mov	r3, r6
c0de6e70:	f7ff fa8c 	bl	c0de638c <USBD_LL_OpenEP>
c0de6e74:	2401      	movs	r4, #1
c0de6e76:	4628      	mov	r0, r5
c0de6e78:	4621      	mov	r1, r4
c0de6e7a:	9a01      	ldr	r2, [sp, #4]
c0de6e7c:	4633      	mov	r3, r6
c0de6e7e:	f7ff fa85 	bl	c0de638c <USBD_LL_OpenEP>
c0de6e82:	4628      	mov	r0, r5
c0de6e84:	4621      	mov	r1, r4
c0de6e86:	4632      	mov	r2, r6
c0de6e88:	f7ff fb3b 	bl	c0de6502 <USBD_LL_PrepareReceive>
c0de6e8c:	9b02      	ldr	r3, [sp, #8]
c0de6e8e:	4807      	ldr	r0, [pc, #28]	; (c0de6eac <USBD_HID_GetReportDescriptor_impl+0x68>)
c0de6e90:	4478      	add	r0, pc
c0de6e92:	e004      	b.n	c0de6e9e <USBD_HID_GetReportDescriptor_impl+0x5a>
c0de6e94:	4804      	ldr	r0, [pc, #16]	; (c0de6ea8 <USBD_HID_GetReportDescriptor_impl+0x64>)
c0de6e96:	4478      	add	r0, pc
c0de6e98:	e001      	b.n	c0de6e9e <USBD_HID_GetReportDescriptor_impl+0x5a>
c0de6e9a:	2700      	movs	r7, #0
c0de6e9c:	4638      	mov	r0, r7
c0de6e9e:	801f      	strh	r7, [r3, #0]
c0de6ea0:	b003      	add	sp, #12
c0de6ea2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6ea4:	00000a28 	.word	0x00000a28
c0de6ea8:	0000567d 	.word	0x0000567d
c0de6eac:	00005661 	.word	0x00005661

c0de6eb0 <USBD_U2F_Init>:
c0de6eb0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6eb2:	b081      	sub	sp, #4
c0de6eb4:	4604      	mov	r4, r0
c0de6eb6:	2181      	movs	r1, #129	; 0x81
c0de6eb8:	2603      	movs	r6, #3
c0de6eba:	2540      	movs	r5, #64	; 0x40
c0de6ebc:	4632      	mov	r2, r6
c0de6ebe:	462b      	mov	r3, r5
c0de6ec0:	f7ff fa64 	bl	c0de638c <USBD_LL_OpenEP>
c0de6ec4:	2701      	movs	r7, #1
c0de6ec6:	4620      	mov	r0, r4
c0de6ec8:	4639      	mov	r1, r7
c0de6eca:	4632      	mov	r2, r6
c0de6ecc:	462b      	mov	r3, r5
c0de6ece:	f7ff fa5d 	bl	c0de638c <USBD_LL_OpenEP>
c0de6ed2:	4620      	mov	r0, r4
c0de6ed4:	4639      	mov	r1, r7
c0de6ed6:	462a      	mov	r2, r5
c0de6ed8:	f7ff fb13 	bl	c0de6502 <USBD_LL_PrepareReceive>
c0de6edc:	2000      	movs	r0, #0
c0de6ede:	b001      	add	sp, #4
c0de6ee0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6ee2:	d4d4      	bmi.n	c0de6e8e <USBD_HID_GetReportDescriptor_impl+0x4a>

c0de6ee4 <USBD_U2F_DataIn_impl>:
c0de6ee4:	b580      	push	{r7, lr}
c0de6ee6:	2901      	cmp	r1, #1
c0de6ee8:	d105      	bne.n	c0de6ef6 <USBD_U2F_DataIn_impl+0x12>
c0de6eea:	4804      	ldr	r0, [pc, #16]	; (c0de6efc <USBD_U2F_DataIn_impl+0x18>)
c0de6eec:	4649      	mov	r1, r9
c0de6eee:	1808      	adds	r0, r1, r0
c0de6ef0:	2101      	movs	r1, #1
c0de6ef2:	f7fe fe55 	bl	c0de5ba0 <u2f_transport_sent>
c0de6ef6:	2000      	movs	r0, #0
c0de6ef8:	bd80      	pop	{r7, pc}
c0de6efa:	46c0      	nop			; (mov r8, r8)
c0de6efc:	000006b8 	.word	0x000006b8

c0de6f00 <USBD_U2F_DataOut_impl>:
c0de6f00:	b5b0      	push	{r4, r5, r7, lr}
c0de6f02:	2901      	cmp	r1, #1
c0de6f04:	d110      	bne.n	c0de6f28 <USBD_U2F_DataOut_impl+0x28>
c0de6f06:	4614      	mov	r4, r2
c0de6f08:	2501      	movs	r5, #1
c0de6f0a:	2240      	movs	r2, #64	; 0x40
c0de6f0c:	4629      	mov	r1, r5
c0de6f0e:	f7ff faf8 	bl	c0de6502 <USBD_LL_PrepareReceive>
c0de6f12:	4628      	mov	r0, r5
c0de6f14:	f7fc fef8 	bl	c0de3d08 <io_seproxyhal_get_ep_rx_size>
c0de6f18:	4602      	mov	r2, r0
c0de6f1a:	4804      	ldr	r0, [pc, #16]	; (c0de6f2c <USBD_U2F_DataOut_impl+0x2c>)
c0de6f1c:	4649      	mov	r1, r9
c0de6f1e:	1808      	adds	r0, r1, r0
c0de6f20:	4621      	mov	r1, r4
c0de6f22:	462b      	mov	r3, r5
c0de6f24:	f7fe ff74 	bl	c0de5e10 <u2f_transport_received>
c0de6f28:	2000      	movs	r0, #0
c0de6f2a:	bdb0      	pop	{r4, r5, r7, pc}
c0de6f2c:	000006b8 	.word	0x000006b8

c0de6f30 <USBD_HID_DataIn_impl>:
c0de6f30:	b580      	push	{r7, lr}
c0de6f32:	2902      	cmp	r1, #2
c0de6f34:	d103      	bne.n	c0de6f3e <USBD_HID_DataIn_impl+0xe>
c0de6f36:	4803      	ldr	r0, [pc, #12]	; (c0de6f44 <USBD_HID_DataIn_impl+0x14>)
c0de6f38:	4478      	add	r0, pc
c0de6f3a:	f7fd fb97 	bl	c0de466c <io_usb_hid_sent>
c0de6f3e:	2000      	movs	r0, #0
c0de6f40:	bd80      	pop	{r7, pc}
c0de6f42:	46c0      	nop			; (mov r8, r8)
c0de6f44:	ffffceb9 	.word	0xffffceb9

c0de6f48 <USBD_HID_DataOut_impl>:
c0de6f48:	b5b0      	push	{r4, r5, r7, lr}
c0de6f4a:	2902      	cmp	r1, #2
c0de6f4c:	d11e      	bne.n	c0de6f8c <USBD_HID_DataOut_impl+0x44>
c0de6f4e:	4614      	mov	r4, r2
c0de6f50:	2102      	movs	r1, #2
c0de6f52:	2240      	movs	r2, #64	; 0x40
c0de6f54:	f7ff fad5 	bl	c0de6502 <USBD_LL_PrepareReceive>
c0de6f58:	4d0d      	ldr	r5, [pc, #52]	; (c0de6f90 <USBD_HID_DataOut_impl+0x48>)
c0de6f5a:	4648      	mov	r0, r9
c0de6f5c:	1940      	adds	r0, r0, r5
c0de6f5e:	7980      	ldrb	r0, [r0, #6]
c0de6f60:	2800      	cmp	r0, #0
c0de6f62:	d113      	bne.n	c0de6f8c <USBD_HID_DataOut_impl+0x44>
c0de6f64:	2002      	movs	r0, #2
c0de6f66:	f7fc fecf 	bl	c0de3d08 <io_seproxyhal_get_ep_rx_size>
c0de6f6a:	4602      	mov	r2, r0
c0de6f6c:	480a      	ldr	r0, [pc, #40]	; (c0de6f98 <USBD_HID_DataOut_impl+0x50>)
c0de6f6e:	4478      	add	r0, pc
c0de6f70:	4621      	mov	r1, r4
c0de6f72:	f7fd faa5 	bl	c0de44c0 <io_usb_hid_receive>
c0de6f76:	2802      	cmp	r0, #2
c0de6f78:	d108      	bne.n	c0de6f8c <USBD_HID_DataOut_impl+0x44>
c0de6f7a:	4648      	mov	r0, r9
c0de6f7c:	2107      	movs	r1, #7
c0de6f7e:	5541      	strb	r1, [r0, r5]
c0de6f80:	1941      	adds	r1, r0, r5
c0de6f82:	2201      	movs	r2, #1
c0de6f84:	718a      	strb	r2, [r1, #6]
c0de6f86:	4a03      	ldr	r2, [pc, #12]	; (c0de6f94 <USBD_HID_DataOut_impl+0x4c>)
c0de6f88:	5880      	ldr	r0, [r0, r2]
c0de6f8a:	8048      	strh	r0, [r1, #2]
c0de6f8c:	2000      	movs	r0, #0
c0de6f8e:	bdb0      	pop	{r4, r5, r7, pc}
c0de6f90:	00000684 	.word	0x00000684
c0de6f94:	00000744 	.word	0x00000744
c0de6f98:	ffffce83 	.word	0xffffce83

c0de6f9c <USBD_WEBUSB_Init>:
c0de6f9c:	b570      	push	{r4, r5, r6, lr}
c0de6f9e:	4604      	mov	r4, r0
c0de6fa0:	2183      	movs	r1, #131	; 0x83
c0de6fa2:	2503      	movs	r5, #3
c0de6fa4:	2640      	movs	r6, #64	; 0x40
c0de6fa6:	462a      	mov	r2, r5
c0de6fa8:	4633      	mov	r3, r6
c0de6faa:	f7ff f9ef 	bl	c0de638c <USBD_LL_OpenEP>
c0de6fae:	4620      	mov	r0, r4
c0de6fb0:	4629      	mov	r1, r5
c0de6fb2:	462a      	mov	r2, r5
c0de6fb4:	4633      	mov	r3, r6
c0de6fb6:	f7ff f9e9 	bl	c0de638c <USBD_LL_OpenEP>
c0de6fba:	4620      	mov	r0, r4
c0de6fbc:	4629      	mov	r1, r5
c0de6fbe:	4632      	mov	r2, r6
c0de6fc0:	f7ff fa9f 	bl	c0de6502 <USBD_LL_PrepareReceive>
c0de6fc4:	2000      	movs	r0, #0
c0de6fc6:	bd70      	pop	{r4, r5, r6, pc}

c0de6fc8 <USBD_WEBUSB_DeInit>:
c0de6fc8:	2000      	movs	r0, #0
c0de6fca:	4770      	bx	lr

c0de6fcc <USBD_WEBUSB_Setup>:
c0de6fcc:	2000      	movs	r0, #0
c0de6fce:	4770      	bx	lr

c0de6fd0 <USBD_WEBUSB_DataIn>:
c0de6fd0:	b580      	push	{r7, lr}
c0de6fd2:	2903      	cmp	r1, #3
c0de6fd4:	d103      	bne.n	c0de6fde <USBD_WEBUSB_DataIn+0xe>
c0de6fd6:	4803      	ldr	r0, [pc, #12]	; (c0de6fe4 <USBD_WEBUSB_DataIn+0x14>)
c0de6fd8:	4478      	add	r0, pc
c0de6fda:	f7fd fb47 	bl	c0de466c <io_usb_hid_sent>
c0de6fde:	2000      	movs	r0, #0
c0de6fe0:	bd80      	pop	{r7, pc}
c0de6fe2:	46c0      	nop			; (mov r8, r8)
c0de6fe4:	ffffce29 	.word	0xffffce29

c0de6fe8 <USBD_WEBUSB_DataOut>:
c0de6fe8:	b5b0      	push	{r4, r5, r7, lr}
c0de6fea:	2903      	cmp	r1, #3
c0de6fec:	d11e      	bne.n	c0de702c <USBD_WEBUSB_DataOut+0x44>
c0de6fee:	4614      	mov	r4, r2
c0de6ff0:	2103      	movs	r1, #3
c0de6ff2:	2240      	movs	r2, #64	; 0x40
c0de6ff4:	f7ff fa85 	bl	c0de6502 <USBD_LL_PrepareReceive>
c0de6ff8:	4d0d      	ldr	r5, [pc, #52]	; (c0de7030 <USBD_WEBUSB_DataOut+0x48>)
c0de6ffa:	4648      	mov	r0, r9
c0de6ffc:	1940      	adds	r0, r0, r5
c0de6ffe:	7980      	ldrb	r0, [r0, #6]
c0de7000:	2800      	cmp	r0, #0
c0de7002:	d113      	bne.n	c0de702c <USBD_WEBUSB_DataOut+0x44>
c0de7004:	2003      	movs	r0, #3
c0de7006:	f7fc fe7f 	bl	c0de3d08 <io_seproxyhal_get_ep_rx_size>
c0de700a:	4602      	mov	r2, r0
c0de700c:	480a      	ldr	r0, [pc, #40]	; (c0de7038 <USBD_WEBUSB_DataOut+0x50>)
c0de700e:	4478      	add	r0, pc
c0de7010:	4621      	mov	r1, r4
c0de7012:	f7fd fa55 	bl	c0de44c0 <io_usb_hid_receive>
c0de7016:	2802      	cmp	r0, #2
c0de7018:	d108      	bne.n	c0de702c <USBD_WEBUSB_DataOut+0x44>
c0de701a:	4648      	mov	r0, r9
c0de701c:	210b      	movs	r1, #11
c0de701e:	5541      	strb	r1, [r0, r5]
c0de7020:	1941      	adds	r1, r0, r5
c0de7022:	2205      	movs	r2, #5
c0de7024:	718a      	strb	r2, [r1, #6]
c0de7026:	4a03      	ldr	r2, [pc, #12]	; (c0de7034 <USBD_WEBUSB_DataOut+0x4c>)
c0de7028:	5880      	ldr	r0, [r0, r2]
c0de702a:	8048      	strh	r0, [r1, #2]
c0de702c:	2000      	movs	r0, #0
c0de702e:	bdb0      	pop	{r4, r5, r7, pc}
c0de7030:	00000684 	.word	0x00000684
c0de7034:	00000744 	.word	0x00000744
c0de7038:	ffffcdf3 	.word	0xffffcdf3

c0de703c <USBD_DeviceDescriptor>:
c0de703c:	2012      	movs	r0, #18
c0de703e:	8008      	strh	r0, [r1, #0]
c0de7040:	4801      	ldr	r0, [pc, #4]	; (c0de7048 <USBD_DeviceDescriptor+0xc>)
c0de7042:	4478      	add	r0, pc
c0de7044:	4770      	bx	lr
c0de7046:	46c0      	nop			; (mov r8, r8)
c0de7048:	00005766 	.word	0x00005766

c0de704c <USBD_LangIDStrDescriptor>:
c0de704c:	2004      	movs	r0, #4
c0de704e:	8008      	strh	r0, [r1, #0]
c0de7050:	4801      	ldr	r0, [pc, #4]	; (c0de7058 <USBD_LangIDStrDescriptor+0xc>)
c0de7052:	4478      	add	r0, pc
c0de7054:	4770      	bx	lr
c0de7056:	46c0      	nop			; (mov r8, r8)
c0de7058:	00005768 	.word	0x00005768

c0de705c <USBD_ManufacturerStrDescriptor>:
c0de705c:	200e      	movs	r0, #14
c0de705e:	8008      	strh	r0, [r1, #0]
c0de7060:	4801      	ldr	r0, [pc, #4]	; (c0de7068 <USBD_ManufacturerStrDescriptor+0xc>)
c0de7062:	4478      	add	r0, pc
c0de7064:	4770      	bx	lr
c0de7066:	46c0      	nop			; (mov r8, r8)
c0de7068:	0000575c 	.word	0x0000575c

c0de706c <USBD_ProductStrDescriptor>:
c0de706c:	200e      	movs	r0, #14
c0de706e:	8008      	strh	r0, [r1, #0]
c0de7070:	4801      	ldr	r0, [pc, #4]	; (c0de7078 <USBD_ProductStrDescriptor+0xc>)
c0de7072:	4478      	add	r0, pc
c0de7074:	4770      	bx	lr
c0de7076:	46c0      	nop			; (mov r8, r8)
c0de7078:	0000575a 	.word	0x0000575a

c0de707c <USBD_SerialStrDescriptor>:
c0de707c:	200a      	movs	r0, #10
c0de707e:	8008      	strh	r0, [r1, #0]
c0de7080:	4801      	ldr	r0, [pc, #4]	; (c0de7088 <USBD_SerialStrDescriptor+0xc>)
c0de7082:	4478      	add	r0, pc
c0de7084:	4770      	bx	lr
c0de7086:	46c0      	nop			; (mov r8, r8)
c0de7088:	00005758 	.word	0x00005758

c0de708c <USBD_ConfigStrDescriptor>:
c0de708c:	200e      	movs	r0, #14
c0de708e:	8008      	strh	r0, [r1, #0]
c0de7090:	4801      	ldr	r0, [pc, #4]	; (c0de7098 <USBD_ConfigStrDescriptor+0xc>)
c0de7092:	4478      	add	r0, pc
c0de7094:	4770      	bx	lr
c0de7096:	46c0      	nop			; (mov r8, r8)
c0de7098:	0000573a 	.word	0x0000573a

c0de709c <USBD_InterfaceStrDescriptor>:
c0de709c:	200e      	movs	r0, #14
c0de709e:	8008      	strh	r0, [r1, #0]
c0de70a0:	4801      	ldr	r0, [pc, #4]	; (c0de70a8 <USBD_InterfaceStrDescriptor+0xc>)
c0de70a2:	4478      	add	r0, pc
c0de70a4:	4770      	bx	lr
c0de70a6:	46c0      	nop			; (mov r8, r8)
c0de70a8:	0000572a 	.word	0x0000572a

c0de70ac <USBD_BOSDescriptor>:
c0de70ac:	2039      	movs	r0, #57	; 0x39
c0de70ae:	8008      	strh	r0, [r1, #0]
c0de70b0:	4801      	ldr	r0, [pc, #4]	; (c0de70b8 <USBD_BOSDescriptor+0xc>)
c0de70b2:	4478      	add	r0, pc
c0de70b4:	4770      	bx	lr
c0de70b6:	46c0      	nop			; (mov r8, r8)
c0de70b8:	0000549a 	.word	0x0000549a

c0de70bc <USBD_CtlError>:
c0de70bc:	b580      	push	{r7, lr}
c0de70be:	780a      	ldrb	r2, [r1, #0]
c0de70c0:	b252      	sxtb	r2, r2
c0de70c2:	2a00      	cmp	r2, #0
c0de70c4:	d402      	bmi.n	c0de70cc <USBD_CtlError+0x10>
c0de70c6:	f7ff fe31 	bl	c0de6d2c <USBD_CtlStall>
c0de70ca:	bd80      	pop	{r7, pc}
c0de70cc:	784a      	ldrb	r2, [r1, #1]
c0de70ce:	2a06      	cmp	r2, #6
c0de70d0:	d010      	beq.n	c0de70f4 <USBD_CtlError+0x38>
c0de70d2:	2a77      	cmp	r2, #119	; 0x77
c0de70d4:	d019      	beq.n	c0de710a <USBD_CtlError+0x4e>
c0de70d6:	2a1e      	cmp	r2, #30
c0de70d8:	d1f5      	bne.n	c0de70c6 <USBD_CtlError+0xa>
c0de70da:	888a      	ldrh	r2, [r1, #4]
c0de70dc:	2a02      	cmp	r2, #2
c0de70de:	d1f2      	bne.n	c0de70c6 <USBD_CtlError+0xa>
c0de70e0:	884a      	ldrh	r2, [r1, #2]
c0de70e2:	2a01      	cmp	r2, #1
c0de70e4:	d1ef      	bne.n	c0de70c6 <USBD_CtlError+0xa>
c0de70e6:	88ca      	ldrh	r2, [r1, #6]
c0de70e8:	2a17      	cmp	r2, #23
c0de70ea:	d300      	bcc.n	c0de70ee <USBD_CtlError+0x32>
c0de70ec:	2217      	movs	r2, #23
c0de70ee:	4918      	ldr	r1, [pc, #96]	; (c0de7150 <USBD_CtlError+0x94>)
c0de70f0:	4479      	add	r1, pc
c0de70f2:	e027      	b.n	c0de7144 <USBD_CtlError+0x88>
c0de70f4:	884a      	ldrh	r2, [r1, #2]
c0de70f6:	4b15      	ldr	r3, [pc, #84]	; (c0de714c <USBD_CtlError+0x90>)
c0de70f8:	429a      	cmp	r2, r3
c0de70fa:	d1e4      	bne.n	c0de70c6 <USBD_CtlError+0xa>
c0de70fc:	88ca      	ldrh	r2, [r1, #6]
c0de70fe:	2a12      	cmp	r2, #18
c0de7100:	d300      	bcc.n	c0de7104 <USBD_CtlError+0x48>
c0de7102:	2212      	movs	r2, #18
c0de7104:	4913      	ldr	r1, [pc, #76]	; (c0de7154 <USBD_CtlError+0x98>)
c0de7106:	4479      	add	r1, pc
c0de7108:	e01c      	b.n	c0de7144 <USBD_CtlError+0x88>
c0de710a:	888a      	ldrh	r2, [r1, #4]
c0de710c:	2a04      	cmp	r2, #4
c0de710e:	d106      	bne.n	c0de711e <USBD_CtlError+0x62>
c0de7110:	88ca      	ldrh	r2, [r1, #6]
c0de7112:	2a28      	cmp	r2, #40	; 0x28
c0de7114:	d300      	bcc.n	c0de7118 <USBD_CtlError+0x5c>
c0de7116:	2228      	movs	r2, #40	; 0x28
c0de7118:	490f      	ldr	r1, [pc, #60]	; (c0de7158 <USBD_CtlError+0x9c>)
c0de711a:	4479      	add	r1, pc
c0de711c:	e012      	b.n	c0de7144 <USBD_CtlError+0x88>
c0de711e:	888a      	ldrh	r2, [r1, #4]
c0de7120:	2a05      	cmp	r2, #5
c0de7122:	d106      	bne.n	c0de7132 <USBD_CtlError+0x76>
c0de7124:	88ca      	ldrh	r2, [r1, #6]
c0de7126:	2a92      	cmp	r2, #146	; 0x92
c0de7128:	d300      	bcc.n	c0de712c <USBD_CtlError+0x70>
c0de712a:	2292      	movs	r2, #146	; 0x92
c0de712c:	490b      	ldr	r1, [pc, #44]	; (c0de715c <USBD_CtlError+0xa0>)
c0de712e:	4479      	add	r1, pc
c0de7130:	e008      	b.n	c0de7144 <USBD_CtlError+0x88>
c0de7132:	888a      	ldrh	r2, [r1, #4]
c0de7134:	2a07      	cmp	r2, #7
c0de7136:	d1c6      	bne.n	c0de70c6 <USBD_CtlError+0xa>
c0de7138:	88ca      	ldrh	r2, [r1, #6]
c0de713a:	2ab2      	cmp	r2, #178	; 0xb2
c0de713c:	d300      	bcc.n	c0de7140 <USBD_CtlError+0x84>
c0de713e:	22b2      	movs	r2, #178	; 0xb2
c0de7140:	4907      	ldr	r1, [pc, #28]	; (c0de7160 <USBD_CtlError+0xa4>)
c0de7142:	4479      	add	r1, pc
c0de7144:	f000 f872 	bl	c0de722c <USBD_CtlSendData>
c0de7148:	bd80      	pop	{r7, pc}
c0de714a:	46c0      	nop			; (mov r8, r8)
c0de714c:	000003ee 	.word	0x000003ee
c0de7150:	00005445 	.word	0x00005445
c0de7154:	000054a2 	.word	0x000054a2
c0de7158:	000056ca 	.word	0x000056ca
c0de715c:	0000548c 	.word	0x0000548c
c0de7160:	0000550a 	.word	0x0000550a

c0de7164 <USB_power>:
c0de7164:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7166:	b081      	sub	sp, #4
c0de7168:	4604      	mov	r4, r0
c0de716a:	4f20      	ldr	r7, [pc, #128]	; (c0de71ec <USB_power+0x88>)
c0de716c:	464e      	mov	r6, r9
c0de716e:	19f0      	adds	r0, r6, r7
c0de7170:	2145      	movs	r1, #69	; 0x45
c0de7172:	008d      	lsls	r5, r1, #2
c0de7174:	4629      	mov	r1, r5
c0de7176:	f001 fbf1 	bl	c0de895c <__aeabi_memclr>
c0de717a:	481d      	ldr	r0, [pc, #116]	; (c0de71f0 <USB_power+0x8c>)
c0de717c:	1830      	adds	r0, r6, r0
c0de717e:	300c      	adds	r0, #12
c0de7180:	2112      	movs	r1, #18
c0de7182:	f001 fbeb 	bl	c0de895c <__aeabi_memclr>
c0de7186:	2c00      	cmp	r4, #0
c0de7188:	d02a      	beq.n	c0de71e0 <USB_power+0x7c>
c0de718a:	464e      	mov	r6, r9
c0de718c:	19f4      	adds	r4, r6, r7
c0de718e:	4620      	mov	r0, r4
c0de7190:	4629      	mov	r1, r5
c0de7192:	f001 fbe3 	bl	c0de895c <__aeabi_memclr>
c0de7196:	4919      	ldr	r1, [pc, #100]	; (c0de71fc <USB_power+0x98>)
c0de7198:	4479      	add	r1, pc
c0de719a:	2500      	movs	r5, #0
c0de719c:	4620      	mov	r0, r4
c0de719e:	462a      	mov	r2, r5
c0de71a0:	f7ff f9c2 	bl	c0de6528 <USBD_Init>
c0de71a4:	4a16      	ldr	r2, [pc, #88]	; (c0de7200 <USB_power+0x9c>)
c0de71a6:	447a      	add	r2, pc
c0de71a8:	4628      	mov	r0, r5
c0de71aa:	4621      	mov	r1, r4
c0de71ac:	f7ff f9f6 	bl	c0de659c <USBD_RegisterClassForInterface>
c0de71b0:	2001      	movs	r0, #1
c0de71b2:	4a14      	ldr	r2, [pc, #80]	; (c0de7204 <USB_power+0xa0>)
c0de71b4:	447a      	add	r2, pc
c0de71b6:	4621      	mov	r1, r4
c0de71b8:	f7ff f9f0 	bl	c0de659c <USBD_RegisterClassForInterface>
c0de71bc:	480d      	ldr	r0, [pc, #52]	; (c0de71f4 <USB_power+0x90>)
c0de71be:	1830      	adds	r0, r6, r0
c0de71c0:	490d      	ldr	r1, [pc, #52]	; (c0de71f8 <USB_power+0x94>)
c0de71c2:	1871      	adds	r1, r6, r1
c0de71c4:	22ff      	movs	r2, #255	; 0xff
c0de71c6:	3252      	adds	r2, #82	; 0x52
c0de71c8:	f7fe fcd8 	bl	c0de5b7c <u2f_transport_init>
c0de71cc:	2002      	movs	r0, #2
c0de71ce:	4a0e      	ldr	r2, [pc, #56]	; (c0de7208 <USB_power+0xa4>)
c0de71d0:	447a      	add	r2, pc
c0de71d2:	4621      	mov	r1, r4
c0de71d4:	f7ff f9e2 	bl	c0de659c <USBD_RegisterClassForInterface>
c0de71d8:	4620      	mov	r0, r4
c0de71da:	f7ff f9ec 	bl	c0de65b6 <USBD_Start>
c0de71de:	e003      	b.n	c0de71e8 <USB_power+0x84>
c0de71e0:	4648      	mov	r0, r9
c0de71e2:	19c0      	adds	r0, r0, r7
c0de71e4:	f7ff f9bc 	bl	c0de6560 <USBD_DeInit>
c0de71e8:	b001      	add	sp, #4
c0de71ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de71ec:	00000a28 	.word	0x00000a28
c0de71f0:	00000684 	.word	0x00000684
c0de71f4:	000006b8 	.word	0x000006b8
c0de71f8:	00000530 	.word	0x00000530
c0de71fc:	000053f0 	.word	0x000053f0
c0de7200:	0000555a 	.word	0x0000555a
c0de7204:	00005584 	.word	0x00005584
c0de7208:	000055a0 	.word	0x000055a0

c0de720c <USBD_GetCfgDesc_impl>:
c0de720c:	2160      	movs	r1, #96	; 0x60
c0de720e:	8001      	strh	r1, [r0, #0]
c0de7210:	4801      	ldr	r0, [pc, #4]	; (c0de7218 <USBD_GetCfgDesc_impl+0xc>)
c0de7212:	4478      	add	r0, pc
c0de7214:	4770      	bx	lr
c0de7216:	46c0      	nop			; (mov r8, r8)
c0de7218:	000055fa 	.word	0x000055fa

c0de721c <USBD_GetDeviceQualifierDesc_impl>:
c0de721c:	210a      	movs	r1, #10
c0de721e:	8001      	strh	r1, [r0, #0]
c0de7220:	4801      	ldr	r0, [pc, #4]	; (c0de7228 <USBD_GetDeviceQualifierDesc_impl+0xc>)
c0de7222:	4478      	add	r0, pc
c0de7224:	4770      	bx	lr
c0de7226:	46c0      	nop			; (mov r8, r8)
c0de7228:	0000564a 	.word	0x0000564a

c0de722c <USBD_CtlSendData>:
c0de722c:	b5b0      	push	{r4, r5, r7, lr}
c0de722e:	460c      	mov	r4, r1
c0de7230:	21d4      	movs	r1, #212	; 0xd4
c0de7232:	2302      	movs	r3, #2
c0de7234:	5043      	str	r3, [r0, r1]
c0de7236:	6182      	str	r2, [r0, #24]
c0de7238:	61c2      	str	r2, [r0, #28]
c0de723a:	4601      	mov	r1, r0
c0de723c:	31d4      	adds	r1, #212	; 0xd4
c0de723e:	63cc      	str	r4, [r1, #60]	; 0x3c
c0de7240:	6a01      	ldr	r1, [r0, #32]
c0de7242:	4291      	cmp	r1, r2
c0de7244:	d800      	bhi.n	c0de7248 <USBD_CtlSendData+0x1c>
c0de7246:	460a      	mov	r2, r1
c0de7248:	b293      	uxth	r3, r2
c0de724a:	2500      	movs	r5, #0
c0de724c:	4629      	mov	r1, r5
c0de724e:	4622      	mov	r2, r4
c0de7250:	f7ff f93e 	bl	c0de64d0 <USBD_LL_Transmit>
c0de7254:	4628      	mov	r0, r5
c0de7256:	bdb0      	pop	{r4, r5, r7, pc}

c0de7258 <USBD_CtlContinueSendData>:
c0de7258:	b5b0      	push	{r4, r5, r7, lr}
c0de725a:	460c      	mov	r4, r1
c0de725c:	6a01      	ldr	r1, [r0, #32]
c0de725e:	4291      	cmp	r1, r2
c0de7260:	d800      	bhi.n	c0de7264 <USBD_CtlContinueSendData+0xc>
c0de7262:	460a      	mov	r2, r1
c0de7264:	b293      	uxth	r3, r2
c0de7266:	2500      	movs	r5, #0
c0de7268:	4629      	mov	r1, r5
c0de726a:	4622      	mov	r2, r4
c0de726c:	f7ff f930 	bl	c0de64d0 <USBD_LL_Transmit>
c0de7270:	4628      	mov	r0, r5
c0de7272:	bdb0      	pop	{r4, r5, r7, pc}

c0de7274 <USBD_CtlContinueRx>:
c0de7274:	b510      	push	{r4, lr}
c0de7276:	2400      	movs	r4, #0
c0de7278:	4621      	mov	r1, r4
c0de727a:	f7ff f942 	bl	c0de6502 <USBD_LL_PrepareReceive>
c0de727e:	4620      	mov	r0, r4
c0de7280:	bd10      	pop	{r4, pc}

c0de7282 <USBD_CtlSendStatus>:
c0de7282:	b510      	push	{r4, lr}
c0de7284:	21d4      	movs	r1, #212	; 0xd4
c0de7286:	2204      	movs	r2, #4
c0de7288:	5042      	str	r2, [r0, r1]
c0de728a:	2400      	movs	r4, #0
c0de728c:	4621      	mov	r1, r4
c0de728e:	4622      	mov	r2, r4
c0de7290:	4623      	mov	r3, r4
c0de7292:	f7ff f91d 	bl	c0de64d0 <USBD_LL_Transmit>
c0de7296:	4620      	mov	r0, r4
c0de7298:	bd10      	pop	{r4, pc}

c0de729a <USBD_CtlReceiveStatus>:
c0de729a:	b510      	push	{r4, lr}
c0de729c:	21d4      	movs	r1, #212	; 0xd4
c0de729e:	2205      	movs	r2, #5
c0de72a0:	5042      	str	r2, [r0, r1]
c0de72a2:	2400      	movs	r4, #0
c0de72a4:	4621      	mov	r1, r4
c0de72a6:	4622      	mov	r2, r4
c0de72a8:	f7ff f92b 	bl	c0de6502 <USBD_LL_PrepareReceive>
c0de72ac:	4620      	mov	r0, r4
c0de72ae:	bd10      	pop	{r4, pc}

c0de72b0 <b58_encode>:
c0de72b0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de72b2:	b0db      	sub	sp, #364	; 0x16c
c0de72b4:	460d      	mov	r5, r1
c0de72b6:	4601      	mov	r1, r0
c0de72b8:	2600      	movs	r6, #0
c0de72ba:	43f0      	mvns	r0, r6
c0de72bc:	2da4      	cmp	r5, #164	; 0xa4
c0de72be:	d876      	bhi.n	c0de73ae <b58_encode+0xfe>
c0de72c0:	461c      	mov	r4, r3
c0de72c2:	9002      	str	r0, [sp, #8]
c0de72c4:	9201      	str	r2, [sp, #4]
c0de72c6:	a832      	add	r0, sp, #200	; 0xc8
c0de72c8:	462a      	mov	r2, r5
c0de72ca:	f001 fb4d 	bl	c0de8968 <__aeabi_memcpy>
c0de72ce:	2d00      	cmp	r5, #0
c0de72d0:	d009      	beq.n	c0de72e6 <b58_encode+0x36>
c0de72d2:	2600      	movs	r6, #0
c0de72d4:	a832      	add	r0, sp, #200	; 0xc8
c0de72d6:	5d80      	ldrb	r0, [r0, r6]
c0de72d8:	2800      	cmp	r0, #0
c0de72da:	d104      	bne.n	c0de72e6 <b58_encode+0x36>
c0de72dc:	1c76      	adds	r6, r6, #1
c0de72de:	42b5      	cmp	r5, r6
c0de72e0:	d1f8      	bne.n	c0de72d4 <b58_encode+0x24>
c0de72e2:	006b      	lsls	r3, r5, #1
c0de72e4:	e042      	b.n	c0de736c <b58_encode+0xbc>
c0de72e6:	006b      	lsls	r3, r5, #1
c0de72e8:	b2f0      	uxtb	r0, r6
c0de72ea:	42a8      	cmp	r0, r5
c0de72ec:	d23d      	bcs.n	c0de736a <b58_encode+0xba>
c0de72ee:	9600      	str	r6, [sp, #0]
c0de72f0:	4632      	mov	r2, r6
c0de72f2:	461e      	mov	r6, r3
c0de72f4:	9405      	str	r4, [sp, #20]
c0de72f6:	9504      	str	r5, [sp, #16]
c0de72f8:	9303      	str	r3, [sp, #12]
c0de72fa:	b2d1      	uxtb	r1, r2
c0de72fc:	42a9      	cmp	r1, r5
c0de72fe:	9608      	str	r6, [sp, #32]
c0de7300:	9206      	str	r2, [sp, #24]
c0de7302:	9107      	str	r1, [sp, #28]
c0de7304:	d213      	bcs.n	c0de732e <b58_encode+0x7e>
c0de7306:	1a6d      	subs	r5, r5, r1
c0de7308:	a832      	add	r0, sp, #200	; 0xc8
c0de730a:	1847      	adds	r7, r0, r1
c0de730c:	2000      	movs	r0, #0
c0de730e:	7839      	ldrb	r1, [r7, #0]
c0de7310:	0200      	lsls	r0, r0, #8
c0de7312:	1846      	adds	r6, r0, r1
c0de7314:	b2b0      	uxth	r0, r6
c0de7316:	243a      	movs	r4, #58	; 0x3a
c0de7318:	4621      	mov	r1, r4
c0de731a:	f001 f941 	bl	c0de85a0 <__udivsi3>
c0de731e:	7038      	strb	r0, [r7, #0]
c0de7320:	4344      	muls	r4, r0
c0de7322:	1b30      	subs	r0, r6, r4
c0de7324:	1e6d      	subs	r5, r5, #1
c0de7326:	1c7f      	adds	r7, r7, #1
c0de7328:	2d00      	cmp	r5, #0
c0de732a:	d1f0      	bne.n	c0de730e <b58_encode+0x5e>
c0de732c:	e000      	b.n	c0de7330 <b58_encode+0x80>
c0de732e:	2000      	movs	r0, #0
c0de7330:	b280      	uxth	r0, r0
c0de7332:	4920      	ldr	r1, [pc, #128]	; (c0de73b4 <b58_encode+0x104>)
c0de7334:	4479      	add	r1, pc
c0de7336:	5c09      	ldrb	r1, [r1, r0]
c0de7338:	9e08      	ldr	r6, [sp, #32]
c0de733a:	1e76      	subs	r6, r6, #1
c0de733c:	b2f0      	uxtb	r0, r6
c0de733e:	aa09      	add	r2, sp, #36	; 0x24
c0de7340:	5411      	strb	r1, [r2, r0]
c0de7342:	a932      	add	r1, sp, #200	; 0xc8
c0de7344:	9a07      	ldr	r2, [sp, #28]
c0de7346:	5c89      	ldrb	r1, [r1, r2]
c0de7348:	2900      	cmp	r1, #0
c0de734a:	d004      	beq.n	c0de7356 <b58_encode+0xa6>
c0de734c:	9c05      	ldr	r4, [sp, #20]
c0de734e:	9d04      	ldr	r5, [sp, #16]
c0de7350:	9b03      	ldr	r3, [sp, #12]
c0de7352:	9a06      	ldr	r2, [sp, #24]
c0de7354:	e004      	b.n	c0de7360 <b58_encode+0xb0>
c0de7356:	9a06      	ldr	r2, [sp, #24]
c0de7358:	1c52      	adds	r2, r2, #1
c0de735a:	9c05      	ldr	r4, [sp, #20]
c0de735c:	9d04      	ldr	r5, [sp, #16]
c0de735e:	9b03      	ldr	r3, [sp, #12]
c0de7360:	b2d1      	uxtb	r1, r2
c0de7362:	42a9      	cmp	r1, r5
c0de7364:	d3c9      	bcc.n	c0de72fa <b58_encode+0x4a>
c0de7366:	9d00      	ldr	r5, [sp, #0]
c0de7368:	e003      	b.n	c0de7372 <b58_encode+0xc2>
c0de736a:	4635      	mov	r5, r6
c0de736c:	20fe      	movs	r0, #254	; 0xfe
c0de736e:	4018      	ands	r0, r3
c0de7370:	461e      	mov	r6, r3
c0de7372:	4283      	cmp	r3, r0
c0de7374:	d90c      	bls.n	c0de7390 <b58_encode+0xe0>
c0de7376:	a909      	add	r1, sp, #36	; 0x24
c0de7378:	5c08      	ldrb	r0, [r1, r0]
c0de737a:	2831      	cmp	r0, #49	; 0x31
c0de737c:	d108      	bne.n	c0de7390 <b58_encode+0xe0>
c0de737e:	1c76      	adds	r6, r6, #1
c0de7380:	b2f0      	uxtb	r0, r6
c0de7382:	e7f6      	b.n	c0de7372 <b58_encode+0xc2>
c0de7384:	1e76      	subs	r6, r6, #1
c0de7386:	b2f0      	uxtb	r0, r6
c0de7388:	a909      	add	r1, sp, #36	; 0x24
c0de738a:	2231      	movs	r2, #49	; 0x31
c0de738c:	540a      	strb	r2, [r1, r0]
c0de738e:	1e6d      	subs	r5, r5, #1
c0de7390:	0628      	lsls	r0, r5, #24
c0de7392:	d1f7      	bne.n	c0de7384 <b58_encode+0xd4>
c0de7394:	1b98      	subs	r0, r3, r6
c0de7396:	b2c7      	uxtb	r7, r0
c0de7398:	42a7      	cmp	r7, r4
c0de739a:	9802      	ldr	r0, [sp, #8]
c0de739c:	d807      	bhi.n	c0de73ae <b58_encode+0xfe>
c0de739e:	b2f0      	uxtb	r0, r6
c0de73a0:	a909      	add	r1, sp, #36	; 0x24
c0de73a2:	1809      	adds	r1, r1, r0
c0de73a4:	9801      	ldr	r0, [sp, #4]
c0de73a6:	463a      	mov	r2, r7
c0de73a8:	f001 fade 	bl	c0de8968 <__aeabi_memcpy>
c0de73ac:	4638      	mov	r0, r7
c0de73ae:	b05b      	add	sp, #364	; 0x16c
c0de73b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de73b2:	46c0      	nop			; (mov r8, r8)
c0de73b4:	00005542 	.word	0x00005542

c0de73b8 <b58_decode>:
c0de73b8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de73ba:	b0d9      	sub	sp, #356	; 0x164
c0de73bc:	9303      	str	r3, [sp, #12]
c0de73be:	9205      	str	r2, [sp, #20]
c0de73c0:	460f      	mov	r7, r1
c0de73c2:	4604      	mov	r4, r0
c0de73c4:	a830      	add	r0, sp, #192	; 0xc0
c0de73c6:	26a4      	movs	r6, #164	; 0xa4
c0de73c8:	4631      	mov	r1, r6
c0de73ca:	f001 fac7 	bl	c0de895c <__aeabi_memclr>
c0de73ce:	a807      	add	r0, sp, #28
c0de73d0:	4631      	mov	r1, r6
c0de73d2:	f001 fac3 	bl	c0de895c <__aeabi_memclr>
c0de73d6:	2500      	movs	r5, #0
c0de73d8:	43e8      	mvns	r0, r5
c0de73da:	1eb9      	subs	r1, r7, #2
c0de73dc:	29a2      	cmp	r1, #162	; 0xa2
c0de73de:	d869      	bhi.n	c0de74b4 <b58_decode+0xfc>
c0de73e0:	9002      	str	r0, [sp, #8]
c0de73e2:	a830      	add	r0, sp, #192	; 0xc0
c0de73e4:	4621      	mov	r1, r4
c0de73e6:	463a      	mov	r2, r7
c0de73e8:	f001 fabe 	bl	c0de8968 <__aeabi_memcpy>
c0de73ec:	4628      	mov	r0, r5
c0de73ee:	9b05      	ldr	r3, [sp, #20]
c0de73f0:	5761      	ldrsb	r1, [r4, r5]
c0de73f2:	2900      	cmp	r1, #0
c0de73f4:	d43f      	bmi.n	c0de7476 <b58_decode+0xbe>
c0de73f6:	b2c9      	uxtb	r1, r1
c0de73f8:	4a2f      	ldr	r2, [pc, #188]	; (c0de74b8 <b58_decode+0x100>)
c0de73fa:	447a      	add	r2, pc
c0de73fc:	5c51      	ldrb	r1, [r2, r1]
c0de73fe:	aa30      	add	r2, sp, #192	; 0xc0
c0de7400:	5551      	strb	r1, [r2, r5]
c0de7402:	29ff      	cmp	r1, #255	; 0xff
c0de7404:	d037      	beq.n	c0de7476 <b58_decode+0xbe>
c0de7406:	1c40      	adds	r0, r0, #1
c0de7408:	b2c5      	uxtb	r5, r0
c0de740a:	42bd      	cmp	r5, r7
c0de740c:	d3f0      	bcc.n	c0de73f0 <b58_decode+0x38>
c0de740e:	2200      	movs	r2, #0
c0de7410:	4611      	mov	r1, r2
c0de7412:	a830      	add	r0, sp, #192	; 0xc0
c0de7414:	5c80      	ldrb	r0, [r0, r2]
c0de7416:	2800      	cmp	r0, #0
c0de7418:	d103      	bne.n	c0de7422 <b58_decode+0x6a>
c0de741a:	1c49      	adds	r1, r1, #1
c0de741c:	b2ca      	uxtb	r2, r1
c0de741e:	42ba      	cmp	r2, r7
c0de7420:	d3f7      	bcc.n	c0de7412 <b58_decode+0x5a>
c0de7422:	9201      	str	r2, [sp, #4]
c0de7424:	b2c8      	uxtb	r0, r1
c0de7426:	42b8      	cmp	r0, r7
c0de7428:	d227      	bcs.n	c0de747a <b58_decode+0xc2>
c0de742a:	463a      	mov	r2, r7
c0de742c:	b2cc      	uxtb	r4, r1
c0de742e:	42bc      	cmp	r4, r7
c0de7430:	9006      	str	r0, [sp, #24]
c0de7432:	d211      	bcs.n	c0de7458 <b58_decode+0xa0>
c0de7434:	9204      	str	r2, [sp, #16]
c0de7436:	2000      	movs	r0, #0
c0de7438:	460d      	mov	r5, r1
c0de743a:	aa30      	add	r2, sp, #192	; 0xc0
c0de743c:	5d16      	ldrb	r6, [r2, r4]
c0de743e:	233a      	movs	r3, #58	; 0x3a
c0de7440:	4343      	muls	r3, r0
c0de7442:	199e      	adds	r6, r3, r6
c0de7444:	0a30      	lsrs	r0, r6, #8
c0de7446:	5510      	strb	r0, [r2, r4]
c0de7448:	b2f0      	uxtb	r0, r6
c0de744a:	1c6d      	adds	r5, r5, #1
c0de744c:	b2ec      	uxtb	r4, r5
c0de744e:	42bc      	cmp	r4, r7
c0de7450:	d3f3      	bcc.n	c0de743a <b58_decode+0x82>
c0de7452:	9b05      	ldr	r3, [sp, #20]
c0de7454:	9a04      	ldr	r2, [sp, #16]
c0de7456:	e000      	b.n	c0de745a <b58_decode+0xa2>
c0de7458:	2600      	movs	r6, #0
c0de745a:	1e52      	subs	r2, r2, #1
c0de745c:	b2d5      	uxtb	r5, r2
c0de745e:	a807      	add	r0, sp, #28
c0de7460:	5546      	strb	r6, [r0, r5]
c0de7462:	a830      	add	r0, sp, #192	; 0xc0
c0de7464:	9c06      	ldr	r4, [sp, #24]
c0de7466:	5d00      	ldrb	r0, [r0, r4]
c0de7468:	2800      	cmp	r0, #0
c0de746a:	d100      	bne.n	c0de746e <b58_decode+0xb6>
c0de746c:	1c49      	adds	r1, r1, #1
c0de746e:	b2c8      	uxtb	r0, r1
c0de7470:	42b8      	cmp	r0, r7
c0de7472:	d3db      	bcc.n	c0de742c <b58_decode+0x74>
c0de7474:	e003      	b.n	c0de747e <b58_decode+0xc6>
c0de7476:	9802      	ldr	r0, [sp, #8]
c0de7478:	e01c      	b.n	c0de74b4 <b58_decode+0xfc>
c0de747a:	b2fd      	uxtb	r5, r7
c0de747c:	463a      	mov	r2, r7
c0de747e:	42bd      	cmp	r5, r7
c0de7480:	d209      	bcs.n	c0de7496 <b58_decode+0xde>
c0de7482:	9903      	ldr	r1, [sp, #12]
c0de7484:	a807      	add	r0, sp, #28
c0de7486:	5d40      	ldrb	r0, [r0, r5]
c0de7488:	2800      	cmp	r0, #0
c0de748a:	d105      	bne.n	c0de7498 <b58_decode+0xe0>
c0de748c:	1c52      	adds	r2, r2, #1
c0de748e:	b2d5      	uxtb	r5, r2
c0de7490:	42bd      	cmp	r5, r7
c0de7492:	d3f7      	bcc.n	c0de7484 <b58_decode+0xcc>
c0de7494:	e000      	b.n	c0de7498 <b58_decode+0xe0>
c0de7496:	9903      	ldr	r1, [sp, #12]
c0de7498:	9a01      	ldr	r2, [sp, #4]
c0de749a:	1b50      	subs	r0, r2, r5
c0de749c:	19c4      	adds	r4, r0, r7
c0de749e:	428c      	cmp	r4, r1
c0de74a0:	9802      	ldr	r0, [sp, #8]
c0de74a2:	dc07      	bgt.n	c0de74b4 <b58_decode+0xfc>
c0de74a4:	a807      	add	r0, sp, #28
c0de74a6:	1940      	adds	r0, r0, r5
c0de74a8:	1a81      	subs	r1, r0, r2
c0de74aa:	4618      	mov	r0, r3
c0de74ac:	4622      	mov	r2, r4
c0de74ae:	f001 fa5b 	bl	c0de8968 <__aeabi_memcpy>
c0de74b2:	4620      	mov	r0, r4
c0de74b4:	b059      	add	sp, #356	; 0x164
c0de74b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de74b8:	000054b6 	.word	0x000054b6

c0de74bc <read_uint32_be>:
c0de74bc:	7801      	ldrb	r1, [r0, #0]
c0de74be:	0609      	lsls	r1, r1, #24
c0de74c0:	7842      	ldrb	r2, [r0, #1]
c0de74c2:	0412      	lsls	r2, r2, #16
c0de74c4:	1851      	adds	r1, r2, r1
c0de74c6:	7882      	ldrb	r2, [r0, #2]
c0de74c8:	0212      	lsls	r2, r2, #8
c0de74ca:	1889      	adds	r1, r1, r2
c0de74cc:	78c0      	ldrb	r0, [r0, #3]
c0de74ce:	1808      	adds	r0, r1, r0
c0de74d0:	4770      	bx	lr

c0de74d2 <read_uint64_be>:
c0de74d2:	7941      	ldrb	r1, [r0, #5]
c0de74d4:	0409      	lsls	r1, r1, #16
c0de74d6:	7902      	ldrb	r2, [r0, #4]
c0de74d8:	0612      	lsls	r2, r2, #24
c0de74da:	1851      	adds	r1, r2, r1
c0de74dc:	7982      	ldrb	r2, [r0, #6]
c0de74de:	0212      	lsls	r2, r2, #8
c0de74e0:	1889      	adds	r1, r1, r2
c0de74e2:	79c2      	ldrb	r2, [r0, #7]
c0de74e4:	188a      	adds	r2, r1, r2
c0de74e6:	7801      	ldrb	r1, [r0, #0]
c0de74e8:	0609      	lsls	r1, r1, #24
c0de74ea:	7843      	ldrb	r3, [r0, #1]
c0de74ec:	041b      	lsls	r3, r3, #16
c0de74ee:	1859      	adds	r1, r3, r1
c0de74f0:	7883      	ldrb	r3, [r0, #2]
c0de74f2:	021b      	lsls	r3, r3, #8
c0de74f4:	18c9      	adds	r1, r1, r3
c0de74f6:	78c0      	ldrb	r0, [r0, #3]
c0de74f8:	1809      	adds	r1, r1, r0
c0de74fa:	4610      	mov	r0, r2
c0de74fc:	4770      	bx	lr
c0de74fe:	d4d4      	bmi.n	c0de74aa <b58_decode+0xf2>

c0de7500 <amount_to_string>:
c0de7500:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7502:	b089      	sub	sp, #36	; 0x24
c0de7504:	4615      	mov	r5, r2
c0de7506:	9001      	str	r0, [sp, #4]
c0de7508:	4610      	mov	r0, r2
c0de750a:	4318      	orrs	r0, r3
c0de750c:	d02a      	beq.n	c0de7564 <amount_to_string+0x64>
c0de750e:	9102      	str	r1, [sp, #8]
c0de7510:	2000      	movs	r0, #0
c0de7512:	9005      	str	r0, [sp, #20]
c0de7514:	2109      	movs	r1, #9
c0de7516:	9508      	str	r5, [sp, #32]
c0de7518:	462e      	mov	r6, r5
c0de751a:	9303      	str	r3, [sp, #12]
c0de751c:	461d      	mov	r5, r3
c0de751e:	9107      	str	r1, [sp, #28]
c0de7520:	220a      	movs	r2, #10
c0de7522:	9206      	str	r2, [sp, #24]
c0de7524:	2700      	movs	r7, #0
c0de7526:	4630      	mov	r0, r6
c0de7528:	4629      	mov	r1, r5
c0de752a:	463b      	mov	r3, r7
c0de752c:	f001 f8d0 	bl	c0de86d0 <__aeabi_uldivmod>
c0de7530:	4604      	mov	r4, r0
c0de7532:	9104      	str	r1, [sp, #16]
c0de7534:	9a06      	ldr	r2, [sp, #24]
c0de7536:	463b      	mov	r3, r7
c0de7538:	f001 f8ea 	bl	c0de8710 <__aeabi_lmul>
c0de753c:	1a30      	subs	r0, r6, r0
c0de753e:	462a      	mov	r2, r5
c0de7540:	418a      	sbcs	r2, r1
c0de7542:	4302      	orrs	r2, r0
c0de7544:	d110      	bne.n	c0de7568 <amount_to_string+0x68>
c0de7546:	9907      	ldr	r1, [sp, #28]
c0de7548:	1e49      	subs	r1, r1, #1
c0de754a:	9b05      	ldr	r3, [sp, #20]
c0de754c:	41bb      	sbcs	r3, r7
c0de754e:	2201      	movs	r2, #1
c0de7550:	3e0a      	subs	r6, #10
c0de7552:	41bd      	sbcs	r5, r7
c0de7554:	d309      	bcc.n	c0de756a <amount_to_string+0x6a>
c0de7556:	4608      	mov	r0, r1
c0de7558:	9305      	str	r3, [sp, #20]
c0de755a:	4318      	orrs	r0, r3
c0de755c:	4626      	mov	r6, r4
c0de755e:	9d04      	ldr	r5, [sp, #16]
c0de7560:	d1dd      	bne.n	c0de751e <amount_to_string+0x1e>
c0de7562:	e002      	b.n	c0de756a <amount_to_string+0x6a>
c0de7564:	2201      	movs	r2, #1
c0de7566:	e026      	b.n	c0de75b6 <amount_to_string+0xb6>
c0de7568:	9a07      	ldr	r2, [sp, #28]
c0de756a:	483c      	ldr	r0, [pc, #240]	; (c0de765c <amount_to_string+0x15c>)
c0de756c:	9d08      	ldr	r5, [sp, #32]
c0de756e:	1a28      	subs	r0, r5, r0
c0de7570:	9b03      	ldr	r3, [sp, #12]
c0de7572:	4618      	mov	r0, r3
c0de7574:	41b8      	sbcs	r0, r7
c0de7576:	d201      	bcs.n	c0de757c <amount_to_string+0x7c>
c0de7578:	9902      	ldr	r1, [sp, #8]
c0de757a:	e01c      	b.n	c0de75b6 <amount_to_string+0xb6>
c0de757c:	9207      	str	r2, [sp, #28]
c0de757e:	4a37      	ldr	r2, [pc, #220]	; (c0de765c <amount_to_string+0x15c>)
c0de7580:	4628      	mov	r0, r5
c0de7582:	2500      	movs	r5, #0
c0de7584:	4619      	mov	r1, r3
c0de7586:	462b      	mov	r3, r5
c0de7588:	f001 f8a2 	bl	c0de86d0 <__aeabi_uldivmod>
c0de758c:	4604      	mov	r4, r0
c0de758e:	460e      	mov	r6, r1
c0de7590:	2701      	movs	r7, #1
c0de7592:	220a      	movs	r2, #10
c0de7594:	4620      	mov	r0, r4
c0de7596:	4631      	mov	r1, r6
c0de7598:	462b      	mov	r3, r5
c0de759a:	f001 f899 	bl	c0de86d0 <__aeabi_uldivmod>
c0de759e:	1c7f      	adds	r7, r7, #1
c0de75a0:	3c0a      	subs	r4, #10
c0de75a2:	41ae      	sbcs	r6, r5
c0de75a4:	4604      	mov	r4, r0
c0de75a6:	460e      	mov	r6, r1
c0de75a8:	d2f3      	bcs.n	c0de7592 <amount_to_string+0x92>
c0de75aa:	2f01      	cmp	r7, #1
c0de75ac:	9b03      	ldr	r3, [sp, #12]
c0de75ae:	9d08      	ldr	r5, [sp, #32]
c0de75b0:	9902      	ldr	r1, [sp, #8]
c0de75b2:	9a07      	ldr	r2, [sp, #28]
c0de75b4:	d100      	bne.n	c0de75b8 <amount_to_string+0xb8>
c0de75b6:	2702      	movs	r7, #2
c0de75b8:	18b8      	adds	r0, r7, r2
c0de75ba:	1c42      	adds	r2, r0, #1
c0de75bc:	428a      	cmp	r2, r1
c0de75be:	d903      	bls.n	c0de75c8 <amount_to_string+0xc8>
c0de75c0:	2000      	movs	r0, #0
c0de75c2:	9901      	ldr	r1, [sp, #4]
c0de75c4:	7008      	strb	r0, [r1, #0]
c0de75c6:	e045      	b.n	c0de7654 <amount_to_string+0x154>
c0de75c8:	2200      	movs	r2, #0
c0de75ca:	9901      	ldr	r1, [sp, #4]
c0de75cc:	540a      	strb	r2, [r1, r0]
c0de75ce:	1808      	adds	r0, r1, r0
c0de75d0:	9006      	str	r0, [sp, #24]
c0de75d2:	9202      	str	r2, [sp, #8]
c0de75d4:	43d0      	mvns	r0, r2
c0de75d6:	9003      	str	r0, [sp, #12]
c0de75d8:	2001      	movs	r0, #1
c0de75da:	9508      	str	r5, [sp, #32]
c0de75dc:	9007      	str	r0, [sp, #28]
c0de75de:	270a      	movs	r7, #10
c0de75e0:	2400      	movs	r4, #0
c0de75e2:	4628      	mov	r0, r5
c0de75e4:	4619      	mov	r1, r3
c0de75e6:	463a      	mov	r2, r7
c0de75e8:	461d      	mov	r5, r3
c0de75ea:	4623      	mov	r3, r4
c0de75ec:	f001 f870 	bl	c0de86d0 <__aeabi_uldivmod>
c0de75f0:	460e      	mov	r6, r1
c0de75f2:	9005      	str	r0, [sp, #20]
c0de75f4:	463a      	mov	r2, r7
c0de75f6:	9f07      	ldr	r7, [sp, #28]
c0de75f8:	9404      	str	r4, [sp, #16]
c0de75fa:	4623      	mov	r3, r4
c0de75fc:	f001 f888 	bl	c0de8710 <__aeabi_lmul>
c0de7600:	462b      	mov	r3, r5
c0de7602:	9d08      	ldr	r5, [sp, #32]
c0de7604:	1a28      	subs	r0, r5, r0
c0de7606:	461a      	mov	r2, r3
c0de7608:	418a      	sbcs	r2, r1
c0de760a:	2f0a      	cmp	r7, #10
c0de760c:	d106      	bne.n	c0de761c <amount_to_string+0x11c>
c0de760e:	202e      	movs	r0, #46	; 0x2e
c0de7610:	9906      	ldr	r1, [sp, #24]
c0de7612:	9a03      	ldr	r2, [sp, #12]
c0de7614:	5488      	strb	r0, [r1, r2]
c0de7616:	1889      	adds	r1, r1, r2
c0de7618:	9106      	str	r1, [sp, #24]
c0de761a:	e014      	b.n	c0de7646 <amount_to_string+0x146>
c0de761c:	1e79      	subs	r1, r7, #1
c0de761e:	4633      	mov	r3, r6
c0de7620:	9d05      	ldr	r5, [sp, #20]
c0de7622:	2907      	cmp	r1, #7
c0de7624:	d908      	bls.n	c0de7638 <amount_to_string+0x138>
c0de7626:	2130      	movs	r1, #48	; 0x30
c0de7628:	4308      	orrs	r0, r1
c0de762a:	9906      	ldr	r1, [sp, #24]
c0de762c:	9a03      	ldr	r2, [sp, #12]
c0de762e:	5488      	strb	r0, [r1, r2]
c0de7630:	1889      	adds	r1, r1, r2
c0de7632:	9106      	str	r1, [sp, #24]
c0de7634:	2001      	movs	r0, #1
c0de7636:	e005      	b.n	c0de7644 <amount_to_string+0x144>
c0de7638:	4302      	orrs	r2, r0
c0de763a:	d1f4      	bne.n	c0de7626 <amount_to_string+0x126>
c0de763c:	9902      	ldr	r1, [sp, #8]
c0de763e:	2900      	cmp	r1, #0
c0de7640:	d1f1      	bne.n	c0de7626 <amount_to_string+0x126>
c0de7642:	9804      	ldr	r0, [sp, #16]
c0de7644:	9002      	str	r0, [sp, #8]
c0de7646:	4629      	mov	r1, r5
c0de7648:	4319      	orrs	r1, r3
c0de764a:	1c78      	adds	r0, r7, #1
c0de764c:	2900      	cmp	r1, #0
c0de764e:	d1c4      	bne.n	c0de75da <amount_to_string+0xda>
c0de7650:	2f0b      	cmp	r7, #11
c0de7652:	d3c2      	bcc.n	c0de75da <amount_to_string+0xda>
c0de7654:	9801      	ldr	r0, [sp, #4]
c0de7656:	b009      	add	sp, #36	; 0x24
c0de7658:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de765a:	46c0      	nop			; (mov r8, r8)
c0de765c:	3b9aca00 	.word	0x3b9aca00

c0de7660 <value_to_string>:
c0de7660:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7662:	b087      	sub	sp, #28
c0de7664:	4614      	mov	r4, r2
c0de7666:	431c      	orrs	r4, r3
c0de7668:	9001      	str	r0, [sp, #4]
c0de766a:	d018      	beq.n	c0de769e <value_to_string+0x3e>
c0de766c:	9104      	str	r1, [sp, #16]
c0de766e:	2401      	movs	r4, #1
c0de7670:	9205      	str	r2, [sp, #20]
c0de7672:	4615      	mov	r5, r2
c0de7674:	9306      	str	r3, [sp, #24]
c0de7676:	461e      	mov	r6, r3
c0de7678:	220a      	movs	r2, #10
c0de767a:	2700      	movs	r7, #0
c0de767c:	4628      	mov	r0, r5
c0de767e:	4631      	mov	r1, r6
c0de7680:	463b      	mov	r3, r7
c0de7682:	f001 f825 	bl	c0de86d0 <__aeabi_uldivmod>
c0de7686:	1c64      	adds	r4, r4, #1
c0de7688:	3d0a      	subs	r5, #10
c0de768a:	41be      	sbcs	r6, r7
c0de768c:	4605      	mov	r5, r0
c0de768e:	460e      	mov	r6, r1
c0de7690:	d2f2      	bcs.n	c0de7678 <value_to_string+0x18>
c0de7692:	2c01      	cmp	r4, #1
c0de7694:	9801      	ldr	r0, [sp, #4]
c0de7696:	9b06      	ldr	r3, [sp, #24]
c0de7698:	9a05      	ldr	r2, [sp, #20]
c0de769a:	9904      	ldr	r1, [sp, #16]
c0de769c:	d100      	bne.n	c0de76a0 <value_to_string+0x40>
c0de769e:	2402      	movs	r4, #2
c0de76a0:	428c      	cmp	r4, r1
c0de76a2:	d901      	bls.n	c0de76a8 <value_to_string+0x48>
c0de76a4:	2000      	movs	r0, #0
c0de76a6:	e02b      	b.n	c0de7700 <value_to_string+0xa0>
c0de76a8:	1900      	adds	r0, r0, r4
c0de76aa:	1e41      	subs	r1, r0, #1
c0de76ac:	2400      	movs	r4, #0
c0de76ae:	700c      	strb	r4, [r1, #0]
c0de76b0:	1e80      	subs	r0, r0, #2
c0de76b2:	9002      	str	r0, [sp, #8]
c0de76b4:	9403      	str	r4, [sp, #12]
c0de76b6:	4620      	mov	r0, r4
c0de76b8:	a904      	add	r1, sp, #16
c0de76ba:	c10d      	stmia	r1!, {r0, r2, r3}
c0de76bc:	270a      	movs	r7, #10
c0de76be:	4610      	mov	r0, r2
c0de76c0:	4619      	mov	r1, r3
c0de76c2:	463a      	mov	r2, r7
c0de76c4:	9c03      	ldr	r4, [sp, #12]
c0de76c6:	4623      	mov	r3, r4
c0de76c8:	f001 f802 	bl	c0de86d0 <__aeabi_uldivmod>
c0de76cc:	4606      	mov	r6, r0
c0de76ce:	460d      	mov	r5, r1
c0de76d0:	463a      	mov	r2, r7
c0de76d2:	9f04      	ldr	r7, [sp, #16]
c0de76d4:	4623      	mov	r3, r4
c0de76d6:	f001 f81b 	bl	c0de8710 <__aeabi_lmul>
c0de76da:	9a05      	ldr	r2, [sp, #20]
c0de76dc:	1a10      	subs	r0, r2, r0
c0de76de:	2130      	movs	r1, #48	; 0x30
c0de76e0:	4301      	orrs	r1, r0
c0de76e2:	9802      	ldr	r0, [sp, #8]
c0de76e4:	55c1      	strb	r1, [r0, r7]
c0de76e6:	1e78      	subs	r0, r7, #1
c0de76e8:	2109      	movs	r1, #9
c0de76ea:	1a89      	subs	r1, r1, r2
c0de76ec:	9a06      	ldr	r2, [sp, #24]
c0de76ee:	4194      	sbcs	r4, r2
c0de76f0:	4632      	mov	r2, r6
c0de76f2:	462b      	mov	r3, r5
c0de76f4:	d3e0      	bcc.n	c0de76b8 <value_to_string+0x58>
c0de76f6:	2f01      	cmp	r7, #1
c0de76f8:	4632      	mov	r2, r6
c0de76fa:	462b      	mov	r3, r5
c0de76fc:	d0dc      	beq.n	c0de76b8 <value_to_string+0x58>
c0de76fe:	9801      	ldr	r0, [sp, #4]
c0de7700:	b007      	add	sp, #28
c0de7702:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de7704 <packed_bit_array_set>:
c0de7704:	b510      	push	{r4, lr}
c0de7706:	2307      	movs	r3, #7
c0de7708:	400b      	ands	r3, r1
c0de770a:	2401      	movs	r4, #1
c0de770c:	409c      	lsls	r4, r3
c0de770e:	08c9      	lsrs	r1, r1, #3
c0de7710:	5c43      	ldrb	r3, [r0, r1]
c0de7712:	2a00      	cmp	r2, #0
c0de7714:	d101      	bne.n	c0de771a <packed_bit_array_set+0x16>
c0de7716:	43a3      	bics	r3, r4
c0de7718:	e000      	b.n	c0de771c <packed_bit_array_set+0x18>
c0de771a:	4323      	orrs	r3, r4
c0de771c:	5443      	strb	r3, [r0, r1]
c0de771e:	bd10      	pop	{r4, pc}

c0de7720 <packed_bit_array_get>:
c0de7720:	2207      	movs	r2, #7
c0de7722:	400a      	ands	r2, r1
c0de7724:	08c9      	lsrs	r1, r1, #3
c0de7726:	5c41      	ldrb	r1, [r0, r1]
c0de7728:	40d1      	lsrs	r1, r2
c0de772a:	2001      	movs	r0, #1
c0de772c:	4008      	ands	r0, r1
c0de772e:	4770      	bx	lr

c0de7730 <read_public_key_compressed>:
c0de7730:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7732:	b08b      	sub	sp, #44	; 0x2c
c0de7734:	460d      	mov	r5, r1
c0de7736:	4604      	mov	r4, r0
c0de7738:	2138      	movs	r1, #56	; 0x38
c0de773a:	4628      	mov	r0, r5
c0de773c:	f001 faaa 	bl	c0de8c94 <strnlen>
c0de7740:	2837      	cmp	r0, #55	; 0x37
c0de7742:	d11c      	bne.n	c0de777e <read_public_key_compressed+0x4e>
c0de7744:	ae01      	add	r6, sp, #4
c0de7746:	2728      	movs	r7, #40	; 0x28
c0de7748:	4630      	mov	r0, r6
c0de774a:	4639      	mov	r1, r7
c0de774c:	f001 f906 	bl	c0de895c <__aeabi_memclr>
c0de7750:	2137      	movs	r1, #55	; 0x37
c0de7752:	4628      	mov	r0, r5
c0de7754:	4632      	mov	r2, r6
c0de7756:	463b      	mov	r3, r7
c0de7758:	f7ff fe2e 	bl	c0de73b8 <b58_decode>
c0de775c:	4620      	mov	r0, r4
c0de775e:	301f      	adds	r0, #31
c0de7760:	1cf1      	adds	r1, r6, #3
c0de7762:	2200      	movs	r2, #0
c0de7764:	5c8b      	ldrb	r3, [r1, r2]
c0de7766:	7003      	strb	r3, [r0, #0]
c0de7768:	1e40      	subs	r0, r0, #1
c0de776a:	1c52      	adds	r2, r2, #1
c0de776c:	2a20      	cmp	r2, #32
c0de776e:	d1f9      	bne.n	c0de7764 <read_public_key_compressed+0x34>
c0de7770:	2023      	movs	r0, #35	; 0x23
c0de7772:	a901      	add	r1, sp, #4
c0de7774:	5c08      	ldrb	r0, [r1, r0]
c0de7776:	1e41      	subs	r1, r0, #1
c0de7778:	4188      	sbcs	r0, r1
c0de777a:	2120      	movs	r1, #32
c0de777c:	5460      	strb	r0, [r4, r1]
c0de777e:	b00b      	add	sp, #44	; 0x2c
c0de7780:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7782:	d4d4      	bmi.n	c0de772e <packed_bit_array_get+0xe>

c0de7784 <ux_flow_is_first>:
c0de7784:	b5b0      	push	{r4, r5, r7, lr}
c0de7786:	4a15      	ldr	r2, [pc, #84]	; (c0de77dc <ux_flow_is_first+0x58>)
c0de7788:	4648      	mov	r0, r9
c0de778a:	5c81      	ldrb	r1, [r0, r2]
c0de778c:	2001      	movs	r0, #1
c0de778e:	2901      	cmp	r1, #1
c0de7790:	d823      	bhi.n	c0de77da <ux_flow_is_first+0x56>
c0de7792:	464b      	mov	r3, r9
c0de7794:	189b      	adds	r3, r3, r2
c0de7796:	1e49      	subs	r1, r1, #1
c0de7798:	240c      	movs	r4, #12
c0de779a:	434c      	muls	r4, r1
c0de779c:	1919      	adds	r1, r3, r4
c0de779e:	8d09      	ldrh	r1, [r1, #40]	; 0x28
c0de77a0:	2900      	cmp	r1, #0
c0de77a2:	d01a      	beq.n	c0de77da <ux_flow_is_first+0x56>
c0de77a4:	464b      	mov	r3, r9
c0de77a6:	189b      	adds	r3, r3, r2
c0de77a8:	191b      	adds	r3, r3, r4
c0de77aa:	6a1b      	ldr	r3, [r3, #32]
c0de77ac:	2b00      	cmp	r3, #0
c0de77ae:	d014      	beq.n	c0de77da <ux_flow_is_first+0x56>
c0de77b0:	464d      	mov	r5, r9
c0de77b2:	18aa      	adds	r2, r5, r2
c0de77b4:	1912      	adds	r2, r2, r4
c0de77b6:	8c92      	ldrh	r2, [r2, #36]	; 0x24
c0de77b8:	2a00      	cmp	r2, #0
c0de77ba:	d105      	bne.n	c0de77c8 <ux_flow_is_first+0x44>
c0de77bc:	008c      	lsls	r4, r1, #2
c0de77be:	18e4      	adds	r4, r4, r3
c0de77c0:	1f24      	subs	r4, r4, #4
c0de77c2:	6824      	ldr	r4, [r4, #0]
c0de77c4:	1ce4      	adds	r4, r4, #3
c0de77c6:	d108      	bne.n	c0de77da <ux_flow_is_first+0x56>
c0de77c8:	428a      	cmp	r2, r1
c0de77ca:	d205      	bcs.n	c0de77d8 <ux_flow_is_first+0x54>
c0de77cc:	0091      	lsls	r1, r2, #2
c0de77ce:	18c9      	adds	r1, r1, r3
c0de77d0:	1f09      	subs	r1, r1, #4
c0de77d2:	6809      	ldr	r1, [r1, #0]
c0de77d4:	1c89      	adds	r1, r1, #2
c0de77d6:	d000      	beq.n	c0de77da <ux_flow_is_first+0x56>
c0de77d8:	2000      	movs	r0, #0
c0de77da:	bdb0      	pop	{r4, r5, r7, pc}
c0de77dc:	0000005c 	.word	0x0000005c

c0de77e0 <ux_flow_is_last>:
c0de77e0:	b5b0      	push	{r4, r5, r7, lr}
c0de77e2:	4913      	ldr	r1, [pc, #76]	; (c0de7830 <ux_flow_is_last+0x50>)
c0de77e4:	4648      	mov	r0, r9
c0de77e6:	5c42      	ldrb	r2, [r0, r1]
c0de77e8:	2001      	movs	r0, #1
c0de77ea:	2a01      	cmp	r2, #1
c0de77ec:	d81e      	bhi.n	c0de782c <ux_flow_is_last+0x4c>
c0de77ee:	464b      	mov	r3, r9
c0de77f0:	185b      	adds	r3, r3, r1
c0de77f2:	1e52      	subs	r2, r2, #1
c0de77f4:	240c      	movs	r4, #12
c0de77f6:	4354      	muls	r4, r2
c0de77f8:	191a      	adds	r2, r3, r4
c0de77fa:	8d12      	ldrh	r2, [r2, #40]	; 0x28
c0de77fc:	2a00      	cmp	r2, #0
c0de77fe:	d015      	beq.n	c0de782c <ux_flow_is_last+0x4c>
c0de7800:	464b      	mov	r3, r9
c0de7802:	185b      	adds	r3, r3, r1
c0de7804:	191b      	adds	r3, r3, r4
c0de7806:	6a1b      	ldr	r3, [r3, #32]
c0de7808:	2b00      	cmp	r3, #0
c0de780a:	d00f      	beq.n	c0de782c <ux_flow_is_last+0x4c>
c0de780c:	464d      	mov	r5, r9
c0de780e:	1869      	adds	r1, r5, r1
c0de7810:	1909      	adds	r1, r1, r4
c0de7812:	8c89      	ldrh	r1, [r1, #36]	; 0x24
c0de7814:	1e54      	subs	r4, r2, #1
c0de7816:	428c      	cmp	r4, r1
c0de7818:	dd08      	ble.n	c0de782c <ux_flow_is_last+0x4c>
c0de781a:	1e92      	subs	r2, r2, #2
c0de781c:	428a      	cmp	r2, r1
c0de781e:	dd04      	ble.n	c0de782a <ux_flow_is_last+0x4a>
c0de7820:	0089      	lsls	r1, r1, #2
c0de7822:	18c9      	adds	r1, r1, r3
c0de7824:	6849      	ldr	r1, [r1, #4]
c0de7826:	1c89      	adds	r1, r1, #2
c0de7828:	d000      	beq.n	c0de782c <ux_flow_is_last+0x4c>
c0de782a:	2000      	movs	r0, #0
c0de782c:	bdb0      	pop	{r4, r5, r7, pc}
c0de782e:	46c0      	nop			; (mov r8, r8)
c0de7830:	0000005c 	.word	0x0000005c

c0de7834 <ux_flow_direction>:
c0de7834:	490b      	ldr	r1, [pc, #44]	; (c0de7864 <ux_flow_direction+0x30>)
c0de7836:	4648      	mov	r0, r9
c0de7838:	5c40      	ldrb	r0, [r0, r1]
c0de783a:	2800      	cmp	r0, #0
c0de783c:	d00e      	beq.n	c0de785c <ux_flow_direction+0x28>
c0de783e:	464a      	mov	r2, r9
c0de7840:	1851      	adds	r1, r2, r1
c0de7842:	220c      	movs	r2, #12
c0de7844:	4342      	muls	r2, r0
c0de7846:	1851      	adds	r1, r2, r1
c0de7848:	8b48      	ldrh	r0, [r1, #26]
c0de784a:	8b09      	ldrh	r1, [r1, #24]
c0de784c:	4281      	cmp	r1, r0
c0de784e:	d901      	bls.n	c0de7854 <ux_flow_direction+0x20>
c0de7850:	2001      	movs	r0, #1
c0de7852:	e004      	b.n	c0de785e <ux_flow_direction+0x2a>
c0de7854:	4281      	cmp	r1, r0
c0de7856:	d201      	bcs.n	c0de785c <ux_flow_direction+0x28>
c0de7858:	20ff      	movs	r0, #255	; 0xff
c0de785a:	e000      	b.n	c0de785e <ux_flow_direction+0x2a>
c0de785c:	2000      	movs	r0, #0
c0de785e:	b240      	sxtb	r0, r0
c0de7860:	4770      	bx	lr
c0de7862:	46c0      	nop			; (mov r8, r8)
c0de7864:	0000005c 	.word	0x0000005c

c0de7868 <ux_flow_get_current>:
c0de7868:	b5b0      	push	{r4, r5, r7, lr}
c0de786a:	4912      	ldr	r1, [pc, #72]	; (c0de78b4 <ux_flow_get_current+0x4c>)
c0de786c:	4648      	mov	r0, r9
c0de786e:	5c42      	ldrb	r2, [r0, r1]
c0de7870:	2000      	movs	r0, #0
c0de7872:	2a01      	cmp	r2, #1
c0de7874:	d81d      	bhi.n	c0de78b2 <ux_flow_get_current+0x4a>
c0de7876:	464b      	mov	r3, r9
c0de7878:	185b      	adds	r3, r3, r1
c0de787a:	1e54      	subs	r4, r2, #1
c0de787c:	220c      	movs	r2, #12
c0de787e:	4362      	muls	r2, r4
c0de7880:	189b      	adds	r3, r3, r2
c0de7882:	8d1b      	ldrh	r3, [r3, #40]	; 0x28
c0de7884:	2b00      	cmp	r3, #0
c0de7886:	d014      	beq.n	c0de78b2 <ux_flow_get_current+0x4a>
c0de7888:	464c      	mov	r4, r9
c0de788a:	1864      	adds	r4, r4, r1
c0de788c:	18a4      	adds	r4, r4, r2
c0de788e:	6a24      	ldr	r4, [r4, #32]
c0de7890:	2c00      	cmp	r4, #0
c0de7892:	d00e      	beq.n	c0de78b2 <ux_flow_get_current+0x4a>
c0de7894:	464d      	mov	r5, r9
c0de7896:	1869      	adds	r1, r5, r1
c0de7898:	1889      	adds	r1, r1, r2
c0de789a:	8c89      	ldrh	r1, [r1, #36]	; 0x24
c0de789c:	4299      	cmp	r1, r3
c0de789e:	d208      	bcs.n	c0de78b2 <ux_flow_get_current+0x4a>
c0de78a0:	0089      	lsls	r1, r1, #2
c0de78a2:	5861      	ldr	r1, [r4, r1]
c0de78a4:	2203      	movs	r2, #3
c0de78a6:	43d2      	mvns	r2, r2
c0de78a8:	4291      	cmp	r1, r2
c0de78aa:	d802      	bhi.n	c0de78b2 <ux_flow_get_current+0x4a>
c0de78ac:	4608      	mov	r0, r1
c0de78ae:	f7fd fa13 	bl	c0de4cd8 <pic>
c0de78b2:	bdb0      	pop	{r4, r5, r7, pc}
c0de78b4:	0000005c 	.word	0x0000005c

c0de78b8 <ux_flow_next_internal>:
c0de78b8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de78ba:	b081      	sub	sp, #4
c0de78bc:	4601      	mov	r1, r0
c0de78be:	4a21      	ldr	r2, [pc, #132]	; (c0de7944 <ux_flow_next_internal+0x8c>)
c0de78c0:	4648      	mov	r0, r9
c0de78c2:	5c80      	ldrb	r0, [r0, r2]
c0de78c4:	1e40      	subs	r0, r0, #1
c0de78c6:	d83a      	bhi.n	c0de793e <ux_flow_next_internal+0x86>
c0de78c8:	230c      	movs	r3, #12
c0de78ca:	4343      	muls	r3, r0
c0de78cc:	464c      	mov	r4, r9
c0de78ce:	18a4      	adds	r4, r4, r2
c0de78d0:	18e4      	adds	r4, r4, r3
c0de78d2:	8d26      	ldrh	r6, [r4, #40]	; 0x28
c0de78d4:	2e00      	cmp	r6, #0
c0de78d6:	d032      	beq.n	c0de793e <ux_flow_next_internal+0x86>
c0de78d8:	464c      	mov	r4, r9
c0de78da:	18a4      	adds	r4, r4, r2
c0de78dc:	18e4      	adds	r4, r4, r3
c0de78de:	6a27      	ldr	r7, [r4, #32]
c0de78e0:	2f00      	cmp	r7, #0
c0de78e2:	d02c      	beq.n	c0de793e <ux_flow_next_internal+0x86>
c0de78e4:	2e01      	cmp	r6, #1
c0de78e6:	d02a      	beq.n	c0de793e <ux_flow_next_internal+0x86>
c0de78e8:	464c      	mov	r4, r9
c0de78ea:	18a4      	adds	r4, r4, r2
c0de78ec:	18e4      	adds	r4, r4, r3
c0de78ee:	9400      	str	r4, [sp, #0]
c0de78f0:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
c0de78f2:	1e74      	subs	r4, r6, #1
c0de78f4:	42ac      	cmp	r4, r5
c0de78f6:	dd22      	ble.n	c0de793e <ux_flow_next_internal+0x86>
c0de78f8:	9c00      	ldr	r4, [sp, #0]
c0de78fa:	3424      	adds	r4, #36	; 0x24
c0de78fc:	9400      	str	r4, [sp, #0]
c0de78fe:	1eb4      	subs	r4, r6, #2
c0de7900:	42ac      	cmp	r4, r5
c0de7902:	462e      	mov	r6, r5
c0de7904:	db10      	blt.n	c0de7928 <ux_flow_next_internal+0x70>
c0de7906:	00b4      	lsls	r4, r6, #2
c0de7908:	19e4      	adds	r4, r4, r7
c0de790a:	4635      	mov	r5, r6
c0de790c:	6866      	ldr	r6, [r4, #4]
c0de790e:	1cb4      	adds	r4, r6, #2
c0de7910:	d015      	beq.n	c0de793e <ux_flow_next_internal+0x86>
c0de7912:	1cf4      	adds	r4, r6, #3
c0de7914:	462e      	mov	r6, r5
c0de7916:	d107      	bne.n	c0de7928 <ux_flow_next_internal+0x70>
c0de7918:	2100      	movs	r1, #0
c0de791a:	9c00      	ldr	r4, [sp, #0]
c0de791c:	8021      	strh	r1, [r4, #0]
c0de791e:	464c      	mov	r4, r9
c0de7920:	18a2      	adds	r2, r4, r2
c0de7922:	18d2      	adds	r2, r2, r3
c0de7924:	84d1      	strh	r1, [r2, #38]	; 0x26
c0de7926:	e008      	b.n	c0de793a <ux_flow_next_internal+0x82>
c0de7928:	1c74      	adds	r4, r6, #1
c0de792a:	9d00      	ldr	r5, [sp, #0]
c0de792c:	802c      	strh	r4, [r5, #0]
c0de792e:	464c      	mov	r4, r9
c0de7930:	18a2      	adds	r2, r4, r2
c0de7932:	18d2      	adds	r2, r2, r3
c0de7934:	84d6      	strh	r6, [r2, #38]	; 0x26
c0de7936:	2900      	cmp	r1, #0
c0de7938:	d001      	beq.n	c0de793e <ux_flow_next_internal+0x86>
c0de793a:	f000 f847 	bl	c0de79cc <ux_flow_engine_init_step>
c0de793e:	b001      	add	sp, #4
c0de7940:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7942:	46c0      	nop			; (mov r8, r8)
c0de7944:	0000005c 	.word	0x0000005c

c0de7948 <ux_flow_next>:
c0de7948:	b580      	push	{r7, lr}
c0de794a:	2001      	movs	r0, #1
c0de794c:	f7ff ffb4 	bl	c0de78b8 <ux_flow_next_internal>
c0de7950:	bd80      	pop	{r7, pc}
c0de7952:	d4d4      	bmi.n	c0de78fe <ux_flow_next_internal+0x46>

c0de7954 <ux_flow_prev>:
c0de7954:	b570      	push	{r4, r5, r6, lr}
c0de7956:	491c      	ldr	r1, [pc, #112]	; (c0de79c8 <ux_flow_prev+0x74>)
c0de7958:	4648      	mov	r0, r9
c0de795a:	5c40      	ldrb	r0, [r0, r1]
c0de795c:	1e40      	subs	r0, r0, #1
c0de795e:	d832      	bhi.n	c0de79c6 <ux_flow_prev+0x72>
c0de7960:	220c      	movs	r2, #12
c0de7962:	4342      	muls	r2, r0
c0de7964:	464b      	mov	r3, r9
c0de7966:	185b      	adds	r3, r3, r1
c0de7968:	189b      	adds	r3, r3, r2
c0de796a:	8d1b      	ldrh	r3, [r3, #40]	; 0x28
c0de796c:	2b00      	cmp	r3, #0
c0de796e:	d02a      	beq.n	c0de79c6 <ux_flow_prev+0x72>
c0de7970:	464c      	mov	r4, r9
c0de7972:	1864      	adds	r4, r4, r1
c0de7974:	18a4      	adds	r4, r4, r2
c0de7976:	6a25      	ldr	r5, [r4, #32]
c0de7978:	2d00      	cmp	r5, #0
c0de797a:	d024      	beq.n	c0de79c6 <ux_flow_prev+0x72>
c0de797c:	2b01      	cmp	r3, #1
c0de797e:	d022      	beq.n	c0de79c6 <ux_flow_prev+0x72>
c0de7980:	464c      	mov	r4, r9
c0de7982:	1864      	adds	r4, r4, r1
c0de7984:	18a4      	adds	r4, r4, r2
c0de7986:	8ca6      	ldrh	r6, [r4, #36]	; 0x24
c0de7988:	3424      	adds	r4, #36	; 0x24
c0de798a:	2e00      	cmp	r6, #0
c0de798c:	d00c      	beq.n	c0de79a8 <ux_flow_prev+0x54>
c0de798e:	00b3      	lsls	r3, r6, #2
c0de7990:	195b      	adds	r3, r3, r5
c0de7992:	1f1b      	subs	r3, r3, #4
c0de7994:	681b      	ldr	r3, [r3, #0]
c0de7996:	1c9b      	adds	r3, r3, #2
c0de7998:	d015      	beq.n	c0de79c6 <ux_flow_prev+0x72>
c0de799a:	1e73      	subs	r3, r6, #1
c0de799c:	8023      	strh	r3, [r4, #0]
c0de799e:	464b      	mov	r3, r9
c0de79a0:	1859      	adds	r1, r3, r1
c0de79a2:	1889      	adds	r1, r1, r2
c0de79a4:	84ce      	strh	r6, [r1, #38]	; 0x26
c0de79a6:	e00c      	b.n	c0de79c2 <ux_flow_prev+0x6e>
c0de79a8:	009e      	lsls	r6, r3, #2
c0de79aa:	1975      	adds	r5, r6, r5
c0de79ac:	1f2d      	subs	r5, r5, #4
c0de79ae:	682d      	ldr	r5, [r5, #0]
c0de79b0:	1ced      	adds	r5, r5, #3
c0de79b2:	d108      	bne.n	c0de79c6 <ux_flow_prev+0x72>
c0de79b4:	1e9d      	subs	r5, r3, #2
c0de79b6:	8025      	strh	r5, [r4, #0]
c0de79b8:	464c      	mov	r4, r9
c0de79ba:	1861      	adds	r1, r4, r1
c0de79bc:	1889      	adds	r1, r1, r2
c0de79be:	1e5a      	subs	r2, r3, #1
c0de79c0:	84ca      	strh	r2, [r1, #38]	; 0x26
c0de79c2:	f000 f803 	bl	c0de79cc <ux_flow_engine_init_step>
c0de79c6:	bd70      	pop	{r4, r5, r6, pc}
c0de79c8:	0000005c 	.word	0x0000005c

c0de79cc <ux_flow_engine_init_step>:
c0de79cc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de79ce:	b081      	sub	sp, #4
c0de79d0:	4604      	mov	r4, r0
c0de79d2:	200c      	movs	r0, #12
c0de79d4:	4360      	muls	r0, r4
c0de79d6:	491b      	ldr	r1, [pc, #108]	; (c0de7a44 <ux_flow_engine_init_step+0x78>)
c0de79d8:	464a      	mov	r2, r9
c0de79da:	1851      	adds	r1, r2, r1
c0de79dc:	180e      	adds	r6, r1, r0
c0de79de:	6a30      	ldr	r0, [r6, #32]
c0de79e0:	8cb1      	ldrh	r1, [r6, #36]	; 0x24
c0de79e2:	0089      	lsls	r1, r1, #2
c0de79e4:	5840      	ldr	r0, [r0, r1]
c0de79e6:	2103      	movs	r1, #3
c0de79e8:	43c9      	mvns	r1, r1
c0de79ea:	4288      	cmp	r0, r1
c0de79ec:	d827      	bhi.n	c0de7a3e <ux_flow_engine_init_step+0x72>
c0de79ee:	4637      	mov	r7, r6
c0de79f0:	3724      	adds	r7, #36	; 0x24
c0de79f2:	3620      	adds	r6, #32
c0de79f4:	f7fd f970 	bl	c0de4cd8 <pic>
c0de79f8:	6831      	ldr	r1, [r6, #0]
c0de79fa:	883a      	ldrh	r2, [r7, #0]
c0de79fc:	0092      	lsls	r2, r2, #2
c0de79fe:	5889      	ldr	r1, [r1, r2]
c0de7a00:	6805      	ldr	r5, [r0, #0]
c0de7a02:	4608      	mov	r0, r1
c0de7a04:	f7fd f968 	bl	c0de4cd8 <pic>
c0de7a08:	2d00      	cmp	r5, #0
c0de7a0a:	d006      	beq.n	c0de7a1a <ux_flow_engine_init_step+0x4e>
c0de7a0c:	6800      	ldr	r0, [r0, #0]
c0de7a0e:	f7fd f963 	bl	c0de4cd8 <pic>
c0de7a12:	4601      	mov	r1, r0
c0de7a14:	4620      	mov	r0, r4
c0de7a16:	4788      	blx	r1
c0de7a18:	e011      	b.n	c0de7a3e <ux_flow_engine_init_step+0x72>
c0de7a1a:	6880      	ldr	r0, [r0, #8]
c0de7a1c:	f7fd f95c 	bl	c0de4cd8 <pic>
c0de7a20:	4605      	mov	r5, r0
c0de7a22:	6830      	ldr	r0, [r6, #0]
c0de7a24:	8839      	ldrh	r1, [r7, #0]
c0de7a26:	0089      	lsls	r1, r1, #2
c0de7a28:	5840      	ldr	r0, [r0, r1]
c0de7a2a:	f7fd f955 	bl	c0de4cd8 <pic>
c0de7a2e:	6840      	ldr	r0, [r0, #4]
c0de7a30:	f7fd f952 	bl	c0de4cd8 <pic>
c0de7a34:	4602      	mov	r2, r0
c0de7a36:	4620      	mov	r0, r4
c0de7a38:	4629      	mov	r1, r5
c0de7a3a:	f000 f86f 	bl	c0de7b1c <ux_flow_init>
c0de7a3e:	b001      	add	sp, #4
c0de7a40:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7a42:	46c0      	nop			; (mov r8, r8)
c0de7a44:	0000005c 	.word	0x0000005c

c0de7a48 <ux_flow_validate>:
c0de7a48:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7a4a:	b083      	sub	sp, #12
c0de7a4c:	4d32      	ldr	r5, [pc, #200]	; (c0de7b18 <ux_flow_validate+0xd0>)
c0de7a4e:	4648      	mov	r0, r9
c0de7a50:	5d40      	ldrb	r0, [r0, r5]
c0de7a52:	1e43      	subs	r3, r0, #1
c0de7a54:	d82f      	bhi.n	c0de7ab6 <ux_flow_validate+0x6e>
c0de7a56:	260c      	movs	r6, #12
c0de7a58:	435e      	muls	r6, r3
c0de7a5a:	4648      	mov	r0, r9
c0de7a5c:	1940      	adds	r0, r0, r5
c0de7a5e:	1984      	adds	r4, r0, r6
c0de7a60:	8d21      	ldrh	r1, [r4, #40]	; 0x28
c0de7a62:	2900      	cmp	r1, #0
c0de7a64:	d027      	beq.n	c0de7ab6 <ux_flow_validate+0x6e>
c0de7a66:	4648      	mov	r0, r9
c0de7a68:	1940      	adds	r0, r0, r5
c0de7a6a:	1987      	adds	r7, r0, r6
c0de7a6c:	6a38      	ldr	r0, [r7, #32]
c0de7a6e:	2800      	cmp	r0, #0
c0de7a70:	d021      	beq.n	c0de7ab6 <ux_flow_validate+0x6e>
c0de7a72:	464a      	mov	r2, r9
c0de7a74:	1952      	adds	r2, r2, r5
c0de7a76:	1992      	adds	r2, r2, r6
c0de7a78:	9202      	str	r2, [sp, #8]
c0de7a7a:	8c92      	ldrh	r2, [r2, #36]	; 0x24
c0de7a7c:	428a      	cmp	r2, r1
c0de7a7e:	d21a      	bcs.n	c0de7ab6 <ux_flow_validate+0x6e>
c0de7a80:	9301      	str	r3, [sp, #4]
c0de7a82:	3720      	adds	r7, #32
c0de7a84:	9902      	ldr	r1, [sp, #8]
c0de7a86:	3124      	adds	r1, #36	; 0x24
c0de7a88:	9102      	str	r1, [sp, #8]
c0de7a8a:	0091      	lsls	r1, r2, #2
c0de7a8c:	5840      	ldr	r0, [r0, r1]
c0de7a8e:	f7fd f923 	bl	c0de4cd8 <pic>
c0de7a92:	6880      	ldr	r0, [r0, #8]
c0de7a94:	2800      	cmp	r0, #0
c0de7a96:	d010      	beq.n	c0de7aba <ux_flow_validate+0x72>
c0de7a98:	6838      	ldr	r0, [r7, #0]
c0de7a9a:	9902      	ldr	r1, [sp, #8]
c0de7a9c:	8809      	ldrh	r1, [r1, #0]
c0de7a9e:	0089      	lsls	r1, r1, #2
c0de7aa0:	5840      	ldr	r0, [r0, r1]
c0de7aa2:	f7fd f919 	bl	c0de4cd8 <pic>
c0de7aa6:	6880      	ldr	r0, [r0, #8]
c0de7aa8:	f7fd f916 	bl	c0de4cd8 <pic>
c0de7aac:	4601      	mov	r1, r0
c0de7aae:	2200      	movs	r2, #0
c0de7ab0:	9801      	ldr	r0, [sp, #4]
c0de7ab2:	f000 f833 	bl	c0de7b1c <ux_flow_init>
c0de7ab6:	b003      	add	sp, #12
c0de7ab8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7aba:	3428      	adds	r4, #40	; 0x28
c0de7abc:	8820      	ldrh	r0, [r4, #0]
c0de7abe:	2800      	cmp	r0, #0
c0de7ac0:	d0f9      	beq.n	c0de7ab6 <ux_flow_validate+0x6e>
c0de7ac2:	1e80      	subs	r0, r0, #2
c0de7ac4:	9902      	ldr	r1, [sp, #8]
c0de7ac6:	880a      	ldrh	r2, [r1, #0]
c0de7ac8:	4290      	cmp	r0, r2
c0de7aca:	dbf4      	blt.n	c0de7ab6 <ux_flow_validate+0x6e>
c0de7acc:	6839      	ldr	r1, [r7, #0]
c0de7ace:	0093      	lsls	r3, r2, #2
c0de7ad0:	185b      	adds	r3, r3, r1
c0de7ad2:	685b      	ldr	r3, [r3, #4]
c0de7ad4:	1cdc      	adds	r4, r3, #3
c0de7ad6:	d014      	beq.n	c0de7b02 <ux_flow_validate+0xba>
c0de7ad8:	1c9b      	adds	r3, r3, #2
c0de7ada:	9c02      	ldr	r4, [sp, #8]
c0de7adc:	d1eb      	bne.n	c0de7ab6 <ux_flow_validate+0x6e>
c0de7ade:	4613      	mov	r3, r2
c0de7ae0:	0092      	lsls	r2, r2, #2
c0de7ae2:	1852      	adds	r2, r2, r1
c0de7ae4:	6852      	ldr	r2, [r2, #4]
c0de7ae6:	1c92      	adds	r2, r2, #2
c0de7ae8:	d104      	bne.n	c0de7af4 <ux_flow_validate+0xac>
c0de7aea:	1c5b      	adds	r3, r3, #1
c0de7aec:	8023      	strh	r3, [r4, #0]
c0de7aee:	b29a      	uxth	r2, r3
c0de7af0:	4290      	cmp	r0, r2
c0de7af2:	daf5      	bge.n	c0de7ae0 <ux_flow_validate+0x98>
c0de7af4:	1c58      	adds	r0, r3, #1
c0de7af6:	8020      	strh	r0, [r4, #0]
c0de7af8:	4648      	mov	r0, r9
c0de7afa:	1940      	adds	r0, r0, r5
c0de7afc:	1980      	adds	r0, r0, r6
c0de7afe:	84c3      	strh	r3, [r0, #38]	; 0x26
c0de7b00:	e006      	b.n	c0de7b10 <ux_flow_validate+0xc8>
c0de7b02:	2000      	movs	r0, #0
c0de7b04:	9902      	ldr	r1, [sp, #8]
c0de7b06:	8008      	strh	r0, [r1, #0]
c0de7b08:	4649      	mov	r1, r9
c0de7b0a:	1949      	adds	r1, r1, r5
c0de7b0c:	1989      	adds	r1, r1, r6
c0de7b0e:	84c8      	strh	r0, [r1, #38]	; 0x26
c0de7b10:	9801      	ldr	r0, [sp, #4]
c0de7b12:	f7ff ff5b 	bl	c0de79cc <ux_flow_engine_init_step>
c0de7b16:	e7ce      	b.n	c0de7ab6 <ux_flow_validate+0x6e>
c0de7b18:	0000005c 	.word	0x0000005c

c0de7b1c <ux_flow_init>:
c0de7b1c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7b1e:	b081      	sub	sp, #4
c0de7b20:	2800      	cmp	r0, #0
c0de7b22:	d13c      	bne.n	c0de7b9e <ux_flow_init+0x82>
c0de7b24:	4614      	mov	r4, r2
c0de7b26:	460d      	mov	r5, r1
c0de7b28:	4e1e      	ldr	r6, [pc, #120]	; (c0de7ba4 <ux_flow_init+0x88>)
c0de7b2a:	4648      	mov	r0, r9
c0de7b2c:	1980      	adds	r0, r0, r6
c0de7b2e:	3008      	adds	r0, #8
c0de7b30:	2122      	movs	r1, #34	; 0x22
c0de7b32:	f000 ff13 	bl	c0de895c <__aeabi_memclr>
c0de7b36:	2d00      	cmp	r5, #0
c0de7b38:	d031      	beq.n	c0de7b9e <ux_flow_init+0x82>
c0de7b3a:	4648      	mov	r0, r9
c0de7b3c:	1987      	adds	r7, r0, r6
c0de7b3e:	4628      	mov	r0, r5
c0de7b40:	f7fd f8ca 	bl	c0de4cd8 <pic>
c0de7b44:	6238      	str	r0, [r7, #32]
c0de7b46:	8d39      	ldrh	r1, [r7, #40]	; 0x28
c0de7b48:	008a      	lsls	r2, r1, #2
c0de7b4a:	5882      	ldr	r2, [r0, r2]
c0de7b4c:	1c52      	adds	r2, r2, #1
c0de7b4e:	d008      	beq.n	c0de7b62 <ux_flow_init+0x46>
c0de7b50:	1c49      	adds	r1, r1, #1
c0de7b52:	b28a      	uxth	r2, r1
c0de7b54:	0092      	lsls	r2, r2, #2
c0de7b56:	5882      	ldr	r2, [r0, r2]
c0de7b58:	1c52      	adds	r2, r2, #1
c0de7b5a:	d1f9      	bne.n	c0de7b50 <ux_flow_init+0x34>
c0de7b5c:	4648      	mov	r0, r9
c0de7b5e:	1980      	adds	r0, r0, r6
c0de7b60:	8501      	strh	r1, [r0, #40]	; 0x28
c0de7b62:	2c00      	cmp	r4, #0
c0de7b64:	d018      	beq.n	c0de7b98 <ux_flow_init+0x7c>
c0de7b66:	4648      	mov	r0, r9
c0de7b68:	1985      	adds	r5, r0, r6
c0de7b6a:	4620      	mov	r0, r4
c0de7b6c:	f7fd f8b4 	bl	c0de4cd8 <pic>
c0de7b70:	4604      	mov	r4, r0
c0de7b72:	6a28      	ldr	r0, [r5, #32]
c0de7b74:	8ca9      	ldrh	r1, [r5, #36]	; 0x24
c0de7b76:	0089      	lsls	r1, r1, #2
c0de7b78:	5840      	ldr	r0, [r0, r1]
c0de7b7a:	1c41      	adds	r1, r0, #1
c0de7b7c:	d00c      	beq.n	c0de7b98 <ux_flow_init+0x7c>
c0de7b7e:	f7fd f8ab 	bl	c0de4cd8 <pic>
c0de7b82:	42a0      	cmp	r0, r4
c0de7b84:	d008      	beq.n	c0de7b98 <ux_flow_init+0x7c>
c0de7b86:	4648      	mov	r0, r9
c0de7b88:	1980      	adds	r0, r0, r6
c0de7b8a:	8c81      	ldrh	r1, [r0, #36]	; 0x24
c0de7b8c:	84c1      	strh	r1, [r0, #38]	; 0x26
c0de7b8e:	1c49      	adds	r1, r1, #1
c0de7b90:	8481      	strh	r1, [r0, #36]	; 0x24
c0de7b92:	6a00      	ldr	r0, [r0, #32]
c0de7b94:	b289      	uxth	r1, r1
c0de7b96:	e7ee      	b.n	c0de7b76 <ux_flow_init+0x5a>
c0de7b98:	2000      	movs	r0, #0
c0de7b9a:	f7ff ff17 	bl	c0de79cc <ux_flow_engine_init_step>
c0de7b9e:	b001      	add	sp, #4
c0de7ba0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7ba2:	46c0      	nop			; (mov r8, r8)
c0de7ba4:	0000005c 	.word	0x0000005c

c0de7ba8 <ux_flow_button_callback>:
c0de7ba8:	b580      	push	{r7, lr}
c0de7baa:	490a      	ldr	r1, [pc, #40]	; (c0de7bd4 <ux_flow_button_callback+0x2c>)
c0de7bac:	4288      	cmp	r0, r1
c0de7bae:	d008      	beq.n	c0de7bc2 <ux_flow_button_callback+0x1a>
c0de7bb0:	4909      	ldr	r1, [pc, #36]	; (c0de7bd8 <ux_flow_button_callback+0x30>)
c0de7bb2:	4288      	cmp	r0, r1
c0de7bb4:	d008      	beq.n	c0de7bc8 <ux_flow_button_callback+0x20>
c0de7bb6:	4909      	ldr	r1, [pc, #36]	; (c0de7bdc <ux_flow_button_callback+0x34>)
c0de7bb8:	4288      	cmp	r0, r1
c0de7bba:	d108      	bne.n	c0de7bce <ux_flow_button_callback+0x26>
c0de7bbc:	f7ff feca 	bl	c0de7954 <ux_flow_prev>
c0de7bc0:	e005      	b.n	c0de7bce <ux_flow_button_callback+0x26>
c0de7bc2:	f7ff ff41 	bl	c0de7a48 <ux_flow_validate>
c0de7bc6:	e002      	b.n	c0de7bce <ux_flow_button_callback+0x26>
c0de7bc8:	2001      	movs	r0, #1
c0de7bca:	f7ff fe75 	bl	c0de78b8 <ux_flow_next_internal>
c0de7bce:	2000      	movs	r0, #0
c0de7bd0:	bd80      	pop	{r7, pc}
c0de7bd2:	46c0      	nop			; (mov r8, r8)
c0de7bd4:	80000003 	.word	0x80000003
c0de7bd8:	80000002 	.word	0x80000002
c0de7bdc:	80000001 	.word	0x80000001

c0de7be0 <ux_stack_get_step_params>:
c0de7be0:	b510      	push	{r4, lr}
c0de7be2:	4601      	mov	r1, r0
c0de7be4:	2000      	movs	r0, #0
c0de7be6:	2900      	cmp	r1, #0
c0de7be8:	d113      	bne.n	c0de7c12 <ux_stack_get_step_params+0x32>
c0de7bea:	490a      	ldr	r1, [pc, #40]	; (c0de7c14 <ux_stack_get_step_params+0x34>)
c0de7bec:	464a      	mov	r2, r9
c0de7bee:	1852      	adds	r2, r2, r1
c0de7bf0:	8d13      	ldrh	r3, [r2, #40]	; 0x28
c0de7bf2:	8c92      	ldrh	r2, [r2, #36]	; 0x24
c0de7bf4:	429a      	cmp	r2, r3
c0de7bf6:	d20c      	bcs.n	c0de7c12 <ux_stack_get_step_params+0x32>
c0de7bf8:	4648      	mov	r0, r9
c0de7bfa:	1844      	adds	r4, r0, r1
c0de7bfc:	6a20      	ldr	r0, [r4, #32]
c0de7bfe:	f7fd f86b 	bl	c0de4cd8 <pic>
c0de7c02:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
c0de7c04:	0089      	lsls	r1, r1, #2
c0de7c06:	5840      	ldr	r0, [r0, r1]
c0de7c08:	f7fd f866 	bl	c0de4cd8 <pic>
c0de7c0c:	6840      	ldr	r0, [r0, #4]
c0de7c0e:	f7fd f863 	bl	c0de4cd8 <pic>
c0de7c12:	bd10      	pop	{r4, pc}
c0de7c14:	0000005c 	.word	0x0000005c

c0de7c18 <ux_stack_get_current_step_params>:
c0de7c18:	b580      	push	{r7, lr}
c0de7c1a:	4803      	ldr	r0, [pc, #12]	; (c0de7c28 <ux_stack_get_current_step_params+0x10>)
c0de7c1c:	4649      	mov	r1, r9
c0de7c1e:	5c08      	ldrb	r0, [r1, r0]
c0de7c20:	1e40      	subs	r0, r0, #1
c0de7c22:	f7ff ffdd 	bl	c0de7be0 <ux_stack_get_step_params>
c0de7c26:	bd80      	pop	{r7, pc}
c0de7c28:	0000005c 	.word	0x0000005c

c0de7c2c <ux_flow_relayout>:
c0de7c2c:	b580      	push	{r7, lr}
c0de7c2e:	f7ff fe1b 	bl	c0de7868 <ux_flow_get_current>
c0de7c32:	2800      	cmp	r0, #0
c0de7c34:	d007      	beq.n	c0de7c46 <ux_flow_relayout+0x1a>
c0de7c36:	4805      	ldr	r0, [pc, #20]	; (c0de7c4c <ux_flow_relayout+0x20>)
c0de7c38:	4649      	mov	r1, r9
c0de7c3a:	5c08      	ldrb	r0, [r1, r0]
c0de7c3c:	1e40      	subs	r0, r0, #1
c0de7c3e:	f7ff fec5 	bl	c0de79cc <ux_flow_engine_init_step>
c0de7c42:	2001      	movs	r0, #1
c0de7c44:	bd80      	pop	{r7, pc}
c0de7c46:	2000      	movs	r0, #0
c0de7c48:	bd80      	pop	{r7, pc}
c0de7c4a:	46c0      	nop			; (mov r8, r8)
c0de7c4c:	0000005c 	.word	0x0000005c

c0de7c50 <ux_layout_bb_init_common>:
c0de7c50:	b510      	push	{r4, lr}
c0de7c52:	4604      	mov	r4, r0
c0de7c54:	f000 fc28 	bl	c0de84a8 <ux_stack_init>
c0de7c58:	2024      	movs	r0, #36	; 0x24
c0de7c5a:	4360      	muls	r0, r4
c0de7c5c:	4909      	ldr	r1, [pc, #36]	; (c0de7c84 <ux_layout_bb_init_common+0x34>)
c0de7c5e:	464a      	mov	r2, r9
c0de7c60:	1851      	adds	r1, r2, r1
c0de7c62:	1808      	adds	r0, r1, r0
c0de7c64:	21d4      	movs	r1, #212	; 0xd4
c0de7c66:	2205      	movs	r2, #5
c0de7c68:	5442      	strb	r2, [r0, r1]
c0de7c6a:	21d0      	movs	r1, #208	; 0xd0
c0de7c6c:	4a06      	ldr	r2, [pc, #24]	; (c0de7c88 <ux_layout_bb_init_common+0x38>)
c0de7c6e:	447a      	add	r2, pc
c0de7c70:	5042      	str	r2, [r0, r1]
c0de7c72:	21e0      	movs	r1, #224	; 0xe0
c0de7c74:	4a05      	ldr	r2, [pc, #20]	; (c0de7c8c <ux_layout_bb_init_common+0x3c>)
c0de7c76:	447a      	add	r2, pc
c0de7c78:	5042      	str	r2, [r0, r1]
c0de7c7a:	21cd      	movs	r1, #205	; 0xcd
c0de7c7c:	2201      	movs	r2, #1
c0de7c7e:	5442      	strb	r2, [r0, r1]
c0de7c80:	bd10      	pop	{r4, pc}
c0de7c82:	46c0      	nop			; (mov r8, r8)
c0de7c84:	0000005c 	.word	0x0000005c
c0de7c88:	00004cc2 	.word	0x00004cc2
c0de7c8c:	ffffff2f 	.word	0xffffff2f

c0de7c90 <ux_layout_bn_prepro>:
c0de7c90:	b580      	push	{r7, lr}
c0de7c92:	f000 fb6f 	bl	c0de8374 <ux_layout_strings_prepro>
c0de7c96:	2800      	cmp	r0, #0
c0de7c98:	d00b      	beq.n	c0de7cb2 <ux_layout_bn_prepro+0x22>
c0de7c9a:	4906      	ldr	r1, [pc, #24]	; (c0de7cb4 <ux_layout_bn_prepro+0x24>)
c0de7c9c:	464a      	mov	r2, r9
c0de7c9e:	1852      	adds	r2, r2, r1
c0de7ca0:	23ad      	movs	r3, #173	; 0xad
c0de7ca2:	5cd2      	ldrb	r2, [r2, r3]
c0de7ca4:	2a11      	cmp	r2, #17
c0de7ca6:	d104      	bne.n	c0de7cb2 <ux_layout_bn_prepro+0x22>
c0de7ca8:	464a      	mov	r2, r9
c0de7caa:	1851      	adds	r1, r2, r1
c0de7cac:	22c4      	movs	r2, #196	; 0xc4
c0de7cae:	4b02      	ldr	r3, [pc, #8]	; (c0de7cb8 <ux_layout_bn_prepro+0x28>)
c0de7cb0:	528b      	strh	r3, [r1, r2]
c0de7cb2:	bd80      	pop	{r7, pc}
c0de7cb4:	0000005c 	.word	0x0000005c
c0de7cb8:	0000800a 	.word	0x0000800a

c0de7cbc <ux_layout_bn_init>:
c0de7cbc:	b510      	push	{r4, lr}
c0de7cbe:	4604      	mov	r4, r0
c0de7cc0:	f7ff ffc6 	bl	c0de7c50 <ux_layout_bb_init_common>
c0de7cc4:	2024      	movs	r0, #36	; 0x24
c0de7cc6:	4360      	muls	r0, r4
c0de7cc8:	4905      	ldr	r1, [pc, #20]	; (c0de7ce0 <ux_layout_bn_init+0x24>)
c0de7cca:	464a      	mov	r2, r9
c0de7ccc:	1851      	adds	r1, r2, r1
c0de7cce:	1808      	adds	r0, r1, r0
c0de7cd0:	21dc      	movs	r1, #220	; 0xdc
c0de7cd2:	4a04      	ldr	r2, [pc, #16]	; (c0de7ce4 <ux_layout_bn_init+0x28>)
c0de7cd4:	447a      	add	r2, pc
c0de7cd6:	5042      	str	r2, [r0, r1]
c0de7cd8:	4620      	mov	r0, r4
c0de7cda:	f000 fbb7 	bl	c0de844c <ux_stack_display>
c0de7cde:	bd10      	pop	{r4, pc}
c0de7ce0:	0000005c 	.word	0x0000005c
c0de7ce4:	ffffffb9 	.word	0xffffffb9

c0de7ce8 <ux_layout_paging_prepro_common>:
c0de7ce8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7cea:	b083      	sub	sp, #12
c0de7cec:	4614      	mov	r4, r2
c0de7cee:	460d      	mov	r5, r1
c0de7cf0:	4606      	mov	r6, r0
c0de7cf2:	4f4d      	ldr	r7, [pc, #308]	; (c0de7e28 <ux_layout_paging_prepro_common+0x140>)
c0de7cf4:	4648      	mov	r0, r9
c0de7cf6:	19c0      	adds	r0, r0, r7
c0de7cf8:	30ac      	adds	r0, #172	; 0xac
c0de7cfa:	2220      	movs	r2, #32
c0de7cfc:	4631      	mov	r1, r6
c0de7cfe:	f000 fe37 	bl	c0de8970 <__aeabi_memmove>
c0de7d02:	7870      	ldrb	r0, [r6, #1]
c0de7d04:	2810      	cmp	r0, #16
c0de7d06:	dc19      	bgt.n	c0de7d3c <ux_layout_paging_prepro_common+0x54>
c0de7d08:	2801      	cmp	r0, #1
c0de7d0a:	d032      	beq.n	c0de7d72 <ux_layout_paging_prepro_common+0x8a>
c0de7d0c:	2802      	cmp	r0, #2
c0de7d0e:	d03a      	beq.n	c0de7d86 <ux_layout_paging_prepro_common+0x9e>
c0de7d10:	2810      	cmp	r0, #16
c0de7d12:	d000      	beq.n	c0de7d16 <ux_layout_paging_prepro_common+0x2e>
c0de7d14:	e083      	b.n	c0de7e1e <ux_layout_paging_prepro_common+0x136>
c0de7d16:	4648      	mov	r0, r9
c0de7d18:	2d00      	cmp	r5, #0
c0de7d1a:	d041      	beq.n	c0de7da0 <ux_layout_paging_prepro_common+0xb8>
c0de7d1c:	19c4      	adds	r4, r0, r7
c0de7d1e:	68e6      	ldr	r6, [r4, #12]
c0de7d20:	4628      	mov	r0, r5
c0de7d22:	f7fc ffd9 	bl	c0de4cd8 <pic>
c0de7d26:	4603      	mov	r3, r0
c0de7d28:	68a0      	ldr	r0, [r4, #8]
c0de7d2a:	68e1      	ldr	r1, [r4, #12]
c0de7d2c:	1c40      	adds	r0, r0, #1
c0de7d2e:	9000      	str	r0, [sp, #0]
c0de7d30:	9101      	str	r1, [sp, #4]
c0de7d32:	2e01      	cmp	r6, #1
c0de7d34:	d85e      	bhi.n	c0de7df4 <ux_layout_paging_prepro_common+0x10c>
c0de7d36:	4a3f      	ldr	r2, [pc, #252]	; (c0de7e34 <ux_layout_paging_prepro_common+0x14c>)
c0de7d38:	447a      	add	r2, pc
c0de7d3a:	e05d      	b.n	c0de7df8 <ux_layout_paging_prepro_common+0x110>
c0de7d3c:	4601      	mov	r1, r0
c0de7d3e:	3911      	subs	r1, #17
c0de7d40:	2903      	cmp	r1, #3
c0de7d42:	d26c      	bcs.n	c0de7e1e <ux_layout_paging_prepro_common+0x136>
c0de7d44:	260f      	movs	r6, #15
c0de7d46:	4030      	ands	r0, r6
c0de7d48:	1e40      	subs	r0, r0, #1
c0de7d4a:	2802      	cmp	r0, #2
c0de7d4c:	d867      	bhi.n	c0de7e1e <ux_layout_paging_prepro_common+0x136>
c0de7d4e:	4649      	mov	r1, r9
c0de7d50:	19c9      	adds	r1, r1, r7
c0de7d52:	0042      	lsls	r2, r0, #1
c0de7d54:	1888      	adds	r0, r1, r2
c0de7d56:	8b05      	ldrh	r5, [r0, #24]
c0de7d58:	2d00      	cmp	r5, #0
c0de7d5a:	d060      	beq.n	c0de7e1e <ux_layout_paging_prepro_common+0x136>
c0de7d5c:	2d7f      	cmp	r5, #127	; 0x7f
c0de7d5e:	d300      	bcc.n	c0de7d62 <ux_layout_paging_prepro_common+0x7a>
c0de7d60:	257f      	movs	r5, #127	; 0x7f
c0de7d62:	2c00      	cmp	r4, #0
c0de7d64:	d026      	beq.n	c0de7db4 <ux_layout_paging_prepro_common+0xcc>
c0de7d66:	4620      	mov	r0, r4
c0de7d68:	4614      	mov	r4, r2
c0de7d6a:	f7fc ffb5 	bl	c0de4cd8 <pic>
c0de7d6e:	4622      	mov	r2, r4
c0de7d70:	e025      	b.n	c0de7dbe <ux_layout_paging_prepro_common+0xd6>
c0de7d72:	f7ff fd07 	bl	c0de7784 <ux_flow_is_first>
c0de7d76:	2800      	cmp	r0, #0
c0de7d78:	d051      	beq.n	c0de7e1e <ux_layout_paging_prepro_common+0x136>
c0de7d7a:	4648      	mov	r0, r9
c0de7d7c:	19c0      	adds	r0, r0, r7
c0de7d7e:	6880      	ldr	r0, [r0, #8]
c0de7d80:	2800      	cmp	r0, #0
c0de7d82:	d00b      	beq.n	c0de7d9c <ux_layout_paging_prepro_common+0xb4>
c0de7d84:	e04b      	b.n	c0de7e1e <ux_layout_paging_prepro_common+0x136>
c0de7d86:	f7ff fd2b 	bl	c0de77e0 <ux_flow_is_last>
c0de7d8a:	2800      	cmp	r0, #0
c0de7d8c:	d047      	beq.n	c0de7e1e <ux_layout_paging_prepro_common+0x136>
c0de7d8e:	4648      	mov	r0, r9
c0de7d90:	19c0      	adds	r0, r0, r7
c0de7d92:	6881      	ldr	r1, [r0, #8]
c0de7d94:	68c0      	ldr	r0, [r0, #12]
c0de7d96:	1e40      	subs	r0, r0, #1
c0de7d98:	4281      	cmp	r1, r0
c0de7d9a:	d140      	bne.n	c0de7e1e <ux_layout_paging_prepro_common+0x136>
c0de7d9c:	2000      	movs	r0, #0
c0de7d9e:	e041      	b.n	c0de7e24 <ux_layout_paging_prepro_common+0x13c>
c0de7da0:	19c0      	adds	r0, r0, r7
c0de7da2:	6881      	ldr	r1, [r0, #8]
c0de7da4:	68c2      	ldr	r2, [r0, #12]
c0de7da6:	9200      	str	r2, [sp, #0]
c0de7da8:	302c      	adds	r0, #44	; 0x2c
c0de7daa:	1c4b      	adds	r3, r1, #1
c0de7dac:	2180      	movs	r1, #128	; 0x80
c0de7dae:	4a22      	ldr	r2, [pc, #136]	; (c0de7e38 <ux_layout_paging_prepro_common+0x150>)
c0de7db0:	447a      	add	r2, pc
c0de7db2:	e024      	b.n	c0de7dfe <ux_layout_paging_prepro_common+0x116>
c0de7db4:	4648      	mov	r0, r9
c0de7db6:	19c0      	adds	r0, r0, r7
c0de7db8:	2111      	movs	r1, #17
c0de7dba:	0109      	lsls	r1, r1, #4
c0de7dbc:	5840      	ldr	r0, [r0, r1]
c0de7dbe:	4649      	mov	r1, r9
c0de7dc0:	19cf      	adds	r7, r1, r7
c0de7dc2:	18b9      	adds	r1, r7, r2
c0de7dc4:	8a49      	ldrh	r1, [r1, #18]
c0de7dc6:	1840      	adds	r0, r0, r1
c0de7dc8:	9000      	str	r0, [sp, #0]
c0de7dca:	463c      	mov	r4, r7
c0de7dcc:	342c      	adds	r4, #44	; 0x2c
c0de7dce:	2180      	movs	r1, #128	; 0x80
c0de7dd0:	4a1a      	ldr	r2, [pc, #104]	; (c0de7e3c <ux_layout_paging_prepro_common+0x154>)
c0de7dd2:	447a      	add	r2, pc
c0de7dd4:	4620      	mov	r0, r4
c0de7dd6:	462b      	mov	r3, r5
c0de7dd8:	f7fc fcd2 	bl	c0de4780 <snprintf>
c0de7ddc:	20c8      	movs	r0, #200	; 0xc8
c0de7dde:	503c      	str	r4, [r7, r0]
c0de7de0:	7c39      	ldrb	r1, [r7, #16]
c0de7de2:	4031      	ands	r1, r6
c0de7de4:	4811      	ldr	r0, [pc, #68]	; (c0de7e2c <ux_layout_paging_prepro_common+0x144>)
c0de7de6:	290f      	cmp	r1, #15
c0de7de8:	d000      	beq.n	c0de7dec <ux_layout_paging_prepro_common+0x104>
c0de7dea:	1c80      	adds	r0, r0, #2
c0de7dec:	21c4      	movs	r1, #196	; 0xc4
c0de7dee:	5278      	strh	r0, [r7, r1]
c0de7df0:	4f0d      	ldr	r7, [pc, #52]	; (c0de7e28 <ux_layout_paging_prepro_common+0x140>)
c0de7df2:	e014      	b.n	c0de7e1e <ux_layout_paging_prepro_common+0x136>
c0de7df4:	4a0e      	ldr	r2, [pc, #56]	; (c0de7e30 <ux_layout_paging_prepro_common+0x148>)
c0de7df6:	447a      	add	r2, pc
c0de7df8:	342c      	adds	r4, #44	; 0x2c
c0de7dfa:	2180      	movs	r1, #128	; 0x80
c0de7dfc:	4620      	mov	r0, r4
c0de7dfe:	f7fc fcbf 	bl	c0de4780 <snprintf>
c0de7e02:	4648      	mov	r0, r9
c0de7e04:	19c0      	adds	r0, r0, r7
c0de7e06:	4601      	mov	r1, r0
c0de7e08:	312c      	adds	r1, #44	; 0x2c
c0de7e0a:	22c8      	movs	r2, #200	; 0xc8
c0de7e0c:	5081      	str	r1, [r0, r2]
c0de7e0e:	7c01      	ldrb	r1, [r0, #16]
c0de7e10:	090a      	lsrs	r2, r1, #4
c0de7e12:	4906      	ldr	r1, [pc, #24]	; (c0de7e2c <ux_layout_paging_prepro_common+0x144>)
c0de7e14:	2a0e      	cmp	r2, #14
c0de7e16:	d800      	bhi.n	c0de7e1a <ux_layout_paging_prepro_common+0x132>
c0de7e18:	1c89      	adds	r1, r1, #2
c0de7e1a:	22c4      	movs	r2, #196	; 0xc4
c0de7e1c:	5281      	strh	r1, [r0, r2]
c0de7e1e:	4648      	mov	r0, r9
c0de7e20:	19c0      	adds	r0, r0, r7
c0de7e22:	30ac      	adds	r0, #172	; 0xac
c0de7e24:	b003      	add	sp, #12
c0de7e26:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7e28:	0000005c 	.word	0x0000005c
c0de7e2c:	ffff8008 	.word	0xffff8008
c0de7e30:	00000ed3 	.word	0x00000ed3
c0de7e34:	00000fc7 	.word	0x00000fc7
c0de7e38:	00000fd3 	.word	0x00000fd3
c0de7e3c:	00000f1a 	.word	0x00000f1a

c0de7e40 <ux_layout_paging_redisplay_common>:
c0de7e40:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7e42:	b081      	sub	sp, #4
c0de7e44:	9300      	str	r3, [sp, #0]
c0de7e46:	4616      	mov	r6, r2
c0de7e48:	460f      	mov	r7, r1
c0de7e4a:	4605      	mov	r5, r0
c0de7e4c:	2024      	movs	r0, #36	; 0x24
c0de7e4e:	4368      	muls	r0, r5
c0de7e50:	4911      	ldr	r1, [pc, #68]	; (c0de7e98 <ux_layout_paging_redisplay_common+0x58>)
c0de7e52:	464a      	mov	r2, r9
c0de7e54:	1852      	adds	r2, r2, r1
c0de7e56:	1814      	adds	r4, r2, r0
c0de7e58:	20d4      	movs	r0, #212	; 0xd4
c0de7e5a:	2107      	movs	r1, #7
c0de7e5c:	5421      	strb	r1, [r4, r0]
c0de7e5e:	20d0      	movs	r0, #208	; 0xd0
c0de7e60:	490e      	ldr	r1, [pc, #56]	; (c0de7e9c <ux_layout_paging_redisplay_common+0x5c>)
c0de7e62:	4479      	add	r1, pc
c0de7e64:	5021      	str	r1, [r4, r0]
c0de7e66:	20cd      	movs	r0, #205	; 0xcd
c0de7e68:	2101      	movs	r1, #1
c0de7e6a:	5421      	strb	r1, [r4, r0]
c0de7e6c:	7c10      	ldrb	r0, [r2, #16]
c0de7e6e:	0700      	lsls	r0, r0, #28
c0de7e70:	d001      	beq.n	c0de7e76 <ux_layout_paging_redisplay_common+0x36>
c0de7e72:	2308      	movs	r3, #8
c0de7e74:	e000      	b.n	c0de7e78 <ux_layout_paging_redisplay_common+0x38>
c0de7e76:	230a      	movs	r3, #10
c0de7e78:	6891      	ldr	r1, [r2, #8]
c0de7e7a:	3208      	adds	r2, #8
c0de7e7c:	4638      	mov	r0, r7
c0de7e7e:	f000 f8e5 	bl	c0de804c <ux_layout_paging_compute>
c0de7e82:	20e0      	movs	r0, #224	; 0xe0
c0de7e84:	5026      	str	r6, [r4, r0]
c0de7e86:	20dc      	movs	r0, #220	; 0xdc
c0de7e88:	9900      	ldr	r1, [sp, #0]
c0de7e8a:	5021      	str	r1, [r4, r0]
c0de7e8c:	4628      	mov	r0, r5
c0de7e8e:	f000 fadd 	bl	c0de844c <ux_stack_display>
c0de7e92:	b001      	add	sp, #4
c0de7e94:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7e96:	46c0      	nop			; (mov r8, r8)
c0de7e98:	0000005c 	.word	0x0000005c
c0de7e9c:	00004b6e 	.word	0x00004b6e

c0de7ea0 <ux_layout_paging_redisplay_by_addr>:
c0de7ea0:	b510      	push	{r4, lr}
c0de7ea2:	4604      	mov	r4, r0
c0de7ea4:	f7ff feb8 	bl	c0de7c18 <ux_stack_get_current_step_params>
c0de7ea8:	2800      	cmp	r0, #0
c0de7eaa:	d007      	beq.n	c0de7ebc <ux_layout_paging_redisplay_by_addr+0x1c>
c0de7eac:	6841      	ldr	r1, [r0, #4]
c0de7eae:	4a04      	ldr	r2, [pc, #16]	; (c0de7ec0 <ux_layout_paging_redisplay_by_addr+0x20>)
c0de7eb0:	447a      	add	r2, pc
c0de7eb2:	4b04      	ldr	r3, [pc, #16]	; (c0de7ec4 <ux_layout_paging_redisplay_by_addr+0x24>)
c0de7eb4:	447b      	add	r3, pc
c0de7eb6:	4620      	mov	r0, r4
c0de7eb8:	f7ff ffc2 	bl	c0de7e40 <ux_layout_paging_redisplay_common>
c0de7ebc:	bd10      	pop	{r4, pc}
c0de7ebe:	46c0      	nop			; (mov r8, r8)
c0de7ec0:	00000015 	.word	0x00000015
c0de7ec4:	00000099 	.word	0x00000099

c0de7ec8 <ux_layout_paging_button_callback_by_addr>:
c0de7ec8:	b580      	push	{r7, lr}
c0de7eca:	491d      	ldr	r1, [pc, #116]	; (c0de7f40 <ux_layout_paging_button_callback_by_addr+0x78>)
c0de7ecc:	4288      	cmp	r0, r1
c0de7ece:	d00f      	beq.n	c0de7ef0 <ux_layout_paging_button_callback_by_addr+0x28>
c0de7ed0:	491c      	ldr	r1, [pc, #112]	; (c0de7f44 <ux_layout_paging_button_callback_by_addr+0x7c>)
c0de7ed2:	4288      	cmp	r0, r1
c0de7ed4:	d01b      	beq.n	c0de7f0e <ux_layout_paging_button_callback_by_addr+0x46>
c0de7ed6:	491c      	ldr	r1, [pc, #112]	; (c0de7f48 <ux_layout_paging_button_callback_by_addr+0x80>)
c0de7ed8:	4288      	cmp	r0, r1
c0de7eda:	d12e      	bne.n	c0de7f3a <ux_layout_paging_button_callback_by_addr+0x72>
c0de7edc:	481b      	ldr	r0, [pc, #108]	; (c0de7f4c <ux_layout_paging_button_callback_by_addr+0x84>)
c0de7ede:	4649      	mov	r1, r9
c0de7ee0:	1809      	adds	r1, r1, r0
c0de7ee2:	6889      	ldr	r1, [r1, #8]
c0de7ee4:	2900      	cmp	r1, #0
c0de7ee6:	d026      	beq.n	c0de7f36 <ux_layout_paging_button_callback_by_addr+0x6e>
c0de7ee8:	464a      	mov	r2, r9
c0de7eea:	1813      	adds	r3, r2, r0
c0de7eec:	1e49      	subs	r1, r1, #1
c0de7eee:	e01c      	b.n	c0de7f2a <ux_layout_paging_button_callback_by_addr+0x62>
c0de7ef0:	4816      	ldr	r0, [pc, #88]	; (c0de7f4c <ux_layout_paging_button_callback_by_addr+0x84>)
c0de7ef2:	4649      	mov	r1, r9
c0de7ef4:	1809      	adds	r1, r1, r0
c0de7ef6:	68c9      	ldr	r1, [r1, #12]
c0de7ef8:	2900      	cmp	r1, #0
c0de7efa:	d005      	beq.n	c0de7f08 <ux_layout_paging_button_callback_by_addr+0x40>
c0de7efc:	464a      	mov	r2, r9
c0de7efe:	1810      	adds	r0, r2, r0
c0de7f00:	6880      	ldr	r0, [r0, #8]
c0de7f02:	1e49      	subs	r1, r1, #1
c0de7f04:	4281      	cmp	r1, r0
c0de7f06:	d118      	bne.n	c0de7f3a <ux_layout_paging_button_callback_by_addr+0x72>
c0de7f08:	f7ff fd9e 	bl	c0de7a48 <ux_flow_validate>
c0de7f0c:	e015      	b.n	c0de7f3a <ux_layout_paging_button_callback_by_addr+0x72>
c0de7f0e:	480f      	ldr	r0, [pc, #60]	; (c0de7f4c <ux_layout_paging_button_callback_by_addr+0x84>)
c0de7f10:	4649      	mov	r1, r9
c0de7f12:	180a      	adds	r2, r1, r0
c0de7f14:	6891      	ldr	r1, [r2, #8]
c0de7f16:	68d2      	ldr	r2, [r2, #12]
c0de7f18:	1e52      	subs	r2, r2, #1
c0de7f1a:	4291      	cmp	r1, r2
c0de7f1c:	d102      	bne.n	c0de7f24 <ux_layout_paging_button_callback_by_addr+0x5c>
c0de7f1e:	f7ff fd13 	bl	c0de7948 <ux_flow_next>
c0de7f22:	e00a      	b.n	c0de7f3a <ux_layout_paging_button_callback_by_addr+0x72>
c0de7f24:	464a      	mov	r2, r9
c0de7f26:	1813      	adds	r3, r2, r0
c0de7f28:	1c49      	adds	r1, r1, #1
c0de7f2a:	6099      	str	r1, [r3, #8]
c0de7f2c:	5c10      	ldrb	r0, [r2, r0]
c0de7f2e:	1e40      	subs	r0, r0, #1
c0de7f30:	f7ff ffb6 	bl	c0de7ea0 <ux_layout_paging_redisplay_by_addr>
c0de7f34:	e001      	b.n	c0de7f3a <ux_layout_paging_button_callback_by_addr+0x72>
c0de7f36:	f7ff fd0d 	bl	c0de7954 <ux_flow_prev>
c0de7f3a:	2000      	movs	r0, #0
c0de7f3c:	bd80      	pop	{r7, pc}
c0de7f3e:	46c0      	nop			; (mov r8, r8)
c0de7f40:	80000003 	.word	0x80000003
c0de7f44:	80000002 	.word	0x80000002
c0de7f48:	80000001 	.word	0x80000001
c0de7f4c:	0000005c 	.word	0x0000005c

c0de7f50 <ux_layout_paging_prepro_by_addr>:
c0de7f50:	b510      	push	{r4, lr}
c0de7f52:	4604      	mov	r4, r0
c0de7f54:	f7ff fe60 	bl	c0de7c18 <ux_stack_get_current_step_params>
c0de7f58:	2800      	cmp	r0, #0
c0de7f5a:	d004      	beq.n	c0de7f66 <ux_layout_paging_prepro_by_addr+0x16>
c0de7f5c:	c806      	ldmia	r0!, {r1, r2}
c0de7f5e:	4620      	mov	r0, r4
c0de7f60:	f7ff fec2 	bl	c0de7ce8 <ux_layout_paging_prepro_common>
c0de7f64:	bd10      	pop	{r4, pc}
c0de7f66:	2000      	movs	r0, #0
c0de7f68:	bd10      	pop	{r4, pc}
c0de7f6a:	d4d4      	bmi.n	c0de7f16 <ux_layout_paging_button_callback_by_addr+0x4e>

c0de7f6c <ux_layout_paging_init_common>:
c0de7f6c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7f6e:	b083      	sub	sp, #12
c0de7f70:	9201      	str	r2, [sp, #4]
c0de7f72:	460e      	mov	r6, r1
c0de7f74:	9002      	str	r0, [sp, #8]
c0de7f76:	4c28      	ldr	r4, [pc, #160]	; (c0de8018 <ux_layout_paging_init_common+0xac>)
c0de7f78:	4648      	mov	r0, r9
c0de7f7a:	1900      	adds	r0, r0, r4
c0de7f7c:	7c05      	ldrb	r5, [r0, #16]
c0de7f7e:	2000      	movs	r0, #0
c0de7f80:	43c7      	mvns	r7, r0
c0de7f82:	f7ff fc57 	bl	c0de7834 <ux_flow_direction>
c0de7f86:	2801      	cmp	r0, #1
c0de7f88:	d00c      	beq.n	c0de7fa4 <ux_layout_paging_init_common+0x38>
c0de7f8a:	1c40      	adds	r0, r0, #1
c0de7f8c:	d110      	bne.n	c0de7fb0 <ux_layout_paging_init_common+0x44>
c0de7f8e:	4648      	mov	r0, r9
c0de7f90:	4921      	ldr	r1, [pc, #132]	; (c0de8018 <ux_layout_paging_init_common+0xac>)
c0de7f92:	1844      	adds	r4, r0, r1
c0de7f94:	4620      	mov	r0, r4
c0de7f96:	300c      	adds	r0, #12
c0de7f98:	2114      	movs	r1, #20
c0de7f9a:	f000 fcdf 	bl	c0de895c <__aeabi_memclr>
c0de7f9e:	60a7      	str	r7, [r4, #8]
c0de7fa0:	4c1d      	ldr	r4, [pc, #116]	; (c0de8018 <ux_layout_paging_init_common+0xac>)
c0de7fa2:	e005      	b.n	c0de7fb0 <ux_layout_paging_init_common+0x44>
c0de7fa4:	4648      	mov	r0, r9
c0de7fa6:	1900      	adds	r0, r0, r4
c0de7fa8:	3008      	adds	r0, #8
c0de7faa:	2118      	movs	r1, #24
c0de7fac:	f000 fcd6 	bl	c0de895c <__aeabi_memclr>
c0de7fb0:	4648      	mov	r0, r9
c0de7fb2:	1904      	adds	r4, r0, r4
c0de7fb4:	7425      	strb	r5, [r4, #16]
c0de7fb6:	9802      	ldr	r0, [sp, #8]
c0de7fb8:	f000 fa76 	bl	c0de84a8 <ux_stack_init>
c0de7fbc:	2011      	movs	r0, #17
c0de7fbe:	0100      	lsls	r0, r0, #4
c0de7fc0:	5820      	ldr	r0, [r4, r0]
c0de7fc2:	4330      	orrs	r0, r6
c0de7fc4:	d101      	bne.n	c0de7fca <ux_layout_paging_init_common+0x5e>
c0de7fc6:	4e15      	ldr	r6, [pc, #84]	; (c0de801c <ux_layout_paging_init_common+0xb0>)
c0de7fc8:	447e      	add	r6, pc
c0de7fca:	9d01      	ldr	r5, [sp, #4]
c0de7fcc:	7c20      	ldrb	r0, [r4, #16]
c0de7fce:	0700      	lsls	r0, r0, #28
c0de7fd0:	d001      	beq.n	c0de7fd6 <ux_layout_paging_init_common+0x6a>
c0de7fd2:	2308      	movs	r3, #8
c0de7fd4:	e000      	b.n	c0de7fd8 <ux_layout_paging_init_common+0x6c>
c0de7fd6:	230a      	movs	r3, #10
c0de7fd8:	4622      	mov	r2, r4
c0de7fda:	3208      	adds	r2, #8
c0de7fdc:	4630      	mov	r0, r6
c0de7fde:	4639      	mov	r1, r7
c0de7fe0:	f000 f834 	bl	c0de804c <ux_layout_paging_compute>
c0de7fe4:	60e0      	str	r0, [r4, #12]
c0de7fe6:	2800      	cmp	r0, #0
c0de7fe8:	d00a      	beq.n	c0de8000 <ux_layout_paging_init_common+0x94>
c0de7fea:	4649      	mov	r1, r9
c0de7fec:	4a0a      	ldr	r2, [pc, #40]	; (c0de8018 <ux_layout_paging_init_common+0xac>)
c0de7fee:	1889      	adds	r1, r1, r2
c0de7ff0:	6889      	ldr	r1, [r1, #8]
c0de7ff2:	1e40      	subs	r0, r0, #1
c0de7ff4:	4281      	cmp	r1, r0
c0de7ff6:	d90a      	bls.n	c0de800e <ux_layout_paging_init_common+0xa2>
c0de7ff8:	4649      	mov	r1, r9
c0de7ffa:	1889      	adds	r1, r1, r2
c0de7ffc:	6088      	str	r0, [r1, #8]
c0de7ffe:	e006      	b.n	c0de800e <ux_layout_paging_init_common+0xa2>
c0de8000:	4648      	mov	r0, r9
c0de8002:	4905      	ldr	r1, [pc, #20]	; (c0de8018 <ux_layout_paging_init_common+0xac>)
c0de8004:	1840      	adds	r0, r0, r1
c0de8006:	3008      	adds	r0, #8
c0de8008:	2118      	movs	r1, #24
c0de800a:	f000 fca7 	bl	c0de895c <__aeabi_memclr>
c0de800e:	9802      	ldr	r0, [sp, #8]
c0de8010:	47a8      	blx	r5
c0de8012:	b003      	add	sp, #12
c0de8014:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de8016:	46c0      	nop			; (mov r8, r8)
c0de8018:	0000005c 	.word	0x0000005c
c0de801c:	00000d9d 	.word	0x00000d9d

c0de8020 <ux_layout_bn_paging_init>:
c0de8020:	b510      	push	{r4, lr}
c0de8022:	4604      	mov	r4, r0
c0de8024:	4807      	ldr	r0, [pc, #28]	; (c0de8044 <ux_layout_bn_paging_init+0x24>)
c0de8026:	4649      	mov	r1, r9
c0de8028:	1808      	adds	r0, r1, r0
c0de802a:	21f0      	movs	r1, #240	; 0xf0
c0de802c:	7401      	strb	r1, [r0, #16]
c0de802e:	4620      	mov	r0, r4
c0de8030:	f7ff fdd6 	bl	c0de7be0 <ux_stack_get_step_params>
c0de8034:	6841      	ldr	r1, [r0, #4]
c0de8036:	4a04      	ldr	r2, [pc, #16]	; (c0de8048 <ux_layout_bn_paging_init+0x28>)
c0de8038:	447a      	add	r2, pc
c0de803a:	4620      	mov	r0, r4
c0de803c:	f7ff ff96 	bl	c0de7f6c <ux_layout_paging_init_common>
c0de8040:	bd10      	pop	{r4, pc}
c0de8042:	46c0      	nop			; (mov r8, r8)
c0de8044:	0000005c 	.word	0x0000005c
c0de8048:	fffffe65 	.word	0xfffffe65

c0de804c <ux_layout_paging_compute>:
c0de804c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de804e:	b08d      	sub	sp, #52	; 0x34
c0de8050:	930b      	str	r3, [sp, #44]	; 0x2c
c0de8052:	4614      	mov	r4, r2
c0de8054:	460d      	mov	r5, r1
c0de8056:	4607      	mov	r7, r0
c0de8058:	4610      	mov	r0, r2
c0de805a:	300a      	adds	r0, #10
c0de805c:	210c      	movs	r1, #12
c0de805e:	f000 fc7d 	bl	c0de895c <__aeabi_memclr>
c0de8062:	9507      	str	r5, [sp, #28]
c0de8064:	1c68      	adds	r0, r5, #1
c0de8066:	9006      	str	r0, [sp, #24]
c0de8068:	d005      	beq.n	c0de8076 <ux_layout_paging_compute+0x2a>
c0de806a:	6860      	ldr	r0, [r4, #4]
c0de806c:	9907      	ldr	r1, [sp, #28]
c0de806e:	4288      	cmp	r0, r1
c0de8070:	d801      	bhi.n	c0de8076 <ux_layout_paging_compute+0x2a>
c0de8072:	2100      	movs	r1, #0
c0de8074:	e097      	b.n	c0de81a6 <ux_layout_paging_compute+0x15a>
c0de8076:	2f00      	cmp	r7, #0
c0de8078:	d004      	beq.n	c0de8084 <ux_layout_paging_compute+0x38>
c0de807a:	4638      	mov	r0, r7
c0de807c:	f7fc fe2c 	bl	c0de4cd8 <pic>
c0de8080:	4607      	mov	r7, r0
c0de8082:	e005      	b.n	c0de8090 <ux_layout_paging_compute+0x44>
c0de8084:	4849      	ldr	r0, [pc, #292]	; (c0de81ac <ux_layout_paging_compute+0x160>)
c0de8086:	4649      	mov	r1, r9
c0de8088:	1808      	adds	r0, r1, r0
c0de808a:	2111      	movs	r1, #17
c0de808c:	0109      	lsls	r1, r1, #4
c0de808e:	5847      	ldr	r7, [r0, r1]
c0de8090:	4638      	mov	r0, r7
c0de8092:	f000 fdcb 	bl	c0de8c2c <strlen>
c0de8096:	2101      	movs	r1, #1
c0de8098:	2801      	cmp	r0, #1
c0de809a:	da00      	bge.n	c0de809e <ux_layout_paging_compute+0x52>
c0de809c:	e083      	b.n	c0de81a6 <ux_layout_paging_compute+0x15a>
c0de809e:	9102      	str	r1, [sp, #8]
c0de80a0:	1838      	adds	r0, r7, r0
c0de80a2:	900c      	str	r0, [sp, #48]	; 0x30
c0de80a4:	2000      	movs	r0, #0
c0de80a6:	4606      	mov	r6, r0
c0de80a8:	9005      	str	r0, [sp, #20]
c0de80aa:	9009      	str	r0, [sp, #36]	; 0x24
c0de80ac:	9703      	str	r7, [sp, #12]
c0de80ae:	9404      	str	r4, [sp, #16]
c0de80b0:	9608      	str	r6, [sp, #32]
c0de80b2:	9d05      	ldr	r5, [sp, #20]
c0de80b4:	970a      	str	r7, [sp, #40]	; 0x28
c0de80b6:	462e      	mov	r6, r5
c0de80b8:	197c      	adds	r4, r7, r5
c0de80ba:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de80bc:	4284      	cmp	r4, r0
c0de80be:	d219      	bcs.n	c0de80f4 <ux_layout_paging_compute+0xa8>
c0de80c0:	2100      	movs	r1, #0
c0de80c2:	9100      	str	r1, [sp, #0]
c0de80c4:	1c75      	adds	r5, r6, #1
c0de80c6:	b2eb      	uxtb	r3, r5
c0de80c8:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de80ca:	463a      	mov	r2, r7
c0de80cc:	f7f8 fb00 	bl	c0de06d0 <bagl_compute_line_width>
c0de80d0:	2872      	cmp	r0, #114	; 0x72
c0de80d2:	d80f      	bhi.n	c0de80f4 <ux_layout_paging_compute+0xa8>
c0de80d4:	7820      	ldrb	r0, [r4, #0]
c0de80d6:	282c      	cmp	r0, #44	; 0x2c
c0de80d8:	dc04      	bgt.n	c0de80e4 <ux_layout_paging_compute+0x98>
c0de80da:	280a      	cmp	r0, #10
c0de80dc:	d006      	beq.n	c0de80ec <ux_layout_paging_compute+0xa0>
c0de80de:	2820      	cmp	r0, #32
c0de80e0:	d004      	beq.n	c0de80ec <ux_layout_paging_compute+0xa0>
c0de80e2:	e004      	b.n	c0de80ee <ux_layout_paging_compute+0xa2>
c0de80e4:	285f      	cmp	r0, #95	; 0x5f
c0de80e6:	d001      	beq.n	c0de80ec <ux_layout_paging_compute+0xa0>
c0de80e8:	282d      	cmp	r0, #45	; 0x2d
c0de80ea:	d100      	bne.n	c0de80ee <ux_layout_paging_compute+0xa2>
c0de80ec:	940a      	str	r4, [sp, #40]	; 0x28
c0de80ee:	280a      	cmp	r0, #10
c0de80f0:	d1e1      	bne.n	c0de80b6 <ux_layout_paging_compute+0x6a>
c0de80f2:	e000      	b.n	c0de80f6 <ux_layout_paging_compute+0xaa>
c0de80f4:	4635      	mov	r5, r6
c0de80f6:	1978      	adds	r0, r7, r5
c0de80f8:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de80fa:	4288      	cmp	r0, r1
c0de80fc:	d20f      	bcs.n	c0de811e <ux_layout_paging_compute+0xd2>
c0de80fe:	2d00      	cmp	r5, #0
c0de8100:	d00d      	beq.n	c0de811e <ux_layout_paging_compute+0xd2>
c0de8102:	990a      	ldr	r1, [sp, #40]	; 0x28
c0de8104:	42b9      	cmp	r1, r7
c0de8106:	d00a      	beq.n	c0de811e <ux_layout_paging_compute+0xd2>
c0de8108:	1e41      	subs	r1, r0, #1
c0de810a:	7809      	ldrb	r1, [r1, #0]
c0de810c:	292c      	cmp	r1, #44	; 0x2c
c0de810e:	9c04      	ldr	r4, [sp, #16]
c0de8110:	dc09      	bgt.n	c0de8126 <ux_layout_paging_compute+0xda>
c0de8112:	290a      	cmp	r1, #10
c0de8114:	9e08      	ldr	r6, [sp, #32]
c0de8116:	d00b      	beq.n	c0de8130 <ux_layout_paging_compute+0xe4>
c0de8118:	2920      	cmp	r1, #32
c0de811a:	d009      	beq.n	c0de8130 <ux_layout_paging_compute+0xe4>
c0de811c:	e031      	b.n	c0de8182 <ux_layout_paging_compute+0x136>
c0de811e:	9c04      	ldr	r4, [sp, #16]
c0de8120:	9807      	ldr	r0, [sp, #28]
c0de8122:	9e08      	ldr	r6, [sp, #32]
c0de8124:	e005      	b.n	c0de8132 <ux_layout_paging_compute+0xe6>
c0de8126:	292d      	cmp	r1, #45	; 0x2d
c0de8128:	9e08      	ldr	r6, [sp, #32]
c0de812a:	d001      	beq.n	c0de8130 <ux_layout_paging_compute+0xe4>
c0de812c:	295f      	cmp	r1, #95	; 0x5f
c0de812e:	d128      	bne.n	c0de8182 <ux_layout_paging_compute+0x136>
c0de8130:	9807      	ldr	r0, [sp, #28]
c0de8132:	9906      	ldr	r1, [sp, #24]
c0de8134:	2900      	cmp	r1, #0
c0de8136:	d00e      	beq.n	c0de8156 <ux_layout_paging_compute+0x10a>
c0de8138:	4286      	cmp	r6, r0
c0de813a:	d10c      	bne.n	c0de8156 <ux_layout_paging_compute+0x10a>
c0de813c:	6860      	ldr	r0, [r4, #4]
c0de813e:	9907      	ldr	r1, [sp, #28]
c0de8140:	4288      	cmp	r0, r1
c0de8142:	d908      	bls.n	c0de8156 <ux_layout_paging_compute+0x10a>
c0de8144:	9a09      	ldr	r2, [sp, #36]	; 0x24
c0de8146:	0050      	lsls	r0, r2, #1
c0de8148:	1820      	adds	r0, r4, r0
c0de814a:	8205      	strh	r5, [r0, #16]
c0de814c:	9903      	ldr	r1, [sp, #12]
c0de814e:	1a79      	subs	r1, r7, r1
c0de8150:	8141      	strh	r1, [r0, #10]
c0de8152:	2a01      	cmp	r2, #1
c0de8154:	d826      	bhi.n	c0de81a4 <ux_layout_paging_compute+0x158>
c0de8156:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de8158:	1c40      	adds	r0, r0, #1
c0de815a:	2201      	movs	r2, #1
c0de815c:	2100      	movs	r1, #0
c0de815e:	9109      	str	r1, [sp, #36]	; 0x24
c0de8160:	2802      	cmp	r0, #2
c0de8162:	4611      	mov	r1, r2
c0de8164:	d800      	bhi.n	c0de8168 <ux_layout_paging_compute+0x11c>
c0de8166:	9909      	ldr	r1, [sp, #36]	; 0x24
c0de8168:	197f      	adds	r7, r7, r5
c0de816a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0de816c:	429f      	cmp	r7, r3
c0de816e:	d300      	bcc.n	c0de8172 <ux_layout_paging_compute+0x126>
c0de8170:	9a09      	ldr	r2, [sp, #36]	; 0x24
c0de8172:	4011      	ands	r1, r2
c0de8174:	d100      	bne.n	c0de8178 <ux_layout_paging_compute+0x12c>
c0de8176:	9009      	str	r0, [sp, #36]	; 0x24
c0de8178:	1876      	adds	r6, r6, r1
c0de817a:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de817c:	4287      	cmp	r7, r0
c0de817e:	d397      	bcc.n	c0de80b0 <ux_layout_paging_compute+0x64>
c0de8180:	e00e      	b.n	c0de81a0 <ux_layout_paging_compute+0x154>
c0de8182:	7800      	ldrb	r0, [r0, #0]
c0de8184:	282c      	cmp	r0, #44	; 0x2c
c0de8186:	dc03      	bgt.n	c0de8190 <ux_layout_paging_compute+0x144>
c0de8188:	280a      	cmp	r0, #10
c0de818a:	d0d1      	beq.n	c0de8130 <ux_layout_paging_compute+0xe4>
c0de818c:	2820      	cmp	r0, #32
c0de818e:	e002      	b.n	c0de8196 <ux_layout_paging_compute+0x14a>
c0de8190:	282d      	cmp	r0, #45	; 0x2d
c0de8192:	d0cd      	beq.n	c0de8130 <ux_layout_paging_compute+0xe4>
c0de8194:	285f      	cmp	r0, #95	; 0x5f
c0de8196:	9807      	ldr	r0, [sp, #28]
c0de8198:	d0cb      	beq.n	c0de8132 <ux_layout_paging_compute+0xe6>
c0de819a:	990a      	ldr	r1, [sp, #40]	; 0x28
c0de819c:	1bcd      	subs	r5, r1, r7
c0de819e:	e7c8      	b.n	c0de8132 <ux_layout_paging_compute+0xe6>
c0de81a0:	1c71      	adds	r1, r6, #1
c0de81a2:	e000      	b.n	c0de81a6 <ux_layout_paging_compute+0x15a>
c0de81a4:	9902      	ldr	r1, [sp, #8]
c0de81a6:	4608      	mov	r0, r1
c0de81a8:	b00d      	add	sp, #52	; 0x34
c0de81aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de81ac:	0000005c 	.word	0x0000005c

c0de81b0 <ux_layout_pb_prepro>:
c0de81b0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de81b2:	b081      	sub	sp, #4
c0de81b4:	4605      	mov	r5, r0
c0de81b6:	4f17      	ldr	r7, [pc, #92]	; (c0de8214 <ux_layout_pb_prepro+0x64>)
c0de81b8:	4648      	mov	r0, r9
c0de81ba:	19c6      	adds	r6, r0, r7
c0de81bc:	36ac      	adds	r6, #172	; 0xac
c0de81be:	f7ff fd2b 	bl	c0de7c18 <ux_stack_get_current_step_params>
c0de81c2:	4604      	mov	r4, r0
c0de81c4:	2220      	movs	r2, #32
c0de81c6:	4630      	mov	r0, r6
c0de81c8:	4629      	mov	r1, r5
c0de81ca:	f000 fbd1 	bl	c0de8970 <__aeabi_memmove>
c0de81ce:	7868      	ldrb	r0, [r5, #1]
c0de81d0:	280f      	cmp	r0, #15
c0de81d2:	dc06      	bgt.n	c0de81e2 <ux_layout_pb_prepro+0x32>
c0de81d4:	2801      	cmp	r0, #1
c0de81d6:	d00c      	beq.n	c0de81f2 <ux_layout_pb_prepro+0x42>
c0de81d8:	2802      	cmp	r0, #2
c0de81da:	d115      	bne.n	c0de8208 <ux_layout_pb_prepro+0x58>
c0de81dc:	f7ff fb00 	bl	c0de77e0 <ux_flow_is_last>
c0de81e0:	e009      	b.n	c0de81f6 <ux_layout_pb_prepro+0x46>
c0de81e2:	2810      	cmp	r0, #16
c0de81e4:	d00b      	beq.n	c0de81fe <ux_layout_pb_prepro+0x4e>
c0de81e6:	2811      	cmp	r0, #17
c0de81e8:	d10e      	bne.n	c0de8208 <ux_layout_pb_prepro+0x58>
c0de81ea:	4648      	mov	r0, r9
c0de81ec:	19c0      	adds	r0, r0, r7
c0de81ee:	6861      	ldr	r1, [r4, #4]
c0de81f0:	e008      	b.n	c0de8204 <ux_layout_pb_prepro+0x54>
c0de81f2:	f7ff fac7 	bl	c0de7784 <ux_flow_is_first>
c0de81f6:	2800      	cmp	r0, #0
c0de81f8:	d006      	beq.n	c0de8208 <ux_layout_pb_prepro+0x58>
c0de81fa:	2000      	movs	r0, #0
c0de81fc:	e007      	b.n	c0de820e <ux_layout_pb_prepro+0x5e>
c0de81fe:	4648      	mov	r0, r9
c0de8200:	19c0      	adds	r0, r0, r7
c0de8202:	6821      	ldr	r1, [r4, #0]
c0de8204:	22c8      	movs	r2, #200	; 0xc8
c0de8206:	5081      	str	r1, [r0, r2]
c0de8208:	4648      	mov	r0, r9
c0de820a:	19c0      	adds	r0, r0, r7
c0de820c:	30ac      	adds	r0, #172	; 0xac
c0de820e:	b001      	add	sp, #4
c0de8210:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de8212:	46c0      	nop			; (mov r8, r8)
c0de8214:	0000005c 	.word	0x0000005c

c0de8218 <ux_layout_pb_init>:
c0de8218:	b510      	push	{r4, lr}
c0de821a:	4604      	mov	r4, r0
c0de821c:	f000 f944 	bl	c0de84a8 <ux_stack_init>
c0de8220:	2024      	movs	r0, #36	; 0x24
c0de8222:	4360      	muls	r0, r4
c0de8224:	490c      	ldr	r1, [pc, #48]	; (c0de8258 <ux_layout_pb_init+0x40>)
c0de8226:	464a      	mov	r2, r9
c0de8228:	1851      	adds	r1, r2, r1
c0de822a:	1808      	adds	r0, r1, r0
c0de822c:	21d4      	movs	r1, #212	; 0xd4
c0de822e:	2205      	movs	r2, #5
c0de8230:	5442      	strb	r2, [r0, r1]
c0de8232:	21d0      	movs	r1, #208	; 0xd0
c0de8234:	4a09      	ldr	r2, [pc, #36]	; (c0de825c <ux_layout_pb_init+0x44>)
c0de8236:	447a      	add	r2, pc
c0de8238:	5042      	str	r2, [r0, r1]
c0de823a:	21e0      	movs	r1, #224	; 0xe0
c0de823c:	4a08      	ldr	r2, [pc, #32]	; (c0de8260 <ux_layout_pb_init+0x48>)
c0de823e:	447a      	add	r2, pc
c0de8240:	5042      	str	r2, [r0, r1]
c0de8242:	21dc      	movs	r1, #220	; 0xdc
c0de8244:	4a07      	ldr	r2, [pc, #28]	; (c0de8264 <ux_layout_pb_init+0x4c>)
c0de8246:	447a      	add	r2, pc
c0de8248:	5042      	str	r2, [r0, r1]
c0de824a:	21cd      	movs	r1, #205	; 0xcd
c0de824c:	2201      	movs	r2, #1
c0de824e:	5442      	strb	r2, [r0, r1]
c0de8250:	4620      	mov	r0, r4
c0de8252:	f000 f8fb 	bl	c0de844c <ux_stack_display>
c0de8256:	bd10      	pop	{r4, pc}
c0de8258:	0000005c 	.word	0x0000005c
c0de825c:	0000487a 	.word	0x0000487a
c0de8260:	fffff967 	.word	0xfffff967
c0de8264:	ffffff67 	.word	0xffffff67

c0de8268 <ux_layout_pbb_prepro>:
c0de8268:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de826a:	b081      	sub	sp, #4
c0de826c:	4605      	mov	r5, r0
c0de826e:	4f1a      	ldr	r7, [pc, #104]	; (c0de82d8 <ux_layout_pbb_prepro+0x70>)
c0de8270:	4648      	mov	r0, r9
c0de8272:	19c6      	adds	r6, r0, r7
c0de8274:	36ac      	adds	r6, #172	; 0xac
c0de8276:	f7ff fccf 	bl	c0de7c18 <ux_stack_get_current_step_params>
c0de827a:	4604      	mov	r4, r0
c0de827c:	2220      	movs	r2, #32
c0de827e:	4630      	mov	r0, r6
c0de8280:	4629      	mov	r1, r5
c0de8282:	f000 fb75 	bl	c0de8970 <__aeabi_memmove>
c0de8286:	7868      	ldrb	r0, [r5, #1]
c0de8288:	280f      	cmp	r0, #15
c0de828a:	dc09      	bgt.n	c0de82a0 <ux_layout_pbb_prepro+0x38>
c0de828c:	2801      	cmp	r0, #1
c0de828e:	d018      	beq.n	c0de82c2 <ux_layout_pbb_prepro+0x5a>
c0de8290:	2802      	cmp	r0, #2
c0de8292:	d019      	beq.n	c0de82c8 <ux_layout_pbb_prepro+0x60>
c0de8294:	280f      	cmp	r0, #15
c0de8296:	d110      	bne.n	c0de82ba <ux_layout_pbb_prepro+0x52>
c0de8298:	4648      	mov	r0, r9
c0de829a:	19c0      	adds	r0, r0, r7
c0de829c:	6821      	ldr	r1, [r4, #0]
c0de829e:	e00a      	b.n	c0de82b6 <ux_layout_pbb_prepro+0x4e>
c0de82a0:	3810      	subs	r0, #16
c0de82a2:	2802      	cmp	r0, #2
c0de82a4:	d209      	bcs.n	c0de82ba <ux_layout_pbb_prepro+0x52>
c0de82a6:	4648      	mov	r0, r9
c0de82a8:	19c0      	adds	r0, r0, r7
c0de82aa:	21ad      	movs	r1, #173	; 0xad
c0de82ac:	5c41      	ldrb	r1, [r0, r1]
c0de82ae:	0709      	lsls	r1, r1, #28
c0de82b0:	0e89      	lsrs	r1, r1, #26
c0de82b2:	1861      	adds	r1, r4, r1
c0de82b4:	6849      	ldr	r1, [r1, #4]
c0de82b6:	22c8      	movs	r2, #200	; 0xc8
c0de82b8:	5081      	str	r1, [r0, r2]
c0de82ba:	4648      	mov	r0, r9
c0de82bc:	19c0      	adds	r0, r0, r7
c0de82be:	30ac      	adds	r0, #172	; 0xac
c0de82c0:	e007      	b.n	c0de82d2 <ux_layout_pbb_prepro+0x6a>
c0de82c2:	f7ff fa5f 	bl	c0de7784 <ux_flow_is_first>
c0de82c6:	e001      	b.n	c0de82cc <ux_layout_pbb_prepro+0x64>
c0de82c8:	f7ff fa8a 	bl	c0de77e0 <ux_flow_is_last>
c0de82cc:	2800      	cmp	r0, #0
c0de82ce:	d0f4      	beq.n	c0de82ba <ux_layout_pbb_prepro+0x52>
c0de82d0:	2000      	movs	r0, #0
c0de82d2:	b001      	add	sp, #4
c0de82d4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de82d6:	46c0      	nop			; (mov r8, r8)
c0de82d8:	0000005c 	.word	0x0000005c

c0de82dc <ux_layout_pbb_init_common>:
c0de82dc:	b510      	push	{r4, lr}
c0de82de:	4604      	mov	r4, r0
c0de82e0:	f000 f8e2 	bl	c0de84a8 <ux_stack_init>
c0de82e4:	2024      	movs	r0, #36	; 0x24
c0de82e6:	4360      	muls	r0, r4
c0de82e8:	4909      	ldr	r1, [pc, #36]	; (c0de8310 <ux_layout_pbb_init_common+0x34>)
c0de82ea:	464a      	mov	r2, r9
c0de82ec:	1851      	adds	r1, r2, r1
c0de82ee:	1808      	adds	r0, r1, r0
c0de82f0:	21d4      	movs	r1, #212	; 0xd4
c0de82f2:	2206      	movs	r2, #6
c0de82f4:	5442      	strb	r2, [r0, r1]
c0de82f6:	21d0      	movs	r1, #208	; 0xd0
c0de82f8:	4a06      	ldr	r2, [pc, #24]	; (c0de8314 <ux_layout_pbb_init_common+0x38>)
c0de82fa:	447a      	add	r2, pc
c0de82fc:	5042      	str	r2, [r0, r1]
c0de82fe:	21e0      	movs	r1, #224	; 0xe0
c0de8300:	4a05      	ldr	r2, [pc, #20]	; (c0de8318 <ux_layout_pbb_init_common+0x3c>)
c0de8302:	447a      	add	r2, pc
c0de8304:	5042      	str	r2, [r0, r1]
c0de8306:	21cd      	movs	r1, #205	; 0xcd
c0de8308:	2201      	movs	r2, #1
c0de830a:	5442      	strb	r2, [r0, r1]
c0de830c:	bd10      	pop	{r4, pc}
c0de830e:	46c0      	nop			; (mov r8, r8)
c0de8310:	0000005c 	.word	0x0000005c
c0de8314:	00004856 	.word	0x00004856
c0de8318:	fffff8a3 	.word	0xfffff8a3

c0de831c <ux_layout_pnn_prepro>:
c0de831c:	b580      	push	{r7, lr}
c0de831e:	f7ff ffa3 	bl	c0de8268 <ux_layout_pbb_prepro>
c0de8322:	2800      	cmp	r0, #0
c0de8324:	d00b      	beq.n	c0de833e <ux_layout_pnn_prepro+0x22>
c0de8326:	4906      	ldr	r1, [pc, #24]	; (c0de8340 <ux_layout_pnn_prepro+0x24>)
c0de8328:	464a      	mov	r2, r9
c0de832a:	1852      	adds	r2, r2, r1
c0de832c:	23ad      	movs	r3, #173	; 0xad
c0de832e:	5cd2      	ldrb	r2, [r2, r3]
c0de8330:	2a10      	cmp	r2, #16
c0de8332:	d304      	bcc.n	c0de833e <ux_layout_pnn_prepro+0x22>
c0de8334:	464a      	mov	r2, r9
c0de8336:	1851      	adds	r1, r2, r1
c0de8338:	22c4      	movs	r2, #196	; 0xc4
c0de833a:	4b02      	ldr	r3, [pc, #8]	; (c0de8344 <ux_layout_pnn_prepro+0x28>)
c0de833c:	528b      	strh	r3, [r1, r2]
c0de833e:	bd80      	pop	{r7, pc}
c0de8340:	0000005c 	.word	0x0000005c
c0de8344:	0000800a 	.word	0x0000800a

c0de8348 <ux_layout_pnn_init>:
c0de8348:	b510      	push	{r4, lr}
c0de834a:	4604      	mov	r4, r0
c0de834c:	f7ff ffc6 	bl	c0de82dc <ux_layout_pbb_init_common>
c0de8350:	2024      	movs	r0, #36	; 0x24
c0de8352:	4360      	muls	r0, r4
c0de8354:	4905      	ldr	r1, [pc, #20]	; (c0de836c <ux_layout_pnn_init+0x24>)
c0de8356:	464a      	mov	r2, r9
c0de8358:	1851      	adds	r1, r2, r1
c0de835a:	1808      	adds	r0, r1, r0
c0de835c:	21dc      	movs	r1, #220	; 0xdc
c0de835e:	4a04      	ldr	r2, [pc, #16]	; (c0de8370 <ux_layout_pnn_init+0x28>)
c0de8360:	447a      	add	r2, pc
c0de8362:	5042      	str	r2, [r0, r1]
c0de8364:	4620      	mov	r0, r4
c0de8366:	f000 f871 	bl	c0de844c <ux_stack_display>
c0de836a:	bd10      	pop	{r4, pc}
c0de836c:	0000005c 	.word	0x0000005c
c0de8370:	ffffffb9 	.word	0xffffffb9

c0de8374 <ux_layout_strings_prepro>:
c0de8374:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8376:	b081      	sub	sp, #4
c0de8378:	4605      	mov	r5, r0
c0de837a:	4f16      	ldr	r7, [pc, #88]	; (c0de83d4 <ux_layout_strings_prepro+0x60>)
c0de837c:	4648      	mov	r0, r9
c0de837e:	19c6      	adds	r6, r0, r7
c0de8380:	36ac      	adds	r6, #172	; 0xac
c0de8382:	f7ff fc49 	bl	c0de7c18 <ux_stack_get_current_step_params>
c0de8386:	4604      	mov	r4, r0
c0de8388:	2220      	movs	r2, #32
c0de838a:	4630      	mov	r0, r6
c0de838c:	4629      	mov	r1, r5
c0de838e:	f000 faef 	bl	c0de8970 <__aeabi_memmove>
c0de8392:	7868      	ldrb	r0, [r5, #1]
c0de8394:	2802      	cmp	r0, #2
c0de8396:	d004      	beq.n	c0de83a2 <ux_layout_strings_prepro+0x2e>
c0de8398:	2801      	cmp	r0, #1
c0de839a:	d108      	bne.n	c0de83ae <ux_layout_strings_prepro+0x3a>
c0de839c:	f7ff f9f2 	bl	c0de7784 <ux_flow_is_first>
c0de83a0:	e001      	b.n	c0de83a6 <ux_layout_strings_prepro+0x32>
c0de83a2:	f7ff fa1d 	bl	c0de77e0 <ux_flow_is_last>
c0de83a6:	2800      	cmp	r0, #0
c0de83a8:	d00f      	beq.n	c0de83ca <ux_layout_strings_prepro+0x56>
c0de83aa:	2000      	movs	r0, #0
c0de83ac:	e010      	b.n	c0de83d0 <ux_layout_strings_prepro+0x5c>
c0de83ae:	4648      	mov	r0, r9
c0de83b0:	19c0      	adds	r0, r0, r7
c0de83b2:	21ad      	movs	r1, #173	; 0xad
c0de83b4:	5c40      	ldrb	r0, [r0, r1]
c0de83b6:	0601      	lsls	r1, r0, #24
c0de83b8:	0f09      	lsrs	r1, r1, #28
c0de83ba:	d006      	beq.n	c0de83ca <ux_layout_strings_prepro+0x56>
c0de83bc:	4649      	mov	r1, r9
c0de83be:	19c9      	adds	r1, r1, r7
c0de83c0:	0700      	lsls	r0, r0, #28
c0de83c2:	0e80      	lsrs	r0, r0, #26
c0de83c4:	5820      	ldr	r0, [r4, r0]
c0de83c6:	22c8      	movs	r2, #200	; 0xc8
c0de83c8:	5088      	str	r0, [r1, r2]
c0de83ca:	4648      	mov	r0, r9
c0de83cc:	19c0      	adds	r0, r0, r7
c0de83ce:	30ac      	adds	r0, #172	; 0xac
c0de83d0:	b001      	add	sp, #4
c0de83d2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de83d4:	0000005c 	.word	0x0000005c

c0de83d8 <ux_stack_push>:
c0de83d8:	b570      	push	{r4, r5, r6, lr}
c0de83da:	4c0a      	ldr	r4, [pc, #40]	; (c0de8404 <ux_stack_push+0x2c>)
c0de83dc:	4648      	mov	r0, r9
c0de83de:	5d00      	ldrb	r0, [r0, r4]
c0de83e0:	2800      	cmp	r0, #0
c0de83e2:	d10c      	bne.n	c0de83fe <ux_stack_push+0x26>
c0de83e4:	464d      	mov	r5, r9
c0de83e6:	192e      	adds	r6, r5, r4
c0de83e8:	4630      	mov	r0, r6
c0de83ea:	30cc      	adds	r0, #204	; 0xcc
c0de83ec:	2124      	movs	r1, #36	; 0x24
c0de83ee:	f000 fab5 	bl	c0de895c <__aeabi_memclr>
c0de83f2:	2001      	movs	r0, #1
c0de83f4:	5528      	strb	r0, [r5, r4]
c0de83f6:	2100      	movs	r1, #0
c0de83f8:	6231      	str	r1, [r6, #32]
c0de83fa:	6271      	str	r1, [r6, #36]	; 0x24
c0de83fc:	62b1      	str	r1, [r6, #40]	; 0x28
c0de83fe:	1e40      	subs	r0, r0, #1
c0de8400:	bd70      	pop	{r4, r5, r6, pc}
c0de8402:	46c0      	nop			; (mov r8, r8)
c0de8404:	0000005c 	.word	0x0000005c

c0de8408 <ux_stack_redisplay>:
c0de8408:	b580      	push	{r7, lr}
c0de840a:	f7ff fc0f 	bl	c0de7c2c <ux_flow_relayout>
c0de840e:	2800      	cmp	r0, #0
c0de8410:	d000      	beq.n	c0de8414 <ux_stack_redisplay+0xc>
c0de8412:	bd80      	pop	{r7, pc}
c0de8414:	480c      	ldr	r0, [pc, #48]	; (c0de8448 <ux_stack_redisplay+0x40>)
c0de8416:	4649      	mov	r1, r9
c0de8418:	5c09      	ldrb	r1, [r1, r0]
c0de841a:	2901      	cmp	r1, #1
c0de841c:	d107      	bne.n	c0de842e <ux_stack_redisplay+0x26>
c0de841e:	4649      	mov	r1, r9
c0de8420:	1809      	adds	r1, r1, r0
c0de8422:	22ce      	movs	r2, #206	; 0xce
c0de8424:	2000      	movs	r0, #0
c0de8426:	5288      	strh	r0, [r1, r2]
c0de8428:	f000 f810 	bl	c0de844c <ux_stack_display>
c0de842c:	bd80      	pop	{r7, pc}
c0de842e:	2900      	cmp	r1, #0
c0de8430:	d1ef      	bne.n	c0de8412 <ux_stack_redisplay+0xa>
c0de8432:	4649      	mov	r1, r9
c0de8434:	1809      	adds	r1, r1, r0
c0de8436:	7849      	ldrb	r1, [r1, #1]
c0de8438:	29aa      	cmp	r1, #170	; 0xaa
c0de843a:	d1ea      	bne.n	c0de8412 <ux_stack_redisplay+0xa>
c0de843c:	4649      	mov	r1, r9
c0de843e:	1808      	adds	r0, r1, r0
c0de8440:	2169      	movs	r1, #105	; 0x69
c0de8442:	7041      	strb	r1, [r0, #1]
c0de8444:	bd80      	pop	{r7, pc}
c0de8446:	46c0      	nop			; (mov r8, r8)
c0de8448:	0000005c 	.word	0x0000005c

c0de844c <ux_stack_display>:
c0de844c:	b510      	push	{r4, lr}
c0de844e:	4915      	ldr	r1, [pc, #84]	; (c0de84a4 <ux_stack_display+0x58>)
c0de8450:	464a      	mov	r2, r9
c0de8452:	5c52      	ldrb	r2, [r2, r1]
c0de8454:	2a00      	cmp	r2, #0
c0de8456:	d011      	beq.n	c0de847c <ux_stack_display+0x30>
c0de8458:	1c43      	adds	r3, r0, #1
c0de845a:	4293      	cmp	r3, r2
c0de845c:	d10e      	bne.n	c0de847c <ux_stack_display+0x30>
c0de845e:	2224      	movs	r2, #36	; 0x24
c0de8460:	4342      	muls	r2, r0
c0de8462:	4648      	mov	r0, r9
c0de8464:	1840      	adds	r0, r0, r1
c0de8466:	1884      	adds	r4, r0, r2
c0de8468:	f7fb fd96 	bl	c0de3f98 <io_seproxyhal_init_ux>
c0de846c:	20ce      	movs	r0, #206	; 0xce
c0de846e:	2100      	movs	r1, #0
c0de8470:	5221      	strh	r1, [r4, r0]
c0de8472:	34cc      	adds	r4, #204	; 0xcc
c0de8474:	4620      	mov	r0, r4
c0de8476:	f000 f829 	bl	c0de84cc <ux_stack_display_elements>
c0de847a:	bd10      	pop	{r4, pc}
c0de847c:	2300      	movs	r3, #0
c0de847e:	43db      	mvns	r3, r3
c0de8480:	1ac0      	subs	r0, r0, r3
c0de8482:	1e43      	subs	r3, r0, #1
c0de8484:	4198      	sbcs	r0, r3
c0de8486:	1e53      	subs	r3, r2, #1
c0de8488:	419a      	sbcs	r2, r3
c0de848a:	4210      	tst	r0, r2
c0de848c:	d108      	bne.n	c0de84a0 <ux_stack_display+0x54>
c0de848e:	4648      	mov	r0, r9
c0de8490:	1840      	adds	r0, r0, r1
c0de8492:	7840      	ldrb	r0, [r0, #1]
c0de8494:	28aa      	cmp	r0, #170	; 0xaa
c0de8496:	d103      	bne.n	c0de84a0 <ux_stack_display+0x54>
c0de8498:	4648      	mov	r0, r9
c0de849a:	1840      	adds	r0, r0, r1
c0de849c:	2169      	movs	r1, #105	; 0x69
c0de849e:	7041      	strb	r1, [r0, #1]
c0de84a0:	bd10      	pop	{r4, pc}
c0de84a2:	46c0      	nop			; (mov r8, r8)
c0de84a4:	0000005c 	.word	0x0000005c

c0de84a8 <ux_stack_init>:
c0de84a8:	b510      	push	{r4, lr}
c0de84aa:	4604      	mov	r4, r0
c0de84ac:	f7fb fd74 	bl	c0de3f98 <io_seproxyhal_init_ux>
c0de84b0:	2c00      	cmp	r4, #0
c0de84b2:	d000      	beq.n	c0de84b6 <ux_stack_init+0xe>
c0de84b4:	bd10      	pop	{r4, pc}
c0de84b6:	4804      	ldr	r0, [pc, #16]	; (c0de84c8 <ux_stack_init+0x20>)
c0de84b8:	4649      	mov	r1, r9
c0de84ba:	1808      	adds	r0, r1, r0
c0de84bc:	30cc      	adds	r0, #204	; 0xcc
c0de84be:	2124      	movs	r1, #36	; 0x24
c0de84c0:	f000 fa4c 	bl	c0de895c <__aeabi_memclr>
c0de84c4:	bd10      	pop	{r4, pc}
c0de84c6:	46c0      	nop			; (mov r8, r8)
c0de84c8:	0000005c 	.word	0x0000005c

c0de84cc <ux_stack_display_elements>:
c0de84cc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de84ce:	b081      	sub	sp, #4
c0de84d0:	4604      	mov	r4, r0
c0de84d2:	f7fd f84f 	bl	c0de5574 <os_perso_isonboarded>
c0de84d6:	28aa      	cmp	r0, #170	; 0xaa
c0de84d8:	d103      	bne.n	c0de84e2 <ux_stack_display_elements+0x16>
c0de84da:	f7fd f867 	bl	c0de55ac <os_global_pin_is_validated>
c0de84de:	28aa      	cmp	r0, #170	; 0xaa
c0de84e0:	d15a      	bne.n	c0de8598 <ux_stack_display_elements+0xcc>
c0de84e2:	7860      	ldrb	r0, [r4, #1]
c0de84e4:	2800      	cmp	r0, #0
c0de84e6:	d039      	beq.n	c0de855c <ux_stack_display_elements+0x90>
c0de84e8:	7a21      	ldrb	r1, [r4, #8]
c0de84ea:	8860      	ldrh	r0, [r4, #2]
c0de84ec:	4288      	cmp	r0, r1
c0de84ee:	d238      	bcs.n	c0de8562 <ux_stack_display_elements+0x96>
c0de84f0:	9100      	str	r1, [sp, #0]
c0de84f2:	0147      	lsls	r7, r0, #5
c0de84f4:	1c46      	adds	r6, r0, #1
c0de84f6:	1c40      	adds	r0, r0, #1
c0de84f8:	8060      	strh	r0, [r4, #2]
c0de84fa:	4648      	mov	r0, r9
c0de84fc:	4927      	ldr	r1, [pc, #156]	; (c0de859c <ux_stack_display_elements+0xd0>)
c0de84fe:	5c41      	ldrb	r1, [r0, r1]
c0de8500:	6860      	ldr	r0, [r4, #4]
c0de8502:	19c5      	adds	r5, r0, r7
c0de8504:	2900      	cmp	r1, #0
c0de8506:	4628      	mov	r0, r5
c0de8508:	d012      	beq.n	c0de8530 <ux_stack_display_elements+0x64>
c0de850a:	4648      	mov	r0, r9
c0de850c:	4a23      	ldr	r2, [pc, #140]	; (c0de859c <ux_stack_display_elements+0xd0>)
c0de850e:	1880      	adds	r0, r0, r2
c0de8510:	2224      	movs	r2, #36	; 0x24
c0de8512:	434a      	muls	r2, r1
c0de8514:	1810      	adds	r0, r2, r0
c0de8516:	21b8      	movs	r1, #184	; 0xb8
c0de8518:	5841      	ldr	r1, [r0, r1]
c0de851a:	2900      	cmp	r1, #0
c0de851c:	d005      	beq.n	c0de852a <ux_stack_display_elements+0x5e>
c0de851e:	4628      	mov	r0, r5
c0de8520:	4788      	blx	r1
c0de8522:	2800      	cmp	r0, #0
c0de8524:	d003      	beq.n	c0de852e <ux_stack_display_elements+0x62>
c0de8526:	2801      	cmp	r0, #1
c0de8528:	d102      	bne.n	c0de8530 <ux_stack_display_elements+0x64>
c0de852a:	4628      	mov	r0, r5
c0de852c:	e000      	b.n	c0de8530 <ux_stack_display_elements+0x64>
c0de852e:	2000      	movs	r0, #0
c0de8530:	2800      	cmp	r0, #0
c0de8532:	d006      	beq.n	c0de8542 <ux_stack_display_elements+0x76>
c0de8534:	2801      	cmp	r0, #1
c0de8536:	d000      	beq.n	c0de853a <ux_stack_display_elements+0x6e>
c0de8538:	4605      	mov	r5, r0
c0de853a:	4628      	mov	r0, r5
c0de853c:	f7fa ff74 	bl	c0de3428 <io_seproxyhal_display>
c0de8540:	e005      	b.n	c0de854e <ux_stack_display_elements+0x82>
c0de8542:	4648      	mov	r0, r9
c0de8544:	4915      	ldr	r1, [pc, #84]	; (c0de859c <ux_stack_display_elements+0xd0>)
c0de8546:	1840      	adds	r0, r0, r1
c0de8548:	7840      	ldrb	r0, [r0, #1]
c0de854a:	2800      	cmp	r0, #0
c0de854c:	d124      	bne.n	c0de8598 <ux_stack_display_elements+0xcc>
c0de854e:	7a20      	ldrb	r0, [r4, #8]
c0de8550:	4286      	cmp	r6, r0
c0de8552:	d205      	bcs.n	c0de8560 <ux_stack_display_elements+0x94>
c0de8554:	3720      	adds	r7, #32
c0de8556:	1c76      	adds	r6, r6, #1
c0de8558:	8860      	ldrh	r0, [r4, #2]
c0de855a:	e7cc      	b.n	c0de84f6 <ux_stack_display_elements+0x2a>
c0de855c:	2100      	movs	r1, #0
c0de855e:	e000      	b.n	c0de8562 <ux_stack_display_elements+0x96>
c0de8560:	9900      	ldr	r1, [sp, #0]
c0de8562:	8860      	ldrh	r0, [r4, #2]
c0de8564:	4288      	cmp	r0, r1
c0de8566:	d117      	bne.n	c0de8598 <ux_stack_display_elements+0xcc>
c0de8568:	f7fd f8be 	bl	c0de56e8 <screen_update>
c0de856c:	8860      	ldrh	r0, [r4, #2]
c0de856e:	1c40      	adds	r0, r0, #1
c0de8570:	8060      	strh	r0, [r4, #2]
c0de8572:	68e1      	ldr	r1, [r4, #12]
c0de8574:	2900      	cmp	r1, #0
c0de8576:	d004      	beq.n	c0de8582 <ux_stack_display_elements+0xb6>
c0de8578:	2500      	movs	r5, #0
c0de857a:	4628      	mov	r0, r5
c0de857c:	4788      	blx	r1
c0de857e:	2800      	cmp	r0, #0
c0de8580:	d005      	beq.n	c0de858e <ux_stack_display_elements+0xc2>
c0de8582:	4806      	ldr	r0, [pc, #24]	; (c0de859c <ux_stack_display_elements+0xd0>)
c0de8584:	4649      	mov	r1, r9
c0de8586:	1808      	adds	r0, r1, r0
c0de8588:	7821      	ldrb	r1, [r4, #0]
c0de858a:	7041      	strb	r1, [r0, #1]
c0de858c:	e004      	b.n	c0de8598 <ux_stack_display_elements+0xcc>
c0de858e:	8065      	strh	r5, [r4, #2]
c0de8590:	4802      	ldr	r0, [pc, #8]	; (c0de859c <ux_stack_display_elements+0xd0>)
c0de8592:	4649      	mov	r1, r9
c0de8594:	1808      	adds	r0, r1, r0
c0de8596:	7045      	strb	r5, [r0, #1]
c0de8598:	b001      	add	sp, #4
c0de859a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de859c:	0000005c 	.word	0x0000005c

c0de85a0 <__udivsi3>:
c0de85a0:	2200      	movs	r2, #0
c0de85a2:	0843      	lsrs	r3, r0, #1
c0de85a4:	428b      	cmp	r3, r1
c0de85a6:	d374      	bcc.n	c0de8692 <__udivsi3+0xf2>
c0de85a8:	0903      	lsrs	r3, r0, #4
c0de85aa:	428b      	cmp	r3, r1
c0de85ac:	d35f      	bcc.n	c0de866e <__udivsi3+0xce>
c0de85ae:	0a03      	lsrs	r3, r0, #8
c0de85b0:	428b      	cmp	r3, r1
c0de85b2:	d344      	bcc.n	c0de863e <__udivsi3+0x9e>
c0de85b4:	0b03      	lsrs	r3, r0, #12
c0de85b6:	428b      	cmp	r3, r1
c0de85b8:	d328      	bcc.n	c0de860c <__udivsi3+0x6c>
c0de85ba:	0c03      	lsrs	r3, r0, #16
c0de85bc:	428b      	cmp	r3, r1
c0de85be:	d30d      	bcc.n	c0de85dc <__udivsi3+0x3c>
c0de85c0:	22ff      	movs	r2, #255	; 0xff
c0de85c2:	0209      	lsls	r1, r1, #8
c0de85c4:	ba12      	rev	r2, r2
c0de85c6:	0c03      	lsrs	r3, r0, #16
c0de85c8:	428b      	cmp	r3, r1
c0de85ca:	d302      	bcc.n	c0de85d2 <__udivsi3+0x32>
c0de85cc:	1212      	asrs	r2, r2, #8
c0de85ce:	0209      	lsls	r1, r1, #8
c0de85d0:	d065      	beq.n	c0de869e <__udivsi3+0xfe>
c0de85d2:	0b03      	lsrs	r3, r0, #12
c0de85d4:	428b      	cmp	r3, r1
c0de85d6:	d319      	bcc.n	c0de860c <__udivsi3+0x6c>
c0de85d8:	e000      	b.n	c0de85dc <__udivsi3+0x3c>
c0de85da:	0a09      	lsrs	r1, r1, #8
c0de85dc:	0bc3      	lsrs	r3, r0, #15
c0de85de:	428b      	cmp	r3, r1
c0de85e0:	d301      	bcc.n	c0de85e6 <__udivsi3+0x46>
c0de85e2:	03cb      	lsls	r3, r1, #15
c0de85e4:	1ac0      	subs	r0, r0, r3
c0de85e6:	4152      	adcs	r2, r2
c0de85e8:	0b83      	lsrs	r3, r0, #14
c0de85ea:	428b      	cmp	r3, r1
c0de85ec:	d301      	bcc.n	c0de85f2 <__udivsi3+0x52>
c0de85ee:	038b      	lsls	r3, r1, #14
c0de85f0:	1ac0      	subs	r0, r0, r3
c0de85f2:	4152      	adcs	r2, r2
c0de85f4:	0b43      	lsrs	r3, r0, #13
c0de85f6:	428b      	cmp	r3, r1
c0de85f8:	d301      	bcc.n	c0de85fe <__udivsi3+0x5e>
c0de85fa:	034b      	lsls	r3, r1, #13
c0de85fc:	1ac0      	subs	r0, r0, r3
c0de85fe:	4152      	adcs	r2, r2
c0de8600:	0b03      	lsrs	r3, r0, #12
c0de8602:	428b      	cmp	r3, r1
c0de8604:	d301      	bcc.n	c0de860a <__udivsi3+0x6a>
c0de8606:	030b      	lsls	r3, r1, #12
c0de8608:	1ac0      	subs	r0, r0, r3
c0de860a:	4152      	adcs	r2, r2
c0de860c:	0ac3      	lsrs	r3, r0, #11
c0de860e:	428b      	cmp	r3, r1
c0de8610:	d301      	bcc.n	c0de8616 <__udivsi3+0x76>
c0de8612:	02cb      	lsls	r3, r1, #11
c0de8614:	1ac0      	subs	r0, r0, r3
c0de8616:	4152      	adcs	r2, r2
c0de8618:	0a83      	lsrs	r3, r0, #10
c0de861a:	428b      	cmp	r3, r1
c0de861c:	d301      	bcc.n	c0de8622 <__udivsi3+0x82>
c0de861e:	028b      	lsls	r3, r1, #10
c0de8620:	1ac0      	subs	r0, r0, r3
c0de8622:	4152      	adcs	r2, r2
c0de8624:	0a43      	lsrs	r3, r0, #9
c0de8626:	428b      	cmp	r3, r1
c0de8628:	d301      	bcc.n	c0de862e <__udivsi3+0x8e>
c0de862a:	024b      	lsls	r3, r1, #9
c0de862c:	1ac0      	subs	r0, r0, r3
c0de862e:	4152      	adcs	r2, r2
c0de8630:	0a03      	lsrs	r3, r0, #8
c0de8632:	428b      	cmp	r3, r1
c0de8634:	d301      	bcc.n	c0de863a <__udivsi3+0x9a>
c0de8636:	020b      	lsls	r3, r1, #8
c0de8638:	1ac0      	subs	r0, r0, r3
c0de863a:	4152      	adcs	r2, r2
c0de863c:	d2cd      	bcs.n	c0de85da <__udivsi3+0x3a>
c0de863e:	09c3      	lsrs	r3, r0, #7
c0de8640:	428b      	cmp	r3, r1
c0de8642:	d301      	bcc.n	c0de8648 <__udivsi3+0xa8>
c0de8644:	01cb      	lsls	r3, r1, #7
c0de8646:	1ac0      	subs	r0, r0, r3
c0de8648:	4152      	adcs	r2, r2
c0de864a:	0983      	lsrs	r3, r0, #6
c0de864c:	428b      	cmp	r3, r1
c0de864e:	d301      	bcc.n	c0de8654 <__udivsi3+0xb4>
c0de8650:	018b      	lsls	r3, r1, #6
c0de8652:	1ac0      	subs	r0, r0, r3
c0de8654:	4152      	adcs	r2, r2
c0de8656:	0943      	lsrs	r3, r0, #5
c0de8658:	428b      	cmp	r3, r1
c0de865a:	d301      	bcc.n	c0de8660 <__udivsi3+0xc0>
c0de865c:	014b      	lsls	r3, r1, #5
c0de865e:	1ac0      	subs	r0, r0, r3
c0de8660:	4152      	adcs	r2, r2
c0de8662:	0903      	lsrs	r3, r0, #4
c0de8664:	428b      	cmp	r3, r1
c0de8666:	d301      	bcc.n	c0de866c <__udivsi3+0xcc>
c0de8668:	010b      	lsls	r3, r1, #4
c0de866a:	1ac0      	subs	r0, r0, r3
c0de866c:	4152      	adcs	r2, r2
c0de866e:	08c3      	lsrs	r3, r0, #3
c0de8670:	428b      	cmp	r3, r1
c0de8672:	d301      	bcc.n	c0de8678 <__udivsi3+0xd8>
c0de8674:	00cb      	lsls	r3, r1, #3
c0de8676:	1ac0      	subs	r0, r0, r3
c0de8678:	4152      	adcs	r2, r2
c0de867a:	0883      	lsrs	r3, r0, #2
c0de867c:	428b      	cmp	r3, r1
c0de867e:	d301      	bcc.n	c0de8684 <__udivsi3+0xe4>
c0de8680:	008b      	lsls	r3, r1, #2
c0de8682:	1ac0      	subs	r0, r0, r3
c0de8684:	4152      	adcs	r2, r2
c0de8686:	0843      	lsrs	r3, r0, #1
c0de8688:	428b      	cmp	r3, r1
c0de868a:	d301      	bcc.n	c0de8690 <__udivsi3+0xf0>
c0de868c:	004b      	lsls	r3, r1, #1
c0de868e:	1ac0      	subs	r0, r0, r3
c0de8690:	4152      	adcs	r2, r2
c0de8692:	1a41      	subs	r1, r0, r1
c0de8694:	d200      	bcs.n	c0de8698 <__udivsi3+0xf8>
c0de8696:	4601      	mov	r1, r0
c0de8698:	4152      	adcs	r2, r2
c0de869a:	4610      	mov	r0, r2
c0de869c:	4770      	bx	lr
c0de869e:	e7ff      	b.n	c0de86a0 <__udivsi3+0x100>
c0de86a0:	b501      	push	{r0, lr}
c0de86a2:	2000      	movs	r0, #0
c0de86a4:	f000 f806 	bl	c0de86b4 <__aeabi_idiv0>
c0de86a8:	bd02      	pop	{r1, pc}
c0de86aa:	46c0      	nop			; (mov r8, r8)

c0de86ac <__aeabi_uidivmod>:
c0de86ac:	2900      	cmp	r1, #0
c0de86ae:	d0f7      	beq.n	c0de86a0 <__udivsi3+0x100>
c0de86b0:	e776      	b.n	c0de85a0 <__udivsi3>
c0de86b2:	4770      	bx	lr

c0de86b4 <__aeabi_idiv0>:
c0de86b4:	4770      	bx	lr
c0de86b6:	46c0      	nop			; (mov r8, r8)

c0de86b8 <__aeabi_llsr>:
c0de86b8:	40d0      	lsrs	r0, r2
c0de86ba:	1c0b      	adds	r3, r1, #0
c0de86bc:	40d1      	lsrs	r1, r2
c0de86be:	469c      	mov	ip, r3
c0de86c0:	3a20      	subs	r2, #32
c0de86c2:	40d3      	lsrs	r3, r2
c0de86c4:	4318      	orrs	r0, r3
c0de86c6:	4252      	negs	r2, r2
c0de86c8:	4663      	mov	r3, ip
c0de86ca:	4093      	lsls	r3, r2
c0de86cc:	4318      	orrs	r0, r3
c0de86ce:	4770      	bx	lr

c0de86d0 <__aeabi_uldivmod>:
c0de86d0:	2b00      	cmp	r3, #0
c0de86d2:	d111      	bne.n	c0de86f8 <__aeabi_uldivmod+0x28>
c0de86d4:	2a00      	cmp	r2, #0
c0de86d6:	d10f      	bne.n	c0de86f8 <__aeabi_uldivmod+0x28>
c0de86d8:	2900      	cmp	r1, #0
c0de86da:	d100      	bne.n	c0de86de <__aeabi_uldivmod+0xe>
c0de86dc:	2800      	cmp	r0, #0
c0de86de:	d002      	beq.n	c0de86e6 <__aeabi_uldivmod+0x16>
c0de86e0:	2100      	movs	r1, #0
c0de86e2:	43c9      	mvns	r1, r1
c0de86e4:	1c08      	adds	r0, r1, #0
c0de86e6:	b407      	push	{r0, r1, r2}
c0de86e8:	4802      	ldr	r0, [pc, #8]	; (c0de86f4 <__aeabi_uldivmod+0x24>)
c0de86ea:	a102      	add	r1, pc, #8	; (adr r1, c0de86f4 <__aeabi_uldivmod+0x24>)
c0de86ec:	1840      	adds	r0, r0, r1
c0de86ee:	9002      	str	r0, [sp, #8]
c0de86f0:	bd03      	pop	{r0, r1, pc}
c0de86f2:	46c0      	nop			; (mov r8, r8)
c0de86f4:	ffffffc1 	.word	0xffffffc1
c0de86f8:	b403      	push	{r0, r1}
c0de86fa:	4668      	mov	r0, sp
c0de86fc:	b501      	push	{r0, lr}
c0de86fe:	9802      	ldr	r0, [sp, #8]
c0de8700:	f000 f830 	bl	c0de8764 <__udivmoddi4>
c0de8704:	9b01      	ldr	r3, [sp, #4]
c0de8706:	469e      	mov	lr, r3
c0de8708:	b002      	add	sp, #8
c0de870a:	bc0c      	pop	{r2, r3}
c0de870c:	4770      	bx	lr
c0de870e:	46c0      	nop			; (mov r8, r8)

c0de8710 <__aeabi_lmul>:
c0de8710:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8712:	46ce      	mov	lr, r9
c0de8714:	4647      	mov	r7, r8
c0de8716:	0415      	lsls	r5, r2, #16
c0de8718:	0c2d      	lsrs	r5, r5, #16
c0de871a:	002e      	movs	r6, r5
c0de871c:	b580      	push	{r7, lr}
c0de871e:	0407      	lsls	r7, r0, #16
c0de8720:	0c14      	lsrs	r4, r2, #16
c0de8722:	0c3f      	lsrs	r7, r7, #16
c0de8724:	4699      	mov	r9, r3
c0de8726:	0c03      	lsrs	r3, r0, #16
c0de8728:	437e      	muls	r6, r7
c0de872a:	435d      	muls	r5, r3
c0de872c:	4367      	muls	r7, r4
c0de872e:	4363      	muls	r3, r4
c0de8730:	197f      	adds	r7, r7, r5
c0de8732:	0c34      	lsrs	r4, r6, #16
c0de8734:	19e4      	adds	r4, r4, r7
c0de8736:	469c      	mov	ip, r3
c0de8738:	42a5      	cmp	r5, r4
c0de873a:	d903      	bls.n	c0de8744 <__aeabi_lmul+0x34>
c0de873c:	2380      	movs	r3, #128	; 0x80
c0de873e:	025b      	lsls	r3, r3, #9
c0de8740:	4698      	mov	r8, r3
c0de8742:	44c4      	add	ip, r8
c0de8744:	464b      	mov	r3, r9
c0de8746:	4343      	muls	r3, r0
c0de8748:	4351      	muls	r1, r2
c0de874a:	0c25      	lsrs	r5, r4, #16
c0de874c:	0436      	lsls	r6, r6, #16
c0de874e:	4465      	add	r5, ip
c0de8750:	0c36      	lsrs	r6, r6, #16
c0de8752:	0424      	lsls	r4, r4, #16
c0de8754:	19a4      	adds	r4, r4, r6
c0de8756:	195b      	adds	r3, r3, r5
c0de8758:	1859      	adds	r1, r3, r1
c0de875a:	0020      	movs	r0, r4
c0de875c:	bc0c      	pop	{r2, r3}
c0de875e:	4690      	mov	r8, r2
c0de8760:	4699      	mov	r9, r3
c0de8762:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de8764 <__udivmoddi4>:
c0de8764:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8766:	4657      	mov	r7, sl
c0de8768:	464e      	mov	r6, r9
c0de876a:	4645      	mov	r5, r8
c0de876c:	46de      	mov	lr, fp
c0de876e:	b5e0      	push	{r5, r6, r7, lr}
c0de8770:	0004      	movs	r4, r0
c0de8772:	b083      	sub	sp, #12
c0de8774:	000d      	movs	r5, r1
c0de8776:	4692      	mov	sl, r2
c0de8778:	4699      	mov	r9, r3
c0de877a:	428b      	cmp	r3, r1
c0de877c:	d830      	bhi.n	c0de87e0 <__udivmoddi4+0x7c>
c0de877e:	d02d      	beq.n	c0de87dc <__udivmoddi4+0x78>
c0de8780:	4649      	mov	r1, r9
c0de8782:	4650      	mov	r0, sl
c0de8784:	f000 f8c0 	bl	c0de8908 <__clzdi2>
c0de8788:	0029      	movs	r1, r5
c0de878a:	0006      	movs	r6, r0
c0de878c:	0020      	movs	r0, r4
c0de878e:	f000 f8bb 	bl	c0de8908 <__clzdi2>
c0de8792:	1a33      	subs	r3, r6, r0
c0de8794:	4698      	mov	r8, r3
c0de8796:	3b20      	subs	r3, #32
c0de8798:	469b      	mov	fp, r3
c0de879a:	d433      	bmi.n	c0de8804 <__udivmoddi4+0xa0>
c0de879c:	465a      	mov	r2, fp
c0de879e:	4653      	mov	r3, sl
c0de87a0:	4093      	lsls	r3, r2
c0de87a2:	4642      	mov	r2, r8
c0de87a4:	001f      	movs	r7, r3
c0de87a6:	4653      	mov	r3, sl
c0de87a8:	4093      	lsls	r3, r2
c0de87aa:	001e      	movs	r6, r3
c0de87ac:	42af      	cmp	r7, r5
c0de87ae:	d83a      	bhi.n	c0de8826 <__udivmoddi4+0xc2>
c0de87b0:	42af      	cmp	r7, r5
c0de87b2:	d100      	bne.n	c0de87b6 <__udivmoddi4+0x52>
c0de87b4:	e07b      	b.n	c0de88ae <__udivmoddi4+0x14a>
c0de87b6:	465b      	mov	r3, fp
c0de87b8:	1ba4      	subs	r4, r4, r6
c0de87ba:	41bd      	sbcs	r5, r7
c0de87bc:	2b00      	cmp	r3, #0
c0de87be:	da00      	bge.n	c0de87c2 <__udivmoddi4+0x5e>
c0de87c0:	e078      	b.n	c0de88b4 <__udivmoddi4+0x150>
c0de87c2:	2200      	movs	r2, #0
c0de87c4:	2300      	movs	r3, #0
c0de87c6:	9200      	str	r2, [sp, #0]
c0de87c8:	9301      	str	r3, [sp, #4]
c0de87ca:	2301      	movs	r3, #1
c0de87cc:	465a      	mov	r2, fp
c0de87ce:	4093      	lsls	r3, r2
c0de87d0:	9301      	str	r3, [sp, #4]
c0de87d2:	2301      	movs	r3, #1
c0de87d4:	4642      	mov	r2, r8
c0de87d6:	4093      	lsls	r3, r2
c0de87d8:	9300      	str	r3, [sp, #0]
c0de87da:	e028      	b.n	c0de882e <__udivmoddi4+0xca>
c0de87dc:	4282      	cmp	r2, r0
c0de87de:	d9cf      	bls.n	c0de8780 <__udivmoddi4+0x1c>
c0de87e0:	2200      	movs	r2, #0
c0de87e2:	2300      	movs	r3, #0
c0de87e4:	9200      	str	r2, [sp, #0]
c0de87e6:	9301      	str	r3, [sp, #4]
c0de87e8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0de87ea:	2b00      	cmp	r3, #0
c0de87ec:	d001      	beq.n	c0de87f2 <__udivmoddi4+0x8e>
c0de87ee:	601c      	str	r4, [r3, #0]
c0de87f0:	605d      	str	r5, [r3, #4]
c0de87f2:	9800      	ldr	r0, [sp, #0]
c0de87f4:	9901      	ldr	r1, [sp, #4]
c0de87f6:	b003      	add	sp, #12
c0de87f8:	bc3c      	pop	{r2, r3, r4, r5}
c0de87fa:	4690      	mov	r8, r2
c0de87fc:	4699      	mov	r9, r3
c0de87fe:	46a2      	mov	sl, r4
c0de8800:	46ab      	mov	fp, r5
c0de8802:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de8804:	4642      	mov	r2, r8
c0de8806:	2320      	movs	r3, #32
c0de8808:	1a9b      	subs	r3, r3, r2
c0de880a:	4652      	mov	r2, sl
c0de880c:	40da      	lsrs	r2, r3
c0de880e:	4641      	mov	r1, r8
c0de8810:	0013      	movs	r3, r2
c0de8812:	464a      	mov	r2, r9
c0de8814:	408a      	lsls	r2, r1
c0de8816:	0017      	movs	r7, r2
c0de8818:	4642      	mov	r2, r8
c0de881a:	431f      	orrs	r7, r3
c0de881c:	4653      	mov	r3, sl
c0de881e:	4093      	lsls	r3, r2
c0de8820:	001e      	movs	r6, r3
c0de8822:	42af      	cmp	r7, r5
c0de8824:	d9c4      	bls.n	c0de87b0 <__udivmoddi4+0x4c>
c0de8826:	2200      	movs	r2, #0
c0de8828:	2300      	movs	r3, #0
c0de882a:	9200      	str	r2, [sp, #0]
c0de882c:	9301      	str	r3, [sp, #4]
c0de882e:	4643      	mov	r3, r8
c0de8830:	2b00      	cmp	r3, #0
c0de8832:	d0d9      	beq.n	c0de87e8 <__udivmoddi4+0x84>
c0de8834:	07fb      	lsls	r3, r7, #31
c0de8836:	469c      	mov	ip, r3
c0de8838:	4661      	mov	r1, ip
c0de883a:	0872      	lsrs	r2, r6, #1
c0de883c:	430a      	orrs	r2, r1
c0de883e:	087b      	lsrs	r3, r7, #1
c0de8840:	4646      	mov	r6, r8
c0de8842:	e00e      	b.n	c0de8862 <__udivmoddi4+0xfe>
c0de8844:	42ab      	cmp	r3, r5
c0de8846:	d101      	bne.n	c0de884c <__udivmoddi4+0xe8>
c0de8848:	42a2      	cmp	r2, r4
c0de884a:	d80c      	bhi.n	c0de8866 <__udivmoddi4+0x102>
c0de884c:	1aa4      	subs	r4, r4, r2
c0de884e:	419d      	sbcs	r5, r3
c0de8850:	2001      	movs	r0, #1
c0de8852:	1924      	adds	r4, r4, r4
c0de8854:	416d      	adcs	r5, r5
c0de8856:	2100      	movs	r1, #0
c0de8858:	3e01      	subs	r6, #1
c0de885a:	1824      	adds	r4, r4, r0
c0de885c:	414d      	adcs	r5, r1
c0de885e:	2e00      	cmp	r6, #0
c0de8860:	d006      	beq.n	c0de8870 <__udivmoddi4+0x10c>
c0de8862:	42ab      	cmp	r3, r5
c0de8864:	d9ee      	bls.n	c0de8844 <__udivmoddi4+0xe0>
c0de8866:	3e01      	subs	r6, #1
c0de8868:	1924      	adds	r4, r4, r4
c0de886a:	416d      	adcs	r5, r5
c0de886c:	2e00      	cmp	r6, #0
c0de886e:	d1f8      	bne.n	c0de8862 <__udivmoddi4+0xfe>
c0de8870:	9800      	ldr	r0, [sp, #0]
c0de8872:	9901      	ldr	r1, [sp, #4]
c0de8874:	465b      	mov	r3, fp
c0de8876:	1900      	adds	r0, r0, r4
c0de8878:	4169      	adcs	r1, r5
c0de887a:	2b00      	cmp	r3, #0
c0de887c:	db25      	blt.n	c0de88ca <__udivmoddi4+0x166>
c0de887e:	002b      	movs	r3, r5
c0de8880:	465a      	mov	r2, fp
c0de8882:	4644      	mov	r4, r8
c0de8884:	40d3      	lsrs	r3, r2
c0de8886:	002a      	movs	r2, r5
c0de8888:	40e2      	lsrs	r2, r4
c0de888a:	001c      	movs	r4, r3
c0de888c:	465b      	mov	r3, fp
c0de888e:	0015      	movs	r5, r2
c0de8890:	2b00      	cmp	r3, #0
c0de8892:	db2b      	blt.n	c0de88ec <__udivmoddi4+0x188>
c0de8894:	0026      	movs	r6, r4
c0de8896:	465f      	mov	r7, fp
c0de8898:	40be      	lsls	r6, r7
c0de889a:	0033      	movs	r3, r6
c0de889c:	0026      	movs	r6, r4
c0de889e:	4647      	mov	r7, r8
c0de88a0:	40be      	lsls	r6, r7
c0de88a2:	0032      	movs	r2, r6
c0de88a4:	1a80      	subs	r0, r0, r2
c0de88a6:	4199      	sbcs	r1, r3
c0de88a8:	9000      	str	r0, [sp, #0]
c0de88aa:	9101      	str	r1, [sp, #4]
c0de88ac:	e79c      	b.n	c0de87e8 <__udivmoddi4+0x84>
c0de88ae:	42a3      	cmp	r3, r4
c0de88b0:	d8b9      	bhi.n	c0de8826 <__udivmoddi4+0xc2>
c0de88b2:	e780      	b.n	c0de87b6 <__udivmoddi4+0x52>
c0de88b4:	4642      	mov	r2, r8
c0de88b6:	2320      	movs	r3, #32
c0de88b8:	2100      	movs	r1, #0
c0de88ba:	1a9b      	subs	r3, r3, r2
c0de88bc:	2200      	movs	r2, #0
c0de88be:	9100      	str	r1, [sp, #0]
c0de88c0:	9201      	str	r2, [sp, #4]
c0de88c2:	2201      	movs	r2, #1
c0de88c4:	40da      	lsrs	r2, r3
c0de88c6:	9201      	str	r2, [sp, #4]
c0de88c8:	e783      	b.n	c0de87d2 <__udivmoddi4+0x6e>
c0de88ca:	4642      	mov	r2, r8
c0de88cc:	2320      	movs	r3, #32
c0de88ce:	1a9b      	subs	r3, r3, r2
c0de88d0:	002a      	movs	r2, r5
c0de88d2:	4646      	mov	r6, r8
c0de88d4:	409a      	lsls	r2, r3
c0de88d6:	0023      	movs	r3, r4
c0de88d8:	40f3      	lsrs	r3, r6
c0de88da:	4644      	mov	r4, r8
c0de88dc:	4313      	orrs	r3, r2
c0de88de:	002a      	movs	r2, r5
c0de88e0:	40e2      	lsrs	r2, r4
c0de88e2:	001c      	movs	r4, r3
c0de88e4:	465b      	mov	r3, fp
c0de88e6:	0015      	movs	r5, r2
c0de88e8:	2b00      	cmp	r3, #0
c0de88ea:	dad3      	bge.n	c0de8894 <__udivmoddi4+0x130>
c0de88ec:	2320      	movs	r3, #32
c0de88ee:	4642      	mov	r2, r8
c0de88f0:	0026      	movs	r6, r4
c0de88f2:	1a9b      	subs	r3, r3, r2
c0de88f4:	40de      	lsrs	r6, r3
c0de88f6:	002f      	movs	r7, r5
c0de88f8:	46b4      	mov	ip, r6
c0de88fa:	4646      	mov	r6, r8
c0de88fc:	40b7      	lsls	r7, r6
c0de88fe:	4666      	mov	r6, ip
c0de8900:	003b      	movs	r3, r7
c0de8902:	4333      	orrs	r3, r6
c0de8904:	e7ca      	b.n	c0de889c <__udivmoddi4+0x138>
c0de8906:	46c0      	nop			; (mov r8, r8)

c0de8908 <__clzdi2>:
c0de8908:	b510      	push	{r4, lr}
c0de890a:	2900      	cmp	r1, #0
c0de890c:	d103      	bne.n	c0de8916 <__clzdi2+0xe>
c0de890e:	f000 f807 	bl	c0de8920 <__clzsi2>
c0de8912:	3020      	adds	r0, #32
c0de8914:	e002      	b.n	c0de891c <__clzdi2+0x14>
c0de8916:	1c08      	adds	r0, r1, #0
c0de8918:	f000 f802 	bl	c0de8920 <__clzsi2>
c0de891c:	bd10      	pop	{r4, pc}
c0de891e:	46c0      	nop			; (mov r8, r8)

c0de8920 <__clzsi2>:
c0de8920:	211c      	movs	r1, #28
c0de8922:	2301      	movs	r3, #1
c0de8924:	041b      	lsls	r3, r3, #16
c0de8926:	4298      	cmp	r0, r3
c0de8928:	d301      	bcc.n	c0de892e <__clzsi2+0xe>
c0de892a:	0c00      	lsrs	r0, r0, #16
c0de892c:	3910      	subs	r1, #16
c0de892e:	0a1b      	lsrs	r3, r3, #8
c0de8930:	4298      	cmp	r0, r3
c0de8932:	d301      	bcc.n	c0de8938 <__clzsi2+0x18>
c0de8934:	0a00      	lsrs	r0, r0, #8
c0de8936:	3908      	subs	r1, #8
c0de8938:	091b      	lsrs	r3, r3, #4
c0de893a:	4298      	cmp	r0, r3
c0de893c:	d301      	bcc.n	c0de8942 <__clzsi2+0x22>
c0de893e:	0900      	lsrs	r0, r0, #4
c0de8940:	3904      	subs	r1, #4
c0de8942:	a202      	add	r2, pc, #8	; (adr r2, c0de894c <__clzsi2+0x2c>)
c0de8944:	5c10      	ldrb	r0, [r2, r0]
c0de8946:	1840      	adds	r0, r0, r1
c0de8948:	4770      	bx	lr
c0de894a:	46c0      	nop			; (mov r8, r8)
c0de894c:	02020304 	.word	0x02020304
c0de8950:	01010101 	.word	0x01010101
	...

c0de895c <__aeabi_memclr>:
c0de895c:	b510      	push	{r4, lr}
c0de895e:	2200      	movs	r2, #0
c0de8960:	f000 f80a 	bl	c0de8978 <__aeabi_memset>
c0de8964:	bd10      	pop	{r4, pc}
c0de8966:	46c0      	nop			; (mov r8, r8)

c0de8968 <__aeabi_memcpy>:
c0de8968:	b510      	push	{r4, lr}
c0de896a:	f000 f83f 	bl	c0de89ec <memcpy>
c0de896e:	bd10      	pop	{r4, pc}

c0de8970 <__aeabi_memmove>:
c0de8970:	b510      	push	{r4, lr}
c0de8972:	f000 f88f 	bl	c0de8a94 <memmove>
c0de8976:	bd10      	pop	{r4, pc}

c0de8978 <__aeabi_memset>:
c0de8978:	0013      	movs	r3, r2
c0de897a:	b510      	push	{r4, lr}
c0de897c:	000a      	movs	r2, r1
c0de897e:	0019      	movs	r1, r3
c0de8980:	f000 f8e6 	bl	c0de8b50 <memset>
c0de8984:	bd10      	pop	{r4, pc}
c0de8986:	46c0      	nop			; (mov r8, r8)

c0de8988 <explicit_bzero>:
c0de8988:	b510      	push	{r4, lr}
c0de898a:	f000 f801 	bl	c0de8990 <bzero>
c0de898e:	bd10      	pop	{r4, pc}

c0de8990 <bzero>:
c0de8990:	b510      	push	{r4, lr}
c0de8992:	000a      	movs	r2, r1
c0de8994:	2100      	movs	r1, #0
c0de8996:	f000 f8db 	bl	c0de8b50 <memset>
c0de899a:	bd10      	pop	{r4, pc}

c0de899c <memcmp>:
c0de899c:	b530      	push	{r4, r5, lr}
c0de899e:	2a03      	cmp	r2, #3
c0de89a0:	d90c      	bls.n	c0de89bc <memcmp+0x20>
c0de89a2:	0003      	movs	r3, r0
c0de89a4:	430b      	orrs	r3, r1
c0de89a6:	079b      	lsls	r3, r3, #30
c0de89a8:	d11c      	bne.n	c0de89e4 <memcmp+0x48>
c0de89aa:	6803      	ldr	r3, [r0, #0]
c0de89ac:	680c      	ldr	r4, [r1, #0]
c0de89ae:	42a3      	cmp	r3, r4
c0de89b0:	d118      	bne.n	c0de89e4 <memcmp+0x48>
c0de89b2:	3a04      	subs	r2, #4
c0de89b4:	3004      	adds	r0, #4
c0de89b6:	3104      	adds	r1, #4
c0de89b8:	2a03      	cmp	r2, #3
c0de89ba:	d8f6      	bhi.n	c0de89aa <memcmp+0xe>
c0de89bc:	1e55      	subs	r5, r2, #1
c0de89be:	2a00      	cmp	r2, #0
c0de89c0:	d00e      	beq.n	c0de89e0 <memcmp+0x44>
c0de89c2:	7802      	ldrb	r2, [r0, #0]
c0de89c4:	780c      	ldrb	r4, [r1, #0]
c0de89c6:	4294      	cmp	r4, r2
c0de89c8:	d10e      	bne.n	c0de89e8 <memcmp+0x4c>
c0de89ca:	3501      	adds	r5, #1
c0de89cc:	2301      	movs	r3, #1
c0de89ce:	3901      	subs	r1, #1
c0de89d0:	e004      	b.n	c0de89dc <memcmp+0x40>
c0de89d2:	5cc2      	ldrb	r2, [r0, r3]
c0de89d4:	3301      	adds	r3, #1
c0de89d6:	5ccc      	ldrb	r4, [r1, r3]
c0de89d8:	42a2      	cmp	r2, r4
c0de89da:	d105      	bne.n	c0de89e8 <memcmp+0x4c>
c0de89dc:	42ab      	cmp	r3, r5
c0de89de:	d1f8      	bne.n	c0de89d2 <memcmp+0x36>
c0de89e0:	2000      	movs	r0, #0
c0de89e2:	bd30      	pop	{r4, r5, pc}
c0de89e4:	1e55      	subs	r5, r2, #1
c0de89e6:	e7ec      	b.n	c0de89c2 <memcmp+0x26>
c0de89e8:	1b10      	subs	r0, r2, r4
c0de89ea:	e7fa      	b.n	c0de89e2 <memcmp+0x46>

c0de89ec <memcpy>:
c0de89ec:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de89ee:	46c6      	mov	lr, r8
c0de89f0:	b500      	push	{lr}
c0de89f2:	2a0f      	cmp	r2, #15
c0de89f4:	d943      	bls.n	c0de8a7e <memcpy+0x92>
c0de89f6:	000b      	movs	r3, r1
c0de89f8:	2603      	movs	r6, #3
c0de89fa:	4303      	orrs	r3, r0
c0de89fc:	401e      	ands	r6, r3
c0de89fe:	000c      	movs	r4, r1
c0de8a00:	0003      	movs	r3, r0
c0de8a02:	2e00      	cmp	r6, #0
c0de8a04:	d140      	bne.n	c0de8a88 <memcpy+0x9c>
c0de8a06:	0015      	movs	r5, r2
c0de8a08:	3d10      	subs	r5, #16
c0de8a0a:	092d      	lsrs	r5, r5, #4
c0de8a0c:	46ac      	mov	ip, r5
c0de8a0e:	012d      	lsls	r5, r5, #4
c0de8a10:	46a8      	mov	r8, r5
c0de8a12:	4480      	add	r8, r0
c0de8a14:	e000      	b.n	c0de8a18 <memcpy+0x2c>
c0de8a16:	003b      	movs	r3, r7
c0de8a18:	6867      	ldr	r7, [r4, #4]
c0de8a1a:	6825      	ldr	r5, [r4, #0]
c0de8a1c:	605f      	str	r7, [r3, #4]
c0de8a1e:	68e7      	ldr	r7, [r4, #12]
c0de8a20:	601d      	str	r5, [r3, #0]
c0de8a22:	60df      	str	r7, [r3, #12]
c0de8a24:	001f      	movs	r7, r3
c0de8a26:	68a5      	ldr	r5, [r4, #8]
c0de8a28:	3710      	adds	r7, #16
c0de8a2a:	609d      	str	r5, [r3, #8]
c0de8a2c:	3410      	adds	r4, #16
c0de8a2e:	4543      	cmp	r3, r8
c0de8a30:	d1f1      	bne.n	c0de8a16 <memcpy+0x2a>
c0de8a32:	4665      	mov	r5, ip
c0de8a34:	230f      	movs	r3, #15
c0de8a36:	240c      	movs	r4, #12
c0de8a38:	3501      	adds	r5, #1
c0de8a3a:	012d      	lsls	r5, r5, #4
c0de8a3c:	1949      	adds	r1, r1, r5
c0de8a3e:	4013      	ands	r3, r2
c0de8a40:	1945      	adds	r5, r0, r5
c0de8a42:	4214      	tst	r4, r2
c0de8a44:	d023      	beq.n	c0de8a8e <memcpy+0xa2>
c0de8a46:	598c      	ldr	r4, [r1, r6]
c0de8a48:	51ac      	str	r4, [r5, r6]
c0de8a4a:	3604      	adds	r6, #4
c0de8a4c:	1b9c      	subs	r4, r3, r6
c0de8a4e:	2c03      	cmp	r4, #3
c0de8a50:	d8f9      	bhi.n	c0de8a46 <memcpy+0x5a>
c0de8a52:	2403      	movs	r4, #3
c0de8a54:	3b04      	subs	r3, #4
c0de8a56:	089b      	lsrs	r3, r3, #2
c0de8a58:	3301      	adds	r3, #1
c0de8a5a:	009b      	lsls	r3, r3, #2
c0de8a5c:	4022      	ands	r2, r4
c0de8a5e:	18ed      	adds	r5, r5, r3
c0de8a60:	18c9      	adds	r1, r1, r3
c0de8a62:	1e56      	subs	r6, r2, #1
c0de8a64:	2a00      	cmp	r2, #0
c0de8a66:	d007      	beq.n	c0de8a78 <memcpy+0x8c>
c0de8a68:	2300      	movs	r3, #0
c0de8a6a:	e000      	b.n	c0de8a6e <memcpy+0x82>
c0de8a6c:	0023      	movs	r3, r4
c0de8a6e:	5cca      	ldrb	r2, [r1, r3]
c0de8a70:	1c5c      	adds	r4, r3, #1
c0de8a72:	54ea      	strb	r2, [r5, r3]
c0de8a74:	429e      	cmp	r6, r3
c0de8a76:	d1f9      	bne.n	c0de8a6c <memcpy+0x80>
c0de8a78:	bc04      	pop	{r2}
c0de8a7a:	4690      	mov	r8, r2
c0de8a7c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de8a7e:	0005      	movs	r5, r0
c0de8a80:	1e56      	subs	r6, r2, #1
c0de8a82:	2a00      	cmp	r2, #0
c0de8a84:	d1f0      	bne.n	c0de8a68 <memcpy+0x7c>
c0de8a86:	e7f7      	b.n	c0de8a78 <memcpy+0x8c>
c0de8a88:	1e56      	subs	r6, r2, #1
c0de8a8a:	0005      	movs	r5, r0
c0de8a8c:	e7ec      	b.n	c0de8a68 <memcpy+0x7c>
c0de8a8e:	001a      	movs	r2, r3
c0de8a90:	e7f6      	b.n	c0de8a80 <memcpy+0x94>
c0de8a92:	46c0      	nop			; (mov r8, r8)

c0de8a94 <memmove>:
c0de8a94:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8a96:	46c6      	mov	lr, r8
c0de8a98:	b500      	push	{lr}
c0de8a9a:	4288      	cmp	r0, r1
c0de8a9c:	d90c      	bls.n	c0de8ab8 <memmove+0x24>
c0de8a9e:	188b      	adds	r3, r1, r2
c0de8aa0:	4298      	cmp	r0, r3
c0de8aa2:	d209      	bcs.n	c0de8ab8 <memmove+0x24>
c0de8aa4:	1e53      	subs	r3, r2, #1
c0de8aa6:	2a00      	cmp	r2, #0
c0de8aa8:	d003      	beq.n	c0de8ab2 <memmove+0x1e>
c0de8aaa:	5cca      	ldrb	r2, [r1, r3]
c0de8aac:	54c2      	strb	r2, [r0, r3]
c0de8aae:	3b01      	subs	r3, #1
c0de8ab0:	d2fb      	bcs.n	c0de8aaa <memmove+0x16>
c0de8ab2:	bc04      	pop	{r2}
c0de8ab4:	4690      	mov	r8, r2
c0de8ab6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de8ab8:	2a0f      	cmp	r2, #15
c0de8aba:	d80c      	bhi.n	c0de8ad6 <memmove+0x42>
c0de8abc:	0005      	movs	r5, r0
c0de8abe:	1e56      	subs	r6, r2, #1
c0de8ac0:	2a00      	cmp	r2, #0
c0de8ac2:	d0f6      	beq.n	c0de8ab2 <memmove+0x1e>
c0de8ac4:	2300      	movs	r3, #0
c0de8ac6:	e000      	b.n	c0de8aca <memmove+0x36>
c0de8ac8:	0023      	movs	r3, r4
c0de8aca:	5cca      	ldrb	r2, [r1, r3]
c0de8acc:	1c5c      	adds	r4, r3, #1
c0de8ace:	54ea      	strb	r2, [r5, r3]
c0de8ad0:	429e      	cmp	r6, r3
c0de8ad2:	d1f9      	bne.n	c0de8ac8 <memmove+0x34>
c0de8ad4:	e7ed      	b.n	c0de8ab2 <memmove+0x1e>
c0de8ad6:	000b      	movs	r3, r1
c0de8ad8:	2603      	movs	r6, #3
c0de8ada:	4303      	orrs	r3, r0
c0de8adc:	401e      	ands	r6, r3
c0de8ade:	000c      	movs	r4, r1
c0de8ae0:	0003      	movs	r3, r0
c0de8ae2:	2e00      	cmp	r6, #0
c0de8ae4:	d12e      	bne.n	c0de8b44 <memmove+0xb0>
c0de8ae6:	0015      	movs	r5, r2
c0de8ae8:	3d10      	subs	r5, #16
c0de8aea:	092d      	lsrs	r5, r5, #4
c0de8aec:	46ac      	mov	ip, r5
c0de8aee:	012d      	lsls	r5, r5, #4
c0de8af0:	46a8      	mov	r8, r5
c0de8af2:	4480      	add	r8, r0
c0de8af4:	e000      	b.n	c0de8af8 <memmove+0x64>
c0de8af6:	002b      	movs	r3, r5
c0de8af8:	001d      	movs	r5, r3
c0de8afa:	6827      	ldr	r7, [r4, #0]
c0de8afc:	3510      	adds	r5, #16
c0de8afe:	601f      	str	r7, [r3, #0]
c0de8b00:	6867      	ldr	r7, [r4, #4]
c0de8b02:	605f      	str	r7, [r3, #4]
c0de8b04:	68a7      	ldr	r7, [r4, #8]
c0de8b06:	609f      	str	r7, [r3, #8]
c0de8b08:	68e7      	ldr	r7, [r4, #12]
c0de8b0a:	3410      	adds	r4, #16
c0de8b0c:	60df      	str	r7, [r3, #12]
c0de8b0e:	4543      	cmp	r3, r8
c0de8b10:	d1f1      	bne.n	c0de8af6 <memmove+0x62>
c0de8b12:	4665      	mov	r5, ip
c0de8b14:	230f      	movs	r3, #15
c0de8b16:	240c      	movs	r4, #12
c0de8b18:	3501      	adds	r5, #1
c0de8b1a:	012d      	lsls	r5, r5, #4
c0de8b1c:	1949      	adds	r1, r1, r5
c0de8b1e:	4013      	ands	r3, r2
c0de8b20:	1945      	adds	r5, r0, r5
c0de8b22:	4214      	tst	r4, r2
c0de8b24:	d011      	beq.n	c0de8b4a <memmove+0xb6>
c0de8b26:	598c      	ldr	r4, [r1, r6]
c0de8b28:	51ac      	str	r4, [r5, r6]
c0de8b2a:	3604      	adds	r6, #4
c0de8b2c:	1b9c      	subs	r4, r3, r6
c0de8b2e:	2c03      	cmp	r4, #3
c0de8b30:	d8f9      	bhi.n	c0de8b26 <memmove+0x92>
c0de8b32:	2403      	movs	r4, #3
c0de8b34:	3b04      	subs	r3, #4
c0de8b36:	089b      	lsrs	r3, r3, #2
c0de8b38:	3301      	adds	r3, #1
c0de8b3a:	009b      	lsls	r3, r3, #2
c0de8b3c:	18ed      	adds	r5, r5, r3
c0de8b3e:	18c9      	adds	r1, r1, r3
c0de8b40:	4022      	ands	r2, r4
c0de8b42:	e7bc      	b.n	c0de8abe <memmove+0x2a>
c0de8b44:	1e56      	subs	r6, r2, #1
c0de8b46:	0005      	movs	r5, r0
c0de8b48:	e7bc      	b.n	c0de8ac4 <memmove+0x30>
c0de8b4a:	001a      	movs	r2, r3
c0de8b4c:	e7b7      	b.n	c0de8abe <memmove+0x2a>
c0de8b4e:	46c0      	nop			; (mov r8, r8)

c0de8b50 <memset>:
c0de8b50:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8b52:	0005      	movs	r5, r0
c0de8b54:	0783      	lsls	r3, r0, #30
c0de8b56:	d04a      	beq.n	c0de8bee <memset+0x9e>
c0de8b58:	1e54      	subs	r4, r2, #1
c0de8b5a:	2a00      	cmp	r2, #0
c0de8b5c:	d044      	beq.n	c0de8be8 <memset+0x98>
c0de8b5e:	b2ce      	uxtb	r6, r1
c0de8b60:	0003      	movs	r3, r0
c0de8b62:	2203      	movs	r2, #3
c0de8b64:	e002      	b.n	c0de8b6c <memset+0x1c>
c0de8b66:	3501      	adds	r5, #1
c0de8b68:	3c01      	subs	r4, #1
c0de8b6a:	d33d      	bcc.n	c0de8be8 <memset+0x98>
c0de8b6c:	3301      	adds	r3, #1
c0de8b6e:	702e      	strb	r6, [r5, #0]
c0de8b70:	4213      	tst	r3, r2
c0de8b72:	d1f8      	bne.n	c0de8b66 <memset+0x16>
c0de8b74:	2c03      	cmp	r4, #3
c0de8b76:	d92f      	bls.n	c0de8bd8 <memset+0x88>
c0de8b78:	22ff      	movs	r2, #255	; 0xff
c0de8b7a:	400a      	ands	r2, r1
c0de8b7c:	0215      	lsls	r5, r2, #8
c0de8b7e:	4315      	orrs	r5, r2
c0de8b80:	042a      	lsls	r2, r5, #16
c0de8b82:	4315      	orrs	r5, r2
c0de8b84:	2c0f      	cmp	r4, #15
c0de8b86:	d935      	bls.n	c0de8bf4 <memset+0xa4>
c0de8b88:	0027      	movs	r7, r4
c0de8b8a:	3f10      	subs	r7, #16
c0de8b8c:	093f      	lsrs	r7, r7, #4
c0de8b8e:	013e      	lsls	r6, r7, #4
c0de8b90:	46b4      	mov	ip, r6
c0de8b92:	001e      	movs	r6, r3
c0de8b94:	001a      	movs	r2, r3
c0de8b96:	3610      	adds	r6, #16
c0de8b98:	4466      	add	r6, ip
c0de8b9a:	6015      	str	r5, [r2, #0]
c0de8b9c:	6055      	str	r5, [r2, #4]
c0de8b9e:	6095      	str	r5, [r2, #8]
c0de8ba0:	60d5      	str	r5, [r2, #12]
c0de8ba2:	3210      	adds	r2, #16
c0de8ba4:	42b2      	cmp	r2, r6
c0de8ba6:	d1f8      	bne.n	c0de8b9a <memset+0x4a>
c0de8ba8:	260f      	movs	r6, #15
c0de8baa:	220c      	movs	r2, #12
c0de8bac:	3701      	adds	r7, #1
c0de8bae:	013f      	lsls	r7, r7, #4
c0de8bb0:	4026      	ands	r6, r4
c0de8bb2:	19db      	adds	r3, r3, r7
c0de8bb4:	0037      	movs	r7, r6
c0de8bb6:	4222      	tst	r2, r4
c0de8bb8:	d017      	beq.n	c0de8bea <memset+0x9a>
c0de8bba:	1f3e      	subs	r6, r7, #4
c0de8bbc:	08b6      	lsrs	r6, r6, #2
c0de8bbe:	00b4      	lsls	r4, r6, #2
c0de8bc0:	46a4      	mov	ip, r4
c0de8bc2:	001a      	movs	r2, r3
c0de8bc4:	1d1c      	adds	r4, r3, #4
c0de8bc6:	4464      	add	r4, ip
c0de8bc8:	c220      	stmia	r2!, {r5}
c0de8bca:	42a2      	cmp	r2, r4
c0de8bcc:	d1fc      	bne.n	c0de8bc8 <memset+0x78>
c0de8bce:	2403      	movs	r4, #3
c0de8bd0:	3601      	adds	r6, #1
c0de8bd2:	00b6      	lsls	r6, r6, #2
c0de8bd4:	199b      	adds	r3, r3, r6
c0de8bd6:	403c      	ands	r4, r7
c0de8bd8:	2c00      	cmp	r4, #0
c0de8bda:	d005      	beq.n	c0de8be8 <memset+0x98>
c0de8bdc:	b2c9      	uxtb	r1, r1
c0de8bde:	191c      	adds	r4, r3, r4
c0de8be0:	7019      	strb	r1, [r3, #0]
c0de8be2:	3301      	adds	r3, #1
c0de8be4:	429c      	cmp	r4, r3
c0de8be6:	d1fb      	bne.n	c0de8be0 <memset+0x90>
c0de8be8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de8bea:	0034      	movs	r4, r6
c0de8bec:	e7f4      	b.n	c0de8bd8 <memset+0x88>
c0de8bee:	0014      	movs	r4, r2
c0de8bf0:	0003      	movs	r3, r0
c0de8bf2:	e7bf      	b.n	c0de8b74 <memset+0x24>
c0de8bf4:	0027      	movs	r7, r4
c0de8bf6:	e7e0      	b.n	c0de8bba <memset+0x6a>

c0de8bf8 <setjmp>:
c0de8bf8:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
c0de8bfa:	4641      	mov	r1, r8
c0de8bfc:	464a      	mov	r2, r9
c0de8bfe:	4653      	mov	r3, sl
c0de8c00:	465c      	mov	r4, fp
c0de8c02:	466d      	mov	r5, sp
c0de8c04:	4676      	mov	r6, lr
c0de8c06:	c07e      	stmia	r0!, {r1, r2, r3, r4, r5, r6}
c0de8c08:	3828      	subs	r0, #40	; 0x28
c0de8c0a:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
c0de8c0c:	2000      	movs	r0, #0
c0de8c0e:	4770      	bx	lr

c0de8c10 <longjmp>:
c0de8c10:	3010      	adds	r0, #16
c0de8c12:	c87c      	ldmia	r0!, {r2, r3, r4, r5, r6}
c0de8c14:	4690      	mov	r8, r2
c0de8c16:	4699      	mov	r9, r3
c0de8c18:	46a2      	mov	sl, r4
c0de8c1a:	46ab      	mov	fp, r5
c0de8c1c:	46b5      	mov	sp, r6
c0de8c1e:	c808      	ldmia	r0!, {r3}
c0de8c20:	3828      	subs	r0, #40	; 0x28
c0de8c22:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
c0de8c24:	1c08      	adds	r0, r1, #0
c0de8c26:	d100      	bne.n	c0de8c2a <longjmp+0x1a>
c0de8c28:	2001      	movs	r0, #1
c0de8c2a:	4718      	bx	r3

c0de8c2c <strlen>:
c0de8c2c:	b510      	push	{r4, lr}
c0de8c2e:	0783      	lsls	r3, r0, #30
c0de8c30:	d027      	beq.n	c0de8c82 <strlen+0x56>
c0de8c32:	7803      	ldrb	r3, [r0, #0]
c0de8c34:	2b00      	cmp	r3, #0
c0de8c36:	d026      	beq.n	c0de8c86 <strlen+0x5a>
c0de8c38:	0003      	movs	r3, r0
c0de8c3a:	2103      	movs	r1, #3
c0de8c3c:	e002      	b.n	c0de8c44 <strlen+0x18>
c0de8c3e:	781a      	ldrb	r2, [r3, #0]
c0de8c40:	2a00      	cmp	r2, #0
c0de8c42:	d01c      	beq.n	c0de8c7e <strlen+0x52>
c0de8c44:	3301      	adds	r3, #1
c0de8c46:	420b      	tst	r3, r1
c0de8c48:	d1f9      	bne.n	c0de8c3e <strlen+0x12>
c0de8c4a:	6819      	ldr	r1, [r3, #0]
c0de8c4c:	4a0f      	ldr	r2, [pc, #60]	; (c0de8c8c <strlen+0x60>)
c0de8c4e:	4c10      	ldr	r4, [pc, #64]	; (c0de8c90 <strlen+0x64>)
c0de8c50:	188a      	adds	r2, r1, r2
c0de8c52:	438a      	bics	r2, r1
c0de8c54:	4222      	tst	r2, r4
c0de8c56:	d10f      	bne.n	c0de8c78 <strlen+0x4c>
c0de8c58:	3304      	adds	r3, #4
c0de8c5a:	6819      	ldr	r1, [r3, #0]
c0de8c5c:	4a0b      	ldr	r2, [pc, #44]	; (c0de8c8c <strlen+0x60>)
c0de8c5e:	188a      	adds	r2, r1, r2
c0de8c60:	438a      	bics	r2, r1
c0de8c62:	4222      	tst	r2, r4
c0de8c64:	d108      	bne.n	c0de8c78 <strlen+0x4c>
c0de8c66:	3304      	adds	r3, #4
c0de8c68:	6819      	ldr	r1, [r3, #0]
c0de8c6a:	4a08      	ldr	r2, [pc, #32]	; (c0de8c8c <strlen+0x60>)
c0de8c6c:	188a      	adds	r2, r1, r2
c0de8c6e:	438a      	bics	r2, r1
c0de8c70:	4222      	tst	r2, r4
c0de8c72:	d0f1      	beq.n	c0de8c58 <strlen+0x2c>
c0de8c74:	e000      	b.n	c0de8c78 <strlen+0x4c>
c0de8c76:	3301      	adds	r3, #1
c0de8c78:	781a      	ldrb	r2, [r3, #0]
c0de8c7a:	2a00      	cmp	r2, #0
c0de8c7c:	d1fb      	bne.n	c0de8c76 <strlen+0x4a>
c0de8c7e:	1a18      	subs	r0, r3, r0
c0de8c80:	bd10      	pop	{r4, pc}
c0de8c82:	0003      	movs	r3, r0
c0de8c84:	e7e1      	b.n	c0de8c4a <strlen+0x1e>
c0de8c86:	2000      	movs	r0, #0
c0de8c88:	e7fa      	b.n	c0de8c80 <strlen+0x54>
c0de8c8a:	46c0      	nop			; (mov r8, r8)
c0de8c8c:	fefefeff 	.word	0xfefefeff
c0de8c90:	80808080 	.word	0x80808080

c0de8c94 <strnlen>:
c0de8c94:	b510      	push	{r4, lr}
c0de8c96:	2900      	cmp	r1, #0
c0de8c98:	d00b      	beq.n	c0de8cb2 <strnlen+0x1e>
c0de8c9a:	7803      	ldrb	r3, [r0, #0]
c0de8c9c:	2b00      	cmp	r3, #0
c0de8c9e:	d00c      	beq.n	c0de8cba <strnlen+0x26>
c0de8ca0:	1844      	adds	r4, r0, r1
c0de8ca2:	0003      	movs	r3, r0
c0de8ca4:	e002      	b.n	c0de8cac <strnlen+0x18>
c0de8ca6:	781a      	ldrb	r2, [r3, #0]
c0de8ca8:	2a00      	cmp	r2, #0
c0de8caa:	d004      	beq.n	c0de8cb6 <strnlen+0x22>
c0de8cac:	3301      	adds	r3, #1
c0de8cae:	42a3      	cmp	r3, r4
c0de8cb0:	d1f9      	bne.n	c0de8ca6 <strnlen+0x12>
c0de8cb2:	0008      	movs	r0, r1
c0de8cb4:	bd10      	pop	{r4, pc}
c0de8cb6:	1a19      	subs	r1, r3, r0
c0de8cb8:	e7fb      	b.n	c0de8cb2 <strnlen+0x1e>
c0de8cba:	2100      	movs	r1, #0
c0de8cbc:	e7f9      	b.n	c0de8cb2 <strnlen+0x1e>
c0de8cbe:	46c0      	nop			; (mov r8, r8)
c0de8cc0:	7041      	strb	r1, [r0, #1]
c0de8cc2:	7270      	strb	r0, [r6, #9]
c0de8cc4:	766f      	strb	r7, [r5, #25]
c0de8cc6:	0065      	lsls	r5, r4, #1
c0de8cc8:	3025      	adds	r0, #37	; 0x25
c0de8cca:	6436      	str	r6, [r6, #64]	; 0x40
c0de8ccc:	2500      	movs	r5, #0
c0de8cce:	2073      	movs	r0, #115	; 0x73
c0de8cd0:	2528      	movs	r5, #40	; 0x28
c0de8cd2:	2f64      	cmp	r7, #100	; 0x64
c0de8cd4:	6425      	str	r5, [r4, #64]	; 0x40
c0de8cd6:	0029      	movs	r1, r5
c0de8cd8:	6156      	str	r6, [r2, #20]
c0de8cda:	696c      	ldr	r4, [r5, #20]
c0de8cdc:	2064      	movs	r0, #100	; 0x64
c0de8cde:	6e75      	ldr	r5, [r6, #100]	; 0x64
c0de8ce0:	6974      	ldr	r4, [r6, #20]
c0de8ce2:	006c      	lsls	r4, r5, #1
c0de8ce4:	7254      	strb	r4, [r2, #9]
c0de8ce6:	6e61      	ldr	r1, [r4, #100]	; 0x64
c0de8ce8:	6173      	str	r3, [r6, #20]
c0de8cea:	7463      	strb	r3, [r4, #17]
c0de8cec:	6f69      	ldr	r1, [r5, #116]	; 0x74
c0de8cee:	006e      	lsls	r6, r5, #1
c0de8cf0:	2e25      	cmp	r6, #37	; 0x25
c0de8cf2:	732a      	strb	r2, [r5, #12]
c0de8cf4:	5200      	strh	r0, [r0, r0]
c0de8cf6:	6a65      	ldr	r5, [r4, #36]	; 0x24
c0de8cf8:	6365      	str	r5, [r4, #52]	; 0x34
c0de8cfa:	0074      	lsls	r4, r6, #1
c0de8cfc:	6d41      	ldr	r1, [r0, #84]	; 0x54
c0de8cfe:	756f      	strb	r7, [r5, #21]
c0de8d00:	746e      	strb	r6, [r5, #17]
c0de8d02:	2500      	movs	r5, #0
c0de8d04:	0073      	lsls	r3, r6, #1
c0de8d06:	6547      	str	r7, [r0, #84]	; 0x54
c0de8d08:	656e      	str	r6, [r5, #84]	; 0x54
c0de8d0a:	6172      	str	r2, [r6, #20]
c0de8d0c:	6574      	str	r4, [r6, #84]	; 0x54
c0de8d0e:	4600      	mov	r0, r0
c0de8d10:	6565      	str	r5, [r4, #84]	; 0x54
c0de8d12:	4700      	bx	r0
c0de8d14:	7465      	strb	r5, [r4, #17]
c0de8d16:	5600      	ldrsb	r0, [r0, r0]
c0de8d18:	7265      	strb	r5, [r4, #9]
c0de8d1a:	6973      	ldr	r3, [r6, #20]
c0de8d1c:	6e6f      	ldr	r7, [r5, #100]	; 0x64
c0de8d1e:	5400      	strb	r0, [r0, r0]
c0de8d20:	7079      	strb	r1, [r7, #1]
c0de8d22:	0065      	lsls	r5, r4, #1
c0de8d24:	6143      	str	r3, [r0, #20]
c0de8d26:	636e      	str	r6, [r5, #52]	; 0x34
c0de8d28:	6c65      	ldr	r5, [r4, #68]	; 0x44
c0de8d2a:	4e00      	ldr	r6, [pc, #0]	; (c0de8d2c <strnlen+0x98>)
c0de8d2c:	7465      	strb	r5, [r4, #17]
c0de8d2e:	6f77      	ldr	r7, [r6, #116]	; 0x74
c0de8d30:	6b72      	ldr	r2, [r6, #52]	; 0x34
c0de8d32:	3100      	adds	r1, #0
c0de8d34:	312e      	adds	r1, #46	; 0x2e
c0de8d36:	302e      	adds	r0, #46	; 0x2e
c0de8d38:	5400      	strb	r0, [r0, r0]
c0de8d3a:	746f      	strb	r7, [r5, #17]
c0de8d3c:	6c61      	ldr	r1, [r4, #68]	; 0x44
c0de8d3e:	2700      	movs	r7, #0
c0de8d40:	302f      	adds	r0, #47	; 0x2f
c0de8d42:	302f      	adds	r0, #47	; 0x2f
c0de8d44:	2e00      	cmp	r6, #0
c0de8d46:	2e2e      	cmp	r6, #46	; 0x2e
c0de8d48:	7400      	strb	r0, [r0, #16]
c0de8d4a:	7365      	strb	r5, [r4, #13]
c0de8d4c:	6e74      	ldr	r4, [r6, #100]	; 0x64
c0de8d4e:	7465      	strb	r5, [r4, #17]
c0de8d50:	4100      	asrs	r0, r0
c0de8d52:	6464      	str	r4, [r4, #68]	; 0x44
c0de8d54:	6572      	str	r2, [r6, #84]	; 0x54
c0de8d56:	7373      	strb	r3, [r6, #13]
c0de8d58:	5100      	str	r0, [r0, r4]
c0de8d5a:	6975      	ldr	r5, [r6, #20]
c0de8d5c:	0074      	lsls	r4, r6, #1
c0de8d5e:	6f44      	ldr	r4, [r0, #116]	; 0x74
c0de8d60:	656e      	str	r6, [r5, #84]	; 0x54
c0de8d62:	4e00      	ldr	r6, [pc, #0]	; (c0de8d64 <strnlen+0xd0>)
c0de8d64:	6e6f      	ldr	r7, [r5, #100]	; 0x64
c0de8d66:	6563      	str	r3, [r4, #84]	; 0x54
c0de8d68:	0000      	movs	r0, r0
c0de8d6a:	6953      	ldr	r3, [r2, #20]
c0de8d6c:	6e67      	ldr	r7, [r4, #100]	; 0x64
c0de8d6e:	4200      	tst	r0, r0
c0de8d70:	494f      	ldr	r1, [pc, #316]	; (c0de8eb0 <bitmapOPEN_SANS_EXTRABOLD_11PX+0x11e>)
c0de8d72:	004c      	lsls	r4, r1, #1
c0de8d74:	7369      	strb	r1, [r5, #13]
c0de8d76:	7220      	strb	r0, [r4, #8]
c0de8d78:	6165      	str	r5, [r4, #20]
c0de8d7a:	7964      	ldrb	r4, [r4, #5]
c0de8d7c:	5000      	str	r0, [r0, r0]
c0de8d7e:	7461      	strb	r1, [r4, #17]
c0de8d80:	0068      	lsls	r0, r5, #1
c0de8d82:	654d      	str	r5, [r1, #84]	; 0x54
c0de8d84:	6f6d      	ldr	r5, [r5, #116]	; 0x74
c0de8d86:	2500      	movs	r5, #0
c0de8d88:	2f64      	cmp	r7, #100	; 0x64
c0de8d8a:	6425      	str	r5, [r4, #64]	; 0x40
c0de8d8c:	4d00      	ldr	r5, [pc, #0]	; (c0de8d90 <strnlen+0xfc>)
c0de8d8e:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de8d90:	0061      	lsls	r1, r4, #1

c0de8d92 <bitmapOPEN_SANS_EXTRABOLD_11PX>:
c0de8d92:	0000 0000 b000 c36d 0006 2d80 0049 0000     ......m....-I...
c0de8da2:	0000 0000 c912 f94f 244b 0012 0000 b788     ......O.K$......
c0de8db2:	0e2c a687 021f 0000 b138 0ac6 f9fb 358d     ,.......8......5
c0de8dc2:	c8d6 0001 0000 7800 b0d8 c1c1 3ddb be7b     .......x.....={.
c0de8dd2:	0001 0000 04b0 0000 4000 3366 6633 2004     .........@f33f. 
c0de8de2:	cc66 66cc 0002 fed3 079e 0000 0000 c000     f..f............
c0de8df2:	3f30 00c3 0000 0000 c000 001a 0000 0ff0     0?..............
c0de8e02:	0000 0000 06c0 0000 c623 118c 0003 0000     ........#.......
c0de8e12:	663c 6666 6666 3c66 0000 0000 79c6 8618     <ffffff<.....y..
c0de8e22:	1861 0000 8e00 060d 70c3 3e18 0000 0000     a........p.>....
c0de8e32:	0c0f 81c6 60c1 001e 0000 3000 3838 3434     .....`.....08844
c0de8e42:	307e 0030 0000 6780 1e18 6186 001e 0000     ~00....g...a....
c0de8e52:	0c38 3e04 6666 3c66 0000 0000 0c1f c306     8..>fff<........
c0de8e62:	3060 000c 0000 3c00 6666 663c 6666 003c     `0.....<ff<fff<.
c0de8e72:	0000 3c00 6666 7c66 3060 001c 0000 6c00     ...<fff|`0.....l
c0de8e82:	06c0 0000 c06c 001a 6000 8666 1861 0000     ....l....`f.a...
c0de8e92:	0000 3f00 03f0 0000 0000 c30c 3330 0003     ...?........03..
c0de8ea2:	c000 6183 018e 0618 0000 e000 98c3 5bdd     ...a...........[
c0de8eb2:	bd2f 7ef6 e006 0007 0000 3c18 7e3c 7e66     /..~.......<<~f~
c0de8ec2:	c3e7 0000 0000 cd9f b1e6 6cd9 003e 0000     ...........l>...
c0de8ed2:	9e00 60c1 1830 3c0c 0000 0000 663e 6666     ...`0..<....>fff
c0de8ee2:	6666 3e66 0000 8000 1867 619e 1e18 0000     fff>....g..a....
c0de8ef2:	6f80 9e18 1861 0006 0000 067c 7606 6666     .o..a.....|..vff
c0de8f02:	7c66 0000 0000 6666 7e66 6666 6666 0000     f|....fff~ffff..
c0de8f12:	6000 6666 0666 8000 c631 6318 b18c 0003     .`fff...1..c....
c0de8f22:	66e6 1e36 363e e666 0000 8000 1861 6186     .f6.>6f.....a..a
c0de8f32:	3e18 0000 7000 e39c e7bc ef3d cd59 766e     .>...p....=.Y.nv
c0de8f42:	0003 0000 0000 399c e6f3 9ecd 733d 00e6     .......9....=s..
c0de8f52:	0000 0000 18f8 6633 98cc 6331 007c 0000     ......3f..1c|...
c0de8f62:	0000 cd9f f366 0c19 0006 0000 f800 3318     ....f..........3
c0de8f72:	cc66 3198 7c63 00c0 0003 1e00 3636 1e36     f..1c|......666.
c0de8f82:	3636 0066 0000 6f00 0e18 e787 001e c000     66f....o........
c0de8f92:	30cf c30c 0c30 0000 6600 6666 6666 6666     .0..0....fffffff
c0de8fa2:	003c 0000 3cc0 b3cf 79e7 000c 0000 b398     <....<...y......
c0de8fb2:	ecdd 3566 71ab 3b87 00d8 0000 0000 c300     ..f5.q.;........
c0de8fc2:	3c66 3c3c 663c 00c3 0000 b180 c6cd 60c1     f<<<<f.........`
c0de8fd2:	1830 0000 8000 0c3f 6187 0c38 007f 0000     0.....?..a8.....
c0de8fe2:	1bc0 8c63 c631 0078 0860 1863 1843 0000     ..c.1.x.`.c.C...
c0de8ff2:	31e0 18c6 8c63 003d 0600 23c3 0199 0000     .1..c.=....#....
	...
c0de900a:	0000 03f0 0c0c 0000 0000 0000 0000 0000     ................
c0de901a:	c000 f303 66cd 003e 0000 8300 67c1 dbb3     .....f>......g..
c0de902a:	3e6d 0000 0000 f000 71c6 3c18 0000 1800     m>.......q.<....
c0de903a:	678c ddbb 3c6c 0000 0000 8000 fe67 0c1f     .g..l<......g...
c0de904a:	003c 0000 6700 867c 1861 0006 0000 c000     <....g|.a.......
c0de905a:	b36f 0c79 f1be 07d8 8300 67c1 d9b3 366c     o.y........g..l6
c0de906a:	0000 6000 6660 0666 8000 c601 6318 318c     ...``ff......c.1
c0de907a:	0003 c183 f3e6 6c78 0076 0000 6660 6666     ......xlv...`fff
c0de908a:	0006 0000 8000 b676 66d9 6d9b 01b6 0000     ......v..f.m....
c0de909a:	0000 4000 b367 6cd9 0036 0000 0000 6380     ...@g..l6......c
c0de90aa:	dfbb 1c6d 0000 0000 c000 b367 6ddb 833e     ..m.......g..m>.
c0de90ba:	00c1 0000 67c0 ddbb 3e6c 0c18 0006 ed00     .....g..l>......
c0de90ca:	318d 0006 0000 7800 c786 1ec3 0000 9800     .1.....x........
c0de90da:	8c6f 1c31 0000 0000 66c0 d9b3 2e6c 0000     o.1......f..l...
c0de90ea:	0000 6000 b36c 38d9 001c 0000 0000 c000     ...`l..8........
c0de90fa:	b6cc e7f9 331f 00cc 0000 0000 e000 e36e     .....3........n.
c0de910a:	6c70 0077 0000 0000 6c60 d1b3 1c38 c306     plw.....`l..8...
c0de911a:	0000 fc00 c318 3f18 0000 3380 cec6 8c61     .......?...3..a.
c0de912a:	0071 c300 0c30 30c3 c30c e030 6318 3738     q...0..0..0..c87
c0de913a:	1cc6 0000 0000 0f6f 0000 0000 2780 9249     ......o......'I.
c0de914a:	4924 001e d400                              $I....

c0de9150 <charactersOPEN_SANS_EXTRABOLD_11PX>:
c0de9150:	0503 0000 0503 0005 0906 000a 0b07 0013     ................
c0de9160:	0906 001e 0f0a 0027 0e09 0036 0503 0044     ......'...6...D.
c0de9170:	0604 0049 0604 004f 0906 0055 0906 005e     ..I...O...U...^.
c0de9180:	0503 0067 0604 006c 0503 0072 0805 0077     ..g...l...r...w.
c0de9190:	0c08 007f 0906 008b 0b07 0094 0b07 009f     ................
c0de91a0:	0c08 00aa 0906 00b6 0c08 00bf 0b07 00cb     ................
c0de91b0:	0c08 00d6 0c08 00e2 0503 00ee 0503 00f3     ................
c0de91c0:	0805 00f8 0906 0100 0805 0109 0906 0111     ................
c0de91d0:	0f0a 011a 0c08 0129 0b07 0135 0b07 0140     ......)...5...@.
c0de91e0:	0c08 014b 0906 0157 0906 0160 0c08 0169     ..K...W...`...i.
c0de91f0:	0c08 0175 0604 0181 0805 0187 0c08 018f     ..u.............
c0de9200:	0906 019b 110b 01a4 0e09 01b5 0e09 01c3     ................
c0de9210:	0b07 01d1 0e09 01dc 0c08 01ea 0906 01f6     ................
c0de9220:	0906 01ff 0c08 0208 0906 0214 110b 021d     ................
c0de9230:	0c08 022e 0b07 023a 0b07 0245 0805 0250     ......:...E...P.
c0de9240:	0805 0258 0805 0260 0b07 0268 0906 0273     ..X...`...h...s.
c0de9250:	0b07 027c 0b07 0287 0b07 0292 0906 029d     ..|.............
c0de9260:	0b07 02a6 0b07 02b1 0906 02bc 0b07 02c5     ................
c0de9270:	0b07 02d0 0604 02db 0805 02e1 0b07 02e9     ................
c0de9280:	0604 02f4 0f0a 02fa 0b07 0309 0b07 0314     ................
c0de9290:	0b07 031f 0b07 032a 0805 0335 0906 033d     ......*...5...=.
c0de92a0:	0805 0346 0b07 034e 0b07 0359 0f0a 0364     ..F...N...Y...d.
c0de92b0:	0b07 0373 0b07 037e 0906 0389 0805 0392     ..s...~.........
c0de92c0:	0906 039a 0805 03a3 0906 03ab 0906 03b4     ................

c0de92d0 <fontOPEN_SANS_EXTRABOLD_11PX>:
c0de92d0:	0008 0000 0c01 0009 0020 007f 9150 c0de     ........ ...P...
c0de92e0:	8d92 c0de                                   ....

c0de92e4 <bitmapOPEN_SANS_LIGHT_16PX>:
	...
c0de92ec:	9000 4924 2402 0000 2480 1249 0000 0000     ..$I.$...$I.....
c0de92fc:	0000 0000 0000 4000 0902 8822 8ff8 1204     .......@..".....
c0de930c:	11ff 0441 2409 0000 0000 0000 0000 e020     ..A..$........ .
c0de931c:	20a1 0241 1c05 2070 9241 03c2 0002 0000     . A...p A.......
c0de932c:	0000 8000 4841 8904 0920 8124 6194 204a     ....AH.. .$..aJ 
c0de933c:	2409 2441 8488 0060 0000 0000 0000 0000     .$A$..`.........
c0de934c:	c000 1101 4088 1404 8060 4244 9412 0c40     .....@..`.DB..@.
c0de935c:	27c3 0000 0000 0000 9000 0024 0000 0000     .'........$.....
c0de936c:	2440 2222 2222 4422 2000 4442 4444 4444     @$"""""D. BDDDDD
c0de937c:	0022 2010 f040 0287 1105 0000 0000 0000     ".. @...........
	...
c0de9394:	0000 0080 8201 083f 2010 0000 0000 0000     ......?.. ......
	...
c0de93ac:	0524 0000 0000 0000 000e 0000 0000 0000     $...............
c0de93bc:	0000 0000 0660 0000 2200 0884 4421 1108     ....`...."..!D..
c0de93cc:	0000 0000 7000 1110 4824 2090 8241 0904     .....p..$H. A...
c0de93dc:	8222 0003 0000 0000 0000 6020 00a0 0201     "......... `....
c0de93ec:	0804 2010 8040 0100 0000 0000 0000 7800     ... @..........x
c0de93fc:	0108 0402 1008 1010 1010 e010 000f 0000     ................
c0de940c:	0000 0000 0878 0401 0c04 200f 0080 0201     ....x...... ....
c0de941c:	03e2 0000 0000 0000 0000 3004 0140 4809     ...........0@..H
c0de942c:	8220 8410 1ff0 0020 0801 0000 0000 0000      ..... .........
c0de943c:	0000 10f8 4020 8040 600f 0080 1201 03c2     .... @@..`......
c0de944c:	0000 0000 0000 e000 2030 4020 1e80 8243     ........0  @..C.
c0de945c:	0904 8422 0007 0000 0000 0000 01fc 0202     ..".............
c0de946c:	0804 1008 2010 4040 0080 0000 0000 0000     ..... @@........
c0de947c:	7000 1110 8824 0e08 8222 0904 c412 0007     .p..$...".......
c0de948c:	0000 0000 0000 0878 2411 9048 5e30 0080     ......x..$H.0^..
c0de949c:	0101 01c3 0000 0000 0000 0000 0066 6000     ............f..`
c0de94ac:	0006 0000 6600 0000 2220 0000 0000 0000     .....f.. "......
c0de94bc:	0604 0183 600c 0100 0000 0000 0000 0000     .....`..........
c0de94cc:	0000 0000 0000 1fc0 0000 00fe 0000 0000     ................
	...
c0de94e4:	1000 00c0 3006 0c18 0004 0000 0000 0000     .....0..........
c0de94f4:	0000 0000 080f 0204 1041 0204 4080 0000     ........A....@..
c0de9504:	0000 0000 f800 4180 2010 93c4 2488 4921     .......A. ...$!I
c0de9514:	1248 c492 ee24 0008 0004 0002 001f 0000     H...$...........
c0de9524:	0000 0000 00c0 0c03 2048 0481 fc21 2408     ........H ..!..$
c0de9534:	4090 0201 0000 0000 0000 f000 0841 0441     .@..........A.A.
c0de9544:	c211 2107 1104 1044 7c21 0000 0000 0000     ...!..D.!|......
c0de9554:	0000 87c0 0100 0802 8020 0200 4008 0200     ........ ....@..
c0de9564:	01f0 0000 0000 0000 e000 2103 4208 0220     ...........!.B .
c0de9574:	8811 0440 1022 0841 07c1 0000 0000 0000     ..@.".A.........
c0de9584:	0000 11f8 4020 0080 023f 0804 2010 0fc0     .... @..?.... ..
c0de9594:	0000 0000 0000 fc00 0404 0404 fc04 0404     ................
c0de95a4:	0404 0004 0000 0000 0000 083f 0040 2002     ..........?.@.. 
c0de95b4:	0200 7c20 2402 0440 4084 03f0 0000 0000     .. |.$@..@......
c0de95c4:	0000 0000 2040 4204 0420 2042 43fc 0420     ....@ .B .B .C .
c0de95d4:	2042 4204 0420 0002 0000 0000 0000 4440     B .B .........@D
c0de95e4:	4444 4444 0004 0000 0204 4081 1020 0408     DDDD.......@ ...
c0de95f4:	8102 2040 000c 0000 1208 4222 0282 0a03     ..@ ......"B....
c0de9604:	8824 2110 1044 0000 0000 0000 0400 0404     $..!D...........
c0de9614:	0404 0404 0404 0404 00fc 0000 0000 0000     ................
c0de9624:	4201 30c0 0c30 850c a142 2850 0924 4249     .B.00...B.P($.IB
c0de9634:	108c 0423 0008 0000 0000 0000 0000 4000     ..#............@
c0de9644:	0c20 20c2 4214 2421 2442 4244 0428 3043      .. .B!$B$DB(.C0
c0de9654:	0204 0000 0000 0000 0000 0f00 4108 0220     .............A .
c0de9664:	4024 2402 0240 4024 8204 f010 0000 0000     $@.$@.$@........
c0de9674:	0000 0000 f800 2210 8844 2110 043e 1008     ......."D..!>...
c0de9684:	4020 0000 0000 0000 0000 0f00 4108 0220      @...........A .
c0de9694:	4024 2402 0240 4024 8204 f010 0800 0100     $@.$@.$@........
c0de96a4:	0030 0000 f000 0841 0441 4411 1f08 1044     0.....A.A..D..D.
c0de96b4:	0841 0441 0001 0000 0000 0000 08f8 2012     A.A............ 
c0de96c4:	0040 3007 0080 0201 07e4 0000 0000 0000     @..0............
c0de96d4:	3f80 8102 2040 0810 0204 0081 0000 0000     .?..@ ..........
c0de96e4:	4000 0420 2042 4204 0420 2042 4204 0420     .@ .B .B .B .B .
c0de96f4:	1082 00f0 0000 0000 0000 0000 0602 2414     ...............$
c0de9704:	1048 2211 5044 80a0 0100 0000 0000 0000     H.."DP..........
c0de9714:	4000 2830 090c 2243 4891 9244 2490 0a14     .@0(..C".HD..$..
c0de9724:	8285 6061 0818 0004 0000 0000 0000 0000     ..a`............
c0de9734:	0400 2209 0482 0405 2814 1088 1411 0010     ...".....(......
c0de9744:	0000 0000 0000 4281 2442 1824 1018 1010     .......BB$$.....
c0de9754:	1010 0000 0000 0000 01fc 0202 0404 0804     ................
c0de9764:	0808 1010 0fe0 0000 0000 0000 0bc0 8421     ..............!.
c0de9774:	4210 2108 f084 0000 0820 0821 0421 0421     .B.!.... .!.!.!.
c0de9784:	0001 0000 21e0 1084 0842 8421 7a10 0000     .....!..B.!..z..
c0de9794:	2000 40a0 8441 2088 0041 0000 0000 0000     . .@A.. A.......
	...
c0de97b4:	fc00 0001 0800 8020 0000 0000 0000 0000     ...... .........
	...
c0de97d0:	0000 403c 4040 427c 6242 005c 0000 0000     ..<@@@|BBb\.....
c0de97e0:	0802 8020 7a00 2218 4090 0902 9024 7a21     .. ..z.".@..$.!z
	...
c0de97f8:	0000 7800 0204 0202 0202 7804 0000 0000     ...x.......x....
c0de9808:	0000 0401 4010 1178 9026 0240 2409 6110     .....@x.&.@..$.a
c0de9818:	0178 0000 0000 0000 0000 0000 8380 2088     x.............. 
c0de9828:	fe41 0804 8420 0007 0000 0000 3800 1041     A... ........8A.
c0de9838:	411f 0410 1041 0004 0000 0000 0000 fc00     .A..A...........
c0de9848:	4222 2242 043c 7c02 8142 3e43 0200 0804     "BB"<..|B.C>....
c0de9858:	a010 88c3 4120 0482 1209 0824 0000 0000     .... A....$.....
c0de9868:	0000 0200 2220 2222 0002 0000 0010 2108     .... """.......!
c0de9878:	1084 0842 0721 0200 0202 4202 1222 0a0a     ..B.!......B"...
c0de9888:	2216 8242 0000 0000 4400 4444 4444 0444     ."B......DDDDDD.
	...
c0de98a0:	3a00 3187 0822 4209 9082 2420 0908 8242     .:.1"..B.. $..B.
c0de98b0:	0010 0000 0000 0000 0000 0000 0000 c3a0     ................
c0de98c0:	2088 8241 0904 2412 0008 0000 0000 0000     . A....$........
c0de98d0:	0000 8000 8883 4120 0482 2209 0382 0000     ...... A..."....
	...
c0de98e8:	7a00 2218 4090 0902 9024 7a21 2008 0080     .z.".@..$.!z. ..
c0de98f8:	0002 0000 0000 0000 1178 9026 0240 2409     ........x.&.@..$
c0de9908:	6110 0178 1004 0040 0001 0000 ba00 0821     .ax...@.......!.
c0de9918:	2082 0208 0000 0000 0000 c000 0813 180c     . ..............
c0de9928:	0810 01e4 0000 0000 0000 84f1 4210 c108     .............B..
c0de9938:	0001 0000 0000 0000 4820 2090 8241 0904     ........ H. A...
c0de9948:	c622 000b 0000 0000 0000 0000 0c10 448a     "..............D
c0de9958:	0a22 8285 0000 0000 0000 0000 0000 6100     "..............a
c0de9968:	4628 2462 9249 2944 830c 0810 0001 0000     (Fb$I.D)........
	...
c0de9980:	4242 1824 1818 4224 0042 0000 0000 0000     BB$...$BB.......
c0de9990:	1000 8a0c 2244 850a 4082 0810 0003 0000     ....D"...@......
c0de99a0:	e000 4103 0820 4102 03e0 0000 0000 4600     ...A ..A.......F
c0de99b0:	0410 1041 4103 0410 6041 0000 2010 8040     ..A..A..A`... @.
c0de99c0:	0100 0402 1008 4020 0080 0201 0804 0010     ...... @........
c0de99d0:	8000 2041 8208 3020 2082 4208 0018 0000     ..A .. 0. .B....
c0de99e0:	0000 0000 8000 7803 0000 0000 0000 0000     .......x........
c0de99f0:	0000 0000 0000 0fc0 8421 4210 2108 1084     ........!..B.!..
c0de9a00:	0842 fc21 0000 0000 0000 d400               B.!.........

c0de9a0c <charactersOPEN_SANS_LIGHT_16PX>:
c0de9a0c:	0904 0000 0703 0009 0e06 0010 170a 001e     ................
c0de9a1c:	1509 0035 1e0d 004a 190b 0068 0703 0081     ..5...J...h.....
c0de9a2c:	0904 0088 0904 0091 1509 009a 1509 00af     ................
c0de9a3c:	0703 00c4 0c05 00cb 0904 00d7 0c05 00e0     ................
c0de9a4c:	1509 00ec 1509 0101 1509 0116 1509 012b     ..............+.
c0de9a5c:	190b 0140 1509 0159 1509 016e 1509 0183     ..@...Y...n.....
c0de9a6c:	1509 0198 1509 01ad 0904 01c2 0904 01cb     ................
c0de9a7c:	1509 01d4 1509 01e9 1509 01fe 1007 0213     ................
c0de9a8c:	200e 0223 170a 0243 170a 025a 170a 0271     . #...C...Z...q.
c0de9a9c:	190b 0288 1509 02a1 1208 02b6 1b0c 02c8     ................
c0de9aac:	1b0c 02e3 0904 02fe 1007 0307 1509 0317     ................
c0de9abc:	1208 032c 200e 033e 1b0c 035e 1b0c 0379     ..,.. >...^...y.
c0de9acc:	1509 0394 1b0c 03a9 170a 03c4 1509 03db     ................
c0de9adc:	1007 03f0 1b0c 0400 1509 041b 200e 0430     ............. 0.
c0de9aec:	1509 0450 1208 0465 1509 0477 0c05 048c     ..P...e...w.....
c0de9afc:	0c05 0498 0c05 04a4 1509 04b0 1007 04c5     ................
c0de9b0c:	1509 04d5 1208 04ea 170a 04fc 1208 0513     ................
c0de9b1c:	170a 0525 1509 053c 0e06 0551 1208 055f     ..%...<...Q..._.
c0de9b2c:	1509 0571 0904 0586 0c05 058f 1208 059b     ..q.............
c0de9b3c:	0904 05ad 200e 05b6 1509 05d6 1509 05eb     ..... ..........
c0de9b4c:	170a 0600 170a 0617 0e06 062e 1007 063c     ..............<.
c0de9b5c:	0c05 064c 1509 0658 1007 066d 1b0c 067d     ..L...X...m...}.
c0de9b6c:	1208 0698 1007 06aa 1007 06ba 0e06 06ca     ................
c0de9b7c:	1509 06d8 0e06 06ed 1509 06fb 170a 0710     ................

c0de9b8c <fontOPEN_SANS_LIGHT_16PX>:
c0de9b8c:	0009 0000 1201 000d 0020 007f 9a0c c0de     ........ .......
c0de9b9c:	92e4 c0de                                   ....

c0de9ba0 <bitmapOPEN_SANS_REGULAR_11PX>:
c0de9ba0:	0000 0000 9000 0924 0002 0660 0000 0000     ......$...`.....
c0de9bb0:	1000 4fc9 fca1 0224 0000 0000 29e0 830a     ...O..$......)..
c0de9bc0:	1e61 0000 8c00 50a8 cda1 2a16 c454 0000     a......P...*T...
c0de9bd0:	0000 1c00 1212 4a0c 2252 005e 0000 0028     .......JR"^...(.
c0de9be0:	9000 2494 0092 4490 9292 0000 fc41 048c     ...$...D....A...
c0de9bf0:	0000 0000 0000 c800 008f 0000 0000 0000     ................
c0de9c00:	0052 0000 0600 0000 0000 0200 8000 2444     R.............D$
c0de9c10:	0122 0000 4923 2492 0c49 0000 a300 0820     "...#I.$I..... .
c0de9c20:	2082 0008 8000 4103 4210 1e08 0000 0380     . .....A.B......
c0de9c30:	0c41 4104 000e 0000 3020 2428 7e24 2020     A..A.... 0($$~  
c0de9c40:	0000 8000 0827 041e 0e41 0000 2700 9e08     ....'...A....'..
c0de9c50:	4924 000c 8000 4107 4208 0410 0000 2300     $I.....A.B.....#
c0de9c60:	8c49 4924 000c 0000 4923 0792 0e41 0000     I.$I....#I..A...
c0de9c70:	0400 0200 0000 0004 0052 0000 8621 4081     ........R...!..@
c0de9c80:	0000 0000 0000 e01e 0001 0000 2000 1810     ............. ..
c0de9c90:	0846 0000 c000 8841 0108 0004 0000 43e0     F.....A........C
c0de9ca0:	5c90 294a 94a5 027e 01f0 0000 0400 4285     .\J)..~........B
c0de9cb0:	f911 4144 0000 0000 489f 11e4 4489 003e     ..DA.....H...D>.
c0de9cc0:	0000 9e00 2041 0810 3c0c 0000 0000 423e     ....A ...<....>B
c0de9cd0:	4242 4242 3e42 0000 8000 0827 209e 1e08     BBBBB>....'.. ..
c0de9ce0:	0000 2f80 8208 082f 0002 0000 027c 0202     .../../.....|...
c0de9cf0:	4262 7c42 0000 0000 4242 7e42 4242 4242     bBB|....BBB~BBBB
c0de9d00:	0000 9000 4924 0002 4440 4444 0344 9100     ....$I..@DDDD...
c0de9d10:	6144 4850 4244 0000 8000 0820 2082 3e08     DaPHDB.... .. .>
c0de9d20:	0000 1800 9866 4a61 2529 4c93 0132 0000     ....f.aJ)%.L2...
c0de9d30:	0000 4642 4a4a 5252 4262 0000 0000 08f8     ..BFJJRRbB......
c0de9d40:	2412 9048 4120 007c 0000 0000 488f f224     .$H. A|......H$.
c0de9d50:	0408 0002 0000 f800 1208 4824 2090 7c41     ..........$H. A|
c0de9d60:	0040 0001 8f00 2448 48f2 2244 0000 0000     @.....H$.HD"....
c0de9d70:	0827 0606 0e41 0000 1f00 8102 2040 0810     '...A.......@ ..
c0de9d80:	0000 0000 4242 4242 4242 3c42 0000 8000     ....BBBBBBB<....
c0de9d90:	48a0 a224 2850 0008 0000 c400 9328 4a4c     .H$.P(......(.LJ
c0de9da0:	a529 2114 0084 0000 4000 3128 230c 2149     )..!.....@(1.#I!
c0de9db0:	0000 2840 0c49 2082 0008 8000 2107 2108     ..@(I.. .....!.!
c0de9dc0:	1e08 0000 22e0 2222 0e22 2210 4442 0008     ....."""".."BD..
c0de9dd0:	4470 4444 0744 c300 5248 0008 0000 0000     pDDDD...HR......
c0de9de0:	0000 0000 7c00 0400 0002 0000 0000 0000     .....|..........
c0de9df0:	0000 9078 4927 001e 0000 c081 1223 4489     ..x.'I......#..D
c0de9e00:	001e 0000 0000 842e 1c10 0000 1000 2788     ...............'
c0de9e10:	8912 3c44 0000 0000 7000 2792 1c08 0000     ..D<.....p.'....
c0de9e20:	8980 8427 0210 0000 0000 92f8 08e4 185e     ..'...........^.
c0de9e30:	007a c081 1223 4489 0022 0000 2410 0249     z...#..D"....$I.
c0de9e40:	4000 4440 4444 8074 4820 a18a 1248 0000     .@@DDDt. H..H...
c0de9e50:	2490 0249 0000 0000 7780 8922 9224 2248     .$I......w".$.H"
c0de9e60:	0001 0000 0000 23c0 8912 2244 0000 0000     .......#..D"....
c0de9e70:	8000 1223 4489 001c 0000 0000 23c0 8912     ..#..D.......#..
c0de9e80:	1e44 4081 0000 8000 1227 4489 103c 0408     D..@....'..D<...
c0de9e90:	e000 2222 0002 0000 0c27 0e82 0000 f200     ..""....'.......
c0de9ea0:	2222 000e 0000 2440 8912 3e44 0000 0000     ""....@$..D>....
c0de9eb0:	8400 2492 0c31 0000 0000 8800 4aa8 2a95     ...$1........J.*
c0de9ec0:	4422 0000 0000 0000 1248 48c3 0012 0000     "D......H..H....
c0de9ed0:	8400 2492 0c31 0c41 8000 088f 1f11 0000     ...$1.A.........
c0de9ee0:	44c0 4224 0c44 8200 0820 2082 8208 3020     .D$BD... .. .. 0
c0de9ef0:	4222 2224 0003 0000 0606 0000 0000 9f00     "B$"............
c0de9f00:	2448 8912 3e44 0000 d400                    H$..D>....

c0de9f0a <charactersOPEN_SANS_REGULAR_11PX>:
c0de9f0a:	0503 0000 0503 0005 0604 000a 0b07 0010     ................
c0de9f1a:	0906 001b 0e09 0024 0c08 0032 0302 003e     ......$...2...>.
c0de9f2a:	0503 0041 0503 0046 0906 004b 0906 0054     ..A...F...K...T.
c0de9f3a:	0503 005d 0604 0062 0503 0068 0604 006d     ..]...b...h...m.
c0de9f4a:	0906 0073 0906 007c 0906 0085 0906 008e     ..s...|.........
c0de9f5a:	0c08 0097 0906 00a3 0906 00ac 0906 00b5     ................
c0de9f6a:	0906 00be 0906 00c7 0503 00d0 0503 00d5     ................
c0de9f7a:	0906 00da 0906 00e3 0906 00ec 0805 00f5     ................
c0de9f8a:	0f0a 00fd 0b07 010c 0b07 0117 0b07 0122     ..............".
c0de9f9a:	0c08 012d 0906 0139 0906 0142 0c08 014b     ..-...9...B...K.
c0de9faa:	0c08 0157 0503 0163 0604 0168 0b07 016e     ..W...c...h...n.
c0de9fba:	0906 0179 0f0a 0182 0c08 0191 0e09 019d     ..y.............
c0de9fca:	0b07 01ab 0e09 01b6 0b07 01c4 0906 01cf     ................
c0de9fda:	0b07 01d8 0c08 01e3 0b07 01ef 0f0a 01fa     ................
c0de9fea:	0906 0209 0906 0212 0906 021b 0604 0224     ..............$.
c0de9ffa:	0604 022a 0604 0230 0906 0236 0805 023f     ..*...0...6...?.
c0dea00a:	0906 0247 0906 0250 0b07 0259 0805 0264     ..G...P...Y...d.
c0dea01a:	0b07 026c 0906 0277 0805 0280 0906 0288     ..l...w.........
c0dea02a:	0b07 0291 0503 029c 0604 02a1 0906 02a7     ................
c0dea03a:	0503 02b0 0f0a 02b5 0b07 02c4 0b07 02cf     ................
c0dea04a:	0b07 02da 0b07 02e5 0604 02f0 0805 02f6     ................
c0dea05a:	0604 02fe 0b07 0304 0906 030f 0e09 0318     ................
c0dea06a:	0906 0326 0906 032f 0805 0338 0604 0340     ..&.../...8...@.
c0dea07a:	0906 0346 0604 034f 0906 0355 0b07 035e     ..F...O...U...^.
c0dea08a:	d4d4                                        ..

c0dea08c <fontOPEN_SANS_REGULAR_11PX>:
c0dea08c:	000a 0000 0c01 0009 0020 007f 9f0a c0de     ........ .......
c0dea09c:	9ba0 c0de                                   ....

c0dea0a0 <C_bagl_fonts>:
c0dea0a0:	92d0 c0de 9b8c c0de a08c c0de               ............

c0dea0ac <C_bagl_fonts_count>:
c0dea0ac:	0003 0000                                   ....

c0dea0b0 <FIELD_MODULUS>:
c0dea0b0:	0040 0000 0000 0000 0000 0000 0000 0000     @...............
c0dea0c0:	4622 fc98 4c09 1bf9 2d99 ed30 0000 0100     "F...L...-0.....

c0dea0d0 <FIELD_ZERO>:
	...

c0dea0f0 <GROUP_ORDER>:
c0dea0f0:	0040 0000 0000 0000 0000 0000 0000 0000     @...............
c0dea100:	4622 fc98 9409 dda8 468c 21eb 0000 0100     "F.......F.!....

c0dea110 <SCALAR_ZERO>:
	...

c0dea130 <FIELD_FOUR>:
	...
c0dea14c:	0000 0400                                   ....

c0dea150 <FIELD_THREE>:
	...
c0dea16c:	0000 0300                                   ....

c0dea170 <FIELD_TWO>:
	...
c0dea18c:	0000 0200                                   ....

c0dea190 <FIELD_EIGHT>:
	...
c0dea1ac:	0000 0800                                   ....

c0dea1b0 <GROUP_ZERO>:
	...
c0dea1ec:	0000 0100 0000 0000 0000 0000 0000 0000     ................
	...

c0dea210 <FIELD_ONE>:
	...
c0dea22c:	0000 0100                                   ....

c0dea230 <AFFINE_ONE>:
	...
c0dea24c:	0000 0100 741b a3b5 120a 7c93 df53 f0a9     .....t.....|S...
c0dea25c:	7863 54ee 658f d45b 3d33 7147 cf19 237a     cx.T.e[.3=Gq..z#
c0dea26c:	edca bb2a                                   ..*.

c0dea270 <ux_get_address_result_flow_address_step_val>:
c0dea270:	8d51 c0de 0004 da7a                         Q.....z.

c0dea278 <ux_get_address_result_flow_address_step>:
c0dea278:	1dbb c0de a270 c0de 0000 0000 0000 0000     ....p...........

c0dea288 <ux_get_address_result_flow_approve_step_validate_step>:
c0dea288:	1e4d c0de 0000 0000 0000 0000 0000 0000     M...............

c0dea298 <ux_get_address_result_flow_approve_step_validate>:
c0dea298:	a288 c0de ffff ffff                         ........

c0dea2a0 <ux_get_address_result_flow_approve_step_val>:
c0dea2a0:	a4a0 c0de 8cc0 c0de                         ........

c0dea2a8 <ux_get_address_result_flow_approve_step>:
c0dea2a8:	8219 c0de a2a0 c0de a298 c0de 0000 0000     ................

c0dea2b8 <ux_get_address_result_flow_reject_step_validate_step>:
c0dea2b8:	1e75 c0de 0000 0000 0000 0000 0000 0000     u...............

c0dea2c8 <ux_get_address_result_flow_reject_step_validate>:
c0dea2c8:	a2b8 c0de ffff ffff                         ........

c0dea2d0 <ux_get_address_result_flow_reject_step_val>:
c0dea2d0:	a3e0 c0de 8cf5 c0de                         ........

c0dea2d8 <ux_get_address_result_flow_reject_step>:
c0dea2d8:	8219 c0de a2d0 c0de a2c8 c0de 0000 0000     ................

c0dea2e8 <ux_get_address_result_flow>:
c0dea2e8:	a278 c0de a2a8 c0de a2d8 c0de ffff ffff     x...............

c0dea2f8 <ux_get_address_flow_topic_step_val>:
c0dea2f8:	a440 c0de 8d13 c0de 8d51 c0de               @.......Q...

c0dea304 <ux_get_address_flow_topic_step>:
c0dea304:	8349 c0de a2f8 c0de 0000 0000 0000 0000     I...............

c0dea314 <ux_get_address_flow_path_step_val>:
c0dea314:	8d7d c0de 003c da7a                         }...<.z.

c0dea31c <ux_get_address_flow_path_step>:
c0dea31c:	8021 c0de a314 c0de 0000 0000 0000 0000     !...............

c0dea32c <ux_get_address_flow_generate_step_validate_step>:
c0dea32c:	1e81 c0de 0000 0000 0000 0000 0000 0000     ................

c0dea33c <ux_get_address_flow_generate_step_validate>:
c0dea33c:	a32c c0de ffff ffff                         ,.......

c0dea344 <ux_get_address_flow_generate_step_val>:
c0dea344:	a4a0 c0de 8d06 c0de                         ........

c0dea34c <ux_get_address_flow_generate_step>:
c0dea34c:	8219 c0de a344 c0de a33c c0de 0000 0000     ....D...<.......

c0dea35c <ux_get_address_flow_cancel_step_validate_step>:
c0dea35c:	1e95 c0de 0000 0000 0000 0000 0000 0000     ................

c0dea36c <ux_get_address_flow_cancel_step_validate>:
c0dea36c:	a35c c0de ffff ffff                         \.......

c0dea374 <ux_get_address_flow_cancel_step_val>:
c0dea374:	a3e0 c0de 8d24 c0de                         ....$...

c0dea37c <ux_get_address_flow_cancel_step>:
c0dea37c:	8219 c0de a374 c0de a36c c0de 0000 0000     ....t...l.......

c0dea38c <ux_get_address_flow>:
c0dea38c:	a304 c0de a31c c0de a34c c0de a37c c0de     ........L...|...
c0dea39c:	ffff ffff                                   ....

c0dea3a0 <.Lstr>:
c0dea3a0:	3434 2f27 3231 3835 2736 002f 0000 0000     44'/12586'/.....
	...

c0dea3bc <C_Mina_64px_colors>:
c0dea3bc:	0000 0000 ffff 00ff                         ........

c0dea3c4 <C_icon_crossmark_bitmap>:
c0dea3c4:	8000 e601 71c0 3838 fc07 1e00 0780 03f0     .....q88........
c0dea3d4:	c1ce 38e1 0670 0018 d400 d4d4               ...8p.......

c0dea3e0 <C_icon_crossmark>:
c0dea3e0:	000e 0000 000e 0000 0001 0000 a3bc c0de     ................
c0dea3f0:	a3c4 c0de                                   ....

c0dea3f4 <C_icon_dashboard_x_bitmap>:
c0dea3f4:	0000 0000 800c f007 fe03 ffc1 3ff0 03f0     .............?..
c0dea404:	00cc c033 000c 0000 d400 d4d4               ..3.........

c0dea410 <C_icon_dashboard_x>:
c0dea410:	000e 0000 000e 0000 0001 0000 a3bc c0de     ................
c0dea420:	a3f4 c0de                                   ....

c0dea424 <C_icon_eye_bitmap>:
c0dea424:	0000 0000 e01e 1c1f 030e 8c63 6319 0c0c     ..........c..c..
c0dea434:	8387 807f 0007 0000 d400 d4d4               ............

c0dea440 <C_icon_eye>:
c0dea440:	000e 0000 000e 0000 0001 0000 a3bc c0de     ................
c0dea450:	a424 c0de                                   $...

c0dea454 <C_icon_left_bitmap>:
c0dea454:	1248 0842                                   H.B.

c0dea458 <C_icon_left>:
c0dea458:	0004 0000 0007 0000 0001 0000 a3bc c0de     ................
c0dea468:	a454 c0de                                   T...

c0dea46c <C_icon_right_bitmap>:
c0dea46c:	8421 0124                                   !.$.

c0dea470 <C_icon_right>:
c0dea470:	0004 0000 0007 0000 0001 0000 a3bc c0de     ................
c0dea480:	a46c c0de                                   l...

c0dea484 <C_icon_validate_14_bitmap>:
c0dea484:	0000 0000 0000 00c0 0038 e067 1c38 039c     ........8.g.8...
c0dea494:	007e 800f 0001 0000 d400 d4d4               ~...........

c0dea4a0 <C_icon_validate_14>:
c0dea4a0:	000e 0000 000e 0000 0001 0000 a3bc c0de     ................
c0dea4b0:	a484 c0de                                   ....

c0dea4b4 <C_mina_logo_bitmap>:
c0dea4b4:	0808 1414 2222 2222 2222 2222 2222 2222     ....""""""""""""
c0dea4c4:	2222 2222 2222 2222 2222 2222 2142 4081     """"""""""""B!.@

c0dea4d4 <C_mina_logo>:
c0dea4d4:	0010 0000 0010 0000 0001 0000 a3bc c0de     ................
c0dea4e4:	a4b4 c0de                                   ....

c0dea4e8 <service_uuid>:
c0dea4e8:	6572 6467 4c65 0000 0004 2c97 3400 13d6     regdeL.....,.4..

c0dea4f8 <charUuidTX>:
c0dea4f8:	6572 6467 4c65 0001 0004 2c97 3400 13d6     regdeL.....,.4..

c0dea508 <charUuidRX>:
c0dea508:	6572 6467 4c65 0002 0004 2c97 3400 13d6     regdeL.....,.4..

c0dea518 <charUuidRX2>:
c0dea518:	6572 6467 4c65 0003 0004 2c97 3400 13d6     regdeL.....,.4..

c0dea528 <ux_idle_flow_1_step_val>:
c0dea528:	a4d4 c0de 8d8d c0de 8d74 c0de               ........t...

c0dea534 <ux_idle_flow_1_step>:
c0dea534:	8349 c0de a528 c0de 0000 0000 0000 0000     I...(...........

c0dea544 <ux_idle_flow_2_step_val>:
c0dea544:	8d17 c0de 8d33 c0de                         ....3...

c0dea54c <ux_idle_flow_2_step>:
c0dea54c:	7cbd c0de a544 c0de 0000 0000 0000 0000     .|..D...........

c0dea55c <ux_idle_flow_3_step_validate_step>:
c0dea55c:	3c2d c0de 0000 0000 0000 0000 0000 0000     -<..............

c0dea56c <ux_idle_flow_3_step_validate>:
c0dea56c:	a55c c0de ffff ffff                         \.......

c0dea574 <ux_idle_flow_3_step_val>:
c0dea574:	a410 c0de 8d59 c0de                         ....Y...

c0dea57c <ux_idle_flow_3_step>:
c0dea57c:	8219 c0de a574 c0de a56c c0de 0000 0000     ....t...l.......

c0dea58c <ux_idle_flow>:
c0dea58c:	a534 c0de a54c c0de a57c c0de fffd ffff     4...L...|.......
c0dea59c:	ffff ffff                                   ....

c0dea5a0 <seph_io_general_status>:
c0dea5a0:	0060 0002                                    `....

c0dea5a5 <seph_io_mcu_protect>:
c0dea5a5:	0031 0201                                   1...

c0dea5a9 <g_pcHex>:
c0dea5a9:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0dea5b9 <g_pcHex_cap>:
c0dea5b9:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0dea5c9 <FIELD_FIVE>:
	...
c0dea5e5:	0000 0500                                   ....

c0dea5e9 <round_keys>:
c0dea5e9:	f902 dada c9bb f891 91d6 62dc a5fe aef8     ...........b....
c0dea5f9:	b737 fe6e 6951 b0a9 92cc 82a4 cb0c 7853     7.n.Qi........Sx
c0dea609:	8317 c6be 57c3 730a 433c 3d95 8495 29b2     .....W.s<C.=...)
c0dea619:	73a9 367a f129 dad0 b7b0 6586 0b58 e588     .sz6)......eX...
c0dea629:	c028 f61d 6b66 1904 f06c f02a 0739 bb56     (...fk..l.*.9.V.
c0dea639:	eca8 80fe 6e10 563f 7e37 89ad 3457 7b0c     .....n?V7~..W4.{
c0dea649:	d10c ba02 12db be4e 739c 4958 d74b 35fa     ......N..sXIK..5
c0dea659:	8b92 097c bb54 5ff2 f900 f05d 39a6 b492     ..|.T.._..]..9..
c0dea669:	0f02 3117 f7ee 19b4 400a cfda 7531 c37c     ...1.....@..1u|.
c0dea679:	d19b 3367 8de1 625f 4147 7b75 7afd d551     ..g3.._bGAu{.zQ.
c0dea689:	331e ed39 cae4 0403 fdd2 f8ad 094d 0b7d     .39.........M.}.
c0dea699:	37dd 0a0e a4ea 689d 98db e0fd db8c 52df     .7.....h.......R
c0dea6a9:	6f0d 7806 fc38 0aa7 823a f7d8 72ed 5b34     .o.x8...:....r4[
c0dea6b9:	880d 92d5 ede2 a02a de3f 83b2 bd71 60ad     ......*.?...q..`
c0dea6c9:	b93f be17 bf23 c282 39ba 811b 4e70 a7e5     ?...#....9..pN..
c0dea6d9:	e2aa a7a9 a7e8 4b5d 7856 3bf0 9c72 6f75     ......]KVx.;r.uo
c0dea6e9:	c733 ac66 438e 4fad 0100 8afe 16a2 5850     3.f..C.O......PX
c0dea6f9:	01d1 3b5a 8bed f62c a057 19d2 ec51 9569     ..Z;..,.W...Q.i.
c0dea709:	681e fd70 2734 ff83 d694 d430 7aae 1bbe     .hp.4'....0..z..
c0dea719:	987c 539b 123d e03f 0a29 e92f a8af 8db5     |..S=.?.)./.....
c0dea729:	8431 f11a be66 19e1 eba8 1ee6 9a07 962b     1...f.........+.
c0dea739:	e02c 710c 26e0 8494 617a 8c11 3486 dae0     ,..q.&..za...4..
c0dea749:	e21c cb18 cde1 d333 38bd dd02 99e9 fbd1     ......3..8......
c0dea759:	b333 6b80 221b 1f2d 8e48 5665 f616 afd5     3..k."-.H.eV....
c0dea769:	3733 c172 4642 78fd 072e 8d47 c22c dd3c     37r.BF.x..G.,.<.
c0dea779:	9d5d 1066 7733 01c0 a876 36f5 c1b6 aad1     ].f.3w..v..6....
c0dea789:	2504 a4e6 f47a 684e 2c35 0a07 3cc0 e982     .%..z.Nh5,...<..
c0dea799:	5877 0e63 7693 20e9 857e f2bc 46bc 2019     wXc..v. ~....F. 
c0dea7a9:	4338 4233 31a8 1dc7 0496 f0a5 9545 8a30     8C3B.1......E.0.
c0dea7b9:	f032 60ed 6fc7 8f3d 5fb7 77b6 2ba3 b66e     2..`.o=.._.w.+n.
c0dea7c9:	c704 fc93 4d2c 19b3 56f2 8158 eef0 defb     ....,M...VX.....
c0dea7d9:	66de 0bef 310d 954f 873e 6330 5410 1132     .f...1O.>.0c.T2.
c0dea7e9:	5c2a 1218 4809 f99b 441a 187f 2977 f1b2     *\...H...D..w)..
c0dea7f9:	ce44 b8b9 ef25 8a2f 79d9 8f12 ad18 5e10     D...%./..y.....^
c0dea809:	e436 1a78 9f62 e8cf 9d48 28bf a7f6 6a52     6.x.b...H..(..Rj
c0dea819:	e57f 0f64 c1be cfb3 155f e75a f260 416f     ..d....._.Z.`.oA
c0dea829:	4823 d1be 6043 3e72 648c d13f 22f0 15ce     #H..C`r>.d?.."..
c0dea839:	b30f e249 dba5 625f c0fb 0597 3e71 4755     ..I..._b....q>UG
c0dea849:	b311 d071 a9f4 dcd4 8e68 b4e6 5e3d 25d6     ..q.....h...=^.%
c0dea859:	138a a17a c46a 90e1 aef4 05a3 d116 5a3d     ..z.j.........=Z
c0dea869:	8d29 b837 ec5d 7d2b 8854 9777 2d5b 98e1     ).7.].+}T.w.[-..
c0dea879:	7e32 3497 cdbd 9aca d21b 7165 fb21 bb8e     2~.4......eq!...
c0dea889:	e82a 48b1 f53a 5ceb 4a75 a5d6 b219 ce14     *..H:..\uJ......
c0dea899:	c767 ad72 3775 d6db 1707 2049 4256 431f     g.r.u7....I VB.C
c0dea8a9:	301e 2650 801e 2f37 83a5 0a0b 116f f39c     .0P&..7/....o...
c0dea8b9:	e4c4 aadd 588f 1053 c4a0 d888 d650 bf53     .....XS.....P.S.
c0dea8c9:	281f d4f3 2e24 fe8d 2021 6f1b da28 b1ac     .(..$...! .o(...
c0dea8d9:	15d9 bd9c 2abe e626 ca18 9934 de99 5d7c     .....*&...4...|]
c0dea8e9:	461d 8e9a b6ee 7775 9e3d 6491 4ac9 a3ed     .F....uw=..d.J..
c0dea8f9:	6855 ca1f 87cd 25bd 68fb 818d d56d 3402     Uh.....%.h..m..4
c0dea909:	d638 d1ec eb01 8b00 d9c3 9f4b 0c84 f568     8.........K...h.
c0dea919:	11c9 7387 f003 f084 2af7 d504 ae1f ad0e     ...s.....*......
c0dea929:	653b d1f8 3bd6 c2d4 e911 8a65 90eb 7398     ;e...;....e....s
c0dea939:	74d0 4bdf bbf8 118b bccd 2eb9 2617 cd57     .t.K.........&W.
c0dea949:	cf34 f076 6534 1f7b c8a7 6c3b aa8a 659e     4.v.4e{...;l...e
c0dea959:	6a46 e1ae d4ca d733 9ac0 735c c861 0991     Fj....3...\sa...
c0dea969:	4225 14cd d860 4069 2602 d6d2 26c1 81a4     %B..`.i@.&...&..
c0dea979:	0424 7ecc 7a00 8573 dd9d fcc6 192e e8c1     $..~.zs.........
c0dea989:	c728 0c56 c81e 1742 6892 f3bc 3f81 4b4f     (.V...B..h...?OK
c0dea999:	5fe0 e6a6 bb00 6dfb d5ae 62b8 8235 ed05     ._.....m...b5...
c0dea9a9:	5b25 613e 1438 376a 0cf7 f8b9 cef4 ba44     %[>a8.j7......D.
c0dea9b9:	7e6d 8fb0 9409 37a5 6fea b8f6 5241 3f58     m~.....7.o..ARX?
c0dea9c9:	b634 b13e ec74 4d33 32ae 7f41 c25c f272     4.>.t.3M.2A.\.r.
c0dea9d9:	1617 e365 322d 6a3f ba58 9076 57ac 28cc     ..e.-2?jX.v..W.(
c0dea9e9:	e035 b6c2 5408 b67a 057f d6ec 1a1f eaea     5....Tz.........
c0dea9f9:	13c0 ff9f 34e7 07fa 333c 08ea 1e7d bb1f     .....4..<3..}...
c0deaa09:	1138 9f5c b035 cc3d 1a03 d930 4bbc f91f     8.\.5.=...0..K..
c0deaa19:	3038 e1d9 deed 22d0 5de0 3a84 032f e647     80.....".].:/.G.
c0deaa29:	4903 3e4b 9bea 53d5 0330 e5b3 459a 355f     .IK>...S0....E_5
c0deaa39:	5e3b 83ce 91e7 0334 223a 0a58 6805 5c5b     ;^....4.:"X..h[\
c0deaa49:	3d29 9a81 38c2 33e2 063c 814a 5569 cbcf     )=...8.3<.J.iU..
c0deaa59:	d5f3 a857 7817 515c 4933 03eb 21c7 6eb7     ..W..x\Q3I...!.n
c0deaa69:	bc29 b2ab 2d3f b809 5b47 1f95 a25b 33bb     )...?-..G[..[..3
c0deaa79:	ae8d 9411 050b 7157 638b 5ec4 1e6c cac9     ......Wq.c.^l...
c0deaa89:	6500 4826 54b3 0088 c4e4 a5e9 98be 02e2     .e&H.T..........
c0deaa99:	3071 3cf8 572b f1e3 a2ee 04ee 4529 9030     q0.<+W......)E0.
c0deaaa9:	8712 537b 2482 35e2 1dd9 6677 9e1f 730c     ..{S.$.5..wf...s
c0deaab9:	d6d3 6773 2785 2669 6e8b 3379 53e7 1891     ..sg.'i&.ny3.S..
c0deaac9:	3c09 5b11 f2b0 1188 a1a7 041c f51e 7f84     .<.[............
c0deaad9:	c14e d71d 4587 fe7f 1697 a9b2 da96 6c3d     N....E........=l
c0deaae9:	3424 dfae 0c50 31e5 ce4c f760 40d5 0171     $4..P..1L.`..@q.
c0deaaf9:	3460 d71e 8ffe b2aa d2fc efde 7368 2918     `4..........hs.)
c0deab09:	9112 e8b3 691b d7a2 1beb 6e56 224e 8ba2     .....i....VnN"..
c0deab19:	8a2a 13ae 9bdc d56f 140c 47ca 7a89 5f90     *.....o....G.z._
c0deab29:	2022 3713 626f e383 33e6 96f6 a09e 4176     " .7ob...3....vA
c0deab39:	7ed5 ee7d 9a49 e8c3 ee81 144e 42d1 9944     .~}.I.....N..BD.
c0deab49:	0609 147a 7667 20a1 d055 e073 8a32 d4e1     ..z.gv. U.s.2...
c0deab59:	a483 0dc0 cc89 d810 dc0b 672d f455 89d8     ..........-gU...
c0deab69:	403a 21dc f898 690b f10f 9b67 53b0 758c     :@.!...i..g..S.u
c0deab79:	d7b3 a018 3928 ce20 398d 2df1 fa9c ab27     ....(9 ..9.-..'.
c0deab89:	7615 2853 a889 5ddd bcd7 8442 085f 3bf6     .vS(...]..B._..;
c0deab99:	fbac d453 1808 7438 152b e84b 007b 34b9     ..S...8t+.K.{..4
c0deaba9:	b43d 72ef 8bbd 85d5 ed06 672e 5270 fc0b     =..r.......gpR..
c0deabb9:	3b13 d053 ea95 20f8 66e4 2885 1d93 ece9     .;S.... .f.(....
c0deabc9:	1e2d 8716 b9b8 393e 988a 1105 6041 167f     -.....>9....A`..
c0deabd9:	c792 d706 6702 1900 ddeb 722b 7a24 bad9     .....g....+r$z..
c0deabe9:	3e32 7696 6bd5 79d5 a406 8f9e 2964 166b     2>.v.k.y....d)k.
c0deabf9:	aba5 5857 107c bd92 3d4f bc9f d548 aabd     ..WX|...O=..H...
c0deac09:	831b 4509 c40b 0350 bf89 f7c6 af36 7814     ...E..P.....6..x
c0deac19:	a1d3 c5ea ce3d 4759 7e3d 2e68 57d2 af58     ....=.YG=~h..WX.
c0deac29:	eb3b 007f 0163 ff55 e539 4b31 baab b06a     ;...c.U.9.1K..j.
c0deac39:	fd6f 78aa 7a6b 69dd 89e9 9157 05b9 b75b     o..xkz.i..W...[.
c0deac49:	e51f 0085 14a9 811b acfd f9ed 56fc dba9     .............V..
c0deac59:	ad74 4b3e cf5a bf78 018f 70cd 0f44 ad3c     t.>KZ.x....pD.<.
c0deac69:	aa32 dcd1 6f3e bce3 50ac 2c4e d11f d5b1     2...>o...PN,....
c0deac79:	7cd6 44cc 4953 9545 54ab dced 7536 68b9     .|.DSIE..T..6u.h
c0deac89:	a307 f580 ac95 20ad a44e 405f 7768 5e31     ....... N._@hw1^
c0deac99:	04d5 80c7 c144 0f8c 7c86 500e 17ca cd21     ....D....|.P..!.
c0deaca9:	fa09 f752 b1ac 9c00 4115 7414 1174 eff2     ..R......A.tt...
c0deacb9:	4809 a7b5 bab2 c79f bf47 97fb ba66 8985     .H......G...f...
c0deacc9:	3528 eed3 aa4c 460b 4e51 1cc4 219f f596     (5..L..FQN...!..
c0deacd9:	aefd 682c 77c4 a410 6e1f 68fd 9c86 6b37     ..,h.w...n.h..7k
c0deace9:	e214 7cd9 bb0a 2d87 fe8e 5c47 cb9c 09dc     ...|...-..G\....
c0deacf9:	4769 9167 8790 9da5 b546 26a2 29ca 3ab9     iGg.....F..&.).:
c0dead09:	2207 11e1 903d 4e32 8206 f80f c16d 0d28     ."..=.2N....m.(.
c0dead19:	3f74 822a a188 308b 6ab2 5ff7 3313 86e0     t?*....0.j._.3..
c0dead29:	b720 eb8c 0d6e 29f0 432c e8cd 3dd5 bcf0      ...n..),C...=..
c0dead39:	c720 fcc7 666a bdfd 543f dcd8 bae2 9683      ...jf..?T......
c0dead49:	e132 9668 a24b 860a d83f 464d 4bb4 2fc8     2.h.K...?.MF.K./
c0dead59:	51fc ea74 95d5 52f3 bc53 2b97 d08c 31ee     .Qt....RS..+...1
c0dead69:	612e 35cd d9d9 f990 71f8 0be9 8976 d809     .a.5.....q..v...
c0dead79:	1183 9373 d821 f746 89af 4f49 1b89 d3a4     ..s.!.F...IO....
c0dead89:	ed2d 0816 ae93 d032 fb74 0007 13ec 9198     -.....2.t.......
c0dead99:	4385 95bf 1c10 4401 4c60 d4c4 9f53 5c8b     .C.....D`L..S..\
c0deada9:	5716 e07a be73 2382 352c 2888 2254 4927     .Wz.s..#,5.(T"'I
c0deadb9:	d8e9 a8e0 bffb 8170 9cee 422b f3a9 e509     ......p...+B....
c0deadc9:	7e18 ba88 cc7c 40df e257 f20f 17e0 7475     .~..|..@W.....ut
c0deadd9:	c3d8 1147 3f91 bdee ab5d 894f f05a d305     ..G..?..].O.Z...
c0deade9:	600a 41ab 1fc1 fa95 5f60 c157 8d0f b834     .`.A....`_W...4.
c0deadf9:	b700 15d8 5f9e 007b b2a3 5fcb 9120 46a8     ....._{...._ ..F
c0deae09:	1429 88e1 f773 8e37 10b2 93b4 39ce ac91     )...s.7......9..
c0deae19:	0898 e9a9 d4a4 101e fc4c ac2b 72ab 17b6     ........L.+..r..
c0deae29:	c606 1af0 caa8 0a19 950e 9a40 7341 0585     ..........@.As..
c0deae39:	30c1 cc06 8500 ab34 688a f9eb 1db7 e174     .0....4..h....t.
c0deae49:	ef28 8c78 1820 e1ea 062c 2fb8 0c19 7ec9     (.x. ...,../...~
c0deae59:	0c58 3c3d 3056 0685 0b8d d662 c67b af09     X.=<V0....b.{...
c0deae69:	d426 1a5b e9a0 8872 1861 56fa 6eb5 df41     &.[...r.a..V.nA.
c0deae79:	3a4d 76cc 8516 b2f5 ff61 58d0 1c20 f66a     M:.v....a..X .j.
c0deae89:	ec39 e487 5da9 4ed9 3069 17d7 c622 d7d1     9....].Ni0.."...
c0deae99:	32df 299f cd37 4815 5d34 b726 d667 ba78     .2.)7..H4]&.g.x.
c0deaea9:	bf10 fcf0 63c6 9e26 7633 00f4 195d fd4d     .....c&.3v..].M.
c0deaeb9:	eb0f b3c1 e802 ae07 4779 3a65 0f91 edb6     ........yGe:....
c0deaec9:	582c a4d0 6e64 ac33 639f 2c3d a788 dbac     ,X..dn3..c=,....
c0deaed9:	197a 232c 13aa 13f1 173b ad8f f9ef d93b     z.,#....;.....;.
c0deaee9:	5a25 f712 5a50 b781 7b38 afbc 692b 29a0     %Z..PZ..8{..+i.)
c0deaef9:	fc83 f0b1 0a76 355a f74a ac77 1b6f b425     ....v.Z5J.w.o.%.
c0deaf09:	de1e 410f 8ec9 785a 129c 84e1 a89e 9232     ...A..Zx......2.
c0deaf19:	0efa c92e c6e3 0409 0ed4 29a1 9baa 8dfc     ...........)....
c0deaf29:	d637 b1dd b058 ee7e 9e15 533f f61d 2914     7...X.~...?S...)
c0deaf39:	a79d ea53 7e22 fb2f 70f2 20bc 51b0 ab3b     ..S."~/..p. .Q;.
c0deaf49:	f728 e6cf b7a0 756b dbb8 c4ea 033e a19b     (.....ku....>...
c0deaf59:	12ea dd6a 0eb9 cad9 1c84 6711 b8c2 d4e6     ..j........g....
c0deaf69:	e132 2ded 09bf 6b02 9f61 9e08 1d04 2806     2..-...ka......(
c0deaf79:	4235 3876 537e 050b ebae 5286 cbf0 c520     5Bv8~S.....R.. .
c0deaf89:	b53d b14e c5d8 6128 eb11 c066 2a2c 88ee     =.N...(a..f.,*..
c0deaf99:	896c 2d1f e666 b935 ee85 5a91 ff0e d95d     l..-f.5....Z..].
c0deafa9:	5c02 8b17 2b22 25b3 5814 cdea 9335 87f1     .\.."+.%.X..5...
c0deafb9:	2016 56ce 2510 33d0 c2c4 35a1 924e e2b2     . .V.%.3...5N...
c0deafc9:	1126 44a9 f966 6eef 5f98 2ca7 2d1d bf2f     &..Df..n._.,.-/.
c0deafd9:	3c05 b6be 85be c6d1 f34e c257 59d4 54db     .<......N.W..Y.T
c0deafe9:	5424 29b4 0134 f72f e878 e5e1 c8c7 fe19     $T.)4./.x.......
c0deaff9:	afe2 fa51 59db a72e 25d0 5ec2 2bc9 80e9     ..Q..Y...%.^.+..
c0deb009:	403f 2e09 c686 92ff 9736 f160 2aae daec     ?@......6.`..*..
c0deb019:	0613 4484 f188 2757 7f1e 67b4 8347 33d6     ...D..W'...gG..3
c0deb029:	6016 b2a3 9d59 d067 0831 f39b fb9d d532     .`..Y.g.1.....2.
c0deb039:	c1f7 9cf3 62c7 46c1 d424 3c11 e6b6 9ffe     .....b.F$..<....
c0deb049:	3005 04f1 fb5f 205c f1a9 c694 1b4d baff     .0.._.\ ....M...
c0deb059:	df49 54b7 7441 5a93 7a43 1832 a55b d2e9     I..TAt.ZCz2.[...
c0deb069:	be24 fe84 b606 dfe3 638f 5bf2 13f8 992b     $........c.[..+.
c0deb079:	0198 bb22 7bb5 7d42 9ccb 48ce c2e9 2473     .."..{B}...H..s$
c0deb089:	1705 0922 2e04 06a9 ffe3 a15e 56e8 43c6     ..".......^..V.C
c0deb099:	f6cb e389 bf63 74cd 5aec 6319 fa60 886d     ....c..t.Z.c`.m.
c0deb0a9:	d43c 01ad ceb5 b9cc 65cb 8fac 60f4 9acc     <........e...`..
c0deb0b9:	014a dcc3 dfdc eb95 6613 16d3 d123 11c6     J........f..#...
c0deb0c9:	e914 efc2 ae46 9906 af7b 4759 cf95 2e64     ....F...{.YG..d.
c0deb0d9:	75e9 ab5a c650 439b 29a7 51f3 aa9e c7c4     .uZ.P..C.).Q....
c0deb0e9:	ca33 b375 eef0 49e2 79ba 97ab 11f8 f1ad     3.u....I.y......
c0deb0f9:	a795 591f 4679 f533 6b97 0ea1 cebc f9b3     ...YyF3..k......
c0deb109:	e510 5627 1eef 6290 5aab a3b4 abe7 9fe2     ..'V...b.Z......
c0deb119:	ca01 3e70 9d10 76c5 f466 f1bd 01c4 7a97     ..p>...vf......z
c0deb129:	2d15 82c2 bb05 9f98 fb84 a3e0 4be6 2c25     .-...........K%,
c0deb139:	67a6 ec94 42ac 68c4 2d0a b265 c575 f822     .g...B.h.-e.u.".
c0deb149:	ee28 dd5d efc9 ec49 87a1 9b04 6782 929c     (.]...I......g..
c0deb159:	bea9 e874 b088 c398 56f2 bfce b68e 67a4     ..t......V.....g
c0deb169:	1a37 f900 1ed5 a593 3da0 7f0b 2b46 3c72     7........=..F+r<
c0deb179:	d9ff 00bf fd7e 574b d126 8b3b f4e1 6482     ....~.KW&.;....d
c0deb189:	b72e 5ce7 ba62 7f1d cb03 4e78 a641 edaf     ...\b.....xNA...
c0deb199:	dabc 2122 9763 c22f 8510 b5b1 c364 896a     .."!c./.....d.j.
c0deb1a9:	772a cb9c 9a53 a8b7 6c51 9bad 6b7b 5def     *w..S...Ql..{k.]
c0deb1b9:	5d83 a473 929f f656 d2bd 3034 4baa 7661     .]s...V...40.Kav
c0deb1c9:	1c35 17a4 77a6 4f26 f84d ff29 5ba5 4eff     5....w&OM.)..[.N
c0deb1d9:	9034 a3de c26d b925 620f faa7 8197 7c63     4...m.%..b....c|
c0deb1e9:	9a10 85d2 b2b5 de0b 4eb9 97fe c8b1 c0af     .........N......
c0deb1f9:	4fb8 417b 24d9 9e2e dd58 c5c3 3c09 ae81     .O{A.$..X....<..
c0deb209:	2a08 fdf6 470d 3036 b8b2 bca2 3c9c 496c     .*...G60.....<lI
c0deb219:	695b feaf 6c45 cef7 17e1 c314 c3c3 161d     [i..El..........
c0deb229:	6114 f0c7 cb90 8bda 3925 a294 727c b2a0     .a......%9..|r..
c0deb239:	2899 3adb a4ef a4e4 b28c 5d02 1f61 f88a     .(.:.......]a...
c0deb249:	2e0b 69e9 5d27 3a2a 5cfb c03a 4651 01da     ...i']*:.\:.QF..
c0deb259:	35ee ad89 66d7 2bf2 33e6 be1b 2cd9 f1d0     .5...f.+.3...,..
c0deb269:	111d a4a5 fd1c 31c7 d7ec 2ee5 c03f 81ea     .......1....?...
c0deb279:	feb2 bb0b 0128 48d1 5af7 5005 0329 7a00     ....(..H.Z.P)..z
c0deb289:	9321 376b c909 d2dd f628 aae0 24a2 5a95     !.k7....(....$.Z
c0deb299:	9bfd 1f41 60d2 2af4 88d9 92d2 390d 1e26     ..A..`.*.....9&.
c0deb2a9:	2306 c520 6c54 62fe f617 99db 4d66 60e3     .# .Tl.b....fM.`
c0deb2b9:	6fcf e896 c2ec 4d8b 45ba 4f25 0815 92ed     .o.....M.E%O....
c0deb2c9:	e10d d033 f97a fdbd 3dbb aadf 10b9 2c7d     ..3.z....=....},
c0deb2d9:	039e 30c6 11bf 59a1 6b21 a02f 0efe 7d66     ...0...Y!k/...f}
c0deb2e9:	6135 9470 c1e3 dbec 3107 ad7e 6cd2 9863     5ap......1~..lc.
c0deb2f9:	015d 36bc 5602 1937 791c 65dc 9c35 e1cb     ]..6.V7..y.e5...
c0deb309:	0439 5121 0fc2 18a2 4518 54f3 d674 805b     9.!Q.....E.Tt.[.
c0deb319:	936d 34f6 d548 56a5 7874 61d0 4204 7ea9     m..4H..Vtx.a.B.~
c0deb329:	882f 05df fd74 b697 bcd0 b7eb cf8e 6967     /...t.........gi
c0deb339:	59bd edae 1f45 737d 8d0a 8154 79db 80d6     .Y..E.}s..T..y..
c0deb349:	fe25 a891 0582 69b5 d38b 8730 53cd 2663     %......i..0..Sc&
c0deb359:	4afc ecc8 7e97 07c8 c9ed b71c e42f 9f8a     .J...~....../...
c0deb369:	171b ad75 2b9c f1a1 ce18 213b 2463 f9af     ..u..+....;!c$..
c0deb379:	d6a8 6ea1 7475 8757 1a03 e571 9ee4 81e8     ...nutW...q.....
c0deb389:	a51c 6d35 e121 4552 6df0 68a0 81e5 e421     ..5m!.RE.m.h..!.
c0deb399:	7a8e b29a b5b6 fe62 b9c7 9d56 0d87 0613     .z....b...V.....
c0deb3a9:	af06 914c 1ca1 a552 2ff0 d813 5afe b454     ..L...R../...ZT.
c0deb3b9:	1c7c 182c 2b21 af5d aeba 2b1c eebd 4912     |.,.!+]....+...I
c0deb3c9:	4109 9278 9980 ab2d c86b 323d 89da 378d     .Ax...-.k.=2...7
c0deb3d9:	269f c51f 0648 77d6 c318 c03e 83db 4a6a     .&..H..w..>...jJ
c0deb3e9:	6d09 ec4d fda9 9380 560e 2ad6 81df fbe3     .mM......V.*....
c0deb3f9:	e915 7080 cb41 abdb 03a5 873c 4181 1b21     ...pA.....<..A!.
c0deb409:	3635 947b 712f 4ce9 9966 2674 a642 a2c6     56{./q.Lf.t&B...
c0deb419:	4ac1 1ed8 a810 bdc8 e8a2 f4f6 3a5f 3016     .J.........._:.0
c0deb429:	3320 7176 9dbc 4581 631d c58b d1f2 ae0c      3vq...E.c......
c0deb439:	87d4 3756 933e bcc5 745d e8ae 19a2 8221     ..V7>...]t....!.
c0deb449:	b73e 9c7d fb0a 8cd2 1529 bd9c cbaa 3c19     >.}.....)......<
c0deb459:	541b 2c28 6a4c 5fb4 3cf2 21fa 0aa6 336b     .T(,Lj._.<.!..k3
c0deb469:	7a3f 4591 fcca 7e9f 3f62 8f0e d7fa a2eb     ?z.E...~b?......
c0deb479:	ed6c 85e8 2bc9 040f 8f5c 238d 4450 5216     l....+..\..#PD.R
c0deb489:	0b0a b004 7547 33f0 5884 cf70 774d 609d     ....Gu.3.Xp.Mw.`
c0deb499:	87dc 8037 3f0c f09f ba1b 8761 9bff b76c     ..7..?....a...l.
c0deb4a9:	9805 cd30 d383 e571 e6b9 fa29 2d43 243f     ..0...q...).C-?$
c0deb4b9:	0056 be2b 0946 db26 34ec 8c7a a3bf 23f6     V.+.F.&..4z....#
c0deb4c9:	7d1c a470 5018 60b0 60aa b30f 9688 6e1d     .}p..P.`.`.....n
c0deb4d9:	91c2 444a 5baf dc27 97f0 664e 6720 8644     ..JD.['...Nf gD.
c0deb4e9:	bd2f 81b6 909b 2c00 f4ff 872f 7ea3 7e1f     /......,../..~.~
c0deb4f9:	4980 2874 790f 3b2a c309 84e6 c64e 404c     .It(.y*;....N.L@
c0deb509:	411d a89d 9bb4 3fd7 435f eda8 4bc4 1116     .A.....?_C...K..
c0deb519:	e54a a27a bf51 fa34 6bf8 c358 f26d c88e     J.z.Q.4..kX.m...
c0deb529:	cd2f 738a 62ef c717 f854 ecb6 ac6c 9d92     /..s.b..T...l...
c0deb539:	b622 02ce 0fff 784a a997 1226 01ab 0551     ".....Jx..&...Q.
c0deb549:	a239 eb50 a925 a22e f73b 9a5c f237 4a67     9.P.%...;.\.7.gJ
c0deb559:	a4c0 ca10 8109 3305 44ac 6cca b034 a17c     .......3.D.l4.|.
c0deb569:	5828 ef55 e95d 2862 db18 7cc8 d0cc a992     (XU.].b(...|....
c0deb579:	4c8b ab7d a224 46c5 3eb4 5ef8 c1e9 25d9     .L}.$..F.>.^...%
c0deb589:	f92e b373 eb23 2d9f d5ac 00a6 1402 0991     ..s.#..-........
c0deb599:	9b66 ff88 e852 4b71 be69 0a77 db8d 90af     f...R.qKi.w.....
c0deb5a9:	9211 370f 83c5 cf26 ccab 87ed 3d52 d93c     ...7..&.....R=<.
c0deb5b9:	3901 a1c1 5d19 ad0d 514d dcbb cbc1 8cb8     .9...]..MQ......
c0deb5c9:	0531 197f da1b 1e3f b6b5 6f04 b90b df30     1.....?....o..0.
c0deb5d9:	7bc9 a58c ea05 daa4 f7a1 d647 1ef2 5217     .{........G....R
c0deb5e9:	1525 7a4f 6ec7 c8df 9621 7979 e246 e893     %.Oz.n..!.yyF...
c0deb5f9:	a7c8 88fb 58fa 923f ad9a e50f a80e f397     .....X?.........
c0deb609:	ac17 f6e9 7a36 92c2 db73 8ece d3cc 5875     ....6z..s.....uX
c0deb619:	344c df3a 1714 9b3d 255a b573 11ff 7705     L4:...=.Z%s....w
c0deb629:	fb2e fd03 21ba 267d c201 f609 aad3 c219     .....!}&........
c0deb639:	2258 c4c2 8b66 7427 6a8a 4b58 e425 b888     X"..f.'t.jXK%...
c0deb649:	d01b 3cb4 acf6 6c7b 35d5 c9a6 324e e69c     ...<..{l.5..N2..
c0deb659:	1dbc d658 3fec 80c9 dfd4 9442 634c 099d     ..X..?....B.Lc..
c0deb669:	ba2b 54db 14fd 4221 d9e5 72da 6e6c c1ff     +..T..!B...rln..
c0deb679:	6a6e 29dd 7677 6a03 5d24 99d4 f28d 2aa7     nj.)wv.j$].....*
c0deb689:	1530 cc9e fe49 7e86 adb8 27c0 5f60 8004     0...I..~...'`_..
c0deb699:	79c0 5aaa 8361 6d05 db6c dbe5 7c82 b986     .y.Za..ml....|..
c0deb6a9:	e926 e145 40ec 0425 eda6 d402 301a 56a4     &.E..@%......0.V
c0deb6b9:	0c2c 9755 e043 bb89 2ec7 298a f9d2 c8cf     ,.U.C......)....
c0deb6c9:	0a06 54c0 dba5 d907 b4c3 3b3e 67aa 8b7f     ...T......>;.g..
c0deb6d9:	c6e1 6459 5b4c ced9 20a2 4d2e 255b 4c8f     ..YdL[... .M[%.L
c0deb6e9:	4b1e 04a4 70df b2c4 945e 2fdc 0645 ced1     .K...p..^../E...
c0deb6f9:	ad9a bf21 d9af b208 ac5d 4b88 5b54 6dd9     ..!.....]..KT[.m
c0deb709:	e43e 54d5 6ff5 1237 9c02 3699 7abf e8db     >..T.o7....6.z..
c0deb719:	3397 9245 6b04 4264 23eb 5961 edef c1f7     .3E..kdB.#aY....
c0deb729:	193f 8c0b 41e4 a986 bea0 638c d7cb a3f5     ?....A.....c....
c0deb739:	cf67 4664 314b 2a6b 7027 17d1 1ad1 a4fe     g.dFK1k*'p......
c0deb749:	272f 67f7 f5ed 9a20 bdae d236 7754 cada     /'.g.. ...6.Tw..
c0deb759:	e086 bd32 e4d7 bdc7 052d 004a 99fb c79f     ..2.....-.J.....
c0deb769:	343e 4504 f2d8 a274 7a41 7bc0 832c a4d6     >4.E..t.Az.{,...
c0deb779:	4e26 af60 670e 3d19 e047 b043 26a8 c149     &N`..g.=G.C..&I.
c0deb789:	3a37 fa9d c829 2ba1 ea7a ef71 cf6c 37bf     7:..)..+z.q.l..7
c0deb799:	931e 71df fbae ebcf 5137 4235 9dd1 9bfd     ...q....7Q5B....
c0deb7a9:	f72c 4ffb 348e 0233 5456 7b3c b0e2 e482     ,..O.43.VT<{....
c0deb7b9:	189c 1f59 1c6e 5a3a 526c 213f d085 a360     ..Y.n.:ZlR?!..`.
c0deb7c9:	8711 23d2 5b84 880f 348a ff0d c62c 0bf5     ...#.[...4..,...
c0deb7d9:	15ac 52f7 8b0f b942 ddae f9d3 5be4 7e69     ...R..B......[i~
c0deb7e9:	b313 dc7f aa3d 7b81 2c24 7569 13ee a9c2     ....=..{$,iu....
c0deb7f9:	95b7 dd95 15bc 52bb d3da 165f edaa fb68     .......R.._...h.
c0deb809:	702b 6bdc fa83 01af 62e6 5ffe 8e48 5f69     +p.k.....b._H.i_
c0deb819:	12a9 fb3b 2cb8 3200 1e9b c676 62b2 84a2     ..;..,.2..v..b..
c0deb829:	5b20 ea55 e984 479f 3a9a ed65 1e58 e8ea      [U....G.:e.X...
c0deb839:	77da 3180 3c84 60c1 ff70 16af dd38 5fb5     .w.1.<.`p...8.._
c0deb849:	8c19 b204 f42d e46d 39f1 a6c4 aac4 9f88     ....-.m..9......
c0deb859:	40e1 dee9 7eb9 e5c1 3ed8 ac36 2974 d4d5     .@...~...>6.t)..
c0deb869:	332e 8d3c 779b b886 fc91 79fe 56ae eab4     .3<..w.....y.V..
c0deb879:	da8b e6b8 9b4f cec5 f35b 482b 0db2 5de7     ....O...[.+H...]
c0deb889:	470a 70e5 eab4 9064 bb89 0ba9 15f6 ed40     .G.p..d.......@.
c0deb899:	5aae 038b f57b 1091 b5fb 32cb 710d 5e59     .Z..{......2.qY^
c0deb8a9:	b01e e02c d39e 26c4 fa04 fb93 fa09 e5c1     ..,....&........
c0deb8b9:	0bde a566 8767 3022 4480 c1de 6cac d290     ..f.g."0.D...l..
c0deb8c9:	c811 e679 20cc 6001 177e b829 dc22 a9fa     ..y.. .`~.)."...
c0deb8d9:	c1a4 250a 54d3 02fb f420 5eab 3d9e 64ec     ...%.T.. ..^.=.d
c0deb8e9:	b804 f506 40fc 5ef1 3e66 16ac 02ba 3d92     .....@.^f>.....=
c0deb8f9:	a297 a5ac eff0 8eea 5589 eba3 28c3 a1cf     .........U...(..
c0deb909:	673c 811c 1185 524e 1fc2 777b 059d e7b6     <g....NR..{w....
c0deb919:	3360 7f73 1cd9 53ca 5566 b14e 91c4 0a0d     `3s....SfUN.....
c0deb929:	c533 96d4 2b65 bd2d 32fd 2381 599d 1cff     3...e+-..2.#.Y..
c0deb939:	6315 4781 b291 c1af 5e80 dcf9 0bf2 db49     .c.G.....^....I.
c0deb949:	f026 d647 d2b5 e7b3 d04a 161e 8735 ec7f     &.G.....J...5...
c0deb959:	243d c215 cf73 079e 3a8f 5203 a760 ef61     =$..s....:.R`.a.
c0deb969:	ae17 d735 906c 90b9 2a6e 6483 6078 e101     ..5.l...n*.dx`..
c0deb979:	f59e 2f94 db85 ea2e 2677 32c8 4857 5411     .../....w&.2WH.T
c0deb989:	1121 41fb 9eb7 d71e 2ab5 74b0 4534 c155     !..A.....*.t4EU.
c0deb999:	9f33 ea6d 4cd7 d081 2f2f 7de3 97ad cbbc     3.m..L..//.}....
c0deb9a9:	4635 9808 638a 4d49 2e3d d111 402f 1c98     5F...cIM=.../@..
c0deb9b9:	7eee 5e2e 8e43 bb80 972e 2866 8af9 b353     .~.^C.....f(..S.
c0deb9c9:	c227 596d de98 d71e addc 1d2c 0694 2daf     '.mY......,....-
c0deb9d9:	fc0a 9438 f743 6e70 ad67 ab5d b907 258a     ..8.C.png.]....%
c0deb9e9:	e826 782b 77ed 2cfa b07a d8d9 e96f b3b2     &.+x.w.,z...o...
c0deb9f9:	c213 c09e 0da2 d931 7c9e 88eb a6b4 891a     ......1..|......
c0deba09:	9f3c 6389 f989 8c16 21d5 1fe8 4c4c 246e     <..c.....!..LLn$
c0deba19:	fbdb 6a31 5e68 a4f8 9ea5 1078 1abc 09f9     ..1jh^....x.....
c0deba29:	fd00 23dd 114b b7d1 f37f 5b59 c974 574a     ...#K.....Y[t.JW
c0deba39:	b7a9 46ca c605 a426 0ae7 dea1 1e72 c2db     ...F..&.....r...
c0deba49:	f133 ba3c e9a0 6a19 db78 c9d6 48d3 b727     3.<....jx....H'.
c0deba59:	744c 379a 37b3 fff5 dfa2 8f7b 3b0e 216c     Lt.7.7....{..;l!
c0deba69:	0632 680e 6913 d8e9 9fab dc49 7869 85cd     2..h.i....I.ix..
c0deba79:	2c29 c9f1 b108 cdba 75cd fa85 837f d163     ),.......u....c.
c0deba89:	c439 6013 21d5 a442 04e3 dadc 1a3b d7b0     9..`.!B.....;...
c0deba99:	dcee 09e9 74e0 1962 4f6c 9c45 dc5e 4897     .....tb.lOE.^..H
c0debaa9:	b72c 7a64 d082 0ce7 9e9f 83f8 7115 fb41     ,.dz.........qA.
c0debab9:	7365 bf15 6cf8 4227 1887 811b bf6c 35f5     es...l'B....l..5
c0debac9:	aa10 8fd9 2ac9 2ce6 1172 7243 da40 44d8     .....*.,r.Cr@..D
c0debad9:	6d41 8f85 6f2b f8f9 8d5b 832a d172 c4c9     Am..+o..[.*.r...
c0debae9:	e339 cfee a771 29ae f534 cf57 f12a 80ee     9...q..)4.W.*...
c0debaf9:	5497 f2ca 5828 6b81 ea84 4ac7 6e64 4682     .T..(X.k...Jdn.F
c0debb09:	923f 65e6 834a e9eb dd85 b5ba afe9 c040     ?..eJ.........@.
c0debb19:	8302 6c53 acd0 c992 0f6e 7cec a222 4fd2     ..Sl....n..|"..O
c0debb29:	4c1a 4fef 6f36 07a8 b872 945b 9484 c32b     .L.O6o..r.[...+.
c0debb39:	79b5 3acd a936 25ef 99e7 9a9b 1f9d c923     .y.:6..%......#.
c0debb49:	e12f 05d6 67af 6042 9eae cf13 ee71 6a8f     /....gB`....q..j
c0debb59:	eb3b e3f4 4eca bad0 4c39 5e69 259d ab2c     ;....N..9Li^.%,.
c0debb69:	5f14 e074 0879 4588 102e 4424 d2c8 e28b     ._t.y..E..$D....
c0debb79:	2d19 2c39 c823 691a a635 7b69 3d80 2d5f     .-9,#..i5.i{.=_-
c0debb89:	5d29 458c 3d44 0abc 8849 e52d 923c 95a2     )].ED=..I.-.<...
c0debb99:	f6b4 ba7c 492c 45a9 f3de f7a9 531d 5d41     ..|.,I.E.....SA]
c0debba9:	100f 7e61 f6b0 9591 2e82 1805 06ad c4ef     ..a~............
c0debbb9:	335d 4ab1 f968 913a ab49 f8b0 b19e 439e     ]3.Jh.:.I......C
c0debbc9:	6c2d 8bf4 9181 2498 6cfb d3bb b125 b64d     -l.....$.l..%.M.
c0debbd9:	d2f4 ed9e b369 9cb4 45dd 53b7 32aa 3ecb     ....i....E.S.2.>
c0debbe9:	692c 551a e919 c8c0 499d 6b6d 2260 c89b     ,i.U.....Imk`"..
c0debbf9:	6452 7345 5fb4 b00f 9a8b b83b 01dd 6fcc     RdEs._....;....o
c0debc09:	503e 4a34 9edf 1870 4f1e f01d 7db8 29c8     >P4J..p..O...}.)
c0debc19:	9c39 e29e dbba 132e 17c6 f728 a79d 97e6     9.........(.....
c0debc29:	5916 511f 44a5 ee64 e9ff 2ac4 1ef2 8c6c     .Y.Q.Dd....*..l.
c0debc39:	a4c2 9223 1a12 6a1e d4fd 5638 989e 0fd9     ..#....j..8V....
c0debc49:	4719 0235 ed78 4a8b 9cc2 4888 b36d 9d25     .G5.x..J...Hm.%.
c0debc59:	0a8c 5e1e 814b 93ef 6cca ea9c 8f8c 7a10     ...^K....l.....z
c0debc69:	9e3d 325c cc52 dc09 ef78 a180 386f 0c15     =.\2R...x...o8..
c0debc79:	4479 fbe8 f227 9cf2 cdd5 e43a 2b8b b919     yD..'.....:..+..
c0debc89:	3900 c1e7 e087 4fb6 7515 5a7e 0bc9 72f4     .9.....O.u~Z...r
c0debc99:	6a9d 62d6 a78e a8b4 4964 e892 0a64 7df6     .j.b....dI..d..}
c0debca9:	8132 c144 ff2f abac 01ff 077f c826 426f     2.D./.......&.oB
c0debcb9:	aaec 43d7 ff5e 0f27 2746 f043 6e12 befa     ...C^.'.F'C..n..
c0debcc9:	9a28 581a 1deb 07c1 fa17 69c7 08b5 6d15     (..X.......i...m
c0debcd9:	1d58 638b d8ae 69fe e002 cd8b 9edf 9533     X..c...i......3.
c0debce9:	7b05 cefb 7faa 519d fe10 95b2 2e92 30a7     .{.....Q.......0
c0debcf9:	a706 250b 0553 d67e 3734 ca24 bfc8 a94e     ...%S.~.47$...N.
c0debd09:	1825 128b 7e75 d881 03e1 d552 b5a6 a640     %...u~....R...@.
c0debd19:	3717 57b0 34aa b8af 568c a1e6 107f e421     .7.W.4...V....!.
c0debd29:	6a1a f514 a8b7 4efa 0ad5 2460 bb4f bca4     .j.....N..`$O...
c0debd39:	7054 cde4 a74c 26a3 aed8 6486 19bc 7e51     Tp..L..&...d..Q~
c0debd49:	ed06 4452 e6e5 5ce5 7f98 95e9 28cf 6d1e     ..RD...\.....(.m
c0debd59:	3e87 5087 0fd5 1328 3df1 0966 8f52 8908     .>.P..(..=f.R...
c0debd69:	403d 065c 981d 6d7d e724 f805 6173 4985     =@\...}m$...sa.I
c0debd79:	948f ee54 1c64 53a2 7331 315e b883 b592     ..T.d..S1s^1....
c0debd89:	be1c 5e94 6202 9a5d 0ff4 295a a345 fc11     ...^.b]...Z)E...
c0debd99:	2495 e06a ce7c 078c 2677 bc5f fa01 deca     .$j.|...w&_.....
c0debda9:	0e01 9927 e001 a0b4 598f 5a0e b644 7b66     ..'......Y.ZD.f{
c0debdb9:	603e c78b 41d2 911e c690 8a53 6e91 98a2     >`...A....S..n..
c0debdc9:	c21e 1ee8 84ba 52f4 ae7a 3ff4 a92e 3e8d     .......Rz..?...>
c0debdd9:	f8dc 53f7 05c7 4ba5 8453 261c 1d4b 5e8d     ...S...KS..&K..^

c0debde9 <mds_matrix>:
c0debde9:	c70b 43bd 0f47 1e27 56dd 7511 9c95 06ad     ...CG.'..V.u....
c0debdf9:	21bb 4fd6 14a3 78a7 3787 e662 b4ff caa5     .!.O...x.7b.....
c0debe09:	a321 a43b d3eb f4df 650b 6b4a 0c39 8fb2     !.;......eJk9...
c0debe19:	ca9e 025e 3188 40b9 ea79 b943 1b7f fcff     ..^..1.@y.C.....
c0debe29:	8531 bdad 32c9 5210 e02a 0ecc 26ab 70cc     1....2.R*....&.p
c0debe39:	a177 124f f163 4c71 e8dc cde4 3229 b108     w.O.c.qL....)2..
c0debe49:	4c16 51d4 6538 7025 04ac e342 de5c aa96     .L.Q8e%p..B.\...
c0debe59:	b24f 864c 3b98 b2b1 62b1 5807 caf5 18f3     O.L..;...b.X....
c0debe69:	de25 2716 1aec 5457 c0e9 69db b069 16cc     %..'..WT...ii...
c0debe79:	8fa0 2257 1f5c 9dfd 33b8 c2ab f504 2b61     ..W"\....3....a+
c0debe89:	691f 930f cc72 a6a3 3045 8946 7c36 0c2e     .i..r...E0F.6|..
c0debe99:	3282 c641 d58d ebea be67 f304 6851 4f0a     .2A.....g...Qh.O
c0debea9:	c306 4464 a30a cfb6 6117 715d a814 dd7b     ..dD.....a]q..{.
c0debeb9:	9115 e67e d6c2 84ec 3351 de6a 4aad a7b5     ..~.....Q3j..J..
c0debec9:	0b25 7d79 ca72 bdb6 47cf 0852 e651 e0d9     %.y}r....GR.Q...
c0debed9:	9269 f57f a09c 8c03 fa81 c8b3 ecf2 6122     i............."a
c0debee9:	5725 0f46 6335 3aba c4a6 26a8 86ba 3739     %WF.5c.:...&..97
c0debef9:	2971 efac 252f b189 2d30 8bcc ee61 bfa7     q)../%..0-..a...
c0debf09:	d4d4                                         ...

c0debf0c <TESTNET_IV>:
c0debf0c:	323e 1837 feb3 3d2a 276a 0789 a2af fca9     >27...*=j'......
c0debf1c:	177d 3d93 f71e 65c6 0750 62b9 c8b8 9253     }..=...eP..b..S.
c0debf2c:	0a37 8b1c 3748 a540 e5cc 0cc5 cb92 b964     7...H7@.......d.
c0debf3c:	af64 487d 24a0 548c 03d1 6a2c e43d 994e     d.}H.$.T..,j=.N.
c0debf4c:	1c07 0333 2df0 1a91 aeff 48fb 719e 514b     ..3..-.....H.qKQ
c0debf5c:	e1d7 318e 2db3 9c83 3dfd 3355 c146 360d     ...1.-...=U3F..6

c0debf6c <MAINNET_IV>:
c0debf6c:	c237 ad22 0932 7047 d1db 6437 b0c7 52a0     7.".2.Gp..7d...R
c0debf7c:	6cfd 0478 3847 4b88 d633 d91d a4a9 9496     .lx.G8.K3.......
c0debf8c:	b810 53df 1a5d 92de 67db cf28 56f8 f7f1     ...S]....g(..V..
c0debf9c:	a088 e429 1643 76ad 71d9 5510 9cc6 33d3     ..).C..v.q.U...3
c0debfac:	6100 9438 c2aa 50c3 1ec0 8e37 3a01 59d5     .a8....P..7..:.Y
c0debfbc:	1eb8 dc87 63ed f1d7 6df5 90a9 218a e4e6     .....c...m...!..

c0debfcc <ux_sign_tx_done_flow_done_step_val>:
c0debfcc:	a4a0 c0de 8d5e c0de                         ....^...

c0debfd4 <ux_sign_tx_done_flow_done_step>:
c0debfd4:	5311 c0de bfcc c0de 0000 0000 0000 0000     .S..............

c0debfe4 <ux_sign_tx_done_flow>:
c0debfe4:	bfd4 c0de ffff ffff                         ........

c0debfec <ux_sign_tx_flow_topic_step_val>:
c0debfec:	a440 c0de 8d6a c0de 8ce4 c0de               @...j.......

c0debff8 <ux_sign_tx_flow_topic_step>:
c0debff8:	8349 c0de bfec c0de 0000 0000 0000 0000     I...............

c0dec008 <ux_sign_tx_flow_network_step_val>:
c0dec008:	8d2b c0de 8d49 c0de                         +...I...

c0dec010 <ux_sign_tx_flow_network_step>:
c0dec010:	7cbd c0de c008 c0de 0000 0000 0000 0000     .|..............

c0dec020 <ux_sign_tx_flow_type_step_val>:
c0dec020:	8d1f c0de 0885 da7a                         ......z.

c0dec028 <ux_sign_tx_flow_type_step>:
c0dec028:	7cbd c0de c020 c0de 0000 0000 0000 0000     .|.. ...........

c0dec038 <ux_sign_tx_flow_from_step_val>:
c0dec038:	0890 da7a 0754 da7a                         ..z.T.z.

c0dec040 <ux_sign_tx_flow_from_step>:
c0dec040:	8021 c0de c038 c0de 0000 0000 0000 0000     !...8...........

c0dec050 <ux_sign_tx_flow_to_step_val>:
c0dec050:	089a da7a 078c da7a                         ..z...z.

c0dec058 <ux_sign_tx_flow_to_step>:
c0dec058:	8021 c0de c050 c0de 0000 0000 0000 0000     !...P...........

c0dec068 <ux_sign_tx_flow_amount_step_val>:
c0dec068:	8cfc c0de 07c4 da7a                         ......z.

c0dec070 <ux_sign_tx_flow_amount_step>:
c0dec070:	7cbd c0de c068 c0de 0000 0000 0000 0000     .|..h...........

c0dec080 <ux_sign_tx_flow_fee_step_val>:
c0dec080:	8d0f c0de 07e4 da7a                         ......z.

c0dec088 <ux_sign_tx_flow_fee_step>:
c0dec088:	7cbd c0de c080 c0de 0000 0000 0000 0000     .|..............

c0dec098 <ux_sign_tx_flow_total_step_val>:
c0dec098:	8d39 c0de 0804 da7a                         9.....z.

c0dec0a0 <ux_sign_tx_flow_total_step>:
c0dec0a0:	7cbd c0de c098 c0de 0000 0000 0000 0000     .|..............

c0dec0b0 <ux_sign_tx_flow_nonce_step_val>:
c0dec0b0:	8d63 c0de 0824 da7a                         c...$.z.

c0dec0b8 <ux_sign_tx_flow_nonce_step>:
c0dec0b8:	7cbd c0de c0b0 c0de 0000 0000 0000 0000     .|..............

c0dec0c8 <ux_sign_tx_flow_valid_until_step_val>:
c0dec0c8:	8cd8 c0de 0844 da7a                         ....D.z.

c0dec0d0 <ux_sign_tx_flow_valid_until_step>:
c0dec0d0:	7cbd c0de c0c8 c0de 0000 0000 0000 0000     .|..............

c0dec0e0 <ux_sign_tx_flow_memo_step_val>:
c0dec0e0:	8d82 c0de 0864 da7a                         ....d.z.

c0dec0e8 <ux_sign_tx_flow_memo_step>:
c0dec0e8:	8021 c0de c0e0 c0de 0000 0000 0000 0000     !...............

c0dec0f8 <ux_sign_tx_flow_approve_step_validate_step>:
c0dec0f8:	5405 c0de 0000 0000 0000 0000 0000 0000     .T..............

c0dec108 <ux_sign_tx_flow_approve_step_validate>:
c0dec108:	c0f8 c0de ffff ffff                         ........

c0dec110 <ux_sign_tx_flow_approve_step_val>:
c0dec110:	a4a0 c0de 8cc0 c0de                         ........

c0dec118 <ux_sign_tx_flow_approve_step>:
c0dec118:	8219 c0de c110 c0de c108 c0de 0000 0000     ................

c0dec128 <ux_sign_tx_flow_reject_step_validate_step>:
c0dec128:	5419 c0de 0000 0000 0000 0000 0000 0000     .T..............

c0dec138 <ux_sign_tx_flow_reject_step_validate>:
c0dec138:	c128 c0de ffff ffff                         (.......

c0dec140 <ux_sign_tx_flow_reject_step_val>:
c0dec140:	a3e0 c0de 8cf5 c0de                         ........

c0dec148 <ux_sign_tx_flow_reject_step>:
c0dec148:	8219 c0de c140 c0de c138 c0de 0000 0000     ....@...8.......

c0dec158 <ux_sign_tx_flow_testnet_payment_0_0>:
c0dec158:	bff8 c0de c010 c0de c028 c0de c040 c0de     ........(...@...
c0dec168:	c058 c0de c070 c0de c088 c0de c0a0 c0de     X...p...........
c0dec178:	c0b8 c0de c118 c0de c148 c0de ffff ffff     ........H.......

c0dec188 <ux_sign_tx_flow_testnet_payment_0_memo>:
c0dec188:	bff8 c0de c010 c0de c028 c0de c040 c0de     ........(...@...
c0dec198:	c058 c0de c070 c0de c088 c0de c0a0 c0de     X...p...........
c0dec1a8:	c0b8 c0de c0e8 c0de c118 c0de c148 c0de     ............H...
c0dec1b8:	ffff ffff                                   ....

c0dec1bc <ux_sign_tx_flow_testnet_payment_valid_until_0>:
c0dec1bc:	bff8 c0de c010 c0de c028 c0de c040 c0de     ........(...@...
c0dec1cc:	c058 c0de c070 c0de c088 c0de c0a0 c0de     X...p...........
c0dec1dc:	c0b8 c0de c0d0 c0de c118 c0de c148 c0de     ............H...
c0dec1ec:	ffff ffff                                   ....

c0dec1f0 <ux_sign_tx_flow_testnet_payment_valid_until_memo>:
c0dec1f0:	bff8 c0de c010 c0de c028 c0de c040 c0de     ........(...@...
c0dec200:	c058 c0de c070 c0de c088 c0de c0a0 c0de     X...p...........
c0dec210:	c0b8 c0de c0d0 c0de c0e8 c0de c118 c0de     ................
c0dec220:	c148 c0de ffff ffff                         H.......

c0dec228 <ux_sign_tx_flow_testnet_delegation_0_0>:
c0dec228:	bff8 c0de c010 c0de c028 c0de c040 c0de     ........(...@...
c0dec238:	c058 c0de c088 c0de c0b8 c0de c118 c0de     X...............
c0dec248:	c148 c0de ffff ffff                         H.......

c0dec250 <ux_sign_tx_flow_testnet_delegation_0_memo>:
c0dec250:	bff8 c0de c010 c0de c028 c0de c040 c0de     ........(...@...
c0dec260:	c058 c0de c088 c0de c0b8 c0de c0e8 c0de     X...............
c0dec270:	c118 c0de c148 c0de ffff ffff               ....H.......

c0dec27c <ux_sign_tx_flow_testnet_delegation_valid_until_0>:
c0dec27c:	bff8 c0de c010 c0de c028 c0de c040 c0de     ........(...@...
c0dec28c:	c058 c0de c088 c0de c0b8 c0de c0d0 c0de     X...............
c0dec29c:	c118 c0de c148 c0de ffff ffff               ....H.......

c0dec2a8 <ux_sign_tx_flow_testnet_delegation_valid_until_memo>:
c0dec2a8:	bff8 c0de c010 c0de c028 c0de c040 c0de     ........(...@...
c0dec2b8:	c058 c0de c088 c0de c0b8 c0de c0d0 c0de     X...............
c0dec2c8:	c0e8 c0de c118 c0de c148 c0de ffff ffff     ........H.......

c0dec2d8 <ux_sign_tx_flow_mainnet_payment_0_0>:
c0dec2d8:	bff8 c0de c028 c0de c040 c0de c058 c0de     ....(...@...X...
c0dec2e8:	c070 c0de c088 c0de c0a0 c0de c0b8 c0de     p...............
c0dec2f8:	c118 c0de c148 c0de ffff ffff               ....H.......

c0dec304 <ux_sign_tx_flow_mainnet_payment_0_memo>:
c0dec304:	bff8 c0de c028 c0de c040 c0de c058 c0de     ....(...@...X...
c0dec314:	c070 c0de c088 c0de c0a0 c0de c0b8 c0de     p...............
c0dec324:	c0e8 c0de c118 c0de c148 c0de ffff ffff     ........H.......

c0dec334 <ux_sign_tx_flow_mainnet_payment_valid_until_0>:
c0dec334:	bff8 c0de c028 c0de c040 c0de c058 c0de     ....(...@...X...
c0dec344:	c070 c0de c088 c0de c0a0 c0de c0b8 c0de     p...............
c0dec354:	c0d0 c0de c118 c0de c148 c0de ffff ffff     ........H.......

c0dec364 <ux_sign_tx_flow_mainnet_payment_valid_until_memo>:
c0dec364:	bff8 c0de c028 c0de c040 c0de c058 c0de     ....(...@...X...
c0dec374:	c070 c0de c088 c0de c0a0 c0de c0b8 c0de     p...............
c0dec384:	c0d0 c0de c0e8 c0de c118 c0de c148 c0de     ............H...
c0dec394:	ffff ffff                                   ....

c0dec398 <ux_sign_tx_flow_mainnet_delegation_0_0>:
c0dec398:	bff8 c0de c028 c0de c040 c0de c058 c0de     ....(...@...X...
c0dec3a8:	c088 c0de c0b8 c0de c118 c0de c148 c0de     ............H...
c0dec3b8:	ffff ffff                                   ....

c0dec3bc <ux_sign_tx_flow_mainnet_delegation_0_memo>:
c0dec3bc:	bff8 c0de c028 c0de c040 c0de c058 c0de     ....(...@...X...
c0dec3cc:	c088 c0de c0b8 c0de c0e8 c0de c118 c0de     ................
c0dec3dc:	c148 c0de ffff ffff                         H.......

c0dec3e4 <ux_sign_tx_flow_mainnet_delegation_valid_until_0>:
c0dec3e4:	bff8 c0de c028 c0de c040 c0de c058 c0de     ....(...@...X...
c0dec3f4:	c088 c0de c0b8 c0de c0d0 c0de c118 c0de     ................
c0dec404:	c148 c0de ffff ffff                         H.......

c0dec40c <ux_sign_tx_flow_mainnet_delegation_valid_until_memo>:
c0dec40c:	bff8 c0de c028 c0de c040 c0de c058 c0de     ....(...@...X...
c0dec41c:	c088 c0de c0b8 c0de c0d0 c0de c0e8 c0de     ................
c0dec42c:	c118 c0de c148 c0de ffff ffff 6544 656c     ....H.......Dele
c0dec43c:	6167 6974 6e6f 0000 6544 656c 6167 6574     gation..Delegate
c0dec44c:	0000 0000 6552 6563 7669 7265 0000 0000     ....Receiver....
c0dec45c:	6544 656c 6167 6f74 0072 d4d4               Delegator...

c0dec468 <ux_sign_tx_flow>:
c0dec468:	c158 c0de c188 c0de c1bc c0de c1f0 c0de     X...............
c0dec478:	c228 c0de c250 c0de c27c c0de c2a8 c0de     (...P...|.......
c0dec488:	c2d8 c0de c304 c0de c334 c0de c364 c0de     ........4...d...
c0dec498:	c398 c0de c3bc c0de c3e4 c0de c40c c0de     ................

c0dec4a8 <.Lstr>:
c0dec4a8:	6150 6d79 6e65 0074 0000 0000               Payment.....

c0dec4b4 <.Lstr.20>:
c0dec4b4:	6553 646e 7265 0000 0000                     Sender.....

c0dec4bf <SW_INTERNAL>:
c0dec4bf:	006f                                        o.

c0dec4c1 <SW_BUSY>:
c0dec4c1:	0190                                        ..

c0dec4c3 <SW_WRONG_LENGTH>:
c0dec4c3:	0067                                        g.

c0dec4c5 <SW_PROOF_OF_PRESENCE_REQUIRED>:
c0dec4c5:	8569                                        i.

c0dec4c7 <.L.str>:
c0dec4c7:	d0f1 0000 0000                              ......

c0dec4cd <SW_BAD_KEY_HANDLE>:
c0dec4cd:	806a                                        j.

c0dec4cf <U2F_VERSION>:
c0dec4cf:	3255 5f46 3256 0090                         U2F_V2..

c0dec4d7 <INFO>:
c0dec4d7:	0901 0090                                   ....

c0dec4db <SW_UNKNOWN_CLASS>:
c0dec4db:	006e                                        n.

c0dec4dd <SW_UNKNOWN_INSTRUCTION>:
c0dec4dd:	006d                                         m..

c0dec4e0 <USBD_HID_Desc_fido>:
c0dec4e0:	2109 0111 0121 2222 d400 d4d4               .!..!.""....

c0dec4ec <USBD_HID_Desc>:
c0dec4ec:	2109 0111 0100 2222                          .!...."".

c0dec4f5 <HID_ReportDesc_fido>:
c0dec4f5:	d006 09f1 a101 0901 1503 2600 00ff 0875     ...........&..u.
c0dec505:	4095 0881 0409 0015 ff26 7500 9508 9140     .@......&..u..@.
c0dec515:	c008                                        ..

c0dec517 <HID_ReportDesc>:
c0dec517:	a006 09ff a101 0901 1503 2600 00ff 0875     ...........&..u.
c0dec527:	4095 0881 0409 0015 ff26 7500 9508 9140     .@......&..u..@.
c0dec537:	c008                                        ..

c0dec539 <C_webusb_url_descriptor>:
c0dec539:	0317 7701 7777 6c2e 6465 6567 7772 6c61     ...www.ledgerwal
c0dec549:	656c 2e74 6f63                               let.com

c0dec550 <C_usb_bos>:
c0dec550:	0f05 0039 1802 0510 3800 08b6 a934 a009     ..9......8..4...
c0dec560:	8b47 a0fd 8876 b615 0065 1e01 1c01 0510     G...v...e.......
c0dec570:	df00 dd60 89d8 c745 9c4c 65d2 9e9d 8a64     ..`...E.L..e..d.
c0dec580:	009f 0300 b206 7700 d400 d4d4               .......w....

c0dec58c <HID_Desc>:
c0dec58c:	703d c0de 704d c0de 705d c0de 706d c0de     =p..Mp..]p..mp..
c0dec59c:	707d c0de 708d c0de 709d c0de 70ad c0de     }p...p...p...p..

c0dec5ac <C_winusb_string_descriptor>:
c0dec5ac:	0312 004d 0053 0046 0054 0031 0030 0030     ..M.S.F.T.1.0.0.
c0dec5bc:	0077                                        w.

c0dec5be <C_winusb_guid>:
c0dec5be:	0092 0000 0100 0005 0001 0088 0000 0007     ................
c0dec5ce:	0000 002a 0044 0065 0076 0069 0063 0065     ..*.D.e.v.i.c.e.
c0dec5de:	0049 006e 0074 0065 0072 0066 0061 0063     I.n.t.e.r.f.a.c.
c0dec5ee:	0065 0047 0055 0049 0044 0073 0000 0050     e.G.U.I.D.s...P.
c0dec5fe:	0000 007b 0031 0033 0064 0036 0033 0034     ..{.1.3.d.6.3.4.
c0dec60e:	0030 0030 002d 0032 0043 0039 0037 002d     0.0.-.2.C.9.7.-.
c0dec61e:	0030 0030 0030 0034 002d 0030 0030 0030     0.0.0.4.-.0.0.0.
c0dec62e:	0030 002d 0034 0063 0036 0035 0036 0034     0.-.4.c.6.5.6.4.
c0dec63e:	0036 0037 0036 0035 0037 0032 007d 0000     6.7.6.5.7.2.}...
	...

c0dec650 <C_winusb_request_descriptor>:
c0dec650:	000a 0000 0000 0603 00b2 0008 0001 0000     ................
c0dec660:	00a8 0008 0002 0002 00a0 0014 0003 4957     ..............WI
c0dec670:	554e 4253 0000 0000 0000 0000 0000 0084     NUSB............
c0dec680:	0004 0007 002a 0044 0065 0076 0069 0063     ....*.D.e.v.i.c.
c0dec690:	0065 0049 006e 0074 0065 0072 0066 0061     e.I.n.t.e.r.f.a.
c0dec6a0:	0063 0065 0047 0055 0049 0044 0073 0000     c.e.G.U.I.D.s...
c0dec6b0:	0050 007b 0043 0045 0038 0030 0039 0032     P.{.C.E.8.0.9.2.
c0dec6c0:	0036 0034 002d 0034 0042 0032 0034 002d     6.4.-.4.B.2.4.-.
c0dec6d0:	0034 0045 0038 0031 002d 0041 0038 0042     4.E.8.1.-.A.8.B.
c0dec6e0:	0032 002d 0035 0037 0045 0044 0030 0031     2.-.5.7.E.D.0.1.
c0dec6f0:	0044 0035 0038 0030 0045 0031 007d 0000     D.5.8.0.E.1.}...
c0dec700:	0000 d4d4                                   ....

c0dec704 <USBD_HID>:
c0dec704:	6dd5 c0de 6e07 c0de 6d41 c0de 0000 0000     .m...n..Am......
c0dec714:	0000 0000 6f31 c0de 6f49 c0de 0000 0000     ....1o..Io......
	...
c0dec72c:	720d c0de 720d c0de 720d c0de 721d c0de     .r...r...r...r..

c0dec73c <USBD_U2F>:
c0dec73c:	6eb1 c0de 6e07 c0de 6d41 c0de 0000 0000     .n...n..Am......
c0dec74c:	0000 0000 6ee5 c0de 6f01 c0de 0000 0000     .....n...o......
	...
c0dec764:	720d c0de 720d c0de 720d c0de 721d c0de     .r...r...r...r..

c0dec774 <USBD_WEBUSB>:
c0dec774:	6f9d c0de 6fc9 c0de 6fcd c0de 0000 0000     .o...o...o......
c0dec784:	0000 0000 6fd1 c0de 6fe9 c0de 0000 0000     .....o...o......
	...
c0dec79c:	720d c0de 720d c0de 720d c0de 721d c0de     .r...r...r...r..

c0dec7ac <USBD_DeviceDesc>:
c0dec7ac:	0112 0210 0000 4000 2c97 4015 0201 0201     .......@.,.@....
c0dec7bc:	0103                                        ..

c0dec7be <USBD_LangIDDesc>:
c0dec7be:	0304 0409                                   ....

c0dec7c2 <USBD_MANUFACTURER_STRING>:
c0dec7c2:	030e 004c 0065 0064 0067 0065 0072          ..L.e.d.g.e.r.

c0dec7d0 <USBD_PRODUCT_FS_STRING>:
c0dec7d0:	030e 004e 0061 006e 006f 0020 0058          ..N.a.n.o. .X.

c0dec7de <USB_SERIAL_STRING>:
c0dec7de:	030a 0030 0030 0030 0031                    ..0.0.0.1.

c0dec7e8 <C_winusb_wcid>:
c0dec7e8:	0028 0000 0100 0004 0001 0000 0000 0000     (...............
c0dec7f8:	0102 4957 554e 4253 0000 0000 0000 0000     ..WINUSB........
	...

c0dec810 <USBD_CfgDesc>:
c0dec810:	0209 0060 0103 c002 0932 0004 0200 0003     ..`.....2.......
c0dec820:	0200 2109 0111 0100 2222 0700 8205 4003     ...!...."".....@
c0dec830:	0100 0507 0302 0040 0901 0104 0200 0103     ......@.........
c0dec840:	0201 2109 0111 0121 2222 0700 8105 4003     ...!..!."".....@
c0dec850:	0100 0507 0301 0040 0901 0204 0200 ffff     ......@.........
c0dec860:	02ff 0507 0383 0040 0701 0305 4003 0100     ......@......@..

c0dec870 <USBD_DeviceQualifierDesc>:
c0dec870:	060a 0200 0000 4000 0001                    .......@..

c0dec87a <B58_ALPHABET>:
c0dec87a:	3231 3433 3635 3837 4139 4342 4544 4746     123456789ABCDEFG
c0dec88a:	4a48 4c4b 4e4d 5150 5352 5554 5756 5958     HJKLMNPQRSTUVWXY
c0dec89a:	615a 6362 6564 6766 6968 6b6a 6e6d 706f     Zabcdefghijkmnop
c0dec8aa:	7271 7473 7675 7877 7a79                    qrstuvwxyz

c0dec8b4 <BASE58_TABLE>:
c0dec8b4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
c0dec8c4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
c0dec8d4:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
c0dec8e4:	00ff 0201 0403 0605 0807 ffff ffff ffff     ................
c0dec8f4:	09ff 0b0a 0d0c 0f0e ff10 1211 1413 ff15     ................
c0dec904:	1716 1918 1b1a 1d1c 1f1e ff20 ffff ffff     .......... .....
c0dec914:	21ff 2322 2524 2726 2928 2b2a 2cff 2e2d     .!"#$%&'()*+.,-.
c0dec924:	302f 3231 3433 3635 3837 ff39 ffff ffff     /0123456789.....

c0dec934 <ux_layout_bb_elements>:
c0dec934:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0dec944:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0dec954:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0dec964:	ffff 00ff 0000 0000 0000 0000 a458 c0de     ............X...
c0dec974:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0dec984:	ffff 00ff 0000 0000 0000 0000 a470 c0de     ............p...
c0dec994:	1007 0006 001d 0074 0020 0000 0000 0000     ......t. .......
c0dec9a4:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0dec9b4:	1107 0006 002b 0074 0020 0000 0000 0000     ....+.t. .......
c0dec9c4:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0dec9d4 <ux_layout_paging_elements>:
c0dec9d4:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0dec9e4:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0dec9f4:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0deca04:	ffff 00ff 0000 0000 0000 0000 a458 c0de     ............X...
c0deca14:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0deca24:	ffff 00ff 0000 0000 0000 0000 a470 c0de     ............p...
c0deca34:	1007 0000 000f 0080 000c 0000 0000 0000     ................
c0deca44:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0deca54:	1107 0007 001d 0072 000c 0000 0000 0000     ......r.........
c0deca64:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0deca74:	1207 0007 002b 0072 000c 0000 0000 0000     ....+.r.........
c0deca84:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0deca94:	1307 0007 0039 0072 000c 0000 0000 0000     ....9.r.........
c0decaa4:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................

c0decab4 <ux_layout_pb_elements>:
c0decab4:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0decac4:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0decad4:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0decae4:	ffff 00ff 0000 0000 0000 0000 a458 c0de     ............X...
c0decaf4:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0decb04:	ffff 00ff 0000 0000 0000 0000 a470 c0de     ............p...
c0decb14:	1005 0039 0011 000e 000e 0000 0000 0000     ..9.............
c0decb24:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0decb34:	1107 0000 002c 0080 0020 0000 0000 0000     ....,... .......
c0decb44:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0decb54 <ux_layout_pbb_elements>:
c0decb54:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0decb64:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0decb74:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0decb84:	ffff 00ff 0000 0000 0000 0000 a458 c0de     ............X...
c0decb94:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0decba4:	ffff 00ff 0000 0000 0000 0000 a470 c0de     ............p...
c0decbb4:	0f05 0039 000a 000e 000e 0000 0000 0000     ..9.............
c0decbc4:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0decbd4:	1007 0006 0025 0074 0020 0000 0000 0000     ....%.t. .......
c0decbe4:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0decbf4:	1107 0006 0033 0074 0020 0000 0000 0000     ....3.t. .......
c0decc04:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0decc14 <_etext>:
c0decc14:	d4d4      	bmi.n	c0decbc0 <ux_layout_pbb_elements+0x6c>
c0decc16:	d4d4      	bmi.n	c0decbc2 <ux_layout_pbb_elements+0x6e>
c0decc18:	d4d4      	bmi.n	c0decbc4 <ux_layout_pbb_elements+0x70>
c0decc1a:	d4d4      	bmi.n	c0decbc6 <ux_layout_pbb_elements+0x72>
c0decc1c:	d4d4      	bmi.n	c0decbc8 <ux_layout_pbb_elements+0x74>
c0decc1e:	d4d4      	bmi.n	c0decbca <ux_layout_pbb_elements+0x76>
c0decc20:	d4d4      	bmi.n	c0decbcc <ux_layout_pbb_elements+0x78>
c0decc22:	d4d4      	bmi.n	c0decbce <ux_layout_pbb_elements+0x7a>
c0decc24:	d4d4      	bmi.n	c0decbd0 <ux_layout_pbb_elements+0x7c>
c0decc26:	d4d4      	bmi.n	c0decbd2 <ux_layout_pbb_elements+0x7e>
c0decc28:	d4d4      	bmi.n	c0decbd4 <ux_layout_pbb_elements+0x80>
c0decc2a:	d4d4      	bmi.n	c0decbd6 <ux_layout_pbb_elements+0x82>
c0decc2c:	d4d4      	bmi.n	c0decbd8 <ux_layout_pbb_elements+0x84>
c0decc2e:	d4d4      	bmi.n	c0decbda <ux_layout_pbb_elements+0x86>
c0decc30:	d4d4      	bmi.n	c0decbdc <ux_layout_pbb_elements+0x88>
c0decc32:	d4d4      	bmi.n	c0decbde <ux_layout_pbb_elements+0x8a>
c0decc34:	d4d4      	bmi.n	c0decbe0 <ux_layout_pbb_elements+0x8c>
c0decc36:	d4d4      	bmi.n	c0decbe2 <ux_layout_pbb_elements+0x8e>
c0decc38:	d4d4      	bmi.n	c0decbe4 <ux_layout_pbb_elements+0x90>
c0decc3a:	d4d4      	bmi.n	c0decbe6 <ux_layout_pbb_elements+0x92>
c0decc3c:	d4d4      	bmi.n	c0decbe8 <ux_layout_pbb_elements+0x94>
c0decc3e:	d4d4      	bmi.n	c0decbea <ux_layout_pbb_elements+0x96>
c0decc40:	d4d4      	bmi.n	c0decbec <ux_layout_pbb_elements+0x98>
c0decc42:	d4d4      	bmi.n	c0decbee <ux_layout_pbb_elements+0x9a>
c0decc44:	d4d4      	bmi.n	c0decbf0 <ux_layout_pbb_elements+0x9c>
c0decc46:	d4d4      	bmi.n	c0decbf2 <ux_layout_pbb_elements+0x9e>
c0decc48:	d4d4      	bmi.n	c0decbf4 <ux_layout_pbb_elements+0xa0>
c0decc4a:	d4d4      	bmi.n	c0decbf6 <ux_layout_pbb_elements+0xa2>
c0decc4c:	d4d4      	bmi.n	c0decbf8 <ux_layout_pbb_elements+0xa4>
c0decc4e:	d4d4      	bmi.n	c0decbfa <ux_layout_pbb_elements+0xa6>
c0decc50:	d4d4      	bmi.n	c0decbfc <ux_layout_pbb_elements+0xa8>
c0decc52:	d4d4      	bmi.n	c0decbfe <ux_layout_pbb_elements+0xaa>
c0decc54:	d4d4      	bmi.n	c0decc00 <ux_layout_pbb_elements+0xac>
c0decc56:	d4d4      	bmi.n	c0decc02 <ux_layout_pbb_elements+0xae>
c0decc58:	d4d4      	bmi.n	c0decc04 <ux_layout_pbb_elements+0xb0>
c0decc5a:	d4d4      	bmi.n	c0decc06 <ux_layout_pbb_elements+0xb2>
c0decc5c:	d4d4      	bmi.n	c0decc08 <ux_layout_pbb_elements+0xb4>
c0decc5e:	d4d4      	bmi.n	c0decc0a <ux_layout_pbb_elements+0xb6>
c0decc60:	d4d4      	bmi.n	c0decc0c <ux_layout_pbb_elements+0xb8>
c0decc62:	d4d4      	bmi.n	c0decc0e <ux_layout_pbb_elements+0xba>
c0decc64:	d4d4      	bmi.n	c0decc10 <ux_layout_pbb_elements+0xbc>
c0decc66:	d4d4      	bmi.n	c0decc12 <ux_layout_pbb_elements+0xbe>
c0decc68:	d4d4      	bmi.n	c0decc14 <_etext>
c0decc6a:	d4d4      	bmi.n	c0decc16 <_etext+0x2>
c0decc6c:	d4d4      	bmi.n	c0decc18 <_etext+0x4>
c0decc6e:	d4d4      	bmi.n	c0decc1a <_etext+0x6>
c0decc70:	d4d4      	bmi.n	c0decc1c <_etext+0x8>
c0decc72:	d4d4      	bmi.n	c0decc1e <_etext+0xa>
c0decc74:	d4d4      	bmi.n	c0decc20 <_etext+0xc>
c0decc76:	d4d4      	bmi.n	c0decc22 <_etext+0xe>
c0decc78:	d4d4      	bmi.n	c0decc24 <_etext+0x10>
c0decc7a:	d4d4      	bmi.n	c0decc26 <_etext+0x12>
c0decc7c:	d4d4      	bmi.n	c0decc28 <_etext+0x14>
c0decc7e:	d4d4      	bmi.n	c0decc2a <_etext+0x16>
c0decc80:	d4d4      	bmi.n	c0decc2c <_etext+0x18>
c0decc82:	d4d4      	bmi.n	c0decc2e <_etext+0x1a>
c0decc84:	d4d4      	bmi.n	c0decc30 <_etext+0x1c>
c0decc86:	d4d4      	bmi.n	c0decc32 <_etext+0x1e>
c0decc88:	d4d4      	bmi.n	c0decc34 <_etext+0x20>
c0decc8a:	d4d4      	bmi.n	c0decc36 <_etext+0x22>
c0decc8c:	d4d4      	bmi.n	c0decc38 <_etext+0x24>
c0decc8e:	d4d4      	bmi.n	c0decc3a <_etext+0x26>
c0decc90:	d4d4      	bmi.n	c0decc3c <_etext+0x28>
c0decc92:	d4d4      	bmi.n	c0decc3e <_etext+0x2a>
c0decc94:	d4d4      	bmi.n	c0decc40 <_etext+0x2c>
c0decc96:	d4d4      	bmi.n	c0decc42 <_etext+0x2e>
c0decc98:	d4d4      	bmi.n	c0decc44 <_etext+0x30>
c0decc9a:	d4d4      	bmi.n	c0decc46 <_etext+0x32>
c0decc9c:	d4d4      	bmi.n	c0decc48 <_etext+0x34>
c0decc9e:	d4d4      	bmi.n	c0decc4a <_etext+0x36>
c0decca0:	d4d4      	bmi.n	c0decc4c <_etext+0x38>
c0decca2:	d4d4      	bmi.n	c0decc4e <_etext+0x3a>
c0decca4:	d4d4      	bmi.n	c0decc50 <_etext+0x3c>
c0decca6:	d4d4      	bmi.n	c0decc52 <_etext+0x3e>
c0decca8:	d4d4      	bmi.n	c0decc54 <_etext+0x40>
c0deccaa:	d4d4      	bmi.n	c0decc56 <_etext+0x42>
c0deccac:	d4d4      	bmi.n	c0decc58 <_etext+0x44>
c0deccae:	d4d4      	bmi.n	c0decc5a <_etext+0x46>
c0deccb0:	d4d4      	bmi.n	c0decc5c <_etext+0x48>
c0deccb2:	d4d4      	bmi.n	c0decc5e <_etext+0x4a>
c0deccb4:	d4d4      	bmi.n	c0decc60 <_etext+0x4c>
c0deccb6:	d4d4      	bmi.n	c0decc62 <_etext+0x4e>
c0deccb8:	d4d4      	bmi.n	c0decc64 <_etext+0x50>
c0deccba:	d4d4      	bmi.n	c0decc66 <_etext+0x52>
c0deccbc:	d4d4      	bmi.n	c0decc68 <_etext+0x54>
c0deccbe:	d4d4      	bmi.n	c0decc6a <_etext+0x56>
c0deccc0:	d4d4      	bmi.n	c0decc6c <_etext+0x58>
c0deccc2:	d4d4      	bmi.n	c0decc6e <_etext+0x5a>
c0deccc4:	d4d4      	bmi.n	c0decc70 <_etext+0x5c>
c0deccc6:	d4d4      	bmi.n	c0decc72 <_etext+0x5e>
c0deccc8:	d4d4      	bmi.n	c0decc74 <_etext+0x60>
c0deccca:	d4d4      	bmi.n	c0decc76 <_etext+0x62>
c0decccc:	d4d4      	bmi.n	c0decc78 <_etext+0x64>
c0deccce:	d4d4      	bmi.n	c0decc7a <_etext+0x66>
c0deccd0:	d4d4      	bmi.n	c0decc7c <_etext+0x68>
c0deccd2:	d4d4      	bmi.n	c0decc7e <_etext+0x6a>
c0deccd4:	d4d4      	bmi.n	c0decc80 <_etext+0x6c>
c0deccd6:	d4d4      	bmi.n	c0decc82 <_etext+0x6e>
c0deccd8:	d4d4      	bmi.n	c0decc84 <_etext+0x70>
c0deccda:	d4d4      	bmi.n	c0decc86 <_etext+0x72>
c0deccdc:	d4d4      	bmi.n	c0decc88 <_etext+0x74>
c0deccde:	d4d4      	bmi.n	c0decc8a <_etext+0x76>
c0decce0:	d4d4      	bmi.n	c0decc8c <_etext+0x78>
c0decce2:	d4d4      	bmi.n	c0decc8e <_etext+0x7a>
c0decce4:	d4d4      	bmi.n	c0decc90 <_etext+0x7c>
c0decce6:	d4d4      	bmi.n	c0decc92 <_etext+0x7e>
c0decce8:	d4d4      	bmi.n	c0decc94 <_etext+0x80>
c0deccea:	d4d4      	bmi.n	c0decc96 <_etext+0x82>
c0deccec:	d4d4      	bmi.n	c0decc98 <_etext+0x84>
c0deccee:	d4d4      	bmi.n	c0decc9a <_etext+0x86>
c0deccf0:	d4d4      	bmi.n	c0decc9c <_etext+0x88>
c0deccf2:	d4d4      	bmi.n	c0decc9e <_etext+0x8a>
c0deccf4:	d4d4      	bmi.n	c0decca0 <_etext+0x8c>
c0deccf6:	d4d4      	bmi.n	c0decca2 <_etext+0x8e>
c0deccf8:	d4d4      	bmi.n	c0decca4 <_etext+0x90>
c0deccfa:	d4d4      	bmi.n	c0decca6 <_etext+0x92>
c0deccfc:	d4d4      	bmi.n	c0decca8 <_etext+0x94>
c0deccfe:	d4d4      	bmi.n	c0deccaa <_etext+0x96>

c0decd00 <N_storage_real>:
c0decd00:	d400 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decd10:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decd20:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decd30:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decd40:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decd50:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decd60:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decd70:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decd80:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decd90:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decda0:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decdb0:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decdc0:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decdd0:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decde0:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
c0decdf0:	d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
