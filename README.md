# Ex Astris PC Bindings
[[**English**](README.md)] [[日本語](README-日本語.md)] [[한국어](README-한국어.md)] [[繁體中文](README-繁體中文.md)] [[简体中文](README-简体中文.md)]

Fully-translated PC bindings for Hypergryph/Gryphline's 3D RPG game, [Ex Astris](https://exa.gryphline.com/).

Supports PlayStation controllers, XInput controllers (including DS4Windows), and mouse and keyboard.

Based off of Hypergryph/Gryphline's official MuMuPlayer bindings published only in Simplified Chinese.

# Screenshots
[Screenshots can be viewed here.](https://drive.google.com/drive/folders/1k7yrsdX55T33MfIIMfmdA6cJZatq4f_s)

# Installation
* Download this repo by clicking on "Code" -> "Download ZIP", or by cloning the Git repo.
* Open `install.bat` or `install.sh`. (⚠ Warning: This will overwrite any custom bindings you may have!)
* Alternatively, you can manually import each binding JSON file into MuMuPlayer.

# Compatibility
[**View on Google Sheets**](https://docs.google.com/spreadsheets/d/1sZdIXy9ipPFspfZHkCX18rkhKeY1HSOZZj1IFY6_UoY/edit?gid=655664222#gid=655664222)

| Emulator | Version | Android Version | Compatibility | Supported by this project |
|---|---|---|---|---|
| MuMuPlayer | 5.14.3 | 12 | **Officially supported by Hypergryph/Gryphline.**<br><br>If Google Play doesn't let you download the app, use [Aurora Store from F-Droid](https://f-droid.org/packages/com.aurora.store/) to spoof the emulated device ("Sony Xperia 5 Dual" worked for me) and download it. | Yes |
| Bluestacks | 5.22.160.1025 | 13 | Crashes with a libhoudini error. Has colour banding issues. | Not yet |
| Bluestacks | 5.22.160.1025 | 11 | The game works, but with noticeably worse performance compared to MuMuPlayer. Has colour banding issues. | Not yet |
| PlayCover |  |  | Not yet tested. | Not yet |

# Changes and improvements
* Fully translated to English, 日本語, 한국어, 繁體中文, and 简体中文
* Native support for PlayStation controllers without needing to use DS4Windows to emulate an XInput controller
* Added a "Combined" version of the controller bindings based off of the mouse and keyboard layout that works without having to switch depending on how many party members you have in battle.
* Fixed analog movement sensitivity
* Fixed missing right stick camera in the 2-character controller layout
* Added buttons for selecting enemy target in battle
* Improved button labels
* Made all button locations consistent
* Added all missing features to the controller layout that were previously exclusive to mouse and keyboard
	* Back/Missions
	* Combat Details
	* Menu
	* Entropith 1
	* Entropith 2
	* Entropith 3
	* Interact 2
	* QTE
* Added additional features to both controller and keyboard bindings
	* Bag ("NOUS WAVE" button)
	* Info 1 (Lore popups)
	* Info 2 (Enemy popups)
	* Enemy 1
	* Enemy 2
	* Enemy 3
* For keyboard and mouse, QTE now works on all 3 character slots, not just the 3rd one -- you can put Yan anywhere now
* Pressing certain keyboard buttons (notably Back/Missions, Interact 1, Interact 2) no longer automatically locks the mouse

# Controls
[**View on Google Sheets**](https://docs.google.com/spreadsheets/d/1sZdIXy9ipPFspfZHkCX18rkhKeY1HSOZZj1IFY6_UoY/edit?gid=1428000889#gid=1428000889)

[Screenshots can be viewed here.](https://drive.google.com/drive/folders/1k7yrsdX55T33MfIIMfmdA6cJZatq4f_s)

| PlayStation | XInput (DS4Windows) | Mouse and Keyboard | Action (Exploration) | Action (Battle) | Notes |
|---|---|---|---|---|---|
| Left Stick | Left Stick | WASD | Movement |  |  |
| Right Stick | Right Stick | Mouse | Move Camera |  |  |
|  |  | Right Click (MOUSE2) or Ctrl | Show/Hide Mouse |  |  |
| R3 | RA | F | Interact 1 |  |  |
| R2+R3 | RT+RA | G | Interact 2 |  |  |
| OPTIONS | Start | V | Character Profile | Skip Turn |  |
| Touchpad | Back | ` | Back/Missions | Menu |  |
| R2+OPTIONS | R2+Start | T | Menu |  |  |
| R2+→ | RT+→ | B | Bag |  | "NOUS WAVE" button |
| R2+↑ | RT+↑ | I | Info 1 |  | Lore popups |
| R2+↓ | RT+↓ | O | Info 2 |  | Enemy popups |
| L1 | LB | Space |  | Obscuran Manuever | When using Combined or Mouse and Keyboard, holding down this button will rapidly press it. |
| R2 | RT | Shift | Item Info | Wave/Particle Switch | Item popups |
| ✕ | A | Left Click (MOUSE1) | Travelling Strike |  |  |
| L3 | LA | Tab |  | Item Bar |  |
| R1+↓ | RB+↓ | C |  | Combat Details |  |
| ロ | X | 1 |  | Skill 1 | When using Combined or Mouse and Keyboard, holding down this button will rapidly press it. |
| △ | Y | 2 |  | Skill 2 | When using Combined or Mouse and Keyboard, holding down this button will rapidly press it. |
| 〇 | B | 3 |  | Skill 3 | When using Combined or Mouse and Keyboard, holding down this button will rapidly press it. |
| ← | ← |  |  | Combo 1 | Holding down this button will rapidly press it. Not available in Combined or Mouse and Keyboard. |
| ↑ | ↑ |  |  | Combo 2 | Holding down this button will rapidly press it. Not available in Combined or Mouse and Keyboard. |
| → | → |  |  | Combo 3 | Holding down this button will rapidly press it. Not available in Combined or Mouse and Keyboard. |
| L2+ロ | LT+X | Alt+1 |  | Ultimate 1 |  |
| L2+△ | LT+Y | Alt+2 |  | Ultimate 2 |  |
| L2+〇 | LT+B | Alt+3 |  | Ultimate 3 |  |
| L1+ロ | LB+X | F1 |  | QTE 1 | When using Combined or Mouse and Keyboard, holding down this button will rapidly press it. |
| L1+△ | LB+Y | F2 |  | QTE 2 | When using Combined or Mouse and Keyboard, holding down this button will rapidly press it. |
| L1+〇 | LB+B | F3 or 4 |  | QTE 3 | The "4" key is kept in only for people who are already used to pressing that button from the official controls.<br><br>When using Combined or Mouse and Keyboard, holding down this button will rapidly press it. |
| R1+← | RB+← | Q |  | Entropith 1 |  |
| R1+↑ | RB+↑ | E |  | Entropith 2 |  |
| R1+→ | RB+→ | R |  | Entropith 3 |  |
| L1+← | LB+← | Alt+F1 |  | Enemy 1 |  |
| L1+↑ | LB+↑ | Alt+F2 |  | Enemy 2 |  |
| L1+→ | LB+→ | Alt+F3 | Exit Zeolite | Enemy 3 |  |

# Translations
[**View on Google Sheets**](https://docs.google.com/spreadsheets/d/1sZdIXy9ipPFspfZHkCX18rkhKeY1HSOZZj1IFY6_UoY/edit?gid=0#gid=0)

The TSV file at [data/translations.tsv](data/translations.tsv) is generated from this Google Sheet.
