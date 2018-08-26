#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main(int argc, char *argv[])
{
int nbr=0;
int *nbr=&nbr;

printf("%d", &nbr);

return 0;
}
