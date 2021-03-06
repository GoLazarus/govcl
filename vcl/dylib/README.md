### 简介

dylib是从govcl的api包中分离出来，可以方便其它使用。
dylib实现现了一个通用的共享库调用，可以在windows、linux、macOS下不需要任何改变实现通用。
Window下使用syscall.NewLazyDLL加载dll，linux与macOS下使用dlopen加载，然后使用dlsym来获取,
通过封装，使用接口与Windows下的一模一样，如此达到通用，最多实现12个参数的过程。

在被调用的共享库中如果导出了“MySyscall”函数，则会使用此函数来call， 一般导出此函数的目的是为了在共享库中捕获异常，不然一但共享库中出现异常
程序就挂了。


### 使用方法

```go

import "gitee.com/ying32/govcl/vcl/dylib"

var (
    lib = dylib.NewLazyDLL("xxx.dll") // 或者 dylib.NewLazyDLL("xxx.so") 或者 dylib.NewLazyDLL("xxx.dylib")
    _Func1 = lib.NewProc("Func1") 
)

func Func1(a1, a2 int) int {
    r, _, _ := _Func1.Call(uintptr(a1), uintptr(a2))
    return int(r)
}

```