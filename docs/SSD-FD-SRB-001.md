# 固体ロケットブースタ（SRB）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-SRB-001 |
| 表題 | 固体ロケットブースタ（SRB）機能説明書 |
| 版・日付 | Rev. F／2026-10-02 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-SYS-IDX-001 |
| 関連図 | SSD-SYS-ARC-001 図1 システム構成 |

## 1. 目的

SRBの機能と、外部タンク・オービタとのインタフェースを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-SRB-01 | 2本のSRBは、シャトルを射点から高度約150,000 ftまで持ち上げる主推力を担う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| F-SRB-02 | 各SRBの海面推力は打上げ時で約3,300,000 lbで、3基のSSMEの推力が確認された後に点火される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） |
| F-SRB-03 | 燃焼終了後に分離され、パラシュートで大西洋に着水し、回収・点検・整備のうえ再使用された。（出典: https://en.wikipedia.org/wiki/Space_Shuttle_Solid_Rocket_Booster） |
| F-SRB-04 | SRBの推力方向制御用の油圧系も、ヒドラジン式の補助動力装置で駆動される。（出典: https://www.science.gov/topicpages/v/vehicle+auxiliary+power.html） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-SYS-02 | 外部タンク（ET） | 構造・荷重 | 双方向 | 2本のSRBは外部タンクとオービタの全重量を支え、その荷重を構造を通じて移動式発射台へ伝える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71） | 下位: IF-SRB-01 下位: IF-SRB-02 |
| IF-SYS-03 | オービタ（OV） | データ・指令 | 受信 | オービタのDPSには、SRB用のマルチプレクサ／デマルチプレクサ（MDM）が4台含まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225）オービタの上昇推力方向制御（ATVC）は、打上げ・第1段上昇中に3基のSSMEと2本のSRBの推力方向を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514） | 下位: IF-ORB-18 下位: IF-ORB-22 下位: IF-ORB-26 下位: IF-ORB-28 |
| IF-SYS-10 | 打上げ処理システム（KSC） | 構造・荷重 | 双方向 | 各SRBは4本のホールドダウンポストを持ち、移動式発射台の支持ポストにはめ込んで、ホールドダウンボルトで固定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73）ボルト上端のフランジブルナットには2個のNSI起爆器があり、固体ロケットモータの点火指令で点火されて機体を解放する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73） | 下位: IF-SRB-03 |
| IF-ORB-18 | データ処理系（DPS） | データ・指令 | 受信 | DPSには、SRB用のMDMが4台含まれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225）ATVCは、打上げ・第1段上昇中にSRBの推力方向も制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514） | 上位: IF-SYS-03 下位: IF-DPS-07 |
| IF-ORB-22 | 誘導・航法・制御（GN&C） | データ・指令 | 受信 | 誘導系からの指令はATVCドライバへ送られ、ドライバは指令に比例した信号を主エンジンとSRBの各サーボアクチュエータへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76）各FCSチャネルのATVCは、6つのSSMEドライバと4つのSRBドライバを持つ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514） | 上位: IF-SYS-03 下位: IF-GNC-18 下位: IF-GNC-19 |
| IF-ORB-26 | データ処理系（DPS） | データ・指令 | 受信 | 固体ロケットモータの点火指令は、オービタのコンピュータからMECを通じて各SRBのS&A装置のNSI起爆器へ送られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74）マスターイベントコントローラ（MEC）は、SRBを外部タンクから、外部タンクをオービタから切り離す火工品を起爆する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577） | 上位: IF-SYS-03 下位: IF-DPS-08 |
| IF-ORB-28 | 電力系（EPS） | 電力（28 VDC） | 受信 | EPSは、地上支援設備に接続していないときに、オービタ、外部タンク、SRB、ペイロードが必要とする電力をすべてまかなう。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311）電力分配・制御（EPDC）は、交流・直流電力をオービタの各系、SRB、外部タンク、ペイロードへ制御・分配する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330） | 上位: IF-SYS-03 下位: IF-EPS-11 |

## 4. 下位文書

| 文書番号 | 表題 |
|---|---|
| [SSD-FD-SRB-MTR-001](SSD-FD-SRB-MTR-001.md) | 固体ロケットモータ（MTR）機能説明書 |
| [SSD-FD-SRB-HDP-001](SSD-FD-SRB-HDP-001.md) | 保持・点火（HDP）機能説明書 |
| [SSD-FD-SRB-TVC-001](SSD-FD-SRB-TVC-001.md) | 推力方向制御（HPU）（TVC）機能説明書 |
| [SSD-FD-SRB-AVN-001](SSD-FD-SRB-AVN-001.md) | 電子・電力・射場安全（AVN）機能説明書 |
| [SSD-FD-SRB-ATT-001](SSD-FD-SRB-ATT-001.md) | ET結合・分離（ATT）機能説明書 |
| [SSD-FD-SRB-REC-001](SSD-FD-SRB-REC-001.md) | 降下・回収（REC）機能説明書 |

機能の構成は SSD-SYS-ARC-001 図74 SRB 機能構成、関係する公開文書は SSD-SRB-REF-001（図75 SRB 関連文書マトリクス）に示す。

## 5. 注記（出典間の相違・構成変更）

> **注記** 2008年版のSCOM（USA007587 Rev. A）は、打上げ時および第1段上昇中の推力の71.4%をSRBが担うとしている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71）

> **注記** 一方Wikipediaは、打上げ時と上昇最初の2分間の推力の85%としており、資料間で値が一致しない。設計値として使う場合は一次資料で確認すること。（出典: https://en.wikipedia.org/wiki/Space_Shuttle_Solid_Rocket_Booster）

> **注記** 飛行フェーズとアボートモードごとの本系の稼働は、[SSD-OPS-PHASE-001](SSD-OPS-PHASE-001.md) の6節（ACT-SRB-01〜ACT-SRB-06）と図39 に示す。

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料も同じく71.4%としており、旧文はこれを「1988年版NASA資料は」として記していた。（出典: https://16streets.com/39-B/HTML%20Pages/shuttle/technology/sts-newsref/srb.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71）

> **注記** 下位機能説明書6件（MTR・HDP・TVC・AVN・ATT・REC）と図74への展開を追加した。IF-SYS-02（ETとの結合）は前部の結合点（IF-SRB-01）と後部の支柱（IF-SRB-02）に、IF-SYS-10（KSC）は保持ポスト（IF-SRB-03）に分けた。オービタとのIFは、DPS・GN&C・EPSがすでに定義した下位IFを同じ番号のまま描いた。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71）

> **注記** 運用飛行規則でSRBを主に扱うのは第5章のTVCの喪失の規則（A5-1・A5-51）だけで、打上げ前の点火の条件や射場安全は打上げ処理と打上げ確認基準（LCC）で扱われる。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=19）

> **注記** SRBの要求（L2）と、本書と下位の説明書の機能行とのトレースは [SSD-REQ-SRB-001](SSD-REQ-SRB-001.md) に示す。

## 6. 参考文献

1. NSTS 1988 News Reference Manual – Solid Rocket Boosters（16streets 転載） — https://16streets.com/39-B/HTML%20Pages/shuttle/technology/sts-newsref/srb.html
2. Wikipedia – Space Shuttle Solid Rocket Booster — https://en.wikipedia.org/wiki/Space_Shuttle_Solid_Rocket_Booster
3. Science.gov（NTRS抄録：Electric auxiliary power unit for Shuttle evolution ほか） — https://www.science.gov/topicpages/v/vehicle+auxiliary+power.html
4. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p73） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/73
5. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p76） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/76
6. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p514） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/514
7. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p74） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/74
8. Shuttle Crew Operations Manual 2.16 Main Propulsion System（USA007587 Rev. A CPN-1、PDF p577） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/577
9. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p311） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311
10. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p330） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330
11. Shuttle Crew Operations Manual 1.4 Solid Rocket Boosters（USA007587 Rev. A CPN-1、PDF p71） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/71
12. Shuttle Crew Operations Manual 2.6 Data Processing System（USA007587 Rev. A CPN-1、PDF p225） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/225
13. STS-108 Mission Report Solid Rocket Boosters（PDF p19） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=19

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-30 | 上位の IF の補完に伴い IF-SYS-10・IF-ORB-22・IF-ORB-26・IF-ORB-28 を追加、IF-SYS-03 に下位 IF-ORB-22・IF-ORB-26・IF-ORB-28 を付記（Rev. I） |
| Rev. B | 2026-10-01 | 運用フェーズ・モードの定義書 SSD-OPS-PHASE-001 と図39 への参照を注記（Rev. J） |
| Rev. C | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（8文。うち本文を改めた1文に注記）（Rev. Q） |
| Rev. D | 2026-10-01 | IF-ORB-18 に下位 IF（IF-DPS-07）を付記、IF-ORB-22 に下位 IF（IF-GNC-18・IF-GNC-19）を付記、IF-ORB-26 に下位 IF（IF-DPS-08）を付記（Rev. R） |
| Rev. E | 2026-10-02 | 下位機能説明書（6件）と図74への展開を追加し、IF-SYS-02・10 に下位IF（IF-SRB）を付記、注記（IFの分け方、規則の扱い）を追加（Rev. V） |
| Rev. F | 2026-10-02 | 要求文書 SSD-REQ-SRB-001 への参照を注記（Rev. W） |
