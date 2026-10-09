# ET熱防護（TPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ET-TPS-001 |
| 表題 | ET熱防護（TPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ET-001 |
| 関連図 | SSD-SYS-ARC-001 図72 ET 機能構成 |

## 1. 目的

ETの外面の発泡断熱材・アブレータと、氷の生成を防ぐ扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ET-TPS-01 | ETのTPSは吹付けの発泡断熱材と成形済みのアブレータから成り、空気の液化を防ぐフェノールの断熱材も使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| F-ET-TPS-02 | LH2タンクの取付部には、空気にさらされる金属の液化を防ぎ、LH2への熱の流れを減らす断熱材が必要である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| F-ET-TPS-03 | TPSの重量は4,823 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| F-ET-TPS-04 | TPSはいくつかの組成のアブレータと発泡材を、吹付け・真空成形・成形品の接着などの方法で施工する。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=255） |
| F-ET-TPS-05 | 吹付けのポリイソシアヌレート発泡材（CPR-488）は、LO2タンク・インタタンク・LH2タンクの胴の発泡材である。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=255） |
| F-ET-TPS-06 | 秒読みでは、固定サービス構造の振り腕のキャップがETのLO2タンクのベントを覆って酸素の蒸気を吸い取り、ETに氷ができてオービタのTPSを傷めるのを防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ET-05 | LH2タンク | 熱 | 送信 | LH2タンクの取付部には、空気にさらされる金属の液化を防ぎ、LH2への熱の流れを減らす断熱材を使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ET-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.3節 Thermal Protection System（PDF p69）：ETの熱防護の材料を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| ET-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 5.1.2節（PDF p255）：ETの熱防護の材料と施工の方法を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=255） |
| ET-04 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p23）：ETの発泡材の脱落のため運用を遅らせた検討を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=23） |
| ET-05 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p47）：MECO後のETの熱防護の写真による記録（DTO 312）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=47） |
| ET-07 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | （PDF p74）：打上げ直前にLO2のT-0アンビリカルから氷・霜の破片が離れた記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=74） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p69） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69
2. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 5.1.2 Thermal Protection Subsystem（PDF p255） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=255
3. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p70） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70
4. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
