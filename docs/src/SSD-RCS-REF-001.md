# RCS 機能別関連文書一覧

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-RCS-REF-001 |
| 表題 | RCS 機能別関連文書一覧 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-RCS-001 |
| 関連図 | SSD-SYS-ARC-001 図55 RCS 関連文書マトリクス |

## 1. 目的

RCSの各機能に関係する公開文書を機能別に整理し、各機能説明書と図55 RCS 関連文書マトリクス（文書×機能マトリクス）の根拠とする。

## 2. 調査方法

乗員運用マニュアル（SCOM、OI-33）・運用飛行規則・故障処置手順・IOA の FMEA/CIL 評価などの公開文書を調べ、RCSの機能に関係する記述の頁を確かめた 12件を載せた（出典欄はすべて「新規」）。各文書の番号・表題・確認に使った URL は表の各行に、記述の頁は各欄の出典に示す。

## 3. 機能別関連文書

### 3.1 RCS 全般（8件）

機能説明書：SSD-FD-RCS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節（PDF p717〜742）：RCSが前部・左・右の3つのモジュールにある噴射器・推進薬タンク・分配系から成り、各RCSが高圧ヘリウムタンク・調圧と逃し系・燃料と酸化剤のタンク・分配系・噴射器・ヒータを持つことを述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/717） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-1001（PDF p1283〜1285）：RCSのHe・推進薬タンク、マニホールド、+X噴射器、OMS/RCSクロスフィードについて、上昇継続・MDF・次のPLSのGo/No-Go基準と根拠を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1283） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 10章 RCS（PDF p745）：RCSの故障処置（10.1 噴射器・ジレンマ・電源、10.2 弁の不一致、10.3 推進薬の温度・系統）とRCS SSR-1〜5の目次を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=745） |
| RS-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book（SODB）Vol. 1 | 3.4.3.2節（PDF p125〜130）：RCSの運用上の制約（温度、He圧、着陸時の搭載量、打上げ時の温度、再加圧、クロスフィード、噴射時間、入口圧、噴射器のヒータ、タンクの性能）と超えた場合の結果を表にする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=125） |
| RS-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning System（訓練マニュアル） | 2章（PDF p17）：主C/Wが監視するパラメータの一つとして、RCSの圧力・温度と故障離散信号を挙げる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=17） |
| RS-07 | NASA-CR-185550 | IOA: FMEA/CIL Assessment Interim Report（1988年） | C.27節（PDF p99）：RCSのIOA解析がハードウェア208件・EPD&C 2,064件のワークシートから成り、NASAのFMEA/CILの基準線と比べて未解決の指摘が残ったことを記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=99） |
| RS-10 | STS-114 Mission Report | STS-114 Space Shuttle Mission Report（2005年） | Reaction Control System（PDF p37）：RCSに酸化剤4,395.6 lb・燃料2,749.3 lb（計7,144.9 lb）を搭載し、OMSからの連結分515.8 lbを含めて5,271.0 lbを使ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=37） |
| RS-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | Reaction Control System（PDF p40）：RCSがミッションに要るすべての機能を果たし、飛行中の異常が1件あったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=40） |

### 3.2 ヘリウム加圧（HEP）（5件）

機能説明書：SSD-FD-RCS-HEP-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節 Helium System（PDF p725〜727）：ヘリウムタンク2基・並列の隔離弁・2段の調圧器（242〜248・253〜259 psig）・直並列の逆止弁・逃し弁と、最大ブローダウン量（前部22%・後部24%）を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-1（PDF p1127）とA6-58（p1191）：RCSのヘリウムタンクの喪失を400（456）psia未満か加圧経路の全閉と定め、冗長な経路があれば調圧器の切り分けのためのブローダウン運転をしないと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1127） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 10.2a RCS VLV tb - bp（PDF p756）：He PRESS A（B）を含むRCSの弁のトークバックがバーバーポールになった場合の切り分けと、弁の遮断器の公称構成を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=756） |
| RS-05 | Orbit Ops Checklist Rev. M PCN-10 | Orbit Operations Checklist（ORB OPS） | RCS REGULATOR RECONFIG（PDF p256）：He PRESS A・Bスイッチを操作して、使うヘリウムの調圧経路を切り替える手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=256） |
| RS-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning System（訓練マニュアル） | 表7-1（PDF p93）：F RCS He Pのメッセージを、Heタンク（燃料か酸化剤）の圧力の低下で出し、RCS LEAK ISOLのポケットチェックリストで処置すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=93） |

### 3.3 推進薬貯蔵・分配（PRP）（8件）

機能説明書：SSD-FD-RCS-PRP-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節 Propellant System（PDF p720〜725）：タンクと推進薬捕捉装置、交流電動のタンク隔離弁・マニホールド隔離弁・クロスフィード弁、PVT法の計量と9.5%の漏れ検知を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-7（PDF p1138〜1139）：RCS推進薬タンクの喪失を、圧力185（190）psia未満、推進薬量0%（後部の軌道上は20%）以下、タンク隔離弁の閉故障、温度の逸脱、推進薬捕捉装置の破綻と定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1138） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 10.3b G23 RCS SYSTEM F(L,R)（PDF p761）：推進薬タンクの温度と圧力（220〜300 psi）の逸脱を、トランスデューサの故障とヒータ・サーモスタット回路の故障に切り分ける手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=761） |
| RS-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book（SODB）Vol. 1 | 3.4.3.2節（PDF p125・p127）：後部RCSの着陸時の搭載量上限（酸化剤1,473 lb・燃料920 lb）と、OMS-RCSの連結とRCS間のクロスフィードで許されるタンク差圧を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=127） |
| RS-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning System（訓練マニュアル） | 表7-1（PDF p93）：F RCS LEAK（燃料・酸化剤の量の差9.5%超）、PVT（量の計算に要る圧力・温度の喪失）、TK P（アレージ圧の高低）のメッセージの条件を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=93） |
| RS-09 | STS-35 Mission Report | STS-35 Space Shuttle Mission Report（1991年） | Reaction Control Subsystem（PDF p11）：RCSが前部の投棄とOMSからの連結分を含めて計4,820 lbの推進薬を使ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| RS-11 | STS-122 Mission Report | STS-122 Space Shuttle Mission Report（2008年） | Flight Day 10（PDF p20）：オービタによるISSのリブーストを左OMSの推進薬系と連結した状態で行ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |
| RS-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | Reaction Control System（PDF p40）：前部・左・右のRCSの酸化剤・燃料の目標搭載量と、PASS・BFSのヘリウム初期重量（WHI）を表にする。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=40） |

### 3.4 主・バーニア噴射器（JET）（9件）

機能説明書：SSD-FD-RCS-JET-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節 Jet System（PDF p718〜719）：噴射器44基（主38基・バーニア6基）の配置と推力、パイロット弁・噴射器板・燃焼室・電気接続箱と燃焼不安定の保護を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/719） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-8（PDF p1140）とA6-153・A6-154（p1213〜1214）：噴射器のfail-on・fail-off・fail-leakの定義、主噴射器150秒・バーニア275秒の連続噴射の限界、バーニアの運転を止める条件を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1140） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 10.1a（PDF p748）：噴射器のfail-offが1基か複数かを判定し、MCCの指示で噴射試験を行い、L5L・R5Rの故障ではバーニア喪失の手順へ移る流れを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=748） |
| RS-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book（SODB）Vol. 1 | 3.4.3.2節（PDF p127〜128）：主噴射器150秒・バーニア125秒の定常噴射の上限、バーニアの1時間あたり1000回の制約、185 psiaの最小入口圧、主噴射器の安全な作動高度を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=127） |
| RS-05 | Orbit Ops Checklist Rev. M PCN-10 | Orbit Operations Checklist（ORB OPS） | RCS HOT FIRE TEST（PDF p240）：DAPを設定して3秒間隔のパルスで噴射器を試験し、JET FAILのメッセージとADIの角速度で噴射を確かめる手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=240） |
| RS-07 | NASA-CR-185550 | IOA: FMEA/CIL Assessment Interim Report（1988年） | C.27節（PDF p102）：主噴射器を失う故障を、RTLS・TALアボートでのOMS・RCSの推進薬投棄の速度の低下からIOAは臨界度1としたため、後部RCSのハードウェアの指摘6件が残ったと記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=102） |
| RS-09 | STS-35 Mission Report | STS-35 Space Shuttle Mission Report（1991年） | Reaction Control Subsystem（PDF p11）：バーニアR5Dがヘリウムの吸入でfail-offとなり、再選択して5パルスの噴射でガスの痕跡が消えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| RS-10 | STS-114 Mission Report | STS-114 Space Shuttle Mission Report（2005年） | Reaction Control System（PDF p37）：バーニアR5RのPcが63 psiaまでしか上がらず、ヒータのON故障による高温の推進薬が原因とされ、RMのfail-offの限界（26 psia）には達しなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=37） |
| RS-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | Reaction Control System（PDF p41）：SRB分離時の窓の保護のためF1U・F2U・F3Uを2.08秒噴射し、前部RCSのTyvekカバーの放出時刻を表にする。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=41） |

### 3.5 噴射器駆動回路（RJD）（4件）

機能説明書：SSD-FD-RCS-RJD-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節（PDF p719・p732）：RJDがGPCの噴射指令を二元弁を開く電圧に変えてPc離散信号をRMへ送ること、DAPの噴射器選択が二重の噴射指令A・Bを各RJDへ出すことを述べ、5.3節（p832）で就寝前に主噴射器のRJDの電源を切ることを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/732） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-151（PDF p1212）：主噴射器のRJDを起床中はON、就寝中と貨物室外のEVA中はOFFとし、ロジック電源回路の故障時は就寝中もONにすると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1212） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | DPS 5.3a（PDF p167）：MDM FF1〜FF4・FA1〜FA4の喪失時に電源を切る機器として、前部・後部RJDのDRIVERスイッチを挙げる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=167） |
| RS-05 | Orbit Ops Checklist Rev. M PCN-10 | Orbit Operations Checklist（ORB OPS） | LOSS OF VERNIERS（PDF p254）：主噴射器のRJDのLOGIC・DRIVER（16個）をONにし、バーニアのRJD（L5・F5・R5 DRIVER）をOFFにする手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=254） |

### 3.6 熱制御（ヒータ）（HTR）（8件）

機能説明書：SSD-FD-RCS-HTR-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節 Thermal Control（PDF p727）：前部モジュールの6か所のヒータ、各ポッドの9ゾーンのA・B系ヒータ、噴射器ヒータ（20・30・10 W）とパネルA14のスイッチ、サーモスタットの設定温度を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-9（PDF p1141）とA6-251〜A6-258（p1229〜1245）：噴射器ヒータの喪失の定義、A・B系の運用、ポッド・前部モジュール・クロスフィード配管の温度管理、噴射器温度と後部のタンク温度の管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1240） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 10.3a S89 PRPLT THRM RCS（PDF p760）：前部RCSと後部のマニホールド・ドレンパネル・バーニアパネルの温度の逸脱を、他方のヒータ系への切替えで切り分ける手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=760） |
| RS-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book（SODB）Vol. 1 | 3.4.3.2節（PDF p129〜130）：主噴射器のヒータの喪失（両噴射器温度が50°F未満へ徐々に低下）と、バーニアの最低温度を130°Fから90°Fへ下げられる条件を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=129） |
| RS-08 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | R-24 RMS: JETT REDUNDANCY（PDF p362）：パネルA14の裏のコネクタP9644のソケットAに、RCS JETヒータ用のMNBの24 V直流電力が来ていることを警告する。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=362） |
| RS-09 | STS-35 Mission Report | STS-35 Space Shuttle Mission Report（1991年） | Reaction Control Subsystem（PDF p11）：左RCSのドレンパネルのA系ヒータが設定点で入らず、B系に切り替えたと記す（Flight Problem STS-35-04）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| RS-10 | STS-114 Mission Report | STS-114 Space Shuttle Mission Report（2005年） | Reaction Control System（PDF p37）：バーニアのヒータが飛行の途中でONのまま故障し、高温の推進薬の原因となったと記す（IFA STS-114-V-24）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=37） |
| RS-11 | STS-122 Mission Report | STS-122 Space Shuttle Mission Report（2008年） | Flight Day 9（PDF p19）：前部RCSの酸化剤圧力配管の温度の低下に対し、乗員が他方のヒータ系に切り替えたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=19） |

### 3.7 噴射器冗長管理（RM）（5件）

機能説明書：SSD-FD-RCS-RM-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節 RCS Redundancy Management（PDF p728〜732）：fail-off・fail-on・fail-leakの検知と対応、噴射器可用表、ポッドの計数と限度、マニホールドのRM（ジレンマ・電源故障）を解説し、付録C（p1135）でBFSとの違いをまとめる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/728） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-155〜A6-159（PDF p1215〜1225）：疑わしい噴射器の優先度変更、RMを失った場合の処置、fail-offの噴射試験、漏れ噴射器の管理、故障した主噴射器の再選択の優先順位を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1224） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 10.1b RM DLMA MANF（PDF p754）：マニホールド弁の燃料・酸化剤の位置の不一致でRMがジレンマを出した場合に、SPEC 23でマニホールド状態を上書きする手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=754） |
| RS-05 | Orbit Ops Checklist Rev. M PCN-10 | Orbit Operations Checklist（ORB OPS） | RCS HOT FIRE TEST（PDF p240）：噴射試験の際にSPEC 23でマニホールド状態の上書き（MANF VLVS STAT OVRD）と噴射器の選択解除を項目入力で行うことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=240） |
| RS-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning System（訓練マニュアル） | 表7-1（PDF p93）：噴射器の故障メッセージ（例：F RIGHT JET・F UP JETのFAIL ON/OFF/LK）と、MM101・102ではfail-offを検知しないことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=93） |

### 3.8 RCS運用管理（OPS）（9件）

機能説明書：SSD-FD-RCS-OPS-001

| ID | 文書番号 | 表題 | 関連内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節 Operations・RCS Rules of Thumb（PDF p733〜742）：上昇・軌道上・突入でのRCSの使い方、前部RCSの投棄、OMS-RCS連結、経験則（1%＝1 fps・22 lb、閉じる・開く順序）を示し、6.8節（p897）で噴射器の故障と連結・クロスフィードの処置を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/733） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-52（PDF p1177〜）、A6-60・A6-61（p1193〜1201）、A6-302〜A6-359（p1248〜1282）：タンクの故障管理、マニホールドの閉鎖と再加圧、使用可能量とレッドライン、重心管理、推進薬の節約を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1177） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | RCS SSR（PDF p745）：混合クロスフィード、噴射試験（HOT FIRE RCS）、後部のマニホールド・レッグ圧、段階的な再加圧、漏れたRCSの推進薬・Heの噴射の手順の一覧を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=745） |
| RS-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book（SODB）Vol. 1 | 3.4.3.2節（PDF p130）：タンクセットあたりに同時に噴射できる主噴射器の数（通常の結合惰行・ET分離・軌道上で前部5基・後部4基など）を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=130） |
| RS-05 | Orbit Ops Checklist Rev. M PCN-10 | Orbit Operations Checklist（ORB OPS） | 10章 RCS（PDF p239）：噴射試験、重力傾斜の自由ドリフト、PRCS・VRCSのPTC、軌道上の+X・-X・多軸のRCS噴射、バーニアの喪失と回復、調圧器の再構成の手順の目次を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=239） |
| RS-07 | NASA-CR-185550 | IOA: FMEA/CIL Assessment Interim Report（1988年） | C.27節（PDF p99）：前部RCSの推進薬を投棄できないことの重大度について、IOAは突入に、NASA/RIはET分離にだけ重大とした相違を記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=99） |
| RS-10 | STS-114 Mission Report | STS-114 Space Shuttle Mission Report（2005年） | Reaction Control System（PDF p38）：噴射試験ですべての噴射器を少なくとも一度噴射し、前部RCSの投棄（4基、44.2秒）を行ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=38） |
| RS-11 | STS-122 Mission Report | STS-122 Space Shuttle Mission Report（2008年） | Flight Day 10（PDF p19〜20）：RCSによるリブーストでΔV 5.4 ft/s、軌道を約1.5 nmi上げ、オービタによるリブーストは5年ぶりであったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |
| RS-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | Reaction Control System（PDF p41）：ET分離を6.0秒・10噴射器の並進で行い、ランデブのRCS噴射の記録を表にする。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=41） |

## 4. 文書×機能マトリクス（全件）

| ID | 文書番号 | 表題 | 全般 | HEP | PRP | JET | RJD | HTR | RM | OPS | 出典 | URL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | ● | ● | ● | ● | ● | ● | ● | ● | 新規 | https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf |
| RS-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book（SODB）Vol. 1 | ● |  | ● | ● |  | ● |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf |
| RS-05 | Orbit Ops Checklist Rev. M PCN-10 | Orbit Operations Checklist（ORB OPS） |  | ● |  | ● | ● |  | ● | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf |
| RS-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning System（訓練マニュアル） | ● | ● | ● |  |  |  | ● |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf |
| RS-07 | NASA-CR-185550 | IOA: FMEA/CIL Assessment Interim Report（1988年） | ● |  |  | ● |  |  |  | ● | 新規 | https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf |
| RS-08 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） |  |  |  |  |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf |
| RS-09 | STS-35 Mission Report | STS-35 Space Shuttle Mission Report（1991年） |  |  | ● | ● |  | ● |  |  | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf |
| RS-10 | STS-114 Mission Report | STS-114 Space Shuttle Mission Report（2005年） | ● |  |  | ● |  | ● |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf |
| RS-11 | STS-122 Mission Report | STS-122 Space Shuttle Mission Report（2008年） |  |  | ● |  |  | ● |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf |
| RS-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | ● |  | ● | ● |  |  |  | ● | 新規 | https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
