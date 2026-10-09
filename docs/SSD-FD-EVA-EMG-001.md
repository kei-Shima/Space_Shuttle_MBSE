# 非常時の手順（EMG）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-EVA-EMG-001 |
| 表題 | 非常時の手順（EMG）機能説明書 |
| 版・日付 | Rev. A／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-EVA-001 |
| 関連図 | SSD-SYS-ARC-001 図60 EVA 機能構成 |

## 1. 目的

EMUの非常時の手順（真空中の給水、着用中のLiOH・電池交換、SCU交換、コールドリスタート、化学汚染の除去、減圧症の処置）と、オービタの非常時EVA（PLBD・ラッチ・放熱器・RMS・PRLA・ODS）、緊急再与圧・SAFERによる救出・ISSからの非常進入の目的と条件を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-EVA-EMG-01 | 非常時EVAは計画外だがオービタと乗員の安全な帰還に必要なEVAで、オービタの機器が故障したときに行い、手順・工具・作業位置はどのミッションでも練習できるよう定めてある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/459） |
| F-EVA-EMG-02 | 想定するオービタの故障は放熱器アクチュエータ、ペイロードベイドア、隔壁ラッチ、中心線ラッチ、エアロックハッチ、RMS、隔壁カメラ、Ku帯アンテナ、ET扉で、故障ごとの処置（切り離し、ウインチ、ラッチ工具、手動操作など）を表に定める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/462） |
| F-EVA-EMG-03 | 着用中の真空中の給水は非常時EVAを行う場合に限る手順で、エアロックに入って外部ハッチを閉じ、SCUを通してEMUに給水する。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=142） |
| F-EVA-EMG-04 | 着用中に電池を交換してもEMUが計算するTIME EV・TIME LFはリセットされず、リセットにはコールドリスタートが要る。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=145） |
| F-EVA-EMG-05 | EMUのコールドリスタートはファンとO2を止めるため、エアロック圧8.0 psi以上でだけ行い、できるだけ速く行う。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=147） |
| F-EVA-EMG-06 | 主母線Aを失ってEMU 2の給水・廃水弁が動かなくなった場合は、EMU 2をSCU 1につないで給水・再充填を行うことがある。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=466） |
| F-EVA-EMG-07 | EMUの化学汚染が目視または検知器で確かめられた場合はヒドラジンの汚染除去の手順を行い、数の限られた検知管（Draeger）は汚染が疑われる場合にだけ使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1879） |
| F-EVA-EMG-08 | 汚染が確かめられた場合は進入からEMUの脱衣までに1時間55分（ISSのスラスタによる汚染は2時間10分）、疑いの場合は55分（同1時間10分）のEMU消耗品を残すようEVA作業を後回しにし、SCUにつないだベークアウトはヘルメットのパージ弁を開ければLiOHを消費しない。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=148） |
| F-EVA-EMG-09 | 減圧症治療アダプタ（BTA）は、減圧症にかかったEVA乗員の処置のためEMUを高圧治療室に変え、キャビン圧より8.0 psid高く加圧する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/451） |
| F-EVA-EMG-10 | BTAによる処置はカフ2・3では6 psidから始めて症状が消えなければ8 psidに上げ、カフ4では8 psidから始め、処置の時間と圧力の変更は地上の医師（Surgeon）が決める。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=160） |
| F-EVA-EMG-11 | カフ4の症状は医学的緊急であるII型の減圧症によることがあり、急いで再与圧することが重要なため、患者1人だけの再与圧になることがある。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=226） |
| F-EVA-EMG-12 | SAFERはEMUのPLSSの下に付ける単一系統の推進式背負い装置で、ISSなど大きな構造物にドッキング中でオービタが救出できない状況で離れたEVA乗員が自力で戻るためのもので、電池は最低13分、24個のGN2スラスタで6自由度の制御を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/458） |
| F-EVA-EMG-13 | EVA中のオービタは乗員のいる区域に応じてRCSジェットの禁止や駆動器の電源断などを構成し、この構成から外れるとEVA乗員がRCSの噴流を浴びるおそれがある。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=224） |
| F-EVA-EMG-14 | ISSからシャトルのエアロックへの非常進入では、EV1が先にシャトルのエアロックの後部ハッチを準備して開け、EV2はシャトルのハッチが開いてからISSのクルーロックのハッチを閉じる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=229） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EVA-07 | 減圧・再与圧 | データ・指令 | 送信 | EMUの汚染が疑われた場合はエアロックを5 psiaまで再与圧した状態で保ち、検知管による汚染試験を行ってから再与圧を続ける。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1873）汚染の除去では真空で15分保持した後に、エアロックを5 psiまで再与圧する（REPRESSの手順1〜8）。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=149） | — |
| IF-EVA-08 | 工具・収納 | 構造・荷重 | 受信 | 非常時EVAに使う中心線ラッチ工具・3点ラッチ工具、RMSロープリール、調整式テザーは左舷の軽量工具収納組立（TSA）に収める。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=106）ODSの96本ボルトのEVAでは、大型カッタとPRD 2個も左舷のTSAに収める。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=183） | — |
| IF-EVA-11 | 機械系（MECH） | 構造・荷重 | 送信 | 非常時EVAで、放熱器アクチュエータの切り離し、PLBD駆動系の切断・切り離しとウインチによる扉の閉鎖、隔壁・中心線ラッチ工具の取り付けを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/462）EVAウインチは、ペイロードベイドアの駆動系が故障したときに乗員が扉を閉じるためのものである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/457） | — |
| IF-EVA-12 | ペイロード支援（PDRS・ODS） | 構造・荷重 | 送信 | RMS・PRLAの故障時に、RMSの固縛、MPMの手動での格納・展開、関節の位置合わせ、グラプル軸の解放、PRLAの手動での開閉をEVAで行う。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=173）ODSとPMAの捕獲ラッチも、EVAで手動で解放できる。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=189） | — |
| IF-EVA-13 | 合図と運用管理 | データ・指令 | 受信 | カフチェックリストで減圧症の区分を判断し、カフ4ではABORT EVAとして患者をエアロックへ連れ戻して単独で再与圧し、DCSの処置の手順へ移る。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=195）DCSの処置の手順は、カフ4への進行を防ぐためにEVAを終えた後の処置を定める。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=226） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| EV-01 | JSC-48023 Rev. H（PCN-20） | EVA Checklist（汎用、2005年、PCN-20 2010年） | 12・14・19節（PDF p139〜168・p171〜192・p215〜230）：EMUの非常手順（真空中の給水、着用中のLiOH・電池交換、SCU交換、汚染除去、BTA）、RMS/PRLA・ODSの非常時EVA、緊急再与圧・SAFERによる救出・DCSの処置・ISSからの非常進入を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=141） |
| EV-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.11節 Simplified Aid for EVA Rescue・Operations（PDF p458〜462）：SAFERによる自力救出と、非常時EVAの定義、想定するオービタの故障と処置の表、減圧症の処置の概要を述べる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/462） |
| EV-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A15-6・A15-203・A15-205（PDF p1844・p1872〜1879）：非常時EVAの定義と、EMUの化学汚染の除去、EVA後のキャビン大気の浄化を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1879） |
| EV-06 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | C.12節（PDF p71）：エアロック支援系は非常時EVAに使われうるとしても非常用の機器ではなく、EMUも非常系とはしないとする。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71） |
| EV-07 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | EPS SSR-10（PDF p466）：主母線Aを失ってEMU 2の給水・廃水弁が動かない場合に、EMU 2をSCU 1につないで給水・再充填することを示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=466） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：SCOM（PDF p460）は減圧症の処置をエアロックを10.2 psia、キャビンを14.7 psiaに戻してBTAを付けるまでとするが、EVAチェックリスト（19.1）は症状が消えない場合にキャビンを最大15.56 psiaまで上げ、BTAで8 psiの処置を2時間行う。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=227）

> **注記** 検証メモ：SCOM（PDF p451）はBTAの加圧を8.0 psidとするが、チェックリストはカフ2・3の初期処置を6 psidとし、BTAの逃し弁は7.95〜8.45 psigで開く。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=163）

> **注記** 13節（TPS REPAIR）は飛行ごとの補足の頁を差し込む節で汎用版には内容がなく、16節の計画外・非常時EVAの作業も飛行ごとの資料による。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=169）

> **注記** IOA（1988年）はエアロック支援系の評価で、エアロックは非常時のEVAに使われうるとしても非常用の機器ではなく、同じ論理でEMUを非常系とすることも受け入れられないとした。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

> **注記** 減圧症の疑いの処置の流れ（図189、BTA・乗員室の加圧・打ち切り）は [SSD-MED-ORB-001](SSD-MED-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-MED-ORB-001.sysml）。

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p459） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/459
2. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p462） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/462
3. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 12-2 VACUUM H2O RECHARGE (MANNED)（PDF p142） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=142
4. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 12-5 BATTERY REPLACEMENT (MANNED)（続き）（PDF p145） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=145
5. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 12-7 EMU COLD RESTART (MANNED)（PDF p147） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=147
6. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-10 BUS LOSS: MNA（注23）（PDF p466） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=466
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-205 EMU DECONTAMINATION DURING EVA（PDF p1879） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1879
8. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 12.1 STS EVA DECONTAMINATION（PDF p148） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=148
9. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p451） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/451
10. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 12-20 BTA TREATMENT（PDF p160） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=160
11. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 19.1 DCS TREATMENT（PDF p226） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=226
12. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p458） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/458
13. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 19-8 EVA ORBITER CONFIG（PDF p224） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=224
14. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 19-13 CONTINGENCY SHUTTLE AIRLOCK INGRESS FROM ISS（PDF p229） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=229
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A15-203 Cabin Atmosphere Decontamination Following EVA（続き）（PDF p1873） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1873
16. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 12.1 STS EVA DECONTAMINATION（続き）（PDF p149） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=149
17. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 8-2 PORT LIGHTWEIGHT TOOL STOWAGE ASSEMBLY (TSA)（PDF p106） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=106
18. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 14-13 96 BOLT PRE-EVA TOOL CONFIG（PDF p183） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=183
19. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p457） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/457
20. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 14-3 RMS/PRLA CONTINGENCY EVA（PDF p173） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=173
21. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 14-19 CAPTURE LATCH MANUAL RELEASE (ODS/PMA)（PDF p189） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=189
22. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 15-3 DECOMPRESSION SICKNESS (DCS)（PDF p195） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=195
23. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 19.1 DCS TREATMENT（続き）（PDF p227） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=227
24. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 12-23 BTA TREATMENT（POST SUIT DOFFING）（PDF p163） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=163
25. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 13-1 TPS REPAIR（PDF p169） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=169
26. NASA-CR-185550 Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（McDonnell Douglas、1988年） 付録C.12節 LSS・ALSS の評価（SD/FS）（PDF p71） — https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=71
27. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-09 | 医療の構造と処置定義書 SSD-MED-ORB-001 への参照を注記（Rev. BP） |
