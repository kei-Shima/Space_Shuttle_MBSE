# 放熱器（RAD）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-TCS-RAD-001 |
| 表題 | 放熱器（RAD）機能説明書 |
| 版・日付 | Rev. C／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ATCS-001 |
| 関連図 | SSD-SYS-ARC-001 図8 熱制御 機能構成 |

## 1. 目的

軌道上の主排熱手段である放熱器の構成と制御を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-TCS-RAD-01 | 放熱器はペイロードベイドアの内面に取り付けられ、ドアを閉じている上昇・再突入時はバイパスされる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-RAD-02 | 基本構成は左右各3枚のパネル（前方ドアの展開式2枚と後方ドアの固定式1枚）で、21,500 Btu/hの排熱を想定し、4枚目の固定パネルを加えると29,000 Btu/hになる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-RAD-03 | 展開式パネルはドアから35.5°開いて両面から放熱し、表面には放射特性を得るための銀蒸着テフロンテープが貼られる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-RAD-04 | 各パネルは幅10 ft・長さ15 ftで、展開式2枚と固定式2枚を装備すると有効放熱面積は1,195 ft²となる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-RAD-05 | 流量制御弁が高温のバイパス流と放熱器からの低温流を混合し、放熱器出口温度を通常38°F（高設定57°F）に制御する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-TCS-08 | フレオン21冷却ループ×2 | 熱 | 受信 | フレオンは油圧熱交換器から放熱器へ流れ、ペイロードベイドアが閉じている上昇・再突入時はバイパス弁で放熱器を迂回する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | — |
| IF-TCS-12 | 宇宙空間（船外） | 熱 | 送信 | ペイロードベイドアを軌道上で開くと、放熱器が熱を宇宙空間へ放射する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | 上位: IF-ECL-21 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-02 | 番号なし | Shuttle Reference: Active Thermal Control System | ATCSの構成とヒートシンクの使い分けを解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/atcs.html） |
| TC-04 | NTRS 19850008616 | Challenges in the Development of the Orbiter Radiator System | 8枚・合計175 m²の放熱器で最大30 kWを排熱する設計と開発課題を述べる。（出典: https://ntrs.nasa.gov/api/citations/19850008616/downloads/19850008616.pdf） |
| TC-06 | NTRS 19810005651 | Thermal Vacuum Performance Testing of the Orbiter Radiator System | 1979年のJSCチャンバAでのラジエータ熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005651/downloads/19810005651.pdf） |
| TC-07 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | GSE熱交換器・FES・ラジエータ・アンモニアボイラを含むATCS統合熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf） |
| TC-09 | NTRS 20070023916 | Effects of Free Molecular Heating on the Shuttle ATCS | STS-121で自由分子加熱によりFES給水を余分に消費し、ラジエータ熱流束モデルを改訂した。（出典: https://ntrs.nasa.gov/citations/20070023916） |
| TC-25 | 番号なし | NSTS 1988 News Reference Manual – Orbiter Structure | ペイロードベイドアを軌道上で開いて放熱器を露出させることを記す。（出典: https://science.ksc.nasa.gov/shuttle/technology/sts-newsref/sts_coord.html） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 放熱器流量制御組立（RFCA）の喪失定義と管理（A18-208・255）、放熱器隔離弁（A18-256）、放熱器展開機構（A10-221・222）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2073） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Radiators」：ペイロードベイ扉内側の放熱器パネル、展開系、放熱器流量制御弁組立、単一放熱器運用、放熱器隔離弁を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/384） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：1988年版マニュアルは、放熱器の能力を21,500〜29,000 Btu/h、面積を1,195 ft²としている。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）

> **注記** 一方、放熱器の開発論文は、8枚の放熱器（合計175 m²）で最大30 kWを排熱するとしており、値が大きく異なる。構成や条件の定義を一次資料で確認すること。（出典: https://ntrs.nasa.gov/api/citations/19850008616/downloads/19850008616.pdf）

## 6. 参考文献

1. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
2. NTRS 19850008616 Challenges in the Development of the Orbiter Radiator System — https://ntrs.nasa.gov/api/citations/19850008616/downloads/19850008616.pdf
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にTC-26（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にTC-27（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（1文）（Rev. Q） |
