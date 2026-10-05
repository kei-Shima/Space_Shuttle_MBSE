# 航法援助・エアデータ（NAS）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-GNC-NAS-001 |
| 表題 | 航法援助・エアデータ（NAS）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-GNC-001 |
| 関連図 | SSD-SYS-ARC-001 図46 GN&C 機能構成 |

## 1. 目的

TACAN（またはGPS）、エアデータ系、MLS、電波高度計で地上局・衛星・大気に対する機体の位置・高度・対気状態を計測し、再突入から着陸までの航法・誘導・飛行制御と表示にデータを与える機能を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-GNC-NAS-01 | 3系統のGPSを持たない機体は冗長に動作する3台のTACANを持ち、各TACANは前胴の下面と上面に1つずつアンテナを持ち、受動冷却でミッドデッキのアビオニクスベイに置かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/484） |
| F-GNC-NAS-02 | TACANはTACANまたはVORTACの地上局に対する斜距離と磁方位を求め、最大距離は400 n. mi.である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/484） |
| F-GNC-NAS-03 | 再突入では2台以上のTACANがロックすると、TACANの距離・方位がMLSの捕捉（約18,000 ft）まで状態ベクトルの更新に使われる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/486） |
| F-GNC-NAS-04 | TACANの冗長管理は距離・方位のデータの中間値を選び、故障を検出するとSM ALERTを点灯してGPCの故障メッセージを出す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/487） |
| F-GNC-NAS-05 | OV-105では3台のGPS受信機が冗長に動作し、各受信機は前胴の下面と上面のアンテナを持ち、前部アビオニクスベイに置かれた対流冷却の装置（13 lb・40 W）である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/488） |
| F-GNC-NAS-06 | GPSの選択フィルタは使える受信機が3台なら中間値選択、2台なら平均、1台ならその1台を選び、1台もなければ最後の有効なデータを伝播するが、有効なデータから18秒を超えるとそれを航法の更新に使わない。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/490） |
| F-GNC-NAS-07 | エアデータ系は前胴下面の左右2本のプローブと4台のADTAから成り、左プローブの圧力・温度はADTA 1・3へ、右プローブはADTA 2・4へ導かれる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/490） |
| F-GNC-NAS-08 | ADTA SOPはADTAのデータから迎角・マッハ数・等価対気速度・真対気速度・動圧・気圧高度を計算し、4台の圧力が一致すれば各プローブの1組を平均してソフトウェアに渡す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/491） |
| F-GNC-NAS-09 | 各プローブは2台の交流モータの回転式電気機械アクチュエータで独立に展開し、展開時間は2台のモータで15秒、1台で30秒である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/491） |
| F-GNC-NAS-10 | 3台のMLSは着陸滑走路脇の地上局に対する斜距離・方位角・仰角を求めて進入・着陸の段階で使われ、各MLSはKu帯の送受信機と復号器から成る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/492） |
| F-GNC-NAS-11 | MLSの冗長管理は3台が有効なら距離・方位角・仰角の中間値を、2台なら平均を選ぶ。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/494） |
| F-GNC-NAS-12 | 2台の電波高度計はC帯のパルスで最寄りの地表までの高度を0〜5,000 ftの範囲で測るが、航法には使われず乗員の監視用である。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/495） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-GNC-02 | 誘導・航法演算 | データ・指令 | 送信 | TACANの斜距離・磁方位、MLSの斜距離・方位角・仰角、ADTAの気圧高度を再突入の航法ソフトウェアへ送り、期待誤差の範囲内のデータを状態ベクトルの更新に取り込む。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/530）各航法装置は、5台のGPCにつながる8台の飛行重要MDMの1台に配線される。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474） | — |
| IF-GNC-03 | DAP・飛行制御センサ | データ・指令 | 送信 | エアデータ系は、高度の航法の更新に加え、誘導の操舵・スピードブレーキ指令の計算と飛行制御則の計算の更新にデータを与える。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/490）エアデータをG&Cに取り込まないとき、飛行制御は迎角を一定値（7.5°）とし、動圧を航法の対地相対速度の表から求める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1403） | — |
| IF-GNC-12 | 電力系（EPS） | 電力（28 VDC） | 受信 | MLS 1・2・3には、それぞれ主母線A・B・Cから電力を供給する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/494）GPS受信機は単一のESS母線と前方電力制御器（FPC）の組合せから給電され、アンテナのプリアンプの遮断器はパネルO14・O15・O16にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/489） | 上位: IF-ORB-14 |
| IF-GNC-13 | 地上航法局・GPS衛星 | RF（無線） | 受信 | TACANは地上のTACAN局、MLSは着陸滑走路脇の地上局に対する機体の位置を電波で検知し、GPSは衛星の測距信号を受けて位置と速度を求める。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474）機上のTACAN受信機は、地上局のビーコンが割り当てられたL帯の周波数で送り続けるパルス対を受信する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/484） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| GN-01 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.13節（PDF p484〜495）：TACAN・GPS（OV-105の3系統）・エアデータ系（プローブ2本・ADTA 4台）・MLS・電波高度計の構成、運用、冗長管理を解説する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/484） |
| GN-02 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A8-111（PDF p1402〜1403）・A8-115（p1407）・A8-18（p1358〜1360）：エアデータのG&Cへの取り込み、単一系統GPSの使用条件、着陸に要るMSBLSの数を定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1407） |
| GN-05 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.5.1節（PDF p173）：着氷のおそれがあるときのエアデータプローブのヒータと、TACAN 120秒・MSBLS 180秒・電波高度計180秒の暖機時間を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=173） |
| GN-06 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 7章（PDF p225〜227）：GPSの電源投入・初期化、自己点検と、GPSを航法に取り込む条件（FOMなど）を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=227） |
| GN-07 | NASA-CR-185550 | Independent Orbiter Assessment (IOA): FMEA/CIL Assessment Interim Report（1988年） | 付録C.7（PDF p57）：BFSの評価で、NASAの基準がIMU・ADTA・エアデータプローブのCIL項目を含んでいたことを記す。（出典: https://ntrs.nasa.gov/api/citations/19900002467/downloads/19900002467.pdf#page=57） |
| GN-10 | JSC-17959 | STS-2 Orbiter Mission Report（1982年） | 2.3.5.3〜2.3.5.5節（PDF p41）：TACANの方位の跳び（マルチパス）、MSBLSの捕捉（約16,500 ft）、電波高度計の前脚の反射による誤指示を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-2%20Orbiter%20Mission%20Report.pdf#page=41） |
| GN-12 | JSC-63290 | STS-114 Space Shuttle Mission Report（2006年） | ADTA（PDF p52）：4台のADTAが正常で、エアデータプローブを約マッハ4.7で展開し、約マッハ2.6でGN&Cに取り込んだと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-114%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |
| GN-13 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | ADTA・GPS（PDF p56）：ADTAの正常な動作と、電源投入中のGPSの正常な性能を記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=56） |
| GN-15 | JSC 37461 | STS-135 Space Shuttle Mission Report（2011年） | GPS（PDF p46）：打上げの約4時間46分前にGPSの電源を入れ、プラズマ領域の高FOMの期間が取込み前に解消したと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-135%20Space%20Shuttle%20Mission%20Report.pdf#page=46） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 構成変更：OI-27の飛行ソフトウェアからTACANをGPSに置き換える作業が始まり、3系統GPSの機体と、3系統TACANに単一のGPS受信機を加えた機体が混在する（3系統GPSはOV-105だけである）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/469）

> **注記** 検証メモ：SCOM（OI-33）はMLSと記すが、運用飛行規則（A8-17・A8-18・A8-1001）は同じ装置をMSBLSと記す。本書の文はそれぞれの資料の呼び方に従った。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1358）

> **注記** TACANのベイ空冷はIF-ECL-32（下位はIF-ARS-41）に含まれ、運用飛行規則は交流で動くGould製TACANが冷却を失うと5分以内に短絡しうるとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467）

> **注記** SCOM の付録E は OI-33 の飛行ソフトウェアの主な変更をまとめたもので、その多くは乗員による系の監視・操作の方法を変えていない。本書の記述は SCOM の本文による。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.13節 TACAN（PDF p484） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/484
2. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p486） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/486
3. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p487） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/487
4. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p488） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/488
5. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p490） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/490
6. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p491） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/491
7. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p492） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/492
8. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p494） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/494
9. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p495） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/495
10. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p530） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/530
11. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p474） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/474
12. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-111 GNC Air Data System Management（PDF p1403） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1403
13. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p489） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/489
14. Shuttle Crew Operations Manual 2.13 Guidance, Navigation, and Control（USA007587 Rev. A CPN-1、PDF p469） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/469
15. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A8-18 Landing Systems Requirements（PDF p1358） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1358
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A9-154 AC Load Management During Ascent（続き）（PDF p1467） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1467
17. Shuttle Crew Operations Manual 付録E OI Updates（USA007587 Rev. A CPN-1、PDF p1149） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/1149

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-10-01 | 初版作成（公開資料に基づく検討用） |
