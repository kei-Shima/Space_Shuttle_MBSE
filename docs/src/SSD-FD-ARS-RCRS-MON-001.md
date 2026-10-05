# 計装・表示（MON）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-RCRS-MON-001 |
| 表題 | 計装・表示（MON）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-RCRS-001 |
| 関連図 | SSD-SYS-ARC-001 図28 再生式CO2除去装置 機能構成 |

## 1. 目的

RCRSのベッド圧力・ベッド差圧と、CO2分圧・真空圧力・フィルタ差圧・入口温度を計測し、SPEC 66 ENVIRONMENTの表示とSMメッセージ、ダウンリンクでRCRSの状態を示す機能と、計測を失ったときの扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-RCRS-MON-01 | 制御器1・2はそれぞれのベッド圧力センサとベッド差圧センサに給電し、それ以外の共通計装（CO2分圧・真空圧力・フィルタ差圧・入口空気温度）はどちらの制御器を使っても性能を監視できるが、冗長性はない（訓練マニュアル付録C.4）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227） |
| F-ARS-RCRS-MON-02 | 表C-1のセンサの範囲は、ベッド圧力0〜20 psia、ベッド差圧0〜5 in H2O、入口温度32〜133°F、CO2分圧0〜30 mmHg、真空圧力0〜5 mmHg、フィルタ差圧0〜3 in H2Oである（訓練マニュアル付録C.4）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227） |
| F-ARS-RCRS-MON-03 | 共通計装は制御機能を持たず、システム評価のためにダウンリンクされるだけである（訓練マニュアル付録C.4）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227） |
| F-ARS-RCRS-MON-04 | 乗員はSPEC 66 ENVIRONMENTの右下でRCRSの運転を確認し、表示はCO2 CNTLR 1・2、FILTER ΔP、PPCO2、TEMP、BED A PRESS・B PRESS、ΔP、VAC PRESSである（訓練マニュアル付録C.4・表C-2）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228） |
| F-ARS-RCRS-MON-05 | CO2 CNTLRの表示はAC電源とDC電源のONディスクリートを要する多重ディスクリートで、「*」は給電中だが運転していないこと、「↓」は故障から6秒間だけ現れることを示す（訓練マニュアル表C-2の注）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228） |
| F-ARS-RCRS-MON-06 | RCRSに固有のSMメッセージは2つあり、「S66 CO2 RL SYS」は制御器が故障したか故障検知の論理がいずれかのベッドの圧力異常を検知したとき、「S66 CO2 RL SYS PCO2」はCO2分圧が限界外のときに出る（訓練マニュアル付録C.6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=229） |
| F-ARS-RCRS-MON-07 | SCOMのRCRS系統図は、RCRSのCO2分圧・入口温度・フィルタ差圧・真空圧力と、制御器1・2それぞれのベッド圧力・ベッド差圧の計測点を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373） |
| F-ARS-RCRS-MON-08 | 故障処置手順6.8bは、オービタのPPCO2とRCRSのPPCO2の差が2 mmHgを超える場合や、Spacelabモジュールを搭載していればそのCO2センサとの比較から、どちらのセンサが故障したかを判定する（MAL 6.8b）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=333） |
| F-ARS-RCRS-MON-09 | OI MDM（OF1）を失うと、制御器1のDC電源表示・ベッドA圧力・故障表示、真空圧力、制御器2のAC電源表示・ベッドB圧力が得られなくなり、制御器1を使っている場合は制御器の構成を切り替える（MAL COMM SSR-10）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87） |
| F-ARS-RCRS-MON-10 | PPCO2を把握できなくなった場合はRCRSのCO2除去能力を正しく評価できないため、LiOHキャニスタを定期的に装着・交換してCO2を管理する（A17-155B.4）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-RCRS-07 | 吸気・送風・流量設定 | 推進薬・流体 | 受信 | 入口フィルタの差圧と入口空気温度を、共通計装のセンサで測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227）SCOMの系統図は、RCRSのCO2分圧・入口温度・フィルタ差圧の計測点を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373） | — |
| IF-RCRS-08 | 吸着・再生ベッド（A・B） | 推進薬・流体 | 受信 | 各制御器が給電するベッドの圧力センサとベッド差圧センサ、共通計装の真空圧力センサで、ベッドと真空側の圧力を測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227） | — |
| IF-RCRS-09 | 制御器・運転シーケンス | データ・指令 | 送信 | ベッド圧力・ベッド差圧などの計測値を作動中の制御器へ入力し、故障検知に使う。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218）自動停止の論理は、ベッド圧力・ベッド差圧・圧縮機回転数・弁位置の表示が許容できないとRCRSを停止する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） | — |
| IF-RCRS-10 | DPS・アビオニクス | データ・指令 | 送信 | RCRSの計測値（FILTER ΔP、PPCO2、TEMP、BED A・B PRESS、ΔP、VAC PRESS）をSMへ送り、SPEC 66 ENVIRONMENTの右下に表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228）SPEC 66はOPS 2・4で表示でき、共通計装の値はシステム評価のためにダウンリンクされる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227） | 上位: IF-ARS-26 |
| IF-RCRS-13 | 電力系（EPS） | 電力（28 VDC） | 受信 | 共通計装のセンサには、パネルML86Bの遮断器からMO51Fの共通計装電源スイッチを通して給電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227）共通計装のセンサはMN Bから給電される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=225） | 上位: IF-ARS-33 |
| IF-RCRS-15 | RCRS運用管理 | データ・指令 | 送信 | PPCO2とRCRSの表示・SMメッセージを、RCRSの喪失判定（PPCO2 7.6 mmHg、PPCO2の把握）と故障処置の判断に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 付録C.4・C.6（PDF p227〜229）：表C-1のセンサの範囲と給電元、SPEC 66のRCRS表示（表C-2）、S66 CO2 RL SYSとS66 CO2 RL SYS PCO2の2つのSMメッセージを示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227） |
| RC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p359・p373）：ENVIRONMENT表示（DISP 66）のRCRSの欄（CO2 CNTLR、FILTER ΔP、PPCO2、TEMP、BED A・B PRESS、ΔP、VAC PRESS）と、系統図のRCRSの計測点を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |
| RC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-106B・A17-155B.4（PDF p1937・p1951）：PPCO2を把握できなくなればRCRSを喪失とし、LiOHキャニスタを定期的に装着・交換してCO2を管理すると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951） |
| RC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8b PPCO2（PDF p333）：S66 CO2 RL SYS PCO2警報時に、オービタとRCRSのPPCO2の差（2 mmHg超）やSpacelabのCO2センサとの比較でセンサの故障を判定すると示し、COMM SSR-10（p87）でOI MDMを失ったときに得られなくなるRCRSの計測を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=333） |

## 5. 注記（出典間の相違・構成変更）

> **注記** RCRSのPPCO2センサ（共通計装）は、オービタのPPCO2トランスデューサ（SSD-FD-CO2-MON-001）とは別のセンサで、故障処置手順6.8bは両者の表示を比べてセンサの故障を判定する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=333）

> **注記** 図28では、SPEC 66へのデータIF（上位IF-ARS-26）を、計測値（IF-RCRS-10）と制御器の状態・故障ディスクリート（IF-RCRS-11）の2つの下位IFに分けた。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228）

> **注記** SCOM（PDF p371）はRCRSの表示をOPS 2のSPEC 66とし、訓練マニュアル（付録C.4）はSPEC 66をOPS 2・4で使えるとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227）

> **注記** SCOMのENVIRONMENT表示（DISP 66）の図にも、CO2 CNTLR 1・2、FILTER ΔP、PPCO2、TEMP、BED A PRESS・B PRESS、ΔP、VAC PRESSの欄がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.4 Instrumentation and Displays（表C-1）（PDF p227） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=227
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.4（表C-2 SPEC 66）・C.5 Fault Detection（PDF p228） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=228
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.5 Fault Detection・C.6 Fault Messages（PDF p229） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=229
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 図 Regenerable Carbon Dioxide Removal System (RCRS)（PDF p373） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/373
5. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.8b PPCO2（PDF p333） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=333
6. JSC-48027 Rev. F Malfunction Procedures（MAL） COMM SSR-10 OI MDM LOST: OF1（PDF p87） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-155 RCRS Management（続き）（PDF p1951） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951
8. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.2.2〜C.2.3 RCRS Hardware・Operations（PDF p218） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=218
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-106 Regenerative CO2 Removal System (RCRS) Loss Definition（PDF p1937） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1937
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 付録C.3 Controls（図C-14 Panel MO51F）（PDF p225） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=225
11. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 ECLSS 概要（PDF p359） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
