; This script was created using Pulover's Macro Creator
; www.macrocreator.com

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


F3::
CbG:
Loop
{
    Repetir := 3
    Intervalo := 300
    Aguardar := 500
    Loop, %Repetir%
    {
        CoordMode, Pixel, Screen
        ImageSearch, AtkX, AtkY, 555, 289, 825, 550, %A_WorkingDir%\CB\Ataque.png
        CenterImgSrchCoords(A_WorkingDir "\CB\Ataque.png", AtkX, AtkY)
        Sleep, %Intervalo%
    }
    If (ErrorLevel = 0)
    {
        AtkX := AtkX-13
        AtkY := AtkY+15
        Click, %AtkX%, %AtkY% Left, 1
        Sleep, %Intervalo%
        Sleep, %Aguardar%
        SendEvent, {Click, %AtkX%, %AtkY%, 0}
        Sleep, %Intervalo%
    }
    Loop, %Repetir%
    {
        CoordMode, Pixel, Screen
        PixelSearch, TropaX, TropaY, 602, 396, 624, 415, 0x442816, 0, Fast RGB
        Sleep, %Intervalo%
    }
    If (ErrorLevel = 0)
    {
        Send, {r}
        Sleep, %Aguardar%
        SendEvent, {Click, 591, 318, 0}
        Sleep, %Intervalo%
    }
    Loop, %Repetir%
    {
        CoordMode, Pixel, Screen
        ImageSearch, Auto1X, Auto1Y, -61, 31, 1304, 798, %A_WorkingDir%\CB\Auto1.png
        CenterImgSrchCoords(A_WorkingDir "\CB\Auto1.png", Auto1X, Auto1Y)
        Sleep, %Intervalo%
    }
    If (ErrorLevel = 0)
    {
        Send, {B}
        Sleep, %Aguardar%
        SendEvent, {Click, 591, 318, 0}
        Sleep, %Intervalo%
    }
    Loop, %Repetir%
    {
        CoordMode, Pixel, Screen
        ImageSearch, Auto2X, Auto2Y, 8, 8, 1373, 775, %A_WorkingDir%\CB\Auto2.png
        CenterImgSrchCoords(A_WorkingDir "\CB\Auto2.png", Auto2X, Auto2Y)
        Sleep, %Intervalo%
    }
    If (ErrorLevel = 0)
    {
        Send, {B}
        Sleep, %Aguardar%
        SendEvent, {Click, 591, 318, 0}
        Sleep, %Intervalo%
    }
    Loop, %Repetir%
    {
        CoordMode, Pixel, Screen
        ImageSearch, Ok1X, Ok1Y, 8, 8, 1373, 770, %A_WorkingDir%\CB\Ok1.png
        CenterImgSrchCoords(A_WorkingDir "\CB\Ok1.png", Ok1X, Ok1Y)
        Sleep, %Intervalo%
    }
    If (ErrorLevel = 0)
    {
        Send, {Escape}
        Sleep, %Aguardar%
        SendEvent, {Click, 591, 318, 0}
        Sleep, %Intervalo%
    }
    Loop, %Repetir%
    {
        CoordMode, Pixel, Screen
        ImageSearch, Ok2X, Ok2Y, -61, 31, 1304, 798, %A_WorkingDir%\CB\Ok2.png
        CenterImgSrchCoords(A_WorkingDir "\CB\Ok2.png", Ok2X, Ok2Y)
        Sleep, %Intervalo%
    }
    If (ErrorLevel = 0)
    {
        Send, {Escape}
        Sleep, %Aguardar%
        SendEvent, {Click, 591, 318, 0}
        Sleep, %Intervalo%
    }
    CoordMode, Pixel, Screen
    ImageSearch, DimasX, DimasY, 0, 0, 1366, 768, %A_WorkingDir%\CB\Dimas.png
    If (ErrorLevel = 0)
    {
        Send, {Escape}
    }
    Loop, %Repetir%
    {
        CoordMode, Pixel, Screen
        ImageSearch, Ok3X, Ok3Y, 0, 0, 1365, 767, *10 %A_WorkingDir%\CB\Ok3.png
        CenterImgSrchCoords("*10 " A_WorkingDir "\CB\Ok3.png", Ok3X, Ok3Y)
        Sleep, %Intervalo%
    }
    If (ErrorLevel = 0)
    {
        Click, 672, 511 Left, 1
        Sleep, 500
    }
    Loop, %Repetir%
    {
        CoordMode, Pixel, Screen
        ImageSearch, RenderX, RenderY, 0, 0, 1366, 768, %A_WorkingDir%\CB\Render.png
        CenterImgSrchCoords(A_WorkingDir "\CB\Render.png", RenderX, RenderY)
        Sleep, %Intervalo%
    }
    If (ErrorLevel = 0)
    {
        CoordMode, Pixel, Screen
        ImageSearch, CancelarX, CancelarY, 0, 0, 1366, 768, %A_WorkingDir%\CB\Cancelar.png
        CenterImgSrchCoords(A_WorkingDir "\CB\Cancelar.png", CancelarX, CancelarY)
        If ErrorLevel = 0
        	Click, %CancelarX%, %CancelarY% Left, 1
        Sleep, 50
    }
}
Return

F4::
Taberna:
Loop
{
    SendEvent, {Click, 765, 622, 0}
    Loop, 4
    {
        CoordMode, Pixel, Window
        ImageSearch, Tab1X, Tab1Y, 275, 678, 305, 714, %A_WorkingDir%\Taberna\Sentar.png
        CenterImgSrchCoords(A_WorkingDir "\Taberna\Sentar.png", Tab1X, Tab1Y)
        If ErrorLevel = 0
        	Click, %Tab1X%, %Tab1Y% Left, 1
        Sleep, 350
    }
    SendEvent, {Click, 765, 622, 0}
    Loop, 4
    {
        CoordMode, Pixel, Window
        ImageSearch, Tab2X, Tab2Y, 306, 622, 395, 728, %A_WorkingDir%\Taberna\Sentar.png
        CenterImgSrchCoords(A_WorkingDir "\Taberna\Sentar.png", Tab2X, Tab2Y)
        If ErrorLevel = 0
        	Click, %Tab2X%, %Tab2Y% Left, 1
        Sleep, 350
    }
    SendEvent, {Click, 765, 622, 0}
    Loop, 4
    {
        CoordMode, Pixel, Window
        ImageSearch, Tab3X, Tab3Y, 401, 623, 489, 728, %A_WorkingDir%\Taberna\Sentar.png
        CenterImgSrchCoords(A_WorkingDir "\Taberna\Sentar.png", Tab3X, Tab3Y)
        If ErrorLevel = 0
        	Click, %Tab3X%, %Tab3Y% Left, 1
        Sleep, 350
    }
    SendEvent, {Click, 765, 622, 0}
    Loop, 4
    {
        CoordMode, Pixel, Window
        ImageSearch, Tab4X, Tab4Y, 487, 621, 578, 726, %A_WorkingDir%\Taberna\Sentar.png
        CenterImgSrchCoords(A_WorkingDir "\Taberna\Sentar.png", Tab4X, Tab4Y)
        If ErrorLevel = 0
        	Click, %Tab4X%, %Tab4Y% Left, 1
        Sleep, 350
    }
    SendEvent, {Click, 765, 622, 0}
    Loop, 4
    {
        CoordMode, Pixel, Window
        ImageSearch, Tab5X, Tab5Y, 580, 620, 673, 727, %A_WorkingDir%\Taberna\Sentar.png
        CenterImgSrchCoords(A_WorkingDir "\Taberna\Sentar.png", Tab5X, Tab5Y)
        If ErrorLevel = 0
        	Click, %Tab5X%, %Tab5Y% Left, 1
        Sleep, 350
    }
    SendEvent, {Click, 765, 622, 0}
    Loop
    {
        CoordMode, Pixel, Window
        ImageSearch, ProxX, ProxY, 731, 619, 795, 700, *10 %A_WorkingDir%\Taberna\Prox_Tab.png
        CenterImgSrchCoords("*10 " A_WorkingDir "\Taberna\Prox_Tab.png", ProxX, ProxY)
        Sleep, 50
    }
    Until ErrorLevel = 0
    If (ErrorLevel = 0)
    {
        Click, %ProxX%, %ProxY% Left, 1
        Sleep, 10
    }
    SendEvent, {Click, 765, 622, 0}
}
Return

F5::
Motivar35:
Loop
{
    NumDeAux := 0
    NumVar := 20  ; Quantidade de Motivações Ajuste para a quantidade necessária nas suas missões recorrentes
    Repetir := 4
    home:
    SendEvent, {Click, 765, 622, 0}
    Primeiro:
    Loop, %Repetir%
    {
        CoordMode, Pixel, Window
        PixelSearch, Aux1X, Aux1Y, 221, 705, 301, 726, 0x934F1F, 10, Fast RGB
        Sleep, 500
    }
    If (ErrorLevel = 0)
    {
        Aux1X += 20
        Click, %Aux1X%, %Aux1Y% Left, 1
        Sleep, 50
        Sleep, 500
        SendEvent, {Click, 765, 622, 0}
        NumDeAux += 1
        If (%NumDeAuX% = %NumVar%)
        {
            MsgBox, 64, , NumDeAux = %NumDeAux%
            Break
        }
    }
    Segundo:
    Loop, %Repetir%
    {
        CoordMode, Pixel, Window
        PixelSearch, Aux2X, Aux2Y, 314, 710, 387, 724, 0x934F1F, 10, Fast RGB
        Sleep, 500
    }
    If (ErrorLevel = 0)
    {
        Aux2X += 20
        Click, %Aux2X%, %Aux2Y% Left, 1
        Sleep, 50
        Sleep, 500
        SendEvent, {Click, 765, 622, 0}
        NumDeAux += 1
        If (%NumDeAuX% = %NumVar%)
        {
            MsgBox, 64, , NumDeAux = %NumDeAux%
            Break
        }
    }
    Terceiro:
    Loop, %Repetir%
    {
        CoordMode, Pixel, Window
        PixelSearch, Aux3X, Aux3Y, 407, 709, 474, 722, 0x934F1F, 10, Fast RGB
        Sleep, 500
    }
    If (ErrorLevel = 0)
    {
        Aux3X += 20
        Click, %Aux3X%, %Aux3Y% Left, 1
        Sleep, 50
        Sleep, 500
        SendEvent, {Click, 765, 622, 0}
        NumDeAux += 1
        If (%NumDeAuX% = %NumVar%)
        {
            MsgBox, 64, , NumDeAux = %NumDeAux%
            Break
        }
    }
    Quarto:
    Loop, %Repetir%
    {
        CoordMode, Pixel, Window
        PixelSearch, Aux4X, Aux4Y, 498, 709, 568, 724, 0x934F1F, 10, Fast RGB
        Sleep, 500
    }
    If (ErrorLevel = 0)
    {
        Aux4X += 20
        Click, %Aux4X%, %Aux4Y% Left, 1
        Sleep, 10
        Sleep, 500
        SendEvent, {Click, 765, 622, 0}
        NumDeAux += 1
        If (%NumDeAuX% = %NumVar%)
        {
            MsgBox, 64, , NumDeAux = %NumDeAux%
            Break
        }
    }
    Quinto:
    Loop, %Repetir%
    {
        CoordMode, Pixel, Window
        PixelSearch, Aux5X, Aux5Y, 593, 711, 658, 723, 0x934F1F, 10, Fast RGB
        Sleep, 500
    }
    If (ErrorLevel = 0)
    {
        Aux5X += 20
        Click, %Aux5X%, %Aux5Y% Left, 1
        Sleep, 10
        Sleep, 500
        SendEvent, {Click, 765, 622, 0}
        NumDeAux += 1
        If (%NumDeAuX% = %NumVar%)
        {
            MsgBox, 64, , NumDeAux = %NumDeAux%
            Break
        }
    }
    Proximo:
    Sleep, 500
    Loop, 2
    {
        CoordMode, Pixel, Window
        PixelSearch, ProxX, ProxY, 761, 666, 783, 684, 0xB3BACA, 10, Fast RGB
        Sleep, 1300
    }
    Until ErrorLevel = 0
    If (ErrorLevel = 0)
    {
        ProxX += 5
        Sleep, 500
        Click, %ProxX%, %ProxY% Left, 1
        Sleep, 10
    }
    SendEvent, {Click, 765, 622, 0}
    If (%NumDeAuX% < %NumVar%)
    {
        Goto, home
    }
    If (%NumDeAuX% = %NumVar%)
    {
        MsgBox, 64, , NumDeAux = %NumDeAux%
        Break
    }
}
Return

F6::
JxJ_1:
Loop
{
    RepetirJJ := 2
    AguardarJJ := 250
    IntervaloJJ := 250
    Loop, %RepetirJJ%
    {
        CoordMode, Pixel, Screen
        ImageSearch, AtacarX, AtacarY, 738, 460, 825, 530, %A_WorkingDir%\JxJ\Atacar.png
        CenterImgSrchCoords(A_WorkingDir "\JxJ\Atacar.png", AtacarX, AtacarY)
        If ErrorLevel = 0
        	Click, %AtacarX%, %AtacarY% Left, 1
        Sleep, %IntervaloJJ%
    }
    Loop, %RepetirJJ%
    {
        CoordMode, Pixel, Screen
        PixelSearch, TropaJX, TropaJY, 590, 384, 614, 410, 0x422714, 0, Fast RGB
        Sleep, %IntervaloJJ%
    }
    If (ErrorLevel = 0)
    {
        Send, {R}
        SendEvent, {Click, 402, 254, 0}
        Sleep, 53
    }
    Loop, %RepetirJJ%
    {
        CoordMode, Pixel, Screen
        ImageSearch, BatAutoJX, BatAutoJY, 0, 0, 1365, 767, %A_WorkingDir%\JxJ\BatAutoJ.png
        CenterImgSrchCoords(A_WorkingDir "\JxJ\BatAutoJ.png", BatAutoJX, BatAutoJY)
        Sleep, %IntervaloJJ%
    }
    If (ErrorLevel = 0)
    {
        Send, {b}
        SendEvent, {Click, 402, 254, 0}
        Sleep, 53
    }
    Loop, %RepetirJJ%
    {
        CoordMode, Pixel, Screen
        ImageSearch, OkJX, OkJY, 0, 0, 1365, 767, %A_WorkingDir%\JxJ\OkJ.png
        CenterImgSrchCoords(A_WorkingDir "\JxJ\OkJ.png", OkJX, OkJY)
        Sleep, %IntervaloJJ%
    }
    If (ErrorLevel = 0)
    {
        Send, {Escape}
        SendEvent, {Click, 402, 254, 0}
        Sleep, 53
    }
    Loop, %RepetirJJ%
    {
        CoordMode, Pixel, Screen
        ImageSearch, Ok2X, Ok2Y, 0, 0, 1366, 768, %A_WorkingDir%\JxJ\Ok2J.png
        CenterImgSrchCoords(A_WorkingDir "\JxJ\Ok2J.png", Ok2X, Ok2Y)
        Sleep, %IntervaloJJ%
    }
    If (ErrorLevel = 0)
    {
        Send, {Escape}
    }
}
Return

F7::
JxJ_3:
Loop
{
    Loop, 3
    {
        CoordMode, Pixel, Screen
        ImageSearch, Ataca3rX, Atacar3Y, 733, 575, 830, 654, %A_WorkingDir%\JxJ\Atacar3.png
        CenterImgSrchCoords(A_WorkingDir "\JxJ\Atacar3.png", Ataca3rX, Atacar3Y)
        If ErrorLevel = 0
        	Click, %Ataca3rX%, %Atacar3Y% Left, 1
        Sleep, 500
    }
    SendEvent, {Click, 962, 336, 0}
    Sleep, 53
    Loop, 3
    {
        CoordMode, Pixel, Screen
        PixelSearch, TropaJX, TropaJY, 590, 384, 614, 410, 0x422714, 0, Fast RGB
        Sleep, 500
    }
    If (ErrorLevel = 0)
    {
        Send, {R}
    }
    Loop, 3
    {
        CoordMode, Pixel, Screen
        ImageSearch, BatAutoJX, BatAutoJY, 0, 0, 1365, 767, %A_WorkingDir%\JxJ\BatAutoJ.png
        CenterImgSrchCoords(A_WorkingDir "\JxJ\BatAutoJ.png", BatAutoJX, BatAutoJY)
        Sleep, 500
    }
    If (ErrorLevel = 0)
    {
        Send, {b}
    }
    SendEvent, {Click, 962, 336, 0}
    Sleep, 53
    Loop, 3
    {
        CoordMode, Pixel, Screen
        ImageSearch, OkJX, OkJY, 0, 0, 1365, 767, %A_WorkingDir%\JxJ\OkJ.png
        CenterImgSrchCoords(A_WorkingDir "\JxJ\OkJ.png", OkJX, OkJY)
        Sleep, 500
    }
    If (ErrorLevel = 0)
    {
        Send, {Escape}
    }
    SendEvent, {Click, 962, 336, 0}
    Sleep, 53
    Loop, 3
    {
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 0, 0, 1366, 768, %A_WorkingDir%\JxJ\Ok2J.png
        Sleep, 500
    }
    If (ErrorLevel = 0)
    {
        Send, {Escape}
    }
}
Return


F8::ExitApp

CenterImgSrchCoords(File, ByRef CoordX, ByRef CoordY)
{
	static LoadedPic
	LastEL := ErrorLevel

	Gui, Pict:Add, Pic, vLoadedPic, % RegExReplace(File, "^(\*\w+\s)+")
	GuiControlGet, LoadedPic, Pict:Pos
	Gui, Pict:Destroy
	CoordX += LoadedPicW // 2
	CoordY += LoadedPicH // 2
	ErrorLevel := LastEL
}

/*
PMC File Version 5.4.1
---[Do not edit anything in this section]---

[PMC Globals]|None||C:\Users\Jey\Desktop\Macros\foe-all-in-on\favicon.ico
[PMC Code v5.4.1]|F3||0|Window,2,Fast,0,1,Input,-1,-1,1|1|CbG
Context=None|
Groups=Start:1
1|[Assign Variable]|Repetir := 3|1|0|Variable|Expression||||1|
2|[Assign Variable]|Intervalo := 300|1|0|Variable|Expression||||2|
3|[Assign Variable]|Aguardar := 500|1|0|Variable|Expression||||3|
4|Continue, Continue, AtkX, AtkY, 1|555, 289, 825, 550, %A_WorkingDir%\CB\Ataque.png|%Repetir%|%Intervalo%|ImageSearch||Screen|||4|
5|If Image/Pixel Found||1|0|If_Statement|||||11|
6|[Assign Variable]|AtkX := AtkX-13|1|0|Variable|Expression||||13|
7|[Assign Variable]|AtkY := AtkY+15|1|0|Variable|Expression||||14|
8|Left Move & Click|%AtkX%, %AtkY% Left, 1|1|%Intervalo%|Click|||||15|
9|[Pause]||1|%Aguardar%|Sleep|||||17|
10|Move|{Click, %AtkX%, %AtkY%, 0}|1|%Intervalo%|SendEvent|||||18|
11|[End If]|EndIf|1|0|If_Statement|||||20|
12|Continue, Continue, TropaX, TropaY|602, 396, 624, 415, 0x442816, 0, Fast RGB|%Repetir%|%Intervalo%|PixelSearch||Screen|||21|
13|If Image/Pixel Found||1|0|If_Statement|||||27|
14|r|{r}|1|0|Send|||||29|
15|[Pause]||1|%Aguardar%|Sleep|||||30|
16|Move|{Click, 591, 318, 0}|1|%Intervalo%|SendEvent|||||31|
17|[End If]|EndIf|1|0|If_Statement|||||33|
18|Continue, Continue, Auto1X, Auto1Y, 1|-61, 31, 1304, 798, %A_WorkingDir%\CB\Auto1.png|%Repetir%|%Intervalo%|ImageSearch||Screen|||34|
19|If Image/Pixel Found||1|0|If_Statement|||||41|
20|B|{B}|1|0|Send|||||43|
21|[Pause]||1|%Aguardar%|Sleep|||||44|
22|Move|{Click, 591, 318, 0}|1|%Intervalo%|SendEvent|||||45|
23|[End If]|EndIf|1|0|If_Statement|||||47|
24|Continue, Continue, Auto2X, Auto2Y, 1|8, 8, 1373, 775, %A_WorkingDir%\CB\Auto2.png|%Repetir%|%Intervalo%|ImageSearch||Screen|||48|
25|If Image/Pixel Found||1|0|If_Statement|||||55|
26|B|{B}|1|0|Send|||||57|
27|[Pause]||1|%Aguardar%|Sleep|||||58|
28|Move|{Click, 591, 318, 0}|1|%Intervalo%|SendEvent|||||59|
29|[End If]|EndIf|1|0|If_Statement|||||61|
30|Continue, Continue, Ok1X, Ok1Y, 1|8, 8, 1373, 770, %A_WorkingDir%\CB\Ok1.png|%Repetir%|%Intervalo%|ImageSearch||Screen|||62|
31|If Image/Pixel Found||1|0|If_Statement|||||69|
32|Escape|{Escape}|1|0|Send|||||71|
33|[Pause]||1|%Aguardar%|Sleep|||||72|
34|Move|{Click, 591, 318, 0}|1|%Intervalo%|SendEvent|||||73|
35|[End If]|EndIf|1|0|If_Statement|||||75|
36|Continue, Continue, Ok2X, Ok2Y, 1|-61, 31, 1304, 798, %A_WorkingDir%\CB\Ok2.png|%Repetir%|%Intervalo%|ImageSearch||Screen|||76|
37|If Image/Pixel Found||1|0|If_Statement|||||83|
38|Escape|{Escape}|1|0|Send|||||85|
39|[Pause]||1|%Aguardar%|Sleep|||||86|
40|Move|{Click, 591, 318, 0}|1|%Intervalo%|SendEvent|||||87|
41|[End If]|EndIf|1|0|If_Statement|||||89|
42|Continue, Continue, DimasX, DimasY, 0|0, 0, 1366, 768, %A_WorkingDir%\CB\Dimas.png|1|0|ImageSearch||Screen|||90|
43|If Image/Pixel Found||1|0|If_Statement|||||92|
44|Escape|{Escape}|1|0|Send|||||94|
45|[End If]|EndIf|1|0|If_Statement|||||95|
46|Continue, Continue, Ok3X, Ok3Y, 1|0, 0, 1365, 767, *10 %A_WorkingDir%\CB\Ok3.png|%Repetir%|%Intervalo%|ImageSearch||Screen|||96|
47|If Image/Pixel Found||1|0|If_Statement|||||103|
48|Left Move & Click|672, 511 Left, 1|1|500|Click|||||105|
49|[End If]|EndIf|1|0|If_Statement|||||107|
50|Continue, Continue, RenderX, RenderY, 1|0, 0, 1366, 768, %A_WorkingDir%\CB\Render.png|%Repetir%|%Intervalo%|ImageSearch||Screen|||108|
51|If Image/Pixel Found||1|0|If_Statement|||||115|
52|Left Click, Continue, CancelarX, CancelarY, 1|0, 0, 1366, 768, %A_WorkingDir%\CB\Cancelar.png|1|50|ImageSearch||Screen|||117|
53|[End If]|EndIf|1|0|If_Statement|||||123|

[PMC Code v5.4.1]|F4||0|Window,2,Fast,0,1,Input,-1,-1,1|1|Taberna
Context=None|
Groups=Start:1
1|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||1|
2|Left Click, Continue, Tab1X, Tab1Y, 1|275, 678, 305, 714, %A_WorkingDir%\Taberna\Sentar.png|4|350|ImageSearch||Window|||2|
3|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||11|
4|Left Click, Continue, Tab2X, Tab2Y, 1|306, 622, 395, 728, %A_WorkingDir%\Taberna\Sentar.png|4|350|ImageSearch||Window|||12|
5|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||21|
6|Left Click, Continue, Tab3X, Tab3Y, 1|401, 623, 489, 728, %A_WorkingDir%\Taberna\Sentar.png|4|350|ImageSearch||Window|||22|
7|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||31|
8|Left Click, Continue, Tab4X, Tab4Y, 1|487, 621, 578, 726, %A_WorkingDir%\Taberna\Sentar.png|4|350|ImageSearch||Window|||32|
9|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||41|
10|Left Click, Continue, Tab5X, Tab5Y, 1|580, 620, 673, 727, %A_WorkingDir%\Taberna\Sentar.png|4|350|ImageSearch||Window|||42|
11|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||51|
12|Continue, Continue, ProxX, ProxY, 1|731, 619, 795, 700, *10 %A_WorkingDir%\Taberna\Prox_Tab.png|1|50|ImageSearch|UntilFound|Window|||52|
13|If Image/Pixel Found||1|0|If_Statement|||||60|
14|Left Move & Click|%ProxX%, %ProxY% Left, 1|1|10|Click|||||62|
15|[End If]|EndIf|1|0|If_Statement|||||64|
16|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||65|

[PMC Code v5.4.1]|F5||0|Window,2,Fast,0,1,Input,-1,-1,1|1|Motivar35
Context=None|
Groups=Start:1
1|[Assign Variable]|NumDeAux := 0|1|0|Variable|Expression||||1|
2|[Assign Variable]|NumVar := 20|1|0|Variable|Expression||Quantidade de Motivações Ajuste para a quantidade necessária nas suas missões recorrentes||2|
3|[Assign Variable]|Repetir := 4|1|0|Variable|Expression||||3|
4|[Label]|home|1|0|Label|||||4|
5|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||5|
6|[Label]|Primeiro|1|0|Label|||||6|
7|Continue, Continue, Aux1X, Aux1Y|221, 705, 301, 726, 0x934F1F, 10, Fast RGB|%Repetir%|500|PixelSearch||Window|||7|
8|If Image/Pixel Found||1|0|If_Statement|||||13|
9|[Add Variable]|Aux1X += 20|1|0|Variable|Expression||||15|
10|Left Move & Click|%Aux1X%, %Aux1Y% Left, 1|1|50|Click|||||16|
11|[Pause]||1|500|Sleep|||||18|
12|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||19|
13|[Add Variable]|NumDeAux += 1|1|0|Variable|||||20|
14|Evaluate Expression|%NumDeAuX% = %NumVar%|1|0|If_Statement|||||21|
15|[MsgBox]|NumDeAux = %NumDeAux%|1|0|MsgBox|64||||23|
16|Break||1|0|Break|||||24|
17|[End If]|EndIf|1|0|If_Statement|||||25|
18|[End If]|EndIf|1|0|If_Statement|||||26|
19|[Label]|Segundo|1|0|Label|||||27|
20|Continue, Continue, Aux2X, Aux2Y|314, 710, 387, 724, 0x934F1F, 10, Fast RGB|%Repetir%|500|PixelSearch||Window|||28|
21|If Image/Pixel Found||1|0|If_Statement|||||34|
22|[Add Variable]|Aux2X += 20|1|0|Variable|Expression||||36|
23|Left Move & Click|%Aux2X%, %Aux2Y% Left, 1|1|50|Click|||||37|
24|[Pause]||1|500|Sleep|||||39|
25|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||40|
26|[Add Variable]|NumDeAux += 1|1|0|Variable|||||41|
27|Evaluate Expression|%NumDeAuX% = %NumVar%|1|0|If_Statement|||||42|
28|[MsgBox]|NumDeAux = %NumDeAux%|1|0|MsgBox|64||||44|
29|Break||1|0|Break|||||45|
30|[End If]|EndIf|1|0|If_Statement|||||46|
31|[End If]|EndIf|1|0|If_Statement|||||47|
32|[Label]|Terceiro|1|0|Label|||||48|
33|Continue, Continue, Aux3X, Aux3Y|407, 709, 474, 722, 0x934F1F, 10, Fast RGB|%Repetir%|500|PixelSearch||Window|||49|
34|If Image/Pixel Found||1|0|If_Statement|||||55|
35|[Add Variable]|Aux3X += 20|1|0|Variable|Expression||||57|
36|Left Move & Click|%Aux3X%, %Aux3Y% Left, 1|1|50|Click|||||58|
37|[Pause]||1|500|Sleep|||||60|
38|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||61|
39|[Add Variable]|NumDeAux += 1|1|0|Variable|||||62|
40|Evaluate Expression|%NumDeAuX% = %NumVar%|1|0|If_Statement|||||63|
41|[MsgBox]|NumDeAux = %NumDeAux%|1|0|MsgBox|64||||65|
42|Break||1|0|Break|||||66|
43|[End If]|EndIf|1|0|If_Statement|||||67|
44|[End If]|EndIf|1|0|If_Statement|||||68|
45|[Label]|Quarto|1|0|Label|||||69|
46|Continue, Continue, Aux4X, Aux4Y|498, 709, 568, 724, 0x934F1F, 10, Fast RGB|%Repetir%|500|PixelSearch||Window|||70|
47|If Image/Pixel Found||1|0|If_Statement|||||76|
48|[Add Variable]|Aux4X += 20|1|0|Variable|Expression||||78|
49|Left Move & Click|%Aux4X%, %Aux4Y% Left, 1|1|10|Click|||||79|
50|[Pause]||1|500|Sleep|||||81|
51|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||82|
52|[Add Variable]|NumDeAux += 1|1|0|Variable|||||83|
53|Evaluate Expression|%NumDeAuX% = %NumVar%|1|0|If_Statement|||||84|
54|[MsgBox]|NumDeAux = %NumDeAux%|1|0|MsgBox|64||||86|
55|Break||1|0|Break|||||87|
56|[End If]|EndIf|1|0|If_Statement|||||88|
57|[End If]|EndIf|1|0|If_Statement|||||89|
58|[Label]|Quinto|1|0|Label|||||90|
59|Continue, Continue, Aux5X, Aux5Y|593, 711, 658, 723, 0x934F1F, 10, Fast RGB|%Repetir%|500|PixelSearch||Window|||91|
60|If Image/Pixel Found||1|0|If_Statement|||||97|
61|[Add Variable]|Aux5X += 20|1|0|Variable|Expression||||99|
62|Left Move & Click|%Aux5X%, %Aux5Y% Left, 1|1|10|Click|||||100|
63|[Pause]||1|500|Sleep|||||102|
64|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||103|
65|[Add Variable]|NumDeAux += 1|1|0|Variable|||||104|
66|Evaluate Expression|%NumDeAuX% = %NumVar%|1|0|If_Statement|||||105|
67|[MsgBox]|NumDeAux = %NumDeAux%|1|0|MsgBox|64||||107|
68|Break||1|0|Break|||||108|
69|[End If]|EndIf|1|0|If_Statement|||||109|
70|[End If]|EndIf|1|0|If_Statement|||||110|
71|[Label]|Proximo|1|0|Label|||||111|
72|[Pause]||1|500|Sleep|||||112|
73|Continue, Continue, ProxX, ProxY|761, 666, 783, 684, 0xB3BACA, 10, Fast RGB|2|1300|PixelSearch|UntilFound|Window|||113|
74|If Image/Pixel Found||1|0|If_Statement|||||120|
75|[Add Variable]|ProxX += 5|1|0|Variable|Expression||||122|
76|[Pause]||1|500|Sleep|||||123|
77|Left Move & Click|%ProxX%, %ProxY% Left, 1|1|10|Click|||||124|
78|[End If]|EndIf|1|0|If_Statement|||||126|
79|Move|{Click, 765, 622, 0}|1|0|SendEvent|||||127|
80|Evaluate Expression|%NumDeAuX% < %NumVar%|1|0|If_Statement|||||128|
81|[Goto]|home|1|0|Goto|||||130|
82|[End If]|EndIf|1|0|If_Statement|||||131|
83|Evaluate Expression|%NumDeAuX% = %NumVar%|1|0|If_Statement|||||132|
84|[MsgBox]|NumDeAux = %NumDeAux%|1|0|MsgBox|64||||134|
85|Break||1|0|Break|||||135|
86|[End If]|EndIf|1|0|If_Statement|||||136|

[PMC Code v5.4.1]|F6||0|Window,2,Fast,0,1,Input,-1,-1,1|1|JxJ_1
Context=None|
Groups=Start:1
1|[Assign Variable]|RepetirJJ := 2|1|0|Variable|Expression||||1|
2|[Assign Variable]|AguardarJJ := 250|1|0|Variable|Expression||||2|
3|[Assign Variable]|IntervaloJJ := 250|1|0|Variable|Expression||||3|
4|Left Click, Continue, AtacarX, AtacarY, 1|738, 460, 825, 530, %A_WorkingDir%\JxJ\Atacar.png|%RepetirJJ%|%IntervaloJJ%|ImageSearch||Screen|||4|
5|Continue, Continue, TropaJX, TropaJY|590, 384, 614, 410, 0x422714, 0, Fast RGB|%RepetirJJ%|%IntervaloJJ%|PixelSearch||Screen|||13|
6|If Image/Pixel Found||1|0|If_Statement|||||19|
7|R|{R}|1|0|Send|||||21|
8|Move|{Click, 402, 254, 0}|1|53|SendEvent|||||22|
9|[End If]|EndIf|1|0|If_Statement|||||24|
10|Continue, Continue, BatAutoJX, BatAutoJY, 1|0, 0, 1365, 767, %A_WorkingDir%\JxJ\BatAutoJ.png|%RepetirJJ%|%IntervaloJJ%|ImageSearch||Screen|||25|
11|If Image/Pixel Found||1|0|If_Statement|||||32|
12|b|{b}|1|0|Send|||||34|
13|Move|{Click, 402, 254, 0}|1|53|SendEvent|||||35|
14|[End If]|EndIf|1|0|If_Statement|||||37|
15|Continue, Continue, OkJX, OkJY, 1|0, 0, 1365, 767, %A_WorkingDir%\JxJ\OkJ.png|%RepetirJJ%|%IntervaloJJ%|ImageSearch||Screen|||38|
16|If Image/Pixel Found||1|0|If_Statement|||||45|
17|Escape|{Escape}|1|0|Send|||||47|
18|Move|{Click, 402, 254, 0}|1|53|SendEvent|||||48|
19|[End If]|EndIf|1|0|If_Statement|||||50|
20|Continue, Continue, Ok2X, Ok2Y, 1|0, 0, 1366, 768, %A_WorkingDir%\JxJ\Ok2J.png|%RepetirJJ%|%IntervaloJJ%|ImageSearch||Screen|||51|
21|If Image/Pixel Found||1|0|If_Statement|||||58|
22|Escape|{Escape}|1|0|Send|||||60|
23|[End If]|EndIf|1|0|If_Statement|||||61|

[PMC Code v5.4.1]|F7||0|Window,2,Fast,0,1,Input,-1,-1,1|1|JxJ_3
Context=None|
Groups=Start:1
1|Left Click, Continue, Ataca3rX, Atacar3Y, 1|733, 575, 830, 654, %A_WorkingDir%\JxJ\Atacar3.png|3|500|ImageSearch||Screen|||1|
2|Move|{Click, 962, 336, 0}|1|53|SendEvent|||||10|
3|Continue, Continue, TropaJX, TropaJY|590, 384, 614, 410, 0x422714, 0, Fast RGB|3|500|PixelSearch||Screen|||12|
4|If Image/Pixel Found||1|0|If_Statement|||||18|
5|R|{R}|1|0|Send|||||20|
6|[End If]|EndIf|1|0|If_Statement|||||21|
7|Continue, Continue, BatAutoJX, BatAutoJY, 1|0, 0, 1365, 767, %A_WorkingDir%\JxJ\BatAutoJ.png|3|500|ImageSearch||Screen|||22|
8|If Image/Pixel Found||1|0|If_Statement|||||29|
9|b|{b}|1|0|Send|||||31|
10|[End If]|EndIf|1|0|If_Statement|||||32|
11|Move|{Click, 962, 336, 0}|1|53|SendEvent|||||33|
12|Continue, Continue, OkJX, OkJY, 1|0, 0, 1365, 767, %A_WorkingDir%\JxJ\OkJ.png|3|500|ImageSearch||Screen|||35|
13|If Image/Pixel Found||1|0|If_Statement|||||42|
14|Escape|{Escape}|1|0|Send|||||44|
15|[End If]|EndIf|1|0|If_Statement|||||45|
16|Move|{Click, 962, 336, 0}|1|53|SendEvent|||||46|
17|Continue, Continue, FoundX, FoundY, 0|0, 0, 1366, 768, %A_WorkingDir%\JxJ\Ok2J.png|3|500|ImageSearch||Screen|||48|
18|If Image/Pixel Found||1|0|If_Statement|||||54|
19|Escape|{Escape}|1|0|Send|||||56|
20|[End If]|EndIf|1|0|If_Statement|||||57|

*/
