# 警告・警報（C/W）要求書（L2）

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-REQ-CW-001 |
| 表題 | 警告・警報（C/W）要求書（L2） |
| 版・日付 | Rev. A／2026-10-06 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-REQ-SYS-001 |
| 関連図 | SSD-SYS-ARC-001 図62 C/W 機能構成 |

## 1. 目的

C/Wに対する要求（L2）を示し、L1 の要求（SSD-REQ-SYS-001）からの展開と、C/Wの機能説明書（SSD-FD-CW-001 と下位の説明書）の機能行・IF 行へのトレースを示す。要求から参照されない機能行について、要求が無くて妥当か、要求が抜けているかを判断する。要求は実績の運用値から導いたものである。

## 2. 要求の書き方

各要求は、要求文（〜すること）、値、根拠（出典の頁）、上位の L1 要求、割付先（機能行 F-ID・IF 行 IF-ID）、フェーズ（SSD-OPS-PHASE-001 の PH・AB の ID）、検証方法を持つ。検証方法は A（解析）、T（試験）、I（検査）、D（実証）の4つで、要求の性質から想定する方法を示す。要求はすべて、公開資料に記された実績の運用値・限界値から導いた「実績の運用値から導いた要求」である。

## 3. 上位の要求

本書の要求の上位の L1 要求を示す。

| L1 | 要求 |
|---|---|
| REQ-SYS-05 | 最大8人の乗員を運べること。 |
| REQ-SYS-10 | 各機能を2重・3重に冗長化し、1故障でミッションを継続でき、2故障で安全に帰還できること。 |
| REQ-SYS-14 | 系統の故障に対し、Go/No-Go の判定基準（A2-1001 ほか各章の1001番）で上昇の継続・MDF・次の PLS への着陸を判断できること。 |

## 4. C/W要求

| ID | 要求 | 値 | 根拠 | 上位 | 割付先 | フェーズ | 検証 |
|---|---|---|---|---|---|---|---|
| REQ-CW-01 | 主C/W は 120 の入力を 80 Hz で標本化し、連続8標本（100 ms）限界を外れたときに C/W トーン・MASTER ALARM 灯・F7 の表示灯で乗員に知らせること。 | 入力 120、80 Hz・8標本（100 ms） | 主C/Wは120の入力を監視でき、入力は変換器から信号調整器または前方MDMを経て受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115）各入力は80 Hzで標本化され、連続8標本（100 ms）限界を外れるとC/Wトーン・MASTER ALARM灯・F7の表示灯が作動し、パラメータ番号が記憶される。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57） | REQ-SYS-14 | F-CW-PRI-01・F-CW-PRI-02・F-CW-PRI-03・F-CW-PRI-04・F-CW-PRI-05 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-CW-02 | C/W 電子装置は ESS 1BC と ESS 2CA の2系統から電源 A・B を受け、自己試験の失敗を乗員に知らせること。 | 電源 2系統、自己試験パラメータ 8 | C/W電子装置は内部の電源A・Bで給電され、電源AはESS 1BCからC/W A遮断器、電源BはESS 2CAからC/W B遮断器（パネルO13）を経て受電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115）C/W系Aには自己試験専用の8パラメータ（120〜127）があり、自己試験に失敗するとPRI C&W灯・MASTER ALARM灯・C/Wトーンが出る。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70） | REQ-SYS-10 | F-CW-PRI-06・F-CW-PRI-07・F-CW-PRI-08・IF-CW-01 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-CW-03 | 主C/W と独立に、GPC のソフトウェアによるバックアップ C/W（クラス2）を持ち、限界外れで MASTER ALARM 灯・BACKUP C/W ALARM 灯と故障メッセージを出すこと。 | MASTER ALARM 灯 4 | バックアップC/W（クラス2）は、SMの故障検知・警報（FDA）、GNC、バックアップ飛行系（BFS）のソフトウェアの一部である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115）限界外れを検知すると、4つのMASTER ALARM灯とF7の赤いBACKUP C/W ALARM灯を点灯し、故障メッセージ行と故障要約頁にメッセージを出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | REQ-SYS-10・REQ-SYS-14 | F-CW-BKP-01・F-CW-BKP-02・F-CW-BKP-03・F-CW-BKP-04・F-CW-BKP-05・F-CW-BKP-06・F-CW-BKP-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-CW-04 | クラス3アラートで、クラス2に至る前の状況や5分を超える長い処置が要る状況を知らせ、パラメータごとに系の状態で選ぶ1〜3組の限界を持つこと。 | 限界 1〜3組／パラメータ | クラス3アラートはSMソフトウェアが動かすソフトウェアの系で、クラス2に至る前の状況や、5分を超える長い処置が要る状況を乗員に知らせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117）各アラートパラメータは1〜3組の限界を持ち、複数の組を持つものはセンサ入力や系の状態で使う組を選ぶ（前提条件付け）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=80） | REQ-SYS-14 | F-CW-ALT-01・F-CW-ALT-02・F-CW-ALT-03・F-CW-ALT-04・F-CW-ALT-05 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-CW-05 | クラス0の限界表示で、DPS 表示のパラメータの隣に上・下の矢印を出し、警報音なしで限界外れや通常と異なる状態を示すこと。 | 警報音なし | クラス0の限界表示は、DPS表示のパラメータの隣に上・下の矢印を出すソフトウェアの系で、警報音は出さない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117）下向き矢印は下限への到達のほか、通常の状態と異なる状態（通常は動いているファンの停止など）も示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） | REQ-SYS-14 | F-CW-ALT-06・F-CW-ALT-07 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | I（検査） |
| REQ-CW-06 | クラス1（緊急）の火災・急減圧は、ハードウェアでサイレン・クラクソンを鳴らし、2つのトーン発生器でヘッドセットとスピーカへ分配すること。 | トーン発生器 2（A・B） | クラス1（緊急）の警報音は、煙検知系が作動させるサイレンと、急減圧を検知するΔP/Δtセンサが作動させるクラクソンで、ハードウェアで発報する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114）C/W電子装置には2つのトーン発生器（A・B）があり、それぞれクラクソン・サイレン・C/Wトーン・アラートトーンを発生する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119）各トーン発生器の出力の1つはR13Uの音量調整を経てACCUへ送られ、ヘッドセットと中甲板・飛行甲板のスピーカに分配される。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119） | REQ-SYS-05・REQ-SYS-10 | F-CW-ANN-04・F-CW-ANN-05・F-CW-ANN-06 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | T（試験） |
| REQ-CW-07 | 4つの MASTER ALARM 灯・F7 の 40灯の表示盤などの視覚の合図を持ち、各表示灯は2個の電球を並列に持つこと。 | MASTER ALARM 4・F7 40灯・電球 2／灯 | 視覚の合図は、4つの赤いMASTER ALARM灯、パネルF7の40灯の表示盤、R13Uの120灯、GPCの故障メッセージ、青いSM ALERT灯である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）各表示灯は冗長のため2個の電球を並列に持ち、F7の表示盤の電源はESS 1BCのC&W A遮断器を経る。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=60） | REQ-SYS-10 | F-CW-ANN-01・F-CW-ANN-02・F-CW-ANN-03・F-CW-ANN-07・F-CW-ANN-08 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | I（検査） |
| REQ-CW-08 | 乗員は R13U と SPEC 60 で、地上は TMBU で、限界の変更とパラメータの有効化・抑止を行えること。 | SPEC 60・TMBU | パネルR13Uは主C&Wとの乗員のインタフェースで、限界の確認・変更、パラメータの有効化・抑止、状態の確認、記憶の読出しを行う。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=62）SPEC 60 SM TABLE MAINTはPASS SMのパラメータとの乗員のインタフェースで、バックアップC/W・アラートの各パラメータの上下限・ノイズフィルタ値・有効/抑止を読み、変えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/127）限界の変更はSPEC 60で乗員が入力するか、地上からテーブル保守ブロック更新（TMBU）でアップリンクする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/127） | REQ-SYS-14 | F-CW-OPS-01・F-CW-OPS-02・F-CW-OPS-03・F-CW-OPS-04・F-CW-OPS-09 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | D（実証） |
| REQ-CW-09 | 主C&W とバックアップ C&W の限界値を同じに保ち、運用しないパラメータや迷惑警報を出すパラメータは抑止すること。 | 限界値 主＝バックアップ | 運用していない主C&Wのパラメータは、同じ灯を使うほかのパラメータを隠さないよう抑止し、迷惑警報を出すバックアップC&Wのパラメータも抑止する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1474）主C&WとバックアップC&Wの限界値は、安全化の再構成を促す警報をフェイルセーフに行うため同じ値に保つ。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1474） | REQ-SYS-14 | F-CW-OPS-05・F-CW-OPS-06 | PH-1（打上げ前）・PH-2（上昇）・PH-3（軌道）・PH-6（再突入）・PH-7（着陸後） | A（解析） |
| REQ-CW-10 | 主C&W とバックアップ C&W の両方を失うと次の PLS で帰還すると判断できるよう、C&W の喪失の定義を持つこと。 | 両方の喪失で次の PLS | 電源A・Bの両方を失うと主・バックアップ・SMのすべてのC&W灯とトーンを失ったとみなし、電源Aの喪失や自己試験の失敗では主C&Wを失ったとみなす。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1437）軌道上の系統Go/No-Go基準では、主C&WとバックアップC&Wの両方を失うと次のPLSで帰還する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=803） | REQ-SYS-14 | F-CW-OPS-07・F-CW-OPS-08 | PH-3（軌道） | A（解析） |

## 5. トレース表（機能行・IF → 要求）

C/Wの機能説明書 6 件の機能行 46 件と、要求の割付先の IF 行について、参照している要求を示す。機能行のうち 39 件が要求から参照され、7 件は参照されていない（判断の欄を参照）。

| 文書 | 機能・IF | 内容 | 要求 | 判断 |
|---|---|---|---|---|
| SSD-FD-CW-001 | F-CW-01 | C/W系は、オービタの運用または乗員に危険を生じうる状態を乗員に警告し、時間的に切迫した（5分未満の）処置が必要な状況を知らせる。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CW-001 | F-CW-02 | 温度・圧力・流量・スイッチ位置などのデータから警報状態を判定し、所定の運用限界を超えた系を視覚と聴覚の合図で乗員に示す。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CW-001 | F-CW-03 | 警報は、クラス1（緊急）、クラス2（C/W）、クラス3（アラート）、クラス0（限界監視）の4区分から成る。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CW-001 | F-CW-04 | クラス1は煙検知・消火と急減圧の2つで、MDMやソフトウェアを介さないハードウェアのみの系である。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CW-001 | F-CW-05 | 主C/W（ハードウェア）は最大120の入力を監視し、限界値はアビオニクスベイ3のC/W電子ユニットに記憶する。乗員はパネルR13Uで限界値を変更できる。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CW-001 | F-CW-06 | バックアップC/W（ソフトウェア）は、システム管理の故障検出・表示（FDA）、GNC、バックアップ飛行システムのソフトウェアの一部である。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CW-001 | F-CW-07 | C/W電子ユニットの電源A・Bは、それぞれ必須母線ESS 1BCとESS 2CAから給電される。 | （なし） | 要求なしで妥当：系の全般の記述で、下位機能の要求が受け持つ。 |
| SSD-FD-CW-ALT-001 | F-CW-ALT-01 | クラス3アラートはSMソフトウェアが動かすソフトウェアの系で、クラス2に至る前の状況や、5分を超える長い処置が要る状況を乗員に知らせる。 | REQ-CW-04 | — |
| SSD-FD-CW-ALT-001 | F-CW-ALT-02 | アラートのパラメータが限界を外れると、F7の青いSM ALERT灯が点灯し、主C/Wへ離散信号が送られてアラートトーンが鳴り、故障メッセージが出る。 | REQ-CW-04 | — |
| SSD-FD-CW-ALT-001 | F-CW-ALT-03 | SMアラートトーンは、搭載計算機の入力でC/W電子装置が発生する、所定の長さの連続音である。 | REQ-CW-04 | — |
| SSD-FD-CW-ALT-001 | F-CW-ALT-04 | 各アラートパラメータは1〜3組の限界を持ち、複数の組を持つものはセンサ入力や系の状態で使う組を選ぶ（前提条件付け）。 | REQ-CW-04 | — |
| SSD-FD-CW-ALT-001 | F-CW-ALT-05 | 例えば水ループ2のポンプ出口圧は、ポンプが動いていれば故障したポンプを、止まっていれば漏れを検出する限界を使う。 | REQ-CW-04 | — |
| SSD-FD-CW-ALT-001 | F-CW-ALT-06 | クラス0の限界表示は、DPS表示のパラメータの隣に上・下の矢印を出すソフトウェアの系で、警報音は出さない。 | REQ-CW-05 | — |
| SSD-FD-CW-ALT-001 | F-CW-ALT-07 | 下向き矢印は下限への到達のほか、通常の状態と異なる状態（通常は動いているファンの停止など）も示す。 | REQ-CW-05 | — |
| SSD-FD-CW-ANN-001 | F-CW-ANN-01 | 視覚の合図は、4つの赤いMASTER ALARM灯、パネルF7の40灯の表示盤、R13Uの120灯、GPCの故障メッセージ、青いSM ALERT灯である。 | REQ-CW-07 | — |
| SSD-FD-CW-ANN-001 | F-CW-ANN-02 | MASTER ALARMの押しボタン表示器はパネルF2・F4・A7・MO52Jにあり、どれか1つを押すとSMトーンを含むすべてのトーンがリセットされる。 | REQ-CW-07 | — |
| SSD-FD-CW-ANN-001 | F-CW-ANN-03 | F7の表示灯は、駆動するすべてのパラメータが限界内に戻るか抑止されるまで消えない（BACKUP C/W ALARM灯はMSG RESETで消える）。 | REQ-CW-07 | — |
| SSD-FD-CW-ANN-001 | F-CW-ANN-04 | クラス1（緊急）の警報音は、煙検知系が作動させるサイレンと、急減圧を検知するΔP/Δtセンサが作動させるクラクソンで、ハードウェアで発報する。 | REQ-CW-06 | — |
| SSD-FD-CW-ANN-001 | F-CW-ANN-05 | C/W電子装置には2つのトーン発生器（A・B）があり、それぞれクラクソン・サイレン・C/Wトーン・アラートトーンを発生する。 | REQ-CW-06 | — |
| SSD-FD-CW-ANN-001 | F-CW-ANN-06 | 各トーン発生器の出力の1つはR13Uの音量調整を経てACCUへ送られ、ヘッドセットと中甲板・飛行甲板のスピーカに分配される。 | REQ-CW-06 | — |
| SSD-FD-CW-ANN-001 | F-CW-ANN-07 | 上昇モードは通常モードと同じだが、コマンダのMASTER ALARM灯は点灯しない。 | REQ-CW-07 | — |
| SSD-FD-CW-ANN-001 | F-CW-ANN-08 | 各表示灯は冗長のため2個の電球を並列に持ち、F7の表示盤の電源はESS 1BCのC&W A遮断器を経る。 | REQ-CW-07 | — |
| SSD-FD-CW-BKP-001 | F-CW-BKP-01 | バックアップC/W（クラス2）は、SMの故障検知・警報（FDA）、GNC、バックアップ飛行系（BFS）のソフトウェアの一部である。 | REQ-CW-03 | — |
| SSD-FD-CW-BKP-001 | F-CW-BKP-02 | 限界外れを検知すると、4つのMASTER ALARM灯とF7の赤いBACKUP C/W ALARM灯を点灯し、故障メッセージ行と故障要約頁にメッセージを出す。 | REQ-CW-03 | — |
| SSD-FD-CW-BKP-001 | F-CW-BKP-03 | GPCは前方またはペイロードのMDMを経てC/W系A・Bの両方に信号を送り、MASTER ALARM灯・B/U C&W灯・C/Wトーンを作動させる。 | REQ-CW-03 | — |
| SSD-FD-CW-BKP-001 | F-CW-BKP-04 | GNCソフトウェアが限界外れを検知するとGNC警報インタフェース（GAX）へ信号を送り、GAXが警報の要否を決める。 | REQ-CW-03 | — |
| SSD-FD-CW-BKP-001 | F-CW-BKP-05 | BFSが待機（STANDBY）のときはペイロードバスを制御しないため、表示灯・トーンは出さず、故障メッセージと状態表示だけとなる。 | REQ-CW-03 | — |
| SSD-FD-CW-BKP-001 | F-CW-BKP-06 | 故障メッセージはACKキーを押すまで点滅し、MSG RESETキーで消える。 | REQ-CW-03 | — |
| SSD-FD-CW-BKP-001 | F-CW-BKP-07 | 同じ故障メッセージが4.8秒以内に重ねて出るときは、FDAの論理が新しいメッセージを抑止する。 | REQ-CW-03 | — |
| SSD-FD-CW-OPS-001 | F-CW-OPS-01 | パネルR13Uは主C&Wとの乗員のインタフェースで、限界の確認・変更、パラメータの有効化・抑止、状態の確認、記憶の読出しを行う。 | REQ-CW-08 | — |
| SSD-FD-CW-OPS-001 | F-CW-OPS-02 | 一部の限界と監視するパラメータの一覧は飛行段階で変わり、乗員はR13UのPARAM ENABLE/INHIBITとLIMITのスイッチで現在の構成に合わせる。 | REQ-CW-08 | — |
| SSD-FD-CW-OPS-001 | F-CW-OPS-03 | SPEC 60 SM TABLE MAINTはPASS SMのパラメータとの乗員のインタフェースで、バックアップC/W・アラートの各パラメータの上下限・ノイズフィルタ値・有効/抑止を読み、変えられる。 | REQ-CW-08 | — |
| SSD-FD-CW-OPS-001 | F-CW-OPS-04 | 限界の変更はSPEC 60で乗員が入力するか、地上からテーブル保守ブロック更新（TMBU）でアップリンクする。 | REQ-CW-08 | — |
| SSD-FD-CW-OPS-001 | F-CW-OPS-05 | 運用していない主C&Wのパラメータは、同じ灯を使うほかのパラメータを隠さないよう抑止し、迷惑警報を出すバックアップC&Wのパラメータも抑止する。 | REQ-CW-09 | — |
| SSD-FD-CW-OPS-001 | F-CW-OPS-06 | 主C&WとバックアップC&Wの限界値は、安全化の再構成を促す警報をフェイルセーフに行うため同じ値に保つ。 | REQ-CW-09 | — |
| SSD-FD-CW-OPS-001 | F-CW-OPS-07 | 電源A・Bの両方を失うと主・バックアップ・SMのすべてのC&W灯とトーンを失ったとみなし、電源Aの喪失や自己試験の失敗では主C&Wを失ったとみなす。 | REQ-CW-10 | — |
| SSD-FD-CW-OPS-001 | F-CW-OPS-08 | 軌道上の系統Go/No-Go基準では、主C&WとバックアップC&Wの両方を失うと次のPLSで帰還する。 | REQ-CW-10 | — |
| SSD-FD-CW-OPS-001 | F-CW-OPS-09 | R13Uを使わないときは、PARAMETER SELECTのつまみを119より大きい値にしておく。 | REQ-CW-08 | — |
| SSD-FD-CW-PRI-001 | F-CW-PRI-01 | 主C/Wは120の入力を監視でき、入力は変換器から信号調整器または前方MDMを経て受ける。 | REQ-CW-01 | — |
| SSD-FD-CW-PRI-001 | F-CW-PRI-02 | 120入力のうち95は変換器から直接、5はGPCの入出力処理装置から、18はGPCソフトウェアからMDMを経て入り、2は予備である。 | REQ-CW-01 | — |
| SSD-FD-CW-PRI-001 | F-CW-PRI-03 | 入力はアナログ（0〜5 V DC）または2値の離散信号で、すべて上限・下限の検出ができるように作られている。 | REQ-CW-01 | — |
| SSD-FD-CW-PRI-001 | F-CW-PRI-04 | 各入力は80 Hzで標本化され、連続8標本（100 ms）限界を外れるとC/Wトーン・MASTER ALARM灯・F7の表示灯が作動し、パラメータ番号が記憶される。 | REQ-CW-01 | — |
| SSD-FD-CW-PRI-001 | F-CW-PRI-05 | 基準の限界値はアビオニクスベイ3のC/W電子装置に格納され、パネルR13Uで変えられるが、電源を失って回復すると元の値に戻る。 | REQ-CW-01 | — |
| SSD-FD-CW-PRI-001 | F-CW-PRI-06 | C/W電子装置は内部の電源A・Bで給電され、電源AはESS 1BCからC/W A遮断器、電源BはESS 2CAからC/W B遮断器（パネルO13）を経て受電する。 | REQ-CW-02 | — |
| SSD-FD-CW-PRI-001 | F-CW-PRI-07 | 電源Aを失うと、BACKUP C/W ALARMを除くF7の全灯が点灯し、R13Uの状態灯・機能や主C/Wの限界監視を失う。 | REQ-CW-02 | — |
| SSD-FD-CW-PRI-001 | F-CW-PRI-08 | C/W系Aには自己試験専用の8パラメータ（120〜127）があり、自己試験に失敗するとPRI C&W灯・MASTER ALARM灯・C/Wトーンが出る。 | REQ-CW-02 | — |
| SSD-FD-CW-PRI-001 | IF-CW-01 | （IF の行。内容は所有文書） | REQ-CW-02 | — |

## 6. 要求から参照されない機能行

要求から参照されない機能行 7 件のうち、7 件は「要求なしで妥当」、0 件は「要求が抜けている」と判断した。「要求なしで妥当」は、系の全般の記述（親の説明書）か、同じ下位機能に要求があり、その要求が受け持つ構成・数量・運用の記述であるものである。「要求が抜けている」は、今後 L2 要求を足す候補である。文書ごとの件数を示す。

| 文書 | 機能行 | 要求から参照 | 要求なしで妥当 | 要求が抜けている |
|---|---|---|---|---|
| SSD-FD-CW-001 | 7 | 0 | 7 | 0 |
| SSD-FD-CW-ALT-001 | 7 | 7 | 0 | 0 |
| SSD-FD-CW-ANN-001 | 8 | 8 | 0 | 0 |
| SSD-FD-CW-BKP-001 | 7 | 7 | 0 | 0 |
| SSD-FD-CW-OPS-001 | 9 | 9 | 0 | 0 |
| SSD-FD-CW-PRI-001 | 8 | 8 | 0 | 0 |

## 7. 検証（V&V）

各要求の検証方法（解析 A・試験 T・検査 I・実証 D）について、その方法で要求が満たされたことを示す公開資料の頁を「検証の根拠」に示す（10件のうち根拠あり 10件・根拠なし 0件）。根拠が見つからないものは「根拠なし」とし、理由を書いた。

| ID | 検証方法 | 状態 | 検証の根拠 |
|---|---|---|---|
| REQ-CW-01 | T（試験） | 根拠あり | 4.3〜4.4節（PDF p57〜70）：主C&Wの入力・標本化・限界の比較、R13U、電源、自己試験を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57） |
| REQ-CW-02 | T（試験） | 根拠あり | 4.1a PRIMARY C/W（PDF p116〜118）：PRIMARY C/W灯の点灯条件と、C/W A遮断器を開いて冗長を確かめる手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=116） |
| REQ-CW-03 | T（試験） | 根拠あり | 4.5節（PDF p70〜78）：バックアップC&Wの構成とPASS・BFSのソフトウェアの分担を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70） |
| REQ-CW-04 | T（試験） | 根拠あり | 5〜6章（PDF p79〜90）：クラス3アラートの限界・前提条件付けとクラス0限界表示を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=79） |
| REQ-CW-05 | I（検査） | 根拠あり | 2.2節 Class 3・Class 0（PDF p117）：SMアラートと限界表示の矢印を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117） |
| REQ-CW-06 | T（試験） | 根拠あり | 9.3節（PDF p119〜120）：2つのトーン発生器の出力とACCU・スピーカへの分配を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119） |
| REQ-CW-07 | I（検査） | 根拠あり | 2.2節 Alarms（PDF p114〜116）：クラス1のサイレン・クラクソン、F7の40灯の表示盤、トーンを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114） |
| REQ-CW-08 | D（実証） | 根拠あり | 4.4.1節（PDF p62〜66）：R13Uでの限界の確認・変更と有効化・抑止の操作を述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=62） |
| REQ-CW-09 | A（解析） | 根拠あり | ARPCS（PDF p48）：既知の誤指示に対して警報を抑止する運用の実例を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48） |
| REQ-CW-10 | A（解析） | 根拠あり | A2-1001（PDF p803）：主・バックアップC&Wの両方の喪失を次のPLSとする基準を示す。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=803） |

## 8. 注記（出典間の相違・構成変更）

> **注記** トレース表の「要求なしで妥当」は、親の説明書の全般の記述か、同じ下位機能（文書）に割り付けた要求が受け持つ構成・運用の記述であることを根拠に、文書ごとにまとめて判断したもので、機能行1件ずつに要求の要否を検討したものではない。

> **注記** NASA-STD-3001 との照合：REQ-CW-06（検証の判定 VC-REQ-CW-06 pass）は [V2 10114]（HSI-401） による評価では 不適合。既存の判定と 3001 による評価が食い違うが、判定は据え置く（[SSD-HSI-SYS-001](SSD-HSI-SYS-001.md) §7）。

## 9. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
2. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.3節 Primary C&W（PDF p57） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=57
3. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.5節 Backup C&W（PDF p70） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=70
4. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p117） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/117
5. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 5.2.2 Requirements for Alert Annunciation（PDF p80） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=80
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Class 1 - Emergency（PDF p114） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/114
7. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 9.3 Audio Annunciation Control（PDF p119） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=119
8. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
9. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.4 Annunciator Light Matrix（PDF p60） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=60
10. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 4.4.1 Panel R13U（PDF p62） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=62
11. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p127） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/127
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-160 Caution and Warning (C&W)（PDF p1474） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1474
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-4 CAUTION AND WARNING (C&W)（PDF p1437） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1437
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A2-1001 Orbiter Systems Go/No-Go（PDF p803） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=803
15. JSC-48027 Rev. F Malfunction Procedures（MAL） 4.1a PRIMARY C/W（PDF p116） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=116
16. USA006019 Rev. A C&W 21002 Caution and Warning 訓練マニュアル（2008） 5.2 Overview（PDF p79） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=79
17. NSTS-37452 STS-125 Mission Report（2010） Atmospheric Revitalization Pressure Control System（PDF p48） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=48

## 10. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（L2 要求 10件、機能行 46件とのトレース、検証の根拠） |
| Rev. A | 2026-10-06 | NASA-STD-3001 による評価との食い違い 1件の要求を注記（判定は据え置き）（Rev. AY） |
