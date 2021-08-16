#Persistent
#SingleInstance, Force ; Only want one copy of my hotkeys
#NoEnv
#MaxThreadsPerHotkey 200 ; this allow us to have loops and so forth
#WinActivateForce ; avoid weird flashing taskbar buttons on switch
#HotkeyInterval 1  ; This is  the default value (milliseconds).
#MaxHotkeysPerInterval 1
ScriptName = WOW Hand Saver ;obvious really
Process, Priority,, H ; abovenormal (just slightly)
DetectHiddenWindows, Off ; Don't need hidden windows at the moment
SendMode Event ; for new scripts, superior speed and reliability
SetTitleMatchMode 2 ; can have a window match anywhere inside it
SetTitleMatchMode fast ; use fast mode
SetBatchLines, -1   ; maximize script speed!
SetWinDelay, -1 ; maximize script speed!
Menu, Tray, Icon, shell32.dll, 8 ; Clock Look (WOW is time sink)
#IfWinActive ahk_exe wow.exe
v_Enable=0 
$=:: 
{ 		
v_Enable:=!v_Enable 	 
If (v_Enable=0) 	
SetTimer, Label0, Off	
else 	
SetTimer, Label0, 0
;SetTimer, Labe20, 200000  ;------空格跳跃
;SetTimer, Labe40, 2000    ;------切换目标
;SetTimer, Labe30, 10000   ;------鼠标左键拾取
;SetTimer, Labe50, 3000    ;------灵活应用键
} 	
Return 
Labe50:
{
send !{tab}		
} 
Return
Labe40:
{
send {tab}
} 	
Return
Labe30:
{
send {LButton}
} 
Return
Labe20:	
{
send {Space}			
}
Return
Label0: 	
{ 
;-------------------------------------------------------公      共-------------------------------------------------------
if ( GetColor(1522,621)="030400") ;目标
{
send {tab}
sleep 100
}
else
if ( GetColor(786,452)="CE454A") ;治疗药水
{
send {F11}
}
else
if ( GetColor(789,491)="3E8918") ;治疗石
{
send !2
}
else
if ( GetColor(1501,629)="5A3932") ;宠物攻击
{
send ^1
}
;--------------------------------------------------------种族特长----------------------------------------------------------
else
if ( GetColor(704,385)="393421")  ;血性狂怒
{
send 9
}
else
if ( GetColor(709,383)="BC3221")  ;黑铁矮人   烈焰之血
{
send 9
}
else
if ( GetColor(704,387)="15578B")  ;先祖召唤
{
send 9
}
else
if ( GetColor(706,387)="A07C66") ;狐人----袋里乾坤
{
send 9
}
else
if ( GetColor(755,449)="624E43") ;牛头人-----战争践踏
{
send 9
}
else
if ( GetColor(705,388)="64387D") ;暗夜-------影遁
{
send 9
}
else
if ( GetColor(1420,626)="77887D") ;巨魔------狂暴
{
send 9
}
else
if ( GetColor(699,391)="C49B07") ;光铸德莱尼------圣光裁决者
{
send 9
}
;---------------------------------------------------------PVP技能----------------------------------------------------------
else
if ( GetColor(758,448)="44291A") ;缴械
{
send !6
}
;else
;if ( GetColor(752,457)="98BCC3") ;打磨利刃
;{
;send !4
;}
;--------------------------------------------------------9.0盟约技能-----------------------------------------------------------
else
if ( GetColor(1432,636)="085989")
{
send {F7}
}
else
if ( GetColor(1424,635)="C20606")
{
send {F7}
}
;---------------------------------------------------------9.0饰品/物品---------------------------------------------------------
else
if ( GetColor(1422,633)="343A38") ;[断魂乐谱]
{
send 8
}
else
if ( GetColor(1415,631)="502D2C") ;[溅血之鳞]
{
send 8
}
else
if ( GetColor(1415,635)="987E6A")
{
send 8
}
;------------------------------------------------------------猎       人------------------------------------------------------------

else
if ( GetColor(1364,631)="605B60")	 ;误导
{
send {F8}
}
else
if ( GetColor(1422,629)="676A46") ;百发百中
{
send 7
}
else
if ( GetColor(1436,637)="A94600") ;二连击
{
send {F3}
}
else
if ( GetColor(705,469)="8F775C") ;召唤宠物
{
send !9
}
else
if ( GetColor(1367,635)="9D9F50") ;灵龟守护
{
send e
}
else
if ( GetColor(1370,625)="5BBB28") ;[优胜劣汰]
{
send f
}
else
if ( GetColor(1357,634)="8CEF08") ;意气风华
{
send !4
}
else
if ( GetColor(1425,530)="AAD7E2") ;反制射击
{
send {F4}
}
else
if ( GetColor(1419,535)="A24895") ;宁神射击
{
send {F2}
}
else
if ( GetColor(703,387)="9615DC") ;压制
{
send {F4}
}
else
if ( GetColor(706,387)="F1E80F") ;雄鹰守护
{
send {F6}
}

else
if ( GetColor(1373,632)="A7BAA3") ;焦油陷阱
{
send 3
}
else
if ( GetColor(1370,630)="9BAAFF") ;冰冻陷阱
{
send 2
}
else
if ( GetColor(706,499)="1B0018") ;照明弹
{
send 6
}
else
if ( GetColor(711,498)="A20006") ;猎人印记
{
send {F1}
}
else
if ( GetColor(685,415)="5C4F34") ;瞄准射击切换目标
{
send {tab}
sleep 300
}
else
if ( GetColor(711,414)="554437") ;群兽奔腾
{
send {F2}
}
else
if ( GetColor(1369,624)="E1A12A") ;治疗宠物
{
send !-
}
else
if ( GetColor(750,460)="CA6C17") ;治疗宠物
{
send !-
}
else
if ( GetColor(718,423)="947952") ;复活宠物
{
send !-
}

else
if ( GetColor(683,411)="86654D") ;杀戮切目标
{
send {tab}
sleep 300
}
else
if ( GetColor(682,415)="46403C") ;猫鼬切目标
{
send {tab}
sleep 300
}
else
if ( GetColor(684,416)="204413") ;毒蛇切目标
{
send {tab}
sleep 300
}
else
if ( GetColor(684,413)="922018") ;倒刺射击切换目标
{
send {tab}
sleep 300
}
else
if ( GetColor(708,383)="352921") ;协同作战
{
send {F12}
}
else
if ( GetColor(1419,627)="FA8380") ;乱射
{
send 6
}
else
if ( GetColor(1418,634)="601018") ;爆炸射击
{
send {F11}
}
else
if ( GetColor(1363,631)="F67D0D") ;爆裂射击
{
send !3
}
else
if ( GetColor(723,412)="D43019")
{
send 4
}
else
if ( GetColor(723,410)="466370") ;夺命黑鸦
{
send {F11}
}
else
if ( GetColor(1418,628)="A9ABB4") ;夺命射击
{
send {F5}
}
else
if ( GetColor(1379,635)="6E6662") ;胁迫
{
send !5
}
else
if ( GetColor(718,408)="720918") ;血溅十方
{
send !1
}
else
if ( GetColor(719,423)="54232A") ;兽王50天赋3
{
send {F10}
}
else
if ( GetColor(707,385)="463136") ;鱼叉猛击
{
send 1
}

else
if ( GetColor(720,412)="7D9295") ;奇美拉射击
{
send {F6}
}
else
if ( GetColor(716,420)="090509") ;弹幕射击
{
send 5
}
else
if ( GetColor(1417,631)="AB7942") ;稳固射击
{
send 0
}
else
if ( GetColor(706,463)="C9C3BF") ;狂野怒火
{
send 0
}

else
if ( GetColor(1422,630)="B56578") ;多重射击
{
send 1
}
else
if ( GetColor(704,464)="140300") ;杀戮命令
{
send {f9}
}
else
if ( GetColor(1419,632)="8F8871") ;瞄准射击
{
send {F10}
}
else
if ( GetColor(724,417)="79938F") ;凶暴野兽
{
send 9
}
else
if ( GetColor(721,421)="9AD65C") ;毒蛇钉刺
{
send  {F10}
}
else
if ( GetColor(707,429)="4F585F")
{
send !0
}
else
if ( GetColor(707,466)="403524") ;眼镜蛇射击
{
send 5
}
else
if ( GetColor(1416,630)="211F42") ;急速射击
{
send 5
}
else
if ( GetColor(722,407)="210D16") ;野火炸弹
{
send 5
}
else
if ( GetColor(723,422)="0F4BA8") ;散射炸弹
{
send 5
}
else
if ( GetColor(720,418)="1E3C18") ;动荡炸弹
{
send 5
}
else
if ( GetColor(719,422)="4E0807") ;信息素炸弹
{
send 5
}
else
if ( GetColor(704,468)="71EF15") ;野性守护
{
send {F3}
}
else
if ( GetColor(1418,636)="395079") ;奥术射击
{
send {F6}
}
else
if ( GetColor(719,409)="2179EF") ;削凿
{
send {F11}
}
else
if ( GetColor(704,469)="4C1617")  ;倒刺射击
{
send 7
}
else
if ( GetColor(720,421)="B50606") ;猛禽一击
{
send 7
}
else
if ( GetColor(718,411)="A4AE97") ;猫鼬撕咬
{
send 7
}


;----------------------------------------------------德鲁伊-------------------------------------------------------

else
if ( GetColor(1412,625)="328F87") ;熊形态
{
send ![
}
else
if ( GetColor(1428,580)="27706B") ;枭兽形态
{
send !=
}
else
if ( GetColor(1420,580)="0086A9") ;猎豹形态
{
send !-
}
else
if ( GetColor(1471,626)="5A8E5A") ;愈合
{
send {F6}
}
;------------------------------------------------------------平衡德

else
if ( GetColor(1431,631)="3A7285") ;化生：之眷
{
send {F3}
}
else
if ( GetColor(1408,539)="391E7E") ;艾露恩之怒
{
send 7
}
else
if ( GetColor(703,386)="2E1E1E") ;自然之力
{
send 4
}
else
if ( GetColor(708,384)="CFA350")  ;树皮术
{
send e
}
else
if ( GetColor(706,386)="FFF7C4")  ;日光术
{
send {F4}
}
else
if ( GetColor(1424,583)="BAC2EB") ;星辰坠落
{
send {F8}
}
else
if ( GetColor(1425,576)="C9B200") ;愤怒
{
send 1
}
else
if ( GetColor(1421,583)="FF9827") ;阳炎术
{
send 2
}
else
if ( GetColor(1415,635)="5C347E") ;月火术
{
send {F9}
}
else
if ( GetColor(1424,588)="4A7594") ;星辰耀斑
{
send 6
}
else
if ( GetColor(1416,579)="6E0BE1") ;星涌术
{
send 3
}
else
if ( GetColor(1418,585)="C9F4FE") ;星火术
{
send 5
}
;else
;if ( GetColor(683,417)="FED857") ;阳炎术切目标
;{
;send {Tab}
;sleep 100
;}
;else
;if ( GetColor(1380,577)="524C4D") ;星辰耀斑切目标
;{
;send {Tab}
;sleep 100
;}
;else
;if ( GetColor(1378,579)="C01500") ;阳炎术切换目标
;{
;send {tab}
;sleep 100
;}
;else
;if ( GetColor(1380,580)="B19CCB") ;月火术切换目标
;{
;send {tab}
;sleep 100
;}
;------------------------------------------------------------------守护德

else
if ( GetColor(683,417)="808080") ;痛击切换目标
{
send {tab}
sleep 100
}
else
if ( GetColor(1381,540)="FF7F21")  ;鬃毛倒竖
{
send !6
}
else
if ( GetColor(1413,533)="190D00") ;狂暴
{
send {F3}
}
else
if ( GetColor(1419,638)="24ADD4") ;甘霖
{
send {F8}
}
else
if ( GetColor(1477,627)="C65655") ;夺魂咆哮
{
send {F1}
}
else
if ( GetColor(1457,627)="FF5931") ;狂奔怒吼
{
send !0
}
else
if ( GetColor(1423,525)="D2C8A7") ;迎头痛击
{
send r
}
else
if ( GetColor(1415,633)="6B3810") ;树皮术
{
send {F11}
}
else
if ( GetColor(1482,625)="D78B17") ;野性之心
{
send {F5}
}
else
if ( GetColor(1416,637)="211408") ;狂暴回复
{
send 6
}
else
if ( GetColor(1417,628)="D5D6A4") ;生存本能
{
send t
}
else
if ( GetColor(1416,637)="100F16") ;铁鬃
{
send 3
}
else
if ( GetColor(1477,622)="4C1340") ;台风
{
send !3
}
else
if ( GetColor(1461,623)="21519C") ;乌索尔旋风
{
send 7
}
else
if ( GetColor(1474,625)="AD8C65") ;安抚
{
send !1
}
else
if ( GetColor(1421,627)="7A7F99") ;重殴
{
send 4
}
else
if ( GetColor(1415,632)="EFAA39") ;横扫
{
send 1
}
else
if ( GetColor(1436,637)="D4A55D") ;裂伤
{
send 2
}
else
if ( GetColor(1416,632)="848284") ;痛击
{
send 5
}

;-----------------------------------------------------------------------野性德
else
if ( GetColor(1417,582)="0010C6") ;潜行
{
send x
}
else
if ( GetColor(1416,571)="88757E") ;[凶猛撕咬]
{
send 0
}
else
if ( GetColor(1417,575)="895135") ;野性冲锋
{
send c
}
else
if ( GetColor(1425,582)="574633") ;蛮力猛击
{
send {F5}
}
else
if ( GetColor(1418,578)="AE180B") ;斜掠 
{
send 1
}
else
if ( GetColor(1379,573)="512719") ;斜掠切目标
{
send {tab}
sleep 100
}
else
if ( GetColor(1383,573)="9A928E") ;割裂目标
{
send {tab}
sleep 100
}
else
if ( GetColor(1427,579)="181818")  ;野蛮挥砍
{
send {F11}
}
else
if ( GetColor(1411,540)="F6BA31")  ;猛虎之怒
{
send {F8}
}
else
if ( GetColor(1418,578)="C3482C") ;撕碎
{
send 6
}
else
if ( GetColor(1424,587)="D1BAB4") ;割裂
{
send 2
}
;恢复德
}
;抓取颜色函数，在上面脚本中调用。
GetColor(x,y)
{
PixelGetColor, color, x, y, RGB
StringRight color,color,6
return color
}
