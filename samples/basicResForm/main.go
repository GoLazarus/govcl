package main

import (
	"gitee.com/ying32/govcl/vcl"
	"gitee.com/ying32/govcl/vcl/exts/tools"
	"gitee.com/ying32/govcl/vcl/rtl"
)

func main() {
	// mac下发布时去掉，只在测试时使用
	tools.RunWithMacOSApp()

	vcl.Application.SetIconResId(3)
	vcl.Application.Initialize()
	vcl.Application.SetMainFormOnTaskBar(true)
	vcl.Application.SetOnException(func(sender vcl.IObject, e *vcl.Exception) {
		vcl.ShowMessage(e.Message())
	})
	//   Form1.gfm
	vcl.Application.CreateFormFromFile(rtl.ExtractFilePath(vcl.Application.ExeName())+"Form1.gfm", &Form1)
	// 文件加载方式
	//	vcl.Application.CreateFormFromFile("Form2.gfm", &Form2)
	// 字节加载方式
	vcl.Application.CreateFormFromBytes(form2Bytes, &Form2)

	vcl.Application.Run()

}
