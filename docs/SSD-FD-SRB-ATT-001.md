# ET結合・分離（ATT）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-SRB-ATT-001 |
| 表題 | ET結合・分離（ATT）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-SRB-001 |
| 関連図 | SSD-SYS-ARC-001 図74 SRB 機能構成 |

## 1. 目的

SRBとETの前部・後部の結合と、燃焼圧による分離の開始、分離モータによる分離を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-SRB-ATT-01 | ETは各SRBの後部フレームで2つの横の振れ止めと斜めの結合でつながり、SRBの前端は前部スカートでETに結合する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| F-SRB-ATT-02 | SRBの分離は両方のSRBの頭部の燃焼圧が50 psi以下になったときに始まり、センサの偏りに備えて点火からの時間でも分離する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） |
| F-SRB-ATT-03 | 分離の手順ではATVCがアクチュエータを中立に戻してSSMEを第2段の構成にし、SRBの推力が100,000 lb未満になるようにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） |
| F-SRB-ATT-04 | SRBは火工品の発火の指令から30 ms以内にETから分離する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） |
| F-SRB-ATT-05 | 前部の結合点は1本のボルトで保持された玉（SRB）と受け（ET）から成り、ボルトは両端にNSIの圧力カートリッジを持ち、射場安全系のクロスストラップの配線も通す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） |
| F-SRB-ATT-06 | 後部の結合点は上・斜め・下の3本の支柱から成り、各支柱のボルトは両端にNSIの圧力カートリッジを持ち、上の支柱はSRBとETからオービタへのアンビリカルも通す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） |
| F-SRB-ATT-07 | 各SRBの両端に4基ずつの分離モータ（BSM）があり、分離時に1.02秒燃焼してSRBをETから離す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-SRB-01 | 外部タンク（ET） | 構造・荷重 | 双方向 | 前部の結合点は、1本のボルトで保持されたSRBの玉とETの受けから成り、射場安全系のクロスストラップの配線も通す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） | 上位: IF-SYS-02 |
| IF-SRB-02 | 外部タンク（ET） | 構造・荷重 | 双方向 | 後部の結合点は上・斜め・下の3本の支柱から成り、上の支柱はSRBとETからオービタへのアンビリカルも通す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） | 上位: IF-SYS-02 |
| IF-SRB-07 | 固体ロケットモータ | データ・指令 | 受信 | SRBの分離は、両方のSRBの頭部の燃焼圧が50 psi以下になったときに始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節 SRB Separation（PDF p77）：分離の開始・結合点・分離モータを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） |
| SB-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.6節（PDF p242）：SRBの構造の制約（回収時の着水速度など）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=242） |
| SB-05 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | （PDF p10）：SRBが満足に働き、飛行中の異常が無かったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| SB-06 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p8）：RSRBの分離が見えたことと、その後のOMSの補助の機動を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| SB-07 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | （PDF p10）：SRBとETの分離が明瞭に記録されたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p71） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71
2. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p77） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77
3. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p72） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72
4. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
