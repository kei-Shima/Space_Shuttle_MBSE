# 推進薬貯蔵・分配（PRP）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-RCS-PRP-001 |
| 表題 | 推進薬貯蔵・分配（PRP）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-RCS-001 |
| 関連図 | SSD-SYS-ARC-001 図54 RCS 機能構成 |

## 1. 目的

各RCSモジュールの燃料・酸化剤タンクに推進薬を貯え、タンク隔離弁・マニホールド隔離弁・後部のクロスフィード弁を通して噴射器へ分配する機能と、PVT法による推進薬量の計量・漏れ検知、OMSとの連結を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-RCS-PRP-01 | 各RCSモジュールには燃料タンクと酸化剤タンクが1基ずつあり、前部と各ポッドのタンクの公称満載量は酸化剤1,464 lb、燃料923 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/720） |
| F-RCS-PRP-02 | 各タンクはヘリウムで加圧されて推進薬を内蔵の表面張力式推進薬捕捉装置へ押し出し、前部RCSのタンクは主に低重力用に、後部RCSのタンクは高重力・低重力の両方で働くよう設計されている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/720） |
| F-RCS-PRP-03 | 後部RCSのタンクには、アボートと突入の段階で正しく働くよう、突入用コレクタ、サンプ、ガストラップが組み込まれている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/720） |
| F-RCS-PRP-04 | タンク隔離弁は推進薬タンクとマニホールド隔離弁の間にある交流電動弁で、前部RCSと後部の1/2マニホールド系には1対、後部の3/4/5マニホールド系にはA・Bの2対が並列に入る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722） |
| F-RCS-PRP-05 | タンク隔離弁のスイッチをOPENにすると電動機制御組立が交流電動弁のアクチュエータに給電し、弁が指令位置に達すると電動機制御組立の論理が給電を断つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722） |
| F-RCS-PRP-06 | 後部のタンク隔離弁は、スイッチがGPC位置のとき、OPS 1・3・6で自動クロスフィードのためにGPCから開閉を指令できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723） |
| F-RCS-PRP-07 | マニホールド隔離弁のうち1〜4番は交流電動弁で、MANIFOLD ISOLATIONスイッチが燃料・酸化剤の1対ずつを操作し、GPC位置はOPS 2・8でだけ使える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723） |
| F-RCS-PRP-08 | 5番マニホールドの弁はバーニア噴射器だけに推進薬を送るソレノイド式のラッチ弁で、そのスイッチはGPC位置へのばね戻りである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723） |
| F-RCS-PRP-09 | 一方の後部ポッドの推進薬系を噴射器から切り離す必要がある場合は、交流電動の後部RCSクロスフィード弁を開き、他方のポッドの推進薬で左右の噴射器へ供給できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/724） |
| F-RCS-PRP-10 | 後部RCSの噴射器はストレートフィード、クロスフィード（一方のRCSから後部の全噴射器へ）、連結（OMSの推進薬から後部の全噴射器へ）のいずれかで推進薬を受け、前部RCSは後部RCSとのクロスフィードもOMSとの連結もできない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1134） |
| F-RCS-PRP-11 | 推進薬量はGPCが圧力・容積・温度（PVT）法で6基のタンクの使用可能量として計算し、対になるタンクの量の差があらかじめ定めた許容値を超えるかどうかで漏れを検知する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/721） |
| F-RCS-PRP-12 | 燃料と酸化剤の量の差が9.5%を超えると該当するRCSの赤色警報灯が点灯してBACKUP C/W ALARMが作動し、PASSでは同じモジュールの後続の漏れも検知できるよう9.5%のバイアスを加える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-OMS-11 | クロスフィード・RCS連結 | 推進薬・流体 | 受信 | OMS－RCSインタコネクトでは、OMSクロスフィード配管とRCSクロスフィード弁を通して、どちらかのOMSポッドの推進薬を後部RCSジェットへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656）OMSエンジンが故障した場合は、インタコネクトでOMS推進薬を後部RCSへ送り、後部RCSの+Xジェットで予定のOMS噴射を完了できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663） | 上位: IF-ORB-05 |
| IF-RCS-01 | ヘリウム加圧 | 推進薬・流体 | 受信 | ヘリウムタンクのガスを隔離弁・調圧器を経て、調圧器組立と推進薬タンクの間にある逆止弁組立を通して燃料タンクと酸化剤タンクのアレージへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727）調圧器は一次段で242〜248 psig、二次段で253〜259 psigに調圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725） | — |
| IF-RCS-02 | 主・バーニア噴射器 | 推進薬・流体 | 送信 | 推進薬タンクの燃料・酸化剤をタンク隔離弁とマニホールド隔離弁を通して各マニホールドの噴射器へ送り、マニホールド1〜4は主噴射器、5はバーニア噴射器に供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1134）推進薬は噴射器で霧化・着火して高温のガスと推力を生む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718） | — |
| IF-RCS-06 | 噴射器冗長管理 | データ・指令 | 双方向 | RMは、マニホールド隔離弁の4つのマイクロスイッチ離散信号（OX OP・OX CL・FU OP・FU CL）からマニホールドの状態を評価する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/731）OPS 2・8でfail-onが通報され、AUTO MANF CLが有効でスイッチがGPC位置なら、GPCが該当するマニホールドを自動で閉じる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723） | — |
| IF-RCS-08 | 熱制御（ヒータ） | 熱 | 受信 | 前部モジュールのパネルヒータと各ポッドの9ゾーンのヒータ（A・B系）が、タンクと配管の推進薬を概ね55〜75°Fに保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727）重要なヒータ回路はRCSのタンク・He配管、推進薬配管（RCSハウジング）、マニホールド配管を保護し、すべて冗長である。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1231） | — |
| IF-RCS-09 | 電力系（EPS） | 電力（28 VDC） | 受信 | 前部RCSの弁にはパネルMA73CのAC1・AC2・AC3 FWD RCS VLVの遮断器（9個）から、後部ポッドの弁にはAFT POD VLVの遮断器（9個）から三相交流を供給し、電動機制御組立（MCA）のロジック電源はMNA・MNB・MNCから受ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=756）後部のマニホールド隔離弁1〜4の弁ロジック電源はPOD AMC1〜3（MNA/B・MNB/C・MNC/A）の母線から得ており、これらの母線を失うとRCS PWR FAILとなる。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=755） | 上位: IF-ORB-14 |
| IF-RCS-12 | 警報系（C/W） | データ・指令 | 送信 | 推進薬タンクのアレージ圧が200 psia未満か312 psia超になると、該当するLEFT RCS・FWD RCS・RIGHT RCSの赤色灯を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735）燃料と酸化剤の量の差が9.5%を超えた場合も同じ灯を点灯させ、BACKUP C/W ALARMを作動させてDPSの表示に故障メッセージを送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735） | 上位: IF-ORB-41 |
| IF-RCS-16 | RCS運用管理 | データ・指令 | 受信 | 運用規則と手順に従い、パネルO7・O8のスイッチで推進薬系の弁（タンク隔離・マニホールド隔離・クロスフィード）を操作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742）トークバックは弁の対が開ならOP、閉ならCL、移動中や不一致ならバーバーポールを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| RS-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.22節 Propellant System（PDF p720〜725）：タンクと推進薬捕捉装置、交流電動のタンク隔離弁・マニホールド隔離弁・クロスフィード弁、PVT法の計量と9.5%の漏れ検知を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722） |
| RS-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A6-7（PDF p1138〜1139）：RCS推進薬タンクの喪失を、圧力185（190）psia未満、推進薬量0%（後部の軌道上は20%）以下、タンク隔離弁の閉故障、温度の逸脱、推進薬捕捉装置の破綻と定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1138） |
| RS-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 10.3b G23 RCS SYSTEM F(L,R)（PDF p761）：推進薬タンクの温度と圧力（220〜300 psi）の逸脱を、トランスデューサの故障とヒータ・サーモスタット回路の故障に切り分ける手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=761） |
| RS-04 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book（SODB）Vol. 1 | 3.4.3.2節（PDF p125・p127）：後部RCSの着陸時の搭載量上限（酸化剤1,473 lb・燃料920 lb）と、OMS-RCSの連結とRCS間のクロスフィードで許されるタンク差圧を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=127） |
| RS-06 | USA006019 Rev. A（C&W 21002） | Caution and Warning System（訓練マニュアル） | 表7-1（PDF p93）：F RCS LEAK（燃料・酸化剤の量の差9.5%超）、PVT（量の計算に要る圧力・温度の喪失）、TK P（アレージ圧の高低）のメッセージの条件を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=93） |
| RS-09 | STS-35 Mission Report | STS-35 Space Shuttle Mission Report（1991年） | Reaction Control Subsystem（PDF p11）：RCSが前部の投棄とOMSからの連結分を含めて計4,820 lbの推進薬を使ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=11） |
| RS-11 | STS-122 Mission Report | STS-122 Space Shuttle Mission Report（2008年） | Flight Day 10（PDF p20）：オービタによるISSのリブーストを左OMSの推進薬系と連結した状態で行ったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |
| RS-12 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | Reaction Control System（PDF p40）：前部・左・右のRCSの酸化剤・燃料の目標搭載量と、PASS・BFSのヘリウム初期重量（WHI）を表にする。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=40） |

## 5. 注記（出典間の相違・構成変更）

> **注記** タンクのアレージ圧はパネルO3のRCS/OMS/PRESS計器で、燃料・酸化剤の量はRCS/OMS PRPLT QTYのLEDで乗員が監視でき、O3の計器の値はPASSのGNC SYS SUMM 2とは別の経路から得ている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/721）

> **注記** 本書の解釈：推進薬量の計量（PVT）と漏れ検知はGPCのソフトウェアで行うが、SCOM 2.22節が推進薬系の節で述べることから、推進薬貯蔵・分配の機能とした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/721）

> **注記** 検証メモ：SCOMは前部・後部のタンクの公称満載量を酸化剤1,464 lb・燃料923 lbとし、SODB（3.4.3.2）は後部RCSの着陸時の搭載量を酸化剤1,473 lb・燃料920 lb（タンク設計量の99%）以下に制限している。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=125）

> **注記** マニホールド隔離弁は、マニホールドが閉じていてマニホールド圧がタンク側より30〜50 psi高いと逆流できる（SCOMの注記）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p720） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/720
2. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p722） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/722
3. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p723） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/723
4. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p724） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/724
5. Shuttle Crew Operations Manual 付録C Study Notes（USA007587 Rev. A CPN-1、PDF p1134） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1134
6. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p721） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/721
7. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p656） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/656
8. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p663） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663
9. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p727） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/727
10. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p725） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/725
11. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p718） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/718
12. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p731） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/731
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A6-252 OMS/RCS POD HEATER（PDF p1231） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1231
14. JSC-48027 Rev. F Malfunction Procedures（MAL） RCS 10.2a RCS VLV tb - bp（PDF p756） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=756
15. JSC-48027 Rev. F Malfunction Procedures（MAL） RCS 10.1c RCS PWR FAIL（PDF p755） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=755
16. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p735） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/735
17. Shuttle Crew Operations Manual 2.22 Reaction Control System（USA007587 Rev. A CPN-1、PDF p742） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/742
18. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.3.2 Reaction Control Subsystems（PDF p125） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=125
19. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
