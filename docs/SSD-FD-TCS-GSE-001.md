# GSE熱交換器・地上冷却（GSE）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-TCS-GSE-001 |
| 表題 | GSE熱交換器・地上冷却（GSE）機能説明書 |
| 版・日付 | Rev. D／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-ATCS-001 |
| 関連図 | SSD-SYS-ARC-001 図8 熱制御 機能構成 |

## 1. 目的

地上作業・打上げ前・着陸後の排熱を担うGSE熱交換器と地上冷却の機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-TCS-GSE-01 | 地上作業（点検・打上げ前・着陸後）では、フレオン21ループ内のGSE熱交換器が地上冷却によって機体の熱を排出する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-GSE-02 | 打上げから高度140,000 ft未満（約125秒）までは、ループの熱容量（サーマルラグ）で熱を吸収する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） |
| F-TCS-GSE-03 | 射点ではパッド地上冷却系がGSE熱交換器を通じて機上ループを十分に冷やし、軌道到達までの熱容量を確保する。（出典: https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf） |
| F-TCS-GSE-04 | 地上冷却系は、整備施設・組立棟・着陸施設でのオービタ通電時にも必要とされた。（出典: https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf） |
| F-TCS-GSE-05 | 着陸後の回収隊の冷却車は、T-0アンビリカルを通じてオービタの冷却系にFreon 114を供給した。（出典: https://en.wikipedia.org/wiki/Space_Shuttle_recovery_convoy） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-TCS-11 | フレオン21冷却ループ×2 | 熱 | 受信 | 地上作業（点検・打上げ前・着陸後）では、フレオン21ループ内のGSE熱交換器が地上冷却によって機体の熱を排出する。（出典: https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html） | — |
| IF-TCS-15 | 地上冷却・パージ設備 | 熱 | 受信 | 着陸後に地上冷却が始まるとアンモニアボイラを止め、GSE熱交換器で排熱する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392）射点ではパッド地上冷却系がGSE熱交換器を通じて機上ループを十分に冷やし、軌道到達までの熱容量を確保する。（出典: https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf） | 上位: IF-ECL-34 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| TC-01 | 番号なし | NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS | フレオンループの流路、放熱器・FES・アンモニアボイラ・GSE熱交換器の構成と運用を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |
| TC-07 | NTRS 19810005632 | Orbiter Integrated Active Thermal Control Subsystem Test | GSE熱交換器・FES・ラジエータ・アンモニアボイラを含むATCS統合熱真空試験。（出典: https://ntrs.nasa.gov/api/citations/19810005632/downloads/19810005632.pdf） |
| TC-16 | NASA LLIS | ECLSS Ground Coolant Systems（教訓文書） | 射点の地上冷却系がGSE熱交換器で機上ループを冷やす仕組みと、設備の教訓をまとめる。（出典: https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf） |
| TC-17 | 番号なし | Wikipedia – Space Shuttle recovery convoy | 着陸後の冷却車（Freon 114）とパージ空調車による機体の冷却・パージを記す。（出典: https://en.wikipedia.org/wiki/Space_Shuttle_recovery_convoy） |
| TC-26 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | 着陸後に地上冷却を失った場合の処置（A16-51：GSE冷却カート）と冷却の延長（A16-52）を規定する。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1895） |
| TC-27 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節のATCS：打上げ前・着陸後の冷却に使うGSE熱交換器がフレオンループの流路にあることを示す。着陸後のGSE地上冷却装置の接続は1.1節（p36）にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382） |

## 5. 参考文献

1. NSTS 1988 News Reference Manual – Water Coolant Loop / ATCS / Supply and Waste Water / WCS（GlobalSecurity.org 転載） — https://www.globalsecurity.org/space/library/report/1988/sts-eclss-wcl.html
2. NASA LLIS – ECLSS Ground Coolant Systems（教訓文書） — https://llis.nasa.gov/llis_lib/pdf/1045995main_ECLSSGroundCoolantSystemLL.pdf
3. Wikipedia – Space Shuttle recovery convoy — https://en.wikipedia.org/wiki/Space_Shuttle_recovery_convoy
4. Shuttle Crew Operations Manual 2.9 Environmental Control and Life Support System（USA007587 Rev. A CPN-1、PDF p392） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/392
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Active Thermal Control System（Freon Loops）（PDF p382） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/382

## 6. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-25 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-09-25 | 関連文書にTC-26（NSTS-12820 Vol. A 運用飛行規則）を追加 |
| Rev. B | 2026-09-26 | 関連文書にTC-27（Shuttle Crew Operations Manual、USA007587 Rev. A CPN-1）を追加 |
| Rev. C | 2026-09-30 | IF-TCS-15 に上位 IF-ECL-34 を付記（Rev. I） |
| Rev. D | 2026-10-01 | 出典を乗員運用マニュアル（SCOM、OI-33）の頁に更新（2文）（Rev. Q） |
