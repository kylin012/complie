#include"sylib.h"
const int N=9;  
int lx(int n){    
    float f=2.0;    
    for (int i=n;i<N;i++){  
        f/=2;   
    }
    if(f>0.5)return 1;  
    else return 0;
}
int main(){     //the main function
    int n[2];
    n[0]=getint(); 
    scanf("%d",&n[1]); 
    int m=n[0],p=0;
    p=lx(m);
    printf("%d",p);
    return 0;
}