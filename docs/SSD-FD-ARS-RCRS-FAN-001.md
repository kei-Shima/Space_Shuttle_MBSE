# 吸気・送風・流量設定（FAN）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-RCRS-FAN-001 |
| 表題 | 吸気・送風・流量設定（FAN）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-RCRS-001 |
| 関連図 | SSD-SYS-ARC-001 図28 再生式CO2除去装置 機能構成 |

## 1. 目的

キャビンファンの上流から分けたキャビン空気を、入口のフィルタ・消音器を通してRCRSファンで吸着中のベッドへ送り、打上げ前に設定する2位置の流量制御弁で乗員数に応じた流量（72／110 lb/hr）とする機能と、入口フィルタの点検・清掃を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-RCRS-FAN-01 | キャビン空気の一部をARSのキャビンファンの上流から取り出してRCRSに通し、RCRSを流れる空気はARSの全流量の約6%である（訓練マニュアル付録C.2.1）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213） |
| F-ARS-RCRS-FAN-02 | RCRSファンは、CO2を効率よく除去するために吸着中のベッドへ空気を押し通す（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217） |
| F-ARS-RCRS-FAN-03 | ファンのすぐ下流に2位置の弁があってRCRSの流量を調整し、2つの位置は乗員4〜5名用と6〜7名用の大きさで、打上げ前に適切な位置に設定する（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217） |
| F-ARS-RCRS-FAN-04 | SCOMは、打上げ前に流量制御弁を乗員数「4」または「5〜7」に設定し、RCRSの流量をそれぞれ72 lb/hr・110 lb/hrにするとしている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| F-ARS-RCRS-FAN-05 | ファンの上流にはフィルタ・消音器の組立があり、フィルタは粒子がファンと固体アミンのベッドに入るのを防ぎ、消音器は入口ダクトを通って伝わるファンの騒音を下げる（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） |
| F-ARS-RCRS-FAN-06 | 入口のフィルタは、ロッカー2個を外して点検パネルを開ければ飛行中に清掃できる（訓練マニュアル付録C.2.2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218） |
| F-ARS-RCRS-FAN-07 | SCOMのRCRS系統図は、キャビン空気ループからの入口にフィルタ・消音器・ファン組立（40ミクロン）を置き、流量制御弁を備えることを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373） |
| F-ARS-RCRS-FAN-08 | 故障処置手順6.8aでは、フィルタ差圧が0.5（10.2 psia運用では0.35）を超える場合にフィルタの閉塞と流量制御弁の設定を疑い、IFMのEDO RCRSフィルタ清掃と流量制御弁の調整で、弁の位置が乗員数に合っていることを確かめる（MAL 6.8a）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=332） |
| F-ARS-RCRS-FAN-09 | RCRSの流量は限られているため、火災後の汚染物質の除去にはRCRSは効率が悪い（A17-156）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CAC-03 | キャビン空気循環：還流・ろ過 | 推進薬・流体 | 受信 | RCRS搭載時は、キャビンファンの上流からキャビン空気の一部（ARSの全流量の約6%）をRCRSへ引き出し、除去後の空気をファンのフィルタのすぐ上流に戻す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213）RCRSの流量は乗員数に応じて72 lb/hrまたは110 lb/hrに設定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） | 上位: IF-ARS-02 |
| IF-RCRS-01 | 吸着・再生ベッド（A・B） | 推進薬・流体 | 送信 | RCRSファンで送り流量制御弁で設定した流量の空気を、真空サイクル弁の空気ポペットを通して吸着中のベッドへ流す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217）流量は乗員数に応じて72 lb/hrまたは110 lb/hrである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） | — |
| IF-RCRS-07 | 計装・表示 | 推進薬・流体 | 送信 | 入口フィルタの差圧と入口空気温度を、共通計装のセンサで測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227）SCOMの系統図は、RCRSのCO2分圧・入口温度・フィルタ差圧の計測点を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C.2.1〜C.2.2（PDF p213・p217〜218）：キャビンファンの上流から全流量の約6%を取り出し、RCRSファンで吸着中のベッドへ送ると述べ、2位置の流量制御弁（乗員4〜5名用・6〜7名用）と入口のフィルタ・消音器を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p371・p373）：流量制御弁を打上げ前に乗員数「4」「5〜7」に設定して72／110 lb/hrとすると述べ、系統図に入口のフィルタ・消音器・ファン組立（40ミクロン）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371） |
| RC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-156（PDF p1952）：RCRSの流量が限られるため、火災後の汚染物質の除去にはRCRSは効率が悪いと説明する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952） |
| RC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8a（PDF p332）：フィルタ差圧が0.5（10.2 psia運用では0.35）を超える場合に、IFMのEDO RCRSフィルタ清掃と流量制御弁の調整を行うとする。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=332） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：流量制御弁の2つの位置を、訓練マニュアル（付録C.2.2）は乗員4〜5名用と6〜7名用とし、SCOM（PDF p371）は乗員数「4」と「5〜7」（72 lb/hr・110 lb/hr）とする。本書は流量の値を示すSCOMの区分を用いた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217）

> **注記** 図28では、キャビン空気循環の還流・ろ過からの吸込みを図16のIF-CAC-03のまま示した（同じ物理IFのため新しい番号を作らない）。IF-CAC-03の上位IFはIF-ARS-02である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.1・C.2.1 EDO Modifications・Carbon Dioxide Removal（PDF p213） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=213
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2 RCRS Hardware（続き）（PDF p217） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=217
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Regenerable Carbon Dioxide Removal System（PDF p371） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/371
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2〜C.2.3 RCRS Hardware・Operations（PDF p218） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 図 Regenerable Carbon Dioxide Removal System (RCRS)（PDF p373） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373
6. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.8a（続き）（PDF p332） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=332
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-156 RCRS Manual Shutdown Criteria（PDF p1952） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1952
8. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.4 Instrumentation and Displays（表C-1）（PDF p227） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
