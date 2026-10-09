# 噴射器駆動回路（RJD）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-RCS-RJD-001 |
| 表題 | 噴射器駆動回路（RJD）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-RCS-001 |
| 関連図 | SSD-SYS-ARC-001 図54 RCS 機能構成 |

## 1. 目的

反応噴射器駆動回路（RJD）がGPCの二重の噴射指令を受けて各噴射器の推進薬弁を開く電圧に変え、燃焼室圧の離散信号を冗長管理へ返す機能と、RJDの電源・運用の構成、故障時の扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-RCS-RJD-01 | RJDは、GPCの噴射指令を推進薬の二元弁を開くのに必要な電圧に変換し、燃焼過程を開始させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719） |
| F-RCS-RJD-02 | RJDは燃焼室圧の離散信号を生成し、実際に噴射したことの表示として冗長管理へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719） |
| F-RCS-RJD-03 | Pc離散信号は、燃焼室圧が36 psiに達するとONになり、26 psiを下回るまでONを保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728） |
| F-RCS-RJD-04 | 上昇・突入時は、DAPの噴射器選択論理が38個の噴射器のON・OFF指令をRCS指令サブシステム運用プログラムへ出し、これが各RJDへの二重の噴射指令AとBを生成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/732） |
| F-RCS-RJD-05 | MDMの故障処置の表には、前方MDM（FF1〜FF4）と後方MDM（FA1〜FA4）に対応する前部RJD（RJDF 1A・1B・2A・2B）と後部RJD（RJDA 1A・1B・2A・2B）のDRIVERスイッチ（パネルO14〜O16）が挙げられている。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=167） |
| F-RCS-RJD-06 | 主噴射器のRJDにはLOGICとDRIVERの電源スイッチが計16個あり、軌道上のRCS噴射試験ではこれらをONにして試験を行う。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=240） |
| F-RCS-RJD-07 | バーニアを失った場合の手順（LOSS OF VERNIERS）では、バーニアのRJD（L5・F5・R5 DRIVER）をOFFにする。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=254） |
| F-RCS-RJD-08 | 主噴射器のRJDは、乗員の起床中（近傍運用・ペイロード放出・ランデブを含む）はすべてONとし、乗員の就寝中と貨物室外のEVA中は電源を切る（A6-151）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1212） |
| F-RCS-RJD-09 | RJDの故障率は試験で100億時間に1回とされ、就寝中に電源を切るのは就寝中の乗員の対応が遅れるためである（A6-151の根拠）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1212） |
| F-RCS-RJD-10 | RJDのロジック電源回路の故障をテレメトリで検知した場合は、電源を切ると2つのマニホールドの噴射器を恒久的に失うため、就寝中も電源を入れたままにする（A6-151C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1212） |
| F-RCS-RJD-11 | fail-onはRJDの弁電源出力が高に故障するか燃料・酸化剤の両弁が開故障すると起こり、fail-offはRJDの出力離散信号が低に故障するか弁の一方が閉故障すると起こる（A6-8）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140） |
| F-RCS-RJD-12 | 1つのRJDへの電源（冗長な2系統とも）かRJDの機能を回復できないほど失うと、そのマニホールドの噴射器をすべて失うため、マニホールドを閉じたままにする（A6-60E）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1195） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-GNC-14 | DAP・飛行制御センサ | データ・指令 | 受信 | RCS DAPは、OMS噴射中を除く軌道上の全期間に、RCSジェットの噴射指令で機体の姿勢と角速度を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/519）再突入ではエアロジェットDAPがピッチの角速度誤差を動圧40 psfまでジェットの指令に変える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/521） | 上位: IF-ORB-03 |
| IF-RCS-03 | 主・バーニア噴射器 | データ・指令 | 双方向 | RJDはGPCの噴射指令を二元弁を開く電圧に変えて各噴射器の燃料・酸化剤の弁へ加え、噴射を開始させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719）噴射器の燃焼室圧はRJDの電子回路で検知され、26 psia未満ではPc離散信号がゼロとなる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140） | — |
| IF-RCS-04 | 噴射器冗長管理 | データ・指令 | 送信 | RJDが生成する燃焼室圧の離散信号を、実際に噴射したことの表示としてRMへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719）RMはPc離散信号、CMD B、ドライバ出力離散信号を噴射器の故障の検知に使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728） | — |
| IF-RCS-10 | 電力系（EPS） | 電力（28 VDC） | 受信 | パネルO14・O15・O16のスイッチを通して、主噴射器のRJDのLOGIC・DRIVER電源（16個）とバーニアのRJD（L5・F5・R5 DRIVER）に給電する。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=254）各RJDには冗長な2系統の電源がある。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1195） | 上位: IF-ORB-14 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節（PDF p719・p732）：RJDがGPCの噴射指令を二元弁を開く電圧に変えてPc離散信号をRMへ送ること、DAPの噴射器選択が二重の噴射指令A・Bを各RJDへ出すことを述べ、5.3節（p832）で就寝前に主噴射器のRJDの電源を切ることを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/732） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-151（PDF p1212）：主噴射器のRJDを起床中はON、就寝中と貨物室外のEVA中はOFFとし、ロジック電源回路の故障時は就寝中もONにすると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1212） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | DPS 5.3a（PDF p167）：MDM FF1〜FF4・FA1〜FA4の喪失時に電源を切る機器として、前部・後部RJDのDRIVERスイッチを挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=167） |
| RS-05 | Orbit Ops Checklist Rev. M PCN-10 | Orbit Operations Checklist（ORB OPS） | LOSS OF VERNIERS（PDF p254）：主噴射器のRJDのLOGIC・DRIVER（16個）をONにし、バーニアのRJD（L5・F5・R5 DRIVER）をOFFにする手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=254） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOMの就寝前の作業には、主噴射器のON故障を防ぐため主噴射器のRJD（8台）の電源を切る項目があり、運用飛行規則A6-151Aの就寝中の電源断と一致する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/832）

> **注記** 噴射器の故障処置（MAL 10.1a）は、fail-offの原因の候補として、MDMの出力カードの故障、ジェットドライバの故障、噴射器の機械的故障を挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=748）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p719） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719
2. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p728） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728
3. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p732） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/732
4. JSC-48027 Rev. F Malfunction Procedures（MAL） DPS 5.3a I/O ERROR FF(FA)（PDF p167） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=167
5. Orbit Operations Checklist Rev M PCN-10 RCS HOT FIRE TEST（PDF p240） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=240
6. Orbit Operations Checklist Rev M PCN-10 LOSS OF VERNIERS（PDF p254） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=254
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-151 RCS JET DRIVER MANAGEMENT（PDF p1212） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1212
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-8 RCS THRUSTER（PDF p1140） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140
9. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-60 RCS MANIFOLD CLOSURE CRITERIA（PDF p1195） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1195
10. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p519） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/519
11. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p521） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/521
12. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 5章 Presleep・Postsleep（PDF p832） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/832
13. JSC-48027 Rev. F Malfunction Procedures（MAL） RCS 10.1a L(R,F) RCS JET（PDF p748） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=748
14. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
