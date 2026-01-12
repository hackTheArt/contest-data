
challenge:     file format elf64-x86-64


Disassembly of section .note.gnu.property:

0000000000000350 <.note.gnu.property>:
 350:	04 00                	add    $0x0,%al
 352:	00 00                	add    %al,(%rax)
 354:	30 00                	xor    %al,(%rax)
 356:	00 00                	add    %al,(%rax)
 358:	05 00 00 00 47       	add    $0x47000000,%eax
 35d:	4e 55                	rex.WRX push %rbp
 35f:	00 02                	add    %al,(%rdx)
 361:	80 00 c0             	addb   $0xc0,(%rax)
 364:	04 00                	add    $0x0,%al
 366:	00 00                	add    %al,(%rax)
 368:	01 00                	add    %eax,(%rax)
 36a:	00 00                	add    %al,(%rax)
 36c:	00 00                	add    %al,(%rax)
 36e:	00 00                	add    %al,(%rax)
 370:	01 00                	add    %eax,(%rax)
 372:	01 c0                	add    %eax,%eax
 374:	04 00                	add    $0x0,%al
 376:	00 00                	add    %al,(%rax)
 378:	01 00                	add    %eax,(%rax)
 37a:	00 00                	add    %al,(%rax)
 37c:	00 00                	add    %al,(%rax)
 37e:	00 00                	add    %al,(%rax)
 380:	02 00                	add    (%rax),%al
 382:	01 c0                	add    %eax,%eax
 384:	04 00                	add    $0x0,%al
 386:	00 00                	add    %al,(%rax)
 388:	01 00                	add    %eax,(%rax)
 38a:	00 00                	add    %al,(%rax)
 38c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000390 <.note.gnu.build-id>:
 390:	04 00                	add    $0x0,%al
 392:	00 00                	add    %al,(%rax)
 394:	14 00                	adc    $0x0,%al
 396:	00 00                	add    %al,(%rax)
 398:	03 00                	add    (%rax),%eax
 39a:	00 00                	add    %al,(%rax)
 39c:	47                   	rex.RXB
 39d:	4e 55                	rex.WRX push %rbp
 39f:	00 fe                	add    %bh,%dh
 3a1:	dc eb                	fsubr  %st,%st(3)
 3a3:	e1 35                	loope  3da <puts@plt-0xc56>
 3a5:	55                   	push   %rbp
 3a6:	ea                   	(bad)
 3a7:	e4 5c                	in     $0x5c,%al
 3a9:	48 ad                	lods   (%rsi),%rax
 3ab:	3b f4                	cmp    %esp,%esi
 3ad:	33 31                	xor    (%rcx),%esi
 3af:	85 33                	test   %esi,(%rbx)
 3b1:	77 f1                	ja     3a4 <puts@plt-0xc8c>
 3b3:	d1                   	.byte 0xd1

Disassembly of section .interp:

00000000000003b4 <.interp>:
 3b4:	2f                   	(bad)
 3b5:	6c                   	insb   (%dx),(%rdi)
 3b6:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 3bd:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 3c2:	78 2d                	js     3f1 <puts@plt-0xc3f>
 3c4:	78 38                	js     3fe <puts@plt-0xc32>
 3c6:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 3cc:	6f                   	outsl  (%rsi),(%dx)
 3cd:	2e 32 00             	cs xor (%rax),%al

Disassembly of section .gnu.hash:

00000000000003d0 <.gnu.hash>:
 3d0:	03 00                	add    (%rax),%eax
 3d2:	00 00                	add    %al,(%rax)
 3d4:	11 00                	adc    %eax,(%rax)
 3d6:	00 00                	add    %al,(%rax)
 3d8:	01 00                	add    %eax,(%rax)
 3da:	00 00                	add    %al,(%rax)
 3dc:	06                   	(bad)
 3dd:	00 00                	add    %al,(%rax)
 3df:	00 00                	add    %al,(%rax)
 3e1:	01 20                	add    %esp,(%rax)
 3e3:	00 80 01 10 02 11    	add    %al,0x11021001(%rax)
 3e9:	00 00                	add    %al,(%rax)
 3eb:	00 12                	add    %dl,(%rdx)
 3ed:	00 00                	add    %al,(%rax)
 3ef:	00 00                	add    %al,(%rax)
 3f1:	00 00                	add    %al,(%rax)
 3f3:	00 29                	add    %ch,(%rcx)
 3f5:	1d 8c 1c 66 55       	sbb    $0x55661c8c,%eax
 3fa:	61                   	(bad)
 3fb:	10 39                	adc    %bh,(%rcx)
 3fd:	f2                   	repnz
 3fe:	8b                   	.byte 0x8b
 3ff:	1c                   	.byte 0x1c

Disassembly of section .dynsym:

0000000000000400 <.dynsym>:
	...
 418:	55                   	push   %rbp
 419:	00 00                	add    %al,(%rax)
 41b:	00 12                	add    %dl,(%rdx)
	...
 42d:	00 00                	add    %al,(%rax)
 42f:	00 c1                	add    %al,%cl
 431:	00 00                	add    %al,(%rax)
 433:	00 20                	add    %ah,(%rax)
	...
 445:	00 00                	add    %al,(%rax)
 447:	00 0d 00 00 00 12    	add    %cl,0x12000000(%rip)        # 1200044d <stderr@GLIBC_2.2.5+0x11ffc40d>
	...
 45d:	00 00                	add    %al,(%rax)
 45f:	00 7d 00             	add    %bh,0x0(%rbp)
 462:	00 00                	add    %al,(%rax)
 464:	12 00                	adc    (%rax),%al
	...
 476:	00 00                	add    %al,(%rax)
 478:	12 00                	adc    (%rax),%al
 47a:	00 00                	add    %al,(%rax)
 47c:	12 00                	adc    (%rax),%al
	...
 48e:	00 00                	add    %al,(%rax)
 490:	28 00                	sub    %al,(%rax)
 492:	00 00                	add    %al,(%rax)
 494:	12 00                	adc    (%rax),%al
	...
 4a6:	00 00                	add    %al,(%rax)
 4a8:	84 00                	test   %al,(%rax)
 4aa:	00 00                	add    %al,(%rax)
 4ac:	12 00                	adc    (%rax),%al
	...
 4be:	00 00                	add    %al,(%rax)
 4c0:	49 00 00             	rex.WB add %al,(%r8)
 4c3:	00 12                	add    %dl,(%rdx)
	...
 4d5:	00 00                	add    %al,(%rax)
 4d7:	00 01                	add    %al,(%rcx)
 4d9:	00 00                	add    %al,(%rax)
 4db:	00 12                	add    %dl,(%rdx)
	...
 4ed:	00 00                	add    %al,(%rax)
 4ef:	00 2f                	add    %ch,(%rdi)
 4f1:	00 00                	add    %al,(%rax)
 4f3:	00 12                	add    %dl,(%rdx)
	...
 505:	00 00                	add    %al,(%rax)
 507:	00 dd                	add    %bl,%ch
 509:	00 00                	add    %al,(%rax)
 50b:	00 20                	add    %ah,(%rax)
	...
 51d:	00 00                	add    %al,(%rax)
 51f:	00 43 00             	add    %al,0x0(%rbx)
 522:	00 00                	add    %al,(%rax)
 524:	12 00                	adc    (%rax),%al
	...
 536:	00 00                	add    %al,(%rax)
 538:	23 00                	and    (%rax),%eax
 53a:	00 00                	add    %al,(%rax)
 53c:	12 00                	adc    (%rax),%al
	...
 54e:	00 00                	add    %al,(%rax)
 550:	ec                   	in     (%dx),%al
 551:	00 00                	add    %al,(%rax)
 553:	00 20                	add    %ah,(%rax)
	...
 565:	00 00                	add    %al,(%rax)
 567:	00 6e 00             	add    %ch,0x0(%rsi)
 56a:	00 00                	add    %al,(%rax)
 56c:	22 00                	and    (%rax),%al
	...
 57e:	00 00                	add    %al,(%rax)
 580:	3e 00 00             	ds add %al,(%rax)
 583:	00 12                	add    %dl,(%rdx)
	...
 595:	00 00                	add    %al,(%rax)
 597:	00 4e 00             	add    %cl,0x0(%rsi)
 59a:	00 00                	add    %al,(%rax)
 59c:	11 00                	adc    %eax,(%rax)
 59e:	18 00                	sbb    %al,(%rax)
 5a0:	20 40 00             	and    %al,0x0(%rax)
 5a3:	00 00                	add    %al,(%rax)
 5a5:	00 00                	add    %al,(%rax)
 5a7:	00 08                	add    %cl,(%rax)
 5a9:	00 00                	add    %al,(%rax)
 5ab:	00 00                	add    %al,(%rax)
 5ad:	00 00                	add    %al,(%rax)
 5af:	00 07                	add    %al,(%rdi)
 5b1:	00 00                	add    %al,(%rax)
 5b3:	00 11                	add    %dl,(%rcx)
 5b5:	00 18                	add    %bl,(%rax)
 5b7:	00 30                	add    %dh,(%rax)
 5b9:	40 00 00             	rex add %al,(%rax)
 5bc:	00 00                	add    %al,(%rax)
 5be:	00 00                	add    %al,(%rax)
 5c0:	08 00                	or     %al,(%rax)
 5c2:	00 00                	add    %al,(%rax)
 5c4:	00 00                	add    %al,(%rax)
 5c6:	00 00                	add    %al,(%rax)
 5c8:	67 00 00             	add    %al,(%eax)
 5cb:	00 11                	add    %dl,(%rcx)
 5cd:	00 18                	add    %bl,(%rax)
 5cf:	00 40 40             	add    %al,0x40(%rax)
 5d2:	00 00                	add    %al,(%rax)
 5d4:	00 00                	add    %al,(%rax)
 5d6:	00 00                	add    %al,(%rax)
 5d8:	08 00                	or     %al,(%rax)
 5da:	00 00                	add    %al,(%rax)
 5dc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

00000000000005e0 <.dynstr>:
 5e0:	00 66 67             	add    %ah,0x67(%rsi)
 5e3:	65 74 73             	gs je  659 <puts@plt-0x9d7>
 5e6:	00 73 74             	add    %dh,0x74(%rbx)
 5e9:	64 69 6e 00 70 75 74 	imul   $0x73747570,%fs:0x0(%rsi),%ebp
 5f0:	73 
 5f1:	00 5f 5f             	add    %bl,0x5f(%rdi)
 5f4:	73 74                	jae    66a <puts@plt-0x9c6>
 5f6:	61                   	(bad)
 5f7:	63 6b 5f             	movsxd 0x5f(%rbx),%ebp
 5fa:	63 68 6b             	movsxd 0x6b(%rax),%ebp
 5fd:	5f                   	pop    %rdi
 5fe:	66 61                	data16 (bad)
 600:	69 6c 00 65 78 69 74 	imul   $0x746978,0x65(%rax,%rax,1),%ebp
 607:	00 
 608:	73 65                	jae    66f <puts@plt-0x9c1>
 60a:	74 62                	je     66e <puts@plt-0x9c2>
 60c:	75 66                	jne    674 <puts@plt-0x9bc>
 60e:	00 5f 5f             	add    %bl,0x5f(%rdi)
 611:	69 73 6f 63 32 33 5f 	imul   $0x5f333263,0x6f(%rbx),%esi
 618:	73 63                	jae    67d <puts@plt-0x9b3>
 61a:	61                   	(bad)
 61b:	6e                   	outsb  (%rsi),(%dx)
 61c:	66 00 67 65          	data16 add %ah,0x65(%rdi)
 620:	74 63                	je     685 <puts@plt-0x9ab>
 622:	00 66 6f             	add    %ah,0x6f(%rsi)
 625:	70 65                	jo     68c <puts@plt-0x9a4>
 627:	6e                   	outsb  (%rsi),(%dx)
 628:	00 72 65             	add    %dh,0x65(%rdx)
 62b:	61                   	(bad)
 62c:	64 00 73 74          	add    %dh,%fs:0x74(%rbx)
 630:	64 6f                	outsl  %fs:(%rsi),(%dx)
 632:	75 74                	jne    6a8 <puts@plt-0x988>
 634:	00 5f 5f             	add    %bl,0x5f(%rdi)
 637:	6c                   	insb   (%dx),(%rdi)
 638:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 63f:	72 74                	jb     6b5 <puts@plt-0x97b>
 641:	5f                   	pop    %rdi
 642:	6d                   	insl   (%dx),(%rdi)
 643:	61                   	(bad)
 644:	69 6e 00 73 74 64 65 	imul   $0x65647473,0x0(%rsi),%ebp
 64b:	72 72                	jb     6bf <puts@plt-0x971>
 64d:	00 5f 5f             	add    %bl,0x5f(%rdi)
 650:	63 78 61             	movsxd 0x61(%rax),%edi
 653:	5f                   	pop    %rdi
 654:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 65a:	7a 65                	jp     6c1 <puts@plt-0x96f>
 65c:	00 66 63             	add    %ah,0x63(%rsi)
 65f:	6c                   	insb   (%dx),(%rdi)
 660:	6f                   	outsl  (%rsi),(%dx)
 661:	73 65                	jae    6c8 <puts@plt-0x968>
 663:	00 70 72             	add    %dh,0x72(%rax)
 666:	69 6e 74 66 00 6c 69 	imul   $0x696c0066,0x74(%rsi),%ebp
 66d:	62 63 2e 73 6f       	(bad)
 672:	2e 36 00 47 4c       	cs ss add %al,0x4c(%rdi)
 677:	49                   	rex.WB
 678:	42                   	rex.X
 679:	43 5f                	rex.XB pop %r15
 67b:	32 2e                	xor    (%rsi),%ch
 67d:	33 38                	xor    (%rax),%edi
 67f:	00 47 4c             	add    %al,0x4c(%rdi)
 682:	49                   	rex.WB
 683:	42                   	rex.X
 684:	43 5f                	rex.XB pop %r15
 686:	32 2e                	xor    (%rsi),%ch
 688:	34 00                	xor    $0x0,%al
 68a:	47                   	rex.RXB
 68b:	4c                   	rex.WR
 68c:	49                   	rex.WB
 68d:	42                   	rex.X
 68e:	43 5f                	rex.XB pop %r15
 690:	32 2e                	xor    (%rsi),%ch
 692:	32 2e                	xor    (%rsi),%ch
 694:	35 00 47 4c 49       	xor    $0x494c4700,%eax
 699:	42                   	rex.X
 69a:	43 5f                	rex.XB pop %r15
 69c:	32 2e                	xor    (%rsi),%ch
 69e:	33 34 00             	xor    (%rax,%rax,1),%esi
 6a1:	5f                   	pop    %rdi
 6a2:	49 54                	rex.WB push %r12
 6a4:	4d 5f                	rex.WRB pop %r15
 6a6:	64 65 72 65          	fs gs jb 70f <puts@plt-0x921>
 6aa:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 6b1:	4d 
 6b2:	43 6c                	rex.XB insb (%dx),(%rdi)
 6b4:	6f                   	outsl  (%rsi),(%dx)
 6b5:	6e                   	outsb  (%rsi),(%dx)
 6b6:	65 54                	gs push %rsp
 6b8:	61                   	(bad)
 6b9:	62 6c 65 00 5f       	(bad)
 6be:	5f                   	pop    %rdi
 6bf:	67 6d                	insl   (%dx),(%edi)
 6c1:	6f                   	outsl  (%rsi),(%dx)
 6c2:	6e                   	outsb  (%rsi),(%dx)
 6c3:	5f                   	pop    %rdi
 6c4:	73 74                	jae    73a <puts@plt-0x8f6>
 6c6:	61                   	(bad)
 6c7:	72 74                	jb     73d <puts@plt-0x8f3>
 6c9:	5f                   	pop    %rdi
 6ca:	5f                   	pop    %rdi
 6cb:	00 5f 49             	add    %bl,0x49(%rdi)
 6ce:	54                   	push   %rsp
 6cf:	4d 5f                	rex.WRB pop %r15
 6d1:	72 65                	jb     738 <puts@plt-0x8f8>
 6d3:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 6da:	4d 
 6db:	43 6c                	rex.XB insb (%dx),(%rdi)
 6dd:	6f                   	outsl  (%rsi),(%dx)
 6de:	6e                   	outsb  (%rsi),(%dx)
 6df:	65 54                	gs push %rsp
 6e1:	61                   	(bad)
 6e2:	62                   	.byte 0x62
 6e3:	6c                   	insb   (%dx),(%rdi)
 6e4:	65                   	gs
	...

Disassembly of section .gnu.version:

00000000000006e6 <.gnu.version>:
 6e6:	00 00                	add    %al,(%rax)
 6e8:	02 00                	add    (%rax),%al
 6ea:	01 00                	add    %eax,(%rax)
 6ec:	03 00                	add    (%rax),%eax
 6ee:	03 00                	add    (%rax),%eax
 6f0:	04 00                	add    $0x0,%al
 6f2:	03 00                	add    (%rax),%eax
 6f4:	03 00                	add    (%rax),%eax
 6f6:	03 00                	add    (%rax),%eax
 6f8:	03 00                	add    (%rax),%eax
 6fa:	05 00 01 00 03       	add    $0x3000100,%eax
 6ff:	00 03                	add    %al,(%rbx)
 701:	00 01                	add    %al,(%rcx)
 703:	00 03                	add    %al,(%rbx)
 705:	00 03                	add    %al,(%rbx)
 707:	00 03                	add    %al,(%rbx)
 709:	00 03                	add    %al,(%rbx)
 70b:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .gnu.version_r:

0000000000000710 <.gnu.version_r>:
 710:	01 00                	add    %eax,(%rax)
 712:	04 00                	add    $0x0,%al
 714:	8b 00                	mov    (%rax),%eax
 716:	00 00                	add    %al,(%rax)
 718:	10 00                	adc    %al,(%rax)
 71a:	00 00                	add    %al,(%rax)
 71c:	00 00                	add    %al,(%rax)
 71e:	00 00                	add    %al,(%rax)
 720:	b8 91 96 06 00       	mov    $0x69691,%eax
 725:	00 05 00 95 00 00    	add    %al,0x9500(%rip)        # 9c2b <stderr@GLIBC_2.2.5+0x5beb>
 72b:	00 10                	add    %dl,(%rax)
 72d:	00 00                	add    %al,(%rax)
 72f:	00 14 69             	add    %dl,(%rcx,%rbp,2)
 732:	69 0d 00 00 04 00 a0 	imul   $0xa0,0x40000(%rip),%ecx        # 4073c <stderr@GLIBC_2.2.5+0x3c6fc>
 739:	00 00 00 
 73c:	10 00                	adc    %al,(%rax)
 73e:	00 00                	add    %al,(%rax)
 740:	75 1a                	jne    75c <puts@plt-0x8d4>
 742:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
 748:	aa                   	stos   %al,(%rdi)
 749:	00 00                	add    %al,(%rax)
 74b:	00 10                	add    %dl,(%rax)
 74d:	00 00                	add    %al,(%rax)
 74f:	00 b4 91 96 06 00 00 	add    %dh,0x696(%rcx,%rdx,4)
 756:	02 00                	add    (%rax),%al
 758:	b6 00                	mov    $0x0,%dh
 75a:	00 00                	add    %al,(%rax)
 75c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000760 <.rela.dyn>:
 760:	68 3d 00 00 00       	push   $0x3d
 765:	00 00                	add    %al,(%rax)
 767:	00 08                	add    %cl,(%rax)
 769:	00 00                	add    %al,(%rax)
 76b:	00 00                	add    %al,(%rax)
 76d:	00 00                	add    %al,(%rax)
 76f:	00 10                	add    %dl,(%rax)
 771:	13 00                	adc    (%rax),%eax
 773:	00 00                	add    %al,(%rax)
 775:	00 00                	add    %al,(%rax)
 777:	00 70 3d             	add    %dh,0x3d(%rax)
 77a:	00 00                	add    %al,(%rax)
 77c:	00 00                	add    %al,(%rax)
 77e:	00 00                	add    %al,(%rax)
 780:	08 00                	or     %al,(%rax)
 782:	00 00                	add    %al,(%rax)
 784:	00 00                	add    %al,(%rax)
 786:	00 00                	add    %al,(%rax)
 788:	c0 12 00             	rclb   $0x0,(%rdx)
 78b:	00 00                	add    %al,(%rax)
 78d:	00 00                	add    %al,(%rax)
 78f:	00 08                	add    %cl,(%rax)
 791:	40 00 00             	rex add %al,(%rax)
 794:	00 00                	add    %al,(%rax)
 796:	00 00                	add    %al,(%rax)
 798:	08 00                	or     %al,(%rax)
 79a:	00 00                	add    %al,(%rax)
 79c:	00 00                	add    %al,(%rax)
 79e:	00 00                	add    %al,(%rax)
 7a0:	08 40 00             	or     %al,0x0(%rax)
 7a3:	00 00                	add    %al,(%rax)
 7a5:	00 00                	add    %al,(%rax)
 7a7:	00 d8                	add    %bl,%al
 7a9:	3f                   	(bad)
 7aa:	00 00                	add    %al,(%rax)
 7ac:	00 00                	add    %al,(%rax)
 7ae:	00 00                	add    %al,(%rax)
 7b0:	06                   	(bad)
 7b1:	00 00                	add    %al,(%rax)
 7b3:	00 01                	add    %al,(%rcx)
	...
 7bd:	00 00                	add    %al,(%rax)
 7bf:	00 e0                	add    %ah,%al
 7c1:	3f                   	(bad)
 7c2:	00 00                	add    %al,(%rax)
 7c4:	00 00                	add    %al,(%rax)
 7c6:	00 00                	add    %al,(%rax)
 7c8:	06                   	(bad)
 7c9:	00 00                	add    %al,(%rax)
 7cb:	00 02                	add    %al,(%rdx)
	...
 7d5:	00 00                	add    %al,(%rax)
 7d7:	00 e8                	add    %ch,%al
 7d9:	3f                   	(bad)
 7da:	00 00                	add    %al,(%rax)
 7dc:	00 00                	add    %al,(%rax)
 7de:	00 00                	add    %al,(%rax)
 7e0:	06                   	(bad)
 7e1:	00 00                	add    %al,(%rax)
 7e3:	00 0b                	add    %cl,(%rbx)
	...
 7ed:	00 00                	add    %al,(%rax)
 7ef:	00 f0                	add    %dh,%al
 7f1:	3f                   	(bad)
 7f2:	00 00                	add    %al,(%rax)
 7f4:	00 00                	add    %al,(%rax)
 7f6:	00 00                	add    %al,(%rax)
 7f8:	06                   	(bad)
 7f9:	00 00                	add    %al,(%rax)
 7fb:	00 0e                	add    %cl,(%rsi)
	...
 805:	00 00                	add    %al,(%rax)
 807:	00 f8                	add    %bh,%al
 809:	3f                   	(bad)
 80a:	00 00                	add    %al,(%rax)
 80c:	00 00                	add    %al,(%rax)
 80e:	00 00                	add    %al,(%rax)
 810:	06                   	(bad)
 811:	00 00                	add    %al,(%rax)
 813:	00 0f                	add    %cl,(%rdi)
	...
 81d:	00 00                	add    %al,(%rax)
 81f:	00 20                	add    %ah,(%rax)
 821:	40 00 00             	rex add %al,(%rax)
 824:	00 00                	add    %al,(%rax)
 826:	00 00                	add    %al,(%rax)
 828:	05 00 00 00 11       	add    $0x11000000,%eax
	...
 835:	00 00                	add    %al,(%rax)
 837:	00 30                	add    %dh,(%rax)
 839:	40 00 00             	rex add %al,(%rax)
 83c:	00 00                	add    %al,(%rax)
 83e:	00 00                	add    %al,(%rax)
 840:	05 00 00 00 12       	add    $0x12000000,%eax
	...
 84d:	00 00                	add    %al,(%rax)
 84f:	00 40 40             	add    %al,0x40(%rax)
 852:	00 00                	add    %al,(%rax)
 854:	00 00                	add    %al,(%rax)
 856:	00 00                	add    %al,(%rax)
 858:	05 00 00 00 13       	add    $0x13000000,%eax
	...

Disassembly of section .rela.plt:

0000000000000868 <.rela.plt>:
 868:	80 3f 00             	cmpb   $0x0,(%rdi)
 86b:	00 00                	add    %al,(%rax)
 86d:	00 00                	add    %al,(%rax)
 86f:	00 07                	add    %al,(%rdi)
 871:	00 00                	add    %al,(%rax)
 873:	00 03                	add    %al,(%rbx)
	...
 87d:	00 00                	add    %al,(%rax)
 87f:	00 88 3f 00 00 00    	add    %cl,0x3f(%rax)
 885:	00 00                	add    %al,(%rax)
 887:	00 07                	add    %al,(%rdi)
 889:	00 00                	add    %al,(%rax)
 88b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 896:	00 00                	add    %al,(%rax)
 898:	90                   	nop
 899:	3f                   	(bad)
 89a:	00 00                	add    %al,(%rax)
 89c:	00 00                	add    %al,(%rax)
 89e:	00 00                	add    %al,(%rax)
 8a0:	07                   	(bad)
 8a1:	00 00                	add    %al,(%rax)
 8a3:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 8a9 <puts@plt-0x787>
 8a9:	00 00                	add    %al,(%rax)
 8ab:	00 00                	add    %al,(%rax)
 8ad:	00 00                	add    %al,(%rax)
 8af:	00 98 3f 00 00 00    	add    %bl,0x3f(%rax)
 8b5:	00 00                	add    %al,(%rax)
 8b7:	00 07                	add    %al,(%rdi)
 8b9:	00 00                	add    %al,(%rax)
 8bb:	00 06                	add    %al,(%rsi)
	...
 8c5:	00 00                	add    %al,(%rax)
 8c7:	00 a0 3f 00 00 00    	add    %ah,0x3f(%rax)
 8cd:	00 00                	add    %al,(%rax)
 8cf:	00 07                	add    %al,(%rdi)
 8d1:	00 00                	add    %al,(%rax)
 8d3:	00 07                	add    %al,(%rdi)
	...
 8dd:	00 00                	add    %al,(%rax)
 8df:	00 a8 3f 00 00 00    	add    %ch,0x3f(%rax)
 8e5:	00 00                	add    %al,(%rax)
 8e7:	00 07                	add    %al,(%rdi)
 8e9:	00 00                	add    %al,(%rax)
 8eb:	00 08                	add    %cl,(%rax)
	...
 8f5:	00 00                	add    %al,(%rax)
 8f7:	00 b0 3f 00 00 00    	add    %dh,0x3f(%rax)
 8fd:	00 00                	add    %al,(%rax)
 8ff:	00 07                	add    %al,(%rdi)
 901:	00 00                	add    %al,(%rax)
 903:	00 09                	add    %cl,(%rcx)
	...
 90d:	00 00                	add    %al,(%rax)
 90f:	00 b8 3f 00 00 00    	add    %bh,0x3f(%rax)
 915:	00 00                	add    %al,(%rax)
 917:	00 07                	add    %al,(%rdi)
 919:	00 00                	add    %al,(%rax)
 91b:	00 0a                	add    %cl,(%rdx)
	...
 925:	00 00                	add    %al,(%rax)
 927:	00 c0                	add    %al,%al
 929:	3f                   	(bad)
 92a:	00 00                	add    %al,(%rax)
 92c:	00 00                	add    %al,(%rax)
 92e:	00 00                	add    %al,(%rax)
 930:	07                   	(bad)
 931:	00 00                	add    %al,(%rax)
 933:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
 93e:	00 00                	add    %al,(%rax)
 940:	c8 3f 00 00          	enter  $0x3f,$0x0
 944:	00 00                	add    %al,(%rax)
 946:	00 00                	add    %al,(%rax)
 948:	07                   	(bad)
 949:	00 00                	add    %al,(%rax)
 94b:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 951 <puts@plt-0x6df>
 951:	00 00                	add    %al,(%rax)
 953:	00 00                	add    %al,(%rax)
 955:	00 00                	add    %al,(%rax)
 957:	00 d0                	add    %dl,%al
 959:	3f                   	(bad)
 95a:	00 00                	add    %al,(%rax)
 95c:	00 00                	add    %al,(%rax)
 95e:	00 00                	add    %al,(%rax)
 960:	07                   	(bad)
 961:	00 00                	add    %al,(%rax)
 963:	00 10                	add    %dl,(%rax)
	...

Disassembly of section .init:

0000000000001000 <.init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <getc@plt+0x2f18>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <puts@plt-0x1a>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 4a 2f 00 00    	push   0x2f4a(%rip)        # 3f70 <getc@plt+0x2ea0>
    1026:	ff 25 4c 2f 00 00    	jmp    *0x2f4c(%rip)        # 3f78 <getc@plt+0x2ea8>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 4a 2f 00 00    	jmp    *0x2f4a(%rip)        # 3f80 <getc@plt+0x2eb0>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <puts@plt-0x10>

0000000000001040 <fclose@plt>:
    1040:	ff 25 42 2f 00 00    	jmp    *0x2f42(%rip)        # 3f88 <getc@plt+0x2eb8>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <puts@plt-0x10>

0000000000001050 <__stack_chk_fail@plt>:
    1050:	ff 25 3a 2f 00 00    	jmp    *0x2f3a(%rip)        # 3f90 <getc@plt+0x2ec0>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <puts@plt-0x10>

0000000000001060 <setbuf@plt>:
    1060:	ff 25 32 2f 00 00    	jmp    *0x2f32(%rip)        # 3f98 <getc@plt+0x2ec8>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <puts@plt-0x10>

0000000000001070 <printf@plt>:
    1070:	ff 25 2a 2f 00 00    	jmp    *0x2f2a(%rip)        # 3fa0 <getc@plt+0x2ed0>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <puts@plt-0x10>

0000000000001080 <read@plt>:
    1080:	ff 25 22 2f 00 00    	jmp    *0x2f22(%rip)        # 3fa8 <getc@plt+0x2ed8>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <puts@plt-0x10>

0000000000001090 <fgets@plt>:
    1090:	ff 25 1a 2f 00 00    	jmp    *0x2f1a(%rip)        # 3fb0 <getc@plt+0x2ee0>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <puts@plt-0x10>

00000000000010a0 <__isoc23_scanf@plt>:
    10a0:	ff 25 12 2f 00 00    	jmp    *0x2f12(%rip)        # 3fb8 <getc@plt+0x2ee8>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <puts@plt-0x10>

00000000000010b0 <fopen@plt>:
    10b0:	ff 25 0a 2f 00 00    	jmp    *0x2f0a(%rip)        # 3fc0 <getc@plt+0x2ef0>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <puts@plt-0x10>

00000000000010c0 <exit@plt>:
    10c0:	ff 25 02 2f 00 00    	jmp    *0x2f02(%rip)        # 3fc8 <getc@plt+0x2ef8>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <puts@plt-0x10>

00000000000010d0 <getc@plt>:
    10d0:	ff 25 fa 2e 00 00    	jmp    *0x2efa(%rip)        # 3fd0 <getc@plt+0x2f00>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <puts@plt-0x10>

Disassembly of section .text:

00000000000010e0 <.text>:
    10e0:	55                   	push   %rbp
    10e1:	53                   	push   %rbx
    10e2:	48 83 ec 68          	sub    $0x68,%rsp
    10e6:	48 8b 3d 33 2f 00 00 	mov    0x2f33(%rip),%rdi        # 4020 <stdout@GLIBC_2.2.5>
    10ed:	64 48 8b 34 25 28 00 	mov    %fs:0x28,%rsi
    10f4:	00 00 
    10f6:	48 89 74 24 58       	mov    %rsi,0x58(%rsp)
    10fb:	31 f6                	xor    %esi,%esi
    10fd:	e8 5e ff ff ff       	call   1060 <setbuf@plt>
    1102:	48 8b 3d 27 2f 00 00 	mov    0x2f27(%rip),%rdi        # 4030 <stdin@GLIBC_2.2.5>
    1109:	31 f6                	xor    %esi,%esi
    110b:	e8 50 ff ff ff       	call   1060 <setbuf@plt>
    1110:	48 8b 3d 29 2f 00 00 	mov    0x2f29(%rip),%rdi        # 4040 <stderr@GLIBC_2.2.5>
    1117:	31 f6                	xor    %esi,%esi
    1119:	e8 42 ff ff ff       	call   1060 <setbuf@plt>
    111e:	48 8d 3d 0b 10 00 00 	lea    0x100b(%rip),%rdi        # 2130 <getc@plt+0x1060>
    1125:	e8 06 ff ff ff       	call   1030 <puts@plt>
    112a:	48 8d 3d 27 10 00 00 	lea    0x1027(%rip),%rdi        # 2158 <getc@plt+0x1088>
    1131:	e8 fa fe ff ff       	call   1030 <puts@plt>
    1136:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    113d:	00 00 00 
    1140:	48 8d 3d 99 0f 00 00 	lea    0xf99(%rip),%rdi        # 20e0 <getc@plt+0x1010>
    1147:	e8 e4 fe ff ff       	call   1030 <puts@plt>
    114c:	48 8d 3d ef 0e 00 00 	lea    0xeef(%rip),%rdi        # 2042 <getc@plt+0xf72>
    1153:	e8 d8 fe ff ff       	call   1030 <puts@plt>
    1158:	48 8d 3d b1 0f 00 00 	lea    0xfb1(%rip),%rdi        # 2110 <getc@plt+0x1040>
    115f:	e8 cc fe ff ff       	call   1030 <puts@plt>
    1164:	48 8d 3d ed 0e 00 00 	lea    0xeed(%rip),%rdi        # 2058 <getc@plt+0xf88>
    116b:	31 c0                	xor    %eax,%eax
    116d:	e8 fe fe ff ff       	call   1070 <printf@plt>
    1172:	31 c0                	xor    %eax,%eax
    1174:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
    1179:	48 8d 3d 04 0f 00 00 	lea    0xf04(%rip),%rdi        # 2084 <getc@plt+0xfb4>
    1180:	e8 1b ff ff ff       	call   10a0 <__isoc23_scanf@plt>
    1185:	83 f8 01             	cmp    $0x1,%eax
    1188:	0f 85 89 00 00 00    	jne    1217 <getc@plt+0x147>
    118e:	48 8b 3d 9b 2e 00 00 	mov    0x2e9b(%rip),%rdi        # 4030 <stdin@GLIBC_2.2.5>
    1195:	e8 36 ff ff ff       	call   10d0 <getc@plt>
    119a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    119e:	83 f8 01             	cmp    $0x1,%eax
    11a1:	74 1d                	je     11c0 <getc@plt+0xf0>
    11a3:	83 f8 02             	cmp    $0x2,%eax
    11a6:	74 63                	je     120b <getc@plt+0x13b>
    11a8:	48 8d 3d f3 0e 00 00 	lea    0xef3(%rip),%rdi        # 20a2 <getc@plt+0xfd2>
    11af:	e8 7c fe ff ff       	call   1030 <puts@plt>
    11b4:	eb 8a                	jmp    1140 <getc@plt+0x70>
    11b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11bd:	00 00 00 
    11c0:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    11c5:	48 8d 3d 8f 0e 00 00 	lea    0xe8f(%rip),%rdi        # 205b <getc@plt+0xf8b>
    11cc:	31 c0                	xor    %eax,%eax
    11ce:	e8 9d fe ff ff       	call   1070 <printf@plt>
    11d3:	ba 80 00 00 00       	mov    $0x80,%edx
    11d8:	48 89 ee             	mov    %rbp,%rsi
    11db:	31 ff                	xor    %edi,%edi
    11dd:	e8 9e fe ff ff       	call   1080 <read@plt>
    11e2:	48 8d 3d 82 0e 00 00 	lea    0xe82(%rip),%rdi        # 206b <getc@plt+0xf9b>
    11e9:	31 c0                	xor    %eax,%eax
    11eb:	e8 80 fe ff ff       	call   1070 <printf@plt>
    11f0:	48 89 ef             	mov    %rbp,%rdi
    11f3:	31 c0                	xor    %eax,%eax
    11f5:	e8 76 fe ff ff       	call   1070 <printf@plt>
    11fa:	48 8d 3d 69 0e 00 00 	lea    0xe69(%rip),%rdi        # 206a <getc@plt+0xf9a>
    1201:	e8 2a fe ff ff       	call   1030 <puts@plt>
    1206:	e9 35 ff ff ff       	jmp    1140 <getc@plt+0x70>
    120b:	48 8d 3d 75 0e 00 00 	lea    0xe75(%rip),%rdi        # 2087 <getc@plt+0xfb7>
    1212:	e8 19 fe ff ff       	call   1030 <puts@plt>
    1217:	31 ff                	xor    %edi,%edi
    1219:	e8 a2 fe ff ff       	call   10c0 <exit@plt>
    121e:	66 90                	xchg   %ax,%ax
    1220:	f3 0f 1e fa          	endbr64
    1224:	31 ed                	xor    %ebp,%ebp
    1226:	49 89 d1             	mov    %rdx,%r9
    1229:	5e                   	pop    %rsi
    122a:	48 89 e2             	mov    %rsp,%rdx
    122d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1231:	50                   	push   %rax
    1232:	54                   	push   %rsp
    1233:	45 31 c0             	xor    %r8d,%r8d
    1236:	31 c9                	xor    %ecx,%ecx
    1238:	48 8d 3d a1 fe ff ff 	lea    -0x15f(%rip),%rdi        # 10e0 <getc@plt+0x10>
    123f:	ff 15 93 2d 00 00    	call   *0x2d93(%rip)        # 3fd8 <getc@plt+0x2f08>
    1245:	f4                   	hlt
    1246:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    124d:	00 00 00 
    1250:	48 8d 3d b9 2d 00 00 	lea    0x2db9(%rip),%rdi        # 4010 <getc@plt+0x2f40>
    1257:	48 8d 05 b2 2d 00 00 	lea    0x2db2(%rip),%rax        # 4010 <getc@plt+0x2f40>
    125e:	48 39 f8             	cmp    %rdi,%rax
    1261:	74 15                	je     1278 <getc@plt+0x1a8>
    1263:	48 8b 05 76 2d 00 00 	mov    0x2d76(%rip),%rax        # 3fe0 <getc@plt+0x2f10>
    126a:	48 85 c0             	test   %rax,%rax
    126d:	74 09                	je     1278 <getc@plt+0x1a8>
    126f:	ff e0                	jmp    *%rax
    1271:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1278:	c3                   	ret
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1280:	48 8d 3d 89 2d 00 00 	lea    0x2d89(%rip),%rdi        # 4010 <getc@plt+0x2f40>
    1287:	48 8d 35 82 2d 00 00 	lea    0x2d82(%rip),%rsi        # 4010 <getc@plt+0x2f40>
    128e:	48 29 fe             	sub    %rdi,%rsi
    1291:	48 89 f0             	mov    %rsi,%rax
    1294:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1298:	48 c1 f8 03          	sar    $0x3,%rax
    129c:	48 01 c6             	add    %rax,%rsi
    129f:	48 d1 fe             	sar    $1,%rsi
    12a2:	74 14                	je     12b8 <getc@plt+0x1e8>
    12a4:	48 8b 05 45 2d 00 00 	mov    0x2d45(%rip),%rax        # 3ff0 <getc@plt+0x2f20>
    12ab:	48 85 c0             	test   %rax,%rax
    12ae:	74 08                	je     12b8 <getc@plt+0x1e8>
    12b0:	ff e0                	jmp    *%rax
    12b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12b8:	c3                   	ret
    12b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12c0:	f3 0f 1e fa          	endbr64
    12c4:	80 3d 7d 2d 00 00 00 	cmpb   $0x0,0x2d7d(%rip)        # 4048 <stderr@GLIBC_2.2.5+0x8>
    12cb:	75 33                	jne    1300 <getc@plt+0x230>
    12cd:	55                   	push   %rbp
    12ce:	48 83 3d 22 2d 00 00 	cmpq   $0x0,0x2d22(%rip)        # 3ff8 <getc@plt+0x2f28>
    12d5:	00 
    12d6:	48 89 e5             	mov    %rsp,%rbp
    12d9:	74 0d                	je     12e8 <getc@plt+0x218>
    12db:	48 8b 3d 26 2d 00 00 	mov    0x2d26(%rip),%rdi        # 4008 <getc@plt+0x2f38>
    12e2:	ff 15 10 2d 00 00    	call   *0x2d10(%rip)        # 3ff8 <getc@plt+0x2f28>
    12e8:	e8 63 ff ff ff       	call   1250 <getc@plt+0x180>
    12ed:	c6 05 54 2d 00 00 01 	movb   $0x1,0x2d54(%rip)        # 4048 <stderr@GLIBC_2.2.5+0x8>
    12f4:	5d                   	pop    %rbp
    12f5:	c3                   	ret
    12f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12fd:	00 00 00 
    1300:	c3                   	ret
    1301:	0f 1f 40 00          	nopl   0x0(%rax)
    1305:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    130c:	00 00 00 00 
    1310:	f3 0f 1e fa          	endbr64
    1314:	e9 67 ff ff ff       	jmp    1280 <getc@plt+0x1b0>
    1319:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1320:	55                   	push   %rbp
    1321:	48 8d 3d dc 0c 00 00 	lea    0xcdc(%rip),%rdi        # 2004 <getc@plt+0xf34>
    1328:	53                   	push   %rbx
    1329:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1330:	64 48 8b 34 25 28 00 	mov    %fs:0x28,%rsi
    1337:	00 00 
    1339:	48 89 b4 24 88 00 00 	mov    %rsi,0x88(%rsp)
    1340:	00 
    1341:	48 8d 35 e8 0c 00 00 	lea    0xce8(%rip),%rsi        # 2030 <getc@plt+0xf60>
    1348:	e8 63 fd ff ff       	call   10b0 <fopen@plt>
    134d:	48 85 c0             	test   %rax,%rax
    1350:	74 36                	je     1388 <getc@plt+0x2b8>
    1352:	48 89 c2             	mov    %rax,%rdx
    1355:	be 80 00 00 00       	mov    $0x80,%esi
    135a:	48 89 e7             	mov    %rsp,%rdi
    135d:	48 89 c3             	mov    %rax,%rbx
    1360:	e8 2b fd ff ff       	call   1090 <fgets@plt>
    1365:	48 8d 3d a1 0c 00 00 	lea    0xca1(%rip),%rdi        # 200d <getc@plt+0xf3d>
    136c:	e8 bf fc ff ff       	call   1030 <puts@plt>
    1371:	48 89 e7             	mov    %rsp,%rdi
    1374:	e8 b7 fc ff ff       	call   1030 <puts@plt>
    1379:	48 89 df             	mov    %rbx,%rdi
    137c:	e8 bf fc ff ff       	call   1040 <fclose@plt>
    1381:	31 ff                	xor    %edi,%edi
    1383:	e8 38 fd ff ff       	call   10c0 <exit@plt>
    1388:	48 8d 3d 29 0d 00 00 	lea    0xd29(%rip),%rdi        # 20b8 <getc@plt+0xfe8>
    138f:	e8 9c fc ff ff       	call   1030 <puts@plt>
    1394:	bf 01 00 00 00       	mov    $0x1,%edi
    1399:	e8 22 fd ff ff       	call   10c0 <exit@plt>
    139e:	66 90                	xchg   %ax,%ax
    13a0:	48 83 ec 18          	sub    $0x18,%rsp
    13a4:	64 48 8b 3c 25 28 00 	mov    %fs:0x28,%rdi
    13ab:	00 00 
    13ad:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    13b2:	48 8d 3d 6e 0c 00 00 	lea    0xc6e(%rip),%rdi        # 2027 <getc@plt+0xf57>
    13b9:	e8 72 fc ff ff       	call   1030 <puts@plt>
    13be:	31 ff                	xor    %edi,%edi
    13c0:	e8 fb fc ff ff       	call   10c0 <exit@plt>
    13c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    13cc:	00 00 00 00 
    13d0:	48 83 ec 38          	sub    $0x38,%rsp
    13d4:	31 ff                	xor    %edi,%edi
    13d6:	ba 20 00 00 00       	mov    $0x20,%edx
    13db:	64 48 8b 34 25 28 00 	mov    %fs:0x28,%rsi
    13e2:	00 00 
    13e4:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
    13e9:	48 89 e6             	mov    %rsp,%rsi
    13ec:	e8 8f fc ff ff       	call   1080 <read@plt>
    13f1:	81 3c 24 6e 6f 70 65 	cmpl   $0x65706f6e,(%rsp)
    13f8:	74 16                	je     1410 <getc@plt+0x340>
    13fa:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    13ff:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1406:	00 00 
    1408:	75 1b                	jne    1425 <getc@plt+0x355>
    140a:	48 83 c4 38          	add    $0x38,%rsp
    140e:	c3                   	ret
    140f:	90                   	nop
    1410:	80 7c 24 04 00       	cmpb   $0x0,0x4(%rsp)
    1415:	75 e3                	jne    13fa <getc@plt+0x32a>
    1417:	48 8d 3d 19 0c 00 00 	lea    0xc19(%rip),%rdi        # 2037 <getc@plt+0xf67>
    141e:	e8 0d fc ff ff       	call   1030 <puts@plt>
    1423:	eb d5                	jmp    13fa <getc@plt+0x32a>
    1425:	e8 26 fc ff ff       	call   1050 <__stack_chk_fail@plt>
    142a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1430:	48 83 ec 18          	sub    $0x18,%rsp
    1434:	64 48 8b 3c 25 28 00 	mov    %fs:0x28,%rdi
    143b:	00 00 
    143d:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    1442:	48 8d 3d 97 0c 00 00 	lea    0xc97(%rip),%rdi        # 20e0 <getc@plt+0x1010>
    1449:	e8 e2 fb ff ff       	call   1030 <puts@plt>
    144e:	48 8d 3d ed 0b 00 00 	lea    0xbed(%rip),%rdi        # 2042 <getc@plt+0xf72>
    1455:	e8 d6 fb ff ff       	call   1030 <puts@plt>
    145a:	48 8d 3d af 0c 00 00 	lea    0xcaf(%rip),%rdi        # 2110 <getc@plt+0x1040>
    1461:	e8 ca fb ff ff       	call   1030 <puts@plt>
    1466:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    146b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1472:	00 00 
    1474:	75 12                	jne    1488 <getc@plt+0x3b8>
    1476:	48 8d 3d db 0b 00 00 	lea    0xbdb(%rip),%rdi        # 2058 <getc@plt+0xf88>
    147d:	31 c0                	xor    %eax,%eax
    147f:	48 83 c4 18          	add    $0x18,%rsp
    1483:	e9 e8 fb ff ff       	jmp    1070 <printf@plt>
    1488:	e8 c3 fb ff ff       	call   1050 <__stack_chk_fail@plt>
    148d:	0f 1f 00             	nopl   (%rax)
    1490:	53                   	push   %rbx
    1491:	48 8d 3d c3 0b 00 00 	lea    0xbc3(%rip),%rdi        # 205b <getc@plt+0xf8b>
    1498:	48 83 ec 50          	sub    $0x50,%rsp
    149c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14a3:	00 00 
    14a5:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    14aa:	31 c0                	xor    %eax,%eax
    14ac:	e8 bf fb ff ff       	call   1070 <printf@plt>
    14b1:	ba 80 00 00 00       	mov    $0x80,%edx
    14b6:	48 89 e6             	mov    %rsp,%rsi
    14b9:	31 ff                	xor    %edi,%edi
    14bb:	e8 c0 fb ff ff       	call   1080 <read@plt>
    14c0:	48 8d 3d a4 0b 00 00 	lea    0xba4(%rip),%rdi        # 206b <getc@plt+0xf9b>
    14c7:	31 c0                	xor    %eax,%eax
    14c9:	e8 a2 fb ff ff       	call   1070 <printf@plt>
    14ce:	48 89 e7             	mov    %rsp,%rdi
    14d1:	31 c0                	xor    %eax,%eax
    14d3:	e8 98 fb ff ff       	call   1070 <printf@plt>
    14d8:	48 8d 3d 8b 0b 00 00 	lea    0xb8b(%rip),%rdi        # 206a <getc@plt+0xf9a>
    14df:	e8 4c fb ff ff       	call   1030 <puts@plt>
    14e4:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    14e9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    14f0:	00 00 
    14f2:	75 06                	jne    14fa <getc@plt+0x42a>
    14f4:	48 83 c4 50          	add    $0x50,%rsp
    14f8:	5b                   	pop    %rbx
    14f9:	c3                   	ret
    14fa:	e8 51 fb ff ff       	call   1050 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001500 <.fini>:
    1500:	f3 0f 1e fa          	endbr64
    1504:	48 83 ec 08          	sub    $0x8,%rsp
    1508:	48 83 c4 08          	add    $0x8,%rsp
    150c:	c3                   	ret

Disassembly of section .rodata:

0000000000002000 <.rodata>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	66 6c                	data16 insb (%dx),(%rdi)
    2006:	61                   	(bad)
    2007:	67 2e 74 78          	addr32 je,pn 2083 <getc@plt+0xfb3>
    200b:	74 00                	je     200d <getc@plt+0xf3d>
    200d:	47                   	rex.RXB
    200e:	65 74 20             	gs je  2031 <getc@plt+0xf61>
    2011:	79 6f                	jns    2082 <getc@plt+0xfb2>
    2013:	20 66 6c             	and    %ah,0x6c(%rsi)
    2016:	61                   	(bad)
    2017:	67 20 73 70          	and    %dh,0x70(%ebx)
    201b:	61                   	(bad)
    201c:	63 65 20             	movsxd 0x20(%rbp),%esp
    201f:	70 69                	jo     208a <getc@plt+0xfba>
    2021:	72 61                	jb     2084 <getc@plt+0xfb4>
    2023:	74 65                	je     208a <getc@plt+0xfba>
    2025:	3a 00                	cmp    (%rax),%al
    2027:	54                   	push   %rsp
    2028:	72 79                	jb     20a3 <getc@plt+0xfd3>
    202a:	20 68 61             	and    %ch,0x61(%rax)
    202d:	72 64                	jb     2093 <getc@plt+0xfc3>
    202f:	65 72 00             	gs jb  2032 <getc@plt+0xf62>
    2032:	6e                   	outsb  (%rsi),(%dx)
    2033:	6f                   	outsl  (%rsi),(%dx)
    2034:	70 65                	jo     209b <getc@plt+0xfcb>
    2036:	00 4e 6f             	add    %cl,0x6f(%rsi)
    2039:	74 20                	je     205b <getc@plt+0xf8b>
    203b:	68 65 72 65 3a       	push   $0x3a657265
    2040:	29 00                	sub    %eax,(%rax)
    2042:	31 2e                	xor    %ebp,(%rsi)
    2044:	20 54 72 61          	and    %dl,0x61(%rdx,%rsi,2)
    2048:	6e                   	outsb  (%rsi),(%dx)
    2049:	73 6d                	jae    20b8 <getc@plt+0xfe8>
    204b:	69 74 20 61 20 6d 65 	imul   $0x73656d20,0x61(%rax,%riz,1),%esi
    2052:	73 
    2053:	73 61                	jae    20b6 <getc@plt+0xfe6>
    2055:	67 65 00 3e          	add    %bh,%gs:(%esi)
    2059:	20 00                	and    %al,(%rax)
    205b:	54                   	push   %rsp
    205c:	72 61                	jb     20bf <getc@plt+0xfef>
    205e:	6e                   	outsb  (%rsi),(%dx)
    205f:	73 6d                	jae    20ce <getc@plt+0xffe>
    2061:	69 74 20 64 61 74 61 	imul   $0x3a617461,0x64(%rax,%riz,1),%esi
    2068:	3a 
    2069:	20 00                	and    %al,(%rax)
    206b:	54                   	push   %rsp
    206c:	68 65 20 61 72       	push   $0x72612065
    2071:	63 68 69             	movsxd 0x69(%rax),%ebp
    2074:	76 65                	jbe    20db <getc@plt+0x100b>
    2076:	73 20                	jae    2098 <getc@plt+0xfc8>
    2078:	65 63 68 6f          	movsxd %gs:0x6f(%rax),%ebp
    207c:	20 62 61             	and    %ah,0x61(%rdx)
    207f:	63 6b 3a             	movsxd 0x3a(%rbx),%ebp
    2082:	20 00                	and    %al,(%rax)
    2084:	25 64 00 4d 61       	and    $0x614d0064,%eax
    2089:	79 20                	jns    20ab <getc@plt+0xfdb>
    208b:	74 68                	je     20f5 <getc@plt+0x1025>
    208d:	65 20 46 6f          	and    %al,%gs:0x6f(%rsi)
    2091:	72 63                	jb     20f6 <getc@plt+0x1026>
    2093:	65 20 62 65          	and    %ah,%gs:0x65(%rdx)
    2097:	20 77 69             	and    %dh,0x69(%rdi)
    209a:	74 68                	je     2104 <getc@plt+0x1034>
    209c:	20 79 6f             	and    %bh,0x6f(%rcx)
    209f:	75 21                	jne    20c2 <getc@plt+0xff2>
    20a1:	00 49 6e             	add    %cl,0x6e(%rcx)
    20a4:	76 61                	jbe    2107 <getc@plt+0x1037>
    20a6:	6c                   	insb   (%dx),(%rdi)
    20a7:	69 64 20 63 68 6f 69 	imul   $0x63696f68,0x63(%rax,%riz,1),%esp
    20ae:	63 
    20af:	65 2e 00 00          	gs add %al,%gs:(%rax)
    20b3:	00 00                	add    %al,(%rax)
    20b5:	00 00                	add    %al,(%rax)
    20b7:	00 46 6c             	add    %al,0x6c(%rsi)
    20ba:	61                   	(bad)
    20bb:	67 20 66 69          	and    %ah,0x69(%esi)
    20bf:	6c                   	insb   (%dx),(%rdi)
    20c0:	65 20 6d 69          	and    %ch,%gs:0x69(%rbp)
    20c4:	73 73                	jae    2139 <getc@plt+0x1069>
    20c6:	69 6e 67 2e 20 43 6f 	imul   $0x6f43202e,0x67(%rsi),%ebp
    20cd:	6e                   	outsb  (%rsi),(%dx)
    20ce:	74 61                	je     2131 <getc@plt+0x1061>
    20d0:	63 74 20 61          	movsxd 0x61(%rax,%riz,1),%esi
    20d4:	64 6d                	fs insl (%dx),(%rdi)
    20d6:	69 6e 21 00 00 00 00 	imul   $0x0,0x21(%rsi),%ebp
    20dd:	00 00                	add    %al,(%rax)
    20df:	00 3d 3d 3d 3d 3d    	add    %bh,0x3d3d3d3d(%rip)        # 3d3d5e22 <stderr@GLIBC_2.2.5+0x3d3d1de2>
    20e5:	3d 3d 20 4a 65       	cmp    $0x654a203d,%eax
    20ea:	64 69 20 41 72 63 68 	imul   $0x68637241,%fs:(%rax),%esp
    20f1:	69 76 65 20 54 65 72 	imul   $0x72655420,0x65(%rsi),%esi
    20f8:	6d                   	insl   (%dx),(%rdi)
    20f9:	69 6e 61 6c 20 76 36 	imul   $0x3676206c,0x61(%rsi),%ebp
    2100:	2e 36 20 3d 3d 3d 3d 	cs ss and %bh,0x3d3d3d3d(%rip)        # 3d3d5e45 <stderr@GLIBC_2.2.5+0x3d3d1e05>
    2107:	3d 
    2108:	3d 3d 00 00 00       	cmp    $0x3d,%eax
    210d:	00 00                	add    %al,(%rax)
    210f:	00 32                	add    %dh,(%rdx)
    2111:	2e 20 44 69 73       	cs and %al,0x73(%rcx,%rbp,2)
    2116:	63 6f 6e             	movsxd 0x6e(%rdi),%ebp
    2119:	6e                   	outsb  (%rsi),(%dx)
    211a:	65 63 74 20 66       	movsxd %gs:0x66(%rax,%riz,1),%esi
    211f:	72 6f                	jb     2190 <getc@plt+0x10c0>
    2121:	6d                   	insl   (%dx),(%rdi)
    2122:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
    2126:	20 6e 65             	and    %ch,0x65(%rsi)
    2129:	74 77                	je     21a2 <getc@plt+0x10d2>
    212b:	6f                   	outsl  (%rsi),(%dx)
    212c:	72 6b                	jb     2199 <getc@plt+0x10c9>
    212e:	00 00                	add    %al,(%rax)
    2130:	43 6f                	rex.XB outsl (%rsi),(%dx)
    2132:	6e                   	outsb  (%rsi),(%dx)
    2133:	6e                   	outsb  (%rsi),(%dx)
    2134:	65 63 74 69 6e       	movsxd %gs:0x6e(%rcx,%rbp,2),%esi
    2139:	67 20 74 6f 20       	and    %dh,0x20(%edi,%ebp,2)
    213e:	4a                   	rex.WX
    213f:	65 64 69 20 41 72 63 	gs imul $0x68637241,%fs:(%rax),%esp
    2146:	68 
    2147:	69 76 65 20 74 65 72 	imul   $0x72657420,0x65(%rsi),%esi
    214e:	6d                   	insl   (%dx),(%rdi)
    214f:	69 6e 61 6c 2e 2e 2e 	imul   $0x2e2e2e6c,0x61(%rsi),%ebp
    2156:	00 00                	add    %al,(%rax)
    2158:	4f 6e                	rex.WRXB outsb (%rsi),(%dx)
    215a:	6c                   	insb   (%dx),(%rdi)
    215b:	79 20                	jns    217d <getc@plt+0x10ad>
    215d:	61                   	(bad)
    215e:	75 74                	jne    21d4 <getc@plt+0x1104>
    2160:	68 6f 72 69 7a       	push   $0x7a69726f
    2165:	65 64 20 4a 65       	gs and %cl,%fs:0x65(%rdx)
    216a:	64 69 20 6d 61 79 20 	imul   $0x2079616d,%fs:(%rax),%esp
    2171:	61                   	(bad)
    2172:	63 63 65             	movsxd 0x65(%rbx),%esp
    2175:	73 73                	jae    21ea <getc@plt+0x111a>
    2177:	20 72 65             	and    %dh,0x65(%rdx)
    217a:	73 74                	jae    21f0 <getc@plt+0x1120>
    217c:	72 69                	jb     21e7 <getc@plt+0x1117>
    217e:	63 74 65 64          	movsxd 0x64(%rbp,%riz,2),%esi
    2182:	20 48 6f             	and    %cl,0x6f(%rax)
    2185:	6c                   	insb   (%dx),(%rdi)
    2186:	6f                   	outsl  (%rsi),(%dx)
    2187:	63 72 6f             	movsxd 0x6f(%rdx),%esi
    218a:	6e                   	outsb  (%rsi),(%dx)
    218b:	73 2e                	jae    21bb <getc@plt+0x10eb>
	...

Disassembly of section .eh_frame_hdr:

0000000000002190 <.eh_frame_hdr>:
    2190:	01 1b                	add    %ebx,(%rbx)
    2192:	03 3b                	add    (%rbx),%edi
    2194:	4c 00 00             	rex.WR add %r8b,(%rax)
    2197:	00 08                	add    %cl,(%rax)
    2199:	00 00                	add    %al,(%rax)
    219b:	00 90 ee ff ff 80    	add    %dl,-0x7f000012(%rax)
    21a1:	00 00                	add    %al,(%rax)
    21a3:	00 50 ef             	add    %dl,-0x11(%rax)
    21a6:	ff                   	(bad)
    21a7:	ff                   	(bad)
    21a8:	38 01                	cmp    %al,(%rcx)
    21aa:	00 00                	add    %al,(%rax)
    21ac:	90                   	nop
    21ad:	f0 ff                	lock (bad)
    21af:	ff 68 00             	ljmp   *0x0(%rax)
    21b2:	00 00                	add    %al,(%rax)
    21b4:	90                   	nop
    21b5:	f1                   	int1
    21b6:	ff                   	(bad)
    21b7:	ff a8 00 00 00 10    	ljmp   *0x10000000(%rax)
    21bd:	f2 ff                	repnz (bad)
    21bf:	ff c8                	dec    %eax
    21c1:	00 00                	add    %al,(%rax)
    21c3:	00 40 f2             	add    %al,-0xe(%rax)
    21c6:	ff                   	(bad)
    21c7:	ff                   	lcall  (bad)
    21c8:	dc 00                	faddl  (%rax)
    21ca:	00 00                	add    %al,(%rax)
    21cc:	a0 f2 ff ff f8 00 00 	movabs 0xf8fffff2,%al
    21d3:	00 00 
    21d5:	f3 ff                	repz (bad)
    21d7:	ff 14 01             	call   *(%rcx,%rax,1)
	...

Disassembly of section .eh_frame:

00000000000021e0 <.eh_frame>:
    21e0:	14 00                	adc    $0x0,%al
    21e2:	00 00                	add    %al,(%rax)
    21e4:	00 00                	add    %al,(%rax)
    21e6:	00 00                	add    %al,(%rax)
    21e8:	01 7a 52             	add    %edi,0x52(%rdx)
    21eb:	00 01                	add    %al,(%rcx)
    21ed:	78 10                	js     21ff <getc@plt+0x112f>
    21ef:	01 1b                	add    %ebx,(%rbx)
    21f1:	0c 07                	or     $0x7,%al
    21f3:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    21f9:	00 00                	add    %al,(%rax)
    21fb:	00 1c 00             	add    %bl,(%rax,%rax,1)
    21fe:	00 00                	add    %al,(%rax)
    2200:	20 f0                	and    %dh,%al
    2202:	ff                   	(bad)
    2203:	ff 26                	jmp    *(%rsi)
    2205:	00 00                	add    %al,(%rax)
    2207:	00 00                	add    %al,(%rax)
    2209:	44 07                	rex.R (bad)
    220b:	10 00                	adc    %al,(%rax)
    220d:	00 00                	add    %al,(%rax)
    220f:	00 24 00             	add    %ah,(%rax,%rax,1)
    2212:	00 00                	add    %al,(%rax)
    2214:	34 00                	xor    $0x0,%al
    2216:	00 00                	add    %al,(%rax)
    2218:	08 ee                	or     %ch,%dh
    221a:	ff                   	(bad)
    221b:	ff c0                	inc    %eax
    221d:	00 00                	add    %al,(%rax)
    221f:	00 00                	add    %al,(%rax)
    2221:	0e                   	(bad)
    2222:	10 46 0e             	adc    %al,0xe(%rsi)
    2225:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    2228:	0b 77 08             	or     0x8(%rdi),%esi
    222b:	80 00 3f             	addb   $0x3f,(%rax)
    222e:	1a 3b                	sbb    (%rbx),%bh
    2230:	2a 33                	sub    (%rbx),%dh
    2232:	24 22                	and    $0x22,%al
    2234:	00 00                	add    %al,(%rax)
    2236:	00 00                	add    %al,(%rax)
    2238:	1c 00                	sbb    $0x0,%al
    223a:	00 00                	add    %al,(%rax)
    223c:	5c                   	pop    %rsp
    223d:	00 00                	add    %al,(%rax)
    223f:	00 e0                	add    %ah,%al
    2241:	f0 ff                	lock (bad)
    2243:	ff                   	(bad)
    2244:	7e 00                	jle    2246 <getc@plt+0x1176>
    2246:	00 00                	add    %al,(%rax)
    2248:	00 41 0e             	add    %al,0xe(%rcx)
    224b:	10 86 02 48 0e 18    	adc    %al,0x180e4802(%rsi)
    2251:	83 03 47             	addl   $0x47,(%rbx)
    2254:	0e                   	(bad)
    2255:	b0 01                	mov    $0x1,%al
    2257:	00 10                	add    %dl,(%rax)
    2259:	00 00                	add    %al,(%rax)
    225b:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
    225f:	00 40 f1             	add    %al,-0xf(%rax)
    2262:	ff                   	(bad)
    2263:	ff 25 00 00 00 00    	jmp    *0x0(%rip)        # 2269 <getc@plt+0x1199>
    2269:	44 0e                	rex.R (bad)
    226b:	20 18                	and    %bl,(%rax)
    226d:	00 00                	add    %al,(%rax)
    226f:	00 90 00 00 00 5c    	add    %dl,0x5c000000(%rax)
    2275:	f1                   	int1
    2276:	ff                   	(bad)
    2277:	ff 5a 00             	lcall  *0x0(%rdx)
    227a:	00 00                	add    %al,(%rax)
    227c:	00 44 0e 40          	add    %al,0x40(%rsi,%rcx,1)
    2280:	7a 0a                	jp     228c <getc@plt+0x11bc>
    2282:	0e                   	(bad)
    2283:	08 42 0b             	or     %al,0xb(%rdx)
    2286:	00 00                	add    %al,(%rax)
    2288:	18 00                	sbb    %al,(%rax)
    228a:	00 00                	add    %al,(%rax)
    228c:	ac                   	lods   (%rsi),%al
    228d:	00 00                	add    %al,(%rax)
    228f:	00 a0 f1 ff ff 5d    	add    %ah,0x5dfffff1(%rax)
    2295:	00 00                	add    %al,(%rax)
    2297:	00 00                	add    %al,(%rax)
    2299:	44 0e                	rex.R (bad)
    229b:	20 02                	and    %al,(%rdx)
    229d:	4f 0a 0e             	rex.WRXB or (%r14),%r9b
    22a0:	08 45 0b             	or     %al,0xb(%rbp)
    22a3:	00 20                	add    %ah,(%rax)
    22a5:	00 00                	add    %al,(%rax)
    22a7:	00 c8                	add    %cl,%al
    22a9:	00 00                	add    %al,(%rax)
    22ab:	00 e4                	add    %ah,%ah
    22ad:	f1                   	int1
    22ae:	ff                   	(bad)
    22af:	ff 6f 00             	ljmp   *0x0(%rdi)
    22b2:	00 00                	add    %al,(%rax)
    22b4:	00 41 0e             	add    %al,0xe(%rcx)
    22b7:	10 83 02 4b 0e 60    	adc    %al,0x600e4b02(%rbx)
    22bd:	02 5c 0a 0e          	add    0xe(%rdx,%rcx,1),%bl
    22c1:	10 41 0e             	adc    %al,0xe(%rcx)
    22c4:	08 41 0b             	or     %al,0xb(%rcx)
    22c7:	00 1c 00             	add    %bl,(%rax,%rax,1)
    22ca:	00 00                	add    %al,(%rax)
    22cc:	ec                   	in     (%dx),%al
    22cd:	00 00                	add    %al,(%rax)
    22cf:	00 10                	add    %dl,(%rax)
    22d1:	ee                   	out    %al,(%dx)
    22d2:	ff                   	(bad)
    22d3:	ff                   	(bad)
    22d4:	3e 01 00             	ds add %eax,(%rax)
    22d7:	00 00                	add    %al,(%rax)
    22d9:	41 0e                	rex.B (bad)
    22db:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    22e1:	83 03 44             	addl   $0x44,(%rbx)
    22e4:	0e                   	(bad)
    22e5:	80 01 00             	addb   $0x0,(%rcx)
    22e8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.ABI-tag:

00000000000022ec <.note.ABI-tag>:
    22ec:	04 00                	add    $0x0,%al
    22ee:	00 00                	add    %al,(%rax)
    22f0:	10 00                	adc    %al,(%rax)
    22f2:	00 00                	add    %al,(%rax)
    22f4:	01 00                	add    %eax,(%rax)
    22f6:	00 00                	add    %al,(%rax)
    22f8:	47                   	rex.RXB
    22f9:	4e 55                	rex.WRX push %rbp
    22fb:	00 00                	add    %al,(%rax)
    22fd:	00 00                	add    %al,(%rax)
    22ff:	00 04 00             	add    %al,(%rax,%rax,1)
    2302:	00 00                	add    %al,(%rax)
    2304:	04 00                	add    $0x0,%al
    2306:	00 00                	add    %al,(%rax)
    2308:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000003d68 <.init_array>:
    3d68:	10 13                	adc    %dl,(%rbx)
    3d6a:	00 00                	add    %al,(%rax)
    3d6c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003d70 <.fini_array>:
    3d70:	c0 12 00             	rclb   $0x0,(%rdx)
    3d73:	00 00                	add    %al,(%rax)
    3d75:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003d78 <.dynamic>:
    3d78:	01 00                	add    %eax,(%rax)
    3d7a:	00 00                	add    %al,(%rax)
    3d7c:	00 00                	add    %al,(%rax)
    3d7e:	00 00                	add    %al,(%rax)
    3d80:	8b 00                	mov    (%rax),%eax
    3d82:	00 00                	add    %al,(%rax)
    3d84:	00 00                	add    %al,(%rax)
    3d86:	00 00                	add    %al,(%rax)
    3d88:	0c 00                	or     $0x0,%al
    3d8a:	00 00                	add    %al,(%rax)
    3d8c:	00 00                	add    %al,(%rax)
    3d8e:	00 00                	add    %al,(%rax)
    3d90:	00 10                	add    %dl,(%rax)
    3d92:	00 00                	add    %al,(%rax)
    3d94:	00 00                	add    %al,(%rax)
    3d96:	00 00                	add    %al,(%rax)
    3d98:	0d 00 00 00 00       	or     $0x0,%eax
    3d9d:	00 00                	add    %al,(%rax)
    3d9f:	00 00                	add    %al,(%rax)
    3da1:	15 00 00 00 00       	adc    $0x0,%eax
    3da6:	00 00                	add    %al,(%rax)
    3da8:	19 00                	sbb    %eax,(%rax)
    3daa:	00 00                	add    %al,(%rax)
    3dac:	00 00                	add    %al,(%rax)
    3dae:	00 00                	add    %al,(%rax)
    3db0:	68 3d 00 00 00       	push   $0x3d
    3db5:	00 00                	add    %al,(%rax)
    3db7:	00 1b                	add    %bl,(%rbx)
    3db9:	00 00                	add    %al,(%rax)
    3dbb:	00 00                	add    %al,(%rax)
    3dbd:	00 00                	add    %al,(%rax)
    3dbf:	00 08                	add    %cl,(%rax)
    3dc1:	00 00                	add    %al,(%rax)
    3dc3:	00 00                	add    %al,(%rax)
    3dc5:	00 00                	add    %al,(%rax)
    3dc7:	00 1a                	add    %bl,(%rdx)
    3dc9:	00 00                	add    %al,(%rax)
    3dcb:	00 00                	add    %al,(%rax)
    3dcd:	00 00                	add    %al,(%rax)
    3dcf:	00 70 3d             	add    %dh,0x3d(%rax)
    3dd2:	00 00                	add    %al,(%rax)
    3dd4:	00 00                	add    %al,(%rax)
    3dd6:	00 00                	add    %al,(%rax)
    3dd8:	1c 00                	sbb    $0x0,%al
    3dda:	00 00                	add    %al,(%rax)
    3ddc:	00 00                	add    %al,(%rax)
    3dde:	00 00                	add    %al,(%rax)
    3de0:	08 00                	or     %al,(%rax)
    3de2:	00 00                	add    %al,(%rax)
    3de4:	00 00                	add    %al,(%rax)
    3de6:	00 00                	add    %al,(%rax)
    3de8:	f5                   	cmc
    3de9:	fe                   	(bad)
    3dea:	ff 6f 00             	ljmp   *0x0(%rdi)
    3ded:	00 00                	add    %al,(%rax)
    3def:	00 d0                	add    %dl,%al
    3df1:	03 00                	add    (%rax),%eax
    3df3:	00 00                	add    %al,(%rax)
    3df5:	00 00                	add    %al,(%rax)
    3df7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3dfd <getc@plt+0x2d2d>
    3dfd:	00 00                	add    %al,(%rax)
    3dff:	00 e0                	add    %ah,%al
    3e01:	05 00 00 00 00       	add    $0x0,%eax
    3e06:	00 00                	add    %al,(%rax)
    3e08:	06                   	(bad)
	...
    3e11:	04 00                	add    $0x0,%al
    3e13:	00 00                	add    %al,(%rax)
    3e15:	00 00                	add    %al,(%rax)
    3e17:	00 0a                	add    %cl,(%rdx)
    3e19:	00 00                	add    %al,(%rax)
    3e1b:	00 00                	add    %al,(%rax)
    3e1d:	00 00                	add    %al,(%rax)
    3e1f:	00 06                	add    %al,(%rsi)
    3e21:	01 00                	add    %eax,(%rax)
    3e23:	00 00                	add    %al,(%rax)
    3e25:	00 00                	add    %al,(%rax)
    3e27:	00 0b                	add    %cl,(%rbx)
    3e29:	00 00                	add    %al,(%rax)
    3e2b:	00 00                	add    %al,(%rax)
    3e2d:	00 00                	add    %al,(%rax)
    3e2f:	00 18                	add    %bl,(%rax)
    3e31:	00 00                	add    %al,(%rax)
    3e33:	00 00                	add    %al,(%rax)
    3e35:	00 00                	add    %al,(%rax)
    3e37:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3e3d <getc@plt+0x2d6d>
	...
    3e45:	00 00                	add    %al,(%rax)
    3e47:	00 03                	add    %al,(%rbx)
    3e49:	00 00                	add    %al,(%rax)
    3e4b:	00 00                	add    %al,(%rax)
    3e4d:	00 00                	add    %al,(%rax)
    3e4f:	00 68 3f             	add    %ch,0x3f(%rax)
    3e52:	00 00                	add    %al,(%rax)
    3e54:	00 00                	add    %al,(%rax)
    3e56:	00 00                	add    %al,(%rax)
    3e58:	02 00                	add    (%rax),%al
    3e5a:	00 00                	add    %al,(%rax)
    3e5c:	00 00                	add    %al,(%rax)
    3e5e:	00 00                	add    %al,(%rax)
    3e60:	08 01                	or     %al,(%rcx)
    3e62:	00 00                	add    %al,(%rax)
    3e64:	00 00                	add    %al,(%rax)
    3e66:	00 00                	add    %al,(%rax)
    3e68:	14 00                	adc    $0x0,%al
    3e6a:	00 00                	add    %al,(%rax)
    3e6c:	00 00                	add    %al,(%rax)
    3e6e:	00 00                	add    %al,(%rax)
    3e70:	07                   	(bad)
    3e71:	00 00                	add    %al,(%rax)
    3e73:	00 00                	add    %al,(%rax)
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 17                	add    %dl,(%rdi)
    3e79:	00 00                	add    %al,(%rax)
    3e7b:	00 00                	add    %al,(%rax)
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 68 08             	add    %ch,0x8(%rax)
    3e82:	00 00                	add    %al,(%rax)
    3e84:	00 00                	add    %al,(%rax)
    3e86:	00 00                	add    %al,(%rax)
    3e88:	07                   	(bad)
    3e89:	00 00                	add    %al,(%rax)
    3e8b:	00 00                	add    %al,(%rax)
    3e8d:	00 00                	add    %al,(%rax)
    3e8f:	00 60 07             	add    %ah,0x7(%rax)
    3e92:	00 00                	add    %al,(%rax)
    3e94:	00 00                	add    %al,(%rax)
    3e96:	00 00                	add    %al,(%rax)
    3e98:	08 00                	or     %al,(%rax)
    3e9a:	00 00                	add    %al,(%rax)
    3e9c:	00 00                	add    %al,(%rax)
    3e9e:	00 00                	add    %al,(%rax)
    3ea0:	08 01                	or     %al,(%rcx)
    3ea2:	00 00                	add    %al,(%rax)
    3ea4:	00 00                	add    %al,(%rax)
    3ea6:	00 00                	add    %al,(%rax)
    3ea8:	09 00                	or     %eax,(%rax)
    3eaa:	00 00                	add    %al,(%rax)
    3eac:	00 00                	add    %al,(%rax)
    3eae:	00 00                	add    %al,(%rax)
    3eb0:	18 00                	sbb    %al,(%rax)
    3eb2:	00 00                	add    %al,(%rax)
    3eb4:	00 00                	add    %al,(%rax)
    3eb6:	00 00                	add    %al,(%rax)
    3eb8:	1e                   	(bad)
    3eb9:	00 00                	add    %al,(%rax)
    3ebb:	00 00                	add    %al,(%rax)
    3ebd:	00 00                	add    %al,(%rax)
    3ebf:	00 08                	add    %cl,(%rax)
    3ec1:	00 00                	add    %al,(%rax)
    3ec3:	00 00                	add    %al,(%rax)
    3ec5:	00 00                	add    %al,(%rax)
    3ec7:	00 fb                	add    %bh,%bl
    3ec9:	ff                   	(bad)
    3eca:	ff 6f 00             	ljmp   *0x0(%rdi)
    3ecd:	00 00                	add    %al,(%rax)
    3ecf:	00 01                	add    %al,(%rcx)
    3ed1:	00 00                	add    %al,(%rax)
    3ed3:	08 00                	or     %al,(%rax)
    3ed5:	00 00                	add    %al,(%rax)
    3ed7:	00 fe                	add    %bh,%dh
    3ed9:	ff                   	(bad)
    3eda:	ff 6f 00             	ljmp   *0x0(%rdi)
    3edd:	00 00                	add    %al,(%rax)
    3edf:	00 10                	add    %dl,(%rax)
    3ee1:	07                   	(bad)
    3ee2:	00 00                	add    %al,(%rax)
    3ee4:	00 00                	add    %al,(%rax)
    3ee6:	00 00                	add    %al,(%rax)
    3ee8:	ff                   	(bad)
    3ee9:	ff                   	(bad)
    3eea:	ff 6f 00             	ljmp   *0x0(%rdi)
    3eed:	00 00                	add    %al,(%rax)
    3eef:	00 01                	add    %al,(%rcx)
    3ef1:	00 00                	add    %al,(%rax)
    3ef3:	00 00                	add    %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 f0                	add    %dh,%al
    3ef9:	ff                   	(bad)
    3efa:	ff 6f 00             	ljmp   *0x0(%rdi)
    3efd:	00 00                	add    %al,(%rax)
    3eff:	00 e6                	add    %ah,%dh
    3f01:	06                   	(bad)
    3f02:	00 00                	add    %al,(%rax)
    3f04:	00 00                	add    %al,(%rax)
    3f06:	00 00                	add    %al,(%rax)
    3f08:	f9                   	stc
    3f09:	ff                   	(bad)
    3f0a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000003f68 <.got>:
    3f68:	78 3d                	js     3fa7 <getc@plt+0x2ed7>
	...
    3f7e:	00 00                	add    %al,(%rax)
    3f80:	36 10 00             	ss adc %al,(%rax)
    3f83:	00 00                	add    %al,(%rax)
    3f85:	00 00                	add    %al,(%rax)
    3f87:	00 46 10             	add    %al,0x10(%rsi)
    3f8a:	00 00                	add    %al,(%rax)
    3f8c:	00 00                	add    %al,(%rax)
    3f8e:	00 00                	add    %al,(%rax)
    3f90:	56                   	push   %rsi
    3f91:	10 00                	adc    %al,(%rax)
    3f93:	00 00                	add    %al,(%rax)
    3f95:	00 00                	add    %al,(%rax)
    3f97:	00 66 10             	add    %ah,0x10(%rsi)
    3f9a:	00 00                	add    %al,(%rax)
    3f9c:	00 00                	add    %al,(%rax)
    3f9e:	00 00                	add    %al,(%rax)
    3fa0:	76 10                	jbe    3fb2 <getc@plt+0x2ee2>
    3fa2:	00 00                	add    %al,(%rax)
    3fa4:	00 00                	add    %al,(%rax)
    3fa6:	00 00                	add    %al,(%rax)
    3fa8:	86 10                	xchg   %dl,(%rax)
    3faa:	00 00                	add    %al,(%rax)
    3fac:	00 00                	add    %al,(%rax)
    3fae:	00 00                	add    %al,(%rax)
    3fb0:	96                   	xchg   %eax,%esi
    3fb1:	10 00                	adc    %al,(%rax)
    3fb3:	00 00                	add    %al,(%rax)
    3fb5:	00 00                	add    %al,(%rax)
    3fb7:	00 a6 10 00 00 00    	add    %ah,0x10(%rsi)
    3fbd:	00 00                	add    %al,(%rax)
    3fbf:	00 b6 10 00 00 00    	add    %dh,0x10(%rsi)
    3fc5:	00 00                	add    %al,(%rax)
    3fc7:	00 c6                	add    %al,%dh
    3fc9:	10 00                	adc    %al,(%rax)
    3fcb:	00 00                	add    %al,(%rax)
    3fcd:	00 00                	add    %al,(%rax)
    3fcf:	00 d6                	add    %dl,%dh
    3fd1:	10 00                	adc    %al,(%rax)
	...

Disassembly of section .data:

0000000000004000 <.data>:
	...
    4008:	08 40 00             	or     %al,0x0(%rax)
    400b:	00 00                	add    %al,(%rax)
    400d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 47 4e             	sub    %al,0x4e(%rdi)
   8:	55                   	push   %rbp
   9:	29 20                	sub    %esp,(%rax)
   b:	31 35 2e 31 2e 31    	xor    %esi,0x312e312e(%rip)        # 312e313f <stderr@GLIBC_2.2.5+0x312df0ff>
  11:	20 32                	and    %dh,(%rdx)
  13:	30 32                	xor    %dh,(%rdx)
  15:	35 30 37 32 39       	xor    $0x39323730,%eax
	...
