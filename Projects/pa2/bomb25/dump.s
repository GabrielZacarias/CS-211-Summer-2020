
./bomb:     file format elf32-i386


Disassembly of section .init:

080486bc <_init>:
 80486bc:	53                   	push   %ebx
 80486bd:	83 ec 08             	sub    $0x8,%esp
 80486c0:	e8 1b 02 00 00       	call   80488e0 <__x86.get_pc_thunk.bx>
 80486c5:	81 c3 3b 39 00 00    	add    $0x393b,%ebx
 80486cb:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80486d1:	85 c0                	test   %eax,%eax
 80486d3:	74 05                	je     80486da <_init+0x1e>
 80486d5:	e8 c6 01 00 00       	call   80488a0 <.plt.got>
 80486da:	83 c4 08             	add    $0x8,%esp
 80486dd:	5b                   	pop    %ebx
 80486de:	c3                   	ret    

Disassembly of section .plt:

080486e0 <.plt>:
 80486e0:	ff 35 04 c0 04 08    	pushl  0x804c004
 80486e6:	ff 25 08 c0 04 08    	jmp    *0x804c008
 80486ec:	00 00                	add    %al,(%eax)
	...

080486f0 <read@plt>:
 80486f0:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 80486f6:	68 00 00 00 00       	push   $0x0
 80486fb:	e9 e0 ff ff ff       	jmp    80486e0 <.plt>

08048700 <printf@plt>:
 8048700:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8048706:	68 08 00 00 00       	push   $0x8
 804870b:	e9 d0 ff ff ff       	jmp    80486e0 <.plt>

08048710 <fflush@plt>:
 8048710:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8048716:	68 10 00 00 00       	push   $0x10
 804871b:	e9 c0 ff ff ff       	jmp    80486e0 <.plt>

08048720 <memcpy@plt>:
 8048720:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8048726:	68 18 00 00 00       	push   $0x18
 804872b:	e9 b0 ff ff ff       	jmp    80486e0 <.plt>

08048730 <fgets@plt>:
 8048730:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8048736:	68 20 00 00 00       	push   $0x20
 804873b:	e9 a0 ff ff ff       	jmp    80486e0 <.plt>

08048740 <signal@plt>:
 8048740:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8048746:	68 28 00 00 00       	push   $0x28
 804874b:	e9 90 ff ff ff       	jmp    80486e0 <.plt>

08048750 <sleep@plt>:
 8048750:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8048756:	68 30 00 00 00       	push   $0x30
 804875b:	e9 80 ff ff ff       	jmp    80486e0 <.plt>

08048760 <alarm@plt>:
 8048760:	ff 25 28 c0 04 08    	jmp    *0x804c028
 8048766:	68 38 00 00 00       	push   $0x38
 804876b:	e9 70 ff ff ff       	jmp    80486e0 <.plt>

08048770 <bcopy@plt>:
 8048770:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 8048776:	68 40 00 00 00       	push   $0x40
 804877b:	e9 60 ff ff ff       	jmp    80486e0 <.plt>

08048780 <strcpy@plt>:
 8048780:	ff 25 30 c0 04 08    	jmp    *0x804c030
 8048786:	68 48 00 00 00       	push   $0x48
 804878b:	e9 50 ff ff ff       	jmp    80486e0 <.plt>

08048790 <gethostname@plt>:
 8048790:	ff 25 34 c0 04 08    	jmp    *0x804c034
 8048796:	68 50 00 00 00       	push   $0x50
 804879b:	e9 40 ff ff ff       	jmp    80486e0 <.plt>

080487a0 <getenv@plt>:
 80487a0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80487a6:	68 58 00 00 00       	push   $0x58
 80487ab:	e9 30 ff ff ff       	jmp    80486e0 <.plt>

080487b0 <puts@plt>:
 80487b0:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 80487b6:	68 60 00 00 00       	push   $0x60
 80487bb:	e9 20 ff ff ff       	jmp    80486e0 <.plt>

080487c0 <exit@plt>:
 80487c0:	ff 25 40 c0 04 08    	jmp    *0x804c040
 80487c6:	68 68 00 00 00       	push   $0x68
 80487cb:	e9 10 ff ff ff       	jmp    80486e0 <.plt>

080487d0 <__libc_start_main@plt>:
 80487d0:	ff 25 44 c0 04 08    	jmp    *0x804c044
 80487d6:	68 70 00 00 00       	push   $0x70
 80487db:	e9 00 ff ff ff       	jmp    80486e0 <.plt>

080487e0 <fprintf@plt>:
 80487e0:	ff 25 48 c0 04 08    	jmp    *0x804c048
 80487e6:	68 78 00 00 00       	push   $0x78
 80487eb:	e9 f0 fe ff ff       	jmp    80486e0 <.plt>

080487f0 <write@plt>:
 80487f0:	ff 25 4c c0 04 08    	jmp    *0x804c04c
 80487f6:	68 80 00 00 00       	push   $0x80
 80487fb:	e9 e0 fe ff ff       	jmp    80486e0 <.plt>

08048800 <strcasecmp@plt>:
 8048800:	ff 25 50 c0 04 08    	jmp    *0x804c050
 8048806:	68 88 00 00 00       	push   $0x88
 804880b:	e9 d0 fe ff ff       	jmp    80486e0 <.plt>

08048810 <__isoc99_sscanf@plt>:
 8048810:	ff 25 54 c0 04 08    	jmp    *0x804c054
 8048816:	68 90 00 00 00       	push   $0x90
 804881b:	e9 c0 fe ff ff       	jmp    80486e0 <.plt>

08048820 <fopen@plt>:
 8048820:	ff 25 58 c0 04 08    	jmp    *0x804c058
 8048826:	68 98 00 00 00       	push   $0x98
 804882b:	e9 b0 fe ff ff       	jmp    80486e0 <.plt>

08048830 <__errno_location@plt>:
 8048830:	ff 25 5c c0 04 08    	jmp    *0x804c05c
 8048836:	68 a0 00 00 00       	push   $0xa0
 804883b:	e9 a0 fe ff ff       	jmp    80486e0 <.plt>

08048840 <sprintf@plt>:
 8048840:	ff 25 60 c0 04 08    	jmp    *0x804c060
 8048846:	68 a8 00 00 00       	push   $0xa8
 804884b:	e9 90 fe ff ff       	jmp    80486e0 <.plt>

08048850 <socket@plt>:
 8048850:	ff 25 64 c0 04 08    	jmp    *0x804c064
 8048856:	68 b0 00 00 00       	push   $0xb0
 804885b:	e9 80 fe ff ff       	jmp    80486e0 <.plt>

08048860 <gethostbyname@plt>:
 8048860:	ff 25 68 c0 04 08    	jmp    *0x804c068
 8048866:	68 b8 00 00 00       	push   $0xb8
 804886b:	e9 70 fe ff ff       	jmp    80486e0 <.plt>

08048870 <connect@plt>:
 8048870:	ff 25 6c c0 04 08    	jmp    *0x804c06c
 8048876:	68 c0 00 00 00       	push   $0xc0
 804887b:	e9 60 fe ff ff       	jmp    80486e0 <.plt>

08048880 <close@plt>:
 8048880:	ff 25 70 c0 04 08    	jmp    *0x804c070
 8048886:	68 c8 00 00 00       	push   $0xc8
 804888b:	e9 50 fe ff ff       	jmp    80486e0 <.plt>

08048890 <__ctype_b_loc@plt>:
 8048890:	ff 25 74 c0 04 08    	jmp    *0x804c074
 8048896:	68 d0 00 00 00       	push   $0xd0
 804889b:	e9 40 fe ff ff       	jmp    80486e0 <.plt>

Disassembly of section .plt.got:

080488a0 <.plt.got>:
 80488a0:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 80488a6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080488b0 <_start>:
 80488b0:	31 ed                	xor    %ebp,%ebp
 80488b2:	5e                   	pop    %esi
 80488b3:	89 e1                	mov    %esp,%ecx
 80488b5:	83 e4 f0             	and    $0xfffffff0,%esp
 80488b8:	50                   	push   %eax
 80488b9:	54                   	push   %esp
 80488ba:	52                   	push   %edx
 80488bb:	68 e0 9f 04 08       	push   $0x8049fe0
 80488c0:	68 70 9f 04 08       	push   $0x8049f70
 80488c5:	51                   	push   %ecx
 80488c6:	56                   	push   %esi
 80488c7:	68 ad 89 04 08       	push   $0x80489ad
 80488cc:	e8 ff fe ff ff       	call   80487d0 <__libc_start_main@plt>
 80488d1:	f4                   	hlt    
 80488d2:	66 90                	xchg   %ax,%ax
 80488d4:	66 90                	xchg   %ax,%ax
 80488d6:	66 90                	xchg   %ax,%ax
 80488d8:	66 90                	xchg   %ax,%ax
 80488da:	66 90                	xchg   %ax,%ax
 80488dc:	66 90                	xchg   %ax,%ax
 80488de:	66 90                	xchg   %ax,%ax

080488e0 <__x86.get_pc_thunk.bx>:
 80488e0:	8b 1c 24             	mov    (%esp),%ebx
 80488e3:	c3                   	ret    
 80488e4:	66 90                	xchg   %ax,%ax
 80488e6:	66 90                	xchg   %ax,%ax
 80488e8:	66 90                	xchg   %ax,%ax
 80488ea:	66 90                	xchg   %ax,%ax
 80488ec:	66 90                	xchg   %ax,%ax
 80488ee:	66 90                	xchg   %ax,%ax

080488f0 <deregister_tm_clones>:
 80488f0:	b8 23 c7 04 08       	mov    $0x804c723,%eax
 80488f5:	2d 20 c7 04 08       	sub    $0x804c720,%eax
 80488fa:	83 f8 06             	cmp    $0x6,%eax
 80488fd:	77 01                	ja     8048900 <deregister_tm_clones+0x10>
 80488ff:	c3                   	ret    
 8048900:	b8 00 00 00 00       	mov    $0x0,%eax
 8048905:	85 c0                	test   %eax,%eax
 8048907:	74 f6                	je     80488ff <deregister_tm_clones+0xf>
 8048909:	55                   	push   %ebp
 804890a:	89 e5                	mov    %esp,%ebp
 804890c:	83 ec 18             	sub    $0x18,%esp
 804890f:	c7 04 24 20 c7 04 08 	movl   $0x804c720,(%esp)
 8048916:	ff d0                	call   *%eax
 8048918:	c9                   	leave  
 8048919:	c3                   	ret    
 804891a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048920 <register_tm_clones>:
 8048920:	b8 20 c7 04 08       	mov    $0x804c720,%eax
 8048925:	2d 20 c7 04 08       	sub    $0x804c720,%eax
 804892a:	c1 f8 02             	sar    $0x2,%eax
 804892d:	89 c2                	mov    %eax,%edx
 804892f:	c1 ea 1f             	shr    $0x1f,%edx
 8048932:	01 d0                	add    %edx,%eax
 8048934:	d1 f8                	sar    %eax
 8048936:	75 01                	jne    8048939 <register_tm_clones+0x19>
 8048938:	c3                   	ret    
 8048939:	ba 00 00 00 00       	mov    $0x0,%edx
 804893e:	85 d2                	test   %edx,%edx
 8048940:	74 f6                	je     8048938 <register_tm_clones+0x18>
 8048942:	55                   	push   %ebp
 8048943:	89 e5                	mov    %esp,%ebp
 8048945:	83 ec 18             	sub    $0x18,%esp
 8048948:	89 44 24 04          	mov    %eax,0x4(%esp)
 804894c:	c7 04 24 20 c7 04 08 	movl   $0x804c720,(%esp)
 8048953:	ff d2                	call   *%edx
 8048955:	c9                   	leave  
 8048956:	c3                   	ret    
 8048957:	89 f6                	mov    %esi,%esi
 8048959:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048960 <__do_global_dtors_aux>:
 8048960:	80 3d 44 c7 04 08 00 	cmpb   $0x0,0x804c744
 8048967:	75 13                	jne    804897c <__do_global_dtors_aux+0x1c>
 8048969:	55                   	push   %ebp
 804896a:	89 e5                	mov    %esp,%ebp
 804896c:	83 ec 08             	sub    $0x8,%esp
 804896f:	e8 7c ff ff ff       	call   80488f0 <deregister_tm_clones>
 8048974:	c6 05 44 c7 04 08 01 	movb   $0x1,0x804c744
 804897b:	c9                   	leave  
 804897c:	f3 c3                	repz ret 
 804897e:	66 90                	xchg   %ax,%ax

08048980 <frame_dummy>:
 8048980:	a1 10 bf 04 08       	mov    0x804bf10,%eax
 8048985:	85 c0                	test   %eax,%eax
 8048987:	74 1f                	je     80489a8 <frame_dummy+0x28>
 8048989:	b8 00 00 00 00       	mov    $0x0,%eax
 804898e:	85 c0                	test   %eax,%eax
 8048990:	74 16                	je     80489a8 <frame_dummy+0x28>
 8048992:	55                   	push   %ebp
 8048993:	89 e5                	mov    %esp,%ebp
 8048995:	83 ec 18             	sub    $0x18,%esp
 8048998:	c7 04 24 10 bf 04 08 	movl   $0x804bf10,(%esp)
 804899f:	ff d0                	call   *%eax
 80489a1:	c9                   	leave  
 80489a2:	e9 79 ff ff ff       	jmp    8048920 <register_tm_clones>
 80489a7:	90                   	nop
 80489a8:	e9 73 ff ff ff       	jmp    8048920 <register_tm_clones>

080489ad <main>:
 80489ad:	55                   	push   %ebp
 80489ae:	89 e5                	mov    %esp,%ebp
 80489b0:	53                   	push   %ebx
 80489b1:	83 e4 f0             	and    $0xfffffff0,%esp
 80489b4:	83 ec 10             	sub    $0x10,%esp
 80489b7:	8b 45 08             	mov    0x8(%ebp),%eax
 80489ba:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 80489bd:	83 f8 01             	cmp    $0x1,%eax
 80489c0:	75 0c                	jne    80489ce <main+0x21>
 80489c2:	a1 24 c7 04 08       	mov    0x804c724,%eax
 80489c7:	a3 4c c7 04 08       	mov    %eax,0x804c74c
 80489cc:	eb 64                	jmp    8048a32 <main+0x85>
 80489ce:	83 f8 02             	cmp    $0x2,%eax
 80489d1:	75 41                	jne    8048a14 <main+0x67>
 80489d3:	c7 44 24 04 0c a0 04 	movl   $0x804a00c,0x4(%esp)
 80489da:	08 
 80489db:	8b 43 04             	mov    0x4(%ebx),%eax
 80489de:	89 04 24             	mov    %eax,(%esp)
 80489e1:	e8 3a fe ff ff       	call   8048820 <fopen@plt>
 80489e6:	a3 4c c7 04 08       	mov    %eax,0x804c74c
 80489eb:	85 c0                	test   %eax,%eax
 80489ed:	75 43                	jne    8048a32 <main+0x85>
 80489ef:	8b 43 04             	mov    0x4(%ebx),%eax
 80489f2:	89 44 24 08          	mov    %eax,0x8(%esp)
 80489f6:	8b 03                	mov    (%ebx),%eax
 80489f8:	89 44 24 04          	mov    %eax,0x4(%esp)
 80489fc:	c7 04 24 0e a0 04 08 	movl   $0x804a00e,(%esp)
 8048a03:	e8 f8 fc ff ff       	call   8048700 <printf@plt>
 8048a08:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a0f:	e8 ac fd ff ff       	call   80487c0 <exit@plt>
 8048a14:	8b 03                	mov    (%ebx),%eax
 8048a16:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048a1a:	c7 04 24 2b a0 04 08 	movl   $0x804a02b,(%esp)
 8048a21:	e8 da fc ff ff       	call   8048700 <printf@plt>
 8048a26:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a2d:	e8 8e fd ff ff       	call   80487c0 <exit@plt>
 8048a32:	e8 4f 05 00 00       	call   8048f86 <initialize_bomb>
 8048a37:	c7 04 24 80 a0 04 08 	movl   $0x804a080,(%esp)
 8048a3e:	e8 6d fd ff ff       	call   80487b0 <puts@plt>
 8048a43:	c7 04 24 bc a0 04 08 	movl   $0x804a0bc,(%esp)
 8048a4a:	e8 61 fd ff ff       	call   80487b0 <puts@plt>
 8048a4f:	e8 f0 07 00 00       	call   8049244 <read_line>
 8048a54:	89 04 24             	mov    %eax,(%esp)
 8048a57:	e8 b4 00 00 00       	call   8048b10 <phase_1>
 8048a5c:	e8 17 09 00 00       	call   8049378 <phase_defused>
 8048a61:	c7 04 24 e8 a0 04 08 	movl   $0x804a0e8,(%esp)
 8048a68:	e8 43 fd ff ff       	call   80487b0 <puts@plt>
 8048a6d:	e8 d2 07 00 00       	call   8049244 <read_line>
 8048a72:	89 04 24             	mov    %eax,(%esp)
 8048a75:	e8 da 00 00 00       	call   8048b54 <phase_2>
 8048a7a:	e8 f9 08 00 00       	call   8049378 <phase_defused>
 8048a7f:	c7 04 24 45 a0 04 08 	movl   $0x804a045,(%esp)
 8048a86:	e8 25 fd ff ff       	call   80487b0 <puts@plt>
 8048a8b:	e8 b4 07 00 00       	call   8049244 <read_line>
 8048a90:	89 04 24             	mov    %eax,(%esp)
 8048a93:	e8 e0 00 00 00       	call   8048b78 <phase_3>
 8048a98:	e8 db 08 00 00       	call   8049378 <phase_defused>
 8048a9d:	c7 04 24 63 a0 04 08 	movl   $0x804a063,(%esp)
 8048aa4:	e8 07 fd ff ff       	call   80487b0 <puts@plt>
 8048aa9:	e8 96 07 00 00       	call   8049244 <read_line>
 8048aae:	89 04 24             	mov    %eax,(%esp)
 8048ab1:	e8 10 01 00 00       	call   8048bc6 <phase_4>
 8048ab6:	e8 bd 08 00 00       	call   8049378 <phase_defused>
 8048abb:	c7 04 24 14 a1 04 08 	movl   $0x804a114,(%esp)
 8048ac2:	e8 e9 fc ff ff       	call   80487b0 <puts@plt>
 8048ac7:	e8 78 07 00 00       	call   8049244 <read_line>
 8048acc:	89 04 24             	mov    %eax,(%esp)
 8048acf:	e8 4b 02 00 00       	call   8048d1f <phase_5>
 8048ad4:	e8 9f 08 00 00       	call   8049378 <phase_defused>
 8048ad9:	c7 04 24 74 a0 04 08 	movl   $0x804a074,(%esp)
 8048ae0:	e8 cb fc ff ff       	call   80487b0 <puts@plt>
 8048ae5:	e8 5a 07 00 00       	call   8049244 <read_line>
 8048aea:	89 04 24             	mov    %eax,(%esp)
 8048aed:	e8 a1 02 00 00       	call   8048d93 <phase_6>
 8048af2:	e8 81 08 00 00       	call   8049378 <phase_defused>
 8048af7:	b8 00 00 00 00       	mov    $0x0,%eax
 8048afc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048aff:	c9                   	leave  
 8048b00:	c3                   	ret    
 8048b01:	66 90                	xchg   %ax,%ax
 8048b03:	66 90                	xchg   %ax,%ax
 8048b05:	66 90                	xchg   %ax,%ax
 8048b07:	66 90                	xchg   %ax,%ax
 8048b09:	66 90                	xchg   %ax,%ax
 8048b0b:	66 90                	xchg   %ax,%ax
 8048b0d:	66 90                	xchg   %ax,%ax
 8048b0f:	90                   	nop

08048b10 <phase_1>:
 8048b10:	83 ec 2c             	sub    $0x2c,%esp
 8048b13:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
 8048b1a:	00 
 8048b1b:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048b1f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048b23:	c7 44 24 04 3e a1 04 	movl   $0x804a13e,0x4(%esp)
 8048b2a:	08 
 8048b2b:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048b2f:	89 04 24             	mov    %eax,(%esp)
 8048b32:	e8 d9 fc ff ff       	call   8048810 <__isoc99_sscanf@plt>
 8048b37:	83 f8 01             	cmp    $0x1,%eax
 8048b3a:	74 05                	je     8048b41 <phase_1+0x31>
 8048b3c:	e8 74 06 00 00       	call   80491b5 <explode_bomb>
 8048b41:	81 7c 24 1c d8 03 00 	cmpl   $0x3d8,0x1c(%esp)
 8048b48:	00 
 8048b49:	74 05                	je     8048b50 <phase_1+0x40>
 8048b4b:	e8 65 06 00 00       	call   80491b5 <explode_bomb>
 8048b50:	83 c4 2c             	add    $0x2c,%esp
 8048b53:	c3                   	ret    

08048b54 <phase_2>:
 8048b54:	83 ec 1c             	sub    $0x1c,%esp
 8048b57:	c7 44 24 04 44 a1 04 	movl   $0x804a144,0x4(%esp)
 8048b5e:	08 
 8048b5f:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048b63:	89 04 24             	mov    %eax,(%esp)
 8048b66:	e8 af 03 00 00       	call   8048f1a <strings_not_equal>
 8048b6b:	85 c0                	test   %eax,%eax
 8048b6d:	74 05                	je     8048b74 <phase_2+0x20>
 8048b6f:	e8 41 06 00 00       	call   80491b5 <explode_bomb>
 8048b74:	83 c4 1c             	add    $0x1c,%esp
 8048b77:	c3                   	ret    

08048b78 <phase_3>:
 8048b78:	53                   	push   %ebx
 8048b79:	83 ec 38             	sub    $0x38,%esp
 8048b7c:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048b80:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048b84:	8b 44 24 40          	mov    0x40(%esp),%eax
 8048b88:	89 04 24             	mov    %eax,(%esp)
 8048b8b:	e8 64 06 00 00       	call   80491f4 <read_six_numbers>
 8048b90:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 8048b95:	79 23                	jns    8048bba <phase_3+0x42>
 8048b97:	e8 19 06 00 00       	call   80491b5 <explode_bomb>
 8048b9c:	eb 1c                	jmp    8048bba <phase_3+0x42>
 8048b9e:	8b 44 9c 14          	mov    0x14(%esp,%ebx,4),%eax
 8048ba2:	8d 04 d8             	lea    (%eax,%ebx,8),%eax
 8048ba5:	39 44 9c 18          	cmp    %eax,0x18(%esp,%ebx,4)
 8048ba9:	74 05                	je     8048bb0 <phase_3+0x38>
 8048bab:	e8 05 06 00 00       	call   80491b5 <explode_bomb>
 8048bb0:	83 c3 01             	add    $0x1,%ebx
 8048bb3:	83 fb 06             	cmp    $0x6,%ebx
 8048bb6:	75 e6                	jne    8048b9e <phase_3+0x26>
 8048bb8:	eb 07                	jmp    8048bc1 <phase_3+0x49>
 8048bba:	bb 01 00 00 00       	mov    $0x1,%ebx
 8048bbf:	eb dd                	jmp    8048b9e <phase_3+0x26>
 8048bc1:	83 c4 38             	add    $0x38,%esp
 8048bc4:	5b                   	pop    %ebx
 8048bc5:	c3                   	ret    

08048bc6 <phase_4>:
 8048bc6:	83 ec 3c             	sub    $0x3c,%esp
 8048bc9:	8d 44 24 28          	lea    0x28(%esp),%eax
 8048bcd:	89 44 24 10          	mov    %eax,0x10(%esp)
 8048bd1:	8d 44 24 27          	lea    0x27(%esp),%eax
 8048bd5:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048bd9:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 8048bdd:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048be1:	c7 44 24 04 38 a1 04 	movl   $0x804a138,0x4(%esp)
 8048be9:	8b 44 24 40          	mov    0x40(%esp),%eax
 8048bed:	89 04 24             	mov    %eax,(%esp)
 8048bf0:	e8 1b fc ff ff       	call   8048810 <__isoc99_sscanf@plt>
 8048bf5:	83 f8 02             	cmp    $0x2,%eax
 8048bf8:	7f 05                	jg     8048bff <phase_4+0x39>
 8048bfa:	e8 b6 05 00 00       	call   80491b5 <explode_bomb>

 8048bff:	83 7c 24 2c 07       	cmpl   $0x7,0x2c(%esp)
 8048c04:	0f 87 fc 00 00 00    	ja     8048d06 <phase_4+0x140>
 8048c0a:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8048c0e:	ff 24 85 80 a1 04 08 	jmp    *0x804a180(,%eax,4)
 8048c15:	b8 68 00 00 00       	mov    $0x68,%eax
 
 8048c1a:	81 7c 24 28 c8 01 00 	cmpl   $0x1c8,0x28(%esp)
 8048c22:	0f 84 e8 00 00 00    	je     8048d10 <phase_4+0x14a>
 8048c28:	e8 88 05 00 00       	call   80491b5 <explode_bomb>
 8048c2d:	b8 68 00 00 00       	mov    $0x68,%eax
 8048c32:	e9 d9 00 00 00       	jmp    8048d10 <phase_4+0x14a>
 8048c37:	b8 68 00 00 00       	mov    $0x68,%eax
 8048c3c:	81 7c 24 28 1b 02 00 	cmpl   $0x21b,0x28(%esp)
 8048c43:	00 
 8048c44:	0f 84 c6 00 00 00    	je     8048d10 <phase_4+0x14a>
 8048c4a:	e8 66 05 00 00       	call   80491b5 <explode_bomb>
 8048c4f:	b8 68 00 00 00       	mov    $0x68,%eax
 8048c54:	e9 b7 00 00 00       	jmp    8048d10 <phase_4+0x14a>
 8048c59:	b8 72 00 00 00       	mov    $0x72,%eax
 8048c5e:	81 7c 24 28 82 02 00 	cmpl   $0x282,0x28(%esp)
 8048c65:	00 
 8048c66:	0f 84 a4 00 00 00    	je     8048d10 <phase_4+0x14a>
 8048c6c:	e8 44 05 00 00       	call   80491b5 <explode_bomb>
 8048c71:	b8 72 00 00 00       	mov    $0x72,%eax
 8048c76:	e9 95 00 00 00       	jmp    8048d10 <phase_4+0x14a>
 8048c7b:	b8 79 00 00 00       	mov    $0x79,%eax
 8048c80:	81 7c 24 28 3e 02 00 	cmpl   $0x23e,0x28(%esp)
 8048c87:	00 
 8048c88:	0f 84 82 00 00 00    	je     8048d10 <phase_4+0x14a>
 8048c8e:	e8 22 05 00 00       	call   80491b5 <explode_bomb>
 8048c93:	b8 79 00 00 00       	mov    $0x79,%eax
 8048c98:	eb 76                	jmp    8048d10 <phase_4+0x14a>
 8048c9a:	b8 61 00 00 00       	mov    $0x61,%eax
 8048c9f:	81 7c 24 28 0b 02 00 	cmpl   $0x20b,0x28(%esp)
 8048ca6:	00 
 8048ca7:	74 67                	je     8048d10 <phase_4+0x14a>
 8048ca9:	e8 07 05 00 00       	call   80491b5 <explode_bomb>
 8048cae:	b8 61 00 00 00       	mov    $0x61,%eax
 8048cb3:	eb 5b                	jmp    8048d10 <phase_4+0x14a>
 8048cb5:	b8 6b 00 00 00       	mov    $0x6b,%eax
 8048cba:	81 7c 24 28 89 03 00 	cmpl   $0x389,0x28(%esp)
 8048cc1:	00 
 8048cc2:	74 4c                	je     8048d10 <phase_4+0x14a>
 8048cc4:	e8 ec 04 00 00       	call   80491b5 <explode_bomb>
 8048cc9:	b8 6b 00 00 00       	mov    $0x6b,%eax
 8048cce:	eb 40                	jmp    8048d10 <phase_4+0x14a>
 8048cd0:	b8 64 00 00 00       	mov    $0x64,%eax
 8048cd5:	81 7c 24 28 eb 01 00 	cmpl   $0x1eb,0x28(%esp)
 8048cdc:	00 
 8048cdd:	74 31                	je     8048d10 <phase_4+0x14a>
 8048cdf:	e8 d1 04 00 00       	call   80491b5 <explode_bomb>
 8048ce4:	b8 64 00 00 00       	mov    $0x64,%eax
 8048ce9:	eb 25                	jmp    8048d10 <phase_4+0x14a>
 8048ceb:	b8 77 00 00 00       	mov    $0x77,%eax
 8048cf0:	81 7c 24 28 a1 02 00 	cmpl   $0x2a1,0x28(%esp)
 8048cf7:	00 
 8048cf8:	74 16                	je     8048d10 <phase_4+0x14a>
 8048cfa:	e8 b6 04 00 00       	call   80491b5 <explode_bomb>
 8048cff:	b8 77 00 00 00       	mov    $0x77,%eax
 8048d04:	eb 0a                	jmp    8048d10 <phase_4+0x14a>
 8048d06:	e8 aa 04 00 00       	call   80491b5 <explode_bomb>
 8048d0b:	b8 67 00 00 00       	mov    $0x67,%eax
 8048d10:	3a 44 24 27          	cmp    0x27(%esp),%al
 8048d14:	74 05                	je     8048d1b <phase_4+0x155>
 8048d16:	e8 9a 04 00 00       	call   80491b5 <explode_bomb>
 8048d1b:	83 c4 3c             	add    $0x3c,%esp
 8048d1e:	c3                   	ret    

08048d1f <phase_5>:
 8048d1f:	83 ec 2c             	sub    $0x2c,%esp
 8048d22:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048d26:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048d2a:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048d2e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048d32:	c7 44 24 04 c1 a3 04 	movl   $0x804a3c1,0x4(%esp)
 8048d39:	08 
 8048d3a:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048d3e:	89 04 24             	mov    %eax,(%esp)
 8048d41:	e8 ca fa ff ff       	call   8048810 <__isoc99_sscanf@plt>
 8048d46:	83 f8 01             	cmp    $0x1,%eax
 8048d49:	7f 05                	jg     8048d50 <phase_5+0x31>
 8048d4b:	e8 65 04 00 00       	call   80491b5 <explode_bomb>
 8048d50:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048d54:	83 e0 0f             	and    $0xf,%eax
 8048d57:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8048d5b:	83 f8 0f             	cmp    $0xf,%eax
 8048d5e:	74 2a                	je     8048d8a <phase_5+0x6b>
 8048d60:	b9 00 00 00 00       	mov    $0x0,%ecx
 8048d65:	ba 00 00 00 00       	mov    $0x0,%edx
 8048d6a:	83 c2 01             	add    $0x1,%edx
 8048d6d:	8b 04 85 a0 a1 04 08 	mov    0x804a1a0(,%eax,4),%eax
 8048d74:	01 c1                	add    %eax,%ecx
 8048d76:	83 f8 0f             	cmp    $0xf,%eax
 8048d79:	75 ef                	jne    8048d6a <phase_5+0x4b>
 8048d7b:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8048d7f:	83 fa 03             	cmp    $0x3,%edx
 8048d82:	75 06                	jne    8048d8a <phase_5+0x6b>
 8048d84:	3b 4c 24 18          	cmp    0x18(%esp),%ecx
 8048d88:	74 05                	je     8048d8f <phase_5+0x70>
 8048d8a:	e8 26 04 00 00       	call   80491b5 <explode_bomb>
 8048d8f:	83 c4 2c             	add    $0x2c,%esp
 8048d92:	c3                   	ret    

08048d93 <phase_6>:
 8048d93:	56                   	push   %esi
 8048d94:	53                   	push   %ebx
 8048d95:	83 ec 44             	sub    $0x44,%esp
 8048d98:	8d 44 24 28          	lea    0x28(%esp),%eax
 8048d9c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048da0:	8b 44 24 50          	mov    0x50(%esp),%eax
 8048da4:	89 04 24             	mov    %eax,(%esp)
 8048da7:	e8 48 04 00 00       	call   80491f4 <read_six_numbers>
 8048dac:	be 00 00 00 00       	mov    $0x0,%esi
 8048db1:	8b 44 b4 28          	mov    0x28(%esp,%esi,4),%eax
 8048db5:	83 e8 01             	sub    $0x1,%eax
 8048db8:	83 f8 05             	cmp    $0x5,%eax
 8048dbb:	76 05                	jbe    8048dc2 <phase_6+0x2f>
 8048dbd:	e8 f3 03 00 00       	call   80491b5 <explode_bomb>
 8048dc2:	83 c6 01             	add    $0x1,%esi
 8048dc5:	83 fe 06             	cmp    $0x6,%esi
 8048dc8:	74 1b                	je     8048de5 <phase_6+0x52>
 8048dca:	89 f3                	mov    %esi,%ebx
 8048dcc:	8b 44 9c 28          	mov    0x28(%esp,%ebx,4),%eax
 8048dd0:	39 44 b4 24          	cmp    %eax,0x24(%esp,%esi,4)
 8048dd4:	75 05                	jne    8048ddb <phase_6+0x48>
 8048dd6:	e8 da 03 00 00       	call   80491b5 <explode_bomb>
 8048ddb:	83 c3 01             	add    $0x1,%ebx
 8048dde:	83 fb 05             	cmp    $0x5,%ebx
 8048de1:	7e e9                	jle    8048dcc <phase_6+0x39>
 8048de3:	eb cc                	jmp    8048db1 <phase_6+0x1e>
 8048de5:	8d 44 24 28          	lea    0x28(%esp),%eax
 8048de9:	8d 5c 24 40          	lea    0x40(%esp),%ebx
 8048ded:	b9 07 00 00 00       	mov    $0x7,%ecx
 8048df2:	89 ca                	mov    %ecx,%edx
 8048df4:	2b 10                	sub    (%eax),%edx
 8048df6:	89 10                	mov    %edx,(%eax)
 8048df8:	83 c0 04             	add    $0x4,%eax
 8048dfb:	39 d8                	cmp    %ebx,%eax
 8048dfd:	75 f3                	jne    8048df2 <phase_6+0x5f>
 8048dff:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048e04:	eb 1d                	jmp    8048e23 <phase_6+0x90>
 8048e06:	8b 52 08             	mov    0x8(%edx),%edx
 8048e09:	83 c0 01             	add    $0x1,%eax
 8048e0c:	39 c8                	cmp    %ecx,%eax
 8048e0e:	75 f6                	jne    8048e06 <phase_6+0x73>
 8048e10:	eb 05                	jmp    8048e17 <phase_6+0x84>
 8048e12:	ba a0 c0 04 08       	mov    $0x804c0a0,%edx
 8048e17:	89 54 b4 10          	mov    %edx,0x10(%esp,%esi,4)
 8048e1b:	83 c3 01             	add    $0x1,%ebx
 8048e1e:	83 fb 06             	cmp    $0x6,%ebx
 8048e21:	74 17                	je     8048e3a <phase_6+0xa7>
 8048e23:	89 de                	mov    %ebx,%esi
 8048e25:	8b 4c 9c 28          	mov    0x28(%esp,%ebx,4),%ecx
 8048e29:	83 f9 01             	cmp    $0x1,%ecx
 8048e2c:	7e e4                	jle    8048e12 <phase_6+0x7f>
 8048e2e:	b8 01 00 00 00       	mov    $0x1,%eax
 8048e33:	ba a0 c0 04 08       	mov    $0x804c0a0,%edx
 8048e38:	eb cc                	jmp    8048e06 <phase_6+0x73>
 8048e3a:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8048e3e:	8d 44 24 14          	lea    0x14(%esp),%eax
 8048e42:	8d 74 24 28          	lea    0x28(%esp),%esi
 8048e46:	89 d9                	mov    %ebx,%ecx
 8048e48:	8b 10                	mov    (%eax),%edx
 8048e4a:	89 51 08             	mov    %edx,0x8(%ecx)
 8048e4d:	83 c0 04             	add    $0x4,%eax
 8048e50:	39 f0                	cmp    %esi,%eax
 8048e52:	74 04                	je     8048e58 <phase_6+0xc5>
 8048e54:	89 d1                	mov    %edx,%ecx
 8048e56:	eb f0                	jmp    8048e48 <phase_6+0xb5>
 8048e58:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 8048e5f:	be 05 00 00 00       	mov    $0x5,%esi
 8048e64:	8b 43 08             	mov    0x8(%ebx),%eax
 8048e67:	8b 00                	mov    (%eax),%eax
 8048e69:	39 03                	cmp    %eax,(%ebx)
 8048e6b:	7d 05                	jge    8048e72 <phase_6+0xdf>
 8048e6d:	e8 43 03 00 00       	call   80491b5 <explode_bomb>
 8048e72:	8b 5b 08             	mov    0x8(%ebx),%ebx
 8048e75:	83 ee 01             	sub    $0x1,%esi
 8048e78:	75 ea                	jne    8048e64 <phase_6+0xd1>
 8048e7a:	83 c4 44             	add    $0x44,%esp
 8048e7d:	5b                   	pop    %ebx
 8048e7e:	5e                   	pop    %esi
 8048e7f:	c3                   	ret    

08048e80 <sig_handler>:
 8048e80:	83 ec 1c             	sub    $0x1c,%esp
 8048e83:	c7 04 24 e0 a1 04 08 	movl   $0x804a1e0,(%esp)
 8048e8a:	e8 21 f9 ff ff       	call   80487b0 <puts@plt>
 8048e8f:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048e96:	e8 b5 f8 ff ff       	call   8048750 <sleep@plt>
 8048e9b:	c7 04 24 3d a3 04 08 	movl   $0x804a33d,(%esp)
 8048ea2:	e8 59 f8 ff ff       	call   8048700 <printf@plt>
 8048ea7:	a1 40 c7 04 08       	mov    0x804c740,%eax
 8048eac:	89 04 24             	mov    %eax,(%esp)
 8048eaf:	e8 5c f8 ff ff       	call   8048710 <fflush@plt>
 8048eb4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048ebb:	e8 90 f8 ff ff       	call   8048750 <sleep@plt>
 8048ec0:	c7 04 24 45 a3 04 08 	movl   $0x804a345,(%esp)
 8048ec7:	e8 e4 f8 ff ff       	call   80487b0 <puts@plt>
 8048ecc:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 8048ed3:	e8 e8 f8 ff ff       	call   80487c0 <exit@plt>

08048ed8 <invalid_phase>:
 8048ed8:	83 ec 1c             	sub    $0x1c,%esp
 8048edb:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048edf:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048ee3:	c7 04 24 4d a3 04 08 	movl   $0x804a34d,(%esp)
 8048eea:	e8 11 f8 ff ff       	call   8048700 <printf@plt>
 8048eef:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048ef6:	e8 c5 f8 ff ff       	call   80487c0 <exit@plt>

08048efb <string_length>:
 8048efb:	8b 54 24 04          	mov    0x4(%esp),%edx
 8048eff:	80 3a 00             	cmpb   $0x0,(%edx)
 8048f02:	74 10                	je     8048f14 <string_length+0x19>
 8048f04:	b8 00 00 00 00       	mov    $0x0,%eax
 8048f09:	83 c0 01             	add    $0x1,%eax
 8048f0c:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 8048f10:	75 f7                	jne    8048f09 <string_length+0xe>
 8048f12:	f3 c3                	repz ret 
 8048f14:	b8 00 00 00 00       	mov    $0x0,%eax
 8048f19:	c3                   	ret    

08048f1a <strings_not_equal>:
 8048f1a:	57                   	push   %edi
 8048f1b:	56                   	push   %esi
 8048f1c:	53                   	push   %ebx
 8048f1d:	83 ec 04             	sub    $0x4,%esp
 8048f20:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 8048f24:	8b 74 24 18          	mov    0x18(%esp),%esi
 8048f28:	89 1c 24             	mov    %ebx,(%esp)
 8048f2b:	e8 cb ff ff ff       	call   8048efb <string_length>
 8048f30:	89 c7                	mov    %eax,%edi
 8048f32:	89 34 24             	mov    %esi,(%esp)
 8048f35:	e8 c1 ff ff ff       	call   8048efb <string_length>
 8048f3a:	ba 01 00 00 00       	mov    $0x1,%edx
 8048f3f:	39 c7                	cmp    %eax,%edi
 8048f41:	75 3a                	jne    8048f7d <strings_not_equal+0x63>
 8048f43:	0f b6 03             	movzbl (%ebx),%eax
 8048f46:	84 c0                	test   %al,%al
 8048f48:	74 20                	je     8048f6a <strings_not_equal+0x50>
 8048f4a:	3a 06                	cmp    (%esi),%al
 8048f4c:	74 08                	je     8048f56 <strings_not_equal+0x3c>
 8048f4e:	66 90                	xchg   %ax,%ax
 8048f50:	eb 1f                	jmp    8048f71 <strings_not_equal+0x57>
 8048f52:	3a 06                	cmp    (%esi),%al
 8048f54:	75 22                	jne    8048f78 <strings_not_equal+0x5e>
 8048f56:	83 c3 01             	add    $0x1,%ebx
 8048f59:	83 c6 01             	add    $0x1,%esi
 8048f5c:	0f b6 03             	movzbl (%ebx),%eax
 8048f5f:	84 c0                	test   %al,%al
 8048f61:	75 ef                	jne    8048f52 <strings_not_equal+0x38>
 8048f63:	ba 00 00 00 00       	mov    $0x0,%edx
 8048f68:	eb 13                	jmp    8048f7d <strings_not_equal+0x63>
 8048f6a:	ba 00 00 00 00       	mov    $0x0,%edx
 8048f6f:	eb 0c                	jmp    8048f7d <strings_not_equal+0x63>
 8048f71:	ba 01 00 00 00       	mov    $0x1,%edx
 8048f76:	eb 05                	jmp    8048f7d <strings_not_equal+0x63>
 8048f78:	ba 01 00 00 00       	mov    $0x1,%edx
 8048f7d:	89 d0                	mov    %edx,%eax
 8048f7f:	83 c4 04             	add    $0x4,%esp
 8048f82:	5b                   	pop    %ebx
 8048f83:	5e                   	pop    %esi
 8048f84:	5f                   	pop    %edi
 8048f85:	c3                   	ret    

08048f86 <initialize_bomb>:
 8048f86:	56                   	push   %esi
 8048f87:	53                   	push   %ebx
 8048f88:	81 ec 54 20 00 00    	sub    $0x2054,%esp
 8048f8e:	c7 44 24 04 80 8e 04 	movl   $0x8048e80,0x4(%esp)
 8048f95:	08 
 8048f96:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8048f9d:	e8 9e f7 ff ff       	call   8048740 <signal@plt>
 8048fa2:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
 8048fa9:	00 
 8048faa:	8d 84 24 10 20 00 00 	lea    0x2010(%esp),%eax
 8048fb1:	89 04 24             	mov    %eax,(%esp)
 8048fb4:	e8 d7 f7 ff ff       	call   8048790 <gethostname@plt>
 8048fb9:	85 c0                	test   %eax,%eax
 8048fbb:	75 17                	jne    8048fd4 <initialize_bomb+0x4e>
 8048fbd:	a1 20 c5 04 08       	mov    0x804c520,%eax
 8048fc2:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048fc7:	8d b4 24 10 20 00 00 	lea    0x2010(%esp),%esi
 8048fce:	85 c0                	test   %eax,%eax
 8048fd0:	75 1a                	jne    8048fec <initialize_bomb+0x66>
 8048fd2:	eb 58                	jmp    804902c <initialize_bomb+0xa6>
 8048fd4:	c7 04 24 18 a2 04 08 	movl   $0x804a218,(%esp)
 8048fdb:	e8 d0 f7 ff ff       	call   80487b0 <puts@plt>
 8048fe0:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048fe7:	e8 d4 f7 ff ff       	call   80487c0 <exit@plt>
 8048fec:	89 74 24 04          	mov    %esi,0x4(%esp)
 8048ff0:	89 04 24             	mov    %eax,(%esp)
 8048ff3:	e8 08 f8 ff ff       	call   8048800 <strcasecmp@plt>
 8048ff8:	85 c0                	test   %eax,%eax
 8048ffa:	74 48                	je     8049044 <initialize_bomb+0xbe>
 8048ffc:	83 c3 01             	add    $0x1,%ebx
 8048fff:	8b 04 9d 20 c5 04 08 	mov    0x804c520(,%ebx,4),%eax
 8049006:	85 c0                	test   %eax,%eax
 8049008:	75 e2                	jne    8048fec <initialize_bomb+0x66>
 804900a:	eb 20                	jmp    804902c <initialize_bomb+0xa6>
 804900c:	8d 44 24 10          	lea    0x10(%esp),%eax
 8049010:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049014:	c7 04 24 5e a3 04 08 	movl   $0x804a35e,(%esp)
 804901b:	e8 e0 f6 ff ff       	call   8048700 <printf@plt>
 8049020:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049027:	e8 94 f7 ff ff       	call   80487c0 <exit@plt>
 804902c:	c7 04 24 50 a2 04 08 	movl   $0x804a250,(%esp)
 8049033:	e8 78 f7 ff ff       	call   80487b0 <puts@plt>
 8049038:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804903f:	e8 7c f7 ff ff       	call   80487c0 <exit@plt>
 8049044:	8d 44 24 10          	lea    0x10(%esp),%eax
 8049048:	89 04 24             	mov    %eax,(%esp)
 804904b:	e8 ba 0c 00 00       	call   8049d0a <init_driver>
 8049050:	85 c0                	test   %eax,%eax
 8049052:	78 b8                	js     804900c <initialize_bomb+0x86>
 8049054:	81 c4 54 20 00 00    	add    $0x2054,%esp
 804905a:	5b                   	pop    %ebx
 804905b:	5e                   	pop    %esi
 804905c:	c3                   	ret    

0804905d <initialize_bomb_solve>:
 804905d:	f3 c3                	repz ret 

0804905f <blank_line>:
 804905f:	56                   	push   %esi
 8049060:	53                   	push   %ebx
 8049061:	83 ec 04             	sub    $0x4,%esp
 8049064:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 8049068:	eb 16                	jmp    8049080 <blank_line+0x21>
 804906a:	e8 21 f8 ff ff       	call   8048890 <__ctype_b_loc@plt>
 804906f:	83 c3 01             	add    $0x1,%ebx
 8049072:	89 f2                	mov    %esi,%edx
 8049074:	0f be f2             	movsbl %dl,%esi
 8049077:	8b 00                	mov    (%eax),%eax
 8049079:	f6 44 70 01 20       	testb  $0x20,0x1(%eax,%esi,2)
 804907e:	74 10                	je     8049090 <blank_line+0x31>
 8049080:	0f b6 33             	movzbl (%ebx),%esi
 8049083:	89 f0                	mov    %esi,%eax
 8049085:	84 c0                	test   %al,%al
 8049087:	75 e1                	jne    804906a <blank_line+0xb>
 8049089:	b8 01 00 00 00       	mov    $0x1,%eax
 804908e:	eb 05                	jmp    8049095 <blank_line+0x36>
 8049090:	b8 00 00 00 00       	mov    $0x0,%eax
 8049095:	83 c4 04             	add    $0x4,%esp
 8049098:	5b                   	pop    %ebx
 8049099:	5e                   	pop    %esi
 804909a:	c3                   	ret    

0804909b <skip>:
 804909b:	53                   	push   %ebx
 804909c:	83 ec 18             	sub    $0x18,%esp
 804909f:	a1 4c c7 04 08       	mov    0x804c74c,%eax
 80490a4:	89 44 24 08          	mov    %eax,0x8(%esp)
 80490a8:	c7 44 24 04 50 00 00 	movl   $0x50,0x4(%esp)
 80490af:	00 
 80490b0:	a1 48 c7 04 08       	mov    0x804c748,%eax
 80490b5:	8d 04 80             	lea    (%eax,%eax,4),%eax
 80490b8:	c1 e0 04             	shl    $0x4,%eax
 80490bb:	05 60 c7 04 08       	add    $0x804c760,%eax
 80490c0:	89 04 24             	mov    %eax,(%esp)
 80490c3:	e8 68 f6 ff ff       	call   8048730 <fgets@plt>
 80490c8:	89 c3                	mov    %eax,%ebx
 80490ca:	85 c0                	test   %eax,%eax
 80490cc:	74 0c                	je     80490da <skip+0x3f>
 80490ce:	89 04 24             	mov    %eax,(%esp)
 80490d1:	e8 89 ff ff ff       	call   804905f <blank_line>
 80490d6:	85 c0                	test   %eax,%eax
 80490d8:	75 c5                	jne    804909f <skip+0x4>
 80490da:	89 d8                	mov    %ebx,%eax
 80490dc:	83 c4 18             	add    $0x18,%esp
 80490df:	5b                   	pop    %ebx
 80490e0:	c3                   	ret    

080490e1 <send_msg>:
 80490e1:	57                   	push   %edi
 80490e2:	53                   	push   %ebx
 80490e3:	81 ec 24 40 00 00    	sub    $0x4024,%esp
 80490e9:	8b 15 48 c7 04 08    	mov    0x804c748,%edx
 80490ef:	8d 5c 92 fb          	lea    -0x5(%edx,%edx,4),%ebx
 80490f3:	c1 e3 04             	shl    $0x4,%ebx
 80490f6:	81 c3 60 c7 04 08    	add    $0x804c760,%ebx
 80490fc:	89 df                	mov    %ebx,%edi
 80490fe:	b8 00 00 00 00       	mov    $0x0,%eax
 8049103:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049108:	f2 ae                	repnz scas %es:(%edi),%al
 804910a:	f7 d1                	not    %ecx
 804910c:	83 c1 63             	add    $0x63,%ecx
 804910f:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
 8049115:	76 18                	jbe    804912f <send_msg+0x4e>
 8049117:	c7 04 24 88 a2 04 08 	movl   $0x804a288,(%esp)
 804911e:	e8 dd f5 ff ff       	call   8048700 <printf@plt>
 8049123:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804912a:	e8 91 f6 ff ff       	call   80487c0 <exit@plt>
 804912f:	83 bc 24 30 40 00 00 	cmpl   $0x0,0x4030(%esp)
 8049136:	00 
 8049137:	b8 78 a3 04 08       	mov    $0x804a378,%eax
 804913c:	b9 80 a3 04 08       	mov    $0x804a380,%ecx
 8049141:	0f 44 c1             	cmove  %ecx,%eax
 8049144:	89 5c 24 14          	mov    %ebx,0x14(%esp)
 8049148:	89 54 24 10          	mov    %edx,0x10(%esp)
 804914c:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049150:	a1 00 c5 04 08       	mov    0x804c500,%eax
 8049155:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049159:	c7 44 24 04 89 a3 04 	movl   $0x804a389,0x4(%esp)
 8049160:	08 
 8049161:	8d 9c 24 20 20 00 00 	lea    0x2020(%esp),%ebx
 8049168:	89 1c 24             	mov    %ebx,(%esp)
 804916b:	e8 d0 f6 ff ff       	call   8048840 <sprintf@plt>
 8049170:	8d 44 24 20          	lea    0x20(%esp),%eax
 8049174:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049178:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804917f:	00 
 8049180:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049184:	c7 04 24 00 c1 04 08 	movl   $0x804c100,(%esp)
 804918b:	e8 52 0d 00 00       	call   8049ee2 <driver_post>
 8049190:	85 c0                	test   %eax,%eax
 8049192:	79 18                	jns    80491ac <send_msg+0xcb>
 8049194:	8d 44 24 20          	lea    0x20(%esp),%eax
 8049198:	89 04 24             	mov    %eax,(%esp)
 804919b:	e8 10 f6 ff ff       	call   80487b0 <puts@plt>
 80491a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80491a7:	e8 14 f6 ff ff       	call   80487c0 <exit@plt>
 80491ac:	81 c4 24 40 00 00    	add    $0x4024,%esp
 80491b2:	5b                   	pop    %ebx
 80491b3:	5f                   	pop    %edi
 80491b4:	c3                   	ret    

080491b5 <explode_bomb>:
 80491b5:	83 ec 1c             	sub    $0x1c,%esp
 80491b8:	c7 04 24 95 a3 04 08 	movl   $0x804a395,(%esp)
 80491bf:	e8 ec f5 ff ff       	call   80487b0 <puts@plt>
 80491c4:	c7 04 24 9e a3 04 08 	movl   $0x804a39e,(%esp)
 80491cb:	e8 e0 f5 ff ff       	call   80487b0 <puts@plt>
 80491d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80491d7:	e8 05 ff ff ff       	call   80490e1 <send_msg>
 80491dc:	c7 04 24 ac a2 04 08 	movl   $0x804a2ac,(%esp)
 80491e3:	e8 c8 f5 ff ff       	call   80487b0 <puts@plt>
 80491e8:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80491ef:	e8 cc f5 ff ff       	call   80487c0 <exit@plt>

080491f4 <read_six_numbers>:
 80491f4:	83 ec 2c             	sub    $0x2c,%esp
 80491f7:	8b 44 24 34          	mov    0x34(%esp),%eax
 80491fb:	8d 50 14             	lea    0x14(%eax),%edx
 80491fe:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8049202:	8d 50 10             	lea    0x10(%eax),%edx
 8049205:	89 54 24 18          	mov    %edx,0x18(%esp)
 8049209:	8d 50 0c             	lea    0xc(%eax),%edx
 804920c:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049210:	8d 50 08             	lea    0x8(%eax),%edx
 8049213:	89 54 24 10          	mov    %edx,0x10(%esp)
 8049217:	8d 50 04             	lea    0x4(%eax),%edx
 804921a:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804921e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049222:	c7 44 24 04 b5 a3 04 	movl   $0x804a3b5,0x4(%esp)
 8049229:	08 
 804922a:	8b 44 24 30          	mov    0x30(%esp),%eax
 804922e:	89 04 24             	mov    %eax,(%esp)
 8049231:	e8 da f5 ff ff       	call   8048810 <__isoc99_sscanf@plt>
 8049236:	83 f8 05             	cmp    $0x5,%eax
 8049239:	7f 05                	jg     8049240 <read_six_numbers+0x4c>
 804923b:	e8 75 ff ff ff       	call   80491b5 <explode_bomb>
 8049240:	83 c4 2c             	add    $0x2c,%esp
 8049243:	c3                   	ret    

08049244 <read_line>:
 8049244:	57                   	push   %edi
 8049245:	56                   	push   %esi
 8049246:	53                   	push   %ebx
 8049247:	83 ec 10             	sub    $0x10,%esp
 804924a:	e8 4c fe ff ff       	call   804909b <skip>
 804924f:	85 c0                	test   %eax,%eax
 8049251:	75 6c                	jne    80492bf <read_line+0x7b>
 8049253:	a1 24 c7 04 08       	mov    0x804c724,%eax
 8049258:	39 05 4c c7 04 08    	cmp    %eax,0x804c74c
 804925e:	75 18                	jne    8049278 <read_line+0x34>
 8049260:	c7 04 24 c7 a3 04 08 	movl   $0x804a3c7,(%esp)
 8049267:	e8 44 f5 ff ff       	call   80487b0 <puts@plt>
 804926c:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049273:	e8 48 f5 ff ff       	call   80487c0 <exit@plt>
 8049278:	c7 04 24 e5 a3 04 08 	movl   $0x804a3e5,(%esp)
 804927f:	e8 1c f5 ff ff       	call   80487a0 <getenv@plt>
 8049284:	85 c0                	test   %eax,%eax
 8049286:	74 0c                	je     8049294 <read_line+0x50>
 8049288:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804928f:	e8 2c f5 ff ff       	call   80487c0 <exit@plt>
 8049294:	a1 24 c7 04 08       	mov    0x804c724,%eax
 8049299:	a3 4c c7 04 08       	mov    %eax,0x804c74c
 804929e:	e8 f8 fd ff ff       	call   804909b <skip>
 80492a3:	85 c0                	test   %eax,%eax
 80492a5:	75 18                	jne    80492bf <read_line+0x7b>
 80492a7:	c7 04 24 c7 a3 04 08 	movl   $0x804a3c7,(%esp)
 80492ae:	e8 fd f4 ff ff       	call   80487b0 <puts@plt>
 80492b3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80492ba:	e8 01 f5 ff ff       	call   80487c0 <exit@plt>
 80492bf:	8b 15 48 c7 04 08    	mov    0x804c748,%edx
 80492c5:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 80492c8:	c1 e3 04             	shl    $0x4,%ebx
 80492cb:	81 c3 60 c7 04 08    	add    $0x804c760,%ebx
 80492d1:	89 df                	mov    %ebx,%edi
 80492d3:	b8 00 00 00 00       	mov    $0x0,%eax
 80492d8:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80492dd:	f2 ae                	repnz scas %es:(%edi),%al
 80492df:	f7 d1                	not    %ecx
 80492e1:	83 e9 01             	sub    $0x1,%ecx
 80492e4:	83 f9 4e             	cmp    $0x4e,%ecx
 80492e7:	7e 6f                	jle    8049358 <read_line+0x114>
 80492e9:	c7 04 24 f0 a3 04 08 	movl   $0x804a3f0,(%esp)
 80492f0:	e8 bb f4 ff ff       	call   80487b0 <puts@plt>
 80492f5:	a1 48 c7 04 08       	mov    0x804c748,%eax
 80492fa:	8d 50 01             	lea    0x1(%eax),%edx
 80492fd:	89 15 48 c7 04 08    	mov    %edx,0x804c748
 8049303:	6b c0 50             	imul   $0x50,%eax,%eax
 8049306:	8d 90 60 c7 04 08    	lea    0x804c760(%eax),%edx
 804930c:	89 d7                	mov    %edx,%edi
 804930e:	be 0b a4 04 08       	mov    $0x804a40b,%esi
 8049313:	b8 10 00 00 00       	mov    $0x10,%eax
 8049318:	f6 c2 01             	test   $0x1,%dl
 804931b:	74 03                	je     8049320 <read_line+0xdc>
 804931d:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 804931e:	b0 0f                	mov    $0xf,%al
 8049320:	f7 c7 02 00 00 00    	test   $0x2,%edi
 8049326:	74 05                	je     804932d <read_line+0xe9>
 8049328:	66 a5                	movsw  %ds:(%esi),%es:(%edi)
 804932a:	83 e8 02             	sub    $0x2,%eax
 804932d:	89 c1                	mov    %eax,%ecx
 804932f:	c1 e9 02             	shr    $0x2,%ecx
 8049332:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049334:	ba 00 00 00 00       	mov    $0x0,%edx
 8049339:	a8 02                	test   $0x2,%al
 804933b:	74 0b                	je     8049348 <read_line+0x104>
 804933d:	0f b7 16             	movzwl (%esi),%edx
 8049340:	66 89 17             	mov    %dx,(%edi)
 8049343:	ba 02 00 00 00       	mov    $0x2,%edx
 8049348:	a8 01                	test   $0x1,%al
 804934a:	74 07                	je     8049353 <read_line+0x10f>
 804934c:	0f b6 04 16          	movzbl (%esi,%edx,1),%eax
 8049350:	88 04 17             	mov    %al,(%edi,%edx,1)
 8049353:	e8 5d fe ff ff       	call   80491b5 <explode_bomb>
 8049358:	8d 04 92             	lea    (%edx,%edx,4),%eax
 804935b:	c1 e0 04             	shl    $0x4,%eax
 804935e:	c6 84 01 5f c7 04 08 	movb   $0x0,0x804c75f(%ecx,%eax,1)
 8049365:	00 
 8049366:	83 c2 01             	add    $0x1,%edx
 8049369:	89 15 48 c7 04 08    	mov    %edx,0x804c748
 804936f:	89 d8                	mov    %ebx,%eax
 8049371:	83 c4 10             	add    $0x10,%esp
 8049374:	5b                   	pop    %ebx
 8049375:	5e                   	pop    %esi
 8049376:	5f                   	pop    %edi
 8049377:	c3                   	ret    

08049378 <phase_defused>:
 8049378:	83 ec 1c             	sub    $0x1c,%esp
 804937b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049382:	e8 5a fd ff ff       	call   80490e1 <send_msg>
 8049387:	83 3d 48 c7 04 08 06 	cmpl   $0x6,0x804c748
 804938e:	75 18                	jne    80493a8 <phase_defused+0x30>
 8049390:	c7 04 24 d0 a2 04 08 	movl   $0x804a2d0,(%esp)
 8049397:	e8 14 f4 ff ff       	call   80487b0 <puts@plt>
 804939c:	c7 04 24 fc a2 04 08 	movl   $0x804a2fc,(%esp)
 80493a3:	e8 08 f4 ff ff       	call   80487b0 <puts@plt>
 80493a8:	83 c4 1c             	add    $0x1c,%esp
 80493ab:	c3                   	ret    
 80493ac:	66 90                	xchg   %ax,%ax
 80493ae:	66 90                	xchg   %ax,%ax

080493b0 <sigalrm_handler>:
 80493b0:	83 ec 1c             	sub    $0x1c,%esp
 80493b3:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80493ba:	00 
 80493bb:	c7 44 24 04 20 a8 04 	movl   $0x804a820,0x4(%esp)
 80493c2:	08 
 80493c3:	a1 20 c7 04 08       	mov    0x804c720,%eax
 80493c8:	89 04 24             	mov    %eax,(%esp)
 80493cb:	e8 10 f4 ff ff       	call   80487e0 <fprintf@plt>
 80493d0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80493d7:	e8 e4 f3 ff ff       	call   80487c0 <exit@plt>

080493dc <rio_readlineb>:
 80493dc:	55                   	push   %ebp
 80493dd:	57                   	push   %edi
 80493de:	56                   	push   %esi
 80493df:	53                   	push   %ebx
 80493e0:	83 ec 3c             	sub    $0x3c,%esp
 80493e3:	89 d5                	mov    %edx,%ebp
 80493e5:	83 f9 01             	cmp    $0x1,%ecx
 80493e8:	0f 86 c6 00 00 00    	jbe    80494b4 <rio_readlineb+0xd8>
 80493ee:	89 c3                	mov    %eax,%ebx
 80493f0:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 80493f4:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%esp)
 80493fb:	00 
 80493fc:	8d 78 0c             	lea    0xc(%eax),%edi
 80493ff:	eb 34                	jmp    8049435 <rio_readlineb+0x59>
 8049401:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 8049408:	00 
 8049409:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804940d:	8b 03                	mov    (%ebx),%eax
 804940f:	89 04 24             	mov    %eax,(%esp)
 8049412:	e8 d9 f2 ff ff       	call   80486f0 <read@plt>
 8049417:	89 43 04             	mov    %eax,0x4(%ebx)
 804941a:	85 c0                	test   %eax,%eax
 804941c:	79 0f                	jns    804942d <rio_readlineb+0x51>
 804941e:	e8 0d f4 ff ff       	call   8048830 <__errno_location@plt>
 8049423:	83 38 04             	cmpl   $0x4,(%eax)
 8049426:	74 0d                	je     8049435 <rio_readlineb+0x59>
 8049428:	e9 99 00 00 00       	jmp    80494c6 <rio_readlineb+0xea>
 804942d:	85 c0                	test   %eax,%eax
 804942f:	90                   	nop
 8049430:	74 66                	je     8049498 <rio_readlineb+0xbc>
 8049432:	89 7b 08             	mov    %edi,0x8(%ebx)
 8049435:	8b 73 04             	mov    0x4(%ebx),%esi
 8049438:	85 f6                	test   %esi,%esi
 804943a:	7e c5                	jle    8049401 <rio_readlineb+0x25>
 804943c:	85 f6                	test   %esi,%esi
 804943e:	0f 95 c0             	setne  %al
 8049441:	0f b6 c0             	movzbl %al,%eax
 8049444:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049448:	8b 4b 08             	mov    0x8(%ebx),%ecx
 804944b:	89 44 24 08          	mov    %eax,0x8(%esp)
 804944f:	89 4c 24 18          	mov    %ecx,0x18(%esp)
 8049453:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8049457:	8d 54 24 2f          	lea    0x2f(%esp),%edx
 804945b:	89 14 24             	mov    %edx,(%esp)
 804945e:	e8 bd f2 ff ff       	call   8048720 <memcpy@plt>
 8049463:	8b 4c 24 18          	mov    0x18(%esp),%ecx
 8049467:	8b 54 24 14          	mov    0x14(%esp),%edx
 804946b:	01 d1                	add    %edx,%ecx
 804946d:	89 4b 08             	mov    %ecx,0x8(%ebx)
 8049470:	29 d6                	sub    %edx,%esi
 8049472:	89 73 04             	mov    %esi,0x4(%ebx)
 8049475:	83 fa 01             	cmp    $0x1,%edx
 8049478:	75 11                	jne    804948b <rio_readlineb+0xaf>
 804947a:	83 c5 01             	add    $0x1,%ebp
 804947d:	0f b6 44 24 2f       	movzbl 0x2f(%esp),%eax
 8049482:	88 45 ff             	mov    %al,-0x1(%ebp)
 8049485:	3c 0a                	cmp    $0xa,%al
 8049487:	75 1a                	jne    80494a3 <rio_readlineb+0xc7>
 8049489:	eb 31                	jmp    80494bc <rio_readlineb+0xe0>
 804948b:	83 7c 24 14 00       	cmpl   $0x0,0x14(%esp)
 8049490:	75 3b                	jne    80494cd <rio_readlineb+0xf1>
 8049492:	8b 44 24 10          	mov    0x10(%esp),%eax
 8049496:	eb 04                	jmp    804949c <rio_readlineb+0xc0>
 8049498:	8b 44 24 10          	mov    0x10(%esp),%eax
 804949c:	83 f8 01             	cmp    $0x1,%eax
 804949f:	75 1b                	jne    80494bc <rio_readlineb+0xe0>
 80494a1:	eb 31                	jmp    80494d4 <rio_readlineb+0xf8>
 80494a3:	83 44 24 10 01       	addl   $0x1,0x10(%esp)
 80494a8:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 80494ac:	39 44 24 10          	cmp    %eax,0x10(%esp)
 80494b0:	74 0a                	je     80494bc <rio_readlineb+0xe0>
 80494b2:	eb 81                	jmp    8049435 <rio_readlineb+0x59>
 80494b4:	c7 44 24 10 01 00 00 	movl   $0x1,0x10(%esp)
 80494bb:	00 
 80494bc:	c6 45 00 00          	movb   $0x0,0x0(%ebp)
 80494c0:	8b 44 24 10          	mov    0x10(%esp),%eax
 80494c4:	eb 13                	jmp    80494d9 <rio_readlineb+0xfd>
 80494c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80494cb:	eb 0c                	jmp    80494d9 <rio_readlineb+0xfd>
 80494cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80494d2:	eb 05                	jmp    80494d9 <rio_readlineb+0xfd>
 80494d4:	b8 00 00 00 00       	mov    $0x0,%eax
 80494d9:	83 c4 3c             	add    $0x3c,%esp
 80494dc:	5b                   	pop    %ebx
 80494dd:	5e                   	pop    %esi
 80494de:	5f                   	pop    %edi
 80494df:	5d                   	pop    %ebp
 80494e0:	c3                   	ret    

080494e1 <submitr>:
 80494e1:	55                   	push   %ebp
 80494e2:	57                   	push   %edi
 80494e3:	56                   	push   %esi
 80494e4:	53                   	push   %ebx
 80494e5:	81 ec 5c a0 00 00    	sub    $0xa05c,%esp
 80494eb:	8b 9c 24 84 a0 00 00 	mov    0xa084(%esp),%ebx
 80494f2:	c7 84 24 30 20 00 00 	movl   $0x0,0x2030(%esp)
 80494f9:	00 00 00 00 
 80494fd:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049504:	00 
 8049505:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804950c:	00 
 804950d:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8049514:	e8 37 f3 ff ff       	call   8048850 <socket@plt>
 8049519:	89 c5                	mov    %eax,%ebp
 804951b:	85 c0                	test   %eax,%eax
 804951d:	79 55                	jns    8049574 <submitr+0x93>
 804951f:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049526:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804952c:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049533:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804953a:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049541:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049548:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 804954f:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 8049556:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 804955d:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 8049564:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 804956a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804956f:	e9 54 07 00 00       	jmp    8049cc8 <submitr+0x7e7>
 8049574:	8b 84 24 70 a0 00 00 	mov    0xa070(%esp),%eax
 804957b:	89 04 24             	mov    %eax,(%esp)
 804957e:	e8 dd f2 ff ff       	call   8048860 <gethostbyname@plt>
 8049583:	85 c0                	test   %eax,%eax
 8049585:	75 6f                	jne    80495f6 <submitr+0x115>
 8049587:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 804958e:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049594:	c7 40 04 72 3a 20 44 	movl   $0x44203a72,0x4(%eax)
 804959b:	c7 40 08 4e 53 20 69 	movl   $0x6920534e,0x8(%eax)
 80495a2:	c7 40 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%eax)
 80495a9:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80495b0:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80495b7:	c7 40 18 72 65 73 6f 	movl   $0x6f736572,0x18(%eax)
 80495be:	c7 40 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%eax)
 80495c5:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 80495cc:	c7 40 24 65 72 20 61 	movl   $0x61207265,0x24(%eax)
 80495d3:	c7 40 28 64 64 72 65 	movl   $0x65726464,0x28(%eax)
 80495da:	66 c7 40 2c 73 73    	movw   $0x7373,0x2c(%eax)
 80495e0:	c6 40 2e 00          	movb   $0x0,0x2e(%eax)
 80495e4:	89 2c 24             	mov    %ebp,(%esp)
 80495e7:	e8 94 f2 ff ff       	call   8048880 <close@plt>
 80495ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80495f1:	e9 d2 06 00 00       	jmp    8049cc8 <submitr+0x7e7>
 80495f6:	8d b4 24 40 a0 00 00 	lea    0xa040(%esp),%esi
 80495fd:	c7 84 24 40 a0 00 00 	movl   $0x0,0xa040(%esp)
 8049604:	00 00 00 00 
 8049608:	c7 84 24 44 a0 00 00 	movl   $0x0,0xa044(%esp)
 804960f:	00 00 00 00 
 8049613:	c7 84 24 48 a0 00 00 	movl   $0x0,0xa048(%esp)
 804961a:	00 00 00 00 
 804961e:	c7 84 24 4c a0 00 00 	movl   $0x0,0xa04c(%esp)
 8049625:	00 00 00 00 
 8049629:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%esp)
 8049630:	00 02 00 
 8049633:	8b 50 0c             	mov    0xc(%eax),%edx
 8049636:	89 54 24 08          	mov    %edx,0x8(%esp)
 804963a:	8d 94 24 44 a0 00 00 	lea    0xa044(%esp),%edx
 8049641:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049645:	8b 40 10             	mov    0x10(%eax),%eax
 8049648:	8b 00                	mov    (%eax),%eax
 804964a:	89 04 24             	mov    %eax,(%esp)
 804964d:	e8 1e f1 ff ff       	call   8048770 <bcopy@plt>
 8049652:	0f b7 84 24 74 a0 00 	movzwl 0xa074(%esp),%eax
 8049659:	00 
 804965a:	66 c1 c8 08          	ror    $0x8,%ax
 804965e:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%esp)
 8049665:	00 
 8049666:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 804966d:	00 
 804966e:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049672:	89 2c 24             	mov    %ebp,(%esp)
 8049675:	e8 f6 f1 ff ff       	call   8048870 <connect@plt>
 804967a:	85 c0                	test   %eax,%eax
 804967c:	79 61                	jns    80496df <submitr+0x1fe>
 804967e:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049685:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804968b:	c7 40 04 72 3a 20 55 	movl   $0x55203a72,0x4(%eax)
 8049692:	c7 40 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%eax)
 8049699:	c7 40 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%eax)
 80496a0:	c7 40 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%eax)
 80496a7:	c7 40 14 6e 65 63 74 	movl   $0x7463656e,0x14(%eax)
 80496ae:	c7 40 18 20 74 6f 20 	movl   $0x206f7420,0x18(%eax)
 80496b5:	c7 40 1c 74 68 65 20 	movl   $0x20656874,0x1c(%eax)
 80496bc:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 80496c3:	66 c7 40 24 65 72    	movw   $0x7265,0x24(%eax)
 80496c9:	c6 40 26 00          	movb   $0x0,0x26(%eax)
 80496cd:	89 2c 24             	mov    %ebp,(%esp)
 80496d0:	e8 ab f1 ff ff       	call   8048880 <close@plt>
 80496d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80496da:	e9 e9 05 00 00       	jmp    8049cc8 <submitr+0x7e7>
 80496df:	ba ff ff ff ff       	mov    $0xffffffff,%edx
 80496e4:	89 df                	mov    %ebx,%edi
 80496e6:	b8 00 00 00 00       	mov    $0x0,%eax
 80496eb:	89 d1                	mov    %edx,%ecx
 80496ed:	f2 ae                	repnz scas %es:(%edi),%al
 80496ef:	f7 d1                	not    %ecx
 80496f1:	89 ce                	mov    %ecx,%esi
 80496f3:	8b bc 24 78 a0 00 00 	mov    0xa078(%esp),%edi
 80496fa:	89 d1                	mov    %edx,%ecx
 80496fc:	f2 ae                	repnz scas %es:(%edi),%al
 80496fe:	89 4c 24 18          	mov    %ecx,0x18(%esp)
 8049702:	8b bc 24 7c a0 00 00 	mov    0xa07c(%esp),%edi
 8049709:	89 d1                	mov    %edx,%ecx
 804970b:	f2 ae                	repnz scas %es:(%edi),%al
 804970d:	f7 d1                	not    %ecx
 804970f:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 8049713:	8b bc 24 80 a0 00 00 	mov    0xa080(%esp),%edi
 804971a:	89 d1                	mov    %edx,%ecx
 804971c:	f2 ae                	repnz scas %es:(%edi),%al
 804971e:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8049722:	2b 44 24 18          	sub    0x18(%esp),%eax
 8049726:	29 c8                	sub    %ecx,%eax
 8049728:	89 c2                	mov    %eax,%edx
 804972a:	8d 44 76 fd          	lea    -0x3(%esi,%esi,2),%eax
 804972e:	8d 44 02 7b          	lea    0x7b(%edx,%eax,1),%eax
 8049732:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049737:	76 7a                	jbe    80497b3 <submitr+0x2d2>
 8049739:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049740:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049746:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 804974d:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 8049754:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 804975b:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 8049762:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 8049769:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 8049770:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 8049777:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 804977e:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 8049785:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 804978c:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 8049793:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 804979a:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 80497a1:	89 2c 24             	mov    %ebp,(%esp)
 80497a4:	e8 d7 f0 ff ff       	call   8048880 <close@plt>
 80497a9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80497ae:	e9 15 05 00 00       	jmp    8049cc8 <submitr+0x7e7>
 80497b3:	8d 94 24 34 40 00 00 	lea    0x4034(%esp),%edx
 80497ba:	b9 00 08 00 00       	mov    $0x800,%ecx
 80497bf:	b8 00 00 00 00       	mov    $0x0,%eax
 80497c4:	89 d7                	mov    %edx,%edi
 80497c6:	f3 ab                	rep stos %eax,%es:(%edi)
 80497c8:	89 df                	mov    %ebx,%edi
 80497ca:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80497cf:	f2 ae                	repnz scas %es:(%edi),%al
 80497d1:	f7 d1                	not    %ecx
 80497d3:	83 e9 01             	sub    $0x1,%ecx
 80497d6:	89 ce                	mov    %ecx,%esi
 80497d8:	0f 84 00 04 00 00    	je     8049bde <submitr+0x6fd>
 80497de:	89 d7                	mov    %edx,%edi
 80497e0:	0f b6 03             	movzbl (%ebx),%eax
 80497e3:	3c 2a                	cmp    $0x2a,%al
 80497e5:	74 21                	je     8049808 <submitr+0x327>
 80497e7:	8d 50 d3             	lea    -0x2d(%eax),%edx
 80497ea:	80 fa 01             	cmp    $0x1,%dl
 80497ed:	76 19                	jbe    8049808 <submitr+0x327>
 80497ef:	3c 5f                	cmp    $0x5f,%al
 80497f1:	74 15                	je     8049808 <submitr+0x327>
 80497f3:	8d 50 d0             	lea    -0x30(%eax),%edx
 80497f6:	80 fa 09             	cmp    $0x9,%dl
 80497f9:	76 0d                	jbe    8049808 <submitr+0x327>
 80497fb:	89 c2                	mov    %eax,%edx
 80497fd:	83 e2 df             	and    $0xffffffdf,%edx
 8049800:	83 ea 41             	sub    $0x41,%edx
 8049803:	80 fa 19             	cmp    $0x19,%dl
 8049806:	77 07                	ja     804980f <submitr+0x32e>
 8049808:	8d 57 01             	lea    0x1(%edi),%edx
 804980b:	88 07                	mov    %al,(%edi)
 804980d:	eb 51                	jmp    8049860 <submitr+0x37f>
 804980f:	3c 20                	cmp    $0x20,%al
 8049811:	75 08                	jne    804981b <submitr+0x33a>
 8049813:	8d 57 01             	lea    0x1(%edi),%edx
 8049816:	c6 07 2b             	movb   $0x2b,(%edi)
 8049819:	eb 45                	jmp    8049860 <submitr+0x37f>
 804981b:	8d 50 e0             	lea    -0x20(%eax),%edx
 804981e:	80 fa 5f             	cmp    $0x5f,%dl
 8049821:	76 08                	jbe    804982b <submitr+0x34a>
 8049823:	3c 09                	cmp    $0x9,%al
 8049825:	0f 85 1d 04 00 00    	jne    8049c48 <submitr+0x767>
 804982b:	0f b6 c0             	movzbl %al,%eax
 804982e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049832:	c7 44 24 04 2c a9 04 	movl   $0x804a92c,0x4(%esp)
 8049839:	08 
 804983a:	8d 44 24 28          	lea    0x28(%esp),%eax
 804983e:	89 04 24             	mov    %eax,(%esp)
 8049841:	e8 fa ef ff ff       	call   8048840 <sprintf@plt>
 8049846:	0f b6 44 24 28       	movzbl 0x28(%esp),%eax
 804984b:	88 07                	mov    %al,(%edi)
 804984d:	0f b6 44 24 29       	movzbl 0x29(%esp),%eax
 8049852:	88 47 01             	mov    %al,0x1(%edi)
 8049855:	8d 57 03             	lea    0x3(%edi),%edx
 8049858:	0f b6 44 24 2a       	movzbl 0x2a(%esp),%eax
 804985d:	88 47 02             	mov    %al,0x2(%edi)
 8049860:	83 c3 01             	add    $0x1,%ebx
 8049863:	83 ee 01             	sub    $0x1,%esi
 8049866:	0f 84 72 03 00 00    	je     8049bde <submitr+0x6fd>
 804986c:	89 d7                	mov    %edx,%edi
 804986e:	e9 6d ff ff ff       	jmp    80497e0 <submitr+0x2ff>
 8049873:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049877:	89 74 24 04          	mov    %esi,0x4(%esp)
 804987b:	89 2c 24             	mov    %ebp,(%esp)
 804987e:	e8 6d ef ff ff       	call   80487f0 <write@plt>
 8049883:	85 c0                	test   %eax,%eax
 8049885:	7f 10                	jg     8049897 <submitr+0x3b6>
 8049887:	e8 a4 ef ff ff       	call   8048830 <__errno_location@plt>
 804988c:	83 38 04             	cmpl   $0x4,(%eax)
 804988f:	90                   	nop
 8049890:	75 0f                	jne    80498a1 <submitr+0x3c0>
 8049892:	b8 00 00 00 00       	mov    $0x0,%eax
 8049897:	01 c6                	add    %eax,%esi
 8049899:	29 c3                	sub    %eax,%ebx
 804989b:	75 d6                	jne    8049873 <submitr+0x392>
 804989d:	85 ff                	test   %edi,%edi
 804989f:	79 65                	jns    8049906 <submitr+0x425>
 80498a1:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 80498a8:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80498ae:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 80498b5:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 80498bc:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80498c3:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80498ca:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80498d1:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 80498d8:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 80498df:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 80498e6:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 80498ed:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 80498f4:	89 2c 24             	mov    %ebp,(%esp)
 80498f7:	e8 84 ef ff ff       	call   8048880 <close@plt>
 80498fc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049901:	e9 c2 03 00 00       	jmp    8049cc8 <submitr+0x7e7>
 8049906:	89 ac 24 34 80 00 00 	mov    %ebp,0x8034(%esp)
 804990d:	c7 84 24 38 80 00 00 	movl   $0x0,0x8038(%esp)
 8049914:	00 00 00 00 
 8049918:	8d 84 24 40 80 00 00 	lea    0x8040(%esp),%eax
 804991f:	89 84 24 3c 80 00 00 	mov    %eax,0x803c(%esp)
 8049926:	b9 00 20 00 00       	mov    $0x2000,%ecx
 804992b:	8d 94 24 34 60 00 00 	lea    0x6034(%esp),%edx
 8049932:	8d 84 24 34 80 00 00 	lea    0x8034(%esp),%eax
 8049939:	e8 9e fa ff ff       	call   80493dc <rio_readlineb>
 804993e:	85 c0                	test   %eax,%eax
 8049940:	7f 79                	jg     80499bb <submitr+0x4da>
 8049942:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049949:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 804994f:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049956:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 804995d:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049964:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 804996b:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049972:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049979:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 8049980:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 8049987:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 804998e:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 8049995:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 804999c:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 80499a3:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 80499a9:	89 2c 24             	mov    %ebp,(%esp)
 80499ac:	e8 cf ee ff ff       	call   8048880 <close@plt>
 80499b1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80499b6:	e9 0d 03 00 00       	jmp    8049cc8 <submitr+0x7e7>
 80499bb:	8d 44 24 30          	lea    0x30(%esp),%eax
 80499bf:	89 44 24 10          	mov    %eax,0x10(%esp)
 80499c3:	8d 84 24 30 20 00 00 	lea    0x2030(%esp),%eax
 80499ca:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80499ce:	8d 84 24 34 20 00 00 	lea    0x2034(%esp),%eax
 80499d5:	89 44 24 08          	mov    %eax,0x8(%esp)
 80499d9:	c7 44 24 04 33 a9 04 	movl   $0x804a933,0x4(%esp)
 80499e0:	08 
 80499e1:	8d 84 24 34 60 00 00 	lea    0x6034(%esp),%eax
 80499e8:	89 04 24             	mov    %eax,(%esp)
 80499eb:	e8 20 ee ff ff       	call   8048810 <__isoc99_sscanf@plt>
 80499f0:	8b 84 24 30 20 00 00 	mov    0x2030(%esp),%eax
 80499f7:	3d c8 00 00 00       	cmp    $0xc8,%eax
 80499fc:	0f 84 c1 00 00 00    	je     8049ac3 <submitr+0x5e2>
 8049a02:	8d 54 24 30          	lea    0x30(%esp),%edx
 8049a06:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049a0a:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049a0e:	c7 44 24 04 44 a8 04 	movl   $0x804a844,0x4(%esp)
 8049a15:	08 
 8049a16:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049a1d:	89 04 24             	mov    %eax,(%esp)
 8049a20:	e8 1b ee ff ff       	call   8048840 <sprintf@plt>
 8049a25:	89 2c 24             	mov    %ebp,(%esp)
 8049a28:	e8 53 ee ff ff       	call   8048880 <close@plt>
 8049a2d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a32:	e9 91 02 00 00       	jmp    8049cc8 <submitr+0x7e7>
 8049a37:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049a3c:	8d 94 24 34 60 00 00 	lea    0x6034(%esp),%edx
 8049a43:	8d 84 24 34 80 00 00 	lea    0x8034(%esp),%eax
 8049a4a:	e8 8d f9 ff ff       	call   80493dc <rio_readlineb>
 8049a4f:	85 c0                	test   %eax,%eax
 8049a51:	7f 70                	jg     8049ac3 <submitr+0x5e2>
 8049a53:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049a5a:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049a60:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049a67:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049a6e:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049a75:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049a7c:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049a83:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049a8a:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
 8049a91:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
 8049a98:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
 8049a9f:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
 8049aa6:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
 8049aad:	c6 40 30 00          	movb   $0x0,0x30(%eax)
 8049ab1:	89 2c 24             	mov    %ebp,(%esp)
 8049ab4:	e8 c7 ed ff ff       	call   8048880 <close@plt>
 8049ab9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049abe:	e9 05 02 00 00       	jmp    8049cc8 <submitr+0x7e7>
 8049ac3:	80 bc 24 34 60 00 00 	cmpb   $0xd,0x6034(%esp)
 8049aca:	0d 
 8049acb:	0f 85 66 ff ff ff    	jne    8049a37 <submitr+0x556>
 8049ad1:	80 bc 24 35 60 00 00 	cmpb   $0xa,0x6035(%esp)
 8049ad8:	0a 
 8049ad9:	0f 85 58 ff ff ff    	jne    8049a37 <submitr+0x556>
 8049adf:	80 bc 24 36 60 00 00 	cmpb   $0x0,0x6036(%esp)
 8049ae6:	00 
 8049ae7:	0f 85 4a ff ff ff    	jne    8049a37 <submitr+0x556>
 8049aed:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049af2:	8d 94 24 34 60 00 00 	lea    0x6034(%esp),%edx
 8049af9:	8d 84 24 34 80 00 00 	lea    0x8034(%esp),%eax
 8049b00:	e8 d7 f8 ff ff       	call   80493dc <rio_readlineb>
 8049b05:	85 c0                	test   %eax,%eax
 8049b07:	7f 7a                	jg     8049b83 <submitr+0x6a2>
 8049b09:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049b10:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049b16:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049b1d:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049b24:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049b2b:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049b32:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049b39:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049b40:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 8049b47:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 8049b4e:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 8049b55:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 8049b5c:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 8049b63:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 8049b6a:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 8049b71:	89 2c 24             	mov    %ebp,(%esp)
 8049b74:	e8 07 ed ff ff       	call   8048880 <close@plt>
 8049b79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049b7e:	e9 45 01 00 00       	jmp    8049cc8 <submitr+0x7e7>
 8049b83:	8d 84 24 34 60 00 00 	lea    0x6034(%esp),%eax
 8049b8a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049b8e:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049b95:	89 04 24             	mov    %eax,(%esp)
 8049b98:	e8 e3 eb ff ff       	call   8048780 <strcpy@plt>
 8049b9d:	89 2c 24             	mov    %ebp,(%esp)
 8049ba0:	e8 db ec ff ff       	call   8048880 <close@plt>
 8049ba5:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049bac:	0f b6 00             	movzbl (%eax),%eax
 8049baf:	83 e8 4f             	sub    $0x4f,%eax
 8049bb2:	75 1b                	jne    8049bcf <submitr+0x6ee>
 8049bb4:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049bbb:	0f b6 40 01          	movzbl 0x1(%eax),%eax
 8049bbf:	83 e8 4b             	sub    $0x4b,%eax
 8049bc2:	75 0b                	jne    8049bcf <submitr+0x6ee>
 8049bc4:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049bcb:	0f b6 40 02          	movzbl 0x2(%eax),%eax
 8049bcf:	85 c0                	test   %eax,%eax
 8049bd1:	0f 95 c0             	setne  %al
 8049bd4:	0f b6 c0             	movzbl %al,%eax
 8049bd7:	f7 d8                	neg    %eax
 8049bd9:	e9 ea 00 00 00       	jmp    8049cc8 <submitr+0x7e7>
 8049bde:	8d 84 24 34 40 00 00 	lea    0x4034(%esp),%eax
 8049be5:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049be9:	8b 84 24 80 a0 00 00 	mov    0xa080(%esp),%eax
 8049bf0:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049bf4:	8b 84 24 7c a0 00 00 	mov    0xa07c(%esp),%eax
 8049bfb:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049bff:	8b 84 24 78 a0 00 00 	mov    0xa078(%esp),%eax
 8049c06:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049c0a:	c7 44 24 04 74 a8 04 	movl   $0x804a874,0x4(%esp)
 8049c11:	08 
 8049c12:	8d bc 24 34 60 00 00 	lea    0x6034(%esp),%edi
 8049c19:	89 3c 24             	mov    %edi,(%esp)
 8049c1c:	e8 1f ec ff ff       	call   8048840 <sprintf@plt>
 8049c21:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c26:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049c2b:	f2 ae                	repnz scas %es:(%edi),%al
 8049c2d:	f7 d1                	not    %ecx
 8049c2f:	83 e9 01             	sub    $0x1,%ecx
 8049c32:	89 cf                	mov    %ecx,%edi
 8049c34:	0f 84 cc fc ff ff    	je     8049906 <submitr+0x425>
 8049c3a:	89 cb                	mov    %ecx,%ebx
 8049c3c:	8d b4 24 34 60 00 00 	lea    0x6034(%esp),%esi
 8049c43:	e9 2b fc ff ff       	jmp    8049873 <submitr+0x392>
 8049c48:	8b bc 24 88 a0 00 00 	mov    0xa088(%esp),%edi
 8049c4f:	be c0 a8 04 08       	mov    $0x804a8c0,%esi
 8049c54:	b8 43 00 00 00       	mov    $0x43,%eax
 8049c59:	f7 c7 01 00 00 00    	test   $0x1,%edi
 8049c5f:	74 1d                	je     8049c7e <submitr+0x79d>
 8049c61:	0f b6 05 c0 a8 04 08 	movzbl 0x804a8c0,%eax
 8049c68:	88 07                	mov    %al,(%edi)
 8049c6a:	8b 84 24 88 a0 00 00 	mov    0xa088(%esp),%eax
 8049c71:	8d 78 01             	lea    0x1(%eax),%edi
 8049c74:	be c1 a8 04 08       	mov    $0x804a8c1,%esi
 8049c79:	b8 42 00 00 00       	mov    $0x42,%eax
 8049c7e:	f7 c7 02 00 00 00    	test   $0x2,%edi
 8049c84:	74 0f                	je     8049c95 <submitr+0x7b4>
 8049c86:	0f b7 16             	movzwl (%esi),%edx
 8049c89:	66 89 17             	mov    %dx,(%edi)
 8049c8c:	83 c7 02             	add    $0x2,%edi
 8049c8f:	83 c6 02             	add    $0x2,%esi
 8049c92:	83 e8 02             	sub    $0x2,%eax
 8049c95:	89 c1                	mov    %eax,%ecx
 8049c97:	c1 e9 02             	shr    $0x2,%ecx
 8049c9a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 8049c9c:	ba 00 00 00 00       	mov    $0x0,%edx
 8049ca1:	a8 02                	test   $0x2,%al
 8049ca3:	74 0b                	je     8049cb0 <submitr+0x7cf>
 8049ca5:	0f b7 16             	movzwl (%esi),%edx
 8049ca8:	66 89 17             	mov    %dx,(%edi)
 8049cab:	ba 02 00 00 00       	mov    $0x2,%edx
 8049cb0:	a8 01                	test   $0x1,%al
 8049cb2:	74 07                	je     8049cbb <submitr+0x7da>
 8049cb4:	0f b6 04 16          	movzbl (%esi,%edx,1),%eax
 8049cb8:	88 04 17             	mov    %al,(%edi,%edx,1)
 8049cbb:	89 2c 24             	mov    %ebp,(%esp)
 8049cbe:	e8 bd eb ff ff       	call   8048880 <close@plt>
 8049cc3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049cc8:	81 c4 5c a0 00 00    	add    $0xa05c,%esp
 8049cce:	5b                   	pop    %ebx
 8049ccf:	5e                   	pop    %esi
 8049cd0:	5f                   	pop    %edi
 8049cd1:	5d                   	pop    %ebp
 8049cd2:	c3                   	ret    

08049cd3 <init_timeout>:
 8049cd3:	53                   	push   %ebx
 8049cd4:	83 ec 18             	sub    $0x18,%esp
 8049cd7:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 8049cdb:	85 db                	test   %ebx,%ebx
 8049cdd:	74 26                	je     8049d05 <init_timeout+0x32>
 8049cdf:	c7 44 24 04 b0 93 04 	movl   $0x80493b0,0x4(%esp)
 8049ce6:	08 
 8049ce7:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 8049cee:	e8 4d ea ff ff       	call   8048740 <signal@plt>
 8049cf3:	85 db                	test   %ebx,%ebx
 8049cf5:	b8 00 00 00 00       	mov    $0x0,%eax
 8049cfa:	0f 48 d8             	cmovs  %eax,%ebx
 8049cfd:	89 1c 24             	mov    %ebx,(%esp)
 8049d00:	e8 5b ea ff ff       	call   8048760 <alarm@plt>
 8049d05:	83 c4 18             	add    $0x18,%esp
 8049d08:	5b                   	pop    %ebx
 8049d09:	c3                   	ret    

08049d0a <init_driver>:
 8049d0a:	57                   	push   %edi
 8049d0b:	56                   	push   %esi
 8049d0c:	53                   	push   %ebx
 8049d0d:	83 ec 20             	sub    $0x20,%esp
 8049d10:	8b 74 24 30          	mov    0x30(%esp),%esi
 8049d14:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d1b:	00 
 8049d1c:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
 8049d23:	e8 18 ea ff ff       	call   8048740 <signal@plt>
 8049d28:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d2f:	00 
 8049d30:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 8049d37:	e8 04 ea ff ff       	call   8048740 <signal@plt>
 8049d3c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d43:	00 
 8049d44:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 8049d4b:	e8 f0 e9 ff ff       	call   8048740 <signal@plt>
 8049d50:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049d57:	00 
 8049d58:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d5f:	00 
 8049d60:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8049d67:	e8 e4 ea ff ff       	call   8048850 <socket@plt>
 8049d6c:	89 c3                	mov    %eax,%ebx
 8049d6e:	85 c0                	test   %eax,%eax
 8049d70:	79 4e                	jns    8049dc0 <init_driver+0xb6>
 8049d72:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049d78:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 8049d7f:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 8049d86:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 8049d8d:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049d94:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049d9b:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
 8049da2:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
 8049da9:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
 8049db0:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
 8049db6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049dbb:	e9 1b 01 00 00       	jmp    8049edb <init_driver+0x1d1>
 8049dc0:	c7 04 24 c0 a4 04 08 	movl   $0x804a4c0,(%esp)
 8049dc7:	e8 94 ea ff ff       	call   8048860 <gethostbyname@plt>
 8049dcc:	85 c0                	test   %eax,%eax
 8049dce:	75 68                	jne    8049e38 <init_driver+0x12e>
 8049dd0:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049dd6:	c7 46 04 72 3a 20 44 	movl   $0x44203a72,0x4(%esi)
 8049ddd:	c7 46 08 4e 53 20 69 	movl   $0x6920534e,0x8(%esi)
 8049de4:	c7 46 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%esi)
 8049deb:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049df2:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049df9:	c7 46 18 72 65 73 6f 	movl   $0x6f736572,0x18(%esi)
 8049e00:	c7 46 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%esi)
 8049e07:	c7 46 20 73 65 72 76 	movl   $0x76726573,0x20(%esi)
 8049e0e:	c7 46 24 65 72 20 61 	movl   $0x61207265,0x24(%esi)
 8049e15:	c7 46 28 64 64 72 65 	movl   $0x65726464,0x28(%esi)
 8049e1c:	66 c7 46 2c 73 73    	movw   $0x7373,0x2c(%esi)
 8049e22:	c6 46 2e 00          	movb   $0x0,0x2e(%esi)
 8049e26:	89 1c 24             	mov    %ebx,(%esp)
 8049e29:	e8 52 ea ff ff       	call   8048880 <close@plt>
 8049e2e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049e33:	e9 a3 00 00 00       	jmp    8049edb <init_driver+0x1d1>
 8049e38:	8d 7c 24 10          	lea    0x10(%esp),%edi
 8049e3c:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 8049e43:	00 
 8049e44:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 8049e4b:	00 
 8049e4c:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 8049e53:	00 
 8049e54:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
 8049e5b:	00 
 8049e5c:	66 c7 44 24 10 02 00 	movw   $0x2,0x10(%esp)
 8049e63:	8b 50 0c             	mov    0xc(%eax),%edx
 8049e66:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049e6a:	8d 54 24 14          	lea    0x14(%esp),%edx
 8049e6e:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049e72:	8b 40 10             	mov    0x10(%eax),%eax
 8049e75:	8b 00                	mov    (%eax),%eax
 8049e77:	89 04 24             	mov    %eax,(%esp)
 8049e7a:	e8 f1 e8 ff ff       	call   8048770 <bcopy@plt>
 8049e7f:	66 c7 44 24 12 43 31 	movw   $0x3143,0x12(%esp)
 8049e86:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 8049e8d:	00 
 8049e8e:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049e92:	89 1c 24             	mov    %ebx,(%esp)
 8049e95:	e8 d6 e9 ff ff       	call   8048870 <connect@plt>
 8049e9a:	85 c0                	test   %eax,%eax
 8049e9c:	79 27                	jns    8049ec5 <init_driver+0x1bb>
 8049e9e:	c7 44 24 08 c0 a4 04 	movl   $0x804a4c0,0x8(%esp)
 8049ea5:	08 
 8049ea6:	c7 44 24 04 04 a9 04 	movl   $0x804a904,0x4(%esp)
 8049ead:	08 
 8049eae:	89 34 24             	mov    %esi,(%esp)
 8049eb1:	e8 8a e9 ff ff       	call   8048840 <sprintf@plt>
 8049eb6:	89 1c 24             	mov    %ebx,(%esp)
 8049eb9:	e8 c2 e9 ff ff       	call   8048880 <close@plt>
 8049ebe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049ec3:	eb 16                	jmp    8049edb <init_driver+0x1d1>
 8049ec5:	89 1c 24             	mov    %ebx,(%esp)
 8049ec8:	e8 b3 e9 ff ff       	call   8048880 <close@plt>
 8049ecd:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
 8049ed2:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 8049ed6:	b8 00 00 00 00       	mov    $0x0,%eax
 8049edb:	83 c4 20             	add    $0x20,%esp
 8049ede:	5b                   	pop    %ebx
 8049edf:	5e                   	pop    %esi
 8049ee0:	5f                   	pop    %edi
 8049ee1:	c3                   	ret    

08049ee2 <driver_post>:
 8049ee2:	53                   	push   %ebx
 8049ee3:	83 ec 28             	sub    $0x28,%esp
 8049ee6:	8b 44 24 30          	mov    0x30(%esp),%eax
 8049eea:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
 8049eee:	83 7c 24 38 00       	cmpl   $0x0,0x38(%esp)
 8049ef3:	74 24                	je     8049f19 <driver_post+0x37>
 8049ef5:	8b 44 24 34          	mov    0x34(%esp),%eax
 8049ef9:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049efd:	c7 04 24 44 a9 04 08 	movl   $0x804a944,(%esp)
 8049f04:	e8 f7 e7 ff ff       	call   8048700 <printf@plt>
 8049f09:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049f0e:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049f12:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f17:	eb 4d                	jmp    8049f66 <driver_post+0x84>
 8049f19:	85 c0                	test   %eax,%eax
 8049f1b:	74 3b                	je     8049f58 <driver_post+0x76>
 8049f1d:	80 38 00             	cmpb   $0x0,(%eax)
 8049f20:	74 36                	je     8049f58 <driver_post+0x76>
 8049f22:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 8049f26:	8b 54 24 34          	mov    0x34(%esp),%edx
 8049f2a:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049f2e:	c7 44 24 10 5b a9 04 	movl   $0x804a95b,0x10(%esp)
 8049f35:	08 
 8049f36:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049f3a:	c7 44 24 08 64 a9 04 	movl   $0x804a964,0x8(%esp)
 8049f41:	08 
 8049f42:	c7 44 24 04 31 43 00 	movl   $0x4331,0x4(%esp)
 8049f49:	00 
 8049f4a:	c7 04 24 c0 a4 04 08 	movl   $0x804a4c0,(%esp)
 8049f51:	e8 8b f5 ff ff       	call   80494e1 <submitr>
 8049f56:	eb 0e                	jmp    8049f66 <driver_post+0x84>
 8049f58:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049f5d:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049f61:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f66:	83 c4 28             	add    $0x28,%esp
 8049f69:	5b                   	pop    %ebx
 8049f6a:	c3                   	ret    
 8049f6b:	66 90                	xchg   %ax,%ax
 8049f6d:	66 90                	xchg   %ax,%ax
 8049f6f:	90                   	nop

08049f70 <__libc_csu_init>:
 8049f70:	55                   	push   %ebp
 8049f71:	57                   	push   %edi
 8049f72:	31 ff                	xor    %edi,%edi
 8049f74:	56                   	push   %esi
 8049f75:	53                   	push   %ebx
 8049f76:	e8 65 e9 ff ff       	call   80488e0 <__x86.get_pc_thunk.bx>
 8049f7b:	81 c3 85 20 00 00    	add    $0x2085,%ebx
 8049f81:	83 ec 1c             	sub    $0x1c,%esp
 8049f84:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8049f88:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 8049f8e:	e8 29 e7 ff ff       	call   80486bc <_init>
 8049f93:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8049f99:	29 c6                	sub    %eax,%esi
 8049f9b:	c1 fe 02             	sar    $0x2,%esi
 8049f9e:	85 f6                	test   %esi,%esi
 8049fa0:	74 27                	je     8049fc9 <__libc_csu_init+0x59>
 8049fa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049fa8:	8b 44 24 38          	mov    0x38(%esp),%eax
 8049fac:	89 2c 24             	mov    %ebp,(%esp)
 8049faf:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049fb3:	8b 44 24 34          	mov    0x34(%esp),%eax
 8049fb7:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049fbb:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8049fc2:	83 c7 01             	add    $0x1,%edi
 8049fc5:	39 f7                	cmp    %esi,%edi
 8049fc7:	75 df                	jne    8049fa8 <__libc_csu_init+0x38>
 8049fc9:	83 c4 1c             	add    $0x1c,%esp
 8049fcc:	5b                   	pop    %ebx
 8049fcd:	5e                   	pop    %esi
 8049fce:	5f                   	pop    %edi
 8049fcf:	5d                   	pop    %ebp
 8049fd0:	c3                   	ret    
 8049fd1:	eb 0d                	jmp    8049fe0 <__libc_csu_fini>
 8049fd3:	90                   	nop
 8049fd4:	90                   	nop
 8049fd5:	90                   	nop
 8049fd6:	90                   	nop
 8049fd7:	90                   	nop
 8049fd8:	90                   	nop
 8049fd9:	90                   	nop
 8049fda:	90                   	nop
 8049fdb:	90                   	nop
 8049fdc:	90                   	nop
 8049fdd:	90                   	nop
 8049fde:	90                   	nop
 8049fdf:	90                   	nop

08049fe0 <__libc_csu_fini>:
 8049fe0:	f3 c3                	repz ret 

Disassembly of section .fini:

08049fe4 <_fini>:
 8049fe4:	53                   	push   %ebx
 8049fe5:	83 ec 08             	sub    $0x8,%esp
 8049fe8:	e8 f3 e8 ff ff       	call   80488e0 <__x86.get_pc_thunk.bx>
 8049fed:	81 c3 13 20 00 00    	add    $0x2013,%ebx
 8049ff3:	83 c4 08             	add    $0x8,%esp
 8049ff6:	5b                   	pop    %ebx
 8049ff7:	c3                   	ret    
