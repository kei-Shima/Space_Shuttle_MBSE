# 表示・警報音（ANN）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CW-ANN-001 |
| 表題 | 表示・警報音（ANN）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CW-001 |
| 関連図 | SSD-SYS-ARC-001 図62 C/W 機能構成 |

## 1. 目的

警報を乗員に伝えるMASTER ALARM灯・F7表示盤・トーン発生器と、クラス1（緊急）警報音の発報を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CW-ANN-01 | 視覚の合図は、4つの赤いMASTER ALARM灯、パネルF7の40灯の表示盤、R13Uの120灯、GPCの故障メッセージ、青いSM ALERT灯である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113） |
| F-CW-ANN-02 | MASTER ALARMの押しボタン表示器はパネルF2・F4・A7・MO52Jにあり、どれか1つを押すとSMトーンを含むすべてのトーンがリセットされる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/124） |
| F-CW-ANN-03 | F7の表示灯は、駆動するすべてのパラメータが限界内に戻るか抑止されるまで消えない（BACKUP C/W ALARM灯はMSG RESETで消える）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/116） |
| F-CW-ANN-04 | クラス1（緊急）の警報音は、煙検知系が作動させるサイレンと、急減圧を検知するΔP/Δtセンサが作動させるクラクソンで、ハードウェアで発報する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114） |
| F-CW-ANN-05 | C/W電子装置には2つのトーン発生器（A・B）があり、それぞれクラクソン・サイレン・C/Wトーン・アラートトーンを発生する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119） |
| F-CW-ANN-06 | 各トーン発生器の出力の1つはR13Uの音量調整を経てACCUへ送られ、ヘッドセットと中甲板・飛行甲板のスピーカに分配される。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119） |
| F-CW-ANN-07 | 上昇モードは通常モードと同じだが、コマンダのMASTER ALARM灯は点灯しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/124） |
| F-CW-ANN-08 | 各表示灯は冗長のため2個の電球を並列に持ち、F7の表示盤の電源はESS 1BCのC&W A遮断器を経る。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=60） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CT-09 | 音声分配（ACCU・ATU） | データ・指令 | 送信 | C&W電子ユニットの2台のトーン発生器（A・B）は、クラクソン・サイレン・C&Wトーン・アラートトーンをパネルR13Uの音量調整器を通してACCUへ送り、ACCUがヘッドセットと各スピーカユニットの1基のスピーカへ配る。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119）クラクソン（乗員室の圧力）とサイレン（火災）のC/W信号は、スピーカの電源が切れていても直接スピーカユニットへ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/189） | 上位: IF-ORB-43 |
| IF-CW-03 | 環境制御・生命維持（ECLSS） | データ・指令 | 受信 | 煙検知器が煙濃度2,000（±200）μg/m3を5秒以上検知するとSMOKE DETECTION灯・MASTER ALARM灯・サイレンを作動させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118）ΔP/Δtセンサは客室圧力の変化率が-0.08 psi/minを超える減圧でMASTER ALARM灯とクラクソンを作動させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123） | 上位: IF-ORB-41 |
| IF-CW-04 | 主C/W（ハードウェア） | データ・指令 | 受信 | 主C/Wの警報ではF7の該当灯・4つのMASTER ALARM灯・C/Wトーンが作動し、GPCの故障メッセージは出ない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | — |
| IF-CW-05 | バックアップC/W（ソフト） | データ・指令 | 受信 | GPCは前方またはペイロードのMDMを経てC/W系A・Bの両方に信号を送り、MASTER ALARM灯・B/U C&W灯・C/Wトーンを作動させる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70） | — |
| IF-CW-06 | アラート・限界表示 | データ・指令 | 受信 | アラートの限界外れでは主C/Wへ離散信号が送られてアラートトーンが鳴り、F7の青いSM ALERT灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CW-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節 Alarms（PDF p114〜116）：クラス1のサイレン・クラクソン、F7の40灯の表示盤、トーンを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114） |
| CW-02 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 9.3節（PDF p119〜120）：2つのトーン発生器の出力とACCU・スピーカへの分配を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119） |
| CW-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A9-160 D（PDF p1474）：故障した主C&Wを、トーンの冗長のため電源を入れたままにできる条件を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1474） |
| CW-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 4.2c KLAXON − NO RAPID dP/dT（PDF p140）：ACCUのVOXによるトーンの選択とクラクソンの故障の切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=140） |
| CW-06 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | ACCU BYPASS（PDF p112）：ACCUを止めてもC/W・SMトーンが中甲板のスピーカと睡眠区画の接続口で使えることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=112） |
| CW-08 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.26節（PDF p651）：表示灯の色の区分と、C/WとGPC状態灯が別の電子装置で点灯することを述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=651） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
2. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p124） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/124
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Hardware Caution and Warning Table（PDF p116） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/116
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Class 1 - Emergency（PDF p114） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114
5. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 9.3 Audio Annunciation Control（PDF p119） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119
6. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.4 Annunciator Light Matrix（PDF p60） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=60
7. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p189） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/189
8. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p118） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/118
9. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Smoke Detection Circuit Test（PDF p123） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123
10. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
11. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.5節 Backup C&W（PDF p70） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70
12. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p117） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117
13. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
