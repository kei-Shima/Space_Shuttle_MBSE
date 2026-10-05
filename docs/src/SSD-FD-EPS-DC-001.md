# 直流配電（EPDC-DC）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-EPS-DC-001 |
| 表題 | 直流配電（EPDC-DC）機能説明書 |
| 版・日付 | Rev. E／2026-10-04 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-EPS-001 |
| 関連図 | SSD-SYS-ARC-001 図6 EPS 機能構成 |

## 1. 目的

28 V直流電力の母線構成・保護・配電機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-EPS-DC-01 | 3本の主直流母線（MNA・MNB・MNC）が機体の直流負荷の主電源となり、前部・中部・後部へ配電する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-DC-02 | このほか、必須負荷用の必須母線3本、乗員操作用の制御電力のみを供給する制御母線9本、地上作業専用の予備母線2本がある。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-DC-03 | 電力は分配組立、電力制御組立、負荷制御組立、モータ制御組立で制御・分配される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-DC-04 | 遠隔電力制御器（RPC）は3〜20 Aの負荷用の半導体スイッチで、定格の150%で電流を制限し、3秒以内に遮断する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-DC-05 | 主母線同士はバスタイで接続でき、主母線電圧が26.4 V以下になるとC/W警報が点灯する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-DC-06 | ペイロード用には主ペイロード母線（燃料電池3または主母線B・Cから給電）、後部ペイロード母線、補助ペイロード母線がある。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-DC-07 | 中胴の電気部品はフレオン21ループのコールドプレートで、前部アビオニクスベイの配電組立は水冷却ループで冷却される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EPS-02 | 地上支援設備（GSE） | 電力（28 VDC） | 受信 | T-3分30秒までは、T-0アンビリカルから供給される地上電源と燃料電池で負荷を分担し、その時点で地上電源を切って燃料電池が全負荷を受け持つ。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ORB-31 |
| IF-EPS-05 | 燃料電池発電装置（FCP×3） | 電力（28 VDC） | 受信 | 各燃料電池の直流電力は対応する分配器へ送られ、燃料電池1は主母線A、2は主母線B、3は主母線Cに対応する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | — |
| IF-EPS-10 | 交流発電・配電（EPDC-AC） | 電力（28 VDC） | 送信 | インバータ1は主母線Aのみ、2は主母線B、3は主母線Cから給電される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | — |
| IF-EPS-11 | 電力負荷（オービタ各系・SRB・ET・ペイロード） | 電力（28 VDC） | 送信 | EPDCは、28 V直流電力をオービタ各系、SRB、外部タンク、ペイロードへ制御・分配する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ORB-14 上位: IF-ORB-27 上位: IF-ORB-28 |
| IF-EPS-14 | 熱制御：熱交換器網 | 熱 | 受信 | 中胴の電気部品はコールドプレートに取り付けられフレオン21ループで冷却され、前部アビオニクスベイ1〜3の電力・負荷・モータ制御組立とインバータは水冷却ループで冷却され、インバータ配電組立は空冷である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340） | 上位: IF-ORB-35 |
| IF-EPS-15 | ペイロード | 電力（28 VDC） | 送信 | EPDC は交流・直流電力をオービタの各系、SRB、外部タンク、ペイロードへ制御・分配する。各燃料電池の 28 V DC は主直流母線へ配られる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330）FC 3 を主ペイロード母線（PRI PL）へつなげ、MN B・MN C も第2・第3の電源にできる。PRI PL 経由で主母線 B と C をつなぐことを「裏口の母線結合」という。後部ペイロード母線 B・C と補助ペイロード母線 A・B もある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/335） | — |
| IF-EPS-16 | 燃料電池発電装置 | 電力（28 VDC） | 送信 | 電気制御ユニット（ECU）は冷却材ポンプ・水素ポンプ/水分離器・pH センサへの交流を制御する。三相交流を3台の燃料電池へつなぐ回路遮断器9個がパネル L4 にあり、ECU は必須母線から給電される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/328）必須母線の電圧が 25 V DC 未満で SM ALERT になる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/341） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| EP-01 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | PRSD・燃料電池・EPDCの構成、定格、運用手順を1ページで解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| EP-03 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.8節「Electrical Power Distribution and Control」：主・必須・制御・ペイロードの直流母線、配電組立、電力・負荷・モータ制御器、母線結合を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330） |
| EP-08 | NTRS 19900001617 | IOA: Analysis of the EPD&C/EPG subsystem | 電力分配・制御（EPD&C）と発電（EPG）ハードウェアの独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900001617） |
| EP-20 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | EPDCの喪失定義（A9-3）と直流配電の管理（A9-101〜110：母線電圧限界、必須母線、電力削減、主母線短絡、主母線結合）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1453） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、前部アビオニクスベイの配電組立が水冷却ループで冷却されるとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340）

## 6. 参考文献

1. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
2. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p340） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/340
3. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p330） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/330
4. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p335） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/335
5. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p328） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/328
6. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p341） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/341

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にEP-20（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にEP-03（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-09-30 | IF-EPS-02 に上位 IF-ORB-31 を付記、IF-EPS-14 に上位 IF-ORB-35 を付記、IF-EPS-11 に上位 IF-ORB-27・IF-ORB-28 を付記（Rev. I） |
| Rev. D | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（1文。うち本文を改めた1文に注記）（Rev. Q） |
| Rev. E | 2026-10-04 | 内部ブロック図の機能ブロックをまたぐ流れの IF IF-EPS-15・IF-EPS-16 を足した（GAP-09 の解消）（Rev. AU） |
