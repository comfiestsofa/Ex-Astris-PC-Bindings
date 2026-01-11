# 《来自星尘》PC键位设定
[[English](README.md)] [[日本语](README-日本语.md)] [[한국어](README-한국어.md)] [[繁體中文](README-繁體中文.md)] [[**简体中文**](README-简体中文.md)]

Hypergryph·Gryphline的3D RPG游戏[《来自星尘》](https://exa.gryphline.com/zh-tw)的完全翻译PC键位设定。

支援PlayStation控制器、XInput控制器（含DS4Windows等），以及滑鼠与键盘。

以Hypergryph·Gryphline官方公开的简体中文MuMuPlayer键位设定为基础制作。

(⚠ 我是海外出生的韩国人，所以中文不太会说（我只能说英文、日文和韩文），因此这份README全部都是从我的日文README机器翻译过来的。请放心，所有游戏术语都取自Hypergryph・Gryphline官方游戏内文字。)

# 安装方式
* 点击「Code」 -> 「Download ZIP」下载此储存库，或是直接clone Git储存库。
* 执行`install.bat`或`install.sh`。（⚠ 注意：现有的自订键位设定将会被覆盖）
* 或者，也可以将各个键位设定的JSON档案手动汇入MuMuPlayer。

# 对应状况
[**在Google试算表中查看**](https://docs.google.com/spreadsheets/d/1sZdIXy9ipPFspfZHkCX18rkhKeY1HSOZZj1IFY6_UoY/edit?gid=1478189668#gid=1478189668)

| 模拟器 | 版本 | Android版本 | 对应状况 | 本专案的支援情况 |
|---|---|---|---|---|
| MuMuPlayer | 5.14.3 | 12 | Hypergryph・Gryphline官方支援。<br><br>如果无法从Google Play下载应用程式，请使用[F-Droid的Aurora Store](https://f-droid.org/zh_Hant/packages/com.aurora.store/)模拟器装置伪装（我个人已在「Sony Xperia 5 Dual」上确认可运作）。 | 已支援 |
| Bluestacks | 5.22.160.1025 | 13 | 会因libhoudini错误而当机，并可能出现颜色阶调跳动的问题。 | 尚未支援 |
| Bluestacks | 5.22.160.1025 | 11 | 我个人尚未尝试，但其他使用者回报可正常运作（可能提升帧率）。但颜色阶调跳动问题依旧存在。 | 尚未支援 |

# 改善点
* 已完整翻译成简体中文（也包含英文、日文、韩文、繁体中文）
* 无需使用DS4Windows模拟XInput控制器，即可原生支援PlayStation控制器
* 新增以滑鼠与键盘配置为基础的「统合」控制器设定，战斗中无需依据队伍人数切换
* 修正类比移动的灵敏度
* 修正2角色控制器设定中右摇杆无法操作视角的问题
* 新增战斗中敌方目标选择按钮
* 改善按钮标签
* 统一所有按钮位置
* 将先前仅在滑鼠与键盘可用的功能全部加入控制器设定
    * 返回/任务
    * 战斗详情
    * 菜单
    * 熵核1
    * 熵核2
    * 熵核3
    * 交互2
    * 额外攻击
* 在控制器与滑鼠/键盘设定中新增功能
    * 道具栏 (「NOUS WAVE」按钮)
    * 信息1 (设定资料弹出视窗)
    * 信息2 (敌资讯弹出视窗)
    * 敌1
    * 敌2
    * 敌3
* 在滑鼠与键盘中，「额外攻击」可在所有角色槽使用，不再限制于第三角色。可将「雁」放置于任意位置
* 按下特定键盘按钮（特别是 返回/任务、交互1、交互2）时，滑鼠不会自动锁定

# 操作方式
[**在Google试算表中查看**](https://docs.google.com/spreadsheets/d/1sZdIXy9ipPFspfZHkCX18rkhKeY1HSOZZj1IFY6_UoY/edit?gid=1875187677#gid=1875187677)

| PlayStation | XInput (DS4Windows) | 滑鼠和键盘 | 行动（探索） | 行动（战斗） | 备注 |
|---|---|---|---|---|---|
| 左摇杆 | 左摇杆 | WASD | 移动 |  |  |
| 右摇杆 | 右摇杆 | 滑鼠移动 | 视角移动 |  |  |
|  |  | 右键 (MOUSE2) 或 Ctrl | 显示/隐藏鼠标 |  |  |
| R3 | RA | F | 交互1 |  |  |
| R2+R3 | RT+RA | G | 交互2 |  |  |
| OPTIONS | Start | V | 角色领域 | 跳过回合 |  |
| 触控板 | Back | ` | 返回/任务 | 菜单 |  |
| R2+OPTIONS | R2+Start | T | 菜单 |  |  |
| R2+→ | RT+→ | B | 道具栏 |  | 「NOUS WAVE」按钮 |
| R2+↑ | RT+↑ | I | 信息1 |  | 设定资料弹出视窗 |
| R2+↓ | RT+↓ | O | 信息2 |  | 敌资讯弹出视窗 |
| L1 | LB | Space |  | 精准化解 | 在「统一」或「滑鼠和键盘」使用时，长按此按钮会连打。 |
| R2 | RT | Shift | 道具资讯 | 切换波流/粒象 | 道具弹出视窗 |
| ✕ | A | 左键 (MOUSE1) | 场景攻击 |  |  |
| L3 | LA | Tab |  | 道具栏 |  |
| R2+← | RT+← | C |  | 战斗详情 |  |
| ロ | X | 1 |  | 技能1 | 在「统一」或「滑鼠和键盘」使用时，长按此按钮会连打。 |
| △ | Y | 2 |  | 技能2 | 在「统一」或「滑鼠和键盘」使用时，长按此按钮会连打。 |
| 〇 | B | 3 |  | 技能3 | 在「统一」或「滑鼠和键盘」使用时，长按此按钮会连打。 |
| ← | ← |  |  | 连击1 | 长按此按钮会连打。在「统一」或「滑鼠和键盘」中无法使用。 |
| ↑ | ↑ |  |  | 连击2 | 长按此按钮会连打。在「统一」或「滑鼠和键盘」中无法使用。 |
| → | → |  |  | 连击3 | 长按此按钮会连打。在「统一」或「滑鼠和键盘」中无法使用。 |
| L2+ロ | LT+X | Alt+1 |  | 必杀技1 |  |
| L2+△ | LT+Y | Alt+2 |  | 必杀技2 |  |
| L2+〇 | LT+B | Alt+3 |  | 必杀技3 |  |
| L1+ロ | LB+X | F1 |  | 额外攻击1 | 在「统一」或「滑鼠和键盘」使用时，长按此按钮会连打。 |
| L1+△ | LB+Y | F2 |  | 额外攻击2 | 在「统一」或「滑鼠和键盘」使用时，长按此按钮会连打。 |
| L1+〇 | LB+B | F3 或 4 |  | 额外攻击3 | 「4」键保留给已习惯官方键位设定的玩家<br><br>在「统一」或「滑鼠和键盘」使用时，长按此按钮会连打。 |
| R1+← | RB+← | Q |  | 熵核1 |  |
| R1+↑ | RB+↑ | E |  | 熵核2 |  |
| R1+→ | RB+→ | R |  | 熵核3 |  |
| L1+← | LB+← | Alt+F1 |  | 敌1 |  |
| L1+↑ | LB+↑ | Alt+F2 |  | 敌2 |  |
| L1+→ | LB+→ | Alt+F3 | 从「沸石号」下车 | 敌3 |  |

# 翻译一览
[**在Google试算表中查看**](https://docs.google.com/spreadsheets/d/1sZdIXy9ipPFspfZHkCX18rkhKeY1HSOZZj1IFY6_UoY/edit?gid=0#gid=0)

[data/translations.tsv](data/translations.tsv)中的TSV档案是由此Google试算表产生的。
