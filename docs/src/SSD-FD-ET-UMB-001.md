# アンビリカル・弁・センサ（UMB）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ET-UMB-001 |
| 表題 | アンビリカル・弁・センサ（UMB）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ET-001 |
| 関連図 | SSD-SYS-ARC-001 図72 ET 機能構成 |

## 1. 目的

オービタとETの間の推進薬・ガス・電力・信号のアンビリカル、タンクのベント/リリーフ弁、枯渇センサを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ET-UMB-01 | ETは前部1か所・後部2か所でオービタに結合し、後部の結合部には液体・気体・電気信号・電力をタンクとオービタの間で伝えるアンビリカルがあり、オービタとSRBの間の信号もここを通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67） |
| F-ET-UMB-02 | 2つの後部のETアンビリカル板はオービタ側の板と合わさってボルトで締結され、分離の指令で火工品がボルトを切る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） |
| F-ET-UMB-03 | ETはオービタのアンビリカルとつながる5つの推進薬のアンビリカル弁（LO2タンク2・LH2タンク3）を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） |
| F-ET-UMB-04 | LH2の中間径のアンビリカルは、打上げ前のLH2の予冷のシーケンスだけで使う再循環用である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） |
| F-ET-UMB-05 | ETの2つの電気アンビリカルは、オービタからタンクと2本のSRBへ電力を送り、SRBとETの情報をオービタへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） |
| F-ET-UMB-06 | 推進薬の枯渇センサは燃料・酸化剤に各4つあり、規定の質量を過ぎてから2つが乾きを検知するとエンジンを停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| F-ET-UMB-07 | 各タンクの前端にはベント/リリーフ弁があり、飛行中はLH2タンクのアレージ圧36 psig、LO2タンク31 psigで開く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EPS-11 | 電力系：直流配電（EPS） | 電力（28 VDC） | 受信 | EPDCは、28 V直流電力をオービタ各系、SRB、外部タンク、ペイロードへ制御・分配する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ORB-14 上位: IF-ORB-27 上位: IF-ORB-28 |
| IF-MPS-01 | 推進薬供給 | 推進薬・流体 | 双方向 | LO2・LH2は、外部タンクから17インチのET/オービタ切離し弁を通ってオービタの供給配管マニホールドへ流れる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606）打上げ前の充填では、推進薬はマニホールドから供給配管アンビリカル切離し部を通ってETのタンクへ入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605） | 上位: IF-ORB-15 |
| IF-MPS-02 | 推進薬供給 | 推進薬・流体 | 受信 | 各エンジンからのGO2・GH2を2本のET加圧マニホールドで集めて外部タンクへ送り、運転中の推進薬タンクの圧力を保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593）GH2は各SSMEの加圧系統から2インチの加圧ラインを通ってETのLH2タンクのアレージへ送られる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1093） | 上位: IF-ORB-15 |
| IF-ET-01 | LO2タンク | 推進薬・流体 | 受信 | LO2タンクは直径17 inの供給管につながり、LO2はインタタンクを通ってETの外へ出て右後部のET/オービタのアンビリカルへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68） | — |
| IF-ET-02 | LH2タンク | 推進薬・流体 | 受信 | LH2タンクのサイフォンの出口から、LH2を直径17 inの管で左後部のアンビリカルへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） | — |
| IF-ET-06 | 分離・投棄・飛行安全 | 構造・荷重 | 受信 | オービタのGPCがETの分離を指令すると、アンビリカル板を締結するボルトが火工品で切られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ET-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.3節 Hardware and Instrumentation（PDF p69〜70）：弁・センサ・アンビリカルを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69） |
| ET-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-202（PDF p1102）：17 inの切離し弁の故障のときのET分離の遅延を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1102） |
| ET-04 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p27）：LH2の補充中にLH2のECOセンサが湿りを示した事象を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=27） |
| ET-05 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p21）：ETのアンビリカル・分離などの目的を満たした記録を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=21） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p67） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67
2. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p70） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70
3. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p69） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/69
4. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
5. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p606） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/606
6. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p605） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605
7. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p593） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-155 LIMIT SHUTDOWN CONTROL AND MANUAL THROTTLING FOR LOW LH2 NPSP（PDF p1093） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1093
9. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p68） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/68
10. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
