@N = constant i32 9, align 4
@str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

define i32 @lx(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store float 2.0, float* %4, align 4
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* %5, align 4
  br label %7

; <label>:7:                                      
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 9
  br i1 %9, label %10, label %16

; <label>:10:                                   
  %11 = load float, float* %4, align 4
  %12 = fdiv float %11, 2.0
  store float %12, float* %4, align 4
  br label %13

; <label>:13:                               
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  br label %7

; <label>:16:                                
  %17 = load float, float* %4, align 4
  %18 = fpext float %17 to double
  %19 = fcmp ogt double %18, 5.0e-1
  br i1 %19, label %20, label %21

; <label>:20:                                
  store i32 1, i32* %2, align 4
  br label %22

; <label>:21:                                 
  store i32 0, i32* %2, align 4
  br label %22

; <label>:22:                                 
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 (...) @getint()
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %8 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str, i32 0, i32 0), i32* %7)
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @lx(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str, i32 0, i32 0), i32 %13)
  ret i32 0
}

declare i32 @getint(...) #1
declare i32 @__isoc99_scanf(i8*, ...) #1
declare i32 @printf(i8*, ...) #1


