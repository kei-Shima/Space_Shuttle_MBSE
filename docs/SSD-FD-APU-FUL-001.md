# ヒドラジン燃料供給（FUL）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-APU-FUL-001 |
| 表題 | ヒドラジン燃料供給（FUL）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-APU-001 |
| 関連図 | SSD-SYS-ARC-001 図56 APU/HYD 機能構成 |

## 1. 目的

各APUのヒドラジン燃料タンク（GN2で加圧する隔膜式）、燃料フィルタと2重の燃料タンク隔離弁、燃料ポンプ、主・副の燃料制御弁、燃料ポンプのシール漏れの排出系によってガス発生器へ燃料を送る機能と、燃料系のヒータ、燃料の漏れ・凍結の判定と処置を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-APU-FUL-01 | 各APUの燃料系は燃料タンクと燃料タンク隔離弁、燃料ポンプ、燃料制御弁から成り、3台のAPUと燃料系は後部胴体にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84） |
| F-APU-FUL-02 | 燃料は貯蔵性の無水ヒドラジンで、中央に隔膜を持つ総容量約350 lbのタンクに入れ、隔膜の反対側のGN2の圧力で燃料を配管へ押し出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84） |
| F-APU-FUL-03 | 燃料タンクは直径28インチの球形で、タンク1・2は後部胴体の左舷、タンク3は右舷にあり、打上げ前に365 psiに加圧される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84） |
| F-APU-FUL-04 | 打上げ前の標準の搭載量は約332 lbで、ミッションでの公称運転時間90分、またはAOAのように約110分連続運転するアボートを支え、運転中のAPUは毎分約3〜3.5 lbの燃料を消費する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84） |
| F-APU-FUL-05 | 各燃料配管にはフィルタがあり、配管はフィルタの下流で2本の並列の経路に分かれ、各経路の隔離弁がAPUへの燃料の冗長な経路となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85） |
| F-APU-FUL-06 | 燃料タンク隔離弁は電磁弁で、両弁を閉じた後の熱の戻りで下流の圧力がタンク圧力より40〜200 psi高くなると逆方向に逃がし、弁の温度は弁ごとに2点（APUごとに4点）計測される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86） |
| F-APU-FUL-07 | 燃料ポンプは固定容量形の歯車ポンプで、減速ギアボックスを介してタービンに駆動されて約1,400〜1,500 psiを吐出し、出口のフィルタが詰まると約1,725 psiでポンプ入口へ逃がす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86） |
| F-APU-FUL-08 | 燃料ポンプ軸のシールからの漏れはAPUごとに500 ccの回収ボトルへ導かれ、ボトルが満杯になると約45 psiaで破裂板が破れて機外へ排出される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86） |
| F-APU-FUL-09 | 回転数は燃料ポンプの下流に直列に置いた主・副の電磁パルス式燃料制御弁で制御し、主弁は電力を失うと全開になり、副弁は電力を失うと閉じてAPUを停止させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87） |
| F-APU-FUL-10 | 燃料タンク・燃料配管・水配管のヒータはA・Bの冗長な系に分かれ、パネルA12のAPU HEATER TANK/FUEL LINE/H2O SYSスイッチで選んで1系統ずつ使い、サーモスタットで55〜65°Fに保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94） |
| F-APU-FUL-11 | 燃料タンク・燃料配管の圧力の説明のつかない低下などでヒドラジンの漏れが確認または疑われる場合はAPUを喪失とし、漏れの確認は地上が行う（A10-1）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1525） |
| F-APU-FUL-12 | ヒドラジンは35°Fで凍るため、燃料系の温度を35°F超に保てない場合と、燃料配管が2回以上の凍結・解凍を受けた場合はAPUを喪失とする（A10-1）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1529） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-APU-01 | タービン・ギアボックス | 推進薬・流体 | 送信 | 加圧したヒドラジンを、燃料タンク隔離弁とフィルタからガス発生器弁モジュール（直列の主・副燃料制御弁）を経てガス発生器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89）ガス発生器は触媒の作用で燃料を分解し、その高温ガスで単段・2回通過のタービンを回す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84） | — |
| IF-APU-02 | APU制御器 | データ・指令 | 双方向 | APU制御器は主燃料制御弁をパルス駆動してAPUの回転数を保ち、主弁が電力を失って全開になると副弁がパルス駆動で回転数を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89）各燃料タンクの温度とGN2圧力はAPU制御器が監視する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85） | — |
| IF-APU-03 | APU/HYD運用管理 | データ・指令 | 受信 | パネルR2のAPU FUEL TK VLV 1・2・3スイッチをOPENにすると各APUの2個の燃料タンク隔離弁が通電して開き、CLOSEにするか電力を失うと両弁が閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86）APUの自動停止の後は、隔離弁が再び開いて高温のガス発生器床へ燃料が流れないよう、APU FUEL TK VLVスイッチをCLOSEにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89） | — |
| IF-APU-24 | タービン・ギアボックス | 構造・荷重 | 受信 | ギアボックスは燃料ポンプ・油圧ポンプ・潤滑油ポンプを駆動し、各 APU の潤滑油と、その APU が駆動する油圧ポンプの作動油は、対応する水噴霧ボイラの熱交換器を通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84）燃料ポンプは固定容量形の歯車ポンプで約1,400〜1,500 psi を吐出して約3,918 rpm で回り、出口フィルタが詰まると約1,725 psi でポンプ入口へ逃がし、シールの漏れは回収ボトルから約45 psia で機外へ出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Fuel System（PDF p84〜87）：燃料タンク（約350 lb、GN2加圧の隔膜式）、2重の隔離弁、燃料ポンプ、主・副燃料制御弁、シール漏れの回収ボトルを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-1A（PDF p1525〜1530）とA10-27（p1552〜1555）：ヒドラジンの漏れ・凍結・燃料タンク圧力などによるAPUの喪失の定義と、燃料の漏れの処置（燃料を燃やし切る運転など）を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1552） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 1.1a・1.1c（PDF p32・p35）：燃料量・燃料タンク圧力の異常（ヒドラジンまたはN2の漏れ）と、燃料タンク隔離弁の温度の異常（開固着・ヒータ故障）の切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=32） |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.4.3節（PDF p166〜167）：APU起動時の燃料ポンプ入口の最低圧力（海面180 psia、40,000 ft超で90 psia）、燃料タンク圧力が低いときの起動の禁止、燃料隔離弁の通電時間の制約を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=166） |
| AP-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.6節（PDF p57）：APUについてIOAの指摘28件から4件のFMEAが追加され、残る指摘の一つは既存のFMEAが扱わない燃料ポンプ・バイパス配管の温度センサであると記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=57） |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 1-2 APU HEATER RECONFIG（PDF p42）：APUのヒータ（TK/FU LN/H2O SYS）をA系からB系へ切り替える構成を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=42） |
| AP-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | PDF p46（IFA STS-114-V-06）：APU 1の排出系の圧力が上昇後の停止の約1時間後から低下し、燃料の漏れではなくGN2の外部漏れと判断されたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| AP-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p46（IFA STS-122-V-02）：APU 3の燃料シール排出配管のA系ヒータのサーモスタットの設定点がずれ、A12のA系ヒータをB系に切り替えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |
| AP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | APU System（PDF p44〜45）：APU 2の排出配管の温度上昇は、規格内の燃料ポンプ軸のシール漏れで排出系に入った暖かい燃料の移動によるとされたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=45） |
| AP-16 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.2.1節（PDF p15）：熱のDTOとしてAPU 1の供給配管のヒータを切り、3時間で試験配管の温度が37°Fに下がったため、突入ではヒータを入れたままにしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=15） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：燃料タンクの搭載量を、SCOMのFuel Tanks（PDF p84）は約332 lb、APU/HYD Summary Data（PDF p107）は約325 lbとし、運用飛行規則A10-32の消耗品の表は標準の搭載量332.0 lb・使用可能量318.6 lbとする。本書は332 lbを用いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107）

> **注記** 検証メモ：APU起動時の燃料ポンプ入口の最低圧力を、SODB（3.4.4.3節）は海面で180 psia・高度40,000 ft超で90 psiaとし、運用飛行規則A10-1は軌道上の起動前の燃料タンク圧力90 psia未満を喪失とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=166）

> **注記** 燃料ポンプのシールからの漏れはそれだけではAPUの喪失とせず（ヒドラジンは排出系の中にとどまるため）、供給配管と排出配管の圧力がともに下がる場合に、後部区画へ漏れたとして喪失とする（A10-1の根拠）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1526）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p84） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84
2. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p85） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/85
3. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p86） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86
4. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p87） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87
5. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p94） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-1 APU LOSS DEFINITIONS（PDF p1525） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1525
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-1 APU LOSS DEFINITIONS（PDF p1529） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1529
8. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p89） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89
9. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p107） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107
10. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.4.3 Auxiliary Power Unit Subsystem（PDF p166） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=166
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-1 APU LOSS DEFINITIONS（PDF p1526） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1526
12. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-APU-24 を足した（GAP-09 の解消）（Rev. AU） |
