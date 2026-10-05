# 分離・投棄・飛行安全（SEP）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ET-SEP-001 |
| 表題 | 分離・投棄・飛行安全（SEP）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ET-001 |
| 関連図 | SSD-SYS-ARC-001 図72 ET 機能構成 |

## 1. 目的

MECO後のETの分離の条件、タンブル系による投棄、射場安全系と、関係する飛行規則を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ET-SEP-01 | MECOの後、機体の角速度が0.7 deg/sを超えるか供給管の切離しが故障すると「ET SEP INH」が出て、通常・ATOでは分離が抑止される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/603） |
| F-ET-SEP-02 | RTLSでは、ベントのための短い遅れのあと自動でETを分離する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/604） |
| F-ET-SEP-03 | ET/オービタの17 inの切離し弁が閉じたと確かめられないときは、開いた弁の推力の減衰を待って再接触を防ぐため、分離をMECO＋6分まで遅らせる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1102） |
| F-ET-SEP-04 | 分離の直前にオービタの信号でタンブル系が作動してLO2タンク前部の弁を開き、残りのガスを噴き出してETを回転させ、定めた区域に落とす。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=346） |
| F-ET-SEP-05 | 射場安全系（RSS）は、打上げからETの着水までETの推進薬を分散させる手段で、冗長な電池・受信/解読器・アンテナ・火工品から成る。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=349） |
| F-ET-SEP-06 | 同じタンクの低レベルのセンサが3つ以上乾きに故障すると、上り坂の能力が無ければTALアボートを行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1098） |
| F-ET-SEP-07 | ETは回収せず、大気に再突入して分解し、遠い海域に落ちる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-DPS-09 | 上昇系インタフェース | データ・指令 | 受信 | MECは、外部タンクをオービタから切り離す火工品の起爆を開始する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577）オービタのGPCが外部タンクの分離を指令すると、後部アンビリカル板を結合するボルトが火工品で切断される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） | 上位: IF-ORB-25 |
| IF-ET-06 | アンビリカル・弁・センサ | 構造・荷重 | 送信 | オービタのGPCがETの分離を指令すると、アンビリカル板を締結するボルトが火工品で切られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） | — |
| IF-ET-07 | LO2タンク | 推進薬・流体 | 送信 | タンブル系は分離の直前に作動し、LO2タンク前部の2 inの弁を開いて残りのガスを噴き出し、ETを回転させる推力とする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=346） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ET-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.16節 Software C/W（PDF p603〜604）：ET分離の抑止・自動分離の故障メッセージを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/604） |
| ET-02 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 5.4.3節（PDF p346）：分離後にETを回転させるタンブル系を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=346） |
| ET-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A5-157（PDF p1098）：ETの低レベルのセンサの故障に対するアボートを定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1098） |
| ET-04 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | （PDF p25）：MPSを使った早期のET分離の機動を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=25） |
| ET-08 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | （PDF p8）：ETがオービタから分離した時刻を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=8） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p603） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/603
2. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p604） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/604
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-202 ET SEPARATION INHIBIT FOR 17-INCH DISCONNECT FAILURE [CIL]（PDF p1102） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1102
4. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 5.4.3 Tumbling System（PDF p346） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=346
5. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 5.5 Range Safety Subsystem（PDF p349） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=349
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A5-157 ET LOW LEVEL CUTOFF SENSOR FAILED DRY（PDF p1098） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1098
7. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p67） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67
8. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p577） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577
9. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p70） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70
10. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
