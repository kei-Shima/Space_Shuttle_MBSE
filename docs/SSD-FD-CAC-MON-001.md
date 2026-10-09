# ファン差圧監視（MON）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CAC-MON-001 |
| 表題 | ファン差圧監視（MON）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-28 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-CAC-001 |
| 関連図 | SSD-SYS-ARC-001 図16 キャビン空気循環 機能構成 |

## 1. 目的

キャビンファンの差圧（ΔP）を計測し、主C&W（AV BAY/CABIN AIR灯）とSM表示へ送ってファンの作動を監視する機能と、警報限界・計測を失ったときの扱いを示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CAC-MON-01 | CABIN AIR信号調整器が、キャビンファン差圧・キャビン湿度（MCCのみ監視）・CO2分圧の各トランスデューサに給電する（訓練マニュアル3.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| F-CAC-MON-02 | 差圧の圧力取出し口は、フィルタとファンの間と、ファンの下流のダクトにある（訓練マニュアル図3-12）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75） |
| F-CAC-MON-03 | 差圧は、OPS 1・3ではBFS SM SYS SUMM 1、OPS 2・4ではPASS SM SYS SUMM 1とSPEC 66 ENVIRONMENTに表示される（訓練マニュアル3.5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| F-CAC-MON-04 | キャビンファン差圧（V61R2556A、単位in H2O）はAV BAY/CABIN AIR灯の入力の一つで、訓練マニュアルのC&W表は限界を2.8〜7.04 in H2Oとする。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=83） |
| F-CAC-MON-05 | 主C&Wのハードウェアチャネル74がキャビンファン差圧に割り当てられている（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/116） |
| F-CAC-MON-06 | AV BAY/CABIN AIR灯（黄）は、チャネル74（キャビンファン差圧）・84・94・104（Av Bay 1〜3温度）・114（キャビン熱交換器温度）のいずれかの限界外で点灯する（SCOM 2.2節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133） |
| F-CAC-MON-07 | 差圧の計測精度はフルスケール（8 in H2O）の±3.6%（0.288 in H2O）である（A17-101）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| F-CAC-MON-08 | 差圧の限界外は、SMの「SM1 CABIN FAN」「S66 CABIN FAN」メッセージとAV BAY/CABIN AIRのバックアップC&W警報で知らせ、故障処置手順6.1a CABIN FAN ∆Pで処置する（MAL 6.1a）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=260） |
| F-CAC-MON-09 | OI MDM（OF1）を失うとキャビンファン差圧などの計測が得られなくなり、ファンの気流を手で感じて監視し、就寝中は両ファンを運転する（MAL COMM SSR-10）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87） |
| F-CAC-MON-10 | AC1を失ってCABIN AIR信号調整器が止まるとCO2分圧と差圧のセンサが失われ、起床中はストリーマ（搭載時）か手の感覚で気流を監視する（MAL EPS SSR-110）。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=612） |
| F-CAC-MON-11 | STS-59では、キャビンファン差圧が前回のOV-105の飛行（STS-61）より低く、乗員室内のペイロードへの追加冷却によるものとされた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| F-CAC-MON-12 | STS-122では、粉塵対策のテープ覆いを付けたままの新しいLiOHキャニスタを装着した後、ファン起動後の差圧が交換前よりわずかに高くなった。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CAC-07 | キャビンファン・逆止弁 | 推進薬・流体 | 受信 | フィルタとファンの間と、ファンの下流のダクトに設けた圧力取出し口で、ファン前後の差圧を測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75） | — |
| IF-CAC-11 | ファン運用管理 | データ・指令 | 送信 | 差圧の表示と警報を、ファンの喪失判定（A17-101）と切替・点検の判断に使う。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） | — |
| IF-CAC-12 | DPS・アビオニクス | データ・指令 | 送信 | キャビンファン差圧を、主C&Wのハードウェアチャネル74（AV BAY/CABIN AIR灯）とSMの表示へ送る。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133）表示はOPS 2・4のPASS SM SYS SUMM 1とSPEC 66、OPS 1・3のBFS SM SYS SUMM 1である。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | 上位: IF-ARS-25 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CA-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.5節（PDF p74〜83）：CABIN AIR信号調整器が差圧トランスデューサに給電し、差圧をSM表示に示し、C&W表でV61R2556Aの限界を2.8〜7.04 in H2Oとすると述べ、図3-12（p75）に計測点を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| CA-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.2節（PDF p116・p133）：ハードウェアC&Wのチャネル74をキャビンファンΔPとしてAV BAY/CABIN AIR灯の条件を示し、2.9節（p375）で差圧4.2 in H2O未満または6.8 in H2O超で点灯するとする。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133） |
| CA-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A17-101（PDF p1929）：差圧の計測精度をフルスケール8 in H2Oの±3.6%とする。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929） |
| CA-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.1a（PDF p260）：差圧4.2未満・6.8超（10.2 psi運用では2.8未満・4.88超）で処置に入ると示し、COMM SSR-10（p87）とEPS SSR-110（p612）で差圧センサを失ったときの監視を示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87） |
| CA-10 | USA006019 Rev. A（C&W 21002） | Caution and Warning（2008年） | 表7-3 ハードウェアC&W表（PDF p97）で、キャビンファンΔPをハードウェアC&Wのチャネル74に割り当てる。（出典: https://www.ibiblio.org/apollo/Shuttle/Crew%20Training/Caution%20and%20Warning.pdf#page=97） |
| CA-12 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.3節（PDF p42）：C&Wの限界として、ファンΔP（V61R2556A）を0.1〜0.3 psidとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=42） |
| CA-13 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.26節 表3.26-5（PDF p659）：AV BAY/CABIN灯の条件の一つを、キャビンファンΔPが0.1 psid未満または0.3 psid超とする。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=659） |
| CA-17 | NSTS-08291 | STS-59 Space Shuttle Mission Report（1994年） | PDF p22：キャビンファンΔPが前回のOV-105の飛行（STS-61）より低く、乗員室内のペイロードへの追加冷却によるものとしたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=22） |
| CA-18 | NSTS 37446 | STS-122 Space Shuttle Mission Report（2008年） | PDF p52：テープ覆いを外し忘れたLiOHキャニスタの装着後、ファン起動後の差圧がわずかに高くなったと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=52） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 検証メモ：差圧の警報限界は資料で異なる。訓練マニュアルのC&W表は2.8〜7.04 in H2O、SCOMは4.2〜6.8 in H2O（PDF p375）と4.16〜6.8 in H2O（PDF p406）、MAL 6.1aは4.2〜6.8 in H2O（10.2 psi運用では2.8〜4.88）、1979年と1987年の飛行運用マニュアルは0.1〜0.3 psidとする。運用飛行規則A17-101の喪失定義は4.20（4.49）〜6.80（6.51）in H2Oである。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=83）

> **注記** 差圧トランスデューサの電源（CABIN AIR信号調整器、AC1 φB）はPPCO2トランスデューサと共通である。電源のIFはIF-ARS-38・IF-CO2-07で表しているため、図16では新しいIFを設けない。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図3-12 Cabin air system instrumentation（PDF p75） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75
3. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.3節 Caution and Warning（PDF p83） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=83
4. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 Hardware Caution and Warning Table（PDF p116） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/116
5. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.2節 AV BAY/CABIN AIR（PDF p133） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/133
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-101 Cabin Fan（PDF p1929） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1929
7. JSC-48027 Rev. F Malfunction Procedures（MAL） ECLS 6.1a CABIN FAN ∆P（PDF p260） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=260
8. JSC-48027 Rev. F Malfunction Procedures（MAL） COMM SSR-10 OI MDM LOST: OF1（PDF p87） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=87
9. JSC-48027 Rev. F Malfunction Procedures（MAL） EPS SSR-110 Bus Loss: AC1（PDF p612） — https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=612
10. NSTS-08291 STS-59 Space Shuttle Mission Report（1994年） Environmental Control and Life Support System（PDF p22） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-59%20Space%20Shuttle%20Mission%20Report.pdf#page=22
11. NSTS 37446 STS-122 Space Shuttle Mission Report（2008年） LiOH canister change-out（PDF p52） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-122%20Space%20Shuttle%20Mission%20Report.pdf#page=52
12. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（続き）（PDF p92） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-28 | 初版作成（公開資料に基づく検討用） |
