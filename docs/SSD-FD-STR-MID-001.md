# 中胴・ペイロードベイ（MID）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-STR-MID-001 |
| 表題 | 中胴・ペイロードベイ（MID）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-STR-001 |
| 関連図 | SSD-SYS-ARC-001 図70 STR 機能構成 |

## 1. 目的

ペイロードベイを形作る中胴の構造、縦通材、主脚の内側の支えを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-STR-MID-01 | 中胴は前胴・後胴・翼とつながり、ペイロードベイドア・ヒンジ・固定金具・前部翼グラブなどを支えてペイロードベイを形作る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59） |
| F-STR-MID-02 | 中胴は主にアルミニウムの構造で、長さ60 ft・幅17 ft・高さ13 ft、重量約13,502 lbである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59） |
| F-STR-MID-03 | 中胴は12の主フレーム組立で安定させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59） |
| F-STR-MID-04 | 縦通材は主な曲げ部材であるとともに、ペイロードベイのペイロードからの縦方向の荷重を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60） |
| F-STR-MID-05 | シルの縦通材は、マニピュレータアーム・Ku帯アンテナ・ペイロードベイドアの作動系の取付けの基盤となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60） |
| F-STR-MID-06 | 翼の前方の側壁は主脚の内側の支えとなり、脚の横方向の荷重はすべて中胴が受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60） |
| F-STR-MID-07 | 飛行データの解析から、下部の中胴の縦通材に捩り帯を足し、降下時の熱勾配に対して正の安全余裕を確保した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-PLS-03 | MPM・保持ラッチ・投棄 | 構造・荷重 | 双方向 | RMSはペイロードベイの左舷の縦通材に取り付け、受け台の3つのMPM台座のMRLで打上げ・突入の間アームを固定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687） | 上位: IF-ORB-47 |
| IF-PLS-04 | ペイロード保持ラッチ | 構造・荷重 | 双方向 | ブリッジ金具は、ペイロードの荷重をオービタ構造へ伝え、PRLAとAKAの構造の取付面となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702） | 上位: IF-ORB-47 |
| IF-PLS-05 | オービタ・ドッキング系 | 構造・荷重 | 双方向 | トラス組立はドッキング系の構成品を収める構造の基盤で、ペイロードベイに取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） | 上位: IF-ORB-47 |
| IF-MECH-02 | ペイロードベイドア | 構造・荷重 | 双方向 | 各ペイロードベイドアは、13のヒンジ（固定5・浮動8）で中胴につながる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627） | 上位: IF-ORB-38 |
| IF-MECH-04 | ベント・ETアンビリカル扉 | 構造・荷重 | 双方向 | 能動ベント系は胴体の左右各7つ、計14のベント口から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） | 上位: IF-ORB-38 |
| IF-STR-03 | 熱防護系（TPS） | 熱 | 受信 | 突入中は、TPSの材料がアルミニウムとグラファイトエポキシの外板を350°Fを超える温度から守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） | 上位: IF-ORB-37 |
| IF-STR-05 | 前胴・前部RCSモジュール | 構造・荷重 | 双方向 | 中胴の前後の端は開いていて、補強した外板と縦通材が前胴・後胴の隔壁と結合する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59） | — |
| IF-STR-06 | 後胴・推力構造・ポッド | 構造・荷重 | 双方向 | 後胴は中胴の主縦通材への荷重経路と、前部隔壁を越える主翼桁の連続を受け持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61） | — |
| IF-STR-07 | 翼・ボディフラップ・尾翼 | 構造・荷重 | 双方向 | 翼は上面の引張ボルトの継手と、胴体の通し構造の下面のせん断継手で胴体に取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59） | — |
| IF-STR-10 | 構造運用管理 | データ・指令 | 受信 | 中胴の構造の応力は機体の温度勾配で生じるため、接着層の温度の限界を守るよう姿勢を管理する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2101） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| ST-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 1.2節 Midfuselage（PDF p59〜60）：中胴の構造と縦通材を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59） |
| ST-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A2-110（PDF p618）：軌道離脱前の構造の熱の調整の姿勢の手順を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=618） |
| ST-06 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | （PDF p18）：縦通材・キールのトラニオンの計測で縦通材とペイロードの相互作用を調べたことを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=18） |

## 5. 注記（出典間の相違・構成変更）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p59） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59
2. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p60） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60
3. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p687） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687
4. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p702） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702
5. Shuttle Crew Operations Manual 2.19 Orbiter Docking System（USA007587 Rev. A CPN-1、PDF p674） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674
6. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p627） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627
7. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
8. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p65） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65
9. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p61） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A18-401 THERMAL PROTECTION SYSTEM (TPS) BONDLINE TEMPERATURES（PDF p2101） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2101
11. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-02 | 初版作成（公開資料に基づく検討用） |
