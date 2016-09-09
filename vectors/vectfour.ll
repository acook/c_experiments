
define <4 x i32> @mul4(<4 x i32> %v1, <4 x i32> %v2) {
  %1 = mul <4 x i32> %v1, %v2
  ret <4 x i32> %1
}

define i32 @main() #0 {
  call <4 x i32> @mul4(
    <4 x i32> <i32 1, i32 2, i32 3, i32 4 >,
    <4 x i32> <i32 1, i32 2, i32 3, i32 4 >
  )

  ;; return code
  %r1 = alloca i32, align 4
  store i32 0, i32* %r1, align 4
  ret i32 0
}

