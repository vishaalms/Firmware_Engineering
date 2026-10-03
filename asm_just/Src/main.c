
char ch [5] __attribute__((section(".data"))) = { 1 , 2 ,3 ,4 ,5 } ;

extern char j ;

int fun2(void);

int main(void)
{
	ch[1] =  0x69 ;

	j = 0xEE ;

	//int x = fun2() ;


	for(;;);
}

