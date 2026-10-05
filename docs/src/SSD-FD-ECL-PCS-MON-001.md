# 計測・表示・警報（MON）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ECL-PCS-MON-001 |
| 表題 | 計測・表示・警報（MON）機能説明書 |
| 版・日付 | Rev. A／2026-10-01 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ECL-PCS-001 |
| 関連図 | SSD-SYS-ARC-001 図18 圧力制御系 機能構成 |

## 1. 目的

乗員室圧、PPO2、O2・N2流量、dP/dTなどを計測し、O1の計器、SM表示、主C&WのCABIN ATM灯とクラス1のクラクソンで乗員に知らせる機能と、計測の喪失判定を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ECL-PCS-MON-01 | O14のMNAとO15のMNBにあるO2/N2 CNTLRの遮断器は、O2/N2コントローラのほか、乗員室圧、PPO2センサA・B、系統1・2のO2・N2流量、制御弁位置の各トランスデューサに給電し、その他のPCSの計測は専用信号調整器（DSC）が給電する（訓練マニュアル2.6.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39） |
| F-ECL-PCS-MON-02 | O15のMNBのPPO2 C/CABIN dP/dT遮断器がPPO2センサCとハードウェアのdP/dTセンサに給電し、dP/dTセンサはPASS・BFSのすべてのOPSで使える（訓練マニュアル2.6.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39） |
| F-ECL-PCS-MON-03 | BFSのバックアップdP/dTは乗員室圧トランスデューサの値を5秒ごとに30秒前と比べて算出し、等価dP/dTはdP/dTに14.7を掛けて乗員室圧で割るため、漏れ率が一定なら一定の値を示す（訓練マニュアル2.6.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39） |
| F-ECL-PCS-MON-04 | O2濃度はPPO2センサA・B・Cの平均を乗員室圧で割ってPASSのSM SYS SUMM 1に表示し、N2タンクの量はPASSのSM計算機が圧力・容積・温度（PVT）から求める（訓練マニュアル2.6.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39） |
| F-ECL-PCS-MON-05 | 軌道上のPCSの主な表示はPASSのSM SPEC 66で、上昇・再突入ではBFSのSM SYS SUMM 1を使い、O1の計器でCABIN dP/dT、O2/N2流量（系統と気体をロータリスイッチで選ぶ）、乗員室圧、PPO2（センサA・Bを選ぶ）を監視する（訓練マニュアル2.6.2・2.6.3節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=41） |
| F-ECL-PCS-MON-06 | 主C&WのCABIN ATM灯（赤）は乗員室圧、PPO2、O2流量、N2流量の限界外で点灯し、ハードウェアチャネルは乗員室圧、系統1・2のO2流量、PPO2 A・B、系統1・2のN2流量の順に4・14・24・34・44・54・64である（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/132） |
| F-ECL-PCS-MON-07 | CABIN ATM灯の14.7 psiaでの既定の限界は、乗員室圧13.8〜15.2 psia、PPO2 A・B 2.7〜3.6 psia、系統1・2のO2・N2流量4.9 lb/hr以下である（訓練マニュアル2.6.4節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=46） |
| F-ECL-PCS-MON-08 | dP/dtセンサの値が-0.08 psi/minを超えると、4つのMASTER ALARM灯とクラクソン（クラス1）で急減圧を知らせ、警報は負の値だけで出る。dP/dtまたはバックアップdP/dtで0.12 psi/min以上の低下はクラス3の警報を出す（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123） |
| F-ECL-PCS-MON-09 | 使用中の流量センサは0 lbm/hrで下限外、5 lbm/hrで上限外となり、4.9 lbm/hrで高流量警報を出す。OV-104には25 lbm/hrまで測れる非線形の新しいセンサを組み込み、表示の最大は12.4 lbm/hrとなる（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/367） |
| F-ECL-PCS-MON-10 | PPO2センサは、互いに0.15 psi以内にある2個のうち近い方から0.15 psiを超えてずれると喪失とみなし、2個目以降の故障は過去の特性、O2/N2コントローラの切替の頻度、O2流量から解析で判断する（A17-205）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1962） |
| F-ECL-PCS-MON-11 | STS-4の上昇中にもdP/dtが-0.05 psi/minの警報点を超えてクラクソンが作動し、最初の4回の飛行で毎回起きたため、作動値を上げる変更が進められた（STS-4ミッション報告）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42） |
| F-ECL-PCS-MON-12 | STS-108では、EVA後の再与圧の後に系統1の窒素流量センサの表示が0になったまま戻らず、飛行後の試験でセンサの故障を確かめた（STS-108ミッション報告）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-PCS-10 | 乗員室（制御対象） | 推進薬・流体 | 受信 | 乗員室の大気を、乗員室圧トランスデューサ、PPO2センサA・B・C、ハードウェアのdP/dTセンサで検知する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39）PPO2センサA・Bはミッションスペシャリスト席の下にある。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366） | 上位: IF-ECL-02 |
| IF-PCS-11 | 酸素供給・分配 | 推進薬・流体 | 受信 | 系統1・2の酸素系でO2流量（0〜5 lbm/hr）とO2レギュレータ圧（REG P）を計測し、SM SPEC 66に表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=42） | — |
| IF-PCS-12 | 窒素供給 | 推進薬・流体 | 受信 | 系統1・2の窒素系でN2流量（0〜5 lbm/hr）、N2レギュレータ圧（REG P）、水タンクのN2圧、N2量のもとになる値を計測し、SM SPEC 66に表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=42）N2量はPASSのSM計算機がタンクの圧力・容積・温度（PVT）から求める。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39） | — |
| IF-PCS-13 | O2/N2マニホールド・PPO2制御 | データ・指令 | 送信 | PPO2センサAのデータはO2/N2コントローラ1が、センサBのデータはコントローラ2が使い、PPO2 SNSR/VLVスイッチをREVERSEにすると対応が入れ替わる。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=29） | — |
| IF-PCS-14 | DPS・アビオニクス | データ・指令 | 送信 | 乗員室圧、PPO2 A・B、系統1・2のO2・N2流量を主C&Wのハードウェアチャネル4・14・24・34・44・54・64へ送り、限界外でCABIN ATM灯を点灯させる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/132）dP/dtセンサの値が-0.08 psi/minを超えると、4つのMASTER ALARM灯とクラクソン（クラス1）で急減圧を知らせる。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123） | 上位: IF-ECL-36 |
| IF-PCS-15 | 与圧運用管理 | データ・指令 | 送信 | 14.7 psiaに換算した等価dP/dTを、上昇中の隔離できない漏れによる緊急中止（0.15 psia/min超）とAOA（0.02〜0.15 psia/min）の判定に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1955） | — |
| IF-PCS-22 | 電力系（EPS） | 電力（28 VDC） | 受信 | O15のMNBのPPO2 C CAB dP/dT遮断器が、dP/dTセンサとPPO2センサCの電源に主母線Bの電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52）その他のPCSの計測は、専用信号調整器（DSC）が給電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39） | 上位: IF-ECL-42 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| PC-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 2.6節（PDF p39〜46）：O2/N2 CNTLRとPPO2 C/CABIN dP/dTの遮断器が給電するトランスデューサ、バックアップ・等価dP/dT、O2濃度とN2量の計算、SPEC 66・SYS SUMM 1・O1の計器、CABIN ATM灯の限界を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39） |
| PC-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p116・p123・p132）：ハードウェアC&Wの乗員室圧・PPO2・O2/N2流量のチャネルとCABIN ATM灯、dP/dtのクラス1警報（-0.08 psi/min）とクラス3警報を示し、2.9節（p367）でO1の計器と流量センサの範囲を示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/132） |
| PC-03 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-205（PDF p1962）：3個のPPO2センサの比較によるセンサの喪失を定義し、A17-302A（p1977）で乗員室圧トランスデューサが故障したときは10.2 psiaへの減圧を行わないと定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1962） |
| PC-04 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.2b・6.2c（PDF p271・p277）：乗員室圧が13.8（10.0）psia未満・15.2（10.6）psia超、PPO2が2.70（2.55）psia未満・3.60（2.90）psia超のときの処置を示し、PPO2 AかBが2.50未満ならQDMを着ける。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=277） |
| PC-22 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 3.4節（PDF p48〜49）：dP/dTセンサが-0.08 psi/minを超えるとクラス1の警報を出し、バックアップdP/dTと等価dP/dTは下限を超えたときにクラス3の警報だけを出すと示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=48） |
| PC-24 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.26節 表3.26-5（PDF p658）：CABIN ATM灯の条件を、乗員室圧14.1 psia未満・15.3 psia超、PPO2 2.8 psia未満・3.6 psia超、O2・GN2流量5 lb/hr超とする。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=658） |
| PC-25 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 4-6（PDF p102）：フライトデッキ右舷のR17・R18パネルの裏にあるPPO2センサA・B・Cのフィルタの清掃を示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=102） |
| PC-30 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | 2.6.3節（PDF p42）：上昇中にdP/dtが-0.05 psi/minの警報点を超えてクラクソンが作動し、最初の4回の飛行で毎回起きたため作動値を上げる変更を進めたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42） |
| PC-32 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p31：EVA後の再与圧の後に系統1の窒素流量センサの表示が0になり、飛行後の試験でセンサの故障を確かめたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=31） |
| PC-34 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p20：窒素による再与圧（27 lb）の後に窒素流量計のトランスデューサが不安定になり、新しい固体式のトランスデューサとして今後の飛行で監視するとしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=20） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：CABIN ATM灯の乗員室圧の限界は資料で異なる。訓練マニュアル（2.6.4節）は13.8〜15.2 psia、SCOM（PDF p406）は13.76 psia（OV-104は13.74）未満または15.36（OV-103）・15.53（OV-104）・15.35 psia（OV-105）超、1987年の飛行運用マニュアル（PDF p658）は14.1〜15.3 psiaとし、PPO2はそれぞれ2.7〜3.6、2.7〜3.6、2.8〜3.6 psiaとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/406）

> **注記** 検証メモ：dP/dtのクラス1警報の値は、STS-4の時点では-0.05 psi/min、SCOMとC&W訓練マニュアル（PDF p48）では-0.08 psi/minで、運用飛行規則A17-201は0.08 psia/minを上昇中の誤警報を避ける値とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1956）

> **注記** SCOMの経験則は、O1の計器の値は表示と同じセンサから来るため冗長ではなく、計器と表示の組合せを確認の手掛かりに使えないとする（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419）

> **注記** PPO2センサの位置を、SCOM（PDF p366）はセンサA・Bがミッションスペシャリスト席の下にあるとし、IFMチェックリスト（PDF p102）はフライトデッキ右舷のR17・R18パネルの裏にセンサA・B・Cのフィルタを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=102）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.6.1節 Instrumentation（PDF p39） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=39
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.6.2〜2.6.3節 CRT Displays・Dedicated Displays（PDF p41） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=41
3. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Caution and Warning Lights（CABIN ATM）（PDF p132） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/132
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.6.4節 Caution and Warning（PDF p46） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=46
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Rapid Cabin Depressurization（PDF p123） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/123
6. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 PPO2 Control（続き）（PDF p367） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/367
7. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-204 N2 Supply・A17-205 PPO2 Sensor Loss Definition（PDF p1962） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1962
8. JSC-18553 STS-4 Orbiter Mission Report（1982年） 2.6.3節 Air Revitalization Pressure Control Subsystem（PDF p42） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=42
9. NSTS-37436 STS-108 Space Shuttle Mission Report（2002年） Atmospheric Revitalization Pressure Control Subsystem（続き）（PDF p31） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=31
10. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Oxygen/Nitrogen Manifold・PPO2 Control（PDF p366） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/366
11. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図2-16 PASS SM SPEC 66（PDF p42） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=42
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 2.3.3節 Auto Control of the O2/N2 Control Valve（PDF p29） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=29
13. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-201 Cabin Pressure Integrity（PDF p1955） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1955
14. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表2-1 ECLSS pressurization controls（続き、O14・O15の遮断器）（PDF p52） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=52
15. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 ECLSS Caution and Warning Summary（PDF p406） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/406
16. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-201 Cabin Pressure Integrity（続き）（PDF p1956） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1956
17. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 ECLSS Rules of Thumb（PDF p419） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/419
18. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 4-6 Filter Cleaning（Flight Deck Stbd Side）（PDF p102） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=102

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
| Rev. A | 2026-10-01 | IF-PCS-14 の上位を IF-ECL-36 に付け替え、IF-PCS-22 の上位を IF-ECL-42 に付け替え（Rev. M） |
