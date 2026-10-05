# 熱防護系（TPS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-TPS-001 |
| 表題 | 熱防護系（TPS）機能説明書 |
| 版・日付 | Rev. G／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ORB-001 |
| 関連図 | SSD-SYS-ARC-001 図2 オービタ サブシステム構成 |

## 1. 目的

熱防護系の機能と材料の使い分けを示す。TPSは受動系のため、電力・データのインタフェースは持たない。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-TPS-01 | TPSは、高温での安定性と重量効率で選ばれた材料で構成される受動系である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） |
| F-TPS-02 | 強化炭素－炭素（RCC）は、主翼前縁、機首キャップ（機首直後下面のチャインパネルを含む）、前部オービタ／外部タンク構造結合部の周辺に使われ、再突入時に2,300°Fを超える部位を保護する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） |
| F-TPS-03 | 高温再使用表面断熱材（HRSI）タイルは2,300°F未満の部位を保護し、再突入時の放射率を得るための黒色コーティングを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） |
| F-TPS-04 | 後に開発された黒色のFRCIタイルが、一部の部位でHRSIタイルを置き換えた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） |
| F-TPS-05 | 白色の低温再使用表面断熱材（LRSI）タイルは、前・中・後部胴体、垂直尾翼、主翼上面、OMS/RCSポッドの一部に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） |
| F-TPS-06 | コーティングしたノーメックスフェルトの再使用表面断熱材（FRSI）の白色ブランケットは、ペイロードベイドア上面、中・後部胴体側面の一部、主翼上面の一部、OMS/RCSポッドの一部に使われ、700°F未満の部位を保護する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/66） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ORB-37 | 構造（STR） | 熱 | 送信 | TPSはオービタの外部構造外板に施工した各種材料から成り、主に再突入時に外板を許容温度内に保つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65）再突入時は、TPS材料がアルミニウムとグラファイトエポキシ製の外板を350°Fを超える温度から守る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） | 下位: IF-STR-03 |

## 4. 注記（出典間の相違・構成変更）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-TPS-01〜ACT-TPS-04）と図39 に示す。

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：NASA Factsの旧資料は、開発飛行時のコロンビアではピーク温度が600°F未満のペイロードベイ上面などをFRSIが覆っていたとしていた。（出典: https://www.scribd.com/doc/46376343/NASA-Facts-Orbiter-Thermal-Protection-System）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/66）

> **注記** TPSの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-TPS-001](SSD-REQ-TPS-001.md) に示す。

> **注記** TPSの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-TPS-001](SSD-FMEA-TPS-001.md) に示す。

## 5. 参考文献

1. NASA Facts – Orbiter Thermal Protection System（Scribd 転載） — https://www.scribd.com/doc/46376343/NASA-Facts-Orbiter-Thermal-Protection-System
2. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p65） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65
3. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p66） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/66

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 図8（熱制御）への展開と受動熱制御の説明書への参照を追加 |
| Rev. B | 2026-09-30 | 上位の IF の補完に伴い IF-ORB-37 を追加、インタフェースの節を「持たない（受動系）」から IF-ORB-37（外板の熱防護）の表に改めた（Rev. I） |
| Rev. C | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. D | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（6文。うち本文を改めた1文に注記）（Rev. Q） |
| Rev. E | 2026-10-02 | IF-ORB-37 に下位 IF（IF-STR-03）を付記（Rev. V） |
| Rev. F | 2026-10-02 | 要求文書 SSD-REQ-TPS-001 への参照を注記（Rev. W） |
| Rev. G | 2026-10-02 | 故障解析表 SSD-FMEA-TPS-001 への参照を注記（Rev. X） |
