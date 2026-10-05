# ペイロード支援（PDRS・ODS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-PLS-001 |
| 表題 | ペイロード支援（PDRS・ODS）機能説明書 |
| 版・日付 | Rev. H／2026-10-03 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

ペイロードの遠隔操作・放出・回収（PDRS）と、国際宇宙ステーションへのドッキング（ODS）の機能と、構造・データ処理系・通信系・電力系とのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-PLS-01 | PDRSは、ペイロードなどの物体を遠隔で保持・操作し、物体や作業を遠隔で監視するためのハードウェア・ソフトウェア・インタフェースで、RMS、マニピュレータ位置決め機構（MPM）、保持ラッチ（MRL）、MCIU、専用の表示・操作器を含む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687） |
| F-PLS-02 | RMSはPDRSの機械アームで、ペイロードの放出・回収、EVA乗員の足部拘束具や作業台の足場の提供、宇宙ステーションの構成品の結合、ペイロードベイの点検などを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687） |
| F-PLS-03 | アームは6つの関節と先端のエンドエフェクタを持ち、長さ50フィート3インチ、6自由度である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688） |
| F-PLS-04 | MCIUは、SM GPC、表示・操作器、RMSとの情報のやり取りを取り扱い、故障条件を解析し、エンドエフェクタの自動捕獲・解放の手順を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689） |
| F-PLS-05 | ODSはシャトルを国際宇宙ステーション（ISS）にドッキングさせるためのもので、外部エアロック、トラス組立、APDSの3つの主要構成品から成り、ペイロードベイの576隔壁より後方に置かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/673） |
| F-PLS-06 | 外部エアロックは、ドッキング後に2機の間に気密の内部トンネルを形成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） |
| F-PLS-07 | APDSは、ほぼ同一のドッキング機構を各機に取り付けて、捕獲、動的減衰、位置合わせ、ハードドッキングを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-14 | 電力系（EPS） | 電力（28 VDC） | 受信（受電） | 3基の燃料電池は、打上げから着陸後の滑走終了まで、機体の28 V直流電力のすべてを発電する。（出典: https://www.spaceshuttleguide.com/system/electrical.htm）3基の燃料電池は独立した電源として動作し、それぞれが分離された28 V直流母線に同時に給電する。（出典: https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf） | 下位: IF-ECL-16 下位: IF-EPS-11 下位: IF-EPS-12 下位: IF-TCS-20 下位: IF-ECL-39 下位: IF-ECL-40 下位: IF-ECL-41 下位: IF-ECL-42 下位: IF-ECL-43 下位: IF-GNC-11 下位: IF-GNC-12 下位: IF-DPS-02 下位: IF-MPS-05 下位: IF-MPS-06 下位: IF-OMS-12 下位: IF-OMS-13 下位: IF-RCS-09 下位: IF-RCS-10 下位: IF-RCS-11 下位: IF-APU-17 下位: IF-APU-18 下位: IF-CT-12 下位: IF-CT-13 下位: IF-CW-01 下位: IF-PLS-01 下位: IF-PLS-02 下位: IF-MECH-01 |
| IF-ORB-47 | 構造（STR） | 構造・荷重 | 双方向 | ODSのトラス組立はペイロードベイに物理的に取り付けられ、ドッキング系の構成品を収める構造基盤となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674）中部胴体のシルロンジロンは、マニピュレータアーム（搭載時）とその格納装置の基部支持となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60） | 下位: IF-PLS-03 下位: IF-PLS-04 下位: IF-PLS-05 |
| IF-ORB-48 | データ処理系（DPS） | データ・指令 | 双方向 | PDRSは、SM GPC、電力分配系（EPDS）、CCTVなど他のオービタ系とインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687）MCIUの主な機能は、SM GPC、表示・操作器、RMSとの情報のやり取りを取り扱い、評価することである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689） | 下位: IF-DPS-13 |
| IF-ORB-49 | 通信・追跡（C&T） | データ・指令 | 双方向 | PDRSは、SM GPC、電力分配系（EPDS）、CCTVなど他のオービタ系とインタフェースを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687）ODSのトラス組立は、カメラ・照明組立などのランデブ・ドッキング支援機器を収める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674） | 下位: IF-CT-11 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-PLS-ARM-001](SSD-FD-PLS-ARM-001.md) | RMSアーム（ARM）機能説明書 |
| [SSD-FD-PLS-CTL-001](SSD-FD-PLS-CTL-001.md) | RMS制御（MCIU・D&C）（CTL）機能説明書 |
| [SSD-FD-PLS-MPM-001](SSD-FD-PLS-MPM-001.md) | MPM・保持ラッチ・投棄（MPM）機能説明書 |
| [SSD-FD-PLS-PRL-001](SSD-FD-PLS-PRL-001.md) | ペイロード保持ラッチ（PRL）機能説明書 |
| [SSD-FD-PLS-ODS-001](SSD-FD-PLS-ODS-001.md) | オービタ・ドッキング系（ODS）機能説明書 |
| [SSD-FD-PLS-OPS-001](SSD-FD-PLS-OPS-001.md) | PLS運用管理（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図66 PLS 機能構成、関係する公開文書は SSD-PLS-REF-001（図67 PLS 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** 外部エアロックの減圧・再与圧とEMU支援は、ECLSSのエアロック支援系（SSD-FD-ECL-ALS-001）で扱う。外部エアロックはODSを装備すると他の宇宙機とのドッキング能力を与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/443）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-PLS-01〜ACT-PLS-07）と図39 に示す。

> **注記** 本系を扱う運用資料の章・節（●主対象・○関連）は、運用飛行規則が A10（○）、A12（●）、A15（○）（[SSD-OPS-REF-001](SSD-OPS-REF-001.md) §3・図10）、乗員運用マニュアルが 2.11（○）、2.15（○）、2.19（●）、2.20（○）、2.21（●）、第3章（○）（[SSD-OPS-REF-002](SSD-OPS-REF-002.md) §3・図11）である。

> **注記** 下位機能説明書6件（ARM・CTL・MPM・PRL・ODS・OPS）と図66への展開を追加した。IF-ORB-47（構造）は、MPM・保持ラッチ・ODSの取付けの3つの下位IF（IF-PLS-03〜05）に分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702）

> **注記** IF-ORB-48（DPS）とIF-ORB-49（C&T）は、DPS・C&Tがすでに定義した下位IF（IF-DPS-13・IF-CT-11）を同じ番号のまま図66に描いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687）

> **注記** PLSの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-PLS-001](SSD-REQ-PLS-001.md) に示す。

> **注記** PLSの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-PLS-001](SSD-FMEA-PLS-001.md) に示す。

> **注記** RMS によるペイロード放出とランデブー・ODS によるドッキングのシナリオ（図94・図96）は [SSD-UC-ORB-001](SSD-UC-ORB-001.md) に示す（SysML v2 テキスト：model/SSD-UC-ORB-001.sysml）。

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p687） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/687
2. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p688） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/688
3. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p689） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/689
4. Shuttle Crew Operations Manual 2.19 Orbiter Docking System（USA007587 Rev. A CPN-1、PDF p673） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/673
5. Shuttle Crew Operations Manual 2.19 Orbiter Docking System（USA007587 Rev. A CPN-1、PDF p674） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674
6. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p60） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60
7. Space Shuttle Guide – Electrical System — https://www.spaceshuttleguide.com/system/electrical.htm
8. NASA Space Shuttle Fuel Cell Power Plants（2002、Beloit College 転載） — https://chemistry.beloit.edu/edetc/nanolab/fuelcell2/NASA%20Space%20Shuttle%20Fuel%20Cell%20Power%20Plants%20(2002).pdf
9. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p443） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/443
10. Shuttle Crew Operations Manual 2.21 Payload Deployment and Retrieval System（USA007587 Rev. A CPN-1、PDF p702） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/702

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（Rev. I で図2に追加したブロック。公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. B | 2026-10-01 | 運用飛行規則・乗員運用マニュアルの該当章・節（SSD-OPS-REF-001・002、図10・図11）を注記（Rev. L） |
| Rev. C | 2026-10-01 | IF-ORB-14 の上位・下位を所有文書（SSD-FD-EPS-001）にそろえた（Rev. M） |
| Rev. D | 2026-10-01 | IF-ORB-14 に下位 IF（IF-GNC-11 ほか14件）を付記、IF-ORB-48 に下位 IF（IF-DPS-13）を付記、IF-ORB-49 に下位 IF（IF-CT-11）を付記（Rev. R） |
| Rev. E | 2026-10-02 | 下位機能説明書（6件）と図66への展開を追加し、IF-ORB-14・47 に下位IF（IF-PLS）を付記、注記（IFの分け方）を追加（Rev. V） |
| Rev. F | 2026-10-02 | 要求文書 SSD-REQ-PLS-001 への参照を注記（Rev. W） |
| Rev. G | 2026-10-02 | 故障解析表 SSD-FMEA-PLS-001 への参照を注記（Rev. X） |
| Rev. H | 2026-10-03 | 運用シナリオ・ユースケース定義書 SSD-UC-ORB-001 への参照を注記（Rev. AH） |
