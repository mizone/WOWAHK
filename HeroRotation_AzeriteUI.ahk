#Persistent
#SingleInstance, Force ; Only want one copy of my hotkeys
#NoEnv
#UseHook  ; is necessary if the script uses the Send command to send the keys that comprise the hotkey itself
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
Menu, Tray, Icon, shell32.dll, 13 ; Clock Look (WOW is time sink)
#IfWinActive ahk_exe wow.exe
v_Enable=0
$=::
{
v_Enable:=!v_Enable
If (v_Enable=0)
SetTimer, Label0, Off
else
SetTimer, Label0, 0
;SetTimer, Labe20, 200000   ;------空格跳跃
;SetTimer, Labe40, 2000    ;------切换目标
;SetTimer, Labe30, 10000   ;------鼠标左键拾取
;SetTimer, Labe50, 250000    ;------灵活应用键
}
Return
Labe50:
{
send !1
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
if ( GetColor(1511,626)="89BC22") ;治疗石
{
send !2
}
else
if ( GetColor(1501,629)="5A3932") ;宠物攻击
{
send ^1
sleep 300
}
else
if ( GetColor(706,384)="4B93CE") ;超凡之盟
{
send {F3}
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
if ( GetColor(1409,537)="4A5757") ;巨魔------狂暴
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
if ( GetColor(714,423)="1B6093")  ;仇敌之血
{
send {F7}
}
else
if ( GetColor(683,394)="5FAFC0")
{
send {F7}
}
else
if ( GetColor(685,390)="35393B") ;锯齿利刃
{
send {F7}
}
else
if ( GetColor(681,419)="3C4634")
{
send {tab}
sleep 300
}
else
if ( GetColor(680,390)="28426E") ;[败血刃伤]
{
send {F7}
}
else
if ( GetColor(1386,546)="891410")
{
send {F7}
}
else
if ( GetColor(1385,546)="081122")
{
send {F7}
}
else
if ( GetColor(682,394)="08948C")
{
send {F7}
}
else
if ( GetColor(681,390)="53A5DF")
{
send {F7}
}
else
if ( GetColor(1384,543)="49BFEF") ;灵魂腐化
{
send {F7}
}
else
if ( GetColor(704,469)="00715A") ;[邪恶新星]
{
send {F7}
}
else
if ( GetColor(1390,536)="530000")  ;[饕餮狂乱]
{
send {F7}
}
else
if ( GetColor(1427,577)="63110B") ;[狂热鞭笞]
{
send {F7}
}
else
if ( GetColor(679,390)="E4BDB5")
{
send {F7}
}
else
if ( GetColor(685,392)="0C2641")
{
send {F7}
}
else
if ( GetColor(713,426)="020314")
{
send {F7}
}
else
if ( GetColor(679,393)="68B2C2")
{
send {F7}
}
else
if ( GetColor(682,394)="DC7162")
{
send {F7}
}
else
if ( GetColor(683,391)="050000")
{
send {F7}
}
;---------------------------------------------------------8.0饰品/物品---------------------------------------------------------
else
if ( GetColor(1386,548)="5D080B") ;[神经突触强化器]
{
send 8
}
else
if ( GetColor(682,390)="F7F4B0")
{
send 8
}
else
if ( GetColor(682,390)="925B33") ;巫杜瓦瓦
{
send {F3}
}
else
if ( GetColor(685,389)="DF7038") ;[金辉飞羽]
{
send 8
}
else
if ( GetColor(683,394)="2F241E") ;超线程护腕
{
send {F10}
}
else
if ( GetColor(681,392)="0C1020") ;怨火柳枝
{
send {F11}
}
else
if ( GetColor(684,391)="3E5786") ;PVP[腐化角斗士的徽章]
{
send 8
}
else
if ( GetColor(685,387)="591E1F") ;大红按钮
{
send 8
}
else
if ( GetColor(752,458)="51C7E5") ;[模块化的白金外壳]
{
send 8
}
else
if ( GetColor(684,395)="3A2E4B") ;[结界印记]
{
send 8
}
else
if ( GetColor(683,388)="6955AD") ;[杰斯的咆哮]
{
send 8
}
else
if ( GetColor(681,390)="5E3B43") ;[扭动的德雷阿佳丝碎片]
{
send 8
}
else
if ( GetColor(685,390)="6F4D2A")  ;饰品-珊瑚
{
send 8
}
else
if ( GetColor(790,452)="EEDA57") ;角斗士勋章
{
send 8
}
else
if ( GetColor(686,390)="523989")  ;触须饰品
{
send 8
}
else
if ( GetColor(686,388)="333E88") ; 引擎
{
send {F12}
}
else
if ( GetColor(682,387)="A2A0A2") ;口袋计算装置
{
send {F12}
}
else
if ( GetColor(676,391)="EAEAEA") ;[雄狮之力]
{
send {F12}
}
else
if ( GetColor(683,394)="3C686B")  ;[远古愤怒之结]
{
send 8
}
else
if ( GetColor(676,386)="6A511B") ;[暴风之瓶]
{
send 8
}
else
if ( GetColor(682,393)="D7193B") ;[震咬者的尖牙]
{
send 8
}
else
if ( GetColor(677,395)="5FA0A4")
{
send 8
}
else
if ( GetColor(677,396)="E60609") ;[Sphere of Red Dragon's Blood]
{
send 8
}
;---------------------------------------------------------9.0饰品/物品---------------------------------------------------------
else
if ( GetColor(750,456)="45635C") ;唤雾者的陶笛
{
send !2
}
else
if ( GetColor(682,395)="21E077") ;[瓶装绽翼兽毒素]
{
send 8
}
else
if ( GetColor(1386,545)="B0393F")  ;[影握图腾]
{
send 8
}
else
if ( GetColor(1386,541)="BCFFE6") ;[暗月套牌：腐化]
{
send 8
}
else
if ( GetColor(682,391)="B9FCFF") ;[天域军火]
{
send 8
}
else
if ( GetColor(681,391)="BC9747") ;[隐匿者之翼]
{
send 8
}
else
if ( GetColor(1388,546)="188E94") ;[同化雕文]
{
send 8
}
else
if ( GetColor(1384,546)="544132") ;[不可思议的量子装置]
{
send 8
}
else
if ( GetColor(685,391)="6B615F")
{
send 8
}
else
if ( GetColor(1388,542)="868889")
{
send 8
}
;------------------------------------------------------------猎       人------------------------------------------------------------
else
if ( GetColor(1363,620)="1E5565") ;误导
{
send {F8}
}
else
if ( GetColor(1361,628)="2A2C04") ;灵龟守护
{
send e
}
else
if ( GetColor(1356,623)="329C41") ;意气风华
{
send !4
}
else
if ( GetColor(1366,628)="72C945") ;[优胜劣汰]
{
send f
}
else
if ( GetColor(1425,584)="5F2A08") ;召唤宠物
{
send !9
}
else
if ( GetColor(1409,537)="648496") ;反制射击
{
send {F4}
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
if ( GetColor(1362,624)="874C84") ;宁神射击
{
send {F2}
}
else
if ( GetColor(719,489)="5C665C") ;焦油陷阱
{
send 3
}
else
if ( GetColor(722,492)="735BFF") ;冰冻陷阱
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
if ( GetColor(711,414)="554437") ;群兽奔腾
{
send {F2}
}
else
if ( GetColor(1363,625)="895B2A") ;治疗宠物
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
if ( GetColor(1378,582)="3D2506") ;瞄准射击切换目标
{
send {tab}
sleep 300
}
else
if ( GetColor(1381,577)="6EC337") ;毒蛇切目标
{
send {tab}
sleep 300
}
else
if ( GetColor(1392,580)="E7E2D7") ;倒刺射击切换目标
{
send {tab}
sleep 300
}
else
if ( GetColor(1411,541)="7D7F61") ;百发百中
{
send 7
}
else
if ( GetColor(1407,541)="A34900") ;二连击
{
send {F3}
}
else
if ( GetColor(1411,539)="FFCFC6") ;乱射
{
send 6
}
else
if ( GetColor(1420,580)="4A5667") ;夺命射击
{
send {F5}
}
else
if ( GetColor(1416,585)="3C2303") ;瞄准射击
{
send {F10}
}
else
if ( GetColor(1419,580)="291709") ;稳固射击
{
send 0
}
else
if ( GetColor(1421,572)="5D542F") ;多重射击
{
send 1
}
else
if ( GetColor(1413,583)="3A3650") ;急速射击
{
send 5
}
else
if ( GetColor(1424,583)="761D14") ;爆炸射击
{
send {F11}
}
else
if ( GetColor(1412,577)="466E7A") ;夺命黑鸦
{
send !6
}
else
if ( GetColor(1431,583)="759636") ;毒蛇钉刺
{
send  !6
}
else
if ( GetColor(1415,576)="474F4F") ;弹幕射击
{
send {F11}
}
else
if ( GetColor(1440,572)="B31DDA") ;奇美拉射击
{
send {F6}
}
else
if ( GetColor(1362,633)="9D2B2D") ;爆裂射击
{
send !3
}
else
if ( GetColor(1409,540)="82FE18") ;野性守护
{
send {F3}
}
else
if ( GetColor(723,412)="D43019") ;震荡射击
{
send 4
}

else
if ( GetColor(1363,623)="4A3E3D") ;胁迫
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
if ( GetColor(720,408)="7F6C72") ;狂野怒火
{
send 0
}
else
if ( GetColor(708,383)="352921") ;协同作战
{
send {F12}
}
else
if ( GetColor(1417,583)="260A06") ;杀戮命令
{
send {f9}
}
else
if ( GetColor(724,417)="79938F") ;凶暴野兽
{
send 9
}

else
if ( GetColor(707,429)="4F585F") ;照明弹
{
send !0
}
else
if ( GetColor(1418,582)="301C0B") ;眼镜蛇射击
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
if ( GetColor(1412,585)="CBCD9E") ;奥术射击
{
send {F6}
}
else
if ( GetColor(719,409)="2179EF") ;削凿
{
send {F11}
}
else
if ( GetColor(1420,581)="73100B")  ;倒刺射击
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
;---------------------------------------------------------潜行者---------------------------------------------------------
else
if ( GetColor(1473,626)="443F44") ;闷棍
{
send {F1}
}
else
if ( GetColor(1466,631)="A92325") ;搜索
{
send {F2}
sleep 500
}
else
if ( GetColor(1462,619)="B02F17") ;嫁祸
{
send !3
}
else
if ( GetColor(1460,629)="87D7D4") ;烟雾弹
{
send {F1}
}
else
if ( GetColor(1432,578)="2B2723") ;偷袭
{
send !4
}
else
if ( GetColor(1425,569)="FFC591") ;肾击
{
send !5

}
else
if ( GetColor(1427,585)="E8C099") ;致盲
{
send !3
}
else
if ( GetColor(1387,544)="736963")  ;速效药膏
{
send !7
}
else
if ( GetColor(682,390)="B51C00") ;致伤药膏
{
send !9
}
else
if ( GetColor(683,387)="64475E") ;减速药膏
{
send !8
}
else
if ( GetColor(1388,543)="603981") ;迟钝药膏
{
send !-
}
else
if ( GetColor(684,389)="558C3A") ;致命药膏
{
send !7
}
else
if ( GetColor(688,417)="E7CCAF") ;死亡标记换目标
{
send {tab}
}
else
if ( GetColor(1389,547)="AC9E9C") ;死亡标记
{
send {F8}
}
else
if ( GetColor(682,390)="876964") ;起手死亡标记
{
send {F8}
}
else
if ( GetColor(683,393)="8C1C10") ;影舞步
{
send {F10}
}
else
if ( GetColor(1416,581)="DD9E00") ;切割
{
send {F5}
}
else
if ( GetColor(1418,581)="6B7684") ;消失
{
send x
}
else
if ( GetColor(1413,538)="6C7985") ;OFFGCD消失
{
send x
}
else
if ( GetColor(1410,543)="6B3800") ;潜行
{
send {F8}
}
else
if ( GetColor(1413,535)="B5CFE7") ;佯攻
{
send r
}
else
if ( GetColor(1411,534)="5A6983") ;猩红之瓶
{
send 5
}
else
if ( GetColor(1466,624)="A05368") ;闪避
{
send !0
}
else
if ( GetColor(1411,534)="6B6C6B") ;脚踢
{
send {F4}
}
else
if ( GetColor(740,466)="69B3B6")  ;烟雾弹
{
send {F2}
}
else
if ( GetColor(716,429)="DEF5DC")  ;毒刃
{
send 0
}
;--------------------------------------------------------------------敏锐
else
if ( GetColor(1413,538)="722ED2") ;暗影之刃
{
send {F3}
}
else
if ( GetColor(1420,578)="042852") ;影分身
{
send {F9}
}
else
if ( GetColor(1412,541)="29083D") ;OFFGCD死亡符记
{
send {F11}
}
else
if ( GetColor(1419,585)="EE33FF") ;死亡符记
{
send {F11}
}
else
if ( GetColor(1413,582)="BF0EED") ;死亡符记
{
send {F11}
}
else
if ( GetColor(1414,581)="1B0608") ;暗影打击
{
send 4
}

else
if ( GetColor(1413,573)="1E0708") ;暗影之舞
{
send 2
}
else
if ( GetColor(1414,535)="20110D") ;OFFGCD暗影之舞
{
send 2
}
else
if ( GetColor(1416,582)="430F10") ;背刺
{
send  4
}
else
if ( GetColor(1415,582)="7500FF") ;幽暗之刃
{
send 4
}
else
if ( GetColor(1415,584)="E1B889") ;刺骨
{
send 7
}
else
if ( GetColor(1414,576)="52007B") ;黑火药
{
send {F12}
}
else
if ( GetColor(1420,586)="0C3700") ;飞镖
{
send {F6}
}
else
if ( GetColor(1411,573)="040C18") ;袖剑风暴
{
send 1
}
else
if ( GetColor(1416,584)="643F07") ;袖剑旋风
{
send {F10}
}
;-----------------------------------------------------------outlaw
else
if ( GetColor(704,390)="FFDE72") ;冲动
{
send {F3}
}
else
if ( GetColor(710,419)="F7EBCE") ;剑刃乱舞
{
send 0
}
else
if ( GetColor(721,413)="978B41") ;刀锋冲刺
{
send {F10}
}
else
if ( GetColor(723,409)="08322C") ;杀戮盛宴
{
send 5
}
else
if ( GetColor(712,410)="010000") ;正中眉心
{
send 7
}
else
if ( GetColor(723,418)="904440") ;鬼魅攻击
{
send 8
}
else
if ( GetColor(709,428)="8F5224") ;[命运骨骰]
{
send {F6}
}
else
if ( GetColor(724,406)="E7C339") ;斩击
{
send 6
}
else
if ( GetColor(720,410)="C44514") ;伏击
{
send 1
}
else
if ( GetColor(720,417)="974CCE") ;影袭
{
send {F12}
}
else
if ( GetColor(723,408)="73160B") ;手枪射击
{
send 4
}
else
if ( GetColor(722,447)="73160B") ;手枪射击挂機
{
send 4
}

;--------------------------------------------------------------刺杀
else
if ( GetColor(677,412)="10AFD7") ;切换目标死亡标记
{
send {Tab}
sleep 100
}
else
if ( GetColor(680,413)="21237B") ;切换目标毁伤
{
send {Tab}
sleep 100
}
else
if ( GetColor(686,411)="130202") ;切换目标锁喉
{
send {Tab}
sleep 100
}
;else
;if ( GetColor(1383,577)="656265") ;切换目标割裂
;{
;send {Tab}
;sleep 100
;}
else
if ( GetColor(705,422)="DF6645") ;锁喉
{
send {f6}
}
else
if ( GetColor(700,390)="562F33") ;宿敌
{
send {f3}
}
else
if ( GetColor(717,411)="563E5E") ;侧袭
{
send !2
}
else
if ( GetColor(719,411)="1685C2") ;毁伤
{
send 2
}
else
if ( GetColor(1416,577)="4D4A4C") ;割裂
{
send 6
}
else
if ( GetColor(717,407)="531F27") ;刀扇
{
send 1
}
else
if ( GetColor(714,414)="D1D8AA") ;毒伤
{
send 7
}
else
if ( GetColor(718,408)="E5E5E4") ;猩红风暴
{
send {f9}
}
else
if ( GetColor(722,414)="CEEFBD") ;剧毒之刃
{
send 0
}
else
if ( GetColor(717,410)="F83C00") ;抽血
{
send 4
}

;----------------------------------------------------德鲁伊-------------------------------------------------------

else
if ( GetColor(1436,584)="43BAB4") ;熊形态
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
if ( GetColor(1414,536)="4286EF") ;化生：之眷
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
if ( GetColor(1416,579)="161869") ;月火术
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
if ( GetColor(1470,628)="1EA0D6") ;甘霖
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
if ( GetColor(1414,537)="C1AA8D") ;迎头痛击
{
send r
}
else
if ( GetColor(1379,548)="FFD402") ;树皮术
{
send {F11}
}
else
if ( GetColor(1482,625)="D78B17") ;野性之心
{
send {F5}
}
else
if ( GetColor(1385,544)="4F4939") ;狂暴回复
{
send 6
}
else
if ( GetColor(1382,541)="58563C") ;生存本能
{
send t
}
else
if ( GetColor(1380,545)="212021") ;铁鬃
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
if ( GetColor(1420,580)="261F30") ;重殴
{
send 4
}
else
if ( GetColor(1413,577)="C98B38") ;横扫
{
send 1
}
else
if ( GetColor(1430,585)="764A2D") ;裂伤
{
send 2
}
else
if ( GetColor(1421,561)="E8AB85") ;痛击
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

;----------------------------------------------------------术   士------------------------------------------------


else
if ( GetColor(1425,577)="5A4916") ;召唤小鬼
{
send !-
send !9
}
else
if ( GetColor(1437,576)="EEE170") ;召唤恶魔卫士
{
send !-
send !9
}
else
if ( GetColor(7006,383)="A25C32") ;召唤末日守卫
{
send !-
send {F3}
}
else
if ( GetColor(1425,577)="AE4329") ;生命通道
{
send f
}
else
if ( GetColor(1465,629)="EAB97C") ;不灭决心
{
send e
}
else
if ( GetColor(1427,575)="120909") ;吸取生命
{
send x
}
;-------------------------------------------------------------------恶魔
else
if ( GetColor(1418,539)="3E0309") ;[魔典：恶魔卫士]
{
send 0
}
else
if ( GetColor(1425,585)="3F3742") ;召唤邪犬
{
send 6
}
else
if ( GetColor(720,412)="431A0C") ;召唤邪犬暗色
{
send {F5}
}
else
if ( GetColor(722,409)="EDE135")
{
send 6
}
else
if ( GetColor(704,382)="FFFFCE")
{
send e
}
else
if ( GetColor(1410,537)="87878C") ;OGCD巨斧投掷
{
send ^9
}
else
if ( GetColor(1421,574)="4A2029") ;M巨斧投掷
{
send ^9
}
else
if ( GetColor(1420,585)="FFFBFF") ;恶魔之箭
{
send {F12}
}
else
if ( GetColor(1420,577)="8815A7") ;暗影箭
{
send {F11}
}
else
if ( GetColor(722,415)="45131D") ;灾怨轰炸
{
send 7
}
else
if ( GetColor(1412,535)="CD5440") ;恶魔力量
{
send 7
}
else
if ( GetColor(1420,582)="7721E8") ;古尔丹之手
{
send {F4}
}
else
if ( GetColor(1424,580)="483C4F") ;召唤恶魔暴君
{
send {F3}
}
else
if ( GetColor(1419,585)="F7E608") ;召唤恐惧猎犬
{
send !5
}
else
if ( GetColor(1418,580)="402922") ;内爆
{
send {F8}
}
else
if ( GetColor(1438,565)="0C571B")   ;末日降临
{
send {F9}
}
;--------------------------------------------------------------------毁灭
else
if ( GetColor(1413,543)="5B2A71")  ;黑暗灵魂：动荡
{
send {F3}
}
else
if ( GetColor(1410,542)="5A6121") ;召唤地狱火
{
send !5
}
else
if ( GetColor(1380,582)="240101") ;浩劫
{
send t
}
else
if ( GetColor(1465,630)="240101") ;浩劫换目标
{
send {tab}
sleep 200
}
else
if ( GetColor(1414,588)="FCEF62") ;献祭
{
send {F11}
}
else
if ( GetColor(1425,582)="E28134") ;燃烧
{
send {F9}
}
else
if ( GetColor(1419,583)="F4710C") ;烧尽
{
send {F10}
}
else
if ( GetColor(1423,583)="7F741B") ;混乱箭
{
send {F6}
}
else
if ( GetColor(1418,585)="292829") ;大灾变
{
send 6
}
else
if ( GetColor(722,410)="E5F62D") ;灵魂打击
{
send 8
}
else
if ( GetColor(1419,588)="FFD339") ;火焰之雨
{
send 9
}

;-------------------------------------------------------------------------------痛苦
else
if ( GetColor(706,387)="FEC8FF")  ;黑暗灵魂：哀难
{
send {F3}
}
else
if ( GetColor(1414,542)="4847C4") ;诡异魅影
{
send {F10}
}
else
if ( GetColor(704,427)="1D0B21")  ;腐蚀之种
{
send 5
}
else
if ( GetColor(710,468)="B1ADAF") ;召唤地狱恶犬
{
send !4
}
else
if ( GetColor(1411,541)="34162A") ;召唤黑眼
{
send !8
}
else
if ( GetColor(1414,585)="3C4F61")  ;腐蚀术
{
send 4
}
else
if ( GetColor(1420,586)="504F4E") ;痛楚
{
send 1
}
else
if ( GetColor(1426,583)="E6D38D") ;痛苦无常
{
send {F5}
}
else
if ( GetColor(7021,410)="D951F7") ;死亡之箭
{
send 5
}
else
if ( GetColor(1432,589)="A2D973") ;鬼影缠身
{
send {F9}
}
else
if ( GetColor(1419,585)="2C6580") ;吸取灵魂
{
send {F11}
}
else
if ( GetColor(1420,586)="171401") ;生命虹吸
{
send {F12}
}
else
if ( GetColor(720,459)="500059") ;邪能统御
{
send !7
}
else
if ( GetColor(1471,622)="A65554") ;法术封锁
{
send ^4
}
else
if ( GetColor(1418,583)="411045") ;灾难狂欢
{
send {F6}
}

else
if ( GetColor(1387,577)="86857F") ;痛楚切换目标
{
send {tab}
sleep 200
}
;else
;if ( GetColor(682,422)="C4C3C4")  ;厄运切换目标
;{
;send {tab}
;sleep 200
;}
else
if ( GetColor(1384,585)="141C08") ;生命虹吸切换目标
{
send {tab}
sleep 200
}
else
if ( GetColor(1384,577)="28313A") ;腐蚀术切换目标
{
send {tab}
sleep 200
}
else
if ( GetColor(1384,573)="320908") ;痛苦无常	切换目标
{
send {tab}
sleep 200
}
else
if ( GetColor(1373,585)="F7A73A") ;献祭	切换目标
{
send {tab}
sleep 200
}
;------------------------------------------------------------战士通用-------------------------------------------------------------------
;else
;if ( GetColor(724,424)="FF0000") ;冲锋/嘲讽
;{
;send !1
;}
else
if ( GetColor(741,452)="EB8059") ;战斗怒吼
{
send {F9}
}
else
if ( GetColor(705,385)="493623") ;拳击
{
send {F1}
}
else
if ( GetColor(759,452)="202C51") ;英勇投掷
{
send 5
}
else
if ( GetColor(757,452)="B25123") ;乘胜追击
{
send 7
}
else
if ( GetColor(718,411)="362831") ;斩杀
{
send {F4}
}
else
if ( GetColor(753,450)="AC4322") ;狂暴之怒
{
send {F3}
}
else
if ( GetColor(723,408)="2A2C2A") ;破胆怒吼
{
send {F8}
}
else
if ( GetColor(717,414)="44C4ED") ;旋风斩
{
send 1
}
else
if ( GetColor(760,453)="C3AA73") ;断筋
{
send !5
}
else
if ( GetColor(720,412)="2C2F44") ;猛击
{
send 2
}
else
if ( GetColor(759,453)="F7BE18") ;无视苦痛
{
send 2
}
else
if ( GetColor(684,388)="D87318") ;无视苦痛
{
send 2
}

else
if ( GetColor(709,421)="7B6559") ;盾牌格挡
{
send 3
}
else
if ( GetColor(683,392)="504841") ;盾牌格挡
{
send 3
}

else
if ( GetColor(719,409)="5A3410") ;盾牌猛击
{
send {F6}
}
else
if ( GetColor(511,492)="AB0000") ;法术反射
{
send f
}
;天赋技能-通用
else
if ( GetColor(719,416)="84A8A5")  ;天神下凡
{
send 0
}
else
if ( GetColor(760,452)="55EBD2") ;风暴之锤
{
send t
}
else
if ( GetColor(725,409)="291C21") ;剑刃风暴
{
send {F10}
}
else
if ( GetColor(719,410)="B0A99B") ;破坏者
{
send {F3}
}
;天赋技能-狂暴
else
if ( GetColor(720,412)="F55333") ;破城者
{
send {F2}
}
else
if ( GetColor(721,416)="465464") ;强攻
{
send {F10}
}
else
if ( GetColor(717,411)="773A38") ;巨龙之吼
{
send {F11}
}
;天赋技能-武器
else
if ( GetColor(722,412)="211008") ;碎颅打击
{
send {F12}
}
else
if ( GetColor(718,411)="F7ECCE") ;顺劈斩
{
send !1
}
else
if ( GetColor(719,411)="2C2729") ;灭战者
{
send {F8}
}
else
if ( GetColor(754,450)="716F71") ;防御姿态
{
send x
}
else
if ( GetColor(741,465)="7F3829") ;防御姿态-取消
{
send x
}
;天赋技能-防御
else
if ( GetColor(719,417)="290919") ;狂暴挥砍
{
send 6
}
else
if ( GetColor(716,425)="AD835A") ;毁灭打击
{
send !5
}
;基础技能-狂暴
else
if ( GetColor(759,452)="741308") ;狂怒回复
{
send e
}
else
if ( GetColor(716,415)="FCE6C8") ;鲁莽
{
send 0
}
else
if ( GetColor(716,410)="615B5E") ;怒击
{
send !5
}
else
if ( GetColor(716,414)="777577") ;怒击变种
{
send !5
}
else
if ( GetColor(720,409)="BC3806") ;暴怒
{
send !4
}
else
if ( GetColor(720,410)="383D05") ;嗜血
{
send {F8}
}
else
if ( GetColor(723,425)="DE90B8") ;浴血奋战
{
send {F8}
}
;基础技能-武器

else
if ( GetColor(754,446)="741202") ;剑在人在
{
send e
}
else
if ( GetColor(719,410)="5F0100") ;撕裂
{
send !2
}
else
if ( GetColor(721,420)="5B5D5D") ;压制
{
send  {F10}
}
else
if ( GetColor(717,418)="717171") ;致死打击
{
send {F11}
}
else
if ( GetColor(721,411)="8B9C6D") ;巨人打击
{
send 3
}

else
if ( GetColor(720,406)="A40B07") ;横扫攻击
{
send {F5}
}
;基础技能-防御
else
if ( GetColor(741,463)="358DC2") ;震荡波
{
send x
}
else
if ( GetColor(752,450)="867D6C") ;盾墙
{
send {F2}
}

else
if ( GetColor(684,389)="58241B") ;破釜沉舟
{
send !1
}

else
if ( GetColor(727,419)="529831") ;雷霆一击
{
send 1
}

else
if ( GetColor(722,427)="E1DCDF") ;复仇
{
send !4
}
else
if ( GetColor(716,427)="6B6C29") ;挫志咆哮
{
send 6
}



;-------------------------------------------------------死亡骑士-----------------------------------------------------------------
else
if ( GetColor(703,385)="E4C3E4") ;心灵冰冻
{
send {F1}
}
else
if ( GetColor(721,413)="733B5A") ;窒息
{
send {F2}
}
else
if ( GetColor(719,412)="394542") ;灵界打击
{
send {F8}
}
else
if ( GetColor(706,385)="6B0705") ;饮血者
{
send {F4}
}
else
if ( GetColor(703,387)="4440AD") ;白骨风暴
{
send {F4}
}
else
if ( GetColor(722,410)="BFF8FF") ;冰封之韧
{
send e
}
else
if ( GetColor(952,7106)="928893") ;石像鬼
{
send {F8}
}
else
if ( GetColor(703,384)="B783C3") ;大军
{
send {F11}
}
else
if ( GetColor(715,413)="4B0C00") ;枯萎凋零
{
send x
}
else
if ( GetColor(724,411)="58687F") ;亵渎
{
send x
}
;----------------------------------------------------------------------------血DK
else
if ( GetColor(722,411)="FFDB4A") ;符文刃舞
{
send {F5}
}
else
if ( GetColor(712,405)="FFF971") ; 饮血者
{
send {F9}
}
else
if ( GetColor(704,385)="F2AFA6") ;符文分流
{
send 1
}
else
if ( GetColor(715,412)="6404F2") ;骨髓分裂
{
send 2
}
else
if ( GetColor(718,409)="9C6261") ;心脏打击
{
send 3
}
else
if ( GetColor(720,411)="422418") ;死神的抚慰
{
send 4
}
else
if ( GetColor(713,412)="083B26") ;血液沸腾
{
send 6
}
else
if ( GetColor(724,408)="70251D") ;
{
send 7
}
else
if ( GetColor(704,390)="8E2518") ;吸血鬼之血
{
send 0
}
else
if ( GetColor(720,414)="08414A") ;符文打击
{
send 9
}
;--------------------------------------------------------------------邪DK
else
if ( GetColor(684,415)="225630") ;爆发换目标
{
send {tab}
sleep 100
send 1
}
else
if ( GetColor(686,416)="A2D9EB") ;脓疮打击换目标
{
send {tab}
sleep 100
send 2
}
else
if ( GetColor(708,386)="4D4D59") ;召唤瓦格里
{
send 6
}
else
if ( GetColor(723,416)="3B3A3B") ;召唤石像鬼
{
send 6
}
else
if ( GetColor(684,392)="715B29") ;亡者复生
{
send 0
}
else
if ( GetColor(721,407)="EBFD69") ;爆发
{
send 1
}
else
if ( GetColor(716,415)="575C68") ;脓疮打击
{
send 2
}
else
if ( GetColor(715,426)="642AA0") ;暗影之爪
{
send 3
}
else
if ( GetColor(724,407)="702D7E") ;天灾打击
{
send 3
}
else
if ( GetColor(705,429)="F7E3F1")  ;邪恶狂乱
{
send {F3}
}
else
if ( GetColor(718,407)="C99B5C") ;黑暗突变
{
send 4
}
else
if ( GetColor(721,424)="132F10") ;凋零缠绕
{
send 5
}
else
if ( GetColor(706,385)="20307B") ;凋零符文武器
{
send {F3}
}
else
if ( GetColor(719,412)="FFF3DE") ;传染
{
send 7
}
else
if ( GetColor(708,423)="979869")  ;天启
{
send 8
}
else
if ( GetColor(703,424)="29375A") ;灵魂收割
{
send 9
}
;---------------------------------------------------------------------冰DK
else
if ( GetColor(706,384)="295263") ;冰龙吐息
{
send {F6}
}
else
if ( GetColor(707,384)="848C8C") ;冰霜支柱
{
send {F7}
}
else
if ( GetColor(967,757)="36859E") ;冰龙吐息
{
send {F8}
}
else
if ( GetColor(962,945)="242839") ;天赋湮灭
{
send 0
}
else
if ( GetColor(722,410)="8AEDFF") ;凌风冲击
{
send 1
}
else
if ( GetColor(724,408)="1C668A") ;冰霜打击
{
send 2
}
else
if ( GetColor(724,407)="6D6785") ;湮灭
{
send 3
}
else
if ( GetColor(723,408)="5CD7FF") ;冰川突进
{
send 4
}
else
if ( GetColor(725,406)="6C8B89") ;冷酷严冬
{
send 5
}
else
if ( GetColor(9620,926)="743422") ;
{
send 6
}
else
if ( GetColor(957,946)="2C3235") ;冰霜之镰
{
send 8
}
else
if ( GetColor(960,945)="807287") ;寒冬号角
{
send 9
}
;---------------------------------------------------------圣骑士----------------------------------------------------------
else
if ( GetColor(720,412)="FFFFC6") ;复仇者之盾
{
send r
}
else
if ( GetColor(686,413)="3A2E11") ;复仇之盾
{
send !1
}
else
if ( GetColor(706,387)="6C1C0A") ;责难
{
send {F1}
}
else
if ( GetColor(714,419)="DDCCA9")  ;[制裁之锤]
{
send 6
}
else
if ( GetColor(704,384)="7632AA") ;正义盾击
{
send 3
}
else
if ( GetColor(708,390)="FFFF56") ;守护之光
{
send 4
}
else
if ( GetColor(707,384)="E7B668") ;神圣愤怒
{
send {F2}
}
else
if ( GetColor(705,388)="3A1C0C") ;复仇之怒
{
send {F3}
}
else
if ( GetColor(960,763)="ABAD96") ;风暴之锤
{
send {F10}
}
else
if ( GetColor(720,411)="D89E1C") ;十字军打击
{
send 3
}
else
if ( GetColor(720,417)="180C10") ;正义之锤
{
send 1
}
else
if ( GetColor(715,413)="AB8341") ;审判
{
send 2
}
else
if ( GetColor(724,405)="A5AE9C") ;神圣之锤
{
send 3
}
else
if ( GetColor(720,413)="90400B")  ;公正之剑
{
send 1
}
else
if ( GetColor(718,415)="C8A94D") ;圣殿骑士的裁决
{
send 4
}
else
if ( GetColor(716,420)="FFE7C4") ;奉献
{
send 5
}
else
if ( GetColor(719,424)="3B261F") ;处决宣判
{
send 5
}
else
if ( GetColor(723,407)="FCFBDB") ;异端裁决
{
send 6
}
else
if ( GetColor(716,407)="2A261B") ;愤怒之锤
{
send 7
}
else
if ( GetColor(718,417)="D8E4DF") ;神圣风暴
{
send 8
}
else
if ( GetColor(721,414)="FF8610") ;灰烬觉醒
{
send 9
}
else
if ( GetColor(725,413)="ECE8A2")  ;神圣复仇者
{
send 0
}
;---------------------------------------------------------------武僧 ---------------------------------------------------------
else
if ( GetColor(706,387)="311301")	 ;切喉手
{
send {F1}
}
else
if ( GetColor(707,385)="220F07")	 ;扫堂腿
{
send !3
}
else
if ( GetColor(708,383)="6B0CB5")	 ;分筋错骨
{
send f
}
else
if ( GetColor(710,385)="140202") ;轮回之触
{
send 7
}
else
if ( GetColor(721,407)="0AB57D") ;移花接木
{
send 7
}
else
if ( GetColor(705,384)="521248") ;风火雷电
{
send 9
}
else
if ( GetColor(706,384)="07121E") ;白虎下凡
{
send {F2}
}
else
if ( GetColor(755,453)="216C43") ;活血术
{
send e
}
else
if ( GetColor(961,951)="353938") ;
{
send {F4}
}
else
if ( GetColor(961,951)="353938") ;
{
send {F5}
}
else
if ( GetColor(961,951)="353938") ;
{
send {F6}
}
else
if ( GetColor(719,420)="24B769") ;真气波
{
send {F8}
}
else
if ( GetColor(716,414)="28A97F") ;
{
send {F10}
}
else
if ( GetColor(972,962)="33E1AE") ;真气贯通
{
send 0
}
else
if ( GetColor(720,426)="595450") ;白虎拳
{
send 0
}
else
if ( GetColor(725,413)="5A7067") ;猛虎掌
{
send 1
}
else
if ( GetColor(964,952)="92641D") ;
{
send 1
}
else
if ( GetColor(721,424)="E25D08") ;旭日东升踢
{
send 2
}
else
if ( GetColor(708,427)="0031A4") ;怒雷破
{
send 3
}
else
if ( GetColor(964,947)="BEBDBD") ;
{
send 3
}
else
if ( GetColor(723,427)="081518") ;幻灭踢
{
send 4
}
else
if ( GetColor(973,963)="7FFFF4") ;碎玉闪电
{
send 5
}
else
if ( GetColor(723,411)="014F0E") ;升龙霸
{
send 5
}
else
if ( GetColor(723,413)="1E5C0E") ;神鹤引项踢
{
send 6
}
else
if ( GetColor(722,424)="C5E3E8") ;业报之触
{
send 8
}
else
if ( GetColor(726,411)="343702")
{
send !0
}

;------------------------------------------------------------恶魔猎手----------------------------------------------------

else
if ( GetColor(704,383)="024F21")  ;恶魔变形
{
send t
}
else
if ( GetColor(717,410)="25392B")
{
send 2
}
else
if ( GetColor(725,414)="472B44")  ;地域火撞击
{
send q
}
else
if ( GetColor(707,364)="EBD000")
{
send e
}
else
if ( GetColor(705,385)="DFDB00")  ;恶魔尖刺
{
send 6
}
else
if ( GetColor(714,411)="9451BD")
{
send 5
}
else
if ( GetColor(704,388)="212C29")
{
send {F2}
}
else
if ( GetColor(987,948)="EDE7A5")
{
send {F3}
}
else
if ( GetColor(10090,933)="2F2C27")
{
send {F4}
}
else
if ( GetColor(1022,945)="648899")
{
send {F5}
}
else
if ( GetColor(709,365)="040600")
{
send f
}
else
if ( GetColor(964,936)="2D1204")
{
send 0
}
else
if ( GetColor(724,419)="62DA42") ;投掷利刃
{
send 1
}
else
if ( GetColor(713,425)="102B20")
{
send 6
}
else
if ( GetColor(723,413)="6DA7F0")
{
send 2
}
else
if ( GetColor(722,413)="42562A") ;破裂
{
send 2
}
else
if ( GetColor(726,416)="7F7837")  ;裂魂
{
send 2
}
else
if ( GetColor(718,416)="877629")
{
send 3
}
else
if ( GetColor(722,414)="BE99FF") ;裂魂裂劈
{
send 3
}
else
if ( GetColor(707,407)="2BC62D")
{
send 3
}
else
if ( GetColor(716,414)="7BCF39")
{
send 4
}
else
if ( GetColor(722,419)="291829") ;幽魂炸弹
{
send 4
}
else
if ( GetColor(726,417)="8056A5")   ;献祭光环
{
send 5
}
else
if ( GetColor(718,419)="34D085")
{
send 3
}
else
if ( GetColor(992,953)="5A8294")
{
send 7
}
else
if ( GetColor(989,949)="335F6E")
{
send 7
}
else
if ( GetColor(964,940)="252B2C")
{
send 9
}
else
if ( GetColor(722,406)="548205")
{
send 8
}
else
if ( GetColor(724,424)="A6D70D")  ;烈焰咒符
{
send 8
}



;---------------------------------------------------------牧师---------------------------------------------------------------
else
if ( GetColor(715,424)="040215") ;暗影形态
{
send {F6}
}
else
if ( GetColor(702,431)="45004F")  ;催心魔
{
send !6
}
else
if ( GetColor(719,415)="56447C")  ;暗影魔
{
send !6
}
else
if ( GetColor(686,413)="FFF75C") ;灭切换目标
{
send {tab}
sleep 100
}
else
if ( GetColor(684,413)="E559E3") ;嗜灵疫病切换目标
{
send {tab}
sleep 100
}
else
if ( GetColor(679,414)="7B7695") ;吸血鬼之触切换目标
{
send {tab}
sleep 100
}
else
if ( GetColor(716,418)="E7AE42") ;沉默
{
send {F11}
}

else
if ( GetColor(705,430)="212C9C") ;虚空爆发
{
send 4
}
else
if ( GetColor(704,426)="8F00FF") ;虚空箭
{
send 4
}
else
if ( GetColor(719,411)="503A6B") ;精神灼烧
{
send 7
}
else
if ( GetColor(721,408)="0D0100") ;暗言术：痛
{
send 2
}
else
if ( GetColor(725,413)="181021") ;暗言术：虚
{
send 3
}
else
if ( GetColor(712,426)="0F5252") ;精神鞭笞
{
send {F4}
}
else
if ( GetColor(726,426)="CE3FD0") ;暗影冲撞
{
send {F8}
}
else
if ( GetColor(724,416)="FFFD50") ;暗言术：灭
{
send 5
}
else
if ( GetColor(718,417)="BF60CF") ;虚空洪流
{
send 7
}
else
if ( GetColor(719,412)="C20CD4") ;暗影冲击
{
send 8
}
else
if ( GetColor(723,411)="00455A") ;吸血鬼之触
{
send !4
}
else
if ( GetColor(726,408)="F6D6F7") ;心灵暴震
{
send {F3}
}
else
if ( GetColor(721,407)="412D4E") ;嗜灵疫病
{
send {F10}
}
else
if ( GetColor(753,453)="9CFAFE") ;耐
{
send {F5}
}
else
if ( GetColor(757,436)="F6E6E6") ;盾
{
send q
}

;----------------------------------------------------------法师---------------------------------------------------
else
if ( GetColor(704,387)="A26CFF") ;法术反制
{
send {F1}
}
else
if ( GetColor(708,387)="010203") ;能量符文
{
send {F11}
}
else
if ( GetColor(709,387)="D7A206") ;燃烧
{
send 7
}	
else
if ( GetColor(706,426)="0870B3") ;镜像
{		
send {F8}
}
else
if ( GetColor(759,449)="621406") ;烈焰护体
{
send {F5}
}
else
if ( GetColor(758,447)="297A77") ;寒冰护体
{
send {F5}
}
else
if ( GetColor(760,452)="C3BEFF") ;棱光护体
{
send {F5}
}
else
if ( GetColor(704,384)="3148AD") ;奥术强化
{
send {F4}
}
else
if ( GetColor(705,384)="0218D8") ;冰冷血脉
{
send {F8}
}
else
if ( GetColor(709,388)="6BE3E7") ;寒冰宝珠
{			
send 5
}	
else
if ( GetColor(721,411)="0135BA") ;奥术智慧
{
send {F12}
}	

else
if ( GetColor(718,415)="FE751F") ;流星
{
send 0
}
else
if ( GetColor(796,452)="554FBF") ;法术吸取
{
send !1
}

else
if ( GetColor(723,406)="650401") ;火球术
{
send 5
}
else
if ( GetColor(719,426)="F3B049") ;烈焰风暴
{
send 3
}
else
if ( GetColor(680,417)="290F10") ;龙息术
{
send {F10}
}
else
if ( GetColor(705,421)="FF7C06") ;龙息术
{
send {F10}
}
else
if ( GetColor(729,426)="DE4900") ;不死鸟之火
{
send {F9}
}
else
if ( GetColor(712,423)="F2A848") ;火焰冲击
{
send 2
}
else
if ( GetColor(683,416)="C87F52") ;火焰冲击		左边
{
send 2	
}
else
if ( GetColor(726,413)="F9EDFD") ;奥术冲击
{
send  	{F10}
}
else
if ( GetColor(702,429)="5B0800") ;灼烧
{
send 4
}
else
if ( GetColor(721,424)="E06F1E") ;炎爆术
{
send 6
}
else
if ( GetColor(721,409)="248C46") ;水元素
{
send {F2}
}
else
if ( GetColor(787,451)="320D04") ;水元素攻击
{
send  {F11}
}
else
if ( GetColor(715,425)="2641FF") ;冰风暴
{
send  7
}
else
if ( GetColor(714,419)="6E7CDD") ;寒冰箭
{
send 0
}
else
if ( GetColor(705,387)="2A4889") ;[大法师之触]
{
send {F9}
}
else
if ( GetColor(719,424)="3B3D3A") ;[气定神闲]
{
send {F8}
}
else
if ( GetColor(707,427)="120324") ;[奥术飞弹]
{
send 3
}
else
if ( GetColor(703,428)="2B092E") ;[奥术飞弹]
{
send 3
}
else
if ( GetColor(725,411)="080008") ;[奥术飞弹]
{
send 3
}
else
if ( GetColor(709,428)="330F48") ;[奥术飞弹]
{
send 3
}
else
if ( GetColor(706,390)="AA4720") ;[唤醒]
{
send 6
}
else
if ( GetColor(719,416)="2A20B2") ;[奥术弹幕]
{
send 4
}
else
if ( GetColor(722,416)="EC93FD") ;[奥术宝珠]
{
send 5
}
else
if ( GetColor(721,428)="8AB9DD") ;[冰枪术]
{
send 3
}
else
if ( GetColor(719,415)="4D98CF") ;[暴风雪]
{
send 6
}
else
if ( GetColor(727,414)="A2BAEC") ;魔暴术
{
send 1
}

;-----------------------------------------------------萨满---------------------------------------------------------
if ( GetColor(967,967)="1B0B02") ;
{
send {F1}
}
else
if ( GetColor(705,384)="E5DFD9") ;
{
send 9
}
else
if ( GetColor(961,951)="353938") ;
{
send {F4}
}
else
if ( GetColor(961,951)="353938") ;
{
send {F5}
}
else
if ( GetColor(961,951)="353938") ;
{
send {F6}
}
else
if ( GetColor(706,384)="803C61") ;
{
send {F9}
}
else
if ( GetColor(726,409)="73669D") ;
{
send {F11}
}
else
if ( GetColor(724,416)="402202") ;
{
send {F12}
}

else
if ( GetColor(972,962)="33E1AE") ;
{
send 0
}
else
if ( GetColor(960,942)="EABD42") ;
{
send 0
}
else
if ( GetColor(725,409)="6A7A6C") ;
{
send 1
}
else
if ( GetColor(723,407)="BDB8CB") ;
{
send 2
}

else
if ( GetColor(725,409)="9ABBDC") ;
{
send 3
}

else
if ( GetColor(722,407)="223D4B")
{
send 4
}
else
if ( GetColor(725,407)="CDCAC5") ;
{
send 4
}
else
if ( GetColor(973,963)="7FFFF4") ;
{
send 5
}
else
if ( GetColor(719,407)="031CE6") ;
{
send 5
}
else
if ( GetColor(724,413)="0119C8") ;
{
send 6
}
else
if ( GetColor(726,408)="360208") ;
{
send 7
}
else
if ( GetColor(727,412)="000810") ;
{
send 8
}

}
Return


;抓取颜色函数，在上面脚本中调用。
GetColor(x,y)
{
PixelGetColor, color, x, y, RGB
StringRight color,color,6
return color
}
