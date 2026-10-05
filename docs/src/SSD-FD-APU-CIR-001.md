# 循環ポンプ・熱調整（CIR）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-APU-CIR-001 |
| 表題 | 循環ポンプ・熱調整（CIR）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-APU-001 |
| 関連図 | SSD-SYS-ARC-001 図56 APU/HYD 機能構成 |

## 1. 目的

軌道上で油圧系が休止している間に、電動の循環ポンプでアキュムレータの圧力を保ち、作動油を油圧配管とフレオン／油圧熱交換器に循環させて低温部を温める機能と、SM GPCによる自動制御、油圧ヒータ、電源、循環ポンプの運用の規則を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-APU-CIR-01 | 循環ポンプは1台の電動機で駆動する2台の固定容量形歯車ポンプを直列にしたもので、高圧・小流量側（2,500 psig）は休止中のアキュムレータ圧力の維持に、低圧・大流量側（350 psig）は作動油の循環に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） |
| F-APU-CIR-02 | 作動油はフレオン／油圧熱交換器を通ってオービタのフレオン冷却ループの熱を受け取り、温度制御のバイパス弁は熱交換器の入口が105°F未満なら熱交換器へ通し、115°F超なら迂回させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） |
| F-APU-CIR-03 | HYD CIRC PUMPスイッチをGPCにすると、SM GPCは制御温度のどれかが（場所により）0°Fまたは−10°F未満になると循環ポンプを起動し、すべてが20°F超になるか系1で15分・系2・3で10分たつと停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103） |
| F-APU-CIR-04 | 循環ポンプは1台で2.4 kWを使うため、制御プログラムは同時に1台だけが運転するよう優先順位をつける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103） |
| F-APU-CIR-05 | アキュムレータ圧力が1,960 psiまで下がると制御プログラムは再加圧のために循環ポンプを最優先で起動し（このとき2台が同時に運転しうる）、1,960 psiを超えるか2分たつと停止する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103） |
| F-APU-CIR-06 | 循環ポンプは、APU制御器が対応するAPUの運転指令を出すと自動的に切り離される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103） |
| F-APU-CIR-07 | 循環で温められない油圧配管の部分はサーモスタットで自動制御するヒータで温め、各部は冗長なA・Bのヒータを持ち、パネルA12のHYDRAULIC HEATERスイッチで制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104） |
| F-APU-CIR-08 | MPS/TVC隔離弁とブレーキ隔離弁は圧力で作動し、操作に100 psid以上が必要なため、APUが止まっているときは循環ポンプで圧力を与える（A10-74A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1578） |
| F-APU-CIR-09 | 循環ポンプは、FESの故障時のフレオンループの補助冷却や、APUの始動がEI−13分より遅れるときの作動油の加温にも使う（A10-74A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1577） |
| F-APU-CIR-10 | 循環ポンプの本体温度または運転中のリザーバ温度が230°Fを超えると循環ポンプを喪失とするが、循環ポンプの喪失だけでは油圧系の喪失としない（A10-51B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1567） |
| F-APU-CIR-11 | 軌道上ではAPUの始動前のリザーバ温度を162°F未満に保つよう努め、そのために循環ポンプの運転時間を減らすか、ATCSを組み替えてフレオン／油圧熱交換器でのフレオン温度を95°F未満に下げる（A10-73E）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1574） |
| F-APU-CIR-12 | 循環ポンプの起動時には大きな突入電流・4〜5 Vの母線電圧の低下・電磁干渉が生じるため、オービタが電力を与える火工品を使うペイロード展開の間は循環ポンプを入り切りさせない（A10-74B）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1579） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-TCS-03 | 熱交換器・コールドプレート網 | 熱 | 双方向 | 軌道上の循環時はフレオンがフレオン／油圧作動油熱交換器で油圧作動油を加温する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） | 上位: IF-ECL-11 |
| IF-APU-08 | 主油圧ポンプ・供給 | 油圧 | 送信 | 循環ポンプの高圧側は軌道上で休止中のアキュムレータ圧力を保ち、低圧側は作動油を油圧配管に循環させて低温部を温める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102）循環ポンプの出口のアンローダ弁は、アキュムレータ圧力が2,563 psiaを超えるまで高圧側の吐出をアキュムレータへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102） | — |
| IF-APU-13 | DPS：飛行ソフトウェア・MMU | データ・指令 | 双方向 | HYD CIRC PUMPスイッチがGPCのとき、SM GPCは油圧配管の温度とアキュムレータ圧力に基づく制御プログラムで循環ポンプを入り切りする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103）循環ポンプの出口圧力と油圧配管・機器の温度は、PASSのSM HYD THERMAL表示（DISP 87）に示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103） | 上位: IF-ORB-23 |
| IF-APU-18 | 電力系（EPS）：直流配電 | 電力（28 VDC） | 受信 | 各循環ポンプは、パネルA12のHYD CIRC PUMP POWERスイッチで選ぶ2系統の主母線のどちらかから給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103）故障処置手順の公称構成では、循環ポンプ1・2・3の電源はそれぞれMNA・MNB・MNCである。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=36） | 上位: IF-ORB-14 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Circulation Pump and Heat Exchanger・Hydraulic Heaters（PDF p102〜104）：循環ポンプ（2.4 kW、同時に1台）、フレオン／油圧熱交換器とバイパス弁、SM GPCによる自動制御、油圧ヒータを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-51B（PDF p1567）とA10-74（p1575〜1580）：循環ポンプの喪失の定義と、アキュムレータ圧力の維持・加温・隔離弁の操作などの使い方、ペイロード運用の間の制約を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1575） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 1.3a（PDF p40）とSSR-1〜3（p42〜44）：循環ポンプ圧力の低下（代替電源の選択）と、センサの故障時にテーブル保守でGPC制御を続ける手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=40） |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.2.4節（PDF p83・p85）：軌道上で循環ポンプは同時に1台とし、作動油を−4°F未満にせず、循環ポンプの最低運転温度を+20°Fとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=85） |
| AP-07 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 1-3・1-4（PDF p43〜44）：循環ポンプを使った隔離弁の位置の変更と、主母線の母線結合を組み替えて循環ポンプ2・3を手動で30分運転する手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=44） |
| AP-08 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 4.6節 Hydraulic Heat Exchanger（PDF p102）：油圧系はフレオンループのヒートシンクとなり、油圧熱交換器はフレオンの熱で休止中の油圧系を温めると述べる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=102） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：1988年版の資料は打上げ前・上昇・大気圏飛行中に油圧系の余剰熱をフレオンへ移すとも述べていた（親の注記）。SCOM（PDF p102）は軌道上の循環時に作動油がフレオンの熱を受け取るとだけ述べ、ECLSSの訓練マニュアル（4.6節）も油圧熱交換器がフレオンの熱で休止中の油圧系を温めるとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=102）

> **注記** 検証メモ：循環ポンプの電源を、SCOM（PDF p103）は2系統の主母線のどちらかとし、故障処置手順の公称構成はポンプ1・2・3をそれぞれMNA・MNB・MNCとする。本書は直流の主母線から給電されると解した（本書の解釈）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=40）

> **注記** 軌道上でブレーキ隔離弁やMPS/TVC隔離弁の位置を変えるときは、循環ポンプをONにして10秒待ってから隔離弁のスイッチを5秒保持する（Orbit Ops Checklist 1-3）。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=43）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p102） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/102
2. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p103） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/103
3. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p104） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/104
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-74 HYDRAULIC CIRCULATION PUMP OPERATION [CIL]（PDF p1578） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1578
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-74 HYDRAULIC CIRCULATION PUMP OPERATION [CIL]（PDF p1577） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1577
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-51 HYDRAULIC LOSS DEFINITIONS（PDF p1567） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1567
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-73 HYDRAULIC SYSTEMS PRESSURE/TEMPERATURE [CIL]（PDF p1574） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1574
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-74 HYDRAULIC CIRCULATION PUMP OPERATION [CIL]（PDF p1579） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1579
9. JSC-48027 Rev. F Malfunction Procedures（MAL） 1.2a RSVR P, ACCUM P（PDF p36） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=36
10. USA006020 Rev. B ECLSS 21002 訓練マニュアル 4.6節 Hydraulic Heat Exchanger（PDF p102） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=102
11. JSC-48027 Rev. F Malfunction Procedures（MAL） 1.3a HYD CIRC PUMP P（PDF p40） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=40
12. Orbit Operations Checklist Rev M PCN-10 1-3 HYD ISOL VALVE REPOSITIONING（PDF p43） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=43
13. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
