#include <stdio.h>
#include <stdlib.h>
void segfault()
{
  int *p=NULL;
  *p=100;
}
int main(void)
{
 //    segfault();
      char buf[2]="a";
      buf[10]='A';
      printf("%c\n",buf[10]);
     return 0;
}
