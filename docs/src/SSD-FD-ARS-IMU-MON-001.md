# ファン監視・表示（MON）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-ARS-IMU-MON-001 |
| 表題 | ファン監視・表示（MON）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-30 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-IMU-001 |
| 関連図 | SSD-SYS-ARC-001 図34 IMU空冷 機能構成 |

## 1. 目的

IMUファンの差圧（ΔP）と回転数を計測し、SM表示（SM SYS SUMM 1、SPEC 66）とSMアラートでファンの作動を示す機能と、センサの電源、計測精度、計測を失うときの扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-ARS-IMU-MON-01 | IMU FAN信号調整器はIMUファンが正常に回っていることを確かめる回転数センサに給電し、H2O BYP LOOP 1 SNSR信号調整器は水ループ1のインターチェンジャ流量センサとIMUファンΔPセンサに給電する（訓練マニュアル3.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| F-ARS-IMU-MON-02 | IMU FAN信号調整器には、パネルL4の遮断器（SIG CONDR IMU FAN）からAC3のB相の電力が供給される（訓練マニュアル表3-6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92） |
| F-ARS-IMU-MON-03 | IMUファンΔPセンサには、パネルO14のMNAの遮断器（H2O BYP LOOP 1 SNSR）から電力が供給される（訓練マニュアル表3-6）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93） |
| F-ARS-IMU-MON-04 | IMUファンΔPはBFSのSM SYS SUMM 1（DISP 78）に表示され、表示範囲は0〜7 in H2Oである（訓練マニュアル図3-16）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=78） |
| F-ARS-IMU-MON-05 | SPEC 66 ENVIRONMENT（DISP 66、SM OPS 2・4）は、IMUファンA・B・Cのうち運転中のファンを「*」で示し、ΔPを0〜7.0 in H2Oで示す（訓練マニュアル図3-19）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81） |
| F-ARS-IMU-MON-06 | 各表示は運転中のファンに「*」を付け、その右に状態を示す。空白は正常、「M」はデータなし、「↓」は運転していたファンの回転数が所定の限界より下がったことを表す（IMUワークブック2.10節）。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=25） |
| F-ARS-IMU-MON-07 | ΔPまたは回転数の異常はSMアラートのメッセージ（「S66 IMU FAN DP」「S66 IMU FN SPD A(B,C)」「SM1 CABIN IMU」）で知らせ、故障処置手順6.1d CABIN IMUで処置する（MAL 6.1d）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） |
| F-ARS-IMU-MON-08 | ΔPの計測精度はフルスケール（7 in H2O）の±3.4%（0.238 in H2O）で、選択したファンの回転数表示は10,000±240〜12,720±700 rpmの範囲で正常を示す（A17-104）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933） |
| F-ARS-IMU-MON-09 | ΔPが失われたときは、回転数センサの「↓」表示でファンの故障を監視する（MAL 6.1d）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） |
| F-ARS-IMU-MON-10 | OI MDM（OF1）を失うとIMUファンΔPとファンAの回転数センサが得られなくなり、ファンAで運転中ならファンB（C）に切り替える（MAL COMM SSR-10）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87） |
| F-ARS-IMU-MON-11 | AC3母線を失うとIMU FAN信号調整器が止まり、IMUファンA・B・Cの回転数の正常表示センサがすべて失われる（MAL EPS SSR-130）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=636） |
| F-ARS-IMU-MON-12 | STS-125では、IMUファンΔPが飛行規則の限界（4.71）を上下するまで上昇したが、計測値が0.224 in H2O高くずれていた（許容の3.4%以内）ことが原因とされ、説明のついた事象として閉じられた（IFA STS-125-V-13）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=87） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-IMU-05 | IMUファン・逆止弁 | データ・指令 | 受信 | IMU FAN信号調整器が給電する回転数センサでファンが正常に回っていることを確かめ、ΔPセンサでファンの差圧を測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | — |
| IF-IMU-10 | DPS・アビオニクス | データ・指令 | 送信 | IMUファンの状態（運転中のファンの「*」と回転数低下の「↓」など）を、SM OPS 2のPASS ENVIRONMENT（DISP 66）とPASS・BFSのSM SYS SUMM 1（DISP 78）に表示する。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=25）ΔPまたは回転数が限界を外れると、SMアラートのメッセージ「S66 IMU FAN DP」「S66 IMU FN SPD A(B,C)」を出す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） | 上位: IF-ARS-29 |
| IF-IMU-11 | 電力系（EPS） | 電力（28 VDC） | 受信 | IMU FAN信号調整器には、パネルL4の遮断器（SIG CONDR IMU FAN）からAC3のB相の電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92）IMUファンΔPセンサには、パネルO14のMNAの遮断器（H2O BYP LOOP 1 SNSR）から電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93） | 上位: IF-ARS-35 |
| IF-IMU-12 | ファン運用管理 | データ・指令 | 送信 | ΔPと回転数の表示・SMアラートを、IMUファンの喪失判定（A17-104）とファンの切替の判断に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933）ΔPが失われたときは、回転数センサの「↓」表示でファンの故障を監視する。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） | — |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| IM-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.5節（PDF p74）と表3-6（p92〜93）：IMU FAN信号調整器（AC3 B相）が回転数センサに、H2O BYP LOOP 1 SNSR（MNA、パネルO14）がΔPセンサに給電すると述べ、図3-16・図3-19（p78・p81）でSM SYS SUMM 1とSPEC 66の表示を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| IM-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p359）：BFSのSM SYS SUMM 1（DISP 78）の表示例にIMU FAN DPを示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |
| IM-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-104（PDF p1933）：ΔPの計測精度をフルスケール7 in H2Oの±3.4%（0.238 in H2O）とし、選択時の回転数表示の正常範囲を10,000±240〜12,720±700 rpmとする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933） |
| IM-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1d（PDF p264）：SMメッセージ「S66 IMU FAN DP」「S66 IMU FN SPD A(B,C)」「SM1 CABIN IMU」で処置に入ると示し、COMM SSR-10（p87）とEPS SSR-130（p636）でΔP・回転数センサを失う場合を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264） |
| IM-07 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | IMU FAN信号調整器が回転数センサに、H2O BYP LOOP 1 SNSR信号調整器がIMUファンΔPセンサに給電すると記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| IM-09 | USA004488 Rev. B（IMU 21002） | Inertial Measurement Unit Workbook（2006年） | 2.10節（PDF p25）と2.13.4節（p33）：DISP 66とPASS・BFSのDISP 78に運転中のファン（*）と状態（空白＝正常、M＝データなし、↓＝回転数低下）を示すと述べる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=25） |
| IM-11 | NSTS-37452 | STS-125 Space Shuttle Mission Report（2010年） | 付録B（PDF p87）：計測値が0.224 in H2O高くずれていた（許容の3.4%以内）ために飛行規則の限界を超えたとして、説明のついた事象として閉じたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=87） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：運用飛行規則A17-104の喪失の限界のうち括弧内の値（3.94・4.71 in H2O）は、括弧外の値（3.70・4.95 in H2O）から計測精度0.238 in H2Oを内側へ差し引いた値に一致する（本書の計算）。STS-125報告は限界4.71を「psi」と記すが、A17-104の単位はin H2Oである（SSD-ARS-REF-001の注記と同じ）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933）

> **注記** IMUファンΔPセンサの電源（H2O BYP LOOP 1 SNSR）は水冷却ループ1のインターチェンジャ流量センサと共通で、この遮断器が開いている場合は戻す前にMCCに連絡する（MAL 6.1d）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=265）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（続き）（PDF p92） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（完）（PDF p93） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=93
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図3-16 BFS SM SYS SUMM 1（PDF p78） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=78
5. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図3-19 SPEC 66 ENVIRONMENT（PDF p81） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81
6. USA004488 Rev. B（IMU 21002） Inertial Measurement Unit Workbook（訓練ワークブック、2006年） 2.10節 Thermal Controls（ファンの状態表示）（PDF p25） — https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/IMU%20Workbook.pdf#page=25
7. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1d CABIN IMU（PDF p264） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=264
8. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-104 IMU Fan（PDF p1933） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1933
9. JSC-48027 Rev. F Malfunction Procedures（MAL） COMM SSR-10 OI MDM LOST: OF1（PDF p87） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87
10. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-130 BUS LOSS: AC3（PDF p636） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=636
11. NSTS-37452 STS-125 Space Shuttle Mission Report（2010年） 付録B In-Flight Anomalies（STS-125-V-13）（PDF p87） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-125%20Space%20Shuttle%20Mission%20Report.pdf#page=87
12. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1d CABIN IMU（続き）（PDF p265） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=265

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-30 | 初版作成（公開資料に基づく検討用） |
