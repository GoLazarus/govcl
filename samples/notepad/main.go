package main

import (
	"gitee.com/ying32/govcl/vcl"
)

func main() {

	vcl.Application.SetOnException(func(sender vcl.IObject, e *vcl.Exception) {
		// 在这里自行处理VCL中的异常
	})
	vcl.Application.SetIconResId(3) // 具体资源id根据rsrc.exe编译的为准
	vcl.Application.Initialize()
	vcl.Application.SetMainFormOnTaskBar(true)
	vcl.Application.CreateFormFromBytes(mainFormBytes, &MainForm)
	vcl.Application.Run()

}
