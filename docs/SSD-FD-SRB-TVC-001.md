# 推力方向制御（HPU）（TVC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-SRB-TVC-001 |
| 表題 | 推力方向制御（HPU）（TVC）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-SRB-001 |
| 関連図 | SSD-SYS-ARC-001 図74 SRB 機能構成 |

## 1. 目的

SRBのノズルを動かすHPU（ヒドラジンのAPU・油圧ポンプ）とロール/チルトのサーボアクチュエータを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-SRB-TVC-01 | 各ノズルは推力方向制御のためジンバルし、後部の可撓軸受をジンバル機構とし、全軸のジンバル能力は8°である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） |
| F-SRB-TVC-02 | 各SRBは2つの独立した油圧動力装置（HPU）を持ち、各HPUはAPU・燃料供給・油圧ポンプ・リザーバ・マニホールドから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） |
| F-SRB-TVC-03 | APUはヒドラジンを燃料とし、軸動力で油圧ポンプを回し、2つの系は打上げ28秒前からSRB分離まで動く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） |
| F-SRB-TVC-04 | 各燃料タンクは22 lbのヒドラジンを収め、400 psiの窒素で加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） |
| F-SRB-TVC-05 | 各HPUは両方のサーボアクチュエータにつながり、主の油圧が2,050 psi未満になると切替弁が副の油圧に切り替え、APUは113%の速度で両方のアクチュエータに足りる油圧を出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76） |
| F-SRB-TVC-06 | 各SRBはロックとチルトの2つの油圧ジンバルサーボアクチュエータを持ち、ノズルを動かして推力の方向を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76） |
| F-SRB-TVC-07 | 各アクチュエータの4つの独立したサーボ弁は力の和による多数決で、1つの誤った指令が動きに影響しないようにし、続くときはその弁の油圧を切り離す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76） |
| F-SRB-TVC-08 | APU/HPUと油圧系は20回のミッションに再使用できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-GNC-18 | 舵面・推力方向制御駆動 | データ・指令 | 受信 | ATVCは各SRBの2基のTVC作動器へ指令電圧を送り、SRBの作動器はピッチ・ヨーに45°傾いたロック軸とチルト軸でノズルを動かす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515）第1段のステアリングは、主にSRBのノズルをジンバルさせて行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523） | 上位: IF-ORB-22 |
| IF-SRB-04 | 固体ロケットモータ | 油圧 | 送信 | ロックとチルトのサーボアクチュエータが、推力方向制御のためにノズルをジンバルさせる力と制御を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76） | — |
| IF-SRB-05 | 電子・電力・射場安全 | データ・指令 | 受信 | APUの制御器の電子装置は、ETの後部結合リングにあるSRBの後部IEAに置かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節 Hydraulic Power Units・Thrust Vector Control（PDF p75〜77）：HPUとアクチュエータを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76） |
| SB-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 6.4.1節（PDF p392）：SRBの推力方向制御のサーボアクチュエータを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=392） |
| SB-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-1（PDF p1007）：両方のHPUの供給圧が1,000 psig以下でSRBのTVCを失ったとみなす定義を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1007） |
| SB-06 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p32）：RSRBのHPUの軸受の浸漬の要求の違反を免除した記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p72） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72
2. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p75） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75
3. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p76） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76
4. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p515） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/515
5. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p523） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/523
6. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
