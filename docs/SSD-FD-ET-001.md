# 外部タンク（ET）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ET-001 |
| 表題 | 外部タンク（ET）機能説明書 |
| 版・日付 | Rev. G／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-SYS-IDX-001 |
| 関連図 | SSD-SYS-ARC-001 図1 システム構成 |

## 1. 目的

外部タンクの機能と、オービタ・SRBとのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ET-01 | 外部タンクは液体水素燃料と液体酸素酸化剤を収め、打上げ・上昇中にオービタの3基のSSMEへ加圧供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67） |
| F-ET-02 | SSME停止後に投棄され、大気圏に再突入して分解し、遠隔の海域に落下する（回収しない）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67） |
| F-ET-03 | 前部の液体酸素タンク、主に電気機器を収める非与圧のインタータンク、後部の液体水素タンクの3主要部から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67） |
| F-ET-04 | 全長153.8 ft、直径27.6 ftで、推進薬充填時にはシャトル構成要素の中で最大かつ最重量である。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/et.html） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-SYS-01 | オービタ（OV） | 推進薬・流体 | 送信 | 外部タンクは液体水素燃料と液体酸素酸化剤を収め、打上げ・上昇中にオービタの3基のSSMEへ加圧供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67） | 下位: IF-ORB-15 |
| IF-SYS-02 | 固体ロケットブースタ（SRB×2） | 構造・荷重 | 双方向 | 2本のSRBは外部タンクとオービタの全重量を支え、その荷重を構造を通じて移動式発射台へ伝える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） | 下位: IF-SRB-01 下位: IF-SRB-02 |
| IF-SYS-07 | オービタ（OV） | 構造・荷重 | 双方向 | 強化炭素－炭素（RCC）が前部オービタ／外部タンク構造結合部の周辺に使われていることから、両者は構造的に結合している。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65） | 下位: IF-ORB-36 |
| IF-SYS-08 | オービタ（OV） | データ・指令 | 受信 | 外部タンクとオービタの間の電気・燃料アンビリカルは、オービタ下面の2つの後部アンビリカル開口から機内に入り、その空洞にオービタ／外部タンク結合点と燃料・電気の切離し部がある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623）オービタのGPCが外部タンク分離を指令すると、火工品でボルトが切断される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70） | 下位: IF-ORB-25 下位: IF-ORB-27 |
| IF-ORB-15 | 主推進系（MPS） | 推進薬・流体 | 送信 | 外部タンクは液体水素と液体酸素を3基のSSMEへ加圧供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67）オービタ内の17インチ液体酸素・液体水素切離しアンビリカルは、外部タンク投棄時に油圧で格納される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83） | 上位: IF-SYS-01 下位: IF-MPS-01 下位: IF-MPS-02 |
| IF-ORB-25 | データ処理系（DPS） | データ・指令 | 受信 | DPSのハードウェアには、2台のマスターイベントコントローラ（MEC）とマスタタイミングユニットが含まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226）マスターイベントコントローラ（MEC）は、SRBを外部タンクから、外部タンクをオービタから切り離す火工品を起爆する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577） | 上位: IF-SYS-08 下位: IF-DPS-09 |
| IF-ORB-27 | 電力系（EPS） | 電力（28 VDC） | 受信 | EPSは、地上支援設備に接続していないときに、オービタ、外部タンク、SRB、ペイロードが必要とする電力をすべてまかなう。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311）電力分配・制御（EPDC）は、交流・直流電力をオービタの各系、SRB、外部タンク、ペイロードへ制御・分配する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330） | 上位: IF-SYS-08 下位: IF-EPS-11 |
| IF-ORB-36 | 構造（STR） | 構造・荷重 | 双方向 | 前部のオービタ／外部タンク結合金具は、Xo = 378隔壁と前脚格納部の後方の外板構造にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/52）オービタ／外部タンクの2つの後部結合点は、後部胴体のロンジロン金具で結合する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61） | 上位: IF-SYS-07 下位: IF-STR-01 下位: IF-STR-02 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-ET-LOX-001](SSD-FD-ET-LOX-001.md) | LO2タンク（LOX）機能説明書 |
| [SSD-FD-ET-ITK-001](SSD-FD-ET-ITK-001.md) | インタタンク（ITK）機能説明書 |
| [SSD-FD-ET-LH2-001](SSD-FD-ET-LH2-001.md) | LH2タンク（LH2）機能説明書 |
| [SSD-FD-ET-UMB-001](SSD-FD-ET-UMB-001.md) | アンビリカル・弁・センサ（UMB）機能説明書 |
| [SSD-FD-ET-TPS-001](SSD-FD-ET-TPS-001.md) | ET熱防護（TPS）機能説明書 |
| [SSD-FD-ET-SEP-001](SSD-FD-ET-SEP-001.md) | 分離・投棄・飛行安全（SEP）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図72 ET 機能構成、関係する公開文書は SSD-ET-REF-001（図73 ET 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-ET-01〜ACT-ET-06）と図39 に示す。

> **注記** 下位機能説明書6件（LOX・ITK・LH2・UMB・TPS・SEP）と図72への展開を追加した。ETの外部とのIFは、MPS・DPS・EPS・構造・SRBがすでに定義した下位IF（IF-MPS-01・02、IF-DPS-09、IF-EPS-11、IF-STR-01・02、IF-SRB-01・02）を同じ番号のまま図72に描き、新しい下位IF（IF-ET-01〜07）はET内部のものだけとした。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67）

> **注記** ETの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-ET-001](SSD-REQ-ET-001.md) に示す。

> **注記** ETの FMEA・CIL（IOA の件数・CIL 課題の評価ワークシート・[CIL] の規則）は [SSD-FMEA-ET-001](SSD-FMEA-ET-001.md) に示す。

## 6. 参考文献

1. NSTS 1988 News Reference Manual – External Tank（NASA KSC） — https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/et.html
2. Shuttle Crew Operations Manual 2.17 Mechanical Systems（USA007587 Rev. A CPN-1、PDF p623） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/623
3. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p70） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/70
4. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p226） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/226
5. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p577） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577
6. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p311） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311
7. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p330） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330
8. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p52） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/52
9. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p61） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/61
10. Shuttle Crew Operations Manual 1.3 External Tank（USA007587 Rev. A CPN-1、PDF p67） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/67
11. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p71） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71
12. Shuttle Crew Operations Manual 1.2 Orbiter Structure（USA007587 Rev. A CPN-1、PDF p65） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/65
13. Shuttle Crew Operations Manual 2.1 Auxiliary Power Unit/Hydraulics（USA007587 Rev. A CPN-1、PDF p83） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/83

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | 上位の IF の補完に伴い IF-SYS-08・IF-ORB-25・IF-ORB-27・IF-ORB-36 を追加、IF-SYS-07 に下位 IF-ORB-36 を付記（Rev. I） |
| Rev. B | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. C | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（8文）（Rev. Q） |
| Rev. D | 2026-10-01 | IF-ORB-15 に下位 IF（IF-MPS-01・IF-MPS-02）を付記、IF-ORB-25 に下位 IF（IF-DPS-09）を付記（Rev. R） |
| Rev. E | 2026-10-02 | 下位機能説明書（6件）と図72への展開を追加し、注記（外部とのIFは他の系の下位IFを同じ番号で描いたこと）を追加（Rev. V） |
| Rev. F | 2026-10-02 | 要求文書 SSD-REQ-ET-001 への参照を注記（Rev. W） |
| Rev. G | 2026-10-02 | 故障解析表 SSD-FMEA-ET-001 への参照を注記（Rev. X） |
