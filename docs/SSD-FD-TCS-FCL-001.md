# フレオン21冷却ループ（FCL）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-TCS-FCL-001 |
| 表題 | フレオン21冷却ループ（FCL）機能説明書 |
| 版・日付 | Rev. C／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ATCS-001 |
| 関連図 | SSD-SYS-ARC-001 図8 熱制御 機能構成 |

## 1. 目的

機体の熱を熱源からヒートシンクへ運ぶフレオン21冷却ループの機能と流路を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-TCS-FCL-01 | フレオン21冷却ループは同一構成の2系統で、各系統のポンプパッケージは2台のポンプとアキュムレータから成り、常に1台のポンプが運転される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-FCL-02 | 金属ベローズ式のアキュムレータは窒素で加圧され、ポンプの吸入圧を確保し、熱膨張を吸収する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-FCL-03 | フレオンは3基の燃料電池熱交換器と中胴コールドプレート網を並列に流れた後、油圧熱交換器、放熱器、GSE熱交換器、アンモニアボイラ、FESを順に通る。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-FCL-04 | その後、流路はECLSS酸素リストリクタ・ペイロード熱交換器・ARSインターチェンジャ側と、後部アビオニクスベイ4〜6側の2つに分かれる。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-FCL-05 | 左舷の放熱器パネルはループ1に、右舷のパネルはループ2に直列に接続される。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-FCL-06 | 最初の39飛行では、コロンビアでのフレオン流量の低下が主要な問題の一つであった。（出典: https://ntrs.nasa.gov/citations/19920039157） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-TCS-07 | 熱交換器・コールドプレート網 | 熱 | 双方向 | ATCSは同一構成の2系統のフレオン21冷却ループ、アビオニクス用コールドプレート網、液液熱交換器、3種のヒートシンクから成る。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | — |
| IF-TCS-08 | 放熱器（ラジエータ） | 熱 | 送信 | フレオンは油圧熱交換器から放熱器へ流れ、ペイロードベイドアが閉じている上昇・再突入時はバイパス弁で放熱器を迂回する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | — |
| IF-TCS-09 | フラッシュエバポレータ（FES） | 熱 | 送信 | FESは上昇時の高度140,000 ft超でフレオン21ループの熱を排出し、軌道上では必要に応じて放熱器を補い、軌道離脱・再突入では高度約100,000 ftまで排熱する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | — |
| IF-TCS-10 | アンモニアボイラ（NH3） | 熱 | 送信 | アンモニアボイラは、再突入で高度100,000 ftを下回ってからフレオン21ループを冷却する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | — |
| IF-TCS-11 | GSE熱交換器（地上冷却） | 熱 | 送信 | 地上作業（点検・打上げ前・着陸後）では、フレオン21ループ内のGSE熱交換器が地上冷却によって機体の熱を排出する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | — |
| IF-TCS-21 | DPS・アビオニクス | データ・指令 | 受信 | FES出口のフレオン温度は計器盤O1で監視でき、32.2°F未満または64.8°F超（軌道投入後）でフレオンループのC/W灯が点灯する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/390） | 上位: IF-ECL-28 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-02 | 番号なし | Shuttle Reference: Active Thermal Control System | ATCSの構成とヒートシンクの使い分けを解説する。（出典: https://spaceflight.nasa.gov/shuttle/reference/shutref/orbiter/eclss/atcs.html） |
| TC-03 | SAE 911366（NTRS 19920039157） | Shuttle Orbiter ATCS design and flight experience | 最初の39飛行の運用と、フレオン流量低下・FES不具合・アンモニアボイラ系の問題と対策を述べる。（出典: https://ntrs.nasa.gov/citations/19920039157） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | フレオン冷却ループの喪失定義（A18-201）と管理（A18-251）、着陸後のフレオンループ構成（A16-53）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=2064） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節「Freon Loops」：2系統のフレオン21冷却ループ、ポンプパッケージ、ループの流路と流量の監視を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/380） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 出典の更新（1988年版・転載版 → SCOM OI-33）：1988年版の資料は、32°F未満または60°F超で点灯するとしていた。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html）（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/390）

## 6. 参考文献

1. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
2. NTRS 19920039157 Shuttle Orbiter ATCS design and flight experience（SAE 911366） — https://ntrs.nasa.gov/citations/19920039157
3. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p390） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/390
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にTC-26（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にTC-27（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（2文。うち本文を改めた1文に注記）（Rev. Q） |
