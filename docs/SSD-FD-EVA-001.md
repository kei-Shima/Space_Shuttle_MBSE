# 船外活動（EVA/EMU）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-EVA-001 |
| 表題 | 船外活動（EVA/EMU）機能説明書 |
| 版・日付 | Rev. H／2026-10-09 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

船外活動（EVA）の運用区分と船外活動ユニット（EMU）の機能と、環境制御（エアロック支援・SCU）・通信系とのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-EVA-01 | EVAは乗員が与圧キャビンの保護環境を出て、宇宙服で宇宙の真空へ出る活動で、2回をペイロード用、1回をオービタの非常時用に確保する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/443） |
| F-EVA-02 | 各ミッションで宇宙服を2着搭載し、消耗品は2人・6時間のEVA 3回分を用意する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/443） |
| F-EVA-03 | EVAにはエアロックを使い、乗員が入った状態でエアロックを減圧して真空へ出る。これにより乗員室全体ではなく小さな容積だけを減圧できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/443） |
| F-EVA-04 | EVAには、計画、計画外、非常の3つの区分がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/443） |
| F-EVA-05 | EMUは、地球周回軌道でEVAを行う乗員に環境防護・可動性・生命維持・通信を提供する独立した人型のシステムである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/444） |
| F-EVA-06 | EMUは、脱出15分、有効作業6時間、進入15分、予備30分の、合計最大7時間のEVAに対応するよう設計されている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/444） |
| F-EVA-07 | 宇宙服組立（SSA）は胴体・手足・頭部を覆う人型の圧力容器で、服圧の保持、液冷の分配、酸素換気、EMU無線による心電図のダウンリンクなどを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/445） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-45 | 環境制御・生命維持（ECLSS） | 推進薬・流体 | 双方向 | サービス・冷却アンビリカル（SCU）は3本の水ホース、高圧酸素ホース、電気配線、水圧調整器から成り、EMUとオービタのエアロックを結んで、電力、有線通信、酸素供給、廃水排出、水冷、PLSSの酸素タンク・水タンク・電池の充填を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456）PLSSの酸素は、SCUを通じてオービタのECLSSから充填される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/447） | 下位: IF-ECL-20 下位: IF-EVA-04 下位: IF-EVA-14 |
| IF-ORB-46 | 通信・追跡（C&T） | RF（無線） | 双方向 | SSORは、オービタとISS・EMUの間の情報の伝送に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159）EVA通信系は、オービタのUHF系、EMU無線、EMU電気ハーネス、通信キャリア組立、生体センサなどから成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/450） | 下位: IF-CT-10 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-EVA-CHK-001](SSD-FD-EVA-CHK-001.md) | EMU点検・準備（CHK）機能説明書 |
| [SSD-FD-EVA-DPR-001](SSD-FD-EVA-DPR-001.md) | 減圧・再与圧（DPR）機能説明書 |
| [SSD-FD-EVA-TLS-001](SSD-FD-EVA-TLS-001.md) | 工具・収納（TLS）機能説明書 |
| [SSD-FD-EVA-MNT-001](SSD-FD-EVA-MNT-001.md) | EVA後の手入れ・再充填（MNT）機能説明書 |
| [SSD-FD-EVA-EMG-001](SSD-FD-EVA-EMG-001.md) | 非常時の手順（EMG）機能説明書 |
| [SSD-FD-EVA-OPS-001](SSD-FD-EVA-OPS-001.md) | 合図と運用管理（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図60 EVA 機能構成、関係する公開文書は SSD-EVA-REF-001（図61 EVA 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** EMUを補給するエアロック側の機器（SCU、減圧・再与圧）は、ECLSSのエアロック支援系（SSD-FD-ECL-ALS-001）で扱う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-EVA-01〜ACT-EVA-05）と図39 に示す。

> **注記** 本系を扱う運用資料の章・節（●主対象・○関連）は、運用飛行規則が A14（○）、A15（●）（[SSD-OPS-REF-001](SSD-OPS-REF-001.md) §3・図10）、乗員運用マニュアルが 2.11（●）、第3章（○）（[SSD-OPS-REF-002](SSD-OPS-REF-002.md) §3・図11）である。

> **注記** 下位の展開で、上位のIF-ORB-45（ECLSSとの流体のIF）のうちSCUの経路は、ECLSSの展開がIF-ECL-20の下位に定めたIF-ALS-06（SCUの電力・通信・O2・排水・再充填）とIF-ALS-07（LCVG冷却水）を同じ番号のまま下位の図に再利用し、それぞれEVA後の手入れ・再充填（MNT）とEMU点検・準備（CHK）に結んだ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456）

> **注記** SCUとは別の物理的な経路であるエアロックの減圧・再与圧（IF-EVA-04）と、マスク前呼吸と10.2 psiの維持のためのPCSのO2・N2（IF-EVA-14）は、親の説明書でECLSSとのIF行がIF-ORB-45だけであるため、IF-ORB-45の下位IFとして定義した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369）

> **注記** IF-ORB-46（C&Tとの無線のIF）は通信・追跡の親が所有するため下位IFを定義せず、EMU無線とUHF（SSOR）の音声・EMUデータ・心電図の経路として合図と運用管理（OPS）に結んだ（C&Tの下位IFを同じ番号で描く）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184）

> **注記** 電力系のDC電源コンセントから電池充電器への給電（IF-EVA-10）は、親の説明書にEPSとのIF行がないため上位をnullとした。EMUへの給電はエアロックの充電器からSCUを通す経路で、ECLSSのIF-ALS-05・06が扱う。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=123）

> **注記** 非常時EVAで乗員が手動で操作する機械系（IF-EVA-11）とペイロード支援（IF-EVA-12）、10.2 psiの運用で設定し直す警報系の限界値（IF-EVA-15）は、親の説明書にIF行がない（親のIF行はECLSSとC&Tの2行だけ）ため上位をnullとした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/462）

> **注記** EVAチェックリスト（JSC-48023 汎用Rev. H、2005年、PCN-20は2010年）は手順書であるため、下位機能には手順の目的・条件・限界を述べる文だけを引き、操作の手順は列挙しない。PDF p3〜44はPCN-20の差し替え頁で抽出テキストを持たないため、本書は文を含む後ろの頁を出典とした。（出典: https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=1）

> **注記** 資料の年代は運用飛行規則（2002年）、EVAチェックリスト（2005年）、SCOM（2008年、OI-33）の順で、資料間の相違（前呼吸と着用の時間、初期前呼吸のマスク、BTAの処置圧、通気流量の警報値、電池の種類など）は各下位説明書の検証メモに記した。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460）

> **注記** EVAの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-EVA-001](SSD-REQ-EVA-001.md) に示す。

> **注記** EVAの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-EVA-001](SSD-FMEA-EVA-001.md) に示す。

> **注記** EVA の前呼吸からエアロックの再与圧までの活動図（図87）は [SSD-BEH-ORB-004](SSD-BEH-ORB-004.md) に示す（SysML v2 テキスト：SysML/SSD-BEH-ORB-004.sysml）。

> **注記** EMU の構造（PLSS・SOP・DCM・宇宙服）・内部の流れ（換気・冷却水）・状態（図179〜181）は [SSD-EMU-EVA-001](SSD-EMU-EVA-001.md) に示す（SysML v2 テキスト：SysML/SSD-EMU-EVA-001.sysml）。

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p443） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/443
2. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p444） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/444
3. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p445） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/445
4. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p456） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/456
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.11節 Life Support System（Primary Oxygen System）（PDF p447） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/447
6. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p159） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/159
7. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p450） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/450
8. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p369） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/369
9. Shuttle Crew Operations Manual 2.4 Communications（USA007587 Rev. A CPN-1、PDF p184） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/184
10. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 10-4a MIDDECK EMU BATTERY RECHARGE (STAND-ALONE)（PDF p123） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=123
11. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p462） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/462
12. JSC-48023 EVA Checklist Generic Rev H（2005）PCN-20（2010） 表紙（PDF p1） — https://www.ibiblio.org/apollo/Shuttle/EVA%20Checklist/EVA%20Checklist%20Rev%20H%20PCN-20.pdf#page=1
13. Shuttle Crew Operations Manual 2.11 Extravehicular Activity（USA007587 Rev. A CPN-1、PDF p460） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/460

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（Rev. I で図2に追加したブロック。公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. B | 2026-10-01 | 運用飛行規則・乗員運用マニュアルの該当章・節（SSD-OPS-REF-001・002、図10・図11）を注記（Rev. L） |
| Rev. C | 2026-10-01 | IF-ORB-46 に下位 IF（IF-CT-10）を付記（Rev. R） |
| Rev. D | 2026-10-01 | 下位機能説明書（6件）と図への展開を追加し、IF-ORB-45に下位IF（IF-EVA）を付記してSCUのIF-ALS-06・07を下位の図に再利用、IF-ORB-46をC&Tの下位IFに委ね、注記・検証メモ（下位IFの分け方、EVAチェックリストの扱い、資料の年代と相違）を追加（Rev. T） |
| Rev. E | 2026-10-02 | 要求文書 SSD-REQ-EVA-001 への参照を注記（Rev. W） |
| Rev. F | 2026-10-02 | 故障解析表 SSD-FMEA-EVA-001 への参照を注記（Rev. X） |
| Rev. G | 2026-10-02 | 活動定義書 SSD-BEH-ORB-004 への参照を注記（Rev. AC） |
| Rev. H | 2026-10-09 | EMU の構造・内部ブロック・状態定義書 SSD-EMU-EVA-001 への参照を注記（Rev. BM） |
