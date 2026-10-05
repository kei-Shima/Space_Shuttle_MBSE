# 熱制御（ヒータ）（HTR）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-RCS-HTR-001 |
| 表題 | 熱制御（ヒータ）（HTR）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-RCS-001 |
| 関連図 | SSD-SYS-ARC-001 図54 RCS 機能構成 |

## 1. 目的

前部モジュールのパネルヒータ、OMS/RCSポッドのゾーンヒータ、各噴射器のヒータによって推進薬と噴射器を安全な温度に保つ機能と、A・B系の運用、温度の監視、ヒータ故障時の扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-RCS-HTR-01 | 前部RCSモジュールとOMS/RCSポッドには、推進薬を安全な温度に保ち、各主・バーニア噴射器の噴射器を安全な作動温度に保つ電気ヒータがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727） |
| F-RCS-HTR-02 | 主噴射器のヒータは各20 W（後ろ向きの4基は30 W）、バーニア噴射器のヒータは各10 Wである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727） |
| F-RCS-HTR-03 | 前部RCSには輻射パネル上の6か所にヒータがあり、各OMS/RCSポッドは9つのヒータゾーンに分かれ、各ゾーンをA・Bのヒータ系が並列に制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727） |
| F-RCS-HTR-04 | 前部RCSのパネルヒータはパネルA14のFWD RCSスイッチで操作し、A AUTOかB AUTOでは左右のパネルのサーモスタットが約55°FでON、約75°FでOFFにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727） |
| F-RCS-HTR-05 | 後部RCSのヒータはパネルA14のLEFT POD・RIGHT PODのA AUTO・B AUTOスイッチで操作し、サーモスタットが各ポッドの9つのゾーンを概ね55〜75°Fに保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727） |
| F-RCS-HTR-06 | 噴射器のヒータはパネルA14のFWD・AFT RCS JET 1〜5スイッチ（番号はマニホールド）で操作し、AUTOでは各噴射器のサーモスタットが、主噴射器では約66〜76°FでON・約94〜109°FでOFF、バーニアでは約140〜150°FでON・約184〜194°FでOFFにする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727） |
| F-RCS-HTR-07 | 主噴射器のヒータは上昇中はOFF（発射場の気温が50°F未満の場合を除く）で、ほかの飛行段階ではONとし、バーニアのヒータは打上げ前にONにして突入ではOFFにする（A6-251C）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229） |
| F-RCS-HTR-08 | ポッドのヒータは各ヒータパッチにA・B両方の回路が入っており、両系を同時に使うとパッチが過熱して剥がれるため片方の系だけを使い、上昇中（OPS 1）はすべてOFFとする（A6-254）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1232） |
| F-RCS-HTR-09 | 前部RCSモジュールのヒータは、SMのGPCが動いていないときはOFFとし、故障でONのままになったヒータがSMで知らされずにマニホールドの配管を過熱させるのを防ぐ（A6-253）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1231） |
| F-RCS-HTR-10 | 主噴射器のヒータは、燃料・酸化剤の噴射器温度がともに50（55）°F未満へ下がると喪失とし、低温では噴射器の弁座が収縮して漏れるおそれがある（A6-9）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1141） |
| F-RCS-HTR-11 | 主噴射器のヒータがOFFに故障した場合は、手動の噴射、優先度の変更、姿勢の変更で噴射器温度を42（47）°F超に保ち、噴射器温度が162（157）°Fを超えている間は原則として噴射しない（A6-257）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1240） |
| F-RCS-HTR-12 | 後部RCSのタンク温度が68（70）°F未満になると、突入時のZOT（燃料・酸化剤の爆発的反応）を避けるため、非干渉の範囲で姿勢を変えて推進薬を温める（A6-258）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1244） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-RCS-07 | 主・バーニア噴射器 | 熱 | 送信 | 各噴射器のヒータ（主噴射器20 W、後ろ向きの4基は30 W、バーニア10 W）が噴射器を安全な作動温度に保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727） | — |
| IF-RCS-08 | 推進薬貯蔵・分配 | 熱 | 送信 | 前部モジュールのパネルヒータと各ポッドの9ゾーンのヒータ（A・B系）が、タンクと配管の推進薬を概ね55〜75°Fに保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727）重要なヒータ回路はRCSのタンク・He配管、推進薬配管（RCSハウジング）、マニホールド配管を保護し、すべて冗長である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1231） | — |
| IF-RCS-11 | 電力系（EPS） | 電力（28 VDC） | 受信 | 噴射器ヒータは主母線の直流配電から給電され、例えば主母線MNAのDA1を失うと後部RCS左右のJET 2ヒータ（FSM経由）が失われる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=465）パネルA14のコネクタP9644のソケットAには、RCS JETヒータ用の主母線MNBの24 V直流電力が来ている。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=362） | 上位: IF-ORB-14 |
| IF-RCS-15 | 警報系（C/W） | データ・指令 | 送信 | 構造の温度がI-loadの上下限を超えると、SMアラート「S89 PRPLT THRM RCS」を出す（OPS 2）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735）故障処置10.3aでは、前部RCSの燃料（酸化剤）の温度が46°F未満か105°F超などで処置に入り、他方のヒータ系に切り替えて原因を切り分ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=760） | 上位: IF-ORB-41 |
| IF-RCS-19 | RCS運用管理 | データ・指令 | 受信 | 運用規則に従い、パネルA14のヒータスイッチでヒータ系（A・B）の選択と入切を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742）ヒータ系は飛行中に少なくとも一度は冗長側（A・B）へ切り替える。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節 Thermal Control（PDF p727）：前部モジュールの6か所のヒータ、各ポッドの9ゾーンのA・B系ヒータ、噴射器ヒータ（20・30・10 W）とパネルA14のスイッチ、サーモスタットの設定温度を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-9（PDF p1141）とA6-251〜A6-258（p1229〜1245）：噴射器ヒータの喪失の定義、A・B系の運用、ポッド・前部モジュール・クロスフィード配管の温度管理、噴射器温度と後部のタンク温度の管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1240） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 10.3a S89 PRPLT THRM RCS（PDF p760）：前部RCSと後部のマニホールド・ドレンパネル・バーニアパネルの温度の逸脱を、他方のヒータ系への切替えで切り分ける手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=760） |
| RS-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book（SODB）Vol. 1 | 3.4.3.2節（PDF p129〜130）：主噴射器のヒータの喪失（両噴射器温度が50°F未満へ徐々に低下）と、バーニアの最低温度を130°Fから90°Fへ下げられる条件を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=129） |
| RS-08 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | R-24 RMS: JETT REDUNDANCY（PDF p362）：パネルA14の裏のコネクタP9644のソケットAに、RCS JETヒータ用のMNBの24 V直流電力が来ていることを警告する。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=362） |
| RS-09 | STS-35 Mission Report | STS-35 Space Shuttle Mission Report（1991年） | Reaction Control Subsystem（PDF p11）：左RCSのドレンパネルのA系ヒータが設定点で入らず、B系に切り替えたと記す（Flight Problem STS-35-04）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| RS-10 | STS-114 Mission Report | STS-114 Space Shuttle Mission Report（2005年） | Reaction Control System（PDF p37）：バーニアのヒータが飛行の途中でONのまま故障し、高温の推進薬の原因となったと記す（IFA STS-114-V-24）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=37） |
| RS-11 | STS-122 Mission Report | STS-122 Space Shuttle Mission Report（2008年） | Flight Day 9（PDF p19）：前部RCSの酸化剤圧力配管の温度の低下に対し、乗員が他方のヒータ系に切り替えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 本書の解釈：OMS/RCSポッドのヒータの電力は、熱制御系の受動熱制御（SSD-FD-TCS-PTC-001）のIF-TCS-20で扱われているため、本書の電力の下位IF（EPS→HTR）は噴射器ヒータと前部モジュールのヒータを主に指す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727）

> **注記** STS-35では左RCSのドレンパネルのA系ヒータがサーモスタットの設定点で入らず、B系へ切り替えて正常に戻った。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11）

> **注記** STS-114ではバーニアR5Rのヒータが飛行の途中でONのまま故障し、高温の推進薬による混合比の一時的な変化でPcが低下したが、RMのfail-offの限界（26 psia）には達しなかった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=37）

> **注記** STS-122では前部RCSの酸化剤圧力配管の温度が下がり続け、乗員が他方のヒータ系に切り替えても傾向は変わらず、後に姿勢環境による傾向として横ばいになった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=19）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p727） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727
2. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-251 GENERAL（PDF p1229） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1229
3. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-254 OMS/RCS PODS TEMPERATURE MANAGEMENT（PDF p1232） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1232
4. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-252 OMS/RCS POD HEATER（PDF p1231） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1231
5. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-9 RCS JET HEATER（PDF p1141） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1141
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-257 RCS JET TEMPERATURE MANAGEMENT（PDF p1240） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1240
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-258 ARCS BULK PROPELLANT TEMPERATURE MANAGEMENT（PDF p1244） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1244
8. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-10 BUS LOSS: MNA DA1（PDF p465） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=465
9. In-Flight Maintenance Checklist Rev F PCN-13 R-24 RMS: JETT REDUNDANCY（PDF p362） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=362
10. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p735） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735
11. JSC-48027 Rev. F Malfunction Procedures（MAL） RCS 10.3a S89 PRPLT THRM RCS（PDF p760） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=760
12. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p742） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742
13. STS-35 Mission Report Reaction Control Subsystem（PDF p11） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11
14. STS-114 Mission Report Reaction Control System（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=37
15. STS-122 Mission Report Flight Day 9・10（PDF p19） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=19
16. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
