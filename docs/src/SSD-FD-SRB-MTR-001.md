# 固体ロケットモータ（MTR）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-SRB-MTR-001 |
| 表題 | 固体ロケットモータ（MTR）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-SRB-001 |
| 関連図 | SSD-SYS-ARC-001 図74 SRB 機能構成 |

## 1. 目的

SRBの固体ロケットモータ（セグメント・推進薬・ノズル）の構成と推力の特性を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-SRB-MTR-01 | 2本のSRBはこれまでに飛んだ最大の固体推進薬のモータで、初めて再使用を前提に設計された。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| F-SRB-MTR-02 | 各SRBは海面で約3,300,000 lbの推力を出し、打上げと第1段上昇の推力の71.4%を担い、高度約150,000 ftまで機体を持ち上げる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| F-SRB-MTR-03 | 推進薬は2分あまりで燃え尽き、その時点でSRBを投棄する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| F-SRB-MTR-04 | 各SRBは長さ約149 ft・直径12 ftで、打上げ時の重量は約1,300,000 lb（うち推進薬約1,100,000 lb）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| F-SRB-MTR-05 | 推進薬は過塩素酸アンモニウム（69.6%）・アルミニウム（16%）・酸化鉄（0.4%）・結合剤（12.04%）・硬化剤（1.96%）の混合である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| F-SRB-MTR-06 | 前部セグメントの11点の星形と後部の二重截頭円錐の穿孔で、点火時の高い推力を打上げ約50秒後に約3分の1下げ、最大動圧での過大な応力を防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） |
| F-SRB-MTR-07 | SRBは4つのモータセグメントから成る対で使い、同じ原料のバッチから対で充填して推力の不釣合いを小さくする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） |
| F-SRB-MTR-08 | 各ノズルは膨張比7.72:1で、燃焼中に浸食・炭化する炭素布の内張りを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） |
| F-SRB-MTR-09 | 打上げ0.23秒後に燃焼圧が563.5 psiaに達して離昇し、0.6秒後に最大（公称914 psia）となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-SRB-04 | 推力方向制御（HPU） | 油圧 | 受信 | ロックとチルトのサーボアクチュエータが、推力方向制御のためにノズルをジンバルさせる力と制御を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76） | — |
| IF-SRB-06 | 保持・点火 | データ・指令 | 受信 | 点火では、PICがS&A装置の火工品を点火し、S&Aの薬が起爆剤を、起爆剤がモータの点火器を、点火器がモータの推進薬を点火する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） | — |
| IF-SRB-07 | ET結合・分離 | データ・指令 | 送信 | SRBの分離は、両方のSRBの頭部の燃焼圧が50 psi以下になったときに始まる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節（PDF p71〜72）：推進薬・セグメント・ノズル・推力の特性を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72） |
| SB-04 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p20）：両方のRSRMの性能が規格の範囲内で、圧力の時間変化のずれが許容値を十分下回ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |
| SB-05 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | （PDF p9）：RSRMの継手に低温用の材料のOリングを初めて使ったことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p71） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71
2. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p72） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/72
3. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p75） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75
4. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p76） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76
5. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p77） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77
6. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
