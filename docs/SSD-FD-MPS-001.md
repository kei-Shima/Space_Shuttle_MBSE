# 主推進系（MPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-MPS-001 |
| 表題 | 主推進系（MPS）機能説明書 |
| 版・日付 | Rev. J／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

主推進系の機能と、DPS・APU/HYD・EPS・外部タンクとのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-MPS-01 | SSMEは2本の固体ロケットモータの補助を受けながら、打上げから主エンジン燃焼停止（MECO）まで機体を所定速度へ加速する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577） |
| F-MPS-02 | 3基のSSMEは再使用可能な可変推力の液体ロケットエンジンで、液体水素を燃料兼冷却材、液体酸素を酸化剤とし、推進薬は外部タンク内の別々のタンクから供給される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579） |
| F-MPS-03 | 各エンジンの公称推力は海面で375,000 lb、真空中で470,000 lbである。（出典: https://www.american-spacecraft.org/documents/sp-407/chapter-3.html） |
| F-MPS-04 | SSMEは電子コントローラを備え、点検・始動・運転・監視・停止の全機能を担う。（出典: http://large.stanford.edu/courses/2011/ph240/nguyen1/docs/SSME_PRESENTATION.pdf） |
| F-MPS-05 | 油圧駆動のジンバルアクチュエータにより、各エンジンはピッチ・ヨー方向に首振りして推力方向を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579） |
| F-MPS-06 | MPSは、オービタの油圧系、電力系、マスターイベントコントローラ、データ処理系と重要なインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-06 | データ処理系（DPS） | データ・指令 | 受信 | DPSには、SSMEへ指令を送る3台のSSMEインタフェースユニットが含まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225）MPSは、データ処理系と重要なインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577） | 下位: IF-DPS-05 |
| IF-ORB-07 | 補助動力・油圧（APU/HYD） | 油圧 | 受信 | 各油圧系は、SSMEのジンバルによる推力方向制御と、SSMEの各種制御弁の作動に油圧を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） | 下位: IF-APU-09 |
| IF-ORB-14 | 電力系（EPS） | 電力（28 VDC） | 受信（受電） | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm）3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-16 下位: IF-EPS-11 下位: IF-EPS-12 下位: IF-TCS-20 下位: IF-ECL-39 下位: IF-ECL-40 下位: IF-ECL-41 下位: IF-ECL-42 下位: IF-ECL-43 下位: IF-GNC-11 下位: IF-GNC-12 下位: IF-DPS-02 下位: IF-MPS-05 下位: IF-MPS-06 下位: IF-OMS-12 下位: IF-OMS-13 下位: IF-RCS-09 下位: IF-RCS-10 下位: IF-RCS-11 下位: IF-APU-17 下位: IF-APU-18 下位: IF-CT-12 下位: IF-CT-13 下位: IF-CW-01 下位: IF-PLS-01 下位: IF-PLS-02 下位: IF-MECH-01 |
| IF-ORB-15 | 外部タンク | 推進薬・流体 | 受信 | 外部タンクは液体水素と液体酸素を3基のSSMEへ加圧供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67）オービタ内の17インチ液体酸素・液体水素切離しアンビリカルは、外部タンク投棄時に油圧で格納される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） | 上位: IF-SYS-01 下位: IF-MPS-01 下位: IF-MPS-02 |
| IF-ORB-21 | 誘導・航法・制御（GN&C） | データ・指令 | 受信 | オービタのFCSのATVCは、打上げと第1段上昇中は3基の主エンジンと2本のSRB、第2段上昇中は主エンジンのみの推力方向を定めて、姿勢と軌道を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514）ATVCの指令はGPCの飛行制御系が生成した位置指令に始まり、SSMEとSRBのサーボアクチュエータでノズルを首振りさせて終わる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514） | 下位: IF-GNC-16 下位: IF-GNC-17 |
| IF-ORB-29 | 打上げ処理システム（KSC） | 推進薬・流体 | 受信 | 打上げ前は、地上支援設備の液体酸素と液体水素が、それぞれのT-0アンビリカルから充填・排出弁と機体の供給配管マニホールドを通って送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605）打上げ前は、T-0アンビリカルから送るヘリウムで外部タンクを地上から加圧し、T-0アンビリカルのセルフシール式の迅速継手は離昇時に切り離される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593） | 上位: IF-SYS-09 下位: IF-MPS-03 下位: IF-MPS-04 |
| IF-ORB-41 | 警報系（C/W） | データ・指令 | 送信 | C/W系は、APU、データ処理系、ECLSS、電力系、飛行制御系、誘導・航法、油圧、主推進系、RCS、OMS、ペイロードとインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113）主C/Wは、信号調整器または飛行前方MDMを経由してトランスデューサから最大120の入力を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115） | 下位: IF-GNC-20 下位: IF-DPS-11 下位: IF-MPS-07 下位: IF-MPS-08 下位: IF-OMS-14 下位: IF-OMS-15 下位: IF-OMS-16 下位: IF-RCS-12 下位: IF-RCS-13 下位: IF-RCS-14 下位: IF-RCS-15 下位: IF-APU-15 下位: IF-APU-16 下位: IF-CW-02 下位: IF-CW-03 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-MPS-SSME-001](SSD-FD-MPS-SSME-001.md) | 主エンジン本体（SSME）機能説明書 |
| [SSD-FD-MPS-CTL-001](SSD-FD-MPS-CTL-001.md) | 主エンジン制御器（CTL）機能説明書 |
| [SSD-FD-MPS-PMS-001](SSD-FD-MPS-PMS-001.md) | 推進薬供給（PMS）機能説明書 |
| [SSD-FD-MPS-DMP-001](SSD-FD-MPS-DMP-001.md) | 充填・ダンプ・不活性化（DMP）機能説明書 |
| [SSD-FD-MPS-HE-001](SSD-FD-MPS-HE-001.md) | ヘリウム・空圧（HE）機能説明書 |
| [SSD-FD-MPS-TVC-001](SSD-FD-MPS-TVC-001.md) | 油圧・推力方向制御（TVC）機能説明書 |
| [SSD-FD-MPS-OPS-001](SSD-FD-MPS-OPS-001.md) | MPS運用管理（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図50 MPS 機能構成、関係する公開文書は SSD-MPS-REF-001（図51 MPS 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** Wikipediaは打上げ時の推力を1基あたり418,000 lbfとしており、NASA SP-407の公称値（海面375,000 lb）と一致しない。設計値として使う場合は推力レベルの定義を一次資料で確認すること。（出典: https://en.wikipedia.org/wiki/Space_Shuttle_main_engine）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-MPS-01〜ACT-MPS-11）と図39 に示す。

> **注記** 下位の展開で、IF-ORB-15（外部タンク）は17インチ切離し部を通るLO2・LH2の供給・充填（IF-MPS-01）とGO2・GH2のアレージ加圧（IF-MPS-02）に、IF-ORB-29（KSC）はT-0アンビリカルからの推進薬の充填（IF-MPS-03）とETの地上ヘリウム加圧（IF-MPS-04）に分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593）

> **注記** IF-ORB-14（EPSの所有）は、主エンジン制御器への交流（IF-MPS-05）と、推進薬管理系・ヘリウム系の弁とトランスデューサへの直流（IF-MPS-06）の代表2本に分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577）

> **注記** IF-ORB-41（警報系の所有）は、ヘリウムのタンク圧・調圧器圧（IF-MPS-07）とLO2・LH2のマニホールド圧（IF-MPS-08）のハードウェア警報の2本に分けた。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97）

> **注記** IF-ORB-06（DPS）、IF-ORB-07（APU/HYD）、IF-ORB-21（GN&C）は7系のほかの親が所有するため本書では下位IFを定義せず、所有側の下位IFを主エンジン制御器（CTL）と油圧・推力方向制御（TVC）の下位ブロックに接続した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/578）

> **注記** 本書の解釈：SCOM（PDF p577）はMPSの構成に外部タンクを含めるが、本書では外部タンクを外部の要素（SSD-FD-ET-001）とし、その間のIFをIF-ORB-15の下位で扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577）

> **注記** 検証メモ：F-MPS-03の公称推力（海面375,000 lb・真空470,000 lb）はSCOMの100%の推力と一致し、既存の注記にあるWikipediaの1基418,000 lbfはSCOMの109%の海面推力417,300 lbに近い（本書の解釈）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579）

> **注記** MPSの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-MPS-001](SSD-REQ-MPS-001.md) に示す。

> **注記** MPSの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-MPS-001](SSD-FMEA-MPS-001.md) に示す。

> **注記** MPS の推進薬・加圧ガス・ヘリウムの経路と、流れる量は [SSD-IBD-ORB-001](SSD-IBD-ORB-001.md) に示す（SysML v2 テキスト：SysML/SSD-IBD-ORB-001.sysml）。

> **注記** 主推進系（MPS）の状態と遷移（図138）は [SSD-BEH-ORB-006](SSD-BEH-ORB-006.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-006.sysml）。

## 6. 参考文献

1. NASA SP-407 Space Shuttle, Chapter 3 Space Shuttle Vehicle — https://www.american-spacecraft.org/documents/sp-407/chapter-3.html
2. Space Transportation System Training Data – SSME Orientation（Stanford 転載） — http://large.stanford.edu/courses/2011/ph240/nguyen1/docs/SSME_PRESENTATION.pdf
3. Wikipedia – RS-25 — https://en.wikipedia.org/wiki/Space_Shuttle_main_engine
4. Space Shuttle Guide – Electrical System — https://www.spaceshuttleguide.com/system/electrical.htm
5. NASA Space Shuttle Fuel Cell Power Plants（2002、Beloit College 転載） — https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf
6. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p514） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514
7. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p605） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/605
8. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p593） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/593
9. Shuttle Crew Operations Manual 2.2 Caution and Warning System（USA007587 Rev. A CPN-1、PDF p113） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/113
10. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Power Supply（PDF p115） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/115
11. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p577） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577
12. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p579） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/579
13. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p225） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225
14. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p83） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83
15. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p67） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67
16. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表7-3 Hardware C&W（PDF p97） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97
17. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p578） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/578

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | 上位の IF の補完に伴い IF-ORB-21・IF-ORB-29・IF-ORB-41 を追加（Rev. I） |
| Rev. B | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. C | 2026-10-01 | IF-ORB-14 の上位・下位を所有文書（SSD-FD-EPS-001）にそろえた（Rev. M） |
| Rev. D | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（9文）（Rev. Q） |
| Rev. E | 2026-10-01 | 下位機能説明書（7件）と図への展開を追加し、IF-ORB-14・IF-ORB-15・IF-ORB-29・IF-ORB-41を下位IF（IF-MPS-01〜08）に分け、IF-ORB-06・IF-ORB-07・IF-ORB-21は所有側の下位IFとの接続を示した（Rev. R）（Rev. R） |
| Rev. F | 2026-10-02 | IF-ORB-14 に下位 IF（IF-CW-01 ほか4件）を付記、IF-ORB-41 に下位 IF（IF-CW-02・IF-CW-03）を付記（Rev. V） |
| Rev. G | 2026-10-02 | 要求文書 SSD-REQ-MPS-001 への参照を注記（Rev. W） |
| Rev. H | 2026-10-02 | 故障解析表 SSD-FMEA-MPS-001 への参照を注記（Rev. X） |
| Rev. I | 2026-10-03 | 内部ブロック・流れ定義書 SSD-IBD-ORB-001 への参照を注記（Rev. AN） |
| Rev. J | 2026-10-04 | 系の状態遷移定義書その2 SSD-BEH-ORB-006 への参照を注記（Rev. AX） |
