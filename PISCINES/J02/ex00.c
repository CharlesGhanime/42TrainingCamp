#include<stdio.h>
#include<stdlib.h>

void ft_print_alphabet(void);

//int a=97;

void ft_print_alphabet(void)
{
int a=97;
while (a<123)
{
putchar(a);
a++;
}
}

int main(int argc, char *argv[])
{
   
    ft_print_alphabet();

    return 0;
}
