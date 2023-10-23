#NO_APP
	.text
	.align	2
	.globl	_test
_test:
	link.w a5,#0
	moveq #42,d0
	unlk a5
	rts
	.align	2
	.globl	_main
_main:
	link.w a5,#0
	jsr _test
	unlk a5
	rts
