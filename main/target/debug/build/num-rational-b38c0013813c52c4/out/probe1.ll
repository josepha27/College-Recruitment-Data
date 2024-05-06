; ModuleID = 'probe1.7edd9db0eb14be53-cgu.0'
source_filename = "probe1.7edd9db0eb14be53-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::fmt::rt::Argument<'_>" = type { %"core::fmt::rt::ArgumentType<'_>" }
%"core::fmt::rt::ArgumentType<'_>" = type { [1 x i64], ptr }

@alloc_8df0580a595a87d56789d20c7318e185 = private unnamed_addr constant <{ [166 x i8] }> <{ [166 x i8] c"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap" }>, align 1
@alloc_fad0cd83b7d1858a846a172eb260e593 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"is_aligned_to: align is not a power-of-two" }>, align 1
@alloc_041983ee8170efdaaf95ba67fd072d26 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_fad0cd83b7d1858a846a172eb260e593, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@0 = private unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef }>, align 8
@alloc_818fc1551b6d56a457f1c07e7c880287 = private unnamed_addr constant <{ [81 x i8] }> <{ [81 x i8] c"/rustc/9c9b568792ef20d8459c745345dd3e79b7c7fa8c/library/core/src/ptr/const_ptr.rs" }>, align 1
@alloc_e5e69dfe75be92f77ed92046bb13284d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_818fc1551b6d56a457f1c07e7c880287, [16 x i8] c"Q\00\00\00\00\00\00\00\82\06\00\00\0D\00\00\00" }>, align 8
@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_af99043bc04c419363a7f04d23183506 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc_b94d8d3b3c28a2859e9bc954de55c816 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/9c9b568792ef20d8459c745345dd3e79b7c7fa8c/library/core/src/fmt/mod.rs" }>, align 1
@alloc_3d93d4701ec03e916d665303ebdc79df = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b94d8d3b3c28a2859e9bc954de55c816, [16 x i8] c"K\00\00\00\00\00\00\00U\01\00\00\0D\00\00\00" }>, align 8
@alloc_d4d2a2a8539eafc62756407d946babb3 = private unnamed_addr constant <{ [110 x i8] }> <{ [110 x i8] c"unsafe precondition(s) violated: ptr::read_volatile requires that the pointer argument is aligned and non-null" }>, align 1
@alloc_20b3d155afd5c58c42e598b7e6d186ef = private unnamed_addr constant <{ [93 x i8] }> <{ [93 x i8] c"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null" }>, align 1
@alloc_3edc548011dd125c2c108115deb815b8 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/9c9b568792ef20d8459c745345dd3e79b7c7fa8c/library/core/src/alloc/layout.rs" }>, align 1
@alloc_fc9b4988bfa009a1559f50fbf6bc06fb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3edc548011dd125c2c108115deb815b8, [16 x i8] c"P\00\00\00\00\00\00\00\C3\01\00\00)\00\00\00" }>, align 8
@alloc_763310d78c99c2c1ad3f8a9821e942f3 = private unnamed_addr constant <{ [61 x i8] }> <{ [61 x i8] c"is_nonoverlapping: `size_of::<T>() * count` overflows a usize" }>, align 1
@__rust_no_alloc_shim_is_unstable = external global i8
@alloc_b99730e73100e73a81f4fbfe74b3821d = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@alloc_53973d2fe29b4adba8bb7390b5678745 = private unnamed_addr constant <{ [8 x i8] }> zeroinitializer, align 8

; core::intrinsics::copy_nonoverlapping::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h0e2def5844c225cfE(ptr %src, ptr %dst, i64 %size, i64 %align, i64 %count) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = alloca [4 x i8], align 4
  %1 = alloca [4 x i8], align 4
  %_23 = alloca [48 x i8], align 8
  %_14 = alloca [48 x i8], align 8
  %_12 = ptrtoint ptr %src to i64
  %2 = icmp eq i64 %_12, 0
  br i1 %2, label %bb8, label %bb9

bb8:                                              ; preds = %start
  br label %bb6

bb9:                                              ; preds = %start
  %3 = call i64 @llvm.ctpop.i64(i64 %align)
  %4 = trunc i64 %3 to i32
  store i32 %4, ptr %1, align 4
  %_16 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %_16, 1
  br i1 %5, label %bb10, label %bb11

bb6:                                              ; preds = %bb10, %bb8
  br label %bb7

bb10:                                             ; preds = %bb9
  %_19 = sub i64 %align, 1
  %_18 = and i64 %_12, %_19
  %_6 = icmp eq i64 %_18, 0
  br i1 %_6, label %bb1, label %bb6

bb11:                                             ; preds = %bb9
  store ptr @alloc_041983ee8170efdaaf95ba67fd072d26, ptr %_14, align 8
  %6 = getelementptr inbounds i8, ptr %_14, i64 8
  store i64 1, ptr %6, align 8
  %7 = load ptr, ptr @0, align 8
  %8 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %9 = getelementptr inbounds i8, ptr %_14, i64 32
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %9, i64 8
  store i64 %8, ptr %10, align 8
  %11 = getelementptr inbounds i8, ptr %_14, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %11, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  store i64 0, ptr %12, align 8
; invoke core::panicking::panic_fmt
  invoke void @_ZN4core9panicking9panic_fmt17hbbd4f1b32eb00e78E(ptr align 8 %_14, ptr align 8 @alloc_e5e69dfe75be92f77ed92046bb13284d) #13
          to label %unreachable unwind label %terminate

bb1:                                              ; preds = %bb10
  %_21 = ptrtoint ptr %dst to i64
  %13 = icmp eq i64 %_21, 0
  br i1 %13, label %bb13, label %bb14

bb7:                                              ; preds = %bb4, %bb5, %bb6
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h50c135ecfa753ef8E(ptr align 1 @alloc_8df0580a595a87d56789d20c7318e185, i64 166) #14
  unreachable

bb13:                                             ; preds = %bb1
  br label %bb5

bb14:                                             ; preds = %bb1
  %14 = call i64 @llvm.ctpop.i64(i64 %align)
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %0, align 4
  %_25 = load i32, ptr %0, align 4
  %16 = icmp eq i32 %_25, 1
  br i1 %16, label %bb15, label %bb16

bb5:                                              ; preds = %bb15, %bb13
  br label %bb7

bb15:                                             ; preds = %bb14
  %_28 = sub i64 %align, 1
  %_27 = and i64 %_21, %_28
  %_7 = icmp eq i64 %_27, 0
  br i1 %_7, label %bb2, label %bb5

bb16:                                             ; preds = %bb14
  store ptr @alloc_041983ee8170efdaaf95ba67fd072d26, ptr %_23, align 8
  %17 = getelementptr inbounds i8, ptr %_23, i64 8
  store i64 1, ptr %17, align 8
  %18 = load ptr, ptr @0, align 8
  %19 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %20 = getelementptr inbounds i8, ptr %_23, i64 32
  store ptr %18, ptr %20, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  store i64 %19, ptr %21, align 8
  %22 = getelementptr inbounds i8, ptr %_23, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %22, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 8
  store i64 0, ptr %23, align 8
; invoke core::panicking::panic_fmt
  invoke void @_ZN4core9panicking9panic_fmt17hbbd4f1b32eb00e78E(ptr align 8 %_23, ptr align 8 @alloc_e5e69dfe75be92f77ed92046bb13284d) #13
          to label %unreachable unwind label %terminate

bb2:                                              ; preds = %bb15
; invoke core::ub_checks::is_nonoverlapping::runtime
  %_9 = invoke zeroext i1 @_ZN4core9ub_checks17is_nonoverlapping7runtime17h20df6e0328d7f5c6E(ptr %src, ptr %dst, i64 %size, i64 %count)
          to label %bb18 unwind label %terminate

terminate:                                        ; preds = %bb11, %bb16, %bb2
  %24 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17hde7c559d251ef287E() #15
  unreachable

bb18:                                             ; preds = %bb2
  br i1 %_9, label %bb3, label %bb4

bb4:                                              ; preds = %bb18
  br label %bb7

bb3:                                              ; preds = %bb18
  ret void

unreachable:                                      ; preds = %bb11, %bb16
  unreachable
}

; core::intrinsics::unlikely
; Function Attrs: nounwind uwtable
define internal zeroext i1 @_ZN4core10intrinsics8unlikely17h6127434538742d48E(i1 zeroext %b) unnamed_addr #1 {
start:
  ret i1 %b
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hf5f0f90f7700ef5dE(ptr sret([48 x i8]) align 8 %_0, ptr align 8 %pieces.0, i64 %pieces.1, ptr align 8 %args.0, i64 %args.1) unnamed_addr #2 {
start:
  %_9 = alloca [48 x i8], align 8
  %_3 = icmp ult i64 %pieces.1, %args.1
  br i1 %_3, label %bb3, label %bb1

bb1:                                              ; preds = %start
  %_7 = add i64 %args.1, 1
  %_6 = icmp ugt i64 %pieces.1, %_7
  br i1 %_6, label %bb2, label %bb4

bb3:                                              ; preds = %bb2, %start
  store ptr @alloc_af99043bc04c419363a7f04d23183506, ptr %_9, align 8
  %0 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 1, ptr %0, align 8
  %1 = load ptr, ptr @0, align 8
  %2 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %3 = getelementptr inbounds i8, ptr %_9, i64 32
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %2, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %_9, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %5, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  store i64 0, ptr %6, align 8
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17hbbd4f1b32eb00e78E(ptr align 8 %_9, ptr align 8 @alloc_3d93d4701ec03e916d665303ebdc79df) #13
  unreachable

bb4:                                              ; preds = %bb1
  store ptr %pieces.0, ptr %_0, align 8
  %7 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %pieces.1, ptr %7, align 8
  %8 = load ptr, ptr @0, align 8
  %9 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %10 = getelementptr inbounds i8, ptr %_0, i64 32
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds i8, ptr %10, i64 8
  store i64 %9, ptr %11, align 8
  %12 = getelementptr inbounds i8, ptr %_0, i64 16
  store ptr %args.0, ptr %12, align 8
  %13 = getelementptr inbounds i8, ptr %12, i64 8
  store i64 %args.1, ptr %13, align 8
  ret void

bb2:                                              ; preds = %bb1
  br label %bb3
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17hf5c38a9d55372155E(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %0, i64 %1) unnamed_addr #2 {
start:
  %_2 = alloca [16 x i8], align 8
  store ptr %0, ptr %_2, align 8
  %2 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %1, ptr %2, align 8
  %3 = load ptr, ptr %_2, align 8
  %4 = getelementptr inbounds i8, ptr %_2, i64 8
  %5 = load i64, ptr %4, align 8
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hcdebe82dbdf6baaaE"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %3, i64 %5)
  ret void
}

; core::ptr::read_volatile::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZN4core3ptr13read_volatile18precondition_check17h18ee08228c5222dfE(ptr %addr, i64 %align) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = alloca [4 x i8], align 4
  %_8 = alloca [48 x i8], align 8
  %_6 = ptrtoint ptr %addr to i64
  %1 = icmp eq i64 %_6, 0
  br i1 %1, label %bb3, label %bb4

bb3:                                              ; preds = %start
  br label %bb2

bb4:                                              ; preds = %start
  %2 = call i64 @llvm.ctpop.i64(i64 %align)
  %3 = trunc i64 %2 to i32
  store i32 %3, ptr %0, align 4
  %_10 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %_10, 1
  br i1 %4, label %bb5, label %bb6

bb2:                                              ; preds = %bb5, %bb3
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h50c135ecfa753ef8E(ptr align 1 @alloc_d4d2a2a8539eafc62756407d946babb3, i64 110) #14
  unreachable

bb5:                                              ; preds = %bb4
  %_13 = sub i64 %align, 1
  %_12 = and i64 %_6, %_13
  %_3 = icmp eq i64 %_12, 0
  br i1 %_3, label %bb1, label %bb2

bb6:                                              ; preds = %bb4
  store ptr @alloc_041983ee8170efdaaf95ba67fd072d26, ptr %_8, align 8
  %5 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 1, ptr %5, align 8
  %6 = load ptr, ptr @0, align 8
  %7 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %8 = getelementptr inbounds i8, ptr %_8, i64 32
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  store i64 %7, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %_8, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %10, align 8
  %11 = getelementptr inbounds i8, ptr %10, i64 8
  store i64 0, ptr %11, align 8
; invoke core::panicking::panic_fmt
  invoke void @_ZN4core9panicking9panic_fmt17hbbd4f1b32eb00e78E(ptr align 8 %_8, ptr align 8 @alloc_e5e69dfe75be92f77ed92046bb13284d) #13
          to label %unreachable unwind label %terminate

bb1:                                              ; preds = %bb5
  ret void

terminate:                                        ; preds = %bb6
  %12 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17hde7c559d251ef287E() #15
  unreachable

unreachable:                                      ; preds = %bb6
  unreachable
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h253be3240120930cE"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h3fcbc70b37481ef5E"(ptr align 8 %_1)
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h3fcbc70b37481ef5E"(ptr align 8 %_1) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %0 = alloca [16 x i8], align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h865fe1de4ddfcb9eE"(ptr align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
; invoke core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h30af457368dd2a83E"(ptr align 8 %_1) #16
          to label %bb1 unwind label %terminate

cleanup:                                          ; preds = %start
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  store ptr %2, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %3, ptr %4, align 8
  br label %bb3

bb4:                                              ; preds = %start
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h30af457368dd2a83E"(ptr align 8 %_1)
  ret void

terminate:                                        ; preds = %bb3
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h188c8ebbf3320d8dE() #15
  unreachable

bb1:                                              ; preds = %bb3
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds i8, ptr %0, i64 8
  %10 = load i32, ptr %9, align 8
  %11 = insertvalue { ptr, i32 } poison, ptr %8, 0
  %12 = insertvalue { ptr, i32 } %11, i32 %10, 1
  resume { ptr, i32 } %12
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h30af457368dd2a83E"(ptr align 8 %_1) unnamed_addr #3 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h737f4ce3b14c9ff4E"(ptr align 8 %_1)
  ret void
}

; core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
; Function Attrs: inlinehint nounwind uwtable
define internal void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hbfd1cc5c68d196adE"(ptr %ptr) unnamed_addr #0 {
start:
  %_4 = ptrtoint ptr %ptr to i64
  %0 = icmp eq i64 %_4, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h50c135ecfa753ef8E(ptr align 1 @alloc_20b3d155afd5c58c42e598b7e6d186ef, i64 93) #14
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; core::alloc::layout::Layout::array::inner
; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout5array5inner17hf45d61162347494bE(i64 %element_size, i64 %align, i64 %n) unnamed_addr #2 {
start:
  %_18 = alloca [8 x i8], align 8
  %_13 = alloca [8 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  %0 = icmp eq i64 %element_size, 0
  br i1 %0, label %bb5, label %bb1

bb5:                                              ; preds = %bb4, %start
  %array_size = mul nuw i64 %element_size, %n
  store i64 %align, ptr %_18, align 8
  %_19 = load i64, ptr %_18, align 8
  %_20 = icmp uge i64 %_19, 1
  %_21 = icmp ule i64 %_19, -9223372036854775808
  %_22 = and i1 %_20, %_21
  %1 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %array_size, ptr %1, align 8
  store i64 %_19, ptr %_9, align 8
  %2 = load i64, ptr %_9, align 8
  %3 = getelementptr inbounds i8, ptr %_9, i64 8
  %4 = load i64, ptr %3, align 8
  store i64 %2, ptr %_0, align 8
  %5 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %4, ptr %5, align 8
  br label %bb6

bb1:                                              ; preds = %start
  store i64 %align, ptr %_13, align 8
  %_14 = load i64, ptr %_13, align 8
  %_15 = icmp uge i64 %_14, 1
  %_16 = icmp ule i64 %_14, -9223372036854775808
  %_17 = and i1 %_15, %_16
  %_11 = sub i64 %_14, 1
  %_6 = sub i64 9223372036854775807, %_11
  %_7 = icmp eq i64 %element_size, 0
  br i1 %_7, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %_5 = udiv i64 %_6, %element_size
  %_4 = icmp ugt i64 %n, %_5
  br i1 %_4, label %bb3, label %bb4

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hb46ffd19db8f3df1E(ptr align 8 @alloc_fc9b4988bfa009a1559f50fbf6bc06fb) #13
  unreachable

bb4:                                              ; preds = %bb2
  br label %bb5

bb3:                                              ; preds = %bb2
  %6 = load i64, ptr @0, align 8
  %7 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  store i64 %6, ptr %_0, align 8
  %8 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %7, ptr %8, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb5
  %9 = load i64, ptr %_0, align 8
  %10 = getelementptr inbounds i8, ptr %_0, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = insertvalue { i64, i64 } poison, i64 %9, 0
  %13 = insertvalue { i64, i64 } %12, i64 %11, 1
  ret { i64, i64 } %13
}

; core::alloc::layout::Layout::dangling
; Function Attrs: inlinehint uwtable
define internal ptr @_ZN4core5alloc6layout6Layout8dangling17h87205b79cc6b6da1E(ptr align 8 %self) unnamed_addr #2 {
start:
  %_5 = alloca [8 x i8], align 8
  %_0 = alloca [8 x i8], align 8
  %self1 = load i64, ptr %self, align 8
  store i64 %self1, ptr %_5, align 8
  %_6 = load i64, ptr %_5, align 8
  %_7 = icmp uge i64 %_6, 1
  %_8 = icmp ule i64 %_6, -9223372036854775808
  %_9 = and i1 %_7, %_8
  %ptr = getelementptr i8, ptr null, i64 %_6
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hbfd1cc5c68d196adE"(ptr %ptr) #17
  br label %bb3

bb3:                                              ; preds = %bb1
  store ptr %ptr, ptr %_0, align 8
  %0 = load ptr, ptr %_0, align 8
  ret ptr %0
}

; core::option::Option<T>::map_or_else
; Function Attrs: inlinehint uwtable
define void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hc9d8407f54375a32E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %0, i64 %1, ptr align 8 %default) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_10 = alloca [1 x i8], align 1
  %_9 = alloca [1 x i8], align 1
  %_7 = alloca [16 x i8], align 8
  %self = alloca [16 x i8], align 8
  store ptr %0, ptr %self, align 8
  %3 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %1, ptr %3, align 8
  store i8 1, ptr %_10, align 1
  store i8 1, ptr %_9, align 1
  %4 = load ptr, ptr %self, align 8
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq i64 %5, 0
  %_4 = select i1 %6, i64 0, i64 1
  %7 = icmp eq i64 %_4, 0
  br i1 %7, label %bb2, label %bb3

bb2:                                              ; preds = %start
  store i8 0, ptr %_10, align 1
; invoke alloc::fmt::format::{{closure}}
  invoke void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h8e3bc548ae1c33f5E"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %default)
          to label %bb5 unwind label %cleanup

bb3:                                              ; preds = %start
  %t.0 = load ptr, ptr %self, align 8
  %8 = getelementptr inbounds i8, ptr %self, i64 8
  %t.1 = load i64, ptr %8, align 8
  store i8 0, ptr %_9, align 1
  store ptr %t.0, ptr %_7, align 8
  %9 = getelementptr inbounds i8, ptr %_7, i64 8
  store i64 %t.1, ptr %9, align 8
  %10 = load ptr, ptr %_7, align 8
  %11 = getelementptr inbounds i8, ptr %_7, i64 8
  %12 = load i64, ptr %11, align 8
; invoke core::ops::function::FnOnce::call_once
  invoke void @_ZN4core3ops8function6FnOnce9call_once17hf5c38a9d55372155E(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %10, i64 %12)
          to label %bb4 unwind label %cleanup

bb11:                                             ; preds = %cleanup
  %13 = load i8, ptr %_9, align 1
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb10, label %bb7

cleanup:                                          ; preds = %bb3, %bb2
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  store ptr %16, ptr %2, align 8
  %18 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 %17, ptr %18, align 8
  br label %bb11

bb5:                                              ; preds = %bb2
  br label %bb6

bb6:                                              ; preds = %bb9, %bb4, %bb5
  ret void

bb4:                                              ; preds = %bb3
  %19 = load i8, ptr %_10, align 1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %bb9, label %bb6

bb9:                                              ; preds = %bb4
  br label %bb6

bb7:                                              ; preds = %bb10, %bb11
  %21 = load i8, ptr %_10, align 1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb12, label %bb8

bb10:                                             ; preds = %bb11
  br label %bb7

bb8:                                              ; preds = %bb12, %bb7
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds i8, ptr %2, i64 8
  %25 = load i32, ptr %24, align 8
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1
  resume { ptr, i32 } %27

bb12:                                             ; preds = %bb7
  br label %bb8

bb1:                                              ; No predecessors!
  unreachable
}

; core::ub_checks::is_nonoverlapping::runtime
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @_ZN4core9ub_checks17is_nonoverlapping7runtime17h20df6e0328d7f5c6E(ptr %src, ptr %dst, i64 %size, i64 %count) unnamed_addr #2 {
start:
  %0 = alloca [1 x i8], align 1
  %diff = alloca [8 x i8], align 8
  %_9 = alloca [16 x i8], align 8
  %src_usize = ptrtoint ptr %src to i64
  %dst_usize = ptrtoint ptr %dst to i64
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %size, i64 %count)
  %_15.0 = extractvalue { i64, i1 } %1, 0
  %_15.1 = extractvalue { i64, i1 } %1, 1
  %2 = call i1 @llvm.expect.i1(i1 %_15.1, i1 false)
  %3 = zext i1 %2 to i8
  store i8 %3, ptr %0, align 1
  %4 = load i8, ptr %0, align 1
  %_12 = trunc i8 %4 to i1
  br i1 %_12, label %bb2, label %bb3

bb3:                                              ; preds = %start
  %5 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %_15.0, ptr %5, align 8
  store i64 1, ptr %_9, align 8
  %6 = getelementptr inbounds i8, ptr %_9, i64 8
  %size1 = load i64, ptr %6, align 8
  %_22 = icmp ult i64 %src_usize, %dst_usize
  br i1 %_22, label %bb4, label %bb5

bb2:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h50c135ecfa753ef8E(ptr align 1 @alloc_763310d78c99c2c1ad3f8a9821e942f3, i64 61) #14
  unreachable

bb5:                                              ; preds = %bb3
  %7 = sub i64 %src_usize, %dst_usize
  store i64 %7, ptr %diff, align 8
  br label %bb6

bb4:                                              ; preds = %bb3
  %8 = sub i64 %dst_usize, %src_usize
  store i64 %8, ptr %diff, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %_11 = load i64, ptr %diff, align 8
  %_0 = icmp uge i64 %_11, %size1
  ret i1 %_0
}

; <T as alloc::slice::hack::ConvertVec>::to_vec
; Function Attrs: inlinehint uwtable
define void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hb7deeca6c179cae7E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %s.0, i64 %s.1) unnamed_addr #2 {
start:
  %_12 = alloca [24 x i8], align 8
  %v = alloca [24 x i8], align 8
; call alloc::raw_vec::RawVec<T,A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h5825516fd414a817E"(ptr sret([24 x i8]) align 8 %_12, i64 %s.1, i1 zeroext false)
  %_13 = load i64, ptr %_12, align 8
  %0 = icmp eq i64 %_13, 0
  br i1 %0, label %bb4, label %bb3

bb4:                                              ; preds = %start
  %1 = getelementptr inbounds i8, ptr %_12, i64 8
  %res.0 = load i64, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %res.1 = load ptr, ptr %2, align 8
  store i64 %res.0, ptr %v, align 8
  %3 = getelementptr inbounds i8, ptr %v, i64 8
  store ptr %res.1, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %v, i64 8
  %self = load ptr, ptr %5, align 8
  br label %bb5

bb3:                                              ; preds = %start
  %6 = getelementptr inbounds i8, ptr %_12, i64 8
  %err.0 = load i64, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  %err.1 = load i64, ptr %7, align 8
; call alloc::raw_vec::handle_error
  call void @_ZN5alloc7raw_vec12handle_error17h800dae9b17271ebfE(i64 %err.0, i64 %err.1) #13
  unreachable

bb5:                                              ; preds = %bb4
; call core::intrinsics::copy_nonoverlapping::precondition_check
  call void @_ZN4core10intrinsics19copy_nonoverlapping18precondition_check17h0e2def5844c225cfE(ptr %s.0, ptr %self, i64 1, i64 1, i64 %s.1) #17
  br label %bb7

bb7:                                              ; preds = %bb5
  %8 = mul i64 %s.1, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %self, ptr align 1 %s.0, i64 %8, i1 false)
  %9 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 %s.1, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %v, i64 24, i1 false)
  ret void

bb2:                                              ; No predecessors!
  unreachable
}

; alloc::fmt::format
; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc3fmt6format17h800e3457e668a68eE(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %args) unnamed_addr #2 {
start:
  %_4 = alloca [8 x i8], align 8
  %_2 = alloca [16 x i8], align 8
  %_6.0 = load ptr, ptr %args, align 8
  %0 = getelementptr inbounds i8, ptr %args, i64 8
  %_6.1 = load i64, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %args, i64 16
  %_7.0 = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  %_7.1 = load i64, ptr %2, align 8
  %3 = icmp eq i64 %_6.1, 0
  br i1 %3, label %bb4, label %bb5

bb4:                                              ; preds = %start
  %4 = icmp eq i64 %_7.1, 0
  br i1 %4, label %bb7, label %bb3

bb5:                                              ; preds = %start
  %5 = icmp eq i64 %_6.1, 1
  br i1 %5, label %bb6, label %bb3

bb7:                                              ; preds = %bb4
  store ptr inttoptr (i64 1 to ptr), ptr %_2, align 8
  %6 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 0, ptr %6, align 8
  br label %bb2

bb3:                                              ; preds = %bb6, %bb5, %bb4
  %7 = load ptr, ptr @0, align 8
  %8 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  store ptr %7, ptr %_2, align 8
  %9 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %8, ptr %9, align 8
  br label %bb2

bb2:                                              ; preds = %bb3, %bb8, %bb7
  store ptr %args, ptr %_4, align 8
  %10 = load ptr, ptr %_2, align 8
  %11 = getelementptr inbounds i8, ptr %_2, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = load ptr, ptr %_4, align 8
; call core::option::Option<T>::map_or_else
  call void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hc9d8407f54375a32E"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %10, i64 %12, ptr align 8 %13)
  ret void

bb6:                                              ; preds = %bb5
  %14 = icmp eq i64 %_7.1, 0
  br i1 %14, label %bb8, label %bb3

bb8:                                              ; preds = %bb6
  %s = getelementptr inbounds [0 x { ptr, i64 }], ptr %_6.0, i64 0, i64 0
  %15 = getelementptr inbounds [0 x { ptr, i64 }], ptr %_6.0, i64 0, i64 0
  %_13.0 = load ptr, ptr %15, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 8
  %_13.1 = load i64, ptr %16, align 8
  store ptr %_13.0, ptr %_2, align 8
  %17 = getelementptr inbounds i8, ptr %_2, i64 8
  store i64 %_13.1, ptr %17, align 8
  br label %bb2
}

; alloc::fmt::format::{{closure}}
; Function Attrs: inlinehint uwtable
define void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h8e3bc548ae1c33f5E"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %_1) unnamed_addr #2 {
start:
  %_2 = alloca [48 x i8], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_2, ptr align 8 %_1, i64 48, i1 false)
; call alloc::fmt::format::format_inner
  call void @_ZN5alloc3fmt6format12format_inner17hc4c897c89b84a5daE(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %_2)
  ret void
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint uwtable
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hcdebe82dbdf6baaaE"(ptr sret([24 x i8]) align 8 %_0, ptr align 1 %self.0, i64 %self.1) unnamed_addr #2 {
start:
  %bytes = alloca [24 x i8], align 8
; call <T as alloc::slice::hack::ConvertVec>::to_vec
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hb7deeca6c179cae7E"(ptr sret([24 x i8]) align 8 %bytes, ptr align 1 %self.0, i64 %self.1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %bytes, i64 24, i1 false)
  ret void
}

; alloc::alloc::alloc
; Function Attrs: inlinehint uwtable
define internal ptr @_ZN5alloc5alloc5alloc17hc762f0280ec085e8E(i64 %0, i64 %1) unnamed_addr #2 {
start:
  %2 = alloca [1 x i8], align 1
  %_13 = alloca [8 x i8], align 8
  %layout = alloca [16 x i8], align 8
  store i64 %0, ptr %layout, align 8
  %3 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %3, align 8
  br label %bb3

bb3:                                              ; preds = %start
; call core::ptr::read_volatile::precondition_check
  call void @_ZN4core3ptr13read_volatile18precondition_check17h18ee08228c5222dfE(ptr @__rust_no_alloc_shim_is_unstable, i64 1) #17
  br label %bb5

bb5:                                              ; preds = %bb3
  %4 = load volatile i8, ptr @__rust_no_alloc_shim_is_unstable, align 1
  store i8 %4, ptr %2, align 1
  %_2 = load i8, ptr %2, align 1
  %5 = getelementptr inbounds i8, ptr %layout, i64 8
  %_5 = load i64, ptr %5, align 8
  %self = load i64, ptr %layout, align 8
  store i64 %self, ptr %_13, align 8
  %_14 = load i64, ptr %_13, align 8
  %_15 = icmp uge i64 %_14, 1
  %_16 = icmp ule i64 %_14, -9223372036854775808
  %_17 = and i1 %_15, %_16
  %_0 = call ptr @__rust_alloc(i64 %_5, i64 %_14) #17
  ret ptr %_0
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint uwtable
define internal { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hd4e50dd927179dfcE(ptr align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #2 {
start:
  %_35 = alloca [8 x i8], align 8
  %_30 = alloca [8 x i8], align 8
  %_16 = alloca [16 x i8], align 8
  %self3 = alloca [8 x i8], align 8
  %self2 = alloca [8 x i8], align 8
  %_11 = alloca [8 x i8], align 8
  %layout1 = alloca [16 x i8], align 8
  %raw_ptr = alloca [8 x i8], align 8
  %_6 = alloca [16 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  %layout = alloca [16 x i8], align 8
  store i64 %0, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %layout, i64 8
  %size = load i64, ptr %3, align 8
  %4 = icmp eq i64 %size, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
; call core::alloc::layout::Layout::dangling
  %data = call ptr @_ZN4core5alloc6layout6Layout8dangling17h87205b79cc6b6da1E(ptr align 8 %layout)
  br label %bb8

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb4, label %bb5

bb8:                                              ; preds = %bb2
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hbfd1cc5c68d196adE"(ptr %data) #17
  br label %bb10

bb10:                                             ; preds = %bb8
  store ptr %data, ptr %_6, align 8
  %5 = getelementptr inbounds i8, ptr %_6, i64 8
  store i64 0, ptr %5, align 8
  %6 = load ptr, ptr %_6, align 8
  %7 = getelementptr inbounds i8, ptr %_6, i64 8
  %8 = load i64, ptr %7, align 8
  store ptr %6, ptr %_0, align 8
  %9 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %8, ptr %9, align 8
  br label %bb7

bb7:                                              ; preds = %bb18, %bb12, %bb10
  %10 = load ptr, ptr %_0, align 8
  %11 = getelementptr inbounds i8, ptr %_0, i64 8
  %12 = load i64, ptr %11, align 8
  %13 = insertvalue { ptr, i64 } poison, ptr %10, 0
  %14 = insertvalue { ptr, i64 } %13, i64 %12, 1
  ret { ptr, i64 } %14

bb5:                                              ; preds = %bb1
  %15 = load i64, ptr %layout, align 8
  %16 = getelementptr inbounds i8, ptr %layout, i64 8
  %17 = load i64, ptr %16, align 8
; call alloc::alloc::alloc
  %18 = call ptr @_ZN5alloc5alloc5alloc17hc762f0280ec085e8E(i64 %15, i64 %17)
  store ptr %18, ptr %raw_ptr, align 8
  br label %bb6

bb4:                                              ; preds = %bb1
  %19 = load i64, ptr %layout, align 8
  %20 = getelementptr inbounds i8, ptr %layout, i64 8
  %21 = load i64, ptr %20, align 8
  store i64 %19, ptr %layout1, align 8
  %22 = getelementptr inbounds i8, ptr %layout1, i64 8
  store i64 %21, ptr %22, align 8
  %self4 = load i64, ptr %layout, align 8
  store i64 %self4, ptr %_30, align 8
  %_31 = load i64, ptr %_30, align 8
  %_32 = icmp uge i64 %_31, 1
  %_33 = icmp ule i64 %_31, -9223372036854775808
  %_34 = and i1 %_32, %_33
  %23 = call ptr @__rust_alloc_zeroed(i64 %size, i64 %_31) #17
  store ptr %23, ptr %raw_ptr, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %ptr = load ptr, ptr %raw_ptr, align 8
  %_36 = ptrtoint ptr %ptr to i64
  %24 = icmp eq i64 %_36, 0
  br i1 %24, label %bb12, label %bb13

bb12:                                             ; preds = %bb6
  store ptr null, ptr %self3, align 8
  store ptr null, ptr %self2, align 8
  %25 = load ptr, ptr @0, align 8
  %26 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  store ptr %25, ptr %_0, align 8
  %27 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %26, ptr %27, align 8
  br label %bb7

bb13:                                             ; preds = %bb6
  br label %bb14

bb14:                                             ; preds = %bb13
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hbfd1cc5c68d196adE"(ptr %ptr) #17
  br label %bb15

bb15:                                             ; preds = %bb14
  store ptr %ptr, ptr %_35, align 8
  %28 = load ptr, ptr %_35, align 8
  store ptr %28, ptr %self3, align 8
  %v = load ptr, ptr %self3, align 8
  store ptr %v, ptr %self2, align 8
  %v5 = load ptr, ptr %self2, align 8
  store ptr %v5, ptr %_11, align 8
  %ptr6 = load ptr, ptr %_11, align 8
  br label %bb16

bb16:                                             ; preds = %bb15
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hbfd1cc5c68d196adE"(ptr %ptr6) #17
  br label %bb18

bb18:                                             ; preds = %bb16
  store ptr %ptr6, ptr %_16, align 8
  %29 = getelementptr inbounds i8, ptr %_16, i64 8
  store i64 %size, ptr %29, align 8
  %30 = load ptr, ptr %_16, align 8
  %31 = getelementptr inbounds i8, ptr %_16, i64 8
  %32 = load i64, ptr %31, align 8
  store ptr %30, ptr %_0, align 8
  %33 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %32, ptr %33, align 8
  br label %bb7
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17had505e4d90fe755aE"(ptr sret([24 x i8]) align 8 %_0, ptr align 8 %self) unnamed_addr #3 {
start:
  %self1 = alloca [8 x i8], align 8
  %_9 = alloca [24 x i8], align 8
  %layout = alloca [16 x i8], align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = load i64, ptr %self, align 8
  %0 = icmp eq i64 %_3, 0
  br i1 %0, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  br label %bb3

bb4:                                              ; preds = %bb1
  %rhs = load i64, ptr %self, align 8
  %size = mul nuw i64 1, %rhs
  %1 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %size, ptr %1, align 8
  store i64 1, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %self, i64 8
  %self2 = load ptr, ptr %2, align 8
  store ptr %self2, ptr %self1, align 8
  %3 = load ptr, ptr %self1, align 8
  store ptr %3, ptr %_9, align 8
  %4 = load i64, ptr %layout, align 8
  %5 = getelementptr inbounds i8, ptr %layout, i64 8
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %_9, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  store i64 %6, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %_9, i64 24, i1 false)
  br label %bb5

bb3:                                              ; preds = %bb2
  %9 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 0, ptr %9, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  ret void
}

; alloc::raw_vec::RawVec<T,A>::try_allocate_in
; Function Attrs: uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15try_allocate_in17h5825516fd414a817E"(ptr sret([24 x i8]) align 8 %_0, i64 %capacity, i1 zeroext %0) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_26 = alloca [1 x i8], align 1
  %_24 = alloca [8 x i8], align 8
  %pointer = alloca [8 x i8], align 8
  %_22 = alloca [8 x i8], align 8
  %_21 = alloca [16 x i8], align 8
  %self = alloca [16 x i8], align 8
  %_19 = alloca [16 x i8], align 8
  %result = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %layout = alloca [16 x i8], align 8
  %alloc = alloca [0 x i8], align 1
  %init = alloca [1 x i8], align 1
  %2 = zext i1 %0 to i8
  store i8 %2, ptr %init, align 1
  store i8 1, ptr %_26, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = icmp eq i64 %capacity, 0
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  store i8 0, ptr %_26, align 1
; invoke alloc::raw_vec::RawVec<T,A>::new_in
  %4 = invoke { i64, ptr } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h51f1b8e8cee9a2e6E"()
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %bb1
; invoke core::alloc::layout::Layout::array::inner
  %5 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array5inner17hf45d61162347494bE(i64 1, i64 1, i64 %capacity)
          to label %bb21 unwind label %cleanup

bb20:                                             ; preds = %cleanup
  %6 = load i8, ptr %_26, align 1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb19, label %bb18

cleanup:                                          ; preds = %bb2, %bb8, %bb9, %bb4
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  store ptr %9, ptr %1, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %10, ptr %11, align 8
  br label %bb20

bb21:                                             ; preds = %bb4
  %12 = extractvalue { i64, i64 } %5, 0
  %13 = extractvalue { i64, i64 } %5, 1
  store i64 %12, ptr %_8, align 8
  %14 = getelementptr inbounds i8, ptr %_8, i64 8
  store i64 %13, ptr %14, align 8
  %15 = load i64, ptr %_8, align 8
  %16 = icmp eq i64 %15, 0
  %_9 = select i1 %16, i64 1, i64 0
  %17 = icmp eq i64 %_9, 0
  br i1 %17, label %bb7, label %bb6

bb7:                                              ; preds = %bb21
  %layout.0 = load i64, ptr %_8, align 8
  %18 = getelementptr inbounds i8, ptr %_8, i64 8
  %layout.1 = load i64, ptr %18, align 8
  store i64 %layout.0, ptr %layout, align 8
  %19 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %layout.1, ptr %19, align 8
  %20 = load i8, ptr %init, align 1
  %21 = trunc i8 %20 to i1
  %_14 = zext i1 %21 to i64
  %22 = icmp eq i64 %_14, 0
  br i1 %22, label %bb9, label %bb8

bb6:                                              ; preds = %bb21
  %23 = load i64, ptr @0, align 8
  %24 = load i64, ptr getelementptr inbounds (i8, ptr @0, i64 8), align 8
  %25 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %23, ptr %25, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 8
  store i64 %24, ptr %26, align 8
  store i64 1, ptr %_0, align 8
  br label %bb16

bb9:                                              ; preds = %bb7
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %27 = invoke { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h9691a9a6ec5ba7efE"(ptr align 1 %alloc, i64 %layout.0, i64 %layout.1)
          to label %bb10 unwind label %cleanup

bb8:                                              ; preds = %bb7
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %28 = invoke { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hda2f6e4bdbd319cbE"(ptr align 1 %alloc, i64 %layout.0, i64 %layout.1)
          to label %bb11 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %29 = extractvalue { ptr, i64 } %27, 0
  %30 = extractvalue { ptr, i64 } %27, 1
  store ptr %29, ptr %result, align 8
  %31 = getelementptr inbounds i8, ptr %result, i64 8
  store i64 %30, ptr %31, align 8
  br label %bb12

bb12:                                             ; preds = %bb11, %bb10
  %32 = load ptr, ptr %result, align 8
  %33 = ptrtoint ptr %32 to i64
  %34 = icmp eq i64 %33, 0
  %_17 = select i1 %34, i64 1, i64 0
  %35 = icmp eq i64 %_17, 0
  br i1 %35, label %bb14, label %bb13

bb11:                                             ; preds = %bb8
  %36 = extractvalue { ptr, i64 } %28, 0
  %37 = extractvalue { ptr, i64 } %28, 1
  store ptr %36, ptr %result, align 8
  %38 = getelementptr inbounds i8, ptr %result, i64 8
  store i64 %37, ptr %38, align 8
  br label %bb12

bb14:                                             ; preds = %bb12
  %ptr.0 = load ptr, ptr %result, align 8
  %39 = getelementptr inbounds i8, ptr %result, i64 8
  %ptr.1 = load i64, ptr %39, align 8
  store ptr %ptr.0, ptr %pointer, align 8
  %40 = load ptr, ptr %pointer, align 8
  store ptr %40, ptr %_22, align 8
  store i64 %capacity, ptr %_24, align 8
  %41 = load ptr, ptr %_22, align 8
  %42 = getelementptr inbounds i8, ptr %_21, i64 8
  store ptr %41, ptr %42, align 8
  %43 = load i64, ptr %_24, align 8
  store i64 %43, ptr %_21, align 8
  %44 = load i64, ptr %_21, align 8
  %45 = getelementptr inbounds i8, ptr %_21, i64 8
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %44, ptr %47, align 8
  %48 = getelementptr inbounds i8, ptr %47, i64 8
  store ptr %46, ptr %48, align 8
  store i64 0, ptr %_0, align 8
  br label %bb15

bb13:                                             ; preds = %bb12
  store i64 %layout.0, ptr %self, align 8
  %49 = getelementptr inbounds i8, ptr %self, i64 8
  store i64 %layout.1, ptr %49, align 8
  %50 = load i64, ptr %self, align 8
  %51 = getelementptr inbounds i8, ptr %self, i64 8
  %52 = load i64, ptr %51, align 8
  store i64 %50, ptr %_19, align 8
  %53 = getelementptr inbounds i8, ptr %_19, i64 8
  store i64 %52, ptr %53, align 8
  %54 = load i64, ptr %_19, align 8
  %55 = getelementptr inbounds i8, ptr %_19, i64 8
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %54, ptr %57, align 8
  %58 = getelementptr inbounds i8, ptr %57, i64 8
  store i64 %56, ptr %58, align 8
  store i64 1, ptr %_0, align 8
  br label %bb16

bb15:                                             ; preds = %bb3, %bb14
  br label %bb17

bb16:                                             ; preds = %bb6, %bb13
  br label %bb17

bb17:                                             ; preds = %bb15, %bb16
  ret void

bb5:                                              ; No predecessors!
  unreachable

bb3:                                              ; preds = %bb2
  %_5.0 = extractvalue { i64, ptr } %4, 0
  %_5.1 = extractvalue { i64, ptr } %4, 1
  %59 = getelementptr inbounds i8, ptr %_0, i64 8
  store i64 %_5.0, ptr %59, align 8
  %60 = getelementptr inbounds i8, ptr %59, i64 8
  store ptr %_5.1, ptr %60, align 8
  store i64 0, ptr %_0, align 8
  br label %bb15

bb18:                                             ; preds = %bb19, %bb20
  %61 = load ptr, ptr %1, align 8
  %62 = getelementptr inbounds i8, ptr %1, i64 8
  %63 = load i32, ptr %62, align 8
  %64 = insertvalue { ptr, i32 } poison, ptr %61, 0
  %65 = insertvalue { ptr, i32 } %64, i32 %63, 1
  resume { ptr, i32 } %65

bb19:                                             ; preds = %bb20
  br label %bb18
}

; alloc::raw_vec::RawVec<T,A>::new_in
; Function Attrs: uwtable
define { i64, ptr } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h51f1b8e8cee9a2e6E"() unnamed_addr #3 {
start:
  %_3 = alloca [8 x i8], align 8
  %_2 = alloca [8 x i8], align 8
  %_0 = alloca [16 x i8], align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
  call void @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17hbfd1cc5c68d196adE"(ptr getelementptr (i8, ptr null, i64 1)) #17
  br label %bb3

bb3:                                              ; preds = %bb1
  store ptr getelementptr (i8, ptr null, i64 1), ptr %_3, align 8
  %0 = load ptr, ptr %_3, align 8
  store ptr %0, ptr %_2, align 8
  %1 = load ptr, ptr %_2, align 8
  %2 = getelementptr inbounds i8, ptr %_0, i64 8
  store ptr %1, ptr %2, align 8
  store i64 0, ptr %_0, align 8
  %3 = load i64, ptr %_0, align 8
  %4 = getelementptr inbounds i8, ptr %_0, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = insertvalue { i64, ptr } poison, i64 %3, 0
  %7 = insertvalue { i64, ptr } %6, ptr %5, 1
  ret { i64, ptr } %7
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h4dc69a0355f76595E"(ptr align 1 %self, ptr %ptr, i64 %0, i64 %1) unnamed_addr #2 {
start:
  %_13 = alloca [8 x i8], align 8
  %layout1 = alloca [16 x i8], align 8
  %layout = alloca [16 x i8], align 8
  store i64 %0, ptr %layout, align 8
  %2 = getelementptr inbounds i8, ptr %layout, i64 8
  store i64 %1, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %layout, i64 8
  %_4 = load i64, ptr %3, align 8
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %bb1, %start
  ret void

bb1:                                              ; preds = %start
  %5 = load i64, ptr %layout, align 8
  %6 = getelementptr inbounds i8, ptr %layout, i64 8
  %7 = load i64, ptr %6, align 8
  store i64 %5, ptr %layout1, align 8
  %8 = getelementptr inbounds i8, ptr %layout1, i64 8
  store i64 %7, ptr %8, align 8
  %self2 = load i64, ptr %layout, align 8
  store i64 %self2, ptr %_13, align 8
  %_14 = load i64, ptr %_13, align 8
  %_15 = icmp uge i64 %_14, 1
  %_16 = icmp ule i64 %_14, -9223372036854775808
  %_17 = and i1 %_15, %_16
  call void @__rust_dealloc(ptr %ptr, i64 %_4, i64 %_14) #17
  br label %bb2
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
; Function Attrs: inlinehint uwtable
define internal { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hda2f6e4bdbd319cbE"(ptr align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #2 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hd4e50dd927179dfcE(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %_0.0 = extractvalue { ptr, i64 } %0, 0
  %_0.1 = extractvalue { ptr, i64 } %0, 1
  %1 = insertvalue { ptr, i64 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_0.1, 1
  ret { ptr, i64 } %2
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint uwtable
define internal { ptr, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h9691a9a6ec5ba7efE"(ptr align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #2 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { ptr, i64 } @_ZN5alloc5alloc6Global10alloc_impl17hd4e50dd927179dfcE(ptr align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %_0.0 = extractvalue { ptr, i64 } %0, 0
  %_0.1 = extractvalue { ptr, i64 } %0, 1
  %1 = insertvalue { ptr, i64 } poison, ptr %_0.0, 0
  %2 = insertvalue { ptr, i64 } %1, i64 %_0.1, 1
  ret { ptr, i64 } %2
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h865fe1de4ddfcb9eE"(ptr align 8 %self) unnamed_addr #3 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %self1 = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h737f4ce3b14c9ff4E"(ptr align 8 %self) unnamed_addr #3 {
start:
  %_2 = alloca [24 x i8], align 8
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17had505e4d90fe755aE"(ptr sret([24 x i8]) align 8 %_2, ptr align 8 %self)
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  %1 = load i64, ptr %0, align 8
  %2 = icmp eq i64 %1, 0
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %start
  %ptr = load ptr, ptr %_2, align 8
  %4 = getelementptr inbounds i8, ptr %_2, i64 8
  %layout.0 = load i64, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  %layout.1 = load i64, ptr %5, align 8
  %_7 = getelementptr inbounds i8, ptr %self, i64 16
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h4dc69a0355f76595E"(ptr align 1 %_7, ptr %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  ret void

bb5:                                              ; No predecessors!
  unreachable
}

; probe1::probe
; Function Attrs: uwtable
define void @_ZN6probe15probe17h460f4946ef234adaE() unnamed_addr #3 {
start:
  %_3.i = alloca [16 x i8], align 8
  %_8 = alloca [16 x i8], align 8
  %_7 = alloca [16 x i8], align 8
  %_3 = alloca [48 x i8], align 8
  %res = alloca [24 x i8], align 8
  %_1 = alloca [24 x i8], align 8
  store ptr @alloc_53973d2fe29b4adba8bb7390b5678745, ptr %_3.i, align 8
  %0 = getelementptr inbounds i8, ptr %_3.i, i64 8
  store ptr @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17hac2c19fb5a585010E", ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_8, ptr align 8 %_3.i, i64 16, i1 false)
  %1 = getelementptr inbounds [1 x %"core::fmt::rt::Argument<'_>"], ptr %_7, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %_8, i64 16, i1 false)
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117hf5f0f90f7700ef5dE(ptr sret([48 x i8]) align 8 %_3, ptr align 8 @alloc_b99730e73100e73a81f4fbfe74b3821d, i64 1, ptr align 8 %_7, i64 1)
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17h800e3457e668a68eE(ptr sret([24 x i8]) align 8 %res, ptr align 8 %_3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_1, ptr align 8 %res, i64 24, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h253be3240120930cE"(ptr align 8 %_1)
  ret void
}

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #4

; core::panicking::panic_cannot_unwind
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17hde7c559d251ef287E() unnamed_addr #5

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking14panic_nounwind17h50c135ecfa753ef8E(ptr align 1, i64) unnamed_addr #5

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking9panic_fmt17hbbd4f1b32eb00e78E(ptr align 8, ptr align 8) unnamed_addr #6

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17hac2c19fb5a585010E"(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; core::panicking::panic_in_cleanup
; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h188c8ebbf3320d8dE() unnamed_addr #5

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hb46ffd19db8f3df1E(ptr align 8) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #8

; alloc::raw_vec::handle_error
; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h800dae9b17271ebfE(i64, i64) unnamed_addr #9

; alloc::fmt::format::format_inner
; Function Attrs: uwtable
declare void @_ZN5alloc3fmt6format12format_inner17hc4c897c89b84a5daE(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc(i64, i64 allocalign) unnamed_addr #10

; Function Attrs: nounwind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias ptr @__rust_alloc_zeroed(i64, i64 allocalign) unnamed_addr #11

; Function Attrs: nounwind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #12

attributes #0 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #1 = { nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #2 = { inlinehint uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #3 = { uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #6 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold noreturn uwtable "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #10 = { nounwind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #11 = { nounwind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #12 = { nounwind allockind("free") uwtable "alloc-family"="__rust_alloc" "frame-pointer"="non-leaf" "probe-stack"="inline-asm" "target-cpu"="apple-m1" }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.80.0-nightly (9c9b56879 2024-05-05)"}
