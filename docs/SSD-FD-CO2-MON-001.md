# CO2・CO監視（MON）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CO2-MON-001 |
| 表題 | CO2・CO監視（MON）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-28 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-CO2-001 |
| 関連図 | SSD-SYS-ARC-001 図14 CO2・CO除去 機能構成 |

## 1. 目的

キャビン空気のCO2分圧（PPCO2）を計測してDPSへ送る機能と、COなどの燃焼生成物を携帯型分析器で測る機能、PPCO2の管理値を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CO2-MON-01 | CABIN AIR信号調整器が、キャビンファン差圧・キャビン湿度（MCCのみ監視）・CO2分圧の各トランスデューサに給電する（訓練マニュアル3.5節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| F-CO2-MON-02 | PPCO2トランスデューサは、キャビンファン下流でLiOHキャニスタへ分かれる手前のダクトに接続されている（訓練マニュアル図3-12）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75） |
| F-CO2-MON-03 | IFMチェックリストの下部機器ベイ配置図（OV-103）は、PPCO2センサをキャビンファンの近くに示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94） |
| F-CO2-MON-04 | PPCO2はSM OPS 2・4のSM表示DISP 66（ENVIRONMENT）に表示される（訓練マニュアル3.5.1節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81） |
| F-CO2-MON-05 | PPCO2の上限は長期で7.6 mmHg、最大2時間で15 mmHgである（SODB 3.4.6.1節）。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） |
| F-CO2-MON-06 | RCRS搭載機でPPCO2を把握できなくなった場合は、LiOHキャニスタを定期的に装着・交換してCO2を管理する（A17-155）。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951） |
| F-CO2-MON-07 | IOAのCIL評価（1988年）では、PPCO2センサ（1個）の臨界度をNASAは2/2、IOAは3/3としたが、NASAが乗員の措置や定常保守によるPPCO2の管理を考慮しない保守的な定義を用いたことを理由に、IOAは指摘を取り下げた（ARS-320）。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=127） |
| F-CO2-MON-08 | オービタ・Spacehab・宇宙服（EMU）のPPCO2計測用に、応答が遅く電解液の信頼性に懸念のある電気化学式センサに代わる赤外線吸収式のトランスデューサが開発された（SAE 932145、抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19950058785） |
| F-CO2-MON-09 | STS-108では、キャビン圧を10.2 psiaとしていた間のセンサ表示6.02 mmHgが、Hamilton Sundstrandの換算値で9.35 mmHg相当とされた。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |
| F-CO2-MON-10 | COなどの燃焼生成物はCSA-CP（CO・HCN・HClを実時間で分析する携帯型分析器）で測り、通常は飛行1日目に取り出してセンサを確認し、必要ならゼロ校正する（SCOM 2.5節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/223） |
| F-CO2-MON-11 | CSA-CPより前に使われた燃焼生成物分析器（CPA）はCO・HF・HCl・HCNを測る携帯型分析器で、STS-41（1990年10月）から搭載された。（出典: https://ntrs.nasa.gov/api/citations/19940007083/downloads/19940007083.pdf#page=1） |
| F-CO2-MON-12 | 携帯型のCO2モニタ（CDM）は電池で約10時間動作し、キャビン内のCO2を計測できる（Orbit Opsチェックリスト3-32）。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=96） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CO2-03 | 吸収器装着部（スロット×2） | 推進薬・流体 | 受信 | PPCO2トランスデューサはLiOHキャニスタへ分かれる手前のダクトに接続され、キャビンファン出口の空気のCO2分圧を測る。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75） | — |
| IF-CO2-06 | DPS・アビオニクス | データ・指令 | 送信 | キャビン空気のCO2分圧をSM GPCへ送り、SM OPS 2・4のDISP 66（ENVIRONMENT）に表示する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81） | 上位: IF-ARS-37 |
| IF-CO2-07 | 電力系（EPS） | 電力（28 VDC） | 受信 | 遮断器AC1 CABIN AIR S/Cを通じて、CABIN AIR信号調整器にAC1 φBの交流電力を供給する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92）この信号調整器がPPCO2トランスデューサに給電する。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） | 上位: IF-ARS-38 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.5節（PDF p74〜81）：CABIN AIR信号調整器がCO2分圧トランスデューサに給電し、PPCO2をSM OPS 2・4のDISP 66に表示すると示し、図3-12（p75）にトランスデューサの接続点を示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74） |
| CR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p359）：軌道上のECLSSのパラメータをSM DISP 66（ENVIRONMENT）に表示すると述べ、PPCO2を含む表示例を示す。CSA-CP（p223）でCO・HCN・HClを実時間で分析することも示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/359） |
| CR-04 | NSTS-12820 Vol. A（PCN-1） | Space Shuttle Operational Flight Rules Vol. A – All Flights | A13-52（PDF p1775）：ARSがPPCO2を15 mmHg未満に保てなければ乗員がQDMを着用して次のPLSで飛行を終了すると定める。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1775） |
| CR-05 | JSC-48027 Rev. F | Malfunction Procedures（MAL） | 6.8b PPCO2（PDF p333）：CO2分圧が7.6 mmHgを超えた場合の処置を、RCRS搭載の有無とLiOH交換予定で分岐して示す。（出典: https://ibiblio.org/apollo/Shuttle/Space%20Shuttle%20Malfunction%20Procedures.pdf#page=333） |
| CR-09 | NASA-CR-194116 | STS-54 Space Shuttle Mission Report | STS-54でARSは問題なく作動し、CO2分圧を3.50 mmHg未満に保ったと記録する。（出典: https://ntrs.nasa.gov/api/citations/19940009462/downloads/19940009462.pdf） |
| CR-11 | NASA-CR-185524 Vol. 2 | Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） | PPCO2センサ（ARS-320、C.13-25、PDF p127）について、NASAの臨界度2/2（IOAは3/3）を、乗員の措置や定常保守を考慮しない保守的な定義によるものとして、IOAが指摘を取り下げたと記す。（出典: https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=127） |
| CR-13 | NSTS-37443 | STS-107 Space Shuttle Mission Report（2003年） | 軌道上のCO2分圧は平均3.0 mmHg、最高6.47 mmHgだったと記録する。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-107%20Space%20Shuttle%20Mission%20Report.pdf） |
| CR-19 | JSC-12770 Vol. 12 Basic Rev. B | Shuttle Flight Operations Manual Vol. 12 – Crew Systems（1987年） | 3.22節（PDF p550）：キャビンのCO2分圧は通常5.0 mmHg未満で、0〜7.6 mmHgの範囲で変動すると示す。（出典: https://www.ibiblio.org/apollo/Shuttle/46635652-Shuttle-Flight-Operations-Manual-Vol-12-Crew-Systems.pdf#page=550） |
| CR-20 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-8 Lower Equipment Bay（PDF p94〜96）：PPCO2センサをキャビンファンの近くに示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94） |
| CR-21 | JSC-48035 Rev. M PCN-10 | Orbit Operations Checklist（2008年） | 3-32〜3-38（PDF p96〜102）：携帯型CO2モニタ（CDM）の準備とスポット計測を、13章（p377〜）でCSA-CPの点検・ゼロ校正・サンプリングを示す。（出典: https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=96） |
| CR-22 | JSC-08934 Vol. 1 Rev. E | Shuttle Operational Data Book Vol. 1 – Shuttle Systems Performance and Constraints Data（1988年） | 3.4.6.1節（PDF p215）：CO2分圧の上限を長期で7.6 mmHg、最大2時間で15 mmHgとする。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215） |
| CR-24 | SAE 932145 | Development of an infrared absorption transducer to monitor partial pressure of carbon dioxide for space applications（Lutz他、1993年） | EMU・オービタ・Spacehab用の赤外線吸収式PPCO2トランスデューサを開発し、従来の電気化学式センサの応答の遅さと電解液の信頼性の懸念を解消すると述べる（抄録で確認）。（出典: https://ntrs.nasa.gov/citations/19950058785） |
| CR-25 | NTRS 19940007083 | A Combustion Products Analyzer for Contingency Use During Thermodegradation Events on Spacecraft（Wilson他、1993年） | CO・HF・HCl・HCNを測る携帯型の燃焼生成物分析器（CPA）が、STS-41（1990年10月）から13回の飛行で搭載されたと述べる。（出典: https://ntrs.nasa.gov/api/citations/19940007083/downloads/19940007083.pdf#page=1） |
| CR-32 | NSTS-08302 | STS-35 Space Shuttle Mission Report（1991年） | PDF p14：CPAが高いCO濃度を示したが、純酸素でパージしても値が残り、測定値は無効と判断されたと記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=14） |
| CR-35 | NSTS-37436 | STS-108 Space Shuttle Mission Report（2002年） | PDF p31〜32：係留中のオービタ表示のPPCO2は最大6.0 mmHgで、キャビン圧10.2 psiaの間の表示6.02 mmHgは換算で9.35 mmHg相当と記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=32） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 訓練マニュアルの図3-12では、PPCO2トランスデューサの接続点はLiOHキャニスタへの分岐の手前にある。図14ではこの計測点を吸収器装着部からの内部IF（IF-CO2-03）として示した。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75）

> **注記** 検証メモ：STS-35ではCPAが高いCO濃度を示したが、ATCOキャニスタを4時間装着した後も値が下がらず、純酸素でパージしても値が残ったため、CPAの測定値は無効と判断された。携帯型分析器の値は機器の状態とあわせて評価する必要がある。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=14）

## 6. 参考文献

1. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5節 ARS Instrumentation and Displays（PDF p74） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=74
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図3-12 Cabin air system instrumentation（PDF p75） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=75
3. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 3-8 Lower Equipment Bay (OV103)（PDF p94） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94
4. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.5.1節 図3-19 SPEC 66 ENVIRONMENT（PDF p81） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=81
5. JSC-08934 Vol. 1 Rev. E Shuttle Operational Data Book – Shuttle Systems Performance and Constraints Data（1988年） 3.4.6.1節 Atmospheric Revitalization Subsystem（PDF p215） — https://www.ibiblio.org/apollo/Shuttle/JSC-08934,%20Vol.1,%20Rev.E%20-%20Shuttle%20Operational%20Data%20Book%20-%20Shuttle%20Systems%20Performance%20and%20Constraints%20Data.pdf#page=215
6. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A17-155 RCRS Management（続き）（PDF p1951） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1951
7. NASA-CR-185524 Vol. 2 Independent Orbiter Assessment (IOA): CIL issues resolution report, volume 2（1988年） C.13-25 ARS-320 Sensor, PPCO2（PDF p127） — https://ntrs.nasa.gov/api/citations/19900001639/downloads/19900001639.pdf#page=127
8. SAE 932145 Development of an infrared absorption transducer to monitor partial pressure of carbon dioxide for space applications（NTRS抄録） — https://ntrs.nasa.gov/citations/19950058785
9. NSTS-37436 STS-108 Space Shuttle Mission Report（2002年） Atmospheric Revitalization Subsystem（続き）（PDF p32） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-108%20Space%20Shuttle%20Mission%20Report.pdf#page=32
10. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.5節 Crew Systems（CSA-CP）（PDF p223） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/223
11. A Combustion Products Analyzer for Contingency Use During Thermodegradation Events on Spacecraft（Wilson他、1993年） Abstract（PDF p1） — https://ntrs.nasa.gov/api/citations/19940007083/downloads/19940007083.pdf#page=1
12. JSC-48035 Rev. M PCN-10 Orbit Operations Checklist 3-32 Carbon Dioxide Monitor（PDF p96） — https://www.ibiblio.org/apollo/Shuttle/Orbit%20Operations%20Checklist/Orbit%20Operations%20Checklist%20Rev%20M%20PCN-10.pdf#page=96
13. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 表3-6 ECLSS controls (ARS)（PDF p92） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=92
14. NSTS-08302 STS-35 Space Shuttle Mission Report（1991年） ECLSS（CO absorber cartridge・CPA）（PDF p14） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-35%20Space%20Shuttle%20Mission%20Report.pdf#page=14

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-28 | 初版作成（公開資料に基づく検討用） |
