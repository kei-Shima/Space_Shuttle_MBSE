# 環境制御・生命維持系（ECLSS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECLSS-001 |
| 表題 | 環境制御・生命維持系（ECLSS）機能説明書 |
| 版・日付 | Rev. J／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

ECLSSの機能と、EPS・APU/HYD・アビオニクスとのインタフェースを示し、下位の機能説明書（図3）と機能別関連文書一覧への索引とする。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECLSS-01 | ECLSSは、圧力制御系、大気再生系、能動熱制御系、給水・廃水系の4系統から成り、乗員とアビオニクスに与圧された居住環境を提供するとともに、オービタの熱的安定を保ち、水と乗員の廃棄物の貯蔵・処分を管理する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/357） |
| F-ECLSS-02 | ECLSSは、機体の熱的安定を維持し、乗員と搭載アビオニクスに与圧された居住環境を提供するとともに、水と乗員廃棄物の貯蔵・処理を担い、機能的に4つの系に分けられる。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf） |
| F-ECLSS-03 | 乗員室は14.7±0.2 psiaに与圧され、平均で窒素80%・酸素20%の混合気に維持される。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html） |
| F-ECLSS-04 | 乗員室の空気は水酸化リチウム／活性炭キャニスタを通され、二酸化炭素が除去される。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS.pdf） |
| F-ECLSS-05 | フラッシュエバポレータ（FES）は上昇・再突入時の主冷却源で、軌道上では放熱器の補助として使われる。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| F-ECLSS-06 | 再突入で高度約100,000 ft以下になるとFESでは十分に冷却できなくなり、以降は地上冷却が接続されるまでアンモニアボイラがフレオンループの熱を排出する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-09 | 電力系（EPS） | 推進薬・流体 | 受信 | 反応剤貯蔵・分配（PRSD）サブシステムは、乗員室の与圧用に極低温酸素をECLSSへ供給する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm） | 下位: IF-ECL-01 |
| IF-ORB-10 | 電力系（EPS） | 推進薬・流体 | 受信 | 燃料電池の生成水は乗員室下部デッキの飲料水タンクへ送られ、乗員の飲用やフレオン冷却ループの冷却に使われる。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-10 |
| IF-ORB-11 | 電力系（EPS） | 熱 | 受信 | 燃料電池の排熱は、熱交換器を通じてフレオン冷却ループへ移される。（出典: https://www.american-spacecraft.org/documents/sp-407/chapter-3.html） | 下位: IF-ECL-09 |
| IF-ORB-12 | 補助動力・油圧（APU/HYD） | 熱 | 送信 | 各油圧系は油圧／フレオン熱交換器を備える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83）軌道上では、油圧作動油はフレオンループの熱で保温される。（出典: https://www.american-spacecraft.org/documents/sp-407/chapter-3.html） | 下位: IF-ECL-11 |
| IF-ORB-13 | データ処理系（DPS） | 熱 | 送信 | 乗員室とフライトデッキの電子機器の排熱は、循環する冷却水系で集められ、ペイロードベイドアの放熱パネルへ運ばれる（図ではアビオニクスの代表としてDPSに接続）。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS.pdf） | 下位: IF-ECL-08 下位: IF-ECL-25 |
| IF-ORB-14 | 電力系（EPS） | 電力（28 VDC） | 受信（受電） | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm）3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-16 下位: IF-EPS-11 下位: IF-EPS-12 下位: IF-TCS-20 下位: IF-ECL-39 下位: IF-ECL-40 下位: IF-ECL-41 下位: IF-ECL-42 下位: IF-ECL-43 下位: IF-GNC-11 下位: IF-GNC-12 下位: IF-DPS-02 下位: IF-MPS-05 下位: IF-MPS-06 下位: IF-OMS-12 下位: IF-OMS-13 下位: IF-RCS-09 下位: IF-RCS-10 下位: IF-RCS-11 下位: IF-APU-17 下位: IF-APU-18 下位: IF-CT-12 下位: IF-CT-13 下位: IF-CW-01 下位: IF-PLS-01 下位: IF-PLS-02 下位: IF-MECH-01 |
| IF-ORB-19 | データ処理系（DPS） | データ・指令 | 双方向 | 水冷却ループのポンプ出口圧力とポンプ前後の差圧はシステム管理用GPCへ送られ、DPS表示（DISP 88 APU/ENVIRON THERM）に表示される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）煙検知素子は警報を発し、煙濃度の情報をCRTと計器盤L1に表示する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html）FES制御器は、GPC位置ではバックアップ飛行システム（BFS）の計算機が自動でオン・オフする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389） | 下位: IF-ECL-18 下位: IF-ECL-28 下位: IF-ECL-29 下位: IF-ECL-35 下位: IF-ECL-36 下位: IF-ECL-37 下位: IF-ECL-38 |
| IF-ORB-32 | 打上げ処理システム（KSC） | 熱 | 受信 | 着陸後の点検時は、左側のT-0アンビリカルに地上冷却装置をつないでフレオン冷却ループを冷やし、乗員とアビオニクスを冷却する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36）射点ではパッド地上冷却系がGSE熱交換器を通じて機上ループを十分に冷やし、軌道到達までの熱容量を確保する。（出典: https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf） | 上位: IF-SYS-09 下位: IF-ECL-34 |
| IF-ORB-34 | 誘導・航法・制御（GN&C） | 熱 | 送信 | IMUの強制空冷は3台のIMUすべてに供する3台のファンで行い、同時に使うのは1台である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477）ベイファンは交流で動くGould製TACANを冷却し、冷却を失ったTACANは5分以内に短絡しうる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467） | 下位: IF-ECL-32 |
| IF-ORB-35 | 電力系（EPS） | 熱 | 送信 | 前方アビオニクスベイ1〜3の電力制御組立・負荷制御組立・モータ制御組立・インバータはコールドプレートに搭載され、水冷却ループで冷却される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340）中胴の電気部品はコールドプレートに取り付けられフレオン21ループで冷却され、前部アビオニクスベイ1〜3の電力・負荷・モータ制御組立とインバータは水冷却ループで冷却され、インバータ配電組立は空冷である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | 下位: IF-ECL-33 下位: IF-EPS-14 |
| IF-ORB-41 | 警報系（C/W） | データ・指令 | 送信 | C/W系は、APU、データ処理系、ECLSS、電力系、飛行制御系、誘導・航法、油圧、主推進系、RCS、OMS、ペイロードとインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）主C/Wは、信号調整器または飛行前方MDMを経由してトランスデューサから最大120の入力を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | 下位: IF-GNC-20 下位: IF-DPS-11 下位: IF-MPS-07 下位: IF-MPS-08 下位: IF-OMS-14 下位: IF-OMS-15 下位: IF-OMS-16 下位: IF-RCS-12 下位: IF-RCS-13 下位: IF-RCS-14 下位: IF-RCS-15 下位: IF-APU-15 下位: IF-APU-16 下位: IF-CW-02 下位: IF-CW-03 |
| IF-ORB-44 | 乗員系・脱出系（CREW） | 推進薬・流体 | 送信 | 洗顔用の常温の温水は、ギャレーの補助ポートにつないだ個人衛生ホース（PHH）から供給される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209）ギャレー右下の補助ポートの迅速継手から、常温〜温水（70〜120°F）の飲料水を取り出せる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/466） | 下位: IF-CREW-01 下位: IF-CREW-02 |
| IF-ORB-45 | 船外活動（EVA/EMU） | 推進薬・流体 | 双方向 | サービス・冷却アンビリカル（SCU）は3本の水ホース、高圧酸素ホース、電気配線、水圧調整器から成り、EMUとオービタのエアロックを結んで、電力、有線通信、酸素供給、廃水排出、水冷、PLSSの酸素タンク・水タンク・電池の充填を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456）PLSSの酸素は、SCUを通じてオービタのECLSSから充填される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/447） | 下位: IF-ECL-20 下位: IF-EVA-04 下位: IF-EVA-14 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ECL-PCS-001](SSD-FD-ECL-PCS-001.md) | 圧力制御系（PCS／ARPCS）機能説明書 |
| [SSD-FD-ECL-ARS-001](SSD-FD-ECL-ARS-001.md) | 大気再生系（ARS）機能説明書 |
| [SSD-FD-ECL-ATCS-001](SSD-FD-ECL-ATCS-001.md) | 能動熱制御系（ATCS）機能説明書 |
| [SSD-FD-ECL-H2O-001](SSD-FD-ECL-H2O-001.md) | 給水・廃水系（H2O）機能説明書 |
| [SSD-FD-ECL-WCS-001](SSD-FD-ECL-WCS-001.md) | 廃棄物収集系（WCS）機能説明書 |
| [SSD-FD-ECL-ALS-001](SSD-FD-ECL-ALS-001.md) | エアロック支援系（ALS）機能説明書 |
| [SSD-FD-ECL-FDS-001](SSD-FD-ECL-FDS-001.md) | 煙検知・消火系（FDS）機能説明書 |
| [SSD-FD-ECL-CAB-001](SSD-FD-ECL-CAB-001.md) | 乗員室環境（制御対象）機能説明書 |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：NASA-KLASS教材は乗員室の組成を酸素21%・窒素79%としており、NASA HSFの値（平均で窒素80%・酸素20%）と異なる。本書はNASA HSFの値を採用した。（出典: http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS.pdf）

> **注記** 分類体系の違い：訓練マニュアル系の解説はECLSSを圧力制御・大気再生・能動熱制御・給水/廃水の4系統に分け、外部エアロックは別節で扱っている。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm）

> **注記** 一方、独立オービタ評価（IOA）は、給水、代謝廃棄物の収集、廃水、煙検知、消火を生命維持系（LSS）としてまとめ、エアロック支援系（ALSS）と組にして解析している。図3は1988年版の構成系統（水冷却ループは大気再生系に含めた）に、煙検知・消火と乗員室（制御対象）を加えた8ブロックで構成した。（出典: https://www.science.gov/topicpages/a/analysis+results+support）

関連文書：SSD-ECLSS-REF-001「スペースシャトル ECLSS 関連文書リスト」（前回作成、本プロジェクト内の仮番号。外部配布版にはリンクを含めない）

関連文書：[SSD-ECLSS-REF-002](SSD-ECLSS-REF-002.md)「ECLSS 機能別関連文書一覧（本パッケージ）」

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-ECLSS-01〜ACT-ECLSS-13）と図39 に示す。

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、ポンプ入口・出口圧力をCRTに表示するとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、アンモニアボイラの制御器もBFSの計算機が自動でオン・オフするとしていたが、SCOMはBFSがアンモニア制御器をオンにすることのみを記す（PDF p392）。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、前部アビオニクスベイの配電組立が水冷却ループで冷却されるとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、ECLSSを大気再生系、水冷却ループ系、大気再生圧力制御系、能動熱制御系、給水・廃水系、廃棄物収集系、エアロック支援系から成るとしていた。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/357）

> **注記** ECLSSの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-ECLSS-001](SSD-REQ-ECLSS-001.md) に示す。

> **注記** ECLSSの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-ECLSS-001](SSD-FMEA-ECLSS-001.md) に示す。

## 6. 参考文献

1. NSTS 1988 News Reference Manual – Environmental Control and Life Support System（NASA KSC） — https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_eclss.html
2. SCOM 2.9 ECLSS 抜粋（NASA-KLASS 教材） — http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS-Additional/RDG_ECLSS-SubSys_Advanced.pdf
3. NASA Human Space Flight – Shuttle Reference: ECLSS Overview — https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/overview.html
4. READING: ECLSS（NASA-KLASS 教材） — http://www.nasa-klass.com/Curriculum/Get_Training%201/ECLSS/RDG_ECLSS.pdf
5. Space Shuttle Guide – Environmental Systems — https://www.spaceshuttleguide.com/system/environmental%20Controls.htm
6. Science.gov（NTRS抄録：IOA Analysis of the life support and airlock support subsystems） — https://www.science.gov/topicpages/a/analysis+results+support
7. Space Shuttle Guide – Electrical System — https://www.spaceshuttleguide.com/system/electrical.htm
8. NASA Space Shuttle Fuel Cell Power Plants（2002、Beloit College 転載） — https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf
9. NASA SP-407 Space Shuttle, Chapter 3 Space Shuttle Vehicle — https://www.american-spacecraft.org/documents/sp-407/chapter-3.html
10. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
11. NASA Human Space Flight – Shuttle Reference: Smoke Detection and Fire Suppression — https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/cw/smokedet.html
12. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p36） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36
13. NASA LLIS – ECLSS Ground Coolant Systems（教訓文書） — https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf
14. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p477） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-154 AC Load Management During Ascent（続き）（PDF p1467） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467
16. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p340） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340
17. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
18. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
19. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
20. Shuttle Crew Operations Manual 2.5 Crew Systems（USA007587 Rev. A CPN-1、PDF p209） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/209
21. Shuttle Crew Operations Manual 2.12 Galley/Food（USA007587 Rev. A CPN-1、PDF p466） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/466
22. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p456） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456
23. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 Life Support System（Primary Oxygen System）（PDF p447） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/447
24. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 ECLSS 構成品（PDF p357） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/357
25. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p83） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83
26. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p380） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380
27. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p389） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/389
28. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p392） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 下位機能説明書（8件）と図3・図4への索引、IF-ORB-19、分類体系の注記を追加 |
| Rev. B | 2026-09-30 | 上位の IF の補完に伴い IF-ORB-32・IF-ORB-34・IF-ORB-35・IF-ORB-41・IF-ORB-44・IF-ORB-45 を追加（Rev. I） |
| Rev. C | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. D | 2026-10-01 | IF-ORB-19 に下位 IF-ECL-35・IF-ECL-36・IF-ECL-37・IF-ECL-38 を付記、IF-ORB-14 の上位・下位を所有文書（SSD-FD-EPS-001）にそろえた（Rev. M） |
| Rev. E | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（5文。うち本文を改めた4文に注記）（Rev. Q） |
| Rev. F | 2026-10-01 | IF-ORB-14 に下位 IF（IF-GNC-11 ほか14件）を付記、IF-ORB-41 に下位 IF（IF-GNC-20 ほか13件）を付記（Rev. R） |
| Rev. G | 2026-10-01 | IF-ORB-45 に下位 IF（IF-EVA-04・IF-EVA-14）を付記（Rev. T） |
| Rev. H | 2026-10-02 | IF-ORB-14 に下位 IF（IF-CW-01 ほか4件）を付記、IF-ORB-41 に下位 IF（IF-CW-02・IF-CW-03）を付記、IF-ORB-44 に下位 IF（IF-CREW-01・IF-CREW-02）を付記（Rev. V） |
| Rev. I | 2026-10-02 | 要求文書 SSD-REQ-ECLSS-001 への参照を注記（Rev. W） |
| Rev. J | 2026-10-02 | 故障解析表 SSD-FMEA-ECLSS-001 への参照を注記（Rev. X） |
