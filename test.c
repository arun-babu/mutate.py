#include<stdio.h>

int main()
{
	int i = 0, sum = 0;

	for (i = 0; i < 100; ++i)
	{
		sum += i;
	}

	printf("%d\n",sum);

	return 0;
}
