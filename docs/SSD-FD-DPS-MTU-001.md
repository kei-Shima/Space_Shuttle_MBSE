# マスタタイミングユニット（MTU）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-DPS-MTU-001 |
| 表題 | マスタタイミングユニット（MTU）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-DPS-001 |
| 関連図 | SSD-SYS-ARC-001 図48 DPS 機能構成 |

## 1. 目的

GPC群と機体各系に正確な時刻と周波数を与えるマスタタイミングユニット（MTU）の発振器と累算器、GPCによる時刻の照合、電源・スイッチ・冷却と計時表示を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-DPS-MTU-01 | GPC群のソフトウェアはGMTで処理の予定を立てるため安定で正確な時刻源を要し、各GPCはMTUで内部時計を更新する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/240） |
| F-DPS-MTU-02 | MTUはGPC群をはじめ多くのオービタの系に計時と同期のための精密な周波数出力を与え、3つの時刻累算器がGMTとMETを示す（外部から更新でき、1年まで計時する）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/240） |
| F-DPS-MTU-03 | MTUは2台の発振器を冗長に持つ水晶制御の周波数源で、一方の発振器の信号を整形器と周波数ドライバを通して3つのGMT/MET累算器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/240） |
| F-DPS-MTU-04 | MTUは累算器を通じて要求に応じてシリアルデジタルの時刻データ（GMT/MET）をGPCへ出し、GPCはこれを基準時刻とし、GNCとSMの処理の時刻付けに間接的に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/240） |
| F-DPS-MTU-05 | MTUは乗員室の4つのデジタル計時器（ミッションタイマ2台・イベントタイマ2台）を駆動し、PCMMU、COMSEC、ペイロード信号処理器、FM信号処理器と各種ペイロードにも信号を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241） |
| F-DPS-MTU-06 | GPCはまずMTUの累算器1を時刻源とし、毎秒自身の内部時刻と照合して差が1 ms未満なら内部時計を累算器の時刻に合わせ、許容外なら他の累算器、さらに番号の最も小さいGPCを試す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241） |
| F-DPS-MTU-07 | PASSのGPCはMTUから受け取るMETを使わず、現在のGMTとリフトオフ時刻からMETを計算する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241） |
| F-DPS-MTU-08 | MTUはパネルO13の遮断器ESS 1BC MTU AとESS 2CA MTU Bで冗長に給電され、パネルO6のMASTER TIMING UNITスイッチがAUTOのとき、一方の発振器の時刻信号が許容外になると自動で他方に切り替わり、通常は発振器2を使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241） |
| F-DPS-MTU-09 | MTUは中デッキのアビオニクスベイ3Bにあり、水冷却ループのコールドプレートで冷やされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241） |
| F-DPS-MTU-10 | MISSION TIME表示はパネルO3・A4にあってGMTまたはMETを示し、前方のEVENT TIME表示はパネルF7（操作はC2）、後部のEVENT TIME表示はA4（操作はA6U）にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241） |
| F-DPS-MTU-11 | 各GPCは内部の発振器で内部時計を保ち、MTUの時刻信号の予備としてGMTとMETを計時する（SCOM 2.6節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227） |
| F-DPS-MTU-12 | MTUは運用前に12時間の暖機を要し、運用温度に達するまで所定の精度と安定度が得られない（SODB 3.4.5.5節）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=203） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CT-22 | CT：計装・ペイロード通信 | データ・指令 | 送信 | MTU は PCMMU・COMSEC・ペイロード信号処理器・FM 信号処理器と各種ペイロードへ信号を出す。GPC は毎秒累算器の時刻と自分の時刻を比べ、差が 1 ミリ秒未満なら累算器の時刻に合わせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241）各 MDM の主ポートは PCMMU 1、副ポートは PCMMU 2 と働く。PCMMU は MTU から同期クロックを受け、無いときは自分の時刻で動き続ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/198） | 上位: IF-ORB-01 |
| IF-DPS-16 | 汎用計算機・冗長セット | データ・指令 | 送信 | MTUは累算器を通じて、要求に応じてシリアルデジタルの時刻データ（GMT/MET）をGPCへ出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/240）GPCは毎秒、累算器の時刻を自身の内部時刻と照合し、差が1 ms未満なら内部時計を累算器の時刻に合わせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241） | — |
| IF-DPS-20 | DPS運用管理 | データ・指令 | 受信 | MTUとGPCのGMTの誤差は、SPEC 2 TIMEが使えるときは100 ms以下に保ち、誤差がその閾値を超えたら15 msの更新を行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1330）MTUのBITEビット4が立ってMCCがMTUの時刻差の増加を見た場合などは、MECO後からHAC進入までの間に発振器を手動で切り替える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1331） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| DP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.6節 Master Timing Unit（PDF p240〜243）：2台の発振器と3つの累算器、GPCの時刻の照合、電源・スイッチ、MISSION TIME・EVENT TIMEの表示を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/240） |
| DP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A7-107（PDF p1330〜1331）：MTU/GPCのGMT誤差の管理（100 ms以下、15 msの更新）、うるう秒の不採用、年末のロールオーバ、発振器の手動切替を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1330） |
| DP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 5.2d TIME MTU（PDF p162）：GPCのGMTの時刻源が変わったことを示すTIME MTUメッセージから、GPCの発振器のドリフト、MTUの発振器・累算器の故障、バスの雑音を切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=162） |
| DP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.5.5節 Instrumentation Subsystems（PDF p203）：MTUは運用前に12時間の暖機を要し、発振器の周波数の変化に1日あたりの上限があるとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=203） |
| DP-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | PDF p11：MTU累算器の不一致の報告は、ELOGの再確認とODRCのデータでMTU BITE故障表示が見つからなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |

## 5. 注記（出典間の相違・構成変更）

> **注記** STS-125では打上げ約10分後（MET 00/00:09:34）にMTU累算器の不一致がイベントロガー（ELOG）の9つのMTU BITE故障表示から報告されたが、両発振器を含む多重の内部故障を要するもので、ELOGの再確認とODRCのデータではBITE故障表示は見つからなかった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=11）

> **注記** 時刻の更新（SPEC 2）と発振器の手動切替の基準は運用飛行規則A7-107によるため、本書では運用管理（OPS）からの指令のIFとして扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p240） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/240
2. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.6節 Master Timing Unit（PDF p241） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/241
3. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p227） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/227
4. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.5.5節 Instrumentation Subsystems（Master Timing Unit）（PDF p203） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=203
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-107 TIME MANAGEMENT（PDF p1330） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1330
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A7-107 TIME MANAGEMENT（PDF p1331） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1331
7. NSTS-37452 STS-125 Mission Report（2010） Data Processing System（MTU accumulator miscompare）（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=11
8. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
9. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p198） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/198

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-CT-22 を足した（GAP-09 の解消）（Rev. AU） |
