#include <stdio.h>
#include <string.h>
struct Name{
        char name[5];
        int age;
    } ;
int main(){
    
   struct Name name1;
   strcpy(name1.name,"abela");
   name1.age =67;
   printf("Name %s",name1.name);
   int a =fork();
    return 0;
}
