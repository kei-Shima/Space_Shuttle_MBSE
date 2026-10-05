# 反応剤貯蔵・分配（PRSD）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-EPS-PRSD-001 |
| 表題 | 反応剤貯蔵・分配（PRSD）機能説明書 |
| 版・日付 | Rev. D／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-EPS-001 |
| 関連図 | SSD-SYS-ARC-001 図6 EPS 機能構成 |

## 1. 目的

燃料電池と乗員室与圧のための極低温反応剤の貯蔵・分配機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-EPS-PRSD-01 | PRSDは極低温の水素と酸素を超臨界状態で貯蔵して3基の燃料電池へ供給し、あわせて乗員室与圧用の酸素をECLSSへ供給する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-PRSD-02 | 液体酸素は−285°F、液体水素は−420°Fで貯蔵される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-PRSD-03 | タンクは真空断熱層を持つ二重壁の球形で、消費に伴う圧力低下をヒータで補い、残量を計測できる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-PRSD-04 | タンクは水素1基と酸素1基を1セットとし、ミッションに応じて最大5セットを中胴のペイロードベイ内張の下に搭載する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-PRSD-05 | 酸素タンクは1基あたり781 lb、水素タンクは92 lbを貯蔵する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-PRSD-06 | 軌道上ではヒータ制御の圧力設定が高いタンク3・4が燃料電池へ供給し、再突入ではタンク1・2が供給する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-PRSD-07 | 弁モジュール内の逆止弁が、1基のタンクが漏れても反応剤全体を失わないようにする。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| F-EPS-PRSD-08 | STS-50では、通常の4セットに加えて4セットのタンクを積むEDO極低温パレットが初めて飛行した。（出典: https://ntrs.nasa.gov/api/citations/19930016803/downloads/19930016803.pdf） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-EPS-01 | 地上支援設備（GSE） | 推進薬・流体 | 受信 | 打上げ前は地上支援設備が燃料電池の反応剤を補給して搭載量を満たし、T-2分35秒で充填を終える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347） | 上位: IF-ORB-30 |
| IF-EPS-03 | 燃料電池発電装置（FCP×3） | 推進薬・流体 | 送信 | 反応剤はリリーフ弁／フィルタと弁モジュールを経て共通マニホールドから燃料電池へ流れ、酸素は815〜881 psia、水素は200〜243 psiaで供給される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | — |
| IF-EPS-04 | 圧力制御系（ECLSS） | 推進薬・流体 | 送信 | 酸素弁モジュールは、ECLSSの大気圧力制御系1・2への酸素供給を含む。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） | 上位: IF-ECL-01 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| EP-01 | 番号なし | NSTS 1988 News Reference Manual – Electrical Power System | PRSD・燃料電池・EPDCの構成、定格、運用手順を1ページで解説する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eps.html） |
| EP-03 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.8節「Power Reactants Storage and Distribution System」：極低温O2・H2タンクとヒータ、量センサ、反応剤の分配（燃料電池・ECLSSへの供給）を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/311） |
| EP-06 | NTRS 19760025144 | EPS/ECLSS Consumables Analyses for the Spacelab 1 Flight | Spacelab 1ミッションの電力系とECLSSの消耗品要求を解析する。（出典: https://ntrs.nasa.gov/citations/19760025144） |
| EP-07 | NTRS 19900001602 | IOA: Analysis of the EPG/PRSD subsystem | PRSDと燃料電池（EPG）の独立FMEA/CIL解析。（出典: https://ntrs.nasa.gov/citations/19900001602） |
| EP-16 | NASA-CR-193057 | STS-50 Space Shuttle Mission Report | EDO極低温パレット（追加4セット）の初飛行と、PRSD酸素タンク2の漏れを記録する。（出典: https://ntrs.nasa.gov/api/citations/19930016803/downloads/19930016803.pdf） |
| EP-17 | NTRS 19920055853 | Extended Duration Orbiter – Meeting the challenge | 16日滞在のためのEDO計画と、極低温パレット・タンク・電磁弁などを概説する。（出典: https://ntrs.nasa.gov/citations/19920055853） |
| EP-18 | 番号なし | Wikipedia – Extended Duration Orbiter | EDOパレットはコロンビアとエンデバーで飛行し、STS-107で失われたと記す。（出典: https://en.wikipedia.org/wiki/Extended_Duration_Orbiter） |
| EP-19 | US特許 5228644 | Solar powered system for a space vehicle | 背景技術として、4セットのタンクが約8日で消費され、追加パレットで8日から16日へ延長できると記す。（出典: https://image-ppubs.uspto.gov/dirsearch-public/print/downloadPdf/5228644） |
| EP-20 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 極低温系の喪失定義（A9-201〜205：O2/H2マニホールド、タンク、真空断熱、ヒータ）と管理（A9-251〜262：ヒータ管理、残量バランス、PRSDレッドライン、漏れ、EDOパレット）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1476） |

## 5. 参考文献

1. NSTS 1988 News Reference Manual – Electrical Power System（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eps.html
2. NASA-CR-193057 STS-50 Space Shuttle Mission Report — https://ntrs.nasa.gov/api/citations/19930016803/downloads/19930016803.pdf
3. Shuttle Crew Operations Manual 2.8 Electrical Power System（USA007587 Rev. A CPN-1、PDF p347） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/347

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にEP-20（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にEP-03（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-09-30 | IF-EPS-01 に上位 IF-ORB-30 を付記（Rev. I） |
| Rev. D | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（1文）（Rev. Q） |
