   #include<stdlib.h>
   #include<stdio.h>
   // global variable
    int var1 = 1;   //1.全局变量
    
    // static variable
    static int var2 = 2;    //2.静态变量
    
    // const variable
    const int var3 = 3;  //3.常量
    
    void if_stmt(void) {    //4.if语句
      if (var1 == 1) {
        var1 = 2;
      } else {
        var1 = 3;
      }
    }
    
    void for_stmt(void) {   //5.for语句
      int i;
      for (i = 0; i < 10; i++) {
        var1 = i;
      }
    }
    
    void while_stmt(void) {    //6.while语句
      while (var1 == 1) {
        var1 = 2;
      }
    }
    
    void break_continue(void){  //7.break/continue语句
        while(1){
            if(var1<5){var1++;continue;}
            else break;
            var1=6;
        }
    }
    int return_stmt(void) { return 1; }  //8.return语句
    
    void expr(void) {   //9.算术运算
      // arithmetic operators
      // binary operators
      var1 = var2 + var3;
      var1 = var2 - var3;
      var1 = var2 * var3;
      var1 = var2 / var3;
      var1 = var2 % var3;
      // unary operators
      var1 = -var2;
    
      // relational operators
      int cmp_result;   //10.关系运算
      cmp_result = (var1 == var2);
      cmp_result = (var1 > var2);
      cmp_result = (var1 < var2);
      cmp_result = (var1 >= var2);
      cmp_result = (var1 <= var2);
      cmp_result = (var1 != var2);
    
      // logical operators  //11.赋值运算
      int oprand1 = 1;
      int oprand2 = 0;
      int oprand3 = 256;
     
      //12.逻辑运算
      cmp_result = oprand1 && oprand2;
      cmp_result = oprand1 || oprand2;
      cmp_result = !oprand1;

      //13.位运算
      cmp_result=oprand1<<4;
      cmp_result=oprand3>>4;
    }
    
    void array_decl_access(void) {  //14.数组
      // declration
      int arr_1d[4] = {1, 2, 3, 4};
      int arr_2d[4][4] = {{1, 2, 3, 4}, {2, 3, 4, 5}, {3, 4, 5, 6}, {4, 5, 6, 7}};
    
      // access
      arr_1d[2] = 4;
      arr_2d[2][3] = 6;
    }
    void ptr(void){     //15.指针
        int a=1;
        int *p=&a;
    }
    void callee_noreturn(void) {    //16.无参无返函数
      // do nothing here
    }
    
    int callee_void(void) { return 1; }     //17.无参有返函数
    
    int callee_args(int a, int b) { return 1; }     //18.有参有返函数
    
    void caller(void) { 
      int result;
      callee_noreturn();
      result = callee_void();
      result = callee_args(1, 2);
    }
    
    void float_impl(void) {     //19.浮点数
      float f1 = 1.0f;
      float f2 = 2.0f;
    
      float tmp_result;
      tmp_result = f1 + f2;
      tmp_result = f1 - f2;
      tmp_result = f1 * f2;
      tmp_result = f1 / f2;
    
      int cmp_result;
      cmp_result = f1 == f2;
      cmp_result = f1 > f2;
      cmp_result = f1 < f2;
      cmp_result = f1 >= f2;
      cmp_result = f1 <= f2;
      cmp_result = f1 != f2;
    }
int main(){     //20.库函数
    scanf("%d",&var1);
    printf("%d\n",var1);
    return 0;
}