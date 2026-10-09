# SRB 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-SRB-REF-001 |
| 表題 | SRB 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-SRB-001 |
| 関連図 | SSD-SYS-ARC-001 図75 SRB 関連文書マトリクス |

## 1. 目的

SRBの各機能に関係する公開文書を機能別に整理し、各機能説明書と図75 SRB 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

乗員運用マニュアル（SCOM、OI-33）・運用飛行規則・故障処置手順・IOA の FMEA/CIL 評価などの公開文書を調べ、SRBの機能に関係する記述の頁を確かめた 8件を載せた（出典欄はすべて「新規」）。各文書の番号・表題・確認に使った URL は表の各行に、記述の頁は各欄の出典に示す。

## 3. 機能別関連文書

### 3.1 SRB 全般（4件）

機能説明書：SSD-FD-SRB-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節（PDF p71〜80）：SRBの構成、推力、点火、電力、HPU、TVC、分離、射場安全、回収を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| SB-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 6.0節（PDF p352〜）：SRBの性能と運用のデータの目次を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=352） |
| SB-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-51（PDF p1033）：SRBの推力方向制御を失ったときの扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1033） |
| SB-04 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p19）：SRBの全サブシステムが正常に働き、LCC・OMRSDの違反が無かったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |

### 3.2 固体ロケットモータ（MTR）（3件）

機能説明書：SSD-FD-SRB-MTR-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節（PDF p71〜72）：推進薬・セグメント・ノズル・推力の特性を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） |
| SB-04 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p20）：両方のRSRMの性能が規格の範囲内で、圧力の時間変化のずれが許容値を十分下回ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |
| SB-05 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | （PDF p9）：RSRMの継手に低温用の材料のOリングを初めて使ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |

### 3.3 保持・点火（HDP）（4件）

機能説明書：SSD-FD-SRB-HDP-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節 Hold-Down Posts・SRB Ignition（PDF p73〜75）：保持ポストと点火の順序を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73） |
| SB-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A2-3（PDF p491）：打上げの保留の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=491） |
| SB-06 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p32）：点火器と継手のヒータの通電と運用を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |
| SB-08 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p9）：SRBのRSRMの点火による打上げの記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |

### 3.4 推力方向制御（HPU）（TVC）（4件）

機能説明書：SSD-FD-SRB-TVC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節 Hydraulic Power Units・Thrust Vector Control（PDF p75〜77）：HPUとアクチュエータを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76） |
| SB-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 6.4.1節（PDF p392）：SRBの推力方向制御のサーボアクチュエータを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=392） |
| SB-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-1（PDF p1007）：両方のHPUの供給圧が1,000 psig以下でSRBのTVCを失ったとみなす定義を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1007） |
| SB-06 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p32）：RSRBのHPUの軸受の浸漬の要求の違反を免除した記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |

### 3.5 電子・電力・射場安全（AVN）（4件）

機能説明書：SSD-FD-SRB-AVN-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節 Electrical Power Distribution・Range Safety System（PDF p75〜78）：電力・RGA・RSSを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） |
| SB-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 6.2.1節（PDF p354）：オービタとSRBの電力の母線の電圧の特性を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=354） |
| SB-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A4-260（PDF p1001）：射場安全の破壊の基準を超えないための処置を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1001） |
| SB-04 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p19）：Cバンド制御器（CBC）の4回目の飛行の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |

### 3.6 ET結合・分離（ATT）（5件）

機能説明書：SSD-FD-SRB-ATT-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節 SRB Separation（PDF p77）：分離の開始・結合点・分離モータを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） |
| SB-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.6節（PDF p242）：SRBの構造の制約（回収時の着水速度など）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=242） |
| SB-05 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | （PDF p10）：SRBが満足に働き、飛行中の異常が無かったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| SB-06 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p8）：RSRBの分離が見えたことと、その後のOMSの補助の機動を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |
| SB-07 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | （PDF p10）：SRBとETの分離が明瞭に記録されたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |

### 3.7 降下・回収（REC）（4件）

機能説明書：SSD-FD-SRB-REC-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節 SRB Descent and Recovery（PDF p78〜80）：パラシュートの展開と着水を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/78） |
| SB-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 6.6節（PDF p405）：パイロット・ドローグ・主傘の構成と限界荷重を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=405） |
| SB-07 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | （PDF p10）：SRB分離後にOMSの補助の機動を行ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=10） |
| SB-08 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p9）：SRB分離後のOMSの補助の機動の記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | MTR | HDP | TVC | AVN | ATT | REC | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | 新規 | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| SB-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | ● |  |  | ● | ● | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| SB-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● |  | ● | ● | ● |  |  | 新規 | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| SB-04 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | ● | ● |  |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf |
| SB-05 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） |  | ● |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf |
| SB-06 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） |  |  | ● | ● |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf |
| SB-07 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） |  |  |  |  |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |
| SB-08 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） |  |  | ● |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
