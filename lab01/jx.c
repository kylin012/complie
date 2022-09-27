#include<stdio.h>
#include<math.h>
const int INF=9999;
#define MM INF
#define M 9
int jie(int n){
    int f=1;
    for(int i=2;i<=n;i++){
        f*=i;
        if(f>MM)break;  //阶乘最大只到9999
    }
    return f;
}
int aaa(){
    return 0;
}
int main(){
    #if M
        printf("Yes\n");
    #endif
    int nouse=1;
    int i,n,f;
    scanf("%d",&n);
    f=jie(n);
    printf("%d",f);
    return 0;
}