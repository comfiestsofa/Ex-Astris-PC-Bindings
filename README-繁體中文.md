# 《來自星塵》PC鍵位設定
[[English](README.md)] [[日本語](README-日本語.md)] [[한국어](README-한국어.md)] [[**繁體中文**](README-繁體中文.md)] [[简体中文](README-简体中文.md)]

Hypergryph·Gryphline的3D RPG遊戲[《來自星塵》](https://exa.gryphline.com/zh-tw)的完全翻譯PC鍵位設定。

支援PlayStation控制器、XInput控制器（含DS4Windows等），以及滑鼠與鍵盤。

以Hypergryph·Gryphline官方公開的簡體中文MuMuPlayer鍵位設定為基礎製作。

(⚠ 我是海外出生的韓國人，所以中文不太會說（我只能說英文、日文和韓文），因此這份README全部都是從我的日文README機器翻譯過來的。請放心，所有遊戲術語都取自Hypergryph・Gryphline官方遊戲內文字。)

# 螢幕截圖
[螢幕截圖可於此查看。](https://drive.google.com/drive/folders/1k7yrsdX55T33MfIIMfmdA6cJZatq4f_s)

# 安裝方式
* 點擊「Code」 -> 「Download ZIP」下載此儲存庫，或是直接clone Git儲存庫。
* 執行`install.bat`或`install.sh`。（⚠ 注意：現有的自訂鍵位設定將會被覆蓋）
* 或者，也可以將各個鍵位設定的JSON檔案手動匯入MuMuPlayer。

# 對應狀況
[**在Google試算表中查看**](https://docs.google.com/spreadsheets/d/1sZdIXy9ipPFspfZHkCX18rkhKeY1HSOZZj1IFY6_UoY/edit?gid=1478189668#gid=1478189668)

| 模擬器 | 版本 | Android版本 | 對應狀況 | 本專案的支援情況 |
|---|---|---|---|---|
| MuMuPlayer | 5.14.3 | 12 | **Hypergryph・Gryphline官方支援。**<br><br>如果無法從Google Play下載應用程式，請使用[F-Droid的Aurora Store](https://f-droid.org/zh_Hant/packages/com.aurora.store/)模擬器裝置偽裝（我個人已在「Sony Xperia 5 Dual」上確認可運作）。 | 已支援 |
| Bluestacks<br>MSI App Player | 5.22.160.1025 | 13 | 會因libhoudini的錯誤而當機。存在色彩階調斷裂的問題。 | 尚未支援 |
| Bluestacks<br>MSI App Player | 5.22.160.1025 | 11 | 遊戲可以運作，但與MuMuPlayer相比，效能明顯下降。存在色彩階調斷裂的問題。 | 尚未支援 |
| PlayCover |  |  | 還沒試過。 | 尚未支援 |

# 改善點
* 已完整翻譯成繁體中文（也包含英文、日文、韓文、簡體中文）
* 無需使用DS4Windows模擬XInput控制器，即可原生支援PlayStation控制器
* 新增以滑鼠與鍵盤配置為基礎的「統合」控制器設定，戰鬥中無需依據隊伍人數切換
* 修正類比移動的靈敏度
* 修正2角色控制器設定中右搖桿無法操作視角的問題
* 新增戰鬥中敵方目標選擇按鈕
* 改善按鈕標籤
* 統一所有按鈕位置
* 將先前僅在滑鼠與鍵盤可用的功能全部加入控制器設定
    * 返回/任務
    * 戰鬥詳情
    * 選單
    * 熵核1
    * 熵核2
    * 熵核3
    * 互動2
    * 額外攻擊
* 在控制器與滑鼠/鍵盤設定中新增功能
    * 道具欄 (「NOUS WAVE」按鈕)
    * 資訊1 (設定資料彈出視窗)
    * 資訊2 (敵資訊彈出視窗)
    * 敵1
    * 敵2
    * 敵3
* 在滑鼠與鍵盤中，「額外攻擊」可在所有角色槽使用，不再限制於第三角色。可將「雁」放置於任意位置
* 按下特定鍵盤按鈕（特別是 返回/任務、交互1、交互2）時，滑鼠不會自動鎖定

# 操作方式
[**在Google試算表中查看**](https://docs.google.com/spreadsheets/d/1sZdIXy9ipPFspfZHkCX18rkhKeY1HSOZZj1IFY6_UoY/edit?gid=979903217#gid=979903217)

[螢幕截圖可於此查看。](https://drive.google.com/drive/folders/1k7yrsdX55T33MfIIMfmdA6cJZatq4f_s)

| PlayStation | XInput (DS4Windows) | 滑鼠和鍵盤 | 行動（探索） | 行動（戰鬥） | 備註 |
|---|---|---|---|---|---|
| 左搖桿 | 左搖桿 | WASD | 移動 |  |  |
| 右搖桿 | 右搖桿 | 滑鼠移動 | 視角移動 |  |  |
|  |  | 右鍵 (MOUSE2) 或 Ctrl | 顯示/隱藏滑鼠 |  |  |
| R3 | RA | F | 互動1 |  |  |
| R2+R3 | RT+RA | G | 互動2 |  |  |
| OPTIONS | Start | V | 角色領域 | 跳過回合 |  |
| 觸控板 | Back | ` | 返回/任務 | 選單 |  |
| R2+OPTIONS | R2+Start | T | 選單 |  |  |
| R2+→ | RT+→ | B | 道具欄 |  | 「NOUS WAVE」按鈕 |
| R2+↑ | RT+↑ | I | 資訊1 |  | 設定資料彈出視窗 |
| R2+↓ | RT+↓ | O | 資訊2 |  | 敵資訊彈出視窗 |
| L1 | LB | Space |  | 光影協同 | 在「統一」或「滑鼠和鍵盤」使用時，長按此按鈕會連打。 |
| R2 | RT | Shift | 道具資訊 | 切換波流/粒象 | 道具彈出視窗 |
| ✕ | A | 左鍵 (MOUSE1) | 場景攻擊 |  |  |
| L3 | LA | Tab |  | 道具欄 |  |
| R1+↓ | RB+↓ | C |  | 戰鬥詳情 |  |
| ロ | X | 1 |  | 技能1 | 在「統一」或「滑鼠和鍵盤」使用時，長按此按鈕會連打。 |
| △ | Y | 2 |  | 技能2 | 在「統一」或「滑鼠和鍵盤」使用時，長按此按鈕會連打。 |
| 〇 | B | 3 |  | 技能3 | 在「統一」或「滑鼠和鍵盤」使用時，長按此按鈕會連打。 |
| ← | ← |  |  | 連擊1 | 長按此按鈕會連打。在「統一」或「滑鼠和鍵盤」中無法使用。 |
| ↑ | ↑ |  |  | 連擊2 | 長按此按鈕會連打。在「統一」或「滑鼠和鍵盤」中無法使用。 |
| → | → |  |  | 連擊3 | 長按此按鈕會連打。在「統一」或「滑鼠和鍵盤」中無法使用。 |
| L2+ロ | LT+X | Alt+1 |  | 必殺技1 |  |
| L2+△ | LT+Y | Alt+2 |  | 必殺技2 |  |
| L2+〇 | LT+B | Alt+3 |  | 必殺技3 |  |
| L1+ロ | LB+X | F1 |  | 額外攻擊1 | 在「統一」或「滑鼠和鍵盤」使用時，長按此按鈕會連打。 |
| L1+△ | LB+Y | F2 |  | 額外攻擊2 | 在「統一」或「滑鼠和鍵盤」使用時，長按此按鈕會連打。 |
| L1+〇 | LB+B | F3 或 4 |  | 額外攻擊3 | 「4」鍵保留給已習慣官方鍵位設定的玩家<br><br>在「統一」或「滑鼠和鍵盤」使用時，長按此按鈕會連打。 |
| R1+← | RB+← | Q |  | 熵核1 |  |
| R1+↑ | RB+↑ | E |  | 熵核2 |  |
| R1+→ | RB+→ | R |  | 熵核3 |  |
| L2+← | LT+← | Alt+F1 |  | 敵1 |  |
| L2+↑ | LT+↑ | Alt+F2 |  | 敵2 |  |
| L2+→ | LT+→ | Alt+F3 | 從「沸石號」下車 | 敵3 |  |

# 翻譯一覽
[**在Google試算表中查看**](https://docs.google.com/spreadsheets/d/1sZdIXy9ipPFspfZHkCX18rkhKeY1HSOZZj1IFY6_UoY/edit?gid=0#gid=0)

[data/translations.tsv](data/translations.tsv)中的TSV檔案是由此Google試算表產生的。
