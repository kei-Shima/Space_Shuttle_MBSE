# 外部系（追跡・通信網／ミッション管制／打上げ処理）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-EXT-001 |
| 表題 | 外部系（追跡・通信網／ミッション管制／打上げ処理）機能説明書 |
| 版・日付 | Rev. F／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-SYS-IDX-001 |
| 関連図 | SSD-SYS-ARC-001 図1 システム構成 |

## 1. 目的

飛行系と接続する地上・宇宙インフラの機能を、ブロックごとの節（アンカー）に分けて示す。

## 2. 機能

### 追跡・通信網（TDRS／STDN）（NET）

| 機能番号 | 内容 |
|---|---|
| F-NET-01 | S帯のフォワードリンクとリターンリンクは、地上局網STDNまたはTDRSを経由する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162） |
| F-NET-02 | 完全運用時のTDRSシステムは、静止軌道上で約130°離れた東西2機の衛星から成り、両機ともホワイトサンズ地上局（WSGT）が支援する。（出典: https://spaceshuttleguide.com/system/communications.htm） |
| F-NET-03 | 通常高度のオービタがどちらの衛星とも見通せない不可視域（ZOE）が、インド洋上空に存在する。（出典: https://spaceshuttleguide.com/system/communications.htm） |
| F-NET-04 | WSGTは、シャトルのS帯・Ku帯リターンリンク信号を処理する。（出典: https://www.science.gov/topicpages/k/ku+band.html） |

### ミッション管制センター（JSC）（MCC）

| 機能番号 | 内容 |
|---|---|
| F-MCC-01 | 飛行管制官は、GPC収集データ、ペイロードデータ、計測データ、機上音声を含むダウンリンクを通じて、機上システムの状態を監視する。（出典: https://www.spaceshuttleguide.com/system/navigation.htm） |
| F-MCC-02 | DPS担当管制官は、5台のGPC、飛行重要・打上げデータライン、マスメモリなどを含むデータ処理系の状態を判断する。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts-jsc.html） |
| F-MCC-03 | 軌道離脱噴射の目標データは地上で計算され、アップリンクで機上のGPCに格納される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663） |

### 打上げ処理システム（KSC）（LPS）

| 機能番号 | 内容 |
|---|---|
| F-LPS-01 | 2系統の双方向の打上げデータバス（LDB）が、機上コンピュータ系と打上げ処理システムを結ぶ。（出典: https://dl.acm.org/doi/pdf/10.1145/358234.358246） |
| F-LPS-02 | 機体組立棟（VAB）で移動式発射台の上に外部タンク・SRB・オービタを結合して統合機体を点検した後、移動式発射台が機体全体を射点へ運び、射点で整備・点検を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/37） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-SYS-04 | オービタ（OV） | RF（無線） | 双方向 | S帯のフォワードリンクとリターンリンクは、地上局網STDNまたはTDRSを経由する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162）S帯とKu帯のリンクは、いずれもNASAのTDRSシステムとの間で維持される。（出典: https://klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_08_communications_tracking.htm） | 下位: IF-ORB-16 |
| IF-SYS-05 | ミッション管制センター（JSC） | データ・指令 | 双方向 | TDRSSのホワイトサンズ地上局（WSGT）が、シャトルのS帯・Ku帯リターンリンク信号を処理する。（出典: https://www.science.gov/topicpages/k/ku+band.html）ミッション管制センターの飛行管制官は、機体から地上へのデータ伝送（ダウンリンク）で機上システムの状態を監視する。（出典: https://www.spaceshuttleguide.com/system/navigation.htm） | — |
| IF-SYS-06 | オービタ（OV） | データ・指令 | 双方向 | 2系統の双方向の打上げデータバス（LDB）が、機上コンピュータ系と打上げ処理システムを結ぶ。（出典: https://dl.acm.org/doi/pdf/10.1145/358234.358246） | 下位: IF-ORB-17 |
| IF-SYS-09 | オービタ（OV） | 推進薬・流体 | 送信 | 打上げ前は、地上支援設備の液体酸素と液体水素が、それぞれのT-0アンビリカルから充填・排出弁と機体の供給配管マニホールドを通って送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605）後部電力制御組立の電力接触器は、燃料電池が給電を引き継ぐまで、地上から供給される28 V直流電力をT-0アンビリカルを通じてオービタへ配電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/338）着陸後は、右側のT-0アンビリカルに地上の空調パージ装置をつなぎ、後部胴体、ペイロードベイ、前部胴体、主翼、垂直尾翼、OMS/RCSポッドへ冷却空気を送って再突入の熱を除く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36） | 下位: IF-ORB-29 下位: IF-ORB-30 下位: IF-ORB-31 下位: IF-ORB-32 下位: IF-ORB-33 |
| IF-SYS-10 | 固体ロケットブースタ（SRB×2） | 構造・荷重 | 双方向 | 各SRBは4本のホールドダウンポストを持ち、移動式発射台の支持ポストにはめ込んで、ホールドダウンボルトで固定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73）ボルト上端のフランジブルナットには2個のNSI起爆器があり、固体ロケットモータの点火指令で点火されて機体を解放する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73） | 下位: IF-SRB-03 |
| IF-ORB-16 | 通信・追跡（C&T） | RF（無線） | 双方向 | S帯FM、S帯PM、Ku帯、UHFの各系が、RF信号でオービタと地上の間の情報を伝送する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159）UHFは船外活動中の宇宙飛行士との音声・データ通信と、大気圏飛行中の航空交通管制用の音声に使われる。（出典: https://klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_08_communications_tracking.htm） | 上位: IF-SYS-04 下位: IF-CT-01 下位: IF-CT-02 下位: IF-CT-03 下位: IF-CT-04 |
| IF-ORB-17 | データ処理系（DPS） | データ・指令 | 双方向 | 2系統の双方向の打上げデータバス（LDB）が、機上コンピュータ系と打上げ処理システムを結ぶ。（出典: https://dl.acm.org/doi/pdf/10.1145/358234.358246） | 上位: IF-SYS-06 下位: IF-DPS-06 |
| IF-ORB-29 | 主推進系（MPS） | 推進薬・流体 | 送信 | 打上げ前は、地上支援設備の液体酸素と液体水素が、それぞれのT-0アンビリカルから充填・排出弁と機体の供給配管マニホールドを通って送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605）打上げ前は、T-0アンビリカルから送るヘリウムで外部タンクを地上から加圧し、T-0アンビリカルのセルフシール式の迅速継手は離昇時に切り離される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593） | 上位: IF-SYS-09 下位: IF-MPS-03 下位: IF-MPS-04 |
| IF-ORB-30 | 電力系（EPS） | 推進薬・流体 | 送信 | 打上げ前は地上支援設備が燃料電池の反応剤を補給して搭載量を満たし、T-2分35秒で充填を終える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347） | 上位: IF-SYS-09 下位: IF-EPS-01 |
| IF-ORB-31 | 電力系（EPS） | 電力（28 VDC） | 送信 | 後部電力制御組立の電力接触器は、燃料電池が給電を引き継ぐまで、地上から供給される28 V直流電力をT-0アンビリカルを通じてオービタへ配電する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/338） | 上位: IF-SYS-09 下位: IF-EPS-02 |
| IF-ORB-32 | 環境制御・生命維持（ECLSS） | 熱 | 送信 | 着陸後の点検時は、左側のT-0アンビリカルに地上冷却装置をつないでフレオン冷却ループを冷やし、乗員とアビオニクスを冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36）射点ではパッド地上冷却系がGSE熱交換器を通じて機上ループを十分に冷やし、軌道到達までの熱容量を確保する。（出典: https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf） | 上位: IF-SYS-09 下位: IF-ECL-34 |
| IF-ORB-33 | 構造（STR） | 推進薬・流体 | 送信 | 着陸後は、右側のT-0アンビリカルに地上の空調パージ装置をつなぎ、後部胴体、ペイロードベイ、前部胴体、主翼、垂直尾翼、OMS/RCSポッドへ冷却空気を送って再突入の熱を除く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36）ベント扉の一部には中間位置があり、非与圧区画を乾燥空気または窒素でパージできる。地上でのパージは温度調節・湿度管理・有害ガスの排除のために行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） | 上位: IF-SYS-09 下位: IF-TCS-17 |
| IF-ECL-34 | 能動熱制御系（ATCS） | 熱 | 送信 | 着陸後に地上冷却が始まるとアンモニアボイラを止め、GSE熱交換器で排熱する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392）射点ではパッド地上冷却系がGSE熱交換器を通じて機上ループを十分に冷やし、軌道到達までの熱容量を確保する。（出典: https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf） | 上位: IF-ORB-32 下位: IF-TCS-15 |

## 4. 注記（出典間の相違・構成変更）

> **注記** 飛行フェーズとアボートモードごとの追跡・通信網（TDRS／STDN）・打上げ処理システム（KSC）・ミッション管制センター（JSC）の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-NET・ACT-LPS・ACT-MCC）と図39 に示す。

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料はフォワードリンクを旧称アップリンク、リターンリンクを旧称ダウンリンクとしていたが、SCOMは地上局との直接の信号をアップリンク／ダウンリンク、TDRS経由の信号をフォワードリンク／リターンリンクと呼び分けている（2.4節、PDF p159）。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts-ovcomm.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、移動式発射台の方式により射点へ移動する前にVABの屋内で機体全体の点検を完了できるとしていた。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/stsover.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/37）

> **注記** 外部系を3つの部品（追跡・通信網、ミッション管制、打上げ処理・地上支援設備）に分けた SysML v2 モデルは [SSD-BLK-SYS-001](SSD-BLK-SYS-001.md) に示す（SysML v2 テキスト：SysML/SSD-BLK-SYS-001.sysml）。

## 5. 参考文献

1. NSTS 1988 News Reference Manual – Orbiter Communications（NASA KSC） — https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts-ovcomm.html
2. Space Shuttle Guide – Communications — https://spaceshuttleguide.com/system/communications.htm
3. Science.gov（ADS抄録：TDRSS S-shuttle unique receiver equipment） — https://www.science.gov/topicpages/k/ku+band.html
4. Space Shuttle Guide – Guidance, Navigation and Control — https://www.spaceshuttleguide.com/system/navigation.htm
5. NSTS 1988 News Reference Manual – Lyndon B. Johnson Space Center（NASA KSC） — https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts-jsc.html
6. The space shuttle primary computer system（Communications of the ACM, 1984） — https://dl.acm.org/doi/pdf/10.1145/358234.358246
7. NSTS 1988 News Reference Manual – Space Shuttle Overview（NASA KSC） — https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/stsover.html
8. NASA SP-504 Section 4 – Communications and Tracking（klabs 転載） — https://klabs.org/DEI/Processor/shuttle/sp-504/section_4/section_4_08_communications_tracking.htm
9. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p605） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605
10. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p338） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/338
11. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p36） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36
12. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p73） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73
13. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p593） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593
14. NASA LLIS – ECLSS Ground Coolant Systems（教訓文書） — https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf
15. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
16. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p162） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/162
17. Shuttle Crew Operations Manual 2.18 Orbital Maneuvering System（USA007587 Rev. A CPN-1、PDF p663） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/663
18. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p37） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/37
19. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p159） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159
20. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p347） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347
21. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p392） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | 上位の IF の補完に伴い IF-SYS-09・IF-SYS-10・IF-ORB-29・IF-ORB-30・IF-ORB-31・IF-ORB-32・IF-ORB-33・IF-ECL-34 を追加（Rev. I） |
| Rev. B | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. C | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（7文。うち本文を改めた2文に注記）（Rev. Q） |
| Rev. D | 2026-10-01 | IF-ORB-16 に下位 IF（IF-CT-01 ほか4件）を付記、IF-ORB-17 に下位 IF（IF-DPS-06）を付記、IF-ORB-29 に下位 IF（IF-MPS-03・IF-MPS-04）を付記（Rev. R） |
| Rev. E | 2026-10-02 | IF-SYS-10 に下位 IF（IF-SRB-03）を付記（Rev. V） |
| Rev. F | 2026-10-03 | 構造定義書 SSD-BLK-SYS-001 への参照を注記（Rev. AD） |
