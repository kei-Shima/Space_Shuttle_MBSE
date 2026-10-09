# 構造（STR）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-STR-001 |
| 表題 | 構造（STR）機能説明書 |
| 版・日付 | Rev. E／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

オービタの機体構造（前部・中部・後部胴体、乗員室、主翼、垂直尾翼、OMS/RCSポッド、ボディフラップ）の機能と、外部タンク・熱防護系・機械系・ペイロード支援・打上げ処理システムとのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-STR-01 | オービタ構造は、前部胴体、主翼、中部胴体、ペイロードベイドア、後部胴体、前部RCS、垂直尾翼、OMS/RCSポッド、ボディフラップの9つの主要部分に分かれ、大部分は通常のアルミニウム製で、再使用型表面断熱材で保護される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/51） |
| F-STR-02 | 前部胴体は与圧された乗員室を収め、前部RCSモジュール、ノーズキャップ、前脚格納部、前脚と前脚扉を支持する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/51） |
| F-STR-03 | 3層の乗員室は2219アルミニウム合金板を溶接した与圧容器で、ECLSS、アビオニクス、GN&C機器、IMU、表示・操作器、スタートラッカ、就寝・廃棄物処理・座席などの乗員設備を支持する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53） |
| F-STR-04 | 乗員室は14.7±0.2 psiaに与圧され、ECLSSにより窒素80%・酸素20%の組成に保たれる。乗員室は16 psiaで設計されている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/54） |
| F-STR-05 | 中部胴体は前部胴体・後部胴体・主翼と結合し、ペイロードベイドアとそのヒンジ、固定金具、前部主翼グラブ、各種の搭載機器を支持して、ペイロードベイを形成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59） |
| F-STR-06 | 後部胴体は、左右のOMS/RCSポッド、主翼後桁、中部胴体、オービタ／外部タンクの後部結合部、主エンジン、後部熱シールド、ボディフラップ、垂直尾翼、2つのT-0打上げアンビリカルパネルを支持し、これらと結合する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60） |
| F-STR-07 | 後部胴体の内部推力構造は3基のSSMEとその低圧ターボポンプ・推進薬配管を支持する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61） |
| F-STR-08 | ボディフラップは再突入時に3基のSSMEを熱的に遮蔽し、大気圏飛行中のピッチトリムを与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/62） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-33 | 打上げ処理システム（KSC） | 推進薬・流体 | 受信 | 着陸後は、右側のT-0アンビリカルに地上の空調パージ装置をつなぎ、後部胴体、ペイロードベイ、前部胴体、主翼、垂直尾翼、OMS/RCSポッドへ冷却空気を送って再突入の熱を除く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36）ベント扉の一部には中間位置があり、非与圧区画を乾燥空気または窒素でパージできる。地上でのパージは温度調節・湿度管理・有害ガスの排除のために行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621） | 上位: IF-SYS-09 下位: IF-TCS-17 |
| IF-ORB-36 | 外部タンク（ET） | 構造・荷重 | 双方向 | 前部のオービタ／外部タンク結合金具は、Xo = 378隔壁と前脚格納部の後方の外板構造にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/52）オービタ／外部タンクの2つの後部結合点は、後部胴体のロンジロン金具で結合する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61） | 上位: IF-SYS-07 下位: IF-STR-01 下位: IF-STR-02 |
| IF-ORB-37 | 熱防護系（TPS） | 熱 | 受信 | TPSはオービタの外部構造外板に施工した各種材料から成り、主に再突入時に外板を許容温度内に保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65）再突入時は、TPS材料がアルミニウムとグラファイトエポキシ製の外板を350°Fを超える温度から守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） | 下位: IF-STR-03 |
| IF-ORB-38 | 機械系（MECH） | 構造・荷重 | 双方向 | ペイロードベイドアは中部胴体を構造的に支持し、各扉は13個のヒンジ（固定5・可動8）で中部胴体に結合する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627）ペイロードベイドアのロンジロンと関連構造は13個のヒンジに取り付けられ、ヒンジがドアからの鉛直反力を受ける。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60） | 下位: IF-MECH-02 下位: IF-MECH-03 下位: IF-MECH-04 |
| IF-ORB-47 | ペイロード支援（PDRS・ODS） | 構造・荷重 | 双方向 | ODSのトラス組立はペイロードベイに物理的に取り付けられ、ドッキング系の構成品を収める構造基盤となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674）中部胴体のシルロンジロンは、マニピュレータアーム（搭載時）とその格納装置の基部支持となる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60） | 下位: IF-PLS-03 下位: IF-PLS-04 下位: IF-PLS-05 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-STR-FWD-001](SSD-FD-STR-FWD-001.md) | 前胴・前部RCSモジュール（FWD）機能説明書 |
| [SSD-FD-STR-CRM-001](SSD-FD-STR-CRM-001.md) | 乗員室（与圧）・窓（CRM）機能説明書 |
| [SSD-FD-STR-MID-001](SSD-FD-STR-MID-001.md) | 中胴・ペイロードベイ（MID）機能説明書 |
| [SSD-FD-STR-AFT-001](SSD-FD-STR-AFT-001.md) | 後胴・推力構造・ポッド（AFT）機能説明書 |
| [SSD-FD-STR-WNG-001](SSD-FD-STR-WNG-001.md) | 翼・ボディフラップ・尾翼（WNG）機能説明書 |
| [SSD-FD-STR-OPS-001](SSD-FD-STR-OPS-001.md) | 構造運用管理（OPS）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図70 STR 機能構成、関係する公開文書は SSD-STR-REF-001（図71 STR 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** エレボン・ラダー／スピードブレーキ・ボディフラップは本書で構造を扱い、駆動と制御は誘導・航法・制御（FCS）と補助動力・油圧（IF-ORB-08）で扱う。エレボンは前縁に沿って飛行制御系の油圧アクチュエータに取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/58）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-STR-01〜ACT-STR-07）と図39 に示す。

> **注記** 本系を扱う運用資料の章・節（●主対象・○関連）は、運用飛行規則が A10（○）（[SSD-OPS-REF-001](SSD-OPS-REF-001.md) §3・図10）、乗員運用マニュアルが 1.2（●）、第4章（○）（[SSD-OPS-REF-002](SSD-OPS-REF-002.md) §3・図11）である。

> **注記** 下位機能説明書6件（FWD・CRM・MID・AFT・WNG・OPS）と図70への展開を追加した。IF-ORB-36（ETとの結合）は、前部の結合金具（IF-STR-01）と後部の2つの結合点（IF-STR-02）に分けた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61）

> **注記** IF-ORB-37（TPSの熱防護）は外板全体にかかるため、図70では中胴（IF-STR-03）に代表させた。IF-ORB-38（MECH）とIF-ORB-47（PLS）は、機械系・ペイロード支援の下位IF（IF-MECH-02〜04・IF-PLS-03〜05）を同じ番号で描いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65）

> **注記** STRの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-STR-001](SSD-REQ-STR-001.md) に示す。

> **注記** STRの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-STR-001](SSD-FMEA-STR-001.md) に示す。

## 6. 参考文献

1. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p51） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/51
2. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p53） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/53
3. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p54） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/54
4. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p59） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/59
5. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p60） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/60
6. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p61） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61
7. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p62） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/62
8. Shuttle Crew Operations Manual 1.1 Overview（USA007587 Rev. A CPN-1、PDF p36） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/36
9. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p621） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/621
10. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p52） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/52
11. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p65） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65
12. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p627） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/627
13. Shuttle Crew Operations Manual 2.19 Orbiter Docking System（USA007587 Rev. A CPN-1、PDF p674） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/674
14. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p58） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/58

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（Rev. I で図2に追加したブロック。公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. B | 2026-10-01 | 運用飛行規則・乗員運用マニュアルの該当章・節（SSD-OPS-REF-001・002、図10・図11）を注記（Rev. L） |
| Rev. C | 2026-10-02 | 下位機能説明書（6件）と図70への展開を追加し、IF-ORB-36・37 に下位IF（IF-STR）を付記、注記（IFの分け方、代表させたIF）を追加（Rev. V） |
| Rev. D | 2026-10-02 | 要求文書 SSD-REQ-STR-001 への参照を注記（Rev. W） |
| Rev. E | 2026-10-02 | 故障解析表 SSD-FMEA-STR-001 への参照を注記（Rev. X） |
