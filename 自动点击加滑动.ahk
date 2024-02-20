#IfWinActive ahk_exe chrome.exe

F8::

	Loop
{
    Sleep, 2000  ; 等待2000毫秒，也就是2秒
	if GetColor(1017,1181)=="0x0095FF"{
	Click, 1017, 1181
	}
	if GetColor(1176,1860)=="0xD4E5F7" or GetColor(734,1931)=="0x7AC23C" or GetColor(812,1882)=="0xE8E8E8"{
	MouseMove, 736,1880
    Sleep, 100
    MouseClick, left, , , 1, 0, D  ; 鼠标左键按下，但不释放
    Sleep, 100
    MouseMove, 1170,1882
    Sleep, 100
    MouseClick, left, , , 1, 0, U  ; 释放鼠标左键
	}
    Click, 768, 1908  ; 在指定的屏幕坐标处进行点击
}
return


F9::stop := !stop
GetColor(x,y)
	{
	PixelGetColor, color, x, y, RGB
	StringRight color,color,10 ;
	return color
	}
	
