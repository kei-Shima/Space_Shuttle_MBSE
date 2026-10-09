# 保持・点火（HDP）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-SRB-HDP-001 |
| 表題 | 保持・点火（HDP）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-SRB-001 |
| 関連図 | SSD-SYS-ARC-001 図74 SRB 機能構成 |

## 1. 目的

SRBを移動発射台に固定する保持ポストと、点火の指令・PIC・S&A装置による点火の順序を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-SRB-HDP-01 | 打上げ前、各SRBは後部スカートで4組のボルトとナットにより移動発射台に固定され、離昇時に小さな爆薬で切られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| F-SRB-HDP-02 | 2本のSRBは積み重ねた全体の重量を支え、その荷重を構造を通して移動発射台へ伝える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| F-SRB-HDP-03 | 各保持ボルトは両端にナットがあり、上のナットだけが破断式で、点火の指令で2つのNSIが作動する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73） |
| F-SRB-HDP-04 | 点火の指令はオービタの計算機からMECを経て移動発射台の保持PICへ送られ、打上げ前の最後の16秒にPICの低電圧を監視し、低電圧なら打上げを保留する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74） |
| F-SRB-HDP-05 | 点火の指令は、3基のSSMEが定格の90%以上で、SSMEの故障やPICの低電圧が無く、地上の保留も無いときに出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74） |
| F-SRB-HDP-06 | PICは、GPCから出てMECが28 V DCに整形したarm・fire 1・fire 2の3つの信号がそろったときだけ火工品を発火させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74） |
| F-SRB-HDP-07 | 点火の順序は、PICがS&A装置の火工品を点火し、S&Aの薬が起爆剤を、起爆剤がモータの点火器を、点火器がモータの推進薬を点火する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-DPS-08 | 上昇系インタフェース | データ・指令 | 受信 | 固体ロケットモータの点火指令を、GPCからMECを通じて各SRBのS&A装置のNSI起爆器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74）SRB分離シーケンスがオービタから出す分離指令で、各ボルトのNSI圧力カートリッジを起爆し、ブースタ分離モータに点火する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） | 上位: IF-ORB-26 |
| IF-SRB-03 | 打上げ処理システム（KSC） | 構造・荷重 | 双方向 | 各SRBの4つの保持ポストは移動発射台の支持ポストに合わさり、保持ボルトで固定される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73） | 上位: IF-SYS-10 |
| IF-SRB-06 | 固体ロケットモータ | データ・指令 | 送信 | 点火では、PICがS&A装置の火工品を点火し、S&Aの薬が起爆剤を、起爆剤がモータの点火器を、点火器がモータの推進薬を点火する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| SB-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.4節 Hold-Down Posts・SRB Ignition（PDF p73〜75）：保持ポストと点火の順序を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73） |
| SB-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A2-3（PDF p491）：打上げの保留の扱いを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=491） |
| SB-06 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p32）：点火器と継手のヒータの通電と運用を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |
| SB-08 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p9）：SRBのRSRMの点火による打上げの記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=9） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p71） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71
2. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p73） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73
3. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p74） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74
4. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p75） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/75
5. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p77） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77
6. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
