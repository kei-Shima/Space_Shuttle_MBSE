# タービン・ギアボックス（TRB）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-APU-TRB-001 |
| 表題 | タービン・ギアボックス（TRB）機能説明書 |
| 版・日付 | Rev. A／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-APU-001 |
| 関連図 | SSD-SYS-ARC-001 図56 APU/HYD 機能構成 |

## 1. 目的

ヒドラジンを触媒で分解するガス発生器と単段タービン、減速ギアボックス（燃料ポンプ・主油圧ポンプ・潤滑油ポンプを駆動）、GN2で加圧する潤滑油系と排気ダクトによって軸動力を生む機能と、噴射器の冷却と受動冷却、ガス発生器・潤滑油系のヒータ、潤滑油・ギアボックスの限界を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-APU-TRB-01 | ガス発生器は圧力容器にShell 405触媒の床を収めたもので、APUの排気室の内側に取り付けられ、ヒドラジンは触媒に触れると発熱反応で約1,700°Fの高温ガスに分解する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87） |
| F-APU-TRB-02 | 高温ガスは単段のタービン翼車を2回通過した後、ガス発生器の外側を流れて機外へ出て、排気ダクトでのガスの温度は約1,000°Fである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87） |
| F-APU-TRB-03 | タービンの排気はガス発生器の外側を流れてそれを冷やした後、後部胴体の上部の垂直尾翼の近くにある排気ダクトから機外へ出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84） |
| F-APU-TRB-04 | タービンの軸動力は減速ギアボックスを介して主油圧ポンプ・燃料ポンプ・潤滑油ポンプを駆動し、通常の回転数はそれぞれ3,918 rpm・3,918 rpm・12,215 rpmである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87） |
| F-APU-TRB-05 | 潤滑油系は固定容量ポンプを用いる掃気式で、無重量下でも潤滑油ポンプの始動に必要な吸込み圧力を得るためにGN2で加圧され、潤滑油系ごとに専用の窒素容器を持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87） |
| F-APU-TRB-06 | 潤滑油ポンプは潤滑油を約60 psiに昇圧して対応する水噴霧ボイラへ送って冷却し、潤滑油系ごとの2個のアキュムレータが熱膨張の吸収、最低約15 psiaの圧力の維持、無重量・全高度の潤滑油溜めの役割を果たす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88） |
| F-APU-TRB-07 | ガス発生器床・噴射器・排気ガスの温度はBFS SM SYS SUMM 2（GG BED、INJ、EGT）に表示され、床温度は軌道上の停止中にヒータで保温している床の監視に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87） |
| F-APU-TRB-08 | 噴射器の水冷却系は約180分の通常の冷却期間がとれない場合だけ使い、熱の戻りでヒドラジンが噴射器への燃料配管で爆発しないよう噴射器の分岐流路を400°F未満に冷やす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/93） |
| F-APU-TRB-09 | 噴射器冷却用の水タンクは後部胴体に1個あって3台のAPUが共用し、約9 lb（連続21分）の水を120 psiのGN2で押し出し、高温での再起動の約6回分に足りる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/93） |
| F-APU-TRB-10 | 改良型APUの燃料ポンプとガス発生器弁モジュールはヒートシンクと遮熱板による受動冷却で熱の戻りを防ぎ、燃料ポンプが210°F超またはガス発生器弁モジュールが200°F超のときは爆発のおそれがあるため再起動しない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/93） |
| F-APU-TRB-11 | パネルA12のAPU HEATER GAS GEN/FUEL PUMPスイッチのヒータ（A・B系）は燃料ポンプとガス発生器弁モジュールを約100°Fに保ち、APU HEATER LUBE OIL LINEスイッチのヒータは潤滑油配管を55〜65°Fに保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94） |
| F-APU-TRB-12 | MECOの後に潤滑油出口温度が325°F超またはギアボックス軸受温度が350°F超になると、MCCの判断でAPUを停止する（A10-24A）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1544） |
| F-APU-TRB-13 | ボイラによる潤滑油の冷却をすべて失うと、全運転温度に達したAPUは2〜3分で軸受が焼き付く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-APU-01 | ヒドラジン燃料供給 | 推進薬・流体 | 受信 | 加圧したヒドラジンを、燃料タンク隔離弁とフィルタからガス発生器弁モジュール（直列の主・副燃料制御弁）を経てガス発生器へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89）ガス発生器は触媒の作用で燃料を分解し、その高温ガスで単段・2回通過のタービンを回す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84） | — |
| IF-APU-04 | 主油圧ポンプ・供給 | 構造・荷重 | 送信 | タービンの軸動力を減速ギアボックスを介して対応する主油圧ポンプへ送り、主油圧ポンプは通常3,918 rpmで回る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87）HYD MAIN PUMP PRESSスイッチがNORMのままでは、APUを始動できない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100） | — |
| IF-APU-05 | 水噴霧ボイラ | 熱 | 送信 | 各APUの潤滑油を、対応する水噴霧ボイラの熱交換器に通して冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84）ボイラは潤滑油を約250°Fに保ち、潤滑油はボイラを2回通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95） | — |
| IF-APU-06 | APU制御器 | データ・指令 | 双方向 | APU制御器は、ギアボックス圧力が5.2 psi未満になると潤滑油系のGN2加圧弁を通電して開き、掃気と潤滑油ポンプの運転に必要なギアボックス圧力を保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88）ガス発生器床ヒータは、床温度センサの信号を受ける制御器内の比較器で360〜425°Fに保たれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94） | — |
| IF-APU-22 | 宇宙空間（船外） | 推進薬・流体 | 送信 | 各 APU の燃料系はヒドラジンを燃料ポンプ・ガス発生器弁モジュール・ガス発生器へ送り、タービンの排気は垂直尾翼付近の後部胴体上部の排気ダクトから機外へ出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84）ガス発生器でヒドラジンは触媒により約1,700°F の高温ガスに分解し、ガスは単段タービン翼車を2回通って機外へ出て、排気ダクトでのガス温度は約1,000°F である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87） | — |
| IF-APU-24 | ヒドラジン燃料供給 | 構造・荷重 | 送信 | ギアボックスは燃料ポンプ・油圧ポンプ・潤滑油ポンプを駆動し、各 APU の潤滑油と、その APU が駆動する油圧ポンプの作動油は、対応する水噴霧ボイラの熱交換器を通る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84）燃料ポンプは固定容量形の歯車ポンプで約1,400〜1,500 psi を吐出して約3,918 rpm で回り、出口フィルタが詰まると約1,725 psi でポンプ入口へ逃がし、シールの漏れは回収ボトルから約45 psia で機外へ出る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| AP-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.1節 Gas Generator and Turbine・Lubricating Oil・Injector Cooling System（PDF p87〜93）：ガス発生器と単段タービン、減速ギアボックス、GN2加圧の潤滑油系、噴射器の水冷却と受動冷却を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87） |
| AP-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A10-22（PDF p1535〜1538）とA10-24（p1544〜1545）：再起動の温度条件（噴射器の冷却3.5分、ガス発生器床温度）と、潤滑油・ギアボックスの温度・圧力による停止を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1535） |
| AP-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 1.1b（PDF p33〜34）：ガス発生器・燃料ポンプのヒータや噴射器の水配管などの温度の限界と、ヒータ回路の切替を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=33） |
| AP-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 | 3.4.4.3節（PDF p166・p168）：使える潤滑油（MIL-L-23699B、Mobil Jet II）、ギアボックス圧力2.0 psia未満での運転、排気ダクトの限界（1,160°F超）を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=168） |
| AP-05 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 表7-3（PDF p97）：主C/WのチャンネルにAPU 1〜3のEGT（8・18・28）とOIL T（38・48・58）を割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| AP-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.6節（PDF p57）：潤滑油ヒータのサーモスタットの閉固着（04-2-518A-2）の臨界度を3/1Rとするよう勧告したと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=57） |
| AP-09 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.2.1.1節（PDF p23）：打上げ試行時の潤滑油フィルタの詰まり（ペンタエリスリトール）と、ガス発生器の気泡を示す室圧の低下を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=23） |
| AP-10 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report（1993年） | PDF p6：APU 3の軸受温度が335°Fに達したため、飛行規則に従ってAPU 3を停止したと記す。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf#page=6） |
| AP-11 | NSTS-08292 | STS-65 Space Shuttle Mission Report（1994年） | APU Subsystem（PDF p31）：APU 2のギアボックスのGN2圧力が約6.2 psiaに下がり、1回の再加圧があったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-65%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：STS-2（1981年）の報告は燃料ポンプ・ガス発生器弁モジュールの水冷却系（主・副）を記すが、SCOM（PDF p93）は改良型APUにはこのモジュール用の水タンクや配管がなく受動冷却とする。旧型APUと改良型APUの構成の違いである。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=23）

> **注記** STS-2の打上げ試行ではAPU 1・3の潤滑油出口圧力が100 psia超に上がってフィルタの詰まりを示し、詰まりの原因はヒドラジンがギアボックスに入ってできたペンタエリスリトールの結晶であった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=23）

> **注記** 改良型APU（初飛行STS-45）でデュアルリップシールを採用して以来、燃料がシールを越えてギアボックスへ漏れた例はない（A10-1の根拠）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1526）

> **注記** 突入・アボートでは、潤滑油出口圧力が150 psia超になるとMECOの後にAPUを停止する（A10-24D）。150 psia超での運転は構造の損傷のおそれがあるためである。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1545）

> **注記** 検証メモ：ボイラによる潤滑油の冷却をすべて失った後の運転可能時間を、SCOMの2.1節（PDF p107）は2〜3分、付録Dの経験則（PDF p1137）は致命的でない軸受の焼き付きまで4〜5分とし、運用飛行規則A10-122は過熱の状態まで約11分とする。本書の機能の文は2.1節の値によった。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1137）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p87） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/87
2. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p84） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/84
3. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p88） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/88
4. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p93） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/93
5. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p94） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/94
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-24 APU OIL/GEARBOX TEMPERATURE/PRESSURE（PDF p1544） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1544
7. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p107） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/107
8. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p89） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/89
9. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p100） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/100
10. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p95） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/95
11. STS-2 Orbiter Mission Report 2.2.1.2 Fuel Pump/Gas Generator Valve Module Cooling（PDF p23） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=23
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-1 APU LOSS DEFINITIONS（PDF p1526） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1526
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A10-24 APU OIL/GEARBOX TEMPERATURE/PRESSURE（PDF p1545） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1545
14. Shuttle Crew Operations Manual 付録D Rules of Thumb（USA007587 Rev. A CPN-1、PDF p1137） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1137
15. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149
16. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p86） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/86

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-APU-22・IF-APU-24 を足した（GAP-09 の解消）（Rev. AU） |
