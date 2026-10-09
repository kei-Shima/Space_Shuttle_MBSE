# 降下・回収（REC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-SRB-REC-001 |
| 表題 | 降下・回収（REC）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-SRB-001 |
| 関連図 | SSD-SYS-ARC-001 図74 SRB 機能構成 |

## 1. 目的

分離後のSRBのパラシュートによる降下・着水と、回収・再整備を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-SRB-REC-01 | 回収は高高度の気圧スイッチでノーズキャップのスラスタを作動させて始まり、分離188秒後・高度15,700 ftでノーズキャップを外してパイロットシュートを出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78） |
| F-SRB-REC-02 | 直径54 ftのドローグシュートはSRBを安定させ、270,000 lbの荷重に耐え、重量は約1,200 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78） |
| F-SRB-REC-03 | 低高度の気圧スイッチで高度5,500 ft・分離243秒後にフラスタムを前部スカートから分離し、ドローグシュートがそれを引き離す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78） |
| F-SRB-REC-04 | 分離277秒後に76 ft/sで着水し、空の燃焼室に空気が残って前端を約30 ft水面に出して浮かぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/79） |
| F-SRB-REC-05 | 主傘は着水後に海水作動の放出装置（SWAR）で外れ、回収船が来るまでSRBにつながれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/79） |
| F-SRB-REC-06 | 回収したSRBは発射場へ曳航して分解・洗浄し、モータセグメント・点火器・ノズルを製造元へ送って再整備するが、ノーズキャップとノズルの延長部は回収しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-SRB-08 | 電子・電力・射場安全 | 電力（28 VDC） | 受信 | 各SRBの回収用電池はRSSの系統Bと回収系に給電し、分離の手順で回収系の電源が入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節 SRB Descent and Recovery（PDF p78〜80）：パラシュートの展開と着水を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78） |
| SB-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 6.6節（PDF p405）：パイロット・ドローグ・主傘の構成と限界荷重を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=405） |
| SB-07 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | （PDF p10）：SRB分離後にOMSの補助の機動を行ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| SB-08 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p9）：SRB分離後のOMSの補助の機動の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p78） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78
2. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p79） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/79
3. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p72） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72
4. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
