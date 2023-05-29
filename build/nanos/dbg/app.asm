
build/nanos/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0d00000 <main>:
c0d00000:	b5b0      	push	{r4, r5, r7, lr}
c0d00002:	b08c      	sub	sp, #48	; 0x30
c0d00004:	b662      	cpsie	i
c0d00006:	f001 fa2d 	bl	c0d01464 <os_boot>
c0d0000a:	4c1e      	ldr	r4, [pc, #120]	; (c0d00084 <main+0x84>)
c0d0000c:	2021      	movs	r0, #33	; 0x21
c0d0000e:	00c1      	lsls	r1, r0, #3
c0d00010:	4620      	mov	r0, r4
c0d00012:	f005 fd6d 	bl	c0d05af0 <__aeabi_memclr>
c0d00016:	f005 fb9d 	bl	c0d05754 <ux_stack_push>
c0d0001a:	466d      	mov	r5, sp
c0d0001c:	4628      	mov	r0, r5
c0d0001e:	f005 fea1 	bl	c0d05d64 <setjmp>
c0d00022:	85a8      	strh	r0, [r5, #44]	; 0x2c
c0d00024:	b280      	uxth	r0, r0
c0d00026:	2805      	cmp	r0, #5
c0d00028:	d109      	bne.n	c0d0003e <main+0x3e>
c0d0002a:	4668      	mov	r0, sp
c0d0002c:	2100      	movs	r1, #0
c0d0002e:	8581      	strh	r1, [r0, #44]	; 0x2c
c0d00030:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00032:	f002 fe7d 	bl	c0d02d30 <try_context_set>
c0d00036:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00038:	f002 fe7a 	bl	c0d02d30 <try_context_set>
c0d0003c:	e7e6      	b.n	c0d0000c <main+0xc>
c0d0003e:	2800      	cmp	r0, #0
c0d00040:	d00d      	beq.n	c0d0005e <main+0x5e>
c0d00042:	4668      	mov	r0, sp
c0d00044:	2400      	movs	r4, #0
c0d00046:	8584      	strh	r4, [r0, #44]	; 0x2c
c0d00048:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d0004a:	f002 fe71 	bl	c0d02d30 <try_context_set>
c0d0004e:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00050:	f002 fe6e 	bl	c0d02d30 <try_context_set>
c0d00054:	f001 f9b4 	bl	c0d013c0 <app_exit>
c0d00058:	4620      	mov	r0, r4
c0d0005a:	b00c      	add	sp, #48	; 0x30
c0d0005c:	bdb0      	pop	{r4, r5, r7, pc}
c0d0005e:	4668      	mov	r0, sp
c0d00060:	f002 fe66 	bl	c0d02d30 <try_context_set>
c0d00064:	900a      	str	r0, [sp, #40]	; 0x28
c0d00066:	f001 fb0f 	bl	c0d01688 <io_seproxyhal_init>
c0d0006a:	f001 f9c9 	bl	c0d01400 <nv_app_state_init>
c0d0006e:	2000      	movs	r0, #0
c0d00070:	f004 fb3e 	bl	c0d046f0 <USB_power>
c0d00074:	2001      	movs	r0, #1
c0d00076:	f004 fb3b 	bl	c0d046f0 <USB_power>
c0d0007a:	f001 f9e1 	bl	c0d01440 <ui_idle>
c0d0007e:	f000 fe17 	bl	c0d00cb0 <app_main>
c0d00082:	46c0      	nop			; (mov r8, r8)
c0d00084:	20000258 	.word	0x20000258

c0d00088 <field_copy>:
c0d00088:	b580      	push	{r7, lr}
c0d0008a:	2220      	movs	r2, #32
c0d0008c:	f005 fd3a 	bl	c0d05b04 <__aeabi_memmove>
c0d00090:	bd80      	pop	{r7, pc}
	...

c0d00094 <field_add>:
c0d00094:	b580      	push	{r7, lr}
c0d00096:	b082      	sub	sp, #8
c0d00098:	2320      	movs	r3, #32
c0d0009a:	9300      	str	r3, [sp, #0]
c0d0009c:	4b04      	ldr	r3, [pc, #16]	; (c0d000b0 <field_add+0x1c>)
c0d0009e:	447b      	add	r3, pc
c0d000a0:	f000 fc78 	bl	c0d00994 <cx_math_addm_no_throw>
c0d000a4:	2800      	cmp	r0, #0
c0d000a6:	d101      	bne.n	c0d000ac <field_add+0x18>
c0d000a8:	b002      	add	sp, #8
c0d000aa:	bd80      	pop	{r7, pc}
c0d000ac:	f001 f9df 	bl	c0d0146e <os_longjmp>
c0d000b0:	00005d82 	.word	0x00005d82

c0d000b4 <field_sub>:
c0d000b4:	b580      	push	{r7, lr}
c0d000b6:	b082      	sub	sp, #8
c0d000b8:	2320      	movs	r3, #32
c0d000ba:	9300      	str	r3, [sp, #0]
c0d000bc:	4b04      	ldr	r3, [pc, #16]	; (c0d000d0 <field_sub+0x1c>)
c0d000be:	447b      	add	r3, pc
c0d000c0:	f000 fc80 	bl	c0d009c4 <cx_math_subm_no_throw>
c0d000c4:	2800      	cmp	r0, #0
c0d000c6:	d101      	bne.n	c0d000cc <field_sub+0x18>
c0d000c8:	b002      	add	sp, #8
c0d000ca:	bd80      	pop	{r7, pc}
c0d000cc:	f001 f9cf 	bl	c0d0146e <os_longjmp>
c0d000d0:	00005d62 	.word	0x00005d62

c0d000d4 <field_mul>:
c0d000d4:	b580      	push	{r7, lr}
c0d000d6:	b082      	sub	sp, #8
c0d000d8:	2320      	movs	r3, #32
c0d000da:	9300      	str	r3, [sp, #0]
c0d000dc:	4b04      	ldr	r3, [pc, #16]	; (c0d000f0 <field_mul+0x1c>)
c0d000de:	447b      	add	r3, pc
c0d000e0:	f000 fc64 	bl	c0d009ac <cx_math_multm_no_throw>
c0d000e4:	2800      	cmp	r0, #0
c0d000e6:	d101      	bne.n	c0d000ec <field_mul+0x18>
c0d000e8:	b002      	add	sp, #8
c0d000ea:	bd80      	pop	{r7, pc}
c0d000ec:	f001 f9bf 	bl	c0d0146e <os_longjmp>
c0d000f0:	00005d42 	.word	0x00005d42

c0d000f4 <field_sq>:
c0d000f4:	b580      	push	{r7, lr}
c0d000f6:	b082      	sub	sp, #8
c0d000f8:	2220      	movs	r2, #32
c0d000fa:	9200      	str	r2, [sp, #0]
c0d000fc:	4b05      	ldr	r3, [pc, #20]	; (c0d00114 <field_sq+0x20>)
c0d000fe:	447b      	add	r3, pc
c0d00100:	460a      	mov	r2, r1
c0d00102:	f000 fc53 	bl	c0d009ac <cx_math_multm_no_throw>
c0d00106:	2800      	cmp	r0, #0
c0d00108:	d101      	bne.n	c0d0010e <field_sq+0x1a>
c0d0010a:	b002      	add	sp, #8
c0d0010c:	bd80      	pop	{r7, pc}
c0d0010e:	f001 f9ae 	bl	c0d0146e <os_longjmp>
c0d00112:	46c0      	nop			; (mov r8, r8)
c0d00114:	00005d22 	.word	0x00005d22

c0d00118 <field_inv>:
c0d00118:	b580      	push	{r7, lr}
c0d0011a:	4a05      	ldr	r2, [pc, #20]	; (c0d00130 <field_inv+0x18>)
c0d0011c:	447a      	add	r2, pc
c0d0011e:	2320      	movs	r3, #32
c0d00120:	f000 fc3e 	bl	c0d009a0 <cx_math_invprimem_no_throw>
c0d00124:	2800      	cmp	r0, #0
c0d00126:	d100      	bne.n	c0d0012a <field_inv+0x12>
c0d00128:	bd80      	pop	{r7, pc}
c0d0012a:	f001 f9a0 	bl	c0d0146e <os_longjmp>
c0d0012e:	46c0      	nop			; (mov r8, r8)
c0d00130:	00005d04 	.word	0x00005d04

c0d00134 <field_pow>:
c0d00134:	b510      	push	{r4, lr}
c0d00136:	b082      	sub	sp, #8
c0d00138:	2320      	movs	r3, #32
c0d0013a:	4c06      	ldr	r4, [pc, #24]	; (c0d00154 <field_pow+0x20>)
c0d0013c:	447c      	add	r4, pc
c0d0013e:	9400      	str	r4, [sp, #0]
c0d00140:	9301      	str	r3, [sp, #4]
c0d00142:	f000 fc39 	bl	c0d009b8 <cx_math_powm_no_throw>
c0d00146:	2800      	cmp	r0, #0
c0d00148:	d101      	bne.n	c0d0014e <field_pow+0x1a>
c0d0014a:	b002      	add	sp, #8
c0d0014c:	bd10      	pop	{r4, pc}
c0d0014e:	f001 f98e 	bl	c0d0146e <os_longjmp>
c0d00152:	46c0      	nop			; (mov r8, r8)
c0d00154:	00005ce4 	.word	0x00005ce4

c0d00158 <scalar_add>:
c0d00158:	b580      	push	{r7, lr}
c0d0015a:	b082      	sub	sp, #8
c0d0015c:	2320      	movs	r3, #32
c0d0015e:	9300      	str	r3, [sp, #0]
c0d00160:	4b04      	ldr	r3, [pc, #16]	; (c0d00174 <scalar_add+0x1c>)
c0d00162:	447b      	add	r3, pc
c0d00164:	f000 fc16 	bl	c0d00994 <cx_math_addm_no_throw>
c0d00168:	2800      	cmp	r0, #0
c0d0016a:	d101      	bne.n	c0d00170 <scalar_add+0x18>
c0d0016c:	b002      	add	sp, #8
c0d0016e:	bd80      	pop	{r7, pc}
c0d00170:	f001 f97d 	bl	c0d0146e <os_longjmp>
c0d00174:	00005cfe 	.word	0x00005cfe

c0d00178 <scalar_mul>:
c0d00178:	b580      	push	{r7, lr}
c0d0017a:	b082      	sub	sp, #8
c0d0017c:	2320      	movs	r3, #32
c0d0017e:	9300      	str	r3, [sp, #0]
c0d00180:	4b04      	ldr	r3, [pc, #16]	; (c0d00194 <scalar_mul+0x1c>)
c0d00182:	447b      	add	r3, pc
c0d00184:	f000 fc12 	bl	c0d009ac <cx_math_multm_no_throw>
c0d00188:	2800      	cmp	r0, #0
c0d0018a:	d101      	bne.n	c0d00190 <scalar_mul+0x18>
c0d0018c:	b002      	add	sp, #8
c0d0018e:	bd80      	pop	{r7, pc}
c0d00190:	f001 f96d 	bl	c0d0146e <os_longjmp>
c0d00194:	00005cde 	.word	0x00005cde

c0d00198 <scalar_negate>:
c0d00198:	b580      	push	{r7, lr}
c0d0019a:	b082      	sub	sp, #8
c0d0019c:	460a      	mov	r2, r1
c0d0019e:	2120      	movs	r1, #32
c0d001a0:	9100      	str	r1, [sp, #0]
c0d001a2:	4906      	ldr	r1, [pc, #24]	; (c0d001bc <scalar_negate+0x24>)
c0d001a4:	4479      	add	r1, pc
c0d001a6:	4b06      	ldr	r3, [pc, #24]	; (c0d001c0 <scalar_negate+0x28>)
c0d001a8:	447b      	add	r3, pc
c0d001aa:	f000 fc0b 	bl	c0d009c4 <cx_math_subm_no_throw>
c0d001ae:	2800      	cmp	r0, #0
c0d001b0:	d101      	bne.n	c0d001b6 <scalar_negate+0x1e>
c0d001b2:	b002      	add	sp, #8
c0d001b4:	bd80      	pop	{r7, pc}
c0d001b6:	f001 f95a 	bl	c0d0146e <os_longjmp>
c0d001ba:	46c0      	nop			; (mov r8, r8)
c0d001bc:	00005cdc 	.word	0x00005cdc
c0d001c0:	00005cb8 	.word	0x00005cb8

c0d001c4 <group_dbl>:
c0d001c4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d001c6:	b0e5      	sub	sp, #404	; 0x194
c0d001c8:	460e      	mov	r6, r1
c0d001ca:	4604      	mov	r4, r0
c0d001cc:	460d      	mov	r5, r1
c0d001ce:	3540      	adds	r5, #64	; 0x40
c0d001d0:	4937      	ldr	r1, [pc, #220]	; (c0d002b0 <group_dbl+0xec>)
c0d001d2:	4479      	add	r1, pc
c0d001d4:	2220      	movs	r2, #32
c0d001d6:	4628      	mov	r0, r5
c0d001d8:	f005 fca4 	bl	c0d05b24 <memcmp>
c0d001dc:	2800      	cmp	r0, #0
c0d001de:	d05f      	beq.n	c0d002a0 <group_dbl+0xdc>
c0d001e0:	4631      	mov	r1, r6
c0d001e2:	3120      	adds	r1, #32
c0d001e4:	9104      	str	r1, [sp, #16]
c0d001e6:	af5d      	add	r7, sp, #372	; 0x174
c0d001e8:	9701      	str	r7, [sp, #4]
c0d001ea:	4638      	mov	r0, r7
c0d001ec:	f7ff ff82 	bl	c0d000f4 <field_sq>
c0d001f0:	9503      	str	r5, [sp, #12]
c0d001f2:	ad55      	add	r5, sp, #340	; 0x154
c0d001f4:	4628      	mov	r0, r5
c0d001f6:	4631      	mov	r1, r6
c0d001f8:	463a      	mov	r2, r7
c0d001fa:	f7ff ff6b 	bl	c0d000d4 <field_mul>
c0d001fe:	af4d      	add	r7, sp, #308	; 0x134
c0d00200:	492c      	ldr	r1, [pc, #176]	; (c0d002b4 <group_dbl+0xf0>)
c0d00202:	4479      	add	r1, pc
c0d00204:	4638      	mov	r0, r7
c0d00206:	462a      	mov	r2, r5
c0d00208:	f7ff ff64 	bl	c0d000d4 <field_mul>
c0d0020c:	ad45      	add	r5, sp, #276	; 0x114
c0d0020e:	4628      	mov	r0, r5
c0d00210:	4631      	mov	r1, r6
c0d00212:	f7ff ff6f 	bl	c0d000f4 <field_sq>
c0d00216:	ae3d      	add	r6, sp, #244	; 0xf4
c0d00218:	9600      	str	r6, [sp, #0]
c0d0021a:	4927      	ldr	r1, [pc, #156]	; (c0d002b8 <group_dbl+0xf4>)
c0d0021c:	4479      	add	r1, pc
c0d0021e:	4630      	mov	r0, r6
c0d00220:	462a      	mov	r2, r5
c0d00222:	f7ff ff57 	bl	c0d000d4 <field_mul>
c0d00226:	ad35      	add	r5, sp, #212	; 0xd4
c0d00228:	4628      	mov	r0, r5
c0d0022a:	4631      	mov	r1, r6
c0d0022c:	f7ff ff62 	bl	c0d000f4 <field_sq>
c0d00230:	ae2d      	add	r6, sp, #180	; 0xb4
c0d00232:	4922      	ldr	r1, [pc, #136]	; (c0d002bc <group_dbl+0xf8>)
c0d00234:	4479      	add	r1, pc
c0d00236:	9102      	str	r1, [sp, #8]
c0d00238:	4630      	mov	r0, r6
c0d0023a:	463a      	mov	r2, r7
c0d0023c:	f7ff ff4a 	bl	c0d000d4 <field_mul>
c0d00240:	4620      	mov	r0, r4
c0d00242:	4629      	mov	r1, r5
c0d00244:	4632      	mov	r2, r6
c0d00246:	f7ff ff35 	bl	c0d000b4 <field_sub>
c0d0024a:	ae25      	add	r6, sp, #148	; 0x94
c0d0024c:	4630      	mov	r0, r6
c0d0024e:	4639      	mov	r1, r7
c0d00250:	4622      	mov	r2, r4
c0d00252:	f7ff ff2f 	bl	c0d000b4 <field_sub>
c0d00256:	ad1d      	add	r5, sp, #116	; 0x74
c0d00258:	4628      	mov	r0, r5
c0d0025a:	9901      	ldr	r1, [sp, #4]
c0d0025c:	f7ff ff4a 	bl	c0d000f4 <field_sq>
c0d00260:	af15      	add	r7, sp, #84	; 0x54
c0d00262:	4917      	ldr	r1, [pc, #92]	; (c0d002c0 <group_dbl+0xfc>)
c0d00264:	4479      	add	r1, pc
c0d00266:	4638      	mov	r0, r7
c0d00268:	462a      	mov	r2, r5
c0d0026a:	f7ff ff33 	bl	c0d000d4 <field_mul>
c0d0026e:	ad0d      	add	r5, sp, #52	; 0x34
c0d00270:	4628      	mov	r0, r5
c0d00272:	9900      	ldr	r1, [sp, #0]
c0d00274:	4632      	mov	r2, r6
c0d00276:	f7ff ff2d 	bl	c0d000d4 <field_mul>
c0d0027a:	4620      	mov	r0, r4
c0d0027c:	3020      	adds	r0, #32
c0d0027e:	4629      	mov	r1, r5
c0d00280:	463a      	mov	r2, r7
c0d00282:	f7ff ff17 	bl	c0d000b4 <field_sub>
c0d00286:	ad05      	add	r5, sp, #20
c0d00288:	4628      	mov	r0, r5
c0d0028a:	9904      	ldr	r1, [sp, #16]
c0d0028c:	9a03      	ldr	r2, [sp, #12]
c0d0028e:	f7ff ff21 	bl	c0d000d4 <field_mul>
c0d00292:	3440      	adds	r4, #64	; 0x40
c0d00294:	4620      	mov	r0, r4
c0d00296:	9902      	ldr	r1, [sp, #8]
c0d00298:	462a      	mov	r2, r5
c0d0029a:	f7ff ff1b 	bl	c0d000d4 <field_mul>
c0d0029e:	e004      	b.n	c0d002aa <group_dbl+0xe6>
c0d002a0:	2260      	movs	r2, #96	; 0x60
c0d002a2:	4620      	mov	r0, r4
c0d002a4:	4631      	mov	r1, r6
c0d002a6:	f005 fc2d 	bl	c0d05b04 <__aeabi_memmove>
c0d002aa:	b065      	add	sp, #404	; 0x194
c0d002ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d002ae:	46c0      	nop			; (mov r8, r8)
c0d002b0:	00005c6e 	.word	0x00005c6e
c0d002b4:	00005c9e 	.word	0x00005c9e
c0d002b8:	00005ca4 	.word	0x00005ca4
c0d002bc:	00005cac 	.word	0x00005cac
c0d002c0:	00005c9c 	.word	0x00005c9c

c0d002c4 <group_add>:
c0d002c4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d002c6:	b0d5      	sub	sp, #340	; 0x154
c0d002c8:	4617      	mov	r7, r2
c0d002ca:	460d      	mov	r5, r1
c0d002cc:	900c      	str	r0, [sp, #48]	; 0x30
c0d002ce:	460e      	mov	r6, r1
c0d002d0:	3640      	adds	r6, #64	; 0x40
c0d002d2:	4965      	ldr	r1, [pc, #404]	; (c0d00468 <group_add+0x1a4>)
c0d002d4:	4479      	add	r1, pc
c0d002d6:	2220      	movs	r2, #32
c0d002d8:	4630      	mov	r0, r6
c0d002da:	f005 fc23 	bl	c0d05b24 <memcmp>
c0d002de:	2800      	cmp	r0, #0
c0d002e0:	d100      	bne.n	c0d002e4 <group_add+0x20>
c0d002e2:	e0b0      	b.n	c0d00446 <group_add+0x182>
c0d002e4:	4638      	mov	r0, r7
c0d002e6:	3040      	adds	r0, #64	; 0x40
c0d002e8:	4960      	ldr	r1, [pc, #384]	; (c0d0046c <group_add+0x1a8>)
c0d002ea:	4479      	add	r1, pc
c0d002ec:	2220      	movs	r2, #32
c0d002ee:	900b      	str	r0, [sp, #44]	; 0x2c
c0d002f0:	f005 fc18 	bl	c0d05b24 <memcmp>
c0d002f4:	2800      	cmp	r0, #0
c0d002f6:	d100      	bne.n	c0d002fa <group_add+0x36>
c0d002f8:	e0a9      	b.n	c0d0044e <group_add+0x18a>
c0d002fa:	2220      	movs	r2, #32
c0d002fc:	4628      	mov	r0, r5
c0d002fe:	4639      	mov	r1, r7
c0d00300:	f005 fc10 	bl	c0d05b24 <memcmp>
c0d00304:	2800      	cmp	r0, #0
c0d00306:	d110      	bne.n	c0d0032a <group_add+0x66>
c0d00308:	4628      	mov	r0, r5
c0d0030a:	3020      	adds	r0, #32
c0d0030c:	4639      	mov	r1, r7
c0d0030e:	3120      	adds	r1, #32
c0d00310:	2220      	movs	r2, #32
c0d00312:	f005 fc07 	bl	c0d05b24 <memcmp>
c0d00316:	2800      	cmp	r0, #0
c0d00318:	d107      	bne.n	c0d0032a <group_add+0x66>
c0d0031a:	2220      	movs	r2, #32
c0d0031c:	4630      	mov	r0, r6
c0d0031e:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d00320:	f005 fc00 	bl	c0d05b24 <memcmp>
c0d00324:	2800      	cmp	r0, #0
c0d00326:	d100      	bne.n	c0d0032a <group_add+0x66>
c0d00328:	e098      	b.n	c0d0045c <group_add+0x198>
c0d0032a:	ac4d      	add	r4, sp, #308	; 0x134
c0d0032c:	4620      	mov	r0, r4
c0d0032e:	9406      	str	r4, [sp, #24]
c0d00330:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d00332:	f7ff fedf 	bl	c0d000f4 <field_sq>
c0d00336:	a845      	add	r0, sp, #276	; 0x114
c0d00338:	9005      	str	r0, [sp, #20]
c0d0033a:	4629      	mov	r1, r5
c0d0033c:	4622      	mov	r2, r4
c0d0033e:	f7ff fec9 	bl	c0d000d4 <field_mul>
c0d00342:	9608      	str	r6, [sp, #32]
c0d00344:	ac3d      	add	r4, sp, #244	; 0xf4
c0d00346:	9409      	str	r4, [sp, #36]	; 0x24
c0d00348:	4620      	mov	r0, r4
c0d0034a:	4631      	mov	r1, r6
c0d0034c:	f7ff fed2 	bl	c0d000f4 <field_sq>
c0d00350:	a835      	add	r0, sp, #212	; 0xd4
c0d00352:	9004      	str	r0, [sp, #16]
c0d00354:	4639      	mov	r1, r7
c0d00356:	4622      	mov	r2, r4
c0d00358:	f7ff febc 	bl	c0d000d4 <field_mul>
c0d0035c:	ae2d      	add	r6, sp, #180	; 0xb4
c0d0035e:	4630      	mov	r0, r6
c0d00360:	9603      	str	r6, [sp, #12]
c0d00362:	9c06      	ldr	r4, [sp, #24]
c0d00364:	4621      	mov	r1, r4
c0d00366:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
c0d00368:	f7ff feb4 	bl	c0d000d4 <field_mul>
c0d0036c:	3520      	adds	r5, #32
c0d0036e:	a825      	add	r0, sp, #148	; 0x94
c0d00370:	9007      	str	r0, [sp, #28]
c0d00372:	4629      	mov	r1, r5
c0d00374:	4632      	mov	r2, r6
c0d00376:	f7ff fead 	bl	c0d000d4 <field_mul>
c0d0037a:	4620      	mov	r0, r4
c0d0037c:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d0037e:	9a08      	ldr	r2, [sp, #32]
c0d00380:	f7ff fea8 	bl	c0d000d4 <field_mul>
c0d00384:	3720      	adds	r7, #32
c0d00386:	ae1d      	add	r6, sp, #116	; 0x74
c0d00388:	4630      	mov	r0, r6
c0d0038a:	4639      	mov	r1, r7
c0d0038c:	4622      	mov	r2, r4
c0d0038e:	f7ff fea1 	bl	c0d000d4 <field_mul>
c0d00392:	a815      	add	r0, sp, #84	; 0x54
c0d00394:	900a      	str	r0, [sp, #40]	; 0x28
c0d00396:	9c04      	ldr	r4, [sp, #16]
c0d00398:	4621      	mov	r1, r4
c0d0039a:	9f05      	ldr	r7, [sp, #20]
c0d0039c:	463a      	mov	r2, r7
c0d0039e:	f7ff fe89 	bl	c0d000b4 <field_sub>
c0d003a2:	ad0d      	add	r5, sp, #52	; 0x34
c0d003a4:	4628      	mov	r0, r5
c0d003a6:	9502      	str	r5, [sp, #8]
c0d003a8:	4631      	mov	r1, r6
c0d003aa:	9a07      	ldr	r2, [sp, #28]
c0d003ac:	f7ff fe82 	bl	c0d000b4 <field_sub>
c0d003b0:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d003b2:	4639      	mov	r1, r7
c0d003b4:	4622      	mov	r2, r4
c0d003b6:	f7ff fe6d 	bl	c0d00094 <field_add>
c0d003ba:	9f03      	ldr	r7, [sp, #12]
c0d003bc:	4638      	mov	r0, r7
c0d003be:	4629      	mov	r1, r5
c0d003c0:	f7ff fe98 	bl	c0d000f4 <field_sq>
c0d003c4:	4620      	mov	r0, r4
c0d003c6:	990a      	ldr	r1, [sp, #40]	; 0x28
c0d003c8:	f7ff fe94 	bl	c0d000f4 <field_sq>
c0d003cc:	4630      	mov	r0, r6
c0d003ce:	4635      	mov	r5, r6
c0d003d0:	9601      	str	r6, [sp, #4]
c0d003d2:	9e09      	ldr	r6, [sp, #36]	; 0x24
c0d003d4:	4631      	mov	r1, r6
c0d003d6:	4622      	mov	r2, r4
c0d003d8:	f7ff fe7c 	bl	c0d000d4 <field_mul>
c0d003dc:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d003de:	4639      	mov	r1, r7
c0d003e0:	462a      	mov	r2, r5
c0d003e2:	f7ff fe67 	bl	c0d000b4 <field_sub>
c0d003e6:	4630      	mov	r0, r6
c0d003e8:	9d05      	ldr	r5, [sp, #20]
c0d003ea:	4629      	mov	r1, r5
c0d003ec:	4622      	mov	r2, r4
c0d003ee:	f7ff fe71 	bl	c0d000d4 <field_mul>
c0d003f2:	4638      	mov	r0, r7
c0d003f4:	4631      	mov	r1, r6
c0d003f6:	9e0c      	ldr	r6, [sp, #48]	; 0x30
c0d003f8:	4632      	mov	r2, r6
c0d003fa:	f7ff fe5b 	bl	c0d000b4 <field_sub>
c0d003fe:	9f06      	ldr	r7, [sp, #24]
c0d00400:	4638      	mov	r0, r7
c0d00402:	4621      	mov	r1, r4
c0d00404:	9a0a      	ldr	r2, [sp, #40]	; 0x28
c0d00406:	f7ff fe65 	bl	c0d000d4 <field_mul>
c0d0040a:	9c01      	ldr	r4, [sp, #4]
c0d0040c:	4620      	mov	r0, r4
c0d0040e:	9907      	ldr	r1, [sp, #28]
c0d00410:	463a      	mov	r2, r7
c0d00412:	f7ff fe5f 	bl	c0d000d4 <field_mul>
c0d00416:	4628      	mov	r0, r5
c0d00418:	9902      	ldr	r1, [sp, #8]
c0d0041a:	9a03      	ldr	r2, [sp, #12]
c0d0041c:	f7ff fe5a 	bl	c0d000d4 <field_mul>
c0d00420:	4630      	mov	r0, r6
c0d00422:	3020      	adds	r0, #32
c0d00424:	4629      	mov	r1, r5
c0d00426:	4622      	mov	r2, r4
c0d00428:	f7ff fe44 	bl	c0d000b4 <field_sub>
c0d0042c:	9c04      	ldr	r4, [sp, #16]
c0d0042e:	4620      	mov	r0, r4
c0d00430:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d00432:	9a0a      	ldr	r2, [sp, #40]	; 0x28
c0d00434:	f7ff fe4e 	bl	c0d000d4 <field_mul>
c0d00438:	3640      	adds	r6, #64	; 0x40
c0d0043a:	4630      	mov	r0, r6
c0d0043c:	9908      	ldr	r1, [sp, #32]
c0d0043e:	4622      	mov	r2, r4
c0d00440:	f7ff fe48 	bl	c0d000d4 <field_mul>
c0d00444:	e008      	b.n	c0d00458 <group_add+0x194>
c0d00446:	2260      	movs	r2, #96	; 0x60
c0d00448:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d0044a:	4639      	mov	r1, r7
c0d0044c:	e002      	b.n	c0d00454 <group_add+0x190>
c0d0044e:	2260      	movs	r2, #96	; 0x60
c0d00450:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d00452:	4629      	mov	r1, r5
c0d00454:	f005 fb56 	bl	c0d05b04 <__aeabi_memmove>
c0d00458:	b055      	add	sp, #340	; 0x154
c0d0045a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0045c:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d0045e:	4629      	mov	r1, r5
c0d00460:	f7ff feb0 	bl	c0d001c4 <group_dbl>
c0d00464:	e7f8      	b.n	c0d00458 <group_add+0x194>
c0d00466:	46c0      	nop			; (mov r8, r8)
c0d00468:	00005b6c 	.word	0x00005b6c
c0d0046c:	00005b56 	.word	0x00005b56

c0d00470 <group_scalar_mul>:
c0d00470:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00472:	b09b      	sub	sp, #108	; 0x6c
c0d00474:	4614      	mov	r4, r2
c0d00476:	460d      	mov	r5, r1
c0d00478:	4606      	mov	r6, r0
c0d0047a:	491e      	ldr	r1, [pc, #120]	; (c0d004f4 <group_scalar_mul+0x84>)
c0d0047c:	4479      	add	r1, pc
c0d0047e:	2260      	movs	r2, #96	; 0x60
c0d00480:	f005 fb3c 	bl	c0d05afc <__aeabi_memcpy>
c0d00484:	9401      	str	r4, [sp, #4]
c0d00486:	3440      	adds	r4, #64	; 0x40
c0d00488:	491b      	ldr	r1, [pc, #108]	; (c0d004f8 <group_scalar_mul+0x88>)
c0d0048a:	4479      	add	r1, pc
c0d0048c:	2220      	movs	r2, #32
c0d0048e:	4620      	mov	r0, r4
c0d00490:	f005 fb48 	bl	c0d05b24 <memcmp>
c0d00494:	2800      	cmp	r0, #0
c0d00496:	d02b      	beq.n	c0d004f0 <group_scalar_mul+0x80>
c0d00498:	4918      	ldr	r1, [pc, #96]	; (c0d004fc <group_scalar_mul+0x8c>)
c0d0049a:	4479      	add	r1, pc
c0d0049c:	2220      	movs	r2, #32
c0d0049e:	4628      	mov	r0, r5
c0d004a0:	f005 fb40 	bl	c0d05b24 <memcmp>
c0d004a4:	2800      	cmp	r0, #0
c0d004a6:	d023      	beq.n	c0d004f0 <group_scalar_mul+0x80>
c0d004a8:	2400      	movs	r4, #0
c0d004aa:	9502      	str	r5, [sp, #8]
c0d004ac:	08e0      	lsrs	r0, r4, #3
c0d004ae:	5c2d      	ldrb	r5, [r5, r0]
c0d004b0:	af03      	add	r7, sp, #12
c0d004b2:	4638      	mov	r0, r7
c0d004b4:	4631      	mov	r1, r6
c0d004b6:	f7ff fe85 	bl	c0d001c4 <group_dbl>
c0d004ba:	2260      	movs	r2, #96	; 0x60
c0d004bc:	4630      	mov	r0, r6
c0d004be:	4639      	mov	r1, r7
c0d004c0:	f005 fb1c 	bl	c0d05afc <__aeabi_memcpy>
c0d004c4:	2007      	movs	r0, #7
c0d004c6:	43a0      	bics	r0, r4
c0d004c8:	40c5      	lsrs	r5, r0
c0d004ca:	07e8      	lsls	r0, r5, #31
c0d004cc:	d00a      	beq.n	c0d004e4 <group_scalar_mul+0x74>
c0d004ce:	af03      	add	r7, sp, #12
c0d004d0:	4638      	mov	r0, r7
c0d004d2:	4631      	mov	r1, r6
c0d004d4:	9a01      	ldr	r2, [sp, #4]
c0d004d6:	f7ff fef5 	bl	c0d002c4 <group_add>
c0d004da:	2260      	movs	r2, #96	; 0x60
c0d004dc:	4630      	mov	r0, r6
c0d004de:	4639      	mov	r1, r7
c0d004e0:	f005 fb0c 	bl	c0d05afc <__aeabi_memcpy>
c0d004e4:	1c64      	adds	r4, r4, #1
c0d004e6:	2001      	movs	r0, #1
c0d004e8:	0200      	lsls	r0, r0, #8
c0d004ea:	4284      	cmp	r4, r0
c0d004ec:	9d02      	ldr	r5, [sp, #8]
c0d004ee:	d1dd      	bne.n	c0d004ac <group_scalar_mul+0x3c>
c0d004f0:	b01b      	add	sp, #108	; 0x6c
c0d004f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d004f4:	00005aa4 	.word	0x00005aa4
c0d004f8:	000059b6 	.word	0x000059b6
c0d004fc:	000059e6 	.word	0x000059e6

c0d00500 <affine_to_group>:
c0d00500:	b570      	push	{r4, r5, r6, lr}
c0d00502:	460d      	mov	r5, r1
c0d00504:	4604      	mov	r4, r0
c0d00506:	491c      	ldr	r1, [pc, #112]	; (c0d00578 <affine_to_group+0x78>)
c0d00508:	4479      	add	r1, pc
c0d0050a:	2220      	movs	r2, #32
c0d0050c:	4628      	mov	r0, r5
c0d0050e:	f005 fb09 	bl	c0d05b24 <memcmp>
c0d00512:	2800      	cmp	r0, #0
c0d00514:	d108      	bne.n	c0d00528 <affine_to_group+0x28>
c0d00516:	4628      	mov	r0, r5
c0d00518:	3020      	adds	r0, #32
c0d0051a:	4918      	ldr	r1, [pc, #96]	; (c0d0057c <affine_to_group+0x7c>)
c0d0051c:	4479      	add	r1, pc
c0d0051e:	2220      	movs	r2, #32
c0d00520:	f005 fb00 	bl	c0d05b24 <memcmp>
c0d00524:	2800      	cmp	r0, #0
c0d00526:	d014      	beq.n	c0d00552 <affine_to_group+0x52>
c0d00528:	2620      	movs	r6, #32
c0d0052a:	4620      	mov	r0, r4
c0d0052c:	4629      	mov	r1, r5
c0d0052e:	4632      	mov	r2, r6
c0d00530:	f005 fae8 	bl	c0d05b04 <__aeabi_memmove>
c0d00534:	4620      	mov	r0, r4
c0d00536:	3020      	adds	r0, #32
c0d00538:	3520      	adds	r5, #32
c0d0053a:	4629      	mov	r1, r5
c0d0053c:	4632      	mov	r2, r6
c0d0053e:	f005 fae1 	bl	c0d05b04 <__aeabi_memmove>
c0d00542:	3440      	adds	r4, #64	; 0x40
c0d00544:	490f      	ldr	r1, [pc, #60]	; (c0d00584 <affine_to_group+0x84>)
c0d00546:	4479      	add	r1, pc
c0d00548:	4620      	mov	r0, r4
c0d0054a:	4632      	mov	r2, r6
c0d0054c:	f005 fad6 	bl	c0d05afc <__aeabi_memcpy>
c0d00550:	bd70      	pop	{r4, r5, r6, pc}
c0d00552:	2520      	movs	r5, #32
c0d00554:	4620      	mov	r0, r4
c0d00556:	4629      	mov	r1, r5
c0d00558:	f005 faca 	bl	c0d05af0 <__aeabi_memclr>
c0d0055c:	4620      	mov	r0, r4
c0d0055e:	3020      	adds	r0, #32
c0d00560:	4907      	ldr	r1, [pc, #28]	; (c0d00580 <affine_to_group+0x80>)
c0d00562:	4479      	add	r1, pc
c0d00564:	462a      	mov	r2, r5
c0d00566:	f005 fac9 	bl	c0d05afc <__aeabi_memcpy>
c0d0056a:	3440      	adds	r4, #64	; 0x40
c0d0056c:	4620      	mov	r0, r4
c0d0056e:	4629      	mov	r1, r5
c0d00570:	f005 fabe 	bl	c0d05af0 <__aeabi_memclr>
c0d00574:	bd70      	pop	{r4, r5, r6, pc}
c0d00576:	46c0      	nop			; (mov r8, r8)
c0d00578:	00005938 	.word	0x00005938
c0d0057c:	00005924 	.word	0x00005924
c0d00580:	00005a1e 	.word	0x00005a1e
c0d00584:	00005a3a 	.word	0x00005a3a

c0d00588 <affine_from_group>:
c0d00588:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0058a:	b091      	sub	sp, #68	; 0x44
c0d0058c:	460c      	mov	r4, r1
c0d0058e:	4605      	mov	r5, r0
c0d00590:	460e      	mov	r6, r1
c0d00592:	3640      	adds	r6, #64	; 0x40
c0d00594:	4916      	ldr	r1, [pc, #88]	; (c0d005f0 <affine_from_group+0x68>)
c0d00596:	4479      	add	r1, pc
c0d00598:	2220      	movs	r2, #32
c0d0059a:	4630      	mov	r0, r6
c0d0059c:	f005 fac2 	bl	c0d05b24 <memcmp>
c0d005a0:	2800      	cmp	r0, #0
c0d005a2:	d01e      	beq.n	c0d005e2 <affine_from_group+0x5a>
c0d005a4:	af09      	add	r7, sp, #36	; 0x24
c0d005a6:	4638      	mov	r0, r7
c0d005a8:	4631      	mov	r1, r6
c0d005aa:	f7ff fdb5 	bl	c0d00118 <field_inv>
c0d005ae:	462e      	mov	r6, r5
c0d005b0:	3620      	adds	r6, #32
c0d005b2:	4630      	mov	r0, r6
c0d005b4:	4639      	mov	r1, r7
c0d005b6:	463a      	mov	r2, r7
c0d005b8:	f7ff fd8c 	bl	c0d000d4 <field_mul>
c0d005bc:	9500      	str	r5, [sp, #0]
c0d005be:	ad01      	add	r5, sp, #4
c0d005c0:	4628      	mov	r0, r5
c0d005c2:	4631      	mov	r1, r6
c0d005c4:	463a      	mov	r2, r7
c0d005c6:	f7ff fd85 	bl	c0d000d4 <field_mul>
c0d005ca:	9800      	ldr	r0, [sp, #0]
c0d005cc:	4621      	mov	r1, r4
c0d005ce:	4632      	mov	r2, r6
c0d005d0:	f7ff fd80 	bl	c0d000d4 <field_mul>
c0d005d4:	3420      	adds	r4, #32
c0d005d6:	4630      	mov	r0, r6
c0d005d8:	4621      	mov	r1, r4
c0d005da:	462a      	mov	r2, r5
c0d005dc:	f7ff fd7a 	bl	c0d000d4 <field_mul>
c0d005e0:	e003      	b.n	c0d005ea <affine_from_group+0x62>
c0d005e2:	2140      	movs	r1, #64	; 0x40
c0d005e4:	4628      	mov	r0, r5
c0d005e6:	f005 fa83 	bl	c0d05af0 <__aeabi_memclr>
c0d005ea:	b011      	add	sp, #68	; 0x44
c0d005ec:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d005ee:	46c0      	nop			; (mov r8, r8)
c0d005f0:	000058aa 	.word	0x000058aa

c0d005f4 <affine_scalar_mul>:
c0d005f4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d005f6:	b0b1      	sub	sp, #196	; 0xc4
c0d005f8:	460c      	mov	r4, r1
c0d005fa:	4605      	mov	r5, r0
c0d005fc:	ae19      	add	r6, sp, #100	; 0x64
c0d005fe:	4630      	mov	r0, r6
c0d00600:	4611      	mov	r1, r2
c0d00602:	f7ff ff7d 	bl	c0d00500 <affine_to_group>
c0d00606:	af01      	add	r7, sp, #4
c0d00608:	4638      	mov	r0, r7
c0d0060a:	4621      	mov	r1, r4
c0d0060c:	4632      	mov	r2, r6
c0d0060e:	f7ff ff2f 	bl	c0d00470 <group_scalar_mul>
c0d00612:	4628      	mov	r0, r5
c0d00614:	4639      	mov	r1, r7
c0d00616:	f7ff ffb7 	bl	c0d00588 <affine_from_group>
c0d0061a:	b031      	add	sp, #196	; 0xc4
c0d0061c:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0d00620 <generate_keypair>:
c0d00620:	b5b0      	push	{r4, r5, r7, lr}
c0d00622:	b086      	sub	sp, #24
c0d00624:	4604      	mov	r4, r0
c0d00626:	2000      	movs	r0, #0
c0d00628:	9005      	str	r0, [sp, #20]
c0d0062a:	9004      	str	r0, [sp, #16]
c0d0062c:	4a0e      	ldr	r2, [pc, #56]	; (c0d00668 <generate_keypair+0x48>)
c0d0062e:	9202      	str	r2, [sp, #8]
c0d00630:	2201      	movs	r2, #1
c0d00632:	07d2      	lsls	r2, r2, #31
c0d00634:	4311      	orrs	r1, r2
c0d00636:	9103      	str	r1, [sp, #12]
c0d00638:	322c      	adds	r2, #44	; 0x2c
c0d0063a:	9201      	str	r2, [sp, #4]
c0d0063c:	9000      	str	r0, [sp, #0]
c0d0063e:	4625      	mov	r5, r4
c0d00640:	3540      	adds	r5, #64	; 0x40
c0d00642:	2021      	movs	r0, #33	; 0x21
c0d00644:	a901      	add	r1, sp, #4
c0d00646:	2205      	movs	r2, #5
c0d00648:	462b      	mov	r3, r5
c0d0064a:	f002 fae1 	bl	c0d02c10 <os_perso_derive_node_bip32>
c0d0064e:	2040      	movs	r0, #64	; 0x40
c0d00650:	5c21      	ldrb	r1, [r4, r0]
c0d00652:	223f      	movs	r2, #63	; 0x3f
c0d00654:	400a      	ands	r2, r1
c0d00656:	5422      	strb	r2, [r4, r0]
c0d00658:	4a04      	ldr	r2, [pc, #16]	; (c0d0066c <generate_keypair+0x4c>)
c0d0065a:	447a      	add	r2, pc
c0d0065c:	4620      	mov	r0, r4
c0d0065e:	4629      	mov	r1, r5
c0d00660:	f7ff ffc8 	bl	c0d005f4 <affine_scalar_mul>
c0d00664:	b006      	add	sp, #24
c0d00666:	bdb0      	pop	{r4, r5, r7, pc}
c0d00668:	8000312a 	.word	0x8000312a
c0d0066c:	00005946 	.word	0x00005946

c0d00670 <generate_address>:
c0d00670:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00672:	b09b      	sub	sp, #108	; 0x6c
c0d00674:	4604      	mov	r4, r0
c0d00676:	2938      	cmp	r1, #56	; 0x38
c0d00678:	d137      	bne.n	c0d006ea <generate_address+0x7a>
c0d0067a:	ab11      	add	r3, sp, #68	; 0x44
c0d0067c:	2001      	movs	r0, #1
c0d0067e:	7098      	strb	r0, [r3, #2]
c0d00680:	21ff      	movs	r1, #255	; 0xff
c0d00682:	31cc      	adds	r1, #204	; 0xcc
c0d00684:	8019      	strh	r1, [r3, #0]
c0d00686:	4611      	mov	r1, r2
c0d00688:	311f      	adds	r1, #31
c0d0068a:	1cdb      	adds	r3, r3, #3
c0d0068c:	2500      	movs	r5, #0
c0d0068e:	780e      	ldrb	r6, [r1, #0]
c0d00690:	555e      	strb	r6, [r3, r5]
c0d00692:	1e49      	subs	r1, r1, #1
c0d00694:	1c6d      	adds	r5, r5, #1
c0d00696:	2d20      	cmp	r5, #32
c0d00698:	d1f9      	bne.n	c0d0068e <generate_address+0x1e>
c0d0069a:	213f      	movs	r1, #63	; 0x3f
c0d0069c:	5c51      	ldrb	r1, [r2, r1]
c0d0069e:	4001      	ands	r1, r0
c0d006a0:	2023      	movs	r0, #35	; 0x23
c0d006a2:	ad11      	add	r5, sp, #68	; 0x44
c0d006a4:	5429      	strb	r1, [r5, r0]
c0d006a6:	2124      	movs	r1, #36	; 0x24
c0d006a8:	ae09      	add	r6, sp, #36	; 0x24
c0d006aa:	2720      	movs	r7, #32
c0d006ac:	4628      	mov	r0, r5
c0d006ae:	4632      	mov	r2, r6
c0d006b0:	463b      	mov	r3, r7
c0d006b2:	f000 f969 	bl	c0d00988 <cx_hash_sha256>
c0d006b6:	aa01      	add	r2, sp, #4
c0d006b8:	4630      	mov	r0, r6
c0d006ba:	4639      	mov	r1, r7
c0d006bc:	463b      	mov	r3, r7
c0d006be:	f000 f963 	bl	c0d00988 <cx_hash_sha256>
c0d006c2:	9801      	ldr	r0, [sp, #4]
c0d006c4:	901a      	str	r0, [sp, #104]	; 0x68
c0d006c6:	2128      	movs	r1, #40	; 0x28
c0d006c8:	2338      	movs	r3, #56	; 0x38
c0d006ca:	4628      	mov	r0, r5
c0d006cc:	4622      	mov	r2, r4
c0d006ce:	f004 f8ad 	bl	c0d0482c <b58_encode>
c0d006d2:	4601      	mov	r1, r0
c0d006d4:	2037      	movs	r0, #55	; 0x37
c0d006d6:	2200      	movs	r2, #0
c0d006d8:	5422      	strb	r2, [r4, r0]
c0d006da:	460b      	mov	r3, r1
c0d006dc:	3b37      	subs	r3, #55	; 0x37
c0d006de:	4258      	negs	r0, r3
c0d006e0:	4158      	adcs	r0, r3
c0d006e2:	2937      	cmp	r1, #55	; 0x37
c0d006e4:	d003      	beq.n	c0d006ee <generate_address+0x7e>
c0d006e6:	7022      	strb	r2, [r4, #0]
c0d006e8:	e001      	b.n	c0d006ee <generate_address+0x7e>
c0d006ea:	2000      	movs	r0, #0
c0d006ec:	7020      	strb	r0, [r4, #0]
c0d006ee:	b01b      	add	sp, #108	; 0x6c
c0d006f0:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d006f2 <validate_address>:
c0d006f2:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d006f4:	b09b      	sub	sp, #108	; 0x6c
c0d006f6:	4605      	mov	r5, r0
c0d006f8:	2138      	movs	r1, #56	; 0x38
c0d006fa:	f005 fb7b 	bl	c0d05df4 <strnlen>
c0d006fe:	2837      	cmp	r0, #55	; 0x37
c0d00700:	d130      	bne.n	c0d00764 <validate_address+0x72>
c0d00702:	2137      	movs	r1, #55	; 0x37
c0d00704:	ac11      	add	r4, sp, #68	; 0x44
c0d00706:	2328      	movs	r3, #40	; 0x28
c0d00708:	4628      	mov	r0, r5
c0d0070a:	4622      	mov	r2, r4
c0d0070c:	f004 f912 	bl	c0d04934 <b58_decode>
c0d00710:	2124      	movs	r1, #36	; 0x24
c0d00712:	9100      	str	r1, [sp, #0]
c0d00714:	ae09      	add	r6, sp, #36	; 0x24
c0d00716:	2720      	movs	r7, #32
c0d00718:	4620      	mov	r0, r4
c0d0071a:	4632      	mov	r2, r6
c0d0071c:	463b      	mov	r3, r7
c0d0071e:	f000 f933 	bl	c0d00988 <cx_hash_sha256>
c0d00722:	ad01      	add	r5, sp, #4
c0d00724:	4630      	mov	r0, r6
c0d00726:	4639      	mov	r1, r7
c0d00728:	462a      	mov	r2, r5
c0d0072a:	463b      	mov	r3, r7
c0d0072c:	f000 f92c 	bl	c0d00988 <cx_hash_sha256>
c0d00730:	7828      	ldrb	r0, [r5, #0]
c0d00732:	7869      	ldrb	r1, [r5, #1]
c0d00734:	0209      	lsls	r1, r1, #8
c0d00736:	1808      	adds	r0, r1, r0
c0d00738:	78a9      	ldrb	r1, [r5, #2]
c0d0073a:	78ea      	ldrb	r2, [r5, #3]
c0d0073c:	0212      	lsls	r2, r2, #8
c0d0073e:	1851      	adds	r1, r2, r1
c0d00740:	0409      	lsls	r1, r1, #16
c0d00742:	1808      	adds	r0, r1, r0
c0d00744:	9900      	ldr	r1, [sp, #0]
c0d00746:	5c61      	ldrb	r1, [r4, r1]
c0d00748:	3424      	adds	r4, #36	; 0x24
c0d0074a:	7862      	ldrb	r2, [r4, #1]
c0d0074c:	0212      	lsls	r2, r2, #8
c0d0074e:	1851      	adds	r1, r2, r1
c0d00750:	78a2      	ldrb	r2, [r4, #2]
c0d00752:	78e3      	ldrb	r3, [r4, #3]
c0d00754:	021b      	lsls	r3, r3, #8
c0d00756:	189a      	adds	r2, r3, r2
c0d00758:	0412      	lsls	r2, r2, #16
c0d0075a:	1851      	adds	r1, r2, r1
c0d0075c:	1a09      	subs	r1, r1, r0
c0d0075e:	4248      	negs	r0, r1
c0d00760:	4148      	adcs	r0, r1
c0d00762:	e000      	b.n	c0d00766 <validate_address+0x74>
c0d00764:	2000      	movs	r0, #0
c0d00766:	b01b      	add	sp, #108	; 0x6c
c0d00768:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d0076a <message_derive>:
c0d0076a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0076c:	b0ff      	sub	sp, #508	; 0x1fc
c0d0076e:	b088      	sub	sp, #32
c0d00770:	461f      	mov	r7, r3
c0d00772:	9203      	str	r2, [sp, #12]
c0d00774:	460e      	mov	r6, r1
c0d00776:	4604      	mov	r4, r0
c0d00778:	2043      	movs	r0, #67	; 0x43
c0d0077a:	0081      	lsls	r1, r0, #2
c0d0077c:	ad44      	add	r5, sp, #272	; 0x110
c0d0077e:	4628      	mov	r0, r5
c0d00780:	f005 f9b6 	bl	c0d05af0 <__aeabi_memclr>
c0d00784:	9700      	str	r7, [sp, #0]
c0d00786:	2001      	movs	r0, #1
c0d00788:	0207      	lsls	r7, r0, #8
c0d0078a:	4639      	mov	r1, r7
c0d0078c:	310c      	adds	r1, #12
c0d0078e:	4628      	mov	r0, r5
c0d00790:	4632      	mov	r2, r6
c0d00792:	9b03      	ldr	r3, [sp, #12]
c0d00794:	f002 f81c 	bl	c0d027d0 <roinput_derive_message>
c0d00798:	4605      	mov	r5, r0
c0d0079a:	2800      	cmp	r0, #0
c0d0079c:	d431      	bmi.n	c0d00802 <message_derive+0x98>
c0d0079e:	a804      	add	r0, sp, #16
c0d007a0:	4639      	mov	r1, r7
c0d007a2:	f000 f8d9 	bl	c0d00958 <cx_blake2b_init_no_throw>
c0d007a6:	2800      	cmp	r0, #0
c0d007a8:	d130      	bne.n	c0d0080c <message_derive+0xa2>
c0d007aa:	2100      	movs	r1, #0
c0d007ac:	9100      	str	r1, [sp, #0]
c0d007ae:	9101      	str	r1, [sp, #4]
c0d007b0:	a804      	add	r0, sp, #16
c0d007b2:	aa44      	add	r2, sp, #272	; 0x110
c0d007b4:	462b      	mov	r3, r5
c0d007b6:	f000 f8e1 	bl	c0d0097c <cx_hash_no_throw>
c0d007ba:	2800      	cmp	r0, #0
c0d007bc:	d126      	bne.n	c0d0080c <message_derive+0xa2>
c0d007be:	ae04      	add	r6, sp, #16
c0d007c0:	4630      	mov	r0, r6
c0d007c2:	f000 f8d5 	bl	c0d00970 <cx_hash_get_size>
c0d007c6:	9841      	ldr	r0, [sp, #260]	; 0x104
c0d007c8:	9400      	str	r4, [sp, #0]
c0d007ca:	9001      	str	r0, [sp, #4]
c0d007cc:	2101      	movs	r1, #1
c0d007ce:	2200      	movs	r2, #0
c0d007d0:	4630      	mov	r0, r6
c0d007d2:	4613      	mov	r3, r2
c0d007d4:	f000 f8d2 	bl	c0d0097c <cx_hash_no_throw>
c0d007d8:	2800      	cmp	r0, #0
c0d007da:	d117      	bne.n	c0d0080c <message_derive+0xa2>
c0d007dc:	a804      	add	r0, sp, #16
c0d007de:	f000 f8c7 	bl	c0d00970 <cx_hash_get_size>
c0d007e2:	2020      	movs	r0, #32
c0d007e4:	4621      	mov	r1, r4
c0d007e6:	1822      	adds	r2, r4, r0
c0d007e8:	1e52      	subs	r2, r2, #1
c0d007ea:	7813      	ldrb	r3, [r2, #0]
c0d007ec:	780e      	ldrb	r6, [r1, #0]
c0d007ee:	7016      	strb	r6, [r2, #0]
c0d007f0:	700b      	strb	r3, [r1, #0]
c0d007f2:	1c49      	adds	r1, r1, #1
c0d007f4:	1e40      	subs	r0, r0, #1
c0d007f6:	2810      	cmp	r0, #16
c0d007f8:	d8f5      	bhi.n	c0d007e6 <message_derive+0x7c>
c0d007fa:	7820      	ldrb	r0, [r4, #0]
c0d007fc:	213f      	movs	r1, #63	; 0x3f
c0d007fe:	4001      	ands	r1, r0
c0d00800:	7021      	strb	r1, [r4, #0]
c0d00802:	43e8      	mvns	r0, r5
c0d00804:	0fc0      	lsrs	r0, r0, #31
c0d00806:	b07f      	add	sp, #508	; 0x1fc
c0d00808:	b008      	add	sp, #32
c0d0080a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0080c:	f000 fe2f 	bl	c0d0146e <os_longjmp>

c0d00810 <message_hash>:
c0d00810:	b570      	push	{r4, r5, r6, lr}
c0d00812:	b0e2      	sub	sp, #392	; 0x188
c0d00814:	4615      	mov	r5, r2
c0d00816:	460a      	mov	r2, r1
c0d00818:	4604      	mov	r4, r0
c0d0081a:	9300      	str	r3, [sp, #0]
c0d0081c:	2009      	movs	r0, #9
c0d0081e:	0141      	lsls	r1, r0, #5
c0d00820:	a81a      	add	r0, sp, #104	; 0x68
c0d00822:	462b      	mov	r3, r5
c0d00824:	f002 f849 	bl	c0d028ba <roinput_hash_message>
c0d00828:	4605      	mov	r5, r0
c0d0082a:	2800      	cmp	r0, #0
c0d0082c:	d40d      	bmi.n	c0d0084a <message_hash+0x3a>
c0d0082e:	9966      	ldr	r1, [sp, #408]	; 0x198
c0d00830:	ae02      	add	r6, sp, #8
c0d00832:	4630      	mov	r0, r6
c0d00834:	f001 fe4a 	bl	c0d024cc <poseidon_init>
c0d00838:	a91a      	add	r1, sp, #104	; 0x68
c0d0083a:	4630      	mov	r0, r6
c0d0083c:	462a      	mov	r2, r5
c0d0083e:	f001 fe57 	bl	c0d024f0 <poseidon_update>
c0d00842:	4620      	mov	r0, r4
c0d00844:	4631      	mov	r1, r6
c0d00846:	f001 fe92 	bl	c0d0256e <poseidon_digest>
c0d0084a:	43e8      	mvns	r0, r5
c0d0084c:	0fc0      	lsrs	r0, r0, #31
c0d0084e:	b062      	add	sp, #392	; 0x188
c0d00850:	bd70      	pop	{r4, r5, r6, pc}
	...

c0d00854 <sign>:
c0d00854:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00856:	b0b3      	sub	sp, #204	; 0xcc
c0d00858:	461f      	mov	r7, r3
c0d0085a:	4616      	mov	r6, r2
c0d0085c:	9105      	str	r1, [sp, #20]
c0d0085e:	4604      	mov	r4, r0
c0d00860:	ad07      	add	r5, sp, #28
c0d00862:	4628      	mov	r0, r5
c0d00864:	f005 fa7e 	bl	c0d05d64 <setjmp>
c0d00868:	85a8      	strh	r0, [r5, #44]	; 0x2c
c0d0086a:	b285      	uxth	r5, r0
c0d0086c:	2d00      	cmp	r5, #0
c0d0086e:	d006      	beq.n	c0d0087e <sign+0x2a>
c0d00870:	a807      	add	r0, sp, #28
c0d00872:	2100      	movs	r1, #0
c0d00874:	8581      	strh	r1, [r0, #44]	; 0x2c
c0d00876:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d00878:	f002 fa5a 	bl	c0d02d30 <try_context_set>
c0d0087c:	e04e      	b.n	c0d0091c <sign+0xc8>
c0d0087e:	9403      	str	r4, [sp, #12]
c0d00880:	463c      	mov	r4, r7
c0d00882:	a807      	add	r0, sp, #28
c0d00884:	f002 fa54 	bl	c0d02d30 <try_context_set>
c0d00888:	9011      	str	r0, [sp, #68]	; 0x44
c0d0088a:	a82b      	add	r0, sp, #172	; 0xac
c0d0088c:	9905      	ldr	r1, [sp, #20]
c0d0088e:	4632      	mov	r2, r6
c0d00890:	463b      	mov	r3, r7
c0d00892:	f7ff ff6a 	bl	c0d0076a <message_derive>
c0d00896:	2800      	cmp	r0, #0
c0d00898:	d059      	beq.n	c0d0094e <sign+0xfa>
c0d0089a:	9604      	str	r6, [sp, #16]
c0d0089c:	f001 f994 	bl	c0d01bc8 <io_seproxyhal_io_heartbeat>
c0d008a0:	af1b      	add	r7, sp, #108	; 0x6c
c0d008a2:	a92b      	add	r1, sp, #172	; 0xac
c0d008a4:	4a2b      	ldr	r2, [pc, #172]	; (c0d00954 <sign+0x100>)
c0d008a6:	447a      	add	r2, pc
c0d008a8:	4638      	mov	r0, r7
c0d008aa:	f7ff fea3 	bl	c0d005f4 <affine_scalar_mul>
c0d008ae:	f001 f98b 	bl	c0d01bc8 <io_seproxyhal_io_heartbeat>
c0d008b2:	2220      	movs	r2, #32
c0d008b4:	9e03      	ldr	r6, [sp, #12]
c0d008b6:	4630      	mov	r0, r6
c0d008b8:	4639      	mov	r1, r7
c0d008ba:	f005 f91f 	bl	c0d05afc <__aeabi_memcpy>
c0d008be:	203f      	movs	r0, #63	; 0x3f
c0d008c0:	5c38      	ldrb	r0, [r7, r0]
c0d008c2:	07c0      	lsls	r0, r0, #31
c0d008c4:	d00e      	beq.n	c0d008e4 <sign+0x90>
c0d008c6:	a82b      	add	r0, sp, #172	; 0xac
c0d008c8:	a913      	add	r1, sp, #76	; 0x4c
c0d008ca:	460a      	mov	r2, r1
c0d008cc:	4603      	mov	r3, r0
c0d008ce:	9506      	str	r5, [sp, #24]
c0d008d0:	9402      	str	r4, [sp, #8]
c0d008d2:	cbf0      	ldmia	r3!, {r4, r5, r6, r7}
c0d008d4:	c2f0      	stmia	r2!, {r4, r5, r6, r7}
c0d008d6:	cbf0      	ldmia	r3!, {r4, r5, r6, r7}
c0d008d8:	c2f0      	stmia	r2!, {r4, r5, r6, r7}
c0d008da:	9c02      	ldr	r4, [sp, #8]
c0d008dc:	9e03      	ldr	r6, [sp, #12]
c0d008de:	9d06      	ldr	r5, [sp, #24]
c0d008e0:	f7ff fc5a 	bl	c0d00198 <scalar_negate>
c0d008e4:	9400      	str	r4, [sp, #0]
c0d008e6:	3620      	adds	r6, #32
c0d008e8:	aa1b      	add	r2, sp, #108	; 0x6c
c0d008ea:	4630      	mov	r0, r6
c0d008ec:	9905      	ldr	r1, [sp, #20]
c0d008ee:	9b04      	ldr	r3, [sp, #16]
c0d008f0:	f7ff ff8e 	bl	c0d00810 <message_hash>
c0d008f4:	2800      	cmp	r0, #0
c0d008f6:	d02a      	beq.n	c0d0094e <sign+0xfa>
c0d008f8:	f001 f966 	bl	c0d01bc8 <io_seproxyhal_io_heartbeat>
c0d008fc:	9a05      	ldr	r2, [sp, #20]
c0d008fe:	3240      	adds	r2, #64	; 0x40
c0d00900:	ac13      	add	r4, sp, #76	; 0x4c
c0d00902:	4620      	mov	r0, r4
c0d00904:	4631      	mov	r1, r6
c0d00906:	f7ff fc37 	bl	c0d00178 <scalar_mul>
c0d0090a:	f001 f95d 	bl	c0d01bc8 <io_seproxyhal_io_heartbeat>
c0d0090e:	a92b      	add	r1, sp, #172	; 0xac
c0d00910:	4630      	mov	r0, r6
c0d00912:	4622      	mov	r2, r4
c0d00914:	f7ff fc20 	bl	c0d00158 <scalar_add>
c0d00918:	f001 f956 	bl	c0d01bc8 <io_seproxyhal_io_heartbeat>
c0d0091c:	f002 f9fc 	bl	c0d02d18 <try_context_get>
c0d00920:	a907      	add	r1, sp, #28
c0d00922:	4288      	cmp	r0, r1
c0d00924:	d102      	bne.n	c0d0092c <sign+0xd8>
c0d00926:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d00928:	f002 fa02 	bl	c0d02d30 <try_context_set>
c0d0092c:	a813      	add	r0, sp, #76	; 0x4c
c0d0092e:	2420      	movs	r4, #32
c0d00930:	4621      	mov	r1, r4
c0d00932:	f005 f8f3 	bl	c0d05b1c <explicit_bzero>
c0d00936:	a82b      	add	r0, sp, #172	; 0xac
c0d00938:	4621      	mov	r1, r4
c0d0093a:	f005 f8ef 	bl	c0d05b1c <explicit_bzero>
c0d0093e:	a807      	add	r0, sp, #28
c0d00940:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d00942:	2800      	cmp	r0, #0
c0d00944:	d104      	bne.n	c0d00950 <sign+0xfc>
c0d00946:	4268      	negs	r0, r5
c0d00948:	4168      	adcs	r0, r5
c0d0094a:	b033      	add	sp, #204	; 0xcc
c0d0094c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0094e:	2002      	movs	r0, #2
c0d00950:	f000 fd8d 	bl	c0d0146e <os_longjmp>
c0d00954:	000056fa 	.word	0x000056fa

c0d00958 <cx_blake2b_init_no_throw>:
c0d00958:	b403      	push	{r0, r1}
c0d0095a:	4801      	ldr	r0, [pc, #4]	; (c0d00960 <cx_blake2b_init_no_throw+0x8>)
c0d0095c:	e041      	b.n	c0d009e2 <cx_trampoline_helper>
c0d0095e:	0000      	.short	0x0000
c0d00960:	00000009 	.word	0x00000009

c0d00964 <cx_crc16_update>:
c0d00964:	b403      	push	{r0, r1}
c0d00966:	4801      	ldr	r0, [pc, #4]	; (c0d0096c <cx_crc16_update+0x8>)
c0d00968:	e03b      	b.n	c0d009e2 <cx_trampoline_helper>
c0d0096a:	0000      	.short	0x0000
c0d0096c:	0000000c 	.word	0x0000000c

c0d00970 <cx_hash_get_size>:
c0d00970:	b403      	push	{r0, r1}
c0d00972:	4801      	ldr	r0, [pc, #4]	; (c0d00978 <cx_hash_get_size+0x8>)
c0d00974:	e035      	b.n	c0d009e2 <cx_trampoline_helper>
c0d00976:	0000      	.short	0x0000
c0d00978:	0000002f 	.word	0x0000002f

c0d0097c <cx_hash_no_throw>:
c0d0097c:	b403      	push	{r0, r1}
c0d0097e:	4801      	ldr	r0, [pc, #4]	; (c0d00984 <cx_hash_no_throw+0x8>)
c0d00980:	e02f      	b.n	c0d009e2 <cx_trampoline_helper>
c0d00982:	0000      	.short	0x0000
c0d00984:	00000032 	.word	0x00000032

c0d00988 <cx_hash_sha256>:
c0d00988:	b403      	push	{r0, r1}
c0d0098a:	4801      	ldr	r0, [pc, #4]	; (c0d00990 <cx_hash_sha256+0x8>)
c0d0098c:	e029      	b.n	c0d009e2 <cx_trampoline_helper>
c0d0098e:	0000      	.short	0x0000
c0d00990:	00000033 	.word	0x00000033

c0d00994 <cx_math_addm_no_throw>:
c0d00994:	b403      	push	{r0, r1}
c0d00996:	4801      	ldr	r0, [pc, #4]	; (c0d0099c <cx_math_addm_no_throw+0x8>)
c0d00998:	e023      	b.n	c0d009e2 <cx_trampoline_helper>
c0d0099a:	0000      	.short	0x0000
c0d0099c:	00000045 	.word	0x00000045

c0d009a0 <cx_math_invprimem_no_throw>:
c0d009a0:	b403      	push	{r0, r1}
c0d009a2:	4801      	ldr	r0, [pc, #4]	; (c0d009a8 <cx_math_invprimem_no_throw+0x8>)
c0d009a4:	e01d      	b.n	c0d009e2 <cx_trampoline_helper>
c0d009a6:	0000      	.short	0x0000
c0d009a8:	00000049 	.word	0x00000049

c0d009ac <cx_math_multm_no_throw>:
c0d009ac:	b403      	push	{r0, r1}
c0d009ae:	4801      	ldr	r0, [pc, #4]	; (c0d009b4 <cx_math_multm_no_throw+0x8>)
c0d009b0:	e017      	b.n	c0d009e2 <cx_trampoline_helper>
c0d009b2:	0000      	.short	0x0000
c0d009b4:	0000004c 	.word	0x0000004c

c0d009b8 <cx_math_powm_no_throw>:
c0d009b8:	b403      	push	{r0, r1}
c0d009ba:	4801      	ldr	r0, [pc, #4]	; (c0d009c0 <cx_math_powm_no_throw+0x8>)
c0d009bc:	e011      	b.n	c0d009e2 <cx_trampoline_helper>
c0d009be:	0000      	.short	0x0000
c0d009c0:	0000004f 	.word	0x0000004f

c0d009c4 <cx_math_subm_no_throw>:
c0d009c4:	b403      	push	{r0, r1}
c0d009c6:	4801      	ldr	r0, [pc, #4]	; (c0d009cc <cx_math_subm_no_throw+0x8>)
c0d009c8:	e00b      	b.n	c0d009e2 <cx_trampoline_helper>
c0d009ca:	0000      	.short	0x0000
c0d009cc:	00000050 	.word	0x00000050

c0d009d0 <cx_rng_no_throw>:
c0d009d0:	b403      	push	{r0, r1}
c0d009d2:	4801      	ldr	r0, [pc, #4]	; (c0d009d8 <cx_rng_no_throw+0x8>)
c0d009d4:	e005      	b.n	c0d009e2 <cx_trampoline_helper>
c0d009d6:	0000      	.short	0x0000
c0d009d8:	00000058 	.word	0x00000058

c0d009dc <cx_x448>:
c0d009dc:	b403      	push	{r0, r1}
c0d009de:	4802      	ldr	r0, [pc, #8]	; (c0d009e8 <cx_trampoline_helper+0x6>)
c0d009e0:	e7ff      	b.n	c0d009e2 <cx_trampoline_helper>

c0d009e2 <cx_trampoline_helper>:
c0d009e2:	4902      	ldr	r1, [pc, #8]	; (c0d009ec <cx_trampoline_helper+0xa>)
c0d009e4:	4708      	bx	r1
c0d009e6:	0000      	.short	0x0000
c0d009e8:	00000071 	.word	0x00000071
c0d009ec:	00120001 	.word	0x00120001

c0d009f0 <handle_get_address>:
c0d009f0:	b510      	push	{r4, lr}
c0d009f2:	2b04      	cmp	r3, #4
c0d009f4:	d108      	bne.n	c0d00a08 <handle_get_address+0x18>
c0d009f6:	9c02      	ldr	r4, [sp, #8]
c0d009f8:	4610      	mov	r0, r2
c0d009fa:	f000 f873 	bl	c0d00ae4 <ui_get_address>
c0d009fe:	6820      	ldr	r0, [r4, #0]
c0d00a00:	2110      	movs	r1, #16
c0d00a02:	4301      	orrs	r1, r0
c0d00a04:	6021      	str	r1, [r4, #0]
c0d00a06:	bd10      	pop	{r4, pc}
c0d00a08:	2002      	movs	r0, #2
c0d00a0a:	f000 fd30 	bl	c0d0146e <os_longjmp>

c0d00a0e <ux_get_address_result_flow_address_step_init>:
c0d00a0e:	b510      	push	{r4, lr}
c0d00a10:	4604      	mov	r4, r0
c0d00a12:	f000 f805 	bl	c0d00a20 <gen_address>
c0d00a16:	4620      	mov	r0, r4
c0d00a18:	f004 fc04 	bl	c0d05224 <ux_layout_paging_init>
c0d00a1c:	bd10      	pop	{r4, pc}
	...

c0d00a20 <gen_address>:
c0d00a20:	b5b0      	push	{r4, r5, r7, lr}
c0d00a22:	b0a4      	sub	sp, #144	; 0x90
c0d00a24:	4d19      	ldr	r5, [pc, #100]	; (c0d00a8c <gen_address+0x6c>)
c0d00a26:	7828      	ldrb	r0, [r5, #0]
c0d00a28:	2800      	cmp	r0, #0
c0d00a2a:	d12a      	bne.n	c0d00a82 <gen_address+0x62>
c0d00a2c:	ac18      	add	r4, sp, #96	; 0x60
c0d00a2e:	4620      	mov	r0, r4
c0d00a30:	f005 f998 	bl	c0d05d64 <setjmp>
c0d00a34:	85a0      	strh	r0, [r4, #44]	; 0x2c
c0d00a36:	0400      	lsls	r0, r0, #16
c0d00a38:	d112      	bne.n	c0d00a60 <gen_address+0x40>
c0d00a3a:	a818      	add	r0, sp, #96	; 0x60
c0d00a3c:	f002 f978 	bl	c0d02d30 <try_context_set>
c0d00a40:	9022      	str	r0, [sp, #136]	; 0x88
c0d00a42:	4813      	ldr	r0, [pc, #76]	; (c0d00a90 <gen_address+0x70>)
c0d00a44:	6801      	ldr	r1, [r0, #0]
c0d00a46:	466c      	mov	r4, sp
c0d00a48:	4620      	mov	r0, r4
c0d00a4a:	f7ff fde9 	bl	c0d00620 <generate_keypair>
c0d00a4e:	4811      	ldr	r0, [pc, #68]	; (c0d00a94 <gen_address+0x74>)
c0d00a50:	2138      	movs	r1, #56	; 0x38
c0d00a52:	4622      	mov	r2, r4
c0d00a54:	f7ff fe0c 	bl	c0d00670 <generate_address>
c0d00a58:	2800      	cmp	r0, #0
c0d00a5a:	d014      	beq.n	c0d00a86 <gen_address+0x66>
c0d00a5c:	2001      	movs	r0, #1
c0d00a5e:	7028      	strb	r0, [r5, #0]
c0d00a60:	f002 f95a 	bl	c0d02d18 <try_context_get>
c0d00a64:	a918      	add	r1, sp, #96	; 0x60
c0d00a66:	4288      	cmp	r0, r1
c0d00a68:	d102      	bne.n	c0d00a70 <gen_address+0x50>
c0d00a6a:	9822      	ldr	r0, [sp, #136]	; 0x88
c0d00a6c:	f002 f960 	bl	c0d02d30 <try_context_set>
c0d00a70:	4668      	mov	r0, sp
c0d00a72:	3040      	adds	r0, #64	; 0x40
c0d00a74:	2120      	movs	r1, #32
c0d00a76:	f005 f851 	bl	c0d05b1c <explicit_bzero>
c0d00a7a:	a818      	add	r0, sp, #96	; 0x60
c0d00a7c:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d00a7e:	2800      	cmp	r0, #0
c0d00a80:	d102      	bne.n	c0d00a88 <gen_address+0x68>
c0d00a82:	b024      	add	sp, #144	; 0x90
c0d00a84:	bdb0      	pop	{r4, r5, r7, pc}
c0d00a86:	2002      	movs	r0, #2
c0d00a88:	f000 fcf1 	bl	c0d0146e <os_longjmp>
c0d00a8c:	20000253 	.word	0x20000253
c0d00a90:	20000254 	.word	0x20000254
c0d00a94:	20000200 	.word	0x20000200

c0d00a98 <ux_get_address_result_flow_approve_step_validateinit>:
c0d00a98:	b510      	push	{r4, lr}
c0d00a9a:	4805      	ldr	r0, [pc, #20]	; (c0d00ab0 <ux_get_address_result_flow_approve_step_validateinit+0x18>)
c0d00a9c:	4905      	ldr	r1, [pc, #20]	; (c0d00ab4 <ux_get_address_result_flow_approve_step_validateinit+0x1c>)
c0d00a9e:	2438      	movs	r4, #56	; 0x38
c0d00aa0:	4622      	mov	r2, r4
c0d00aa2:	f005 f82b 	bl	c0d05afc <__aeabi_memcpy>
c0d00aa6:	2101      	movs	r1, #1
c0d00aa8:	4620      	mov	r0, r4
c0d00aaa:	f000 f859 	bl	c0d00b60 <sendResponse>
c0d00aae:	bd10      	pop	{r4, pc}
c0d00ab0:	200003f0 	.word	0x200003f0
c0d00ab4:	20000200 	.word	0x20000200

c0d00ab8 <ux_get_address_result_flow_reject_step_validateinit>:
c0d00ab8:	b580      	push	{r7, lr}
c0d00aba:	2000      	movs	r0, #0
c0d00abc:	4601      	mov	r1, r0
c0d00abe:	f000 f84f 	bl	c0d00b60 <sendResponse>
c0d00ac2:	bd80      	pop	{r7, pc}

c0d00ac4 <ux_get_address_flow_generate_step_validateinit>:
c0d00ac4:	b580      	push	{r7, lr}
c0d00ac6:	4903      	ldr	r1, [pc, #12]	; (c0d00ad4 <ux_get_address_flow_generate_step_validateinit+0x10>)
c0d00ac8:	4479      	add	r1, pc
c0d00aca:	2000      	movs	r0, #0
c0d00acc:	4602      	mov	r2, r0
c0d00ace:	f004 fa69 	bl	c0d04fa4 <ux_flow_init>
c0d00ad2:	bd80      	pop	{r7, pc}
c0d00ad4:	000055c8 	.word	0x000055c8

c0d00ad8 <ux_get_address_flow_cancel_step_validateinit>:
c0d00ad8:	b580      	push	{r7, lr}
c0d00ada:	2000      	movs	r0, #0
c0d00adc:	4601      	mov	r1, r0
c0d00ade:	f000 f83f 	bl	c0d00b60 <sendResponse>
c0d00ae2:	bd80      	pop	{r7, pc}

c0d00ae4 <ui_get_address>:
c0d00ae4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00ae6:	b081      	sub	sp, #4
c0d00ae8:	4916      	ldr	r1, [pc, #88]	; (c0d00b44 <ui_get_address+0x60>)
c0d00aea:	2400      	movs	r4, #0
c0d00aec:	700c      	strb	r4, [r1, #0]
c0d00aee:	4916      	ldr	r1, [pc, #88]	; (c0d00b48 <ui_get_address+0x64>)
c0d00af0:	700c      	strb	r4, [r1, #0]
c0d00af2:	f003 ffa1 	bl	c0d04a38 <read_uint32_be>
c0d00af6:	4602      	mov	r2, r0
c0d00af8:	4814      	ldr	r0, [pc, #80]	; (c0d00b4c <ui_get_address+0x68>)
c0d00afa:	6002      	str	r2, [r0, #0]
c0d00afc:	4815      	ldr	r0, [pc, #84]	; (c0d00b54 <ui_get_address+0x70>)
c0d00afe:	4478      	add	r0, pc
c0d00b00:	4d13      	ldr	r5, [pc, #76]	; (c0d00b50 <ui_get_address+0x6c>)
c0d00b02:	4629      	mov	r1, r5
c0d00b04:	c8c8      	ldmia	r0!, {r3, r6, r7}
c0d00b06:	c1c8      	stmia	r1!, {r3, r6, r7}
c0d00b08:	c8c8      	ldmia	r0!, {r3, r6, r7}
c0d00b0a:	c1c8      	stmia	r1!, {r3, r6, r7}
c0d00b0c:	8803      	ldrh	r3, [r0, #0]
c0d00b0e:	800b      	strh	r3, [r1, #0]
c0d00b10:	7880      	ldrb	r0, [r0, #2]
c0d00b12:	7088      	strb	r0, [r1, #2]
c0d00b14:	4628      	mov	r0, r5
c0d00b16:	300b      	adds	r0, #11
c0d00b18:	2110      	movs	r1, #16
c0d00b1a:	4623      	mov	r3, r4
c0d00b1c:	f004 f85e 	bl	c0d04bdc <value_to_string>
c0d00b20:	4628      	mov	r0, r5
c0d00b22:	f005 f939 	bl	c0d05d98 <strlen>
c0d00b26:	1828      	adds	r0, r5, r0
c0d00b28:	490b      	ldr	r1, [pc, #44]	; (c0d00b58 <ui_get_address+0x74>)
c0d00b2a:	4479      	add	r1, pc
c0d00b2c:	2206      	movs	r2, #6
c0d00b2e:	f004 ffe5 	bl	c0d05afc <__aeabi_memcpy>
c0d00b32:	490a      	ldr	r1, [pc, #40]	; (c0d00b5c <ui_get_address+0x78>)
c0d00b34:	4479      	add	r1, pc
c0d00b36:	4620      	mov	r0, r4
c0d00b38:	4622      	mov	r2, r4
c0d00b3a:	f004 fa33 	bl	c0d04fa4 <ux_flow_init>
c0d00b3e:	b001      	add	sp, #4
c0d00b40:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d00b42:	46c0      	nop			; (mov r8, r8)
c0d00b44:	20000200 	.word	0x20000200
c0d00b48:	20000253 	.word	0x20000253
c0d00b4c:	20000254 	.word	0x20000254
c0d00b50:	20000238 	.word	0x20000238
c0d00b54:	0000564a 	.word	0x0000564a
c0d00b58:	000054e6 	.word	0x000054e6
c0d00b5c:	00005600 	.word	0x00005600

c0d00b60 <sendResponse>:
c0d00b60:	b510      	push	{r4, lr}
c0d00b62:	2900      	cmp	r1, #0
c0d00b64:	d102      	bne.n	c0d00b6c <sendResponse+0xc>
c0d00b66:	227a      	movs	r2, #122	; 0x7a
c0d00b68:	43d3      	mvns	r3, r2
c0d00b6a:	e000      	b.n	c0d00b6e <sendResponse+0xe>
c0d00b6c:	2300      	movs	r3, #0
c0d00b6e:	1c42      	adds	r2, r0, #1
c0d00b70:	b2d4      	uxtb	r4, r2
c0d00b72:	4a08      	ldr	r2, [pc, #32]	; (c0d00b94 <sendResponse+0x34>)
c0d00b74:	5513      	strb	r3, [r2, r4]
c0d00b76:	2900      	cmp	r1, #0
c0d00b78:	d101      	bne.n	c0d00b7e <sendResponse+0x1e>
c0d00b7a:	2169      	movs	r1, #105	; 0x69
c0d00b7c:	e001      	b.n	c0d00b82 <sendResponse+0x22>
c0d00b7e:	216f      	movs	r1, #111	; 0x6f
c0d00b80:	43c9      	mvns	r1, r1
c0d00b82:	5411      	strb	r1, [r2, r0]
c0d00b84:	1c80      	adds	r0, r0, #2
c0d00b86:	b2c1      	uxtb	r1, r0
c0d00b88:	2020      	movs	r0, #32
c0d00b8a:	f000 fe8d 	bl	c0d018a8 <io_exchange>
c0d00b8e:	f000 fc57 	bl	c0d01440 <ui_idle>
c0d00b92:	bd10      	pop	{r4, pc}
c0d00b94:	200003f0 	.word	0x200003f0

c0d00b98 <handleApdu>:
c0d00b98:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00b9a:	b08f      	sub	sp, #60	; 0x3c
c0d00b9c:	460c      	mov	r4, r1
c0d00b9e:	4605      	mov	r5, r0
c0d00ba0:	920e      	str	r2, [sp, #56]	; 0x38
c0d00ba2:	af02      	add	r7, sp, #8
c0d00ba4:	4638      	mov	r0, r7
c0d00ba6:	f005 f8dd 	bl	c0d05d64 <setjmp>
c0d00baa:	4606      	mov	r6, r0
c0d00bac:	85b8      	strh	r0, [r7, #44]	; 0x2c
c0d00bae:	b280      	uxth	r0, r0
c0d00bb0:	2800      	cmp	r0, #0
c0d00bb2:	d01e      	beq.n	c0d00bf2 <handleApdu+0x5a>
c0d00bb4:	2805      	cmp	r0, #5
c0d00bb6:	d05c      	beq.n	c0d00c72 <handleApdu+0xda>
c0d00bb8:	4635      	mov	r5, r6
c0d00bba:	a802      	add	r0, sp, #8
c0d00bbc:	2100      	movs	r1, #0
c0d00bbe:	8581      	strh	r1, [r0, #44]	; 0x2c
c0d00bc0:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d00bc2:	f002 f8b5 	bl	c0d02d30 <try_context_set>
c0d00bc6:	200f      	movs	r0, #15
c0d00bc8:	0300      	lsls	r0, r0, #12
c0d00bca:	4030      	ands	r0, r6
c0d00bcc:	2109      	movs	r1, #9
c0d00bce:	0309      	lsls	r1, r1, #12
c0d00bd0:	4288      	cmp	r0, r1
c0d00bd2:	d003      	beq.n	c0d00bdc <handleApdu+0x44>
c0d00bd4:	2103      	movs	r1, #3
c0d00bd6:	0349      	lsls	r1, r1, #13
c0d00bd8:	4288      	cmp	r0, r1
c0d00bda:	d137      	bne.n	c0d00c4c <handleApdu+0xb4>
c0d00bdc:	0a30      	lsrs	r0, r6, #8
c0d00bde:	6821      	ldr	r1, [r4, #0]
c0d00be0:	4a31      	ldr	r2, [pc, #196]	; (c0d00ca8 <handleApdu+0x110>)
c0d00be2:	5450      	strb	r0, [r2, r1]
c0d00be4:	6820      	ldr	r0, [r4, #0]
c0d00be6:	1880      	adds	r0, r0, r2
c0d00be8:	7045      	strb	r5, [r0, #1]
c0d00bea:	6820      	ldr	r0, [r4, #0]
c0d00bec:	1c80      	adds	r0, r0, #2
c0d00bee:	6020      	str	r0, [r4, #0]
c0d00bf0:	e01e      	b.n	c0d00c30 <handleApdu+0x98>
c0d00bf2:	a802      	add	r0, sp, #8
c0d00bf4:	f002 f89c 	bl	c0d02d30 <try_context_set>
c0d00bf8:	900c      	str	r0, [sp, #48]	; 0x30
c0d00bfa:	4a2b      	ldr	r2, [pc, #172]	; (c0d00ca8 <handleApdu+0x110>)
c0d00bfc:	7810      	ldrb	r0, [r2, #0]
c0d00bfe:	28e0      	cmp	r0, #224	; 0xe0
c0d00c00:	d133      	bne.n	c0d00c6a <handleApdu+0xd2>
c0d00c02:	7913      	ldrb	r3, [r2, #4]
c0d00c04:	1d58      	adds	r0, r3, #5
c0d00c06:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d00c08:	4288      	cmp	r0, r1
c0d00c0a:	d12e      	bne.n	c0d00c6a <handleApdu+0xd2>
c0d00c0c:	7850      	ldrb	r0, [r2, #1]
c0d00c0e:	2802      	cmp	r0, #2
c0d00c10:	d008      	beq.n	c0d00c24 <handleApdu+0x8c>
c0d00c12:	2803      	cmp	r0, #3
c0d00c14:	d136      	bne.n	c0d00c84 <handleApdu+0xec>
c0d00c16:	78d1      	ldrb	r1, [r2, #3]
c0d00c18:	7890      	ldrb	r0, [r2, #2]
c0d00c1a:	9500      	str	r5, [sp, #0]
c0d00c1c:	1d52      	adds	r2, r2, #5
c0d00c1e:	f001 feba 	bl	c0d02996 <handle_sign_tx>
c0d00c22:	e005      	b.n	c0d00c30 <handleApdu+0x98>
c0d00c24:	78d1      	ldrb	r1, [r2, #3]
c0d00c26:	7890      	ldrb	r0, [r2, #2]
c0d00c28:	9500      	str	r5, [sp, #0]
c0d00c2a:	1d52      	adds	r2, r2, #5
c0d00c2c:	f7ff fee0 	bl	c0d009f0 <handle_get_address>
c0d00c30:	f002 f872 	bl	c0d02d18 <try_context_get>
c0d00c34:	a902      	add	r1, sp, #8
c0d00c36:	4288      	cmp	r0, r1
c0d00c38:	d102      	bne.n	c0d00c40 <handleApdu+0xa8>
c0d00c3a:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d00c3c:	f002 f878 	bl	c0d02d30 <try_context_set>
c0d00c40:	a802      	add	r0, sp, #8
c0d00c42:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d00c44:	2800      	cmp	r0, #0
c0d00c46:	d112      	bne.n	c0d00c6e <handleApdu+0xd6>
c0d00c48:	b00f      	add	sp, #60	; 0x3c
c0d00c4a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d00c4c:	4817      	ldr	r0, [pc, #92]	; (c0d00cac <handleApdu+0x114>)
c0d00c4e:	4006      	ands	r6, r0
c0d00c50:	200d      	movs	r0, #13
c0d00c52:	02c0      	lsls	r0, r0, #11
c0d00c54:	1831      	adds	r1, r6, r0
c0d00c56:	0a0e      	lsrs	r6, r1, #8
c0d00c58:	1c80      	adds	r0, r0, #2
c0d00c5a:	4632      	mov	r2, r6
c0d00c5c:	4281      	cmp	r1, r0
c0d00c5e:	4630      	mov	r0, r6
c0d00c60:	d1bd      	bne.n	c0d00bde <handleApdu+0x46>
c0d00c62:	f000 fbed 	bl	c0d01440 <ui_idle>
c0d00c66:	4630      	mov	r0, r6
c0d00c68:	e7b9      	b.n	c0d00bde <handleApdu+0x46>
c0d00c6a:	2037      	movs	r0, #55	; 0x37
c0d00c6c:	0240      	lsls	r0, r0, #9
c0d00c6e:	f000 fbfe 	bl	c0d0146e <os_longjmp>
c0d00c72:	a802      	add	r0, sp, #8
c0d00c74:	2100      	movs	r1, #0
c0d00c76:	8581      	strh	r1, [r0, #44]	; 0x2c
c0d00c78:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d00c7a:	f002 f859 	bl	c0d02d30 <try_context_set>
c0d00c7e:	2005      	movs	r0, #5
c0d00c80:	f000 fbf5 	bl	c0d0146e <os_longjmp>
c0d00c84:	2801      	cmp	r0, #1
c0d00c86:	d10a      	bne.n	c0d00c9e <handleApdu+0x106>
c0d00c88:	2000      	movs	r0, #0
c0d00c8a:	7090      	strb	r0, [r2, #2]
c0d00c8c:	2001      	movs	r0, #1
c0d00c8e:	7050      	strb	r0, [r2, #1]
c0d00c90:	7010      	strb	r0, [r2, #0]
c0d00c92:	2003      	movs	r0, #3
c0d00c94:	6020      	str	r0, [r4, #0]
c0d00c96:	2009      	movs	r0, #9
c0d00c98:	0300      	lsls	r0, r0, #12
c0d00c9a:	f000 fbe8 	bl	c0d0146e <os_longjmp>
c0d00c9e:	206d      	movs	r0, #109	; 0x6d
c0d00ca0:	0200      	lsls	r0, r0, #8
c0d00ca2:	f000 fbe4 	bl	c0d0146e <os_longjmp>
c0d00ca6:	46c0      	nop			; (mov r8, r8)
c0d00ca8:	200003f0 	.word	0x200003f0
c0d00cac:	000007ff 	.word	0x000007ff

c0d00cb0 <app_main>:
c0d00cb0:	b090      	sub	sp, #64	; 0x40
c0d00cb2:	2600      	movs	r6, #0
c0d00cb4:	960f      	str	r6, [sp, #60]	; 0x3c
c0d00cb6:	960e      	str	r6, [sp, #56]	; 0x38
c0d00cb8:	960d      	str	r6, [sp, #52]	; 0x34
c0d00cba:	a80c      	add	r0, sp, #48	; 0x30
c0d00cbc:	8006      	strh	r6, [r0, #0]
c0d00cbe:	466d      	mov	r5, sp
c0d00cc0:	4628      	mov	r0, r5
c0d00cc2:	f005 f84f 	bl	c0d05d64 <setjmp>
c0d00cc6:	85a8      	strh	r0, [r5, #44]	; 0x2c
c0d00cc8:	b285      	uxth	r5, r0
c0d00cca:	2d00      	cmp	r5, #0
c0d00ccc:	d016      	beq.n	c0d00cfc <app_main+0x4c>
c0d00cce:	2d05      	cmp	r5, #5
c0d00cd0:	d058      	beq.n	c0d00d84 <app_main+0xd4>
c0d00cd2:	4604      	mov	r4, r0
c0d00cd4:	4607      	mov	r7, r0
c0d00cd6:	4668      	mov	r0, sp
c0d00cd8:	8586      	strh	r6, [r0, #44]	; 0x2c
c0d00cda:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00cdc:	f002 f828 	bl	c0d02d30 <try_context_set>
c0d00ce0:	200f      	movs	r0, #15
c0d00ce2:	0301      	lsls	r1, r0, #12
c0d00ce4:	4021      	ands	r1, r4
c0d00ce6:	2009      	movs	r0, #9
c0d00ce8:	0300      	lsls	r0, r0, #12
c0d00cea:	4281      	cmp	r1, r0
c0d00cec:	d003      	beq.n	c0d00cf6 <app_main+0x46>
c0d00cee:	2203      	movs	r2, #3
c0d00cf0:	0352      	lsls	r2, r2, #13
c0d00cf2:	4291      	cmp	r1, r2
c0d00cf4:	d11f      	bne.n	c0d00d36 <app_main+0x86>
c0d00cf6:	a90c      	add	r1, sp, #48	; 0x30
c0d00cf8:	800f      	strh	r7, [r1, #0]
c0d00cfa:	e023      	b.n	c0d00d44 <app_main+0x94>
c0d00cfc:	4668      	mov	r0, sp
c0d00cfe:	f002 f817 	bl	c0d02d30 <try_context_set>
c0d00d02:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d00d04:	910f      	str	r1, [sp, #60]	; 0x3c
c0d00d06:	960e      	str	r6, [sp, #56]	; 0x38
c0d00d08:	900a      	str	r0, [sp, #40]	; 0x28
c0d00d0a:	980d      	ldr	r0, [sp, #52]	; 0x34
c0d00d0c:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0d00d0e:	b2c0      	uxtb	r0, r0
c0d00d10:	b289      	uxth	r1, r1
c0d00d12:	f000 fdc9 	bl	c0d018a8 <io_exchange>
c0d00d16:	900f      	str	r0, [sp, #60]	; 0x3c
c0d00d18:	960d      	str	r6, [sp, #52]	; 0x34
c0d00d1a:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0d00d1c:	2800      	cmp	r0, #0
c0d00d1e:	d039      	beq.n	c0d00d94 <app_main+0xe4>
c0d00d20:	20ff      	movs	r0, #255	; 0xff
c0d00d22:	3006      	adds	r0, #6
c0d00d24:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0d00d26:	4281      	cmp	r1, r0
c0d00d28:	d237      	bcs.n	c0d00d9a <app_main+0xea>
c0d00d2a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0d00d2c:	a80d      	add	r0, sp, #52	; 0x34
c0d00d2e:	a90e      	add	r1, sp, #56	; 0x38
c0d00d30:	f7ff ff32 	bl	c0d00b98 <handleApdu>
c0d00d34:	e018      	b.n	c0d00d68 <app_main+0xb8>
c0d00d36:	491c      	ldr	r1, [pc, #112]	; (c0d00da8 <app_main+0xf8>)
c0d00d38:	400c      	ands	r4, r1
c0d00d3a:	210d      	movs	r1, #13
c0d00d3c:	02c9      	lsls	r1, r1, #11
c0d00d3e:	1861      	adds	r1, r4, r1
c0d00d40:	aa0c      	add	r2, sp, #48	; 0x30
c0d00d42:	8011      	strh	r1, [r2, #0]
c0d00d44:	4285      	cmp	r5, r0
c0d00d46:	d003      	beq.n	c0d00d50 <app_main+0xa0>
c0d00d48:	2010      	movs	r0, #16
c0d00d4a:	990d      	ldr	r1, [sp, #52]	; 0x34
c0d00d4c:	4381      	bics	r1, r0
c0d00d4e:	910d      	str	r1, [sp, #52]	; 0x34
c0d00d50:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d00d52:	0a00      	lsrs	r0, r0, #8
c0d00d54:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d00d56:	4a15      	ldr	r2, [pc, #84]	; (c0d00dac <app_main+0xfc>)
c0d00d58:	5450      	strb	r0, [r2, r1]
c0d00d5a:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d00d5c:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d00d5e:	1889      	adds	r1, r1, r2
c0d00d60:	7048      	strb	r0, [r1, #1]
c0d00d62:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d00d64:	1c80      	adds	r0, r0, #2
c0d00d66:	900e      	str	r0, [sp, #56]	; 0x38
c0d00d68:	f001 ffd6 	bl	c0d02d18 <try_context_get>
c0d00d6c:	4669      	mov	r1, sp
c0d00d6e:	4288      	cmp	r0, r1
c0d00d70:	d102      	bne.n	c0d00d78 <app_main+0xc8>
c0d00d72:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00d74:	f001 ffdc 	bl	c0d02d30 <try_context_set>
c0d00d78:	4668      	mov	r0, sp
c0d00d7a:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d00d7c:	2800      	cmp	r0, #0
c0d00d7e:	d09c      	beq.n	c0d00cba <app_main+0xa>
c0d00d80:	f000 fb75 	bl	c0d0146e <os_longjmp>
c0d00d84:	4668      	mov	r0, sp
c0d00d86:	8586      	strh	r6, [r0, #44]	; 0x2c
c0d00d88:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00d8a:	f001 ffd1 	bl	c0d02d30 <try_context_set>
c0d00d8e:	2005      	movs	r0, #5
c0d00d90:	f000 fb6d 	bl	c0d0146e <os_longjmp>
c0d00d94:	4803      	ldr	r0, [pc, #12]	; (c0d00da4 <app_main+0xf4>)
c0d00d96:	f000 fb6a 	bl	c0d0146e <os_longjmp>
c0d00d9a:	2037      	movs	r0, #55	; 0x37
c0d00d9c:	0240      	lsls	r0, r0, #9
c0d00d9e:	f000 fb66 	bl	c0d0146e <os_longjmp>
c0d00da2:	46c0      	nop			; (mov r8, r8)
c0d00da4:	00006982 	.word	0x00006982
c0d00da8:	000007ff 	.word	0x000007ff
c0d00dac:	200003f0 	.word	0x200003f0

c0d00db0 <io_seproxyhal_display>:
c0d00db0:	b580      	push	{r7, lr}
c0d00db2:	f000 fcdb 	bl	c0d0176c <io_seproxyhal_display_default>
c0d00db6:	bd80      	pop	{r7, pc}

c0d00db8 <io_event>:
c0d00db8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00dba:	b081      	sub	sp, #4
c0d00dbc:	4df8      	ldr	r5, [pc, #992]	; (c0d011a0 <io_event+0x3e8>)
c0d00dbe:	7828      	ldrb	r0, [r5, #0]
c0d00dc0:	280c      	cmp	r0, #12
c0d00dc2:	dd10      	ble.n	c0d00de6 <io_event+0x2e>
c0d00dc4:	280d      	cmp	r0, #13
c0d00dc6:	d068      	beq.n	c0d00e9a <io_event+0xe2>
c0d00dc8:	280e      	cmp	r0, #14
c0d00dca:	d100      	bne.n	c0d00dce <io_event+0x16>
c0d00dcc:	e0b0      	b.n	c0d00f30 <io_event+0x178>
c0d00dce:	2815      	cmp	r0, #21
c0d00dd0:	d10f      	bne.n	c0d00df2 <io_event+0x3a>
c0d00dd2:	48f4      	ldr	r0, [pc, #976]	; (c0d011a4 <io_event+0x3ec>)
c0d00dd4:	7980      	ldrb	r0, [r0, #6]
c0d00dd6:	2801      	cmp	r0, #1
c0d00dd8:	d10b      	bne.n	c0d00df2 <io_event+0x3a>
c0d00dda:	79a8      	ldrb	r0, [r5, #6]
c0d00ddc:	0700      	lsls	r0, r0, #28
c0d00dde:	d408      	bmi.n	c0d00df2 <io_event+0x3a>
c0d00de0:	2005      	movs	r0, #5
c0d00de2:	f000 fb44 	bl	c0d0146e <os_longjmp>
c0d00de6:	2805      	cmp	r0, #5
c0d00de8:	d100      	bne.n	c0d00dec <io_event+0x34>
c0d00dea:	e0f6      	b.n	c0d00fda <io_event+0x222>
c0d00dec:	280c      	cmp	r0, #12
c0d00dee:	d100      	bne.n	c0d00df2 <io_event+0x3a>
c0d00df0:	e25e      	b.n	c0d012b0 <io_event+0x4f8>
c0d00df2:	4ced      	ldr	r4, [pc, #948]	; (c0d011a8 <io_event+0x3f0>)
c0d00df4:	2700      	movs	r7, #0
c0d00df6:	6067      	str	r7, [r4, #4]
c0d00df8:	2001      	movs	r0, #1
c0d00dfa:	7020      	strb	r0, [r4, #0]
c0d00dfc:	4620      	mov	r0, r4
c0d00dfe:	f001 ff31 	bl	c0d02c64 <os_ux>
c0d00e02:	2004      	movs	r0, #4
c0d00e04:	f001 ffa2 	bl	c0d02d4c <os_sched_last_status>
c0d00e08:	6060      	str	r0, [r4, #4]
c0d00e0a:	2869      	cmp	r0, #105	; 0x69
c0d00e0c:	d000      	beq.n	c0d00e10 <io_event+0x58>
c0d00e0e:	e13e      	b.n	c0d0108e <io_event+0x2d6>
c0d00e10:	f000 fc52 	bl	c0d016b8 <io_seproxyhal_init_ux>
c0d00e14:	f000 fc52 	bl	c0d016bc <io_seproxyhal_init_button>
c0d00e18:	25c2      	movs	r5, #194	; 0xc2
c0d00e1a:	4ee4      	ldr	r6, [pc, #912]	; (c0d011ac <io_event+0x3f4>)
c0d00e1c:	5377      	strh	r7, [r6, r5]
c0d00e1e:	2004      	movs	r0, #4
c0d00e20:	f001 ff94 	bl	c0d02d4c <os_sched_last_status>
c0d00e24:	6060      	str	r0, [r4, #4]
c0d00e26:	2800      	cmp	r0, #0
c0d00e28:	d100      	bne.n	c0d00e2c <io_event+0x74>
c0d00e2a:	e241      	b.n	c0d012b0 <io_event+0x4f8>
c0d00e2c:	2897      	cmp	r0, #151	; 0x97
c0d00e2e:	d100      	bne.n	c0d00e32 <io_event+0x7a>
c0d00e30:	e23e      	b.n	c0d012b0 <io_event+0x4f8>
c0d00e32:	24c4      	movs	r4, #196	; 0xc4
c0d00e34:	5930      	ldr	r0, [r6, r4]
c0d00e36:	2800      	cmp	r0, #0
c0d00e38:	d100      	bne.n	c0d00e3c <io_event+0x84>
c0d00e3a:	e239      	b.n	c0d012b0 <io_event+0x4f8>
c0d00e3c:	5b70      	ldrh	r0, [r6, r5]
c0d00e3e:	21c8      	movs	r1, #200	; 0xc8
c0d00e40:	5c71      	ldrb	r1, [r6, r1]
c0d00e42:	b280      	uxth	r0, r0
c0d00e44:	4288      	cmp	r0, r1
c0d00e46:	d300      	bcc.n	c0d00e4a <io_event+0x92>
c0d00e48:	e232      	b.n	c0d012b0 <io_event+0x4f8>
c0d00e4a:	f001 ff4b 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d00e4e:	2800      	cmp	r0, #0
c0d00e50:	d000      	beq.n	c0d00e54 <io_event+0x9c>
c0d00e52:	e22d      	b.n	c0d012b0 <io_event+0x4f8>
c0d00e54:	f001 fece 	bl	c0d02bf4 <os_perso_isonboarded>
c0d00e58:	28aa      	cmp	r0, #170	; 0xaa
c0d00e5a:	d104      	bne.n	c0d00e66 <io_event+0xae>
c0d00e5c:	f001 fef4 	bl	c0d02c48 <os_global_pin_is_validated>
c0d00e60:	28aa      	cmp	r0, #170	; 0xaa
c0d00e62:	d000      	beq.n	c0d00e66 <io_event+0xae>
c0d00e64:	e224      	b.n	c0d012b0 <io_event+0x4f8>
c0d00e66:	5931      	ldr	r1, [r6, r4]
c0d00e68:	5b72      	ldrh	r2, [r6, r5]
c0d00e6a:	0150      	lsls	r0, r2, #5
c0d00e6c:	1808      	adds	r0, r1, r0
c0d00e6e:	23d0      	movs	r3, #208	; 0xd0
c0d00e70:	58f3      	ldr	r3, [r6, r3]
c0d00e72:	2b00      	cmp	r3, #0
c0d00e74:	d004      	beq.n	c0d00e80 <io_event+0xc8>
c0d00e76:	4798      	blx	r3
c0d00e78:	2800      	cmp	r0, #0
c0d00e7a:	d007      	beq.n	c0d00e8c <io_event+0xd4>
c0d00e7c:	5b72      	ldrh	r2, [r6, r5]
c0d00e7e:	5931      	ldr	r1, [r6, r4]
c0d00e80:	2801      	cmp	r0, #1
c0d00e82:	d101      	bne.n	c0d00e88 <io_event+0xd0>
c0d00e84:	0150      	lsls	r0, r2, #5
c0d00e86:	1808      	adds	r0, r1, r0
c0d00e88:	f000 fc70 	bl	c0d0176c <io_seproxyhal_display_default>
c0d00e8c:	5b70      	ldrh	r0, [r6, r5]
c0d00e8e:	1c40      	adds	r0, r0, #1
c0d00e90:	5370      	strh	r0, [r6, r5]
c0d00e92:	5931      	ldr	r1, [r6, r4]
c0d00e94:	2900      	cmp	r1, #0
c0d00e96:	d1d2      	bne.n	c0d00e3e <io_event+0x86>
c0d00e98:	e20a      	b.n	c0d012b0 <io_event+0x4f8>
c0d00e9a:	4cc3      	ldr	r4, [pc, #780]	; (c0d011a8 <io_event+0x3f0>)
c0d00e9c:	2700      	movs	r7, #0
c0d00e9e:	6067      	str	r7, [r4, #4]
c0d00ea0:	2001      	movs	r0, #1
c0d00ea2:	7020      	strb	r0, [r4, #0]
c0d00ea4:	4620      	mov	r0, r4
c0d00ea6:	f001 fedd 	bl	c0d02c64 <os_ux>
c0d00eaa:	2004      	movs	r0, #4
c0d00eac:	f001 ff4e 	bl	c0d02d4c <os_sched_last_status>
c0d00eb0:	6060      	str	r0, [r4, #4]
c0d00eb2:	2800      	cmp	r0, #0
c0d00eb4:	d100      	bne.n	c0d00eb8 <io_event+0x100>
c0d00eb6:	e1fb      	b.n	c0d012b0 <io_event+0x4f8>
c0d00eb8:	2869      	cmp	r0, #105	; 0x69
c0d00eba:	d100      	bne.n	c0d00ebe <io_event+0x106>
c0d00ebc:	e178      	b.n	c0d011b0 <io_event+0x3f8>
c0d00ebe:	2897      	cmp	r0, #151	; 0x97
c0d00ec0:	d100      	bne.n	c0d00ec4 <io_event+0x10c>
c0d00ec2:	e1f5      	b.n	c0d012b0 <io_event+0x4f8>
c0d00ec4:	25c4      	movs	r5, #196	; 0xc4
c0d00ec6:	4cb9      	ldr	r4, [pc, #740]	; (c0d011ac <io_event+0x3f4>)
c0d00ec8:	5960      	ldr	r0, [r4, r5]
c0d00eca:	2800      	cmp	r0, #0
c0d00ecc:	d100      	bne.n	c0d00ed0 <io_event+0x118>
c0d00ece:	e1e7      	b.n	c0d012a0 <io_event+0x4e8>
c0d00ed0:	26c2      	movs	r6, #194	; 0xc2
c0d00ed2:	5ba0      	ldrh	r0, [r4, r6]
c0d00ed4:	21c8      	movs	r1, #200	; 0xc8
c0d00ed6:	5c61      	ldrb	r1, [r4, r1]
c0d00ed8:	b280      	uxth	r0, r0
c0d00eda:	4288      	cmp	r0, r1
c0d00edc:	d300      	bcc.n	c0d00ee0 <io_event+0x128>
c0d00ede:	e1df      	b.n	c0d012a0 <io_event+0x4e8>
c0d00ee0:	f001 ff00 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d00ee4:	2800      	cmp	r0, #0
c0d00ee6:	d000      	beq.n	c0d00eea <io_event+0x132>
c0d00ee8:	e1da      	b.n	c0d012a0 <io_event+0x4e8>
c0d00eea:	f001 fe83 	bl	c0d02bf4 <os_perso_isonboarded>
c0d00eee:	28aa      	cmp	r0, #170	; 0xaa
c0d00ef0:	d104      	bne.n	c0d00efc <io_event+0x144>
c0d00ef2:	f001 fea9 	bl	c0d02c48 <os_global_pin_is_validated>
c0d00ef6:	28aa      	cmp	r0, #170	; 0xaa
c0d00ef8:	d000      	beq.n	c0d00efc <io_event+0x144>
c0d00efa:	e1d1      	b.n	c0d012a0 <io_event+0x4e8>
c0d00efc:	5961      	ldr	r1, [r4, r5]
c0d00efe:	5ba2      	ldrh	r2, [r4, r6]
c0d00f00:	0150      	lsls	r0, r2, #5
c0d00f02:	1808      	adds	r0, r1, r0
c0d00f04:	23d0      	movs	r3, #208	; 0xd0
c0d00f06:	58e3      	ldr	r3, [r4, r3]
c0d00f08:	2b00      	cmp	r3, #0
c0d00f0a:	d004      	beq.n	c0d00f16 <io_event+0x15e>
c0d00f0c:	4798      	blx	r3
c0d00f0e:	2800      	cmp	r0, #0
c0d00f10:	d007      	beq.n	c0d00f22 <io_event+0x16a>
c0d00f12:	5ba2      	ldrh	r2, [r4, r6]
c0d00f14:	5961      	ldr	r1, [r4, r5]
c0d00f16:	2801      	cmp	r0, #1
c0d00f18:	d101      	bne.n	c0d00f1e <io_event+0x166>
c0d00f1a:	0150      	lsls	r0, r2, #5
c0d00f1c:	1808      	adds	r0, r1, r0
c0d00f1e:	f000 fc25 	bl	c0d0176c <io_seproxyhal_display_default>
c0d00f22:	5ba0      	ldrh	r0, [r4, r6]
c0d00f24:	1c40      	adds	r0, r0, #1
c0d00f26:	53a0      	strh	r0, [r4, r6]
c0d00f28:	5961      	ldr	r1, [r4, r5]
c0d00f2a:	2900      	cmp	r1, #0
c0d00f2c:	d1d2      	bne.n	c0d00ed4 <io_event+0x11c>
c0d00f2e:	e1b7      	b.n	c0d012a0 <io_event+0x4e8>
c0d00f30:	4d9d      	ldr	r5, [pc, #628]	; (c0d011a8 <io_event+0x3f0>)
c0d00f32:	2700      	movs	r7, #0
c0d00f34:	606f      	str	r7, [r5, #4]
c0d00f36:	2001      	movs	r0, #1
c0d00f38:	7028      	strb	r0, [r5, #0]
c0d00f3a:	4628      	mov	r0, r5
c0d00f3c:	f001 fe92 	bl	c0d02c64 <os_ux>
c0d00f40:	2004      	movs	r0, #4
c0d00f42:	f001 ff03 	bl	c0d02d4c <os_sched_last_status>
c0d00f46:	6068      	str	r0, [r5, #4]
c0d00f48:	2869      	cmp	r0, #105	; 0x69
c0d00f4a:	d000      	beq.n	c0d00f4e <io_event+0x196>
c0d00f4c:	e0d5      	b.n	c0d010fa <io_event+0x342>
c0d00f4e:	f000 fbb3 	bl	c0d016b8 <io_seproxyhal_init_ux>
c0d00f52:	f000 fbb3 	bl	c0d016bc <io_seproxyhal_init_button>
c0d00f56:	24c2      	movs	r4, #194	; 0xc2
c0d00f58:	4e94      	ldr	r6, [pc, #592]	; (c0d011ac <io_event+0x3f4>)
c0d00f5a:	2000      	movs	r0, #0
c0d00f5c:	5330      	strh	r0, [r6, r4]
c0d00f5e:	2004      	movs	r0, #4
c0d00f60:	f001 fef4 	bl	c0d02d4c <os_sched_last_status>
c0d00f64:	6068      	str	r0, [r5, #4]
c0d00f66:	2800      	cmp	r0, #0
c0d00f68:	d100      	bne.n	c0d00f6c <io_event+0x1b4>
c0d00f6a:	e1a1      	b.n	c0d012b0 <io_event+0x4f8>
c0d00f6c:	2897      	cmp	r0, #151	; 0x97
c0d00f6e:	d100      	bne.n	c0d00f72 <io_event+0x1ba>
c0d00f70:	e19e      	b.n	c0d012b0 <io_event+0x4f8>
c0d00f72:	25c4      	movs	r5, #196	; 0xc4
c0d00f74:	5970      	ldr	r0, [r6, r5]
c0d00f76:	2800      	cmp	r0, #0
c0d00f78:	d100      	bne.n	c0d00f7c <io_event+0x1c4>
c0d00f7a:	e199      	b.n	c0d012b0 <io_event+0x4f8>
c0d00f7c:	5b30      	ldrh	r0, [r6, r4]
c0d00f7e:	21c8      	movs	r1, #200	; 0xc8
c0d00f80:	5c71      	ldrb	r1, [r6, r1]
c0d00f82:	b280      	uxth	r0, r0
c0d00f84:	4288      	cmp	r0, r1
c0d00f86:	d300      	bcc.n	c0d00f8a <io_event+0x1d2>
c0d00f88:	e192      	b.n	c0d012b0 <io_event+0x4f8>
c0d00f8a:	f001 feab 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d00f8e:	2800      	cmp	r0, #0
c0d00f90:	d000      	beq.n	c0d00f94 <io_event+0x1dc>
c0d00f92:	e18d      	b.n	c0d012b0 <io_event+0x4f8>
c0d00f94:	f001 fe2e 	bl	c0d02bf4 <os_perso_isonboarded>
c0d00f98:	28aa      	cmp	r0, #170	; 0xaa
c0d00f9a:	d104      	bne.n	c0d00fa6 <io_event+0x1ee>
c0d00f9c:	f001 fe54 	bl	c0d02c48 <os_global_pin_is_validated>
c0d00fa0:	28aa      	cmp	r0, #170	; 0xaa
c0d00fa2:	d000      	beq.n	c0d00fa6 <io_event+0x1ee>
c0d00fa4:	e184      	b.n	c0d012b0 <io_event+0x4f8>
c0d00fa6:	5971      	ldr	r1, [r6, r5]
c0d00fa8:	5b32      	ldrh	r2, [r6, r4]
c0d00faa:	0150      	lsls	r0, r2, #5
c0d00fac:	1808      	adds	r0, r1, r0
c0d00fae:	23d0      	movs	r3, #208	; 0xd0
c0d00fb0:	58f3      	ldr	r3, [r6, r3]
c0d00fb2:	2b00      	cmp	r3, #0
c0d00fb4:	d004      	beq.n	c0d00fc0 <io_event+0x208>
c0d00fb6:	4798      	blx	r3
c0d00fb8:	2800      	cmp	r0, #0
c0d00fba:	d007      	beq.n	c0d00fcc <io_event+0x214>
c0d00fbc:	5b32      	ldrh	r2, [r6, r4]
c0d00fbe:	5971      	ldr	r1, [r6, r5]
c0d00fc0:	2801      	cmp	r0, #1
c0d00fc2:	d101      	bne.n	c0d00fc8 <io_event+0x210>
c0d00fc4:	0150      	lsls	r0, r2, #5
c0d00fc6:	1808      	adds	r0, r1, r0
c0d00fc8:	f000 fbd0 	bl	c0d0176c <io_seproxyhal_display_default>
c0d00fcc:	5b30      	ldrh	r0, [r6, r4]
c0d00fce:	1c40      	adds	r0, r0, #1
c0d00fd0:	5330      	strh	r0, [r6, r4]
c0d00fd2:	5971      	ldr	r1, [r6, r5]
c0d00fd4:	2900      	cmp	r1, #0
c0d00fd6:	d1d2      	bne.n	c0d00f7e <io_event+0x1c6>
c0d00fd8:	e16a      	b.n	c0d012b0 <io_event+0x4f8>
c0d00fda:	4ce4      	ldr	r4, [pc, #912]	; (c0d0136c <io_event+0x5b4>)
c0d00fdc:	2700      	movs	r7, #0
c0d00fde:	6067      	str	r7, [r4, #4]
c0d00fe0:	2001      	movs	r0, #1
c0d00fe2:	7020      	strb	r0, [r4, #0]
c0d00fe4:	4620      	mov	r0, r4
c0d00fe6:	f001 fe3d 	bl	c0d02c64 <os_ux>
c0d00fea:	2004      	movs	r0, #4
c0d00fec:	f001 feae 	bl	c0d02d4c <os_sched_last_status>
c0d00ff0:	6060      	str	r0, [r4, #4]
c0d00ff2:	2800      	cmp	r0, #0
c0d00ff4:	d100      	bne.n	c0d00ff8 <io_event+0x240>
c0d00ff6:	e15b      	b.n	c0d012b0 <io_event+0x4f8>
c0d00ff8:	2897      	cmp	r0, #151	; 0x97
c0d00ffa:	d100      	bne.n	c0d00ffe <io_event+0x246>
c0d00ffc:	e158      	b.n	c0d012b0 <io_event+0x4f8>
c0d00ffe:	2869      	cmp	r0, #105	; 0x69
c0d01000:	d000      	beq.n	c0d01004 <io_event+0x24c>
c0d01002:	e114      	b.n	c0d0122e <io_event+0x476>
c0d01004:	f000 fb58 	bl	c0d016b8 <io_seproxyhal_init_ux>
c0d01008:	f000 fb58 	bl	c0d016bc <io_seproxyhal_init_button>
c0d0100c:	25c2      	movs	r5, #194	; 0xc2
c0d0100e:	4ed8      	ldr	r6, [pc, #864]	; (c0d01370 <io_event+0x5b8>)
c0d01010:	5377      	strh	r7, [r6, r5]
c0d01012:	2004      	movs	r0, #4
c0d01014:	f001 fe9a 	bl	c0d02d4c <os_sched_last_status>
c0d01018:	6060      	str	r0, [r4, #4]
c0d0101a:	2800      	cmp	r0, #0
c0d0101c:	d100      	bne.n	c0d01020 <io_event+0x268>
c0d0101e:	e147      	b.n	c0d012b0 <io_event+0x4f8>
c0d01020:	2897      	cmp	r0, #151	; 0x97
c0d01022:	d100      	bne.n	c0d01026 <io_event+0x26e>
c0d01024:	e144      	b.n	c0d012b0 <io_event+0x4f8>
c0d01026:	24c4      	movs	r4, #196	; 0xc4
c0d01028:	5930      	ldr	r0, [r6, r4]
c0d0102a:	2800      	cmp	r0, #0
c0d0102c:	d100      	bne.n	c0d01030 <io_event+0x278>
c0d0102e:	e13f      	b.n	c0d012b0 <io_event+0x4f8>
c0d01030:	5b70      	ldrh	r0, [r6, r5]
c0d01032:	21c8      	movs	r1, #200	; 0xc8
c0d01034:	5c71      	ldrb	r1, [r6, r1]
c0d01036:	b280      	uxth	r0, r0
c0d01038:	4288      	cmp	r0, r1
c0d0103a:	d300      	bcc.n	c0d0103e <io_event+0x286>
c0d0103c:	e138      	b.n	c0d012b0 <io_event+0x4f8>
c0d0103e:	f001 fe51 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d01042:	2800      	cmp	r0, #0
c0d01044:	d000      	beq.n	c0d01048 <io_event+0x290>
c0d01046:	e133      	b.n	c0d012b0 <io_event+0x4f8>
c0d01048:	f001 fdd4 	bl	c0d02bf4 <os_perso_isonboarded>
c0d0104c:	28aa      	cmp	r0, #170	; 0xaa
c0d0104e:	d104      	bne.n	c0d0105a <io_event+0x2a2>
c0d01050:	f001 fdfa 	bl	c0d02c48 <os_global_pin_is_validated>
c0d01054:	28aa      	cmp	r0, #170	; 0xaa
c0d01056:	d000      	beq.n	c0d0105a <io_event+0x2a2>
c0d01058:	e12a      	b.n	c0d012b0 <io_event+0x4f8>
c0d0105a:	5931      	ldr	r1, [r6, r4]
c0d0105c:	5b72      	ldrh	r2, [r6, r5]
c0d0105e:	0150      	lsls	r0, r2, #5
c0d01060:	1808      	adds	r0, r1, r0
c0d01062:	23d0      	movs	r3, #208	; 0xd0
c0d01064:	58f3      	ldr	r3, [r6, r3]
c0d01066:	2b00      	cmp	r3, #0
c0d01068:	d004      	beq.n	c0d01074 <io_event+0x2bc>
c0d0106a:	4798      	blx	r3
c0d0106c:	2800      	cmp	r0, #0
c0d0106e:	d007      	beq.n	c0d01080 <io_event+0x2c8>
c0d01070:	5b72      	ldrh	r2, [r6, r5]
c0d01072:	5931      	ldr	r1, [r6, r4]
c0d01074:	2801      	cmp	r0, #1
c0d01076:	d101      	bne.n	c0d0107c <io_event+0x2c4>
c0d01078:	0150      	lsls	r0, r2, #5
c0d0107a:	1808      	adds	r0, r1, r0
c0d0107c:	f000 fb76 	bl	c0d0176c <io_seproxyhal_display_default>
c0d01080:	5b70      	ldrh	r0, [r6, r5]
c0d01082:	1c40      	adds	r0, r0, #1
c0d01084:	5370      	strh	r0, [r6, r5]
c0d01086:	5931      	ldr	r1, [r6, r4]
c0d01088:	2900      	cmp	r1, #0
c0d0108a:	d1d2      	bne.n	c0d01032 <io_event+0x27a>
c0d0108c:	e110      	b.n	c0d012b0 <io_event+0x4f8>
c0d0108e:	25c4      	movs	r5, #196	; 0xc4
c0d01090:	4cb7      	ldr	r4, [pc, #732]	; (c0d01370 <io_event+0x5b8>)
c0d01092:	5960      	ldr	r0, [r4, r5]
c0d01094:	2800      	cmp	r0, #0
c0d01096:	d100      	bne.n	c0d0109a <io_event+0x2e2>
c0d01098:	e102      	b.n	c0d012a0 <io_event+0x4e8>
c0d0109a:	26c2      	movs	r6, #194	; 0xc2
c0d0109c:	5ba0      	ldrh	r0, [r4, r6]
c0d0109e:	21c8      	movs	r1, #200	; 0xc8
c0d010a0:	5c61      	ldrb	r1, [r4, r1]
c0d010a2:	b280      	uxth	r0, r0
c0d010a4:	4288      	cmp	r0, r1
c0d010a6:	d300      	bcc.n	c0d010aa <io_event+0x2f2>
c0d010a8:	e0fa      	b.n	c0d012a0 <io_event+0x4e8>
c0d010aa:	f001 fe1b 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d010ae:	2800      	cmp	r0, #0
c0d010b0:	d000      	beq.n	c0d010b4 <io_event+0x2fc>
c0d010b2:	e0f5      	b.n	c0d012a0 <io_event+0x4e8>
c0d010b4:	f001 fd9e 	bl	c0d02bf4 <os_perso_isonboarded>
c0d010b8:	28aa      	cmp	r0, #170	; 0xaa
c0d010ba:	d104      	bne.n	c0d010c6 <io_event+0x30e>
c0d010bc:	f001 fdc4 	bl	c0d02c48 <os_global_pin_is_validated>
c0d010c0:	28aa      	cmp	r0, #170	; 0xaa
c0d010c2:	d000      	beq.n	c0d010c6 <io_event+0x30e>
c0d010c4:	e0ec      	b.n	c0d012a0 <io_event+0x4e8>
c0d010c6:	5961      	ldr	r1, [r4, r5]
c0d010c8:	5ba2      	ldrh	r2, [r4, r6]
c0d010ca:	0150      	lsls	r0, r2, #5
c0d010cc:	1808      	adds	r0, r1, r0
c0d010ce:	23d0      	movs	r3, #208	; 0xd0
c0d010d0:	58e3      	ldr	r3, [r4, r3]
c0d010d2:	2b00      	cmp	r3, #0
c0d010d4:	d004      	beq.n	c0d010e0 <io_event+0x328>
c0d010d6:	4798      	blx	r3
c0d010d8:	2800      	cmp	r0, #0
c0d010da:	d007      	beq.n	c0d010ec <io_event+0x334>
c0d010dc:	5ba2      	ldrh	r2, [r4, r6]
c0d010de:	5961      	ldr	r1, [r4, r5]
c0d010e0:	2801      	cmp	r0, #1
c0d010e2:	d101      	bne.n	c0d010e8 <io_event+0x330>
c0d010e4:	0150      	lsls	r0, r2, #5
c0d010e6:	1808      	adds	r0, r1, r0
c0d010e8:	f000 fb40 	bl	c0d0176c <io_seproxyhal_display_default>
c0d010ec:	5ba0      	ldrh	r0, [r4, r6]
c0d010ee:	1c40      	adds	r0, r0, #1
c0d010f0:	53a0      	strh	r0, [r4, r6]
c0d010f2:	5961      	ldr	r1, [r4, r5]
c0d010f4:	2900      	cmp	r1, #0
c0d010f6:	d1d2      	bne.n	c0d0109e <io_event+0x2e6>
c0d010f8:	e0d2      	b.n	c0d012a0 <io_event+0x4e8>
c0d010fa:	4604      	mov	r4, r0
c0d010fc:	20dc      	movs	r0, #220	; 0xdc
c0d010fe:	4e9c      	ldr	r6, [pc, #624]	; (c0d01370 <io_event+0x5b8>)
c0d01100:	5831      	ldr	r1, [r6, r0]
c0d01102:	2900      	cmp	r1, #0
c0d01104:	d010      	beq.n	c0d01128 <io_event+0x370>
c0d01106:	460a      	mov	r2, r1
c0d01108:	3a64      	subs	r2, #100	; 0x64
c0d0110a:	d200      	bcs.n	c0d0110e <io_event+0x356>
c0d0110c:	463a      	mov	r2, r7
c0d0110e:	5032      	str	r2, [r6, r0]
c0d01110:	2964      	cmp	r1, #100	; 0x64
c0d01112:	d809      	bhi.n	c0d01128 <io_event+0x370>
c0d01114:	21d8      	movs	r1, #216	; 0xd8
c0d01116:	5871      	ldr	r1, [r6, r1]
c0d01118:	2900      	cmp	r1, #0
c0d0111a:	d100      	bne.n	c0d0111e <io_event+0x366>
c0d0111c:	e0d1      	b.n	c0d012c2 <io_event+0x50a>
c0d0111e:	22e0      	movs	r2, #224	; 0xe0
c0d01120:	58b2      	ldr	r2, [r6, r2]
c0d01122:	5032      	str	r2, [r6, r0]
c0d01124:	2000      	movs	r0, #0
c0d01126:	4788      	blx	r1
c0d01128:	2c00      	cmp	r4, #0
c0d0112a:	d100      	bne.n	c0d0112e <io_event+0x376>
c0d0112c:	e0c0      	b.n	c0d012b0 <io_event+0x4f8>
c0d0112e:	2c97      	cmp	r4, #151	; 0x97
c0d01130:	d100      	bne.n	c0d01134 <io_event+0x37c>
c0d01132:	e0bd      	b.n	c0d012b0 <io_event+0x4f8>
c0d01134:	24c4      	movs	r4, #196	; 0xc4
c0d01136:	5930      	ldr	r0, [r6, r4]
c0d01138:	2800      	cmp	r0, #0
c0d0113a:	d02b      	beq.n	c0d01194 <io_event+0x3dc>
c0d0113c:	25c2      	movs	r5, #194	; 0xc2
c0d0113e:	5b70      	ldrh	r0, [r6, r5]
c0d01140:	21c8      	movs	r1, #200	; 0xc8
c0d01142:	5c71      	ldrb	r1, [r6, r1]
c0d01144:	b280      	uxth	r0, r0
c0d01146:	4288      	cmp	r0, r1
c0d01148:	d224      	bcs.n	c0d01194 <io_event+0x3dc>
c0d0114a:	f001 fdcb 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d0114e:	2800      	cmp	r0, #0
c0d01150:	d120      	bne.n	c0d01194 <io_event+0x3dc>
c0d01152:	f001 fd4f 	bl	c0d02bf4 <os_perso_isonboarded>
c0d01156:	28aa      	cmp	r0, #170	; 0xaa
c0d01158:	d103      	bne.n	c0d01162 <io_event+0x3aa>
c0d0115a:	f001 fd75 	bl	c0d02c48 <os_global_pin_is_validated>
c0d0115e:	28aa      	cmp	r0, #170	; 0xaa
c0d01160:	d118      	bne.n	c0d01194 <io_event+0x3dc>
c0d01162:	5931      	ldr	r1, [r6, r4]
c0d01164:	5b72      	ldrh	r2, [r6, r5]
c0d01166:	0150      	lsls	r0, r2, #5
c0d01168:	1808      	adds	r0, r1, r0
c0d0116a:	23d0      	movs	r3, #208	; 0xd0
c0d0116c:	58f3      	ldr	r3, [r6, r3]
c0d0116e:	2b00      	cmp	r3, #0
c0d01170:	d004      	beq.n	c0d0117c <io_event+0x3c4>
c0d01172:	4798      	blx	r3
c0d01174:	2800      	cmp	r0, #0
c0d01176:	d007      	beq.n	c0d01188 <io_event+0x3d0>
c0d01178:	5b72      	ldrh	r2, [r6, r5]
c0d0117a:	5931      	ldr	r1, [r6, r4]
c0d0117c:	2801      	cmp	r0, #1
c0d0117e:	d101      	bne.n	c0d01184 <io_event+0x3cc>
c0d01180:	0150      	lsls	r0, r2, #5
c0d01182:	1808      	adds	r0, r1, r0
c0d01184:	f000 faf2 	bl	c0d0176c <io_seproxyhal_display_default>
c0d01188:	5b70      	ldrh	r0, [r6, r5]
c0d0118a:	1c40      	adds	r0, r0, #1
c0d0118c:	5370      	strh	r0, [r6, r5]
c0d0118e:	5931      	ldr	r1, [r6, r4]
c0d01190:	2900      	cmp	r1, #0
c0d01192:	d1d5      	bne.n	c0d01140 <io_event+0x388>
c0d01194:	20c8      	movs	r0, #200	; 0xc8
c0d01196:	5c30      	ldrb	r0, [r6, r0]
c0d01198:	21c2      	movs	r1, #194	; 0xc2
c0d0119a:	5a71      	ldrh	r1, [r6, r1]
c0d0119c:	e084      	b.n	c0d012a8 <io_event+0x4f0>
c0d0119e:	46c0      	nop			; (mov r8, r8)
c0d011a0:	20000370 	.word	0x20000370
c0d011a4:	20000544 	.word	0x20000544
c0d011a8:	20000360 	.word	0x20000360
c0d011ac:	20000258 	.word	0x20000258
c0d011b0:	f000 fa82 	bl	c0d016b8 <io_seproxyhal_init_ux>
c0d011b4:	f000 fa82 	bl	c0d016bc <io_seproxyhal_init_button>
c0d011b8:	25c2      	movs	r5, #194	; 0xc2
c0d011ba:	4e6d      	ldr	r6, [pc, #436]	; (c0d01370 <io_event+0x5b8>)
c0d011bc:	5377      	strh	r7, [r6, r5]
c0d011be:	2004      	movs	r0, #4
c0d011c0:	f001 fdc4 	bl	c0d02d4c <os_sched_last_status>
c0d011c4:	6060      	str	r0, [r4, #4]
c0d011c6:	2800      	cmp	r0, #0
c0d011c8:	d072      	beq.n	c0d012b0 <io_event+0x4f8>
c0d011ca:	2897      	cmp	r0, #151	; 0x97
c0d011cc:	d070      	beq.n	c0d012b0 <io_event+0x4f8>
c0d011ce:	24c4      	movs	r4, #196	; 0xc4
c0d011d0:	5930      	ldr	r0, [r6, r4]
c0d011d2:	2800      	cmp	r0, #0
c0d011d4:	d06c      	beq.n	c0d012b0 <io_event+0x4f8>
c0d011d6:	5b70      	ldrh	r0, [r6, r5]
c0d011d8:	21c8      	movs	r1, #200	; 0xc8
c0d011da:	5c71      	ldrb	r1, [r6, r1]
c0d011dc:	b280      	uxth	r0, r0
c0d011de:	4288      	cmp	r0, r1
c0d011e0:	d266      	bcs.n	c0d012b0 <io_event+0x4f8>
c0d011e2:	f001 fd7f 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d011e6:	2800      	cmp	r0, #0
c0d011e8:	d162      	bne.n	c0d012b0 <io_event+0x4f8>
c0d011ea:	f001 fd03 	bl	c0d02bf4 <os_perso_isonboarded>
c0d011ee:	28aa      	cmp	r0, #170	; 0xaa
c0d011f0:	d103      	bne.n	c0d011fa <io_event+0x442>
c0d011f2:	f001 fd29 	bl	c0d02c48 <os_global_pin_is_validated>
c0d011f6:	28aa      	cmp	r0, #170	; 0xaa
c0d011f8:	d15a      	bne.n	c0d012b0 <io_event+0x4f8>
c0d011fa:	5931      	ldr	r1, [r6, r4]
c0d011fc:	5b72      	ldrh	r2, [r6, r5]
c0d011fe:	0150      	lsls	r0, r2, #5
c0d01200:	1808      	adds	r0, r1, r0
c0d01202:	23d0      	movs	r3, #208	; 0xd0
c0d01204:	58f3      	ldr	r3, [r6, r3]
c0d01206:	2b00      	cmp	r3, #0
c0d01208:	d004      	beq.n	c0d01214 <io_event+0x45c>
c0d0120a:	4798      	blx	r3
c0d0120c:	2800      	cmp	r0, #0
c0d0120e:	d007      	beq.n	c0d01220 <io_event+0x468>
c0d01210:	5b72      	ldrh	r2, [r6, r5]
c0d01212:	5931      	ldr	r1, [r6, r4]
c0d01214:	2801      	cmp	r0, #1
c0d01216:	d101      	bne.n	c0d0121c <io_event+0x464>
c0d01218:	0150      	lsls	r0, r2, #5
c0d0121a:	1808      	adds	r0, r1, r0
c0d0121c:	f000 faa6 	bl	c0d0176c <io_seproxyhal_display_default>
c0d01220:	5b70      	ldrh	r0, [r6, r5]
c0d01222:	1c40      	adds	r0, r0, #1
c0d01224:	5370      	strh	r0, [r6, r5]
c0d01226:	5931      	ldr	r1, [r6, r4]
c0d01228:	2900      	cmp	r1, #0
c0d0122a:	d1d5      	bne.n	c0d011d8 <io_event+0x420>
c0d0122c:	e040      	b.n	c0d012b0 <io_event+0x4f8>
c0d0122e:	20d4      	movs	r0, #212	; 0xd4
c0d01230:	4c4f      	ldr	r4, [pc, #316]	; (c0d01370 <io_event+0x5b8>)
c0d01232:	5820      	ldr	r0, [r4, r0]
c0d01234:	2800      	cmp	r0, #0
c0d01236:	d003      	beq.n	c0d01240 <io_event+0x488>
c0d01238:	78e9      	ldrb	r1, [r5, #3]
c0d0123a:	0849      	lsrs	r1, r1, #1
c0d0123c:	f000 fade 	bl	c0d017fc <io_seproxyhal_button_push>
c0d01240:	25c4      	movs	r5, #196	; 0xc4
c0d01242:	5960      	ldr	r0, [r4, r5]
c0d01244:	2800      	cmp	r0, #0
c0d01246:	d02b      	beq.n	c0d012a0 <io_event+0x4e8>
c0d01248:	26c2      	movs	r6, #194	; 0xc2
c0d0124a:	5ba0      	ldrh	r0, [r4, r6]
c0d0124c:	21c8      	movs	r1, #200	; 0xc8
c0d0124e:	5c61      	ldrb	r1, [r4, r1]
c0d01250:	b280      	uxth	r0, r0
c0d01252:	4288      	cmp	r0, r1
c0d01254:	d224      	bcs.n	c0d012a0 <io_event+0x4e8>
c0d01256:	f001 fd45 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d0125a:	2800      	cmp	r0, #0
c0d0125c:	d120      	bne.n	c0d012a0 <io_event+0x4e8>
c0d0125e:	f001 fcc9 	bl	c0d02bf4 <os_perso_isonboarded>
c0d01262:	28aa      	cmp	r0, #170	; 0xaa
c0d01264:	d103      	bne.n	c0d0126e <io_event+0x4b6>
c0d01266:	f001 fcef 	bl	c0d02c48 <os_global_pin_is_validated>
c0d0126a:	28aa      	cmp	r0, #170	; 0xaa
c0d0126c:	d118      	bne.n	c0d012a0 <io_event+0x4e8>
c0d0126e:	5961      	ldr	r1, [r4, r5]
c0d01270:	5ba2      	ldrh	r2, [r4, r6]
c0d01272:	0150      	lsls	r0, r2, #5
c0d01274:	1808      	adds	r0, r1, r0
c0d01276:	23d0      	movs	r3, #208	; 0xd0
c0d01278:	58e3      	ldr	r3, [r4, r3]
c0d0127a:	2b00      	cmp	r3, #0
c0d0127c:	d004      	beq.n	c0d01288 <io_event+0x4d0>
c0d0127e:	4798      	blx	r3
c0d01280:	2800      	cmp	r0, #0
c0d01282:	d007      	beq.n	c0d01294 <io_event+0x4dc>
c0d01284:	5ba2      	ldrh	r2, [r4, r6]
c0d01286:	5961      	ldr	r1, [r4, r5]
c0d01288:	2801      	cmp	r0, #1
c0d0128a:	d101      	bne.n	c0d01290 <io_event+0x4d8>
c0d0128c:	0150      	lsls	r0, r2, #5
c0d0128e:	1808      	adds	r0, r1, r0
c0d01290:	f000 fa6c 	bl	c0d0176c <io_seproxyhal_display_default>
c0d01294:	5ba0      	ldrh	r0, [r4, r6]
c0d01296:	1c40      	adds	r0, r0, #1
c0d01298:	53a0      	strh	r0, [r4, r6]
c0d0129a:	5961      	ldr	r1, [r4, r5]
c0d0129c:	2900      	cmp	r1, #0
c0d0129e:	d1d5      	bne.n	c0d0124c <io_event+0x494>
c0d012a0:	20c8      	movs	r0, #200	; 0xc8
c0d012a2:	5c20      	ldrb	r0, [r4, r0]
c0d012a4:	21c2      	movs	r1, #194	; 0xc2
c0d012a6:	5a61      	ldrh	r1, [r4, r1]
c0d012a8:	4281      	cmp	r1, r0
c0d012aa:	d301      	bcc.n	c0d012b0 <io_event+0x4f8>
c0d012ac:	f001 fd1a 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d012b0:	f001 fd18 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d012b4:	2800      	cmp	r0, #0
c0d012b6:	d101      	bne.n	c0d012bc <io_event+0x504>
c0d012b8:	f000 f8e0 	bl	c0d0147c <io_seproxyhal_general_status>
c0d012bc:	2001      	movs	r0, #1
c0d012be:	b001      	add	sp, #4
c0d012c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d012c2:	482c      	ldr	r0, [pc, #176]	; (c0d01374 <io_event+0x5bc>)
c0d012c4:	6801      	ldr	r1, [r0, #0]
c0d012c6:	2900      	cmp	r1, #0
c0d012c8:	d100      	bne.n	c0d012cc <io_event+0x514>
c0d012ca:	e72d      	b.n	c0d01128 <io_event+0x370>
c0d012cc:	2c00      	cmp	r4, #0
c0d012ce:	d0ef      	beq.n	c0d012b0 <io_event+0x4f8>
c0d012d0:	2c97      	cmp	r4, #151	; 0x97
c0d012d2:	d0ed      	beq.n	c0d012b0 <io_event+0x4f8>
c0d012d4:	4f28      	ldr	r7, [pc, #160]	; (c0d01378 <io_event+0x5c0>)
c0d012d6:	6838      	ldr	r0, [r7, #0]
c0d012d8:	1c40      	adds	r0, r0, #1
c0d012da:	f004 fb07 	bl	c0d058ec <__aeabi_uidivmod>
c0d012de:	6039      	str	r1, [r7, #0]
c0d012e0:	f000 f9ea 	bl	c0d016b8 <io_seproxyhal_init_ux>
c0d012e4:	f000 f9ea 	bl	c0d016bc <io_seproxyhal_init_button>
c0d012e8:	27c2      	movs	r7, #194	; 0xc2
c0d012ea:	2000      	movs	r0, #0
c0d012ec:	53f0      	strh	r0, [r6, r7]
c0d012ee:	2004      	movs	r0, #4
c0d012f0:	f001 fd2c 	bl	c0d02d4c <os_sched_last_status>
c0d012f4:	6068      	str	r0, [r5, #4]
c0d012f6:	2800      	cmp	r0, #0
c0d012f8:	d100      	bne.n	c0d012fc <io_event+0x544>
c0d012fa:	e715      	b.n	c0d01128 <io_event+0x370>
c0d012fc:	2897      	cmp	r0, #151	; 0x97
c0d012fe:	d100      	bne.n	c0d01302 <io_event+0x54a>
c0d01300:	e712      	b.n	c0d01128 <io_event+0x370>
c0d01302:	25c4      	movs	r5, #196	; 0xc4
c0d01304:	5970      	ldr	r0, [r6, r5]
c0d01306:	2800      	cmp	r0, #0
c0d01308:	d100      	bne.n	c0d0130c <io_event+0x554>
c0d0130a:	e70d      	b.n	c0d01128 <io_event+0x370>
c0d0130c:	5bf0      	ldrh	r0, [r6, r7]
c0d0130e:	21c8      	movs	r1, #200	; 0xc8
c0d01310:	5c71      	ldrb	r1, [r6, r1]
c0d01312:	b280      	uxth	r0, r0
c0d01314:	4288      	cmp	r0, r1
c0d01316:	d300      	bcc.n	c0d0131a <io_event+0x562>
c0d01318:	e706      	b.n	c0d01128 <io_event+0x370>
c0d0131a:	f001 fce3 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d0131e:	2800      	cmp	r0, #0
c0d01320:	d000      	beq.n	c0d01324 <io_event+0x56c>
c0d01322:	e701      	b.n	c0d01128 <io_event+0x370>
c0d01324:	f001 fc66 	bl	c0d02bf4 <os_perso_isonboarded>
c0d01328:	28aa      	cmp	r0, #170	; 0xaa
c0d0132a:	d104      	bne.n	c0d01336 <io_event+0x57e>
c0d0132c:	f001 fc8c 	bl	c0d02c48 <os_global_pin_is_validated>
c0d01330:	28aa      	cmp	r0, #170	; 0xaa
c0d01332:	d000      	beq.n	c0d01336 <io_event+0x57e>
c0d01334:	e6f8      	b.n	c0d01128 <io_event+0x370>
c0d01336:	5971      	ldr	r1, [r6, r5]
c0d01338:	5bf2      	ldrh	r2, [r6, r7]
c0d0133a:	0150      	lsls	r0, r2, #5
c0d0133c:	1808      	adds	r0, r1, r0
c0d0133e:	23d0      	movs	r3, #208	; 0xd0
c0d01340:	58f3      	ldr	r3, [r6, r3]
c0d01342:	2b00      	cmp	r3, #0
c0d01344:	d004      	beq.n	c0d01350 <io_event+0x598>
c0d01346:	4798      	blx	r3
c0d01348:	2800      	cmp	r0, #0
c0d0134a:	d007      	beq.n	c0d0135c <io_event+0x5a4>
c0d0134c:	5bf2      	ldrh	r2, [r6, r7]
c0d0134e:	5971      	ldr	r1, [r6, r5]
c0d01350:	2801      	cmp	r0, #1
c0d01352:	d101      	bne.n	c0d01358 <io_event+0x5a0>
c0d01354:	0150      	lsls	r0, r2, #5
c0d01356:	1808      	adds	r0, r1, r0
c0d01358:	f000 fa08 	bl	c0d0176c <io_seproxyhal_display_default>
c0d0135c:	5bf0      	ldrh	r0, [r6, r7]
c0d0135e:	1c40      	adds	r0, r0, #1
c0d01360:	53f0      	strh	r0, [r6, r7]
c0d01362:	5971      	ldr	r1, [r6, r5]
c0d01364:	2900      	cmp	r1, #0
c0d01366:	d1d2      	bne.n	c0d0130e <io_event+0x556>
c0d01368:	e6de      	b.n	c0d01128 <io_event+0x370>
c0d0136a:	46c0      	nop			; (mov r8, r8)
c0d0136c:	20000360 	.word	0x20000360
c0d01370:	20000258 	.word	0x20000258
c0d01374:	2000036c 	.word	0x2000036c
c0d01378:	20000368 	.word	0x20000368

c0d0137c <io_exchange_al>:
c0d0137c:	b5b0      	push	{r4, r5, r7, lr}
c0d0137e:	4605      	mov	r5, r0
c0d01380:	2007      	movs	r0, #7
c0d01382:	4028      	ands	r0, r5
c0d01384:	2400      	movs	r4, #0
c0d01386:	2801      	cmp	r0, #1
c0d01388:	d012      	beq.n	c0d013b0 <io_exchange_al+0x34>
c0d0138a:	2802      	cmp	r0, #2
c0d0138c:	d112      	bne.n	c0d013b4 <io_exchange_al+0x38>
c0d0138e:	2900      	cmp	r1, #0
c0d01390:	d007      	beq.n	c0d013a2 <io_exchange_al+0x26>
c0d01392:	480a      	ldr	r0, [pc, #40]	; (c0d013bc <io_exchange_al+0x40>)
c0d01394:	f001 fc9a 	bl	c0d02ccc <io_seph_send>
c0d01398:	0628      	lsls	r0, r5, #24
c0d0139a:	d509      	bpl.n	c0d013b0 <io_exchange_al+0x34>
c0d0139c:	f001 fc12 	bl	c0d02bc4 <halt>
c0d013a0:	e006      	b.n	c0d013b0 <io_exchange_al+0x34>
c0d013a2:	21ff      	movs	r1, #255	; 0xff
c0d013a4:	3152      	adds	r1, #82	; 0x52
c0d013a6:	4805      	ldr	r0, [pc, #20]	; (c0d013bc <io_exchange_al+0x40>)
c0d013a8:	2200      	movs	r2, #0
c0d013aa:	f001 fca7 	bl	c0d02cfc <io_seph_recv>
c0d013ae:	4604      	mov	r4, r0
c0d013b0:	4620      	mov	r0, r4
c0d013b2:	bdb0      	pop	{r4, r5, r7, pc}
c0d013b4:	2002      	movs	r0, #2
c0d013b6:	f000 f85a 	bl	c0d0146e <os_longjmp>
c0d013ba:	46c0      	nop			; (mov r8, r8)
c0d013bc:	200003f0 	.word	0x200003f0

c0d013c0 <app_exit>:
c0d013c0:	b510      	push	{r4, lr}
c0d013c2:	b08c      	sub	sp, #48	; 0x30
c0d013c4:	466c      	mov	r4, sp
c0d013c6:	4620      	mov	r0, r4
c0d013c8:	f004 fccc 	bl	c0d05d64 <setjmp>
c0d013cc:	85a0      	strh	r0, [r4, #44]	; 0x2c
c0d013ce:	0400      	lsls	r0, r0, #16
c0d013d0:	d106      	bne.n	c0d013e0 <app_exit+0x20>
c0d013d2:	4668      	mov	r0, sp
c0d013d4:	f001 fcac 	bl	c0d02d30 <try_context_set>
c0d013d8:	900a      	str	r0, [sp, #40]	; 0x28
c0d013da:	20ff      	movs	r0, #255	; 0xff
c0d013dc:	f001 fc68 	bl	c0d02cb0 <os_sched_exit>
c0d013e0:	f001 fc9a 	bl	c0d02d18 <try_context_get>
c0d013e4:	4669      	mov	r1, sp
c0d013e6:	4288      	cmp	r0, r1
c0d013e8:	d102      	bne.n	c0d013f0 <app_exit+0x30>
c0d013ea:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d013ec:	f001 fca0 	bl	c0d02d30 <try_context_set>
c0d013f0:	4668      	mov	r0, sp
c0d013f2:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d013f4:	2800      	cmp	r0, #0
c0d013f6:	d101      	bne.n	c0d013fc <app_exit+0x3c>
c0d013f8:	b00c      	add	sp, #48	; 0x30
c0d013fa:	bd10      	pop	{r4, pc}
c0d013fc:	f000 f837 	bl	c0d0146e <os_longjmp>

c0d01400 <nv_app_state_init>:
c0d01400:	b5b0      	push	{r4, r5, r7, lr}
c0d01402:	b082      	sub	sp, #8
c0d01404:	4809      	ldr	r0, [pc, #36]	; (c0d0142c <nv_app_state_init+0x2c>)
c0d01406:	4478      	add	r0, pc
c0d01408:	f000 ffc2 	bl	c0d02390 <pic>
c0d0140c:	7800      	ldrb	r0, [r0, #0]
c0d0140e:	2801      	cmp	r0, #1
c0d01410:	d00a      	beq.n	c0d01428 <nv_app_state_init+0x28>
c0d01412:	ac01      	add	r4, sp, #4
c0d01414:	2501      	movs	r5, #1
c0d01416:	7025      	strb	r5, [r4, #0]
c0d01418:	4805      	ldr	r0, [pc, #20]	; (c0d01430 <nv_app_state_init+0x30>)
c0d0141a:	4478      	add	r0, pc
c0d0141c:	f000 ffb8 	bl	c0d02390 <pic>
c0d01420:	4621      	mov	r1, r4
c0d01422:	462a      	mov	r2, r5
c0d01424:	f001 fbda 	bl	c0d02bdc <nvm_write>
c0d01428:	b002      	add	sp, #8
c0d0142a:	bdb0      	pop	{r4, r5, r7, pc}
c0d0142c:	000075f6 	.word	0x000075f6
c0d01430:	000075e2 	.word	0x000075e2

c0d01434 <ux_idle_flow_3_step_validateinit>:
c0d01434:	b580      	push	{r7, lr}
c0d01436:	20ff      	movs	r0, #255	; 0xff
c0d01438:	f001 fc3a 	bl	c0d02cb0 <os_sched_exit>
c0d0143c:	bd80      	pop	{r7, pc}
	...

c0d01440 <ui_idle>:
c0d01440:	b580      	push	{r7, lr}
c0d01442:	4806      	ldr	r0, [pc, #24]	; (c0d0145c <ui_idle+0x1c>)
c0d01444:	7800      	ldrb	r0, [r0, #0]
c0d01446:	2800      	cmp	r0, #0
c0d01448:	d101      	bne.n	c0d0144e <ui_idle+0xe>
c0d0144a:	f004 f983 	bl	c0d05754 <ux_stack_push>
c0d0144e:	4904      	ldr	r1, [pc, #16]	; (c0d01460 <ui_idle+0x20>)
c0d01450:	4479      	add	r1, pc
c0d01452:	2000      	movs	r0, #0
c0d01454:	4602      	mov	r2, r0
c0d01456:	f003 fda5 	bl	c0d04fa4 <ux_flow_init>
c0d0145a:	bd80      	pop	{r7, pc}
c0d0145c:	20000258 	.word	0x20000258
c0d01460:	00004ef8 	.word	0x00004ef8

c0d01464 <os_boot>:
c0d01464:	b580      	push	{r7, lr}
c0d01466:	2000      	movs	r0, #0
c0d01468:	f001 fc62 	bl	c0d02d30 <try_context_set>
c0d0146c:	bd80      	pop	{r7, pc}

c0d0146e <os_longjmp>:
c0d0146e:	4604      	mov	r4, r0
c0d01470:	f001 fc52 	bl	c0d02d18 <try_context_get>
c0d01474:	4621      	mov	r1, r4
c0d01476:	f004 fc81 	bl	c0d05d7c <longjmp>
	...

c0d0147c <io_seproxyhal_general_status>:
c0d0147c:	b580      	push	{r7, lr}
c0d0147e:	4803      	ldr	r0, [pc, #12]	; (c0d0148c <io_seproxyhal_general_status+0x10>)
c0d01480:	4478      	add	r0, pc
c0d01482:	2105      	movs	r1, #5
c0d01484:	f001 fc22 	bl	c0d02ccc <io_seph_send>
c0d01488:	bd80      	pop	{r7, pc}
c0d0148a:	46c0      	nop			; (mov r8, r8)
c0d0148c:	00004edc 	.word	0x00004edc

c0d01490 <io_seproxyhal_handle_usb_event>:
c0d01490:	b510      	push	{r4, lr}
c0d01492:	4816      	ldr	r0, [pc, #88]	; (c0d014ec <io_seproxyhal_handle_usb_event+0x5c>)
c0d01494:	78c0      	ldrb	r0, [r0, #3]
c0d01496:	2803      	cmp	r0, #3
c0d01498:	dc07      	bgt.n	c0d014aa <io_seproxyhal_handle_usb_event+0x1a>
c0d0149a:	2801      	cmp	r0, #1
c0d0149c:	d00d      	beq.n	c0d014ba <io_seproxyhal_handle_usb_event+0x2a>
c0d0149e:	2802      	cmp	r0, #2
c0d014a0:	d11f      	bne.n	c0d014e2 <io_seproxyhal_handle_usb_event+0x52>
c0d014a2:	4813      	ldr	r0, [pc, #76]	; (c0d014f0 <io_seproxyhal_handle_usb_event+0x60>)
c0d014a4:	f002 fcb2 	bl	c0d03e0c <USBD_LL_SOF>
c0d014a8:	bd10      	pop	{r4, pc}
c0d014aa:	2804      	cmp	r0, #4
c0d014ac:	d016      	beq.n	c0d014dc <io_seproxyhal_handle_usb_event+0x4c>
c0d014ae:	2808      	cmp	r0, #8
c0d014b0:	d117      	bne.n	c0d014e2 <io_seproxyhal_handle_usb_event+0x52>
c0d014b2:	480f      	ldr	r0, [pc, #60]	; (c0d014f0 <io_seproxyhal_handle_usb_event+0x60>)
c0d014b4:	f002 fca8 	bl	c0d03e08 <USBD_LL_Resume>
c0d014b8:	bd10      	pop	{r4, pc}
c0d014ba:	4c0d      	ldr	r4, [pc, #52]	; (c0d014f0 <io_seproxyhal_handle_usb_event+0x60>)
c0d014bc:	2101      	movs	r1, #1
c0d014be:	4620      	mov	r0, r4
c0d014c0:	f002 fc9d 	bl	c0d03dfe <USBD_LL_SetSpeed>
c0d014c4:	4620      	mov	r0, r4
c0d014c6:	f002 fc7b 	bl	c0d03dc0 <USBD_LL_Reset>
c0d014ca:	480a      	ldr	r0, [pc, #40]	; (c0d014f4 <io_seproxyhal_handle_usb_event+0x64>)
c0d014cc:	7981      	ldrb	r1, [r0, #6]
c0d014ce:	2900      	cmp	r1, #0
c0d014d0:	d108      	bne.n	c0d014e4 <io_seproxyhal_handle_usb_event+0x54>
c0d014d2:	300c      	adds	r0, #12
c0d014d4:	2112      	movs	r1, #18
c0d014d6:	f004 fb0b 	bl	c0d05af0 <__aeabi_memclr>
c0d014da:	bd10      	pop	{r4, pc}
c0d014dc:	4804      	ldr	r0, [pc, #16]	; (c0d014f0 <io_seproxyhal_handle_usb_event+0x60>)
c0d014de:	f002 fc91 	bl	c0d03e04 <USBD_LL_Suspend>
c0d014e2:	bd10      	pop	{r4, pc}
c0d014e4:	2005      	movs	r0, #5
c0d014e6:	f7ff ffc2 	bl	c0d0146e <os_longjmp>
c0d014ea:	46c0      	nop			; (mov r8, r8)
c0d014ec:	20000370 	.word	0x20000370
c0d014f0:	200008d8 	.word	0x200008d8
c0d014f4:	20000544 	.word	0x20000544

c0d014f8 <io_seproxyhal_get_ep_rx_size>:
c0d014f8:	217f      	movs	r1, #127	; 0x7f
c0d014fa:	4001      	ands	r1, r0
c0d014fc:	2905      	cmp	r1, #5
c0d014fe:	d803      	bhi.n	c0d01508 <io_seproxyhal_get_ep_rx_size+0x10>
c0d01500:	4802      	ldr	r0, [pc, #8]	; (c0d0150c <io_seproxyhal_get_ep_rx_size+0x14>)
c0d01502:	1840      	adds	r0, r0, r1
c0d01504:	7b00      	ldrb	r0, [r0, #12]
c0d01506:	4770      	bx	lr
c0d01508:	2000      	movs	r0, #0
c0d0150a:	4770      	bx	lr
c0d0150c:	20000544 	.word	0x20000544

c0d01510 <io_seproxyhal_handle_usb_ep_xfer_event>:
c0d01510:	b580      	push	{r7, lr}
c0d01512:	4815      	ldr	r0, [pc, #84]	; (c0d01568 <io_seproxyhal_handle_usb_ep_xfer_event+0x58>)
c0d01514:	78c2      	ldrb	r2, [r0, #3]
c0d01516:	217f      	movs	r1, #127	; 0x7f
c0d01518:	4011      	ands	r1, r2
c0d0151a:	7902      	ldrb	r2, [r0, #4]
c0d0151c:	2a04      	cmp	r2, #4
c0d0151e:	d014      	beq.n	c0d0154a <io_seproxyhal_handle_usb_ep_xfer_event+0x3a>
c0d01520:	2a02      	cmp	r2, #2
c0d01522:	d006      	beq.n	c0d01532 <io_seproxyhal_handle_usb_ep_xfer_event+0x22>
c0d01524:	2a01      	cmp	r2, #1
c0d01526:	d11d      	bne.n	c0d01564 <io_seproxyhal_handle_usb_ep_xfer_event+0x54>
c0d01528:	1d81      	adds	r1, r0, #6
c0d0152a:	4811      	ldr	r0, [pc, #68]	; (c0d01570 <io_seproxyhal_handle_usb_ep_xfer_event+0x60>)
c0d0152c:	f002 fb58 	bl	c0d03be0 <USBD_LL_SetupStage>
c0d01530:	bd80      	pop	{r7, pc}
c0d01532:	2905      	cmp	r1, #5
c0d01534:	d816      	bhi.n	c0d01564 <io_seproxyhal_handle_usb_ep_xfer_event+0x54>
c0d01536:	004a      	lsls	r2, r1, #1
c0d01538:	4b0c      	ldr	r3, [pc, #48]	; (c0d0156c <io_seproxyhal_handle_usb_ep_xfer_event+0x5c>)
c0d0153a:	189a      	adds	r2, r3, r2
c0d0153c:	2300      	movs	r3, #0
c0d0153e:	8253      	strh	r3, [r2, #18]
c0d01540:	1d82      	adds	r2, r0, #6
c0d01542:	480b      	ldr	r0, [pc, #44]	; (c0d01570 <io_seproxyhal_handle_usb_ep_xfer_event+0x60>)
c0d01544:	f002 fbd0 	bl	c0d03ce8 <USBD_LL_DataInStage>
c0d01548:	bd80      	pop	{r7, pc}
c0d0154a:	2905      	cmp	r1, #5
c0d0154c:	d80a      	bhi.n	c0d01564 <io_seproxyhal_handle_usb_ep_xfer_event+0x54>
c0d0154e:	4a07      	ldr	r2, [pc, #28]	; (c0d0156c <io_seproxyhal_handle_usb_ep_xfer_event+0x5c>)
c0d01550:	1852      	adds	r2, r2, r1
c0d01552:	7943      	ldrb	r3, [r0, #5]
c0d01554:	2b7a      	cmp	r3, #122	; 0x7a
c0d01556:	d300      	bcc.n	c0d0155a <io_seproxyhal_handle_usb_ep_xfer_event+0x4a>
c0d01558:	237a      	movs	r3, #122	; 0x7a
c0d0155a:	7313      	strb	r3, [r2, #12]
c0d0155c:	1d82      	adds	r2, r0, #6
c0d0155e:	4804      	ldr	r0, [pc, #16]	; (c0d01570 <io_seproxyhal_handle_usb_ep_xfer_event+0x60>)
c0d01560:	f002 fb6c 	bl	c0d03c3c <USBD_LL_DataOutStage>
c0d01564:	bd80      	pop	{r7, pc}
c0d01566:	46c0      	nop			; (mov r8, r8)
c0d01568:	20000370 	.word	0x20000370
c0d0156c:	20000544 	.word	0x20000544
c0d01570:	200008d8 	.word	0x200008d8

c0d01574 <io_usb_send_ep>:
c0d01574:	b570      	push	{r4, r5, r6, lr}
c0d01576:	2aff      	cmp	r2, #255	; 0xff
c0d01578:	d81d      	bhi.n	c0d015b6 <io_usb_send_ep+0x42>
c0d0157a:	4615      	mov	r5, r2
c0d0157c:	460e      	mov	r6, r1
c0d0157e:	4604      	mov	r4, r0
c0d01580:	480d      	ldr	r0, [pc, #52]	; (c0d015b8 <io_usb_send_ep+0x44>)
c0d01582:	7142      	strb	r2, [r0, #5]
c0d01584:	2120      	movs	r1, #32
c0d01586:	7101      	strb	r1, [r0, #4]
c0d01588:	2150      	movs	r1, #80	; 0x50
c0d0158a:	7001      	strb	r1, [r0, #0]
c0d0158c:	2180      	movs	r1, #128	; 0x80
c0d0158e:	4321      	orrs	r1, r4
c0d01590:	70c1      	strb	r1, [r0, #3]
c0d01592:	1cd1      	adds	r1, r2, #3
c0d01594:	7081      	strb	r1, [r0, #2]
c0d01596:	0a09      	lsrs	r1, r1, #8
c0d01598:	7041      	strb	r1, [r0, #1]
c0d0159a:	2106      	movs	r1, #6
c0d0159c:	f001 fb96 	bl	c0d02ccc <io_seph_send>
c0d015a0:	4630      	mov	r0, r6
c0d015a2:	4629      	mov	r1, r5
c0d015a4:	f001 fb92 	bl	c0d02ccc <io_seph_send>
c0d015a8:	0660      	lsls	r0, r4, #25
c0d015aa:	0e00      	lsrs	r0, r0, #24
c0d015ac:	4903      	ldr	r1, [pc, #12]	; (c0d015bc <io_usb_send_ep+0x48>)
c0d015ae:	1808      	adds	r0, r1, r0
c0d015b0:	217d      	movs	r1, #125	; 0x7d
c0d015b2:	0109      	lsls	r1, r1, #4
c0d015b4:	8241      	strh	r1, [r0, #18]
c0d015b6:	bd70      	pop	{r4, r5, r6, pc}
c0d015b8:	20000370 	.word	0x20000370
c0d015bc:	20000544 	.word	0x20000544

c0d015c0 <io_usb_send_apdu_data>:
c0d015c0:	b580      	push	{r7, lr}
c0d015c2:	460a      	mov	r2, r1
c0d015c4:	4601      	mov	r1, r0
c0d015c6:	2082      	movs	r0, #130	; 0x82
c0d015c8:	2314      	movs	r3, #20
c0d015ca:	f7ff ffd3 	bl	c0d01574 <io_usb_send_ep>
c0d015ce:	bd80      	pop	{r7, pc}

c0d015d0 <io_usb_send_apdu_data_ep0x83>:
c0d015d0:	b580      	push	{r7, lr}
c0d015d2:	460a      	mov	r2, r1
c0d015d4:	4601      	mov	r1, r0
c0d015d6:	2083      	movs	r0, #131	; 0x83
c0d015d8:	2314      	movs	r3, #20
c0d015da:	f7ff ffcb 	bl	c0d01574 <io_usb_send_ep>
c0d015de:	bd80      	pop	{r7, pc}

c0d015e0 <io_seproxyhal_handle_event>:
c0d015e0:	b510      	push	{r4, lr}
c0d015e2:	4826      	ldr	r0, [pc, #152]	; (c0d0167c <io_seproxyhal_handle_event+0x9c>)
c0d015e4:	7881      	ldrb	r1, [r0, #2]
c0d015e6:	7842      	ldrb	r2, [r0, #1]
c0d015e8:	0212      	lsls	r2, r2, #8
c0d015ea:	1852      	adds	r2, r2, r1
c0d015ec:	7801      	ldrb	r1, [r0, #0]
c0d015ee:	290f      	cmp	r1, #15
c0d015f0:	dc08      	bgt.n	c0d01604 <io_seproxyhal_handle_event+0x24>
c0d015f2:	290e      	cmp	r1, #14
c0d015f4:	d01c      	beq.n	c0d01630 <io_seproxyhal_handle_event+0x50>
c0d015f6:	290f      	cmp	r1, #15
c0d015f8:	d12d      	bne.n	c0d01656 <io_seproxyhal_handle_event+0x76>
c0d015fa:	2a01      	cmp	r2, #1
c0d015fc:	d132      	bne.n	c0d01664 <io_seproxyhal_handle_event+0x84>
c0d015fe:	f7ff ff47 	bl	c0d01490 <io_seproxyhal_handle_usb_event>
c0d01602:	e033      	b.n	c0d0166c <io_seproxyhal_handle_event+0x8c>
c0d01604:	2910      	cmp	r1, #16
c0d01606:	d02b      	beq.n	c0d01660 <io_seproxyhal_handle_event+0x80>
c0d01608:	2916      	cmp	r1, #22
c0d0160a:	d124      	bne.n	c0d01656 <io_seproxyhal_handle_event+0x76>
c0d0160c:	491c      	ldr	r1, [pc, #112]	; (c0d01680 <io_seproxyhal_handle_event+0xa0>)
c0d0160e:	780b      	ldrb	r3, [r1, #0]
c0d01610:	2401      	movs	r4, #1
c0d01612:	2b00      	cmp	r3, #0
c0d01614:	d12b      	bne.n	c0d0166e <io_seproxyhal_handle_event+0x8e>
c0d01616:	230a      	movs	r3, #10
c0d01618:	700b      	strb	r3, [r1, #0]
c0d0161a:	2306      	movs	r3, #6
c0d0161c:	718b      	strb	r3, [r1, #6]
c0d0161e:	2a7d      	cmp	r2, #125	; 0x7d
c0d01620:	d300      	bcc.n	c0d01624 <io_seproxyhal_handle_event+0x44>
c0d01622:	227d      	movs	r2, #125	; 0x7d
c0d01624:	804a      	strh	r2, [r1, #2]
c0d01626:	1cc1      	adds	r1, r0, #3
c0d01628:	4816      	ldr	r0, [pc, #88]	; (c0d01684 <io_seproxyhal_handle_event+0xa4>)
c0d0162a:	f004 fa67 	bl	c0d05afc <__aeabi_memcpy>
c0d0162e:	e01e      	b.n	c0d0166e <io_seproxyhal_handle_event+0x8e>
c0d01630:	4813      	ldr	r0, [pc, #76]	; (c0d01680 <io_seproxyhal_handle_event+0xa0>)
c0d01632:	6881      	ldr	r1, [r0, #8]
c0d01634:	3164      	adds	r1, #100	; 0x64
c0d01636:	6081      	str	r1, [r0, #8]
c0d01638:	211c      	movs	r1, #28
c0d0163a:	5a42      	ldrh	r2, [r0, r1]
c0d0163c:	2a00      	cmp	r2, #0
c0d0163e:	d007      	beq.n	c0d01650 <io_seproxyhal_handle_event+0x70>
c0d01640:	2a64      	cmp	r2, #100	; 0x64
c0d01642:	4613      	mov	r3, r2
c0d01644:	d800      	bhi.n	c0d01648 <io_seproxyhal_handle_event+0x68>
c0d01646:	2364      	movs	r3, #100	; 0x64
c0d01648:	3b64      	subs	r3, #100	; 0x64
c0d0164a:	5243      	strh	r3, [r0, r1]
c0d0164c:	2a64      	cmp	r2, #100	; 0x64
c0d0164e:	d910      	bls.n	c0d01672 <io_seproxyhal_handle_event+0x92>
c0d01650:	1e89      	subs	r1, r1, #2
c0d01652:	2910      	cmp	r1, #16
c0d01654:	d1f1      	bne.n	c0d0163a <io_seproxyhal_handle_event+0x5a>
c0d01656:	2002      	movs	r0, #2
c0d01658:	f7ff fbae 	bl	c0d00db8 <io_event>
c0d0165c:	4604      	mov	r4, r0
c0d0165e:	e006      	b.n	c0d0166e <io_seproxyhal_handle_event+0x8e>
c0d01660:	2a03      	cmp	r2, #3
c0d01662:	d201      	bcs.n	c0d01668 <io_seproxyhal_handle_event+0x88>
c0d01664:	2400      	movs	r4, #0
c0d01666:	e002      	b.n	c0d0166e <io_seproxyhal_handle_event+0x8e>
c0d01668:	f7ff ff52 	bl	c0d01510 <io_seproxyhal_handle_usb_ep_xfer_event>
c0d0166c:	2401      	movs	r4, #1
c0d0166e:	4620      	mov	r0, r4
c0d01670:	bd10      	pop	{r4, pc}
c0d01672:	2100      	movs	r1, #0
c0d01674:	7001      	strb	r1, [r0, #0]
c0d01676:	2005      	movs	r0, #5
c0d01678:	f7ff fef9 	bl	c0d0146e <os_longjmp>
c0d0167c:	20000370 	.word	0x20000370
c0d01680:	20000544 	.word	0x20000544
c0d01684:	200003f0 	.word	0x200003f0

c0d01688 <io_seproxyhal_init>:
c0d01688:	b580      	push	{r7, lr}
c0d0168a:	f001 fa8d 	bl	c0d02ba8 <get_api_level>
c0d0168e:	280d      	cmp	r0, #13
c0d01690:	d302      	bcc.n	c0d01698 <io_seproxyhal_init+0x10>
c0d01692:	20ff      	movs	r0, #255	; 0xff
c0d01694:	f001 fb0c 	bl	c0d02cb0 <os_sched_exit>
c0d01698:	4805      	ldr	r0, [pc, #20]	; (c0d016b0 <io_seproxyhal_init+0x28>)
c0d0169a:	2120      	movs	r1, #32
c0d0169c:	f004 fa28 	bl	c0d05af0 <__aeabi_memclr>
c0d016a0:	f000 fb54 	bl	c0d01d4c <io_usb_hid_init>
c0d016a4:	4803      	ldr	r0, [pc, #12]	; (c0d016b4 <io_seproxyhal_init+0x2c>)
c0d016a6:	2100      	movs	r1, #0
c0d016a8:	6001      	str	r1, [r0, #0]
c0d016aa:	6041      	str	r1, [r0, #4]
c0d016ac:	bd80      	pop	{r7, pc}
c0d016ae:	46c0      	nop			; (mov r8, r8)
c0d016b0:	20000544 	.word	0x20000544
c0d016b4:	20000564 	.word	0x20000564

c0d016b8 <io_seproxyhal_init_ux>:
c0d016b8:	4770      	bx	lr
	...

c0d016bc <io_seproxyhal_init_button>:
c0d016bc:	4802      	ldr	r0, [pc, #8]	; (c0d016c8 <io_seproxyhal_init_button+0xc>)
c0d016be:	2100      	movs	r1, #0
c0d016c0:	6001      	str	r1, [r0, #0]
c0d016c2:	6041      	str	r1, [r0, #4]
c0d016c4:	4770      	bx	lr
c0d016c6:	46c0      	nop			; (mov r8, r8)
c0d016c8:	20000564 	.word	0x20000564

c0d016cc <io_seproxyhal_display_icon>:
c0d016cc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d016ce:	b087      	sub	sp, #28
c0d016d0:	4605      	mov	r5, r0
c0d016d2:	4608      	mov	r0, r1
c0d016d4:	f000 fe5c 	bl	c0d02390 <pic>
c0d016d8:	2800      	cmp	r0, #0
c0d016da:	d043      	beq.n	c0d01764 <io_seproxyhal_display_icon+0x98>
c0d016dc:	4604      	mov	r4, r0
c0d016de:	6900      	ldr	r0, [r0, #16]
c0d016e0:	2800      	cmp	r0, #0
c0d016e2:	d03f      	beq.n	c0d01764 <io_seproxyhal_display_icon+0x98>
c0d016e4:	4628      	mov	r0, r5
c0d016e6:	f000 fe53 	bl	c0d02390 <pic>
c0d016ea:	4601      	mov	r1, r0
c0d016ec:	466d      	mov	r5, sp
c0d016ee:	221c      	movs	r2, #28
c0d016f0:	4628      	mov	r0, r5
c0d016f2:	f004 fa03 	bl	c0d05afc <__aeabi_memcpy>
c0d016f6:	6826      	ldr	r6, [r4, #0]
c0d016f8:	80ee      	strh	r6, [r5, #6]
c0d016fa:	6867      	ldr	r7, [r4, #4]
c0d016fc:	812f      	strh	r7, [r5, #8]
c0d016fe:	f001 faf1 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d01702:	2800      	cmp	r0, #0
c0d01704:	d12e      	bne.n	c0d01764 <io_seproxyhal_display_icon+0x98>
c0d01706:	b2b9      	uxth	r1, r7
c0d01708:	b2b2      	uxth	r2, r6
c0d0170a:	4d17      	ldr	r5, [pc, #92]	; (c0d01768 <io_seproxyhal_display_icon+0x9c>)
c0d0170c:	2065      	movs	r0, #101	; 0x65
c0d0170e:	7028      	strb	r0, [r5, #0]
c0d01710:	68a0      	ldr	r0, [r4, #8]
c0d01712:	4342      	muls	r2, r0
c0d01714:	434a      	muls	r2, r1
c0d01716:	0751      	lsls	r1, r2, #29
c0d01718:	08d6      	lsrs	r6, r2, #3
c0d0171a:	2900      	cmp	r1, #0
c0d0171c:	d000      	beq.n	c0d01720 <io_seproxyhal_display_icon+0x54>
c0d0171e:	1c76      	adds	r6, r6, #1
c0d01720:	2704      	movs	r7, #4
c0d01722:	4087      	lsls	r7, r0
c0d01724:	19b8      	adds	r0, r7, r6
c0d01726:	301d      	adds	r0, #29
c0d01728:	70a8      	strb	r0, [r5, #2]
c0d0172a:	0a00      	lsrs	r0, r0, #8
c0d0172c:	7068      	strb	r0, [r5, #1]
c0d0172e:	2103      	movs	r1, #3
c0d01730:	4628      	mov	r0, r5
c0d01732:	f001 facb 	bl	c0d02ccc <io_seph_send>
c0d01736:	4668      	mov	r0, sp
c0d01738:	211c      	movs	r1, #28
c0d0173a:	f001 fac7 	bl	c0d02ccc <io_seph_send>
c0d0173e:	68a0      	ldr	r0, [r4, #8]
c0d01740:	7028      	strb	r0, [r5, #0]
c0d01742:	2101      	movs	r1, #1
c0d01744:	4628      	mov	r0, r5
c0d01746:	f001 fac1 	bl	c0d02ccc <io_seph_send>
c0d0174a:	68e0      	ldr	r0, [r4, #12]
c0d0174c:	f000 fe20 	bl	c0d02390 <pic>
c0d01750:	b2b9      	uxth	r1, r7
c0d01752:	f001 fabb 	bl	c0d02ccc <io_seph_send>
c0d01756:	b2b5      	uxth	r5, r6
c0d01758:	6920      	ldr	r0, [r4, #16]
c0d0175a:	f000 fe19 	bl	c0d02390 <pic>
c0d0175e:	4629      	mov	r1, r5
c0d01760:	f001 fab4 	bl	c0d02ccc <io_seph_send>
c0d01764:	b007      	add	sp, #28
c0d01766:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d01768:	20000370 	.word	0x20000370

c0d0176c <io_seproxyhal_display_default>:
c0d0176c:	b570      	push	{r4, r5, r6, lr}
c0d0176e:	f000 fe0f 	bl	c0d02390 <pic>
c0d01772:	4604      	mov	r4, r0
c0d01774:	69c0      	ldr	r0, [r0, #28]
c0d01776:	f000 fe0b 	bl	c0d02390 <pic>
c0d0177a:	4605      	mov	r5, r0
c0d0177c:	7821      	ldrb	r1, [r4, #0]
c0d0177e:	207f      	movs	r0, #127	; 0x7f
c0d01780:	4008      	ands	r0, r1
c0d01782:	d00a      	beq.n	c0d0179a <io_seproxyhal_display_default+0x2e>
c0d01784:	2d00      	cmp	r5, #0
c0d01786:	d009      	beq.n	c0d0179c <io_seproxyhal_display_default+0x30>
c0d01788:	2805      	cmp	r0, #5
c0d0178a:	d102      	bne.n	c0d01792 <io_seproxyhal_display_default+0x26>
c0d0178c:	7ea0      	ldrb	r0, [r4, #26]
c0d0178e:	2800      	cmp	r0, #0
c0d01790:	d02d      	beq.n	c0d017ee <io_seproxyhal_display_default+0x82>
c0d01792:	f001 faa7 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d01796:	2800      	cmp	r0, #0
c0d01798:	d011      	beq.n	c0d017be <io_seproxyhal_display_default+0x52>
c0d0179a:	bd70      	pop	{r4, r5, r6, pc}
c0d0179c:	f001 faa2 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d017a0:	2800      	cmp	r0, #0
c0d017a2:	d1fa      	bne.n	c0d0179a <io_seproxyhal_display_default+0x2e>
c0d017a4:	4814      	ldr	r0, [pc, #80]	; (c0d017f8 <io_seproxyhal_display_default+0x8c>)
c0d017a6:	251c      	movs	r5, #28
c0d017a8:	7085      	strb	r5, [r0, #2]
c0d017aa:	2100      	movs	r1, #0
c0d017ac:	7041      	strb	r1, [r0, #1]
c0d017ae:	2165      	movs	r1, #101	; 0x65
c0d017b0:	7001      	strb	r1, [r0, #0]
c0d017b2:	2103      	movs	r1, #3
c0d017b4:	f001 fa8a 	bl	c0d02ccc <io_seph_send>
c0d017b8:	4620      	mov	r0, r4
c0d017ba:	4629      	mov	r1, r5
c0d017bc:	e014      	b.n	c0d017e8 <io_seproxyhal_display_default+0x7c>
c0d017be:	4628      	mov	r0, r5
c0d017c0:	f004 faea 	bl	c0d05d98 <strlen>
c0d017c4:	4606      	mov	r6, r0
c0d017c6:	480c      	ldr	r0, [pc, #48]	; (c0d017f8 <io_seproxyhal_display_default+0x8c>)
c0d017c8:	2165      	movs	r1, #101	; 0x65
c0d017ca:	7001      	strb	r1, [r0, #0]
c0d017cc:	4631      	mov	r1, r6
c0d017ce:	311c      	adds	r1, #28
c0d017d0:	7081      	strb	r1, [r0, #2]
c0d017d2:	0a09      	lsrs	r1, r1, #8
c0d017d4:	7041      	strb	r1, [r0, #1]
c0d017d6:	2103      	movs	r1, #3
c0d017d8:	f001 fa78 	bl	c0d02ccc <io_seph_send>
c0d017dc:	211c      	movs	r1, #28
c0d017de:	4620      	mov	r0, r4
c0d017e0:	f001 fa74 	bl	c0d02ccc <io_seph_send>
c0d017e4:	b2b1      	uxth	r1, r6
c0d017e6:	4628      	mov	r0, r5
c0d017e8:	f001 fa70 	bl	c0d02ccc <io_seph_send>
c0d017ec:	bd70      	pop	{r4, r5, r6, pc}
c0d017ee:	4620      	mov	r0, r4
c0d017f0:	4629      	mov	r1, r5
c0d017f2:	f7ff ff6b 	bl	c0d016cc <io_seproxyhal_display_icon>
c0d017f6:	bd70      	pop	{r4, r5, r6, pc}
c0d017f8:	20000370 	.word	0x20000370

c0d017fc <io_seproxyhal_button_push>:
c0d017fc:	b570      	push	{r4, r5, r6, lr}
c0d017fe:	2800      	cmp	r0, #0
c0d01800:	d025      	beq.n	c0d0184e <io_seproxyhal_button_push+0x52>
c0d01802:	460b      	mov	r3, r1
c0d01804:	4602      	mov	r2, r0
c0d01806:	4c12      	ldr	r4, [pc, #72]	; (c0d01850 <io_seproxyhal_button_push+0x54>)
c0d01808:	cc03      	ldmia	r4!, {r0, r1}
c0d0180a:	3c08      	subs	r4, #8
c0d0180c:	4298      	cmp	r0, r3
c0d0180e:	d101      	bne.n	c0d01814 <io_seproxyhal_button_push+0x18>
c0d01810:	1c49      	adds	r1, r1, #1
c0d01812:	6061      	str	r1, [r4, #4]
c0d01814:	4318      	orrs	r0, r3
c0d01816:	2b00      	cmp	r3, #0
c0d01818:	d002      	beq.n	c0d01820 <io_seproxyhal_button_push+0x24>
c0d0181a:	6020      	str	r0, [r4, #0]
c0d0181c:	4605      	mov	r5, r0
c0d0181e:	e005      	b.n	c0d0182c <io_seproxyhal_button_push+0x30>
c0d01820:	2500      	movs	r5, #0
c0d01822:	6025      	str	r5, [r4, #0]
c0d01824:	6065      	str	r5, [r4, #4]
c0d01826:	4e0b      	ldr	r6, [pc, #44]	; (c0d01854 <io_seproxyhal_button_push+0x58>)
c0d01828:	1c76      	adds	r6, r6, #1
c0d0182a:	4330      	orrs	r0, r6
c0d0182c:	429d      	cmp	r5, r3
c0d0182e:	d001      	beq.n	c0d01834 <io_seproxyhal_button_push+0x38>
c0d01830:	2300      	movs	r3, #0
c0d01832:	6063      	str	r3, [r4, #4]
c0d01834:	2908      	cmp	r1, #8
c0d01836:	d309      	bcc.n	c0d0184c <io_seproxyhal_button_push+0x50>
c0d01838:	4c07      	ldr	r4, [pc, #28]	; (c0d01858 <io_seproxyhal_button_push+0x5c>)
c0d0183a:	434c      	muls	r4, r1
c0d0183c:	2301      	movs	r3, #1
c0d0183e:	4d07      	ldr	r5, [pc, #28]	; (c0d0185c <io_seproxyhal_button_push+0x60>)
c0d01840:	42ac      	cmp	r4, r5
c0d01842:	d201      	bcs.n	c0d01848 <io_seproxyhal_button_push+0x4c>
c0d01844:	079c      	lsls	r4, r3, #30
c0d01846:	4320      	orrs	r0, r4
c0d01848:	07db      	lsls	r3, r3, #31
c0d0184a:	4398      	bics	r0, r3
c0d0184c:	4790      	blx	r2
c0d0184e:	bd70      	pop	{r4, r5, r6, pc}
c0d01850:	20000564 	.word	0x20000564
c0d01854:	7fffffff 	.word	0x7fffffff
c0d01858:	aaaaaaab 	.word	0xaaaaaaab
c0d0185c:	55555556 	.word	0x55555556

c0d01860 <os_io_seproxyhal_get_app_name_and_version>:
c0d01860:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01862:	b081      	sub	sp, #4
c0d01864:	4e0f      	ldr	r6, [pc, #60]	; (c0d018a4 <os_io_seproxyhal_get_app_name_and_version+0x44>)
c0d01866:	2401      	movs	r4, #1
c0d01868:	7034      	strb	r4, [r6, #0]
c0d0186a:	1cb1      	adds	r1, r6, #2
c0d0186c:	20a7      	movs	r0, #167	; 0xa7
c0d0186e:	0047      	lsls	r7, r0, #1
c0d01870:	1c7a      	adds	r2, r7, #1
c0d01872:	4620      	mov	r0, r4
c0d01874:	f001 fa10 	bl	c0d02c98 <os_registry_get_current_app_tag>
c0d01878:	4605      	mov	r5, r0
c0d0187a:	7070      	strb	r0, [r6, #1]
c0d0187c:	1a3a      	subs	r2, r7, r0
c0d0187e:	1987      	adds	r7, r0, r6
c0d01880:	1cf9      	adds	r1, r7, #3
c0d01882:	2002      	movs	r0, #2
c0d01884:	f001 fa08 	bl	c0d02c98 <os_registry_get_current_app_tag>
c0d01888:	70b8      	strb	r0, [r7, #2]
c0d0188a:	182d      	adds	r5, r5, r0
c0d0188c:	19ae      	adds	r6, r5, r6
c0d0188e:	70f4      	strb	r4, [r6, #3]
c0d01890:	f001 f9f6 	bl	c0d02c80 <os_flags>
c0d01894:	2100      	movs	r1, #0
c0d01896:	71b1      	strb	r1, [r6, #6]
c0d01898:	2190      	movs	r1, #144	; 0x90
c0d0189a:	7171      	strb	r1, [r6, #5]
c0d0189c:	7130      	strb	r0, [r6, #4]
c0d0189e:	1de8      	adds	r0, r5, #7
c0d018a0:	b001      	add	sp, #4
c0d018a2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d018a4:	200003f0 	.word	0x200003f0

c0d018a8 <io_exchange>:
c0d018a8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d018aa:	b085      	sub	sp, #20
c0d018ac:	4607      	mov	r7, r0
c0d018ae:	0740      	lsls	r0, r0, #29
c0d018b0:	d007      	beq.n	c0d018c2 <io_exchange+0x1a>
c0d018b2:	463c      	mov	r4, r7
c0d018b4:	b2e0      	uxtb	r0, r4
c0d018b6:	b289      	uxth	r1, r1
c0d018b8:	f7ff fd60 	bl	c0d0137c <io_exchange_al>
c0d018bc:	b280      	uxth	r0, r0
c0d018be:	b005      	add	sp, #20
c0d018c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d018c2:	20a5      	movs	r0, #165	; 0xa5
c0d018c4:	0040      	lsls	r0, r0, #1
c0d018c6:	9001      	str	r0, [sp, #4]
c0d018c8:	4da4      	ldr	r5, [pc, #656]	; (c0d01b5c <io_exchange+0x2b4>)
c0d018ca:	4ea3      	ldr	r6, [pc, #652]	; (c0d01b58 <io_exchange+0x2b0>)
c0d018cc:	463c      	mov	r4, r7
c0d018ce:	2210      	movs	r2, #16
c0d018d0:	403a      	ands	r2, r7
c0d018d2:	0408      	lsls	r0, r1, #16
c0d018d4:	9404      	str	r4, [sp, #16]
c0d018d6:	d100      	bne.n	c0d018da <io_exchange+0x32>
c0d018d8:	e0b8      	b.n	c0d01a4c <io_exchange+0x1a4>
c0d018da:	2a00      	cmp	r2, #0
c0d018dc:	d000      	beq.n	c0d018e0 <io_exchange+0x38>
c0d018de:	e0b5      	b.n	c0d01a4c <io_exchange+0x1a4>
c0d018e0:	9103      	str	r1, [sp, #12]
c0d018e2:	9202      	str	r2, [sp, #8]
c0d018e4:	f001 f9fe 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d018e8:	2800      	cmp	r0, #0
c0d018ea:	d008      	beq.n	c0d018fe <io_exchange+0x56>
c0d018ec:	2180      	movs	r1, #128	; 0x80
c0d018ee:	2200      	movs	r2, #0
c0d018f0:	4630      	mov	r0, r6
c0d018f2:	f001 fa03 	bl	c0d02cfc <io_seph_recv>
c0d018f6:	2001      	movs	r0, #1
c0d018f8:	f000 f942 	bl	c0d01b80 <os_io_seph_recv_and_process>
c0d018fc:	e7f2      	b.n	c0d018e4 <io_exchange+0x3c>
c0d018fe:	207d      	movs	r0, #125	; 0x7d
c0d01900:	0100      	lsls	r0, r0, #4
c0d01902:	68a9      	ldr	r1, [r5, #8]
c0d01904:	180c      	adds	r4, r1, r0
c0d01906:	7828      	ldrb	r0, [r5, #0]
c0d01908:	2809      	cmp	r0, #9
c0d0190a:	dc23      	bgt.n	c0d01954 <io_exchange+0xac>
c0d0190c:	2807      	cmp	r0, #7
c0d0190e:	9903      	ldr	r1, [sp, #12]
c0d01910:	d02b      	beq.n	c0d0196a <io_exchange+0xc2>
c0d01912:	2809      	cmp	r0, #9
c0d01914:	d162      	bne.n	c0d019dc <io_exchange+0x134>
c0d01916:	2100      	movs	r1, #0
c0d01918:	4891      	ldr	r0, [pc, #580]	; (c0d01b60 <io_exchange+0x2b8>)
c0d0191a:	9100      	str	r1, [sp, #0]
c0d0191c:	f001 ff70 	bl	c0d03800 <u2f_message_set_autoreply_wait_user_presence>
c0d01920:	488f      	ldr	r0, [pc, #572]	; (c0d01b60 <io_exchange+0x2b8>)
c0d01922:	f001 fca5 	bl	c0d03270 <u2f_message_repliable>
c0d01926:	2800      	cmp	r0, #0
c0d01928:	d139      	bne.n	c0d0199e <io_exchange+0xf6>
c0d0192a:	4892      	ldr	r0, [pc, #584]	; (c0d01b74 <io_exchange+0x2cc>)
c0d0192c:	4478      	add	r0, pc
c0d0192e:	2105      	movs	r1, #5
c0d01930:	f001 f9cc 	bl	c0d02ccc <io_seph_send>
c0d01934:	2180      	movs	r1, #128	; 0x80
c0d01936:	2200      	movs	r2, #0
c0d01938:	4630      	mov	r0, r6
c0d0193a:	f001 f9df 	bl	c0d02cfc <io_seph_recv>
c0d0193e:	68a8      	ldr	r0, [r5, #8]
c0d01940:	42a0      	cmp	r0, r4
c0d01942:	d300      	bcc.n	c0d01946 <io_exchange+0x9e>
c0d01944:	e0ff      	b.n	c0d01b46 <io_exchange+0x29e>
c0d01946:	f7ff fe4b 	bl	c0d015e0 <io_seproxyhal_handle_event>
c0d0194a:	f001 f9cb 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d0194e:	2800      	cmp	r0, #0
c0d01950:	d1f0      	bne.n	c0d01934 <io_exchange+0x8c>
c0d01952:	e7e5      	b.n	c0d01920 <io_exchange+0x78>
c0d01954:	280a      	cmp	r0, #10
c0d01956:	9903      	ldr	r1, [sp, #12]
c0d01958:	d00d      	beq.n	c0d01976 <io_exchange+0xce>
c0d0195a:	280b      	cmp	r0, #11
c0d0195c:	d141      	bne.n	c0d019e2 <io_exchange+0x13a>
c0d0195e:	b289      	uxth	r1, r1
c0d01960:	4883      	ldr	r0, [pc, #524]	; (c0d01b70 <io_exchange+0x2c8>)
c0d01962:	4478      	add	r0, pc
c0d01964:	f000 fa5e 	bl	c0d01e24 <io_usb_hid_send>
c0d01968:	e057      	b.n	c0d01a1a <io_exchange+0x172>
c0d0196a:	b289      	uxth	r1, r1
c0d0196c:	487f      	ldr	r0, [pc, #508]	; (c0d01b6c <io_exchange+0x2c4>)
c0d0196e:	4478      	add	r0, pc
c0d01970:	f000 fa58 	bl	c0d01e24 <io_usb_hid_send>
c0d01974:	e051      	b.n	c0d01a1a <io_exchange+0x172>
c0d01976:	9801      	ldr	r0, [sp, #4]
c0d01978:	1dc0      	adds	r0, r0, #7
c0d0197a:	b28c      	uxth	r4, r1
c0d0197c:	4284      	cmp	r4, r0
c0d0197e:	d900      	bls.n	c0d01982 <io_exchange+0xda>
c0d01980:	e0e4      	b.n	c0d01b4c <io_exchange+0x2a4>
c0d01982:	70b1      	strb	r1, [r6, #2]
c0d01984:	2053      	movs	r0, #83	; 0x53
c0d01986:	7030      	strb	r0, [r6, #0]
c0d01988:	0a08      	lsrs	r0, r1, #8
c0d0198a:	7070      	strb	r0, [r6, #1]
c0d0198c:	2103      	movs	r1, #3
c0d0198e:	4630      	mov	r0, r6
c0d01990:	f001 f99c 	bl	c0d02ccc <io_seph_send>
c0d01994:	4873      	ldr	r0, [pc, #460]	; (c0d01b64 <io_exchange+0x2bc>)
c0d01996:	4621      	mov	r1, r4
c0d01998:	f001 f998 	bl	c0d02ccc <io_seph_send>
c0d0199c:	e040      	b.n	c0d01a20 <io_exchange+0x178>
c0d0199e:	9b03      	ldr	r3, [sp, #12]
c0d019a0:	b298      	uxth	r0, r3
c0d019a2:	9901      	ldr	r1, [sp, #4]
c0d019a4:	4288      	cmp	r0, r1
c0d019a6:	d900      	bls.n	c0d019aa <io_exchange+0x102>
c0d019a8:	e0d0      	b.n	c0d01b4c <io_exchange+0x2a4>
c0d019aa:	2190      	movs	r1, #144	; 0x90
c0d019ac:	4a6d      	ldr	r2, [pc, #436]	; (c0d01b64 <io_exchange+0x2bc>)
c0d019ae:	5411      	strb	r1, [r2, r0]
c0d019b0:	1810      	adds	r0, r2, r0
c0d019b2:	9900      	ldr	r1, [sp, #0]
c0d019b4:	7041      	strb	r1, [r0, #1]
c0d019b6:	1d50      	adds	r0, r2, #5
c0d019b8:	1c99      	adds	r1, r3, #2
c0d019ba:	b28a      	uxth	r2, r1
c0d019bc:	4969      	ldr	r1, [pc, #420]	; (c0d01b64 <io_exchange+0x2bc>)
c0d019be:	f004 f8a1 	bl	c0d05b04 <__aeabi_memmove>
c0d019c2:	2105      	movs	r1, #5
c0d019c4:	4867      	ldr	r0, [pc, #412]	; (c0d01b64 <io_exchange+0x2bc>)
c0d019c6:	f004 f893 	bl	c0d05af0 <__aeabi_memclr>
c0d019ca:	9803      	ldr	r0, [sp, #12]
c0d019cc:	1dc0      	adds	r0, r0, #7
c0d019ce:	b283      	uxth	r3, r0
c0d019d0:	2183      	movs	r1, #131	; 0x83
c0d019d2:	4863      	ldr	r0, [pc, #396]	; (c0d01b60 <io_exchange+0x2b8>)
c0d019d4:	4a63      	ldr	r2, [pc, #396]	; (c0d01b64 <io_exchange+0x2bc>)
c0d019d6:	f001 ff3f 	bl	c0d03858 <u2f_message_reply>
c0d019da:	e01e      	b.n	c0d01a1a <io_exchange+0x172>
c0d019dc:	2800      	cmp	r0, #0
c0d019de:	d100      	bne.n	c0d019e2 <io_exchange+0x13a>
c0d019e0:	e0b7      	b.n	c0d01b52 <io_exchange+0x2aa>
c0d019e2:	9804      	ldr	r0, [sp, #16]
c0d019e4:	b2c0      	uxtb	r0, r0
c0d019e6:	b289      	uxth	r1, r1
c0d019e8:	f7ff fcc8 	bl	c0d0137c <io_exchange_al>
c0d019ec:	2800      	cmp	r0, #0
c0d019ee:	d014      	beq.n	c0d01a1a <io_exchange+0x172>
c0d019f0:	e0af      	b.n	c0d01b52 <io_exchange+0x2aa>
c0d019f2:	4861      	ldr	r0, [pc, #388]	; (c0d01b78 <io_exchange+0x2d0>)
c0d019f4:	4478      	add	r0, pc
c0d019f6:	2105      	movs	r1, #5
c0d019f8:	f001 f968 	bl	c0d02ccc <io_seph_send>
c0d019fc:	2180      	movs	r1, #128	; 0x80
c0d019fe:	2200      	movs	r2, #0
c0d01a00:	4630      	mov	r0, r6
c0d01a02:	f001 f97b 	bl	c0d02cfc <io_seph_recv>
c0d01a06:	68a8      	ldr	r0, [r5, #8]
c0d01a08:	42a0      	cmp	r0, r4
c0d01a0a:	d300      	bcc.n	c0d01a0e <io_exchange+0x166>
c0d01a0c:	e09b      	b.n	c0d01b46 <io_exchange+0x29e>
c0d01a0e:	f7ff fde7 	bl	c0d015e0 <io_seproxyhal_handle_event>
c0d01a12:	f001 f967 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d01a16:	2800      	cmp	r0, #0
c0d01a18:	d1f0      	bne.n	c0d019fc <io_exchange+0x154>
c0d01a1a:	7828      	ldrb	r0, [r5, #0]
c0d01a1c:	2800      	cmp	r0, #0
c0d01a1e:	d1e8      	bne.n	c0d019f2 <io_exchange+0x14a>
c0d01a20:	2000      	movs	r0, #0
c0d01a22:	71a8      	strb	r0, [r5, #6]
c0d01a24:	7028      	strb	r0, [r5, #0]
c0d01a26:	8068      	strh	r0, [r5, #2]
c0d01a28:	9904      	ldr	r1, [sp, #16]
c0d01a2a:	0689      	lsls	r1, r1, #26
c0d01a2c:	d500      	bpl.n	c0d01a30 <io_exchange+0x188>
c0d01a2e:	e745      	b.n	c0d018bc <io_exchange+0x14>
c0d01a30:	484d      	ldr	r0, [pc, #308]	; (c0d01b68 <io_exchange+0x2c0>)
c0d01a32:	4478      	add	r0, pc
c0d01a34:	2105      	movs	r1, #5
c0d01a36:	f001 f949 	bl	c0d02ccc <io_seph_send>
c0d01a3a:	9c04      	ldr	r4, [sp, #16]
c0d01a3c:	b260      	sxtb	r0, r4
c0d01a3e:	2800      	cmp	r0, #0
c0d01a40:	9a02      	ldr	r2, [sp, #8]
c0d01a42:	d503      	bpl.n	c0d01a4c <io_exchange+0x1a4>
c0d01a44:	2005      	movs	r0, #5
c0d01a46:	f001 f933 	bl	c0d02cb0 <os_sched_exit>
c0d01a4a:	9a02      	ldr	r2, [sp, #8]
c0d01a4c:	2a00      	cmp	r2, #0
c0d01a4e:	d104      	bne.n	c0d01a5a <io_exchange+0x1b2>
c0d01a50:	0678      	lsls	r0, r7, #25
c0d01a52:	d475      	bmi.n	c0d01b40 <io_exchange+0x298>
c0d01a54:	2000      	movs	r0, #0
c0d01a56:	71a8      	strb	r0, [r5, #6]
c0d01a58:	7028      	strb	r0, [r5, #0]
c0d01a5a:	2000      	movs	r0, #0
c0d01a5c:	8068      	strh	r0, [r5, #2]
c0d01a5e:	4847      	ldr	r0, [pc, #284]	; (c0d01b7c <io_exchange+0x2d4>)
c0d01a60:	4478      	add	r0, pc
c0d01a62:	2105      	movs	r1, #5
c0d01a64:	f001 f932 	bl	c0d02ccc <io_seph_send>
c0d01a68:	2180      	movs	r1, #128	; 0x80
c0d01a6a:	2400      	movs	r4, #0
c0d01a6c:	4630      	mov	r0, r6
c0d01a6e:	4622      	mov	r2, r4
c0d01a70:	f001 f944 	bl	c0d02cfc <io_seph_recv>
c0d01a74:	2803      	cmp	r0, #3
c0d01a76:	d30f      	bcc.n	c0d01a98 <io_exchange+0x1f0>
c0d01a78:	78b1      	ldrb	r1, [r6, #2]
c0d01a7a:	7872      	ldrb	r2, [r6, #1]
c0d01a7c:	0212      	lsls	r2, r2, #8
c0d01a7e:	1851      	adds	r1, r2, r1
c0d01a80:	1cc9      	adds	r1, r1, #3
c0d01a82:	4281      	cmp	r1, r0
c0d01a84:	d108      	bne.n	c0d01a98 <io_exchange+0x1f0>
c0d01a86:	f7ff fdab 	bl	c0d015e0 <io_seproxyhal_handle_event>
c0d01a8a:	7828      	ldrb	r0, [r5, #0]
c0d01a8c:	2800      	cmp	r0, #0
c0d01a8e:	d0e6      	beq.n	c0d01a5e <io_exchange+0x1b6>
c0d01a90:	8868      	ldrh	r0, [r5, #2]
c0d01a92:	2800      	cmp	r0, #0
c0d01a94:	d0e3      	beq.n	c0d01a5e <io_exchange+0x1b6>
c0d01a96:	e001      	b.n	c0d01a9c <io_exchange+0x1f4>
c0d01a98:	702c      	strb	r4, [r5, #0]
c0d01a9a:	e7de      	b.n	c0d01a5a <io_exchange+0x1b2>
c0d01a9c:	4a31      	ldr	r2, [pc, #196]	; (c0d01b64 <io_exchange+0x2bc>)
c0d01a9e:	7811      	ldrb	r1, [r2, #0]
c0d01aa0:	29b0      	cmp	r1, #176	; 0xb0
c0d01aa2:	d000      	beq.n	c0d01aa6 <io_exchange+0x1fe>
c0d01aa4:	e70a      	b.n	c0d018bc <io_exchange+0x14>
c0d01aa6:	7851      	ldrb	r1, [r2, #1]
c0d01aa8:	29a7      	cmp	r1, #167	; 0xa7
c0d01aaa:	d010      	beq.n	c0d01ace <io_exchange+0x226>
c0d01aac:	2902      	cmp	r1, #2
c0d01aae:	d01f      	beq.n	c0d01af0 <io_exchange+0x248>
c0d01ab0:	2901      	cmp	r1, #1
c0d01ab2:	d000      	beq.n	c0d01ab6 <io_exchange+0x20e>
c0d01ab4:	e702      	b.n	c0d018bc <io_exchange+0x14>
c0d01ab6:	7891      	ldrb	r1, [r2, #2]
c0d01ab8:	78d2      	ldrb	r2, [r2, #3]
c0d01aba:	430a      	orrs	r2, r1
c0d01abc:	d000      	beq.n	c0d01ac0 <io_exchange+0x218>
c0d01abe:	e6fd      	b.n	c0d018bc <io_exchange+0x14>
c0d01ac0:	2007      	movs	r0, #7
c0d01ac2:	9c04      	ldr	r4, [sp, #16]
c0d01ac4:	4004      	ands	r4, r0
c0d01ac6:	f7ff fecb 	bl	c0d01860 <os_io_seproxyhal_get_app_name_and_version>
c0d01aca:	4601      	mov	r1, r0
c0d01acc:	e033      	b.n	c0d01b36 <io_exchange+0x28e>
c0d01ace:	7891      	ldrb	r1, [r2, #2]
c0d01ad0:	78d2      	ldrb	r2, [r2, #3]
c0d01ad2:	430a      	orrs	r2, r1
c0d01ad4:	d000      	beq.n	c0d01ad8 <io_exchange+0x230>
c0d01ad6:	e6f1      	b.n	c0d018bc <io_exchange+0x14>
c0d01ad8:	4922      	ldr	r1, [pc, #136]	; (c0d01b64 <io_exchange+0x2bc>)
c0d01ada:	704c      	strb	r4, [r1, #1]
c0d01adc:	2090      	movs	r0, #144	; 0x90
c0d01ade:	7008      	strb	r0, [r1, #0]
c0d01ae0:	2007      	movs	r0, #7
c0d01ae2:	9c04      	ldr	r4, [sp, #16]
c0d01ae4:	4004      	ands	r4, r0
c0d01ae6:	207f      	movs	r0, #127	; 0x7f
c0d01ae8:	43c0      	mvns	r0, r0
c0d01aea:	1824      	adds	r4, r4, r0
c0d01aec:	2102      	movs	r1, #2
c0d01aee:	e022      	b.n	c0d01b36 <io_exchange+0x28e>
c0d01af0:	7891      	ldrb	r1, [r2, #2]
c0d01af2:	78d2      	ldrb	r2, [r2, #3]
c0d01af4:	430a      	orrs	r2, r1
c0d01af6:	d000      	beq.n	c0d01afa <io_exchange+0x252>
c0d01af8:	e6e0      	b.n	c0d018bc <io_exchange+0x14>
c0d01afa:	f001 f8a5 	bl	c0d02c48 <os_global_pin_is_validated>
c0d01afe:	28aa      	cmp	r0, #170	; 0xaa
c0d01b00:	d110      	bne.n	c0d01b24 <io_exchange+0x27c>
c0d01b02:	2001      	movs	r0, #1
c0d01b04:	4f17      	ldr	r7, [pc, #92]	; (c0d01b64 <io_exchange+0x2bc>)
c0d01b06:	7038      	strb	r0, [r7, #0]
c0d01b08:	1cb8      	adds	r0, r7, #2
c0d01b0a:	2140      	movs	r1, #64	; 0x40
c0d01b0c:	f001 f890 	bl	c0d02c30 <os_perso_seed_cookie>
c0d01b10:	7078      	strb	r0, [r7, #1]
c0d01b12:	1c81      	adds	r1, r0, #2
c0d01b14:	b289      	uxth	r1, r1
c0d01b16:	2290      	movs	r2, #144	; 0x90
c0d01b18:	547a      	strb	r2, [r7, r1]
c0d01b1a:	1cc1      	adds	r1, r0, #3
c0d01b1c:	b289      	uxth	r1, r1
c0d01b1e:	547c      	strb	r4, [r7, r1]
c0d01b20:	1d01      	adds	r1, r0, #4
c0d01b22:	e005      	b.n	c0d01b30 <io_exchange+0x288>
c0d01b24:	2085      	movs	r0, #133	; 0x85
c0d01b26:	490f      	ldr	r1, [pc, #60]	; (c0d01b64 <io_exchange+0x2bc>)
c0d01b28:	7048      	strb	r0, [r1, #1]
c0d01b2a:	2069      	movs	r0, #105	; 0x69
c0d01b2c:	7008      	strb	r0, [r1, #0]
c0d01b2e:	2102      	movs	r1, #2
c0d01b30:	2007      	movs	r0, #7
c0d01b32:	9c04      	ldr	r4, [sp, #16]
c0d01b34:	4004      	ands	r4, r0
c0d01b36:	b2e7      	uxtb	r7, r4
c0d01b38:	0760      	lsls	r0, r4, #29
c0d01b3a:	d100      	bne.n	c0d01b3e <io_exchange+0x296>
c0d01b3c:	e6c7      	b.n	c0d018ce <io_exchange+0x26>
c0d01b3e:	e6b9      	b.n	c0d018b4 <io_exchange+0xc>
c0d01b40:	8868      	ldrh	r0, [r5, #2]
c0d01b42:	1f40      	subs	r0, r0, #5
c0d01b44:	e6ba      	b.n	c0d018bc <io_exchange+0x14>
c0d01b46:	2005      	movs	r0, #5
c0d01b48:	f7ff fc91 	bl	c0d0146e <os_longjmp>
c0d01b4c:	2002      	movs	r0, #2
c0d01b4e:	f7ff fc8e 	bl	c0d0146e <os_longjmp>
c0d01b52:	2004      	movs	r0, #4
c0d01b54:	f7ff fc8b 	bl	c0d0146e <os_longjmp>
c0d01b58:	20000370 	.word	0x20000370
c0d01b5c:	20000544 	.word	0x20000544
c0d01b60:	2000056c 	.word	0x2000056c
c0d01b64:	200003f0 	.word	0x200003f0
c0d01b68:	0000492a 	.word	0x0000492a
c0d01b6c:	fffffc4f 	.word	0xfffffc4f
c0d01b70:	fffffc6b 	.word	0xfffffc6b
c0d01b74:	00004a30 	.word	0x00004a30
c0d01b78:	00004968 	.word	0x00004968
c0d01b7c:	000048fc 	.word	0x000048fc

c0d01b80 <os_io_seph_recv_and_process>:
c0d01b80:	b5b0      	push	{r4, r5, r7, lr}
c0d01b82:	4604      	mov	r4, r0
c0d01b84:	480f      	ldr	r0, [pc, #60]	; (c0d01bc4 <os_io_seph_recv_and_process+0x44>)
c0d01b86:	4478      	add	r0, pc
c0d01b88:	2105      	movs	r1, #5
c0d01b8a:	f001 f89f 	bl	c0d02ccc <io_seph_send>
c0d01b8e:	4d0b      	ldr	r5, [pc, #44]	; (c0d01bbc <os_io_seph_recv_and_process+0x3c>)
c0d01b90:	2180      	movs	r1, #128	; 0x80
c0d01b92:	2200      	movs	r2, #0
c0d01b94:	4628      	mov	r0, r5
c0d01b96:	f001 f8b1 	bl	c0d02cfc <io_seph_recv>
c0d01b9a:	7828      	ldrb	r0, [r5, #0]
c0d01b9c:	2815      	cmp	r0, #21
c0d01b9e:	d808      	bhi.n	c0d01bb2 <os_io_seph_recv_and_process+0x32>
c0d01ba0:	2101      	movs	r1, #1
c0d01ba2:	4081      	lsls	r1, r0
c0d01ba4:	4806      	ldr	r0, [pc, #24]	; (c0d01bc0 <os_io_seph_recv_and_process+0x40>)
c0d01ba6:	4201      	tst	r1, r0
c0d01ba8:	d003      	beq.n	c0d01bb2 <os_io_seph_recv_and_process+0x32>
c0d01baa:	2c00      	cmp	r4, #0
c0d01bac:	d001      	beq.n	c0d01bb2 <os_io_seph_recv_and_process+0x32>
c0d01bae:	2000      	movs	r0, #0
c0d01bb0:	bdb0      	pop	{r4, r5, r7, pc}
c0d01bb2:	f7ff fd15 	bl	c0d015e0 <io_seproxyhal_handle_event>
c0d01bb6:	1e41      	subs	r1, r0, #1
c0d01bb8:	4188      	sbcs	r0, r1
c0d01bba:	bdb0      	pop	{r4, r5, r7, pc}
c0d01bbc:	20000370 	.word	0x20000370
c0d01bc0:	00207020 	.word	0x00207020
c0d01bc4:	000047d6 	.word	0x000047d6

c0d01bc8 <io_seproxyhal_io_heartbeat>:
c0d01bc8:	b510      	push	{r4, lr}
c0d01bca:	480b      	ldr	r0, [pc, #44]	; (c0d01bf8 <io_seproxyhal_io_heartbeat+0x30>)
c0d01bcc:	4478      	add	r0, pc
c0d01bce:	2105      	movs	r1, #5
c0d01bd0:	f001 f87c 	bl	c0d02ccc <io_seph_send>
c0d01bd4:	4c07      	ldr	r4, [pc, #28]	; (c0d01bf4 <io_seproxyhal_io_heartbeat+0x2c>)
c0d01bd6:	2180      	movs	r1, #128	; 0x80
c0d01bd8:	2200      	movs	r2, #0
c0d01bda:	4620      	mov	r0, r4
c0d01bdc:	f001 f88e 	bl	c0d02cfc <io_seph_recv>
c0d01be0:	7820      	ldrb	r0, [r4, #0]
c0d01be2:	280e      	cmp	r0, #14
c0d01be4:	d001      	beq.n	c0d01bea <io_seproxyhal_io_heartbeat+0x22>
c0d01be6:	f7ff fcfb 	bl	c0d015e0 <io_seproxyhal_handle_event>
c0d01bea:	f001 f87b 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d01bee:	2800      	cmp	r0, #0
c0d01bf0:	d1f1      	bne.n	c0d01bd6 <io_seproxyhal_io_heartbeat+0xe>
c0d01bf2:	bd10      	pop	{r4, pc}
c0d01bf4:	20000370 	.word	0x20000370
c0d01bf8:	00004790 	.word	0x00004790

c0d01bfc <io_usb_hid_receive>:
c0d01bfc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01bfe:	b081      	sub	sp, #4
c0d01c00:	9200      	str	r2, [sp, #0]
c0d01c02:	4605      	mov	r5, r0
c0d01c04:	4c4a      	ldr	r4, [pc, #296]	; (c0d01d30 <io_usb_hid_receive+0x134>)
c0d01c06:	42a1      	cmp	r1, r4
c0d01c08:	d00f      	beq.n	c0d01c2a <io_usb_hid_receive+0x2e>
c0d01c0a:	460f      	mov	r7, r1
c0d01c0c:	4c48      	ldr	r4, [pc, #288]	; (c0d01d30 <io_usb_hid_receive+0x134>)
c0d01c0e:	2640      	movs	r6, #64	; 0x40
c0d01c10:	4620      	mov	r0, r4
c0d01c12:	4631      	mov	r1, r6
c0d01c14:	f003 ff6c 	bl	c0d05af0 <__aeabi_memclr>
c0d01c18:	9a00      	ldr	r2, [sp, #0]
c0d01c1a:	2a40      	cmp	r2, #64	; 0x40
c0d01c1c:	d300      	bcc.n	c0d01c20 <io_usb_hid_receive+0x24>
c0d01c1e:	4632      	mov	r2, r6
c0d01c20:	4620      	mov	r0, r4
c0d01c22:	4639      	mov	r1, r7
c0d01c24:	f003 ff6e 	bl	c0d05b04 <__aeabi_memmove>
c0d01c28:	4c41      	ldr	r4, [pc, #260]	; (c0d01d30 <io_usb_hid_receive+0x134>)
c0d01c2a:	78a0      	ldrb	r0, [r4, #2]
c0d01c2c:	2801      	cmp	r0, #1
c0d01c2e:	dc0a      	bgt.n	c0d01c46 <io_usb_hid_receive+0x4a>
c0d01c30:	2800      	cmp	r0, #0
c0d01c32:	d02e      	beq.n	c0d01c92 <io_usb_hid_receive+0x96>
c0d01c34:	2801      	cmp	r0, #1
c0d01c36:	d169      	bne.n	c0d01d0c <io_usb_hid_receive+0x110>
c0d01c38:	1ce0      	adds	r0, r4, #3
c0d01c3a:	2104      	movs	r1, #4
c0d01c3c:	f7fe fec8 	bl	c0d009d0 <cx_rng_no_throw>
c0d01c40:	2140      	movs	r1, #64	; 0x40
c0d01c42:	4620      	mov	r0, r4
c0d01c44:	e030      	b.n	c0d01ca8 <io_usb_hid_receive+0xac>
c0d01c46:	2802      	cmp	r0, #2
c0d01c48:	d02c      	beq.n	c0d01ca4 <io_usb_hid_receive+0xa8>
c0d01c4a:	2805      	cmp	r0, #5
c0d01c4c:	d15e      	bne.n	c0d01d0c <io_usb_hid_receive+0x110>
c0d01c4e:	7920      	ldrb	r0, [r4, #4]
c0d01c50:	78e1      	ldrb	r1, [r4, #3]
c0d01c52:	0209      	lsls	r1, r1, #8
c0d01c54:	1808      	adds	r0, r1, r0
c0d01c56:	4e37      	ldr	r6, [pc, #220]	; (c0d01d34 <io_usb_hid_receive+0x138>)
c0d01c58:	6831      	ldr	r1, [r6, #0]
c0d01c5a:	2700      	movs	r7, #0
c0d01c5c:	4281      	cmp	r1, r0
c0d01c5e:	d15c      	bne.n	c0d01d1a <io_usb_hid_receive+0x11e>
c0d01c60:	6830      	ldr	r0, [r6, #0]
c0d01c62:	2800      	cmp	r0, #0
c0d01c64:	d023      	beq.n	c0d01cae <io_usb_hid_receive+0xb2>
c0d01c66:	9800      	ldr	r0, [sp, #0]
c0d01c68:	1f40      	subs	r0, r0, #5
c0d01c6a:	b282      	uxth	r2, r0
c0d01c6c:	4932      	ldr	r1, [pc, #200]	; (c0d01d38 <io_usb_hid_receive+0x13c>)
c0d01c6e:	680b      	ldr	r3, [r1, #0]
c0d01c70:	4293      	cmp	r3, r2
c0d01c72:	d200      	bcs.n	c0d01c76 <io_usb_hid_receive+0x7a>
c0d01c74:	6808      	ldr	r0, [r1, #0]
c0d01c76:	4622      	mov	r2, r4
c0d01c78:	b281      	uxth	r1, r0
c0d01c7a:	293b      	cmp	r1, #59	; 0x3b
c0d01c7c:	d300      	bcc.n	c0d01c80 <io_usb_hid_receive+0x84>
c0d01c7e:	203b      	movs	r0, #59	; 0x3b
c0d01c80:	b285      	uxth	r5, r0
c0d01c82:	4c2e      	ldr	r4, [pc, #184]	; (c0d01d3c <io_usb_hid_receive+0x140>)
c0d01c84:	6820      	ldr	r0, [r4, #0]
c0d01c86:	1d51      	adds	r1, r2, #5
c0d01c88:	462a      	mov	r2, r5
c0d01c8a:	f003 ff3b 	bl	c0d05b04 <__aeabi_memmove>
c0d01c8e:	6824      	ldr	r4, [r4, #0]
c0d01c90:	e032      	b.n	c0d01cf8 <io_usb_hid_receive+0xfc>
c0d01c92:	2700      	movs	r7, #0
c0d01c94:	71a7      	strb	r7, [r4, #6]
c0d01c96:	7167      	strb	r7, [r4, #5]
c0d01c98:	7127      	strb	r7, [r4, #4]
c0d01c9a:	70e7      	strb	r7, [r4, #3]
c0d01c9c:	2140      	movs	r1, #64	; 0x40
c0d01c9e:	4620      	mov	r0, r4
c0d01ca0:	47a8      	blx	r5
c0d01ca2:	e03a      	b.n	c0d01d1a <io_usb_hid_receive+0x11e>
c0d01ca4:	4822      	ldr	r0, [pc, #136]	; (c0d01d30 <io_usb_hid_receive+0x134>)
c0d01ca6:	2140      	movs	r1, #64	; 0x40
c0d01ca8:	47a8      	blx	r5
c0d01caa:	2700      	movs	r7, #0
c0d01cac:	e035      	b.n	c0d01d1a <io_usb_hid_receive+0x11e>
c0d01cae:	79a0      	ldrb	r0, [r4, #6]
c0d01cb0:	7961      	ldrb	r1, [r4, #5]
c0d01cb2:	0209      	lsls	r1, r1, #8
c0d01cb4:	1809      	adds	r1, r1, r0
c0d01cb6:	4822      	ldr	r0, [pc, #136]	; (c0d01d40 <io_usb_hid_receive+0x144>)
c0d01cb8:	6001      	str	r1, [r0, #0]
c0d01cba:	6801      	ldr	r1, [r0, #0]
c0d01cbc:	0849      	lsrs	r1, r1, #1
c0d01cbe:	29a8      	cmp	r1, #168	; 0xa8
c0d01cc0:	d82b      	bhi.n	c0d01d1a <io_usb_hid_receive+0x11e>
c0d01cc2:	6800      	ldr	r0, [r0, #0]
c0d01cc4:	491c      	ldr	r1, [pc, #112]	; (c0d01d38 <io_usb_hid_receive+0x13c>)
c0d01cc6:	6008      	str	r0, [r1, #0]
c0d01cc8:	7860      	ldrb	r0, [r4, #1]
c0d01cca:	7822      	ldrb	r2, [r4, #0]
c0d01ccc:	0212      	lsls	r2, r2, #8
c0d01cce:	1810      	adds	r0, r2, r0
c0d01cd0:	4a1c      	ldr	r2, [pc, #112]	; (c0d01d44 <io_usb_hid_receive+0x148>)
c0d01cd2:	6010      	str	r0, [r2, #0]
c0d01cd4:	680a      	ldr	r2, [r1, #0]
c0d01cd6:	9800      	ldr	r0, [sp, #0]
c0d01cd8:	1fc0      	subs	r0, r0, #7
c0d01cda:	b283      	uxth	r3, r0
c0d01cdc:	429a      	cmp	r2, r3
c0d01cde:	d200      	bcs.n	c0d01ce2 <io_usb_hid_receive+0xe6>
c0d01ce0:	6808      	ldr	r0, [r1, #0]
c0d01ce2:	b281      	uxth	r1, r0
c0d01ce4:	2939      	cmp	r1, #57	; 0x39
c0d01ce6:	d300      	bcc.n	c0d01cea <io_usb_hid_receive+0xee>
c0d01ce8:	2039      	movs	r0, #57	; 0x39
c0d01cea:	b285      	uxth	r5, r0
c0d01cec:	1de1      	adds	r1, r4, #7
c0d01cee:	4c16      	ldr	r4, [pc, #88]	; (c0d01d48 <io_usb_hid_receive+0x14c>)
c0d01cf0:	4620      	mov	r0, r4
c0d01cf2:	462a      	mov	r2, r5
c0d01cf4:	f003 ff02 	bl	c0d05afc <__aeabi_memcpy>
c0d01cf8:	480f      	ldr	r0, [pc, #60]	; (c0d01d38 <io_usb_hid_receive+0x13c>)
c0d01cfa:	6801      	ldr	r1, [r0, #0]
c0d01cfc:	1b49      	subs	r1, r1, r5
c0d01cfe:	6001      	str	r1, [r0, #0]
c0d01d00:	1960      	adds	r0, r4, r5
c0d01d02:	490e      	ldr	r1, [pc, #56]	; (c0d01d3c <io_usb_hid_receive+0x140>)
c0d01d04:	6008      	str	r0, [r1, #0]
c0d01d06:	6830      	ldr	r0, [r6, #0]
c0d01d08:	1c40      	adds	r0, r0, #1
c0d01d0a:	6030      	str	r0, [r6, #0]
c0d01d0c:	480a      	ldr	r0, [pc, #40]	; (c0d01d38 <io_usb_hid_receive+0x13c>)
c0d01d0e:	6800      	ldr	r0, [r0, #0]
c0d01d10:	2800      	cmp	r0, #0
c0d01d12:	d001      	beq.n	c0d01d18 <io_usb_hid_receive+0x11c>
c0d01d14:	2701      	movs	r7, #1
c0d01d16:	e007      	b.n	c0d01d28 <io_usb_hid_receive+0x12c>
c0d01d18:	2702      	movs	r7, #2
c0d01d1a:	4806      	ldr	r0, [pc, #24]	; (c0d01d34 <io_usb_hid_receive+0x138>)
c0d01d1c:	2100      	movs	r1, #0
c0d01d1e:	6001      	str	r1, [r0, #0]
c0d01d20:	4806      	ldr	r0, [pc, #24]	; (c0d01d3c <io_usb_hid_receive+0x140>)
c0d01d22:	6001      	str	r1, [r0, #0]
c0d01d24:	4804      	ldr	r0, [pc, #16]	; (c0d01d38 <io_usb_hid_receive+0x13c>)
c0d01d26:	6001      	str	r1, [r0, #0]
c0d01d28:	4638      	mov	r0, r7
c0d01d2a:	b001      	add	sp, #4
c0d01d2c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d01d2e:	46c0      	nop			; (mov r8, r8)
c0d01d30:	200005b0 	.word	0x200005b0
c0d01d34:	200005f0 	.word	0x200005f0
c0d01d38:	200005f8 	.word	0x200005f8
c0d01d3c:	200005fc 	.word	0x200005fc
c0d01d40:	200005f4 	.word	0x200005f4
c0d01d44:	20000600 	.word	0x20000600
c0d01d48:	200003f0 	.word	0x200003f0

c0d01d4c <io_usb_hid_init>:
c0d01d4c:	4803      	ldr	r0, [pc, #12]	; (c0d01d5c <io_usb_hid_init+0x10>)
c0d01d4e:	2100      	movs	r1, #0
c0d01d50:	6001      	str	r1, [r0, #0]
c0d01d52:	4803      	ldr	r0, [pc, #12]	; (c0d01d60 <io_usb_hid_init+0x14>)
c0d01d54:	6001      	str	r1, [r0, #0]
c0d01d56:	4803      	ldr	r0, [pc, #12]	; (c0d01d64 <io_usb_hid_init+0x18>)
c0d01d58:	6001      	str	r1, [r0, #0]
c0d01d5a:	4770      	bx	lr
c0d01d5c:	200005f0 	.word	0x200005f0
c0d01d60:	200005fc 	.word	0x200005fc
c0d01d64:	200005f8 	.word	0x200005f8

c0d01d68 <io_usb_hid_sent>:
c0d01d68:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01d6a:	b081      	sub	sp, #4
c0d01d6c:	4a27      	ldr	r2, [pc, #156]	; (c0d01e0c <io_usb_hid_sent+0xa4>)
c0d01d6e:	6815      	ldr	r5, [r2, #0]
c0d01d70:	4b27      	ldr	r3, [pc, #156]	; (c0d01e10 <io_usb_hid_sent+0xa8>)
c0d01d72:	6819      	ldr	r1, [r3, #0]
c0d01d74:	2900      	cmp	r1, #0
c0d01d76:	d021      	beq.n	c0d01dbc <io_usb_hid_sent+0x54>
c0d01d78:	2d00      	cmp	r5, #0
c0d01d7a:	d01f      	beq.n	c0d01dbc <io_usb_hid_sent+0x54>
c0d01d7c:	9000      	str	r0, [sp, #0]
c0d01d7e:	4c27      	ldr	r4, [pc, #156]	; (c0d01e1c <io_usb_hid_sent+0xb4>)
c0d01d80:	1d67      	adds	r7, r4, #5
c0d01d82:	263b      	movs	r6, #59	; 0x3b
c0d01d84:	4638      	mov	r0, r7
c0d01d86:	4631      	mov	r1, r6
c0d01d88:	f003 feb2 	bl	c0d05af0 <__aeabi_memclr>
c0d01d8c:	4a20      	ldr	r2, [pc, #128]	; (c0d01e10 <io_usb_hid_sent+0xa8>)
c0d01d8e:	2005      	movs	r0, #5
c0d01d90:	70a0      	strb	r0, [r4, #2]
c0d01d92:	4823      	ldr	r0, [pc, #140]	; (c0d01e20 <io_usb_hid_sent+0xb8>)
c0d01d94:	6801      	ldr	r1, [r0, #0]
c0d01d96:	0a09      	lsrs	r1, r1, #8
c0d01d98:	7021      	strb	r1, [r4, #0]
c0d01d9a:	6800      	ldr	r0, [r0, #0]
c0d01d9c:	7060      	strb	r0, [r4, #1]
c0d01d9e:	491d      	ldr	r1, [pc, #116]	; (c0d01e14 <io_usb_hid_sent+0xac>)
c0d01da0:	6808      	ldr	r0, [r1, #0]
c0d01da2:	0a00      	lsrs	r0, r0, #8
c0d01da4:	70e0      	strb	r0, [r4, #3]
c0d01da6:	6808      	ldr	r0, [r1, #0]
c0d01da8:	7120      	strb	r0, [r4, #4]
c0d01daa:	6809      	ldr	r1, [r1, #0]
c0d01dac:	6810      	ldr	r0, [r2, #0]
c0d01dae:	2900      	cmp	r1, #0
c0d01db0:	d00c      	beq.n	c0d01dcc <io_usb_hid_sent+0x64>
c0d01db2:	283b      	cmp	r0, #59	; 0x3b
c0d01db4:	d800      	bhi.n	c0d01db8 <io_usb_hid_sent+0x50>
c0d01db6:	6816      	ldr	r6, [r2, #0]
c0d01db8:	4638      	mov	r0, r7
c0d01dba:	e012      	b.n	c0d01de2 <io_usb_hid_sent+0x7a>
c0d01dbc:	4815      	ldr	r0, [pc, #84]	; (c0d01e14 <io_usb_hid_sent+0xac>)
c0d01dbe:	2100      	movs	r1, #0
c0d01dc0:	6001      	str	r1, [r0, #0]
c0d01dc2:	6011      	str	r1, [r2, #0]
c0d01dc4:	4814      	ldr	r0, [pc, #80]	; (c0d01e18 <io_usb_hid_sent+0xb0>)
c0d01dc6:	7001      	strb	r1, [r0, #0]
c0d01dc8:	6019      	str	r1, [r3, #0]
c0d01dca:	e01d      	b.n	c0d01e08 <io_usb_hid_sent+0xa0>
c0d01dcc:	2839      	cmp	r0, #57	; 0x39
c0d01dce:	d901      	bls.n	c0d01dd4 <io_usb_hid_sent+0x6c>
c0d01dd0:	2639      	movs	r6, #57	; 0x39
c0d01dd2:	e000      	b.n	c0d01dd6 <io_usb_hid_sent+0x6e>
c0d01dd4:	6816      	ldr	r6, [r2, #0]
c0d01dd6:	6810      	ldr	r0, [r2, #0]
c0d01dd8:	0a00      	lsrs	r0, r0, #8
c0d01dda:	7160      	strb	r0, [r4, #5]
c0d01ddc:	6810      	ldr	r0, [r2, #0]
c0d01dde:	71a0      	strb	r0, [r4, #6]
c0d01de0:	1de0      	adds	r0, r4, #7
c0d01de2:	4629      	mov	r1, r5
c0d01de4:	4632      	mov	r2, r6
c0d01de6:	f003 fe8d 	bl	c0d05b04 <__aeabi_memmove>
c0d01dea:	4b09      	ldr	r3, [pc, #36]	; (c0d01e10 <io_usb_hid_sent+0xa8>)
c0d01dec:	9a00      	ldr	r2, [sp, #0]
c0d01dee:	4907      	ldr	r1, [pc, #28]	; (c0d01e0c <io_usb_hid_sent+0xa4>)
c0d01df0:	6818      	ldr	r0, [r3, #0]
c0d01df2:	1b80      	subs	r0, r0, r6
c0d01df4:	6018      	str	r0, [r3, #0]
c0d01df6:	19a8      	adds	r0, r5, r6
c0d01df8:	6008      	str	r0, [r1, #0]
c0d01dfa:	4906      	ldr	r1, [pc, #24]	; (c0d01e14 <io_usb_hid_sent+0xac>)
c0d01dfc:	6808      	ldr	r0, [r1, #0]
c0d01dfe:	1c40      	adds	r0, r0, #1
c0d01e00:	6008      	str	r0, [r1, #0]
c0d01e02:	4806      	ldr	r0, [pc, #24]	; (c0d01e1c <io_usb_hid_sent+0xb4>)
c0d01e04:	2140      	movs	r1, #64	; 0x40
c0d01e06:	4790      	blx	r2
c0d01e08:	b001      	add	sp, #4
c0d01e0a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d01e0c:	200005fc 	.word	0x200005fc
c0d01e10:	200005f8 	.word	0x200005f8
c0d01e14:	200005f0 	.word	0x200005f0
c0d01e18:	20000544 	.word	0x20000544
c0d01e1c:	200005b0 	.word	0x200005b0
c0d01e20:	20000600 	.word	0x20000600

c0d01e24 <io_usb_hid_send>:
c0d01e24:	b580      	push	{r7, lr}
c0d01e26:	2900      	cmp	r1, #0
c0d01e28:	d00b      	beq.n	c0d01e42 <io_usb_hid_send+0x1e>
c0d01e2a:	4a06      	ldr	r2, [pc, #24]	; (c0d01e44 <io_usb_hid_send+0x20>)
c0d01e2c:	2300      	movs	r3, #0
c0d01e2e:	6013      	str	r3, [r2, #0]
c0d01e30:	4a05      	ldr	r2, [pc, #20]	; (c0d01e48 <io_usb_hid_send+0x24>)
c0d01e32:	6011      	str	r1, [r2, #0]
c0d01e34:	4a05      	ldr	r2, [pc, #20]	; (c0d01e4c <io_usb_hid_send+0x28>)
c0d01e36:	4b06      	ldr	r3, [pc, #24]	; (c0d01e50 <io_usb_hid_send+0x2c>)
c0d01e38:	6013      	str	r3, [r2, #0]
c0d01e3a:	4a06      	ldr	r2, [pc, #24]	; (c0d01e54 <io_usb_hid_send+0x30>)
c0d01e3c:	6011      	str	r1, [r2, #0]
c0d01e3e:	f7ff ff93 	bl	c0d01d68 <io_usb_hid_sent>
c0d01e42:	bd80      	pop	{r7, pc}
c0d01e44:	200005f0 	.word	0x200005f0
c0d01e48:	200005f8 	.word	0x200005f8
c0d01e4c:	200005fc 	.word	0x200005fc
c0d01e50:	200003f0 	.word	0x200003f0
c0d01e54:	200005f4 	.word	0x200005f4

c0d01e58 <snprintf>:
c0d01e58:	b081      	sub	sp, #4
c0d01e5a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01e5c:	b090      	sub	sp, #64	; 0x40
c0d01e5e:	9315      	str	r3, [sp, #84]	; 0x54
c0d01e60:	2800      	cmp	r0, #0
c0d01e62:	d100      	bne.n	c0d01e66 <snprintf+0xe>
c0d01e64:	e1af      	b.n	c0d021c6 <snprintf+0x36e>
c0d01e66:	460d      	mov	r5, r1
c0d01e68:	2900      	cmp	r1, #0
c0d01e6a:	d100      	bne.n	c0d01e6e <snprintf+0x16>
c0d01e6c:	e1ab      	b.n	c0d021c6 <snprintf+0x36e>
c0d01e6e:	4614      	mov	r4, r2
c0d01e70:	4606      	mov	r6, r0
c0d01e72:	4629      	mov	r1, r5
c0d01e74:	f003 fe3c 	bl	c0d05af0 <__aeabi_memclr>
c0d01e78:	1e6f      	subs	r7, r5, #1
c0d01e7a:	d100      	bne.n	c0d01e7e <snprintf+0x26>
c0d01e7c:	e1a3      	b.n	c0d021c6 <snprintf+0x36e>
c0d01e7e:	a815      	add	r0, sp, #84	; 0x54
c0d01e80:	900b      	str	r0, [sp, #44]	; 0x2c
c0d01e82:	7821      	ldrb	r1, [r4, #0]
c0d01e84:	2900      	cmp	r1, #0
c0d01e86:	d100      	bne.n	c0d01e8a <snprintf+0x32>
c0d01e88:	e19d      	b.n	c0d021c6 <snprintf+0x36e>
c0d01e8a:	4630      	mov	r0, r6
c0d01e8c:	2201      	movs	r2, #1
c0d01e8e:	9206      	str	r2, [sp, #24]
c0d01e90:	2600      	movs	r6, #0
c0d01e92:	2900      	cmp	r1, #0
c0d01e94:	d005      	beq.n	c0d01ea2 <snprintf+0x4a>
c0d01e96:	2925      	cmp	r1, #37	; 0x25
c0d01e98:	d003      	beq.n	c0d01ea2 <snprintf+0x4a>
c0d01e9a:	19a1      	adds	r1, r4, r6
c0d01e9c:	7849      	ldrb	r1, [r1, #1]
c0d01e9e:	1c76      	adds	r6, r6, #1
c0d01ea0:	e7f7      	b.n	c0d01e92 <snprintf+0x3a>
c0d01ea2:	42be      	cmp	r6, r7
c0d01ea4:	d300      	bcc.n	c0d01ea8 <snprintf+0x50>
c0d01ea6:	463e      	mov	r6, r7
c0d01ea8:	4605      	mov	r5, r0
c0d01eaa:	4621      	mov	r1, r4
c0d01eac:	4632      	mov	r2, r6
c0d01eae:	f003 fe29 	bl	c0d05b04 <__aeabi_memmove>
c0d01eb2:	1bbf      	subs	r7, r7, r6
c0d01eb4:	9709      	str	r7, [sp, #36]	; 0x24
c0d01eb6:	d100      	bne.n	c0d01eba <snprintf+0x62>
c0d01eb8:	e185      	b.n	c0d021c6 <snprintf+0x36e>
c0d01eba:	19a8      	adds	r0, r5, r6
c0d01ebc:	5da1      	ldrb	r1, [r4, r6]
c0d01ebe:	19a4      	adds	r4, r4, r6
c0d01ec0:	2925      	cmp	r1, #37	; 0x25
c0d01ec2:	d000      	beq.n	c0d01ec6 <snprintf+0x6e>
c0d01ec4:	e17b      	b.n	c0d021be <snprintf+0x366>
c0d01ec6:	9007      	str	r0, [sp, #28]
c0d01ec8:	1c64      	adds	r4, r4, #1
c0d01eca:	2000      	movs	r0, #0
c0d01ecc:	2320      	movs	r3, #32
c0d01ece:	4607      	mov	r7, r0
c0d01ed0:	9008      	str	r0, [sp, #32]
c0d01ed2:	7821      	ldrb	r1, [r4, #0]
c0d01ed4:	1c64      	adds	r4, r4, #1
c0d01ed6:	2200      	movs	r2, #0
c0d01ed8:	292d      	cmp	r1, #45	; 0x2d
c0d01eda:	dc0d      	bgt.n	c0d01ef8 <snprintf+0xa0>
c0d01edc:	4610      	mov	r0, r2
c0d01ede:	d0f8      	beq.n	c0d01ed2 <snprintf+0x7a>
c0d01ee0:	2925      	cmp	r1, #37	; 0x25
c0d01ee2:	d100      	bne.n	c0d01ee6 <snprintf+0x8e>
c0d01ee4:	e0e0      	b.n	c0d020a8 <snprintf+0x250>
c0d01ee6:	292a      	cmp	r1, #42	; 0x2a
c0d01ee8:	d000      	beq.n	c0d01eec <snprintf+0x94>
c0d01eea:	e152      	b.n	c0d02192 <snprintf+0x33a>
c0d01eec:	7821      	ldrb	r1, [r4, #0]
c0d01eee:	2973      	cmp	r1, #115	; 0x73
c0d01ef0:	d000      	beq.n	c0d01ef4 <snprintf+0x9c>
c0d01ef2:	e163      	b.n	c0d021bc <snprintf+0x364>
c0d01ef4:	2002      	movs	r0, #2
c0d01ef6:	e028      	b.n	c0d01f4a <snprintf+0xf2>
c0d01ef8:	2947      	cmp	r1, #71	; 0x47
c0d01efa:	dc2b      	bgt.n	c0d01f54 <snprintf+0xfc>
c0d01efc:	460a      	mov	r2, r1
c0d01efe:	3a30      	subs	r2, #48	; 0x30
c0d01f00:	2a0a      	cmp	r2, #10
c0d01f02:	d211      	bcs.n	c0d01f28 <snprintf+0xd0>
c0d01f04:	970a      	str	r7, [sp, #40]	; 0x28
c0d01f06:	461f      	mov	r7, r3
c0d01f08:	2230      	movs	r2, #48	; 0x30
c0d01f0a:	460b      	mov	r3, r1
c0d01f0c:	4053      	eors	r3, r2
c0d01f0e:	9d08      	ldr	r5, [sp, #32]
c0d01f10:	432b      	orrs	r3, r5
c0d01f12:	d000      	beq.n	c0d01f16 <snprintf+0xbe>
c0d01f14:	463a      	mov	r2, r7
c0d01f16:	230a      	movs	r3, #10
c0d01f18:	9d08      	ldr	r5, [sp, #32]
c0d01f1a:	436b      	muls	r3, r5
c0d01f1c:	1859      	adds	r1, r3, r1
c0d01f1e:	3930      	subs	r1, #48	; 0x30
c0d01f20:	9108      	str	r1, [sp, #32]
c0d01f22:	4613      	mov	r3, r2
c0d01f24:	9f0a      	ldr	r7, [sp, #40]	; 0x28
c0d01f26:	e7d4      	b.n	c0d01ed2 <snprintf+0x7a>
c0d01f28:	292e      	cmp	r1, #46	; 0x2e
c0d01f2a:	d000      	beq.n	c0d01f2e <snprintf+0xd6>
c0d01f2c:	e131      	b.n	c0d02192 <snprintf+0x33a>
c0d01f2e:	7821      	ldrb	r1, [r4, #0]
c0d01f30:	292a      	cmp	r1, #42	; 0x2a
c0d01f32:	d000      	beq.n	c0d01f36 <snprintf+0xde>
c0d01f34:	e142      	b.n	c0d021bc <snprintf+0x364>
c0d01f36:	7860      	ldrb	r0, [r4, #1]
c0d01f38:	2848      	cmp	r0, #72	; 0x48
c0d01f3a:	d004      	beq.n	c0d01f46 <snprintf+0xee>
c0d01f3c:	2873      	cmp	r0, #115	; 0x73
c0d01f3e:	d002      	beq.n	c0d01f46 <snprintf+0xee>
c0d01f40:	2868      	cmp	r0, #104	; 0x68
c0d01f42:	d000      	beq.n	c0d01f46 <snprintf+0xee>
c0d01f44:	e139      	b.n	c0d021ba <snprintf+0x362>
c0d01f46:	1c64      	adds	r4, r4, #1
c0d01f48:	2001      	movs	r0, #1
c0d01f4a:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d01f4c:	1d0a      	adds	r2, r1, #4
c0d01f4e:	920b      	str	r2, [sp, #44]	; 0x2c
c0d01f50:	680f      	ldr	r7, [r1, #0]
c0d01f52:	e7be      	b.n	c0d01ed2 <snprintf+0x7a>
c0d01f54:	2967      	cmp	r1, #103	; 0x67
c0d01f56:	dc09      	bgt.n	c0d01f6c <snprintf+0x114>
c0d01f58:	2962      	cmp	r1, #98	; 0x62
c0d01f5a:	dc0f      	bgt.n	c0d01f7c <snprintf+0x124>
c0d01f5c:	2948      	cmp	r1, #72	; 0x48
c0d01f5e:	d100      	bne.n	c0d01f62 <snprintf+0x10a>
c0d01f60:	e0a4      	b.n	c0d020ac <snprintf+0x254>
c0d01f62:	2958      	cmp	r1, #88	; 0x58
c0d01f64:	d000      	beq.n	c0d01f68 <snprintf+0x110>
c0d01f66:	e114      	b.n	c0d02192 <snprintf+0x33a>
c0d01f68:	2001      	movs	r0, #1
c0d01f6a:	e020      	b.n	c0d01fae <snprintf+0x156>
c0d01f6c:	2972      	cmp	r1, #114	; 0x72
c0d01f6e:	dc17      	bgt.n	c0d01fa0 <snprintf+0x148>
c0d01f70:	2968      	cmp	r1, #104	; 0x68
c0d01f72:	d100      	bne.n	c0d01f76 <snprintf+0x11e>
c0d01f74:	e09e      	b.n	c0d020b4 <snprintf+0x25c>
c0d01f76:	2970      	cmp	r1, #112	; 0x70
c0d01f78:	d018      	beq.n	c0d01fac <snprintf+0x154>
c0d01f7a:	e10a      	b.n	c0d02192 <snprintf+0x33a>
c0d01f7c:	2963      	cmp	r1, #99	; 0x63
c0d01f7e:	d100      	bne.n	c0d01f82 <snprintf+0x12a>
c0d01f80:	e09d      	b.n	c0d020be <snprintf+0x266>
c0d01f82:	2964      	cmp	r1, #100	; 0x64
c0d01f84:	d000      	beq.n	c0d01f88 <snprintf+0x130>
c0d01f86:	e104      	b.n	c0d02192 <snprintf+0x33a>
c0d01f88:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d01f8a:	1d01      	adds	r1, r0, #4
c0d01f8c:	910b      	str	r1, [sp, #44]	; 0x2c
c0d01f8e:	6800      	ldr	r0, [r0, #0]
c0d01f90:	17c1      	asrs	r1, r0, #31
c0d01f92:	1842      	adds	r2, r0, r1
c0d01f94:	404a      	eors	r2, r1
c0d01f96:	0fc1      	lsrs	r1, r0, #31
c0d01f98:	2000      	movs	r0, #0
c0d01f9a:	9002      	str	r0, [sp, #8]
c0d01f9c:	270a      	movs	r7, #10
c0d01f9e:	e00d      	b.n	c0d01fbc <snprintf+0x164>
c0d01fa0:	2973      	cmp	r1, #115	; 0x73
c0d01fa2:	d100      	bne.n	c0d01fa6 <snprintf+0x14e>
c0d01fa4:	e097      	b.n	c0d020d6 <snprintf+0x27e>
c0d01fa6:	2978      	cmp	r1, #120	; 0x78
c0d01fa8:	d000      	beq.n	c0d01fac <snprintf+0x154>
c0d01faa:	e0f2      	b.n	c0d02192 <snprintf+0x33a>
c0d01fac:	2000      	movs	r0, #0
c0d01fae:	9002      	str	r0, [sp, #8]
c0d01fb0:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d01fb2:	1d01      	adds	r1, r0, #4
c0d01fb4:	910b      	str	r1, [sp, #44]	; 0x2c
c0d01fb6:	6802      	ldr	r2, [r0, #0]
c0d01fb8:	2100      	movs	r1, #0
c0d01fba:	2710      	movs	r7, #16
c0d01fbc:	9e08      	ldr	r6, [sp, #32]
c0d01fbe:	920a      	str	r2, [sp, #40]	; 0x28
c0d01fc0:	4297      	cmp	r7, r2
c0d01fc2:	9303      	str	r3, [sp, #12]
c0d01fc4:	9104      	str	r1, [sp, #16]
c0d01fc6:	d901      	bls.n	c0d01fcc <snprintf+0x174>
c0d01fc8:	2501      	movs	r5, #1
c0d01fca:	e011      	b.n	c0d01ff0 <snprintf+0x198>
c0d01fcc:	1e72      	subs	r2, r6, #1
c0d01fce:	4638      	mov	r0, r7
c0d01fd0:	4605      	mov	r5, r0
c0d01fd2:	4616      	mov	r6, r2
c0d01fd4:	2100      	movs	r1, #0
c0d01fd6:	4638      	mov	r0, r7
c0d01fd8:	462a      	mov	r2, r5
c0d01fda:	460b      	mov	r3, r1
c0d01fdc:	f003 fcbe 	bl	c0d0595c <__aeabi_lmul>
c0d01fe0:	1e4a      	subs	r2, r1, #1
c0d01fe2:	4191      	sbcs	r1, r2
c0d01fe4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
c0d01fe6:	4290      	cmp	r0, r2
c0d01fe8:	d802      	bhi.n	c0d01ff0 <snprintf+0x198>
c0d01fea:	1e72      	subs	r2, r6, #1
c0d01fec:	2900      	cmp	r1, #0
c0d01fee:	d0ef      	beq.n	c0d01fd0 <snprintf+0x178>
c0d01ff0:	9608      	str	r6, [sp, #32]
c0d01ff2:	2600      	movs	r6, #0
c0d01ff4:	9904      	ldr	r1, [sp, #16]
c0d01ff6:	2900      	cmp	r1, #0
c0d01ff8:	9405      	str	r4, [sp, #20]
c0d01ffa:	d101      	bne.n	c0d02000 <snprintf+0x1a8>
c0d01ffc:	9101      	str	r1, [sp, #4]
c0d01ffe:	e001      	b.n	c0d02004 <snprintf+0x1ac>
c0d02000:	43f0      	mvns	r0, r6
c0d02002:	9001      	str	r0, [sp, #4]
c0d02004:	9b03      	ldr	r3, [sp, #12]
c0d02006:	9808      	ldr	r0, [sp, #32]
c0d02008:	1a40      	subs	r0, r0, r1
c0d0200a:	2900      	cmp	r1, #0
c0d0200c:	9c06      	ldr	r4, [sp, #24]
c0d0200e:	d009      	beq.n	c0d02024 <snprintf+0x1cc>
c0d02010:	b2d9      	uxtb	r1, r3
c0d02012:	2600      	movs	r6, #0
c0d02014:	2930      	cmp	r1, #48	; 0x30
c0d02016:	4634      	mov	r4, r6
c0d02018:	d104      	bne.n	c0d02024 <snprintf+0x1cc>
c0d0201a:	a90c      	add	r1, sp, #48	; 0x30
c0d0201c:	222d      	movs	r2, #45	; 0x2d
c0d0201e:	700a      	strb	r2, [r1, #0]
c0d02020:	2601      	movs	r6, #1
c0d02022:	9c06      	ldr	r4, [sp, #24]
c0d02024:	1e81      	subs	r1, r0, #2
c0d02026:	290d      	cmp	r1, #13
c0d02028:	d80b      	bhi.n	c0d02042 <snprintf+0x1ea>
c0d0202a:	1e41      	subs	r1, r0, #1
c0d0202c:	d009      	beq.n	c0d02042 <snprintf+0x1ea>
c0d0202e:	a80c      	add	r0, sp, #48	; 0x30
c0d02030:	1980      	adds	r0, r0, r6
c0d02032:	b2da      	uxtb	r2, r3
c0d02034:	f003 fd6a 	bl	c0d05b0c <__aeabi_memset>
c0d02038:	9808      	ldr	r0, [sp, #32]
c0d0203a:	1830      	adds	r0, r6, r0
c0d0203c:	9901      	ldr	r1, [sp, #4]
c0d0203e:	1840      	adds	r0, r0, r1
c0d02040:	1e46      	subs	r6, r0, #1
c0d02042:	2c00      	cmp	r4, #0
c0d02044:	d103      	bne.n	c0d0204e <snprintf+0x1f6>
c0d02046:	a80c      	add	r0, sp, #48	; 0x30
c0d02048:	212d      	movs	r1, #45	; 0x2d
c0d0204a:	5581      	strb	r1, [r0, r6]
c0d0204c:	1c76      	adds	r6, r6, #1
c0d0204e:	2d00      	cmp	r5, #0
c0d02050:	d01a      	beq.n	c0d02088 <snprintf+0x230>
c0d02052:	463c      	mov	r4, r7
c0d02054:	9802      	ldr	r0, [sp, #8]
c0d02056:	2800      	cmp	r0, #0
c0d02058:	d002      	beq.n	c0d02060 <snprintf+0x208>
c0d0205a:	4f62      	ldr	r7, [pc, #392]	; (c0d021e4 <snprintf+0x38c>)
c0d0205c:	447f      	add	r7, pc
c0d0205e:	e001      	b.n	c0d02064 <snprintf+0x20c>
c0d02060:	4f5f      	ldr	r7, [pc, #380]	; (c0d021e0 <snprintf+0x388>)
c0d02062:	447f      	add	r7, pc
c0d02064:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d02066:	4629      	mov	r1, r5
c0d02068:	f003 fc04 	bl	c0d05874 <__udivsi3>
c0d0206c:	4621      	mov	r1, r4
c0d0206e:	f003 fc3d 	bl	c0d058ec <__aeabi_uidivmod>
c0d02072:	5c78      	ldrb	r0, [r7, r1]
c0d02074:	a90c      	add	r1, sp, #48	; 0x30
c0d02076:	5588      	strb	r0, [r1, r6]
c0d02078:	4628      	mov	r0, r5
c0d0207a:	4621      	mov	r1, r4
c0d0207c:	f003 fbfa 	bl	c0d05874 <__udivsi3>
c0d02080:	1c76      	adds	r6, r6, #1
c0d02082:	42ac      	cmp	r4, r5
c0d02084:	4605      	mov	r5, r0
c0d02086:	d9ed      	bls.n	c0d02064 <snprintf+0x20c>
c0d02088:	9c09      	ldr	r4, [sp, #36]	; 0x24
c0d0208a:	42a6      	cmp	r6, r4
c0d0208c:	d300      	bcc.n	c0d02090 <snprintf+0x238>
c0d0208e:	4626      	mov	r6, r4
c0d02090:	a90c      	add	r1, sp, #48	; 0x30
c0d02092:	9d07      	ldr	r5, [sp, #28]
c0d02094:	4628      	mov	r0, r5
c0d02096:	4632      	mov	r2, r6
c0d02098:	f003 fd34 	bl	c0d05b04 <__aeabi_memmove>
c0d0209c:	1ba7      	subs	r7, r4, r6
c0d0209e:	9c05      	ldr	r4, [sp, #20]
c0d020a0:	d100      	bne.n	c0d020a4 <snprintf+0x24c>
c0d020a2:	e090      	b.n	c0d021c6 <snprintf+0x36e>
c0d020a4:	19a8      	adds	r0, r5, r6
c0d020a6:	e076      	b.n	c0d02196 <snprintf+0x33e>
c0d020a8:	2025      	movs	r0, #37	; 0x25
c0d020aa:	e00c      	b.n	c0d020c6 <snprintf+0x26e>
c0d020ac:	4625      	mov	r5, r4
c0d020ae:	4a4a      	ldr	r2, [pc, #296]	; (c0d021d8 <snprintf+0x380>)
c0d020b0:	447a      	add	r2, pc
c0d020b2:	e002      	b.n	c0d020ba <snprintf+0x262>
c0d020b4:	4625      	mov	r5, r4
c0d020b6:	4a49      	ldr	r2, [pc, #292]	; (c0d021dc <snprintf+0x384>)
c0d020b8:	447a      	add	r2, pc
c0d020ba:	9b06      	ldr	r3, [sp, #24]
c0d020bc:	e00f      	b.n	c0d020de <snprintf+0x286>
c0d020be:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d020c0:	1d01      	adds	r1, r0, #4
c0d020c2:	910b      	str	r1, [sp, #44]	; 0x2c
c0d020c4:	6800      	ldr	r0, [r0, #0]
c0d020c6:	9907      	ldr	r1, [sp, #28]
c0d020c8:	7008      	strb	r0, [r1, #0]
c0d020ca:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d020cc:	1e40      	subs	r0, r0, #1
c0d020ce:	9009      	str	r0, [sp, #36]	; 0x24
c0d020d0:	d079      	beq.n	c0d021c6 <snprintf+0x36e>
c0d020d2:	1c48      	adds	r0, r1, #1
c0d020d4:	e05e      	b.n	c0d02194 <snprintf+0x33c>
c0d020d6:	4625      	mov	r5, r4
c0d020d8:	4a3e      	ldr	r2, [pc, #248]	; (c0d021d4 <snprintf+0x37c>)
c0d020da:	447a      	add	r2, pc
c0d020dc:	2300      	movs	r3, #0
c0d020de:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d020e0:	1d0c      	adds	r4, r1, #4
c0d020e2:	940b      	str	r4, [sp, #44]	; 0x2c
c0d020e4:	b2c0      	uxtb	r0, r0
c0d020e6:	6809      	ldr	r1, [r1, #0]
c0d020e8:	2802      	cmp	r0, #2
c0d020ea:	d04e      	beq.n	c0d0218a <snprintf+0x332>
c0d020ec:	2801      	cmp	r0, #1
c0d020ee:	462c      	mov	r4, r5
c0d020f0:	d00a      	beq.n	c0d02108 <snprintf+0x2b0>
c0d020f2:	2800      	cmp	r0, #0
c0d020f4:	4637      	mov	r7, r6
c0d020f6:	d107      	bne.n	c0d02108 <snprintf+0x2b0>
c0d020f8:	4625      	mov	r5, r4
c0d020fa:	2000      	movs	r0, #0
c0d020fc:	5c0c      	ldrb	r4, [r1, r0]
c0d020fe:	1c40      	adds	r0, r0, #1
c0d02100:	2c00      	cmp	r4, #0
c0d02102:	d1fb      	bne.n	c0d020fc <snprintf+0x2a4>
c0d02104:	1e47      	subs	r7, r0, #1
c0d02106:	462c      	mov	r4, r5
c0d02108:	2b00      	cmp	r3, #0
c0d0210a:	d01e      	beq.n	c0d0214a <snprintf+0x2f2>
c0d0210c:	2f00      	cmp	r7, #0
c0d0210e:	d040      	beq.n	c0d02192 <snprintf+0x33a>
c0d02110:	0078      	lsls	r0, r7, #1
c0d02112:	9b09      	ldr	r3, [sp, #36]	; 0x24
c0d02114:	1a18      	subs	r0, r3, r0
c0d02116:	9b09      	ldr	r3, [sp, #36]	; 0x24
c0d02118:	2b01      	cmp	r3, #1
c0d0211a:	9e07      	ldr	r6, [sp, #28]
c0d0211c:	d953      	bls.n	c0d021c6 <snprintf+0x36e>
c0d0211e:	780b      	ldrb	r3, [r1, #0]
c0d02120:	4625      	mov	r5, r4
c0d02122:	091c      	lsrs	r4, r3, #4
c0d02124:	5d14      	ldrb	r4, [r2, r4]
c0d02126:	7034      	strb	r4, [r6, #0]
c0d02128:	240f      	movs	r4, #15
c0d0212a:	401c      	ands	r4, r3
c0d0212c:	5d13      	ldrb	r3, [r2, r4]
c0d0212e:	7073      	strb	r3, [r6, #1]
c0d02130:	9b09      	ldr	r3, [sp, #36]	; 0x24
c0d02132:	1e9b      	subs	r3, r3, #2
c0d02134:	9309      	str	r3, [sp, #36]	; 0x24
c0d02136:	d046      	beq.n	c0d021c6 <snprintf+0x36e>
c0d02138:	462c      	mov	r4, r5
c0d0213a:	1cb6      	adds	r6, r6, #2
c0d0213c:	9607      	str	r6, [sp, #28]
c0d0213e:	1c49      	adds	r1, r1, #1
c0d02140:	1e7f      	subs	r7, r7, #1
c0d02142:	d1e8      	bne.n	c0d02116 <snprintf+0x2be>
c0d02144:	4607      	mov	r7, r0
c0d02146:	9807      	ldr	r0, [sp, #28]
c0d02148:	e025      	b.n	c0d02196 <snprintf+0x33e>
c0d0214a:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d0214c:	4287      	cmp	r7, r0
c0d0214e:	463e      	mov	r6, r7
c0d02150:	d301      	bcc.n	c0d02156 <snprintf+0x2fe>
c0d02152:	4606      	mov	r6, r0
c0d02154:	4607      	mov	r7, r0
c0d02156:	9d07      	ldr	r5, [sp, #28]
c0d02158:	4628      	mov	r0, r5
c0d0215a:	4632      	mov	r2, r6
c0d0215c:	f003 fcd2 	bl	c0d05b04 <__aeabi_memmove>
c0d02160:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d02162:	1b89      	subs	r1, r1, r6
c0d02164:	d02f      	beq.n	c0d021c6 <snprintf+0x36e>
c0d02166:	19e8      	adds	r0, r5, r7
c0d02168:	9a08      	ldr	r2, [sp, #32]
c0d0216a:	42b2      	cmp	r2, r6
c0d0216c:	d915      	bls.n	c0d0219a <snprintf+0x342>
c0d0216e:	1b95      	subs	r5, r2, r6
c0d02170:	460f      	mov	r7, r1
c0d02172:	428d      	cmp	r5, r1
c0d02174:	d300      	bcc.n	c0d02178 <snprintf+0x320>
c0d02176:	463d      	mov	r5, r7
c0d02178:	2220      	movs	r2, #32
c0d0217a:	4606      	mov	r6, r0
c0d0217c:	4629      	mov	r1, r5
c0d0217e:	f003 fcc5 	bl	c0d05b0c <__aeabi_memset>
c0d02182:	1b7f      	subs	r7, r7, r5
c0d02184:	d01f      	beq.n	c0d021c6 <snprintf+0x36e>
c0d02186:	1970      	adds	r0, r6, r5
c0d02188:	e005      	b.n	c0d02196 <snprintf+0x33e>
c0d0218a:	7808      	ldrb	r0, [r1, #0]
c0d0218c:	2800      	cmp	r0, #0
c0d0218e:	462c      	mov	r4, r5
c0d02190:	d005      	beq.n	c0d0219e <snprintf+0x346>
c0d02192:	9807      	ldr	r0, [sp, #28]
c0d02194:	9f09      	ldr	r7, [sp, #36]	; 0x24
c0d02196:	7821      	ldrb	r1, [r4, #0]
c0d02198:	e012      	b.n	c0d021c0 <snprintf+0x368>
c0d0219a:	460f      	mov	r7, r1
c0d0219c:	e7fb      	b.n	c0d02196 <snprintf+0x33e>
c0d0219e:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d021a0:	428f      	cmp	r7, r1
c0d021a2:	d300      	bcc.n	c0d021a6 <snprintf+0x34e>
c0d021a4:	460f      	mov	r7, r1
c0d021a6:	2220      	movs	r2, #32
c0d021a8:	9d07      	ldr	r5, [sp, #28]
c0d021aa:	4628      	mov	r0, r5
c0d021ac:	4639      	mov	r1, r7
c0d021ae:	f003 fcad 	bl	c0d05b0c <__aeabi_memset>
c0d021b2:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d021b4:	1bc9      	subs	r1, r1, r7
c0d021b6:	d1d6      	bne.n	c0d02166 <snprintf+0x30e>
c0d021b8:	e005      	b.n	c0d021c6 <snprintf+0x36e>
c0d021ba:	212a      	movs	r1, #42	; 0x2a
c0d021bc:	9807      	ldr	r0, [sp, #28]
c0d021be:	9f09      	ldr	r7, [sp, #36]	; 0x24
c0d021c0:	2900      	cmp	r1, #0
c0d021c2:	d000      	beq.n	c0d021c6 <snprintf+0x36e>
c0d021c4:	e664      	b.n	c0d01e90 <snprintf+0x38>
c0d021c6:	2000      	movs	r0, #0
c0d021c8:	b010      	add	sp, #64	; 0x40
c0d021ca:	bcf0      	pop	{r4, r5, r6, r7}
c0d021cc:	bc02      	pop	{r1}
c0d021ce:	b001      	add	sp, #4
c0d021d0:	4708      	bx	r1
c0d021d2:	46c0      	nop			; (mov r8, r8)
c0d021d4:	00004287 	.word	0x00004287
c0d021d8:	000042c1 	.word	0x000042c1
c0d021dc:	000042a9 	.word	0x000042a9
c0d021e0:	000042ff 	.word	0x000042ff
c0d021e4:	00004315 	.word	0x00004315

c0d021e8 <parse_tx>:
c0d021e8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d021ea:	b087      	sub	sp, #28
c0d021ec:	9206      	str	r2, [sp, #24]
c0d021ee:	29ac      	cmp	r1, #172	; 0xac
c0d021f0:	d000      	beq.n	c0d021f4 <parse_tx+0xc>
c0d021f2:	e0c2      	b.n	c0d0237a <parse_tx+0x192>
c0d021f4:	461d      	mov	r5, r3
c0d021f6:	4607      	mov	r7, r0
c0d021f8:	461c      	mov	r4, r3
c0d021fa:	3437      	adds	r4, #55	; 0x37
c0d021fc:	f002 fc1c 	bl	c0d04a38 <read_uint32_be>
c0d02200:	9906      	ldr	r1, [sp, #24]
c0d02202:	6048      	str	r0, [r1, #4]
c0d02204:	1d39      	adds	r1, r7, #4
c0d02206:	2237      	movs	r2, #55	; 0x37
c0d02208:	4628      	mov	r0, r5
c0d0220a:	f003 fc77 	bl	c0d05afc <__aeabi_memcpy>
c0d0220e:	2000      	movs	r0, #0
c0d02210:	7020      	strb	r0, [r4, #0]
c0d02212:	4604      	mov	r4, r0
c0d02214:	4628      	mov	r0, r5
c0d02216:	f7fe fa6c 	bl	c0d006f2 <validate_address>
c0d0221a:	2800      	cmp	r0, #0
c0d0221c:	d100      	bne.n	c0d02220 <parse_tx+0x38>
c0d0221e:	e0ac      	b.n	c0d0237a <parse_tx+0x192>
c0d02220:	9405      	str	r4, [sp, #20]
c0d02222:	462c      	mov	r4, r5
c0d02224:	346f      	adds	r4, #111	; 0x6f
c0d02226:	9e06      	ldr	r6, [sp, #24]
c0d02228:	4630      	mov	r0, r6
c0d0222a:	3069      	adds	r0, #105	; 0x69
c0d0222c:	4629      	mov	r1, r5
c0d0222e:	f002 fd3d 	bl	c0d04cac <read_public_key_compressed>
c0d02232:	4630      	mov	r0, r6
c0d02234:	3018      	adds	r0, #24
c0d02236:	4629      	mov	r1, r5
c0d02238:	f002 fd38 	bl	c0d04cac <read_public_key_compressed>
c0d0223c:	462e      	mov	r6, r5
c0d0223e:	3638      	adds	r6, #56	; 0x38
c0d02240:	4639      	mov	r1, r7
c0d02242:	313b      	adds	r1, #59	; 0x3b
c0d02244:	2237      	movs	r2, #55	; 0x37
c0d02246:	4630      	mov	r0, r6
c0d02248:	f003 fc58 	bl	c0d05afc <__aeabi_memcpy>
c0d0224c:	9805      	ldr	r0, [sp, #20]
c0d0224e:	7020      	strb	r0, [r4, #0]
c0d02250:	4630      	mov	r0, r6
c0d02252:	f7fe fa4e 	bl	c0d006f2 <validate_address>
c0d02256:	2800      	cmp	r0, #0
c0d02258:	d100      	bne.n	c0d0225c <parse_tx+0x74>
c0d0225a:	e08e      	b.n	c0d0237a <parse_tx+0x192>
c0d0225c:	9806      	ldr	r0, [sp, #24]
c0d0225e:	4604      	mov	r4, r0
c0d02260:	34b0      	adds	r4, #176	; 0xb0
c0d02262:	308a      	adds	r0, #138	; 0x8a
c0d02264:	4631      	mov	r1, r6
c0d02266:	f002 fd21 	bl	c0d04cac <read_public_key_compressed>
c0d0226a:	4638      	mov	r0, r7
c0d0226c:	3072      	adds	r0, #114	; 0x72
c0d0226e:	f002 fbee 	bl	c0d04a4e <read_uint64_be>
c0d02272:	4602      	mov	r2, r0
c0d02274:	460b      	mov	r3, r1
c0d02276:	60a0      	str	r0, [r4, #8]
c0d02278:	60e1      	str	r1, [r4, #12]
c0d0227a:	4628      	mov	r0, r5
c0d0227c:	3070      	adds	r0, #112	; 0x70
c0d0227e:	2120      	movs	r1, #32
c0d02280:	9103      	str	r1, [sp, #12]
c0d02282:	f002 fbfb 	bl	c0d04a7c <amount_to_string>
c0d02286:	2001      	movs	r0, #1
c0d02288:	9004      	str	r0, [sp, #16]
c0d0228a:	6020      	str	r0, [r4, #0]
c0d0228c:	9805      	ldr	r0, [sp, #20]
c0d0228e:	6060      	str	r0, [r4, #4]
c0d02290:	4638      	mov	r0, r7
c0d02292:	307a      	adds	r0, #122	; 0x7a
c0d02294:	f002 fbdb 	bl	c0d04a4e <read_uint64_be>
c0d02298:	4602      	mov	r2, r0
c0d0229a:	460b      	mov	r3, r1
c0d0229c:	9e06      	ldr	r6, [sp, #24]
c0d0229e:	60b0      	str	r0, [r6, #8]
c0d022a0:	60f1      	str	r1, [r6, #12]
c0d022a2:	4628      	mov	r0, r5
c0d022a4:	3090      	adds	r0, #144	; 0x90
c0d022a6:	9903      	ldr	r1, [sp, #12]
c0d022a8:	f002 fbe8 	bl	c0d04a7c <amount_to_string>
c0d022ac:	68a0      	ldr	r0, [r4, #8]
c0d022ae:	68e1      	ldr	r1, [r4, #12]
c0d022b0:	68b2      	ldr	r2, [r6, #8]
c0d022b2:	68f3      	ldr	r3, [r6, #12]
c0d022b4:	1812      	adds	r2, r2, r0
c0d022b6:	414b      	adcs	r3, r1
c0d022b8:	9805      	ldr	r0, [sp, #20]
c0d022ba:	4140      	adcs	r0, r0
c0d022bc:	d15d      	bne.n	c0d0237a <parse_tx+0x192>
c0d022be:	20ff      	movs	r0, #255	; 0xff
c0d022c0:	3074      	adds	r0, #116	; 0x74
c0d022c2:	9c06      	ldr	r4, [sp, #24]
c0d022c4:	1820      	adds	r0, r4, r0
c0d022c6:	9003      	str	r0, [sp, #12]
c0d022c8:	4620      	mov	r0, r4
c0d022ca:	30c0      	adds	r0, #192	; 0xc0
c0d022cc:	9001      	str	r0, [sp, #4]
c0d022ce:	4638      	mov	r0, r7
c0d022d0:	30aa      	adds	r0, #170	; 0xaa
c0d022d2:	9002      	str	r0, [sp, #8]
c0d022d4:	4628      	mov	r0, r5
c0d022d6:	30b0      	adds	r0, #176	; 0xb0
c0d022d8:	2620      	movs	r6, #32
c0d022da:	4631      	mov	r1, r6
c0d022dc:	f002 fbce 	bl	c0d04a7c <amount_to_string>
c0d022e0:	9804      	ldr	r0, [sp, #16]
c0d022e2:	6120      	str	r0, [r4, #16]
c0d022e4:	9805      	ldr	r0, [sp, #20]
c0d022e6:	6160      	str	r0, [r4, #20]
c0d022e8:	4638      	mov	r0, r7
c0d022ea:	3082      	adds	r0, #130	; 0x82
c0d022ec:	f002 fba4 	bl	c0d04a38 <read_uint32_be>
c0d022f0:	4602      	mov	r2, r0
c0d022f2:	63e0      	str	r0, [r4, #60]	; 0x3c
c0d022f4:	4628      	mov	r0, r5
c0d022f6:	30d0      	adds	r0, #208	; 0xd0
c0d022f8:	4631      	mov	r1, r6
c0d022fa:	9600      	str	r6, [sp, #0]
c0d022fc:	9b05      	ldr	r3, [sp, #20]
c0d022fe:	f002 fc6d 	bl	c0d04bdc <value_to_string>
c0d02302:	4638      	mov	r0, r7
c0d02304:	3086      	adds	r0, #134	; 0x86
c0d02306:	f002 fb97 	bl	c0d04a38 <read_uint32_be>
c0d0230a:	4602      	mov	r2, r0
c0d0230c:	6420      	str	r0, [r4, #64]	; 0x40
c0d0230e:	4628      	mov	r0, r5
c0d02310:	30f0      	adds	r0, #240	; 0xf0
c0d02312:	4631      	mov	r1, r6
c0d02314:	9b05      	ldr	r3, [sp, #20]
c0d02316:	f002 fc61 	bl	c0d04bdc <value_to_string>
c0d0231a:	9805      	ldr	r0, [sp, #20]
c0d0231c:	9901      	ldr	r1, [sp, #4]
c0d0231e:	7008      	strb	r0, [r1, #0]
c0d02320:	2011      	movs	r0, #17
c0d02322:	0100      	lsls	r0, r0, #4
c0d02324:	182e      	adds	r6, r5, r0
c0d02326:	378a      	adds	r7, #138	; 0x8a
c0d02328:	4630      	mov	r0, r6
c0d0232a:	4639      	mov	r1, r7
c0d0232c:	9f02      	ldr	r7, [sp, #8]
c0d0232e:	9a00      	ldr	r2, [sp, #0]
c0d02330:	f003 fbe4 	bl	c0d05afc <__aeabi_memcpy>
c0d02334:	2013      	movs	r0, #19
c0d02336:	0100      	lsls	r0, r0, #4
c0d02338:	9905      	ldr	r1, [sp, #20]
c0d0233a:	5429      	strb	r1, [r5, r0]
c0d0233c:	4620      	mov	r0, r4
c0d0233e:	9c05      	ldr	r4, [sp, #20]
c0d02340:	3044      	adds	r0, #68	; 0x44
c0d02342:	4631      	mov	r1, r6
c0d02344:	f000 fd6c 	bl	c0d02e20 <transaction_prepare_memo>
c0d02348:	7838      	ldrb	r0, [r7, #0]
c0d0234a:	9903      	ldr	r1, [sp, #12]
c0d0234c:	7008      	strb	r0, [r1, #0]
c0d0234e:	2104      	movs	r1, #4
c0d02350:	4301      	orrs	r1, r0
c0d02352:	2904      	cmp	r1, #4
c0d02354:	d111      	bne.n	c0d0237a <parse_tx+0x192>
c0d02356:	9b06      	ldr	r3, [sp, #24]
c0d02358:	4619      	mov	r1, r3
c0d0235a:	3166      	adds	r1, #102	; 0x66
c0d0235c:	0882      	lsrs	r2, r0, #2
c0d0235e:	708a      	strb	r2, [r1, #2]
c0d02360:	0782      	lsls	r2, r0, #30
c0d02362:	9d04      	ldr	r5, [sp, #16]
c0d02364:	4028      	ands	r0, r5
c0d02366:	7008      	strb	r0, [r1, #0]
c0d02368:	0fd0      	lsrs	r0, r2, #31
c0d0236a:	7048      	strb	r0, [r1, #1]
c0d0236c:	7878      	ldrb	r0, [r7, #1]
c0d0236e:	7018      	strb	r0, [r3, #0]
c0d02370:	2802      	cmp	r0, #2
c0d02372:	d300      	bcc.n	c0d02376 <parse_tx+0x18e>
c0d02374:	9404      	str	r4, [sp, #16]
c0d02376:	9804      	ldr	r0, [sp, #16]
c0d02378:	e000      	b.n	c0d0237c <parse_tx+0x194>
c0d0237a:	2000      	movs	r0, #0
c0d0237c:	b007      	add	sp, #28
c0d0237e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d02380 <pic_internal>:
c0d02380:	467a      	mov	r2, pc
c0d02382:	4902      	ldr	r1, [pc, #8]	; (c0d0238c <pic_internal+0xc>)
c0d02384:	1cc9      	adds	r1, r1, #3
c0d02386:	1a89      	subs	r1, r1, r2
c0d02388:	1a40      	subs	r0, r0, r1
c0d0238a:	4770      	bx	lr
c0d0238c:	c0d02381 	.word	0xc0d02381

c0d02390 <pic>:
c0d02390:	b580      	push	{r7, lr}
c0d02392:	4904      	ldr	r1, [pc, #16]	; (c0d023a4 <pic+0x14>)
c0d02394:	4288      	cmp	r0, r1
c0d02396:	d304      	bcc.n	c0d023a2 <pic+0x12>
c0d02398:	4903      	ldr	r1, [pc, #12]	; (c0d023a8 <pic+0x18>)
c0d0239a:	4288      	cmp	r0, r1
c0d0239c:	d201      	bcs.n	c0d023a2 <pic+0x12>
c0d0239e:	f7ff ffef 	bl	c0d02380 <pic_internal>
c0d023a2:	bd80      	pop	{r7, pc}
c0d023a4:	c0d00000 	.word	0xc0d00000
c0d023a8:	c0d08a40 	.word	0xc0d08a40

c0d023ac <matrix_mul>:
c0d023ac:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d023ae:	b0ad      	sub	sp, #180	; 0xb4
c0d023b0:	460c      	mov	r4, r1
c0d023b2:	4606      	mov	r6, r0
c0d023b4:	a815      	add	r0, sp, #84	; 0x54
c0d023b6:	2160      	movs	r1, #96	; 0x60
c0d023b8:	f003 fbb0 	bl	c0d05b1c <explicit_bzero>
c0d023bc:	2000      	movs	r0, #0
c0d023be:	9000      	str	r0, [sp, #0]
c0d023c0:	9602      	str	r6, [sp, #8]
c0d023c2:	9001      	str	r0, [sp, #4]
c0d023c4:	0140      	lsls	r0, r0, #5
c0d023c6:	a915      	add	r1, sp, #84	; 0x54
c0d023c8:	1808      	adds	r0, r1, r0
c0d023ca:	9003      	str	r0, [sp, #12]
c0d023cc:	9d00      	ldr	r5, [sp, #0]
c0d023ce:	9404      	str	r4, [sp, #16]
c0d023d0:	1971      	adds	r1, r6, r5
c0d023d2:	1962      	adds	r2, r4, r5
c0d023d4:	af0d      	add	r7, sp, #52	; 0x34
c0d023d6:	4638      	mov	r0, r7
c0d023d8:	f7fd fe7c 	bl	c0d000d4 <field_mul>
c0d023dc:	ac05      	add	r4, sp, #20
c0d023de:	4620      	mov	r0, r4
c0d023e0:	9e03      	ldr	r6, [sp, #12]
c0d023e2:	4631      	mov	r1, r6
c0d023e4:	f7fd fe50 	bl	c0d00088 <field_copy>
c0d023e8:	4630      	mov	r0, r6
c0d023ea:	4621      	mov	r1, r4
c0d023ec:	9c04      	ldr	r4, [sp, #16]
c0d023ee:	463a      	mov	r2, r7
c0d023f0:	9e02      	ldr	r6, [sp, #8]
c0d023f2:	f7fd fe4f 	bl	c0d00094 <field_add>
c0d023f6:	3520      	adds	r5, #32
c0d023f8:	2d60      	cmp	r5, #96	; 0x60
c0d023fa:	d1e9      	bne.n	c0d023d0 <matrix_mul+0x24>
c0d023fc:	3460      	adds	r4, #96	; 0x60
c0d023fe:	9801      	ldr	r0, [sp, #4]
c0d02400:	1c40      	adds	r0, r0, #1
c0d02402:	2803      	cmp	r0, #3
c0d02404:	d1dd      	bne.n	c0d023c2 <matrix_mul+0x16>
c0d02406:	2400      	movs	r4, #0
c0d02408:	1930      	adds	r0, r6, r4
c0d0240a:	a915      	add	r1, sp, #84	; 0x54
c0d0240c:	1909      	adds	r1, r1, r4
c0d0240e:	f7fd fe3b 	bl	c0d00088 <field_copy>
c0d02412:	3420      	adds	r4, #32
c0d02414:	2c60      	cmp	r4, #96	; 0x60
c0d02416:	d1f7      	bne.n	c0d02408 <matrix_mul+0x5c>
c0d02418:	b02d      	add	sp, #180	; 0xb4
c0d0241a:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d0241c <poseidon_permutation>:
c0d0241c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0241e:	b08d      	sub	sp, #52	; 0x34
c0d02420:	9004      	str	r0, [sp, #16]
c0d02422:	2000      	movs	r0, #0
c0d02424:	4c25      	ldr	r4, [pc, #148]	; (c0d024bc <poseidon_permutation+0xa0>)
c0d02426:	447c      	add	r4, pc
c0d02428:	9001      	str	r0, [sp, #4]
c0d0242a:	9002      	str	r0, [sp, #8]
c0d0242c:	9f01      	ldr	r7, [sp, #4]
c0d0242e:	9804      	ldr	r0, [sp, #16]
c0d02430:	19c5      	adds	r5, r0, r7
c0d02432:	ae05      	add	r6, sp, #20
c0d02434:	4630      	mov	r0, r6
c0d02436:	4629      	mov	r1, r5
c0d02438:	f7fd fe26 	bl	c0d00088 <field_copy>
c0d0243c:	19e2      	adds	r2, r4, r7
c0d0243e:	4628      	mov	r0, r5
c0d02440:	4631      	mov	r1, r6
c0d02442:	f7fd fe27 	bl	c0d00094 <field_add>
c0d02446:	3720      	adds	r7, #32
c0d02448:	2f60      	cmp	r7, #96	; 0x60
c0d0244a:	d1f0      	bne.n	c0d0242e <poseidon_permutation+0x12>
c0d0244c:	9403      	str	r4, [sp, #12]
c0d0244e:	2700      	movs	r7, #0
c0d02450:	9c04      	ldr	r4, [sp, #16]
c0d02452:	19e5      	adds	r5, r4, r7
c0d02454:	ae05      	add	r6, sp, #20
c0d02456:	4630      	mov	r0, r6
c0d02458:	4629      	mov	r1, r5
c0d0245a:	f7fd fe15 	bl	c0d00088 <field_copy>
c0d0245e:	4a18      	ldr	r2, [pc, #96]	; (c0d024c0 <poseidon_permutation+0xa4>)
c0d02460:	447a      	add	r2, pc
c0d02462:	4628      	mov	r0, r5
c0d02464:	4631      	mov	r1, r6
c0d02466:	f7fd fe65 	bl	c0d00134 <field_pow>
c0d0246a:	3720      	adds	r7, #32
c0d0246c:	2f60      	cmp	r7, #96	; 0x60
c0d0246e:	d1f0      	bne.n	c0d02452 <poseidon_permutation+0x36>
c0d02470:	4914      	ldr	r1, [pc, #80]	; (c0d024c4 <poseidon_permutation+0xa8>)
c0d02472:	4479      	add	r1, pc
c0d02474:	4620      	mov	r0, r4
c0d02476:	f7ff ff99 	bl	c0d023ac <matrix_mul>
c0d0247a:	9c03      	ldr	r4, [sp, #12]
c0d0247c:	3460      	adds	r4, #96	; 0x60
c0d0247e:	9802      	ldr	r0, [sp, #8]
c0d02480:	1c40      	adds	r0, r0, #1
c0d02482:	283f      	cmp	r0, #63	; 0x3f
c0d02484:	d1d1      	bne.n	c0d0242a <poseidon_permutation+0xe>
c0d02486:	205f      	movs	r0, #95	; 0x5f
c0d02488:	43c7      	mvns	r7, r0
c0d0248a:	480f      	ldr	r0, [pc, #60]	; (c0d024c8 <poseidon_permutation+0xac>)
c0d0248c:	4478      	add	r0, pc
c0d0248e:	9003      	str	r0, [sp, #12]
c0d02490:	9c04      	ldr	r4, [sp, #16]
c0d02492:	19e5      	adds	r5, r4, r7
c0d02494:	3560      	adds	r5, #96	; 0x60
c0d02496:	ae05      	add	r6, sp, #20
c0d02498:	4630      	mov	r0, r6
c0d0249a:	4629      	mov	r1, r5
c0d0249c:	f7fd fdf4 	bl	c0d00088 <field_copy>
c0d024a0:	9803      	ldr	r0, [sp, #12]
c0d024a2:	19c0      	adds	r0, r0, r7
c0d024a4:	2103      	movs	r1, #3
c0d024a6:	02c9      	lsls	r1, r1, #11
c0d024a8:	1842      	adds	r2, r0, r1
c0d024aa:	4628      	mov	r0, r5
c0d024ac:	4631      	mov	r1, r6
c0d024ae:	f7fd fdf1 	bl	c0d00094 <field_add>
c0d024b2:	3720      	adds	r7, #32
c0d024b4:	d1ed      	bne.n	c0d02492 <poseidon_permutation+0x76>
c0d024b6:	b00d      	add	sp, #52	; 0x34
c0d024b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d024ba:	46c0      	nop			; (mov r8, r8)
c0d024bc:	00003f7b 	.word	0x00003f7b
c0d024c0:	00003f21 	.word	0x00003f21
c0d024c4:	0000572f 	.word	0x0000572f
c0d024c8:	00003f15 	.word	0x00003f15

c0d024cc <poseidon_init>:
c0d024cc:	b580      	push	{r7, lr}
c0d024ce:	2901      	cmp	r1, #1
c0d024d0:	d004      	beq.n	c0d024dc <poseidon_init+0x10>
c0d024d2:	2900      	cmp	r1, #0
c0d024d4:	d107      	bne.n	c0d024e6 <poseidon_init+0x1a>
c0d024d6:	4904      	ldr	r1, [pc, #16]	; (c0d024e8 <poseidon_init+0x1c>)
c0d024d8:	4479      	add	r1, pc
c0d024da:	e001      	b.n	c0d024e0 <poseidon_init+0x14>
c0d024dc:	4903      	ldr	r1, [pc, #12]	; (c0d024ec <poseidon_init+0x20>)
c0d024de:	4479      	add	r1, pc
c0d024e0:	2260      	movs	r2, #96	; 0x60
c0d024e2:	f003 fb0b 	bl	c0d05afc <__aeabi_memcpy>
c0d024e6:	bd80      	pop	{r7, pc}
c0d024e8:	000057ec 	.word	0x000057ec
c0d024ec:	00005846 	.word	0x00005846

c0d024f0 <poseidon_update>:
c0d024f0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d024f2:	b08d      	sub	sp, #52	; 0x34
c0d024f4:	9102      	str	r1, [sp, #8]
c0d024f6:	4604      	mov	r4, r0
c0d024f8:	9201      	str	r2, [sp, #4]
c0d024fa:	0857      	lsrs	r7, r2, #1
c0d024fc:	d020      	beq.n	c0d02540 <poseidon_update+0x50>
c0d024fe:	4620      	mov	r0, r4
c0d02500:	3020      	adds	r0, #32
c0d02502:	9004      	str	r0, [sp, #16]
c0d02504:	9d02      	ldr	r5, [sp, #8]
c0d02506:	9403      	str	r4, [sp, #12]
c0d02508:	ae05      	add	r6, sp, #20
c0d0250a:	4630      	mov	r0, r6
c0d0250c:	4621      	mov	r1, r4
c0d0250e:	f7fd fdbb 	bl	c0d00088 <field_copy>
c0d02512:	4620      	mov	r0, r4
c0d02514:	4631      	mov	r1, r6
c0d02516:	462a      	mov	r2, r5
c0d02518:	f7fd fdbc 	bl	c0d00094 <field_add>
c0d0251c:	4630      	mov	r0, r6
c0d0251e:	9c04      	ldr	r4, [sp, #16]
c0d02520:	4621      	mov	r1, r4
c0d02522:	f7fd fdb1 	bl	c0d00088 <field_copy>
c0d02526:	462a      	mov	r2, r5
c0d02528:	3220      	adds	r2, #32
c0d0252a:	4620      	mov	r0, r4
c0d0252c:	9c03      	ldr	r4, [sp, #12]
c0d0252e:	4631      	mov	r1, r6
c0d02530:	f7fd fdb0 	bl	c0d00094 <field_add>
c0d02534:	4620      	mov	r0, r4
c0d02536:	f7ff ff71 	bl	c0d0241c <poseidon_permutation>
c0d0253a:	3540      	adds	r5, #64	; 0x40
c0d0253c:	1e7f      	subs	r7, r7, #1
c0d0253e:	d1e3      	bne.n	c0d02508 <poseidon_update+0x18>
c0d02540:	2001      	movs	r0, #1
c0d02542:	9901      	ldr	r1, [sp, #4]
c0d02544:	460e      	mov	r6, r1
c0d02546:	4386      	bics	r6, r0
c0d02548:	428e      	cmp	r6, r1
c0d0254a:	d20e      	bcs.n	c0d0256a <poseidon_update+0x7a>
c0d0254c:	ad05      	add	r5, sp, #20
c0d0254e:	4628      	mov	r0, r5
c0d02550:	4621      	mov	r1, r4
c0d02552:	f7fd fd99 	bl	c0d00088 <field_copy>
c0d02556:	0170      	lsls	r0, r6, #5
c0d02558:	9902      	ldr	r1, [sp, #8]
c0d0255a:	180a      	adds	r2, r1, r0
c0d0255c:	4620      	mov	r0, r4
c0d0255e:	4629      	mov	r1, r5
c0d02560:	f7fd fd98 	bl	c0d00094 <field_add>
c0d02564:	4620      	mov	r0, r4
c0d02566:	f7ff ff59 	bl	c0d0241c <poseidon_permutation>
c0d0256a:	b00d      	add	sp, #52	; 0x34
c0d0256c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d0256e <poseidon_digest>:
c0d0256e:	b580      	push	{r7, lr}
c0d02570:	f7fd fd8a 	bl	c0d00088 <field_copy>
c0d02574:	bd80      	pop	{r7, pc}

c0d02576 <roinput_add_field>:
c0d02576:	b510      	push	{r4, lr}
c0d02578:	6882      	ldr	r2, [r0, #8]
c0d0257a:	68c3      	ldr	r3, [r0, #12]
c0d0257c:	4293      	cmp	r3, r2
c0d0257e:	d012      	beq.n	c0d025a6 <roinput_add_field+0x30>
c0d02580:	6803      	ldr	r3, [r0, #0]
c0d02582:	7fcc      	ldrb	r4, [r1, #31]
c0d02584:	0152      	lsls	r2, r2, #5
c0d02586:	549c      	strb	r4, [r3, r2]
c0d02588:	311e      	adds	r1, #30
c0d0258a:	2201      	movs	r2, #1
c0d0258c:	6803      	ldr	r3, [r0, #0]
c0d0258e:	6884      	ldr	r4, [r0, #8]
c0d02590:	0164      	lsls	r4, r4, #5
c0d02592:	191b      	adds	r3, r3, r4
c0d02594:	780c      	ldrb	r4, [r1, #0]
c0d02596:	549c      	strb	r4, [r3, r2]
c0d02598:	1e49      	subs	r1, r1, #1
c0d0259a:	1c52      	adds	r2, r2, #1
c0d0259c:	2a20      	cmp	r2, #32
c0d0259e:	d1f5      	bne.n	c0d0258c <roinput_add_field+0x16>
c0d025a0:	6881      	ldr	r1, [r0, #8]
c0d025a2:	1c49      	adds	r1, r1, #1
c0d025a4:	6081      	str	r1, [r0, #8]
c0d025a6:	bd10      	pop	{r4, pc}

c0d025a8 <roinput_add_bit>:
c0d025a8:	b510      	push	{r4, lr}
c0d025aa:	460a      	mov	r2, r1
c0d025ac:	4604      	mov	r4, r0
c0d025ae:	6901      	ldr	r1, [r0, #16]
c0d025b0:	6940      	ldr	r0, [r0, #20]
c0d025b2:	00c0      	lsls	r0, r0, #3
c0d025b4:	4281      	cmp	r1, r0
c0d025b6:	d005      	beq.n	c0d025c4 <roinput_add_bit+0x1c>
c0d025b8:	6860      	ldr	r0, [r4, #4]
c0d025ba:	f002 fb61 	bl	c0d04c80 <packed_bit_array_set>
c0d025be:	6920      	ldr	r0, [r4, #16]
c0d025c0:	1c40      	adds	r0, r0, #1
c0d025c2:	6120      	str	r0, [r4, #16]
c0d025c4:	bd10      	pop	{r4, pc}

c0d025c6 <roinput_add_scalar>:
c0d025c6:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d025c8:	b081      	sub	sp, #4
c0d025ca:	4604      	mov	r4, r0
c0d025cc:	6906      	ldr	r6, [r0, #16]
c0d025ce:	6940      	ldr	r0, [r0, #20]
c0d025d0:	00c0      	lsls	r0, r0, #3
c0d025d2:	1b80      	subs	r0, r0, r6
c0d025d4:	28ff      	cmp	r0, #255	; 0xff
c0d025d6:	d313      	bcc.n	c0d02600 <roinput_add_scalar+0x3a>
c0d025d8:	460d      	mov	r5, r1
c0d025da:	2700      	movs	r7, #0
c0d025dc:	2007      	movs	r0, #7
c0d025de:	4038      	ands	r0, r7
c0d025e0:	08f9      	lsrs	r1, r7, #3
c0d025e2:	1a69      	subs	r1, r5, r1
c0d025e4:	7fc9      	ldrb	r1, [r1, #31]
c0d025e6:	40c1      	lsrs	r1, r0
c0d025e8:	2201      	movs	r2, #1
c0d025ea:	400a      	ands	r2, r1
c0d025ec:	19f1      	adds	r1, r6, r7
c0d025ee:	6860      	ldr	r0, [r4, #4]
c0d025f0:	f002 fb46 	bl	c0d04c80 <packed_bit_array_set>
c0d025f4:	1c7f      	adds	r7, r7, #1
c0d025f6:	2fff      	cmp	r7, #255	; 0xff
c0d025f8:	d1f0      	bne.n	c0d025dc <roinput_add_scalar+0x16>
c0d025fa:	6920      	ldr	r0, [r4, #16]
c0d025fc:	30ff      	adds	r0, #255	; 0xff
c0d025fe:	6120      	str	r0, [r4, #16]
c0d02600:	b001      	add	sp, #4
c0d02602:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d02604 <roinput_add_bytes>:
c0d02604:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02606:	b085      	sub	sp, #20
c0d02608:	9103      	str	r1, [sp, #12]
c0d0260a:	4604      	mov	r4, r0
c0d0260c:	6907      	ldr	r7, [r0, #16]
c0d0260e:	6940      	ldr	r0, [r0, #20]
c0d02610:	00c0      	lsls	r0, r0, #3
c0d02612:	1bc0      	subs	r0, r0, r7
c0d02614:	00d1      	lsls	r1, r2, #3
c0d02616:	4288      	cmp	r0, r1
c0d02618:	d31f      	bcc.n	c0d0265a <roinput_add_bytes+0x56>
c0d0261a:	2a00      	cmp	r2, #0
c0d0261c:	d01b      	beq.n	c0d02656 <roinput_add_bytes+0x52>
c0d0261e:	9100      	str	r1, [sp, #0]
c0d02620:	2000      	movs	r0, #0
c0d02622:	9001      	str	r0, [sp, #4]
c0d02624:	4601      	mov	r1, r0
c0d02626:	9202      	str	r2, [sp, #8]
c0d02628:	9803      	ldr	r0, [sp, #12]
c0d0262a:	9104      	str	r1, [sp, #16]
c0d0262c:	5c46      	ldrb	r6, [r0, r1]
c0d0262e:	9d01      	ldr	r5, [sp, #4]
c0d02630:	1979      	adds	r1, r7, r5
c0d02632:	4630      	mov	r0, r6
c0d02634:	40e8      	lsrs	r0, r5
c0d02636:	2201      	movs	r2, #1
c0d02638:	4002      	ands	r2, r0
c0d0263a:	6860      	ldr	r0, [r4, #4]
c0d0263c:	f002 fb20 	bl	c0d04c80 <packed_bit_array_set>
c0d02640:	1c6d      	adds	r5, r5, #1
c0d02642:	2d08      	cmp	r5, #8
c0d02644:	d1f4      	bne.n	c0d02630 <roinput_add_bytes+0x2c>
c0d02646:	197f      	adds	r7, r7, r5
c0d02648:	9904      	ldr	r1, [sp, #16]
c0d0264a:	1c49      	adds	r1, r1, #1
c0d0264c:	9a02      	ldr	r2, [sp, #8]
c0d0264e:	4291      	cmp	r1, r2
c0d02650:	d1ea      	bne.n	c0d02628 <roinput_add_bytes+0x24>
c0d02652:	6927      	ldr	r7, [r4, #16]
c0d02654:	9900      	ldr	r1, [sp, #0]
c0d02656:	1878      	adds	r0, r7, r1
c0d02658:	6120      	str	r0, [r4, #16]
c0d0265a:	b005      	add	sp, #20
c0d0265c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d0265e <roinput_add_uint32>:
c0d0265e:	b510      	push	{r4, lr}
c0d02660:	b082      	sub	sp, #8
c0d02662:	2200      	movs	r2, #0
c0d02664:	ab01      	add	r3, sp, #4
c0d02666:	460c      	mov	r4, r1
c0d02668:	40d4      	lsrs	r4, r2
c0d0266a:	701c      	strb	r4, [r3, #0]
c0d0266c:	1c5b      	adds	r3, r3, #1
c0d0266e:	3208      	adds	r2, #8
c0d02670:	2a20      	cmp	r2, #32
c0d02672:	d1f8      	bne.n	c0d02666 <roinput_add_uint32+0x8>
c0d02674:	a901      	add	r1, sp, #4
c0d02676:	2204      	movs	r2, #4
c0d02678:	f7ff ffc4 	bl	c0d02604 <roinput_add_bytes>
c0d0267c:	b002      	add	sp, #8
c0d0267e:	bd10      	pop	{r4, pc}

c0d02680 <roinput_add_uint64>:
c0d02680:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02682:	b083      	sub	sp, #12
c0d02684:	461d      	mov	r5, r3
c0d02686:	4616      	mov	r6, r2
c0d02688:	9000      	str	r0, [sp, #0]
c0d0268a:	2700      	movs	r7, #0
c0d0268c:	ac01      	add	r4, sp, #4
c0d0268e:	4630      	mov	r0, r6
c0d02690:	4629      	mov	r1, r5
c0d02692:	463a      	mov	r2, r7
c0d02694:	f003 f936 	bl	c0d05904 <__aeabi_llsr>
c0d02698:	7020      	strb	r0, [r4, #0]
c0d0269a:	1c64      	adds	r4, r4, #1
c0d0269c:	3708      	adds	r7, #8
c0d0269e:	2f40      	cmp	r7, #64	; 0x40
c0d026a0:	d1f5      	bne.n	c0d0268e <roinput_add_uint64+0xe>
c0d026a2:	a901      	add	r1, sp, #4
c0d026a4:	2208      	movs	r2, #8
c0d026a6:	9800      	ldr	r0, [sp, #0]
c0d026a8:	f7ff ffac 	bl	c0d02604 <roinput_add_bytes>
c0d026ac:	b003      	add	sp, #12
c0d026ae:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d026b0 <roinput_to_bytes>:
c0d026b0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d026b2:	b083      	sub	sp, #12
c0d026b4:	460f      	mov	r7, r1
c0d026b6:	4605      	mov	r5, r0
c0d026b8:	6888      	ldr	r0, [r1, #8]
c0d026ba:	2800      	cmp	r0, #0
c0d026bc:	d01f      	beq.n	c0d026fe <roinput_to_bytes+0x4e>
c0d026be:	2100      	movs	r1, #0
c0d026c0:	4608      	mov	r0, r1
c0d026c2:	9100      	str	r1, [sp, #0]
c0d026c4:	460a      	mov	r2, r1
c0d026c6:	9701      	str	r7, [sp, #4]
c0d026c8:	4604      	mov	r4, r0
c0d026ca:	9202      	str	r2, [sp, #8]
c0d026cc:	0150      	lsls	r0, r2, #5
c0d026ce:	6839      	ldr	r1, [r7, #0]
c0d026d0:	180f      	adds	r7, r1, r0
c0d026d2:	9e00      	ldr	r6, [sp, #0]
c0d026d4:	4638      	mov	r0, r7
c0d026d6:	4631      	mov	r1, r6
c0d026d8:	f002 fae0 	bl	c0d04c9c <packed_bit_array_get>
c0d026dc:	4602      	mov	r2, r0
c0d026de:	19a1      	adds	r1, r4, r6
c0d026e0:	4628      	mov	r0, r5
c0d026e2:	f002 facd 	bl	c0d04c80 <packed_bit_array_set>
c0d026e6:	1c76      	adds	r6, r6, #1
c0d026e8:	2eff      	cmp	r6, #255	; 0xff
c0d026ea:	d1f3      	bne.n	c0d026d4 <roinput_to_bytes+0x24>
c0d026ec:	19a0      	adds	r0, r4, r6
c0d026ee:	9a02      	ldr	r2, [sp, #8]
c0d026f0:	1c52      	adds	r2, r2, #1
c0d026f2:	9f01      	ldr	r7, [sp, #4]
c0d026f4:	68b9      	ldr	r1, [r7, #8]
c0d026f6:	428a      	cmp	r2, r1
c0d026f8:	d3e6      	bcc.n	c0d026c8 <roinput_to_bytes+0x18>
c0d026fa:	19a4      	adds	r4, r4, r6
c0d026fc:	e000      	b.n	c0d02700 <roinput_to_bytes+0x50>
c0d026fe:	2400      	movs	r4, #0
c0d02700:	6938      	ldr	r0, [r7, #16]
c0d02702:	2800      	cmp	r0, #0
c0d02704:	d00d      	beq.n	c0d02722 <roinput_to_bytes+0x72>
c0d02706:	2600      	movs	r6, #0
c0d02708:	6878      	ldr	r0, [r7, #4]
c0d0270a:	4631      	mov	r1, r6
c0d0270c:	f002 fac6 	bl	c0d04c9c <packed_bit_array_get>
c0d02710:	4602      	mov	r2, r0
c0d02712:	19a1      	adds	r1, r4, r6
c0d02714:	4628      	mov	r0, r5
c0d02716:	f002 fab3 	bl	c0d04c80 <packed_bit_array_set>
c0d0271a:	1c76      	adds	r6, r6, #1
c0d0271c:	6938      	ldr	r0, [r7, #16]
c0d0271e:	4286      	cmp	r6, r0
c0d02720:	d3f2      	bcc.n	c0d02708 <roinput_to_bytes+0x58>
c0d02722:	b003      	add	sp, #12
c0d02724:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d02726 <roinput_to_fields>:
c0d02726:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02728:	b08b      	sub	sp, #44	; 0x2c
c0d0272a:	4614      	mov	r4, r2
c0d0272c:	6892      	ldr	r2, [r2, #8]
c0d0272e:	2700      	movs	r7, #0
c0d02730:	43fb      	mvns	r3, r7
c0d02732:	428a      	cmp	r2, r1
c0d02734:	d901      	bls.n	c0d0273a <roinput_to_fields+0x14>
c0d02736:	461f      	mov	r7, r3
c0d02738:	e047      	b.n	c0d027ca <roinput_to_fields+0xa4>
c0d0273a:	9300      	str	r3, [sp, #0]
c0d0273c:	2a00      	cmp	r2, #0
c0d0273e:	d011      	beq.n	c0d02764 <roinput_to_fields+0x3e>
c0d02740:	2100      	movs	r1, #0
c0d02742:	4602      	mov	r2, r0
c0d02744:	460b      	mov	r3, r1
c0d02746:	251f      	movs	r5, #31
c0d02748:	460e      	mov	r6, r1
c0d0274a:	6827      	ldr	r7, [r4, #0]
c0d0274c:	5dbf      	ldrb	r7, [r7, r6]
c0d0274e:	5557      	strb	r7, [r2, r5]
c0d02750:	1c76      	adds	r6, r6, #1
c0d02752:	1e6d      	subs	r5, r5, #1
c0d02754:	1c6f      	adds	r7, r5, #1
c0d02756:	d3f8      	bcc.n	c0d0274a <roinput_to_fields+0x24>
c0d02758:	3220      	adds	r2, #32
c0d0275a:	3120      	adds	r1, #32
c0d0275c:	68a7      	ldr	r7, [r4, #8]
c0d0275e:	1c5b      	adds	r3, r3, #1
c0d02760:	42bb      	cmp	r3, r7
c0d02762:	d3f0      	bcc.n	c0d02746 <roinput_to_fields+0x20>
c0d02764:	6926      	ldr	r6, [r4, #16]
c0d02766:	2e00      	cmp	r6, #0
c0d02768:	d02f      	beq.n	c0d027ca <roinput_to_fields+0xa4>
c0d0276a:	0179      	lsls	r1, r7, #5
c0d0276c:	1840      	adds	r0, r0, r1
c0d0276e:	301f      	adds	r0, #31
c0d02770:	9002      	str	r0, [sp, #8]
c0d02772:	2500      	movs	r5, #0
c0d02774:	9701      	str	r7, [sp, #4]
c0d02776:	a803      	add	r0, sp, #12
c0d02778:	2120      	movs	r1, #32
c0d0277a:	f003 f9b9 	bl	c0d05af0 <__aeabi_memclr>
c0d0277e:	1b77      	subs	r7, r6, r5
c0d02780:	2ffe      	cmp	r7, #254	; 0xfe
c0d02782:	d300      	bcc.n	c0d02786 <roinput_to_fields+0x60>
c0d02784:	27fe      	movs	r7, #254	; 0xfe
c0d02786:	2f00      	cmp	r7, #0
c0d02788:	d00c      	beq.n	c0d027a4 <roinput_to_fields+0x7e>
c0d0278a:	2600      	movs	r6, #0
c0d0278c:	19a9      	adds	r1, r5, r6
c0d0278e:	6860      	ldr	r0, [r4, #4]
c0d02790:	f002 fa84 	bl	c0d04c9c <packed_bit_array_get>
c0d02794:	4602      	mov	r2, r0
c0d02796:	a803      	add	r0, sp, #12
c0d02798:	4631      	mov	r1, r6
c0d0279a:	f002 fa71 	bl	c0d04c80 <packed_bit_array_set>
c0d0279e:	1c76      	adds	r6, r6, #1
c0d027a0:	42b7      	cmp	r7, r6
c0d027a2:	d1f3      	bne.n	c0d0278c <roinput_to_fields+0x66>
c0d027a4:	2000      	movs	r0, #0
c0d027a6:	9e02      	ldr	r6, [sp, #8]
c0d027a8:	4631      	mov	r1, r6
c0d027aa:	9b00      	ldr	r3, [sp, #0]
c0d027ac:	aa03      	add	r2, sp, #12
c0d027ae:	5c12      	ldrb	r2, [r2, r0]
c0d027b0:	700a      	strb	r2, [r1, #0]
c0d027b2:	18c9      	adds	r1, r1, r3
c0d027b4:	1c40      	adds	r0, r0, #1
c0d027b6:	2820      	cmp	r0, #32
c0d027b8:	d1f8      	bne.n	c0d027ac <roinput_to_fields+0x86>
c0d027ba:	197d      	adds	r5, r7, r5
c0d027bc:	3620      	adds	r6, #32
c0d027be:	9602      	str	r6, [sp, #8]
c0d027c0:	6926      	ldr	r6, [r4, #16]
c0d027c2:	9f01      	ldr	r7, [sp, #4]
c0d027c4:	1c7f      	adds	r7, r7, #1
c0d027c6:	42ae      	cmp	r6, r5
c0d027c8:	d8d4      	bhi.n	c0d02774 <roinput_to_fields+0x4e>
c0d027ca:	4638      	mov	r0, r7
c0d027cc:	b00b      	add	sp, #44	; 0x2c
c0d027ce:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d027d0 <roinput_derive_message>:
c0d027d0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d027d2:	b0d1      	sub	sp, #324	; 0x144
c0d027d4:	461d      	mov	r5, r3
c0d027d6:	4617      	mov	r7, r2
c0d027d8:	aa50      	add	r2, sp, #320	; 0x140
c0d027da:	9b56      	ldr	r3, [sp, #344]	; 0x158
c0d027dc:	7013      	strb	r3, [r2, #0]
c0d027de:	226c      	movs	r2, #108	; 0x6c
c0d027e0:	920c      	str	r2, [sp, #48]	; 0x30
c0d027e2:	2205      	movs	r2, #5
c0d027e4:	920a      	str	r2, [sp, #40]	; 0x28
c0d027e6:	aa0d      	add	r2, sp, #52	; 0x34
c0d027e8:	9208      	str	r2, [sp, #32]
c0d027ea:	aa28      	add	r2, sp, #160	; 0xa0
c0d027ec:	9207      	str	r2, [sp, #28]
c0d027ee:	2600      	movs	r6, #0
c0d027f0:	43f4      	mvns	r4, r6
c0d027f2:	68ea      	ldr	r2, [r5, #12]
c0d027f4:	2a03      	cmp	r2, #3
c0d027f6:	d85d      	bhi.n	c0d028b4 <roinput_derive_message+0xe4>
c0d027f8:	696a      	ldr	r2, [r5, #20]
c0d027fa:	2a4b      	cmp	r2, #75	; 0x4b
c0d027fc:	d85a      	bhi.n	c0d028b4 <roinput_derive_message+0xe4>
c0d027fe:	68ab      	ldr	r3, [r5, #8]
c0d02800:	2b05      	cmp	r3, #5
c0d02802:	d857      	bhi.n	c0d028b4 <roinput_derive_message+0xe4>
c0d02804:	9406      	str	r4, [sp, #24]
c0d02806:	692c      	ldr	r4, [r5, #16]
c0d02808:	221b      	movs	r2, #27
c0d0280a:	0152      	lsls	r2, r2, #5
c0d0280c:	9405      	str	r4, [sp, #20]
c0d0280e:	4294      	cmp	r4, r2
c0d02810:	d901      	bls.n	c0d02816 <roinput_derive_message+0x46>
c0d02812:	9c06      	ldr	r4, [sp, #24]
c0d02814:	e04e      	b.n	c0d028b4 <roinput_derive_message+0xe4>
c0d02816:	9104      	str	r1, [sp, #16]
c0d02818:	9002      	str	r0, [sp, #8]
c0d0281a:	6829      	ldr	r1, [r5, #0]
c0d0281c:	015a      	lsls	r2, r3, #5
c0d0281e:	a828      	add	r0, sp, #160	; 0xa0
c0d02820:	9201      	str	r2, [sp, #4]
c0d02822:	9303      	str	r3, [sp, #12]
c0d02824:	f003 f96a 	bl	c0d05afc <__aeabi_memcpy>
c0d02828:	6869      	ldr	r1, [r5, #4]
c0d0282a:	9c05      	ldr	r4, [sp, #20]
c0d0282c:	1de0      	adds	r0, r4, #7
c0d0282e:	08c2      	lsrs	r2, r0, #3
c0d02830:	a80d      	add	r0, sp, #52	; 0x34
c0d02832:	f003 f963 	bl	c0d05afc <__aeabi_memcpy>
c0d02836:	9b03      	ldr	r3, [sp, #12]
c0d02838:	940b      	str	r4, [sp, #44]	; 0x2c
c0d0283a:	9309      	str	r3, [sp, #36]	; 0x24
c0d0283c:	2b05      	cmp	r3, #5
c0d0283e:	9c06      	ldr	r4, [sp, #24]
c0d02840:	d01a      	beq.n	c0d02878 <roinput_derive_message+0xa8>
c0d02842:	a828      	add	r0, sp, #160	; 0xa0
c0d02844:	9901      	ldr	r1, [sp, #4]
c0d02846:	1840      	adds	r0, r0, r1
c0d02848:	4639      	mov	r1, r7
c0d0284a:	311f      	adds	r1, #31
c0d0284c:	780a      	ldrb	r2, [r1, #0]
c0d0284e:	5582      	strb	r2, [r0, r6]
c0d02850:	1e49      	subs	r1, r1, #1
c0d02852:	1c76      	adds	r6, r6, #1
c0d02854:	2e20      	cmp	r6, #32
c0d02856:	d1f9      	bne.n	c0d0284c <roinput_derive_message+0x7c>
c0d02858:	1c58      	adds	r0, r3, #1
c0d0285a:	9009      	str	r0, [sp, #36]	; 0x24
c0d0285c:	2805      	cmp	r0, #5
c0d0285e:	d00b      	beq.n	c0d02878 <roinput_derive_message+0xa8>
c0d02860:	0140      	lsls	r0, r0, #5
c0d02862:	a928      	add	r1, sp, #160	; 0xa0
c0d02864:	1808      	adds	r0, r1, r0
c0d02866:	213f      	movs	r1, #63	; 0x3f
c0d02868:	5c7a      	ldrb	r2, [r7, r1]
c0d0286a:	7002      	strb	r2, [r0, #0]
c0d0286c:	1e49      	subs	r1, r1, #1
c0d0286e:	1c40      	adds	r0, r0, #1
c0d02870:	291f      	cmp	r1, #31
c0d02872:	d1f9      	bne.n	c0d02868 <roinput_derive_message+0x98>
c0d02874:	1c98      	adds	r0, r3, #2
c0d02876:	9009      	str	r0, [sp, #36]	; 0x24
c0d02878:	3740      	adds	r7, #64	; 0x40
c0d0287a:	ad07      	add	r5, sp, #28
c0d0287c:	4628      	mov	r0, r5
c0d0287e:	4639      	mov	r1, r7
c0d02880:	f7ff fea1 	bl	c0d025c6 <roinput_add_scalar>
c0d02884:	a950      	add	r1, sp, #320	; 0x140
c0d02886:	2201      	movs	r2, #1
c0d02888:	4628      	mov	r0, r5
c0d0288a:	f7ff febb 	bl	c0d02604 <roinput_add_bytes>
c0d0288e:	20ff      	movs	r0, #255	; 0xff
c0d02890:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d02892:	4341      	muls	r1, r0
c0d02894:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d02896:	1840      	adds	r0, r0, r1
c0d02898:	1dc0      	adds	r0, r0, #7
c0d0289a:	08c5      	lsrs	r5, r0, #3
c0d0289c:	9804      	ldr	r0, [sp, #16]
c0d0289e:	42a8      	cmp	r0, r5
c0d028a0:	d304      	bcc.n	c0d028ac <roinput_derive_message+0xdc>
c0d028a2:	a907      	add	r1, sp, #28
c0d028a4:	9802      	ldr	r0, [sp, #8]
c0d028a6:	f7ff ff03 	bl	c0d026b0 <roinput_to_bytes>
c0d028aa:	462c      	mov	r4, r5
c0d028ac:	a80d      	add	r0, sp, #52	; 0x34
c0d028ae:	216c      	movs	r1, #108	; 0x6c
c0d028b0:	f003 f934 	bl	c0d05b1c <explicit_bzero>
c0d028b4:	4620      	mov	r0, r4
c0d028b6:	b051      	add	sp, #324	; 0x144
c0d028b8:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d028ba <roinput_hash_message>:
c0d028ba:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d028bc:	b0d1      	sub	sp, #324	; 0x144
c0d028be:	461f      	mov	r7, r3
c0d028c0:	9207      	str	r2, [sp, #28]
c0d028c2:	4606      	mov	r6, r0
c0d028c4:	234b      	movs	r3, #75	; 0x4b
c0d028c6:	930d      	str	r3, [sp, #52]	; 0x34
c0d028c8:	2206      	movs	r2, #6
c0d028ca:	920b      	str	r2, [sp, #44]	; 0x2c
c0d028cc:	aa0e      	add	r2, sp, #56	; 0x38
c0d028ce:	9209      	str	r2, [sp, #36]	; 0x24
c0d028d0:	aa21      	add	r2, sp, #132	; 0x84
c0d028d2:	9208      	str	r2, [sp, #32]
c0d028d4:	2500      	movs	r5, #0
c0d028d6:	43e8      	mvns	r0, r5
c0d028d8:	9c56      	ldr	r4, [sp, #344]	; 0x158
c0d028da:	68e2      	ldr	r2, [r4, #12]
c0d028dc:	2a03      	cmp	r2, #3
c0d028de:	d858      	bhi.n	c0d02992 <roinput_hash_message+0xd8>
c0d028e0:	6962      	ldr	r2, [r4, #20]
c0d028e2:	2a4b      	cmp	r2, #75	; 0x4b
c0d028e4:	d855      	bhi.n	c0d02992 <roinput_hash_message+0xd8>
c0d028e6:	68a2      	ldr	r2, [r4, #8]
c0d028e8:	2a06      	cmp	r2, #6
c0d028ea:	d852      	bhi.n	c0d02992 <roinput_hash_message+0xd8>
c0d028ec:	9604      	str	r6, [sp, #16]
c0d028ee:	9005      	str	r0, [sp, #20]
c0d028f0:	6926      	ldr	r6, [r4, #16]
c0d028f2:	9606      	str	r6, [sp, #24]
c0d028f4:	00d8      	lsls	r0, r3, #3
c0d028f6:	9e06      	ldr	r6, [sp, #24]
c0d028f8:	4286      	cmp	r6, r0
c0d028fa:	d901      	bls.n	c0d02900 <roinput_hash_message+0x46>
c0d028fc:	9805      	ldr	r0, [sp, #20]
c0d028fe:	e048      	b.n	c0d02992 <roinput_hash_message+0xd8>
c0d02900:	9101      	str	r1, [sp, #4]
c0d02902:	6821      	ldr	r1, [r4, #0]
c0d02904:	0150      	lsls	r0, r2, #5
c0d02906:	9002      	str	r0, [sp, #8]
c0d02908:	a821      	add	r0, sp, #132	; 0x84
c0d0290a:	9203      	str	r2, [sp, #12]
c0d0290c:	9a02      	ldr	r2, [sp, #8]
c0d0290e:	f003 f8f5 	bl	c0d05afc <__aeabi_memcpy>
c0d02912:	6861      	ldr	r1, [r4, #4]
c0d02914:	9c06      	ldr	r4, [sp, #24]
c0d02916:	1de0      	adds	r0, r4, #7
c0d02918:	08c2      	lsrs	r2, r0, #3
c0d0291a:	a80e      	add	r0, sp, #56	; 0x38
c0d0291c:	f003 f8ee 	bl	c0d05afc <__aeabi_memcpy>
c0d02920:	9903      	ldr	r1, [sp, #12]
c0d02922:	9804      	ldr	r0, [sp, #16]
c0d02924:	940c      	str	r4, [sp, #48]	; 0x30
c0d02926:	910a      	str	r1, [sp, #40]	; 0x28
c0d02928:	2906      	cmp	r1, #6
c0d0292a:	9c07      	ldr	r4, [sp, #28]
c0d0292c:	9e05      	ldr	r6, [sp, #20]
c0d0292e:	d02c      	beq.n	c0d0298a <roinput_hash_message+0xd0>
c0d02930:	a921      	add	r1, sp, #132	; 0x84
c0d02932:	9a02      	ldr	r2, [sp, #8]
c0d02934:	188b      	adds	r3, r1, r2
c0d02936:	4621      	mov	r1, r4
c0d02938:	311f      	adds	r1, #31
c0d0293a:	780a      	ldrb	r2, [r1, #0]
c0d0293c:	555a      	strb	r2, [r3, r5]
c0d0293e:	1e49      	subs	r1, r1, #1
c0d02940:	1c6d      	adds	r5, r5, #1
c0d02942:	2d20      	cmp	r5, #32
c0d02944:	d1f9      	bne.n	c0d0293a <roinput_hash_message+0x80>
c0d02946:	9903      	ldr	r1, [sp, #12]
c0d02948:	1c49      	adds	r1, r1, #1
c0d0294a:	910a      	str	r1, [sp, #40]	; 0x28
c0d0294c:	2906      	cmp	r1, #6
c0d0294e:	d01c      	beq.n	c0d0298a <roinput_hash_message+0xd0>
c0d02950:	014a      	lsls	r2, r1, #5
c0d02952:	a921      	add	r1, sp, #132	; 0x84
c0d02954:	188b      	adds	r3, r1, r2
c0d02956:	213f      	movs	r1, #63	; 0x3f
c0d02958:	5c62      	ldrb	r2, [r4, r1]
c0d0295a:	701a      	strb	r2, [r3, #0]
c0d0295c:	1e49      	subs	r1, r1, #1
c0d0295e:	1c5b      	adds	r3, r3, #1
c0d02960:	291f      	cmp	r1, #31
c0d02962:	d1f9      	bne.n	c0d02958 <roinput_hash_message+0x9e>
c0d02964:	9903      	ldr	r1, [sp, #12]
c0d02966:	1c89      	adds	r1, r1, #2
c0d02968:	910a      	str	r1, [sp, #40]	; 0x28
c0d0296a:	2906      	cmp	r1, #6
c0d0296c:	d00d      	beq.n	c0d0298a <roinput_hash_message+0xd0>
c0d0296e:	014a      	lsls	r2, r1, #5
c0d02970:	a921      	add	r1, sp, #132	; 0x84
c0d02972:	188b      	adds	r3, r1, r2
c0d02974:	371f      	adds	r7, #31
c0d02976:	2100      	movs	r1, #0
c0d02978:	783a      	ldrb	r2, [r7, #0]
c0d0297a:	545a      	strb	r2, [r3, r1]
c0d0297c:	19bf      	adds	r7, r7, r6
c0d0297e:	1c49      	adds	r1, r1, #1
c0d02980:	2920      	cmp	r1, #32
c0d02982:	d1f9      	bne.n	c0d02978 <roinput_hash_message+0xbe>
c0d02984:	9903      	ldr	r1, [sp, #12]
c0d02986:	1cc9      	adds	r1, r1, #3
c0d02988:	910a      	str	r1, [sp, #40]	; 0x28
c0d0298a:	aa08      	add	r2, sp, #32
c0d0298c:	9901      	ldr	r1, [sp, #4]
c0d0298e:	f7ff feca 	bl	c0d02726 <roinput_to_fields>
c0d02992:	b051      	add	sp, #324	; 0x144
c0d02994:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d02996 <handle_sign_tx>:
c0d02996:	b580      	push	{r7, lr}
c0d02998:	4619      	mov	r1, r3
c0d0299a:	4610      	mov	r0, r2
c0d0299c:	f000 f888 	bl	c0d02ab0 <ui_sign_tx>
c0d029a0:	9802      	ldr	r0, [sp, #8]
c0d029a2:	6801      	ldr	r1, [r0, #0]
c0d029a4:	2210      	movs	r2, #16
c0d029a6:	430a      	orrs	r2, r1
c0d029a8:	6002      	str	r2, [r0, #0]
c0d029aa:	bd80      	pop	{r7, pc}

c0d029ac <ux_sign_tx_done_flow_done_step_init>:
c0d029ac:	b510      	push	{r4, lr}
c0d029ae:	4604      	mov	r4, r0
c0d029b0:	f000 f804 	bl	c0d029bc <sign_transaction>
c0d029b4:	4620      	mov	r0, r4
c0d029b6:	f002 fe07 	bl	c0d055c8 <ux_layout_pb_init>
c0d029ba:	bd10      	pop	{r4, pc}

c0d029bc <sign_transaction>:
c0d029bc:	b570      	push	{r4, r5, r6, lr}
c0d029be:	b0c8      	sub	sp, #288	; 0x120
c0d029c0:	466c      	mov	r4, sp
c0d029c2:	4620      	mov	r0, r4
c0d029c4:	f003 f9ce 	bl	c0d05d64 <setjmp>
c0d029c8:	85a0      	strh	r0, [r4, #44]	; 0x2c
c0d029ca:	b285      	uxth	r5, r0
c0d029cc:	4668      	mov	r0, sp
c0d029ce:	2d00      	cmp	r5, #0
c0d029d0:	d005      	beq.n	c0d029de <sign_transaction+0x22>
c0d029d2:	2100      	movs	r1, #0
c0d029d4:	8581      	strh	r1, [r0, #44]	; 0x2c
c0d029d6:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d029d8:	f000 f9aa 	bl	c0d02d30 <try_context_set>
c0d029dc:	e02f      	b.n	c0d02a3e <sign_transaction+0x82>
c0d029de:	f000 f9a7 	bl	c0d02d30 <try_context_set>
c0d029e2:	900a      	str	r0, [sp, #40]	; 0x28
c0d029e4:	4e27      	ldr	r6, [pc, #156]	; (c0d02a84 <sign_transaction+0xc8>)
c0d029e6:	6871      	ldr	r1, [r6, #4]
c0d029e8:	ac0c      	add	r4, sp, #48	; 0x30
c0d029ea:	4620      	mov	r0, r4
c0d029ec:	f7fd fe18 	bl	c0d00620 <generate_keypair>
c0d029f0:	a83a      	add	r0, sp, #232	; 0xe8
c0d029f2:	2138      	movs	r1, #56	; 0x38
c0d029f4:	4622      	mov	r2, r4
c0d029f6:	f7fd fe3b 	bl	c0d00670 <generate_address>
c0d029fa:	2800      	cmp	r0, #0
c0d029fc:	d03e      	beq.n	c0d02a7c <sign_transaction+0xc0>
c0d029fe:	a83a      	add	r0, sp, #232	; 0xe8
c0d02a00:	4921      	ldr	r1, [pc, #132]	; (c0d02a88 <sign_transaction+0xcc>)
c0d02a02:	2238      	movs	r2, #56	; 0x38
c0d02a04:	f003 f88e 	bl	c0d05b24 <memcmp>
c0d02a08:	2800      	cmp	r0, #0
c0d02a0a:	d137      	bne.n	c0d02a7c <sign_transaction+0xc0>
c0d02a0c:	2003      	movs	r0, #3
c0d02a0e:	9027      	str	r0, [sp, #156]	; 0x9c
c0d02a10:	204b      	movs	r0, #75	; 0x4b
c0d02a12:	9029      	str	r0, [sp, #164]	; 0xa4
c0d02a14:	4630      	mov	r0, r6
c0d02a16:	30c8      	adds	r0, #200	; 0xc8
c0d02a18:	9024      	str	r0, [sp, #144]	; 0x90
c0d02a1a:	2025      	movs	r0, #37	; 0x25
c0d02a1c:	00c0      	lsls	r0, r0, #3
c0d02a1e:	1830      	adds	r0, r6, r0
c0d02a20:	9025      	str	r0, [sp, #148]	; 0x94
c0d02a22:	4631      	mov	r1, r6
c0d02a24:	3108      	adds	r1, #8
c0d02a26:	ac24      	add	r4, sp, #144	; 0x90
c0d02a28:	4620      	mov	r0, r4
c0d02a2a:	f000 f99d 	bl	c0d02d68 <transaction_to_roinput>
c0d02a2e:	7833      	ldrb	r3, [r6, #0]
c0d02a30:	a82a      	add	r0, sp, #168	; 0xa8
c0d02a32:	a90c      	add	r1, sp, #48	; 0x30
c0d02a34:	4622      	mov	r2, r4
c0d02a36:	f7fd ff0d 	bl	c0d00854 <sign>
c0d02a3a:	2800      	cmp	r0, #0
c0d02a3c:	d01e      	beq.n	c0d02a7c <sign_transaction+0xc0>
c0d02a3e:	f000 f96b 	bl	c0d02d18 <try_context_get>
c0d02a42:	4669      	mov	r1, sp
c0d02a44:	4288      	cmp	r0, r1
c0d02a46:	d102      	bne.n	c0d02a4e <sign_transaction+0x92>
c0d02a48:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d02a4a:	f000 f971 	bl	c0d02d30 <try_context_set>
c0d02a4e:	a80c      	add	r0, sp, #48	; 0x30
c0d02a50:	3040      	adds	r0, #64	; 0x40
c0d02a52:	2120      	movs	r1, #32
c0d02a54:	f003 f862 	bl	c0d05b1c <explicit_bzero>
c0d02a58:	4668      	mov	r0, sp
c0d02a5a:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d02a5c:	2800      	cmp	r0, #0
c0d02a5e:	d10e      	bne.n	c0d02a7e <sign_transaction+0xc2>
c0d02a60:	2d00      	cmp	r5, #0
c0d02a62:	d10b      	bne.n	c0d02a7c <sign_transaction+0xc0>
c0d02a64:	4809      	ldr	r0, [pc, #36]	; (c0d02a8c <sign_transaction+0xd0>)
c0d02a66:	a92a      	add	r1, sp, #168	; 0xa8
c0d02a68:	2440      	movs	r4, #64	; 0x40
c0d02a6a:	4622      	mov	r2, r4
c0d02a6c:	f003 f846 	bl	c0d05afc <__aeabi_memcpy>
c0d02a70:	2101      	movs	r1, #1
c0d02a72:	4620      	mov	r0, r4
c0d02a74:	f7fe f874 	bl	c0d00b60 <sendResponse>
c0d02a78:	b048      	add	sp, #288	; 0x120
c0d02a7a:	bd70      	pop	{r4, r5, r6, pc}
c0d02a7c:	2002      	movs	r0, #2
c0d02a7e:	f7fe fcf6 	bl	c0d0146e <os_longjmp>
c0d02a82:	46c0      	nop			; (mov r8, r8)
c0d02a84:	20000758 	.word	0x20000758
c0d02a88:	20000604 	.word	0x20000604
c0d02a8c:	200003f0 	.word	0x200003f0

c0d02a90 <ux_sign_tx_flow_approve_step_validateinit>:
c0d02a90:	b580      	push	{r7, lr}
c0d02a92:	4903      	ldr	r1, [pc, #12]	; (c0d02aa0 <ux_sign_tx_flow_approve_step_validateinit+0x10>)
c0d02a94:	4479      	add	r1, pc
c0d02a96:	2000      	movs	r0, #0
c0d02a98:	4602      	mov	r2, r0
c0d02a9a:	f002 fa83 	bl	c0d04fa4 <ux_flow_init>
c0d02a9e:	bd80      	pop	{r7, pc}
c0d02aa0:	0000535c 	.word	0x0000535c

c0d02aa4 <ux_sign_tx_flow_reject_step_validateinit>:
c0d02aa4:	b580      	push	{r7, lr}
c0d02aa6:	2000      	movs	r0, #0
c0d02aa8:	4601      	mov	r1, r0
c0d02aaa:	f7fe f859 	bl	c0d00b60 <sendResponse>
c0d02aae:	bd80      	pop	{r7, pc}

c0d02ab0 <ui_sign_tx>:
c0d02ab0:	b570      	push	{r4, r5, r6, lr}
c0d02ab2:	4d30      	ldr	r5, [pc, #192]	; (c0d02b74 <ui_sign_tx+0xc4>)
c0d02ab4:	4c30      	ldr	r4, [pc, #192]	; (c0d02b78 <ui_sign_tx+0xc8>)
c0d02ab6:	462a      	mov	r2, r5
c0d02ab8:	4623      	mov	r3, r4
c0d02aba:	f7ff fb95 	bl	c0d021e8 <parse_tx>
c0d02abe:	2800      	cmp	r0, #0
c0d02ac0:	d055      	beq.n	c0d02b6e <ui_sign_tx+0xbe>
c0d02ac2:	20ff      	movs	r0, #255	; 0xff
c0d02ac4:	4601      	mov	r1, r0
c0d02ac6:	3174      	adds	r1, #116	; 0x74
c0d02ac8:	5c6e      	ldrb	r6, [r5, r1]
c0d02aca:	2e04      	cmp	r6, #4
c0d02acc:	d017      	beq.n	c0d02afe <ui_sign_tx+0x4e>
c0d02ace:	2e00      	cmp	r6, #0
c0d02ad0:	d12d      	bne.n	c0d02b2e <ui_sign_tx+0x7e>
c0d02ad2:	3032      	adds	r0, #50	; 0x32
c0d02ad4:	1820      	adds	r0, r4, r0
c0d02ad6:	4929      	ldr	r1, [pc, #164]	; (c0d02b7c <ui_sign_tx+0xcc>)
c0d02ad8:	4479      	add	r1, pc
c0d02ada:	220b      	movs	r2, #11
c0d02adc:	f003 f80e 	bl	c0d05afc <__aeabi_memcpy>
c0d02ae0:	204f      	movs	r0, #79	; 0x4f
c0d02ae2:	0080      	lsls	r0, r0, #2
c0d02ae4:	1820      	adds	r0, r4, r0
c0d02ae6:	4926      	ldr	r1, [pc, #152]	; (c0d02b80 <ui_sign_tx+0xd0>)
c0d02ae8:	4479      	add	r1, pc
c0d02aea:	c90c      	ldmia	r1!, {r2, r3}
c0d02aec:	c00c      	stmia	r0!, {r2, r3}
c0d02aee:	8809      	ldrh	r1, [r1, #0]
c0d02af0:	8001      	strh	r1, [r0, #0]
c0d02af2:	20a3      	movs	r0, #163	; 0xa3
c0d02af4:	0040      	lsls	r0, r0, #1
c0d02af6:	1820      	adds	r0, r4, r0
c0d02af8:	4922      	ldr	r1, [pc, #136]	; (c0d02b84 <ui_sign_tx+0xd4>)
c0d02afa:	4479      	add	r1, pc
c0d02afc:	e014      	b.n	c0d02b28 <ui_sign_tx+0x78>
c0d02afe:	3032      	adds	r0, #50	; 0x32
c0d02b00:	1820      	adds	r0, r4, r0
c0d02b02:	4921      	ldr	r1, [pc, #132]	; (c0d02b88 <ui_sign_tx+0xd8>)
c0d02b04:	4479      	add	r1, pc
c0d02b06:	220b      	movs	r2, #11
c0d02b08:	f002 fff8 	bl	c0d05afc <__aeabi_memcpy>
c0d02b0c:	204f      	movs	r0, #79	; 0x4f
c0d02b0e:	0080      	lsls	r0, r0, #2
c0d02b10:	1820      	adds	r0, r4, r0
c0d02b12:	491e      	ldr	r1, [pc, #120]	; (c0d02b8c <ui_sign_tx+0xdc>)
c0d02b14:	4479      	add	r1, pc
c0d02b16:	c90c      	ldmia	r1!, {r2, r3}
c0d02b18:	c00c      	stmia	r0!, {r2, r3}
c0d02b1a:	8809      	ldrh	r1, [r1, #0]
c0d02b1c:	8001      	strh	r1, [r0, #0]
c0d02b1e:	20a3      	movs	r0, #163	; 0xa3
c0d02b20:	0040      	lsls	r0, r0, #1
c0d02b22:	1820      	adds	r0, r4, r0
c0d02b24:	491a      	ldr	r1, [pc, #104]	; (c0d02b90 <ui_sign_tx+0xe0>)
c0d02b26:	4479      	add	r1, pc
c0d02b28:	2209      	movs	r2, #9
c0d02b2a:	f002 ffe7 	bl	c0d05afc <__aeabi_memcpy>
c0d02b2e:	7828      	ldrb	r0, [r5, #0]
c0d02b30:	1e40      	subs	r0, r0, #1
c0d02b32:	4241      	negs	r1, r0
c0d02b34:	4141      	adcs	r1, r0
c0d02b36:	0148      	lsls	r0, r1, #5
c0d02b38:	4916      	ldr	r1, [pc, #88]	; (c0d02b94 <ui_sign_tx+0xe4>)
c0d02b3a:	4479      	add	r1, pc
c0d02b3c:	1808      	adds	r0, r1, r0
c0d02b3e:	1f31      	subs	r1, r6, #4
c0d02b40:	424a      	negs	r2, r1
c0d02b42:	414a      	adcs	r2, r1
c0d02b44:	0111      	lsls	r1, r2, #4
c0d02b46:	1841      	adds	r1, r0, r1
c0d02b48:	2000      	movs	r0, #0
c0d02b4a:	43c2      	mvns	r2, r0
c0d02b4c:	6c2b      	ldr	r3, [r5, #64]	; 0x40
c0d02b4e:	1a9a      	subs	r2, r3, r2
c0d02b50:	1e53      	subs	r3, r2, #1
c0d02b52:	419a      	sbcs	r2, r3
c0d02b54:	00d2      	lsls	r2, r2, #3
c0d02b56:	1889      	adds	r1, r1, r2
c0d02b58:	2211      	movs	r2, #17
c0d02b5a:	0112      	lsls	r2, r2, #4
c0d02b5c:	5ca2      	ldrb	r2, [r4, r2]
c0d02b5e:	1e53      	subs	r3, r2, #1
c0d02b60:	419a      	sbcs	r2, r3
c0d02b62:	0092      	lsls	r2, r2, #2
c0d02b64:	5889      	ldr	r1, [r1, r2]
c0d02b66:	4602      	mov	r2, r0
c0d02b68:	f002 fa1c 	bl	c0d04fa4 <ux_flow_init>
c0d02b6c:	bd70      	pop	{r4, r5, r6, pc}
c0d02b6e:	2002      	movs	r0, #2
c0d02b70:	f7fe fc7d 	bl	c0d0146e <os_longjmp>
c0d02b74:	20000758 	.word	0x20000758
c0d02b78:	20000604 	.word	0x20000604
c0d02b7c:	000057dc 	.word	0x000057dc
c0d02b80:	000057d8 	.word	0x000057d8
c0d02b84:	0000574a 	.word	0x0000574a
c0d02b88:	0000574c 	.word	0x0000574c
c0d02b8c:	00005748 	.word	0x00005748
c0d02b90:	00005742 	.word	0x00005742
c0d02b94:	0000573a 	.word	0x0000573a

c0d02b98 <SVC_Call>:
c0d02b98:	df01      	svc	1
c0d02b9a:	2900      	cmp	r1, #0
c0d02b9c:	d100      	bne.n	c0d02ba0 <exception>
c0d02b9e:	4770      	bx	lr

c0d02ba0 <exception>:
c0d02ba0:	4608      	mov	r0, r1
c0d02ba2:	f7fe fc64 	bl	c0d0146e <os_longjmp>
	...

c0d02ba8 <get_api_level>:
c0d02ba8:	b580      	push	{r7, lr}
c0d02baa:	b084      	sub	sp, #16
c0d02bac:	2000      	movs	r0, #0
c0d02bae:	9002      	str	r0, [sp, #8]
c0d02bb0:	9001      	str	r0, [sp, #4]
c0d02bb2:	4803      	ldr	r0, [pc, #12]	; (c0d02bc0 <get_api_level+0x18>)
c0d02bb4:	a901      	add	r1, sp, #4
c0d02bb6:	f7ff ffef 	bl	c0d02b98 <SVC_Call>
c0d02bba:	b004      	add	sp, #16
c0d02bbc:	bd80      	pop	{r7, pc}
c0d02bbe:	46c0      	nop			; (mov r8, r8)
c0d02bc0:	60000138 	.word	0x60000138

c0d02bc4 <halt>:
c0d02bc4:	b580      	push	{r7, lr}
c0d02bc6:	b082      	sub	sp, #8
c0d02bc8:	2000      	movs	r0, #0
c0d02bca:	9001      	str	r0, [sp, #4]
c0d02bcc:	4802      	ldr	r0, [pc, #8]	; (c0d02bd8 <halt+0x14>)
c0d02bce:	4669      	mov	r1, sp
c0d02bd0:	f7ff ffe2 	bl	c0d02b98 <SVC_Call>
c0d02bd4:	b002      	add	sp, #8
c0d02bd6:	bd80      	pop	{r7, pc}
c0d02bd8:	6000023c 	.word	0x6000023c

c0d02bdc <nvm_write>:
c0d02bdc:	b580      	push	{r7, lr}
c0d02bde:	b086      	sub	sp, #24
c0d02be0:	ab01      	add	r3, sp, #4
c0d02be2:	c307      	stmia	r3!, {r0, r1, r2}
c0d02be4:	4802      	ldr	r0, [pc, #8]	; (c0d02bf0 <nvm_write+0x14>)
c0d02be6:	a901      	add	r1, sp, #4
c0d02be8:	f7ff ffd6 	bl	c0d02b98 <SVC_Call>
c0d02bec:	b006      	add	sp, #24
c0d02bee:	bd80      	pop	{r7, pc}
c0d02bf0:	6000037f 	.word	0x6000037f

c0d02bf4 <os_perso_isonboarded>:
c0d02bf4:	b580      	push	{r7, lr}
c0d02bf6:	b082      	sub	sp, #8
c0d02bf8:	2000      	movs	r0, #0
c0d02bfa:	9001      	str	r0, [sp, #4]
c0d02bfc:	4803      	ldr	r0, [pc, #12]	; (c0d02c0c <os_perso_isonboarded+0x18>)
c0d02bfe:	4669      	mov	r1, sp
c0d02c00:	f7ff ffca 	bl	c0d02b98 <SVC_Call>
c0d02c04:	b2c0      	uxtb	r0, r0
c0d02c06:	b002      	add	sp, #8
c0d02c08:	bd80      	pop	{r7, pc}
c0d02c0a:	46c0      	nop			; (mov r8, r8)
c0d02c0c:	60009f4f 	.word	0x60009f4f

c0d02c10 <os_perso_derive_node_bip32>:
c0d02c10:	b510      	push	{r4, lr}
c0d02c12:	b088      	sub	sp, #32
c0d02c14:	9c0a      	ldr	r4, [sp, #40]	; 0x28
c0d02c16:	9405      	str	r4, [sp, #20]
c0d02c18:	9304      	str	r3, [sp, #16]
c0d02c1a:	9203      	str	r2, [sp, #12]
c0d02c1c:	9102      	str	r1, [sp, #8]
c0d02c1e:	9001      	str	r0, [sp, #4]
c0d02c20:	4802      	ldr	r0, [pc, #8]	; (c0d02c2c <os_perso_derive_node_bip32+0x1c>)
c0d02c22:	a901      	add	r1, sp, #4
c0d02c24:	f7ff ffb8 	bl	c0d02b98 <SVC_Call>
c0d02c28:	b008      	add	sp, #32
c0d02c2a:	bd10      	pop	{r4, pc}
c0d02c2c:	600053ba 	.word	0x600053ba

c0d02c30 <os_perso_seed_cookie>:
c0d02c30:	b580      	push	{r7, lr}
c0d02c32:	b084      	sub	sp, #16
c0d02c34:	9101      	str	r1, [sp, #4]
c0d02c36:	9000      	str	r0, [sp, #0]
c0d02c38:	4802      	ldr	r0, [pc, #8]	; (c0d02c44 <os_perso_seed_cookie+0x14>)
c0d02c3a:	4669      	mov	r1, sp
c0d02c3c:	f7ff ffac 	bl	c0d02b98 <SVC_Call>
c0d02c40:	b004      	add	sp, #16
c0d02c42:	bd80      	pop	{r7, pc}
c0d02c44:	6000a8fc 	.word	0x6000a8fc

c0d02c48 <os_global_pin_is_validated>:
c0d02c48:	b580      	push	{r7, lr}
c0d02c4a:	b082      	sub	sp, #8
c0d02c4c:	2000      	movs	r0, #0
c0d02c4e:	9001      	str	r0, [sp, #4]
c0d02c50:	4803      	ldr	r0, [pc, #12]	; (c0d02c60 <os_global_pin_is_validated+0x18>)
c0d02c52:	4669      	mov	r1, sp
c0d02c54:	f7ff ffa0 	bl	c0d02b98 <SVC_Call>
c0d02c58:	b2c0      	uxtb	r0, r0
c0d02c5a:	b002      	add	sp, #8
c0d02c5c:	bd80      	pop	{r7, pc}
c0d02c5e:	46c0      	nop			; (mov r8, r8)
c0d02c60:	6000a03c 	.word	0x6000a03c

c0d02c64 <os_ux>:
c0d02c64:	b580      	push	{r7, lr}
c0d02c66:	b084      	sub	sp, #16
c0d02c68:	2100      	movs	r1, #0
c0d02c6a:	9102      	str	r1, [sp, #8]
c0d02c6c:	9001      	str	r0, [sp, #4]
c0d02c6e:	4803      	ldr	r0, [pc, #12]	; (c0d02c7c <os_ux+0x18>)
c0d02c70:	a901      	add	r1, sp, #4
c0d02c72:	f7ff ff91 	bl	c0d02b98 <SVC_Call>
c0d02c76:	b004      	add	sp, #16
c0d02c78:	bd80      	pop	{r7, pc}
c0d02c7a:	46c0      	nop			; (mov r8, r8)
c0d02c7c:	60006458 	.word	0x60006458

c0d02c80 <os_flags>:
c0d02c80:	b580      	push	{r7, lr}
c0d02c82:	b082      	sub	sp, #8
c0d02c84:	2000      	movs	r0, #0
c0d02c86:	9001      	str	r0, [sp, #4]
c0d02c88:	4802      	ldr	r0, [pc, #8]	; (c0d02c94 <os_flags+0x14>)
c0d02c8a:	4669      	mov	r1, sp
c0d02c8c:	f7ff ff84 	bl	c0d02b98 <SVC_Call>
c0d02c90:	b002      	add	sp, #8
c0d02c92:	bd80      	pop	{r7, pc}
c0d02c94:	60006a6e 	.word	0x60006a6e

c0d02c98 <os_registry_get_current_app_tag>:
c0d02c98:	b580      	push	{r7, lr}
c0d02c9a:	b086      	sub	sp, #24
c0d02c9c:	ab01      	add	r3, sp, #4
c0d02c9e:	c307      	stmia	r3!, {r0, r1, r2}
c0d02ca0:	4802      	ldr	r0, [pc, #8]	; (c0d02cac <os_registry_get_current_app_tag+0x14>)
c0d02ca2:	a901      	add	r1, sp, #4
c0d02ca4:	f7ff ff78 	bl	c0d02b98 <SVC_Call>
c0d02ca8:	b006      	add	sp, #24
c0d02caa:	bd80      	pop	{r7, pc}
c0d02cac:	600074d4 	.word	0x600074d4

c0d02cb0 <os_sched_exit>:
c0d02cb0:	b580      	push	{r7, lr}
c0d02cb2:	b084      	sub	sp, #16
c0d02cb4:	2100      	movs	r1, #0
c0d02cb6:	9102      	str	r1, [sp, #8]
c0d02cb8:	9001      	str	r0, [sp, #4]
c0d02cba:	4803      	ldr	r0, [pc, #12]	; (c0d02cc8 <os_sched_exit+0x18>)
c0d02cbc:	a901      	add	r1, sp, #4
c0d02cbe:	f7ff ff6b 	bl	c0d02b98 <SVC_Call>
c0d02cc2:	b004      	add	sp, #16
c0d02cc4:	bd80      	pop	{r7, pc}
c0d02cc6:	46c0      	nop			; (mov r8, r8)
c0d02cc8:	60009abe 	.word	0x60009abe

c0d02ccc <io_seph_send>:
c0d02ccc:	b580      	push	{r7, lr}
c0d02cce:	b084      	sub	sp, #16
c0d02cd0:	9101      	str	r1, [sp, #4]
c0d02cd2:	9000      	str	r0, [sp, #0]
c0d02cd4:	4802      	ldr	r0, [pc, #8]	; (c0d02ce0 <io_seph_send+0x14>)
c0d02cd6:	4669      	mov	r1, sp
c0d02cd8:	f7ff ff5e 	bl	c0d02b98 <SVC_Call>
c0d02cdc:	b004      	add	sp, #16
c0d02cde:	bd80      	pop	{r7, pc}
c0d02ce0:	60008381 	.word	0x60008381

c0d02ce4 <io_seph_is_status_sent>:
c0d02ce4:	b580      	push	{r7, lr}
c0d02ce6:	b082      	sub	sp, #8
c0d02ce8:	2000      	movs	r0, #0
c0d02cea:	9001      	str	r0, [sp, #4]
c0d02cec:	4802      	ldr	r0, [pc, #8]	; (c0d02cf8 <io_seph_is_status_sent+0x14>)
c0d02cee:	4669      	mov	r1, sp
c0d02cf0:	f7ff ff52 	bl	c0d02b98 <SVC_Call>
c0d02cf4:	b002      	add	sp, #8
c0d02cf6:	bd80      	pop	{r7, pc}
c0d02cf8:	600084bb 	.word	0x600084bb

c0d02cfc <io_seph_recv>:
c0d02cfc:	b580      	push	{r7, lr}
c0d02cfe:	b086      	sub	sp, #24
c0d02d00:	ab01      	add	r3, sp, #4
c0d02d02:	c307      	stmia	r3!, {r0, r1, r2}
c0d02d04:	4803      	ldr	r0, [pc, #12]	; (c0d02d14 <io_seph_recv+0x18>)
c0d02d06:	a901      	add	r1, sp, #4
c0d02d08:	f7ff ff46 	bl	c0d02b98 <SVC_Call>
c0d02d0c:	b280      	uxth	r0, r0
c0d02d0e:	b006      	add	sp, #24
c0d02d10:	bd80      	pop	{r7, pc}
c0d02d12:	46c0      	nop			; (mov r8, r8)
c0d02d14:	600085e4 	.word	0x600085e4

c0d02d18 <try_context_get>:
c0d02d18:	b580      	push	{r7, lr}
c0d02d1a:	b082      	sub	sp, #8
c0d02d1c:	2000      	movs	r0, #0
c0d02d1e:	9001      	str	r0, [sp, #4]
c0d02d20:	4802      	ldr	r0, [pc, #8]	; (c0d02d2c <try_context_get+0x14>)
c0d02d22:	4669      	mov	r1, sp
c0d02d24:	f7ff ff38 	bl	c0d02b98 <SVC_Call>
c0d02d28:	b002      	add	sp, #8
c0d02d2a:	bd80      	pop	{r7, pc}
c0d02d2c:	600087b1 	.word	0x600087b1

c0d02d30 <try_context_set>:
c0d02d30:	b580      	push	{r7, lr}
c0d02d32:	b084      	sub	sp, #16
c0d02d34:	2100      	movs	r1, #0
c0d02d36:	9102      	str	r1, [sp, #8]
c0d02d38:	9001      	str	r0, [sp, #4]
c0d02d3a:	4803      	ldr	r0, [pc, #12]	; (c0d02d48 <try_context_set+0x18>)
c0d02d3c:	a901      	add	r1, sp, #4
c0d02d3e:	f7ff ff2b 	bl	c0d02b98 <SVC_Call>
c0d02d42:	b004      	add	sp, #16
c0d02d44:	bd80      	pop	{r7, pc}
c0d02d46:	46c0      	nop			; (mov r8, r8)
c0d02d48:	60010b06 	.word	0x60010b06

c0d02d4c <os_sched_last_status>:
c0d02d4c:	b580      	push	{r7, lr}
c0d02d4e:	b084      	sub	sp, #16
c0d02d50:	2100      	movs	r1, #0
c0d02d52:	9102      	str	r1, [sp, #8]
c0d02d54:	9001      	str	r0, [sp, #4]
c0d02d56:	4803      	ldr	r0, [pc, #12]	; (c0d02d64 <os_sched_last_status+0x18>)
c0d02d58:	a901      	add	r1, sp, #4
c0d02d5a:	f7ff ff1d 	bl	c0d02b98 <SVC_Call>
c0d02d5e:	b2c0      	uxtb	r0, r0
c0d02d60:	b004      	add	sp, #16
c0d02d62:	bd80      	pop	{r7, pc}
c0d02d64:	60009c8b 	.word	0x60009c8b

c0d02d68 <transaction_to_roinput>:
c0d02d68:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02d6a:	b083      	sub	sp, #12
c0d02d6c:	460d      	mov	r5, r1
c0d02d6e:	4604      	mov	r4, r0
c0d02d70:	2000      	movs	r0, #0
c0d02d72:	6120      	str	r0, [r4, #16]
c0d02d74:	60a0      	str	r0, [r4, #8]
c0d02d76:	3110      	adds	r1, #16
c0d02d78:	4620      	mov	r0, r4
c0d02d7a:	f7ff fbfc 	bl	c0d02576 <roinput_add_field>
c0d02d7e:	4629      	mov	r1, r5
c0d02d80:	3161      	adds	r1, #97	; 0x61
c0d02d82:	4620      	mov	r0, r4
c0d02d84:	f7ff fbf7 	bl	c0d02576 <roinput_add_field>
c0d02d88:	4629      	mov	r1, r5
c0d02d8a:	3182      	adds	r1, #130	; 0x82
c0d02d8c:	4620      	mov	r0, r4
c0d02d8e:	f7ff fbf2 	bl	c0d02576 <roinput_add_field>
c0d02d92:	cd0c      	ldmia	r5!, {r2, r3}
c0d02d94:	4620      	mov	r0, r4
c0d02d96:	3d08      	subs	r5, #8
c0d02d98:	f7ff fc72 	bl	c0d02680 <roinput_add_uint64>
c0d02d9c:	68aa      	ldr	r2, [r5, #8]
c0d02d9e:	68eb      	ldr	r3, [r5, #12]
c0d02da0:	4620      	mov	r0, r4
c0d02da2:	f7ff fc6d 	bl	c0d02680 <roinput_add_uint64>
c0d02da6:	2030      	movs	r0, #48	; 0x30
c0d02da8:	5c29      	ldrb	r1, [r5, r0]
c0d02daa:	4620      	mov	r0, r4
c0d02dac:	f7ff fbfc 	bl	c0d025a8 <roinput_add_bit>
c0d02db0:	6b69      	ldr	r1, [r5, #52]	; 0x34
c0d02db2:	4620      	mov	r0, r4
c0d02db4:	f7ff fc53 	bl	c0d0265e <roinput_add_uint32>
c0d02db8:	6ba9      	ldr	r1, [r5, #56]	; 0x38
c0d02dba:	4620      	mov	r0, r4
c0d02dbc:	f7ff fc4f 	bl	c0d0265e <roinput_add_uint32>
c0d02dc0:	4629      	mov	r1, r5
c0d02dc2:	313c      	adds	r1, #60	; 0x3c
c0d02dc4:	2222      	movs	r2, #34	; 0x22
c0d02dc6:	4620      	mov	r0, r4
c0d02dc8:	f7ff fc1c 	bl	c0d02604 <roinput_add_bytes>
c0d02dcc:	4628      	mov	r0, r5
c0d02dce:	3081      	adds	r0, #129	; 0x81
c0d02dd0:	9001      	str	r0, [sp, #4]
c0d02dd2:	4628      	mov	r0, r5
c0d02dd4:	30a2      	adds	r0, #162	; 0xa2
c0d02dd6:	9002      	str	r0, [sp, #8]
c0d02dd8:	462e      	mov	r6, r5
c0d02dda:	36a8      	adds	r6, #168	; 0xa8
c0d02ddc:	275e      	movs	r7, #94	; 0x5e
c0d02dde:	5de9      	ldrb	r1, [r5, r7]
c0d02de0:	4620      	mov	r0, r4
c0d02de2:	f7ff fbe1 	bl	c0d025a8 <roinput_add_bit>
c0d02de6:	1c7f      	adds	r7, r7, #1
c0d02de8:	2f61      	cmp	r7, #97	; 0x61
c0d02dea:	d1f8      	bne.n	c0d02dde <transaction_to_roinput+0x76>
c0d02dec:	9801      	ldr	r0, [sp, #4]
c0d02dee:	7801      	ldrb	r1, [r0, #0]
c0d02df0:	4620      	mov	r0, r4
c0d02df2:	f7ff fbd9 	bl	c0d025a8 <roinput_add_bit>
c0d02df6:	9802      	ldr	r0, [sp, #8]
c0d02df8:	7801      	ldrb	r1, [r0, #0]
c0d02dfa:	4620      	mov	r0, r4
c0d02dfc:	f7ff fbd4 	bl	c0d025a8 <roinput_add_bit>
c0d02e00:	ce0c      	ldmia	r6!, {r2, r3}
c0d02e02:	4620      	mov	r0, r4
c0d02e04:	3e08      	subs	r6, #8
c0d02e06:	f7ff fc3b 	bl	c0d02680 <roinput_add_uint64>
c0d02e0a:	68b2      	ldr	r2, [r6, #8]
c0d02e0c:	68f3      	ldr	r3, [r6, #12]
c0d02e0e:	4620      	mov	r0, r4
c0d02e10:	f7ff fc36 	bl	c0d02680 <roinput_add_uint64>
c0d02e14:	7c31      	ldrb	r1, [r6, #16]
c0d02e16:	4620      	mov	r0, r4
c0d02e18:	f7ff fbc6 	bl	c0d025a8 <roinput_add_bit>
c0d02e1c:	b003      	add	sp, #12
c0d02e1e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d02e20 <transaction_prepare_memo>:
c0d02e20:	b570      	push	{r4, r5, r6, lr}
c0d02e22:	460e      	mov	r6, r1
c0d02e24:	4604      	mov	r4, r0
c0d02e26:	2520      	movs	r5, #32
c0d02e28:	4608      	mov	r0, r1
c0d02e2a:	4629      	mov	r1, r5
c0d02e2c:	f002 ffe2 	bl	c0d05df4 <strnlen>
c0d02e30:	7060      	strb	r0, [r4, #1]
c0d02e32:	2101      	movs	r1, #1
c0d02e34:	7021      	strb	r1, [r4, #0]
c0d02e36:	2800      	cmp	r0, #0
c0d02e38:	d00b      	beq.n	c0d02e52 <transaction_prepare_memo+0x32>
c0d02e3a:	1ca1      	adds	r1, r4, #2
c0d02e3c:	4602      	mov	r2, r0
c0d02e3e:	7833      	ldrb	r3, [r6, #0]
c0d02e40:	700b      	strb	r3, [r1, #0]
c0d02e42:	1c76      	adds	r6, r6, #1
c0d02e44:	1c49      	adds	r1, r1, #1
c0d02e46:	1e52      	subs	r2, r2, #1
c0d02e48:	d1f9      	bne.n	c0d02e3e <transaction_prepare_memo+0x1e>
c0d02e4a:	1c81      	adds	r1, r0, #2
c0d02e4c:	2921      	cmp	r1, #33	; 0x21
c0d02e4e:	d901      	bls.n	c0d02e54 <transaction_prepare_memo+0x34>
c0d02e50:	bd70      	pop	{r4, r5, r6, pc}
c0d02e52:	2102      	movs	r1, #2
c0d02e54:	1862      	adds	r2, r4, r1
c0d02e56:	1a29      	subs	r1, r5, r0
c0d02e58:	4610      	mov	r0, r2
c0d02e5a:	f002 fe49 	bl	c0d05af0 <__aeabi_memclr>
c0d02e5e:	bd70      	pop	{r4, r5, r6, pc}

c0d02e60 <u2f_apdu_sign>:
c0d02e60:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02e62:	b083      	sub	sp, #12
c0d02e64:	4604      	mov	r4, r0
c0d02e66:	4837      	ldr	r0, [pc, #220]	; (c0d02f44 <u2f_apdu_sign+0xe4>)
c0d02e68:	7800      	ldrb	r0, [r0, #0]
c0d02e6a:	2800      	cmp	r0, #0
c0d02e6c:	d003      	beq.n	c0d02e76 <u2f_apdu_sign+0x16>
c0d02e6e:	2183      	movs	r1, #131	; 0x83
c0d02e70:	4a36      	ldr	r2, [pc, #216]	; (c0d02f4c <u2f_apdu_sign+0xec>)
c0d02e72:	447a      	add	r2, pc
c0d02e74:	e00b      	b.n	c0d02e8e <u2f_apdu_sign+0x2e>
c0d02e76:	9a08      	ldr	r2, [sp, #32]
c0d02e78:	2a45      	cmp	r2, #69	; 0x45
c0d02e7a:	d803      	bhi.n	c0d02e84 <u2f_apdu_sign+0x24>
c0d02e7c:	2183      	movs	r1, #131	; 0x83
c0d02e7e:	4a34      	ldr	r2, [pc, #208]	; (c0d02f50 <u2f_apdu_sign+0xf0>)
c0d02e80:	447a      	add	r2, pc
c0d02e82:	e004      	b.n	c0d02e8e <u2f_apdu_sign+0x2e>
c0d02e84:	2907      	cmp	r1, #7
c0d02e86:	d108      	bne.n	c0d02e9a <u2f_apdu_sign+0x3a>
c0d02e88:	2183      	movs	r1, #131	; 0x83
c0d02e8a:	4a32      	ldr	r2, [pc, #200]	; (c0d02f54 <u2f_apdu_sign+0xf4>)
c0d02e8c:	447a      	add	r2, pc
c0d02e8e:	2302      	movs	r3, #2
c0d02e90:	4620      	mov	r0, r4
c0d02e92:	f000 fce1 	bl	c0d03858 <u2f_message_reply>
c0d02e96:	b003      	add	sp, #12
c0d02e98:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d02e9a:	461d      	mov	r5, r3
c0d02e9c:	4619      	mov	r1, r3
c0d02e9e:	3140      	adds	r1, #64	; 0x40
c0d02ea0:	780e      	ldrb	r6, [r1, #0]
c0d02ea2:	4630      	mov	r0, r6
c0d02ea4:	3041      	adds	r0, #65	; 0x41
c0d02ea6:	4290      	cmp	r0, r2
c0d02ea8:	d1e8      	bne.n	c0d02e7c <u2f_apdu_sign+0x1c>
c0d02eaa:	9101      	str	r1, [sp, #4]
c0d02eac:	9202      	str	r2, [sp, #8]
c0d02eae:	2e00      	cmp	r6, #0
c0d02eb0:	d018      	beq.n	c0d02ee4 <u2f_apdu_sign+0x84>
c0d02eb2:	2e05      	cmp	r6, #5
c0d02eb4:	d108      	bne.n	c0d02ec8 <u2f_apdu_sign+0x68>
c0d02eb6:	4628      	mov	r0, r5
c0d02eb8:	3041      	adds	r0, #65	; 0x41
c0d02eba:	4927      	ldr	r1, [pc, #156]	; (c0d02f58 <u2f_apdu_sign+0xf8>)
c0d02ebc:	4479      	add	r1, pc
c0d02ebe:	2205      	movs	r2, #5
c0d02ec0:	f002 fe30 	bl	c0d05b24 <memcmp>
c0d02ec4:	2800      	cmp	r0, #0
c0d02ec6:	d028      	beq.n	c0d02f1a <u2f_apdu_sign+0xba>
c0d02ec8:	4628      	mov	r0, r5
c0d02eca:	3041      	adds	r0, #65	; 0x41
c0d02ecc:	2100      	movs	r1, #0
c0d02ece:	4a23      	ldr	r2, [pc, #140]	; (c0d02f5c <u2f_apdu_sign+0xfc>)
c0d02ed0:	447a      	add	r2, pc
c0d02ed2:	5c43      	ldrb	r3, [r0, r1]
c0d02ed4:	2703      	movs	r7, #3
c0d02ed6:	400f      	ands	r7, r1
c0d02ed8:	5dd7      	ldrb	r7, [r2, r7]
c0d02eda:	405f      	eors	r7, r3
c0d02edc:	5447      	strb	r7, [r0, r1]
c0d02ede:	1c49      	adds	r1, r1, #1
c0d02ee0:	428e      	cmp	r6, r1
c0d02ee2:	d1f6      	bne.n	c0d02ed2 <u2f_apdu_sign+0x72>
c0d02ee4:	9801      	ldr	r0, [sp, #4]
c0d02ee6:	7940      	ldrb	r0, [r0, #5]
c0d02ee8:	3046      	adds	r0, #70	; 0x46
c0d02eea:	9902      	ldr	r1, [sp, #8]
c0d02eec:	4288      	cmp	r0, r1
c0d02eee:	d110      	bne.n	c0d02f12 <u2f_apdu_sign+0xb2>
c0d02ef0:	3541      	adds	r5, #65	; 0x41
c0d02ef2:	4815      	ldr	r0, [pc, #84]	; (c0d02f48 <u2f_apdu_sign+0xe8>)
c0d02ef4:	4629      	mov	r1, r5
c0d02ef6:	4632      	mov	r2, r6
c0d02ef8:	f002 fe04 	bl	c0d05b04 <__aeabi_memmove>
c0d02efc:	2007      	movs	r0, #7
c0d02efe:	4911      	ldr	r1, [pc, #68]	; (c0d02f44 <u2f_apdu_sign+0xe4>)
c0d02f00:	7188      	strb	r0, [r1, #6]
c0d02f02:	804e      	strh	r6, [r1, #2]
c0d02f04:	2009      	movs	r0, #9
c0d02f06:	7008      	strb	r0, [r1, #0]
c0d02f08:	2101      	movs	r1, #1
c0d02f0a:	4620      	mov	r0, r4
c0d02f0c:	f000 fc78 	bl	c0d03800 <u2f_message_set_autoreply_wait_user_presence>
c0d02f10:	e7c1      	b.n	c0d02e96 <u2f_apdu_sign+0x36>
c0d02f12:	2183      	movs	r1, #131	; 0x83
c0d02f14:	4a12      	ldr	r2, [pc, #72]	; (c0d02f60 <u2f_apdu_sign+0x100>)
c0d02f16:	447a      	add	r2, pc
c0d02f18:	e7b9      	b.n	c0d02e8e <u2f_apdu_sign+0x2e>
c0d02f1a:	4a0b      	ldr	r2, [pc, #44]	; (c0d02f48 <u2f_apdu_sign+0xe8>)
c0d02f1c:	2000      	movs	r0, #0
c0d02f1e:	7210      	strb	r0, [r2, #8]
c0d02f20:	2190      	movs	r1, #144	; 0x90
c0d02f22:	71d1      	strb	r1, [r2, #7]
c0d02f24:	7190      	strb	r0, [r2, #6]
c0d02f26:	7151      	strb	r1, [r2, #5]
c0d02f28:	204c      	movs	r0, #76	; 0x4c
c0d02f2a:	7110      	strb	r0, [r2, #4]
c0d02f2c:	2049      	movs	r0, #73	; 0x49
c0d02f2e:	70d0      	strb	r0, [r2, #3]
c0d02f30:	204f      	movs	r0, #79	; 0x4f
c0d02f32:	7090      	strb	r0, [r2, #2]
c0d02f34:	2042      	movs	r0, #66	; 0x42
c0d02f36:	7050      	strb	r0, [r2, #1]
c0d02f38:	2004      	movs	r0, #4
c0d02f3a:	7010      	strb	r0, [r2, #0]
c0d02f3c:	2183      	movs	r1, #131	; 0x83
c0d02f3e:	2309      	movs	r3, #9
c0d02f40:	e7a6      	b.n	c0d02e90 <u2f_apdu_sign+0x30>
c0d02f42:	46c0      	nop			; (mov r8, r8)
c0d02f44:	20000544 	.word	0x20000544
c0d02f48:	200003f0 	.word	0x200003f0
c0d02f4c:	0000545b 	.word	0x0000545b
c0d02f50:	0000544f 	.word	0x0000544f
c0d02f54:	00005445 	.word	0x00005445
c0d02f58:	00005417 	.word	0x00005417
c0d02f5c:	00005409 	.word	0x00005409
c0d02f60:	000053c8 	.word	0x000053c8

c0d02f64 <u2f_handle_cmd_init>:
c0d02f64:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02f66:	b089      	sub	sp, #36	; 0x24
c0d02f68:	461d      	mov	r5, r3
c0d02f6a:	460e      	mov	r6, r1
c0d02f6c:	4604      	mov	r4, r0
c0d02f6e:	4618      	mov	r0, r3
c0d02f70:	f000 fc38 	bl	c0d037e4 <u2f_is_channel_broadcast>
c0d02f74:	2800      	cmp	r0, #0
c0d02f76:	9406      	str	r4, [sp, #24]
c0d02f78:	9503      	str	r5, [sp, #12]
c0d02f7a:	d00a      	beq.n	c0d02f92 <u2f_handle_cmd_init+0x2e>
c0d02f7c:	6820      	ldr	r0, [r4, #0]
c0d02f7e:	1c40      	adds	r0, r0, #1
c0d02f80:	6020      	str	r0, [r4, #0]
c0d02f82:	0a01      	lsrs	r1, r0, #8
c0d02f84:	9107      	str	r1, [sp, #28]
c0d02f86:	0c01      	lsrs	r1, r0, #16
c0d02f88:	9108      	str	r1, [sp, #32]
c0d02f8a:	9004      	str	r0, [sp, #16]
c0d02f8c:	0e00      	lsrs	r0, r0, #24
c0d02f8e:	9005      	str	r0, [sp, #20]
c0d02f90:	e010      	b.n	c0d02fb4 <u2f_handle_cmd_init+0x50>
c0d02f92:	7828      	ldrb	r0, [r5, #0]
c0d02f94:	7869      	ldrb	r1, [r5, #1]
c0d02f96:	0209      	lsls	r1, r1, #8
c0d02f98:	1808      	adds	r0, r1, r0
c0d02f9a:	78a9      	ldrb	r1, [r5, #2]
c0d02f9c:	78ea      	ldrb	r2, [r5, #3]
c0d02f9e:	0212      	lsls	r2, r2, #8
c0d02fa0:	1851      	adds	r1, r2, r1
c0d02fa2:	0409      	lsls	r1, r1, #16
c0d02fa4:	1808      	adds	r0, r1, r0
c0d02fa6:	0e01      	lsrs	r1, r0, #24
c0d02fa8:	9104      	str	r1, [sp, #16]
c0d02faa:	0c01      	lsrs	r1, r0, #16
c0d02fac:	9107      	str	r1, [sp, #28]
c0d02fae:	9005      	str	r0, [sp, #20]
c0d02fb0:	0a00      	lsrs	r0, r0, #8
c0d02fb2:	9008      	str	r0, [sp, #32]
c0d02fb4:	7870      	ldrb	r0, [r6, #1]
c0d02fb6:	9002      	str	r0, [sp, #8]
c0d02fb8:	7830      	ldrb	r0, [r6, #0]
c0d02fba:	9001      	str	r0, [sp, #4]
c0d02fbc:	78f0      	ldrb	r0, [r6, #3]
c0d02fbe:	9000      	str	r0, [sp, #0]
c0d02fc0:	78b3      	ldrb	r3, [r6, #2]
c0d02fc2:	7971      	ldrb	r1, [r6, #5]
c0d02fc4:	7935      	ldrb	r5, [r6, #4]
c0d02fc6:	79f0      	ldrb	r0, [r6, #7]
c0d02fc8:	79b4      	ldrb	r4, [r6, #6]
c0d02fca:	4e1b      	ldr	r6, [pc, #108]	; (c0d03038 <u2f_handle_cmd_init+0xd4>)
c0d02fcc:	2700      	movs	r7, #0
c0d02fce:	7377      	strb	r7, [r6, #13]
c0d02fd0:	2201      	movs	r2, #1
c0d02fd2:	73b2      	strb	r2, [r6, #14]
c0d02fd4:	73f7      	strb	r7, [r6, #15]
c0d02fd6:	7437      	strb	r7, [r6, #16]
c0d02fd8:	71b4      	strb	r4, [r6, #6]
c0d02fda:	71f0      	strb	r0, [r6, #7]
c0d02fdc:	7135      	strb	r5, [r6, #4]
c0d02fde:	7171      	strb	r1, [r6, #5]
c0d02fe0:	70b3      	strb	r3, [r6, #2]
c0d02fe2:	9800      	ldr	r0, [sp, #0]
c0d02fe4:	70f0      	strb	r0, [r6, #3]
c0d02fe6:	9801      	ldr	r0, [sp, #4]
c0d02fe8:	7030      	strb	r0, [r6, #0]
c0d02fea:	9802      	ldr	r0, [sp, #8]
c0d02fec:	7070      	strb	r0, [r6, #1]
c0d02fee:	9807      	ldr	r0, [sp, #28]
c0d02ff0:	72b0      	strb	r0, [r6, #10]
c0d02ff2:	9d04      	ldr	r5, [sp, #16]
c0d02ff4:	72f5      	strb	r5, [r6, #11]
c0d02ff6:	9c05      	ldr	r4, [sp, #20]
c0d02ff8:	7234      	strb	r4, [r6, #8]
c0d02ffa:	9808      	ldr	r0, [sp, #32]
c0d02ffc:	7270      	strb	r0, [r6, #9]
c0d02ffe:	2002      	movs	r0, #2
c0d03000:	7330      	strb	r0, [r6, #12]
c0d03002:	9803      	ldr	r0, [sp, #12]
c0d03004:	f000 fbee 	bl	c0d037e4 <u2f_is_channel_broadcast>
c0d03008:	2800      	cmp	r0, #0
c0d0300a:	d10b      	bne.n	c0d03024 <u2f_handle_cmd_init+0xc0>
c0d0300c:	0628      	lsls	r0, r5, #24
c0d0300e:	9907      	ldr	r1, [sp, #28]
c0d03010:	0609      	lsls	r1, r1, #24
c0d03012:	0a09      	lsrs	r1, r1, #8
c0d03014:	1808      	adds	r0, r1, r0
c0d03016:	9908      	ldr	r1, [sp, #32]
c0d03018:	0609      	lsls	r1, r1, #24
c0d0301a:	0c09      	lsrs	r1, r1, #16
c0d0301c:	1840      	adds	r0, r0, r1
c0d0301e:	b2e1      	uxtb	r1, r4
c0d03020:	1841      	adds	r1, r0, r1
c0d03022:	e000      	b.n	c0d03026 <u2f_handle_cmd_init+0xc2>
c0d03024:	43f9      	mvns	r1, r7
c0d03026:	9806      	ldr	r0, [sp, #24]
c0d03028:	6041      	str	r1, [r0, #4]
c0d0302a:	2186      	movs	r1, #134	; 0x86
c0d0302c:	2311      	movs	r3, #17
c0d0302e:	4632      	mov	r2, r6
c0d03030:	f000 fc12 	bl	c0d03858 <u2f_message_reply>
c0d03034:	b009      	add	sp, #36	; 0x24
c0d03036:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d03038:	200003f0 	.word	0x200003f0

c0d0303c <u2f_handle_cmd_msg>:
c0d0303c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0303e:	b083      	sub	sp, #12
c0d03040:	798b      	ldrb	r3, [r1, #6]
c0d03042:	794c      	ldrb	r4, [r1, #5]
c0d03044:	0224      	lsls	r4, r4, #8
c0d03046:	18e7      	adds	r7, r4, r3
c0d03048:	788b      	ldrb	r3, [r1, #2]
c0d0304a:	9302      	str	r3, [sp, #8]
c0d0304c:	784b      	ldrb	r3, [r1, #1]
c0d0304e:	780e      	ldrb	r6, [r1, #0]
c0d03050:	4615      	mov	r5, r2
c0d03052:	3d09      	subs	r5, #9
c0d03054:	b2ac      	uxth	r4, r5
c0d03056:	42a7      	cmp	r7, r4
c0d03058:	d003      	beq.n	c0d03062 <u2f_handle_cmd_msg+0x26>
c0d0305a:	1fd2      	subs	r2, r2, #7
c0d0305c:	b294      	uxth	r4, r2
c0d0305e:	42a7      	cmp	r7, r4
c0d03060:	d118      	bne.n	c0d03094 <u2f_handle_cmd_msg+0x58>
c0d03062:	463d      	mov	r5, r7
c0d03064:	2e00      	cmp	r6, #0
c0d03066:	d007      	beq.n	c0d03078 <u2f_handle_cmd_msg+0x3c>
c0d03068:	2183      	movs	r1, #131	; 0x83
c0d0306a:	4a1b      	ldr	r2, [pc, #108]	; (c0d030d8 <u2f_handle_cmd_msg+0x9c>)
c0d0306c:	447a      	add	r2, pc
c0d0306e:	2302      	movs	r3, #2
c0d03070:	f000 fbf2 	bl	c0d03858 <u2f_message_reply>
c0d03074:	b003      	add	sp, #12
c0d03076:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d03078:	2b02      	cmp	r3, #2
c0d0307a:	dc16      	bgt.n	c0d030aa <u2f_handle_cmd_msg+0x6e>
c0d0307c:	2b01      	cmp	r3, #1
c0d0307e:	d021      	beq.n	c0d030c4 <u2f_handle_cmd_msg+0x88>
c0d03080:	2b02      	cmp	r3, #2
c0d03082:	d11b      	bne.n	c0d030bc <u2f_handle_cmd_msg+0x80>
c0d03084:	b2aa      	uxth	r2, r5
c0d03086:	9200      	str	r2, [sp, #0]
c0d03088:	1dcb      	adds	r3, r1, #7
c0d0308a:	2200      	movs	r2, #0
c0d0308c:	9902      	ldr	r1, [sp, #8]
c0d0308e:	f7ff fee7 	bl	c0d02e60 <u2f_apdu_sign>
c0d03092:	e7ef      	b.n	c0d03074 <u2f_handle_cmd_msg+0x38>
c0d03094:	b2ec      	uxtb	r4, r5
c0d03096:	42a7      	cmp	r7, r4
c0d03098:	d0e4      	beq.n	c0d03064 <u2f_handle_cmd_msg+0x28>
c0d0309a:	b2d4      	uxtb	r4, r2
c0d0309c:	42a7      	cmp	r7, r4
c0d0309e:	4615      	mov	r5, r2
c0d030a0:	d0e0      	beq.n	c0d03064 <u2f_handle_cmd_msg+0x28>
c0d030a2:	2183      	movs	r1, #131	; 0x83
c0d030a4:	4a0d      	ldr	r2, [pc, #52]	; (c0d030dc <u2f_handle_cmd_msg+0xa0>)
c0d030a6:	447a      	add	r2, pc
c0d030a8:	e7e1      	b.n	c0d0306e <u2f_handle_cmd_msg+0x32>
c0d030aa:	2b03      	cmp	r3, #3
c0d030ac:	d00e      	beq.n	c0d030cc <u2f_handle_cmd_msg+0x90>
c0d030ae:	2bc1      	cmp	r3, #193	; 0xc1
c0d030b0:	d104      	bne.n	c0d030bc <u2f_handle_cmd_msg+0x80>
c0d030b2:	2183      	movs	r1, #131	; 0x83
c0d030b4:	4a0a      	ldr	r2, [pc, #40]	; (c0d030e0 <u2f_handle_cmd_msg+0xa4>)
c0d030b6:	447a      	add	r2, pc
c0d030b8:	2304      	movs	r3, #4
c0d030ba:	e7d9      	b.n	c0d03070 <u2f_handle_cmd_msg+0x34>
c0d030bc:	2183      	movs	r1, #131	; 0x83
c0d030be:	4a0b      	ldr	r2, [pc, #44]	; (c0d030ec <u2f_handle_cmd_msg+0xb0>)
c0d030c0:	447a      	add	r2, pc
c0d030c2:	e7d4      	b.n	c0d0306e <u2f_handle_cmd_msg+0x32>
c0d030c4:	2183      	movs	r1, #131	; 0x83
c0d030c6:	4a07      	ldr	r2, [pc, #28]	; (c0d030e4 <u2f_handle_cmd_msg+0xa8>)
c0d030c8:	447a      	add	r2, pc
c0d030ca:	e7d0      	b.n	c0d0306e <u2f_handle_cmd_msg+0x32>
c0d030cc:	2183      	movs	r1, #131	; 0x83
c0d030ce:	4a06      	ldr	r2, [pc, #24]	; (c0d030e8 <u2f_handle_cmd_msg+0xac>)
c0d030d0:	447a      	add	r2, pc
c0d030d2:	2308      	movs	r3, #8
c0d030d4:	e7cc      	b.n	c0d03070 <u2f_handle_cmd_msg+0x34>
c0d030d6:	46c0      	nop			; (mov r8, r8)
c0d030d8:	00005280 	.word	0x00005280
c0d030dc:	00005229 	.word	0x00005229
c0d030e0:	00005232 	.word	0x00005232
c0d030e4:	00005203 	.word	0x00005203
c0d030e8:	00005210 	.word	0x00005210
c0d030ec:	0000522e 	.word	0x0000522e

c0d030f0 <u2f_message_complete>:
c0d030f0:	b580      	push	{r7, lr}
c0d030f2:	69c1      	ldr	r1, [r0, #28]
c0d030f4:	788a      	ldrb	r2, [r1, #2]
c0d030f6:	784b      	ldrb	r3, [r1, #1]
c0d030f8:	021b      	lsls	r3, r3, #8
c0d030fa:	189b      	adds	r3, r3, r2
c0d030fc:	780a      	ldrb	r2, [r1, #0]
c0d030fe:	2a81      	cmp	r2, #129	; 0x81
c0d03100:	d009      	beq.n	c0d03116 <u2f_message_complete+0x26>
c0d03102:	2a83      	cmp	r2, #131	; 0x83
c0d03104:	d00d      	beq.n	c0d03122 <u2f_message_complete+0x32>
c0d03106:	2a86      	cmp	r2, #134	; 0x86
c0d03108:	d10f      	bne.n	c0d0312a <u2f_message_complete+0x3a>
c0d0310a:	1cc9      	adds	r1, r1, #3
c0d0310c:	1d03      	adds	r3, r0, #4
c0d0310e:	2200      	movs	r2, #0
c0d03110:	f7ff ff28 	bl	c0d02f64 <u2f_handle_cmd_init>
c0d03114:	bd80      	pop	{r7, pc}
c0d03116:	1cca      	adds	r2, r1, #3
c0d03118:	b29b      	uxth	r3, r3
c0d0311a:	2181      	movs	r1, #129	; 0x81
c0d0311c:	f000 fb9c 	bl	c0d03858 <u2f_message_reply>
c0d03120:	bd80      	pop	{r7, pc}
c0d03122:	1cc9      	adds	r1, r1, #3
c0d03124:	b29a      	uxth	r2, r3
c0d03126:	f7ff ff89 	bl	c0d0303c <u2f_handle_cmd_msg>
c0d0312a:	bd80      	pop	{r7, pc}

c0d0312c <u2f_io_send>:
c0d0312c:	b570      	push	{r4, r5, r6, lr}
c0d0312e:	2a01      	cmp	r2, #1
c0d03130:	d111      	bne.n	c0d03156 <u2f_io_send+0x2a>
c0d03132:	460d      	mov	r5, r1
c0d03134:	4601      	mov	r1, r0
c0d03136:	4c08      	ldr	r4, [pc, #32]	; (c0d03158 <u2f_io_send+0x2c>)
c0d03138:	4620      	mov	r0, r4
c0d0313a:	462a      	mov	r2, r5
c0d0313c:	f002 fce2 	bl	c0d05b04 <__aeabi_memmove>
c0d03140:	1960      	adds	r0, r4, r5
c0d03142:	2640      	movs	r6, #64	; 0x40
c0d03144:	1b71      	subs	r1, r6, r5
c0d03146:	f002 fcd3 	bl	c0d05af0 <__aeabi_memclr>
c0d0314a:	2081      	movs	r0, #129	; 0x81
c0d0314c:	2300      	movs	r3, #0
c0d0314e:	4621      	mov	r1, r4
c0d03150:	4632      	mov	r2, r6
c0d03152:	f7fe fa0f 	bl	c0d01574 <io_usb_send_ep>
c0d03156:	bd70      	pop	{r4, r5, r6, pc}
c0d03158:	200005b0 	.word	0x200005b0

c0d0315c <u2f_transport_init>:
c0d0315c:	2300      	movs	r3, #0
c0d0315e:	7683      	strb	r3, [r0, #26]
c0d03160:	82c3      	strh	r3, [r0, #22]
c0d03162:	8202      	strh	r2, [r0, #16]
c0d03164:	60c1      	str	r1, [r0, #12]
c0d03166:	2201      	movs	r2, #1
c0d03168:	6002      	str	r2, [r0, #0]
c0d0316a:	8543      	strh	r3, [r0, #42]	; 0x2a
c0d0316c:	8483      	strh	r3, [r0, #36]	; 0x24
c0d0316e:	61c1      	str	r1, [r0, #28]
c0d03170:	6203      	str	r3, [r0, #32]
c0d03172:	4770      	bx	lr

c0d03174 <u2f_transport_sent>:
c0d03174:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d03176:	b083      	sub	sp, #12
c0d03178:	460d      	mov	r5, r1
c0d0317a:	4604      	mov	r4, r0
c0d0317c:	202a      	movs	r0, #42	; 0x2a
c0d0317e:	5c20      	ldrb	r0, [r4, r0]
c0d03180:	4621      	mov	r1, r4
c0d03182:	3120      	adds	r1, #32
c0d03184:	2800      	cmp	r0, #0
c0d03186:	d00a      	beq.n	c0d0319e <u2f_transport_sent+0x2a>
c0d03188:	2801      	cmp	r0, #1
c0d0318a:	d005      	beq.n	c0d03198 <u2f_transport_sent+0x24>
c0d0318c:	7948      	ldrb	r0, [r1, #5]
c0d0318e:	2806      	cmp	r0, #6
c0d03190:	d102      	bne.n	c0d03198 <u2f_transport_sent+0x24>
c0d03192:	7ac8      	ldrb	r0, [r1, #11]
c0d03194:	2800      	cmp	r0, #0
c0d03196:	d002      	beq.n	c0d0319e <u2f_transport_sent+0x2a>
c0d03198:	2000      	movs	r0, #0
c0d0319a:	72c8      	strb	r0, [r1, #11]
c0d0319c:	e061      	b.n	c0d03262 <u2f_transport_sent+0xee>
c0d0319e:	2000      	movs	r0, #0
c0d031a0:	72c8      	strb	r0, [r1, #11]
c0d031a2:	780a      	ldrb	r2, [r1, #0]
c0d031a4:	1ed2      	subs	r2, r2, #3
c0d031a6:	2a01      	cmp	r2, #1
c0d031a8:	d85b      	bhi.n	c0d03262 <u2f_transport_sent+0xee>
c0d031aa:	8b23      	ldrh	r3, [r4, #24]
c0d031ac:	8ae7      	ldrh	r7, [r4, #22]
c0d031ae:	42bb      	cmp	r3, r7
c0d031b0:	d905      	bls.n	c0d031be <u2f_transport_sent+0x4a>
c0d031b2:	7ea1      	ldrb	r1, [r4, #26]
c0d031b4:	2900      	cmp	r1, #0
c0d031b6:	9101      	str	r1, [sp, #4]
c0d031b8:	d00c      	beq.n	c0d031d4 <u2f_transport_sent+0x60>
c0d031ba:	2101      	movs	r1, #1
c0d031bc:	e00b      	b.n	c0d031d6 <u2f_transport_sent+0x62>
c0d031be:	d150      	bne.n	c0d03262 <u2f_transport_sent+0xee>
c0d031c0:	6008      	str	r0, [r1, #0]
c0d031c2:	8088      	strh	r0, [r1, #4]
c0d031c4:	76a0      	strb	r0, [r4, #26]
c0d031c6:	82e0      	strh	r0, [r4, #22]
c0d031c8:	8148      	strh	r0, [r1, #10]
c0d031ca:	4927      	ldr	r1, [pc, #156]	; (c0d03268 <u2f_transport_sent+0xf4>)
c0d031cc:	7008      	strb	r0, [r1, #0]
c0d031ce:	68e0      	ldr	r0, [r4, #12]
c0d031d0:	61e0      	str	r0, [r4, #28]
c0d031d2:	e046      	b.n	c0d03262 <u2f_transport_sent+0xee>
c0d031d4:	2103      	movs	r1, #3
c0d031d6:	1e6e      	subs	r6, r5, #1
c0d031d8:	4272      	negs	r2, r6
c0d031da:	4172      	adcs	r2, r6
c0d031dc:	0092      	lsls	r2, r2, #2
c0d031de:	188a      	adds	r2, r1, r2
c0d031e0:	2d01      	cmp	r5, #1
c0d031e2:	d001      	beq.n	c0d031e8 <u2f_transport_sent+0x74>
c0d031e4:	2120      	movs	r1, #32
c0d031e6:	e000      	b.n	c0d031ea <u2f_transport_sent+0x76>
c0d031e8:	2140      	movs	r1, #64	; 0x40
c0d031ea:	9202      	str	r2, [sp, #8]
c0d031ec:	1a8e      	subs	r6, r1, r2
c0d031ee:	1bd9      	subs	r1, r3, r7
c0d031f0:	42b1      	cmp	r1, r6
c0d031f2:	dc00      	bgt.n	c0d031f6 <u2f_transport_sent+0x82>
c0d031f4:	460e      	mov	r6, r1
c0d031f6:	2d01      	cmp	r5, #1
c0d031f8:	d109      	bne.n	c0d0320e <u2f_transport_sent+0x9a>
c0d031fa:	6860      	ldr	r0, [r4, #4]
c0d031fc:	491b      	ldr	r1, [pc, #108]	; (c0d0326c <u2f_transport_sent+0xf8>)
c0d031fe:	7008      	strb	r0, [r1, #0]
c0d03200:	0e02      	lsrs	r2, r0, #24
c0d03202:	70ca      	strb	r2, [r1, #3]
c0d03204:	0c02      	lsrs	r2, r0, #16
c0d03206:	708a      	strb	r2, [r1, #2]
c0d03208:	0a00      	lsrs	r0, r0, #8
c0d0320a:	7048      	strb	r0, [r1, #1]
c0d0320c:	2004      	movs	r0, #4
c0d0320e:	9901      	ldr	r1, [sp, #4]
c0d03210:	2900      	cmp	r1, #0
c0d03212:	d001      	beq.n	c0d03218 <u2f_transport_sent+0xa4>
c0d03214:	1e4a      	subs	r2, r1, #1
c0d03216:	e00a      	b.n	c0d0322e <u2f_transport_sent+0xba>
c0d03218:	4621      	mov	r1, r4
c0d0321a:	3140      	adds	r1, #64	; 0x40
c0d0321c:	7809      	ldrb	r1, [r1, #0]
c0d0321e:	4a13      	ldr	r2, [pc, #76]	; (c0d0326c <u2f_transport_sent+0xf8>)
c0d03220:	5411      	strb	r1, [r2, r0]
c0d03222:	2101      	movs	r1, #1
c0d03224:	4301      	orrs	r1, r0
c0d03226:	7e60      	ldrb	r0, [r4, #25]
c0d03228:	5450      	strb	r0, [r2, r1]
c0d0322a:	1c48      	adds	r0, r1, #1
c0d0322c:	7e22      	ldrb	r2, [r4, #24]
c0d0322e:	9f02      	ldr	r7, [sp, #8]
c0d03230:	19f1      	adds	r1, r6, r7
c0d03232:	9101      	str	r1, [sp, #4]
c0d03234:	490d      	ldr	r1, [pc, #52]	; (c0d0326c <u2f_transport_sent+0xf8>)
c0d03236:	540a      	strb	r2, [r1, r0]
c0d03238:	69e3      	ldr	r3, [r4, #28]
c0d0323a:	2b00      	cmp	r3, #0
c0d0323c:	d005      	beq.n	c0d0324a <u2f_transport_sent+0xd6>
c0d0323e:	b2b2      	uxth	r2, r6
c0d03240:	19c8      	adds	r0, r1, r7
c0d03242:	8ae1      	ldrh	r1, [r4, #22]
c0d03244:	1859      	adds	r1, r3, r1
c0d03246:	f002 fc5d 	bl	c0d05b04 <__aeabi_memmove>
c0d0324a:	8ae0      	ldrh	r0, [r4, #22]
c0d0324c:	1980      	adds	r0, r0, r6
c0d0324e:	82e0      	strh	r0, [r4, #22]
c0d03250:	7ea0      	ldrb	r0, [r4, #26]
c0d03252:	1c40      	adds	r0, r0, #1
c0d03254:	76a0      	strb	r0, [r4, #26]
c0d03256:	9801      	ldr	r0, [sp, #4]
c0d03258:	b281      	uxth	r1, r0
c0d0325a:	4804      	ldr	r0, [pc, #16]	; (c0d0326c <u2f_transport_sent+0xf8>)
c0d0325c:	462a      	mov	r2, r5
c0d0325e:	f7ff ff65 	bl	c0d0312c <u2f_io_send>
c0d03262:	b003      	add	sp, #12
c0d03264:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d03266:	46c0      	nop			; (mov r8, r8)
c0d03268:	20000544 	.word	0x20000544
c0d0326c:	200005b0 	.word	0x200005b0

c0d03270 <u2f_message_repliable>:
c0d03270:	212a      	movs	r1, #42	; 0x2a
c0d03272:	5c41      	ldrb	r1, [r0, r1]
c0d03274:	2900      	cmp	r1, #0
c0d03276:	d00b      	beq.n	c0d03290 <u2f_message_repliable+0x20>
c0d03278:	2901      	cmp	r1, #1
c0d0327a:	d007      	beq.n	c0d0328c <u2f_message_repliable+0x1c>
c0d0327c:	3025      	adds	r0, #37	; 0x25
c0d0327e:	7801      	ldrb	r1, [r0, #0]
c0d03280:	2906      	cmp	r1, #6
c0d03282:	d103      	bne.n	c0d0328c <u2f_message_repliable+0x1c>
c0d03284:	7981      	ldrb	r1, [r0, #6]
c0d03286:	4248      	negs	r0, r1
c0d03288:	4148      	adcs	r0, r1
c0d0328a:	4770      	bx	lr
c0d0328c:	2000      	movs	r0, #0
c0d0328e:	4770      	bx	lr
c0d03290:	2001      	movs	r0, #1
c0d03292:	4770      	bx	lr

c0d03294 <u2f_transport_receive_fakeChannel>:
c0d03294:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d03296:	b081      	sub	sp, #4
c0d03298:	4604      	mov	r4, r0
c0d0329a:	2025      	movs	r0, #37	; 0x25
c0d0329c:	5c20      	ldrb	r0, [r4, r0]
c0d0329e:	2805      	cmp	r0, #5
c0d032a0:	d101      	bne.n	c0d032a6 <u2f_transport_receive_fakeChannel+0x12>
c0d032a2:	2500      	movs	r5, #0
c0d032a4:	e081      	b.n	c0d033aa <u2f_transport_receive_fakeChannel+0x116>
c0d032a6:	4626      	mov	r6, r4
c0d032a8:	3624      	adds	r6, #36	; 0x24
c0d032aa:	7808      	ldrb	r0, [r1, #0]
c0d032ac:	784b      	ldrb	r3, [r1, #1]
c0d032ae:	021b      	lsls	r3, r3, #8
c0d032b0:	1818      	adds	r0, r3, r0
c0d032b2:	788b      	ldrb	r3, [r1, #2]
c0d032b4:	78cd      	ldrb	r5, [r1, #3]
c0d032b6:	022d      	lsls	r5, r5, #8
c0d032b8:	18eb      	adds	r3, r5, r3
c0d032ba:	041b      	lsls	r3, r3, #16
c0d032bc:	1818      	adds	r0, r3, r0
c0d032be:	7923      	ldrb	r3, [r4, #4]
c0d032c0:	7965      	ldrb	r5, [r4, #5]
c0d032c2:	022d      	lsls	r5, r5, #8
c0d032c4:	18eb      	adds	r3, r5, r3
c0d032c6:	79a5      	ldrb	r5, [r4, #6]
c0d032c8:	79e7      	ldrb	r7, [r4, #7]
c0d032ca:	023f      	lsls	r7, r7, #8
c0d032cc:	197d      	adds	r5, r7, r5
c0d032ce:	042d      	lsls	r5, r5, #16
c0d032d0:	18eb      	adds	r3, r5, r3
c0d032d2:	4283      	cmp	r3, r0
c0d032d4:	d16c      	bne.n	c0d033b0 <u2f_transport_receive_fakeChannel+0x11c>
c0d032d6:	790b      	ldrb	r3, [r1, #4]
c0d032d8:	8c60      	ldrh	r0, [r4, #34]	; 0x22
c0d032da:	2800      	cmp	r0, #0
c0d032dc:	d010      	beq.n	c0d03300 <u2f_transport_receive_fakeChannel+0x6c>
c0d032de:	7835      	ldrb	r5, [r6, #0]
c0d032e0:	42ab      	cmp	r3, r5
c0d032e2:	d165      	bne.n	c0d033b0 <u2f_transport_receive_fakeChannel+0x11c>
c0d032e4:	1c5b      	adds	r3, r3, #1
c0d032e6:	7033      	strb	r3, [r6, #0]
c0d032e8:	8b23      	ldrh	r3, [r4, #24]
c0d032ea:	1a1b      	subs	r3, r3, r0
c0d032ec:	1f52      	subs	r2, r2, #5
c0d032ee:	429a      	cmp	r2, r3
c0d032f0:	db00      	blt.n	c0d032f4 <u2f_transport_receive_fakeChannel+0x60>
c0d032f2:	461a      	mov	r2, r3
c0d032f4:	1880      	adds	r0, r0, r2
c0d032f6:	8460      	strh	r0, [r4, #34]	; 0x22
c0d032f8:	b292      	uxth	r2, r2
c0d032fa:	8d20      	ldrh	r0, [r4, #40]	; 0x28
c0d032fc:	1d49      	adds	r1, r1, #5
c0d032fe:	e02a      	b.n	c0d03356 <u2f_transport_receive_fakeChannel+0xc2>
c0d03300:	2b88      	cmp	r3, #136	; 0x88
c0d03302:	d114      	bne.n	c0d0332e <u2f_transport_receive_fakeChannel+0x9a>
c0d03304:	2501      	movs	r5, #1
c0d03306:	71f5      	strb	r5, [r6, #7]
c0d03308:	6861      	ldr	r1, [r4, #4]
c0d0330a:	482b      	ldr	r0, [pc, #172]	; (c0d033b8 <u2f_transport_receive_fakeChannel+0x124>)
c0d0330c:	7001      	strb	r1, [r0, #0]
c0d0330e:	2200      	movs	r2, #0
c0d03310:	7182      	strb	r2, [r0, #6]
c0d03312:	7142      	strb	r2, [r0, #5]
c0d03314:	2288      	movs	r2, #136	; 0x88
c0d03316:	7102      	strb	r2, [r0, #4]
c0d03318:	0e0a      	lsrs	r2, r1, #24
c0d0331a:	70c2      	strb	r2, [r0, #3]
c0d0331c:	0c0a      	lsrs	r2, r1, #16
c0d0331e:	7082      	strb	r2, [r0, #2]
c0d03320:	0a09      	lsrs	r1, r1, #8
c0d03322:	7041      	strb	r1, [r0, #1]
c0d03324:	2107      	movs	r1, #7
c0d03326:	462a      	mov	r2, r5
c0d03328:	f7ff ff00 	bl	c0d0312c <u2f_io_send>
c0d0332c:	e03d      	b.n	c0d033aa <u2f_transport_receive_fakeChannel+0x116>
c0d0332e:	2b83      	cmp	r3, #131	; 0x83
c0d03330:	d13e      	bne.n	c0d033b0 <u2f_transport_receive_fakeChannel+0x11c>
c0d03332:	7988      	ldrb	r0, [r1, #6]
c0d03334:	794b      	ldrb	r3, [r1, #5]
c0d03336:	021b      	lsls	r3, r3, #8
c0d03338:	1818      	adds	r0, r3, r0
c0d0333a:	1cc0      	adds	r0, r0, #3
c0d0333c:	8b23      	ldrh	r3, [r4, #24]
c0d0333e:	b280      	uxth	r0, r0
c0d03340:	4298      	cmp	r0, r3
c0d03342:	d135      	bne.n	c0d033b0 <u2f_transport_receive_fakeChannel+0x11c>
c0d03344:	1d09      	adds	r1, r1, #4
c0d03346:	2000      	movs	r0, #0
c0d03348:	7030      	strb	r0, [r6, #0]
c0d0334a:	1f12      	subs	r2, r2, #4
c0d0334c:	429a      	cmp	r2, r3
c0d0334e:	db00      	blt.n	c0d03352 <u2f_transport_receive_fakeChannel+0xbe>
c0d03350:	461a      	mov	r2, r3
c0d03352:	8462      	strh	r2, [r4, #34]	; 0x22
c0d03354:	b292      	uxth	r2, r2
c0d03356:	f7fd fb05 	bl	c0d00964 <cx_crc16_update>
c0d0335a:	8520      	strh	r0, [r4, #40]	; 0x28
c0d0335c:	8b21      	ldrh	r1, [r4, #24]
c0d0335e:	8c62      	ldrh	r2, [r4, #34]	; 0x22
c0d03360:	2501      	movs	r5, #1
c0d03362:	428a      	cmp	r2, r1
c0d03364:	d321      	bcc.n	c0d033aa <u2f_transport_receive_fakeChannel+0x116>
c0d03366:	8ce1      	ldrh	r1, [r4, #38]	; 0x26
c0d03368:	4288      	cmp	r0, r1
c0d0336a:	d121      	bne.n	c0d033b0 <u2f_transport_receive_fakeChannel+0x11c>
c0d0336c:	2700      	movs	r7, #0
c0d0336e:	8467      	strh	r7, [r4, #34]	; 0x22
c0d03370:	2006      	movs	r0, #6
c0d03372:	7070      	strb	r0, [r6, #1]
c0d03374:	79b0      	ldrb	r0, [r6, #6]
c0d03376:	2801      	cmp	r0, #1
c0d03378:	d117      	bne.n	c0d033aa <u2f_transport_receive_fakeChannel+0x116>
c0d0337a:	2201      	movs	r2, #1
c0d0337c:	71f2      	strb	r2, [r6, #7]
c0d0337e:	6861      	ldr	r1, [r4, #4]
c0d03380:	480d      	ldr	r0, [pc, #52]	; (c0d033b8 <u2f_transport_receive_fakeChannel+0x124>)
c0d03382:	7001      	strb	r1, [r0, #0]
c0d03384:	2385      	movs	r3, #133	; 0x85
c0d03386:	7203      	strb	r3, [r0, #8]
c0d03388:	2369      	movs	r3, #105	; 0x69
c0d0338a:	71c3      	strb	r3, [r0, #7]
c0d0338c:	2302      	movs	r3, #2
c0d0338e:	7183      	strb	r3, [r0, #6]
c0d03390:	7147      	strb	r7, [r0, #5]
c0d03392:	2383      	movs	r3, #131	; 0x83
c0d03394:	7103      	strb	r3, [r0, #4]
c0d03396:	0e0b      	lsrs	r3, r1, #24
c0d03398:	70c3      	strb	r3, [r0, #3]
c0d0339a:	0c0b      	lsrs	r3, r1, #16
c0d0339c:	7083      	strb	r3, [r0, #2]
c0d0339e:	0a09      	lsrs	r1, r1, #8
c0d033a0:	7041      	strb	r1, [r0, #1]
c0d033a2:	2109      	movs	r1, #9
c0d033a4:	f7ff fec2 	bl	c0d0312c <u2f_io_send>
c0d033a8:	7077      	strb	r7, [r6, #1]
c0d033aa:	4628      	mov	r0, r5
c0d033ac:	b001      	add	sp, #4
c0d033ae:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d033b0:	2005      	movs	r0, #5
c0d033b2:	7070      	strb	r0, [r6, #1]
c0d033b4:	f7fe f85b 	bl	c0d0146e <os_longjmp>
c0d033b8:	200005b0 	.word	0x200005b0

c0d033bc <u2f_transport_received>:
c0d033bc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d033be:	b089      	sub	sp, #36	; 0x24
c0d033c0:	4604      	mov	r4, r0
c0d033c2:	7203      	strb	r3, [r0, #8]
c0d033c4:	2020      	movs	r0, #32
c0d033c6:	5c26      	ldrb	r6, [r4, r0]
c0d033c8:	4625      	mov	r5, r4
c0d033ca:	3520      	adds	r5, #32
c0d033cc:	4627      	mov	r7, r4
c0d033ce:	3740      	adds	r7, #64	; 0x40
c0d033d0:	2e03      	cmp	r6, #3
c0d033d2:	d10c      	bne.n	c0d033ee <u2f_transport_received+0x32>
c0d033d4:	48f9      	ldr	r0, [pc, #996]	; (c0d037bc <u2f_transport_received+0x400>)
c0d033d6:	2106      	movs	r1, #6
c0d033d8:	7201      	strb	r1, [r0, #8]
c0d033da:	2100      	movs	r1, #0
c0d033dc:	76a1      	strb	r1, [r4, #26]
c0d033de:	2201      	movs	r2, #1
c0d033e0:	8322      	strh	r2, [r4, #24]
c0d033e2:	82e1      	strh	r1, [r4, #22]
c0d033e4:	3008      	adds	r0, #8
c0d033e6:	61e0      	str	r0, [r4, #28]
c0d033e8:	2004      	movs	r0, #4
c0d033ea:	7028      	strb	r0, [r5, #0]
c0d033ec:	e018      	b.n	c0d03420 <u2f_transport_received+0x64>
c0d033ee:	9508      	str	r5, [sp, #32]
c0d033f0:	9307      	str	r3, [sp, #28]
c0d033f2:	4625      	mov	r5, r4
c0d033f4:	3512      	adds	r5, #18
c0d033f6:	7e28      	ldrb	r0, [r5, #24]
c0d033f8:	2800      	cmp	r0, #0
c0d033fa:	d019      	beq.n	c0d03430 <u2f_transport_received+0x74>
c0d033fc:	4620      	mov	r0, r4
c0d033fe:	f7ff ff49 	bl	c0d03294 <u2f_transport_receive_fakeChannel>
c0d03402:	2800      	cmp	r0, #0
c0d03404:	d112      	bne.n	c0d0342c <u2f_transport_received+0x70>
c0d03406:	48f6      	ldr	r0, [pc, #984]	; (c0d037e0 <u2f_transport_received+0x424>)
c0d03408:	2106      	movs	r1, #6
c0d0340a:	7201      	strb	r1, [r0, #8]
c0d0340c:	2100      	movs	r1, #0
c0d0340e:	76a1      	strb	r1, [r4, #26]
c0d03410:	2201      	movs	r2, #1
c0d03412:	8322      	strh	r2, [r4, #24]
c0d03414:	82e1      	strh	r1, [r4, #22]
c0d03416:	3008      	adds	r0, #8
c0d03418:	61e0      	str	r0, [r4, #28]
c0d0341a:	2004      	movs	r0, #4
c0d0341c:	9908      	ldr	r1, [sp, #32]
c0d0341e:	7008      	strb	r0, [r1, #0]
c0d03420:	20bf      	movs	r0, #191	; 0xbf
c0d03422:	7038      	strb	r0, [r7, #0]
c0d03424:	7a21      	ldrb	r1, [r4, #8]
c0d03426:	4620      	mov	r0, r4
c0d03428:	f7ff fea4 	bl	c0d03174 <u2f_transport_sent>
c0d0342c:	b009      	add	sp, #36	; 0x24
c0d0342e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d03430:	9706      	str	r7, [sp, #24]
c0d03432:	2e04      	cmp	r6, #4
c0d03434:	d108      	bne.n	c0d03448 <u2f_transport_received+0x8c>
c0d03436:	2600      	movs	r6, #0
c0d03438:	76a6      	strb	r6, [r4, #26]
c0d0343a:	82e6      	strh	r6, [r4, #22]
c0d0343c:	832e      	strh	r6, [r5, #24]
c0d0343e:	9808      	ldr	r0, [sp, #32]
c0d03440:	6006      	str	r6, [r0, #0]
c0d03442:	8086      	strh	r6, [r0, #4]
c0d03444:	68e0      	ldr	r0, [r4, #12]
c0d03446:	61e0      	str	r0, [r4, #28]
c0d03448:	9b07      	ldr	r3, [sp, #28]
c0d0344a:	1e58      	subs	r0, r3, #1
c0d0344c:	4247      	negs	r7, r0
c0d0344e:	4147      	adcs	r7, r0
c0d03450:	00bf      	lsls	r7, r7, #2
c0d03452:	1c78      	adds	r0, r7, #1
c0d03454:	4290      	cmp	r0, r2
c0d03456:	d876      	bhi.n	c0d03546 <u2f_transport_received+0x18a>
c0d03458:	9003      	str	r0, [sp, #12]
c0d0345a:	2b01      	cmp	r3, #1
c0d0345c:	d134      	bne.n	c0d034c8 <u2f_transport_received+0x10c>
c0d0345e:	9704      	str	r7, [sp, #16]
c0d03460:	7808      	ldrb	r0, [r1, #0]
c0d03462:	784f      	ldrb	r7, [r1, #1]
c0d03464:	023f      	lsls	r7, r7, #8
c0d03466:	183b      	adds	r3, r7, r0
c0d03468:	788f      	ldrb	r7, [r1, #2]
c0d0346a:	78c8      	ldrb	r0, [r1, #3]
c0d0346c:	0200      	lsls	r0, r0, #8
c0d0346e:	19c0      	adds	r0, r0, r7
c0d03470:	0400      	lsls	r0, r0, #16
c0d03472:	18c0      	adds	r0, r0, r3
c0d03474:	6060      	str	r0, [r4, #4]
c0d03476:	8ae0      	ldrh	r0, [r4, #22]
c0d03478:	4623      	mov	r3, r4
c0d0347a:	3316      	adds	r3, #22
c0d0347c:	2800      	cmp	r0, #0
c0d0347e:	d05a      	beq.n	c0d03536 <u2f_transport_received+0x17a>
c0d03480:	9002      	str	r0, [sp, #8]
c0d03482:	1d20      	adds	r0, r4, #4
c0d03484:	7807      	ldrb	r7, [r0, #0]
c0d03486:	9701      	str	r7, [sp, #4]
c0d03488:	7847      	ldrb	r7, [r0, #1]
c0d0348a:	023f      	lsls	r7, r7, #8
c0d0348c:	9305      	str	r3, [sp, #20]
c0d0348e:	9b01      	ldr	r3, [sp, #4]
c0d03490:	18ff      	adds	r7, r7, r3
c0d03492:	9b05      	ldr	r3, [sp, #20]
c0d03494:	9701      	str	r7, [sp, #4]
c0d03496:	7887      	ldrb	r7, [r0, #2]
c0d03498:	78c0      	ldrb	r0, [r0, #3]
c0d0349a:	0200      	lsls	r0, r0, #8
c0d0349c:	19c0      	adds	r0, r0, r7
c0d0349e:	0400      	lsls	r0, r0, #16
c0d034a0:	9f01      	ldr	r7, [sp, #4]
c0d034a2:	19c0      	adds	r0, r0, r7
c0d034a4:	9001      	str	r0, [sp, #4]
c0d034a6:	7ca7      	ldrb	r7, [r4, #18]
c0d034a8:	7ce0      	ldrb	r0, [r4, #19]
c0d034aa:	0200      	lsls	r0, r0, #8
c0d034ac:	19c0      	adds	r0, r0, r7
c0d034ae:	9000      	str	r0, [sp, #0]
c0d034b0:	7d27      	ldrb	r7, [r4, #20]
c0d034b2:	7d60      	ldrb	r0, [r4, #21]
c0d034b4:	0200      	lsls	r0, r0, #8
c0d034b6:	19c0      	adds	r0, r0, r7
c0d034b8:	0400      	lsls	r0, r0, #16
c0d034ba:	9f00      	ldr	r7, [sp, #0]
c0d034bc:	19c0      	adds	r0, r0, r7
c0d034be:	9f01      	ldr	r7, [sp, #4]
c0d034c0:	42b8      	cmp	r0, r7
c0d034c2:	9f04      	ldr	r7, [sp, #16]
c0d034c4:	d138      	bne.n	c0d03538 <u2f_transport_received+0x17c>
c0d034c6:	e005      	b.n	c0d034d4 <u2f_transport_received+0x118>
c0d034c8:	8ae0      	ldrh	r0, [r4, #22]
c0d034ca:	4623      	mov	r3, r4
c0d034cc:	3316      	adds	r3, #22
c0d034ce:	9002      	str	r0, [sp, #8]
c0d034d0:	2800      	cmp	r0, #0
c0d034d2:	d031      	beq.n	c0d03538 <u2f_transport_received+0x17c>
c0d034d4:	5dc8      	ldrb	r0, [r1, r7]
c0d034d6:	2886      	cmp	r0, #134	; 0x86
c0d034d8:	d02e      	beq.n	c0d03538 <u2f_transport_received+0x17c>
c0d034da:	9001      	str	r0, [sp, #4]
c0d034dc:	2002      	movs	r0, #2
c0d034de:	9704      	str	r7, [sp, #16]
c0d034e0:	4338      	orrs	r0, r7
c0d034e2:	4290      	cmp	r0, r2
c0d034e4:	d82f      	bhi.n	c0d03546 <u2f_transport_received+0x18a>
c0d034e6:	9305      	str	r3, [sp, #20]
c0d034e8:	7be8      	ldrb	r0, [r5, #15]
c0d034ea:	9b07      	ldr	r3, [sp, #28]
c0d034ec:	4298      	cmp	r0, r3
c0d034ee:	d000      	beq.n	c0d034f2 <u2f_transport_received+0x136>
c0d034f0:	e08c      	b.n	c0d0360c <u2f_transport_received+0x250>
c0d034f2:	2e01      	cmp	r6, #1
c0d034f4:	d000      	beq.n	c0d034f8 <u2f_transport_received+0x13c>
c0d034f6:	e08c      	b.n	c0d03612 <u2f_transport_received+0x256>
c0d034f8:	9807      	ldr	r0, [sp, #28]
c0d034fa:	2801      	cmp	r0, #1
c0d034fc:	9e06      	ldr	r6, [sp, #24]
c0d034fe:	d000      	beq.n	c0d03502 <u2f_transport_received+0x146>
c0d03500:	e095      	b.n	c0d0362e <u2f_transport_received+0x272>
c0d03502:	7920      	ldrb	r0, [r4, #4]
c0d03504:	7963      	ldrb	r3, [r4, #5]
c0d03506:	021b      	lsls	r3, r3, #8
c0d03508:	1818      	adds	r0, r3, r0
c0d0350a:	79a3      	ldrb	r3, [r4, #6]
c0d0350c:	79e5      	ldrb	r5, [r4, #7]
c0d0350e:	022d      	lsls	r5, r5, #8
c0d03510:	18eb      	adds	r3, r5, r3
c0d03512:	041b      	lsls	r3, r3, #16
c0d03514:	1818      	adds	r0, r3, r0
c0d03516:	780b      	ldrb	r3, [r1, #0]
c0d03518:	784d      	ldrb	r5, [r1, #1]
c0d0351a:	022d      	lsls	r5, r5, #8
c0d0351c:	18eb      	adds	r3, r5, r3
c0d0351e:	788d      	ldrb	r5, [r1, #2]
c0d03520:	78cf      	ldrb	r7, [r1, #3]
c0d03522:	023f      	lsls	r7, r7, #8
c0d03524:	197d      	adds	r5, r7, r5
c0d03526:	9e06      	ldr	r6, [sp, #24]
c0d03528:	042d      	lsls	r5, r5, #16
c0d0352a:	18eb      	adds	r3, r5, r3
c0d0352c:	4283      	cmp	r3, r0
c0d0352e:	d07e      	beq.n	c0d0362e <u2f_transport_received+0x272>
c0d03530:	48ab      	ldr	r0, [pc, #684]	; (c0d037e0 <u2f_transport_received+0x424>)
c0d03532:	2106      	movs	r1, #6
c0d03534:	e146      	b.n	c0d037c4 <u2f_transport_received+0x408>
c0d03536:	9f04      	ldr	r7, [sp, #16]
c0d03538:	9305      	str	r3, [sp, #20]
c0d0353a:	2303      	movs	r3, #3
c0d0353c:	4638      	mov	r0, r7
c0d0353e:	9302      	str	r3, [sp, #8]
c0d03540:	4318      	orrs	r0, r3
c0d03542:	4290      	cmp	r0, r2
c0d03544:	d910      	bls.n	c0d03568 <u2f_transport_received+0x1ac>
c0d03546:	48a6      	ldr	r0, [pc, #664]	; (c0d037e0 <u2f_transport_received+0x424>)
c0d03548:	2185      	movs	r1, #133	; 0x85
c0d0354a:	7201      	strb	r1, [r0, #8]
c0d0354c:	2100      	movs	r1, #0
c0d0354e:	76a1      	strb	r1, [r4, #26]
c0d03550:	2201      	movs	r2, #1
c0d03552:	8322      	strh	r2, [r4, #24]
c0d03554:	82e1      	strh	r1, [r4, #22]
c0d03556:	3008      	adds	r0, #8
c0d03558:	61e0      	str	r0, [r4, #28]
c0d0355a:	2004      	movs	r0, #4
c0d0355c:	9908      	ldr	r1, [sp, #32]
c0d0355e:	7008      	strb	r0, [r1, #0]
c0d03560:	20bf      	movs	r0, #191	; 0xbf
c0d03562:	9906      	ldr	r1, [sp, #24]
c0d03564:	7008      	strb	r0, [r1, #0]
c0d03566:	e75d      	b.n	c0d03424 <u2f_transport_received+0x68>
c0d03568:	57c8      	ldrsb	r0, [r1, r7]
c0d0356a:	2800      	cmp	r0, #0
c0d0356c:	d400      	bmi.n	c0d03570 <u2f_transport_received+0x1b4>
c0d0356e:	e75d      	b.n	c0d0342c <u2f_transport_received+0x70>
c0d03570:	9704      	str	r7, [sp, #16]
c0d03572:	b2c7      	uxtb	r7, r0
c0d03574:	9807      	ldr	r0, [sp, #28]
c0d03576:	2801      	cmp	r0, #1
c0d03578:	d138      	bne.n	c0d035ec <u2f_transport_received+0x230>
c0d0357a:	2e01      	cmp	r6, #1
c0d0357c:	9803      	ldr	r0, [sp, #12]
c0d0357e:	d000      	beq.n	c0d03582 <u2f_transport_received+0x1c6>
c0d03580:	e08d      	b.n	c0d0369e <u2f_transport_received+0x2e2>
c0d03582:	7ca0      	ldrb	r0, [r4, #18]
c0d03584:	7ce3      	ldrb	r3, [r4, #19]
c0d03586:	021b      	lsls	r3, r3, #8
c0d03588:	1818      	adds	r0, r3, r0
c0d0358a:	7d23      	ldrb	r3, [r4, #20]
c0d0358c:	463e      	mov	r6, r7
c0d0358e:	7d67      	ldrb	r7, [r4, #21]
c0d03590:	023f      	lsls	r7, r7, #8
c0d03592:	18fb      	adds	r3, r7, r3
c0d03594:	041b      	lsls	r3, r3, #16
c0d03596:	1818      	adds	r0, r3, r0
c0d03598:	9001      	str	r0, [sp, #4]
c0d0359a:	7923      	ldrb	r3, [r4, #4]
c0d0359c:	7967      	ldrb	r7, [r4, #5]
c0d0359e:	023f      	lsls	r7, r7, #8
c0d035a0:	18fb      	adds	r3, r7, r3
c0d035a2:	79a7      	ldrb	r7, [r4, #6]
c0d035a4:	79e0      	ldrb	r0, [r4, #7]
c0d035a6:	0200      	lsls	r0, r0, #8
c0d035a8:	19c0      	adds	r0, r0, r7
c0d035aa:	4637      	mov	r7, r6
c0d035ac:	0400      	lsls	r0, r0, #16
c0d035ae:	18c0      	adds	r0, r0, r3
c0d035b0:	9b01      	ldr	r3, [sp, #4]
c0d035b2:	1ac3      	subs	r3, r0, r3
c0d035b4:	1e58      	subs	r0, r3, #1
c0d035b6:	4183      	sbcs	r3, r0
c0d035b8:	2e86      	cmp	r6, #134	; 0x86
c0d035ba:	d06d      	beq.n	c0d03698 <u2f_transport_received+0x2dc>
c0d035bc:	2b00      	cmp	r3, #0
c0d035be:	d06b      	beq.n	c0d03698 <u2f_transport_received+0x2dc>
c0d035c0:	1d20      	adds	r0, r4, #4
c0d035c2:	6801      	ldr	r1, [r0, #0]
c0d035c4:	4886      	ldr	r0, [pc, #536]	; (c0d037e0 <u2f_transport_received+0x424>)
c0d035c6:	7001      	strb	r1, [r0, #0]
c0d035c8:	2206      	movs	r2, #6
c0d035ca:	71c2      	strb	r2, [r0, #7]
c0d035cc:	2201      	movs	r2, #1
c0d035ce:	7182      	strb	r2, [r0, #6]
c0d035d0:	2300      	movs	r3, #0
c0d035d2:	7143      	strb	r3, [r0, #5]
c0d035d4:	23bf      	movs	r3, #191	; 0xbf
c0d035d6:	7103      	strb	r3, [r0, #4]
c0d035d8:	0e0b      	lsrs	r3, r1, #24
c0d035da:	70c3      	strb	r3, [r0, #3]
c0d035dc:	0c0b      	lsrs	r3, r1, #16
c0d035de:	7083      	strb	r3, [r0, #2]
c0d035e0:	0a09      	lsrs	r1, r1, #8
c0d035e2:	7041      	strb	r1, [r0, #1]
c0d035e4:	2108      	movs	r1, #8
c0d035e6:	f7ff fda1 	bl	c0d0312c <u2f_io_send>
c0d035ea:	e71f      	b.n	c0d0342c <u2f_transport_received+0x70>
c0d035ec:	2e01      	cmp	r6, #1
c0d035ee:	9803      	ldr	r0, [sp, #12]
c0d035f0:	d155      	bne.n	c0d0369e <u2f_transport_received+0x2e2>
c0d035f2:	487b      	ldr	r0, [pc, #492]	; (c0d037e0 <u2f_transport_received+0x424>)
c0d035f4:	2104      	movs	r1, #4
c0d035f6:	7201      	strb	r1, [r0, #8]
c0d035f8:	2200      	movs	r2, #0
c0d035fa:	76a2      	strb	r2, [r4, #26]
c0d035fc:	2301      	movs	r3, #1
c0d035fe:	8323      	strh	r3, [r4, #24]
c0d03600:	82e2      	strh	r2, [r4, #22]
c0d03602:	3008      	adds	r0, #8
c0d03604:	61e0      	str	r0, [r4, #28]
c0d03606:	9808      	ldr	r0, [sp, #32]
c0d03608:	7001      	strb	r1, [r0, #0]
c0d0360a:	e7a9      	b.n	c0d03560 <u2f_transport_received+0x1a4>
c0d0360c:	4874      	ldr	r0, [pc, #464]	; (c0d037e0 <u2f_transport_received+0x424>)
c0d0360e:	218d      	movs	r1, #141	; 0x8d
c0d03610:	e79b      	b.n	c0d0354a <u2f_transport_received+0x18e>
c0d03612:	9807      	ldr	r0, [sp, #28]
c0d03614:	2801      	cmp	r0, #1
c0d03616:	9e06      	ldr	r6, [sp, #24]
c0d03618:	d131      	bne.n	c0d0367e <u2f_transport_received+0x2c2>
c0d0361a:	2000      	movs	r0, #0
c0d0361c:	76a0      	strb	r0, [r4, #26]
c0d0361e:	82e0      	strh	r0, [r4, #22]
c0d03620:	8328      	strh	r0, [r5, #24]
c0d03622:	9908      	ldr	r1, [sp, #32]
c0d03624:	6008      	str	r0, [r1, #0]
c0d03626:	8088      	strh	r0, [r1, #4]
c0d03628:	68e0      	ldr	r0, [r4, #12]
c0d0362a:	61e0      	str	r0, [r4, #28]
c0d0362c:	e6fe      	b.n	c0d0342c <u2f_transport_received+0x70>
c0d0362e:	7ea0      	ldrb	r0, [r4, #26]
c0d03630:	9b01      	ldr	r3, [sp, #4]
c0d03632:	4283      	cmp	r3, r0
c0d03634:	d123      	bne.n	c0d0367e <u2f_transport_received+0x2c2>
c0d03636:	9804      	ldr	r0, [sp, #16]
c0d03638:	1809      	adds	r1, r1, r0
c0d0363a:	9803      	ldr	r0, [sp, #12]
c0d0363c:	1a15      	subs	r5, r2, r0
c0d0363e:	8b20      	ldrh	r0, [r4, #24]
c0d03640:	9a02      	ldr	r2, [sp, #8]
c0d03642:	1a80      	subs	r0, r0, r2
c0d03644:	4285      	cmp	r5, r0
c0d03646:	db00      	blt.n	c0d0364a <u2f_transport_received+0x28e>
c0d03648:	4605      	mov	r5, r0
c0d0364a:	b2af      	uxth	r7, r5
c0d0364c:	69e0      	ldr	r0, [r4, #28]
c0d0364e:	1880      	adds	r0, r0, r2
c0d03650:	1c49      	adds	r1, r1, #1
c0d03652:	463a      	mov	r2, r7
c0d03654:	f002 fa56 	bl	c0d05b04 <__aeabi_memmove>
c0d03658:	9807      	ldr	r0, [sp, #28]
c0d0365a:	2801      	cmp	r0, #1
c0d0365c:	d107      	bne.n	c0d0366e <u2f_transport_received+0x2b2>
c0d0365e:	8ae0      	ldrh	r0, [r4, #22]
c0d03660:	69e1      	ldr	r1, [r4, #28]
c0d03662:	1809      	adds	r1, r1, r0
c0d03664:	8ce0      	ldrh	r0, [r4, #38]	; 0x26
c0d03666:	463a      	mov	r2, r7
c0d03668:	f7fd f97c 	bl	c0d00964 <cx_crc16_update>
c0d0366c:	84e0      	strh	r0, [r4, #38]	; 0x26
c0d0366e:	8ae0      	ldrh	r0, [r4, #22]
c0d03670:	1940      	adds	r0, r0, r5
c0d03672:	82e0      	strh	r0, [r4, #22]
c0d03674:	7ea0      	ldrb	r0, [r4, #26]
c0d03676:	1c40      	adds	r0, r0, #1
c0d03678:	76a0      	strb	r0, [r4, #26]
c0d0367a:	9907      	ldr	r1, [sp, #28]
c0d0367c:	e071      	b.n	c0d03762 <u2f_transport_received+0x3a6>
c0d0367e:	4858      	ldr	r0, [pc, #352]	; (c0d037e0 <u2f_transport_received+0x424>)
c0d03680:	2104      	movs	r1, #4
c0d03682:	7201      	strb	r1, [r0, #8]
c0d03684:	2200      	movs	r2, #0
c0d03686:	76a2      	strb	r2, [r4, #26]
c0d03688:	2301      	movs	r3, #1
c0d0368a:	8323      	strh	r3, [r4, #24]
c0d0368c:	82e2      	strh	r2, [r4, #22]
c0d0368e:	3008      	adds	r0, #8
c0d03690:	61e0      	str	r0, [r4, #28]
c0d03692:	9808      	ldr	r0, [sp, #32]
c0d03694:	7001      	strb	r1, [r0, #0]
c0d03696:	e0a0      	b.n	c0d037da <u2f_transport_received+0x41e>
c0d03698:	2f86      	cmp	r7, #134	; 0x86
c0d0369a:	9803      	ldr	r0, [sp, #12]
c0d0369c:	d1a9      	bne.n	c0d035f2 <u2f_transport_received+0x236>
c0d0369e:	4603      	mov	r3, r0
c0d036a0:	1808      	adds	r0, r1, r0
c0d036a2:	7840      	ldrb	r0, [r0, #1]
c0d036a4:	5ccb      	ldrb	r3, [r1, r3]
c0d036a6:	021b      	lsls	r3, r3, #8
c0d036a8:	181b      	adds	r3, r3, r0
c0d036aa:	8a20      	ldrh	r0, [r4, #16]
c0d036ac:	1ec0      	subs	r0, r0, #3
c0d036ae:	4298      	cmp	r0, r3
c0d036b0:	da02      	bge.n	c0d036b8 <u2f_transport_received+0x2fc>
c0d036b2:	484b      	ldr	r0, [pc, #300]	; (c0d037e0 <u2f_transport_received+0x424>)
c0d036b4:	9902      	ldr	r1, [sp, #8]
c0d036b6:	e748      	b.n	c0d0354a <u2f_transport_received+0x18e>
c0d036b8:	2f81      	cmp	r7, #129	; 0x81
c0d036ba:	9e06      	ldr	r6, [sp, #24]
c0d036bc:	d003      	beq.n	c0d036c6 <u2f_transport_received+0x30a>
c0d036be:	2f86      	cmp	r7, #134	; 0x86
c0d036c0:	d01c      	beq.n	c0d036fc <u2f_transport_received+0x340>
c0d036c2:	2f83      	cmp	r7, #131	; 0x83
c0d036c4:	d154      	bne.n	c0d03770 <u2f_transport_received+0x3b4>
c0d036c6:	9807      	ldr	r0, [sp, #28]
c0d036c8:	2801      	cmp	r0, #1
c0d036ca:	d128      	bne.n	c0d0371e <u2f_transport_received+0x362>
c0d036cc:	7920      	ldrb	r0, [r4, #4]
c0d036ce:	7967      	ldrb	r7, [r4, #5]
c0d036d0:	023f      	lsls	r7, r7, #8
c0d036d2:	1838      	adds	r0, r7, r0
c0d036d4:	9003      	str	r0, [sp, #12]
c0d036d6:	79a7      	ldrb	r7, [r4, #6]
c0d036d8:	79e0      	ldrb	r0, [r4, #7]
c0d036da:	0200      	lsls	r0, r0, #8
c0d036dc:	19c0      	adds	r0, r0, r7
c0d036de:	9e06      	ldr	r6, [sp, #24]
c0d036e0:	0400      	lsls	r0, r0, #16
c0d036e2:	9f03      	ldr	r7, [sp, #12]
c0d036e4:	19c0      	adds	r0, r0, r7
c0d036e6:	1c40      	adds	r0, r0, #1
c0d036e8:	d06a      	beq.n	c0d037c0 <u2f_transport_received+0x404>
c0d036ea:	1d20      	adds	r0, r4, #4
c0d036ec:	7806      	ldrb	r6, [r0, #0]
c0d036ee:	7847      	ldrb	r7, [r0, #1]
c0d036f0:	023f      	lsls	r7, r7, #8
c0d036f2:	19be      	adds	r6, r7, r6
c0d036f4:	9603      	str	r6, [sp, #12]
c0d036f6:	7887      	ldrb	r7, [r0, #2]
c0d036f8:	78c0      	ldrb	r0, [r0, #3]
c0d036fa:	e009      	b.n	c0d03710 <u2f_transport_received+0x354>
c0d036fc:	9807      	ldr	r0, [sp, #28]
c0d036fe:	2801      	cmp	r0, #1
c0d03700:	d136      	bne.n	c0d03770 <u2f_transport_received+0x3b4>
c0d03702:	7920      	ldrb	r0, [r4, #4]
c0d03704:	7967      	ldrb	r7, [r4, #5]
c0d03706:	023f      	lsls	r7, r7, #8
c0d03708:	1838      	adds	r0, r7, r0
c0d0370a:	9003      	str	r0, [sp, #12]
c0d0370c:	79a7      	ldrb	r7, [r4, #6]
c0d0370e:	79e0      	ldrb	r0, [r4, #7]
c0d03710:	0200      	lsls	r0, r0, #8
c0d03712:	19c0      	adds	r0, r0, r7
c0d03714:	9e06      	ldr	r6, [sp, #24]
c0d03716:	0400      	lsls	r0, r0, #16
c0d03718:	9f03      	ldr	r7, [sp, #12]
c0d0371a:	19c0      	adds	r0, r0, r7
c0d0371c:	d050      	beq.n	c0d037c0 <u2f_transport_received+0x404>
c0d0371e:	9804      	ldr	r0, [sp, #16]
c0d03720:	1809      	adds	r1, r1, r0
c0d03722:	1a17      	subs	r7, r2, r0
c0d03724:	1cde      	adds	r6, r3, #3
c0d03726:	42b7      	cmp	r7, r6
c0d03728:	db00      	blt.n	c0d0372c <u2f_transport_received+0x370>
c0d0372a:	4637      	mov	r7, r6
c0d0372c:	9604      	str	r6, [sp, #16]
c0d0372e:	b2ba      	uxth	r2, r7
c0d03730:	69e0      	ldr	r0, [r4, #28]
c0d03732:	4616      	mov	r6, r2
c0d03734:	f002 f9e6 	bl	c0d05b04 <__aeabi_memmove>
c0d03738:	9807      	ldr	r0, [sp, #28]
c0d0373a:	2801      	cmp	r0, #1
c0d0373c:	d105      	bne.n	c0d0374a <u2f_transport_received+0x38e>
c0d0373e:	69e1      	ldr	r1, [r4, #28]
c0d03740:	2000      	movs	r0, #0
c0d03742:	4632      	mov	r2, r6
c0d03744:	f7fd f90e 	bl	c0d00964 <cx_crc16_update>
c0d03748:	84e0      	strh	r0, [r4, #38]	; 0x26
c0d0374a:	9804      	ldr	r0, [sp, #16]
c0d0374c:	8320      	strh	r0, [r4, #24]
c0d0374e:	82e7      	strh	r7, [r4, #22]
c0d03750:	9907      	ldr	r1, [sp, #28]
c0d03752:	73e9      	strb	r1, [r5, #15]
c0d03754:	2000      	movs	r0, #0
c0d03756:	76a0      	strb	r0, [r4, #26]
c0d03758:	6860      	ldr	r0, [r4, #4]
c0d0375a:	8028      	strh	r0, [r5, #0]
c0d0375c:	0c00      	lsrs	r0, r0, #16
c0d0375e:	8068      	strh	r0, [r5, #2]
c0d03760:	9e06      	ldr	r6, [sp, #24]
c0d03762:	9805      	ldr	r0, [sp, #20]
c0d03764:	8800      	ldrh	r0, [r0, #0]
c0d03766:	2901      	cmp	r1, #1
c0d03768:	9b08      	ldr	r3, [sp, #32]
c0d0376a:	d109      	bne.n	c0d03780 <u2f_transport_received+0x3c4>
c0d0376c:	8b21      	ldrh	r1, [r4, #24]
c0d0376e:	e018      	b.n	c0d037a2 <u2f_transport_received+0x3e6>
c0d03770:	481b      	ldr	r0, [pc, #108]	; (c0d037e0 <u2f_transport_received+0x424>)
c0d03772:	2101      	movs	r1, #1
c0d03774:	7201      	strb	r1, [r0, #8]
c0d03776:	2200      	movs	r2, #0
c0d03778:	76a2      	strb	r2, [r4, #26]
c0d0377a:	8321      	strh	r1, [r4, #24]
c0d0377c:	82e2      	strh	r2, [r4, #22]
c0d0377e:	e027      	b.n	c0d037d0 <u2f_transport_received+0x414>
c0d03780:	8b21      	ldrh	r1, [r4, #24]
c0d03782:	1cca      	adds	r2, r1, #3
c0d03784:	4282      	cmp	r2, r0
c0d03786:	d20c      	bcs.n	c0d037a2 <u2f_transport_received+0x3e6>
c0d03788:	4815      	ldr	r0, [pc, #84]	; (c0d037e0 <u2f_transport_received+0x424>)
c0d0378a:	2103      	movs	r1, #3
c0d0378c:	7201      	strb	r1, [r0, #8]
c0d0378e:	2100      	movs	r1, #0
c0d03790:	76a1      	strb	r1, [r4, #26]
c0d03792:	2201      	movs	r2, #1
c0d03794:	8322      	strh	r2, [r4, #24]
c0d03796:	82e1      	strh	r1, [r4, #22]
c0d03798:	3008      	adds	r0, #8
c0d0379a:	61e0      	str	r0, [r4, #28]
c0d0379c:	2004      	movs	r0, #4
c0d0379e:	7018      	strb	r0, [r3, #0]
c0d037a0:	e01b      	b.n	c0d037da <u2f_transport_received+0x41e>
c0d037a2:	4288      	cmp	r0, r1
c0d037a4:	d204      	bcs.n	c0d037b0 <u2f_transport_received+0x3f4>
c0d037a6:	2001      	movs	r0, #1
c0d037a8:	7018      	strb	r0, [r3, #0]
c0d037aa:	2000      	movs	r0, #0
c0d037ac:	6360      	str	r0, [r4, #52]	; 0x34
c0d037ae:	e63d      	b.n	c0d0342c <u2f_transport_received+0x70>
c0d037b0:	2002      	movs	r0, #2
c0d037b2:	7018      	strb	r0, [r3, #0]
c0d037b4:	4620      	mov	r0, r4
c0d037b6:	f7ff fc9b 	bl	c0d030f0 <u2f_message_complete>
c0d037ba:	e637      	b.n	c0d0342c <u2f_transport_received+0x70>
c0d037bc:	200005b0 	.word	0x200005b0
c0d037c0:	4807      	ldr	r0, [pc, #28]	; (c0d037e0 <u2f_transport_received+0x424>)
c0d037c2:	210b      	movs	r1, #11
c0d037c4:	7201      	strb	r1, [r0, #8]
c0d037c6:	2100      	movs	r1, #0
c0d037c8:	76a1      	strb	r1, [r4, #26]
c0d037ca:	2201      	movs	r2, #1
c0d037cc:	8322      	strh	r2, [r4, #24]
c0d037ce:	82e1      	strh	r1, [r4, #22]
c0d037d0:	3008      	adds	r0, #8
c0d037d2:	61e0      	str	r0, [r4, #28]
c0d037d4:	2004      	movs	r0, #4
c0d037d6:	9908      	ldr	r1, [sp, #32]
c0d037d8:	7008      	strb	r0, [r1, #0]
c0d037da:	20bf      	movs	r0, #191	; 0xbf
c0d037dc:	7030      	strb	r0, [r6, #0]
c0d037de:	e621      	b.n	c0d03424 <u2f_transport_received+0x68>
c0d037e0:	200005b0 	.word	0x200005b0

c0d037e4 <u2f_is_channel_broadcast>:
c0d037e4:	7801      	ldrb	r1, [r0, #0]
c0d037e6:	7842      	ldrb	r2, [r0, #1]
c0d037e8:	0212      	lsls	r2, r2, #8
c0d037ea:	1851      	adds	r1, r2, r1
c0d037ec:	7882      	ldrb	r2, [r0, #2]
c0d037ee:	78c0      	ldrb	r0, [r0, #3]
c0d037f0:	0200      	lsls	r0, r0, #8
c0d037f2:	1880      	adds	r0, r0, r2
c0d037f4:	0400      	lsls	r0, r0, #16
c0d037f6:	1840      	adds	r0, r0, r1
c0d037f8:	1c41      	adds	r1, r0, #1
c0d037fa:	4248      	negs	r0, r1
c0d037fc:	4148      	adcs	r0, r1
c0d037fe:	4770      	bx	lr

c0d03800 <u2f_message_set_autoreply_wait_user_presence>:
c0d03800:	b580      	push	{r7, lr}
c0d03802:	222a      	movs	r2, #42	; 0x2a
c0d03804:	5c83      	ldrb	r3, [r0, r2]
c0d03806:	4602      	mov	r2, r0
c0d03808:	322a      	adds	r2, #42	; 0x2a
c0d0380a:	2900      	cmp	r1, #0
c0d0380c:	d002      	beq.n	c0d03814 <u2f_message_set_autoreply_wait_user_presence+0x14>
c0d0380e:	2b00      	cmp	r3, #0
c0d03810:	d005      	beq.n	c0d0381e <u2f_message_set_autoreply_wait_user_presence+0x1e>
c0d03812:	bd80      	pop	{r7, pc}
c0d03814:	2b01      	cmp	r3, #1
c0d03816:	d1fc      	bne.n	c0d03812 <u2f_message_set_autoreply_wait_user_presence+0x12>
c0d03818:	2002      	movs	r0, #2
c0d0381a:	7010      	strb	r0, [r2, #0]
c0d0381c:	bd80      	pop	{r7, pc}
c0d0381e:	21ff      	movs	r1, #255	; 0xff
c0d03820:	3102      	adds	r1, #2
c0d03822:	8011      	strh	r1, [r2, #0]
c0d03824:	6841      	ldr	r1, [r0, #4]
c0d03826:	0e0a      	lsrs	r2, r1, #24
c0d03828:	480a      	ldr	r0, [pc, #40]	; (c0d03854 <u2f_message_set_autoreply_wait_user_presence+0x54>)
c0d0382a:	70c2      	strb	r2, [r0, #3]
c0d0382c:	0c0a      	lsrs	r2, r1, #16
c0d0382e:	7082      	strb	r2, [r0, #2]
c0d03830:	0a0a      	lsrs	r2, r1, #8
c0d03832:	7042      	strb	r2, [r0, #1]
c0d03834:	7001      	strb	r1, [r0, #0]
c0d03836:	2185      	movs	r1, #133	; 0x85
c0d03838:	7201      	strb	r1, [r0, #8]
c0d0383a:	2169      	movs	r1, #105	; 0x69
c0d0383c:	71c1      	strb	r1, [r0, #7]
c0d0383e:	2102      	movs	r1, #2
c0d03840:	7181      	strb	r1, [r0, #6]
c0d03842:	2100      	movs	r1, #0
c0d03844:	7141      	strb	r1, [r0, #5]
c0d03846:	2183      	movs	r1, #131	; 0x83
c0d03848:	7101      	strb	r1, [r0, #4]
c0d0384a:	2109      	movs	r1, #9
c0d0384c:	2201      	movs	r2, #1
c0d0384e:	f7ff fc6d 	bl	c0d0312c <u2f_io_send>
c0d03852:	bd80      	pop	{r7, pc}
c0d03854:	200005b0 	.word	0x200005b0

c0d03858 <u2f_message_reply>:
c0d03858:	b570      	push	{r4, r5, r6, lr}
c0d0385a:	4604      	mov	r4, r0
c0d0385c:	202a      	movs	r0, #42	; 0x2a
c0d0385e:	5c20      	ldrb	r0, [r4, r0]
c0d03860:	4625      	mov	r5, r4
c0d03862:	3520      	adds	r5, #32
c0d03864:	2800      	cmp	r0, #0
c0d03866:	d007      	beq.n	c0d03878 <u2f_message_reply+0x20>
c0d03868:	2801      	cmp	r0, #1
c0d0386a:	d01f      	beq.n	c0d038ac <u2f_message_reply+0x54>
c0d0386c:	7968      	ldrb	r0, [r5, #5]
c0d0386e:	2806      	cmp	r0, #6
c0d03870:	d11c      	bne.n	c0d038ac <u2f_message_reply+0x54>
c0d03872:	7ae8      	ldrb	r0, [r5, #11]
c0d03874:	2800      	cmp	r0, #0
c0d03876:	d119      	bne.n	c0d038ac <u2f_message_reply+0x54>
c0d03878:	4620      	mov	r0, r4
c0d0387a:	3040      	adds	r0, #64	; 0x40
c0d0387c:	61e2      	str	r2, [r4, #28]
c0d0387e:	2200      	movs	r2, #0
c0d03880:	76a2      	strb	r2, [r4, #26]
c0d03882:	2603      	movs	r6, #3
c0d03884:	702e      	strb	r6, [r5, #0]
c0d03886:	8323      	strh	r3, [r4, #24]
c0d03888:	82e2      	strh	r2, [r4, #22]
c0d0388a:	7001      	strb	r1, [r0, #0]
c0d0388c:	7869      	ldrb	r1, [r5, #1]
c0d0388e:	2903      	cmp	r1, #3
c0d03890:	d10d      	bne.n	c0d038ae <u2f_message_reply+0x56>
c0d03892:	4e09      	ldr	r6, [pc, #36]	; (c0d038b8 <u2f_message_reply+0x60>)
c0d03894:	7830      	ldrb	r0, [r6, #0]
c0d03896:	2800      	cmp	r0, #0
c0d03898:	d008      	beq.n	c0d038ac <u2f_message_reply+0x54>
c0d0389a:	2103      	movs	r1, #3
c0d0389c:	4620      	mov	r0, r4
c0d0389e:	f7ff fc69 	bl	c0d03174 <u2f_transport_sent>
c0d038a2:	7830      	ldrb	r0, [r6, #0]
c0d038a4:	2800      	cmp	r0, #0
c0d038a6:	d001      	beq.n	c0d038ac <u2f_message_reply+0x54>
c0d038a8:	7869      	ldrb	r1, [r5, #1]
c0d038aa:	e7f7      	b.n	c0d0389c <u2f_message_reply+0x44>
c0d038ac:	bd70      	pop	{r4, r5, r6, pc}
c0d038ae:	4620      	mov	r0, r4
c0d038b0:	f7ff fc60 	bl	c0d03174 <u2f_transport_sent>
c0d038b4:	bd70      	pop	{r4, r5, r6, pc}
c0d038b6:	46c0      	nop			; (mov r8, r8)
c0d038b8:	20000544 	.word	0x20000544

c0d038bc <USBD_LL_Init>:
c0d038bc:	4902      	ldr	r1, [pc, #8]	; (c0d038c8 <USBD_LL_Init+0xc>)
c0d038be:	2000      	movs	r0, #0
c0d038c0:	6008      	str	r0, [r1, #0]
c0d038c2:	4902      	ldr	r1, [pc, #8]	; (c0d038cc <USBD_LL_Init+0x10>)
c0d038c4:	6008      	str	r0, [r1, #0]
c0d038c6:	4770      	bx	lr
c0d038c8:	200008d4 	.word	0x200008d4
c0d038cc:	200008d0 	.word	0x200008d0

c0d038d0 <USBD_LL_DeInit>:
c0d038d0:	b510      	push	{r4, lr}
c0d038d2:	4807      	ldr	r0, [pc, #28]	; (c0d038f0 <USBD_LL_DeInit+0x20>)
c0d038d4:	2102      	movs	r1, #2
c0d038d6:	70c1      	strb	r1, [r0, #3]
c0d038d8:	2101      	movs	r1, #1
c0d038da:	7081      	strb	r1, [r0, #2]
c0d038dc:	2400      	movs	r4, #0
c0d038de:	7044      	strb	r4, [r0, #1]
c0d038e0:	214f      	movs	r1, #79	; 0x4f
c0d038e2:	7001      	strb	r1, [r0, #0]
c0d038e4:	2104      	movs	r1, #4
c0d038e6:	f7ff f9f1 	bl	c0d02ccc <io_seph_send>
c0d038ea:	4620      	mov	r0, r4
c0d038ec:	bd10      	pop	{r4, pc}
c0d038ee:	46c0      	nop			; (mov r8, r8)
c0d038f0:	20000370 	.word	0x20000370

c0d038f4 <USBD_LL_Start>:
c0d038f4:	b570      	push	{r4, r5, r6, lr}
c0d038f6:	b082      	sub	sp, #8
c0d038f8:	466d      	mov	r5, sp
c0d038fa:	2400      	movs	r4, #0
c0d038fc:	712c      	strb	r4, [r5, #4]
c0d038fe:	2003      	movs	r0, #3
c0d03900:	70e8      	strb	r0, [r5, #3]
c0d03902:	2002      	movs	r0, #2
c0d03904:	70a8      	strb	r0, [r5, #2]
c0d03906:	706c      	strb	r4, [r5, #1]
c0d03908:	264f      	movs	r6, #79	; 0x4f
c0d0390a:	702e      	strb	r6, [r5, #0]
c0d0390c:	2105      	movs	r1, #5
c0d0390e:	4628      	mov	r0, r5
c0d03910:	f7ff f9dc 	bl	c0d02ccc <io_seph_send>
c0d03914:	2001      	movs	r0, #1
c0d03916:	70e8      	strb	r0, [r5, #3]
c0d03918:	70a8      	strb	r0, [r5, #2]
c0d0391a:	706c      	strb	r4, [r5, #1]
c0d0391c:	702e      	strb	r6, [r5, #0]
c0d0391e:	2104      	movs	r1, #4
c0d03920:	4628      	mov	r0, r5
c0d03922:	f7ff f9d3 	bl	c0d02ccc <io_seph_send>
c0d03926:	4620      	mov	r0, r4
c0d03928:	b002      	add	sp, #8
c0d0392a:	bd70      	pop	{r4, r5, r6, pc}

c0d0392c <USBD_LL_Stop>:
c0d0392c:	b510      	push	{r4, lr}
c0d0392e:	b082      	sub	sp, #8
c0d03930:	a801      	add	r0, sp, #4
c0d03932:	2102      	movs	r1, #2
c0d03934:	70c1      	strb	r1, [r0, #3]
c0d03936:	2101      	movs	r1, #1
c0d03938:	7081      	strb	r1, [r0, #2]
c0d0393a:	2400      	movs	r4, #0
c0d0393c:	7044      	strb	r4, [r0, #1]
c0d0393e:	214f      	movs	r1, #79	; 0x4f
c0d03940:	7001      	strb	r1, [r0, #0]
c0d03942:	2104      	movs	r1, #4
c0d03944:	f7ff f9c2 	bl	c0d02ccc <io_seph_send>
c0d03948:	4620      	mov	r0, r4
c0d0394a:	b002      	add	sp, #8
c0d0394c:	bd10      	pop	{r4, pc}
	...

c0d03950 <USBD_LL_OpenEP>:
c0d03950:	b570      	push	{r4, r5, r6, lr}
c0d03952:	b082      	sub	sp, #8
c0d03954:	4814      	ldr	r0, [pc, #80]	; (c0d039a8 <USBD_LL_OpenEP+0x58>)
c0d03956:	2400      	movs	r4, #0
c0d03958:	6004      	str	r4, [r0, #0]
c0d0395a:	4814      	ldr	r0, [pc, #80]	; (c0d039ac <USBD_LL_OpenEP+0x5c>)
c0d0395c:	6004      	str	r4, [r0, #0]
c0d0395e:	466d      	mov	r5, sp
c0d03960:	71ac      	strb	r4, [r5, #6]
c0d03962:	7169      	strb	r1, [r5, #5]
c0d03964:	2001      	movs	r0, #1
c0d03966:	7128      	strb	r0, [r5, #4]
c0d03968:	2104      	movs	r1, #4
c0d0396a:	70e9      	strb	r1, [r5, #3]
c0d0396c:	2605      	movs	r6, #5
c0d0396e:	70ae      	strb	r6, [r5, #2]
c0d03970:	706c      	strb	r4, [r5, #1]
c0d03972:	244f      	movs	r4, #79	; 0x4f
c0d03974:	702c      	strb	r4, [r5, #0]
c0d03976:	2a01      	cmp	r2, #1
c0d03978:	dc05      	bgt.n	c0d03986 <USBD_LL_OpenEP+0x36>
c0d0397a:	2a00      	cmp	r2, #0
c0d0397c:	d00a      	beq.n	c0d03994 <USBD_LL_OpenEP+0x44>
c0d0397e:	2a01      	cmp	r2, #1
c0d03980:	d10a      	bne.n	c0d03998 <USBD_LL_OpenEP+0x48>
c0d03982:	4608      	mov	r0, r1
c0d03984:	e006      	b.n	c0d03994 <USBD_LL_OpenEP+0x44>
c0d03986:	2a02      	cmp	r2, #2
c0d03988:	d003      	beq.n	c0d03992 <USBD_LL_OpenEP+0x42>
c0d0398a:	2a03      	cmp	r2, #3
c0d0398c:	d104      	bne.n	c0d03998 <USBD_LL_OpenEP+0x48>
c0d0398e:	2002      	movs	r0, #2
c0d03990:	e000      	b.n	c0d03994 <USBD_LL_OpenEP+0x44>
c0d03992:	2003      	movs	r0, #3
c0d03994:	4669      	mov	r1, sp
c0d03996:	7188      	strb	r0, [r1, #6]
c0d03998:	4668      	mov	r0, sp
c0d0399a:	71c3      	strb	r3, [r0, #7]
c0d0399c:	2108      	movs	r1, #8
c0d0399e:	f7ff f995 	bl	c0d02ccc <io_seph_send>
c0d039a2:	2000      	movs	r0, #0
c0d039a4:	b002      	add	sp, #8
c0d039a6:	bd70      	pop	{r4, r5, r6, pc}
c0d039a8:	200008d0 	.word	0x200008d0
c0d039ac:	200008d4 	.word	0x200008d4

c0d039b0 <USBD_LL_StallEP>:
c0d039b0:	b5b0      	push	{r4, r5, r7, lr}
c0d039b2:	b082      	sub	sp, #8
c0d039b4:	460d      	mov	r5, r1
c0d039b6:	4668      	mov	r0, sp
c0d039b8:	2400      	movs	r4, #0
c0d039ba:	7144      	strb	r4, [r0, #5]
c0d039bc:	2140      	movs	r1, #64	; 0x40
c0d039be:	7101      	strb	r1, [r0, #4]
c0d039c0:	70c5      	strb	r5, [r0, #3]
c0d039c2:	2103      	movs	r1, #3
c0d039c4:	7081      	strb	r1, [r0, #2]
c0d039c6:	7044      	strb	r4, [r0, #1]
c0d039c8:	2150      	movs	r1, #80	; 0x50
c0d039ca:	7001      	strb	r1, [r0, #0]
c0d039cc:	2106      	movs	r1, #6
c0d039ce:	f7ff f97d 	bl	c0d02ccc <io_seph_send>
c0d039d2:	0628      	lsls	r0, r5, #24
c0d039d4:	d501      	bpl.n	c0d039da <USBD_LL_StallEP+0x2a>
c0d039d6:	4807      	ldr	r0, [pc, #28]	; (c0d039f4 <USBD_LL_StallEP+0x44>)
c0d039d8:	e000      	b.n	c0d039dc <USBD_LL_StallEP+0x2c>
c0d039da:	4805      	ldr	r0, [pc, #20]	; (c0d039f0 <USBD_LL_StallEP+0x40>)
c0d039dc:	6801      	ldr	r1, [r0, #0]
c0d039de:	227f      	movs	r2, #127	; 0x7f
c0d039e0:	4015      	ands	r5, r2
c0d039e2:	2201      	movs	r2, #1
c0d039e4:	40aa      	lsls	r2, r5
c0d039e6:	430a      	orrs	r2, r1
c0d039e8:	6002      	str	r2, [r0, #0]
c0d039ea:	4620      	mov	r0, r4
c0d039ec:	b002      	add	sp, #8
c0d039ee:	bdb0      	pop	{r4, r5, r7, pc}
c0d039f0:	200008d4 	.word	0x200008d4
c0d039f4:	200008d0 	.word	0x200008d0

c0d039f8 <USBD_LL_ClearStallEP>:
c0d039f8:	b5b0      	push	{r4, r5, r7, lr}
c0d039fa:	b082      	sub	sp, #8
c0d039fc:	460d      	mov	r5, r1
c0d039fe:	4668      	mov	r0, sp
c0d03a00:	2400      	movs	r4, #0
c0d03a02:	7144      	strb	r4, [r0, #5]
c0d03a04:	2180      	movs	r1, #128	; 0x80
c0d03a06:	7101      	strb	r1, [r0, #4]
c0d03a08:	70c5      	strb	r5, [r0, #3]
c0d03a0a:	2103      	movs	r1, #3
c0d03a0c:	7081      	strb	r1, [r0, #2]
c0d03a0e:	7044      	strb	r4, [r0, #1]
c0d03a10:	2150      	movs	r1, #80	; 0x50
c0d03a12:	7001      	strb	r1, [r0, #0]
c0d03a14:	2106      	movs	r1, #6
c0d03a16:	f7ff f959 	bl	c0d02ccc <io_seph_send>
c0d03a1a:	0628      	lsls	r0, r5, #24
c0d03a1c:	d501      	bpl.n	c0d03a22 <USBD_LL_ClearStallEP+0x2a>
c0d03a1e:	4807      	ldr	r0, [pc, #28]	; (c0d03a3c <USBD_LL_ClearStallEP+0x44>)
c0d03a20:	e000      	b.n	c0d03a24 <USBD_LL_ClearStallEP+0x2c>
c0d03a22:	4805      	ldr	r0, [pc, #20]	; (c0d03a38 <USBD_LL_ClearStallEP+0x40>)
c0d03a24:	6801      	ldr	r1, [r0, #0]
c0d03a26:	227f      	movs	r2, #127	; 0x7f
c0d03a28:	4015      	ands	r5, r2
c0d03a2a:	2201      	movs	r2, #1
c0d03a2c:	40aa      	lsls	r2, r5
c0d03a2e:	4391      	bics	r1, r2
c0d03a30:	6001      	str	r1, [r0, #0]
c0d03a32:	4620      	mov	r0, r4
c0d03a34:	b002      	add	sp, #8
c0d03a36:	bdb0      	pop	{r4, r5, r7, pc}
c0d03a38:	200008d4 	.word	0x200008d4
c0d03a3c:	200008d0 	.word	0x200008d0

c0d03a40 <USBD_LL_IsStallEP>:
c0d03a40:	0608      	lsls	r0, r1, #24
c0d03a42:	d501      	bpl.n	c0d03a48 <USBD_LL_IsStallEP+0x8>
c0d03a44:	4805      	ldr	r0, [pc, #20]	; (c0d03a5c <USBD_LL_IsStallEP+0x1c>)
c0d03a46:	e000      	b.n	c0d03a4a <USBD_LL_IsStallEP+0xa>
c0d03a48:	4803      	ldr	r0, [pc, #12]	; (c0d03a58 <USBD_LL_IsStallEP+0x18>)
c0d03a4a:	7802      	ldrb	r2, [r0, #0]
c0d03a4c:	207f      	movs	r0, #127	; 0x7f
c0d03a4e:	4001      	ands	r1, r0
c0d03a50:	2001      	movs	r0, #1
c0d03a52:	4088      	lsls	r0, r1
c0d03a54:	4010      	ands	r0, r2
c0d03a56:	4770      	bx	lr
c0d03a58:	200008d4 	.word	0x200008d4
c0d03a5c:	200008d0 	.word	0x200008d0

c0d03a60 <USBD_LL_SetUSBAddress>:
c0d03a60:	b510      	push	{r4, lr}
c0d03a62:	b082      	sub	sp, #8
c0d03a64:	4668      	mov	r0, sp
c0d03a66:	7101      	strb	r1, [r0, #4]
c0d03a68:	2103      	movs	r1, #3
c0d03a6a:	70c1      	strb	r1, [r0, #3]
c0d03a6c:	2102      	movs	r1, #2
c0d03a6e:	7081      	strb	r1, [r0, #2]
c0d03a70:	2400      	movs	r4, #0
c0d03a72:	7044      	strb	r4, [r0, #1]
c0d03a74:	214f      	movs	r1, #79	; 0x4f
c0d03a76:	7001      	strb	r1, [r0, #0]
c0d03a78:	2105      	movs	r1, #5
c0d03a7a:	f7ff f927 	bl	c0d02ccc <io_seph_send>
c0d03a7e:	4620      	mov	r0, r4
c0d03a80:	b002      	add	sp, #8
c0d03a82:	bd10      	pop	{r4, pc}

c0d03a84 <USBD_LL_Transmit>:
c0d03a84:	b5b0      	push	{r4, r5, r7, lr}
c0d03a86:	b082      	sub	sp, #8
c0d03a88:	461c      	mov	r4, r3
c0d03a8a:	4615      	mov	r5, r2
c0d03a8c:	4668      	mov	r0, sp
c0d03a8e:	7143      	strb	r3, [r0, #5]
c0d03a90:	2220      	movs	r2, #32
c0d03a92:	7102      	strb	r2, [r0, #4]
c0d03a94:	70c1      	strb	r1, [r0, #3]
c0d03a96:	2150      	movs	r1, #80	; 0x50
c0d03a98:	7001      	strb	r1, [r0, #0]
c0d03a9a:	1cd9      	adds	r1, r3, #3
c0d03a9c:	7081      	strb	r1, [r0, #2]
c0d03a9e:	0a09      	lsrs	r1, r1, #8
c0d03aa0:	7041      	strb	r1, [r0, #1]
c0d03aa2:	2106      	movs	r1, #6
c0d03aa4:	f7ff f912 	bl	c0d02ccc <io_seph_send>
c0d03aa8:	4628      	mov	r0, r5
c0d03aaa:	4621      	mov	r1, r4
c0d03aac:	f7ff f90e 	bl	c0d02ccc <io_seph_send>
c0d03ab0:	2000      	movs	r0, #0
c0d03ab2:	b002      	add	sp, #8
c0d03ab4:	bdb0      	pop	{r4, r5, r7, pc}

c0d03ab6 <USBD_LL_PrepareReceive>:
c0d03ab6:	b510      	push	{r4, lr}
c0d03ab8:	b082      	sub	sp, #8
c0d03aba:	4668      	mov	r0, sp
c0d03abc:	7142      	strb	r2, [r0, #5]
c0d03abe:	2230      	movs	r2, #48	; 0x30
c0d03ac0:	7102      	strb	r2, [r0, #4]
c0d03ac2:	70c1      	strb	r1, [r0, #3]
c0d03ac4:	2103      	movs	r1, #3
c0d03ac6:	7081      	strb	r1, [r0, #2]
c0d03ac8:	2400      	movs	r4, #0
c0d03aca:	7044      	strb	r4, [r0, #1]
c0d03acc:	2150      	movs	r1, #80	; 0x50
c0d03ace:	7001      	strb	r1, [r0, #0]
c0d03ad0:	2106      	movs	r1, #6
c0d03ad2:	f7ff f8fb 	bl	c0d02ccc <io_seph_send>
c0d03ad6:	4620      	mov	r0, r4
c0d03ad8:	b002      	add	sp, #8
c0d03ada:	bd10      	pop	{r4, pc}

c0d03adc <USBD_Init>:
c0d03adc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d03ade:	b081      	sub	sp, #4
c0d03ae0:	2800      	cmp	r0, #0
c0d03ae2:	d014      	beq.n	c0d03b0e <USBD_Init+0x32>
c0d03ae4:	4615      	mov	r5, r2
c0d03ae6:	460e      	mov	r6, r1
c0d03ae8:	4604      	mov	r4, r0
c0d03aea:	4607      	mov	r7, r0
c0d03aec:	37dc      	adds	r7, #220	; 0xdc
c0d03aee:	2045      	movs	r0, #69	; 0x45
c0d03af0:	0081      	lsls	r1, r0, #2
c0d03af2:	4620      	mov	r0, r4
c0d03af4:	f001 fffc 	bl	c0d05af0 <__aeabi_memclr>
c0d03af8:	2e00      	cmp	r6, #0
c0d03afa:	d000      	beq.n	c0d03afe <USBD_Init+0x22>
c0d03afc:	617e      	str	r6, [r7, #20]
c0d03afe:	7025      	strb	r5, [r4, #0]
c0d03b00:	2001      	movs	r0, #1
c0d03b02:	7038      	strb	r0, [r7, #0]
c0d03b04:	4620      	mov	r0, r4
c0d03b06:	f7ff fed9 	bl	c0d038bc <USBD_LL_Init>
c0d03b0a:	2000      	movs	r0, #0
c0d03b0c:	e000      	b.n	c0d03b10 <USBD_Init+0x34>
c0d03b0e:	2002      	movs	r0, #2
c0d03b10:	b001      	add	sp, #4
c0d03b12:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d03b14 <USBD_DeInit>:
c0d03b14:	b5b0      	push	{r4, r5, r7, lr}
c0d03b16:	4604      	mov	r4, r0
c0d03b18:	20dc      	movs	r0, #220	; 0xdc
c0d03b1a:	2101      	movs	r1, #1
c0d03b1c:	5421      	strb	r1, [r4, r0]
c0d03b1e:	2017      	movs	r0, #23
c0d03b20:	43c5      	mvns	r5, r0
c0d03b22:	1960      	adds	r0, r4, r5
c0d03b24:	2143      	movs	r1, #67	; 0x43
c0d03b26:	0089      	lsls	r1, r1, #2
c0d03b28:	5840      	ldr	r0, [r0, r1]
c0d03b2a:	2800      	cmp	r0, #0
c0d03b2c:	d006      	beq.n	c0d03b3c <USBD_DeInit+0x28>
c0d03b2e:	6840      	ldr	r0, [r0, #4]
c0d03b30:	f7fe fc2e 	bl	c0d02390 <pic>
c0d03b34:	4602      	mov	r2, r0
c0d03b36:	7921      	ldrb	r1, [r4, #4]
c0d03b38:	4620      	mov	r0, r4
c0d03b3a:	4790      	blx	r2
c0d03b3c:	3508      	adds	r5, #8
c0d03b3e:	d1f0      	bne.n	c0d03b22 <USBD_DeInit+0xe>
c0d03b40:	4620      	mov	r0, r4
c0d03b42:	f7ff fef3 	bl	c0d0392c <USBD_LL_Stop>
c0d03b46:	4620      	mov	r0, r4
c0d03b48:	f7ff fec2 	bl	c0d038d0 <USBD_LL_DeInit>
c0d03b4c:	2000      	movs	r0, #0
c0d03b4e:	bdb0      	pop	{r4, r5, r7, pc}

c0d03b50 <USBD_RegisterClassForInterface>:
c0d03b50:	2a00      	cmp	r2, #0
c0d03b52:	d008      	beq.n	c0d03b66 <USBD_RegisterClassForInterface+0x16>
c0d03b54:	4603      	mov	r3, r0
c0d03b56:	2000      	movs	r0, #0
c0d03b58:	2b02      	cmp	r3, #2
c0d03b5a:	d803      	bhi.n	c0d03b64 <USBD_RegisterClassForInterface+0x14>
c0d03b5c:	00db      	lsls	r3, r3, #3
c0d03b5e:	18c9      	adds	r1, r1, r3
c0d03b60:	23f4      	movs	r3, #244	; 0xf4
c0d03b62:	50ca      	str	r2, [r1, r3]
c0d03b64:	4770      	bx	lr
c0d03b66:	2002      	movs	r0, #2
c0d03b68:	4770      	bx	lr

c0d03b6a <USBD_Start>:
c0d03b6a:	b580      	push	{r7, lr}
c0d03b6c:	f7ff fec2 	bl	c0d038f4 <USBD_LL_Start>
c0d03b70:	2000      	movs	r0, #0
c0d03b72:	bd80      	pop	{r7, pc}

c0d03b74 <USBD_SetClassConfig>:
c0d03b74:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d03b76:	b081      	sub	sp, #4
c0d03b78:	460c      	mov	r4, r1
c0d03b7a:	4605      	mov	r5, r0
c0d03b7c:	2600      	movs	r6, #0
c0d03b7e:	27f4      	movs	r7, #244	; 0xf4
c0d03b80:	4628      	mov	r0, r5
c0d03b82:	4631      	mov	r1, r6
c0d03b84:	f000 f95f 	bl	c0d03e46 <usbd_is_valid_intf>
c0d03b88:	2800      	cmp	r0, #0
c0d03b8a:	d007      	beq.n	c0d03b9c <USBD_SetClassConfig+0x28>
c0d03b8c:	59e8      	ldr	r0, [r5, r7]
c0d03b8e:	6800      	ldr	r0, [r0, #0]
c0d03b90:	f7fe fbfe 	bl	c0d02390 <pic>
c0d03b94:	4602      	mov	r2, r0
c0d03b96:	4628      	mov	r0, r5
c0d03b98:	4621      	mov	r1, r4
c0d03b9a:	4790      	blx	r2
c0d03b9c:	3708      	adds	r7, #8
c0d03b9e:	1c76      	adds	r6, r6, #1
c0d03ba0:	2e03      	cmp	r6, #3
c0d03ba2:	d1ed      	bne.n	c0d03b80 <USBD_SetClassConfig+0xc>
c0d03ba4:	2000      	movs	r0, #0
c0d03ba6:	b001      	add	sp, #4
c0d03ba8:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d03baa <USBD_ClrClassConfig>:
c0d03baa:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d03bac:	b081      	sub	sp, #4
c0d03bae:	460c      	mov	r4, r1
c0d03bb0:	4605      	mov	r5, r0
c0d03bb2:	2600      	movs	r6, #0
c0d03bb4:	27f4      	movs	r7, #244	; 0xf4
c0d03bb6:	4628      	mov	r0, r5
c0d03bb8:	4631      	mov	r1, r6
c0d03bba:	f000 f944 	bl	c0d03e46 <usbd_is_valid_intf>
c0d03bbe:	2800      	cmp	r0, #0
c0d03bc0:	d007      	beq.n	c0d03bd2 <USBD_ClrClassConfig+0x28>
c0d03bc2:	59e8      	ldr	r0, [r5, r7]
c0d03bc4:	6840      	ldr	r0, [r0, #4]
c0d03bc6:	f7fe fbe3 	bl	c0d02390 <pic>
c0d03bca:	4602      	mov	r2, r0
c0d03bcc:	4628      	mov	r0, r5
c0d03bce:	4621      	mov	r1, r4
c0d03bd0:	4790      	blx	r2
c0d03bd2:	3708      	adds	r7, #8
c0d03bd4:	1c76      	adds	r6, r6, #1
c0d03bd6:	2e03      	cmp	r6, #3
c0d03bd8:	d1ed      	bne.n	c0d03bb6 <USBD_ClrClassConfig+0xc>
c0d03bda:	2000      	movs	r0, #0
c0d03bdc:	b001      	add	sp, #4
c0d03bde:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d03be0 <USBD_LL_SetupStage>:
c0d03be0:	b570      	push	{r4, r5, r6, lr}
c0d03be2:	4604      	mov	r4, r0
c0d03be4:	4606      	mov	r6, r0
c0d03be6:	36d4      	adds	r6, #212	; 0xd4
c0d03be8:	4635      	mov	r5, r6
c0d03bea:	3514      	adds	r5, #20
c0d03bec:	4628      	mov	r0, r5
c0d03bee:	f000 fb61 	bl	c0d042b4 <USBD_ParseSetupRequest>
c0d03bf2:	20d4      	movs	r0, #212	; 0xd4
c0d03bf4:	2101      	movs	r1, #1
c0d03bf6:	5021      	str	r1, [r4, r0]
c0d03bf8:	20ee      	movs	r0, #238	; 0xee
c0d03bfa:	5a20      	ldrh	r0, [r4, r0]
c0d03bfc:	6070      	str	r0, [r6, #4]
c0d03bfe:	7d31      	ldrb	r1, [r6, #20]
c0d03c00:	201f      	movs	r0, #31
c0d03c02:	4008      	ands	r0, r1
c0d03c04:	2802      	cmp	r0, #2
c0d03c06:	d008      	beq.n	c0d03c1a <USBD_LL_SetupStage+0x3a>
c0d03c08:	2801      	cmp	r0, #1
c0d03c0a:	d00b      	beq.n	c0d03c24 <USBD_LL_SetupStage+0x44>
c0d03c0c:	2800      	cmp	r0, #0
c0d03c0e:	d10e      	bne.n	c0d03c2e <USBD_LL_SetupStage+0x4e>
c0d03c10:	4620      	mov	r0, r4
c0d03c12:	4629      	mov	r1, r5
c0d03c14:	f000 f922 	bl	c0d03e5c <USBD_StdDevReq>
c0d03c18:	e00e      	b.n	c0d03c38 <USBD_LL_SetupStage+0x58>
c0d03c1a:	4620      	mov	r0, r4
c0d03c1c:	4629      	mov	r1, r5
c0d03c1e:	f000 fac6 	bl	c0d041ae <USBD_StdEPReq>
c0d03c22:	e009      	b.n	c0d03c38 <USBD_LL_SetupStage+0x58>
c0d03c24:	4620      	mov	r0, r4
c0d03c26:	4629      	mov	r1, r5
c0d03c28:	f000 fa9d 	bl	c0d04166 <USBD_StdItfReq>
c0d03c2c:	e004      	b.n	c0d03c38 <USBD_LL_SetupStage+0x58>
c0d03c2e:	2080      	movs	r0, #128	; 0x80
c0d03c30:	4001      	ands	r1, r0
c0d03c32:	4620      	mov	r0, r4
c0d03c34:	f7ff febc 	bl	c0d039b0 <USBD_LL_StallEP>
c0d03c38:	2000      	movs	r0, #0
c0d03c3a:	bd70      	pop	{r4, r5, r6, pc}

c0d03c3c <USBD_LL_DataOutStage>:
c0d03c3c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d03c3e:	b083      	sub	sp, #12
c0d03c40:	9202      	str	r2, [sp, #8]
c0d03c42:	4604      	mov	r4, r0
c0d03c44:	4606      	mov	r6, r0
c0d03c46:	36dc      	adds	r6, #220	; 0xdc
c0d03c48:	9101      	str	r1, [sp, #4]
c0d03c4a:	2900      	cmp	r1, #0
c0d03c4c:	d01a      	beq.n	c0d03c84 <USBD_LL_DataOutStage+0x48>
c0d03c4e:	2700      	movs	r7, #0
c0d03c50:	25f4      	movs	r5, #244	; 0xf4
c0d03c52:	4620      	mov	r0, r4
c0d03c54:	4639      	mov	r1, r7
c0d03c56:	f000 f8f6 	bl	c0d03e46 <usbd_is_valid_intf>
c0d03c5a:	2800      	cmp	r0, #0
c0d03c5c:	d00d      	beq.n	c0d03c7a <USBD_LL_DataOutStage+0x3e>
c0d03c5e:	5960      	ldr	r0, [r4, r5]
c0d03c60:	6980      	ldr	r0, [r0, #24]
c0d03c62:	2800      	cmp	r0, #0
c0d03c64:	d009      	beq.n	c0d03c7a <USBD_LL_DataOutStage+0x3e>
c0d03c66:	7831      	ldrb	r1, [r6, #0]
c0d03c68:	2903      	cmp	r1, #3
c0d03c6a:	d106      	bne.n	c0d03c7a <USBD_LL_DataOutStage+0x3e>
c0d03c6c:	f7fe fb90 	bl	c0d02390 <pic>
c0d03c70:	4603      	mov	r3, r0
c0d03c72:	4620      	mov	r0, r4
c0d03c74:	9901      	ldr	r1, [sp, #4]
c0d03c76:	9a02      	ldr	r2, [sp, #8]
c0d03c78:	4798      	blx	r3
c0d03c7a:	3508      	adds	r5, #8
c0d03c7c:	1c7f      	adds	r7, r7, #1
c0d03c7e:	2f03      	cmp	r7, #3
c0d03c80:	d1e7      	bne.n	c0d03c52 <USBD_LL_DataOutStage+0x16>
c0d03c82:	e02e      	b.n	c0d03ce2 <USBD_LL_DataOutStage+0xa6>
c0d03c84:	4620      	mov	r0, r4
c0d03c86:	3080      	adds	r0, #128	; 0x80
c0d03c88:	6d41      	ldr	r1, [r0, #84]	; 0x54
c0d03c8a:	2903      	cmp	r1, #3
c0d03c8c:	d129      	bne.n	c0d03ce2 <USBD_LL_DataOutStage+0xa6>
c0d03c8e:	6800      	ldr	r0, [r0, #0]
c0d03c90:	6fe1      	ldr	r1, [r4, #124]	; 0x7c
c0d03c92:	4281      	cmp	r1, r0
c0d03c94:	d90a      	bls.n	c0d03cac <USBD_LL_DataOutStage+0x70>
c0d03c96:	1a09      	subs	r1, r1, r0
c0d03c98:	67e1      	str	r1, [r4, #124]	; 0x7c
c0d03c9a:	4281      	cmp	r1, r0
c0d03c9c:	d300      	bcc.n	c0d03ca0 <USBD_LL_DataOutStage+0x64>
c0d03c9e:	4601      	mov	r1, r0
c0d03ca0:	b28a      	uxth	r2, r1
c0d03ca2:	4620      	mov	r0, r4
c0d03ca4:	9902      	ldr	r1, [sp, #8]
c0d03ca6:	f000 fda3 	bl	c0d047f0 <USBD_CtlContinueRx>
c0d03caa:	e01a      	b.n	c0d03ce2 <USBD_LL_DataOutStage+0xa6>
c0d03cac:	2500      	movs	r5, #0
c0d03cae:	27f4      	movs	r7, #244	; 0xf4
c0d03cb0:	4620      	mov	r0, r4
c0d03cb2:	4629      	mov	r1, r5
c0d03cb4:	f000 f8c7 	bl	c0d03e46 <usbd_is_valid_intf>
c0d03cb8:	2800      	cmp	r0, #0
c0d03cba:	d00b      	beq.n	c0d03cd4 <USBD_LL_DataOutStage+0x98>
c0d03cbc:	59e0      	ldr	r0, [r4, r7]
c0d03cbe:	6900      	ldr	r0, [r0, #16]
c0d03cc0:	2800      	cmp	r0, #0
c0d03cc2:	d007      	beq.n	c0d03cd4 <USBD_LL_DataOutStage+0x98>
c0d03cc4:	7831      	ldrb	r1, [r6, #0]
c0d03cc6:	2903      	cmp	r1, #3
c0d03cc8:	d104      	bne.n	c0d03cd4 <USBD_LL_DataOutStage+0x98>
c0d03cca:	f7fe fb61 	bl	c0d02390 <pic>
c0d03cce:	4601      	mov	r1, r0
c0d03cd0:	4620      	mov	r0, r4
c0d03cd2:	4788      	blx	r1
c0d03cd4:	3708      	adds	r7, #8
c0d03cd6:	1c6d      	adds	r5, r5, #1
c0d03cd8:	2d03      	cmp	r5, #3
c0d03cda:	d1e9      	bne.n	c0d03cb0 <USBD_LL_DataOutStage+0x74>
c0d03cdc:	4620      	mov	r0, r4
c0d03cde:	f000 fd8e 	bl	c0d047fe <USBD_CtlSendStatus>
c0d03ce2:	2000      	movs	r0, #0
c0d03ce4:	b003      	add	sp, #12
c0d03ce6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d03ce8 <USBD_LL_DataInStage>:
c0d03ce8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d03cea:	b081      	sub	sp, #4
c0d03cec:	4604      	mov	r4, r0
c0d03cee:	4607      	mov	r7, r0
c0d03cf0:	37d4      	adds	r7, #212	; 0xd4
c0d03cf2:	9100      	str	r1, [sp, #0]
c0d03cf4:	2900      	cmp	r1, #0
c0d03cf6:	d01a      	beq.n	c0d03d2e <USBD_LL_DataInStage+0x46>
c0d03cf8:	463d      	mov	r5, r7
c0d03cfa:	2600      	movs	r6, #0
c0d03cfc:	27f4      	movs	r7, #244	; 0xf4
c0d03cfe:	4620      	mov	r0, r4
c0d03d00:	4631      	mov	r1, r6
c0d03d02:	f000 f8a0 	bl	c0d03e46 <usbd_is_valid_intf>
c0d03d06:	2800      	cmp	r0, #0
c0d03d08:	d00c      	beq.n	c0d03d24 <USBD_LL_DataInStage+0x3c>
c0d03d0a:	59e0      	ldr	r0, [r4, r7]
c0d03d0c:	6940      	ldr	r0, [r0, #20]
c0d03d0e:	2800      	cmp	r0, #0
c0d03d10:	d008      	beq.n	c0d03d24 <USBD_LL_DataInStage+0x3c>
c0d03d12:	7a29      	ldrb	r1, [r5, #8]
c0d03d14:	2903      	cmp	r1, #3
c0d03d16:	d105      	bne.n	c0d03d24 <USBD_LL_DataInStage+0x3c>
c0d03d18:	f7fe fb3a 	bl	c0d02390 <pic>
c0d03d1c:	4602      	mov	r2, r0
c0d03d1e:	4620      	mov	r0, r4
c0d03d20:	9900      	ldr	r1, [sp, #0]
c0d03d22:	4790      	blx	r2
c0d03d24:	3708      	adds	r7, #8
c0d03d26:	1c76      	adds	r6, r6, #1
c0d03d28:	2e03      	cmp	r6, #3
c0d03d2a:	d1e8      	bne.n	c0d03cfe <USBD_LL_DataInStage+0x16>
c0d03d2c:	e045      	b.n	c0d03dba <USBD_LL_DataInStage+0xd2>
c0d03d2e:	6838      	ldr	r0, [r7, #0]
c0d03d30:	2802      	cmp	r0, #2
c0d03d32:	d13c      	bne.n	c0d03dae <USBD_LL_DataInStage+0xc6>
c0d03d34:	69e0      	ldr	r0, [r4, #28]
c0d03d36:	6a25      	ldr	r5, [r4, #32]
c0d03d38:	42a8      	cmp	r0, r5
c0d03d3a:	d909      	bls.n	c0d03d50 <USBD_LL_DataInStage+0x68>
c0d03d3c:	1b40      	subs	r0, r0, r5
c0d03d3e:	61e0      	str	r0, [r4, #28]
c0d03d40:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
c0d03d42:	1949      	adds	r1, r1, r5
c0d03d44:	63f9      	str	r1, [r7, #60]	; 0x3c
c0d03d46:	b282      	uxth	r2, r0
c0d03d48:	4620      	mov	r0, r4
c0d03d4a:	f000 fd43 	bl	c0d047d4 <USBD_CtlContinueSendData>
c0d03d4e:	e02e      	b.n	c0d03dae <USBD_LL_DataInStage+0xc6>
c0d03d50:	69a6      	ldr	r6, [r4, #24]
c0d03d52:	4630      	mov	r0, r6
c0d03d54:	4629      	mov	r1, r5
c0d03d56:	f001 fdc9 	bl	c0d058ec <__aeabi_uidivmod>
c0d03d5a:	42ae      	cmp	r6, r5
c0d03d5c:	d30c      	bcc.n	c0d03d78 <USBD_LL_DataInStage+0x90>
c0d03d5e:	2900      	cmp	r1, #0
c0d03d60:	d10a      	bne.n	c0d03d78 <USBD_LL_DataInStage+0x90>
c0d03d62:	6878      	ldr	r0, [r7, #4]
c0d03d64:	4286      	cmp	r6, r0
c0d03d66:	d207      	bcs.n	c0d03d78 <USBD_LL_DataInStage+0x90>
c0d03d68:	2500      	movs	r5, #0
c0d03d6a:	4620      	mov	r0, r4
c0d03d6c:	4629      	mov	r1, r5
c0d03d6e:	462a      	mov	r2, r5
c0d03d70:	f000 fd30 	bl	c0d047d4 <USBD_CtlContinueSendData>
c0d03d74:	607d      	str	r5, [r7, #4]
c0d03d76:	e01a      	b.n	c0d03dae <USBD_LL_DataInStage+0xc6>
c0d03d78:	2500      	movs	r5, #0
c0d03d7a:	26f4      	movs	r6, #244	; 0xf4
c0d03d7c:	4620      	mov	r0, r4
c0d03d7e:	4629      	mov	r1, r5
c0d03d80:	f000 f861 	bl	c0d03e46 <usbd_is_valid_intf>
c0d03d84:	2800      	cmp	r0, #0
c0d03d86:	d00b      	beq.n	c0d03da0 <USBD_LL_DataInStage+0xb8>
c0d03d88:	59a0      	ldr	r0, [r4, r6]
c0d03d8a:	68c0      	ldr	r0, [r0, #12]
c0d03d8c:	2800      	cmp	r0, #0
c0d03d8e:	d007      	beq.n	c0d03da0 <USBD_LL_DataInStage+0xb8>
c0d03d90:	7a39      	ldrb	r1, [r7, #8]
c0d03d92:	2903      	cmp	r1, #3
c0d03d94:	d104      	bne.n	c0d03da0 <USBD_LL_DataInStage+0xb8>
c0d03d96:	f7fe fafb 	bl	c0d02390 <pic>
c0d03d9a:	4601      	mov	r1, r0
c0d03d9c:	4620      	mov	r0, r4
c0d03d9e:	4788      	blx	r1
c0d03da0:	3608      	adds	r6, #8
c0d03da2:	1c6d      	adds	r5, r5, #1
c0d03da4:	2d03      	cmp	r5, #3
c0d03da6:	d1e9      	bne.n	c0d03d7c <USBD_LL_DataInStage+0x94>
c0d03da8:	4620      	mov	r0, r4
c0d03daa:	f000 fd34 	bl	c0d04816 <USBD_CtlReceiveStatus>
c0d03dae:	7b38      	ldrb	r0, [r7, #12]
c0d03db0:	2801      	cmp	r0, #1
c0d03db2:	d102      	bne.n	c0d03dba <USBD_LL_DataInStage+0xd2>
c0d03db4:	4639      	mov	r1, r7
c0d03db6:	2000      	movs	r0, #0
c0d03db8:	7338      	strb	r0, [r7, #12]
c0d03dba:	2000      	movs	r0, #0
c0d03dbc:	b001      	add	sp, #4
c0d03dbe:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d03dc0 <USBD_LL_Reset>:
c0d03dc0:	b570      	push	{r4, r5, r6, lr}
c0d03dc2:	4604      	mov	r4, r0
c0d03dc4:	20dc      	movs	r0, #220	; 0xdc
c0d03dc6:	2101      	movs	r1, #1
c0d03dc8:	5421      	strb	r1, [r4, r0]
c0d03dca:	2080      	movs	r0, #128	; 0x80
c0d03dcc:	2140      	movs	r1, #64	; 0x40
c0d03dce:	5021      	str	r1, [r4, r0]
c0d03dd0:	6221      	str	r1, [r4, #32]
c0d03dd2:	2500      	movs	r5, #0
c0d03dd4:	26f4      	movs	r6, #244	; 0xf4
c0d03dd6:	4620      	mov	r0, r4
c0d03dd8:	4629      	mov	r1, r5
c0d03dda:	f000 f834 	bl	c0d03e46 <usbd_is_valid_intf>
c0d03dde:	2800      	cmp	r0, #0
c0d03de0:	d007      	beq.n	c0d03df2 <USBD_LL_Reset+0x32>
c0d03de2:	59a0      	ldr	r0, [r4, r6]
c0d03de4:	6840      	ldr	r0, [r0, #4]
c0d03de6:	f7fe fad3 	bl	c0d02390 <pic>
c0d03dea:	4602      	mov	r2, r0
c0d03dec:	7921      	ldrb	r1, [r4, #4]
c0d03dee:	4620      	mov	r0, r4
c0d03df0:	4790      	blx	r2
c0d03df2:	3608      	adds	r6, #8
c0d03df4:	1c6d      	adds	r5, r5, #1
c0d03df6:	2d03      	cmp	r5, #3
c0d03df8:	d1ed      	bne.n	c0d03dd6 <USBD_LL_Reset+0x16>
c0d03dfa:	2000      	movs	r0, #0
c0d03dfc:	bd70      	pop	{r4, r5, r6, pc}

c0d03dfe <USBD_LL_SetSpeed>:
c0d03dfe:	7401      	strb	r1, [r0, #16]
c0d03e00:	2000      	movs	r0, #0
c0d03e02:	4770      	bx	lr

c0d03e04 <USBD_LL_Suspend>:
c0d03e04:	2000      	movs	r0, #0
c0d03e06:	4770      	bx	lr

c0d03e08 <USBD_LL_Resume>:
c0d03e08:	2000      	movs	r0, #0
c0d03e0a:	4770      	bx	lr

c0d03e0c <USBD_LL_SOF>:
c0d03e0c:	b570      	push	{r4, r5, r6, lr}
c0d03e0e:	4604      	mov	r4, r0
c0d03e10:	20dc      	movs	r0, #220	; 0xdc
c0d03e12:	5c20      	ldrb	r0, [r4, r0]
c0d03e14:	2803      	cmp	r0, #3
c0d03e16:	d114      	bne.n	c0d03e42 <USBD_LL_SOF+0x36>
c0d03e18:	2500      	movs	r5, #0
c0d03e1a:	26f4      	movs	r6, #244	; 0xf4
c0d03e1c:	4620      	mov	r0, r4
c0d03e1e:	4629      	mov	r1, r5
c0d03e20:	f000 f811 	bl	c0d03e46 <usbd_is_valid_intf>
c0d03e24:	2800      	cmp	r0, #0
c0d03e26:	d008      	beq.n	c0d03e3a <USBD_LL_SOF+0x2e>
c0d03e28:	59a0      	ldr	r0, [r4, r6]
c0d03e2a:	69c0      	ldr	r0, [r0, #28]
c0d03e2c:	2800      	cmp	r0, #0
c0d03e2e:	d004      	beq.n	c0d03e3a <USBD_LL_SOF+0x2e>
c0d03e30:	f7fe faae 	bl	c0d02390 <pic>
c0d03e34:	4601      	mov	r1, r0
c0d03e36:	4620      	mov	r0, r4
c0d03e38:	4788      	blx	r1
c0d03e3a:	3608      	adds	r6, #8
c0d03e3c:	1c6d      	adds	r5, r5, #1
c0d03e3e:	2d03      	cmp	r5, #3
c0d03e40:	d1ec      	bne.n	c0d03e1c <USBD_LL_SOF+0x10>
c0d03e42:	2000      	movs	r0, #0
c0d03e44:	bd70      	pop	{r4, r5, r6, pc}

c0d03e46 <usbd_is_valid_intf>:
c0d03e46:	2902      	cmp	r1, #2
c0d03e48:	d806      	bhi.n	c0d03e58 <usbd_is_valid_intf+0x12>
c0d03e4a:	00c9      	lsls	r1, r1, #3
c0d03e4c:	1840      	adds	r0, r0, r1
c0d03e4e:	21f4      	movs	r1, #244	; 0xf4
c0d03e50:	5840      	ldr	r0, [r0, r1]
c0d03e52:	1e41      	subs	r1, r0, #1
c0d03e54:	4188      	sbcs	r0, r1
c0d03e56:	4770      	bx	lr
c0d03e58:	2000      	movs	r0, #0
c0d03e5a:	4770      	bx	lr

c0d03e5c <USBD_StdDevReq>:
c0d03e5c:	b580      	push	{r7, lr}
c0d03e5e:	784a      	ldrb	r2, [r1, #1]
c0d03e60:	2a04      	cmp	r2, #4
c0d03e62:	dd08      	ble.n	c0d03e76 <USBD_StdDevReq+0x1a>
c0d03e64:	2a07      	cmp	r2, #7
c0d03e66:	dc0f      	bgt.n	c0d03e88 <USBD_StdDevReq+0x2c>
c0d03e68:	2a05      	cmp	r2, #5
c0d03e6a:	d014      	beq.n	c0d03e96 <USBD_StdDevReq+0x3a>
c0d03e6c:	2a06      	cmp	r2, #6
c0d03e6e:	d11b      	bne.n	c0d03ea8 <USBD_StdDevReq+0x4c>
c0d03e70:	f000 f821 	bl	c0d03eb6 <USBD_GetDescriptor>
c0d03e74:	e01d      	b.n	c0d03eb2 <USBD_StdDevReq+0x56>
c0d03e76:	2a00      	cmp	r2, #0
c0d03e78:	d010      	beq.n	c0d03e9c <USBD_StdDevReq+0x40>
c0d03e7a:	2a01      	cmp	r2, #1
c0d03e7c:	d017      	beq.n	c0d03eae <USBD_StdDevReq+0x52>
c0d03e7e:	2a03      	cmp	r2, #3
c0d03e80:	d112      	bne.n	c0d03ea8 <USBD_StdDevReq+0x4c>
c0d03e82:	f000 f92a 	bl	c0d040da <USBD_SetFeature>
c0d03e86:	e014      	b.n	c0d03eb2 <USBD_StdDevReq+0x56>
c0d03e88:	2a08      	cmp	r2, #8
c0d03e8a:	d00a      	beq.n	c0d03ea2 <USBD_StdDevReq+0x46>
c0d03e8c:	2a09      	cmp	r2, #9
c0d03e8e:	d10b      	bne.n	c0d03ea8 <USBD_StdDevReq+0x4c>
c0d03e90:	f000 f8b1 	bl	c0d03ff6 <USBD_SetConfig>
c0d03e94:	e00d      	b.n	c0d03eb2 <USBD_StdDevReq+0x56>
c0d03e96:	f000 f88b 	bl	c0d03fb0 <USBD_SetAddress>
c0d03e9a:	e00a      	b.n	c0d03eb2 <USBD_StdDevReq+0x56>
c0d03e9c:	f000 f8f9 	bl	c0d04092 <USBD_GetStatus>
c0d03ea0:	e007      	b.n	c0d03eb2 <USBD_StdDevReq+0x56>
c0d03ea2:	f000 f8df 	bl	c0d04064 <USBD_GetConfig>
c0d03ea6:	e004      	b.n	c0d03eb2 <USBD_StdDevReq+0x56>
c0d03ea8:	f000 fbce 	bl	c0d04648 <USBD_CtlError>
c0d03eac:	e001      	b.n	c0d03eb2 <USBD_StdDevReq+0x56>
c0d03eae:	f000 f931 	bl	c0d04114 <USBD_ClrFeature>
c0d03eb2:	2000      	movs	r0, #0
c0d03eb4:	bd80      	pop	{r7, pc}

c0d03eb6 <USBD_GetDescriptor>:
c0d03eb6:	b5b0      	push	{r4, r5, r7, lr}
c0d03eb8:	b082      	sub	sp, #8
c0d03eba:	460d      	mov	r5, r1
c0d03ebc:	4604      	mov	r4, r0
c0d03ebe:	a801      	add	r0, sp, #4
c0d03ec0:	2100      	movs	r1, #0
c0d03ec2:	8001      	strh	r1, [r0, #0]
c0d03ec4:	4620      	mov	r0, r4
c0d03ec6:	30f0      	adds	r0, #240	; 0xf0
c0d03ec8:	886b      	ldrh	r3, [r5, #2]
c0d03eca:	0a1a      	lsrs	r2, r3, #8
c0d03ecc:	2a05      	cmp	r2, #5
c0d03ece:	dc11      	bgt.n	c0d03ef4 <USBD_GetDescriptor+0x3e>
c0d03ed0:	2a01      	cmp	r2, #1
c0d03ed2:	d01a      	beq.n	c0d03f0a <USBD_GetDescriptor+0x54>
c0d03ed4:	2a02      	cmp	r2, #2
c0d03ed6:	d021      	beq.n	c0d03f1c <USBD_GetDescriptor+0x66>
c0d03ed8:	2a03      	cmp	r2, #3
c0d03eda:	d132      	bne.n	c0d03f42 <USBD_GetDescriptor+0x8c>
c0d03edc:	b2d9      	uxtb	r1, r3
c0d03ede:	2902      	cmp	r1, #2
c0d03ee0:	dc34      	bgt.n	c0d03f4c <USBD_GetDescriptor+0x96>
c0d03ee2:	2900      	cmp	r1, #0
c0d03ee4:	d058      	beq.n	c0d03f98 <USBD_GetDescriptor+0xe2>
c0d03ee6:	2901      	cmp	r1, #1
c0d03ee8:	d05c      	beq.n	c0d03fa4 <USBD_GetDescriptor+0xee>
c0d03eea:	2902      	cmp	r1, #2
c0d03eec:	d129      	bne.n	c0d03f42 <USBD_GetDescriptor+0x8c>
c0d03eee:	6800      	ldr	r0, [r0, #0]
c0d03ef0:	68c0      	ldr	r0, [r0, #12]
c0d03ef2:	e00c      	b.n	c0d03f0e <USBD_GetDescriptor+0x58>
c0d03ef4:	2a06      	cmp	r2, #6
c0d03ef6:	d019      	beq.n	c0d03f2c <USBD_GetDescriptor+0x76>
c0d03ef8:	2a07      	cmp	r2, #7
c0d03efa:	d01f      	beq.n	c0d03f3c <USBD_GetDescriptor+0x86>
c0d03efc:	2a0f      	cmp	r2, #15
c0d03efe:	d120      	bne.n	c0d03f42 <USBD_GetDescriptor+0x8c>
c0d03f00:	6800      	ldr	r0, [r0, #0]
c0d03f02:	69c0      	ldr	r0, [r0, #28]
c0d03f04:	2800      	cmp	r0, #0
c0d03f06:	d102      	bne.n	c0d03f0e <USBD_GetDescriptor+0x58>
c0d03f08:	e01b      	b.n	c0d03f42 <USBD_GetDescriptor+0x8c>
c0d03f0a:	6800      	ldr	r0, [r0, #0]
c0d03f0c:	6800      	ldr	r0, [r0, #0]
c0d03f0e:	f7fe fa3f 	bl	c0d02390 <pic>
c0d03f12:	4602      	mov	r2, r0
c0d03f14:	7c20      	ldrb	r0, [r4, #16]
c0d03f16:	a901      	add	r1, sp, #4
c0d03f18:	4790      	blx	r2
c0d03f1a:	e02b      	b.n	c0d03f74 <USBD_GetDescriptor+0xbe>
c0d03f1c:	6840      	ldr	r0, [r0, #4]
c0d03f1e:	2800      	cmp	r0, #0
c0d03f20:	d029      	beq.n	c0d03f76 <USBD_GetDescriptor+0xc0>
c0d03f22:	7c21      	ldrb	r1, [r4, #16]
c0d03f24:	2900      	cmp	r1, #0
c0d03f26:	d01f      	beq.n	c0d03f68 <USBD_GetDescriptor+0xb2>
c0d03f28:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
c0d03f2a:	e01e      	b.n	c0d03f6a <USBD_GetDescriptor+0xb4>
c0d03f2c:	7c21      	ldrb	r1, [r4, #16]
c0d03f2e:	2900      	cmp	r1, #0
c0d03f30:	d107      	bne.n	c0d03f42 <USBD_GetDescriptor+0x8c>
c0d03f32:	6840      	ldr	r0, [r0, #4]
c0d03f34:	2800      	cmp	r0, #0
c0d03f36:	d004      	beq.n	c0d03f42 <USBD_GetDescriptor+0x8c>
c0d03f38:	6b40      	ldr	r0, [r0, #52]	; 0x34
c0d03f3a:	e016      	b.n	c0d03f6a <USBD_GetDescriptor+0xb4>
c0d03f3c:	7c21      	ldrb	r1, [r4, #16]
c0d03f3e:	2900      	cmp	r1, #0
c0d03f40:	d00d      	beq.n	c0d03f5e <USBD_GetDescriptor+0xa8>
c0d03f42:	4620      	mov	r0, r4
c0d03f44:	4629      	mov	r1, r5
c0d03f46:	f000 fb7f 	bl	c0d04648 <USBD_CtlError>
c0d03f4a:	e023      	b.n	c0d03f94 <USBD_GetDescriptor+0xde>
c0d03f4c:	2903      	cmp	r1, #3
c0d03f4e:	d026      	beq.n	c0d03f9e <USBD_GetDescriptor+0xe8>
c0d03f50:	2904      	cmp	r1, #4
c0d03f52:	d02a      	beq.n	c0d03faa <USBD_GetDescriptor+0xf4>
c0d03f54:	2905      	cmp	r1, #5
c0d03f56:	d1f4      	bne.n	c0d03f42 <USBD_GetDescriptor+0x8c>
c0d03f58:	6800      	ldr	r0, [r0, #0]
c0d03f5a:	6980      	ldr	r0, [r0, #24]
c0d03f5c:	e7d7      	b.n	c0d03f0e <USBD_GetDescriptor+0x58>
c0d03f5e:	6840      	ldr	r0, [r0, #4]
c0d03f60:	2800      	cmp	r0, #0
c0d03f62:	d0ee      	beq.n	c0d03f42 <USBD_GetDescriptor+0x8c>
c0d03f64:	6b00      	ldr	r0, [r0, #48]	; 0x30
c0d03f66:	e000      	b.n	c0d03f6a <USBD_GetDescriptor+0xb4>
c0d03f68:	6a80      	ldr	r0, [r0, #40]	; 0x28
c0d03f6a:	f7fe fa11 	bl	c0d02390 <pic>
c0d03f6e:	4601      	mov	r1, r0
c0d03f70:	a801      	add	r0, sp, #4
c0d03f72:	4788      	blx	r1
c0d03f74:	4601      	mov	r1, r0
c0d03f76:	a801      	add	r0, sp, #4
c0d03f78:	8802      	ldrh	r2, [r0, #0]
c0d03f7a:	2a00      	cmp	r2, #0
c0d03f7c:	d00a      	beq.n	c0d03f94 <USBD_GetDescriptor+0xde>
c0d03f7e:	88e8      	ldrh	r0, [r5, #6]
c0d03f80:	2800      	cmp	r0, #0
c0d03f82:	d007      	beq.n	c0d03f94 <USBD_GetDescriptor+0xde>
c0d03f84:	4282      	cmp	r2, r0
c0d03f86:	d300      	bcc.n	c0d03f8a <USBD_GetDescriptor+0xd4>
c0d03f88:	4602      	mov	r2, r0
c0d03f8a:	a801      	add	r0, sp, #4
c0d03f8c:	8002      	strh	r2, [r0, #0]
c0d03f8e:	4620      	mov	r0, r4
c0d03f90:	f000 fc0a 	bl	c0d047a8 <USBD_CtlSendData>
c0d03f94:	b002      	add	sp, #8
c0d03f96:	bdb0      	pop	{r4, r5, r7, pc}
c0d03f98:	6800      	ldr	r0, [r0, #0]
c0d03f9a:	6840      	ldr	r0, [r0, #4]
c0d03f9c:	e7b7      	b.n	c0d03f0e <USBD_GetDescriptor+0x58>
c0d03f9e:	6800      	ldr	r0, [r0, #0]
c0d03fa0:	6900      	ldr	r0, [r0, #16]
c0d03fa2:	e7b4      	b.n	c0d03f0e <USBD_GetDescriptor+0x58>
c0d03fa4:	6800      	ldr	r0, [r0, #0]
c0d03fa6:	6880      	ldr	r0, [r0, #8]
c0d03fa8:	e7b1      	b.n	c0d03f0e <USBD_GetDescriptor+0x58>
c0d03faa:	6800      	ldr	r0, [r0, #0]
c0d03fac:	6940      	ldr	r0, [r0, #20]
c0d03fae:	e7ae      	b.n	c0d03f0e <USBD_GetDescriptor+0x58>

c0d03fb0 <USBD_SetAddress>:
c0d03fb0:	b570      	push	{r4, r5, r6, lr}
c0d03fb2:	4604      	mov	r4, r0
c0d03fb4:	8888      	ldrh	r0, [r1, #4]
c0d03fb6:	2800      	cmp	r0, #0
c0d03fb8:	d107      	bne.n	c0d03fca <USBD_SetAddress+0x1a>
c0d03fba:	88c8      	ldrh	r0, [r1, #6]
c0d03fbc:	2800      	cmp	r0, #0
c0d03fbe:	d104      	bne.n	c0d03fca <USBD_SetAddress+0x1a>
c0d03fc0:	4626      	mov	r6, r4
c0d03fc2:	36dc      	adds	r6, #220	; 0xdc
c0d03fc4:	7830      	ldrb	r0, [r6, #0]
c0d03fc6:	2803      	cmp	r0, #3
c0d03fc8:	d103      	bne.n	c0d03fd2 <USBD_SetAddress+0x22>
c0d03fca:	4620      	mov	r0, r4
c0d03fcc:	f000 fb3c 	bl	c0d04648 <USBD_CtlError>
c0d03fd0:	bd70      	pop	{r4, r5, r6, pc}
c0d03fd2:	7888      	ldrb	r0, [r1, #2]
c0d03fd4:	257f      	movs	r5, #127	; 0x7f
c0d03fd6:	4005      	ands	r5, r0
c0d03fd8:	70b5      	strb	r5, [r6, #2]
c0d03fda:	4620      	mov	r0, r4
c0d03fdc:	4629      	mov	r1, r5
c0d03fde:	f7ff fd3f 	bl	c0d03a60 <USBD_LL_SetUSBAddress>
c0d03fe2:	4620      	mov	r0, r4
c0d03fe4:	f000 fc0b 	bl	c0d047fe <USBD_CtlSendStatus>
c0d03fe8:	2d00      	cmp	r5, #0
c0d03fea:	d001      	beq.n	c0d03ff0 <USBD_SetAddress+0x40>
c0d03fec:	2002      	movs	r0, #2
c0d03fee:	e000      	b.n	c0d03ff2 <USBD_SetAddress+0x42>
c0d03ff0:	2001      	movs	r0, #1
c0d03ff2:	7030      	strb	r0, [r6, #0]
c0d03ff4:	bd70      	pop	{r4, r5, r6, pc}

c0d03ff6 <USBD_SetConfig>:
c0d03ff6:	b570      	push	{r4, r5, r6, lr}
c0d03ff8:	460d      	mov	r5, r1
c0d03ffa:	4604      	mov	r4, r0
c0d03ffc:	788e      	ldrb	r6, [r1, #2]
c0d03ffe:	2e02      	cmp	r6, #2
c0d04000:	d21c      	bcs.n	c0d0403c <USBD_SetConfig+0x46>
c0d04002:	20dc      	movs	r0, #220	; 0xdc
c0d04004:	5c21      	ldrb	r1, [r4, r0]
c0d04006:	4620      	mov	r0, r4
c0d04008:	30dc      	adds	r0, #220	; 0xdc
c0d0400a:	2903      	cmp	r1, #3
c0d0400c:	d006      	beq.n	c0d0401c <USBD_SetConfig+0x26>
c0d0400e:	2902      	cmp	r1, #2
c0d04010:	d114      	bne.n	c0d0403c <USBD_SetConfig+0x46>
c0d04012:	2e00      	cmp	r6, #0
c0d04014:	d022      	beq.n	c0d0405c <USBD_SetConfig+0x66>
c0d04016:	2103      	movs	r1, #3
c0d04018:	7001      	strb	r1, [r0, #0]
c0d0401a:	e008      	b.n	c0d0402e <USBD_SetConfig+0x38>
c0d0401c:	2e00      	cmp	r6, #0
c0d0401e:	d012      	beq.n	c0d04046 <USBD_SetConfig+0x50>
c0d04020:	6860      	ldr	r0, [r4, #4]
c0d04022:	42b0      	cmp	r0, r6
c0d04024:	d01a      	beq.n	c0d0405c <USBD_SetConfig+0x66>
c0d04026:	b2c1      	uxtb	r1, r0
c0d04028:	4620      	mov	r0, r4
c0d0402a:	f7ff fdbe 	bl	c0d03baa <USBD_ClrClassConfig>
c0d0402e:	6066      	str	r6, [r4, #4]
c0d04030:	4620      	mov	r0, r4
c0d04032:	4631      	mov	r1, r6
c0d04034:	f7ff fd9e 	bl	c0d03b74 <USBD_SetClassConfig>
c0d04038:	2802      	cmp	r0, #2
c0d0403a:	d10f      	bne.n	c0d0405c <USBD_SetConfig+0x66>
c0d0403c:	4620      	mov	r0, r4
c0d0403e:	4629      	mov	r1, r5
c0d04040:	f000 fb02 	bl	c0d04648 <USBD_CtlError>
c0d04044:	bd70      	pop	{r4, r5, r6, pc}
c0d04046:	2100      	movs	r1, #0
c0d04048:	6061      	str	r1, [r4, #4]
c0d0404a:	2102      	movs	r1, #2
c0d0404c:	7001      	strb	r1, [r0, #0]
c0d0404e:	4620      	mov	r0, r4
c0d04050:	4631      	mov	r1, r6
c0d04052:	f7ff fdaa 	bl	c0d03baa <USBD_ClrClassConfig>
c0d04056:	4620      	mov	r0, r4
c0d04058:	f000 fbd1 	bl	c0d047fe <USBD_CtlSendStatus>
c0d0405c:	4620      	mov	r0, r4
c0d0405e:	f000 fbce 	bl	c0d047fe <USBD_CtlSendStatus>
c0d04062:	bd70      	pop	{r4, r5, r6, pc}

c0d04064 <USBD_GetConfig>:
c0d04064:	b580      	push	{r7, lr}
c0d04066:	88ca      	ldrh	r2, [r1, #6]
c0d04068:	2a01      	cmp	r2, #1
c0d0406a:	d10a      	bne.n	c0d04082 <USBD_GetConfig+0x1e>
c0d0406c:	22dc      	movs	r2, #220	; 0xdc
c0d0406e:	5c82      	ldrb	r2, [r0, r2]
c0d04070:	2a03      	cmp	r2, #3
c0d04072:	d009      	beq.n	c0d04088 <USBD_GetConfig+0x24>
c0d04074:	2a02      	cmp	r2, #2
c0d04076:	d104      	bne.n	c0d04082 <USBD_GetConfig+0x1e>
c0d04078:	2100      	movs	r1, #0
c0d0407a:	6081      	str	r1, [r0, #8]
c0d0407c:	4601      	mov	r1, r0
c0d0407e:	3108      	adds	r1, #8
c0d04080:	e003      	b.n	c0d0408a <USBD_GetConfig+0x26>
c0d04082:	f000 fae1 	bl	c0d04648 <USBD_CtlError>
c0d04086:	bd80      	pop	{r7, pc}
c0d04088:	1d01      	adds	r1, r0, #4
c0d0408a:	2201      	movs	r2, #1
c0d0408c:	f000 fb8c 	bl	c0d047a8 <USBD_CtlSendData>
c0d04090:	bd80      	pop	{r7, pc}

c0d04092 <USBD_GetStatus>:
c0d04092:	b5b0      	push	{r4, r5, r7, lr}
c0d04094:	4604      	mov	r4, r0
c0d04096:	20dc      	movs	r0, #220	; 0xdc
c0d04098:	5c20      	ldrb	r0, [r4, r0]
c0d0409a:	22fe      	movs	r2, #254	; 0xfe
c0d0409c:	4002      	ands	r2, r0
c0d0409e:	2a02      	cmp	r2, #2
c0d040a0:	d10f      	bne.n	c0d040c2 <USBD_GetStatus+0x30>
c0d040a2:	4620      	mov	r0, r4
c0d040a4:	30dc      	adds	r0, #220	; 0xdc
c0d040a6:	2101      	movs	r1, #1
c0d040a8:	60e1      	str	r1, [r4, #12]
c0d040aa:	4625      	mov	r5, r4
c0d040ac:	350c      	adds	r5, #12
c0d040ae:	6880      	ldr	r0, [r0, #8]
c0d040b0:	2800      	cmp	r0, #0
c0d040b2:	d00a      	beq.n	c0d040ca <USBD_GetStatus+0x38>
c0d040b4:	4620      	mov	r0, r4
c0d040b6:	f000 fbae 	bl	c0d04816 <USBD_CtlReceiveStatus>
c0d040ba:	68e1      	ldr	r1, [r4, #12]
c0d040bc:	2002      	movs	r0, #2
c0d040be:	4308      	orrs	r0, r1
c0d040c0:	e004      	b.n	c0d040cc <USBD_GetStatus+0x3a>
c0d040c2:	4620      	mov	r0, r4
c0d040c4:	f000 fac0 	bl	c0d04648 <USBD_CtlError>
c0d040c8:	bdb0      	pop	{r4, r5, r7, pc}
c0d040ca:	2003      	movs	r0, #3
c0d040cc:	60e0      	str	r0, [r4, #12]
c0d040ce:	2202      	movs	r2, #2
c0d040d0:	4620      	mov	r0, r4
c0d040d2:	4629      	mov	r1, r5
c0d040d4:	f000 fb68 	bl	c0d047a8 <USBD_CtlSendData>
c0d040d8:	bdb0      	pop	{r4, r5, r7, pc}

c0d040da <USBD_SetFeature>:
c0d040da:	b5b0      	push	{r4, r5, r7, lr}
c0d040dc:	4604      	mov	r4, r0
c0d040de:	8848      	ldrh	r0, [r1, #2]
c0d040e0:	2801      	cmp	r0, #1
c0d040e2:	d116      	bne.n	c0d04112 <USBD_SetFeature+0x38>
c0d040e4:	460d      	mov	r5, r1
c0d040e6:	20e4      	movs	r0, #228	; 0xe4
c0d040e8:	2101      	movs	r1, #1
c0d040ea:	5021      	str	r1, [r4, r0]
c0d040ec:	7928      	ldrb	r0, [r5, #4]
c0d040ee:	2802      	cmp	r0, #2
c0d040f0:	d80c      	bhi.n	c0d0410c <USBD_SetFeature+0x32>
c0d040f2:	00c0      	lsls	r0, r0, #3
c0d040f4:	1820      	adds	r0, r4, r0
c0d040f6:	21f4      	movs	r1, #244	; 0xf4
c0d040f8:	5840      	ldr	r0, [r0, r1]
c0d040fa:	2800      	cmp	r0, #0
c0d040fc:	d006      	beq.n	c0d0410c <USBD_SetFeature+0x32>
c0d040fe:	6880      	ldr	r0, [r0, #8]
c0d04100:	f7fe f946 	bl	c0d02390 <pic>
c0d04104:	4602      	mov	r2, r0
c0d04106:	4620      	mov	r0, r4
c0d04108:	4629      	mov	r1, r5
c0d0410a:	4790      	blx	r2
c0d0410c:	4620      	mov	r0, r4
c0d0410e:	f000 fb76 	bl	c0d047fe <USBD_CtlSendStatus>
c0d04112:	bdb0      	pop	{r4, r5, r7, pc}

c0d04114 <USBD_ClrFeature>:
c0d04114:	b5b0      	push	{r4, r5, r7, lr}
c0d04116:	460d      	mov	r5, r1
c0d04118:	4604      	mov	r4, r0
c0d0411a:	20dc      	movs	r0, #220	; 0xdc
c0d0411c:	5c20      	ldrb	r0, [r4, r0]
c0d0411e:	21fe      	movs	r1, #254	; 0xfe
c0d04120:	4001      	ands	r1, r0
c0d04122:	2902      	cmp	r1, #2
c0d04124:	d11a      	bne.n	c0d0415c <USBD_ClrFeature+0x48>
c0d04126:	8868      	ldrh	r0, [r5, #2]
c0d04128:	2801      	cmp	r0, #1
c0d0412a:	d11b      	bne.n	c0d04164 <USBD_ClrFeature+0x50>
c0d0412c:	4620      	mov	r0, r4
c0d0412e:	30dc      	adds	r0, #220	; 0xdc
c0d04130:	2100      	movs	r1, #0
c0d04132:	6081      	str	r1, [r0, #8]
c0d04134:	7928      	ldrb	r0, [r5, #4]
c0d04136:	2802      	cmp	r0, #2
c0d04138:	d80c      	bhi.n	c0d04154 <USBD_ClrFeature+0x40>
c0d0413a:	00c0      	lsls	r0, r0, #3
c0d0413c:	1820      	adds	r0, r4, r0
c0d0413e:	21f4      	movs	r1, #244	; 0xf4
c0d04140:	5840      	ldr	r0, [r0, r1]
c0d04142:	2800      	cmp	r0, #0
c0d04144:	d006      	beq.n	c0d04154 <USBD_ClrFeature+0x40>
c0d04146:	6880      	ldr	r0, [r0, #8]
c0d04148:	f7fe f922 	bl	c0d02390 <pic>
c0d0414c:	4602      	mov	r2, r0
c0d0414e:	4620      	mov	r0, r4
c0d04150:	4629      	mov	r1, r5
c0d04152:	4790      	blx	r2
c0d04154:	4620      	mov	r0, r4
c0d04156:	f000 fb52 	bl	c0d047fe <USBD_CtlSendStatus>
c0d0415a:	bdb0      	pop	{r4, r5, r7, pc}
c0d0415c:	4620      	mov	r0, r4
c0d0415e:	4629      	mov	r1, r5
c0d04160:	f000 fa72 	bl	c0d04648 <USBD_CtlError>
c0d04164:	bdb0      	pop	{r4, r5, r7, pc}

c0d04166 <USBD_StdItfReq>:
c0d04166:	b5b0      	push	{r4, r5, r7, lr}
c0d04168:	460d      	mov	r5, r1
c0d0416a:	4604      	mov	r4, r0
c0d0416c:	20dc      	movs	r0, #220	; 0xdc
c0d0416e:	5c20      	ldrb	r0, [r4, r0]
c0d04170:	2803      	cmp	r0, #3
c0d04172:	d116      	bne.n	c0d041a2 <USBD_StdItfReq+0x3c>
c0d04174:	7928      	ldrb	r0, [r5, #4]
c0d04176:	2802      	cmp	r0, #2
c0d04178:	d813      	bhi.n	c0d041a2 <USBD_StdItfReq+0x3c>
c0d0417a:	00c0      	lsls	r0, r0, #3
c0d0417c:	1820      	adds	r0, r4, r0
c0d0417e:	21f4      	movs	r1, #244	; 0xf4
c0d04180:	5840      	ldr	r0, [r0, r1]
c0d04182:	2800      	cmp	r0, #0
c0d04184:	d00d      	beq.n	c0d041a2 <USBD_StdItfReq+0x3c>
c0d04186:	6880      	ldr	r0, [r0, #8]
c0d04188:	f7fe f902 	bl	c0d02390 <pic>
c0d0418c:	4602      	mov	r2, r0
c0d0418e:	4620      	mov	r0, r4
c0d04190:	4629      	mov	r1, r5
c0d04192:	4790      	blx	r2
c0d04194:	88e8      	ldrh	r0, [r5, #6]
c0d04196:	2800      	cmp	r0, #0
c0d04198:	d107      	bne.n	c0d041aa <USBD_StdItfReq+0x44>
c0d0419a:	4620      	mov	r0, r4
c0d0419c:	f000 fb2f 	bl	c0d047fe <USBD_CtlSendStatus>
c0d041a0:	e003      	b.n	c0d041aa <USBD_StdItfReq+0x44>
c0d041a2:	4620      	mov	r0, r4
c0d041a4:	4629      	mov	r1, r5
c0d041a6:	f000 fa4f 	bl	c0d04648 <USBD_CtlError>
c0d041aa:	2000      	movs	r0, #0
c0d041ac:	bdb0      	pop	{r4, r5, r7, pc}

c0d041ae <USBD_StdEPReq>:
c0d041ae:	b5b0      	push	{r4, r5, r7, lr}
c0d041b0:	b082      	sub	sp, #8
c0d041b2:	460d      	mov	r5, r1
c0d041b4:	4604      	mov	r4, r0
c0d041b6:	7909      	ldrb	r1, [r1, #4]
c0d041b8:	207f      	movs	r0, #127	; 0x7f
c0d041ba:	4008      	ands	r0, r1
c0d041bc:	2807      	cmp	r0, #7
c0d041be:	d304      	bcc.n	c0d041ca <USBD_StdEPReq+0x1c>
c0d041c0:	4620      	mov	r0, r4
c0d041c2:	4629      	mov	r1, r5
c0d041c4:	f000 fa40 	bl	c0d04648 <USBD_CtlError>
c0d041c8:	e071      	b.n	c0d042ae <USBD_StdEPReq+0x100>
c0d041ca:	2902      	cmp	r1, #2
c0d041cc:	d812      	bhi.n	c0d041f4 <USBD_StdEPReq+0x46>
c0d041ce:	782a      	ldrb	r2, [r5, #0]
c0d041d0:	2360      	movs	r3, #96	; 0x60
c0d041d2:	4013      	ands	r3, r2
c0d041d4:	2b20      	cmp	r3, #32
c0d041d6:	d10d      	bne.n	c0d041f4 <USBD_StdEPReq+0x46>
c0d041d8:	00ca      	lsls	r2, r1, #3
c0d041da:	18a2      	adds	r2, r4, r2
c0d041dc:	23f4      	movs	r3, #244	; 0xf4
c0d041de:	58d2      	ldr	r2, [r2, r3]
c0d041e0:	2a00      	cmp	r2, #0
c0d041e2:	d007      	beq.n	c0d041f4 <USBD_StdEPReq+0x46>
c0d041e4:	6890      	ldr	r0, [r2, #8]
c0d041e6:	f7fe f8d3 	bl	c0d02390 <pic>
c0d041ea:	4602      	mov	r2, r0
c0d041ec:	4620      	mov	r0, r4
c0d041ee:	4629      	mov	r1, r5
c0d041f0:	4790      	blx	r2
c0d041f2:	e05c      	b.n	c0d042ae <USBD_StdEPReq+0x100>
c0d041f4:	786a      	ldrb	r2, [r5, #1]
c0d041f6:	2a00      	cmp	r2, #0
c0d041f8:	d00a      	beq.n	c0d04210 <USBD_StdEPReq+0x62>
c0d041fa:	2a01      	cmp	r2, #1
c0d041fc:	d011      	beq.n	c0d04222 <USBD_StdEPReq+0x74>
c0d041fe:	2a03      	cmp	r2, #3
c0d04200:	d155      	bne.n	c0d042ae <USBD_StdEPReq+0x100>
c0d04202:	20dc      	movs	r0, #220	; 0xdc
c0d04204:	5c20      	ldrb	r0, [r4, r0]
c0d04206:	2803      	cmp	r0, #3
c0d04208:	d01a      	beq.n	c0d04240 <USBD_StdEPReq+0x92>
c0d0420a:	2802      	cmp	r0, #2
c0d0420c:	d00f      	beq.n	c0d0422e <USBD_StdEPReq+0x80>
c0d0420e:	e7d7      	b.n	c0d041c0 <USBD_StdEPReq+0x12>
c0d04210:	22dc      	movs	r2, #220	; 0xdc
c0d04212:	5ca2      	ldrb	r2, [r4, r2]
c0d04214:	2a03      	cmp	r2, #3
c0d04216:	d02e      	beq.n	c0d04276 <USBD_StdEPReq+0xc8>
c0d04218:	2a02      	cmp	r2, #2
c0d0421a:	d1d1      	bne.n	c0d041c0 <USBD_StdEPReq+0x12>
c0d0421c:	2800      	cmp	r0, #0
c0d0421e:	d10b      	bne.n	c0d04238 <USBD_StdEPReq+0x8a>
c0d04220:	e045      	b.n	c0d042ae <USBD_StdEPReq+0x100>
c0d04222:	22dc      	movs	r2, #220	; 0xdc
c0d04224:	5ca2      	ldrb	r2, [r4, r2]
c0d04226:	2a03      	cmp	r2, #3
c0d04228:	d031      	beq.n	c0d0428e <USBD_StdEPReq+0xe0>
c0d0422a:	2a02      	cmp	r2, #2
c0d0422c:	d1c8      	bne.n	c0d041c0 <USBD_StdEPReq+0x12>
c0d0422e:	2080      	movs	r0, #128	; 0x80
c0d04230:	460a      	mov	r2, r1
c0d04232:	4302      	orrs	r2, r0
c0d04234:	2a80      	cmp	r2, #128	; 0x80
c0d04236:	d03a      	beq.n	c0d042ae <USBD_StdEPReq+0x100>
c0d04238:	4620      	mov	r0, r4
c0d0423a:	f7ff fbb9 	bl	c0d039b0 <USBD_LL_StallEP>
c0d0423e:	e036      	b.n	c0d042ae <USBD_StdEPReq+0x100>
c0d04240:	8868      	ldrh	r0, [r5, #2]
c0d04242:	2800      	cmp	r0, #0
c0d04244:	d107      	bne.n	c0d04256 <USBD_StdEPReq+0xa8>
c0d04246:	2080      	movs	r0, #128	; 0x80
c0d04248:	4308      	orrs	r0, r1
c0d0424a:	2880      	cmp	r0, #128	; 0x80
c0d0424c:	d003      	beq.n	c0d04256 <USBD_StdEPReq+0xa8>
c0d0424e:	4620      	mov	r0, r4
c0d04250:	f7ff fbae 	bl	c0d039b0 <USBD_LL_StallEP>
c0d04254:	7929      	ldrb	r1, [r5, #4]
c0d04256:	2902      	cmp	r1, #2
c0d04258:	d826      	bhi.n	c0d042a8 <USBD_StdEPReq+0xfa>
c0d0425a:	00c8      	lsls	r0, r1, #3
c0d0425c:	1820      	adds	r0, r4, r0
c0d0425e:	21f4      	movs	r1, #244	; 0xf4
c0d04260:	5840      	ldr	r0, [r0, r1]
c0d04262:	2800      	cmp	r0, #0
c0d04264:	d020      	beq.n	c0d042a8 <USBD_StdEPReq+0xfa>
c0d04266:	6880      	ldr	r0, [r0, #8]
c0d04268:	f7fe f892 	bl	c0d02390 <pic>
c0d0426c:	4602      	mov	r2, r0
c0d0426e:	4620      	mov	r0, r4
c0d04270:	4629      	mov	r1, r5
c0d04272:	4790      	blx	r2
c0d04274:	e018      	b.n	c0d042a8 <USBD_StdEPReq+0xfa>
c0d04276:	4620      	mov	r0, r4
c0d04278:	f7ff fbe2 	bl	c0d03a40 <USBD_LL_IsStallEP>
c0d0427c:	1e41      	subs	r1, r0, #1
c0d0427e:	4188      	sbcs	r0, r1
c0d04280:	a901      	add	r1, sp, #4
c0d04282:	8008      	strh	r0, [r1, #0]
c0d04284:	2202      	movs	r2, #2
c0d04286:	4620      	mov	r0, r4
c0d04288:	f000 fa8e 	bl	c0d047a8 <USBD_CtlSendData>
c0d0428c:	e00f      	b.n	c0d042ae <USBD_StdEPReq+0x100>
c0d0428e:	886a      	ldrh	r2, [r5, #2]
c0d04290:	2a00      	cmp	r2, #0
c0d04292:	d10c      	bne.n	c0d042ae <USBD_StdEPReq+0x100>
c0d04294:	2800      	cmp	r0, #0
c0d04296:	d007      	beq.n	c0d042a8 <USBD_StdEPReq+0xfa>
c0d04298:	4620      	mov	r0, r4
c0d0429a:	f7ff fbad 	bl	c0d039f8 <USBD_LL_ClearStallEP>
c0d0429e:	7928      	ldrb	r0, [r5, #4]
c0d042a0:	2802      	cmp	r0, #2
c0d042a2:	d801      	bhi.n	c0d042a8 <USBD_StdEPReq+0xfa>
c0d042a4:	00c0      	lsls	r0, r0, #3
c0d042a6:	e7d9      	b.n	c0d0425c <USBD_StdEPReq+0xae>
c0d042a8:	4620      	mov	r0, r4
c0d042aa:	f000 faa8 	bl	c0d047fe <USBD_CtlSendStatus>
c0d042ae:	2000      	movs	r0, #0
c0d042b0:	b002      	add	sp, #8
c0d042b2:	bdb0      	pop	{r4, r5, r7, pc}

c0d042b4 <USBD_ParseSetupRequest>:
c0d042b4:	780a      	ldrb	r2, [r1, #0]
c0d042b6:	7002      	strb	r2, [r0, #0]
c0d042b8:	784a      	ldrb	r2, [r1, #1]
c0d042ba:	7042      	strb	r2, [r0, #1]
c0d042bc:	788a      	ldrb	r2, [r1, #2]
c0d042be:	78cb      	ldrb	r3, [r1, #3]
c0d042c0:	021b      	lsls	r3, r3, #8
c0d042c2:	189a      	adds	r2, r3, r2
c0d042c4:	8042      	strh	r2, [r0, #2]
c0d042c6:	790a      	ldrb	r2, [r1, #4]
c0d042c8:	794b      	ldrb	r3, [r1, #5]
c0d042ca:	021b      	lsls	r3, r3, #8
c0d042cc:	189a      	adds	r2, r3, r2
c0d042ce:	8082      	strh	r2, [r0, #4]
c0d042d0:	798a      	ldrb	r2, [r1, #6]
c0d042d2:	79c9      	ldrb	r1, [r1, #7]
c0d042d4:	0209      	lsls	r1, r1, #8
c0d042d6:	1889      	adds	r1, r1, r2
c0d042d8:	80c1      	strh	r1, [r0, #6]
c0d042da:	4770      	bx	lr

c0d042dc <USBD_CtlStall>:
c0d042dc:	b510      	push	{r4, lr}
c0d042de:	4604      	mov	r4, r0
c0d042e0:	2180      	movs	r1, #128	; 0x80
c0d042e2:	f7ff fb65 	bl	c0d039b0 <USBD_LL_StallEP>
c0d042e6:	2100      	movs	r1, #0
c0d042e8:	4620      	mov	r0, r4
c0d042ea:	f7ff fb61 	bl	c0d039b0 <USBD_LL_StallEP>
c0d042ee:	bd10      	pop	{r4, pc}

c0d042f0 <USBD_HID_Setup>:
c0d042f0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d042f2:	b083      	sub	sp, #12
c0d042f4:	460e      	mov	r6, r1
c0d042f6:	4605      	mov	r5, r0
c0d042f8:	a802      	add	r0, sp, #8
c0d042fa:	2400      	movs	r4, #0
c0d042fc:	8004      	strh	r4, [r0, #0]
c0d042fe:	a801      	add	r0, sp, #4
c0d04300:	7004      	strb	r4, [r0, #0]
c0d04302:	7809      	ldrb	r1, [r1, #0]
c0d04304:	2060      	movs	r0, #96	; 0x60
c0d04306:	4008      	ands	r0, r1
c0d04308:	d010      	beq.n	c0d0432c <USBD_HID_Setup+0x3c>
c0d0430a:	2820      	cmp	r0, #32
c0d0430c:	d137      	bne.n	c0d0437e <USBD_HID_Setup+0x8e>
c0d0430e:	7870      	ldrb	r0, [r6, #1]
c0d04310:	4601      	mov	r1, r0
c0d04312:	390a      	subs	r1, #10
c0d04314:	2902      	cmp	r1, #2
c0d04316:	d332      	bcc.n	c0d0437e <USBD_HID_Setup+0x8e>
c0d04318:	2802      	cmp	r0, #2
c0d0431a:	d01b      	beq.n	c0d04354 <USBD_HID_Setup+0x64>
c0d0431c:	2803      	cmp	r0, #3
c0d0431e:	d019      	beq.n	c0d04354 <USBD_HID_Setup+0x64>
c0d04320:	4628      	mov	r0, r5
c0d04322:	4631      	mov	r1, r6
c0d04324:	f000 f990 	bl	c0d04648 <USBD_CtlError>
c0d04328:	2402      	movs	r4, #2
c0d0432a:	e028      	b.n	c0d0437e <USBD_HID_Setup+0x8e>
c0d0432c:	7870      	ldrb	r0, [r6, #1]
c0d0432e:	280b      	cmp	r0, #11
c0d04330:	d013      	beq.n	c0d0435a <USBD_HID_Setup+0x6a>
c0d04332:	280a      	cmp	r0, #10
c0d04334:	d00e      	beq.n	c0d04354 <USBD_HID_Setup+0x64>
c0d04336:	2806      	cmp	r0, #6
c0d04338:	d121      	bne.n	c0d0437e <USBD_HID_Setup+0x8e>
c0d0433a:	78f0      	ldrb	r0, [r6, #3]
c0d0433c:	2400      	movs	r4, #0
c0d0433e:	2821      	cmp	r0, #33	; 0x21
c0d04340:	d00f      	beq.n	c0d04362 <USBD_HID_Setup+0x72>
c0d04342:	2822      	cmp	r0, #34	; 0x22
c0d04344:	4622      	mov	r2, r4
c0d04346:	4621      	mov	r1, r4
c0d04348:	d116      	bne.n	c0d04378 <USBD_HID_Setup+0x88>
c0d0434a:	af02      	add	r7, sp, #8
c0d0434c:	4638      	mov	r0, r7
c0d0434e:	f000 f84f 	bl	c0d043f0 <USBD_HID_GetReportDescriptor_impl>
c0d04352:	e00a      	b.n	c0d0436a <USBD_HID_Setup+0x7a>
c0d04354:	a901      	add	r1, sp, #4
c0d04356:	2201      	movs	r2, #1
c0d04358:	e00e      	b.n	c0d04378 <USBD_HID_Setup+0x88>
c0d0435a:	4628      	mov	r0, r5
c0d0435c:	f000 fa4f 	bl	c0d047fe <USBD_CtlSendStatus>
c0d04360:	e00d      	b.n	c0d0437e <USBD_HID_Setup+0x8e>
c0d04362:	af02      	add	r7, sp, #8
c0d04364:	4638      	mov	r0, r7
c0d04366:	f000 f829 	bl	c0d043bc <USBD_HID_GetHidDescriptor_impl>
c0d0436a:	4601      	mov	r1, r0
c0d0436c:	883a      	ldrh	r2, [r7, #0]
c0d0436e:	88f0      	ldrh	r0, [r6, #6]
c0d04370:	4282      	cmp	r2, r0
c0d04372:	d300      	bcc.n	c0d04376 <USBD_HID_Setup+0x86>
c0d04374:	4602      	mov	r2, r0
c0d04376:	803a      	strh	r2, [r7, #0]
c0d04378:	4628      	mov	r0, r5
c0d0437a:	f000 fa15 	bl	c0d047a8 <USBD_CtlSendData>
c0d0437e:	4620      	mov	r0, r4
c0d04380:	b003      	add	sp, #12
c0d04382:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d04384 <USBD_HID_Init>:
c0d04384:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04386:	b081      	sub	sp, #4
c0d04388:	4604      	mov	r4, r0
c0d0438a:	2182      	movs	r1, #130	; 0x82
c0d0438c:	2603      	movs	r6, #3
c0d0438e:	2540      	movs	r5, #64	; 0x40
c0d04390:	4632      	mov	r2, r6
c0d04392:	462b      	mov	r3, r5
c0d04394:	f7ff fadc 	bl	c0d03950 <USBD_LL_OpenEP>
c0d04398:	2702      	movs	r7, #2
c0d0439a:	4620      	mov	r0, r4
c0d0439c:	4639      	mov	r1, r7
c0d0439e:	4632      	mov	r2, r6
c0d043a0:	462b      	mov	r3, r5
c0d043a2:	f7ff fad5 	bl	c0d03950 <USBD_LL_OpenEP>
c0d043a6:	4620      	mov	r0, r4
c0d043a8:	4639      	mov	r1, r7
c0d043aa:	462a      	mov	r2, r5
c0d043ac:	f7ff fb83 	bl	c0d03ab6 <USBD_LL_PrepareReceive>
c0d043b0:	2000      	movs	r0, #0
c0d043b2:	b001      	add	sp, #4
c0d043b4:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d043b6 <USBD_HID_DeInit>:
c0d043b6:	2000      	movs	r0, #0
c0d043b8:	4770      	bx	lr
	...

c0d043bc <USBD_HID_GetHidDescriptor_impl>:
c0d043bc:	21ec      	movs	r1, #236	; 0xec
c0d043be:	4a09      	ldr	r2, [pc, #36]	; (c0d043e4 <USBD_HID_GetHidDescriptor_impl+0x28>)
c0d043c0:	5c51      	ldrb	r1, [r2, r1]
c0d043c2:	2209      	movs	r2, #9
c0d043c4:	2901      	cmp	r1, #1
c0d043c6:	d004      	beq.n	c0d043d2 <USBD_HID_GetHidDescriptor_impl+0x16>
c0d043c8:	2900      	cmp	r1, #0
c0d043ca:	d105      	bne.n	c0d043d8 <USBD_HID_GetHidDescriptor_impl+0x1c>
c0d043cc:	4907      	ldr	r1, [pc, #28]	; (c0d043ec <USBD_HID_GetHidDescriptor_impl+0x30>)
c0d043ce:	4479      	add	r1, pc
c0d043d0:	e004      	b.n	c0d043dc <USBD_HID_GetHidDescriptor_impl+0x20>
c0d043d2:	4905      	ldr	r1, [pc, #20]	; (c0d043e8 <USBD_HID_GetHidDescriptor_impl+0x2c>)
c0d043d4:	4479      	add	r1, pc
c0d043d6:	e001      	b.n	c0d043dc <USBD_HID_GetHidDescriptor_impl+0x20>
c0d043d8:	2200      	movs	r2, #0
c0d043da:	4611      	mov	r1, r2
c0d043dc:	8002      	strh	r2, [r0, #0]
c0d043de:	4608      	mov	r0, r1
c0d043e0:	4770      	bx	lr
c0d043e2:	46c0      	nop			; (mov r8, r8)
c0d043e4:	200008d8 	.word	0x200008d8
c0d043e8:	00003f1c 	.word	0x00003f1c
c0d043ec:	00003f2e 	.word	0x00003f2e

c0d043f0 <USBD_HID_GetReportDescriptor_impl>:
c0d043f0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d043f2:	b081      	sub	sp, #4
c0d043f4:	4602      	mov	r2, r0
c0d043f6:	20ec      	movs	r0, #236	; 0xec
c0d043f8:	4913      	ldr	r1, [pc, #76]	; (c0d04448 <USBD_HID_GetReportDescriptor_impl+0x58>)
c0d043fa:	5c08      	ldrb	r0, [r1, r0]
c0d043fc:	2422      	movs	r4, #34	; 0x22
c0d043fe:	2800      	cmp	r0, #0
c0d04400:	d01a      	beq.n	c0d04438 <USBD_HID_GetReportDescriptor_impl+0x48>
c0d04402:	2801      	cmp	r0, #1
c0d04404:	d11b      	bne.n	c0d0443e <USBD_HID_GetReportDescriptor_impl+0x4e>
c0d04406:	4810      	ldr	r0, [pc, #64]	; (c0d04448 <USBD_HID_GetReportDescriptor_impl+0x58>)
c0d04408:	2181      	movs	r1, #129	; 0x81
c0d0440a:	2703      	movs	r7, #3
c0d0440c:	2640      	movs	r6, #64	; 0x40
c0d0440e:	9200      	str	r2, [sp, #0]
c0d04410:	463a      	mov	r2, r7
c0d04412:	4633      	mov	r3, r6
c0d04414:	f7ff fa9c 	bl	c0d03950 <USBD_LL_OpenEP>
c0d04418:	2501      	movs	r5, #1
c0d0441a:	480b      	ldr	r0, [pc, #44]	; (c0d04448 <USBD_HID_GetReportDescriptor_impl+0x58>)
c0d0441c:	4629      	mov	r1, r5
c0d0441e:	463a      	mov	r2, r7
c0d04420:	4633      	mov	r3, r6
c0d04422:	f7ff fa95 	bl	c0d03950 <USBD_LL_OpenEP>
c0d04426:	4808      	ldr	r0, [pc, #32]	; (c0d04448 <USBD_HID_GetReportDescriptor_impl+0x58>)
c0d04428:	4629      	mov	r1, r5
c0d0442a:	4632      	mov	r2, r6
c0d0442c:	f7ff fb43 	bl	c0d03ab6 <USBD_LL_PrepareReceive>
c0d04430:	9a00      	ldr	r2, [sp, #0]
c0d04432:	4807      	ldr	r0, [pc, #28]	; (c0d04450 <USBD_HID_GetReportDescriptor_impl+0x60>)
c0d04434:	4478      	add	r0, pc
c0d04436:	e004      	b.n	c0d04442 <USBD_HID_GetReportDescriptor_impl+0x52>
c0d04438:	4804      	ldr	r0, [pc, #16]	; (c0d0444c <USBD_HID_GetReportDescriptor_impl+0x5c>)
c0d0443a:	4478      	add	r0, pc
c0d0443c:	e001      	b.n	c0d04442 <USBD_HID_GetReportDescriptor_impl+0x52>
c0d0443e:	2400      	movs	r4, #0
c0d04440:	4620      	mov	r0, r4
c0d04442:	8014      	strh	r4, [r2, #0]
c0d04444:	b001      	add	sp, #4
c0d04446:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d04448:	200008d8 	.word	0x200008d8
c0d0444c:	00003eed 	.word	0x00003eed
c0d04450:	00003ed1 	.word	0x00003ed1

c0d04454 <USBD_U2F_Init>:
c0d04454:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04456:	b081      	sub	sp, #4
c0d04458:	4604      	mov	r4, r0
c0d0445a:	2181      	movs	r1, #129	; 0x81
c0d0445c:	2603      	movs	r6, #3
c0d0445e:	2540      	movs	r5, #64	; 0x40
c0d04460:	4632      	mov	r2, r6
c0d04462:	462b      	mov	r3, r5
c0d04464:	f7ff fa74 	bl	c0d03950 <USBD_LL_OpenEP>
c0d04468:	2701      	movs	r7, #1
c0d0446a:	4620      	mov	r0, r4
c0d0446c:	4639      	mov	r1, r7
c0d0446e:	4632      	mov	r2, r6
c0d04470:	462b      	mov	r3, r5
c0d04472:	f7ff fa6d 	bl	c0d03950 <USBD_LL_OpenEP>
c0d04476:	4620      	mov	r0, r4
c0d04478:	4639      	mov	r1, r7
c0d0447a:	462a      	mov	r2, r5
c0d0447c:	f7ff fb1b 	bl	c0d03ab6 <USBD_LL_PrepareReceive>
c0d04480:	2000      	movs	r0, #0
c0d04482:	b001      	add	sp, #4
c0d04484:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0d04488 <USBD_U2F_DataIn_impl>:
c0d04488:	b580      	push	{r7, lr}
c0d0448a:	2901      	cmp	r1, #1
c0d0448c:	d103      	bne.n	c0d04496 <USBD_U2F_DataIn_impl+0xe>
c0d0448e:	4803      	ldr	r0, [pc, #12]	; (c0d0449c <USBD_U2F_DataIn_impl+0x14>)
c0d04490:	2101      	movs	r1, #1
c0d04492:	f7fe fe6f 	bl	c0d03174 <u2f_transport_sent>
c0d04496:	2000      	movs	r0, #0
c0d04498:	bd80      	pop	{r7, pc}
c0d0449a:	46c0      	nop			; (mov r8, r8)
c0d0449c:	2000056c 	.word	0x2000056c

c0d044a0 <USBD_U2F_DataOut_impl>:
c0d044a0:	b5b0      	push	{r4, r5, r7, lr}
c0d044a2:	2901      	cmp	r1, #1
c0d044a4:	d10e      	bne.n	c0d044c4 <USBD_U2F_DataOut_impl+0x24>
c0d044a6:	4614      	mov	r4, r2
c0d044a8:	2501      	movs	r5, #1
c0d044aa:	2240      	movs	r2, #64	; 0x40
c0d044ac:	4629      	mov	r1, r5
c0d044ae:	f7ff fb02 	bl	c0d03ab6 <USBD_LL_PrepareReceive>
c0d044b2:	4628      	mov	r0, r5
c0d044b4:	f7fd f820 	bl	c0d014f8 <io_seproxyhal_get_ep_rx_size>
c0d044b8:	4602      	mov	r2, r0
c0d044ba:	4803      	ldr	r0, [pc, #12]	; (c0d044c8 <USBD_U2F_DataOut_impl+0x28>)
c0d044bc:	4621      	mov	r1, r4
c0d044be:	462b      	mov	r3, r5
c0d044c0:	f7fe ff7c 	bl	c0d033bc <u2f_transport_received>
c0d044c4:	2000      	movs	r0, #0
c0d044c6:	bdb0      	pop	{r4, r5, r7, pc}
c0d044c8:	2000056c 	.word	0x2000056c

c0d044cc <USBD_HID_DataIn_impl>:
c0d044cc:	b580      	push	{r7, lr}
c0d044ce:	2902      	cmp	r1, #2
c0d044d0:	d103      	bne.n	c0d044da <USBD_HID_DataIn_impl+0xe>
c0d044d2:	4803      	ldr	r0, [pc, #12]	; (c0d044e0 <USBD_HID_DataIn_impl+0x14>)
c0d044d4:	4478      	add	r0, pc
c0d044d6:	f7fd fc47 	bl	c0d01d68 <io_usb_hid_sent>
c0d044da:	2000      	movs	r0, #0
c0d044dc:	bd80      	pop	{r7, pc}
c0d044de:	46c0      	nop			; (mov r8, r8)
c0d044e0:	ffffd0e9 	.word	0xffffd0e9

c0d044e4 <USBD_HID_DataOut_impl>:
c0d044e4:	b5b0      	push	{r4, r5, r7, lr}
c0d044e6:	2902      	cmp	r1, #2
c0d044e8:	d11a      	bne.n	c0d04520 <USBD_HID_DataOut_impl+0x3c>
c0d044ea:	4614      	mov	r4, r2
c0d044ec:	2102      	movs	r1, #2
c0d044ee:	2240      	movs	r2, #64	; 0x40
c0d044f0:	f7ff fae1 	bl	c0d03ab6 <USBD_LL_PrepareReceive>
c0d044f4:	4d0b      	ldr	r5, [pc, #44]	; (c0d04524 <USBD_HID_DataOut_impl+0x40>)
c0d044f6:	79a8      	ldrb	r0, [r5, #6]
c0d044f8:	2800      	cmp	r0, #0
c0d044fa:	d111      	bne.n	c0d04520 <USBD_HID_DataOut_impl+0x3c>
c0d044fc:	2002      	movs	r0, #2
c0d044fe:	f7fc fffb 	bl	c0d014f8 <io_seproxyhal_get_ep_rx_size>
c0d04502:	4602      	mov	r2, r0
c0d04504:	4809      	ldr	r0, [pc, #36]	; (c0d0452c <USBD_HID_DataOut_impl+0x48>)
c0d04506:	4478      	add	r0, pc
c0d04508:	4621      	mov	r1, r4
c0d0450a:	f7fd fb77 	bl	c0d01bfc <io_usb_hid_receive>
c0d0450e:	2802      	cmp	r0, #2
c0d04510:	d106      	bne.n	c0d04520 <USBD_HID_DataOut_impl+0x3c>
c0d04512:	2007      	movs	r0, #7
c0d04514:	7028      	strb	r0, [r5, #0]
c0d04516:	2001      	movs	r0, #1
c0d04518:	71a8      	strb	r0, [r5, #6]
c0d0451a:	4803      	ldr	r0, [pc, #12]	; (c0d04528 <USBD_HID_DataOut_impl+0x44>)
c0d0451c:	6800      	ldr	r0, [r0, #0]
c0d0451e:	8068      	strh	r0, [r5, #2]
c0d04520:	2000      	movs	r0, #0
c0d04522:	bdb0      	pop	{r4, r5, r7, pc}
c0d04524:	20000544 	.word	0x20000544
c0d04528:	200005f4 	.word	0x200005f4
c0d0452c:	ffffd0b7 	.word	0xffffd0b7

c0d04530 <USBD_WEBUSB_Init>:
c0d04530:	b570      	push	{r4, r5, r6, lr}
c0d04532:	4604      	mov	r4, r0
c0d04534:	2183      	movs	r1, #131	; 0x83
c0d04536:	2503      	movs	r5, #3
c0d04538:	2640      	movs	r6, #64	; 0x40
c0d0453a:	462a      	mov	r2, r5
c0d0453c:	4633      	mov	r3, r6
c0d0453e:	f7ff fa07 	bl	c0d03950 <USBD_LL_OpenEP>
c0d04542:	4620      	mov	r0, r4
c0d04544:	4629      	mov	r1, r5
c0d04546:	462a      	mov	r2, r5
c0d04548:	4633      	mov	r3, r6
c0d0454a:	f7ff fa01 	bl	c0d03950 <USBD_LL_OpenEP>
c0d0454e:	4620      	mov	r0, r4
c0d04550:	4629      	mov	r1, r5
c0d04552:	4632      	mov	r2, r6
c0d04554:	f7ff faaf 	bl	c0d03ab6 <USBD_LL_PrepareReceive>
c0d04558:	2000      	movs	r0, #0
c0d0455a:	bd70      	pop	{r4, r5, r6, pc}

c0d0455c <USBD_WEBUSB_DeInit>:
c0d0455c:	2000      	movs	r0, #0
c0d0455e:	4770      	bx	lr

c0d04560 <USBD_WEBUSB_Setup>:
c0d04560:	2000      	movs	r0, #0
c0d04562:	4770      	bx	lr

c0d04564 <USBD_WEBUSB_DataIn>:
c0d04564:	b580      	push	{r7, lr}
c0d04566:	2903      	cmp	r1, #3
c0d04568:	d103      	bne.n	c0d04572 <USBD_WEBUSB_DataIn+0xe>
c0d0456a:	4803      	ldr	r0, [pc, #12]	; (c0d04578 <USBD_WEBUSB_DataIn+0x14>)
c0d0456c:	4478      	add	r0, pc
c0d0456e:	f7fd fbfb 	bl	c0d01d68 <io_usb_hid_sent>
c0d04572:	2000      	movs	r0, #0
c0d04574:	bd80      	pop	{r7, pc}
c0d04576:	46c0      	nop			; (mov r8, r8)
c0d04578:	ffffd061 	.word	0xffffd061

c0d0457c <USBD_WEBUSB_DataOut>:
c0d0457c:	b5b0      	push	{r4, r5, r7, lr}
c0d0457e:	2903      	cmp	r1, #3
c0d04580:	d11a      	bne.n	c0d045b8 <USBD_WEBUSB_DataOut+0x3c>
c0d04582:	4614      	mov	r4, r2
c0d04584:	2103      	movs	r1, #3
c0d04586:	2240      	movs	r2, #64	; 0x40
c0d04588:	f7ff fa95 	bl	c0d03ab6 <USBD_LL_PrepareReceive>
c0d0458c:	4d0b      	ldr	r5, [pc, #44]	; (c0d045bc <USBD_WEBUSB_DataOut+0x40>)
c0d0458e:	79a8      	ldrb	r0, [r5, #6]
c0d04590:	2800      	cmp	r0, #0
c0d04592:	d111      	bne.n	c0d045b8 <USBD_WEBUSB_DataOut+0x3c>
c0d04594:	2003      	movs	r0, #3
c0d04596:	f7fc ffaf 	bl	c0d014f8 <io_seproxyhal_get_ep_rx_size>
c0d0459a:	4602      	mov	r2, r0
c0d0459c:	4809      	ldr	r0, [pc, #36]	; (c0d045c4 <USBD_WEBUSB_DataOut+0x48>)
c0d0459e:	4478      	add	r0, pc
c0d045a0:	4621      	mov	r1, r4
c0d045a2:	f7fd fb2b 	bl	c0d01bfc <io_usb_hid_receive>
c0d045a6:	2802      	cmp	r0, #2
c0d045a8:	d106      	bne.n	c0d045b8 <USBD_WEBUSB_DataOut+0x3c>
c0d045aa:	200b      	movs	r0, #11
c0d045ac:	7028      	strb	r0, [r5, #0]
c0d045ae:	2005      	movs	r0, #5
c0d045b0:	71a8      	strb	r0, [r5, #6]
c0d045b2:	4803      	ldr	r0, [pc, #12]	; (c0d045c0 <USBD_WEBUSB_DataOut+0x44>)
c0d045b4:	6800      	ldr	r0, [r0, #0]
c0d045b6:	8068      	strh	r0, [r5, #2]
c0d045b8:	2000      	movs	r0, #0
c0d045ba:	bdb0      	pop	{r4, r5, r7, pc}
c0d045bc:	20000544 	.word	0x20000544
c0d045c0:	200005f4 	.word	0x200005f4
c0d045c4:	ffffd02f 	.word	0xffffd02f

c0d045c8 <USBD_DeviceDescriptor>:
c0d045c8:	2012      	movs	r0, #18
c0d045ca:	8008      	strh	r0, [r1, #0]
c0d045cc:	4801      	ldr	r0, [pc, #4]	; (c0d045d4 <USBD_DeviceDescriptor+0xc>)
c0d045ce:	4478      	add	r0, pc
c0d045d0:	4770      	bx	lr
c0d045d2:	46c0      	nop			; (mov r8, r8)
c0d045d4:	00003fee 	.word	0x00003fee

c0d045d8 <USBD_LangIDStrDescriptor>:
c0d045d8:	2004      	movs	r0, #4
c0d045da:	8008      	strh	r0, [r1, #0]
c0d045dc:	4801      	ldr	r0, [pc, #4]	; (c0d045e4 <USBD_LangIDStrDescriptor+0xc>)
c0d045de:	4478      	add	r0, pc
c0d045e0:	4770      	bx	lr
c0d045e2:	46c0      	nop			; (mov r8, r8)
c0d045e4:	00003ff0 	.word	0x00003ff0

c0d045e8 <USBD_ManufacturerStrDescriptor>:
c0d045e8:	200e      	movs	r0, #14
c0d045ea:	8008      	strh	r0, [r1, #0]
c0d045ec:	4801      	ldr	r0, [pc, #4]	; (c0d045f4 <USBD_ManufacturerStrDescriptor+0xc>)
c0d045ee:	4478      	add	r0, pc
c0d045f0:	4770      	bx	lr
c0d045f2:	46c0      	nop			; (mov r8, r8)
c0d045f4:	00003fe4 	.word	0x00003fe4

c0d045f8 <USBD_ProductStrDescriptor>:
c0d045f8:	200e      	movs	r0, #14
c0d045fa:	8008      	strh	r0, [r1, #0]
c0d045fc:	4801      	ldr	r0, [pc, #4]	; (c0d04604 <USBD_ProductStrDescriptor+0xc>)
c0d045fe:	4478      	add	r0, pc
c0d04600:	4770      	bx	lr
c0d04602:	46c0      	nop			; (mov r8, r8)
c0d04604:	00003fe2 	.word	0x00003fe2

c0d04608 <USBD_SerialStrDescriptor>:
c0d04608:	200a      	movs	r0, #10
c0d0460a:	8008      	strh	r0, [r1, #0]
c0d0460c:	4801      	ldr	r0, [pc, #4]	; (c0d04614 <USBD_SerialStrDescriptor+0xc>)
c0d0460e:	4478      	add	r0, pc
c0d04610:	4770      	bx	lr
c0d04612:	46c0      	nop			; (mov r8, r8)
c0d04614:	00003fe0 	.word	0x00003fe0

c0d04618 <USBD_ConfigStrDescriptor>:
c0d04618:	200e      	movs	r0, #14
c0d0461a:	8008      	strh	r0, [r1, #0]
c0d0461c:	4801      	ldr	r0, [pc, #4]	; (c0d04624 <USBD_ConfigStrDescriptor+0xc>)
c0d0461e:	4478      	add	r0, pc
c0d04620:	4770      	bx	lr
c0d04622:	46c0      	nop			; (mov r8, r8)
c0d04624:	00003fc2 	.word	0x00003fc2

c0d04628 <USBD_InterfaceStrDescriptor>:
c0d04628:	200e      	movs	r0, #14
c0d0462a:	8008      	strh	r0, [r1, #0]
c0d0462c:	4801      	ldr	r0, [pc, #4]	; (c0d04634 <USBD_InterfaceStrDescriptor+0xc>)
c0d0462e:	4478      	add	r0, pc
c0d04630:	4770      	bx	lr
c0d04632:	46c0      	nop			; (mov r8, r8)
c0d04634:	00003fb2 	.word	0x00003fb2

c0d04638 <USBD_BOSDescriptor>:
c0d04638:	2039      	movs	r0, #57	; 0x39
c0d0463a:	8008      	strh	r0, [r1, #0]
c0d0463c:	4801      	ldr	r0, [pc, #4]	; (c0d04644 <USBD_BOSDescriptor+0xc>)
c0d0463e:	4478      	add	r0, pc
c0d04640:	4770      	bx	lr
c0d04642:	46c0      	nop			; (mov r8, r8)
c0d04644:	00003d22 	.word	0x00003d22

c0d04648 <USBD_CtlError>:
c0d04648:	b580      	push	{r7, lr}
c0d0464a:	780a      	ldrb	r2, [r1, #0]
c0d0464c:	b252      	sxtb	r2, r2
c0d0464e:	2a00      	cmp	r2, #0
c0d04650:	d402      	bmi.n	c0d04658 <USBD_CtlError+0x10>
c0d04652:	f7ff fe43 	bl	c0d042dc <USBD_CtlStall>
c0d04656:	bd80      	pop	{r7, pc}
c0d04658:	784a      	ldrb	r2, [r1, #1]
c0d0465a:	2a06      	cmp	r2, #6
c0d0465c:	d010      	beq.n	c0d04680 <USBD_CtlError+0x38>
c0d0465e:	2a77      	cmp	r2, #119	; 0x77
c0d04660:	d019      	beq.n	c0d04696 <USBD_CtlError+0x4e>
c0d04662:	2a1e      	cmp	r2, #30
c0d04664:	d1f5      	bne.n	c0d04652 <USBD_CtlError+0xa>
c0d04666:	888a      	ldrh	r2, [r1, #4]
c0d04668:	2a02      	cmp	r2, #2
c0d0466a:	d1f2      	bne.n	c0d04652 <USBD_CtlError+0xa>
c0d0466c:	884a      	ldrh	r2, [r1, #2]
c0d0466e:	2a01      	cmp	r2, #1
c0d04670:	d1ef      	bne.n	c0d04652 <USBD_CtlError+0xa>
c0d04672:	88ca      	ldrh	r2, [r1, #6]
c0d04674:	2a17      	cmp	r2, #23
c0d04676:	d300      	bcc.n	c0d0467a <USBD_CtlError+0x32>
c0d04678:	2217      	movs	r2, #23
c0d0467a:	4918      	ldr	r1, [pc, #96]	; (c0d046dc <USBD_CtlError+0x94>)
c0d0467c:	4479      	add	r1, pc
c0d0467e:	e027      	b.n	c0d046d0 <USBD_CtlError+0x88>
c0d04680:	884a      	ldrh	r2, [r1, #2]
c0d04682:	4b15      	ldr	r3, [pc, #84]	; (c0d046d8 <USBD_CtlError+0x90>)
c0d04684:	429a      	cmp	r2, r3
c0d04686:	d1e4      	bne.n	c0d04652 <USBD_CtlError+0xa>
c0d04688:	88ca      	ldrh	r2, [r1, #6]
c0d0468a:	2a12      	cmp	r2, #18
c0d0468c:	d300      	bcc.n	c0d04690 <USBD_CtlError+0x48>
c0d0468e:	2212      	movs	r2, #18
c0d04690:	4913      	ldr	r1, [pc, #76]	; (c0d046e0 <USBD_CtlError+0x98>)
c0d04692:	4479      	add	r1, pc
c0d04694:	e01c      	b.n	c0d046d0 <USBD_CtlError+0x88>
c0d04696:	888a      	ldrh	r2, [r1, #4]
c0d04698:	2a04      	cmp	r2, #4
c0d0469a:	d106      	bne.n	c0d046aa <USBD_CtlError+0x62>
c0d0469c:	88ca      	ldrh	r2, [r1, #6]
c0d0469e:	2a28      	cmp	r2, #40	; 0x28
c0d046a0:	d300      	bcc.n	c0d046a4 <USBD_CtlError+0x5c>
c0d046a2:	2228      	movs	r2, #40	; 0x28
c0d046a4:	490f      	ldr	r1, [pc, #60]	; (c0d046e4 <USBD_CtlError+0x9c>)
c0d046a6:	4479      	add	r1, pc
c0d046a8:	e012      	b.n	c0d046d0 <USBD_CtlError+0x88>
c0d046aa:	888a      	ldrh	r2, [r1, #4]
c0d046ac:	2a05      	cmp	r2, #5
c0d046ae:	d106      	bne.n	c0d046be <USBD_CtlError+0x76>
c0d046b0:	88ca      	ldrh	r2, [r1, #6]
c0d046b2:	2a92      	cmp	r2, #146	; 0x92
c0d046b4:	d300      	bcc.n	c0d046b8 <USBD_CtlError+0x70>
c0d046b6:	2292      	movs	r2, #146	; 0x92
c0d046b8:	490b      	ldr	r1, [pc, #44]	; (c0d046e8 <USBD_CtlError+0xa0>)
c0d046ba:	4479      	add	r1, pc
c0d046bc:	e008      	b.n	c0d046d0 <USBD_CtlError+0x88>
c0d046be:	888a      	ldrh	r2, [r1, #4]
c0d046c0:	2a07      	cmp	r2, #7
c0d046c2:	d1c6      	bne.n	c0d04652 <USBD_CtlError+0xa>
c0d046c4:	88ca      	ldrh	r2, [r1, #6]
c0d046c6:	2ab2      	cmp	r2, #178	; 0xb2
c0d046c8:	d300      	bcc.n	c0d046cc <USBD_CtlError+0x84>
c0d046ca:	22b2      	movs	r2, #178	; 0xb2
c0d046cc:	4907      	ldr	r1, [pc, #28]	; (c0d046ec <USBD_CtlError+0xa4>)
c0d046ce:	4479      	add	r1, pc
c0d046d0:	f000 f86a 	bl	c0d047a8 <USBD_CtlSendData>
c0d046d4:	bd80      	pop	{r7, pc}
c0d046d6:	46c0      	nop			; (mov r8, r8)
c0d046d8:	000003ee 	.word	0x000003ee
c0d046dc:	00003ccd 	.word	0x00003ccd
c0d046e0:	00003d2a 	.word	0x00003d2a
c0d046e4:	00003f52 	.word	0x00003f52
c0d046e8:	00003d14 	.word	0x00003d14
c0d046ec:	00003d92 	.word	0x00003d92

c0d046f0 <USB_power>:
c0d046f0:	b5b0      	push	{r4, r5, r7, lr}
c0d046f2:	4604      	mov	r4, r0
c0d046f4:	2045      	movs	r0, #69	; 0x45
c0d046f6:	0085      	lsls	r5, r0, #2
c0d046f8:	481b      	ldr	r0, [pc, #108]	; (c0d04768 <USB_power+0x78>)
c0d046fa:	4629      	mov	r1, r5
c0d046fc:	f001 f9f8 	bl	c0d05af0 <__aeabi_memclr>
c0d04700:	481a      	ldr	r0, [pc, #104]	; (c0d0476c <USB_power+0x7c>)
c0d04702:	300c      	adds	r0, #12
c0d04704:	2112      	movs	r1, #18
c0d04706:	f001 f9f3 	bl	c0d05af0 <__aeabi_memclr>
c0d0470a:	2c00      	cmp	r4, #0
c0d0470c:	d027      	beq.n	c0d0475e <USB_power+0x6e>
c0d0470e:	4c16      	ldr	r4, [pc, #88]	; (c0d04768 <USB_power+0x78>)
c0d04710:	4620      	mov	r0, r4
c0d04712:	4629      	mov	r1, r5
c0d04714:	f001 f9ec 	bl	c0d05af0 <__aeabi_memclr>
c0d04718:	4917      	ldr	r1, [pc, #92]	; (c0d04778 <USB_power+0x88>)
c0d0471a:	4479      	add	r1, pc
c0d0471c:	2500      	movs	r5, #0
c0d0471e:	4620      	mov	r0, r4
c0d04720:	462a      	mov	r2, r5
c0d04722:	f7ff f9db 	bl	c0d03adc <USBD_Init>
c0d04726:	4a15      	ldr	r2, [pc, #84]	; (c0d0477c <USB_power+0x8c>)
c0d04728:	447a      	add	r2, pc
c0d0472a:	4628      	mov	r0, r5
c0d0472c:	4621      	mov	r1, r4
c0d0472e:	f7ff fa0f 	bl	c0d03b50 <USBD_RegisterClassForInterface>
c0d04732:	2001      	movs	r0, #1
c0d04734:	4a12      	ldr	r2, [pc, #72]	; (c0d04780 <USB_power+0x90>)
c0d04736:	447a      	add	r2, pc
c0d04738:	4621      	mov	r1, r4
c0d0473a:	f7ff fa09 	bl	c0d03b50 <USBD_RegisterClassForInterface>
c0d0473e:	22ff      	movs	r2, #255	; 0xff
c0d04740:	3252      	adds	r2, #82	; 0x52
c0d04742:	480b      	ldr	r0, [pc, #44]	; (c0d04770 <USB_power+0x80>)
c0d04744:	490b      	ldr	r1, [pc, #44]	; (c0d04774 <USB_power+0x84>)
c0d04746:	f7fe fd09 	bl	c0d0315c <u2f_transport_init>
c0d0474a:	2002      	movs	r0, #2
c0d0474c:	4a0d      	ldr	r2, [pc, #52]	; (c0d04784 <USB_power+0x94>)
c0d0474e:	447a      	add	r2, pc
c0d04750:	4621      	mov	r1, r4
c0d04752:	f7ff f9fd 	bl	c0d03b50 <USBD_RegisterClassForInterface>
c0d04756:	4620      	mov	r0, r4
c0d04758:	f7ff fa07 	bl	c0d03b6a <USBD_Start>
c0d0475c:	bdb0      	pop	{r4, r5, r7, pc}
c0d0475e:	4802      	ldr	r0, [pc, #8]	; (c0d04768 <USB_power+0x78>)
c0d04760:	f7ff f9d8 	bl	c0d03b14 <USBD_DeInit>
c0d04764:	bdb0      	pop	{r4, r5, r7, pc}
c0d04766:	46c0      	nop			; (mov r8, r8)
c0d04768:	200008d8 	.word	0x200008d8
c0d0476c:	20000544 	.word	0x20000544
c0d04770:	2000056c 	.word	0x2000056c
c0d04774:	200003f0 	.word	0x200003f0
c0d04778:	00003c82 	.word	0x00003c82
c0d0477c:	00003dec 	.word	0x00003dec
c0d04780:	00003e16 	.word	0x00003e16
c0d04784:	00003e36 	.word	0x00003e36

c0d04788 <USBD_GetCfgDesc_impl>:
c0d04788:	2160      	movs	r1, #96	; 0x60
c0d0478a:	8001      	strh	r1, [r0, #0]
c0d0478c:	4801      	ldr	r0, [pc, #4]	; (c0d04794 <USBD_GetCfgDesc_impl+0xc>)
c0d0478e:	4478      	add	r0, pc
c0d04790:	4770      	bx	lr
c0d04792:	46c0      	nop			; (mov r8, r8)
c0d04794:	00003e92 	.word	0x00003e92

c0d04798 <USBD_GetDeviceQualifierDesc_impl>:
c0d04798:	210a      	movs	r1, #10
c0d0479a:	8001      	strh	r1, [r0, #0]
c0d0479c:	4801      	ldr	r0, [pc, #4]	; (c0d047a4 <USBD_GetDeviceQualifierDesc_impl+0xc>)
c0d0479e:	4478      	add	r0, pc
c0d047a0:	4770      	bx	lr
c0d047a2:	46c0      	nop			; (mov r8, r8)
c0d047a4:	00003ee2 	.word	0x00003ee2

c0d047a8 <USBD_CtlSendData>:
c0d047a8:	b5b0      	push	{r4, r5, r7, lr}
c0d047aa:	460c      	mov	r4, r1
c0d047ac:	21d4      	movs	r1, #212	; 0xd4
c0d047ae:	2302      	movs	r3, #2
c0d047b0:	5043      	str	r3, [r0, r1]
c0d047b2:	6182      	str	r2, [r0, #24]
c0d047b4:	61c2      	str	r2, [r0, #28]
c0d047b6:	4601      	mov	r1, r0
c0d047b8:	31d4      	adds	r1, #212	; 0xd4
c0d047ba:	63cc      	str	r4, [r1, #60]	; 0x3c
c0d047bc:	6a01      	ldr	r1, [r0, #32]
c0d047be:	4291      	cmp	r1, r2
c0d047c0:	d800      	bhi.n	c0d047c4 <USBD_CtlSendData+0x1c>
c0d047c2:	460a      	mov	r2, r1
c0d047c4:	b293      	uxth	r3, r2
c0d047c6:	2500      	movs	r5, #0
c0d047c8:	4629      	mov	r1, r5
c0d047ca:	4622      	mov	r2, r4
c0d047cc:	f7ff f95a 	bl	c0d03a84 <USBD_LL_Transmit>
c0d047d0:	4628      	mov	r0, r5
c0d047d2:	bdb0      	pop	{r4, r5, r7, pc}

c0d047d4 <USBD_CtlContinueSendData>:
c0d047d4:	b5b0      	push	{r4, r5, r7, lr}
c0d047d6:	460c      	mov	r4, r1
c0d047d8:	6a01      	ldr	r1, [r0, #32]
c0d047da:	4291      	cmp	r1, r2
c0d047dc:	d800      	bhi.n	c0d047e0 <USBD_CtlContinueSendData+0xc>
c0d047de:	460a      	mov	r2, r1
c0d047e0:	b293      	uxth	r3, r2
c0d047e2:	2500      	movs	r5, #0
c0d047e4:	4629      	mov	r1, r5
c0d047e6:	4622      	mov	r2, r4
c0d047e8:	f7ff f94c 	bl	c0d03a84 <USBD_LL_Transmit>
c0d047ec:	4628      	mov	r0, r5
c0d047ee:	bdb0      	pop	{r4, r5, r7, pc}

c0d047f0 <USBD_CtlContinueRx>:
c0d047f0:	b510      	push	{r4, lr}
c0d047f2:	2400      	movs	r4, #0
c0d047f4:	4621      	mov	r1, r4
c0d047f6:	f7ff f95e 	bl	c0d03ab6 <USBD_LL_PrepareReceive>
c0d047fa:	4620      	mov	r0, r4
c0d047fc:	bd10      	pop	{r4, pc}

c0d047fe <USBD_CtlSendStatus>:
c0d047fe:	b510      	push	{r4, lr}
c0d04800:	21d4      	movs	r1, #212	; 0xd4
c0d04802:	2204      	movs	r2, #4
c0d04804:	5042      	str	r2, [r0, r1]
c0d04806:	2400      	movs	r4, #0
c0d04808:	4621      	mov	r1, r4
c0d0480a:	4622      	mov	r2, r4
c0d0480c:	4623      	mov	r3, r4
c0d0480e:	f7ff f939 	bl	c0d03a84 <USBD_LL_Transmit>
c0d04812:	4620      	mov	r0, r4
c0d04814:	bd10      	pop	{r4, pc}

c0d04816 <USBD_CtlReceiveStatus>:
c0d04816:	b510      	push	{r4, lr}
c0d04818:	21d4      	movs	r1, #212	; 0xd4
c0d0481a:	2205      	movs	r2, #5
c0d0481c:	5042      	str	r2, [r0, r1]
c0d0481e:	2400      	movs	r4, #0
c0d04820:	4621      	mov	r1, r4
c0d04822:	4622      	mov	r2, r4
c0d04824:	f7ff f947 	bl	c0d03ab6 <USBD_LL_PrepareReceive>
c0d04828:	4620      	mov	r0, r4
c0d0482a:	bd10      	pop	{r4, pc}

c0d0482c <b58_encode>:
c0d0482c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0482e:	b0db      	sub	sp, #364	; 0x16c
c0d04830:	460d      	mov	r5, r1
c0d04832:	4601      	mov	r1, r0
c0d04834:	2600      	movs	r6, #0
c0d04836:	43f0      	mvns	r0, r6
c0d04838:	2da4      	cmp	r5, #164	; 0xa4
c0d0483a:	d876      	bhi.n	c0d0492a <b58_encode+0xfe>
c0d0483c:	461c      	mov	r4, r3
c0d0483e:	9002      	str	r0, [sp, #8]
c0d04840:	9201      	str	r2, [sp, #4]
c0d04842:	a832      	add	r0, sp, #200	; 0xc8
c0d04844:	462a      	mov	r2, r5
c0d04846:	f001 f959 	bl	c0d05afc <__aeabi_memcpy>
c0d0484a:	2d00      	cmp	r5, #0
c0d0484c:	d009      	beq.n	c0d04862 <b58_encode+0x36>
c0d0484e:	2600      	movs	r6, #0
c0d04850:	a832      	add	r0, sp, #200	; 0xc8
c0d04852:	5d80      	ldrb	r0, [r0, r6]
c0d04854:	2800      	cmp	r0, #0
c0d04856:	d104      	bne.n	c0d04862 <b58_encode+0x36>
c0d04858:	1c76      	adds	r6, r6, #1
c0d0485a:	42b5      	cmp	r5, r6
c0d0485c:	d1f8      	bne.n	c0d04850 <b58_encode+0x24>
c0d0485e:	006b      	lsls	r3, r5, #1
c0d04860:	e042      	b.n	c0d048e8 <b58_encode+0xbc>
c0d04862:	006b      	lsls	r3, r5, #1
c0d04864:	b2f0      	uxtb	r0, r6
c0d04866:	42a8      	cmp	r0, r5
c0d04868:	d23d      	bcs.n	c0d048e6 <b58_encode+0xba>
c0d0486a:	9600      	str	r6, [sp, #0]
c0d0486c:	4632      	mov	r2, r6
c0d0486e:	461e      	mov	r6, r3
c0d04870:	9405      	str	r4, [sp, #20]
c0d04872:	9504      	str	r5, [sp, #16]
c0d04874:	9303      	str	r3, [sp, #12]
c0d04876:	b2d1      	uxtb	r1, r2
c0d04878:	42a9      	cmp	r1, r5
c0d0487a:	9608      	str	r6, [sp, #32]
c0d0487c:	9206      	str	r2, [sp, #24]
c0d0487e:	9107      	str	r1, [sp, #28]
c0d04880:	d213      	bcs.n	c0d048aa <b58_encode+0x7e>
c0d04882:	1a6d      	subs	r5, r5, r1
c0d04884:	a832      	add	r0, sp, #200	; 0xc8
c0d04886:	1847      	adds	r7, r0, r1
c0d04888:	2000      	movs	r0, #0
c0d0488a:	7839      	ldrb	r1, [r7, #0]
c0d0488c:	0200      	lsls	r0, r0, #8
c0d0488e:	1846      	adds	r6, r0, r1
c0d04890:	b2b0      	uxth	r0, r6
c0d04892:	243a      	movs	r4, #58	; 0x3a
c0d04894:	4621      	mov	r1, r4
c0d04896:	f000 ffed 	bl	c0d05874 <__udivsi3>
c0d0489a:	7038      	strb	r0, [r7, #0]
c0d0489c:	4344      	muls	r4, r0
c0d0489e:	1b30      	subs	r0, r6, r4
c0d048a0:	1e6d      	subs	r5, r5, #1
c0d048a2:	1c7f      	adds	r7, r7, #1
c0d048a4:	2d00      	cmp	r5, #0
c0d048a6:	d1f0      	bne.n	c0d0488a <b58_encode+0x5e>
c0d048a8:	e000      	b.n	c0d048ac <b58_encode+0x80>
c0d048aa:	2000      	movs	r0, #0
c0d048ac:	b280      	uxth	r0, r0
c0d048ae:	4920      	ldr	r1, [pc, #128]	; (c0d04930 <b58_encode+0x104>)
c0d048b0:	4479      	add	r1, pc
c0d048b2:	5c09      	ldrb	r1, [r1, r0]
c0d048b4:	9e08      	ldr	r6, [sp, #32]
c0d048b6:	1e76      	subs	r6, r6, #1
c0d048b8:	b2f0      	uxtb	r0, r6
c0d048ba:	aa09      	add	r2, sp, #36	; 0x24
c0d048bc:	5411      	strb	r1, [r2, r0]
c0d048be:	a932      	add	r1, sp, #200	; 0xc8
c0d048c0:	9a07      	ldr	r2, [sp, #28]
c0d048c2:	5c89      	ldrb	r1, [r1, r2]
c0d048c4:	2900      	cmp	r1, #0
c0d048c6:	d004      	beq.n	c0d048d2 <b58_encode+0xa6>
c0d048c8:	9c05      	ldr	r4, [sp, #20]
c0d048ca:	9d04      	ldr	r5, [sp, #16]
c0d048cc:	9b03      	ldr	r3, [sp, #12]
c0d048ce:	9a06      	ldr	r2, [sp, #24]
c0d048d0:	e004      	b.n	c0d048dc <b58_encode+0xb0>
c0d048d2:	9a06      	ldr	r2, [sp, #24]
c0d048d4:	1c52      	adds	r2, r2, #1
c0d048d6:	9c05      	ldr	r4, [sp, #20]
c0d048d8:	9d04      	ldr	r5, [sp, #16]
c0d048da:	9b03      	ldr	r3, [sp, #12]
c0d048dc:	b2d1      	uxtb	r1, r2
c0d048de:	42a9      	cmp	r1, r5
c0d048e0:	d3c9      	bcc.n	c0d04876 <b58_encode+0x4a>
c0d048e2:	9d00      	ldr	r5, [sp, #0]
c0d048e4:	e003      	b.n	c0d048ee <b58_encode+0xc2>
c0d048e6:	4635      	mov	r5, r6
c0d048e8:	20fe      	movs	r0, #254	; 0xfe
c0d048ea:	4018      	ands	r0, r3
c0d048ec:	461e      	mov	r6, r3
c0d048ee:	4283      	cmp	r3, r0
c0d048f0:	d90c      	bls.n	c0d0490c <b58_encode+0xe0>
c0d048f2:	a909      	add	r1, sp, #36	; 0x24
c0d048f4:	5c08      	ldrb	r0, [r1, r0]
c0d048f6:	2831      	cmp	r0, #49	; 0x31
c0d048f8:	d108      	bne.n	c0d0490c <b58_encode+0xe0>
c0d048fa:	1c76      	adds	r6, r6, #1
c0d048fc:	b2f0      	uxtb	r0, r6
c0d048fe:	e7f6      	b.n	c0d048ee <b58_encode+0xc2>
c0d04900:	1e76      	subs	r6, r6, #1
c0d04902:	b2f0      	uxtb	r0, r6
c0d04904:	a909      	add	r1, sp, #36	; 0x24
c0d04906:	2231      	movs	r2, #49	; 0x31
c0d04908:	540a      	strb	r2, [r1, r0]
c0d0490a:	1e6d      	subs	r5, r5, #1
c0d0490c:	0628      	lsls	r0, r5, #24
c0d0490e:	d1f7      	bne.n	c0d04900 <b58_encode+0xd4>
c0d04910:	1b98      	subs	r0, r3, r6
c0d04912:	b2c7      	uxtb	r7, r0
c0d04914:	42a7      	cmp	r7, r4
c0d04916:	9802      	ldr	r0, [sp, #8]
c0d04918:	d807      	bhi.n	c0d0492a <b58_encode+0xfe>
c0d0491a:	b2f0      	uxtb	r0, r6
c0d0491c:	a909      	add	r1, sp, #36	; 0x24
c0d0491e:	1809      	adds	r1, r1, r0
c0d04920:	9801      	ldr	r0, [sp, #4]
c0d04922:	463a      	mov	r2, r7
c0d04924:	f001 f8ea 	bl	c0d05afc <__aeabi_memcpy>
c0d04928:	4638      	mov	r0, r7
c0d0492a:	b05b      	add	sp, #364	; 0x16c
c0d0492c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0492e:	46c0      	nop			; (mov r8, r8)
c0d04930:	00003dda 	.word	0x00003dda

c0d04934 <b58_decode>:
c0d04934:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04936:	b0d9      	sub	sp, #356	; 0x164
c0d04938:	9303      	str	r3, [sp, #12]
c0d0493a:	9205      	str	r2, [sp, #20]
c0d0493c:	460f      	mov	r7, r1
c0d0493e:	4604      	mov	r4, r0
c0d04940:	a830      	add	r0, sp, #192	; 0xc0
c0d04942:	26a4      	movs	r6, #164	; 0xa4
c0d04944:	4631      	mov	r1, r6
c0d04946:	f001 f8d3 	bl	c0d05af0 <__aeabi_memclr>
c0d0494a:	a807      	add	r0, sp, #28
c0d0494c:	4631      	mov	r1, r6
c0d0494e:	f001 f8cf 	bl	c0d05af0 <__aeabi_memclr>
c0d04952:	2500      	movs	r5, #0
c0d04954:	43e8      	mvns	r0, r5
c0d04956:	1eb9      	subs	r1, r7, #2
c0d04958:	29a2      	cmp	r1, #162	; 0xa2
c0d0495a:	d869      	bhi.n	c0d04a30 <b58_decode+0xfc>
c0d0495c:	9002      	str	r0, [sp, #8]
c0d0495e:	a830      	add	r0, sp, #192	; 0xc0
c0d04960:	4621      	mov	r1, r4
c0d04962:	463a      	mov	r2, r7
c0d04964:	f001 f8ca 	bl	c0d05afc <__aeabi_memcpy>
c0d04968:	4628      	mov	r0, r5
c0d0496a:	9b05      	ldr	r3, [sp, #20]
c0d0496c:	5761      	ldrsb	r1, [r4, r5]
c0d0496e:	2900      	cmp	r1, #0
c0d04970:	d43f      	bmi.n	c0d049f2 <b58_decode+0xbe>
c0d04972:	b2c9      	uxtb	r1, r1
c0d04974:	4a2f      	ldr	r2, [pc, #188]	; (c0d04a34 <b58_decode+0x100>)
c0d04976:	447a      	add	r2, pc
c0d04978:	5c51      	ldrb	r1, [r2, r1]
c0d0497a:	aa30      	add	r2, sp, #192	; 0xc0
c0d0497c:	5551      	strb	r1, [r2, r5]
c0d0497e:	29ff      	cmp	r1, #255	; 0xff
c0d04980:	d037      	beq.n	c0d049f2 <b58_decode+0xbe>
c0d04982:	1c40      	adds	r0, r0, #1
c0d04984:	b2c5      	uxtb	r5, r0
c0d04986:	42bd      	cmp	r5, r7
c0d04988:	d3f0      	bcc.n	c0d0496c <b58_decode+0x38>
c0d0498a:	2200      	movs	r2, #0
c0d0498c:	4611      	mov	r1, r2
c0d0498e:	a830      	add	r0, sp, #192	; 0xc0
c0d04990:	5c80      	ldrb	r0, [r0, r2]
c0d04992:	2800      	cmp	r0, #0
c0d04994:	d103      	bne.n	c0d0499e <b58_decode+0x6a>
c0d04996:	1c49      	adds	r1, r1, #1
c0d04998:	b2ca      	uxtb	r2, r1
c0d0499a:	42ba      	cmp	r2, r7
c0d0499c:	d3f7      	bcc.n	c0d0498e <b58_decode+0x5a>
c0d0499e:	9201      	str	r2, [sp, #4]
c0d049a0:	b2c8      	uxtb	r0, r1
c0d049a2:	42b8      	cmp	r0, r7
c0d049a4:	d227      	bcs.n	c0d049f6 <b58_decode+0xc2>
c0d049a6:	463a      	mov	r2, r7
c0d049a8:	b2cc      	uxtb	r4, r1
c0d049aa:	42bc      	cmp	r4, r7
c0d049ac:	9006      	str	r0, [sp, #24]
c0d049ae:	d211      	bcs.n	c0d049d4 <b58_decode+0xa0>
c0d049b0:	9204      	str	r2, [sp, #16]
c0d049b2:	2000      	movs	r0, #0
c0d049b4:	460d      	mov	r5, r1
c0d049b6:	aa30      	add	r2, sp, #192	; 0xc0
c0d049b8:	5d16      	ldrb	r6, [r2, r4]
c0d049ba:	233a      	movs	r3, #58	; 0x3a
c0d049bc:	4343      	muls	r3, r0
c0d049be:	199e      	adds	r6, r3, r6
c0d049c0:	0a30      	lsrs	r0, r6, #8
c0d049c2:	5510      	strb	r0, [r2, r4]
c0d049c4:	b2f0      	uxtb	r0, r6
c0d049c6:	1c6d      	adds	r5, r5, #1
c0d049c8:	b2ec      	uxtb	r4, r5
c0d049ca:	42bc      	cmp	r4, r7
c0d049cc:	d3f3      	bcc.n	c0d049b6 <b58_decode+0x82>
c0d049ce:	9b05      	ldr	r3, [sp, #20]
c0d049d0:	9a04      	ldr	r2, [sp, #16]
c0d049d2:	e000      	b.n	c0d049d6 <b58_decode+0xa2>
c0d049d4:	2600      	movs	r6, #0
c0d049d6:	1e52      	subs	r2, r2, #1
c0d049d8:	b2d5      	uxtb	r5, r2
c0d049da:	a807      	add	r0, sp, #28
c0d049dc:	5546      	strb	r6, [r0, r5]
c0d049de:	a830      	add	r0, sp, #192	; 0xc0
c0d049e0:	9c06      	ldr	r4, [sp, #24]
c0d049e2:	5d00      	ldrb	r0, [r0, r4]
c0d049e4:	2800      	cmp	r0, #0
c0d049e6:	d100      	bne.n	c0d049ea <b58_decode+0xb6>
c0d049e8:	1c49      	adds	r1, r1, #1
c0d049ea:	b2c8      	uxtb	r0, r1
c0d049ec:	42b8      	cmp	r0, r7
c0d049ee:	d3db      	bcc.n	c0d049a8 <b58_decode+0x74>
c0d049f0:	e003      	b.n	c0d049fa <b58_decode+0xc6>
c0d049f2:	9802      	ldr	r0, [sp, #8]
c0d049f4:	e01c      	b.n	c0d04a30 <b58_decode+0xfc>
c0d049f6:	b2fd      	uxtb	r5, r7
c0d049f8:	463a      	mov	r2, r7
c0d049fa:	42bd      	cmp	r5, r7
c0d049fc:	d209      	bcs.n	c0d04a12 <b58_decode+0xde>
c0d049fe:	9903      	ldr	r1, [sp, #12]
c0d04a00:	a807      	add	r0, sp, #28
c0d04a02:	5d40      	ldrb	r0, [r0, r5]
c0d04a04:	2800      	cmp	r0, #0
c0d04a06:	d105      	bne.n	c0d04a14 <b58_decode+0xe0>
c0d04a08:	1c52      	adds	r2, r2, #1
c0d04a0a:	b2d5      	uxtb	r5, r2
c0d04a0c:	42bd      	cmp	r5, r7
c0d04a0e:	d3f7      	bcc.n	c0d04a00 <b58_decode+0xcc>
c0d04a10:	e000      	b.n	c0d04a14 <b58_decode+0xe0>
c0d04a12:	9903      	ldr	r1, [sp, #12]
c0d04a14:	9a01      	ldr	r2, [sp, #4]
c0d04a16:	1b50      	subs	r0, r2, r5
c0d04a18:	19c4      	adds	r4, r0, r7
c0d04a1a:	428c      	cmp	r4, r1
c0d04a1c:	9802      	ldr	r0, [sp, #8]
c0d04a1e:	dc07      	bgt.n	c0d04a30 <b58_decode+0xfc>
c0d04a20:	a807      	add	r0, sp, #28
c0d04a22:	1940      	adds	r0, r0, r5
c0d04a24:	1a81      	subs	r1, r0, r2
c0d04a26:	4618      	mov	r0, r3
c0d04a28:	4622      	mov	r2, r4
c0d04a2a:	f001 f867 	bl	c0d05afc <__aeabi_memcpy>
c0d04a2e:	4620      	mov	r0, r4
c0d04a30:	b059      	add	sp, #356	; 0x164
c0d04a32:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d04a34:	00003d4e 	.word	0x00003d4e

c0d04a38 <read_uint32_be>:
c0d04a38:	7801      	ldrb	r1, [r0, #0]
c0d04a3a:	0609      	lsls	r1, r1, #24
c0d04a3c:	7842      	ldrb	r2, [r0, #1]
c0d04a3e:	0412      	lsls	r2, r2, #16
c0d04a40:	1851      	adds	r1, r2, r1
c0d04a42:	7882      	ldrb	r2, [r0, #2]
c0d04a44:	0212      	lsls	r2, r2, #8
c0d04a46:	1889      	adds	r1, r1, r2
c0d04a48:	78c0      	ldrb	r0, [r0, #3]
c0d04a4a:	1808      	adds	r0, r1, r0
c0d04a4c:	4770      	bx	lr

c0d04a4e <read_uint64_be>:
c0d04a4e:	7941      	ldrb	r1, [r0, #5]
c0d04a50:	0409      	lsls	r1, r1, #16
c0d04a52:	7902      	ldrb	r2, [r0, #4]
c0d04a54:	0612      	lsls	r2, r2, #24
c0d04a56:	1851      	adds	r1, r2, r1
c0d04a58:	7982      	ldrb	r2, [r0, #6]
c0d04a5a:	0212      	lsls	r2, r2, #8
c0d04a5c:	1889      	adds	r1, r1, r2
c0d04a5e:	79c2      	ldrb	r2, [r0, #7]
c0d04a60:	188a      	adds	r2, r1, r2
c0d04a62:	7801      	ldrb	r1, [r0, #0]
c0d04a64:	0609      	lsls	r1, r1, #24
c0d04a66:	7843      	ldrb	r3, [r0, #1]
c0d04a68:	041b      	lsls	r3, r3, #16
c0d04a6a:	1859      	adds	r1, r3, r1
c0d04a6c:	7883      	ldrb	r3, [r0, #2]
c0d04a6e:	021b      	lsls	r3, r3, #8
c0d04a70:	18c9      	adds	r1, r1, r3
c0d04a72:	78c0      	ldrb	r0, [r0, #3]
c0d04a74:	1809      	adds	r1, r1, r0
c0d04a76:	4610      	mov	r0, r2
c0d04a78:	4770      	bx	lr
	...

c0d04a7c <amount_to_string>:
c0d04a7c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04a7e:	b089      	sub	sp, #36	; 0x24
c0d04a80:	4615      	mov	r5, r2
c0d04a82:	9001      	str	r0, [sp, #4]
c0d04a84:	4610      	mov	r0, r2
c0d04a86:	4318      	orrs	r0, r3
c0d04a88:	d02a      	beq.n	c0d04ae0 <amount_to_string+0x64>
c0d04a8a:	9102      	str	r1, [sp, #8]
c0d04a8c:	2000      	movs	r0, #0
c0d04a8e:	9005      	str	r0, [sp, #20]
c0d04a90:	2109      	movs	r1, #9
c0d04a92:	9508      	str	r5, [sp, #32]
c0d04a94:	462e      	mov	r6, r5
c0d04a96:	9303      	str	r3, [sp, #12]
c0d04a98:	461d      	mov	r5, r3
c0d04a9a:	9107      	str	r1, [sp, #28]
c0d04a9c:	220a      	movs	r2, #10
c0d04a9e:	9206      	str	r2, [sp, #24]
c0d04aa0:	2700      	movs	r7, #0
c0d04aa2:	4630      	mov	r0, r6
c0d04aa4:	4629      	mov	r1, r5
c0d04aa6:	463b      	mov	r3, r7
c0d04aa8:	f000 ff38 	bl	c0d0591c <__aeabi_uldivmod>
c0d04aac:	4604      	mov	r4, r0
c0d04aae:	9104      	str	r1, [sp, #16]
c0d04ab0:	9a06      	ldr	r2, [sp, #24]
c0d04ab2:	463b      	mov	r3, r7
c0d04ab4:	f000 ff52 	bl	c0d0595c <__aeabi_lmul>
c0d04ab8:	1a30      	subs	r0, r6, r0
c0d04aba:	462a      	mov	r2, r5
c0d04abc:	418a      	sbcs	r2, r1
c0d04abe:	4302      	orrs	r2, r0
c0d04ac0:	d110      	bne.n	c0d04ae4 <amount_to_string+0x68>
c0d04ac2:	9907      	ldr	r1, [sp, #28]
c0d04ac4:	1e49      	subs	r1, r1, #1
c0d04ac6:	9b05      	ldr	r3, [sp, #20]
c0d04ac8:	41bb      	sbcs	r3, r7
c0d04aca:	2201      	movs	r2, #1
c0d04acc:	3e0a      	subs	r6, #10
c0d04ace:	41bd      	sbcs	r5, r7
c0d04ad0:	d309      	bcc.n	c0d04ae6 <amount_to_string+0x6a>
c0d04ad2:	4608      	mov	r0, r1
c0d04ad4:	9305      	str	r3, [sp, #20]
c0d04ad6:	4318      	orrs	r0, r3
c0d04ad8:	4626      	mov	r6, r4
c0d04ada:	9d04      	ldr	r5, [sp, #16]
c0d04adc:	d1dd      	bne.n	c0d04a9a <amount_to_string+0x1e>
c0d04ade:	e002      	b.n	c0d04ae6 <amount_to_string+0x6a>
c0d04ae0:	2201      	movs	r2, #1
c0d04ae2:	e026      	b.n	c0d04b32 <amount_to_string+0xb6>
c0d04ae4:	9a07      	ldr	r2, [sp, #28]
c0d04ae6:	483c      	ldr	r0, [pc, #240]	; (c0d04bd8 <amount_to_string+0x15c>)
c0d04ae8:	9d08      	ldr	r5, [sp, #32]
c0d04aea:	1a28      	subs	r0, r5, r0
c0d04aec:	9b03      	ldr	r3, [sp, #12]
c0d04aee:	4618      	mov	r0, r3
c0d04af0:	41b8      	sbcs	r0, r7
c0d04af2:	d201      	bcs.n	c0d04af8 <amount_to_string+0x7c>
c0d04af4:	9902      	ldr	r1, [sp, #8]
c0d04af6:	e01c      	b.n	c0d04b32 <amount_to_string+0xb6>
c0d04af8:	9207      	str	r2, [sp, #28]
c0d04afa:	4a37      	ldr	r2, [pc, #220]	; (c0d04bd8 <amount_to_string+0x15c>)
c0d04afc:	4628      	mov	r0, r5
c0d04afe:	2500      	movs	r5, #0
c0d04b00:	4619      	mov	r1, r3
c0d04b02:	462b      	mov	r3, r5
c0d04b04:	f000 ff0a 	bl	c0d0591c <__aeabi_uldivmod>
c0d04b08:	4604      	mov	r4, r0
c0d04b0a:	460e      	mov	r6, r1
c0d04b0c:	2701      	movs	r7, #1
c0d04b0e:	220a      	movs	r2, #10
c0d04b10:	4620      	mov	r0, r4
c0d04b12:	4631      	mov	r1, r6
c0d04b14:	462b      	mov	r3, r5
c0d04b16:	f000 ff01 	bl	c0d0591c <__aeabi_uldivmod>
c0d04b1a:	1c7f      	adds	r7, r7, #1
c0d04b1c:	3c0a      	subs	r4, #10
c0d04b1e:	41ae      	sbcs	r6, r5
c0d04b20:	4604      	mov	r4, r0
c0d04b22:	460e      	mov	r6, r1
c0d04b24:	d2f3      	bcs.n	c0d04b0e <amount_to_string+0x92>
c0d04b26:	2f01      	cmp	r7, #1
c0d04b28:	9b03      	ldr	r3, [sp, #12]
c0d04b2a:	9d08      	ldr	r5, [sp, #32]
c0d04b2c:	9902      	ldr	r1, [sp, #8]
c0d04b2e:	9a07      	ldr	r2, [sp, #28]
c0d04b30:	d100      	bne.n	c0d04b34 <amount_to_string+0xb8>
c0d04b32:	2702      	movs	r7, #2
c0d04b34:	18b8      	adds	r0, r7, r2
c0d04b36:	1c42      	adds	r2, r0, #1
c0d04b38:	428a      	cmp	r2, r1
c0d04b3a:	d903      	bls.n	c0d04b44 <amount_to_string+0xc8>
c0d04b3c:	2000      	movs	r0, #0
c0d04b3e:	9901      	ldr	r1, [sp, #4]
c0d04b40:	7008      	strb	r0, [r1, #0]
c0d04b42:	e045      	b.n	c0d04bd0 <amount_to_string+0x154>
c0d04b44:	2200      	movs	r2, #0
c0d04b46:	9901      	ldr	r1, [sp, #4]
c0d04b48:	540a      	strb	r2, [r1, r0]
c0d04b4a:	1808      	adds	r0, r1, r0
c0d04b4c:	9006      	str	r0, [sp, #24]
c0d04b4e:	9202      	str	r2, [sp, #8]
c0d04b50:	43d0      	mvns	r0, r2
c0d04b52:	9003      	str	r0, [sp, #12]
c0d04b54:	2001      	movs	r0, #1
c0d04b56:	9508      	str	r5, [sp, #32]
c0d04b58:	9007      	str	r0, [sp, #28]
c0d04b5a:	270a      	movs	r7, #10
c0d04b5c:	2400      	movs	r4, #0
c0d04b5e:	4628      	mov	r0, r5
c0d04b60:	4619      	mov	r1, r3
c0d04b62:	463a      	mov	r2, r7
c0d04b64:	461d      	mov	r5, r3
c0d04b66:	4623      	mov	r3, r4
c0d04b68:	f000 fed8 	bl	c0d0591c <__aeabi_uldivmod>
c0d04b6c:	460e      	mov	r6, r1
c0d04b6e:	9005      	str	r0, [sp, #20]
c0d04b70:	463a      	mov	r2, r7
c0d04b72:	9f07      	ldr	r7, [sp, #28]
c0d04b74:	9404      	str	r4, [sp, #16]
c0d04b76:	4623      	mov	r3, r4
c0d04b78:	f000 fef0 	bl	c0d0595c <__aeabi_lmul>
c0d04b7c:	462b      	mov	r3, r5
c0d04b7e:	9d08      	ldr	r5, [sp, #32]
c0d04b80:	1a28      	subs	r0, r5, r0
c0d04b82:	461a      	mov	r2, r3
c0d04b84:	418a      	sbcs	r2, r1
c0d04b86:	2f0a      	cmp	r7, #10
c0d04b88:	d106      	bne.n	c0d04b98 <amount_to_string+0x11c>
c0d04b8a:	202e      	movs	r0, #46	; 0x2e
c0d04b8c:	9906      	ldr	r1, [sp, #24]
c0d04b8e:	9a03      	ldr	r2, [sp, #12]
c0d04b90:	5488      	strb	r0, [r1, r2]
c0d04b92:	1889      	adds	r1, r1, r2
c0d04b94:	9106      	str	r1, [sp, #24]
c0d04b96:	e014      	b.n	c0d04bc2 <amount_to_string+0x146>
c0d04b98:	1e79      	subs	r1, r7, #1
c0d04b9a:	4633      	mov	r3, r6
c0d04b9c:	9d05      	ldr	r5, [sp, #20]
c0d04b9e:	2907      	cmp	r1, #7
c0d04ba0:	d908      	bls.n	c0d04bb4 <amount_to_string+0x138>
c0d04ba2:	2130      	movs	r1, #48	; 0x30
c0d04ba4:	4308      	orrs	r0, r1
c0d04ba6:	9906      	ldr	r1, [sp, #24]
c0d04ba8:	9a03      	ldr	r2, [sp, #12]
c0d04baa:	5488      	strb	r0, [r1, r2]
c0d04bac:	1889      	adds	r1, r1, r2
c0d04bae:	9106      	str	r1, [sp, #24]
c0d04bb0:	2001      	movs	r0, #1
c0d04bb2:	e005      	b.n	c0d04bc0 <amount_to_string+0x144>
c0d04bb4:	4302      	orrs	r2, r0
c0d04bb6:	d1f4      	bne.n	c0d04ba2 <amount_to_string+0x126>
c0d04bb8:	9902      	ldr	r1, [sp, #8]
c0d04bba:	2900      	cmp	r1, #0
c0d04bbc:	d1f1      	bne.n	c0d04ba2 <amount_to_string+0x126>
c0d04bbe:	9804      	ldr	r0, [sp, #16]
c0d04bc0:	9002      	str	r0, [sp, #8]
c0d04bc2:	4629      	mov	r1, r5
c0d04bc4:	4319      	orrs	r1, r3
c0d04bc6:	1c78      	adds	r0, r7, #1
c0d04bc8:	2900      	cmp	r1, #0
c0d04bca:	d1c4      	bne.n	c0d04b56 <amount_to_string+0xda>
c0d04bcc:	2f0b      	cmp	r7, #11
c0d04bce:	d3c2      	bcc.n	c0d04b56 <amount_to_string+0xda>
c0d04bd0:	9801      	ldr	r0, [sp, #4]
c0d04bd2:	b009      	add	sp, #36	; 0x24
c0d04bd4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d04bd6:	46c0      	nop			; (mov r8, r8)
c0d04bd8:	3b9aca00 	.word	0x3b9aca00

c0d04bdc <value_to_string>:
c0d04bdc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04bde:	b087      	sub	sp, #28
c0d04be0:	4614      	mov	r4, r2
c0d04be2:	431c      	orrs	r4, r3
c0d04be4:	9001      	str	r0, [sp, #4]
c0d04be6:	d018      	beq.n	c0d04c1a <value_to_string+0x3e>
c0d04be8:	9104      	str	r1, [sp, #16]
c0d04bea:	2401      	movs	r4, #1
c0d04bec:	9205      	str	r2, [sp, #20]
c0d04bee:	4615      	mov	r5, r2
c0d04bf0:	9306      	str	r3, [sp, #24]
c0d04bf2:	461e      	mov	r6, r3
c0d04bf4:	220a      	movs	r2, #10
c0d04bf6:	2700      	movs	r7, #0
c0d04bf8:	4628      	mov	r0, r5
c0d04bfa:	4631      	mov	r1, r6
c0d04bfc:	463b      	mov	r3, r7
c0d04bfe:	f000 fe8d 	bl	c0d0591c <__aeabi_uldivmod>
c0d04c02:	1c64      	adds	r4, r4, #1
c0d04c04:	3d0a      	subs	r5, #10
c0d04c06:	41be      	sbcs	r6, r7
c0d04c08:	4605      	mov	r5, r0
c0d04c0a:	460e      	mov	r6, r1
c0d04c0c:	d2f2      	bcs.n	c0d04bf4 <value_to_string+0x18>
c0d04c0e:	2c01      	cmp	r4, #1
c0d04c10:	9801      	ldr	r0, [sp, #4]
c0d04c12:	9b06      	ldr	r3, [sp, #24]
c0d04c14:	9a05      	ldr	r2, [sp, #20]
c0d04c16:	9904      	ldr	r1, [sp, #16]
c0d04c18:	d100      	bne.n	c0d04c1c <value_to_string+0x40>
c0d04c1a:	2402      	movs	r4, #2
c0d04c1c:	428c      	cmp	r4, r1
c0d04c1e:	d901      	bls.n	c0d04c24 <value_to_string+0x48>
c0d04c20:	2000      	movs	r0, #0
c0d04c22:	e02b      	b.n	c0d04c7c <value_to_string+0xa0>
c0d04c24:	1900      	adds	r0, r0, r4
c0d04c26:	1e41      	subs	r1, r0, #1
c0d04c28:	2400      	movs	r4, #0
c0d04c2a:	700c      	strb	r4, [r1, #0]
c0d04c2c:	1e80      	subs	r0, r0, #2
c0d04c2e:	9002      	str	r0, [sp, #8]
c0d04c30:	9403      	str	r4, [sp, #12]
c0d04c32:	4620      	mov	r0, r4
c0d04c34:	a904      	add	r1, sp, #16
c0d04c36:	c10d      	stmia	r1!, {r0, r2, r3}
c0d04c38:	270a      	movs	r7, #10
c0d04c3a:	4610      	mov	r0, r2
c0d04c3c:	4619      	mov	r1, r3
c0d04c3e:	463a      	mov	r2, r7
c0d04c40:	9c03      	ldr	r4, [sp, #12]
c0d04c42:	4623      	mov	r3, r4
c0d04c44:	f000 fe6a 	bl	c0d0591c <__aeabi_uldivmod>
c0d04c48:	4606      	mov	r6, r0
c0d04c4a:	460d      	mov	r5, r1
c0d04c4c:	463a      	mov	r2, r7
c0d04c4e:	9f04      	ldr	r7, [sp, #16]
c0d04c50:	4623      	mov	r3, r4
c0d04c52:	f000 fe83 	bl	c0d0595c <__aeabi_lmul>
c0d04c56:	9a05      	ldr	r2, [sp, #20]
c0d04c58:	1a10      	subs	r0, r2, r0
c0d04c5a:	2130      	movs	r1, #48	; 0x30
c0d04c5c:	4301      	orrs	r1, r0
c0d04c5e:	9802      	ldr	r0, [sp, #8]
c0d04c60:	55c1      	strb	r1, [r0, r7]
c0d04c62:	1e78      	subs	r0, r7, #1
c0d04c64:	2109      	movs	r1, #9
c0d04c66:	1a89      	subs	r1, r1, r2
c0d04c68:	9a06      	ldr	r2, [sp, #24]
c0d04c6a:	4194      	sbcs	r4, r2
c0d04c6c:	4632      	mov	r2, r6
c0d04c6e:	462b      	mov	r3, r5
c0d04c70:	d3e0      	bcc.n	c0d04c34 <value_to_string+0x58>
c0d04c72:	2f01      	cmp	r7, #1
c0d04c74:	4632      	mov	r2, r6
c0d04c76:	462b      	mov	r3, r5
c0d04c78:	d0dc      	beq.n	c0d04c34 <value_to_string+0x58>
c0d04c7a:	9801      	ldr	r0, [sp, #4]
c0d04c7c:	b007      	add	sp, #28
c0d04c7e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d04c80 <packed_bit_array_set>:
c0d04c80:	b510      	push	{r4, lr}
c0d04c82:	2307      	movs	r3, #7
c0d04c84:	400b      	ands	r3, r1
c0d04c86:	2401      	movs	r4, #1
c0d04c88:	409c      	lsls	r4, r3
c0d04c8a:	08c9      	lsrs	r1, r1, #3
c0d04c8c:	5c43      	ldrb	r3, [r0, r1]
c0d04c8e:	2a00      	cmp	r2, #0
c0d04c90:	d101      	bne.n	c0d04c96 <packed_bit_array_set+0x16>
c0d04c92:	43a3      	bics	r3, r4
c0d04c94:	e000      	b.n	c0d04c98 <packed_bit_array_set+0x18>
c0d04c96:	4323      	orrs	r3, r4
c0d04c98:	5443      	strb	r3, [r0, r1]
c0d04c9a:	bd10      	pop	{r4, pc}

c0d04c9c <packed_bit_array_get>:
c0d04c9c:	2207      	movs	r2, #7
c0d04c9e:	400a      	ands	r2, r1
c0d04ca0:	08c9      	lsrs	r1, r1, #3
c0d04ca2:	5c41      	ldrb	r1, [r0, r1]
c0d04ca4:	40d1      	lsrs	r1, r2
c0d04ca6:	2001      	movs	r0, #1
c0d04ca8:	4008      	ands	r0, r1
c0d04caa:	4770      	bx	lr

c0d04cac <read_public_key_compressed>:
c0d04cac:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04cae:	b08b      	sub	sp, #44	; 0x2c
c0d04cb0:	460d      	mov	r5, r1
c0d04cb2:	4604      	mov	r4, r0
c0d04cb4:	2138      	movs	r1, #56	; 0x38
c0d04cb6:	4628      	mov	r0, r5
c0d04cb8:	f001 f89c 	bl	c0d05df4 <strnlen>
c0d04cbc:	2837      	cmp	r0, #55	; 0x37
c0d04cbe:	d11c      	bne.n	c0d04cfa <read_public_key_compressed+0x4e>
c0d04cc0:	ae01      	add	r6, sp, #4
c0d04cc2:	2728      	movs	r7, #40	; 0x28
c0d04cc4:	4630      	mov	r0, r6
c0d04cc6:	4639      	mov	r1, r7
c0d04cc8:	f000 ff12 	bl	c0d05af0 <__aeabi_memclr>
c0d04ccc:	2137      	movs	r1, #55	; 0x37
c0d04cce:	4628      	mov	r0, r5
c0d04cd0:	4632      	mov	r2, r6
c0d04cd2:	463b      	mov	r3, r7
c0d04cd4:	f7ff fe2e 	bl	c0d04934 <b58_decode>
c0d04cd8:	4620      	mov	r0, r4
c0d04cda:	301f      	adds	r0, #31
c0d04cdc:	1cf1      	adds	r1, r6, #3
c0d04cde:	2200      	movs	r2, #0
c0d04ce0:	5c8b      	ldrb	r3, [r1, r2]
c0d04ce2:	7003      	strb	r3, [r0, #0]
c0d04ce4:	1e40      	subs	r0, r0, #1
c0d04ce6:	1c52      	adds	r2, r2, #1
c0d04ce8:	2a20      	cmp	r2, #32
c0d04cea:	d1f9      	bne.n	c0d04ce0 <read_public_key_compressed+0x34>
c0d04cec:	2023      	movs	r0, #35	; 0x23
c0d04cee:	a901      	add	r1, sp, #4
c0d04cf0:	5c08      	ldrb	r0, [r1, r0]
c0d04cf2:	1e41      	subs	r1, r0, #1
c0d04cf4:	4188      	sbcs	r0, r1
c0d04cf6:	2120      	movs	r1, #32
c0d04cf8:	5460      	strb	r0, [r4, r1]
c0d04cfa:	b00b      	add	sp, #44	; 0x2c
c0d04cfc:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0d04d00 <ux_flow_is_first>:
c0d04d00:	b510      	push	{r4, lr}
c0d04d02:	4911      	ldr	r1, [pc, #68]	; (c0d04d48 <ux_flow_is_first+0x48>)
c0d04d04:	780a      	ldrb	r2, [r1, #0]
c0d04d06:	2001      	movs	r0, #1
c0d04d08:	2a01      	cmp	r2, #1
c0d04d0a:	d81b      	bhi.n	c0d04d44 <ux_flow_is_first+0x44>
c0d04d0c:	1e52      	subs	r2, r2, #1
c0d04d0e:	230c      	movs	r3, #12
c0d04d10:	4353      	muls	r3, r2
c0d04d12:	18cb      	adds	r3, r1, r3
c0d04d14:	8b9a      	ldrh	r2, [r3, #28]
c0d04d16:	2a00      	cmp	r2, #0
c0d04d18:	d014      	beq.n	c0d04d44 <ux_flow_is_first+0x44>
c0d04d1a:	6959      	ldr	r1, [r3, #20]
c0d04d1c:	2900      	cmp	r1, #0
c0d04d1e:	d011      	beq.n	c0d04d44 <ux_flow_is_first+0x44>
c0d04d20:	8b1b      	ldrh	r3, [r3, #24]
c0d04d22:	2b00      	cmp	r3, #0
c0d04d24:	d105      	bne.n	c0d04d32 <ux_flow_is_first+0x32>
c0d04d26:	0094      	lsls	r4, r2, #2
c0d04d28:	1864      	adds	r4, r4, r1
c0d04d2a:	1f24      	subs	r4, r4, #4
c0d04d2c:	6824      	ldr	r4, [r4, #0]
c0d04d2e:	1ce4      	adds	r4, r4, #3
c0d04d30:	d108      	bne.n	c0d04d44 <ux_flow_is_first+0x44>
c0d04d32:	4293      	cmp	r3, r2
c0d04d34:	d205      	bcs.n	c0d04d42 <ux_flow_is_first+0x42>
c0d04d36:	009a      	lsls	r2, r3, #2
c0d04d38:	1851      	adds	r1, r2, r1
c0d04d3a:	1f09      	subs	r1, r1, #4
c0d04d3c:	6809      	ldr	r1, [r1, #0]
c0d04d3e:	1c89      	adds	r1, r1, #2
c0d04d40:	d000      	beq.n	c0d04d44 <ux_flow_is_first+0x44>
c0d04d42:	2000      	movs	r0, #0
c0d04d44:	bd10      	pop	{r4, pc}
c0d04d46:	46c0      	nop			; (mov r8, r8)
c0d04d48:	20000258 	.word	0x20000258

c0d04d4c <ux_flow_is_last>:
c0d04d4c:	b510      	push	{r4, lr}
c0d04d4e:	490e      	ldr	r1, [pc, #56]	; (c0d04d88 <ux_flow_is_last+0x3c>)
c0d04d50:	780a      	ldrb	r2, [r1, #0]
c0d04d52:	2001      	movs	r0, #1
c0d04d54:	2a01      	cmp	r2, #1
c0d04d56:	d816      	bhi.n	c0d04d86 <ux_flow_is_last+0x3a>
c0d04d58:	1e52      	subs	r2, r2, #1
c0d04d5a:	230c      	movs	r3, #12
c0d04d5c:	4353      	muls	r3, r2
c0d04d5e:	18cb      	adds	r3, r1, r3
c0d04d60:	8b9a      	ldrh	r2, [r3, #28]
c0d04d62:	2a00      	cmp	r2, #0
c0d04d64:	d00f      	beq.n	c0d04d86 <ux_flow_is_last+0x3a>
c0d04d66:	6959      	ldr	r1, [r3, #20]
c0d04d68:	2900      	cmp	r1, #0
c0d04d6a:	d00c      	beq.n	c0d04d86 <ux_flow_is_last+0x3a>
c0d04d6c:	8b1b      	ldrh	r3, [r3, #24]
c0d04d6e:	1e54      	subs	r4, r2, #1
c0d04d70:	429c      	cmp	r4, r3
c0d04d72:	dd08      	ble.n	c0d04d86 <ux_flow_is_last+0x3a>
c0d04d74:	1e92      	subs	r2, r2, #2
c0d04d76:	429a      	cmp	r2, r3
c0d04d78:	dd04      	ble.n	c0d04d84 <ux_flow_is_last+0x38>
c0d04d7a:	009a      	lsls	r2, r3, #2
c0d04d7c:	1851      	adds	r1, r2, r1
c0d04d7e:	6849      	ldr	r1, [r1, #4]
c0d04d80:	1c89      	adds	r1, r1, #2
c0d04d82:	d000      	beq.n	c0d04d86 <ux_flow_is_last+0x3a>
c0d04d84:	2000      	movs	r0, #0
c0d04d86:	bd10      	pop	{r4, pc}
c0d04d88:	20000258 	.word	0x20000258

c0d04d8c <ux_flow_direction>:
c0d04d8c:	4809      	ldr	r0, [pc, #36]	; (c0d04db4 <ux_flow_direction+0x28>)
c0d04d8e:	7801      	ldrb	r1, [r0, #0]
c0d04d90:	2900      	cmp	r1, #0
c0d04d92:	d00c      	beq.n	c0d04dae <ux_flow_direction+0x22>
c0d04d94:	220c      	movs	r2, #12
c0d04d96:	434a      	muls	r2, r1
c0d04d98:	1811      	adds	r1, r2, r0
c0d04d9a:	89c8      	ldrh	r0, [r1, #14]
c0d04d9c:	8989      	ldrh	r1, [r1, #12]
c0d04d9e:	4281      	cmp	r1, r0
c0d04da0:	d901      	bls.n	c0d04da6 <ux_flow_direction+0x1a>
c0d04da2:	2001      	movs	r0, #1
c0d04da4:	e004      	b.n	c0d04db0 <ux_flow_direction+0x24>
c0d04da6:	4281      	cmp	r1, r0
c0d04da8:	d201      	bcs.n	c0d04dae <ux_flow_direction+0x22>
c0d04daa:	20ff      	movs	r0, #255	; 0xff
c0d04dac:	e000      	b.n	c0d04db0 <ux_flow_direction+0x24>
c0d04dae:	2000      	movs	r0, #0
c0d04db0:	b240      	sxtb	r0, r0
c0d04db2:	4770      	bx	lr
c0d04db4:	20000258 	.word	0x20000258

c0d04db8 <ux_flow_next_internal>:
c0d04db8:	b570      	push	{r4, r5, r6, lr}
c0d04dba:	4601      	mov	r1, r0
c0d04dbc:	4a15      	ldr	r2, [pc, #84]	; (c0d04e14 <ux_flow_next_internal+0x5c>)
c0d04dbe:	7810      	ldrb	r0, [r2, #0]
c0d04dc0:	1e40      	subs	r0, r0, #1
c0d04dc2:	d825      	bhi.n	c0d04e10 <ux_flow_next_internal+0x58>
c0d04dc4:	230c      	movs	r3, #12
c0d04dc6:	4343      	muls	r3, r0
c0d04dc8:	18d2      	adds	r2, r2, r3
c0d04dca:	8b95      	ldrh	r5, [r2, #28]
c0d04dcc:	2d00      	cmp	r5, #0
c0d04dce:	d01f      	beq.n	c0d04e10 <ux_flow_next_internal+0x58>
c0d04dd0:	6954      	ldr	r4, [r2, #20]
c0d04dd2:	2c00      	cmp	r4, #0
c0d04dd4:	d01c      	beq.n	c0d04e10 <ux_flow_next_internal+0x58>
c0d04dd6:	2d01      	cmp	r5, #1
c0d04dd8:	d01a      	beq.n	c0d04e10 <ux_flow_next_internal+0x58>
c0d04dda:	8b13      	ldrh	r3, [r2, #24]
c0d04ddc:	1e6e      	subs	r6, r5, #1
c0d04dde:	429e      	cmp	r6, r3
c0d04de0:	dd16      	ble.n	c0d04e10 <ux_flow_next_internal+0x58>
c0d04de2:	4616      	mov	r6, r2
c0d04de4:	3618      	adds	r6, #24
c0d04de6:	1ead      	subs	r5, r5, #2
c0d04de8:	429d      	cmp	r5, r3
c0d04dea:	db0a      	blt.n	c0d04e02 <ux_flow_next_internal+0x4a>
c0d04dec:	009d      	lsls	r5, r3, #2
c0d04dee:	192c      	adds	r4, r5, r4
c0d04df0:	6864      	ldr	r4, [r4, #4]
c0d04df2:	1ca5      	adds	r5, r4, #2
c0d04df4:	d00c      	beq.n	c0d04e10 <ux_flow_next_internal+0x58>
c0d04df6:	1ce4      	adds	r4, r4, #3
c0d04df8:	d103      	bne.n	c0d04e02 <ux_flow_next_internal+0x4a>
c0d04dfa:	2100      	movs	r1, #0
c0d04dfc:	8031      	strh	r1, [r6, #0]
c0d04dfe:	8351      	strh	r1, [r2, #26]
c0d04e00:	e004      	b.n	c0d04e0c <ux_flow_next_internal+0x54>
c0d04e02:	1c5c      	adds	r4, r3, #1
c0d04e04:	8034      	strh	r4, [r6, #0]
c0d04e06:	8353      	strh	r3, [r2, #26]
c0d04e08:	2900      	cmp	r1, #0
c0d04e0a:	d001      	beq.n	c0d04e10 <ux_flow_next_internal+0x58>
c0d04e0c:	f000 f838 	bl	c0d04e80 <ux_flow_engine_init_step>
c0d04e10:	bd70      	pop	{r4, r5, r6, pc}
c0d04e12:	46c0      	nop			; (mov r8, r8)
c0d04e14:	20000258 	.word	0x20000258

c0d04e18 <ux_flow_next>:
c0d04e18:	b580      	push	{r7, lr}
c0d04e1a:	2001      	movs	r0, #1
c0d04e1c:	f7ff ffcc 	bl	c0d04db8 <ux_flow_next_internal>
c0d04e20:	bd80      	pop	{r7, pc}
	...

c0d04e24 <ux_flow_prev>:
c0d04e24:	b5b0      	push	{r4, r5, r7, lr}
c0d04e26:	4915      	ldr	r1, [pc, #84]	; (c0d04e7c <ux_flow_prev+0x58>)
c0d04e28:	7808      	ldrb	r0, [r1, #0]
c0d04e2a:	1e40      	subs	r0, r0, #1
c0d04e2c:	d825      	bhi.n	c0d04e7a <ux_flow_prev+0x56>
c0d04e2e:	220c      	movs	r2, #12
c0d04e30:	4342      	muls	r2, r0
c0d04e32:	1889      	adds	r1, r1, r2
c0d04e34:	8b8a      	ldrh	r2, [r1, #28]
c0d04e36:	2a00      	cmp	r2, #0
c0d04e38:	d01f      	beq.n	c0d04e7a <ux_flow_prev+0x56>
c0d04e3a:	694c      	ldr	r4, [r1, #20]
c0d04e3c:	2c00      	cmp	r4, #0
c0d04e3e:	d01c      	beq.n	c0d04e7a <ux_flow_prev+0x56>
c0d04e40:	2a01      	cmp	r2, #1
c0d04e42:	d01a      	beq.n	c0d04e7a <ux_flow_prev+0x56>
c0d04e44:	8b0d      	ldrh	r5, [r1, #24]
c0d04e46:	460b      	mov	r3, r1
c0d04e48:	3318      	adds	r3, #24
c0d04e4a:	2d00      	cmp	r5, #0
c0d04e4c:	d009      	beq.n	c0d04e62 <ux_flow_prev+0x3e>
c0d04e4e:	00aa      	lsls	r2, r5, #2
c0d04e50:	1912      	adds	r2, r2, r4
c0d04e52:	1f12      	subs	r2, r2, #4
c0d04e54:	6812      	ldr	r2, [r2, #0]
c0d04e56:	1c92      	adds	r2, r2, #2
c0d04e58:	d00f      	beq.n	c0d04e7a <ux_flow_prev+0x56>
c0d04e5a:	1e6a      	subs	r2, r5, #1
c0d04e5c:	801a      	strh	r2, [r3, #0]
c0d04e5e:	834d      	strh	r5, [r1, #26]
c0d04e60:	e009      	b.n	c0d04e76 <ux_flow_prev+0x52>
c0d04e62:	0095      	lsls	r5, r2, #2
c0d04e64:	192c      	adds	r4, r5, r4
c0d04e66:	1f24      	subs	r4, r4, #4
c0d04e68:	6824      	ldr	r4, [r4, #0]
c0d04e6a:	1ce4      	adds	r4, r4, #3
c0d04e6c:	d105      	bne.n	c0d04e7a <ux_flow_prev+0x56>
c0d04e6e:	1e94      	subs	r4, r2, #2
c0d04e70:	801c      	strh	r4, [r3, #0]
c0d04e72:	1e52      	subs	r2, r2, #1
c0d04e74:	834a      	strh	r2, [r1, #26]
c0d04e76:	f000 f803 	bl	c0d04e80 <ux_flow_engine_init_step>
c0d04e7a:	bdb0      	pop	{r4, r5, r7, pc}
c0d04e7c:	20000258 	.word	0x20000258

c0d04e80 <ux_flow_engine_init_step>:
c0d04e80:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04e82:	b081      	sub	sp, #4
c0d04e84:	4604      	mov	r4, r0
c0d04e86:	200c      	movs	r0, #12
c0d04e88:	4360      	muls	r0, r4
c0d04e8a:	491a      	ldr	r1, [pc, #104]	; (c0d04ef4 <ux_flow_engine_init_step+0x74>)
c0d04e8c:	180e      	adds	r6, r1, r0
c0d04e8e:	6970      	ldr	r0, [r6, #20]
c0d04e90:	8b31      	ldrh	r1, [r6, #24]
c0d04e92:	0089      	lsls	r1, r1, #2
c0d04e94:	5840      	ldr	r0, [r0, r1]
c0d04e96:	2103      	movs	r1, #3
c0d04e98:	43c9      	mvns	r1, r1
c0d04e9a:	4288      	cmp	r0, r1
c0d04e9c:	d827      	bhi.n	c0d04eee <ux_flow_engine_init_step+0x6e>
c0d04e9e:	4637      	mov	r7, r6
c0d04ea0:	3718      	adds	r7, #24
c0d04ea2:	3614      	adds	r6, #20
c0d04ea4:	f7fd fa74 	bl	c0d02390 <pic>
c0d04ea8:	6831      	ldr	r1, [r6, #0]
c0d04eaa:	883a      	ldrh	r2, [r7, #0]
c0d04eac:	0092      	lsls	r2, r2, #2
c0d04eae:	5889      	ldr	r1, [r1, r2]
c0d04eb0:	6805      	ldr	r5, [r0, #0]
c0d04eb2:	4608      	mov	r0, r1
c0d04eb4:	f7fd fa6c 	bl	c0d02390 <pic>
c0d04eb8:	2d00      	cmp	r5, #0
c0d04eba:	d006      	beq.n	c0d04eca <ux_flow_engine_init_step+0x4a>
c0d04ebc:	6800      	ldr	r0, [r0, #0]
c0d04ebe:	f7fd fa67 	bl	c0d02390 <pic>
c0d04ec2:	4601      	mov	r1, r0
c0d04ec4:	4620      	mov	r0, r4
c0d04ec6:	4788      	blx	r1
c0d04ec8:	e011      	b.n	c0d04eee <ux_flow_engine_init_step+0x6e>
c0d04eca:	6880      	ldr	r0, [r0, #8]
c0d04ecc:	f7fd fa60 	bl	c0d02390 <pic>
c0d04ed0:	4605      	mov	r5, r0
c0d04ed2:	6830      	ldr	r0, [r6, #0]
c0d04ed4:	8839      	ldrh	r1, [r7, #0]
c0d04ed6:	0089      	lsls	r1, r1, #2
c0d04ed8:	5840      	ldr	r0, [r0, r1]
c0d04eda:	f7fd fa59 	bl	c0d02390 <pic>
c0d04ede:	6840      	ldr	r0, [r0, #4]
c0d04ee0:	f7fd fa56 	bl	c0d02390 <pic>
c0d04ee4:	4602      	mov	r2, r0
c0d04ee6:	4620      	mov	r0, r4
c0d04ee8:	4629      	mov	r1, r5
c0d04eea:	f000 f85b 	bl	c0d04fa4 <ux_flow_init>
c0d04eee:	b001      	add	sp, #4
c0d04ef0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d04ef2:	46c0      	nop			; (mov r8, r8)
c0d04ef4:	20000258 	.word	0x20000258

c0d04ef8 <ux_flow_validate>:
c0d04ef8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04efa:	b081      	sub	sp, #4
c0d04efc:	4828      	ldr	r0, [pc, #160]	; (c0d04fa0 <ux_flow_validate+0xa8>)
c0d04efe:	7801      	ldrb	r1, [r0, #0]
c0d04f00:	1e4c      	subs	r4, r1, #1
c0d04f02:	d824      	bhi.n	c0d04f4e <ux_flow_validate+0x56>
c0d04f04:	210c      	movs	r1, #12
c0d04f06:	4361      	muls	r1, r4
c0d04f08:	1845      	adds	r5, r0, r1
c0d04f0a:	8ba9      	ldrh	r1, [r5, #28]
c0d04f0c:	2900      	cmp	r1, #0
c0d04f0e:	d01e      	beq.n	c0d04f4e <ux_flow_validate+0x56>
c0d04f10:	6968      	ldr	r0, [r5, #20]
c0d04f12:	2800      	cmp	r0, #0
c0d04f14:	d01b      	beq.n	c0d04f4e <ux_flow_validate+0x56>
c0d04f16:	8b2a      	ldrh	r2, [r5, #24]
c0d04f18:	428a      	cmp	r2, r1
c0d04f1a:	d218      	bcs.n	c0d04f4e <ux_flow_validate+0x56>
c0d04f1c:	462f      	mov	r7, r5
c0d04f1e:	3714      	adds	r7, #20
c0d04f20:	462e      	mov	r6, r5
c0d04f22:	3618      	adds	r6, #24
c0d04f24:	0091      	lsls	r1, r2, #2
c0d04f26:	5840      	ldr	r0, [r0, r1]
c0d04f28:	f7fd fa32 	bl	c0d02390 <pic>
c0d04f2c:	6880      	ldr	r0, [r0, #8]
c0d04f2e:	2800      	cmp	r0, #0
c0d04f30:	d00f      	beq.n	c0d04f52 <ux_flow_validate+0x5a>
c0d04f32:	6838      	ldr	r0, [r7, #0]
c0d04f34:	8831      	ldrh	r1, [r6, #0]
c0d04f36:	0089      	lsls	r1, r1, #2
c0d04f38:	5840      	ldr	r0, [r0, r1]
c0d04f3a:	f7fd fa29 	bl	c0d02390 <pic>
c0d04f3e:	6880      	ldr	r0, [r0, #8]
c0d04f40:	f7fd fa26 	bl	c0d02390 <pic>
c0d04f44:	4601      	mov	r1, r0
c0d04f46:	2200      	movs	r2, #0
c0d04f48:	4620      	mov	r0, r4
c0d04f4a:	f000 f82b 	bl	c0d04fa4 <ux_flow_init>
c0d04f4e:	b001      	add	sp, #4
c0d04f50:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d04f52:	4628      	mov	r0, r5
c0d04f54:	301c      	adds	r0, #28
c0d04f56:	8800      	ldrh	r0, [r0, #0]
c0d04f58:	2800      	cmp	r0, #0
c0d04f5a:	d0f8      	beq.n	c0d04f4e <ux_flow_validate+0x56>
c0d04f5c:	1e80      	subs	r0, r0, #2
c0d04f5e:	8832      	ldrh	r2, [r6, #0]
c0d04f60:	4290      	cmp	r0, r2
c0d04f62:	dbf4      	blt.n	c0d04f4e <ux_flow_validate+0x56>
c0d04f64:	6839      	ldr	r1, [r7, #0]
c0d04f66:	0093      	lsls	r3, r2, #2
c0d04f68:	185b      	adds	r3, r3, r1
c0d04f6a:	685b      	ldr	r3, [r3, #4]
c0d04f6c:	1cdf      	adds	r7, r3, #3
c0d04f6e:	d010      	beq.n	c0d04f92 <ux_flow_validate+0x9a>
c0d04f70:	1c9b      	adds	r3, r3, #2
c0d04f72:	d1ec      	bne.n	c0d04f4e <ux_flow_validate+0x56>
c0d04f74:	4613      	mov	r3, r2
c0d04f76:	0092      	lsls	r2, r2, #2
c0d04f78:	1852      	adds	r2, r2, r1
c0d04f7a:	6852      	ldr	r2, [r2, #4]
c0d04f7c:	1c92      	adds	r2, r2, #2
c0d04f7e:	d104      	bne.n	c0d04f8a <ux_flow_validate+0x92>
c0d04f80:	1c5b      	adds	r3, r3, #1
c0d04f82:	8033      	strh	r3, [r6, #0]
c0d04f84:	b29a      	uxth	r2, r3
c0d04f86:	4290      	cmp	r0, r2
c0d04f88:	daf5      	bge.n	c0d04f76 <ux_flow_validate+0x7e>
c0d04f8a:	1c58      	adds	r0, r3, #1
c0d04f8c:	8030      	strh	r0, [r6, #0]
c0d04f8e:	836b      	strh	r3, [r5, #26]
c0d04f90:	e002      	b.n	c0d04f98 <ux_flow_validate+0xa0>
c0d04f92:	2000      	movs	r0, #0
c0d04f94:	8030      	strh	r0, [r6, #0]
c0d04f96:	8368      	strh	r0, [r5, #26]
c0d04f98:	4620      	mov	r0, r4
c0d04f9a:	f7ff ff71 	bl	c0d04e80 <ux_flow_engine_init_step>
c0d04f9e:	e7d6      	b.n	c0d04f4e <ux_flow_validate+0x56>
c0d04fa0:	20000258 	.word	0x20000258

c0d04fa4 <ux_flow_init>:
c0d04fa4:	b570      	push	{r4, r5, r6, lr}
c0d04fa6:	2800      	cmp	r0, #0
c0d04fa8:	d000      	beq.n	c0d04fac <ux_flow_init+0x8>
c0d04faa:	bd70      	pop	{r4, r5, r6, pc}
c0d04fac:	4614      	mov	r4, r2
c0d04fae:	460d      	mov	r5, r1
c0d04fb0:	4e19      	ldr	r6, [pc, #100]	; (c0d05018 <ux_flow_init+0x74>)
c0d04fb2:	1d30      	adds	r0, r6, #4
c0d04fb4:	211a      	movs	r1, #26
c0d04fb6:	f000 fd9b 	bl	c0d05af0 <__aeabi_memclr>
c0d04fba:	2d00      	cmp	r5, #0
c0d04fbc:	d0f5      	beq.n	c0d04faa <ux_flow_init+0x6>
c0d04fbe:	4628      	mov	r0, r5
c0d04fc0:	f7fd f9e6 	bl	c0d02390 <pic>
c0d04fc4:	6170      	str	r0, [r6, #20]
c0d04fc6:	8bb1      	ldrh	r1, [r6, #28]
c0d04fc8:	008a      	lsls	r2, r1, #2
c0d04fca:	5882      	ldr	r2, [r0, r2]
c0d04fcc:	1c52      	adds	r2, r2, #1
c0d04fce:	d006      	beq.n	c0d04fde <ux_flow_init+0x3a>
c0d04fd0:	1c49      	adds	r1, r1, #1
c0d04fd2:	b28a      	uxth	r2, r1
c0d04fd4:	0092      	lsls	r2, r2, #2
c0d04fd6:	5882      	ldr	r2, [r0, r2]
c0d04fd8:	1c52      	adds	r2, r2, #1
c0d04fda:	d1f9      	bne.n	c0d04fd0 <ux_flow_init+0x2c>
c0d04fdc:	83b1      	strh	r1, [r6, #28]
c0d04fde:	2c00      	cmp	r4, #0
c0d04fe0:	d016      	beq.n	c0d05010 <ux_flow_init+0x6c>
c0d04fe2:	4620      	mov	r0, r4
c0d04fe4:	f7fd f9d4 	bl	c0d02390 <pic>
c0d04fe8:	4604      	mov	r4, r0
c0d04fea:	6970      	ldr	r0, [r6, #20]
c0d04fec:	8b31      	ldrh	r1, [r6, #24]
c0d04fee:	0089      	lsls	r1, r1, #2
c0d04ff0:	5840      	ldr	r0, [r0, r1]
c0d04ff2:	1c41      	adds	r1, r0, #1
c0d04ff4:	d00c      	beq.n	c0d05010 <ux_flow_init+0x6c>
c0d04ff6:	f7fd f9cb 	bl	c0d02390 <pic>
c0d04ffa:	42a0      	cmp	r0, r4
c0d04ffc:	d008      	beq.n	c0d05010 <ux_flow_init+0x6c>
c0d04ffe:	8b30      	ldrh	r0, [r6, #24]
c0d05000:	8370      	strh	r0, [r6, #26]
c0d05002:	1c40      	adds	r0, r0, #1
c0d05004:	8330      	strh	r0, [r6, #24]
c0d05006:	6971      	ldr	r1, [r6, #20]
c0d05008:	b280      	uxth	r0, r0
c0d0500a:	0080      	lsls	r0, r0, #2
c0d0500c:	5808      	ldr	r0, [r1, r0]
c0d0500e:	e7f0      	b.n	c0d04ff2 <ux_flow_init+0x4e>
c0d05010:	2000      	movs	r0, #0
c0d05012:	f7ff ff35 	bl	c0d04e80 <ux_flow_engine_init_step>
c0d05016:	bd70      	pop	{r4, r5, r6, pc}
c0d05018:	20000258 	.word	0x20000258

c0d0501c <ux_flow_button_callback>:
c0d0501c:	b580      	push	{r7, lr}
c0d0501e:	490a      	ldr	r1, [pc, #40]	; (c0d05048 <ux_flow_button_callback+0x2c>)
c0d05020:	4288      	cmp	r0, r1
c0d05022:	d008      	beq.n	c0d05036 <ux_flow_button_callback+0x1a>
c0d05024:	4909      	ldr	r1, [pc, #36]	; (c0d0504c <ux_flow_button_callback+0x30>)
c0d05026:	4288      	cmp	r0, r1
c0d05028:	d008      	beq.n	c0d0503c <ux_flow_button_callback+0x20>
c0d0502a:	4909      	ldr	r1, [pc, #36]	; (c0d05050 <ux_flow_button_callback+0x34>)
c0d0502c:	4288      	cmp	r0, r1
c0d0502e:	d108      	bne.n	c0d05042 <ux_flow_button_callback+0x26>
c0d05030:	f7ff fef8 	bl	c0d04e24 <ux_flow_prev>
c0d05034:	e005      	b.n	c0d05042 <ux_flow_button_callback+0x26>
c0d05036:	f7ff ff5f 	bl	c0d04ef8 <ux_flow_validate>
c0d0503a:	e002      	b.n	c0d05042 <ux_flow_button_callback+0x26>
c0d0503c:	2001      	movs	r0, #1
c0d0503e:	f7ff febb 	bl	c0d04db8 <ux_flow_next_internal>
c0d05042:	2000      	movs	r0, #0
c0d05044:	bd80      	pop	{r7, pc}
c0d05046:	46c0      	nop			; (mov r8, r8)
c0d05048:	80000003 	.word	0x80000003
c0d0504c:	80000002 	.word	0x80000002
c0d05050:	80000001 	.word	0x80000001

c0d05054 <ux_stack_get_step_params>:
c0d05054:	b510      	push	{r4, lr}
c0d05056:	4601      	mov	r1, r0
c0d05058:	2000      	movs	r0, #0
c0d0505a:	2900      	cmp	r1, #0
c0d0505c:	d10f      	bne.n	c0d0507e <ux_stack_get_step_params+0x2a>
c0d0505e:	4c08      	ldr	r4, [pc, #32]	; (c0d05080 <ux_stack_get_step_params+0x2c>)
c0d05060:	8ba1      	ldrh	r1, [r4, #28]
c0d05062:	8b22      	ldrh	r2, [r4, #24]
c0d05064:	428a      	cmp	r2, r1
c0d05066:	d20a      	bcs.n	c0d0507e <ux_stack_get_step_params+0x2a>
c0d05068:	6960      	ldr	r0, [r4, #20]
c0d0506a:	f7fd f991 	bl	c0d02390 <pic>
c0d0506e:	8b21      	ldrh	r1, [r4, #24]
c0d05070:	0089      	lsls	r1, r1, #2
c0d05072:	5840      	ldr	r0, [r0, r1]
c0d05074:	f7fd f98c 	bl	c0d02390 <pic>
c0d05078:	6840      	ldr	r0, [r0, #4]
c0d0507a:	f7fd f989 	bl	c0d02390 <pic>
c0d0507e:	bd10      	pop	{r4, pc}
c0d05080:	20000258 	.word	0x20000258

c0d05084 <ux_stack_get_current_step_params>:
c0d05084:	b580      	push	{r7, lr}
c0d05086:	4803      	ldr	r0, [pc, #12]	; (c0d05094 <ux_stack_get_current_step_params+0x10>)
c0d05088:	7800      	ldrb	r0, [r0, #0]
c0d0508a:	1e40      	subs	r0, r0, #1
c0d0508c:	f7ff ffe2 	bl	c0d05054 <ux_stack_get_step_params>
c0d05090:	bd80      	pop	{r7, pc}
c0d05092:	46c0      	nop			; (mov r8, r8)
c0d05094:	20000258 	.word	0x20000258

c0d05098 <ux_layout_bb_init_common>:
c0d05098:	b510      	push	{r4, lr}
c0d0509a:	4604      	mov	r4, r0
c0d0509c:	f000 fb94 	bl	c0d057c8 <ux_stack_init>
c0d050a0:	2024      	movs	r0, #36	; 0x24
c0d050a2:	4360      	muls	r0, r4
c0d050a4:	4908      	ldr	r1, [pc, #32]	; (c0d050c8 <ux_layout_bb_init_common+0x30>)
c0d050a6:	1808      	adds	r0, r1, r0
c0d050a8:	21c8      	movs	r1, #200	; 0xc8
c0d050aa:	2205      	movs	r2, #5
c0d050ac:	5442      	strb	r2, [r0, r1]
c0d050ae:	21c4      	movs	r1, #196	; 0xc4
c0d050b0:	4a06      	ldr	r2, [pc, #24]	; (c0d050cc <ux_layout_bb_init_common+0x34>)
c0d050b2:	447a      	add	r2, pc
c0d050b4:	5042      	str	r2, [r0, r1]
c0d050b6:	21d4      	movs	r1, #212	; 0xd4
c0d050b8:	4a05      	ldr	r2, [pc, #20]	; (c0d050d0 <ux_layout_bb_init_common+0x38>)
c0d050ba:	447a      	add	r2, pc
c0d050bc:	5042      	str	r2, [r0, r1]
c0d050be:	21c1      	movs	r1, #193	; 0xc1
c0d050c0:	2201      	movs	r2, #1
c0d050c2:	5442      	strb	r2, [r0, r1]
c0d050c4:	bd10      	pop	{r4, pc}
c0d050c6:	46c0      	nop			; (mov r8, r8)
c0d050c8:	20000258 	.word	0x20000258
c0d050cc:	00003692 	.word	0x00003692
c0d050d0:	ffffff5f 	.word	0xffffff5f

c0d050d4 <ux_layout_bn_prepro>:
c0d050d4:	b580      	push	{r7, lr}
c0d050d6:	f000 fb11 	bl	c0d056fc <ux_layout_strings_prepro>
c0d050da:	2800      	cmp	r0, #0
c0d050dc:	d007      	beq.n	c0d050ee <ux_layout_bn_prepro+0x1a>
c0d050de:	22a1      	movs	r2, #161	; 0xa1
c0d050e0:	4903      	ldr	r1, [pc, #12]	; (c0d050f0 <ux_layout_bn_prepro+0x1c>)
c0d050e2:	5c8a      	ldrb	r2, [r1, r2]
c0d050e4:	2a11      	cmp	r2, #17
c0d050e6:	d102      	bne.n	c0d050ee <ux_layout_bn_prepro+0x1a>
c0d050e8:	22b8      	movs	r2, #184	; 0xb8
c0d050ea:	4b02      	ldr	r3, [pc, #8]	; (c0d050f4 <ux_layout_bn_prepro+0x20>)
c0d050ec:	528b      	strh	r3, [r1, r2]
c0d050ee:	bd80      	pop	{r7, pc}
c0d050f0:	20000258 	.word	0x20000258
c0d050f4:	0000800a 	.word	0x0000800a

c0d050f8 <ux_layout_bn_init>:
c0d050f8:	b510      	push	{r4, lr}
c0d050fa:	4604      	mov	r4, r0
c0d050fc:	f7ff ffcc 	bl	c0d05098 <ux_layout_bb_init_common>
c0d05100:	2024      	movs	r0, #36	; 0x24
c0d05102:	4360      	muls	r0, r4
c0d05104:	4904      	ldr	r1, [pc, #16]	; (c0d05118 <ux_layout_bn_init+0x20>)
c0d05106:	1808      	adds	r0, r1, r0
c0d05108:	21d0      	movs	r1, #208	; 0xd0
c0d0510a:	4a04      	ldr	r2, [pc, #16]	; (c0d0511c <ux_layout_bn_init+0x24>)
c0d0510c:	447a      	add	r2, pc
c0d0510e:	5042      	str	r2, [r0, r1]
c0d05110:	4620      	mov	r0, r4
c0d05112:	f000 fb33 	bl	c0d0577c <ux_stack_display>
c0d05116:	bd10      	pop	{r4, pc}
c0d05118:	20000258 	.word	0x20000258
c0d0511c:	ffffffc5 	.word	0xffffffc5

c0d05120 <ux_layout_paging_redisplay_common>:
c0d05120:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d05122:	b081      	sub	sp, #4
c0d05124:	9300      	str	r3, [sp, #0]
c0d05126:	4616      	mov	r6, r2
c0d05128:	460f      	mov	r7, r1
c0d0512a:	4605      	mov	r5, r0
c0d0512c:	f7ff ffb4 	bl	c0d05098 <ux_layout_bb_init_common>
c0d05130:	4c09      	ldr	r4, [pc, #36]	; (c0d05158 <ux_layout_paging_redisplay_common+0x38>)
c0d05132:	6861      	ldr	r1, [r4, #4]
c0d05134:	1d22      	adds	r2, r4, #4
c0d05136:	230a      	movs	r3, #10
c0d05138:	4638      	mov	r0, r7
c0d0513a:	f000 f955 	bl	c0d053e8 <ux_layout_paging_compute>
c0d0513e:	2024      	movs	r0, #36	; 0x24
c0d05140:	4368      	muls	r0, r5
c0d05142:	1820      	adds	r0, r4, r0
c0d05144:	21d4      	movs	r1, #212	; 0xd4
c0d05146:	5046      	str	r6, [r0, r1]
c0d05148:	21d0      	movs	r1, #208	; 0xd0
c0d0514a:	9a00      	ldr	r2, [sp, #0]
c0d0514c:	5042      	str	r2, [r0, r1]
c0d0514e:	4628      	mov	r0, r5
c0d05150:	f000 fb14 	bl	c0d0577c <ux_stack_display>
c0d05154:	b001      	add	sp, #4
c0d05156:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d05158:	20000258 	.word	0x20000258

c0d0515c <ux_layout_paging_redisplay_by_addr>:
c0d0515c:	b510      	push	{r4, lr}
c0d0515e:	4604      	mov	r4, r0
c0d05160:	f7ff ff90 	bl	c0d05084 <ux_stack_get_current_step_params>
c0d05164:	6841      	ldr	r1, [r0, #4]
c0d05166:	4a04      	ldr	r2, [pc, #16]	; (c0d05178 <ux_layout_paging_redisplay_by_addr+0x1c>)
c0d05168:	447a      	add	r2, pc
c0d0516a:	4b04      	ldr	r3, [pc, #16]	; (c0d0517c <ux_layout_paging_redisplay_by_addr+0x20>)
c0d0516c:	447b      	add	r3, pc
c0d0516e:	4620      	mov	r0, r4
c0d05170:	f7ff ffd6 	bl	c0d05120 <ux_layout_paging_redisplay_common>
c0d05174:	bd10      	pop	{r4, pc}
c0d05176:	46c0      	nop			; (mov r8, r8)
c0d05178:	00000015 	.word	0x00000015
c0d0517c:	00000025 	.word	0x00000025

c0d05180 <ux_layout_paging_button_callback_by_addr>:
c0d05180:	b580      	push	{r7, lr}
c0d05182:	4903      	ldr	r1, [pc, #12]	; (c0d05190 <ux_layout_paging_button_callback_by_addr+0x10>)
c0d05184:	4479      	add	r1, pc
c0d05186:	f000 f8f9 	bl	c0d0537c <ux_layout_paging_button_callback_common>
c0d0518a:	2000      	movs	r0, #0
c0d0518c:	bd80      	pop	{r7, pc}
c0d0518e:	46c0      	nop			; (mov r8, r8)
c0d05190:	ffffffd5 	.word	0xffffffd5

c0d05194 <ux_layout_paging_prepro_by_addr>:
c0d05194:	b510      	push	{r4, lr}
c0d05196:	4604      	mov	r4, r0
c0d05198:	f7ff ff74 	bl	c0d05084 <ux_stack_get_current_step_params>
c0d0519c:	c806      	ldmia	r0!, {r1, r2}
c0d0519e:	4620      	mov	r0, r4
c0d051a0:	f000 f84e 	bl	c0d05240 <ux_layout_paging_prepro_common>
c0d051a4:	bd10      	pop	{r4, pc}
	...

c0d051a8 <ux_layout_paging_init_common>:
c0d051a8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d051aa:	b083      	sub	sp, #12
c0d051ac:	9200      	str	r2, [sp, #0]
c0d051ae:	460e      	mov	r6, r1
c0d051b0:	9002      	str	r0, [sp, #8]
c0d051b2:	4c1a      	ldr	r4, [pc, #104]	; (c0d0521c <ux_layout_paging_init_common+0x74>)
c0d051b4:	7b27      	ldrb	r7, [r4, #12]
c0d051b6:	2500      	movs	r5, #0
c0d051b8:	43e8      	mvns	r0, r5
c0d051ba:	9001      	str	r0, [sp, #4]
c0d051bc:	f7ff fde6 	bl	c0d04d8c <ux_flow_direction>
c0d051c0:	2801      	cmp	r0, #1
c0d051c2:	d004      	beq.n	c0d051ce <ux_layout_paging_init_common+0x26>
c0d051c4:	1c40      	adds	r0, r0, #1
c0d051c6:	d106      	bne.n	c0d051d6 <ux_layout_paging_init_common+0x2e>
c0d051c8:	9801      	ldr	r0, [sp, #4]
c0d051ca:	6060      	str	r0, [r4, #4]
c0d051cc:	e000      	b.n	c0d051d0 <ux_layout_paging_init_common+0x28>
c0d051ce:	6065      	str	r5, [r4, #4]
c0d051d0:	60a5      	str	r5, [r4, #8]
c0d051d2:	60e5      	str	r5, [r4, #12]
c0d051d4:	6125      	str	r5, [r4, #16]
c0d051d6:	7327      	strb	r7, [r4, #12]
c0d051d8:	9802      	ldr	r0, [sp, #8]
c0d051da:	f000 faf5 	bl	c0d057c8 <ux_stack_init>
c0d051de:	2041      	movs	r0, #65	; 0x41
c0d051e0:	0080      	lsls	r0, r0, #2
c0d051e2:	5820      	ldr	r0, [r4, r0]
c0d051e4:	4330      	orrs	r0, r6
c0d051e6:	d101      	bne.n	c0d051ec <ux_layout_paging_init_common+0x44>
c0d051e8:	4e0d      	ldr	r6, [pc, #52]	; (c0d05220 <ux_layout_paging_init_common+0x78>)
c0d051ea:	447e      	add	r6, pc
c0d051ec:	9f00      	ldr	r7, [sp, #0]
c0d051ee:	1d22      	adds	r2, r4, #4
c0d051f0:	230a      	movs	r3, #10
c0d051f2:	4630      	mov	r0, r6
c0d051f4:	9901      	ldr	r1, [sp, #4]
c0d051f6:	f000 f8f7 	bl	c0d053e8 <ux_layout_paging_compute>
c0d051fa:	60a0      	str	r0, [r4, #8]
c0d051fc:	2800      	cmp	r0, #0
c0d051fe:	d005      	beq.n	c0d0520c <ux_layout_paging_init_common+0x64>
c0d05200:	1e40      	subs	r0, r0, #1
c0d05202:	6861      	ldr	r1, [r4, #4]
c0d05204:	4281      	cmp	r1, r0
c0d05206:	d905      	bls.n	c0d05214 <ux_layout_paging_init_common+0x6c>
c0d05208:	6060      	str	r0, [r4, #4]
c0d0520a:	e003      	b.n	c0d05214 <ux_layout_paging_init_common+0x6c>
c0d0520c:	6065      	str	r5, [r4, #4]
c0d0520e:	60a5      	str	r5, [r4, #8]
c0d05210:	60e5      	str	r5, [r4, #12]
c0d05212:	6125      	str	r5, [r4, #16]
c0d05214:	9802      	ldr	r0, [sp, #8]
c0d05216:	47b8      	blx	r7
c0d05218:	b003      	add	sp, #12
c0d0521a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0521c:	20000258 	.word	0x20000258
c0d05220:	00003604 	.word	0x00003604

c0d05224 <ux_layout_paging_init>:
c0d05224:	b510      	push	{r4, lr}
c0d05226:	4604      	mov	r4, r0
c0d05228:	f7ff ff14 	bl	c0d05054 <ux_stack_get_step_params>
c0d0522c:	6841      	ldr	r1, [r0, #4]
c0d0522e:	4a03      	ldr	r2, [pc, #12]	; (c0d0523c <ux_layout_paging_init+0x18>)
c0d05230:	447a      	add	r2, pc
c0d05232:	4620      	mov	r0, r4
c0d05234:	f7ff ffb8 	bl	c0d051a8 <ux_layout_paging_init_common>
c0d05238:	bd10      	pop	{r4, pc}
c0d0523a:	46c0      	nop			; (mov r8, r8)
c0d0523c:	ffffff29 	.word	0xffffff29

c0d05240 <ux_layout_paging_prepro_common>:
c0d05240:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d05242:	b083      	sub	sp, #12
c0d05244:	4615      	mov	r5, r2
c0d05246:	460e      	mov	r6, r1
c0d05248:	4607      	mov	r7, r0
c0d0524a:	4c46      	ldr	r4, [pc, #280]	; (c0d05364 <ux_layout_paging_prepro_common+0x124>)
c0d0524c:	34a0      	adds	r4, #160	; 0xa0
c0d0524e:	2220      	movs	r2, #32
c0d05250:	4620      	mov	r0, r4
c0d05252:	4639      	mov	r1, r7
c0d05254:	f000 fc56 	bl	c0d05b04 <__aeabi_memmove>
c0d05258:	7878      	ldrb	r0, [r7, #1]
c0d0525a:	2810      	cmp	r0, #16
c0d0525c:	dc18      	bgt.n	c0d05290 <ux_layout_paging_prepro_common+0x50>
c0d0525e:	2801      	cmp	r0, #1
c0d05260:	d02d      	beq.n	c0d052be <ux_layout_paging_prepro_common+0x7e>
c0d05262:	2802      	cmp	r0, #2
c0d05264:	d034      	beq.n	c0d052d0 <ux_layout_paging_prepro_common+0x90>
c0d05266:	2810      	cmp	r0, #16
c0d05268:	d178      	bne.n	c0d0535c <ux_layout_paging_prepro_common+0x11c>
c0d0526a:	2e00      	cmp	r6, #0
c0d0526c:	d058      	beq.n	c0d05320 <ux_layout_paging_prepro_common+0xe0>
c0d0526e:	493d      	ldr	r1, [pc, #244]	; (c0d05364 <ux_layout_paging_prepro_common+0x124>)
c0d05270:	688d      	ldr	r5, [r1, #8]
c0d05272:	4630      	mov	r0, r6
c0d05274:	460e      	mov	r6, r1
c0d05276:	f7fd f88b 	bl	c0d02390 <pic>
c0d0527a:	4603      	mov	r3, r0
c0d0527c:	6870      	ldr	r0, [r6, #4]
c0d0527e:	68b1      	ldr	r1, [r6, #8]
c0d05280:	1c40      	adds	r0, r0, #1
c0d05282:	9000      	str	r0, [sp, #0]
c0d05284:	9101      	str	r1, [sp, #4]
c0d05286:	2d01      	cmp	r5, #1
c0d05288:	d855      	bhi.n	c0d05336 <ux_layout_paging_prepro_common+0xf6>
c0d0528a:	4a39      	ldr	r2, [pc, #228]	; (c0d05370 <ux_layout_paging_prepro_common+0x130>)
c0d0528c:	447a      	add	r2, pc
c0d0528e:	e054      	b.n	c0d0533a <ux_layout_paging_prepro_common+0xfa>
c0d05290:	4601      	mov	r1, r0
c0d05292:	3911      	subs	r1, #17
c0d05294:	2903      	cmp	r1, #3
c0d05296:	d261      	bcs.n	c0d0535c <ux_layout_paging_prepro_common+0x11c>
c0d05298:	210f      	movs	r1, #15
c0d0529a:	4008      	ands	r0, r1
c0d0529c:	2801      	cmp	r0, #1
c0d0529e:	d15d      	bne.n	c0d0535c <ux_layout_paging_prepro_common+0x11c>
c0d052a0:	4830      	ldr	r0, [pc, #192]	; (c0d05364 <ux_layout_paging_prepro_common+0x124>)
c0d052a2:	8a06      	ldrh	r6, [r0, #16]
c0d052a4:	2e00      	cmp	r6, #0
c0d052a6:	d059      	beq.n	c0d0535c <ux_layout_paging_prepro_common+0x11c>
c0d052a8:	2e7f      	cmp	r6, #127	; 0x7f
c0d052aa:	d300      	bcc.n	c0d052ae <ux_layout_paging_prepro_common+0x6e>
c0d052ac:	267f      	movs	r6, #127	; 0x7f
c0d052ae:	9102      	str	r1, [sp, #8]
c0d052b0:	2d00      	cmp	r5, #0
c0d052b2:	d019      	beq.n	c0d052e8 <ux_layout_paging_prepro_common+0xa8>
c0d052b4:	4628      	mov	r0, r5
c0d052b6:	f7fd f86b 	bl	c0d02390 <pic>
c0d052ba:	4f2a      	ldr	r7, [pc, #168]	; (c0d05364 <ux_layout_paging_prepro_common+0x124>)
c0d052bc:	e018      	b.n	c0d052f0 <ux_layout_paging_prepro_common+0xb0>
c0d052be:	f7ff fd1f 	bl	c0d04d00 <ux_flow_is_first>
c0d052c2:	2800      	cmp	r0, #0
c0d052c4:	d04a      	beq.n	c0d0535c <ux_layout_paging_prepro_common+0x11c>
c0d052c6:	4827      	ldr	r0, [pc, #156]	; (c0d05364 <ux_layout_paging_prepro_common+0x124>)
c0d052c8:	6840      	ldr	r0, [r0, #4]
c0d052ca:	2800      	cmp	r0, #0
c0d052cc:	d00a      	beq.n	c0d052e4 <ux_layout_paging_prepro_common+0xa4>
c0d052ce:	e045      	b.n	c0d0535c <ux_layout_paging_prepro_common+0x11c>
c0d052d0:	f7ff fd3c 	bl	c0d04d4c <ux_flow_is_last>
c0d052d4:	2800      	cmp	r0, #0
c0d052d6:	d041      	beq.n	c0d0535c <ux_layout_paging_prepro_common+0x11c>
c0d052d8:	4922      	ldr	r1, [pc, #136]	; (c0d05364 <ux_layout_paging_prepro_common+0x124>)
c0d052da:	6848      	ldr	r0, [r1, #4]
c0d052dc:	6889      	ldr	r1, [r1, #8]
c0d052de:	1e49      	subs	r1, r1, #1
c0d052e0:	4288      	cmp	r0, r1
c0d052e2:	d13b      	bne.n	c0d0535c <ux_layout_paging_prepro_common+0x11c>
c0d052e4:	2400      	movs	r4, #0
c0d052e6:	e039      	b.n	c0d0535c <ux_layout_paging_prepro_common+0x11c>
c0d052e8:	2041      	movs	r0, #65	; 0x41
c0d052ea:	0080      	lsls	r0, r0, #2
c0d052ec:	4f1d      	ldr	r7, [pc, #116]	; (c0d05364 <ux_layout_paging_prepro_common+0x124>)
c0d052ee:	5838      	ldr	r0, [r7, r0]
c0d052f0:	89f9      	ldrh	r1, [r7, #14]
c0d052f2:	1840      	adds	r0, r0, r1
c0d052f4:	9000      	str	r0, [sp, #0]
c0d052f6:	463d      	mov	r5, r7
c0d052f8:	3520      	adds	r5, #32
c0d052fa:	2180      	movs	r1, #128	; 0x80
c0d052fc:	4a1e      	ldr	r2, [pc, #120]	; (c0d05378 <ux_layout_paging_prepro_common+0x138>)
c0d052fe:	447a      	add	r2, pc
c0d05300:	4628      	mov	r0, r5
c0d05302:	4633      	mov	r3, r6
c0d05304:	f7fc fda8 	bl	c0d01e58 <snprintf>
c0d05308:	20bc      	movs	r0, #188	; 0xbc
c0d0530a:	503d      	str	r5, [r7, r0]
c0d0530c:	7b39      	ldrb	r1, [r7, #12]
c0d0530e:	9802      	ldr	r0, [sp, #8]
c0d05310:	4001      	ands	r1, r0
c0d05312:	4815      	ldr	r0, [pc, #84]	; (c0d05368 <ux_layout_paging_prepro_common+0x128>)
c0d05314:	290f      	cmp	r1, #15
c0d05316:	d000      	beq.n	c0d0531a <ux_layout_paging_prepro_common+0xda>
c0d05318:	1c80      	adds	r0, r0, #2
c0d0531a:	21b8      	movs	r1, #184	; 0xb8
c0d0531c:	5278      	strh	r0, [r7, r1]
c0d0531e:	e01d      	b.n	c0d0535c <ux_layout_paging_prepro_common+0x11c>
c0d05320:	4e10      	ldr	r6, [pc, #64]	; (c0d05364 <ux_layout_paging_prepro_common+0x124>)
c0d05322:	6871      	ldr	r1, [r6, #4]
c0d05324:	68b0      	ldr	r0, [r6, #8]
c0d05326:	9000      	str	r0, [sp, #0]
c0d05328:	4630      	mov	r0, r6
c0d0532a:	3020      	adds	r0, #32
c0d0532c:	1c4b      	adds	r3, r1, #1
c0d0532e:	2180      	movs	r1, #128	; 0x80
c0d05330:	4a10      	ldr	r2, [pc, #64]	; (c0d05374 <ux_layout_paging_prepro_common+0x134>)
c0d05332:	447a      	add	r2, pc
c0d05334:	e004      	b.n	c0d05340 <ux_layout_paging_prepro_common+0x100>
c0d05336:	4a0d      	ldr	r2, [pc, #52]	; (c0d0536c <ux_layout_paging_prepro_common+0x12c>)
c0d05338:	447a      	add	r2, pc
c0d0533a:	4630      	mov	r0, r6
c0d0533c:	3020      	adds	r0, #32
c0d0533e:	2180      	movs	r1, #128	; 0x80
c0d05340:	f7fc fd8a 	bl	c0d01e58 <snprintf>
c0d05344:	4630      	mov	r0, r6
c0d05346:	3020      	adds	r0, #32
c0d05348:	21bc      	movs	r1, #188	; 0xbc
c0d0534a:	5070      	str	r0, [r6, r1]
c0d0534c:	4806      	ldr	r0, [pc, #24]	; (c0d05368 <ux_layout_paging_prepro_common+0x128>)
c0d0534e:	7b31      	ldrb	r1, [r6, #12]
c0d05350:	0909      	lsrs	r1, r1, #4
c0d05352:	290e      	cmp	r1, #14
c0d05354:	d800      	bhi.n	c0d05358 <ux_layout_paging_prepro_common+0x118>
c0d05356:	1c80      	adds	r0, r0, #2
c0d05358:	21b8      	movs	r1, #184	; 0xb8
c0d0535a:	5270      	strh	r0, [r6, r1]
c0d0535c:	4620      	mov	r0, r4
c0d0535e:	b003      	add	sp, #12
c0d05360:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d05362:	46c0      	nop			; (mov r8, r8)
c0d05364:	20000258 	.word	0x20000258
c0d05368:	ffff8008 	.word	0xffff8008
c0d0536c:	000034ac 	.word	0x000034ac
c0d05370:	00003563 	.word	0x00003563
c0d05374:	000034c0 	.word	0x000034c0
c0d05378:	000034fa 	.word	0x000034fa

c0d0537c <ux_layout_paging_button_callback_common>:
c0d0537c:	b580      	push	{r7, lr}
c0d0537e:	4a16      	ldr	r2, [pc, #88]	; (c0d053d8 <ux_layout_paging_button_callback_common+0x5c>)
c0d05380:	4290      	cmp	r0, r2
c0d05382:	d00b      	beq.n	c0d0539c <ux_layout_paging_button_callback_common+0x20>
c0d05384:	4a15      	ldr	r2, [pc, #84]	; (c0d053dc <ux_layout_paging_button_callback_common+0x60>)
c0d05386:	4290      	cmp	r0, r2
c0d05388:	d013      	beq.n	c0d053b2 <ux_layout_paging_button_callback_common+0x36>
c0d0538a:	4a15      	ldr	r2, [pc, #84]	; (c0d053e0 <ux_layout_paging_button_callback_common+0x64>)
c0d0538c:	4290      	cmp	r0, r2
c0d0538e:	d10f      	bne.n	c0d053b0 <ux_layout_paging_button_callback_common+0x34>
c0d05390:	4814      	ldr	r0, [pc, #80]	; (c0d053e4 <ux_layout_paging_button_callback_common+0x68>)
c0d05392:	6842      	ldr	r2, [r0, #4]
c0d05394:	2a00      	cmp	r2, #0
c0d05396:	d01b      	beq.n	c0d053d0 <ux_layout_paging_button_callback_common+0x54>
c0d05398:	1e52      	subs	r2, r2, #1
c0d0539a:	e014      	b.n	c0d053c6 <ux_layout_paging_button_callback_common+0x4a>
c0d0539c:	4911      	ldr	r1, [pc, #68]	; (c0d053e4 <ux_layout_paging_button_callback_common+0x68>)
c0d0539e:	6888      	ldr	r0, [r1, #8]
c0d053a0:	2800      	cmp	r0, #0
c0d053a2:	d003      	beq.n	c0d053ac <ux_layout_paging_button_callback_common+0x30>
c0d053a4:	6849      	ldr	r1, [r1, #4]
c0d053a6:	1e40      	subs	r0, r0, #1
c0d053a8:	4288      	cmp	r0, r1
c0d053aa:	d101      	bne.n	c0d053b0 <ux_layout_paging_button_callback_common+0x34>
c0d053ac:	f7ff fda4 	bl	c0d04ef8 <ux_flow_validate>
c0d053b0:	bd80      	pop	{r7, pc}
c0d053b2:	480c      	ldr	r0, [pc, #48]	; (c0d053e4 <ux_layout_paging_button_callback_common+0x68>)
c0d053b4:	6842      	ldr	r2, [r0, #4]
c0d053b6:	6883      	ldr	r3, [r0, #8]
c0d053b8:	1e5b      	subs	r3, r3, #1
c0d053ba:	429a      	cmp	r2, r3
c0d053bc:	d102      	bne.n	c0d053c4 <ux_layout_paging_button_callback_common+0x48>
c0d053be:	f7ff fd2b 	bl	c0d04e18 <ux_flow_next>
c0d053c2:	bd80      	pop	{r7, pc}
c0d053c4:	1c52      	adds	r2, r2, #1
c0d053c6:	6042      	str	r2, [r0, #4]
c0d053c8:	7800      	ldrb	r0, [r0, #0]
c0d053ca:	1e40      	subs	r0, r0, #1
c0d053cc:	4788      	blx	r1
c0d053ce:	bd80      	pop	{r7, pc}
c0d053d0:	f7ff fd28 	bl	c0d04e24 <ux_flow_prev>
c0d053d4:	bd80      	pop	{r7, pc}
c0d053d6:	46c0      	nop			; (mov r8, r8)
c0d053d8:	80000003 	.word	0x80000003
c0d053dc:	80000002 	.word	0x80000002
c0d053e0:	80000001 	.word	0x80000001
c0d053e4:	20000258 	.word	0x20000258

c0d053e8 <ux_layout_paging_compute>:
c0d053e8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d053ea:	b08d      	sub	sp, #52	; 0x34
c0d053ec:	2300      	movs	r3, #0
c0d053ee:	8193      	strh	r3, [r2, #12]
c0d053f0:	9302      	str	r3, [sp, #8]
c0d053f2:	8153      	strh	r3, [r2, #10]
c0d053f4:	1c4b      	adds	r3, r1, #1
c0d053f6:	9305      	str	r3, [sp, #20]
c0d053f8:	d003      	beq.n	c0d05402 <ux_layout_paging_compute+0x1a>
c0d053fa:	6853      	ldr	r3, [r2, #4]
c0d053fc:	428b      	cmp	r3, r1
c0d053fe:	d800      	bhi.n	c0d05402 <ux_layout_paging_compute+0x1a>
c0d05400:	e0ae      	b.n	c0d05560 <ux_layout_paging_compute+0x178>
c0d05402:	9104      	str	r1, [sp, #16]
c0d05404:	9203      	str	r2, [sp, #12]
c0d05406:	2800      	cmp	r0, #0
c0d05408:	d002      	beq.n	c0d05410 <ux_layout_paging_compute+0x28>
c0d0540a:	f7fc ffc1 	bl	c0d02390 <pic>
c0d0540e:	e003      	b.n	c0d05418 <ux_layout_paging_compute+0x30>
c0d05410:	2041      	movs	r0, #65	; 0x41
c0d05412:	0080      	lsls	r0, r0, #2
c0d05414:	4954      	ldr	r1, [pc, #336]	; (c0d05568 <ux_layout_paging_compute+0x180>)
c0d05416:	5808      	ldr	r0, [r1, r0]
c0d05418:	4604      	mov	r4, r0
c0d0541a:	f000 fcbd 	bl	c0d05d98 <strlen>
c0d0541e:	4601      	mov	r1, r0
c0d05420:	2001      	movs	r0, #1
c0d05422:	9002      	str	r0, [sp, #8]
c0d05424:	2901      	cmp	r1, #1
c0d05426:	da00      	bge.n	c0d0542a <ux_layout_paging_compute+0x42>
c0d05428:	e09a      	b.n	c0d05560 <ux_layout_paging_compute+0x178>
c0d0542a:	1866      	adds	r6, r4, r1
c0d0542c:	484e      	ldr	r0, [pc, #312]	; (c0d05568 <ux_layout_paging_compute+0x180>)
c0d0542e:	7b02      	ldrb	r2, [r0, #12]
c0d05430:	200f      	movs	r0, #15
c0d05432:	900c      	str	r0, [sp, #48]	; 0x30
c0d05434:	4002      	ands	r2, r0
c0d05436:	2000      	movs	r0, #0
c0d05438:	9007      	str	r0, [sp, #28]
c0d0543a:	9401      	str	r4, [sp, #4]
c0d0543c:	9608      	str	r6, [sp, #32]
c0d0543e:	42b4      	cmp	r4, r6
c0d05440:	4620      	mov	r0, r4
c0d05442:	d800      	bhi.n	c0d05446 <ux_layout_paging_compute+0x5e>
c0d05444:	4630      	mov	r0, r6
c0d05446:	1b00      	subs	r0, r0, r4
c0d05448:	9006      	str	r0, [sp, #24]
c0d0544a:	2300      	movs	r3, #0
c0d0544c:	4620      	mov	r0, r4
c0d0544e:	9409      	str	r4, [sp, #36]	; 0x24
c0d05450:	18e5      	adds	r5, r4, r3
c0d05452:	42b5      	cmp	r5, r6
c0d05454:	d239      	bcs.n	c0d054ca <ux_layout_paging_compute+0xe2>
c0d05456:	461f      	mov	r7, r3
c0d05458:	900a      	str	r0, [sp, #40]	; 0x28
c0d0545a:	1c5b      	adds	r3, r3, #1
c0d0545c:	0618      	lsls	r0, r3, #24
c0d0545e:	d024      	beq.n	c0d054aa <ux_layout_paging_compute+0xc2>
c0d05460:	2100      	movs	r1, #0
c0d05462:	930b      	str	r3, [sp, #44]	; 0x2c
c0d05464:	461e      	mov	r6, r3
c0d05466:	7820      	ldrb	r0, [r4, #0]
c0d05468:	b240      	sxtb	r0, r0
c0d0546a:	b2c3      	uxtb	r3, r0
c0d0546c:	2b20      	cmp	r3, #32
c0d0546e:	d30c      	bcc.n	c0d0548a <ux_layout_paging_compute+0xa2>
c0d05470:	2800      	cmp	r0, #0
c0d05472:	d40a      	bmi.n	c0d0548a <ux_layout_paging_compute+0xa2>
c0d05474:	483d      	ldr	r0, [pc, #244]	; (c0d0556c <ux_layout_paging_compute+0x184>)
c0d05476:	4478      	add	r0, pc
c0d05478:	1818      	adds	r0, r3, r0
c0d0547a:	3820      	subs	r0, #32
c0d0547c:	7803      	ldrb	r3, [r0, #0]
c0d0547e:	2a0f      	cmp	r2, #15
c0d05480:	d108      	bne.n	c0d05494 <ux_layout_paging_compute+0xac>
c0d05482:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d05484:	4003      	ands	r3, r0
c0d05486:	18c9      	adds	r1, r1, r3
c0d05488:	e006      	b.n	c0d05498 <ux_layout_paging_compute+0xb0>
c0d0548a:	2b0a      	cmp	r3, #10
c0d0548c:	d008      	beq.n	c0d054a0 <ux_layout_paging_compute+0xb8>
c0d0548e:	2b0d      	cmp	r3, #13
c0d05490:	d102      	bne.n	c0d05498 <ux_layout_paging_compute+0xb0>
c0d05492:	e005      	b.n	c0d054a0 <ux_layout_paging_compute+0xb8>
c0d05494:	0918      	lsrs	r0, r3, #4
c0d05496:	1809      	adds	r1, r1, r0
c0d05498:	1e76      	subs	r6, r6, #1
c0d0549a:	1c64      	adds	r4, r4, #1
c0d0549c:	0630      	lsls	r0, r6, #24
c0d0549e:	d1e2      	bne.n	c0d05466 <ux_layout_paging_compute+0x7e>
c0d054a0:	2972      	cmp	r1, #114	; 0x72
c0d054a2:	9e08      	ldr	r6, [sp, #32]
c0d054a4:	9c09      	ldr	r4, [sp, #36]	; 0x24
c0d054a6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
c0d054a8:	d811      	bhi.n	c0d054ce <ux_layout_paging_compute+0xe6>
c0d054aa:	7829      	ldrb	r1, [r5, #0]
c0d054ac:	4608      	mov	r0, r1
c0d054ae:	3809      	subs	r0, #9
c0d054b0:	2802      	cmp	r0, #2
c0d054b2:	d306      	bcc.n	c0d054c2 <ux_layout_paging_compute+0xda>
c0d054b4:	2920      	cmp	r1, #32
c0d054b6:	d004      	beq.n	c0d054c2 <ux_layout_paging_compute+0xda>
c0d054b8:	292d      	cmp	r1, #45	; 0x2d
c0d054ba:	d002      	beq.n	c0d054c2 <ux_layout_paging_compute+0xda>
c0d054bc:	295f      	cmp	r1, #95	; 0x5f
c0d054be:	d000      	beq.n	c0d054c2 <ux_layout_paging_compute+0xda>
c0d054c0:	9d0a      	ldr	r5, [sp, #40]	; 0x28
c0d054c2:	4628      	mov	r0, r5
c0d054c4:	290a      	cmp	r1, #10
c0d054c6:	d1c3      	bne.n	c0d05450 <ux_layout_paging_compute+0x68>
c0d054c8:	e003      	b.n	c0d054d2 <ux_layout_paging_compute+0xea>
c0d054ca:	9b06      	ldr	r3, [sp, #24]
c0d054cc:	e001      	b.n	c0d054d2 <ux_layout_paging_compute+0xea>
c0d054ce:	463b      	mov	r3, r7
c0d054d0:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d054d2:	18e1      	adds	r1, r4, r3
c0d054d4:	42b1      	cmp	r1, r6
c0d054d6:	d215      	bcs.n	c0d05504 <ux_layout_paging_compute+0x11c>
c0d054d8:	2b00      	cmp	r3, #0
c0d054da:	d013      	beq.n	c0d05504 <ux_layout_paging_compute+0x11c>
c0d054dc:	42a0      	cmp	r0, r4
c0d054de:	d011      	beq.n	c0d05504 <ux_layout_paging_compute+0x11c>
c0d054e0:	4607      	mov	r7, r0
c0d054e2:	461d      	mov	r5, r3
c0d054e4:	1e48      	subs	r0, r1, #1
c0d054e6:	7803      	ldrb	r3, [r0, #0]
c0d054e8:	2b2c      	cmp	r3, #44	; 0x2c
c0d054ea:	dc06      	bgt.n	c0d054fa <ux_layout_paging_compute+0x112>
c0d054ec:	4618      	mov	r0, r3
c0d054ee:	3809      	subs	r0, #9
c0d054f0:	2802      	cmp	r0, #2
c0d054f2:	d306      	bcc.n	c0d05502 <ux_layout_paging_compute+0x11a>
c0d054f4:	2b20      	cmp	r3, #32
c0d054f6:	d004      	beq.n	c0d05502 <ux_layout_paging_compute+0x11a>
c0d054f8:	e018      	b.n	c0d0552c <ux_layout_paging_compute+0x144>
c0d054fa:	2b2d      	cmp	r3, #45	; 0x2d
c0d054fc:	d001      	beq.n	c0d05502 <ux_layout_paging_compute+0x11a>
c0d054fe:	2b5f      	cmp	r3, #95	; 0x5f
c0d05500:	d114      	bne.n	c0d0552c <ux_layout_paging_compute+0x144>
c0d05502:	462b      	mov	r3, r5
c0d05504:	9805      	ldr	r0, [sp, #20]
c0d05506:	2800      	cmp	r0, #0
c0d05508:	9904      	ldr	r1, [sp, #16]
c0d0550a:	d006      	beq.n	c0d0551a <ux_layout_paging_compute+0x132>
c0d0550c:	9807      	ldr	r0, [sp, #28]
c0d0550e:	4288      	cmp	r0, r1
c0d05510:	d103      	bne.n	c0d0551a <ux_layout_paging_compute+0x132>
c0d05512:	9803      	ldr	r0, [sp, #12]
c0d05514:	6840      	ldr	r0, [r0, #4]
c0d05516:	4288      	cmp	r0, r1
c0d05518:	d81d      	bhi.n	c0d05556 <ux_layout_paging_compute+0x16e>
c0d0551a:	18e4      	adds	r4, r4, r3
c0d0551c:	42b4      	cmp	r4, r6
c0d0551e:	d202      	bcs.n	c0d05526 <ux_layout_paging_compute+0x13e>
c0d05520:	9807      	ldr	r0, [sp, #28]
c0d05522:	1c40      	adds	r0, r0, #1
c0d05524:	9007      	str	r0, [sp, #28]
c0d05526:	42b4      	cmp	r4, r6
c0d05528:	d389      	bcc.n	c0d0543e <ux_layout_paging_compute+0x56>
c0d0552a:	e010      	b.n	c0d0554e <ux_layout_paging_compute+0x166>
c0d0552c:	7809      	ldrb	r1, [r1, #0]
c0d0552e:	292c      	cmp	r1, #44	; 0x2c
c0d05530:	462b      	mov	r3, r5
c0d05532:	dc06      	bgt.n	c0d05542 <ux_layout_paging_compute+0x15a>
c0d05534:	4608      	mov	r0, r1
c0d05536:	3809      	subs	r0, #9
c0d05538:	2802      	cmp	r0, #2
c0d0553a:	d3e3      	bcc.n	c0d05504 <ux_layout_paging_compute+0x11c>
c0d0553c:	2920      	cmp	r1, #32
c0d0553e:	d0e1      	beq.n	c0d05504 <ux_layout_paging_compute+0x11c>
c0d05540:	e003      	b.n	c0d0554a <ux_layout_paging_compute+0x162>
c0d05542:	292d      	cmp	r1, #45	; 0x2d
c0d05544:	d0de      	beq.n	c0d05504 <ux_layout_paging_compute+0x11c>
c0d05546:	295f      	cmp	r1, #95	; 0x5f
c0d05548:	d0dc      	beq.n	c0d05504 <ux_layout_paging_compute+0x11c>
c0d0554a:	1b3b      	subs	r3, r7, r4
c0d0554c:	e7da      	b.n	c0d05504 <ux_layout_paging_compute+0x11c>
c0d0554e:	9807      	ldr	r0, [sp, #28]
c0d05550:	1c40      	adds	r0, r0, #1
c0d05552:	9002      	str	r0, [sp, #8]
c0d05554:	e004      	b.n	c0d05560 <ux_layout_paging_compute+0x178>
c0d05556:	9903      	ldr	r1, [sp, #12]
c0d05558:	818b      	strh	r3, [r1, #12]
c0d0555a:	9801      	ldr	r0, [sp, #4]
c0d0555c:	1a20      	subs	r0, r4, r0
c0d0555e:	8148      	strh	r0, [r1, #10]
c0d05560:	9802      	ldr	r0, [sp, #8]
c0d05562:	b00d      	add	sp, #52	; 0x34
c0d05564:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d05566:	46c0      	nop			; (mov r8, r8)
c0d05568:	20000258 	.word	0x20000258
c0d0556c:	00003387 	.word	0x00003387

c0d05570 <ux_layout_pb_prepro>:
c0d05570:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d05572:	b081      	sub	sp, #4
c0d05574:	4606      	mov	r6, r0
c0d05576:	f7ff fd85 	bl	c0d05084 <ux_stack_get_current_step_params>
c0d0557a:	4605      	mov	r5, r0
c0d0557c:	4f11      	ldr	r7, [pc, #68]	; (c0d055c4 <ux_layout_pb_prepro+0x54>)
c0d0557e:	463c      	mov	r4, r7
c0d05580:	34a0      	adds	r4, #160	; 0xa0
c0d05582:	2220      	movs	r2, #32
c0d05584:	4620      	mov	r0, r4
c0d05586:	4631      	mov	r1, r6
c0d05588:	f000 fabc 	bl	c0d05b04 <__aeabi_memmove>
c0d0558c:	7870      	ldrb	r0, [r6, #1]
c0d0558e:	280f      	cmp	r0, #15
c0d05590:	dc06      	bgt.n	c0d055a0 <ux_layout_pb_prepro+0x30>
c0d05592:	2801      	cmp	r0, #1
c0d05594:	d00a      	beq.n	c0d055ac <ux_layout_pb_prepro+0x3c>
c0d05596:	2802      	cmp	r0, #2
c0d05598:	d111      	bne.n	c0d055be <ux_layout_pb_prepro+0x4e>
c0d0559a:	f7ff fbd7 	bl	c0d04d4c <ux_flow_is_last>
c0d0559e:	e007      	b.n	c0d055b0 <ux_layout_pb_prepro+0x40>
c0d055a0:	2810      	cmp	r0, #16
c0d055a2:	d009      	beq.n	c0d055b8 <ux_layout_pb_prepro+0x48>
c0d055a4:	2811      	cmp	r0, #17
c0d055a6:	d10a      	bne.n	c0d055be <ux_layout_pb_prepro+0x4e>
c0d055a8:	6868      	ldr	r0, [r5, #4]
c0d055aa:	e006      	b.n	c0d055ba <ux_layout_pb_prepro+0x4a>
c0d055ac:	f7ff fba8 	bl	c0d04d00 <ux_flow_is_first>
c0d055b0:	2800      	cmp	r0, #0
c0d055b2:	d004      	beq.n	c0d055be <ux_layout_pb_prepro+0x4e>
c0d055b4:	2400      	movs	r4, #0
c0d055b6:	e002      	b.n	c0d055be <ux_layout_pb_prepro+0x4e>
c0d055b8:	6828      	ldr	r0, [r5, #0]
c0d055ba:	21bc      	movs	r1, #188	; 0xbc
c0d055bc:	5078      	str	r0, [r7, r1]
c0d055be:	4620      	mov	r0, r4
c0d055c0:	b001      	add	sp, #4
c0d055c2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d055c4:	20000258 	.word	0x20000258

c0d055c8 <ux_layout_pb_init>:
c0d055c8:	b510      	push	{r4, lr}
c0d055ca:	4604      	mov	r4, r0
c0d055cc:	f000 f8fc 	bl	c0d057c8 <ux_stack_init>
c0d055d0:	2024      	movs	r0, #36	; 0x24
c0d055d2:	4360      	muls	r0, r4
c0d055d4:	490b      	ldr	r1, [pc, #44]	; (c0d05604 <ux_layout_pb_init+0x3c>)
c0d055d6:	1808      	adds	r0, r1, r0
c0d055d8:	21c8      	movs	r1, #200	; 0xc8
c0d055da:	2205      	movs	r2, #5
c0d055dc:	5442      	strb	r2, [r0, r1]
c0d055de:	21c4      	movs	r1, #196	; 0xc4
c0d055e0:	4a09      	ldr	r2, [pc, #36]	; (c0d05608 <ux_layout_pb_init+0x40>)
c0d055e2:	447a      	add	r2, pc
c0d055e4:	5042      	str	r2, [r0, r1]
c0d055e6:	21d4      	movs	r1, #212	; 0xd4
c0d055e8:	4a08      	ldr	r2, [pc, #32]	; (c0d0560c <ux_layout_pb_init+0x44>)
c0d055ea:	447a      	add	r2, pc
c0d055ec:	5042      	str	r2, [r0, r1]
c0d055ee:	21d0      	movs	r1, #208	; 0xd0
c0d055f0:	4a07      	ldr	r2, [pc, #28]	; (c0d05610 <ux_layout_pb_init+0x48>)
c0d055f2:	447a      	add	r2, pc
c0d055f4:	5042      	str	r2, [r0, r1]
c0d055f6:	21c1      	movs	r1, #193	; 0xc1
c0d055f8:	2201      	movs	r2, #1
c0d055fa:	5442      	strb	r2, [r0, r1]
c0d055fc:	4620      	mov	r0, r4
c0d055fe:	f000 f8bd 	bl	c0d0577c <ux_stack_display>
c0d05602:	bd10      	pop	{r4, pc}
c0d05604:	20000258 	.word	0x20000258
c0d05608:	0000327e 	.word	0x0000327e
c0d0560c:	fffffa2f 	.word	0xfffffa2f
c0d05610:	ffffff7b 	.word	0xffffff7b

c0d05614 <ux_layout_pbb_prepro>:
c0d05614:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d05616:	b081      	sub	sp, #4
c0d05618:	4606      	mov	r6, r0
c0d0561a:	f7ff fd33 	bl	c0d05084 <ux_stack_get_current_step_params>
c0d0561e:	4605      	mov	r5, r0
c0d05620:	4f14      	ldr	r7, [pc, #80]	; (c0d05674 <ux_layout_pbb_prepro+0x60>)
c0d05622:	463c      	mov	r4, r7
c0d05624:	34a0      	adds	r4, #160	; 0xa0
c0d05626:	2220      	movs	r2, #32
c0d05628:	4620      	mov	r0, r4
c0d0562a:	4631      	mov	r1, r6
c0d0562c:	f000 fa6a 	bl	c0d05b04 <__aeabi_memmove>
c0d05630:	7870      	ldrb	r0, [r6, #1]
c0d05632:	280f      	cmp	r0, #15
c0d05634:	dc07      	bgt.n	c0d05646 <ux_layout_pbb_prepro+0x32>
c0d05636:	2801      	cmp	r0, #1
c0d05638:	d011      	beq.n	c0d0565e <ux_layout_pbb_prepro+0x4a>
c0d0563a:	2802      	cmp	r0, #2
c0d0563c:	d012      	beq.n	c0d05664 <ux_layout_pbb_prepro+0x50>
c0d0563e:	280f      	cmp	r0, #15
c0d05640:	d115      	bne.n	c0d0566e <ux_layout_pbb_prepro+0x5a>
c0d05642:	6828      	ldr	r0, [r5, #0]
c0d05644:	e008      	b.n	c0d05658 <ux_layout_pbb_prepro+0x44>
c0d05646:	3810      	subs	r0, #16
c0d05648:	2802      	cmp	r0, #2
c0d0564a:	d210      	bcs.n	c0d0566e <ux_layout_pbb_prepro+0x5a>
c0d0564c:	20a1      	movs	r0, #161	; 0xa1
c0d0564e:	5c38      	ldrb	r0, [r7, r0]
c0d05650:	0700      	lsls	r0, r0, #28
c0d05652:	0e80      	lsrs	r0, r0, #26
c0d05654:	1828      	adds	r0, r5, r0
c0d05656:	6840      	ldr	r0, [r0, #4]
c0d05658:	21bc      	movs	r1, #188	; 0xbc
c0d0565a:	5078      	str	r0, [r7, r1]
c0d0565c:	e007      	b.n	c0d0566e <ux_layout_pbb_prepro+0x5a>
c0d0565e:	f7ff fb4f 	bl	c0d04d00 <ux_flow_is_first>
c0d05662:	e001      	b.n	c0d05668 <ux_layout_pbb_prepro+0x54>
c0d05664:	f7ff fb72 	bl	c0d04d4c <ux_flow_is_last>
c0d05668:	2800      	cmp	r0, #0
c0d0566a:	d000      	beq.n	c0d0566e <ux_layout_pbb_prepro+0x5a>
c0d0566c:	2400      	movs	r4, #0
c0d0566e:	4620      	mov	r0, r4
c0d05670:	b001      	add	sp, #4
c0d05672:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d05674:	20000258 	.word	0x20000258

c0d05678 <ux_layout_pbb_init_common>:
c0d05678:	b510      	push	{r4, lr}
c0d0567a:	4604      	mov	r4, r0
c0d0567c:	f000 f8a4 	bl	c0d057c8 <ux_stack_init>
c0d05680:	2024      	movs	r0, #36	; 0x24
c0d05682:	4360      	muls	r0, r4
c0d05684:	4908      	ldr	r1, [pc, #32]	; (c0d056a8 <ux_layout_pbb_init_common+0x30>)
c0d05686:	1808      	adds	r0, r1, r0
c0d05688:	21c8      	movs	r1, #200	; 0xc8
c0d0568a:	2206      	movs	r2, #6
c0d0568c:	5442      	strb	r2, [r0, r1]
c0d0568e:	21c4      	movs	r1, #196	; 0xc4
c0d05690:	4a06      	ldr	r2, [pc, #24]	; (c0d056ac <ux_layout_pbb_init_common+0x34>)
c0d05692:	447a      	add	r2, pc
c0d05694:	5042      	str	r2, [r0, r1]
c0d05696:	21d4      	movs	r1, #212	; 0xd4
c0d05698:	4a05      	ldr	r2, [pc, #20]	; (c0d056b0 <ux_layout_pbb_init_common+0x38>)
c0d0569a:	447a      	add	r2, pc
c0d0569c:	5042      	str	r2, [r0, r1]
c0d0569e:	21c1      	movs	r1, #193	; 0xc1
c0d056a0:	2201      	movs	r2, #1
c0d056a2:	5442      	strb	r2, [r0, r1]
c0d056a4:	bd10      	pop	{r4, pc}
c0d056a6:	46c0      	nop			; (mov r8, r8)
c0d056a8:	20000258 	.word	0x20000258
c0d056ac:	0000326e 	.word	0x0000326e
c0d056b0:	fffff97f 	.word	0xfffff97f

c0d056b4 <ux_layout_pnn_prepro>:
c0d056b4:	b580      	push	{r7, lr}
c0d056b6:	f7ff ffad 	bl	c0d05614 <ux_layout_pbb_prepro>
c0d056ba:	2800      	cmp	r0, #0
c0d056bc:	d007      	beq.n	c0d056ce <ux_layout_pnn_prepro+0x1a>
c0d056be:	22a1      	movs	r2, #161	; 0xa1
c0d056c0:	4903      	ldr	r1, [pc, #12]	; (c0d056d0 <ux_layout_pnn_prepro+0x1c>)
c0d056c2:	5c8a      	ldrb	r2, [r1, r2]
c0d056c4:	2a10      	cmp	r2, #16
c0d056c6:	d302      	bcc.n	c0d056ce <ux_layout_pnn_prepro+0x1a>
c0d056c8:	22b8      	movs	r2, #184	; 0xb8
c0d056ca:	230a      	movs	r3, #10
c0d056cc:	528b      	strh	r3, [r1, r2]
c0d056ce:	bd80      	pop	{r7, pc}
c0d056d0:	20000258 	.word	0x20000258

c0d056d4 <ux_layout_pnn_init>:
c0d056d4:	b510      	push	{r4, lr}
c0d056d6:	4604      	mov	r4, r0
c0d056d8:	f7ff ffce 	bl	c0d05678 <ux_layout_pbb_init_common>
c0d056dc:	2024      	movs	r0, #36	; 0x24
c0d056de:	4360      	muls	r0, r4
c0d056e0:	4904      	ldr	r1, [pc, #16]	; (c0d056f4 <ux_layout_pnn_init+0x20>)
c0d056e2:	1808      	adds	r0, r1, r0
c0d056e4:	21d0      	movs	r1, #208	; 0xd0
c0d056e6:	4a04      	ldr	r2, [pc, #16]	; (c0d056f8 <ux_layout_pnn_init+0x24>)
c0d056e8:	447a      	add	r2, pc
c0d056ea:	5042      	str	r2, [r0, r1]
c0d056ec:	4620      	mov	r0, r4
c0d056ee:	f000 f845 	bl	c0d0577c <ux_stack_display>
c0d056f2:	bd10      	pop	{r4, pc}
c0d056f4:	20000258 	.word	0x20000258
c0d056f8:	ffffffc9 	.word	0xffffffc9

c0d056fc <ux_layout_strings_prepro>:
c0d056fc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d056fe:	b081      	sub	sp, #4
c0d05700:	4606      	mov	r6, r0
c0d05702:	f7ff fcbf 	bl	c0d05084 <ux_stack_get_current_step_params>
c0d05706:	4605      	mov	r5, r0
c0d05708:	4f11      	ldr	r7, [pc, #68]	; (c0d05750 <ux_layout_strings_prepro+0x54>)
c0d0570a:	463c      	mov	r4, r7
c0d0570c:	34a0      	adds	r4, #160	; 0xa0
c0d0570e:	2220      	movs	r2, #32
c0d05710:	4620      	mov	r0, r4
c0d05712:	4631      	mov	r1, r6
c0d05714:	f000 f9f6 	bl	c0d05b04 <__aeabi_memmove>
c0d05718:	7870      	ldrb	r0, [r6, #1]
c0d0571a:	2802      	cmp	r0, #2
c0d0571c:	d004      	beq.n	c0d05728 <ux_layout_strings_prepro+0x2c>
c0d0571e:	2801      	cmp	r0, #1
c0d05720:	d108      	bne.n	c0d05734 <ux_layout_strings_prepro+0x38>
c0d05722:	f7ff faed 	bl	c0d04d00 <ux_flow_is_first>
c0d05726:	e001      	b.n	c0d0572c <ux_layout_strings_prepro+0x30>
c0d05728:	f7ff fb10 	bl	c0d04d4c <ux_flow_is_last>
c0d0572c:	2800      	cmp	r0, #0
c0d0572e:	d00b      	beq.n	c0d05748 <ux_layout_strings_prepro+0x4c>
c0d05730:	2400      	movs	r4, #0
c0d05732:	e009      	b.n	c0d05748 <ux_layout_strings_prepro+0x4c>
c0d05734:	20a1      	movs	r0, #161	; 0xa1
c0d05736:	5c38      	ldrb	r0, [r7, r0]
c0d05738:	0601      	lsls	r1, r0, #24
c0d0573a:	0f09      	lsrs	r1, r1, #28
c0d0573c:	d004      	beq.n	c0d05748 <ux_layout_strings_prepro+0x4c>
c0d0573e:	0700      	lsls	r0, r0, #28
c0d05740:	0e80      	lsrs	r0, r0, #26
c0d05742:	5828      	ldr	r0, [r5, r0]
c0d05744:	21bc      	movs	r1, #188	; 0xbc
c0d05746:	5078      	str	r0, [r7, r1]
c0d05748:	4620      	mov	r0, r4
c0d0574a:	b001      	add	sp, #4
c0d0574c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0574e:	46c0      	nop			; (mov r8, r8)
c0d05750:	20000258 	.word	0x20000258

c0d05754 <ux_stack_push>:
c0d05754:	b510      	push	{r4, lr}
c0d05756:	4c08      	ldr	r4, [pc, #32]	; (c0d05778 <ux_stack_push+0x24>)
c0d05758:	7820      	ldrb	r0, [r4, #0]
c0d0575a:	2800      	cmp	r0, #0
c0d0575c:	d10a      	bne.n	c0d05774 <ux_stack_push+0x20>
c0d0575e:	4620      	mov	r0, r4
c0d05760:	30c0      	adds	r0, #192	; 0xc0
c0d05762:	2124      	movs	r1, #36	; 0x24
c0d05764:	f000 f9c4 	bl	c0d05af0 <__aeabi_memclr>
c0d05768:	2000      	movs	r0, #0
c0d0576a:	6160      	str	r0, [r4, #20]
c0d0576c:	61a0      	str	r0, [r4, #24]
c0d0576e:	61e0      	str	r0, [r4, #28]
c0d05770:	2001      	movs	r0, #1
c0d05772:	7020      	strb	r0, [r4, #0]
c0d05774:	1e40      	subs	r0, r0, #1
c0d05776:	bd10      	pop	{r4, pc}
c0d05778:	20000258 	.word	0x20000258

c0d0577c <ux_stack_display>:
c0d0577c:	b5b0      	push	{r4, r5, r7, lr}
c0d0577e:	4604      	mov	r4, r0
c0d05780:	4810      	ldr	r0, [pc, #64]	; (c0d057c4 <ux_stack_display+0x48>)
c0d05782:	7801      	ldrb	r1, [r0, #0]
c0d05784:	2900      	cmp	r1, #0
c0d05786:	d00e      	beq.n	c0d057a6 <ux_stack_display+0x2a>
c0d05788:	1c62      	adds	r2, r4, #1
c0d0578a:	428a      	cmp	r2, r1
c0d0578c:	d10b      	bne.n	c0d057a6 <ux_stack_display+0x2a>
c0d0578e:	2124      	movs	r1, #36	; 0x24
c0d05790:	4361      	muls	r1, r4
c0d05792:	1845      	adds	r5, r0, r1
c0d05794:	f7fb ff90 	bl	c0d016b8 <io_seproxyhal_init_ux>
c0d05798:	20c2      	movs	r0, #194	; 0xc2
c0d0579a:	2100      	movs	r1, #0
c0d0579c:	5229      	strh	r1, [r5, r0]
c0d0579e:	4620      	mov	r0, r4
c0d057a0:	f000 f822 	bl	c0d057e8 <ux_stack_al_display_next_element>
c0d057a4:	bdb0      	pop	{r4, r5, r7, pc}
c0d057a6:	2200      	movs	r2, #0
c0d057a8:	43d2      	mvns	r2, r2
c0d057aa:	1aa2      	subs	r2, r4, r2
c0d057ac:	1e53      	subs	r3, r2, #1
c0d057ae:	419a      	sbcs	r2, r3
c0d057b0:	1e4b      	subs	r3, r1, #1
c0d057b2:	4199      	sbcs	r1, r3
c0d057b4:	420a      	tst	r2, r1
c0d057b6:	d104      	bne.n	c0d057c2 <ux_stack_display+0x46>
c0d057b8:	7841      	ldrb	r1, [r0, #1]
c0d057ba:	29aa      	cmp	r1, #170	; 0xaa
c0d057bc:	d101      	bne.n	c0d057c2 <ux_stack_display+0x46>
c0d057be:	2169      	movs	r1, #105	; 0x69
c0d057c0:	7041      	strb	r1, [r0, #1]
c0d057c2:	bdb0      	pop	{r4, r5, r7, pc}
c0d057c4:	20000258 	.word	0x20000258

c0d057c8 <ux_stack_init>:
c0d057c8:	b510      	push	{r4, lr}
c0d057ca:	4604      	mov	r4, r0
c0d057cc:	f7fb ff74 	bl	c0d016b8 <io_seproxyhal_init_ux>
c0d057d0:	2c00      	cmp	r4, #0
c0d057d2:	d000      	beq.n	c0d057d6 <ux_stack_init+0xe>
c0d057d4:	bd10      	pop	{r4, pc}
c0d057d6:	4803      	ldr	r0, [pc, #12]	; (c0d057e4 <ux_stack_init+0x1c>)
c0d057d8:	30c0      	adds	r0, #192	; 0xc0
c0d057da:	2124      	movs	r1, #36	; 0x24
c0d057dc:	f000 f988 	bl	c0d05af0 <__aeabi_memclr>
c0d057e0:	bd10      	pop	{r4, pc}
c0d057e2:	46c0      	nop			; (mov r8, r8)
c0d057e4:	20000258 	.word	0x20000258

c0d057e8 <ux_stack_al_display_next_element>:
c0d057e8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d057ea:	b081      	sub	sp, #4
c0d057ec:	4604      	mov	r4, r0
c0d057ee:	2004      	movs	r0, #4
c0d057f0:	f7fd faac 	bl	c0d02d4c <os_sched_last_status>
c0d057f4:	2800      	cmp	r0, #0
c0d057f6:	d039      	beq.n	c0d0586c <ux_stack_al_display_next_element+0x84>
c0d057f8:	2897      	cmp	r0, #151	; 0x97
c0d057fa:	d037      	beq.n	c0d0586c <ux_stack_al_display_next_element+0x84>
c0d057fc:	2024      	movs	r0, #36	; 0x24
c0d057fe:	4360      	muls	r0, r4
c0d05800:	491b      	ldr	r1, [pc, #108]	; (c0d05870 <ux_stack_al_display_next_element+0x88>)
c0d05802:	180c      	adds	r4, r1, r0
c0d05804:	20c4      	movs	r0, #196	; 0xc4
c0d05806:	5820      	ldr	r0, [r4, r0]
c0d05808:	2800      	cmp	r0, #0
c0d0580a:	d02f      	beq.n	c0d0586c <ux_stack_al_display_next_element+0x84>
c0d0580c:	4625      	mov	r5, r4
c0d0580e:	35c4      	adds	r5, #196	; 0xc4
c0d05810:	4626      	mov	r6, r4
c0d05812:	36c2      	adds	r6, #194	; 0xc2
c0d05814:	4627      	mov	r7, r4
c0d05816:	37d0      	adds	r7, #208	; 0xd0
c0d05818:	34c8      	adds	r4, #200	; 0xc8
c0d0581a:	8830      	ldrh	r0, [r6, #0]
c0d0581c:	7821      	ldrb	r1, [r4, #0]
c0d0581e:	b280      	uxth	r0, r0
c0d05820:	4288      	cmp	r0, r1
c0d05822:	d223      	bcs.n	c0d0586c <ux_stack_al_display_next_element+0x84>
c0d05824:	f7fd fa5e 	bl	c0d02ce4 <io_seph_is_status_sent>
c0d05828:	2800      	cmp	r0, #0
c0d0582a:	d11f      	bne.n	c0d0586c <ux_stack_al_display_next_element+0x84>
c0d0582c:	f7fd f9e2 	bl	c0d02bf4 <os_perso_isonboarded>
c0d05830:	28aa      	cmp	r0, #170	; 0xaa
c0d05832:	d103      	bne.n	c0d0583c <ux_stack_al_display_next_element+0x54>
c0d05834:	f7fd fa08 	bl	c0d02c48 <os_global_pin_is_validated>
c0d05838:	28aa      	cmp	r0, #170	; 0xaa
c0d0583a:	d117      	bne.n	c0d0586c <ux_stack_al_display_next_element+0x84>
c0d0583c:	6828      	ldr	r0, [r5, #0]
c0d0583e:	8831      	ldrh	r1, [r6, #0]
c0d05840:	0149      	lsls	r1, r1, #5
c0d05842:	1840      	adds	r0, r0, r1
c0d05844:	6839      	ldr	r1, [r7, #0]
c0d05846:	2900      	cmp	r1, #0
c0d05848:	d002      	beq.n	c0d05850 <ux_stack_al_display_next_element+0x68>
c0d0584a:	4788      	blx	r1
c0d0584c:	2800      	cmp	r0, #0
c0d0584e:	d007      	beq.n	c0d05860 <ux_stack_al_display_next_element+0x78>
c0d05850:	2801      	cmp	r0, #1
c0d05852:	d103      	bne.n	c0d0585c <ux_stack_al_display_next_element+0x74>
c0d05854:	6828      	ldr	r0, [r5, #0]
c0d05856:	8831      	ldrh	r1, [r6, #0]
c0d05858:	0149      	lsls	r1, r1, #5
c0d0585a:	1840      	adds	r0, r0, r1
c0d0585c:	f7fb faa8 	bl	c0d00db0 <io_seproxyhal_display>
c0d05860:	8830      	ldrh	r0, [r6, #0]
c0d05862:	1c40      	adds	r0, r0, #1
c0d05864:	8030      	strh	r0, [r6, #0]
c0d05866:	6829      	ldr	r1, [r5, #0]
c0d05868:	2900      	cmp	r1, #0
c0d0586a:	d1d7      	bne.n	c0d0581c <ux_stack_al_display_next_element+0x34>
c0d0586c:	b001      	add	sp, #4
c0d0586e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d05870:	20000258 	.word	0x20000258

c0d05874 <__udivsi3>:
c0d05874:	2900      	cmp	r1, #0
c0d05876:	d034      	beq.n	c0d058e2 <.udivsi3_skip_div0_test+0x6a>

c0d05878 <.udivsi3_skip_div0_test>:
c0d05878:	2301      	movs	r3, #1
c0d0587a:	2200      	movs	r2, #0
c0d0587c:	b410      	push	{r4}
c0d0587e:	4288      	cmp	r0, r1
c0d05880:	d32c      	bcc.n	c0d058dc <.udivsi3_skip_div0_test+0x64>
c0d05882:	2401      	movs	r4, #1
c0d05884:	0724      	lsls	r4, r4, #28
c0d05886:	42a1      	cmp	r1, r4
c0d05888:	d204      	bcs.n	c0d05894 <.udivsi3_skip_div0_test+0x1c>
c0d0588a:	4281      	cmp	r1, r0
c0d0588c:	d202      	bcs.n	c0d05894 <.udivsi3_skip_div0_test+0x1c>
c0d0588e:	0109      	lsls	r1, r1, #4
c0d05890:	011b      	lsls	r3, r3, #4
c0d05892:	e7f8      	b.n	c0d05886 <.udivsi3_skip_div0_test+0xe>
c0d05894:	00e4      	lsls	r4, r4, #3
c0d05896:	42a1      	cmp	r1, r4
c0d05898:	d204      	bcs.n	c0d058a4 <.udivsi3_skip_div0_test+0x2c>
c0d0589a:	4281      	cmp	r1, r0
c0d0589c:	d202      	bcs.n	c0d058a4 <.udivsi3_skip_div0_test+0x2c>
c0d0589e:	0049      	lsls	r1, r1, #1
c0d058a0:	005b      	lsls	r3, r3, #1
c0d058a2:	e7f8      	b.n	c0d05896 <.udivsi3_skip_div0_test+0x1e>
c0d058a4:	4288      	cmp	r0, r1
c0d058a6:	d301      	bcc.n	c0d058ac <.udivsi3_skip_div0_test+0x34>
c0d058a8:	1a40      	subs	r0, r0, r1
c0d058aa:	431a      	orrs	r2, r3
c0d058ac:	084c      	lsrs	r4, r1, #1
c0d058ae:	42a0      	cmp	r0, r4
c0d058b0:	d302      	bcc.n	c0d058b8 <.udivsi3_skip_div0_test+0x40>
c0d058b2:	1b00      	subs	r0, r0, r4
c0d058b4:	085c      	lsrs	r4, r3, #1
c0d058b6:	4322      	orrs	r2, r4
c0d058b8:	088c      	lsrs	r4, r1, #2
c0d058ba:	42a0      	cmp	r0, r4
c0d058bc:	d302      	bcc.n	c0d058c4 <.udivsi3_skip_div0_test+0x4c>
c0d058be:	1b00      	subs	r0, r0, r4
c0d058c0:	089c      	lsrs	r4, r3, #2
c0d058c2:	4322      	orrs	r2, r4
c0d058c4:	08cc      	lsrs	r4, r1, #3
c0d058c6:	42a0      	cmp	r0, r4
c0d058c8:	d302      	bcc.n	c0d058d0 <.udivsi3_skip_div0_test+0x58>
c0d058ca:	1b00      	subs	r0, r0, r4
c0d058cc:	08dc      	lsrs	r4, r3, #3
c0d058ce:	4322      	orrs	r2, r4
c0d058d0:	2800      	cmp	r0, #0
c0d058d2:	d003      	beq.n	c0d058dc <.udivsi3_skip_div0_test+0x64>
c0d058d4:	091b      	lsrs	r3, r3, #4
c0d058d6:	d001      	beq.n	c0d058dc <.udivsi3_skip_div0_test+0x64>
c0d058d8:	0909      	lsrs	r1, r1, #4
c0d058da:	e7e3      	b.n	c0d058a4 <.udivsi3_skip_div0_test+0x2c>
c0d058dc:	0010      	movs	r0, r2
c0d058de:	bc10      	pop	{r4}
c0d058e0:	4770      	bx	lr
c0d058e2:	b501      	push	{r0, lr}
c0d058e4:	2000      	movs	r0, #0
c0d058e6:	f000 f80b 	bl	c0d05900 <__aeabi_idiv0>
c0d058ea:	bd02      	pop	{r1, pc}

c0d058ec <__aeabi_uidivmod>:
c0d058ec:	2900      	cmp	r1, #0
c0d058ee:	d0f8      	beq.n	c0d058e2 <.udivsi3_skip_div0_test+0x6a>
c0d058f0:	b503      	push	{r0, r1, lr}
c0d058f2:	f7ff ffc1 	bl	c0d05878 <.udivsi3_skip_div0_test>
c0d058f6:	bc0e      	pop	{r1, r2, r3}
c0d058f8:	4342      	muls	r2, r0
c0d058fa:	1a89      	subs	r1, r1, r2
c0d058fc:	4718      	bx	r3
c0d058fe:	46c0      	nop			; (mov r8, r8)

c0d05900 <__aeabi_idiv0>:
c0d05900:	4770      	bx	lr
c0d05902:	46c0      	nop			; (mov r8, r8)

c0d05904 <__aeabi_llsr>:
c0d05904:	40d0      	lsrs	r0, r2
c0d05906:	000b      	movs	r3, r1
c0d05908:	40d1      	lsrs	r1, r2
c0d0590a:	469c      	mov	ip, r3
c0d0590c:	3a20      	subs	r2, #32
c0d0590e:	40d3      	lsrs	r3, r2
c0d05910:	4318      	orrs	r0, r3
c0d05912:	4252      	negs	r2, r2
c0d05914:	4663      	mov	r3, ip
c0d05916:	4093      	lsls	r3, r2
c0d05918:	4318      	orrs	r0, r3
c0d0591a:	4770      	bx	lr

c0d0591c <__aeabi_uldivmod>:
c0d0591c:	2b00      	cmp	r3, #0
c0d0591e:	d111      	bne.n	c0d05944 <__aeabi_uldivmod+0x28>
c0d05920:	2a00      	cmp	r2, #0
c0d05922:	d10f      	bne.n	c0d05944 <__aeabi_uldivmod+0x28>
c0d05924:	2900      	cmp	r1, #0
c0d05926:	d100      	bne.n	c0d0592a <__aeabi_uldivmod+0xe>
c0d05928:	2800      	cmp	r0, #0
c0d0592a:	d002      	beq.n	c0d05932 <__aeabi_uldivmod+0x16>
c0d0592c:	2100      	movs	r1, #0
c0d0592e:	43c9      	mvns	r1, r1
c0d05930:	0008      	movs	r0, r1
c0d05932:	b407      	push	{r0, r1, r2}
c0d05934:	4802      	ldr	r0, [pc, #8]	; (c0d05940 <__aeabi_uldivmod+0x24>)
c0d05936:	a102      	add	r1, pc, #8	; (adr r1, c0d05940 <__aeabi_uldivmod+0x24>)
c0d05938:	1840      	adds	r0, r0, r1
c0d0593a:	9002      	str	r0, [sp, #8]
c0d0593c:	bd03      	pop	{r0, r1, pc}
c0d0593e:	46c0      	nop			; (mov r8, r8)
c0d05940:	ffffffc1 	.word	0xffffffc1
c0d05944:	b403      	push	{r0, r1}
c0d05946:	4668      	mov	r0, sp
c0d05948:	b501      	push	{r0, lr}
c0d0594a:	9802      	ldr	r0, [sp, #8]
c0d0594c:	f000 f82a 	bl	c0d059a4 <__udivmoddi4>
c0d05950:	9b01      	ldr	r3, [sp, #4]
c0d05952:	469e      	mov	lr, r3
c0d05954:	b002      	add	sp, #8
c0d05956:	bc0c      	pop	{r2, r3}
c0d05958:	4770      	bx	lr
c0d0595a:	46c0      	nop			; (mov r8, r8)

c0d0595c <__aeabi_lmul>:
c0d0595c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
c0d0595e:	9301      	str	r3, [sp, #4]
c0d05960:	b283      	uxth	r3, r0
c0d05962:	469c      	mov	ip, r3
c0d05964:	0006      	movs	r6, r0
c0d05966:	0c03      	lsrs	r3, r0, #16
c0d05968:	4660      	mov	r0, ip
c0d0596a:	000d      	movs	r5, r1
c0d0596c:	4661      	mov	r1, ip
c0d0596e:	b297      	uxth	r7, r2
c0d05970:	4378      	muls	r0, r7
c0d05972:	0c14      	lsrs	r4, r2, #16
c0d05974:	435f      	muls	r7, r3
c0d05976:	4363      	muls	r3, r4
c0d05978:	434c      	muls	r4, r1
c0d0597a:	0c01      	lsrs	r1, r0, #16
c0d0597c:	468c      	mov	ip, r1
c0d0597e:	19e4      	adds	r4, r4, r7
c0d05980:	4464      	add	r4, ip
c0d05982:	42a7      	cmp	r7, r4
c0d05984:	d902      	bls.n	c0d0598c <__aeabi_lmul+0x30>
c0d05986:	2180      	movs	r1, #128	; 0x80
c0d05988:	0249      	lsls	r1, r1, #9
c0d0598a:	185b      	adds	r3, r3, r1
c0d0598c:	9901      	ldr	r1, [sp, #4]
c0d0598e:	436a      	muls	r2, r5
c0d05990:	4371      	muls	r1, r6
c0d05992:	0c27      	lsrs	r7, r4, #16
c0d05994:	18fb      	adds	r3, r7, r3
c0d05996:	0424      	lsls	r4, r4, #16
c0d05998:	18c9      	adds	r1, r1, r3
c0d0599a:	b280      	uxth	r0, r0
c0d0599c:	1820      	adds	r0, r4, r0
c0d0599e:	1889      	adds	r1, r1, r2
c0d059a0:	b003      	add	sp, #12
c0d059a2:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d059a4 <__udivmoddi4>:
c0d059a4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d059a6:	0006      	movs	r6, r0
c0d059a8:	000f      	movs	r7, r1
c0d059aa:	0015      	movs	r5, r2
c0d059ac:	001c      	movs	r4, r3
c0d059ae:	b085      	sub	sp, #20
c0d059b0:	428b      	cmp	r3, r1
c0d059b2:	d863      	bhi.n	c0d05a7c <__udivmoddi4+0xd8>
c0d059b4:	d101      	bne.n	c0d059ba <__udivmoddi4+0x16>
c0d059b6:	4282      	cmp	r2, r0
c0d059b8:	d860      	bhi.n	c0d05a7c <__udivmoddi4+0xd8>
c0d059ba:	0021      	movs	r1, r4
c0d059bc:	0028      	movs	r0, r5
c0d059be:	f000 f86d 	bl	c0d05a9c <__clzdi2>
c0d059c2:	0039      	movs	r1, r7
c0d059c4:	9000      	str	r0, [sp, #0]
c0d059c6:	0030      	movs	r0, r6
c0d059c8:	f000 f868 	bl	c0d05a9c <__clzdi2>
c0d059cc:	9b00      	ldr	r3, [sp, #0]
c0d059ce:	0021      	movs	r1, r4
c0d059d0:	1a1b      	subs	r3, r3, r0
c0d059d2:	001a      	movs	r2, r3
c0d059d4:	0028      	movs	r0, r5
c0d059d6:	9303      	str	r3, [sp, #12]
c0d059d8:	f000 f854 	bl	c0d05a84 <__aeabi_llsl>
c0d059dc:	9000      	str	r0, [sp, #0]
c0d059de:	9101      	str	r1, [sp, #4]
c0d059e0:	42b9      	cmp	r1, r7
c0d059e2:	d845      	bhi.n	c0d05a70 <__udivmoddi4+0xcc>
c0d059e4:	d101      	bne.n	c0d059ea <__udivmoddi4+0x46>
c0d059e6:	42b0      	cmp	r0, r6
c0d059e8:	d842      	bhi.n	c0d05a70 <__udivmoddi4+0xcc>
c0d059ea:	9b00      	ldr	r3, [sp, #0]
c0d059ec:	9c01      	ldr	r4, [sp, #4]
c0d059ee:	2001      	movs	r0, #1
c0d059f0:	2100      	movs	r1, #0
c0d059f2:	9a03      	ldr	r2, [sp, #12]
c0d059f4:	1af6      	subs	r6, r6, r3
c0d059f6:	41a7      	sbcs	r7, r4
c0d059f8:	f000 f844 	bl	c0d05a84 <__aeabi_llsl>
c0d059fc:	0004      	movs	r4, r0
c0d059fe:	000d      	movs	r5, r1
c0d05a00:	9b03      	ldr	r3, [sp, #12]
c0d05a02:	2b00      	cmp	r3, #0
c0d05a04:	d02b      	beq.n	c0d05a5e <__udivmoddi4+0xba>
c0d05a06:	9b01      	ldr	r3, [sp, #4]
c0d05a08:	9a00      	ldr	r2, [sp, #0]
c0d05a0a:	07db      	lsls	r3, r3, #31
c0d05a0c:	0850      	lsrs	r0, r2, #1
c0d05a0e:	4318      	orrs	r0, r3
c0d05a10:	9b01      	ldr	r3, [sp, #4]
c0d05a12:	0859      	lsrs	r1, r3, #1
c0d05a14:	9b03      	ldr	r3, [sp, #12]
c0d05a16:	469c      	mov	ip, r3
c0d05a18:	42b9      	cmp	r1, r7
c0d05a1a:	d82c      	bhi.n	c0d05a76 <__udivmoddi4+0xd2>
c0d05a1c:	d101      	bne.n	c0d05a22 <__udivmoddi4+0x7e>
c0d05a1e:	42b0      	cmp	r0, r6
c0d05a20:	d829      	bhi.n	c0d05a76 <__udivmoddi4+0xd2>
c0d05a22:	0032      	movs	r2, r6
c0d05a24:	003b      	movs	r3, r7
c0d05a26:	1a12      	subs	r2, r2, r0
c0d05a28:	418b      	sbcs	r3, r1
c0d05a2a:	2601      	movs	r6, #1
c0d05a2c:	1892      	adds	r2, r2, r2
c0d05a2e:	415b      	adcs	r3, r3
c0d05a30:	2700      	movs	r7, #0
c0d05a32:	18b6      	adds	r6, r6, r2
c0d05a34:	415f      	adcs	r7, r3
c0d05a36:	2301      	movs	r3, #1
c0d05a38:	425b      	negs	r3, r3
c0d05a3a:	449c      	add	ip, r3
c0d05a3c:	4663      	mov	r3, ip
c0d05a3e:	2b00      	cmp	r3, #0
c0d05a40:	d1ea      	bne.n	c0d05a18 <__udivmoddi4+0x74>
c0d05a42:	0030      	movs	r0, r6
c0d05a44:	0039      	movs	r1, r7
c0d05a46:	9a03      	ldr	r2, [sp, #12]
c0d05a48:	f7ff ff5c 	bl	c0d05904 <__aeabi_llsr>
c0d05a4c:	9a03      	ldr	r2, [sp, #12]
c0d05a4e:	19a4      	adds	r4, r4, r6
c0d05a50:	417d      	adcs	r5, r7
c0d05a52:	0006      	movs	r6, r0
c0d05a54:	000f      	movs	r7, r1
c0d05a56:	f000 f815 	bl	c0d05a84 <__aeabi_llsl>
c0d05a5a:	1a24      	subs	r4, r4, r0
c0d05a5c:	418d      	sbcs	r5, r1
c0d05a5e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
c0d05a60:	2b00      	cmp	r3, #0
c0d05a62:	d001      	beq.n	c0d05a68 <__udivmoddi4+0xc4>
c0d05a64:	601e      	str	r6, [r3, #0]
c0d05a66:	605f      	str	r7, [r3, #4]
c0d05a68:	0020      	movs	r0, r4
c0d05a6a:	0029      	movs	r1, r5
c0d05a6c:	b005      	add	sp, #20
c0d05a6e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d05a70:	2400      	movs	r4, #0
c0d05a72:	2500      	movs	r5, #0
c0d05a74:	e7c4      	b.n	c0d05a00 <__udivmoddi4+0x5c>
c0d05a76:	19b6      	adds	r6, r6, r6
c0d05a78:	417f      	adcs	r7, r7
c0d05a7a:	e7dc      	b.n	c0d05a36 <__udivmoddi4+0x92>
c0d05a7c:	2400      	movs	r4, #0
c0d05a7e:	2500      	movs	r5, #0
c0d05a80:	e7ed      	b.n	c0d05a5e <__udivmoddi4+0xba>
	...

c0d05a84 <__aeabi_llsl>:
c0d05a84:	4091      	lsls	r1, r2
c0d05a86:	0003      	movs	r3, r0
c0d05a88:	4090      	lsls	r0, r2
c0d05a8a:	469c      	mov	ip, r3
c0d05a8c:	3a20      	subs	r2, #32
c0d05a8e:	4093      	lsls	r3, r2
c0d05a90:	4319      	orrs	r1, r3
c0d05a92:	4252      	negs	r2, r2
c0d05a94:	4663      	mov	r3, ip
c0d05a96:	40d3      	lsrs	r3, r2
c0d05a98:	4319      	orrs	r1, r3
c0d05a9a:	4770      	bx	lr

c0d05a9c <__clzdi2>:
c0d05a9c:	b510      	push	{r4, lr}
c0d05a9e:	2900      	cmp	r1, #0
c0d05aa0:	d103      	bne.n	c0d05aaa <__clzdi2+0xe>
c0d05aa2:	f000 f807 	bl	c0d05ab4 <__clzsi2>
c0d05aa6:	3020      	adds	r0, #32
c0d05aa8:	e002      	b.n	c0d05ab0 <__clzdi2+0x14>
c0d05aaa:	0008      	movs	r0, r1
c0d05aac:	f000 f802 	bl	c0d05ab4 <__clzsi2>
c0d05ab0:	bd10      	pop	{r4, pc}
c0d05ab2:	46c0      	nop			; (mov r8, r8)

c0d05ab4 <__clzsi2>:
c0d05ab4:	211c      	movs	r1, #28
c0d05ab6:	2301      	movs	r3, #1
c0d05ab8:	041b      	lsls	r3, r3, #16
c0d05aba:	4298      	cmp	r0, r3
c0d05abc:	d301      	bcc.n	c0d05ac2 <__clzsi2+0xe>
c0d05abe:	0c00      	lsrs	r0, r0, #16
c0d05ac0:	3910      	subs	r1, #16
c0d05ac2:	0a1b      	lsrs	r3, r3, #8
c0d05ac4:	4298      	cmp	r0, r3
c0d05ac6:	d301      	bcc.n	c0d05acc <__clzsi2+0x18>
c0d05ac8:	0a00      	lsrs	r0, r0, #8
c0d05aca:	3908      	subs	r1, #8
c0d05acc:	091b      	lsrs	r3, r3, #4
c0d05ace:	4298      	cmp	r0, r3
c0d05ad0:	d301      	bcc.n	c0d05ad6 <__clzsi2+0x22>
c0d05ad2:	0900      	lsrs	r0, r0, #4
c0d05ad4:	3904      	subs	r1, #4
c0d05ad6:	a202      	add	r2, pc, #8	; (adr r2, c0d05ae0 <__clzsi2+0x2c>)
c0d05ad8:	5c10      	ldrb	r0, [r2, r0]
c0d05ada:	1840      	adds	r0, r0, r1
c0d05adc:	4770      	bx	lr
c0d05ade:	46c0      	nop			; (mov r8, r8)
c0d05ae0:	02020304 	.word	0x02020304
c0d05ae4:	01010101 	.word	0x01010101
	...

c0d05af0 <__aeabi_memclr>:
c0d05af0:	b510      	push	{r4, lr}
c0d05af2:	2200      	movs	r2, #0
c0d05af4:	f000 f80a 	bl	c0d05b0c <__aeabi_memset>
c0d05af8:	bd10      	pop	{r4, pc}
c0d05afa:	46c0      	nop			; (mov r8, r8)

c0d05afc <__aeabi_memcpy>:
c0d05afc:	b510      	push	{r4, lr}
c0d05afe:	f000 f835 	bl	c0d05b6c <memcpy>
c0d05b02:	bd10      	pop	{r4, pc}

c0d05b04 <__aeabi_memmove>:
c0d05b04:	b510      	push	{r4, lr}
c0d05b06:	f000 f883 	bl	c0d05c10 <memmove>
c0d05b0a:	bd10      	pop	{r4, pc}

c0d05b0c <__aeabi_memset>:
c0d05b0c:	000b      	movs	r3, r1
c0d05b0e:	b510      	push	{r4, lr}
c0d05b10:	0011      	movs	r1, r2
c0d05b12:	001a      	movs	r2, r3
c0d05b14:	f000 f8d2 	bl	c0d05cbc <memset>
c0d05b18:	bd10      	pop	{r4, pc}
c0d05b1a:	46c0      	nop			; (mov r8, r8)

c0d05b1c <explicit_bzero>:
c0d05b1c:	b510      	push	{r4, lr}
c0d05b1e:	f000 f97b 	bl	c0d05e18 <bzero>
c0d05b22:	bd10      	pop	{r4, pc}

c0d05b24 <memcmp>:
c0d05b24:	b530      	push	{r4, r5, lr}
c0d05b26:	2a03      	cmp	r2, #3
c0d05b28:	d90c      	bls.n	c0d05b44 <memcmp+0x20>
c0d05b2a:	0003      	movs	r3, r0
c0d05b2c:	430b      	orrs	r3, r1
c0d05b2e:	079b      	lsls	r3, r3, #30
c0d05b30:	d119      	bne.n	c0d05b66 <memcmp+0x42>
c0d05b32:	6803      	ldr	r3, [r0, #0]
c0d05b34:	680c      	ldr	r4, [r1, #0]
c0d05b36:	42a3      	cmp	r3, r4
c0d05b38:	d115      	bne.n	c0d05b66 <memcmp+0x42>
c0d05b3a:	3a04      	subs	r2, #4
c0d05b3c:	3004      	adds	r0, #4
c0d05b3e:	3104      	adds	r1, #4
c0d05b40:	2a03      	cmp	r2, #3
c0d05b42:	d8f6      	bhi.n	c0d05b32 <memcmp+0xe>
c0d05b44:	1e55      	subs	r5, r2, #1
c0d05b46:	2a00      	cmp	r2, #0
c0d05b48:	d00b      	beq.n	c0d05b62 <memcmp+0x3e>
c0d05b4a:	2300      	movs	r3, #0
c0d05b4c:	e003      	b.n	c0d05b56 <memcmp+0x32>
c0d05b4e:	1c5a      	adds	r2, r3, #1
c0d05b50:	429d      	cmp	r5, r3
c0d05b52:	d006      	beq.n	c0d05b62 <memcmp+0x3e>
c0d05b54:	0013      	movs	r3, r2
c0d05b56:	5cc2      	ldrb	r2, [r0, r3]
c0d05b58:	5ccc      	ldrb	r4, [r1, r3]
c0d05b5a:	42a2      	cmp	r2, r4
c0d05b5c:	d0f7      	beq.n	c0d05b4e <memcmp+0x2a>
c0d05b5e:	1b10      	subs	r0, r2, r4
c0d05b60:	e000      	b.n	c0d05b64 <memcmp+0x40>
c0d05b62:	2000      	movs	r0, #0
c0d05b64:	bd30      	pop	{r4, r5, pc}
c0d05b66:	1e55      	subs	r5, r2, #1
c0d05b68:	e7ef      	b.n	c0d05b4a <memcmp+0x26>
c0d05b6a:	46c0      	nop			; (mov r8, r8)

c0d05b6c <memcpy>:
c0d05b6c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d05b6e:	46c6      	mov	lr, r8
c0d05b70:	b500      	push	{lr}
c0d05b72:	2a0f      	cmp	r2, #15
c0d05b74:	d941      	bls.n	c0d05bfa <memcpy+0x8e>
c0d05b76:	2703      	movs	r7, #3
c0d05b78:	000d      	movs	r5, r1
c0d05b7a:	003e      	movs	r6, r7
c0d05b7c:	4305      	orrs	r5, r0
c0d05b7e:	000c      	movs	r4, r1
c0d05b80:	0003      	movs	r3, r0
c0d05b82:	402e      	ands	r6, r5
c0d05b84:	422f      	tst	r7, r5
c0d05b86:	d13d      	bne.n	c0d05c04 <memcpy+0x98>
c0d05b88:	0015      	movs	r5, r2
c0d05b8a:	3d10      	subs	r5, #16
c0d05b8c:	092d      	lsrs	r5, r5, #4
c0d05b8e:	46a8      	mov	r8, r5
c0d05b90:	012d      	lsls	r5, r5, #4
c0d05b92:	46ac      	mov	ip, r5
c0d05b94:	4484      	add	ip, r0
c0d05b96:	6827      	ldr	r7, [r4, #0]
c0d05b98:	001d      	movs	r5, r3
c0d05b9a:	601f      	str	r7, [r3, #0]
c0d05b9c:	6867      	ldr	r7, [r4, #4]
c0d05b9e:	605f      	str	r7, [r3, #4]
c0d05ba0:	68a7      	ldr	r7, [r4, #8]
c0d05ba2:	609f      	str	r7, [r3, #8]
c0d05ba4:	68e7      	ldr	r7, [r4, #12]
c0d05ba6:	3410      	adds	r4, #16
c0d05ba8:	60df      	str	r7, [r3, #12]
c0d05baa:	3310      	adds	r3, #16
c0d05bac:	4565      	cmp	r5, ip
c0d05bae:	d1f2      	bne.n	c0d05b96 <memcpy+0x2a>
c0d05bb0:	4645      	mov	r5, r8
c0d05bb2:	230f      	movs	r3, #15
c0d05bb4:	240c      	movs	r4, #12
c0d05bb6:	3501      	adds	r5, #1
c0d05bb8:	012d      	lsls	r5, r5, #4
c0d05bba:	1949      	adds	r1, r1, r5
c0d05bbc:	4013      	ands	r3, r2
c0d05bbe:	1945      	adds	r5, r0, r5
c0d05bc0:	4214      	tst	r4, r2
c0d05bc2:	d022      	beq.n	c0d05c0a <memcpy+0x9e>
c0d05bc4:	598c      	ldr	r4, [r1, r6]
c0d05bc6:	51ac      	str	r4, [r5, r6]
c0d05bc8:	3604      	adds	r6, #4
c0d05bca:	1b9c      	subs	r4, r3, r6
c0d05bcc:	2c03      	cmp	r4, #3
c0d05bce:	d8f9      	bhi.n	c0d05bc4 <memcpy+0x58>
c0d05bd0:	3b04      	subs	r3, #4
c0d05bd2:	089b      	lsrs	r3, r3, #2
c0d05bd4:	3301      	adds	r3, #1
c0d05bd6:	009b      	lsls	r3, r3, #2
c0d05bd8:	18ed      	adds	r5, r5, r3
c0d05bda:	18c9      	adds	r1, r1, r3
c0d05bdc:	2303      	movs	r3, #3
c0d05bde:	401a      	ands	r2, r3
c0d05be0:	1e56      	subs	r6, r2, #1
c0d05be2:	2a00      	cmp	r2, #0
c0d05be4:	d006      	beq.n	c0d05bf4 <memcpy+0x88>
c0d05be6:	2300      	movs	r3, #0
c0d05be8:	5ccc      	ldrb	r4, [r1, r3]
c0d05bea:	001a      	movs	r2, r3
c0d05bec:	54ec      	strb	r4, [r5, r3]
c0d05bee:	3301      	adds	r3, #1
c0d05bf0:	4296      	cmp	r6, r2
c0d05bf2:	d1f9      	bne.n	c0d05be8 <memcpy+0x7c>
c0d05bf4:	bc80      	pop	{r7}
c0d05bf6:	46b8      	mov	r8, r7
c0d05bf8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d05bfa:	0005      	movs	r5, r0
c0d05bfc:	1e56      	subs	r6, r2, #1
c0d05bfe:	2a00      	cmp	r2, #0
c0d05c00:	d1f1      	bne.n	c0d05be6 <memcpy+0x7a>
c0d05c02:	e7f7      	b.n	c0d05bf4 <memcpy+0x88>
c0d05c04:	0005      	movs	r5, r0
c0d05c06:	1e56      	subs	r6, r2, #1
c0d05c08:	e7ed      	b.n	c0d05be6 <memcpy+0x7a>
c0d05c0a:	001a      	movs	r2, r3
c0d05c0c:	e7f6      	b.n	c0d05bfc <memcpy+0x90>
c0d05c0e:	46c0      	nop			; (mov r8, r8)

c0d05c10 <memmove>:
c0d05c10:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d05c12:	4288      	cmp	r0, r1
c0d05c14:	d90a      	bls.n	c0d05c2c <memmove+0x1c>
c0d05c16:	188b      	adds	r3, r1, r2
c0d05c18:	4298      	cmp	r0, r3
c0d05c1a:	d207      	bcs.n	c0d05c2c <memmove+0x1c>
c0d05c1c:	1e53      	subs	r3, r2, #1
c0d05c1e:	2a00      	cmp	r2, #0
c0d05c20:	d003      	beq.n	c0d05c2a <memmove+0x1a>
c0d05c22:	5cca      	ldrb	r2, [r1, r3]
c0d05c24:	54c2      	strb	r2, [r0, r3]
c0d05c26:	3b01      	subs	r3, #1
c0d05c28:	d2fb      	bcs.n	c0d05c22 <memmove+0x12>
c0d05c2a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d05c2c:	2a0f      	cmp	r2, #15
c0d05c2e:	d80b      	bhi.n	c0d05c48 <memmove+0x38>
c0d05c30:	0005      	movs	r5, r0
c0d05c32:	1e56      	subs	r6, r2, #1
c0d05c34:	2a00      	cmp	r2, #0
c0d05c36:	d0f8      	beq.n	c0d05c2a <memmove+0x1a>
c0d05c38:	2300      	movs	r3, #0
c0d05c3a:	5ccc      	ldrb	r4, [r1, r3]
c0d05c3c:	001a      	movs	r2, r3
c0d05c3e:	54ec      	strb	r4, [r5, r3]
c0d05c40:	3301      	adds	r3, #1
c0d05c42:	4296      	cmp	r6, r2
c0d05c44:	d1f9      	bne.n	c0d05c3a <memmove+0x2a>
c0d05c46:	e7f0      	b.n	c0d05c2a <memmove+0x1a>
c0d05c48:	2703      	movs	r7, #3
c0d05c4a:	000d      	movs	r5, r1
c0d05c4c:	003e      	movs	r6, r7
c0d05c4e:	4305      	orrs	r5, r0
c0d05c50:	000c      	movs	r4, r1
c0d05c52:	0003      	movs	r3, r0
c0d05c54:	402e      	ands	r6, r5
c0d05c56:	422f      	tst	r7, r5
c0d05c58:	d12b      	bne.n	c0d05cb2 <memmove+0xa2>
c0d05c5a:	0015      	movs	r5, r2
c0d05c5c:	3d10      	subs	r5, #16
c0d05c5e:	092d      	lsrs	r5, r5, #4
c0d05c60:	46ac      	mov	ip, r5
c0d05c62:	012f      	lsls	r7, r5, #4
c0d05c64:	183f      	adds	r7, r7, r0
c0d05c66:	6825      	ldr	r5, [r4, #0]
c0d05c68:	601d      	str	r5, [r3, #0]
c0d05c6a:	6865      	ldr	r5, [r4, #4]
c0d05c6c:	605d      	str	r5, [r3, #4]
c0d05c6e:	68a5      	ldr	r5, [r4, #8]
c0d05c70:	609d      	str	r5, [r3, #8]
c0d05c72:	68e5      	ldr	r5, [r4, #12]
c0d05c74:	3410      	adds	r4, #16
c0d05c76:	60dd      	str	r5, [r3, #12]
c0d05c78:	001d      	movs	r5, r3
c0d05c7a:	3310      	adds	r3, #16
c0d05c7c:	42bd      	cmp	r5, r7
c0d05c7e:	d1f2      	bne.n	c0d05c66 <memmove+0x56>
c0d05c80:	4665      	mov	r5, ip
c0d05c82:	230f      	movs	r3, #15
c0d05c84:	240c      	movs	r4, #12
c0d05c86:	3501      	adds	r5, #1
c0d05c88:	012d      	lsls	r5, r5, #4
c0d05c8a:	1949      	adds	r1, r1, r5
c0d05c8c:	4013      	ands	r3, r2
c0d05c8e:	1945      	adds	r5, r0, r5
c0d05c90:	4214      	tst	r4, r2
c0d05c92:	d011      	beq.n	c0d05cb8 <memmove+0xa8>
c0d05c94:	598c      	ldr	r4, [r1, r6]
c0d05c96:	51ac      	str	r4, [r5, r6]
c0d05c98:	3604      	adds	r6, #4
c0d05c9a:	1b9c      	subs	r4, r3, r6
c0d05c9c:	2c03      	cmp	r4, #3
c0d05c9e:	d8f9      	bhi.n	c0d05c94 <memmove+0x84>
c0d05ca0:	3b04      	subs	r3, #4
c0d05ca2:	089b      	lsrs	r3, r3, #2
c0d05ca4:	3301      	adds	r3, #1
c0d05ca6:	009b      	lsls	r3, r3, #2
c0d05ca8:	18ed      	adds	r5, r5, r3
c0d05caa:	18c9      	adds	r1, r1, r3
c0d05cac:	2303      	movs	r3, #3
c0d05cae:	401a      	ands	r2, r3
c0d05cb0:	e7bf      	b.n	c0d05c32 <memmove+0x22>
c0d05cb2:	0005      	movs	r5, r0
c0d05cb4:	1e56      	subs	r6, r2, #1
c0d05cb6:	e7bf      	b.n	c0d05c38 <memmove+0x28>
c0d05cb8:	001a      	movs	r2, r3
c0d05cba:	e7ba      	b.n	c0d05c32 <memmove+0x22>

c0d05cbc <memset>:
c0d05cbc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d05cbe:	0005      	movs	r5, r0
c0d05cc0:	0783      	lsls	r3, r0, #30
c0d05cc2:	d049      	beq.n	c0d05d58 <memset+0x9c>
c0d05cc4:	1e54      	subs	r4, r2, #1
c0d05cc6:	2a00      	cmp	r2, #0
c0d05cc8:	d045      	beq.n	c0d05d56 <memset+0x9a>
c0d05cca:	0003      	movs	r3, r0
c0d05ccc:	2603      	movs	r6, #3
c0d05cce:	b2ca      	uxtb	r2, r1
c0d05cd0:	e002      	b.n	c0d05cd8 <memset+0x1c>
c0d05cd2:	3501      	adds	r5, #1
c0d05cd4:	3c01      	subs	r4, #1
c0d05cd6:	d33e      	bcc.n	c0d05d56 <memset+0x9a>
c0d05cd8:	3301      	adds	r3, #1
c0d05cda:	702a      	strb	r2, [r5, #0]
c0d05cdc:	4233      	tst	r3, r6
c0d05cde:	d1f8      	bne.n	c0d05cd2 <memset+0x16>
c0d05ce0:	2c03      	cmp	r4, #3
c0d05ce2:	d930      	bls.n	c0d05d46 <memset+0x8a>
c0d05ce4:	22ff      	movs	r2, #255	; 0xff
c0d05ce6:	400a      	ands	r2, r1
c0d05ce8:	0215      	lsls	r5, r2, #8
c0d05cea:	4315      	orrs	r5, r2
c0d05cec:	042a      	lsls	r2, r5, #16
c0d05cee:	4315      	orrs	r5, r2
c0d05cf0:	2c0f      	cmp	r4, #15
c0d05cf2:	d934      	bls.n	c0d05d5e <memset+0xa2>
c0d05cf4:	0027      	movs	r7, r4
c0d05cf6:	3f10      	subs	r7, #16
c0d05cf8:	093f      	lsrs	r7, r7, #4
c0d05cfa:	013e      	lsls	r6, r7, #4
c0d05cfc:	46b4      	mov	ip, r6
c0d05cfe:	001e      	movs	r6, r3
c0d05d00:	001a      	movs	r2, r3
c0d05d02:	3610      	adds	r6, #16
c0d05d04:	4466      	add	r6, ip
c0d05d06:	6015      	str	r5, [r2, #0]
c0d05d08:	6055      	str	r5, [r2, #4]
c0d05d0a:	6095      	str	r5, [r2, #8]
c0d05d0c:	60d5      	str	r5, [r2, #12]
c0d05d0e:	3210      	adds	r2, #16
c0d05d10:	42b2      	cmp	r2, r6
c0d05d12:	d1f8      	bne.n	c0d05d06 <memset+0x4a>
c0d05d14:	3701      	adds	r7, #1
c0d05d16:	013f      	lsls	r7, r7, #4
c0d05d18:	19db      	adds	r3, r3, r7
c0d05d1a:	270f      	movs	r7, #15
c0d05d1c:	220c      	movs	r2, #12
c0d05d1e:	4027      	ands	r7, r4
c0d05d20:	4022      	ands	r2, r4
c0d05d22:	003c      	movs	r4, r7
c0d05d24:	2a00      	cmp	r2, #0
c0d05d26:	d00e      	beq.n	c0d05d46 <memset+0x8a>
c0d05d28:	1f3e      	subs	r6, r7, #4
c0d05d2a:	08b6      	lsrs	r6, r6, #2
c0d05d2c:	00b4      	lsls	r4, r6, #2
c0d05d2e:	46a4      	mov	ip, r4
c0d05d30:	001a      	movs	r2, r3
c0d05d32:	1d1c      	adds	r4, r3, #4
c0d05d34:	4464      	add	r4, ip
c0d05d36:	c220      	stmia	r2!, {r5}
c0d05d38:	42a2      	cmp	r2, r4
c0d05d3a:	d1fc      	bne.n	c0d05d36 <memset+0x7a>
c0d05d3c:	2403      	movs	r4, #3
c0d05d3e:	3601      	adds	r6, #1
c0d05d40:	00b6      	lsls	r6, r6, #2
c0d05d42:	199b      	adds	r3, r3, r6
c0d05d44:	403c      	ands	r4, r7
c0d05d46:	2c00      	cmp	r4, #0
c0d05d48:	d005      	beq.n	c0d05d56 <memset+0x9a>
c0d05d4a:	b2c9      	uxtb	r1, r1
c0d05d4c:	191c      	adds	r4, r3, r4
c0d05d4e:	7019      	strb	r1, [r3, #0]
c0d05d50:	3301      	adds	r3, #1
c0d05d52:	429c      	cmp	r4, r3
c0d05d54:	d1fb      	bne.n	c0d05d4e <memset+0x92>
c0d05d56:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d05d58:	0003      	movs	r3, r0
c0d05d5a:	0014      	movs	r4, r2
c0d05d5c:	e7c0      	b.n	c0d05ce0 <memset+0x24>
c0d05d5e:	0027      	movs	r7, r4
c0d05d60:	e7e2      	b.n	c0d05d28 <memset+0x6c>
c0d05d62:	46c0      	nop			; (mov r8, r8)

c0d05d64 <setjmp>:
c0d05d64:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
c0d05d66:	4641      	mov	r1, r8
c0d05d68:	464a      	mov	r2, r9
c0d05d6a:	4653      	mov	r3, sl
c0d05d6c:	465c      	mov	r4, fp
c0d05d6e:	466d      	mov	r5, sp
c0d05d70:	4676      	mov	r6, lr
c0d05d72:	c07e      	stmia	r0!, {r1, r2, r3, r4, r5, r6}
c0d05d74:	3828      	subs	r0, #40	; 0x28
c0d05d76:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
c0d05d78:	2000      	movs	r0, #0
c0d05d7a:	4770      	bx	lr

c0d05d7c <longjmp>:
c0d05d7c:	3010      	adds	r0, #16
c0d05d7e:	c87c      	ldmia	r0!, {r2, r3, r4, r5, r6}
c0d05d80:	4690      	mov	r8, r2
c0d05d82:	4699      	mov	r9, r3
c0d05d84:	46a2      	mov	sl, r4
c0d05d86:	46ab      	mov	fp, r5
c0d05d88:	46b5      	mov	sp, r6
c0d05d8a:	c808      	ldmia	r0!, {r3}
c0d05d8c:	3828      	subs	r0, #40	; 0x28
c0d05d8e:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
c0d05d90:	0008      	movs	r0, r1
c0d05d92:	d100      	bne.n	c0d05d96 <longjmp+0x1a>
c0d05d94:	2001      	movs	r0, #1
c0d05d96:	4718      	bx	r3

c0d05d98 <strlen>:
c0d05d98:	b510      	push	{r4, lr}
c0d05d9a:	0783      	lsls	r3, r0, #30
c0d05d9c:	d00a      	beq.n	c0d05db4 <strlen+0x1c>
c0d05d9e:	0003      	movs	r3, r0
c0d05da0:	2103      	movs	r1, #3
c0d05da2:	e002      	b.n	c0d05daa <strlen+0x12>
c0d05da4:	3301      	adds	r3, #1
c0d05da6:	420b      	tst	r3, r1
c0d05da8:	d005      	beq.n	c0d05db6 <strlen+0x1e>
c0d05daa:	781a      	ldrb	r2, [r3, #0]
c0d05dac:	2a00      	cmp	r2, #0
c0d05dae:	d1f9      	bne.n	c0d05da4 <strlen+0xc>
c0d05db0:	1a18      	subs	r0, r3, r0
c0d05db2:	bd10      	pop	{r4, pc}
c0d05db4:	0003      	movs	r3, r0
c0d05db6:	6819      	ldr	r1, [r3, #0]
c0d05db8:	4a0c      	ldr	r2, [pc, #48]	; (c0d05dec <strlen+0x54>)
c0d05dba:	4c0d      	ldr	r4, [pc, #52]	; (c0d05df0 <strlen+0x58>)
c0d05dbc:	188a      	adds	r2, r1, r2
c0d05dbe:	438a      	bics	r2, r1
c0d05dc0:	4222      	tst	r2, r4
c0d05dc2:	d10f      	bne.n	c0d05de4 <strlen+0x4c>
c0d05dc4:	6859      	ldr	r1, [r3, #4]
c0d05dc6:	4a09      	ldr	r2, [pc, #36]	; (c0d05dec <strlen+0x54>)
c0d05dc8:	3304      	adds	r3, #4
c0d05dca:	188a      	adds	r2, r1, r2
c0d05dcc:	438a      	bics	r2, r1
c0d05dce:	4222      	tst	r2, r4
c0d05dd0:	d108      	bne.n	c0d05de4 <strlen+0x4c>
c0d05dd2:	6859      	ldr	r1, [r3, #4]
c0d05dd4:	4a05      	ldr	r2, [pc, #20]	; (c0d05dec <strlen+0x54>)
c0d05dd6:	3304      	adds	r3, #4
c0d05dd8:	188a      	adds	r2, r1, r2
c0d05dda:	438a      	bics	r2, r1
c0d05ddc:	4222      	tst	r2, r4
c0d05dde:	d0f1      	beq.n	c0d05dc4 <strlen+0x2c>
c0d05de0:	e000      	b.n	c0d05de4 <strlen+0x4c>
c0d05de2:	3301      	adds	r3, #1
c0d05de4:	781a      	ldrb	r2, [r3, #0]
c0d05de6:	2a00      	cmp	r2, #0
c0d05de8:	d1fb      	bne.n	c0d05de2 <strlen+0x4a>
c0d05dea:	e7e1      	b.n	c0d05db0 <strlen+0x18>
c0d05dec:	fefefeff 	.word	0xfefefeff
c0d05df0:	80808080 	.word	0x80808080

c0d05df4 <strnlen>:
c0d05df4:	b510      	push	{r4, lr}
c0d05df6:	0003      	movs	r3, r0
c0d05df8:	1844      	adds	r4, r0, r1
c0d05dfa:	2900      	cmp	r1, #0
c0d05dfc:	d103      	bne.n	c0d05e06 <strnlen+0x12>
c0d05dfe:	e009      	b.n	c0d05e14 <strnlen+0x20>
c0d05e00:	3301      	adds	r3, #1
c0d05e02:	429c      	cmp	r4, r3
c0d05e04:	d004      	beq.n	c0d05e10 <strnlen+0x1c>
c0d05e06:	781a      	ldrb	r2, [r3, #0]
c0d05e08:	2a00      	cmp	r2, #0
c0d05e0a:	d1f9      	bne.n	c0d05e00 <strnlen+0xc>
c0d05e0c:	1a18      	subs	r0, r3, r0
c0d05e0e:	bd10      	pop	{r4, pc}
c0d05e10:	1a20      	subs	r0, r4, r0
c0d05e12:	e7fc      	b.n	c0d05e0e <strnlen+0x1a>
c0d05e14:	2000      	movs	r0, #0
c0d05e16:	e7fa      	b.n	c0d05e0e <strnlen+0x1a>

c0d05e18 <bzero>:
c0d05e18:	b510      	push	{r4, lr}
c0d05e1a:	000a      	movs	r2, r1
c0d05e1c:	2100      	movs	r1, #0
c0d05e1e:	f7ff ff4d 	bl	c0d05cbc <memset>
c0d05e22:	bd10      	pop	{r4, pc}

c0d05e24 <FIELD_MODULUS>:
c0d05e24:	0040 0000 0000 0000 0000 0000 0000 0000     @...............
c0d05e34:	4622 fc98 4c09 1bf9 2d99 ed30 0000 0100     "F...L...-0.....

c0d05e44 <FIELD_ZERO>:
	...

c0d05e64 <GROUP_ORDER>:
c0d05e64:	0040 0000 0000 0000 0000 0000 0000 0000     @...............
c0d05e74:	4622 fc98 9409 dda8 468c 21eb 0000 0100     "F.......F.!....

c0d05e84 <SCALAR_ZERO>:
	...

c0d05ea4 <FIELD_FOUR>:
	...
c0d05ec0:	0000 0400                                   ....

c0d05ec4 <FIELD_THREE>:
	...
c0d05ee0:	0000 0300                                   ....

c0d05ee4 <FIELD_TWO>:
	...
c0d05f00:	0000 0200                                   ....

c0d05f04 <FIELD_EIGHT>:
	...
c0d05f20:	0000 0800                                   ....

c0d05f24 <GROUP_ZERO>:
	...
c0d05f60:	0000 0100 0000 0000 0000 0000 0000 0000     ................
	...

c0d05f84 <FIELD_ONE>:
	...
c0d05fa0:	0000 0100                                   ....

c0d05fa4 <AFFINE_ONE>:
	...
c0d05fc0:	0000 0100 741b a3b5 120a 7c93 df53 f0a9     .....t.....|S...
c0d05fd0:	7863 54ee 658f d45b 3d33 7147 cf19 237a     cx.T.e[.3=Gq..z#
c0d05fe0:	edca bb2a 6441 7264 7365 0073 7041 7270     ..*.Address.Appr
c0d05ff0:	766f 0065 6552 656a 7463 4700 7465 5000     ove.Reject.Get.P
c0d06000:	7461 0068 6547 656e 6172 6574 4300 6e61     ath.Generate.Can
c0d06010:	6563 006c 2f27 2f30 0030 0000               cel.'/0/0...

c0d0601c <ux_get_address_result_flow_address_step_val>:
c0d0601c:	5fe4 c0d0 0200 2000                         ._..... 

c0d06024 <ux_get_address_result_flow_address_step>:
c0d06024:	0a0f c0d0 601c c0d0 0000 0000 0000 0000     .....`..........

c0d06034 <ux_get_address_result_flow_approve_step_validate_step>:
c0d06034:	0a99 c0d0 0000 0000 0000 0000 0000 0000     ................

c0d06044 <ux_get_address_result_flow_approve_step_validate>:
c0d06044:	6034 c0d0 ffff ffff                         4`......

c0d0604c <ux_get_address_result_flow_approve_step_val>:
c0d0604c:	6274 c0d0 5fec c0d0                         tb..._..

c0d06054 <ux_get_address_result_flow_approve_step>:
c0d06054:	55c9 c0d0 604c c0d0 6044 c0d0 0000 0000     .U..L`..D`......

c0d06064 <ux_get_address_result_flow_reject_step_validate_step>:
c0d06064:	0ab9 c0d0 0000 0000 0000 0000 0000 0000     ................

c0d06074 <ux_get_address_result_flow_reject_step_validate>:
c0d06074:	6064 c0d0 ffff ffff                         d`......

c0d0607c <ux_get_address_result_flow_reject_step_val>:
c0d0607c:	618c c0d0 5ff4 c0d0                         .a..._..

c0d06084 <ux_get_address_result_flow_reject_step>:
c0d06084:	55c9 c0d0 607c c0d0 6074 c0d0 0000 0000     .U..|`..t`......

c0d06094 <ux_get_address_result_flow>:
c0d06094:	6024 c0d0 6054 c0d0 6084 c0d0 ffff ffff     $`..T`...`......

c0d060a4 <ux_get_address_flow_topic_step_val>:
c0d060a4:	61fc c0d0 5ffb c0d0 5fe4 c0d0               .a..._..._..

c0d060b0 <ux_get_address_flow_topic_step>:
c0d060b0:	56d5 c0d0 60a4 c0d0 0000 0000 0000 0000     .V...`..........

c0d060c0 <ux_get_address_flow_path_step_val>:
c0d060c0:	5fff c0d0 0238 2000                         ._..8.. 

c0d060c8 <ux_get_address_flow_path_step>:
c0d060c8:	5225 c0d0 60c0 c0d0 0000 0000 0000 0000     %R...`..........

c0d060d8 <ux_get_address_flow_generate_step_validate_step>:
c0d060d8:	0ac5 c0d0 0000 0000 0000 0000 0000 0000     ................

c0d060e8 <ux_get_address_flow_generate_step_validate>:
c0d060e8:	60d8 c0d0 ffff ffff                         .`......

c0d060f0 <ux_get_address_flow_generate_step_val>:
c0d060f0:	6274 c0d0 6004 c0d0                         tb...`..

c0d060f8 <ux_get_address_flow_generate_step>:
c0d060f8:	55c9 c0d0 60f0 c0d0 60e8 c0d0 0000 0000     .U...`...`......

c0d06108 <ux_get_address_flow_cancel_step_validate_step>:
c0d06108:	0ad9 c0d0 0000 0000 0000 0000 0000 0000     ................

c0d06118 <ux_get_address_flow_cancel_step_validate>:
c0d06118:	6108 c0d0 ffff ffff                         .a......

c0d06120 <ux_get_address_flow_cancel_step_val>:
c0d06120:	618c c0d0 600d c0d0                         .a...`..

c0d06128 <ux_get_address_flow_cancel_step>:
c0d06128:	55c9 c0d0 6120 c0d0 6118 c0d0 0000 0000     .U.. a...a......

c0d06138 <ux_get_address_flow>:
c0d06138:	60b0 c0d0 60c8 c0d0 60f8 c0d0 6128 c0d0     .`...`...`..(a..
c0d06148:	ffff ffff 3434 2f27 3231 3835 2736 002f     ....44'/12586'/.
	...

c0d06168 <C_icon_crossmark_colors>:
c0d06168:	0000 0000 ffff 00ff                         ........

c0d06170 <C_icon_crossmark_bitmap>:
c0d06170:	8000 e601 71c0 3838 fc07 1e00 0780 03f0     .....q88........
c0d06180:	c1ce 38e1 0670 0018 0000 0000               ...8p.......

c0d0618c <C_icon_crossmark>:
c0d0618c:	000e 0000 000e 0000 0001 0000 6168 c0d0     ............ha..
c0d0619c:	6170 c0d0                                   pa..

c0d061a0 <C_icon_dashboard_x_colors>:
c0d061a0:	0000 0000 ffff 00ff                         ........

c0d061a8 <C_icon_dashboard_x_bitmap>:
c0d061a8:	0000 0000 800c f007 fe03 ffc1 3ff0 03f0     .............?..
c0d061b8:	00cc c033 000c 0000 0000 0000               ..3.........

c0d061c4 <C_icon_dashboard_x>:
c0d061c4:	000e 0000 000e 0000 0001 0000 61a0 c0d0     .............a..
c0d061d4:	61a8 c0d0                                   .a..

c0d061d8 <C_icon_eye_colors>:
c0d061d8:	0000 0000 ffff 00ff                         ........

c0d061e0 <C_icon_eye_bitmap>:
c0d061e0:	0000 0000 e01e 1c1f 030e 8c63 6319 0c0c     ..........c..c..
c0d061f0:	8387 807f 0007 0000 0000 0000               ............

c0d061fc <C_icon_eye>:
c0d061fc:	000e 0000 000e 0000 0001 0000 61d8 c0d0     .............a..
c0d0620c:	61e0 c0d0                                   .a..

c0d06210 <C_icon_left_colors>:
c0d06210:	0000 0000 ffff 00ff                         ........

c0d06218 <C_icon_left_bitmap>:
c0d06218:	1248 0842                                   H.B.

c0d0621c <C_icon_left>:
c0d0621c:	0004 0000 0007 0000 0001 0000 6210 c0d0     .............b..
c0d0622c:	6218 c0d0                                   .b..

c0d06230 <C_icon_right_colors>:
c0d06230:	0000 0000 ffff 00ff                         ........

c0d06238 <C_icon_right_bitmap>:
c0d06238:	8421 0124                                   !.$.

c0d0623c <C_icon_right>:
c0d0623c:	0004 0000 0007 0000 0001 0000 6230 c0d0     ............0b..
c0d0624c:	6238 c0d0                                   8b..

c0d06250 <C_icon_validate_14_colors>:
c0d06250:	0000 0000 ffff 00ff                         ........

c0d06258 <C_icon_validate_14_bitmap>:
c0d06258:	0000 0000 0000 00c0 0038 e067 1c38 039c     ........8.g.8...
c0d06268:	007e 800f 0001 0000 0000 0000               ~...........

c0d06274 <C_icon_validate_14>:
c0d06274:	000e 0000 000e 0000 0001 0000 6250 c0d0     ............Pb..
c0d06284:	6258 c0d0                                   Xb..

c0d06288 <C_mina_logo_colors>:
c0d06288:	0000 0000 ffff 00ff                         ........

c0d06290 <C_mina_logo_bitmap>:
c0d06290:	0808 1414 2222 2222 2222 2222 2222 2222     ....""""""""""""
c0d062a0:	2222 2222 2222 2222 2222 2222 2142 4081     """"""""""""B!.@

c0d062b0 <C_mina_logo>:
c0d062b0:	0010 0000 0010 0000 0001 0000 6288 c0d0     .............b..
c0d062c0:	6290 c0d0 694d 616e 6900 2073 6572 6461     .b..Mina.is read
c0d062d0:	0079 6556 7372 6f69 006e 2e31 2e31 0030     y.Version.1.1.0.
c0d062e0:	7551 7469 0000 0000                         Quit....

c0d062e8 <ux_idle_flow_1_step_val>:
c0d062e8:	62b0 c0d0 62c4 c0d0 62c9 c0d0               .b...b...b..

c0d062f4 <ux_idle_flow_1_step>:
c0d062f4:	56d5 c0d0 62e8 c0d0 0000 0000 0000 0000     .V...b..........

c0d06304 <ux_idle_flow_2_step_val>:
c0d06304:	62d2 c0d0 62da c0d0                         .b...b..

c0d0630c <ux_idle_flow_2_step>:
c0d0630c:	50f9 c0d0 6304 c0d0 0000 0000 0000 0000     .P...c..........

c0d0631c <ux_idle_flow_3_step_validate_step>:
c0d0631c:	1435 c0d0 0000 0000 0000 0000 0000 0000     5...............

c0d0632c <ux_idle_flow_3_step_validate>:
c0d0632c:	631c c0d0 ffff ffff                         .c......

c0d06334 <ux_idle_flow_3_step_val>:
c0d06334:	61c4 c0d0 62e0 c0d0                         .a...b..

c0d0633c <ux_idle_flow_3_step>:
c0d0633c:	55c9 c0d0 6334 c0d0 632c c0d0 0000 0000     .U..4c..,c......

c0d0634c <ux_idle_flow>:
c0d0634c:	62f4 c0d0 630c c0d0 633c c0d0 fffd ffff     .b...c..<c......
c0d0635c:	ffff ffff                                   ....

c0d06360 <seph_io_general_status>:
c0d06360:	0060 0002                                    `....

c0d06365 <g_pcHex>:
c0d06365:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0d06375 <g_pcHex_cap>:
c0d06375:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0d06385 <FIELD_FIVE>:
	...
c0d063a1:	0000 0500                                   ....

c0d063a5 <round_keys>:
c0d063a5:	f902 dada c9bb f891 91d6 62dc a5fe aef8     ...........b....
c0d063b5:	b737 fe6e 6951 b0a9 92cc 82a4 cb0c 7853     7.n.Qi........Sx
c0d063c5:	8317 c6be 57c3 730a 433c 3d95 8495 29b2     .....W.s<C.=...)
c0d063d5:	73a9 367a f129 dad0 b7b0 6586 0b58 e588     .sz6)......eX...
c0d063e5:	c028 f61d 6b66 1904 f06c f02a 0739 bb56     (...fk..l.*.9.V.
c0d063f5:	eca8 80fe 6e10 563f 7e37 89ad 3457 7b0c     .....n?V7~..W4.{
c0d06405:	d10c ba02 12db be4e 739c 4958 d74b 35fa     ......N..sXIK..5
c0d06415:	8b92 097c bb54 5ff2 f900 f05d 39a6 b492     ..|.T.._..]..9..
c0d06425:	0f02 3117 f7ee 19b4 400a cfda 7531 c37c     ...1.....@..1u|.
c0d06435:	d19b 3367 8de1 625f 4147 7b75 7afd d551     ..g3.._bGAu{.zQ.
c0d06445:	331e ed39 cae4 0403 fdd2 f8ad 094d 0b7d     .39.........M.}.
c0d06455:	37dd 0a0e a4ea 689d 98db e0fd db8c 52df     .7.....h.......R
c0d06465:	6f0d 7806 fc38 0aa7 823a f7d8 72ed 5b34     .o.x8...:....r4[
c0d06475:	880d 92d5 ede2 a02a de3f 83b2 bd71 60ad     ......*.?...q..`
c0d06485:	b93f be17 bf23 c282 39ba 811b 4e70 a7e5     ?...#....9..pN..
c0d06495:	e2aa a7a9 a7e8 4b5d 7856 3bf0 9c72 6f75     ......]KVx.;r.uo
c0d064a5:	c733 ac66 438e 4fad 0100 8afe 16a2 5850     3.f..C.O......PX
c0d064b5:	01d1 3b5a 8bed f62c a057 19d2 ec51 9569     ..Z;..,.W...Q.i.
c0d064c5:	681e fd70 2734 ff83 d694 d430 7aae 1bbe     .hp.4'....0..z..
c0d064d5:	987c 539b 123d e03f 0a29 e92f a8af 8db5     |..S=.?.)./.....
c0d064e5:	8431 f11a be66 19e1 eba8 1ee6 9a07 962b     1...f.........+.
c0d064f5:	e02c 710c 26e0 8494 617a 8c11 3486 dae0     ,..q.&..za...4..
c0d06505:	e21c cb18 cde1 d333 38bd dd02 99e9 fbd1     ......3..8......
c0d06515:	b333 6b80 221b 1f2d 8e48 5665 f616 afd5     3..k."-.H.eV....
c0d06525:	3733 c172 4642 78fd 072e 8d47 c22c dd3c     37r.BF.x..G.,.<.
c0d06535:	9d5d 1066 7733 01c0 a876 36f5 c1b6 aad1     ].f.3w..v..6....
c0d06545:	2504 a4e6 f47a 684e 2c35 0a07 3cc0 e982     .%..z.Nh5,...<..
c0d06555:	5877 0e63 7693 20e9 857e f2bc 46bc 2019     wXc..v. ~....F. 
c0d06565:	4338 4233 31a8 1dc7 0496 f0a5 9545 8a30     8C3B.1......E.0.
c0d06575:	f032 60ed 6fc7 8f3d 5fb7 77b6 2ba3 b66e     2..`.o=.._.w.+n.
c0d06585:	c704 fc93 4d2c 19b3 56f2 8158 eef0 defb     ....,M...VX.....
c0d06595:	66de 0bef 310d 954f 873e 6330 5410 1132     .f...1O.>.0c.T2.
c0d065a5:	5c2a 1218 4809 f99b 441a 187f 2977 f1b2     *\...H...D..w)..
c0d065b5:	ce44 b8b9 ef25 8a2f 79d9 8f12 ad18 5e10     D...%./..y.....^
c0d065c5:	e436 1a78 9f62 e8cf 9d48 28bf a7f6 6a52     6.x.b...H..(..Rj
c0d065d5:	e57f 0f64 c1be cfb3 155f e75a f260 416f     ..d....._.Z.`.oA
c0d065e5:	4823 d1be 6043 3e72 648c d13f 22f0 15ce     #H..C`r>.d?.."..
c0d065f5:	b30f e249 dba5 625f c0fb 0597 3e71 4755     ..I..._b....q>UG
c0d06605:	b311 d071 a9f4 dcd4 8e68 b4e6 5e3d 25d6     ..q.....h...=^.%
c0d06615:	138a a17a c46a 90e1 aef4 05a3 d116 5a3d     ..z.j.........=Z
c0d06625:	8d29 b837 ec5d 7d2b 8854 9777 2d5b 98e1     ).7.].+}T.w.[-..
c0d06635:	7e32 3497 cdbd 9aca d21b 7165 fb21 bb8e     2~.4......eq!...
c0d06645:	e82a 48b1 f53a 5ceb 4a75 a5d6 b219 ce14     *..H:..\uJ......
c0d06655:	c767 ad72 3775 d6db 1707 2049 4256 431f     g.r.u7....I VB.C
c0d06665:	301e 2650 801e 2f37 83a5 0a0b 116f f39c     .0P&..7/....o...
c0d06675:	e4c4 aadd 588f 1053 c4a0 d888 d650 bf53     .....XS.....P.S.
c0d06685:	281f d4f3 2e24 fe8d 2021 6f1b da28 b1ac     .(..$...! .o(...
c0d06695:	15d9 bd9c 2abe e626 ca18 9934 de99 5d7c     .....*&...4...|]
c0d066a5:	461d 8e9a b6ee 7775 9e3d 6491 4ac9 a3ed     .F....uw=..d.J..
c0d066b5:	6855 ca1f 87cd 25bd 68fb 818d d56d 3402     Uh.....%.h..m..4
c0d066c5:	d638 d1ec eb01 8b00 d9c3 9f4b 0c84 f568     8.........K...h.
c0d066d5:	11c9 7387 f003 f084 2af7 d504 ae1f ad0e     ...s.....*......
c0d066e5:	653b d1f8 3bd6 c2d4 e911 8a65 90eb 7398     ;e...;....e....s
c0d066f5:	74d0 4bdf bbf8 118b bccd 2eb9 2617 cd57     .t.K.........&W.
c0d06705:	cf34 f076 6534 1f7b c8a7 6c3b aa8a 659e     4.v.4e{...;l...e
c0d06715:	6a46 e1ae d4ca d733 9ac0 735c c861 0991     Fj....3...\sa...
c0d06725:	4225 14cd d860 4069 2602 d6d2 26c1 81a4     %B..`.i@.&...&..
c0d06735:	0424 7ecc 7a00 8573 dd9d fcc6 192e e8c1     $..~.zs.........
c0d06745:	c728 0c56 c81e 1742 6892 f3bc 3f81 4b4f     (.V...B..h...?OK
c0d06755:	5fe0 e6a6 bb00 6dfb d5ae 62b8 8235 ed05     ._.....m...b5...
c0d06765:	5b25 613e 1438 376a 0cf7 f8b9 cef4 ba44     %[>a8.j7......D.
c0d06775:	7e6d 8fb0 9409 37a5 6fea b8f6 5241 3f58     m~.....7.o..ARX?
c0d06785:	b634 b13e ec74 4d33 32ae 7f41 c25c f272     4.>.t.3M.2A.\.r.
c0d06795:	1617 e365 322d 6a3f ba58 9076 57ac 28cc     ..e.-2?jX.v..W.(
c0d067a5:	e035 b6c2 5408 b67a 057f d6ec 1a1f eaea     5....Tz.........
c0d067b5:	13c0 ff9f 34e7 07fa 333c 08ea 1e7d bb1f     .....4..<3..}...
c0d067c5:	1138 9f5c b035 cc3d 1a03 d930 4bbc f91f     8.\.5.=...0..K..
c0d067d5:	3038 e1d9 deed 22d0 5de0 3a84 032f e647     80.....".].:/.G.
c0d067e5:	4903 3e4b 9bea 53d5 0330 e5b3 459a 355f     .IK>...S0....E_5
c0d067f5:	5e3b 83ce 91e7 0334 223a 0a58 6805 5c5b     ;^....4.:"X..h[\
c0d06805:	3d29 9a81 38c2 33e2 063c 814a 5569 cbcf     )=...8.3<.J.iU..
c0d06815:	d5f3 a857 7817 515c 4933 03eb 21c7 6eb7     ..W..x\Q3I...!.n
c0d06825:	bc29 b2ab 2d3f b809 5b47 1f95 a25b 33bb     )...?-..G[..[..3
c0d06835:	ae8d 9411 050b 7157 638b 5ec4 1e6c cac9     ......Wq.c.^l...
c0d06845:	6500 4826 54b3 0088 c4e4 a5e9 98be 02e2     .e&H.T..........
c0d06855:	3071 3cf8 572b f1e3 a2ee 04ee 4529 9030     q0.<+W......)E0.
c0d06865:	8712 537b 2482 35e2 1dd9 6677 9e1f 730c     ..{S.$.5..wf...s
c0d06875:	d6d3 6773 2785 2669 6e8b 3379 53e7 1891     ..sg.'i&.ny3.S..
c0d06885:	3c09 5b11 f2b0 1188 a1a7 041c f51e 7f84     .<.[............
c0d06895:	c14e d71d 4587 fe7f 1697 a9b2 da96 6c3d     N....E........=l
c0d068a5:	3424 dfae 0c50 31e5 ce4c f760 40d5 0171     $4..P..1L.`..@q.
c0d068b5:	3460 d71e 8ffe b2aa d2fc efde 7368 2918     `4..........hs.)
c0d068c5:	9112 e8b3 691b d7a2 1beb 6e56 224e 8ba2     .....i....VnN"..
c0d068d5:	8a2a 13ae 9bdc d56f 140c 47ca 7a89 5f90     *.....o....G.z._
c0d068e5:	2022 3713 626f e383 33e6 96f6 a09e 4176     " .7ob...3....vA
c0d068f5:	7ed5 ee7d 9a49 e8c3 ee81 144e 42d1 9944     .~}.I.....N..BD.
c0d06905:	0609 147a 7667 20a1 d055 e073 8a32 d4e1     ..z.gv. U.s.2...
c0d06915:	a483 0dc0 cc89 d810 dc0b 672d f455 89d8     ..........-gU...
c0d06925:	403a 21dc f898 690b f10f 9b67 53b0 758c     :@.!...i..g..S.u
c0d06935:	d7b3 a018 3928 ce20 398d 2df1 fa9c ab27     ....(9 ..9.-..'.
c0d06945:	7615 2853 a889 5ddd bcd7 8442 085f 3bf6     .vS(...]..B._..;
c0d06955:	fbac d453 1808 7438 152b e84b 007b 34b9     ..S...8t+.K.{..4
c0d06965:	b43d 72ef 8bbd 85d5 ed06 672e 5270 fc0b     =..r.......gpR..
c0d06975:	3b13 d053 ea95 20f8 66e4 2885 1d93 ece9     .;S.... .f.(....
c0d06985:	1e2d 8716 b9b8 393e 988a 1105 6041 167f     -.....>9....A`..
c0d06995:	c792 d706 6702 1900 ddeb 722b 7a24 bad9     .....g....+r$z..
c0d069a5:	3e32 7696 6bd5 79d5 a406 8f9e 2964 166b     2>.v.k.y....d)k.
c0d069b5:	aba5 5857 107c bd92 3d4f bc9f d548 aabd     ..WX|...O=..H...
c0d069c5:	831b 4509 c40b 0350 bf89 f7c6 af36 7814     ...E..P.....6..x
c0d069d5:	a1d3 c5ea ce3d 4759 7e3d 2e68 57d2 af58     ....=.YG=~h..WX.
c0d069e5:	eb3b 007f 0163 ff55 e539 4b31 baab b06a     ;...c.U.9.1K..j.
c0d069f5:	fd6f 78aa 7a6b 69dd 89e9 9157 05b9 b75b     o..xkz.i..W...[.
c0d06a05:	e51f 0085 14a9 811b acfd f9ed 56fc dba9     .............V..
c0d06a15:	ad74 4b3e cf5a bf78 018f 70cd 0f44 ad3c     t.>KZ.x....pD.<.
c0d06a25:	aa32 dcd1 6f3e bce3 50ac 2c4e d11f d5b1     2...>o...PN,....
c0d06a35:	7cd6 44cc 4953 9545 54ab dced 7536 68b9     .|.DSIE..T..6u.h
c0d06a45:	a307 f580 ac95 20ad a44e 405f 7768 5e31     ....... N._@hw1^
c0d06a55:	04d5 80c7 c144 0f8c 7c86 500e 17ca cd21     ....D....|.P..!.
c0d06a65:	fa09 f752 b1ac 9c00 4115 7414 1174 eff2     ..R......A.tt...
c0d06a75:	4809 a7b5 bab2 c79f bf47 97fb ba66 8985     .H......G...f...
c0d06a85:	3528 eed3 aa4c 460b 4e51 1cc4 219f f596     (5..L..FQN...!..
c0d06a95:	aefd 682c 77c4 a410 6e1f 68fd 9c86 6b37     ..,h.w...n.h..7k
c0d06aa5:	e214 7cd9 bb0a 2d87 fe8e 5c47 cb9c 09dc     ...|...-..G\....
c0d06ab5:	4769 9167 8790 9da5 b546 26a2 29ca 3ab9     iGg.....F..&.).:
c0d06ac5:	2207 11e1 903d 4e32 8206 f80f c16d 0d28     ."..=.2N....m.(.
c0d06ad5:	3f74 822a a188 308b 6ab2 5ff7 3313 86e0     t?*....0.j._.3..
c0d06ae5:	b720 eb8c 0d6e 29f0 432c e8cd 3dd5 bcf0      ...n..),C...=..
c0d06af5:	c720 fcc7 666a bdfd 543f dcd8 bae2 9683      ...jf..?T......
c0d06b05:	e132 9668 a24b 860a d83f 464d 4bb4 2fc8     2.h.K...?.MF.K./
c0d06b15:	51fc ea74 95d5 52f3 bc53 2b97 d08c 31ee     .Qt....RS..+...1
c0d06b25:	612e 35cd d9d9 f990 71f8 0be9 8976 d809     .a.5.....q..v...
c0d06b35:	1183 9373 d821 f746 89af 4f49 1b89 d3a4     ..s.!.F...IO....
c0d06b45:	ed2d 0816 ae93 d032 fb74 0007 13ec 9198     -.....2.t.......
c0d06b55:	4385 95bf 1c10 4401 4c60 d4c4 9f53 5c8b     .C.....D`L..S..\
c0d06b65:	5716 e07a be73 2382 352c 2888 2254 4927     .Wz.s..#,5.(T"'I
c0d06b75:	d8e9 a8e0 bffb 8170 9cee 422b f3a9 e509     ......p...+B....
c0d06b85:	7e18 ba88 cc7c 40df e257 f20f 17e0 7475     .~..|..@W.....ut
c0d06b95:	c3d8 1147 3f91 bdee ab5d 894f f05a d305     ..G..?..].O.Z...
c0d06ba5:	600a 41ab 1fc1 fa95 5f60 c157 8d0f b834     .`.A....`_W...4.
c0d06bb5:	b700 15d8 5f9e 007b b2a3 5fcb 9120 46a8     ....._{...._ ..F
c0d06bc5:	1429 88e1 f773 8e37 10b2 93b4 39ce ac91     )...s.7......9..
c0d06bd5:	0898 e9a9 d4a4 101e fc4c ac2b 72ab 17b6     ........L.+..r..
c0d06be5:	c606 1af0 caa8 0a19 950e 9a40 7341 0585     ..........@.As..
c0d06bf5:	30c1 cc06 8500 ab34 688a f9eb 1db7 e174     .0....4..h....t.
c0d06c05:	ef28 8c78 1820 e1ea 062c 2fb8 0c19 7ec9     (.x. ...,../...~
c0d06c15:	0c58 3c3d 3056 0685 0b8d d662 c67b af09     X.=<V0....b.{...
c0d06c25:	d426 1a5b e9a0 8872 1861 56fa 6eb5 df41     &.[...r.a..V.nA.
c0d06c35:	3a4d 76cc 8516 b2f5 ff61 58d0 1c20 f66a     M:.v....a..X .j.
c0d06c45:	ec39 e487 5da9 4ed9 3069 17d7 c622 d7d1     9....].Ni0.."...
c0d06c55:	32df 299f cd37 4815 5d34 b726 d667 ba78     .2.)7..H4]&.g.x.
c0d06c65:	bf10 fcf0 63c6 9e26 7633 00f4 195d fd4d     .....c&.3v..].M.
c0d06c75:	eb0f b3c1 e802 ae07 4779 3a65 0f91 edb6     ........yGe:....
c0d06c85:	582c a4d0 6e64 ac33 639f 2c3d a788 dbac     ,X..dn3..c=,....
c0d06c95:	197a 232c 13aa 13f1 173b ad8f f9ef d93b     z.,#....;.....;.
c0d06ca5:	5a25 f712 5a50 b781 7b38 afbc 692b 29a0     %Z..PZ..8{..+i.)
c0d06cb5:	fc83 f0b1 0a76 355a f74a ac77 1b6f b425     ....v.Z5J.w.o.%.
c0d06cc5:	de1e 410f 8ec9 785a 129c 84e1 a89e 9232     ...A..Zx......2.
c0d06cd5:	0efa c92e c6e3 0409 0ed4 29a1 9baa 8dfc     ...........)....
c0d06ce5:	d637 b1dd b058 ee7e 9e15 533f f61d 2914     7...X.~...?S...)
c0d06cf5:	a79d ea53 7e22 fb2f 70f2 20bc 51b0 ab3b     ..S."~/..p. .Q;.
c0d06d05:	f728 e6cf b7a0 756b dbb8 c4ea 033e a19b     (.....ku....>...
c0d06d15:	12ea dd6a 0eb9 cad9 1c84 6711 b8c2 d4e6     ..j........g....
c0d06d25:	e132 2ded 09bf 6b02 9f61 9e08 1d04 2806     2..-...ka......(
c0d06d35:	4235 3876 537e 050b ebae 5286 cbf0 c520     5Bv8~S.....R.. .
c0d06d45:	b53d b14e c5d8 6128 eb11 c066 2a2c 88ee     =.N...(a..f.,*..
c0d06d55:	896c 2d1f e666 b935 ee85 5a91 ff0e d95d     l..-f.5....Z..].
c0d06d65:	5c02 8b17 2b22 25b3 5814 cdea 9335 87f1     .\.."+.%.X..5...
c0d06d75:	2016 56ce 2510 33d0 c2c4 35a1 924e e2b2     . .V.%.3...5N...
c0d06d85:	1126 44a9 f966 6eef 5f98 2ca7 2d1d bf2f     &..Df..n._.,.-/.
c0d06d95:	3c05 b6be 85be c6d1 f34e c257 59d4 54db     .<......N.W..Y.T
c0d06da5:	5424 29b4 0134 f72f e878 e5e1 c8c7 fe19     $T.)4./.x.......
c0d06db5:	afe2 fa51 59db a72e 25d0 5ec2 2bc9 80e9     ..Q..Y...%.^.+..
c0d06dc5:	403f 2e09 c686 92ff 9736 f160 2aae daec     ?@......6.`..*..
c0d06dd5:	0613 4484 f188 2757 7f1e 67b4 8347 33d6     ...D..W'...gG..3
c0d06de5:	6016 b2a3 9d59 d067 0831 f39b fb9d d532     .`..Y.g.1.....2.
c0d06df5:	c1f7 9cf3 62c7 46c1 d424 3c11 e6b6 9ffe     .....b.F$..<....
c0d06e05:	3005 04f1 fb5f 205c f1a9 c694 1b4d baff     .0.._.\ ....M...
c0d06e15:	df49 54b7 7441 5a93 7a43 1832 a55b d2e9     I..TAt.ZCz2.[...
c0d06e25:	be24 fe84 b606 dfe3 638f 5bf2 13f8 992b     $........c.[..+.
c0d06e35:	0198 bb22 7bb5 7d42 9ccb 48ce c2e9 2473     .."..{B}...H..s$
c0d06e45:	1705 0922 2e04 06a9 ffe3 a15e 56e8 43c6     ..".......^..V.C
c0d06e55:	f6cb e389 bf63 74cd 5aec 6319 fa60 886d     ....c..t.Z.c`.m.
c0d06e65:	d43c 01ad ceb5 b9cc 65cb 8fac 60f4 9acc     <........e...`..
c0d06e75:	014a dcc3 dfdc eb95 6613 16d3 d123 11c6     J........f..#...
c0d06e85:	e914 efc2 ae46 9906 af7b 4759 cf95 2e64     ....F...{.YG..d.
c0d06e95:	75e9 ab5a c650 439b 29a7 51f3 aa9e c7c4     .uZ.P..C.).Q....
c0d06ea5:	ca33 b375 eef0 49e2 79ba 97ab 11f8 f1ad     3.u....I.y......
c0d06eb5:	a795 591f 4679 f533 6b97 0ea1 cebc f9b3     ...YyF3..k......
c0d06ec5:	e510 5627 1eef 6290 5aab a3b4 abe7 9fe2     ..'V...b.Z......
c0d06ed5:	ca01 3e70 9d10 76c5 f466 f1bd 01c4 7a97     ..p>...vf......z
c0d06ee5:	2d15 82c2 bb05 9f98 fb84 a3e0 4be6 2c25     .-...........K%,
c0d06ef5:	67a6 ec94 42ac 68c4 2d0a b265 c575 f822     .g...B.h.-e.u.".
c0d06f05:	ee28 dd5d efc9 ec49 87a1 9b04 6782 929c     (.]...I......g..
c0d06f15:	bea9 e874 b088 c398 56f2 bfce b68e 67a4     ..t......V.....g
c0d06f25:	1a37 f900 1ed5 a593 3da0 7f0b 2b46 3c72     7........=..F+r<
c0d06f35:	d9ff 00bf fd7e 574b d126 8b3b f4e1 6482     ....~.KW&.;....d
c0d06f45:	b72e 5ce7 ba62 7f1d cb03 4e78 a641 edaf     ...\b.....xNA...
c0d06f55:	dabc 2122 9763 c22f 8510 b5b1 c364 896a     .."!c./.....d.j.
c0d06f65:	772a cb9c 9a53 a8b7 6c51 9bad 6b7b 5def     *w..S...Ql..{k.]
c0d06f75:	5d83 a473 929f f656 d2bd 3034 4baa 7661     .]s...V...40.Kav
c0d06f85:	1c35 17a4 77a6 4f26 f84d ff29 5ba5 4eff     5....w&OM.)..[.N
c0d06f95:	9034 a3de c26d b925 620f faa7 8197 7c63     4...m.%..b....c|
c0d06fa5:	9a10 85d2 b2b5 de0b 4eb9 97fe c8b1 c0af     .........N......
c0d06fb5:	4fb8 417b 24d9 9e2e dd58 c5c3 3c09 ae81     .O{A.$..X....<..
c0d06fc5:	2a08 fdf6 470d 3036 b8b2 bca2 3c9c 496c     .*...G60.....<lI
c0d06fd5:	695b feaf 6c45 cef7 17e1 c314 c3c3 161d     [i..El..........
c0d06fe5:	6114 f0c7 cb90 8bda 3925 a294 727c b2a0     .a......%9..|r..
c0d06ff5:	2899 3adb a4ef a4e4 b28c 5d02 1f61 f88a     .(.:.......]a...
c0d07005:	2e0b 69e9 5d27 3a2a 5cfb c03a 4651 01da     ...i']*:.\:.QF..
c0d07015:	35ee ad89 66d7 2bf2 33e6 be1b 2cd9 f1d0     .5...f.+.3...,..
c0d07025:	111d a4a5 fd1c 31c7 d7ec 2ee5 c03f 81ea     .......1....?...
c0d07035:	feb2 bb0b 0128 48d1 5af7 5005 0329 7a00     ....(..H.Z.P)..z
c0d07045:	9321 376b c909 d2dd f628 aae0 24a2 5a95     !.k7....(....$.Z
c0d07055:	9bfd 1f41 60d2 2af4 88d9 92d2 390d 1e26     ..A..`.*.....9&.
c0d07065:	2306 c520 6c54 62fe f617 99db 4d66 60e3     .# .Tl.b....fM.`
c0d07075:	6fcf e896 c2ec 4d8b 45ba 4f25 0815 92ed     .o.....M.E%O....
c0d07085:	e10d d033 f97a fdbd 3dbb aadf 10b9 2c7d     ..3.z....=....},
c0d07095:	039e 30c6 11bf 59a1 6b21 a02f 0efe 7d66     ...0...Y!k/...f}
c0d070a5:	6135 9470 c1e3 dbec 3107 ad7e 6cd2 9863     5ap......1~..lc.
c0d070b5:	015d 36bc 5602 1937 791c 65dc 9c35 e1cb     ]..6.V7..y.e5...
c0d070c5:	0439 5121 0fc2 18a2 4518 54f3 d674 805b     9.!Q.....E.Tt.[.
c0d070d5:	936d 34f6 d548 56a5 7874 61d0 4204 7ea9     m..4H..Vtx.a.B.~
c0d070e5:	882f 05df fd74 b697 bcd0 b7eb cf8e 6967     /...t.........gi
c0d070f5:	59bd edae 1f45 737d 8d0a 8154 79db 80d6     .Y..E.}s..T..y..
c0d07105:	fe25 a891 0582 69b5 d38b 8730 53cd 2663     %......i..0..Sc&
c0d07115:	4afc ecc8 7e97 07c8 c9ed b71c e42f 9f8a     .J...~....../...
c0d07125:	171b ad75 2b9c f1a1 ce18 213b 2463 f9af     ..u..+....;!c$..
c0d07135:	d6a8 6ea1 7475 8757 1a03 e571 9ee4 81e8     ...nutW...q.....
c0d07145:	a51c 6d35 e121 4552 6df0 68a0 81e5 e421     ..5m!.RE.m.h..!.
c0d07155:	7a8e b29a b5b6 fe62 b9c7 9d56 0d87 0613     .z....b...V.....
c0d07165:	af06 914c 1ca1 a552 2ff0 d813 5afe b454     ..L...R../...ZT.
c0d07175:	1c7c 182c 2b21 af5d aeba 2b1c eebd 4912     |.,.!+]....+...I
c0d07185:	4109 9278 9980 ab2d c86b 323d 89da 378d     .Ax...-.k.=2...7
c0d07195:	269f c51f 0648 77d6 c318 c03e 83db 4a6a     .&..H..w..>...jJ
c0d071a5:	6d09 ec4d fda9 9380 560e 2ad6 81df fbe3     .mM......V.*....
c0d071b5:	e915 7080 cb41 abdb 03a5 873c 4181 1b21     ...pA.....<..A!.
c0d071c5:	3635 947b 712f 4ce9 9966 2674 a642 a2c6     56{./q.Lf.t&B...
c0d071d5:	4ac1 1ed8 a810 bdc8 e8a2 f4f6 3a5f 3016     .J.........._:.0
c0d071e5:	3320 7176 9dbc 4581 631d c58b d1f2 ae0c      3vq...E.c......
c0d071f5:	87d4 3756 933e bcc5 745d e8ae 19a2 8221     ..V7>...]t....!.
c0d07205:	b73e 9c7d fb0a 8cd2 1529 bd9c cbaa 3c19     >.}.....)......<
c0d07215:	541b 2c28 6a4c 5fb4 3cf2 21fa 0aa6 336b     .T(,Lj._.<.!..k3
c0d07225:	7a3f 4591 fcca 7e9f 3f62 8f0e d7fa a2eb     ?z.E...~b?......
c0d07235:	ed6c 85e8 2bc9 040f 8f5c 238d 4450 5216     l....+..\..#PD.R
c0d07245:	0b0a b004 7547 33f0 5884 cf70 774d 609d     ....Gu.3.Xp.Mw.`
c0d07255:	87dc 8037 3f0c f09f ba1b 8761 9bff b76c     ..7..?....a...l.
c0d07265:	9805 cd30 d383 e571 e6b9 fa29 2d43 243f     ..0...q...).C-?$
c0d07275:	0056 be2b 0946 db26 34ec 8c7a a3bf 23f6     V.+.F.&..4z....#
c0d07285:	7d1c a470 5018 60b0 60aa b30f 9688 6e1d     .}p..P.`.`.....n
c0d07295:	91c2 444a 5baf dc27 97f0 664e 6720 8644     ..JD.['...Nf gD.
c0d072a5:	bd2f 81b6 909b 2c00 f4ff 872f 7ea3 7e1f     /......,../..~.~
c0d072b5:	4980 2874 790f 3b2a c309 84e6 c64e 404c     .It(.y*;....N.L@
c0d072c5:	411d a89d 9bb4 3fd7 435f eda8 4bc4 1116     .A.....?_C...K..
c0d072d5:	e54a a27a bf51 fa34 6bf8 c358 f26d c88e     J.z.Q.4..kX.m...
c0d072e5:	cd2f 738a 62ef c717 f854 ecb6 ac6c 9d92     /..s.b..T...l...
c0d072f5:	b622 02ce 0fff 784a a997 1226 01ab 0551     ".....Jx..&...Q.
c0d07305:	a239 eb50 a925 a22e f73b 9a5c f237 4a67     9.P.%...;.\.7.gJ
c0d07315:	a4c0 ca10 8109 3305 44ac 6cca b034 a17c     .......3.D.l4.|.
c0d07325:	5828 ef55 e95d 2862 db18 7cc8 d0cc a992     (XU.].b(...|....
c0d07335:	4c8b ab7d a224 46c5 3eb4 5ef8 c1e9 25d9     .L}.$..F.>.^...%
c0d07345:	f92e b373 eb23 2d9f d5ac 00a6 1402 0991     ..s.#..-........
c0d07355:	9b66 ff88 e852 4b71 be69 0a77 db8d 90af     f...R.qKi.w.....
c0d07365:	9211 370f 83c5 cf26 ccab 87ed 3d52 d93c     ...7..&.....R=<.
c0d07375:	3901 a1c1 5d19 ad0d 514d dcbb cbc1 8cb8     .9...]..MQ......
c0d07385:	0531 197f da1b 1e3f b6b5 6f04 b90b df30     1.....?....o..0.
c0d07395:	7bc9 a58c ea05 daa4 f7a1 d647 1ef2 5217     .{........G....R
c0d073a5:	1525 7a4f 6ec7 c8df 9621 7979 e246 e893     %.Oz.n..!.yyF...
c0d073b5:	a7c8 88fb 58fa 923f ad9a e50f a80e f397     .....X?.........
c0d073c5:	ac17 f6e9 7a36 92c2 db73 8ece d3cc 5875     ....6z..s.....uX
c0d073d5:	344c df3a 1714 9b3d 255a b573 11ff 7705     L4:...=.Z%s....w
c0d073e5:	fb2e fd03 21ba 267d c201 f609 aad3 c219     .....!}&........
c0d073f5:	2258 c4c2 8b66 7427 6a8a 4b58 e425 b888     X"..f.'t.jXK%...
c0d07405:	d01b 3cb4 acf6 6c7b 35d5 c9a6 324e e69c     ...<..{l.5..N2..
c0d07415:	1dbc d658 3fec 80c9 dfd4 9442 634c 099d     ..X..?....B.Lc..
c0d07425:	ba2b 54db 14fd 4221 d9e5 72da 6e6c c1ff     +..T..!B...rln..
c0d07435:	6a6e 29dd 7677 6a03 5d24 99d4 f28d 2aa7     nj.)wv.j$].....*
c0d07445:	1530 cc9e fe49 7e86 adb8 27c0 5f60 8004     0...I..~...'`_..
c0d07455:	79c0 5aaa 8361 6d05 db6c dbe5 7c82 b986     .y.Za..ml....|..
c0d07465:	e926 e145 40ec 0425 eda6 d402 301a 56a4     &.E..@%......0.V
c0d07475:	0c2c 9755 e043 bb89 2ec7 298a f9d2 c8cf     ,.U.C......)....
c0d07485:	0a06 54c0 dba5 d907 b4c3 3b3e 67aa 8b7f     ...T......>;.g..
c0d07495:	c6e1 6459 5b4c ced9 20a2 4d2e 255b 4c8f     ..YdL[... .M[%.L
c0d074a5:	4b1e 04a4 70df b2c4 945e 2fdc 0645 ced1     .K...p..^../E...
c0d074b5:	ad9a bf21 d9af b208 ac5d 4b88 5b54 6dd9     ..!.....]..KT[.m
c0d074c5:	e43e 54d5 6ff5 1237 9c02 3699 7abf e8db     >..T.o7....6.z..
c0d074d5:	3397 9245 6b04 4264 23eb 5961 edef c1f7     .3E..kdB.#aY....
c0d074e5:	193f 8c0b 41e4 a986 bea0 638c d7cb a3f5     ?....A.....c....
c0d074f5:	cf67 4664 314b 2a6b 7027 17d1 1ad1 a4fe     g.dFK1k*'p......
c0d07505:	272f 67f7 f5ed 9a20 bdae d236 7754 cada     /'.g.. ...6.Tw..
c0d07515:	e086 bd32 e4d7 bdc7 052d 004a 99fb c79f     ..2.....-.J.....
c0d07525:	343e 4504 f2d8 a274 7a41 7bc0 832c a4d6     >4.E..t.Az.{,...
c0d07535:	4e26 af60 670e 3d19 e047 b043 26a8 c149     &N`..g.=G.C..&I.
c0d07545:	3a37 fa9d c829 2ba1 ea7a ef71 cf6c 37bf     7:..)..+z.q.l..7
c0d07555:	931e 71df fbae ebcf 5137 4235 9dd1 9bfd     ...q....7Q5B....
c0d07565:	f72c 4ffb 348e 0233 5456 7b3c b0e2 e482     ,..O.43.VT<{....
c0d07575:	189c 1f59 1c6e 5a3a 526c 213f d085 a360     ..Y.n.:ZlR?!..`.
c0d07585:	8711 23d2 5b84 880f 348a ff0d c62c 0bf5     ...#.[...4..,...
c0d07595:	15ac 52f7 8b0f b942 ddae f9d3 5be4 7e69     ...R..B......[i~
c0d075a5:	b313 dc7f aa3d 7b81 2c24 7569 13ee a9c2     ....=..{$,iu....
c0d075b5:	95b7 dd95 15bc 52bb d3da 165f edaa fb68     .......R.._...h.
c0d075c5:	702b 6bdc fa83 01af 62e6 5ffe 8e48 5f69     +p.k.....b._H.i_
c0d075d5:	12a9 fb3b 2cb8 3200 1e9b c676 62b2 84a2     ..;..,.2..v..b..
c0d075e5:	5b20 ea55 e984 479f 3a9a ed65 1e58 e8ea      [U....G.:e.X...
c0d075f5:	77da 3180 3c84 60c1 ff70 16af dd38 5fb5     .w.1.<.`p...8.._
c0d07605:	8c19 b204 f42d e46d 39f1 a6c4 aac4 9f88     ....-.m..9......
c0d07615:	40e1 dee9 7eb9 e5c1 3ed8 ac36 2974 d4d5     .@...~...>6.t)..
c0d07625:	332e 8d3c 779b b886 fc91 79fe 56ae eab4     .3<..w.....y.V..
c0d07635:	da8b e6b8 9b4f cec5 f35b 482b 0db2 5de7     ....O...[.+H...]
c0d07645:	470a 70e5 eab4 9064 bb89 0ba9 15f6 ed40     .G.p..d.......@.
c0d07655:	5aae 038b f57b 1091 b5fb 32cb 710d 5e59     .Z..{......2.qY^
c0d07665:	b01e e02c d39e 26c4 fa04 fb93 fa09 e5c1     ..,....&........
c0d07675:	0bde a566 8767 3022 4480 c1de 6cac d290     ..f.g."0.D...l..
c0d07685:	c811 e679 20cc 6001 177e b829 dc22 a9fa     ..y.. .`~.)."...
c0d07695:	c1a4 250a 54d3 02fb f420 5eab 3d9e 64ec     ...%.T.. ..^.=.d
c0d076a5:	b804 f506 40fc 5ef1 3e66 16ac 02ba 3d92     .....@.^f>.....=
c0d076b5:	a297 a5ac eff0 8eea 5589 eba3 28c3 a1cf     .........U...(..
c0d076c5:	673c 811c 1185 524e 1fc2 777b 059d e7b6     <g....NR..{w....
c0d076d5:	3360 7f73 1cd9 53ca 5566 b14e 91c4 0a0d     `3s....SfUN.....
c0d076e5:	c533 96d4 2b65 bd2d 32fd 2381 599d 1cff     3...e+-..2.#.Y..
c0d076f5:	6315 4781 b291 c1af 5e80 dcf9 0bf2 db49     .c.G.....^....I.
c0d07705:	f026 d647 d2b5 e7b3 d04a 161e 8735 ec7f     &.G.....J...5...
c0d07715:	243d c215 cf73 079e 3a8f 5203 a760 ef61     =$..s....:.R`.a.
c0d07725:	ae17 d735 906c 90b9 2a6e 6483 6078 e101     ..5.l...n*.dx`..
c0d07735:	f59e 2f94 db85 ea2e 2677 32c8 4857 5411     .../....w&.2WH.T
c0d07745:	1121 41fb 9eb7 d71e 2ab5 74b0 4534 c155     !..A.....*.t4EU.
c0d07755:	9f33 ea6d 4cd7 d081 2f2f 7de3 97ad cbbc     3.m..L..//.}....
c0d07765:	4635 9808 638a 4d49 2e3d d111 402f 1c98     5F...cIM=.../@..
c0d07775:	7eee 5e2e 8e43 bb80 972e 2866 8af9 b353     .~.^C.....f(..S.
c0d07785:	c227 596d de98 d71e addc 1d2c 0694 2daf     '.mY......,....-
c0d07795:	fc0a 9438 f743 6e70 ad67 ab5d b907 258a     ..8.C.png.]....%
c0d077a5:	e826 782b 77ed 2cfa b07a d8d9 e96f b3b2     &.+x.w.,z...o...
c0d077b5:	c213 c09e 0da2 d931 7c9e 88eb a6b4 891a     ......1..|......
c0d077c5:	9f3c 6389 f989 8c16 21d5 1fe8 4c4c 246e     <..c.....!..LLn$
c0d077d5:	fbdb 6a31 5e68 a4f8 9ea5 1078 1abc 09f9     ..1jh^....x.....
c0d077e5:	fd00 23dd 114b b7d1 f37f 5b59 c974 574a     ...#K.....Y[t.JW
c0d077f5:	b7a9 46ca c605 a426 0ae7 dea1 1e72 c2db     ...F..&.....r...
c0d07805:	f133 ba3c e9a0 6a19 db78 c9d6 48d3 b727     3.<....jx....H'.
c0d07815:	744c 379a 37b3 fff5 dfa2 8f7b 3b0e 216c     Lt.7.7....{..;l!
c0d07825:	0632 680e 6913 d8e9 9fab dc49 7869 85cd     2..h.i....I.ix..
c0d07835:	2c29 c9f1 b108 cdba 75cd fa85 837f d163     ),.......u....c.
c0d07845:	c439 6013 21d5 a442 04e3 dadc 1a3b d7b0     9..`.!B.....;...
c0d07855:	dcee 09e9 74e0 1962 4f6c 9c45 dc5e 4897     .....tb.lOE.^..H
c0d07865:	b72c 7a64 d082 0ce7 9e9f 83f8 7115 fb41     ,.dz.........qA.
c0d07875:	7365 bf15 6cf8 4227 1887 811b bf6c 35f5     es...l'B....l..5
c0d07885:	aa10 8fd9 2ac9 2ce6 1172 7243 da40 44d8     .....*.,r.Cr@..D
c0d07895:	6d41 8f85 6f2b f8f9 8d5b 832a d172 c4c9     Am..+o..[.*.r...
c0d078a5:	e339 cfee a771 29ae f534 cf57 f12a 80ee     9...q..)4.W.*...
c0d078b5:	5497 f2ca 5828 6b81 ea84 4ac7 6e64 4682     .T..(X.k...Jdn.F
c0d078c5:	923f 65e6 834a e9eb dd85 b5ba afe9 c040     ?..eJ.........@.
c0d078d5:	8302 6c53 acd0 c992 0f6e 7cec a222 4fd2     ..Sl....n..|"..O
c0d078e5:	4c1a 4fef 6f36 07a8 b872 945b 9484 c32b     .L.O6o..r.[...+.
c0d078f5:	79b5 3acd a936 25ef 99e7 9a9b 1f9d c923     .y.:6..%......#.
c0d07905:	e12f 05d6 67af 6042 9eae cf13 ee71 6a8f     /....gB`....q..j
c0d07915:	eb3b e3f4 4eca bad0 4c39 5e69 259d ab2c     ;....N..9Li^.%,.
c0d07925:	5f14 e074 0879 4588 102e 4424 d2c8 e28b     ._t.y..E..$D....
c0d07935:	2d19 2c39 c823 691a a635 7b69 3d80 2d5f     .-9,#..i5.i{.=_-
c0d07945:	5d29 458c 3d44 0abc 8849 e52d 923c 95a2     )].ED=..I.-.<...
c0d07955:	f6b4 ba7c 492c 45a9 f3de f7a9 531d 5d41     ..|.,I.E.....SA]
c0d07965:	100f 7e61 f6b0 9591 2e82 1805 06ad c4ef     ..a~............
c0d07975:	335d 4ab1 f968 913a ab49 f8b0 b19e 439e     ]3.Jh.:.I......C
c0d07985:	6c2d 8bf4 9181 2498 6cfb d3bb b125 b64d     -l.....$.l..%.M.
c0d07995:	d2f4 ed9e b369 9cb4 45dd 53b7 32aa 3ecb     ....i....E.S.2.>
c0d079a5:	692c 551a e919 c8c0 499d 6b6d 2260 c89b     ,i.U.....Imk`"..
c0d079b5:	6452 7345 5fb4 b00f 9a8b b83b 01dd 6fcc     RdEs._....;....o
c0d079c5:	503e 4a34 9edf 1870 4f1e f01d 7db8 29c8     >P4J..p..O...}.)
c0d079d5:	9c39 e29e dbba 132e 17c6 f728 a79d 97e6     9.........(.....
c0d079e5:	5916 511f 44a5 ee64 e9ff 2ac4 1ef2 8c6c     .Y.Q.Dd....*..l.
c0d079f5:	a4c2 9223 1a12 6a1e d4fd 5638 989e 0fd9     ..#....j..8V....
c0d07a05:	4719 0235 ed78 4a8b 9cc2 4888 b36d 9d25     .G5.x..J...Hm.%.
c0d07a15:	0a8c 5e1e 814b 93ef 6cca ea9c 8f8c 7a10     ...^K....l.....z
c0d07a25:	9e3d 325c cc52 dc09 ef78 a180 386f 0c15     =.\2R...x...o8..
c0d07a35:	4479 fbe8 f227 9cf2 cdd5 e43a 2b8b b919     yD..'.....:..+..
c0d07a45:	3900 c1e7 e087 4fb6 7515 5a7e 0bc9 72f4     .9.....O.u~Z...r
c0d07a55:	6a9d 62d6 a78e a8b4 4964 e892 0a64 7df6     .j.b....dI..d..}
c0d07a65:	8132 c144 ff2f abac 01ff 077f c826 426f     2.D./.......&.oB
c0d07a75:	aaec 43d7 ff5e 0f27 2746 f043 6e12 befa     ...C^.'.F'C..n..
c0d07a85:	9a28 581a 1deb 07c1 fa17 69c7 08b5 6d15     (..X.......i...m
c0d07a95:	1d58 638b d8ae 69fe e002 cd8b 9edf 9533     X..c...i......3.
c0d07aa5:	7b05 cefb 7faa 519d fe10 95b2 2e92 30a7     .{.....Q.......0
c0d07ab5:	a706 250b 0553 d67e 3734 ca24 bfc8 a94e     ...%S.~.47$...N.
c0d07ac5:	1825 128b 7e75 d881 03e1 d552 b5a6 a640     %...u~....R...@.
c0d07ad5:	3717 57b0 34aa b8af 568c a1e6 107f e421     .7.W.4...V....!.
c0d07ae5:	6a1a f514 a8b7 4efa 0ad5 2460 bb4f bca4     .j.....N..`$O...
c0d07af5:	7054 cde4 a74c 26a3 aed8 6486 19bc 7e51     Tp..L..&...d..Q~
c0d07b05:	ed06 4452 e6e5 5ce5 7f98 95e9 28cf 6d1e     ..RD...\.....(.m
c0d07b15:	3e87 5087 0fd5 1328 3df1 0966 8f52 8908     .>.P..(..=f.R...
c0d07b25:	403d 065c 981d 6d7d e724 f805 6173 4985     =@\...}m$...sa.I
c0d07b35:	948f ee54 1c64 53a2 7331 315e b883 b592     ..T.d..S1s^1....
c0d07b45:	be1c 5e94 6202 9a5d 0ff4 295a a345 fc11     ...^.b]...Z)E...
c0d07b55:	2495 e06a ce7c 078c 2677 bc5f fa01 deca     .$j.|...w&_.....
c0d07b65:	0e01 9927 e001 a0b4 598f 5a0e b644 7b66     ..'......Y.ZD.f{
c0d07b75:	603e c78b 41d2 911e c690 8a53 6e91 98a2     >`...A....S..n..
c0d07b85:	c21e 1ee8 84ba 52f4 ae7a 3ff4 a92e 3e8d     .......Rz..?...>
c0d07b95:	f8dc 53f7 05c7 4ba5 8453 261c 1d4b 5e8d     ...S...KS..&K..^

c0d07ba5 <mds_matrix>:
c0d07ba5:	c70b 43bd 0f47 1e27 56dd 7511 9c95 06ad     ...CG.'..V.u....
c0d07bb5:	21bb 4fd6 14a3 78a7 3787 e662 b4ff caa5     .!.O...x.7b.....
c0d07bc5:	a321 a43b d3eb f4df 650b 6b4a 0c39 8fb2     !.;......eJk9...
c0d07bd5:	ca9e 025e 3188 40b9 ea79 b943 1b7f fcff     ..^..1.@y.C.....
c0d07be5:	8531 bdad 32c9 5210 e02a 0ecc 26ab 70cc     1....2.R*....&.p
c0d07bf5:	a177 124f f163 4c71 e8dc cde4 3229 b108     w.O.c.qL....)2..
c0d07c05:	4c16 51d4 6538 7025 04ac e342 de5c aa96     .L.Q8e%p..B.\...
c0d07c15:	b24f 864c 3b98 b2b1 62b1 5807 caf5 18f3     O.L..;...b.X....
c0d07c25:	de25 2716 1aec 5457 c0e9 69db b069 16cc     %..'..WT...ii...
c0d07c35:	8fa0 2257 1f5c 9dfd 33b8 c2ab f504 2b61     ..W"\....3....a+
c0d07c45:	691f 930f cc72 a6a3 3045 8946 7c36 0c2e     .i..r...E0F.6|..
c0d07c55:	3282 c641 d58d ebea be67 f304 6851 4f0a     .2A.....g...Qh.O
c0d07c65:	c306 4464 a30a cfb6 6117 715d a814 dd7b     ..dD.....a]q..{.
c0d07c75:	9115 e67e d6c2 84ec 3351 de6a 4aad a7b5     ..~.....Q3j..J..
c0d07c85:	0b25 7d79 ca72 bdb6 47cf 0852 e651 e0d9     %.y}r....GR.Q...
c0d07c95:	9269 f57f a09c 8c03 fa81 c8b3 ecf2 6122     i............."a
c0d07ca5:	5725 0f46 6335 3aba c4a6 26a8 86ba 3739     %WF.5c.:...&..97
c0d07cb5:	2971 efac 252f b189 2d30 8bcc ee61 bfa7     q)../%..0-..a...
c0d07cc5:	0000                                         ...

c0d07cc8 <TESTNET_IV>:
c0d07cc8:	323e 1837 feb3 3d2a 276a 0789 a2af fca9     >27...*=j'......
c0d07cd8:	177d 3d93 f71e 65c6 0750 62b9 c8b8 9253     }..=...eP..b..S.
c0d07ce8:	0a37 8b1c 3748 a540 e5cc 0cc5 cb92 b964     7...H7@.......d.
c0d07cf8:	af64 487d 24a0 548c 03d1 6a2c e43d 994e     d.}H.$.T..,j=.N.
c0d07d08:	1c07 0333 2df0 1a91 aeff 48fb 719e 514b     ..3..-.....H.qKQ
c0d07d18:	e1d7 318e 2db3 9c83 3dfd 3355 c146 360d     ...1.-...=U3F..6

c0d07d28 <MAINNET_IV>:
c0d07d28:	c237 ad22 0932 7047 d1db 6437 b0c7 52a0     7.".2.Gp..7d...R
c0d07d38:	6cfd 0478 3847 4b88 d633 d91d a4a9 9496     .lx.G8.K3.......
c0d07d48:	b810 53df 1a5d 92de 67db cf28 56f8 f7f1     ...S]....g(..V..
c0d07d58:	a088 e429 1643 76ad 71d9 5510 9cc6 33d3     ..).C..v.q.U...3
c0d07d68:	6100 9438 c2aa 50c3 1ec0 8e37 3a01 59d5     .a8....P..7..:.Y
c0d07d78:	1eb8 dc87 63ed f1d7 6df5 90a9 218a e4e6     .....c...m...!..
c0d07d88:	6f44 656e 5300 6769 006e 7254 6e61 6173     Done.Sign.Transa
c0d07d98:	7463 6f69 006e 654e 7774 726f 006b 6574     ction.Network.te
c0d07da8:	7473 656e 0074 7954 6570 4100 6f6d 6e75     stnet.Type.Amoun
c0d07db8:	0074 6546 0065 6f54 6174 006c 6f4e 636e     t.Fee.Total.Nonc
c0d07dc8:	0065 6156 696c 2064 6e75 6974 006c 654d     e.Valid until.Me
c0d07dd8:	6f6d 0000                                   mo..

c0d07ddc <ux_sign_tx_done_flow_done_step_val>:
c0d07ddc:	6274 c0d0 7d88 c0d0                         tb...}..

c0d07de4 <ux_sign_tx_done_flow_done_step>:
c0d07de4:	29ad c0d0 7ddc c0d0 0000 0000 0000 0000     .)...}..........

c0d07df4 <ux_sign_tx_done_flow>:
c0d07df4:	7de4 c0d0 ffff ffff                         .}......

c0d07dfc <ux_sign_tx_flow_topic_step_val>:
c0d07dfc:	61fc c0d0 7d8d c0d0 7d92 c0d0               .a...}...}..

c0d07e08 <ux_sign_tx_flow_topic_step>:
c0d07e08:	56d5 c0d0 7dfc c0d0 0000 0000 0000 0000     .V...}..........

c0d07e18 <ux_sign_tx_flow_network_step_val>:
c0d07e18:	7d9e c0d0 7da6 c0d0                         .}...}..

c0d07e20 <ux_sign_tx_flow_network_step>:
c0d07e20:	50f9 c0d0 7e18 c0d0 0000 0000 0000 0000     .P...~..........

c0d07e30 <ux_sign_tx_flow_type_step_val>:
c0d07e30:	7dae c0d0 0735 2000                         .}..5.. 

c0d07e38 <ux_sign_tx_flow_type_step>:
c0d07e38:	50f9 c0d0 7e30 c0d0 0000 0000 0000 0000     .P..0~..........

c0d07e48 <ux_sign_tx_flow_from_step_val>:
c0d07e48:	0740 2000 0604 2000                         @.. ... 

c0d07e50 <ux_sign_tx_flow_from_step>:
c0d07e50:	5225 c0d0 7e48 c0d0 0000 0000 0000 0000     %R..H~..........

c0d07e60 <ux_sign_tx_flow_to_step_val>:
c0d07e60:	074a 2000 063c 2000                         J.. <.. 

c0d07e68 <ux_sign_tx_flow_to_step>:
c0d07e68:	5225 c0d0 7e60 c0d0 0000 0000 0000 0000     %R..`~..........

c0d07e78 <ux_sign_tx_flow_amount_step_val>:
c0d07e78:	7db3 c0d0 0674 2000                         .}..t.. 

c0d07e80 <ux_sign_tx_flow_amount_step>:
c0d07e80:	50f9 c0d0 7e78 c0d0 0000 0000 0000 0000     .P..x~..........

c0d07e90 <ux_sign_tx_flow_fee_step_val>:
c0d07e90:	7dba c0d0 0694 2000                         .}..... 

c0d07e98 <ux_sign_tx_flow_fee_step>:
c0d07e98:	50f9 c0d0 7e90 c0d0 0000 0000 0000 0000     .P...~..........

c0d07ea8 <ux_sign_tx_flow_total_step_val>:
c0d07ea8:	7dbe c0d0 06b4 2000                         .}..... 

c0d07eb0 <ux_sign_tx_flow_total_step>:
c0d07eb0:	50f9 c0d0 7ea8 c0d0 0000 0000 0000 0000     .P...~..........

c0d07ec0 <ux_sign_tx_flow_nonce_step_val>:
c0d07ec0:	7dc4 c0d0 06d4 2000                         .}..... 

c0d07ec8 <ux_sign_tx_flow_nonce_step>:
c0d07ec8:	50f9 c0d0 7ec0 c0d0 0000 0000 0000 0000     .P...~..........

c0d07ed8 <ux_sign_tx_flow_valid_until_step_val>:
c0d07ed8:	7dca c0d0 06f4 2000                         .}..... 

c0d07ee0 <ux_sign_tx_flow_valid_until_step>:
c0d07ee0:	50f9 c0d0 7ed8 c0d0 0000 0000 0000 0000     .P...~..........

c0d07ef0 <ux_sign_tx_flow_memo_step_val>:
c0d07ef0:	7dd6 c0d0 0714 2000                         .}..... 

c0d07ef8 <ux_sign_tx_flow_memo_step>:
c0d07ef8:	5225 c0d0 7ef0 c0d0 0000 0000 0000 0000     %R...~..........

c0d07f08 <ux_sign_tx_flow_approve_step_validate_step>:
c0d07f08:	2a91 c0d0 0000 0000 0000 0000 0000 0000     .*..............

c0d07f18 <ux_sign_tx_flow_approve_step_validate>:
c0d07f18:	7f08 c0d0 ffff ffff                         ........

c0d07f20 <ux_sign_tx_flow_approve_step_val>:
c0d07f20:	6274 c0d0 5fec c0d0                         tb..._..

c0d07f28 <ux_sign_tx_flow_approve_step>:
c0d07f28:	55c9 c0d0 7f20 c0d0 7f18 c0d0 0000 0000     .U.. ...........

c0d07f38 <ux_sign_tx_flow_reject_step_validate_step>:
c0d07f38:	2aa5 c0d0 0000 0000 0000 0000 0000 0000     .*..............

c0d07f48 <ux_sign_tx_flow_reject_step_validate>:
c0d07f48:	7f38 c0d0 ffff ffff                         8.......

c0d07f50 <ux_sign_tx_flow_reject_step_val>:
c0d07f50:	618c c0d0 5ff4 c0d0                         .a..._..

c0d07f58 <ux_sign_tx_flow_reject_step>:
c0d07f58:	55c9 c0d0 7f50 c0d0 7f48 c0d0 0000 0000     .U..P...H.......

c0d07f68 <ux_sign_tx_flow_testnet_payment_0_0>:
c0d07f68:	7e08 c0d0 7e20 c0d0 7e38 c0d0 7e50 c0d0     .~.. ~..8~..P~..
c0d07f78:	7e68 c0d0 7e80 c0d0 7e98 c0d0 7eb0 c0d0     h~...~...~...~..
c0d07f88:	7ec8 c0d0 7f28 c0d0 7f58 c0d0 ffff ffff     .~..(...X.......

c0d07f98 <ux_sign_tx_flow_testnet_payment_0_memo>:
c0d07f98:	7e08 c0d0 7e20 c0d0 7e38 c0d0 7e50 c0d0     .~.. ~..8~..P~..
c0d07fa8:	7e68 c0d0 7e80 c0d0 7e98 c0d0 7eb0 c0d0     h~...~...~...~..
c0d07fb8:	7ec8 c0d0 7ef8 c0d0 7f28 c0d0 7f58 c0d0     .~...~..(...X...
c0d07fc8:	ffff ffff                                   ....

c0d07fcc <ux_sign_tx_flow_testnet_payment_valid_until_0>:
c0d07fcc:	7e08 c0d0 7e20 c0d0 7e38 c0d0 7e50 c0d0     .~.. ~..8~..P~..
c0d07fdc:	7e68 c0d0 7e80 c0d0 7e98 c0d0 7eb0 c0d0     h~...~...~...~..
c0d07fec:	7ec8 c0d0 7ee0 c0d0 7f28 c0d0 7f58 c0d0     .~...~..(...X...
c0d07ffc:	ffff ffff                                   ....

c0d08000 <ux_sign_tx_flow_testnet_payment_valid_until_memo>:
c0d08000:	7e08 c0d0 7e20 c0d0 7e38 c0d0 7e50 c0d0     .~.. ~..8~..P~..
c0d08010:	7e68 c0d0 7e80 c0d0 7e98 c0d0 7eb0 c0d0     h~...~...~...~..
c0d08020:	7ec8 c0d0 7ee0 c0d0 7ef8 c0d0 7f28 c0d0     .~...~...~..(...
c0d08030:	7f58 c0d0 ffff ffff                         X.......

c0d08038 <ux_sign_tx_flow_testnet_delegation_0_0>:
c0d08038:	7e08 c0d0 7e20 c0d0 7e38 c0d0 7e50 c0d0     .~.. ~..8~..P~..
c0d08048:	7e68 c0d0 7e98 c0d0 7ec8 c0d0 7f28 c0d0     h~...~...~..(...
c0d08058:	7f58 c0d0 ffff ffff                         X.......

c0d08060 <ux_sign_tx_flow_testnet_delegation_0_memo>:
c0d08060:	7e08 c0d0 7e20 c0d0 7e38 c0d0 7e50 c0d0     .~.. ~..8~..P~..
c0d08070:	7e68 c0d0 7e98 c0d0 7ec8 c0d0 7ef8 c0d0     h~...~...~...~..
c0d08080:	7f28 c0d0 7f58 c0d0 ffff ffff               (...X.......

c0d0808c <ux_sign_tx_flow_testnet_delegation_valid_until_0>:
c0d0808c:	7e08 c0d0 7e20 c0d0 7e38 c0d0 7e50 c0d0     .~.. ~..8~..P~..
c0d0809c:	7e68 c0d0 7e98 c0d0 7ec8 c0d0 7ee0 c0d0     h~...~...~...~..
c0d080ac:	7f28 c0d0 7f58 c0d0 ffff ffff               (...X.......

c0d080b8 <ux_sign_tx_flow_testnet_delegation_valid_until_memo>:
c0d080b8:	7e08 c0d0 7e20 c0d0 7e38 c0d0 7e50 c0d0     .~.. ~..8~..P~..
c0d080c8:	7e68 c0d0 7e98 c0d0 7ec8 c0d0 7ee0 c0d0     h~...~...~...~..
c0d080d8:	7ef8 c0d0 7f28 c0d0 7f58 c0d0 ffff ffff     .~..(...X.......

c0d080e8 <ux_sign_tx_flow_mainnet_payment_0_0>:
c0d080e8:	7e08 c0d0 7e38 c0d0 7e50 c0d0 7e68 c0d0     .~..8~..P~..h~..
c0d080f8:	7e80 c0d0 7e98 c0d0 7eb0 c0d0 7ec8 c0d0     .~...~...~...~..
c0d08108:	7f28 c0d0 7f58 c0d0 ffff ffff               (...X.......

c0d08114 <ux_sign_tx_flow_mainnet_payment_0_memo>:
c0d08114:	7e08 c0d0 7e38 c0d0 7e50 c0d0 7e68 c0d0     .~..8~..P~..h~..
c0d08124:	7e80 c0d0 7e98 c0d0 7eb0 c0d0 7ec8 c0d0     .~...~...~...~..
c0d08134:	7ef8 c0d0 7f28 c0d0 7f58 c0d0 ffff ffff     .~..(...X.......

c0d08144 <ux_sign_tx_flow_mainnet_payment_valid_until_0>:
c0d08144:	7e08 c0d0 7e38 c0d0 7e50 c0d0 7e68 c0d0     .~..8~..P~..h~..
c0d08154:	7e80 c0d0 7e98 c0d0 7eb0 c0d0 7ec8 c0d0     .~...~...~...~..
c0d08164:	7ee0 c0d0 7f28 c0d0 7f58 c0d0 ffff ffff     .~..(...X.......

c0d08174 <ux_sign_tx_flow_mainnet_payment_valid_until_memo>:
c0d08174:	7e08 c0d0 7e38 c0d0 7e50 c0d0 7e68 c0d0     .~..8~..P~..h~..
c0d08184:	7e80 c0d0 7e98 c0d0 7eb0 c0d0 7ec8 c0d0     .~...~...~...~..
c0d08194:	7ee0 c0d0 7ef8 c0d0 7f28 c0d0 7f58 c0d0     .~...~..(...X...
c0d081a4:	ffff ffff                                   ....

c0d081a8 <ux_sign_tx_flow_mainnet_delegation_0_0>:
c0d081a8:	7e08 c0d0 7e38 c0d0 7e50 c0d0 7e68 c0d0     .~..8~..P~..h~..
c0d081b8:	7e98 c0d0 7ec8 c0d0 7f28 c0d0 7f58 c0d0     .~...~..(...X...
c0d081c8:	ffff ffff                                   ....

c0d081cc <ux_sign_tx_flow_mainnet_delegation_0_memo>:
c0d081cc:	7e08 c0d0 7e38 c0d0 7e50 c0d0 7e68 c0d0     .~..8~..P~..h~..
c0d081dc:	7e98 c0d0 7ec8 c0d0 7ef8 c0d0 7f28 c0d0     .~...~...~..(...
c0d081ec:	7f58 c0d0 ffff ffff                         X.......

c0d081f4 <ux_sign_tx_flow_mainnet_delegation_valid_until_0>:
c0d081f4:	7e08 c0d0 7e38 c0d0 7e50 c0d0 7e68 c0d0     .~..8~..P~..h~..
c0d08204:	7e98 c0d0 7ec8 c0d0 7ee0 c0d0 7f28 c0d0     .~...~...~..(...
c0d08214:	7f58 c0d0 ffff ffff                         X.......

c0d0821c <ux_sign_tx_flow_mainnet_delegation_valid_until_memo>:
c0d0821c:	7e08 c0d0 7e38 c0d0 7e50 c0d0 7e68 c0d0     .~..8~..P~..h~..
c0d0822c:	7e98 c0d0 7ec8 c0d0 7ee0 c0d0 7ef8 c0d0     .~...~...~...~..
c0d0823c:	7f28 c0d0 7f58 c0d0 ffff ffff 6552 6563     (...X.......Rece
c0d0824c:	7669 7265 0000 0000 6544 656c 6167 6974     iver....Delegati
c0d0825c:	6e6f 0000 6544 656c 6167 6f74 0072 0000     on..Delegator...
c0d0826c:	6544 656c 6167 6574 0000 0000               Delegate....

c0d08278 <ux_sign_tx_flow>:
c0d08278:	7f68 c0d0 7f98 c0d0 7fcc c0d0 8000 c0d0     h...............
c0d08288:	8038 c0d0 8060 c0d0 808c c0d0 80b8 c0d0     8...`...........
c0d08298:	80e8 c0d0 8114 c0d0 8144 c0d0 8174 c0d0     ........D...t...
c0d082a8:	81a8 c0d0 81cc c0d0 81f4 c0d0 821c c0d0     ................
c0d082b8:	6150 6d79 6e65 0074 0000 0000 6553 646e     Payment.....Send
c0d082c8:	7265 0000 0000                               er.....

c0d082cf <SW_INTERNAL>:
c0d082cf:	006f                                        o.

c0d082d1 <SW_BUSY>:
c0d082d1:	0190                                        ..

c0d082d3 <SW_WRONG_LENGTH>:
c0d082d3:	0067                                        g.

c0d082d5 <SW_PROOF_OF_PRESENCE_REQUIRED>:
c0d082d5:	8569 d0f1 0000 0000 4f42 4c49                i.......BOIL.

c0d082e2 <SW_BAD_KEY_HANDLE>:
c0d082e2:	806a                                        j.

c0d082e4 <U2F_VERSION>:
c0d082e4:	3255 5f46 3256 0090                         U2F_V2..

c0d082ec <INFO>:
c0d082ec:	0901 0090                                   ....

c0d082f0 <SW_UNKNOWN_CLASS>:
c0d082f0:	006e                                        n.

c0d082f2 <SW_UNKNOWN_INSTRUCTION>:
c0d082f2:	006d                                        m.

c0d082f4 <USBD_HID_Desc_fido>:
c0d082f4:	2109 0111 0121 2222 0000 0000               .!..!.""....

c0d08300 <USBD_HID_Desc>:
c0d08300:	2109 0111 0100 2222                          .!...."".

c0d08309 <HID_ReportDesc_fido>:
c0d08309:	d006 09f1 a101 0901 1503 2600 00ff 0875     ...........&..u.
c0d08319:	4095 0881 0409 0015 ff26 7500 9508 9140     .@......&..u..@.
c0d08329:	c008                                        ..

c0d0832b <HID_ReportDesc>:
c0d0832b:	a006 09ff a101 0901 1503 2600 00ff 0875     ...........&..u.
c0d0833b:	4095 0881 0409 0015 ff26 7500 9508 9140     .@......&..u..@.
c0d0834b:	c008                                        ..

c0d0834d <C_webusb_url_descriptor>:
c0d0834d:	0317 7701 7777 6c2e 6465 6567 7772 6c61     ...www.ledgerwal
c0d0835d:	656c 2e74 6f63                               let.com

c0d08364 <C_usb_bos>:
c0d08364:	0f05 0039 1802 0510 3800 08b6 a934 a009     ..9......8..4...
c0d08374:	8b47 a0fd 8876 b615 0065 1e01 1c01 0510     G...v...e.......
c0d08384:	df00 dd60 89d8 c745 9c4c 65d2 9e9d 8a64     ..`...E.L..e..d.
c0d08394:	009f 0300 b206 7700 0000 0000               .......w....

c0d083a0 <HID_Desc>:
c0d083a0:	45c9 c0d0 45d9 c0d0 45e9 c0d0 45f9 c0d0     .E...E...E...E..
c0d083b0:	4609 c0d0 4619 c0d0 4629 c0d0 4639 c0d0     .F...F..)F..9F..

c0d083c0 <C_winusb_string_descriptor>:
c0d083c0:	0312 004d 0053 0046 0054 0031 0030 0030     ..M.S.F.T.1.0.0.
c0d083d0:	0077                                        w.

c0d083d2 <C_winusb_guid>:
c0d083d2:	0092 0000 0100 0005 0001 0088 0000 0007     ................
c0d083e2:	0000 002a 0044 0065 0076 0069 0063 0065     ..*.D.e.v.i.c.e.
c0d083f2:	0049 006e 0074 0065 0072 0066 0061 0063     I.n.t.e.r.f.a.c.
c0d08402:	0065 0047 0055 0049 0044 0073 0000 0050     e.G.U.I.D.s...P.
c0d08412:	0000 007b 0031 0033 0064 0036 0033 0034     ..{.1.3.d.6.3.4.
c0d08422:	0030 0030 002d 0032 0043 0039 0037 002d     0.0.-.2.C.9.7.-.
c0d08432:	0030 0030 0030 0034 002d 0030 0030 0030     0.0.0.4.-.0.0.0.
c0d08442:	0030 002d 0034 0063 0036 0035 0036 0034     0.-.4.c.6.5.6.4.
c0d08452:	0036 0037 0036 0035 0037 0032 007d 0000     6.7.6.5.7.2.}...
	...

c0d08464 <C_winusb_request_descriptor>:
c0d08464:	000a 0000 0000 0603 00b2 0008 0001 0000     ................
c0d08474:	00a8 0008 0002 0002 00a0 0014 0003 4957     ..............WI
c0d08484:	554e 4253 0000 0000 0000 0000 0000 0084     NUSB............
c0d08494:	0004 0007 002a 0044 0065 0076 0069 0063     ....*.D.e.v.i.c.
c0d084a4:	0065 0049 006e 0074 0065 0072 0066 0061     e.I.n.t.e.r.f.a.
c0d084b4:	0063 0065 0047 0055 0049 0044 0073 0000     c.e.G.U.I.D.s...
c0d084c4:	0050 007b 0043 0045 0038 0030 0039 0032     P.{.C.E.8.0.9.2.
c0d084d4:	0036 0034 002d 0034 0042 0032 0034 002d     6.4.-.4.B.2.4.-.
c0d084e4:	0034 0045 0038 0031 002d 0041 0038 0042     4.E.8.1.-.A.8.B.
c0d084f4:	0032 002d 0035 0037 0045 0044 0030 0031     2.-.5.7.E.D.0.1.
c0d08504:	0044 0035 0038 0030 0045 0031 007d 0000     D.5.8.0.E.1.}...
c0d08514:	0000 0000                                   ....

c0d08518 <USBD_HID>:
c0d08518:	4385 c0d0 43b7 c0d0 42f1 c0d0 0000 0000     .C...C...B......
c0d08528:	0000 0000 44cd c0d0 44e5 c0d0 0000 0000     .....D...D......
	...
c0d08540:	4789 c0d0 4789 c0d0 4789 c0d0 4799 c0d0     .G...G...G...G..

c0d08550 <USBD_U2F>:
c0d08550:	4455 c0d0 43b7 c0d0 42f1 c0d0 0000 0000     UD...C...B......
c0d08560:	0000 0000 4489 c0d0 44a1 c0d0 0000 0000     .....D...D......
	...
c0d08578:	4789 c0d0 4789 c0d0 4789 c0d0 4799 c0d0     .G...G...G...G..

c0d08588 <USBD_WEBUSB>:
c0d08588:	4531 c0d0 455d c0d0 4561 c0d0 0000 0000     1E..]E..aE......
c0d08598:	0000 0000 4565 c0d0 457d c0d0 0000 0000     ....eE..}E......
	...
c0d085b0:	4789 c0d0 4789 c0d0 4789 c0d0 4799 c0d0     .G...G...G...G..

c0d085c0 <USBD_DeviceDesc>:
c0d085c0:	0112 0210 0000 4000 2c97 1015 0201 0201     .......@.,......
c0d085d0:	0103                                        ..

c0d085d2 <USBD_LangIDDesc>:
c0d085d2:	0304 0409                                   ....

c0d085d6 <USBD_MANUFACTURER_STRING>:
c0d085d6:	030e 004c 0065 0064 0067 0065 0072          ..L.e.d.g.e.r.

c0d085e4 <USBD_PRODUCT_FS_STRING>:
c0d085e4:	030e 004e 0061 006e 006f 0020 0053          ..N.a.n.o. .S.

c0d085f2 <USB_SERIAL_STRING>:
c0d085f2:	030a 0030 0030 0030 0031                    ..0.0.0.1.

c0d085fc <C_winusb_wcid>:
c0d085fc:	0028 0000 0100 0004 0001 0000 0000 0000     (...............
c0d0860c:	0102 4957 554e 4253 0000 0000 0000 0000     ..WINUSB........
	...

c0d08624 <USBD_CfgDesc>:
c0d08624:	0209 0060 0103 c002 0932 0004 0200 0003     ..`.....2.......
c0d08634:	0200 2109 0111 0100 2222 0700 8205 4003     ...!...."".....@
c0d08644:	0100 0507 0302 0040 0901 0104 0200 0103     ......@.........
c0d08654:	0201 2109 0111 0121 2222 0700 8105 4003     ...!..!."".....@
c0d08664:	0100 0507 0301 0040 0901 0204 0200 ffff     ......@.........
c0d08674:	02ff 0507 0383 0040 0701 0305 4003 0100     ......@......@..

c0d08684 <USBD_DeviceQualifierDesc>:
c0d08684:	060a 0200 0000 4000 0001                    .......@..

c0d0868e <B58_ALPHABET>:
c0d0868e:	3231 3433 3635 3837 4139 4342 4544 4746     123456789ABCDEFG
c0d0869e:	4a48 4c4b 4e4d 5150 5352 5554 5756 5958     HJKLMNPQRSTUVWXY
c0d086ae:	615a 6362 6564 6766 6968 6b6a 6e6d 706f     Zabcdefghijkmnop
c0d086be:	7271 7473 7675 7877 7a79                    qrstuvwxyz

c0d086c8 <BASE58_TABLE>:
c0d086c8:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
c0d086d8:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
c0d086e8:	ffff ffff ffff ffff ffff ffff ffff ffff     ................
c0d086f8:	00ff 0201 0403 0605 0807 ffff ffff ffff     ................
c0d08708:	09ff 0b0a 0d0c 0f0e ff10 1211 1413 ff15     ................
c0d08718:	1716 1918 1b1a 1d1c 1f1e ff20 ffff ffff     .......... .....
c0d08728:	21ff 2322 2524 2726 2928 2b2a 2cff 2e2d     .!"#$%&'()*+.,-.
c0d08738:	302f 3231 3433 3635 3837 ff39 ffff ffff     /0123456789.....

c0d08748 <ux_layout_bb_elements>:
c0d08748:	0003 0000 0000 0080 0020 0000 0001 0000     ........ .......
c0d08758:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0d08768:	0105 0002 000c 0004 0007 0000 0000 0000     ................
c0d08778:	ffff 00ff 0000 0000 0000 0000 621c c0d0     .............b..
c0d08788:	0205 007a 000c 0004 0007 0000 0000 0000     ..z.............
c0d08798:	ffff 00ff 0000 0000 0000 0000 623c c0d0     ............<b..
c0d087a8:	1007 0006 000c 0074 0020 0000 0000 0000     ......t. .......
c0d087b8:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0d087c8:	1107 0006 001a 0074 0020 0000 0000 0000     ......t. .......
c0d087d8:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0d087e8:	7325 2820 6425 252f 2964 2500 0073 6425     %s (%d/%d).%s.%d
c0d087f8:	252f 0064 2e25 732a                          /%d.%.*s.

c0d08801 <nanos_characters_width>:
c0d08801:	3333 7746 9a66 2389 3434 6666 4433 4533     33Fwf..#44ff3D3E
c0d08811:	6668 6767 6688 6768 6868 3333 6665 5665     hfgg.fhghh33efeV
c0d08821:	78aa 7777 6688 8866 3488 7845 ab66 9989     .xww.ff..4Exf...
c0d08831:	9977 6678 8876 ab76 6768 4567 4545 5667     w.xfv.v.hggEEEgV
c0d08841:	6767 5677 6777 6756 3477 6745 aa34 7777     ggwVwgVgw4Eg4.ww
c0d08851:	7777 5645 7745 9a67 6767 4556 4566 7666     wwEVEwg.ggVEfEfv
c0d08861:	0000                                         ...

c0d08864 <ux_layout_pb_elements>:
c0d08864:	0003 0000 0000 0080 0020 0000 0001 0000     ........ .......
c0d08874:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0d08884:	0105 0002 000c 0004 0007 0000 0000 0000     ................
c0d08894:	ffff 00ff 0000 0000 0000 0000 621c c0d0     .............b..
c0d088a4:	0205 007a 000c 0004 0007 0000 0000 0000     ..z.............
c0d088b4:	ffff 00ff 0000 0000 0000 0000 623c c0d0     ............<b..
c0d088c4:	1005 0038 0002 0010 0010 0000 0000 0000     ..8.............
c0d088d4:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0d088e4:	1107 0000 001c 0080 0020 0000 0000 0000     ........ .......
c0d088f4:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0d08904 <ux_layout_pbb_elements>:
c0d08904:	0003 0000 0000 0080 0020 0000 0001 0000     ........ .......
c0d08914:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0d08924:	0105 0002 000c 0004 0007 0000 0000 0000     ................
c0d08934:	ffff 00ff 0000 0000 0000 0000 621c c0d0     .............b..
c0d08944:	0205 007a 000c 0004 0007 0000 0000 0000     ..z.............
c0d08954:	ffff 00ff 0000 0000 0000 0000 623c c0d0     ............<b..
c0d08964:	0f05 0010 0008 0010 0010 0000 0000 0000     ................
c0d08974:	ffff 00ff 0000 0000 0000 0000 0000 0000     ................
c0d08984:	1007 0029 000c 0080 0020 0000 0000 0000     ..)..... .......
c0d08994:	ffff 00ff 0000 0000 0008 0000 0000 0000     ................
c0d089a4:	1107 0029 001a 0080 0020 0000 0000 0000     ..)..... .......
c0d089b4:	ffff 00ff 0000 0000 0008 0000 0000 0000     ................

c0d089c4 <_etext>:
	...

c0d08a00 <N_storage_real>:
	...
