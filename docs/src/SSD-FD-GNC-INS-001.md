# 慣性計測・アライメント（INS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-GNC-INS-001 |
| 表題 | 慣性計測・アライメント（INS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-GNC-001 |
| 関連図 | SSD-SYS-ARC-001 図46 GN&C 機能構成 |

## 1. 目的

3台のIMUで機体の慣性姿勢と速度を計測し、2台のスタートラッカとCOAS・HUDで恒星を観測してIMUをアラインメントする機能と、IMUの運転モード・電源・冗長の構成を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-GNC-INS-01 | オービタには3台のIMUがあり、各IMUは慣性安定化された4軸ジンバルの台座に3個の加速度計と2個の2軸ジャイロを載せ、GNCソフトウェアに慣性姿勢と速度のデータを与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474） |
| F-GNC-INS-02 | 飛行は1台のIMUでも可能であるが、冗長のために3台を搭載し、IMUはフライトデッキの表示・制御パネルの前方にある航法ベースに取り付けられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/475） |
| F-GNC-INS-03 | ジンバルは外側から外ロール・ピッチ・内ロール・方位の順で、冗長な内ロールジンバルが全姿勢での使用を可能にし、ジンバルロックを防ぐ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/475） |
| F-GNC-INS-04 | 3台のIMUの軸は互いにも機体軸ともずらして（スキュー）取り付けられ、姿勢による不具合が同時に1台を超えないようにするとともに、冗長管理による故障IMUの判定に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/476） |
| F-GNC-INS-05 | IMUはヒータだけに給電する暖機・待機モードと運転モードを持ち、冷えた状態から運転温度に達するまで約8時間かかり、GNC OPS 2・3・9のソフトウェア指令で運転モードに移る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477） |
| F-GNC-INS-06 | 運転指令を受けたIMUはジンバルをケージしてからジャイロを回し、安定化ループに給電して慣性基準となるまでに約85秒かかり、電力の節約のために切る場合を除いて、打上げ前から飛行の終わりまで運転モードのままとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/478） |
| F-GNC-INS-07 | IMU SOPは速度のM50座標への変換、レゾルバ出力のジンバル角への変換、表示用の加速度の計算、ソフトウェアBITE、スタートラッカまたは他のIMUによるずれに基づくトルク指令の計算を行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/479） |
| F-GNC-INS-08 | スタートラッカは−Y軸と−Z軸の2台で、IMUを載せた航法ベースの延長部に置かれ、IMUのアラインメントと、ランデブ時の目標の追尾・視線ベクトルの算出に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/479） |
| F-GNC-INS-09 | スタートラッカで得た2つの恒星の視線ベクトルで機体の慣性姿勢を定め、IMUの姿勢との差からトルク角を求めてジャイロのドリフトを除くが、IMUのずれが1.4°を超えるとHUDでまず1.4°以内に合わせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/480） |
| F-GNC-INS-10 | スタートラッカのアセンブリには冗長管理がなく、2台は独立していずれも全作業を行え、単独でも同時にも運用できる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/481） |
| F-GNC-INS-11 | COASは無限遠に焦点を合わせた照準を投影する光学器具で、スタートラッカが使えないときのアラインメントには主にHUDが使われるがCOASも使え、乗員がATT REFボタンでマークした瞬間の3台のIMUのジンバル角が記録される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/482） |
| F-GNC-INS-12 | IMUの熱制御は自動の内部ヒータ系と強制空冷系から成り、内部ヒータはIMUに電源を入れると働いて電源を切るまで動作する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/476） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-ECL-32 | 大気再生系（ARS） | 熱 | 受信 | IMUの強制空冷は3台のIMUすべてに供する3台のファンで行い、同時に使うのは1台である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477）ベイファンは交流で動くGould製TACANを冷却し、冷却を失ったTACANは5分以内に短絡しうる。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467） | 上位: IF-ORB-34 下位: IF-ARS-19 下位: IF-ARS-41 |
| IF-GNC-01 | 誘導・航法演算 | データ・指令 | 送信 | IMUは慣性姿勢と速度のデータをGNCソフトウェアへ送り、航法はそれで状態ベクトルを伝播し、誘導は姿勢データと状態ベクトルから操舵指令を作る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474）IMU SOPは、速度のM50座標への変換、レゾルバ出力のジンバル角への変換、表示用の加速度の計算などを行う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/479） | — |
| IF-GNC-10 | GNC運用管理 | データ・指令 | 受信 | 運用飛行規則A8-110に従い、IMUの恒星アラインメントをおよそ飛行日ごとに1回行い、軌道離脱噴射の70分前にIMU間のアラインメントを行う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1400）IMU間のアラインメントはGNC OPS 2または3で行い、所要時間は3〜6分である。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=194） | — |
| IF-GNC-11 | 電力系（EPS） | 電力（28 VDC） | 受信 | 各IMUには2つの別々の遠隔電力制御器を通して冗長な28 VDCを供給し、IMU 1・2・3の電源スイッチはパネルO14・O15・O16にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477）スタートラッカの扉は、DOOR CONTROL SYS 1・SYS 2スイッチで制御する各扉2台の三相交流モータで開閉する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/479） | 上位: IF-ORB-14 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節 Navigation Hardware（PDF p474〜484）：3台のIMU（4軸ジンバル・スキュー配置・冗長28 VDC）、2台のスタートラッカ、COASとHUDによるアラインメントを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/475） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A8-108〜110（PDF p1396〜1401）と第4章A4-151（p940）：HUD/COASの較正、スタートラッカの管理、IMUのアラインメント・ドリフト補償と、EIでの姿勢誤差0.5°の制限を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1398） |
| GN-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | GNC SSR-1〜3（PDF p680〜682）：IMUの起動と、HUDまたはスタートラッカの恒星データによるマトリクス（恒星）アラインメントの手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=680） |
| GN-04 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2章（PDF p15〜32）：ジンバル・ジャイロ・レゾルバ・加速度計・スキュー・BITE・熱制御・電源・GPCとのインタフェース（IMU 1〜3はFF MDM 1〜3）とIMUの表示を解説する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=28） |
| GN-05 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.5.1節（PDF p172〜173）：スタートラッカの太陽・地平線からの離角と扉の作動時間、IMUの運転温度と入力電圧の制約を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=173） |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7章 GNC（PDF p191〜197）：スタートラッカによるIMUのアラインメント、IMU間のアラインメント、スター・オブ・オポチュニティのアラインメント、COAS・HUDの較正の手順を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=194） |
| GN-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.5.1〜2.3.5.2節（PDF p40）：スタートラッカの光学汚染と警報、RMによる3台のIMUの選択と速度・姿勢の追従のデータを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=40） |
| GN-11 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.3.3.1節（PDF p23）：スタートラッカ・COAS・航法ベースの正常な動作と、航法ベースの安定性・水投棄中のスタートラッカの試験の結果を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=23） |
| GN-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | IMU・スタートラッカ（PDF p56）：IMUの加速度計の補償を1回、ドリフト補償を2回調整し、−Yスタートラッカは航法星を705回捕捉して495回逃したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=56） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 構成の違い：スタートラッカには固体素子型（SSST）とイメージディセクタ管型（IDT）の2種類があり、3機のオービタに混在して搭載されている。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/481）

> **注記** 検証メモ：運用飛行規則A8-12はKT-70型とHAINS型のIMUに触れ、ドリフトの大きいKT-70型を最悪の場合とするが、SCOM（OI-33）の2.13節はIMUの型式を記していない。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1355）

> **注記** IMUの強制空冷（3台のIMUに共通の3台のIMUファン）はECLSSのIMU空冷の機能で、本書では親の行にある下位IF IF-ECL-32を再利用して描く。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p474） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474
2. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p475） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/475
3. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p476） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/476
4. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p477） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/477
5. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p478） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/478
6. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p479） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/479
7. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p480） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/480
8. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p481） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/481
9. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p482） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/482
10. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-154 AC Load Management During Ascent（続き）（PDF p1467） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-110 IMU System Management（PDF p1400） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1400
12. Orbit Operations Checklist Rev M PCN-10 7-4 IMU Alignment – IMU/IMU（PDF p194） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=194
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-12 HUD and COAS Alignment（PDF p1355） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1355
14. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
