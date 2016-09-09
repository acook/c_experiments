; ModuleID = 'vectors/cvect.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@.str = private unnamed_addr constant [11 x i8] c"result: %d\00", align 1

; Function Attrs: nounwind ssp uwtable
define <4 x i32> @mult(<4 x i32> %v1, <4 x i32> %v2) #0 {
  %1 = alloca <4 x i32>, align 16
  %2 = alloca <4 x i32>, align 16
  store <4 x i32> %v1, <4 x i32>* %1, align 16
  store <4 x i32> %v2, <4 x i32>* %2, align 16
  %3 = load <4 x i32>, <4 x i32>* %1, align 16
  %4 = load <4 x i32>, <4 x i32>* %2, align 16
  %5 = mul <4 x i32> %3, %4
  ret <4 x i32> %5
}

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %v3 = alloca <4 x i32>, align 16
  %i = alloca i32, align 4
  %v1 = alloca <4 x i32>, align 16
  %v2 = alloca <4 x i32>, align 16
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, <4 x i32>* %v1, align 16
  store <4 x i32> <i32 7, i32 8, i32 9, i32 10>, <4 x i32>* %v2, align 16
  %1 = load <4 x i32>, <4 x i32>* %v1, align 16
  %2 = load <4 x i32>, <4 x i32>* %v2, align 16
  %3 = call <4 x i32> @mult(<4 x i32> %1, <4 x i32> %2)
  store <4 x i32> %3, <4 x i32>* %v3, align 16
  %4 = load <4 x i32>, <4 x i32>* %v3, align 16
  %5 = extractelement <4 x i32> %4, i64 0
  store i32 %5, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %6)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+avx,+avx2,+cx16,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+avx,+avx2,+cx16,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.3.0 (clang-703.0.31)"}
