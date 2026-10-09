# DAP・飛行制御センサ（FCS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-GNC-FCS-001 |
| 表題 | DAP・飛行制御センサ（FCS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-GNC-001 |
| 関連図 | SSD-SYS-ARC-001 図46 GN&C 機能構成 |

## 1. 目的

RGA・AA・SRB RGAで機体の角速度と加速度を計測し、遷移DAP・軌道DAP・エアロジェットDAPが誘導または乗員の指令と比較して、RCS噴射・OMS TVC・舵面・推力方向の指令を生成する機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-GNC-FCS-01 | 機体には4台のRGAがあり、各RGAはロール・ピッチ・ヨーの角速度を測る3個の1自由度レートジャイロを持ち、これらの角速度は上昇・再突入・軌道投入・軌道離脱でFCSへの主なフィードバックである。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/498） |
| F-GNC-FCS-02 | RGAはペイロードベイ床下の後部隔壁にあり、フレオン冷却ループのコールドプレートで冷却される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/498） |
| F-GNC-FCS-03 | RGAの冗長管理は交換可能な中間値方式（IMVS）でデータを選び、妥当性限界による故障検出に加え、スピンモータ回転検出器（SMRD）で電源を失ったRGAを外す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/498） |
| F-GNC-FCS-04 | RGAは電力節約のため軌道上ではFCS点検時を除き切られ、軌道離脱準備とOPS 3移行の前に再び入れられ、RGAを切ったままのOPS 3移行は制御の喪失を招きうる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/498） |
| F-GNC-FCS-05 | 4台のAAはそれぞれ横（Y軸）と垂直（Z軸）の加速度を測る2個の加速度計を持ち、ミッドデッキ前部アビオニクスベイ1・2に置かれ、安定増強・第1段の荷重軽減・ADIの操舵誤差の表示に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/496） |
| F-GNC-FCS-06 | SRB RGAは各SRBに2台あり、第1段上昇中だけピッチ・ヨーの角速度のフィードバックを与え、SRB分離の2〜3秒前に解除されてオービタRGAのデータに置き換えられる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/499） |
| F-GNC-FCS-07 | DAPは操縦の要求を解釈して機体の現状と比較し、適切な舵効への指令を生成する飛行制御ソフトウェアの中核で、飛行段階ごとに異なるDAPがある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/516） |
| F-GNC-FCS-08 | 遷移DAPはMECOから使われ、MECOの約20秒後に外部タンクの分離を自動で指令して下向きのRCSジェットで−Z方向へ4 ft/sまで並進させ、OMS-1・OMS-2の噴射ではOMSのTVCとRCSを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/518） |
| F-GNC-FCS-09 | 軌道上の飛行制御ソフトウェアはRCS DAP・OMS TVC DAP・姿勢処理モジュールとDAPの選択論理から成り、RCS DAPは主ジェットまたはバーニアジェットで姿勢と角速度を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/519） |
| F-GNC-FCS-10 | OMS TVC DAPは誘導の要求速度をOMSのジンバル指令に変換し、OMSの点火・停止の指令と、OMSエンジンの故障時に姿勢を保つRCSの指令も生成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/520） |
| F-GNC-FCS-11 | エアロジェットDAPはMM 304への移行（通常EI-5）から車輪停止まで働き、動圧に応じて舵面とRCSジェットを組み合わせる飛行適応型・閉ループの角速度指令型の制御で、ジェットの使用を徐々に減らして舵面の使用を増やす。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/521） |
| F-GNC-FCS-12 | 再突入のロールモードはエルロンを主な舵効とするラップアラウンドDAPが標準で、後部RCSの推進薬が少ない（10%未満）場合や後部のヨージェットを失った場合は、ヨージェットを使わないNo Yaw Jetモードを使う。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/522） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-GNC-03 | 航法援助・エアデータ | データ・指令 | 受信 | エアデータ系は、高度の航法の更新に加え、誘導の操舵・スピードブレーキ指令の計算と飛行制御則の計算の更新にデータを与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/490）エアデータをG&Cに取り込まないとき、飛行制御は迎角を一定値（7.5°）とし、動圧を航法の対地相対速度の表から求める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1403） | — |
| IF-GNC-04 | 誘導・航法演算 | データ・指令 | 受信 | 誘導は航法の状態ベクトルと姿勢データから飛行制御への操舵指令を作り、飛行制御はIMUの姿勢データを使って舵面・エンジンジンバル・RCSジェットの指令に変換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474）制御ソフトウェアは状態ベクトルの情報で舵効を選び、制御ゲインを設定する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/470） | — |
| IF-GNC-05 | 舵面・推力方向制御駆動 | データ・指令 | 双方向 | 飛行制御ソフトウェアの舵面とSSME・SRBの位置指令を、フライトアフトMDMを経てASAとATVCへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/513）舵面の位置フィードバックはASAを経て戻り、SOPがエレボン・ラダー・スピードブレーキ・ボディフラップの角度に変換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/513） | — |
| IF-GNC-06 | 乗員操縦・表示 | データ・指令 | 受信 | RHCの入力は冗長管理とRHC SOPを経てエアロジェットDAPへ渡り、SOPが軸ごとに合成した回転指令を飛行制御ソフトウェアに与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/500）前方と後方のTHCの冗長な信号も冗長管理とSOPを経て飛行制御系へ渡り、両者が相反する並進指令を出すと指令は出ない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/502） | — |
| IF-GNC-14 | RCS：噴射器駆動回路 | データ・指令 | 送信 | RCS DAPは、OMS噴射中を除く軌道上の全期間に、RCSジェットの噴射指令で機体の姿勢と角速度を制御する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/519）再突入ではエアロジェットDAPがピッチの角速度誤差を動圧40 psfまでジェットの指令に変える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/521） | 上位: IF-ORB-03 |
| IF-GNC-15 | OMS：推力方向制御（ジンバル） | データ・指令 | 送信 | OMS TVC DAPは誘導の要求速度をOMSのジンバル指令に変換し、OMSの点火・停止の指令も生成する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/520）OMS処理部は指定した推力方向を得るジンバルアクチュエータの指令を生成し、OMSの推力は重心を通るように加える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/519） | 上位: IF-ORB-04 |
| IF-GNC-19 | 固体ロケットブースタ（SRB×2） | データ・指令 | 受信 | 各SRBの前部スカートにある2台のSRB RGAは、角速度に比例する電圧をフライトアフトMDMを経てGPCのSRB RGA SOPへ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/499）SRB RGAは1回の飛行より多く使ってはならない。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=178） | 上位: IF-ORB-22 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節（PDF p495〜499・p516〜523）：AA・RGA・SRB RGAと、遷移DAP・軌道DAP（RCS DAP・OMS TVC DAP）・エアロジェットDAPを解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/516） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A8-5（PDF p1352）・A8-19（p1361）・A8-102（p1386）・A8-113（p1404〜1406）：AAの故障許容、ヨージェットのダウンモード、RGAの管理、OMS TVCの管理を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1386） |
| GN-03 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | GNC SSR-8（PDF p683）：単発噴射の設定だけを行ってOMSの推力ベクトルを重心に通し、OMSをジンバルの電源・データ経路の故障から守る手順を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=683） |
| GN-05 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.5.1節（PDF p177〜178）：RGAの使用前2分の暖機と、SRB RGAを1回の飛行に限って使うことを定める。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=177） |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7章 FCS CHECKOUT（PDF p211〜213）：RGA・ADTAのセンサ試験と、限界を外れたLRUの選択解除を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=211） |
| GN-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.5.6節 Controls（PDF p41）：AAとRGAの性能が安定し、チャネル間の差が故障検出のしきい値の40%を超えなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=41） |
| GN-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | 飛行制御系（PDF p52）：OPS 8のFCS点検で、舵面の駆動・チャネル試験・ORGAとAAの試験・DDU/操縦装置のデータに異常がなかったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |
| GN-14 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | 飛行制御系（PDF p53）：4台のORGAと4台のSRGAの出力が互いに追従し、SMRDの脱落がなく、4台のAAも正常に追従したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=53） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：SCOM（PDF p497・p533）はパネルF7のRGA/ACCEL警報灯は使われないとするが、C&W訓練マニュアルのハードウェアC&W表はチャネル93にRGA/AAを残している。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97）

> **注記** SODBは、RGAは温度が安定するよう使用の2分前までに暖機する必要があるとする（SRB RGAを1回の飛行に限って使う制約は、SRB RGAの角速度のIFの2文目に記す）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=177）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p498） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/498
2. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p496） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/496
3. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p499） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/499
4. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p516） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/516
5. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p518） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/518
6. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p519） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/519
7. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p520） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/520
8. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p521） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/521
9. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p522） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/522
10. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p490） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/490
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-111 GNC Air Data System Management（PDF p1403） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1403
12. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p474） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474
13. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p470） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/470
14. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p513） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/513
15. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p500） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/500
16. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p502） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/502
17. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.5.1 GN&C Subsystems（SRB RGA Usage Limit）（PDF p178） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=178
18. USA006019 Rev. A（C&W 21002） Caution and Warning（訓練マニュアル、2008年） 表7-3 Hardware C&W（PDF p97） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97
19. JSC-08934 Vol.1 Rev. E Shuttle Operational Data Book（Systems Performance and Constraints Data） 3.4.5.1 GN&C Subsystems（RGA Warm-up）（PDF p177） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=177
20. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
