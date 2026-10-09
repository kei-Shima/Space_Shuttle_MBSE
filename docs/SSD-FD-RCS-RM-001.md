# 噴射器冗長管理（RM）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-RCS-RM-001 |
| 表題 | 噴射器冗長管理（RM）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-RCS-001 |
| 関連図 | SSD-SYS-ARC-001 図54 RCS 機能構成 |

## 1. 目的

GPCのRCS冗長管理（RM）ソフトウェアが、噴射器のfail-off・fail-on・fail-leakを検知・通報し、噴射器可用表とマニホールド状態を管理してDAPが使える噴射器を決める機能と、SPEC 23による乗員の操作、BFSとの違いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-RCS-RM-01 | RCSの冗長管理（RM）ソフトウェアは、噴射器の故障の検知と通報、噴射器の可用性、SPEC 23 RCS、SPEC 51 BFS OVERRIDE、マニホールド状態の処理から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728） |
| F-RCS-RM-02 | RMが検知する故障はfail-off・fail-on・fail-leakで、通報はマスタアラーム、パネルF7の黄色のRCS JETと赤色のBACKUP C/W ALARMの点灯、故障メッセージから成るクラス2の警報である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728） |
| F-RCS-RM-03 | RMが使う噴射器のパラメータは、Pc離散信号、CMD B、ドライバ出力離散信号、酸化剤・燃料の噴射器温度である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728） |
| F-RCS-RM-04 | fail-offは、CMD BがあるのにPc離散信号がない状態が3周期続くと検知し、故障フラグを立てて通報し、ポッドの限度に達していなければその噴射器を選択解除する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728） |
| F-RCS-RM-05 | fail-onは、CMD Bが出ていないのにドライバ出力離散信号がある状態が3周期続くと検知し、OPS 2（8）でAUT MANF CLが有効なら該当するマニホールドの弁に閉指令を送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/729） |
| F-RCS-RM-06 | fail-leakは、酸化剤か燃料の噴射器温度がRMの限界を3周期続けて下回ると検知し、ポッドの限度に達していなければその噴射器を選択解除し、バーニアの故障はOPS 2と8でだけ通報する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/729） |
| F-RCS-RM-07 | 噴射器可用表は噴射器ごとに1ビットを持ち、ビットがONならDAPがその噴射器に噴射を指令でき、RMが使えないと判定した噴射器には噴射を指令しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/731） |
| F-RCS-RM-08 | SPEC 23のPRI JET FAIL LIM（I-load値2、変更可）はRMがポッドごとに自動で選択解除する主噴射器の数の上限で、ポッドの計数が限度に達すると以後の故障は通報するだけで選択解除しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/731） |
| F-RCS-RM-09 | RMはマニホールド弁の状態を独自に評価し、状態が閉になると（手動で閉じた、通信障害、乗員の入力、一部のジレンマ）そのマニホールドの噴射器を可用表から外す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/731） |
| F-RCS-RM-10 | マニホールドのRMは4つのマイクロスイッチ離散信号（OX OP・OX CL・FU OP・FU CL）から、ジレンマ（RCS RM DLMA）と電源故障（RCS PWR FAIL）を検知する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/731） |
| F-RCS-RM-11 | RMのフラグ・状態・計数はOPSの移行をまたいで引き継がれるが、BFSを結合するとすべて消去されて初期化される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728） |
| F-RCS-RM-12 | BFSにはSPEC 23がなく、BFSは結合されたときだけfail-offとfail-onを通報し、fail-leakは通報しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1135） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-RCS-04 | 噴射器駆動回路 | データ・指令 | 受信 | RJDが生成する燃焼室圧の離散信号を、実際に噴射したことの表示としてRMへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719）RMはPc離散信号、CMD B、ドライバ出力離散信号を噴射器の故障の検知に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728） | — |
| IF-RCS-05 | 主・バーニア噴射器 | データ・指令 | 受信 | 各噴射器の燃料・酸化剤の噴射器温度をRMへ送り、RMの限界を3周期続けて下回ると漏れ（fail-leak）と判定させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/729）漏れの限界は、主噴射器で酸化剤30°F・燃料20°F、OPS 2のバーニアで130°Fである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140） | — |
| IF-RCS-06 | 推進薬貯蔵・分配 | データ・指令 | 双方向 | RMは、マニホールド隔離弁の4つのマイクロスイッチ離散信号（OX OP・OX CL・FU OP・FU CL）からマニホールドの状態を評価する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/731）OPS 2・8でfail-onが通報され、AUTO MANF CLが有効でスイッチがGPC位置なら、GPCが該当するマニホールドを自動で閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723） | — |
| IF-RCS-13 | 警報系（C/W） | データ・指令 | 送信 | RMが検知した噴射器の故障は、黄色のRCS JET灯と赤色のBACKUP C/W ALARM灯を点灯させ、DPSの表示に故障メッセージを送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735）PASSでは、噴射器のfail-on・fail-off・fail-leakでF(L,R) RCS X JETの故障メッセージを表示する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735） | 上位: IF-ORB-41 |
| IF-RCS-18 | RCS運用管理 | データ・指令 | 受信 | SPEC 23の項目入力で、噴射器の手動の選択解除・再選択、マニホールド状態の開・閉の上書き、ポッドの故障限度の変更を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/730）マニホールドの自動閉（AUTO MANF CL）はSPEC 23で有効にする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節 RCS Redundancy Management（PDF p728〜732）：fail-off・fail-on・fail-leakの検知と対応、噴射器可用表、ポッドの計数と限度、マニホールドのRM（ジレンマ・電源故障）を解説し、付録C（p1135）でBFSとの違いをまとめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-155〜A6-159（PDF p1215〜1225）：疑わしい噴射器の優先度変更、RMを失った場合の処置、fail-offの噴射試験、漏れ噴射器の管理、故障した主噴射器の再選択の優先順位を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1224） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 10.1b RM DLMA MANF（PDF p754）：マニホールド弁の燃料・酸化剤の位置の不一致でRMがジレンマを出した場合に、SPEC 23でマニホールド状態を上書きする手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=754） |
| RS-05 | Orbit Ops Checklist Rev. M PCN-10 | Orbit Operations Checklist（ORB OPS） | RCS HOT FIRE TEST（PDF p240）：噴射試験の際にSPEC 23でマニホールド状態の上書き（MANF VLVS STAT OVRD）と噴射器の選択解除を項目入力で行うことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=240） |
| RS-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning System（訓練マニュアル） | 表7-1（PDF p93）：噴射器の故障メッセージ（例：F RIGHT JET・F UP JETのFAIL ON/OFF/LK）と、MM101・102ではfail-offを検知しないことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=93） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 本書の解釈：RMはGPCで動くソフトウェアであるが、SCOM 2.22節がRCSの節で述べることからRCSの下位機能とした。DAPの噴射器選択論理はGN&C（SSD-FD-GNC-001）の機能とし、噴射指令と噴射器可用表の受け渡しはIF-ORB-03の範囲とした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/730）

> **注記** 前部マニホールド3のマイクロスイッチはMN A FPC1とMN C FMC3から冗長に給電され、マニホールド4はMN C FMC3だけから給電されるため、FMC3を失うとRCS RM DLMAが出てマニホールド4が閉と判定される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/732）

> **注記** MDMの故障でGPCがRCSの状態情報を失うと正常な噴射器が故障か使えないと判定されることがあり、SPEC 23の項目入力で正しい状態に上書きして噴射器を回復できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/901）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p728） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728
2. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p729） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/729
3. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p731） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/731
4. Shuttle Crew Operations Manual 付録C Study Notes（USA007587 Rev. A CPN-1、PDF p1135） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1135
5. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p719） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-8 RCS THRUSTER（PDF p1140） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140
7. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p723） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723
8. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p735） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735
9. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p730） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/730
10. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p732） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/732
11. Shuttle Crew Operations Manual 6.9 Multiple Failure Scenarios（USA007587 Rev. A CPN-1、PDF p901） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/901
12. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
