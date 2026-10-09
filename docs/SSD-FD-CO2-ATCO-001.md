# 常温触媒酸化器（ATCO）機能説明書

| 項目 | 内容 |
|---|---|
| 文書番号 | SSD-FD-CO2-ATCO-001 |
| 表題 | 常温触媒酸化器（ATCO）機能説明書 |
| 版・日付 | 初版（Rev. -）／2026-09-28 |
| 状態 | 検討用（公開資料に基づく） |
| 上位文書 | SSD-FD-ARS-CO2-001 |
| 関連図 | SSD-SYS-ARC-001 図14 CO2・CO除去 機能構成 |

## 1. 目的

キャビン熱交換器を出た空気の一部を通してCOをCO2に酸化する常温触媒酸化器（ATCO）の機能と、触媒・配置・飛行実績を示す。

## 2. 機能

| 機能番号 | 内容 |
|---|---|
| F-CO2-ATCO-01 | キャビン熱交換器を出た再生・調整済み空気の一部をATCOへ送り、COをCO2に変換する（SCOM 2.9節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| F-CO2-ATCO-02 | ATCOは乗員が出すCOと、キャビン内の非金属材料のガス放出によるCOを除去し、生じたCO2はLiOHキャニスタで除かれる（訓練マニュアル3.2.6節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64） |
| F-CO2-ATCO-03 | ATCOはキャビン熱交換器のすぐ下流にあり、触媒は白金2%・炭素担体である（訓練マニュアル3.2.6節）。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64） |
| F-CO2-ATCO-04 | IFMチェックリストの下部機器ベイ配置図（OV-103）は、ATCOをキャビン熱交換器の近くに示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94） |
| F-CO2-ATCO-05 | 1979年の飛行運用マニュアルの時点では、CO除去装置は採用が承認されたばかりで設計が完了しておらず、「Ambient Temperature Catalytic Oxidizer」と呼ぶ予定とされていた。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| F-CO2-ATCO-06 | ATCOはSTS-4で初めて飛行し、性能評価の飛行試験要求（FTR 61VV002）は触媒の化学分析と飛行中のキャビン大気の試料で一部達成され、完了にはさらに2回の飛行を要するとされた（STS-4報告）。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=40） |
| F-CO2-ATCO-07 | STS-4報告は、キャビン大気試料で検出された化合物の数が減ったのはATCOを搭載した効果である可能性が高いとしている。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=81） |
| F-CO2-ATCO-08 | 火災の鎮火後はWCSのチャコールフィルタ、ATCO、LiOHキャニスタで燃焼生成物をキャビン大気から除去する（SCOM 6.8節）。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891） |
| F-CO2-ATCO-09 | Monje（2015年）はシャトルのATCO触媒を白金2%・炭素担体とし、COの宇宙機最大許容濃度（SMAC）を7日で55 ppm、30日・180日で15 ppmと示す。（出典: https://ntrs.nasa.gov/api/citations/20150022484/downloads/20150022484.pdf#page=1） |
| F-CO2-ATCO-10 | NASAは1970年代にシャトルの常温CO酸化触媒として白金2%・炭素担体を選び、シャトルの設計空間速度での新しい触媒の試験から、現行のATCO反応器には大きな余裕があると結論された（Nalette他、抄録で確認）。（出典: https://ntrs.nasa.gov/citations/20100025551） |

## 3. インタフェース

| IF番号 | 相手 | 種別 | 方向 | 内容 | 上位IF／下位IF |
|---|---|---|---|---|---|
| IF-CO2-05 | キャビン温湿度制御 | 推進薬・流体 | 受信 | キャビン熱交換器を出た再生・調整済み空気の一部をATCOへ送り、COをCO2に変換する。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376）ATCOを通った空気は調整済み空気とともに乗員室へ戻り、生じたCO2は循環してLiOHキャニスタで除去される。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64） | 上位: IF-ARS-05 |

## 4. 関連文書

| ID | 文書番号 | 表題 | 内容 |
|---|---|---|---|
| CR-01 | USA006020 Rev. B（ECLSS 21002） | Environmental Control and Life Support System（訓練マニュアル） | 3.2.6節（PDF p64）：ATCOは乗員と非金属材料のガス放出によるCOを除き、キャビン熱交換器のすぐ下流にあり、触媒は白金2%・炭素担体と示す。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64） |
| CR-02 | USA007587 Rev. A（CPN-1） | Shuttle Crew Operations Manual（SCOM） | 2.9節（PDF p376）：キャビン熱交換器を出た再生・調整済み空気の一部をCO除去装置（ATCO）へ送り、COをCO2に変換すると示す。（出典: https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376） |
| CR-03 | 番号なし | NSTS 1988 News Reference Manual（ECLSS章） | キャビン熱交換器を出た空気の一部をCO除去装置へ送り、COをCO2に変換すると記す。（出典: https://www.globalsecurity.org/space/library/report/1988/sts_eclss.html） |
| CR-10 | 番号なし | Space Shuttle Guide – Environmental Systems（訓練マニュアルの抜粋を含む） | ATCO（触媒は白金2%・炭素担体）でCOを除くと記す。（出典: https://www.spaceshuttleguide.com/system/environmental%20Controls.htm） |
| CR-14 | NASA/TM-2005-214007 | Designing For Human Presence in Space: An Introduction to ECLSS – Appendix I, Update（Wieland、2005年） | 表1のオービタ欄（p5〜6）で、ATCOでCOをCO2に変えると記す。（出典: https://ntrs.nasa.gov/citations/20060005209） |
| CR-16 | NTRS 20100025551（JSC-CN-20953） | Advanced Catalysts for the Ambient Temperature Oxidation of Carbon Monoxide and Formaldehyde（Nalette他、2010年） | NASAが1970年代にシャトルの常温CO酸化触媒として白金2%・炭素担体を選んだと述べ、シャトルの設計空間速度での新しい触媒の試験から現行のATCO反応器には大きな余裕があると結論する。（出典: https://ntrs.nasa.gov/citations/20100025551） |
| CR-18 | JSC-12770 Vol. 3 | Shuttle Flight Operations Manual Vol. 3 – Environmental Control and Life Support Systems（1979年） | 2.2.2節（PDF p37）：CO除去装置は採用が承認されたが設計は未完了で、「Ambient Temperature Catalytic Oxidizer」と呼ぶ予定と記す。（出典: https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37） |
| CR-20 | JSC-48025 Rev. F PCN-13 | In-Flight Maintenance (IFM) Checklist（2004年） | 3-8 Lower Equipment Bay（PDF p94〜96）：ATCOをキャビン熱交換器の近くに示す。（出典: https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94） |
| CR-28 | NTRS 20150022484 | Evaluation of Low Temperature CO Removal Catalysts（Monje、2015年） | シャトルのATCO触媒を白金2%・炭素担体とし、COのSMACを7日で55 ppm、30日・180日で15 ppmと示して、低温CO除去触媒を評価する。（出典: https://ntrs.nasa.gov/api/citations/20150022484/downloads/20150022484.pdf#page=1） |
| CR-30 | JSC-18553 | STS-4 Orbiter Mission Report（1982年） | PDF p40・p81：ATCOの性能評価の飛行試験要求（FTR 61VV002）の一部達成と、キャビン大気試料の化合物の減少がATCO搭載の効果である可能性が高いことを記す。（出典: https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=40） |

## 5. 注記（出典間の相違・構成変更）

> **注記** 図14のIF-CO2-05は熱交換器出口からATCOへの流れを示し、ATCOを通った空気が調整空気とともに乗員室へ戻る流れは独立のIFとして描いていない（図12のIF-ARS-05と同じ）。訓練マニュアルの図3-1では、ATCOはキャビン熱交換器出口のダクトから分かれた位置にある。（出典: https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58）

> **注記** 検証メモ：運用飛行規則（A13-152C、A15-203）はATCOを「ATCOキャニスタ」としてLiOHキャニスタのスロットに装着すると記すが、SCOMと訓練マニュアルはATCOをキャビン熱交換器出口の常設装置とし、IFMチェックリストの配置図も熱交換器の近くに示す。本書は常設装置を扱い、キャニスタ型はSSD-FD-CO2-CAN-001で派生型として扱った。（出典: https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1798）

## 6. 参考文献

1. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 2.9節 Cabin Air Humidity Control（ATCO）（PDF p376） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/376
2. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 3.2.6節 Ambient Temperature Catalytic Oxidizer（PDF p64） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=64
3. JSC-48025 Rev. F PCN-13 In-Flight Maintenance (IFM) Checklist 3-8 Lower Equipment Bay (OV103)（PDF p94） — https://www.ibiblio.org/apollo/Shuttle/In-Flight%20Maintenance/In-Flight%20Maintenance%20Checklist%20Rev%20F%20PCN-13.pdf#page=94
4. JSC-12770 Vol. 3 Shuttle Flight Operations Manual – Environmental Control and Life Support Systems（1979年） 2.2.2節 ARS System Description（続き）（PDF p37） — https://www.ibiblio.org/apollo/Shuttle/JSC-12770,%20Vol.3%20-%20Shuttle%20Flight%20Operations%20Manual,%20Environmental%20Control%20and%20Life%20Support%20Systems%20(ECLSS)%20(1979-03-03).pdf#page=37
5. JSC-18553 STS-4 Orbiter Mission Report（1982年） FTR 61VV002 ARS ATCO（PDF p40） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=40
6. JSC-18553 STS-4 Orbiter Mission Report（1982年） Toxicology（キャビン大気試料）（PDF p81） — https://www.ibiblio.org/apollo/Shuttle/Reports/Mission%20Reports/STS-4%20Orbiter%20Mission%20Report.pdf#page=81
7. Shuttle Crew Operations Manual（USA007587 Rev. A CPN-1） 6.8節 Systems Failures（PDF p891） — https://www.yumpu.com/en/document/view/40749502/390651main-shuttle-crew-operations-manual/891
8. Evaluation of Low Temperature CO Removal Catalysts（Monje、ICES 2015） Introduction（PDF p1） — https://ntrs.nasa.gov/api/citations/20150022484/downloads/20150022484.pdf#page=1
9. Advanced Catalysts for the Ambient Temperature Oxidation of Carbon Monoxide and Formaldehyde（Nalette他、2010年、NTRS抄録） — https://ntrs.nasa.gov/citations/20100025551
10. USA006020 Rev. B（ECLSS 21002） Environmental Control and Life Support System（訓練マニュアル） 図3-1 Cabin air system（PDF p58） — https://ibiblio.org/apollo/Shuttle/Crew%20Training/Environmental%20Control%20and%20Life%20Support%20System.pdf#page=58
11. Space Shuttle Operational Flight Rules Vol. A – All Flights（NSTS-12820 PCN-1） A13-152 Cabin Atmosphere Contamination（PDF p1798） — https://archive.org/download/GandalfDDI-SpaceShuttleDocuments/Space%20Shuttle%20Operational%20Flight%20Rules%20Volume%20A%20-%20All%20Flights%2020020620%20fr_generic.pdf#page=1798

## 7. 変更履歴

| 版 | 日付 | 内容 |
|---|---|---|
| 初版（Rev. -） | 2026-09-28 | 初版作成（公開資料に基づく検討用） |
