# アラート・限界表示（ALT）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CW-ALT-001 |
| 表題 | アラート・限界表示（ALT）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-CW-001 |
| 関連図 | SSD-SYS-ARC-001 図62 C/W 機能構成 |

## 1. 目的

SMソフトウェアのクラス3アラートと、DPS表示の矢印で知らせるクラス0限界表示の働きを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CW-ALT-01 | クラス3アラートはSMソフトウェアが動かすソフトウェアの系で、クラス2に至る前の状況や、5分を超える長い処置が要る状況を乗員に知らせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） |
| F-CW-ALT-02 | アラートのパラメータが限界を外れると、F7の青いSM ALERT灯が点灯し、主C/Wへ離散信号が送られてアラートトーンが鳴り、故障メッセージが出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） |
| F-CW-ALT-03 | SMアラートトーンは、搭載計算機の入力でC/W電子装置が発生する、所定の長さの連続音である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） |
| F-CW-ALT-04 | 各アラートパラメータは1〜3組の限界を持ち、複数の組を持つものはセンサ入力や系の状態で使う組を選ぶ（前提条件付け）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=80） |
| F-CW-ALT-05 | 例えば水ループ2のポンプ出口圧は、ポンプが動いていれば故障したポンプを、止まっていれば漏れを検出する限界を使う。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=81） |
| F-CW-ALT-06 | クラス0の限界表示は、DPS表示のパラメータの隣に上・下の矢印を出すソフトウェアの系で、警報音は出さない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） |
| F-CW-ALT-07 | 下向き矢印は下限への到達のほか、通常の状態と異なる状態（通常は動いているファンの停止など）も示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-RCS-15 | 熱制御（ヒータ） | データ・指令 | 受信 | 構造の温度がI-loadの上下限を超えると、SMアラート「S89 PRPLT THRM RCS」を出す（OPS 2）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735）故障処置10.3aでは、前部RCSの燃料（酸化剤）の温度が46°F未満か105°F超などで処置に入り、他方のヒータ系に切り替えて原因を切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=760） | 上位: IF-ORB-41 |
| IF-CW-06 | 表示・警報音 | データ・指令 | 送信 | アラートの限界外れでは主C/Wへ離散信号が送られてアラートトーンが鳴り、F7の青いSM ALERT灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） | — |
| IF-CW-09 | C/W運用管理 | データ・指令 | 受信 | アラートの前提条件付けに使う定数は、乗員またはMCCがSPEC 60で変えられるが、変えることはまれである。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=81） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CW-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節 Class 3・Class 0（PDF p117）：SMアラートと限界表示の矢印を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） |
| CW-02 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 5〜6章（PDF p79〜90）：クラス3アラートの限界・前提条件付けとクラス0限界表示を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=79） |
| CW-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 4.2b（PDF p138）：SMアラートトーンがMASTER ALARM灯なしでC/Wトーンを鳴らす場合の切り分けを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=138） |
| CW-05 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | O2 REPRESS（PDF p172）：再与圧の前後にSMアラートのTMBUのアップリンクを確かめることを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=172） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p117） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117
2. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 5.2.2 Requirements for Alert Annunciation（PDF p80） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=80
3. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 5.2.2.2 Preconditioning（PDF p81） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=81
4. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p735） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735
5. JSC-48027 Rev. F Malfunction Procedures（MAL） RCS 10.3a S89 PRPLT THRM RCS（PDF p760） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=760
6. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
