# GNC運用管理（OPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-GNC-OPS-001 |
| 表題 | GNC運用管理（OPS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-GNC-001 |
| 関連図 | SSD-SYS-ARC-001 図46 GN&C 機能構成 |

## 1. 目的

運用飛行規則による故障許容の考え方とLRUの故障定義、IMU・エアデータ・FCSチャネルの管理、GNCのGo/No-Go、警報と故障処置手順によるGNCの運用管理を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-GNC-OPS-01 | 上昇中はGNC系に問題があっても軌道へ向かうことが最も望ましく、再突入に必須なGNC系の故障許容をすべて恒久的に失った場合は初日のPLSに帰還する（A8-3）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1350） |
| F-GNC-OPS-02 | 再突入に必須なGNC系が故障許容をすべて失えば次のPLSで早期に終了し、4台構成の系（AA・RGA・FCSチャネルの位置フィードバック）は1故障後も公称の終了まで続けられる（A8-4）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1351） |
| F-GNC-OPS-03 | GNCのLRUへの電力またはデータ経路の冗長の喪失は、LRUの冗長の喪失とはみなさない（A8-10）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1354） |
| F-GNC-OPS-04 | GNCのパラメータは共通の冗長出力との差がI-loadのRM追従限界を超えると故障とし、冗長出力を持たないLRU（IMU・TACAN・MSBLSなど）ではパラメータの喪失をLRUの喪失とする（A8-51）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1363） |
| F-GNC-OPS-05 | 搭載のRMがジレンマを宣言したIMU・TACAN・ADTA・MLSの故障は、地上レーダのデータとの比較で故障したLRUを特定する（A8-52）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1363） |
| F-GNC-OPS-06 | 軌道離脱噴射の70分前にIMU間のアラインメントでIMUのRMのしきい値をリセットし、再突入日の軌道離脱前の恒星アラインメントを重要なアラインメントとする（A8-110）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1398） |
| F-GNC-OPS-07 | EIでのIMUの姿勢誤差が0.5°を超えると予測される場合は軌道離脱を行わず、公称の軌道離脱で0.25°を超える場合は軌道離脱を遅らせてアラインメントを行う（A4-151）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=940） |
| F-GNC-OPS-08 | 良いADTAが1台だけになればエアデータのG&Cへの取り込みを禁止してデフォルト/NAVDADのエアデータで飛び、エアデータをすべて失うか取り込まないときはシータ限界を守る（A8-111）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1402） |
| F-GNC-OPS-09 | GPCの故障による再割当てでは各GPCに同数のASAを割り当て、FA MDMまたはGPCの故障時は対応するFCSチャネルを切り、1つのアクチュエータに良いチャネルが2つだけ残れば両方をOVERRIDEにする（A8-107）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1393） |
| F-GNC-OPS-10 | FCS点検の第1部（二次アクチュエータ点検）は、ASAのヌルドライバ故障を調べるため、できる限り軌道離脱噴射の前にAPUまたは油圧の循環ポンプを使って行う（A8-104）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1388） |
| F-GNC-OPS-11 | GNCのGo/No-Goは操縦装置・スイッチ、TVC・ドライバ、空力舵面、センサ、専用表示ごとにMDF・次のPLS・初日のPLSとする故障数を定め、たとえばIMUの2台の故障は再突入に1台が要るため次の（または初日の）PLSとする（A8-1001）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1420） |
| F-GNC-OPS-12 | PASSのRGA・AA・舵面の故障検出・切り離し（FDIR）は最初の故障で終わり、以後は乗員による選択フィルタの管理が必要で、BFSの選択フィルタは常に乗員の管理を要する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/542） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-GNC-08 | 乗員操縦・表示 | データ・指令 | 受信 | TACAN・GPS・MSBLSの故障ではSM ALERTが点灯して故障メッセージが出、エアデータのジレンマではパネルF7のAIR DATAとBACKUP C/W ALARMの警報灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/533）再突入前のAA・RGA・位置フィードバックの故障は、SPEC 53（ENTRY CONTROLS）で選択解除できる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1351） | — |
| IF-GNC-09 | 舵面・推力方向制御駆動 | データ・指令 | 送信 | 運用飛行規則A8-107に従い、パネルC3のFCS CHANNELスイッチでチャネルをAUTO・OVERRIDE・OFFに切り替え、複数のスイッチを動かすときは2秒の間隔をあける。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1395）SCOMのGNCの経験則も、同じアクチュエータに2つの故障があれば残りのFCSチャネルをOVERRIDEにするとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/542） | — |
| IF-GNC-10 | 慣性計測・アライメント | データ・指令 | 送信 | 運用飛行規則A8-110に従い、IMUの恒星アラインメントをおよそ飛行日ごとに1回行い、軌道離脱噴射の70分前にIMU間のアラインメントを行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1400）IMU間のアラインメントはGNC OPS 2または3で行い、所要時間は3〜6分である。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=194） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節（PDF p533・p542）：GNCの警報の要約と、選択フィルタの管理・FCSチャネルの管理などのGNCの経験則を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/533） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A8-1001（PDF p1409〜1423）：操縦装置・TVC・舵面・センサ・専用表示ごとに、MDF・次のPLS・初日のPLSとする故障数とその根拠を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1409） |
| GN-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | GNC FRP-1〜3（PDF p676〜678）：GNC GPCの再IPL後などのIMUの基準回復と、良いIMUを基準にした回復の手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=676） |
| GN-04 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 4章（PDF p48〜52）：IMUの冗長管理（選択フィルタとFDIR）と、3台では中間値選択、2台ではしきい値とBITEによる判定、解けなければジレンマとすることを解説する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=48） |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7章 FCS CHECKOUT（PDF p203）：FCS点検のための表示・DPSの構成と、RGA・ADTA・ASA・ATVC・航法援助装置の電源投入を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=203） |
| GN-08 | USA006019 Rev. A（C&W 21002） | Caution and Warning（訓練マニュアル、2008年） | 7.5節 Hardware C&W Table（PDF p97）：主C&Wのチャネルの表に、IMU・ADTA・RGA/AA・L RHC・R/AFT RHC・FCS SATURATION・FCS CH BYPASS・OMS TVCを挙げる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 故障処置手順（MAL）のGNCの節には、IMUの基準回復（GNC FRP-1〜3）、IMUの起動とHUD・スタートラッカの恒星データによるマトリクスアラインメント、OMSの重心通過の位置決め、THC接点のRM選択解除の手順があり、RM FAIL IMUなどの故障メッセージには対応する手順がない。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=673）

> **注記** IOAの中間報告（1988年）は、GNCの解析で141件の故障モードワークシートと24件のPCIを作り、NASAの基準（FMEA 148件・CIL 36件）と比べてCIL項目の相違はなかったとする。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=52）

> **注記** 本書の解釈：GNCの警報（IMU・AIR DATA・RHC・FCS CHANNEL・FCS SATURATIONなど）の表示は乗員操縦・表示（CCD）の機能とし、警報を受けた判断と再構成を本書の運用管理として扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/533）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-3 Loss of GNC System（PDF p1350） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1350
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-4 Fault Tolerance Philosophy（PDF p1351） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1351
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-10 Power/Data Path Redundancy（PDF p1354） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1354
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-51 Philosophy（PDF p1363） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1363
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-110 IMU System Management（PDF p1398） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1398
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A4-151 IMU Alignment（PDF p940） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=940
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-111 GNC Air Data System Management（PDF p1402） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1402
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-107 FCS Channel Management（PDF p1393） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1393
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-104 FCS Checkout（PDF p1388） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1388
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-1001 GNC Go/No-Go Criteria（PDF p1420） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1420
11. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p542） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/542
12. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p533） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/533
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-107 FCS Channel Management（PDF p1395） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1395
14. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-110 IMU System Management（PDF p1400） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1400
15. Orbit Operations Checklist Rev M PCN-10 7-4 IMU Alignment – IMU/IMU（PDF p194） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=194
16. JSC-48027 Rev. F Malfunction Procedures（MAL） GNC 8 目次（PDF p673） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=673
17. NASA-CR-185550 IOA: FMEA/CIL Assessment Interim Report C.4 Guidance, Navigation and Control System（PDF p52） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=52
18. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
