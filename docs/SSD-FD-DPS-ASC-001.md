# 上昇系インタフェース（ASC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-DPS-ASC-001 |
| 表題 | 上昇系インタフェース（ASC）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-DPS-001 |
| 関連図 | SSD-SYS-ARC-001 図48 DPS 機能構成 |

## 1. 目的

打上げ前から上昇・分離の段階で働くDPSの機器として、SSME制御器へ指令を中継する3台のEIU、SRBとETの火工品を起爆する2台のMEC、SRBの4台のMDM、打上げデータバス（LDB）と打上げ用MDMを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-DPS-ASC-01 | DPSは、GSE・打上げ処理システムとSRBとのインタフェースのための2台のデータバス絶縁増幅器と、2台のマスターイベントコントローラ（MEC）を含む（SCOM 2.6節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226） |
| F-DPS-ASC-02 | 各SSME制御器は専用のEIU（GPCおよび制御器とつながる特殊なMDM）を通じてGPCの指令を受け、各EIUは1基のSSMEの制御器とだけ通信し、3台のEIUの間にインタフェースはない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587） |
| F-DPS-ASC-03 | 冗長セットの各GPCは割り当てられた飛行重要バス（公称はGPC 1〜4がFC5〜8）でエンジン指令を出すため、各EIUは4つの指令を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587） |
| F-DPS-ASC-04 | EIUは受けたエンジン指令の伝送誤りを検査し、検証した指令だけをCIAへ渡し、CIA 3の選択論理で4つの入力指令を3つの出力指令にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588） |
| F-DPS-ASC-05 | EIUはパネルO17のEIUスイッチで給電され、EIUが電力を失うと対応するエンジンはスロットル・停止・ダンプの指令を受けられず、GPCとも通信できない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587） |
| F-DPS-ASC-06 | BFS（GPC 5）はSSMEハードウェアインタフェースプログラムを持ち、エンゲージ時はFC5〜8でEIUに指令してデータを要求し、EIUとエンジン制御器を通る指令の流れは4台の冗長セットのときと同じである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588） |
| F-DPS-ASC-07 | 固体ロケットモータの点火指令はGPCがMECを通じて各SRBのS&A装置のNSI起爆器へ送り、PICの発火に要するarm・fire 1・fire 2の3信号はGPCで生じ、MECが28 VDCの信号に整形する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74） |
| F-DPS-ASC-08 | MECは、SRBを外部タンクから、外部タンクをオービタから切り離す火工品の起爆を開始する（SCOM 2.16節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577） |
| F-DPS-ASC-09 | 打上げデータバス2本は主に地上点検と打上げ段階に使い、5台のGPCをGSE・打上げ処理システム、オービタのLF1・LM1・LA1 MDM、左右のSRBのMDM（LL1・LL2・LR1・LR2）に結ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233） |
| F-DPS-ASC-10 | SRB MDMはSRB内にあって受動のコールドプレートで冷やされ、MECの回路で制御されるSRBバスA・Bから給電されて乗員の操作器はなく、LF・LM・LA MDMは打上げ前試験バスから給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236） |
| F-DPS-ASC-11 | 打上げMDMのポートは乗員が切り替えられないが、打上げ前にLF1またはLA1で入出力エラーを検出すると自動で切り替わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236） |
| F-DPS-ASC-12 | 軌道投入後はパネルO17のスイッチで4台のATVC、3台のEIU、2台のMECの電源をすべて切る（SCOM 2.16節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/611） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CT-21 | CT：S帯PM・FM通信 | データ・指令 | 送信 | S 帯 FM のリターンリンクは、打上げ中の EIU からの SSME 実時間データ（各 60 kbps）などを送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/168）S 帯 FM 系は主エンジン EIU の高速データの唯一の実時間の経路で、上昇中の送信が必須である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=410） | 上位: IF-ORB-01 |
| IF-DPS-05 | MPS：主エンジン制御器 | データ・指令 | 双方向 | EIUは冗長セットのGPCから受けたエンジン指令を検証し、制御器インタフェース組立（CIA）を通じて担当するSSMEの制御器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588）エンジン制御器は全エンジンデータを車両データ表にまとめてEIUへ送り、EIUはGPCが要求するまで主・副のデータをバッファに保持する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/589） | 上位: IF-ORB-06 |
| IF-DPS-06 | 打上げ処理システム（LPS） | データ・指令 | 双方向 | 2本の打上げデータバスは5台のGPCをGSE・打上げ処理システムとオービタのLF1・LM1・LA1 MDMに結び、主に地上点検と打上げ段階に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233）GSE・打上げ処理システムとのインタフェースには2台のデータバス絶縁増幅器を使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226） | 上位: IF-ORB-17 |
| IF-DPS-07 | 固体ロケットブースタ（SRB×2） | データ・指令 | 送信 | 打上げデータバスで5台のGPCを左右のSRBにある4台のMDM（LL1・LL2・LR1・LR2）に結ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233）SRB MDMはSRB内で受動のコールドプレートで冷やされ、オービタの主母線につながるSRBバスA・Bから給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236） | 上位: IF-ORB-18 |
| IF-DPS-08 | 固体ロケットブースタ（SRB×2） | データ・指令 | 送信 | 固体ロケットモータの点火指令を、GPCからMECを通じて各SRBのS&A装置のNSI起爆器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74）SRB分離シーケンスがオービタから出す分離指令で、各ボルトのNSI圧力カートリッジを起爆し、ブースタ分離モータに点火する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77） | 上位: IF-ORB-26 |
| IF-DPS-09 | 外部タンク（ET） | データ・指令 | 送信 | MECは、外部タンクをオービタから切り離す火工品の起爆を開始する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577）オービタのGPCが外部タンクの分離を指令すると、後部アンビリカル板を結合するボルトが火工品で切断される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） | 上位: IF-ORB-25 |
| IF-DPS-14 | データバス網・MDM | データ・指令 | 双方向 | FC5〜8は、GPCを同じ4台のFF MDM・4台のFA MDMと、2台のMEC・3台のEIUに結ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232）各データバスは各EIUの1つのMIAにつながり、公称の上昇構成ではGPC 1〜4がそれぞれFC5〜8に出力する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節 Command and Data Flow（PDF p587〜589）：EIUによるエンジン指令の検証・中継と車両データ表の流れを示し、2.6節（p233・p236）で打上げデータバスとSRB MDMを、1.4節（p74）でMECによるSRBの点火を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-104（PDF p1326）：FCバスにつながるMEC・EIUは再突入中は電源が切れ、上昇中はFC5〜8をストリングの割当て解除でしか安全化できないことを示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1326） |
| DP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 表1-I（PDF p6）：打上げの事象として、GPCからのSRB点火指令（リフトオフ）、SRB分離指令、外部タンク分離指令の時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=6） |
| DP-11 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p34：打上げ前にLPSでSSME 2の60 kbitデータの列パリティエラーが見られ、EIUの60 kbit回路（臨界度3）とLPSの間の伝送回路が疑われたが、GPCとSSME制御器の間のEIUの回路の問題ではないとされたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=34） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 本書の解釈：EIU・MEC・SRB MDM・打上げデータバスは、SCOMではDPSのハードウェアとデータバス網の一部として述べられるが、本書では打上げ前から上昇・分離の段階で働く機体間のインタフェースとしてまとめて1ブロックとした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225）

> **注記** 再突入中はFCバスにつながるMEC・EIUの電源が切れており、上昇中はOPS 1・6でMEC・EIUの電源を切れないため、FC5〜8の非普遍I/Oエラーの安全化はストリングの割当て解除による（A7-104）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1326）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p226） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226
2. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p587） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/587
3. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p588） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/588
4. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p74） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74
5. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p577） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577
6. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p233） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/233
7. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p236） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/236
8. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p611） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/611
9. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p589） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/589
10. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p77） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/77
11. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p70） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70
12. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p232） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/232
13. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p225） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-104 NONUNIVERSAL I/O ERROR ACTION（PDF p1326） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1326
15. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
16. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p168） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/168
17. NSTS-12820 Space Shuttle Operational Flight Rules Vol. A（2002、2214頁） （PDF p410） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=410

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-CT-21 を足した（GAP-09 の解消）（Rev. AU） |
